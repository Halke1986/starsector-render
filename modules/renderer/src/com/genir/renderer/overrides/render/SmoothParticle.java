package com.genir.renderer.overrides.render;

import com.fs.graphics.TextureHandler;
import com.fs.graphics.particle.BaseParticle;
import org.lwjgl.BufferUtils;
import org.lwjgl.opengl.GL11;

import java.awt.*;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.util.Arrays;

/**
 * OVERRIDES com.fs.graphics.particle.SmoothParticle
 */
public class SmoothParticle extends BaseParticle {
    /**
     * STUBS
     */
    private Color color;
    private static TextureHandler texture;
    private TextureHandler override;
    private float offsetX;
    private float offsetY;
    private float size;
    private static int numPoints = 0;

    /**
     * ADDED FIELDS
     */
    private static float[] vertexScratchpad;
    private static float[] texScratchpad;
    private static byte[] colorScratchpad;

    private static FloatBuffer texCoordPointer;
    private static FloatBuffer vertexPointer;
    private static ByteBuffer colorPointer;

    public void preBatch() {
        if (vertexScratchpad == null) {
            vertexScratchpad = new float[8];
            texScratchpad = new float[8];
            colorScratchpad = new byte[16];

            texCoordPointer = BufferUtils.createFloatBuffer(8);
            vertexPointer = BufferUtils.createFloatBuffer(8);
            colorPointer = BufferUtils.createByteBuffer(16);
        }

        numPoints = 0;

        org.lwjgl.opengl.GL11.glEnable(GL11.GL_TEXTURE_2D);
        org.lwjgl.opengl.GL11.glEnable(GL11.GL_BLEND);
        org.lwjgl.opengl.GL11.glBlendFunc(GL11.GL_SRC_ALPHA, GL11.GL_ONE);

        // Bind texture.
        TextureHandler textureHandler = override != null ? override : texture;
        int textureID = textureHandler.TextureHandler_getTextureID();
        org.lwjgl.opengl.GL11.glBindTexture(GL11.GL_TEXTURE_2D, textureID);
    }

    public void render() {
        // Particle is too dark to be rendered.
        if (this.getBrightnessOverride() == 0.0F || this.getBrightnessMult() == 0.0F) {
            return;
        }

        // Resize vertex arrays.
        int requiredLength = (numPoints + 1) * 8;
        if (vertexScratchpad.length < requiredLength) {
            vertexScratchpad = Arrays.copyOf(vertexScratchpad, vertexScratchpad.length * 2);
            texScratchpad = Arrays.copyOf(texScratchpad, texScratchpad.length * 2);
            colorScratchpad = Arrays.copyOf(colorScratchpad, colorScratchpad.length * 2);

            for (int i = 0; i < texScratchpad.length / 8; i++) {
                texScratchpad[i + 0] = 0;
                texScratchpad[i + 1] = 0;
                texScratchpad[i + 2] = 0;
                texScratchpad[i + 3] = 1;
                texScratchpad[i + 4] = 1;
                texScratchpad[i + 5] = 1;
                texScratchpad[i + 6] = 1;
                texScratchpad[i + 7] = 0;
            }
        }

        int v = numPoints * 8;

        byte r = (byte) color.getRed();
        byte g = (byte) color.getGreen();
        byte b = (byte) color.getBlue();
        byte a = (byte) ((int) ((float) color.getAlpha() * this.getBrightness()));

        vertexScratchpad[v + 0] = x + offsetX;
        vertexScratchpad[v + 1] = y + offsetY;
        vertexScratchpad[v + 2] = x + offsetX;
        vertexScratchpad[v + 3] = y + offsetY + size;
        vertexScratchpad[v + 4] = x + offsetX + size;
        vertexScratchpad[v + 5] = y + offsetY + size;
        vertexScratchpad[v + 6] = x + offsetX + size;
        vertexScratchpad[v + 7] = y + offsetY;

        float x = this.getX() + offsetX;
        float y = this.getY() + offsetY;

        vertexScratchpad[offset + 0] = x;
        vertexScratchpad[offset + 1] = y;
        vertexScratchpad[offset + 2] = x;
        vertexScratchpad[offset + 3] = y + size;
        vertexScratchpad[offset + 4] = x + size;
        vertexScratchpad[offset + 5] = y + size;
        vertexScratchpad[offset + 6] = x + size;
        vertexScratchpad[offset + 7] = y;
        int c = numPoints * 16;

        colorScratchpad[c + 0] = r;
        colorScratchpad[c + 1] = g;
        colorScratchpad[c + 2] = b;
        colorScratchpad[c + 3] = a;
        colorScratchpad[c + 4] = r;
        colorScratchpad[c + 5] = g;
        colorScratchpad[c + 6] = b;
        colorScratchpad[c + 7] = a;
        colorScratchpad[c + 8] = r;
        colorScratchpad[c + 9] = g;
        colorScratchpad[c + 10] = b;
        colorScratchpad[c + 11] = a;
        colorScratchpad[c + 12] = r;
        colorScratchpad[c + 13] = g;
        colorScratchpad[c + 14] = b;
        colorScratchpad[c + 15] = a;

        numPoints++;
    }

    public void postBatch() {
        if (vertexPointer.capacity() < vertexScratchpad.length) {
            vertexPointer = BufferUtils.createFloatBuffer(vertexScratchpad.length);
            texCoordPointer = BufferUtils.createFloatBuffer(texScratchpad.length);
            colorPointer = BufferUtils.createByteBuffer(colorScratchpad.length);
        }

        vertexPointer.put(0, vertexScratchpad, 0, numPoints * 8);
        texCoordPointer.put(0, texScratchpad, 0, numPoints * 8);
        colorPointer.put(0, colorScratchpad, 0, numPoints * 16);

        org.lwjgl.opengl.GL11.glEnableClientState(GL11.GL_VERTEX_ARRAY);
        org.lwjgl.opengl.GL11.glEnableClientState(GL11.GL_TEXTURE_COORD_ARRAY);
        org.lwjgl.opengl.GL11.glEnableClientState(GL11.GL_COLOR_ARRAY);

        org.lwjgl.opengl.GL11.glVertexPointer(2, 0, vertexPointer);
        org.lwjgl.opengl.GL11.glTexCoordPointer(2, 0, texCoordPointer);
        org.lwjgl.opengl.GL11.glColorPointer(4, true, 0, colorPointer);

        org.lwjgl.opengl.GL11.glDrawArrays(GL11.GL_QUADS, 0, numPoints * 4);

        org.lwjgl.opengl.GL11.glDisableClientState(GL11.GL_VERTEX_ARRAY);
        org.lwjgl.opengl.GL11.glDisableClientState(GL11.GL_TEXTURE_COORD_ARRAY);
        org.lwjgl.opengl.GL11.glDisableClientState(GL11.GL_COLOR_ARRAY);

        org.lwjgl.opengl.GL11.glDisable(GL11.GL_TEXTURE_2D);
    }
}
