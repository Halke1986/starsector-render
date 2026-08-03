package com.genir.renderer.overrides.loading;

import com.genir.renderer.overrides.GameState;
import com.genir.renderer.overrides.TextureBuilder;
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
        // Starsector will call `queueImage` when performing devMode asset reload.
        // The call is spurious and should be ignored.
        if (GameState.gameInitialized) {
            return;
        }

        if (path == null || path.isEmpty() || !knownImages.add(path)) {
            return;
        }

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

    /**
     * Texture loading during multi-threaded resource loading phase.
     */
    private static void loadTextureAsync(String type, String path) {
        TextureData texData = loadTextureData(type, path);

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
    }

    /**
     * Texture loading during single-threaded gameplay phase.
     */
    public static TextureHandler loadTexture(Object delegate, TextureHandler target, String path, int var3, int var4, int var5, int var6, boolean generateSubImage) throws IOException {
        // Delegate uncommon cases to vanilla.
        if (target != null || var3 != GL11.GL_TEXTURE_2D || var4 != GL11.GL_RGBA || var5 != GL11.GL_LINEAR || var6 != GL11.GL_LINEAR || generateSubImage) {
            return ((proxy.com.fs.graphics.TextureLoader) delegate).loadTexture_vanilla(target, path, var3, var4, var5, var6, generateSubImage);
        }

        TextureData texData = loadTextureData("", path);
        return TextureBuilder.commitTexture(path, texData);
    }

    private static TextureData loadTextureData(String type, String path) {
        try {
            // Load image metadata.
            InputStream resource = FileLoader.loadInputStream(path, true);
            if (resource == null) {
                throw new NullPointerException();
            }

            // Load texture DDS override.
            if (resource instanceof ResourceHandle handle) {
                TextureData texData = DDSCache.getTexture(handle.getFilePath());
                if (texData != null) {
                    logger.info("Loading image DDS override [" + path + "]");

                    // BufferedImage image = ImageIO.read(new BufferedInputStream(resource)); // TODO remove test
                    // TextureData test = TextureBuilder.readAndAnalyzeImage(image);

                    return texData;
                }
            }

            // Fall back to vanilla image loading.
            logger.info("Loading image [" + path + "]");

            BufferedImage image = ImageIO.read(new BufferedInputStream(resource));
            if (Objects.equals(type, "TEXTURE_ALPHA_ADDER")) {
                image = new AlphaAdder().TextureTransformer_apply(image);
            }

            return TextureBuilder.readAndAnalyzeImage(image);
        } catch (Exception e) {
            throw new RuntimeException("Image with filename [" + path + "] not found or failed to load", e);
        }
    }

    /**
     * Commit texture to GPU and store a TextureHandler in TextureRepository.
     */
    private static void commitAndCacheTexture(String name, String path, TextureData texData) {
        try {
            TextureHandler tex = TextureBuilder.commitTexture(path, texData);
            tex.TextureHandler_setStringID(name);
            TextureRepository.TextureRepository_addTexture(name, tex);
        } catch (Exception e) {
            throw new RuntimeException("Image with filename [" + path + "] not found or failed to load", e);
        }
    }
}
