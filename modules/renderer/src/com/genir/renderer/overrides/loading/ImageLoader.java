package com.genir.renderer.overrides.loading;

import com.fs.graphics.AlphaAdder;
import com.fs.graphics.TextureRepository;
import org.apache.log4j.Logger;

import java.awt.image.BufferedImage;
import java.io.IOException;
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

    private static void loadImage(String type, String path) throws IOException {
        try {
            logger.info("Loading image [" + path + "]");

            final BufferedImage image = com.fs.graphics.FileRepository.FileRepository_loadImage(path);

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
        } catch (IOException e) {
            // Do not lose exception type. IOException is handled explicitly by vanilla.
            throw e;
        } catch (Exception e) {
            throw new RuntimeException("Error while loading image [" + path + "]", e);
        }
    }

    private static void defineTexture(String type, String path, BufferedImage image) throws IOException {
        try {
            imageCache = image;

            if (Objects.equals(type, "TEXTURE_ALPHA_ADDER")) {
                TextureRepository.TextureRepository_setImageTransformer(new AlphaAdder());
                TextureRepository.TextureRepository_defineTexture(path, path);
                TextureRepository.TextureRepository_setImageTransformer(null);
            } else {
                TextureRepository.TextureRepository_defineTexture(path, path);
            }
        } catch (IOException e) {
            // Do not lose exception type. IOException is handled explicitly by vanilla.
            throw e;
        } catch (Exception e) {
            throw new RuntimeException("Error while loading image [" + path + "]", e);
        } finally {
            imageCache = null;
        }
    }
}
