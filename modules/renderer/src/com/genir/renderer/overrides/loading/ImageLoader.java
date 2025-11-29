package com.genir.renderer.overrides.loading;

import org.apache.log4j.Logger;
import proxy.com.fs.graphics.AlphaAdder;
import proxy.com.fs.graphics.TextureRepository;

import java.awt.image.BufferedImage;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

import static com.genir.renderer.overrides.loading.ResourceLoader.mainThreadWaitGroup;

public class ImageLoader {
    private static final Set<String> knownImages = ConcurrentHashMap.newKeySet();
    private static BufferedImage imageCache = null;

    private static final Logger logger = Logger.getLogger(ImageLoader.class);

    public static BufferedImage getImage(String path) {
        return imageCache;
    }

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

            final BufferedImage image = proxy.com.fs.graphics.FileRepository.FileRepository_loadImage(path);
            if (image == null) {
                throw new NullPointerException();
            }

            mainThreadWaitGroup.incrementAndGet();
            ResourceLoader.mainThreadQueue.add(() -> {
                try {
                    defineTexture(type, path, image);
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

    private static void defineTexture(String type, String path, BufferedImage image) {
        try {
            imageCache = image;

            if (Objects.equals(type, "TEXTURE_ALPHA_ADDER")) {
                TextureRepository.TextureRepository_setImageTransformer(new AlphaAdder());
                TextureRepository.TextureRepository_defineTexture(path, path);
                TextureRepository.TextureRepository_setImageTransformer(null);
            } else {
                TextureRepository.TextureRepository_defineTexture(path, path);
            }
        } catch (Exception e) {
            throw new RuntimeException("Image with filename [" + path + "] not found or failed to load", e);
        } finally {
            imageCache = null;
        }
    }
}
