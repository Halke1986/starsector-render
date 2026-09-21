package com.genir.renderer.overrides.loading.textures;

import com.genir.renderer.overrides.GameState;
import com.genir.renderer.overrides.loading.FileLoader;
import com.genir.renderer.overrides.loading.ResourceHandle;
import com.genir.renderer.overrides.loading.ResourceLoaderState;
import org.apache.log4j.Logger;
import org.lwjgl.opengl.GL11;
import proxy.com.fs.graphics.AlphaAdder;
import proxy.com.fs.graphics.TextureHandler;
import proxy.com.fs.graphics.TextureRepository;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/**
 * Overrides com.fs.graphics.TextureLoader
 */
public class TextureLoader {
    /**
     * ADDED FIELDS
     */
    private Set<String> knownImages;

    /**
     * STUB
     */
    public TextureHandler loadTexture_vanilla(TextureHandler target, String path, int var3, int var4, int var5, int var6, boolean generateSubImage) throws IOException {
        return null;
    }

    /**
     * ADDED METHOD
     */
    public void queueImage(String type, String path) {
        queueImage(type, path, false);
    }

    /**
     * ADDED METHOD
     */
    public void queueImageOptional(String type, String path) {
        queueImage(type, path, true);
    }

    /**
     * ADDED METHOD
     */
    private void queueImage(String type, String path, boolean optional) {
        // Starsector will call `queueImage` when performing devMode asset reload.
        // The call is spurious and should be ignored.
        if (GameState.gameInitialized) {
            return;
        }

        if (knownImages == null) {
            knownImages = ConcurrentHashMap.newKeySet();
        }

        if (path == null || path.isEmpty() || !knownImages.add(path)) {
            return;
        }

        ResourceLoaderState.mainThreadWaitGroup.incrementAndGet();
        ResourceLoaderState.workers.execute(() -> {
            try {
                loadTextureAsync(type, path);
            } catch (Throwable t) {
                if (optional) {
                    knownImages.remove(path);
                } else {
                    throw t;
                }
            } finally {
                ResourceLoaderState.mainThreadWaitGroup.decrementAndGet();
            }
        });
    }

    /**
     * ADDED METHOD
     * <p>
     * Texture loading during multi-threaded resource loading phase.
     */
    private void loadTextureAsync(String type, String path) {
        TextureData texData = loadTextureData(type, path);

        ResourceLoaderState.mainThreadWaitGroup.incrementAndGet();
        ResourceLoaderState.mainThreadQueue.add(() -> {
            try {
                commitAndCacheTexture(path, path, texData);
            } finally {
                ResourceLoaderState.mainThreadWaitGroup.decrementAndGet();
            }
        });
    }

    /**
     * REPLACED METHOD
     * <p>
     * Texture loading during single-threaded gameplay phase.
     */
    public TextureHandler TextureLoader_loadTexture(TextureHandler target, String path, int var3, int var4, int var5, int var6, boolean generateSubImage) throws IOException {
        // Delegate uncommon cases to vanilla.
        if (target != null || var3 != GL11.GL_TEXTURE_2D || var4 != GL11.GL_RGBA || var5 != GL11.GL_LINEAR || var6 != GL11.GL_LINEAR || generateSubImage) {
            return loadTexture_vanilla(target, path, var3, var4, var5, var6, generateSubImage);
        }

        TextureData texData = loadTextureData("", path);
        int textureID = commitTexture(path, texData);
        return newVanillaTextureHandler(null, path, texData, textureID);
    }

    /**
     * ADDED METHOD
     */
    private TextureData loadTextureData(String type, String path) {
        try {
            // Load image metadata.
            FileLoader fileLoader = FileLoader.FileLoader_getInstance();
            InputStream resource = fileLoader.FileLoader_loadInputStream(path, true);
            if (resource == null) {
                throw new NullPointerException();
            }

            boolean useVanillaLogic = Blacklist.doNotModify(path);

            // Load texture DDS override.
            if (!useVanillaLogic && resource instanceof ResourceHandle handle) {
                TextureData texData = DDSIntegration.getTexture(handle.getFilePath());
                if (texData != null) {
                    return texData;
                }
            }

            // Fall back to vanilla image loading.
            Logger.getLogger(TextureLoader.class).info("Loading image [" + path + "]");

            BufferedImage image;
            try (BufferedInputStream stream = new BufferedInputStream(resource)) {
                image = ImageIO.read(stream);
            }

            if (Objects.equals(type, "TEXTURE_ALPHA_ADDER")) {
                image = new AlphaAdder().TextureTransformer_apply(image);
            }

            return TextureBuilder.readAndAnalyzeImage(image, useVanillaLogic);
        } catch (Exception e) {
            throw new RuntimeException("Image with filename [" + path + "] not found or failed to load", e);
        }
    }

    /**
     * ADDED METHOD
     */
    private int commitTexture(String path, TextureData texData) {
        if (texData.isDDS()) {
            return DDSIntegration.commitTexture(texData);
        } else {
            return TextureBuilder.commitTexture(path, texData);
        }
    }

    /**
     * ADDED METHOD
     * <p>
     * Commit texture to GPU and store a TextureHandler in TextureRepository.
     */
    private void commitAndCacheTexture(String name, String path, TextureData texData) {
        try {
            int textureID = commitTexture(path, texData);

            TextureHandler handler = newVanillaTextureHandler(name, path, texData, textureID);
            TextureRepository.TextureRepository_addTexture(name, handler);
        } catch (Exception e) {
            throw new RuntimeException("Image with filename [" + path + "] not found or failed to load", e);
        }
    }

    /**
     * ADDED METHOD
     */
    private TextureHandler newVanillaTextureHandler(String name, String path, TextureData texData, int textureID) {
        TextureHandler handler = new TextureHandler(GL11.GL_TEXTURE_2D, textureID, path);

        handler.TextureHandler_setStringID(name);
        handler.TextureHandler_setPath(path);

        handler.TextureHandler_setImageWidth(texData.imageWidth);
        handler.TextureHandler_setImageHeight(texData.imageHeight);
        handler.TextureHandler_setWidth(texData.width);
        handler.TextureHandler_setHeight(texData.height);

        handler.TextureHandler_setColor0(texData.mean);
        handler.TextureHandler_setColor1(texData.weighted);
        handler.TextureHandler_setColor2(texData.median);

        return handler;
    }
}
