package com.genir.renderer.overrides.loading;

import com.fs.graphics.AlphaAdder;
import com.fs.graphics.TextureRepository;
import org.apache.log4j.Logger;

import java.awt.image.BufferedImage;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

import static com.genir.renderer.overrides.loading.ResourceLoader.mainThreadWaitGroup;

public class ImageLoader {
    private static final Set<String> knownImages = new HashSet<>();
    private static BufferedImage imageCache = null;

    private static final Logger logger = Logger.getLogger(ImageLoader.class);

    public static void queueImage(String type, String path) {
        if (path != null && !path.isEmpty() && !knownImages.contains(path)) {
            knownImages.add(path);

            mainThreadWaitGroup.incrementAndGet();
            ResourceLoader.workers.execute(() -> loadImage(type, path));
        }
    }

    public static BufferedImage getImage(String path) {
        return imageCache;
    }

    private static void loadImage(String type, String path) {
        try {
            final BufferedImage image = com.fs.graphics.FileRepository.FileRepository_loadImage(path);

            mainThreadWaitGroup.incrementAndGet();
            ResourceLoader.mainThreadQueue.add(() -> {
                try {
                    imageCache = image;

                    if (Objects.equals(type, "TEXTURE_ALPHA_ADDER")) {
                        TextureRepository.TextureRepository_setImageTransformer(new AlphaAdder());
                        TextureRepository.TextureRepository_defineTexture(path, path);
                        TextureRepository.TextureRepository_setImageTransformer(null);
                    } else {
                        TextureRepository.TextureRepository_defineTexture(path, path);
                    }
                } catch (Throwable t) {
                    logger.error("Error while loading file [" + path + "]: " + t.getMessage());
                } finally {
                    imageCache = null;
                    mainThreadWaitGroup.decrementAndGet();
                }
            });
        } catch (Exception e) {
            logger.error("Error while loading file [" + path + "]: " + e.getMessage());
        } finally {
            mainThreadWaitGroup.decrementAndGet();
        }
    }
}
