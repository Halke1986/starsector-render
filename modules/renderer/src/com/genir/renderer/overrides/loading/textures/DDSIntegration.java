package com.genir.renderer.overrides.loading.textures;

import com.fs.starfarer.api.Global;
import com.fs.starfarer.api.ModSpecAPI;
import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.ContextManager;
import com.genir.renderer.overrides.loading.ScriptLoader;
import org.apache.log4j.Logger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.lwjgl.BufferUtils;
import org.lwjgl.opengl.GL11;
import org.lwjgl.opengl.GL14;
import org.lwjgl.opengl.GL42;

import java.awt.*;
import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.List;
import java.util.*;
import java.util.concurrent.atomic.AtomicReference;

import static com.genir.renderer.debug.Debug.asert;

/**
 * DDSIntegration provides integration with VramOptimizer mod. When VramOptimizer is enabled,
 * vanilla texture loading is replaced with the much faster DDS texture loading.
 */
public class DDSIntegration {
    private static final String PWD = System.getProperty("user.dir");
    private static final String MODS = System.getProperty("com.fs.starfarer.settings.paths.mods");

    private static Map<Path, TextureData> cache = null;

    private static Method methodBeforeTextureUpload = null;
    private static Method methodAfterTextureUpload = null;

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

    public static int commitTexture(String path, TextureData texData) {
        int textureID = com.genir.renderer.bridge.commands.GL11.glGenTextures();
        com.genir.renderer.bridge.commands.GL11.glBindTexture(GL11.GL_TEXTURE_2D, textureID);

        final Context context = ContextManager.getThreadContext();
        context.exec.execute((ctx, args, offset) -> {
            ctx.textureManager.manageTexture(
                    textureID,
                    path,
                    () -> readTextureBytes(texData),
                    (buffer) -> commitTextureLazy(path, texData, textureID, buffer)
            );
        });

        return textureID;
    }

    // commitTextureLazy runs on rendering thread, mostly to avoid issues with lazy texture loading in OpenGL display lists.
    private static void commitTextureLazy(String path, TextureData texData, int textureID, ByteBuffer buffer) {
        int internalFormat = GL42.GL_COMPRESSED_RGBA_BPTC_UNORM;

        org.lwjgl.opengl.GL11.glBindTexture(GL11.GL_TEXTURE_2D, textureID);

        DDSIntegration.beforeTextureUpload(texData.width, texData.height, textureID, path, internalFormat);

        boolean generateMipmap = texData.width <= 1024 && texData.height <= 1024;
        if (generateMipmap) {
            org.lwjgl.opengl.GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL11.GL_TEXTURE_MIN_FILTER, GL11.GL_LINEAR_MIPMAP_LINEAR);
            org.lwjgl.opengl.GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL11.GL_TEXTURE_MAG_FILTER, GL11.GL_LINEAR);
            org.lwjgl.opengl.GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL14.GL_GENERATE_MIPMAP, 1);
        } else {
            org.lwjgl.opengl.GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL11.GL_TEXTURE_MIN_FILTER, GL11.GL_LINEAR);
            org.lwjgl.opengl.GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL11.GL_TEXTURE_MAG_FILTER, GL11.GL_LINEAR);
            org.lwjgl.opengl.GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL14.GL_GENERATE_MIPMAP, 0);
        }

        org.lwjgl.opengl.GL11.glPixelStorei(GL11.GL_UNPACK_ALIGNMENT, 1);
        org.lwjgl.opengl.GL13.glCompressedTexImage2D(GL11.GL_TEXTURE_2D, 0, internalFormat, texData.width, texData.height, 0, buffer);

        DDSIntegration.afterTextureUpload(texData.width, texData.height, textureID, path, internalFormat);
    }

    public static ByteBuffer readTextureBytes(TextureData texData) {
        try {
            asert(texData.isDDS);
            asert(texData.buffer == null);

            byte[] bytes = Files.readAllBytes(texData.ddsImagePath);

            int ddsHeaderLength = 148;
            int imageSize = bytes.length - ddsHeaderLength;

            ByteBuffer buffer = BufferUtils.createByteBuffer(bytes.length - ddsHeaderLength);
            buffer.put(bytes, ddsHeaderLength, imageSize);
            buffer.clear();

            return buffer;
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
                    texData.ddsImagePath = ddsImagePath.normalize();
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

        texData.width = dds.getInt("Width");
        texData.height = dds.getInt("Height");
        texData.hasAlpha = true;
        texData.isDDS = true;

        JSONArray mean = dds.getJSONArray("Mean");
        JSONArray weighted = dds.getJSONArray("Weighted");
        JSONArray median = dds.getJSONArray("Median");

        texData.mean = new Color(
                (float) mean.getDouble(0),
                (float) mean.getDouble(1),
                (float) mean.getDouble(2));
        texData.weighted = new Color(
                (float) weighted.getDouble(0),
                (float) weighted.getDouble(1),
                (float) weighted.getDouble(2));
        texData.median = new Color(
                (float) median.getDouble(0),
                (float) median.getDouble(1),
                (float) median.getDouble(2));

        return texData;
    }

    public static void beforeTextureUpload(int width, int height, int textureID, String texturePath, int textureType) {
        if (methodBeforeTextureUpload == null) {
            return;
        }

        try {
            methodBeforeTextureUpload.invoke(null, width, height, textureID, texturePath, textureType);
        } catch (InvocationTargetException | IllegalAccessException e) {
            throw new RuntimeException(e);
        }
    }

    public static void afterTextureUpload(int width, int height, int textureID, String texturePath, int textureType) {
        if (methodAfterTextureUpload == null) {
            return;
        }

        try {
            methodAfterTextureUpload.invoke(null, width, height, textureID, texturePath, textureType);
        } catch (InvocationTargetException | IllegalAccessException e) {
            throw new RuntimeException(e);
        }
    }

    private static void initIntegrationHandles() {
        Logger logger = Logger.getLogger(DDSIntegration.class);

        try {
            ScriptLoader.initScriptClassLoader();
            ClassLoader scriptLoader = Global.getSettings().getScriptClassLoader();
            Class<?> tclass = scriptLoader.loadClass("DeCell.VOpt.Commons.Rendering.Textures");

            methodBeforeTextureUpload = tclass.getMethod("BeforeTextureUpload", int.class, int.class, int.class, String.class, int.class);
            methodAfterTextureUpload = tclass.getMethod("AfterTextureUpload", int.class, int.class, int.class, String.class, int.class);

            // VOpt Init must be run on rendering thread as
            // it contains un-intercepted OpenGL calls.
            final Context context = ContextManager.getThreadContext();
            final AtomicReference<Throwable> asyncException = new AtomicReference<>();
            context.exec.wait((ctx, args, offset) -> {
                try {
                    tclass.getMethod("Init").invoke(null);
                } catch (Throwable t) {
                    asyncException.set(t);
                }
            });

            Throwable t = asyncException.get();
            if (t != null) {
                throw t;
            }

            logger.info("Initialized VramOptimizer/jars/GameFunctions.jar integration.");
        } catch (Throwable t) {
            methodBeforeTextureUpload = null;
            methodAfterTextureUpload = null;

            logger.error("Failed to initialize VramOptimizer/jars/GameFunctions.jar integration.", t);
        }
    }
}
