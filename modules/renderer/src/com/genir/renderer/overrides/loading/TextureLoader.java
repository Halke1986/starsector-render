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

    public static TextureHandler loadTexture(Object delegate, TextureHandler target, String path, int var3, int var4, int var5, int var6, boolean generateSubImage) throws IOException {
        // Delegate uncommon cases to vanilla.
//        if (target != null || var3 != GL11.GL_TEXTURE_2D || var4 != GL11.GL_RGBA || var5 != GL11.GL_LINEAR || var6 != GL11.GL_LINEAR || generateSubImage) {
//            return delegate.loadTexture_vanilla(target, path, var3, var4, var5, var6, generateSubImage);
//        }

        return ((proxy.com.fs.graphics.TextureLoader) delegate).loadTexture_vanilla(target, path, var3, var4, var5, var6, generateSubImage);
//        // if target != null || generateSubImage -> call vanilla method_21178
//
//        // assert var3 == GL_TEXTURE_2D
//        // assert var4 == GL_RGBA
//        // assert var5 == GL_LINEAR
//        // assert var6 == GL_LINEAR
//
//        short var8 = 0;
//        if (target == null || target.getTextureID() == -1) {
//            int var9 = this.method_21172();
//            target = new TextureHandler(cGL_TEXTURE_2D, var9, path);
//        }
//
//        target.setPath(path);
//        target.method_25432();
//        ByteBuffer var11 = null;
//        if (var11 == null) {
//            BufferedImage bufferedImage = this.method_21185(path);
//            this.width = bufferedImage.getWidth();
//            this.height = bufferedImage.getHeight();
//            if (this.field_0 != null) {
//                bufferedImage = this.field_0.method_567(bufferedImage);
//            }
//
//            target.setImageWidth(bufferedImage.getWidth());
//            target.setImageHeight(bufferedImage.getHeight());
//            if (bufferedImage.getColorModel().hasAlpha()) {
//                var8 = 6408;
//            } else {
//                var8 = 6407;
//            }
//
//            var11 = this.analyzeTexture(bufferedImage, target);
//            target.method_25448(this.color_1);
//            target.method_25446(this.color_2);
//            target.method_25450(this.color);
//        }
//
//        boolean var12 = this.width <= 1024 && this.height <= 1024;
//        if (set.contains(path)) {
//            var12 = true;
//        }
//
//        if (var12) {
//            generateMipmap = false;
//            GL11.glTexParameteri(cGL_TEXTURE_2D, 10241, 9987);
//            GL11.glTexParameteri(cGL_TEXTURE_2D, 10240, var6);
//            GL11.glTexParameteri(3553, 33169, 1);
//        } else {
//            GL11.glTexParameteri(cGL_TEXTURE_2D, 10241, var5);
//            GL11.glTexParameteri(cGL_TEXTURE_2D, 10240, var6);
//            GL11.glTexParameteri(cGL_TEXTURE_2D, 33169, 0);
//        }
//
//        if (generateMipmap) {
//            GL11.glTexSubImage2D(cGL_TEXTURE_2D, 0, 0, 0, this.method_21181(this.width), this.method_21181(this.height), var8, 5121, var11);
//        } else {
//            GL11.glTexImage2D(cGL_TEXTURE_2D, 0, var4, this.method_21181(this.width), this.method_21181(this.height), 0, var8, 5121, var11);
//        }
//
//        return target;
    }
}
