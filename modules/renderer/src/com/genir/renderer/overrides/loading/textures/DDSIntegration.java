package com.genir.renderer.overrides.loading.textures;

import com.fs.starfarer.api.Global;
import com.fs.starfarer.api.ModSpecAPI;
import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.ContextManager;
import com.genir.renderer.bridge.interfaces.GLCommand;
import com.genir.renderer.overrides.loading.ScriptStore;
import org.apache.log4j.Logger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.lwjgl.opengl.GL11;
import org.lwjgl.opengl.GL14;
import org.lwjgl.opengl.GL42;

import java.awt.*;
import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.charset.StandardCharsets;
import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.List;
import java.util.*;

import static com.genir.renderer.debug.Debug.asert;

/**
 * DDSIntegration provides integration with VRAM Optimizer mod. When VRAM Optimizer is enabled,
 * vanilla texture loading is replaced with the much faster DDS texture loading.
 */
public class DDSIntegration {
    private static final String PWD = System.getProperty("user.dir");
    private static final String MODS = System.getProperty("com.fs.starfarer.settings.paths.mods");

    private static Map<Path, TextureData> cache = null;

    private static Method methodUploadDDSTexture = null;
    private static Method methodSetDDSTextureParameters = null; // Since VRAM Optimizer 1.0.46

    public static void initialize() {
        if (!vramOptimizerEnabled()) {
            return;
        }

        initIntegrationHandles();

        List<File> metadataFiles = findDDSMetadata();
        cache = readDDSMetadata(metadataFiles);
    }

    public static TextureData getTexture(Path path) {
        if (cache == null) {
            return null;
        }

        asert(path.isAbsolute());
        return cache.get(path.normalize());
    }

    public static int commitTexture(TextureData texData) {
        final Context context = ContextManager.getThreadContext();

        int target = GL42.GL_COMPRESSED_RGBA_BPTC_UNORM;
        int textureID = com.genir.renderer.bridge.commands.GL11.glGenTextures();

        com.genir.renderer.bridge.commands.GL11.glBindTexture(GL11.GL_TEXTURE_2D, textureID);

        // Since VRAM Optimizer 1.0.46
        if (hasSetDDSTextureParameters() && texData.mipCount != -1) {
            record setTextureParameters(int textureID, int mipCount) implements GLCommand {
                @Override
                public void run(Context context, float[] args, int argsOffset) {
                    setDDSTextureParameters(textureID, mipCount, false);
                    configureVanillaTexture();
                }
            }

            // Set texture parameters immediately after texture definition,
            // before lazy texture data upload. This prevents glPushAttrib/glPopAttrib
            // around the upload from restoring outdated parameters.
            context.exec.execute(new setTextureParameters(textureID, texData.mipCount));
        }

        context.textureManager.manageTexture(
                context,
                target,
                textureID,
                texData,
                () -> readTextureBytes(texData),
                (bytes) -> uploadTextureLazy(texData, textureID, bytes)
        );

        // Notify texture tracker of the texture definition.
        context.textureTracker.updateTextureData(textureID, 0, target, texData.width, texData.height);

        return textureID;
    }

    // uploadTextureLazy runs on rendering thread to allow asynchronous texture file loading
    // before the rendering thread processes the commit method.
    private static void uploadTextureLazy(TextureData texData, int textureID, byte[] bytes) {
        int err = uploadDDSTexture(textureID, bytes);
        if (err != 0) {
            throw new RuntimeException(String.valueOf(err));
        }

        // Revert to default vanilla texture config after DDS texture was uploaded.
        // This is because DDS upload disables GPU mipmap generation. When subsequent
        // code re-defines the texture with uncompressed data, this results in
        // compressed/uncompressed mismatch for mipmap levels and subsequently,
        // failure to draw the texture.
        configureVanillaTexture();
    }

