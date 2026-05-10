package com.genir.renderer.overrides;

import org.lwjgl.BufferUtils;
import org.lwjgl.opengl.GL11;
import org.lwjgl.opengl.GL14;
import proxy.com.fs.graphics.TextureHandler;

import java.awt.*;
import java.awt.image.*;
import java.nio.ByteBuffer;
import java.util.Arrays;

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

    public static TextureData analyzeImage(BufferedImage image) {
        float var8 = 0.0F;
        float var9 = 0.0F;
        float var10 = 0.0F;
        float var11 = 0.0F;
        float[] var12 = new float[256];
        float[] var13 = new float[256];
        float[] var14 = new float[256];
        int imageWidth = image.getWidth();
        int imageHeight = image.getHeight();

        byte[] imageLine = new byte[imageWidth * 4];

        TextureData texData = new TextureData();

        byte[] raster = readImageBytes(image);

        texData.imageWidth = image.getWidth();
        texData.imageHeight = image.getHeight();
        texData.hasAlpha = image.getColorModel().hasAlpha();

        // Calculate image width and height.
        while (texData.width < image.getWidth()) {
            texData.width *= 2;
        }

        while (texData.height < image.getHeight()) {
            texData.height *= 2;
        }

        int channels = image.getColorModel().hasAlpha() ? 4 : 3;

        texData.buffer = BufferUtils.createByteBuffer(texData.width * texData.height * channels);
        texData.buffer.position(0);
        texData.buffer.limit(texData.buffer.capacity());

        for (int y = 0; y < imageHeight; ++y) {
            Arrays.fill(imageLine, (byte) 0);

            for (int x = 0; x < imageWidth; ++x) {
                int imagePos = ((imageHeight - y - 1) * imageWidth + x) * channels;

                byte a = 0;
                if (channels == 4) {
                    a = raster[imagePos++];
                    if (a == 0) {
                        continue;
                    }
                }
                byte b = raster[imagePos++];
                byte g = raster[imagePos++];
                byte r = raster[imagePos];

                int linePos = x * channels;
                imageLine[linePos + 0] = r;
                imageLine[linePos + 1] = g;
                imageLine[linePos + 2] = b;
                if (channels == 4) {
                    imageLine[linePos + 3] = a;
                }

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

            int texturePos = y * texData.width * channels;
            texData.buffer.put(texturePos, imageLine, 0, imageWidth * channels);
        }

        if (var11 > 0.0F) {
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

        return texData;
    }

    private static byte[] readImageBytes(BufferedImage image) {
        Raster raster = image.getData();
        DataBuffer rasterDataBuffer = raster.getDataBuffer();

        if (rasterDataBuffer instanceof DataBufferByte byteBuffer) {
            return byteBuffer.getData();
        } else if (rasterDataBuffer instanceof DataBufferInt intBuffer) {
            int[] ints = intBuffer.getData();

            ByteBuffer buffer = ByteBuffer.allocate(ints.length * 4);
            buffer.asIntBuffer().put(ints);

            return buffer.array();
        } else {
            throw new RuntimeException("unsupported image buffer type");
        }
    }

    private static float method_21183(float[] var1, float var2) {
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

    private static float method_21184(float[] var1, float var2) {
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
}
