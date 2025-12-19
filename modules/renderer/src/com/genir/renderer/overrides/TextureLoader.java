package com.genir.renderer.overrides;

import org.lwjgl.BufferUtils;
import org.lwjgl.opengl.GL11;
import org.lwjgl.opengl.GL14;
import proxy.com.fs.graphics.TextureHandler;

import java.awt.*;
import java.awt.image.BufferedImage;
import java.awt.image.Raster;
import java.nio.ByteBuffer;

public class TextureLoader {
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
        int var15 = image.getWidth();
        int var16 = image.getHeight();
        Raster var17 = image.getData();
        int[] var18;
        int var19;
        int var20;
        int var21;

        TextureData texData = new TextureData();

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

        if (image.getColorModel().hasAlpha()) {
            texData.buffer = BufferUtils.createByteBuffer(texData.width * texData.height * 4);
            texData.buffer.position(0);
            texData.buffer.limit(texData.buffer.capacity());

            var18 = new int[4];

            for (var19 = 0; var19 < var16; ++var19) {
                for (var20 = 0; var20 < var15; ++var20) {
                    var17.getPixel(var20, var16 - var19 - 1, var18);
                    if (var18[3] != 0) {
                        var21 = (var19 * texData.width + var20) * 4;
                        texData.buffer.put(var21 + 0, (byte) var18[0]);
                        texData.buffer.put(var21 + 1, (byte) var18[1]);
                        texData.buffer.put(var21 + 2, (byte) var18[2]);
                        texData.buffer.put(var21 + 3, (byte) var18[3]);
                        var8 += (float) var18[0];
                        var9 += (float) var18[1];
                        var10 += (float) var18[2];
                        ++var12[var18[0]];
                        ++var13[var18[1]];
                        ++var14[var18[2]];
                        ++var11;
                    }
                }
            }
        } else {
            texData.buffer = BufferUtils.createByteBuffer(texData.width * texData.height * 3);
            texData.buffer.position(0);
            texData.buffer.limit(texData.buffer.capacity());

            var18 = new int[3];

            for (var19 = 0; var19 < var16; ++var19) {
                for (var20 = 0; var20 < var15; ++var20) {
                    var17.getPixel(var20, var16 - var19 - 1, var18);
                    var21 = (var19 * texData.width + var20) * 3;
                    texData.buffer.put(var21 + 0, (byte) var18[0]);
                    texData.buffer.put(var21 + 1, (byte) var18[1]);
                    texData.buffer.put(var21 + 2, (byte) var18[2]);
                    var8 += (float) var18[0];
                    var9 += (float) var18[1];
                    var10 += (float) var18[2];
                    if (var18[0] < 256 && var18[1] < 256 && var18[2] < 256) {
                        ++var12[var18[0]];
                        ++var13[var18[1]];
                        ++var14[var18[2]];
                    }

                    ++var11;
                }
            }
        }

        if (var11 > 0.0F) {
            int var22 = (int) (var8 / var11);
            var19 = (int) (var9 / var11);
            var20 = (int) (var10 / var11);

            var19 = Math.min(var19, 255);
            var20 = Math.min(var20, 255);
            var22 = Math.min(var22, 255);

            var19 = Math.max(var19, 0);
            var20 = Math.max(var20, 0);
            var22 = Math.max(var22, 0);

            texData.color0 = new Color(var22, var19, var20, 255);
            float var23 = 0.5F;
            var22 = (int) method_21184(var12, var11 * var23);
            var19 = (int) method_21184(var13, var11 * var23);
            var20 = (int) method_21184(var14, var11 * var23);

            var19 = Math.min(var19, 255);
            var20 = Math.min(var20, 255);
            var22 = Math.min(var22, 255);

            var19 = Math.max(var19, 0);
            var20 = Math.max(var20, 0);
            var22 = Math.max(var22, 0);

            texData.color1 = new Color(var22, var19, var20, 255);
            var22 = (int) method_21183(var12, var11);
            var19 = (int) method_21183(var13, var11);
            var20 = (int) method_21184(var14, var11);

            var19 = Math.min(var19, 255);
            var20 = Math.min(var20, 255);
            var22 = Math.min(var22, 255);

            var19 = Math.max(var19, 0);
            var20 = Math.max(var20, 0);
            var22 = Math.max(var22, 0);

            texData.color2 = new Color(var22, var19, var20, 255);
        }

        return texData;
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