    private static void configureVanillaTexture() {
        // Vanilla does not generate mipmaps if either texture dimension exceeds 1024 pixels.
        // The rationale is undocumented, and Fast Rendering does not apply this restriction.
        org.lwjgl.opengl.GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL11.GL_TEXTURE_MIN_FILTER, GL11.GL_LINEAR_MIPMAP_LINEAR);
        org.lwjgl.opengl.GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL11.GL_TEXTURE_MAG_FILTER, GL11.GL_LINEAR);
        org.lwjgl.opengl.GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL14.GL_GENERATE_MIPMAP, 1);
    }

    public static byte[] readTextureBytes(TextureData texData) {
        try {
            asert(texData.isDDS());
            asert(texData.buffer == null);

            return Files.readAllBytes(texData.ddsImagePath);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    private static boolean vramOptimizerEnabled() {
        for (ModSpecAPI mod : Global.getSettings().getModManager().getEnabledModsCopy()) {
            if (Objects.equals(mod.getId(), "VramOptimizer")) {
                return true;
            }
        }

        return false;
    }

    private static List<File> findDDSMetadata() {
        List<File> metadataFiles = new ArrayList<>();

        // Iterate over dds cache.
        Path ddsDir = Path.of(MODS).resolve("DDSCache");
        try (DirectoryStream<Path> ddsDirStream = Files.newDirectoryStream(ddsDir)) {
            for (Path ddsModDirPath : ddsDirStream) {
                if (!ddsModDirPath.toFile().isDirectory()) {
                    continue;
                }

                // Find mod-specific dds metadata file.
                try (DirectoryStream<Path> ddsModDirStream = Files.newDirectoryStream(ddsModDirPath)) {
                    for (Path filePath : ddsModDirStream) {
                        File file = filePath.toFile();
                        if (file.isFile() && filePath.toString().endsWith("dds_metadata.json")) {
                            metadataFiles.add(file);
                        }
                    }
                } catch (Exception e) {
                    throw new RuntimeException(e);
                }
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

        return metadataFiles;
    }

    private static Map<Path, TextureData> readDDSMetadata(List<File> metadataFiles) {
        Map<Path, TextureData> cache = new HashMap<>();

        for (File file : metadataFiles) {
            try {
                String jsonString = Files.readString(file.toPath(), StandardCharsets.UTF_8);
                JSONArray modImages = new JSONArray(jsonString);

                for (int i = 0; i < modImages.length(); ++i) {
                    JSONObject dds = modImages.getJSONObject(i);

                    String relPath = dds.getString("RelativeImagePath");
                    String modDir = dds.getString("ModFolderName");

                    Path originalImagePath = Path.of(PWD);
                    if (Objects.equals(modDir, "starsector-core")) {
                        originalImagePath = originalImagePath.resolve(relPath);
                    } else {
                        originalImagePath = originalImagePath.resolve(MODS).resolve(modDir).resolve(relPath);
                    }

                    // DDSFilePath is a mods-dir suffix like '/mods/DDSCache/..'. Convert to absolute.
                    Path ddsImagePath = Path.of(dds.getString("DDSFilePath"));
                    ddsImagePath = ddsImagePath.subpath(1, ddsImagePath.getNameCount());
                    ddsImagePath = Path.of(MODS).resolve(ddsImagePath);

                    TextureData texData = readTextureData(dds);
                    texData.imagePath = originalImagePath.toAbsolutePath();
                    texData.ddsImagePath = ddsImagePath.toAbsolutePath();

                    cache.put(originalImagePath.normalize(), texData);
                }
            } catch (Exception e) {
                Logger.getLogger(DDSIntegration.class).info(e);
            }
        }

        return cache;
    }

    private static TextureData readTextureData(JSONObject dds) throws JSONException {
        TextureData texData = new TextureData();

        texData.imageWidth = dds.getInt("Width");
        texData.imageHeight = dds.getInt("Height");
        texData.width = texData.imageWidth;
        texData.height = texData.imageHeight;
        texData.hasAlpha = true;

        // Since VRAM Optimizer 1.0.46
        if (hasSetDDSTextureParameters()) {
            if (dds.has("MipCount")) {
                texData.mipCount = dds.getInt("MipCount");
            } else {
                // DDS cache was not regenerated with VRAM Optimizer 1.0.46.
                texData.mipCount = -1;
            }
        }

        JSONArray mean = dds.getJSONArray("Mean");
        JSONArray weighted = dds.getJSONArray("Weighted");
        JSONArray median = dds.getJSONArray("Median");

        texData.mean = new Color(
                (float) mean.getDouble(0),
                (float) mean.getDouble(1),
                (float) mean.getDouble(2)
        );
        texData.weighted = new Color(
                (float) weighted.getDouble(0),
                (float) weighted.getDouble(1),
                (float) weighted.getDouble(2)
        );
        texData.median = new Color(
                (float) median.getDouble(0),
                (float) median.getDouble(1),
                (float) median.getDouble(2)
        );

        return texData;
    }

    public static boolean hasSetDDSTextureParameters() {
        return methodSetDDSTextureParameters != null;
    }

    public static int uploadDDSTexture(int textureID, byte[] fileBytes) {
        try {
            return (Integer) methodUploadDDSTexture.invoke(null, textureID, fileBytes);
        } catch (InvocationTargetException | IllegalAccessException e) {
            throw new RuntimeException(e);
        }
    }

    public static void setDDSTextureParameters(int textureID, int mipCount, boolean bind) {
        try {
            methodSetDDSTextureParameters.invoke(null, textureID, mipCount, bind);
        } catch (InvocationTargetException | IllegalAccessException e) {
            throw new RuntimeException(e);
        }
    }

    private static void initIntegrationHandles() {
        Logger logger = Logger.getLogger(DDSIntegration.class);

        ScriptStore.initScriptClassLoader();
        ClassLoader scriptLoader = Global.getSettings().getScriptClassLoader();

        try {
            Class<?> loadingClass = scriptLoader.loadClass("DeCell.VOpt.Commons.Rendering.TextureLoading");
            methodSetDDSTextureParameters = loadingClass.getMethod("SetDDSTextureParamaters", int.class, int.class, boolean.class);

            logger.info("Initialized VRAM Optimizer SetDDSTextureParamaters method.");
        } catch (Throwable e) {
            logger.error("Failed to initialize VRAM Optimizer SetDDSTextureParamaters method.", e);
        }

        try {
            Class<?> loadingClass = scriptLoader.loadClass("DeCell.VOpt.Commons.Rendering.TextureLoading");
            methodUploadDDSTexture = loadingClass.getMethod("UploadDDSTexture", int.class, byte[].class);

            logger.info("Initialized VRAM Optimizer UploadDDSTexture method.");
        } catch (Throwable e) {
            throw new RuntimeException("Failed to initialize VRAM Optimizer. VRAM Optimizer may be out of date.", e);
        }
    }
}
