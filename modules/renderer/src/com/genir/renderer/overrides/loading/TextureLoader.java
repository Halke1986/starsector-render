package com.genir.renderer.overrides.loading;

import com.genir.renderer.overrides.TextureBuilder;
import org.apache.log4j.Logger;
import proxy.com.fs.graphics.AlphaAdder;
import proxy.com.fs.graphics.TextureHandler;
import proxy.com.fs.graphics.TextureRepository;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

import static com.genir.renderer.overrides.loading.ResourceLoader.mainThreadWaitGroup;

public class TextureLoader {
    private static final Set<String> knownImages = ConcurrentHashMap.newKeySet();
    private static final Logger logger = Logger.getLogger(TextureLoader.class);

    public static void queueImage(String type, String path) {
        queueImage(type, path, false);
    }

    public static void queueImageOptional(String type, String path) {
        queueImage(type, path, true);
    }

    private static void queueImage(String type, String path, boolean optional) {
        if (path != null && !path.isEmpty() && !knownImages.contains(path)) {
            knownImages.add(path);

            mainThreadWaitGroup.incrementAndGet();
            ResourceLoader.workers.execute(() -> {
                try {
                    loadTextureAsync(type, path);
                } catch (Throwable e) {
                    if (optional) {
                        knownImages.remove(path);
                    } else {
                        ResourceLoader.setException(e);
                    }
                } finally {
                    mainThreadWaitGroup.decrementAndGet();
                }
            });
        }
    }

    private static void loadTextureAsync(String type, String path) {
        try {
            logger.info("Loading image [" + path + "]");

            BufferedImage image = proxy.com.fs.graphics.FileRepository.FileRepository_loadImage(path);
            if (image == null) {
                throw new NullPointerException();
            }

            if (Objects.equals(type, "TEXTURE_ALPHA_ADDER")) {
                image = new AlphaAdder().TextureTransformer_apply(image);
            }

            TextureBuilder.TextureData texData = TextureBuilder.analyzeImage(image);

            mainThreadWaitGroup.incrementAndGet();
            ResourceLoader.mainThreadQueue.add(() -> {
                try {
                    commitAndCacheTexture(path, path, texData);
                } catch (Throwable e) {
                    ResourceLoader.setException(e);
                } finally {
                    mainThreadWaitGroup.decrementAndGet();
                }
            });
        } catch (Exception e) {
            throw new RuntimeException("Image with filename [" + path + "] not found or failed to load", e);
        }
    }

    public static TextureHandler loadTexture(Object delegate, TextureHandler target, String path, int var3, int var4, int var5, int var6, boolean generateSubImage) throws IOException {
        // Delegate uncommon cases to vanilla.
        if (target != null || var3 != GL11.GL_TEXTURE_2D || var4 != GL11.GL_RGBA || var5 != GL11.GL_LINEAR || var6 != GL11.GL_LINEAR || generateSubImage) {
            return ((proxy.com.fs.graphics.TextureLoader) delegate).loadTexture_vanilla(target, path, var3, var4, var5, var6, generateSubImage);
        }

        logger.info("Loading image [" + path + "]");

        BufferedImage image = proxy.com.fs.graphics.FileRepository.FileRepository_loadImage(path);
        if (image == null) {
            throw new RuntimeException("Image with filename [" + path + "] not found or failed to load");
        }

        TextureBuilder.TextureData texData = TextureBuilder.readAndAnalyzeImage(image);
        return commitTexture(path, texData);
    }

    /**
     * Commit texture to GPU and store a TextureHandler in TextureRepository.
     */
    private static void commitAndCacheTexture(String name, String path, TextureBuilder.TextureData texData) {
        try {
            TextureHandler tex = TextureBuilder.commitTexture(path, texData);
            tex.TextureHandler_setStringID(name);
            TextureRepository.TextureRepository_addTexture(name, tex);
        } catch (Exception e) {
            throw new RuntimeException("Image with filename [" + path + "] not found or failed to load", e);
        }
    }

    /**
     * Commit texture to GPU and return a TextureHandler.
     */
    private static TextureHandler commitTexture(String path, TextureBuilder.TextureData texData) {
        final TextureHandler texture = new TextureHandler(GL11.GL_TEXTURE_2D, com.genir.renderer.bridge.GL11.glGenTextures(), path);

        texture.TextureHandler_setPath(path);
        texture.TextureHandler_setImageWidth(texData.imageWidth);
        texture.TextureHandler_setImageHeight(texData.imageHeight);
        texture.TextureHandler_setHeight(texData.height);
        texture.TextureHandler_setWidth(texData.width);
        texture.TextureHandler_setColor0(texData.color0);
        texture.TextureHandler_setColor1(texData.color1);
        texture.TextureHandler_setColor2(texData.color2);

        int colorType = texData.hasAlpha ? GL11.GL_RGBA : GL11.GL_RGB;
        com.genir.renderer.bridge.GL11.glBindTexture(GL11.GL_TEXTURE_2D, texture.TextureHandler_getTextureID());

        boolean generateMipmap = texData.width <= 1024 && texData.height <= 1024;
        if (generateMipmap) {
            com.genir.renderer.bridge.GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL11.GL_TEXTURE_MIN_FILTER, GL11.GL_LINEAR_MIPMAP_LINEAR);
            com.genir.renderer.bridge.GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL11.GL_TEXTURE_MAG_FILTER, GL11.GL_LINEAR);
            com.genir.renderer.bridge.GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL14.GL_GENERATE_MIPMAP, 1);
        } else {
            com.genir.renderer.bridge.GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL11.GL_TEXTURE_MIN_FILTER, GL11.GL_LINEAR);
            com.genir.renderer.bridge.GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL11.GL_TEXTURE_MAG_FILTER, GL11.GL_LINEAR);
            com.genir.renderer.bridge.GL11.glTexParameteri(GL11.GL_TEXTURE_2D, GL14.GL_GENERATE_MIPMAP, 0);
        }

        com.genir.renderer.bridge.GL11.glTexImage2D(GL11.GL_TEXTURE_2D, 0, GL11.GL_RGBA, texData.width, texData.height, 0, colorType, GL11.GL_UNSIGNED_BYTE, texData.buffer);

        return texture;
    }
}
