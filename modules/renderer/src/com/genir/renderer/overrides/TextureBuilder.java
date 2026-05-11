package com.genir.renderer.overrides;

import org.lwjgl.BufferUtils;
import org.lwjgl.opengl.GL11;
import org.lwjgl.opengl.GL14;
import proxy.com.fs.graphics.TextureHandler;

import java.awt.*;
import java.awt.image.BufferedImage;
import java.awt.image.Raster;
import java.nio.ByteBuffer;

import static java.awt.image.BufferedImage.*;

public class TextureBuilder {
    public static TextureHandler commitTexture(String path, TextureData texData) {
        final TextureHandler texture = new TextureHandler(GL11.GL_TEXTURE_2D, com.genir.renderer.bridge.GL11.glGenTextures(), path);

        texture.TextureHandler_setPath(path);
        texture.TextureHandler_setImageWidth(texData.imageWidth);
        texture.TextureHandler_setImageHeight(texData.imageHeight);
        texture.TextureHandler_setHeight(texData.height);
        texture.TextureHandler_setWidth(texData.width);
        texture.TextureHandler_serColor0(texData.color0);
        texture.TextureHandler_serColor1(texData.color1);
        texture.TextureHandler_serColor2(texData.color2);

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

    public static TextureData readAndAnalyzeImage(BufferedImage image) {
        ImageAnalyzer analyzer = new ImageAnalyzer();
        TextureData texData = new TextureData();

        texData.imageWidth = image.getWidth();
        texData.imageHeight = image.getHeight();
        texData.hasAlpha = image.getColorModel().hasAlpha();

        // Calculate image width and height.
        while (texData.width < image.getWidth()) texData.width *= 2;
        while (texData.height < image.getHeight()) texData.height *= 2;

        int channels = image.getColorModel().hasAlpha() ? 4 : 3;

        texData.buffer = BufferUtils.createByteBuffer(texData.width * texData.height * channels);
        texData.buffer.position(0);
        texData.buffer.limit(texData.buffer.capacity());

        switch (image.getType()) {
            case TYPE_INT_RGB, TYPE_INT_ARGB, TYPE_3BYTE_BGR, TYPE_4BYTE_ABGR:
                readOptimized(image, texData, analyzer);
                break;
            default:
                readFallback(image, texData, analyzer);
        }

        analyzer.analyzeImage(texData);

        return texData;
    }

    private static void readOptimized(BufferedImage image, TextureData texData, ImageAnalyzer analyzer) {
        int channels = image.getColorModel().hasAlpha() ? 4 : 3;
        int imageType = image.getType();

        Object lineObject = null;
        byte[] line = null;
        if (imageType == TYPE_INT_RGB || imageType == TYPE_INT_ARGB) {
            line = new byte[image.getWidth() * channels];
        }

        for (int y = 0; y < image.getHeight(); ++y) {
            // Read line object.
            int lineNumber = image.getMinY() + (image.getHeight() - y - 1);
            lineObject = image.getRaster().getDataElements(image.getMinX(), lineNumber, image.getWidth(), 1, lineObject);

            int[] ints;

            byte r = 0;
            byte g = 0;
            byte b = 0;
            byte a = 0;

            switch (imageType) {
                case TYPE_INT_RGB:
                    ints = (int[]) lineObject;
                    for (int x = 0; x < image.getWidth(); ++x) {
                        int pixel = ints[x];

                        r = (byte) (pixel >> 16 & 0xFF);
                        g = (byte) (pixel >> 8 & 0xFF);
                        b = (byte) (pixel & 0xFF);

                        int writePos = x * 3;

                        line[writePos + 0] = r;
                        line[writePos + 1] = g;
                        line[writePos + 2] = b;
                    }

                    analyzer.addPixel(r, g, b);
                    break;
                case TYPE_INT_ARGB:
                    ints = (int[]) lineObject;
                    for (int x = 0; x < image.getWidth(); ++x) {
                        int pixel = ints[x];

                        a = (byte) (pixel >> 24 & 0xFF);
                        r = (byte) (pixel >> 16 & 0xFF);
                        g = (byte) (pixel >> 8 & 0xFF);
                        b = (byte) (pixel & 0xFF);

                        int writePos = x * 4;

                        line[writePos + 0] = r;
                        line[writePos + 1] = g;
                        line[writePos + 2] = b;
                        line[writePos + 3] = a;
                    }

                    analyzer.addPixel(r, g, b, a);
                    break;
                case TYPE_3BYTE_BGR:
                    line = (byte[]) lineObject;
                    for (int x = 0; x < image.getWidth(); ++x) {
                        int readPos = x * 3;

                        r = line[readPos + 0];
                        g = line[readPos + 1];
                        b = line[readPos + 2];
                    }

                    analyzer.addPixel(r, g, b);
                    break;
                case TYPE_4BYTE_ABGR:
                    line = (byte[]) lineObject;
                    for (int x = 0; x < image.getWidth(); ++x) {
                        int readPos = x * 4;

                        r = line[readPos + 0];
                        g = line[readPos + 1];
                        b = line[readPos + 2];
                        a = line[readPos + 3];
                    }

                    analyzer.addPixel(r, g, b, a);
                    break;
            }

            texData.buffer.put(y * texData.width * channels, line, 0, line.length);
        }
    }

    private static void readFallback(BufferedImage image, TextureData texData, ImageAnalyzer analyzer) {
        Raster raster = image.getData();

        int channels = image.getColorModel().hasAlpha() ? 4 : 3;
        int[] pixels = new int[4];

        for (int y = 0; y < image.getHeight(); ++y) {
            for (int x = 0; x < image.getWidth(); ++x) {
                raster.getPixel(x, image.getHeight() - y - 1, pixels);

                byte r = (byte) pixels[0];
                byte g = (byte) pixels[1];
                byte b = (byte) pixels[2];
                byte a = (byte) pixels[3];

                int writePos = (y * texData.width + x) * channels;

                texData.buffer.put(writePos + 0, r);
                texData.buffer.put(writePos + 1, g);
                texData.buffer.put(writePos + 2, b);
                if (channels == 4) {
                    texData.buffer.put(writePos + 3, a);
                }

                if (channels == 3 || a != 0) {
                    analyzer.addPixel(r, g, b);
                }
            }
        }
    }

    public static class TextureData {
        ByteBuffer buffer = null;

        int imageWidth;
        int imageHeight;
        boolean hasAlpha;

        int width = 1;
        int height = 1;

        Color color0 = Color.white;
        Color color1 = Color.white;
        Color color2 = Color.white;
    }

    private static class ImageAnalyzer {
        private float var8 = 0.0F;
        private float var9 = 0.0F;
        private float var10 = 0.0F;
        private float var11 = 0.0F;
        private final float[] var12 = new float[256];
        private final float[] var13 = new float[256];
        private final float[] var14 = new float[256];

        void addPixel(byte r, byte g, byte b, byte a) {
            if (a != 0) {
                addPixel(r, g, b);
            }
        }

        void addPixel(byte r, byte g, byte b) {
            int ri = Byte.toUnsignedInt(r);
            int gi = Byte.toUnsignedInt(g);
            int bi = Byte.toUnsignedInt(b);

            var8 += ri;
            var9 += gi;
            var10 += bi;

            ++var12[ri];
            ++var13[gi];
            ++var14[bi];

            ++var11;
        }

        void analyzeImage(TextureData texData) {
            if (var11 <= 0.0F) {
                return;
            }

            int var22 = (int) (var8 / var11);
            int y = (int) (var9 / var11);
            int x = (int) (var10 / var11);

            y = Math.min(y, 255);
            x = Math.min(x, 255);
            var22 = Math.min(var22, 255);

            y = Math.max(y, 0);
            x = Math.max(x, 0);
            var22 = Math.max(var22, 0);

            texData.color0 = new Color(var22, y, x, 255);
            float var23 = 0.5F;
            var22 = (int) method_21184(var12, var11 * var23);
            y = (int) method_21184(var13, var11 * var23);
            x = (int) method_21184(var14, var11 * var23);

            y = Math.min(y, 255);
            x = Math.min(x, 255);
            var22 = Math.min(var22, 255);

            y = Math.max(y, 0);
            x = Math.max(x, 0);
            var22 = Math.max(var22, 0);

            texData.color1 = new Color(var22, y, x, 255);
            var22 = (int) method_21183(var12, var11);
            y = (int) method_21183(var13, var11);
            x = (int) method_21184(var14, var11);

            y = Math.min(y, 255);
            x = Math.min(x, 255);
            var22 = Math.min(var22, 255);

            y = Math.max(y, 0);
            x = Math.max(x, 0);
            var22 = Math.max(var22, 0);

            texData.color2 = new Color(var22, y, x, 255);
        }

        private float method_21183(float[] var1, float var2) {
            float var3 = 0.0F;
            float var4 = var2 * 0.5F;

            for (int var5 = 0; var5 <= 255; ++var5) {
                float var6 = var1[var5];
                var3 += var6;
                if (var3 >= var4) {
                    return (float) var5;
                }
            }

            return 0.0F;
        }

        private float method_21184(float[] var1, float var2) {
            float var3 = 0.0F;
            float var4 = 0.0F;

            for (int var5 = 255; var5 >= 0; --var5) {
                float var6 = var1[var5];
                float var7 = var6;
                if (var3 + var6 >= var2) {
                    var7 = var2 - var3;
                }

                var3 += var7;
                var4 += (float) var5 * var7;
                if (var3 >= var2) {
                    break;
                }
            }

            return var3 > 0.0F ? var4 / var3 : 0.0F;
        }
    }
}
