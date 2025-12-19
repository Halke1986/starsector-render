package com.genir.renderer.overrides.loading;

import com.genir.renderer.overrides.TextureLoader;
import org.apache.log4j.Logger;
import proxy.com.fs.graphics.AlphaAdder;
import proxy.com.fs.graphics.TextureHandler;
import proxy.com.fs.graphics.TextureRepository;

import java.awt.image.BufferedImage;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

import static com.genir.renderer.overrides.loading.ResourceLoader.mainThreadWaitGroup;

public class ImageLoader {
    private static final Set<String> knownImages = ConcurrentHashMap.newKeySet();
    private static final Logger logger = Logger.getLogger(ImageLoader.class);

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
                    loadImage(type, path);
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

    private static void loadImage(String type, String path) {
        try {
            logger.info("Loading image [" + path + "]");

            BufferedImage image = proxy.com.fs.graphics.FileRepository.FileRepository_loadImage(path);
            if (image == null) {
                throw new NullPointerException();
            }

            if (Objects.equals(type, "TEXTURE_ALPHA_ADDER")) {
                image = new AlphaAdder().TextureTransformer_apply(image);
            }

            TextureLoader.TextureData texData = TextureLoader.analyzeImage(image);

            mainThreadWaitGroup.incrementAndGet();
            ResourceLoader.mainThreadQueue.add(() -> {
                try {
                    defineTexture(path, path, texData);
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

    private static void defineTexture(String name, String path, TextureLoader.TextureData texData) {
        try {
            TextureHandler tex = TextureLoader.commitTexture(path, texData);
            TextureRepository.TextureRepository_addTexture(name, tex);
        } catch (Exception e) {
            throw new RuntimeException("Image with filename [" + path + "] not found or failed to load", e);
        }
    }
}
