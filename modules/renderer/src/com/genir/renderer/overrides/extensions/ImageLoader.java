package com.genir.renderer.overrides.extensions;

import com.fs.graphics.AlphaAdder;
import com.fs.graphics.TextureRepository;
import com.genir.renderer.overrides.ResourceLoaderState;
import org.apache.log4j.Logger;

import java.awt.image.BufferedImage;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

public class ImageLoader {
    private static final Set<String> knownImages = new HashSet<>();
    private static BufferedImage imageCache = null;

    private static final Logger logger = Logger.getLogger(ImageLoader.class);

    public static void queueImage(String type, String path) {
        if (path != null && !knownImages.contains(path)) {
            knownImages.add(path);

            ResourceLoaderState.waitGroup.incrementAndGet();
            ResourceLoaderState.executorQueue.add(() -> loadImage(type, path));
        }
    }

    public static BufferedImage getImage(String path) {
        return imageCache;
    }

    private static void loadImage(String type, String path) {
        try {
            imageCache = com.fs.graphics.FileRepository.FileRepository_loadImage(path);

            if (Objects.equals(type, "TEXTURE_ALPHA_ADDER")) {
                TextureRepository.TextureRepository_setImageTransformer(new AlphaAdder());
                TextureRepository.TextureRepository_defineTexture(path, path);
                TextureRepository.TextureRepository_setImageTransformer(null);
            } else {
                TextureRepository.TextureRepository_defineTexture(path, path);
            }

            imageCache = null;
        } catch (Exception e) {
            logger.error("Error while loading file [" + path + "]: " + e.getMessage());
        }
    }
}
