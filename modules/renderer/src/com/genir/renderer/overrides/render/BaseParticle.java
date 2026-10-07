package com.genir.renderer.overrides.render;

import com.genir.renderer.bridge.context.Matrix;
import org.lwjgl.BufferUtils;
import org.lwjgl.opengl.GL11;

import java.awt.*;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.util.Arrays;

import static java.lang.Math.cos;

/**
 * OVERRIDES com.fs.graphics.particle.BaseParticle
 */
public abstract class BaseParticle {
    /**
     * ADDED FIELDS
     */
    private static float[] texScratchpad;
    private static byte[] colorScratchpad;
    private static float[] vertexScratchpad;

    private static ByteBuffer colorPointer;
    private static FloatBuffer texCoordPointer;
    private static FloatBuffer vertexPointer;

    private static Matrix m;
    protected static int numParticles;

    private static float groupPosX;
    private static float groupPosY;

    /**
     * STUB
     */
    public abstract void preBatch();

    /**
     * STUB
     */
    public abstract void postBatch();

    /**
     * STUB
     */
    public abstract void render();

    /**
     * STUB
     */
    public void advance(float dt) {
    }

    /**
     * STUB
     */
    public boolean isExpired() {
        return false;
    }

    /**
     * STUB
     */
    public float getBrightness() {
        return 0;
    }

    /**
     * STUB
     */
    public float getBrightnessOverride() {
        return 0;
    }

    /**
     * STUB
     */
    public float getBrightnessMult() {
        return 0;
    }

    /**
     * STUB
     */
    public float getX() {
        return 0;
    }

    /**
     * STUB
     */
    public float getY() {
        return 0;
    }

    /**
     * STUB
     */
    public float getAge() {
        return 0;
    }

    /**
     * STUB
     */
    public float getMaxAge() {
        return 0;
    }

    /**
     * STUB
     */
    public float getAngle() {
        return 0;
    }

    protected void initBatch() {
        numParticles = 0;

        if (vertexScratchpad == null) {
            colorScratchpad = new byte[16];
            texScratchpad = new float[8];
            vertexScratchpad = new float[8];

            colorPointer = BufferUtils.createByteBuffer(16);
            texCoordPointer = BufferUtils.createFloatBuffer(8);
            vertexPointer = BufferUtils.createFloatBuffer(8);

            m = new Matrix();
        }
    }

    protected void resizeArrays(int requiredNumParticles) {
        int requiredLength = requiredNumParticles * 8;
        while (vertexScratchpad.length < requiredLength) {
            colorScratchpad = Arrays.copyOf(colorScratchpad, colorScratchpad.length * 2);
            texScratchpad = Arrays.copyOf(texScratchpad, texScratchpad.length * 2);
            vertexScratchpad = Arrays.copyOf(vertexScratchpad, vertexScratchpad.length * 2);
        }
    }

    protected void setParticleColor(Color color, float brightness) {
        byte r = (byte) (byte) color.getRed();
        byte g = (byte) (byte) color.getGreen();
        byte b = (byte) (byte) color.getBlue();
        byte a = (byte) (byte) ((int) ((float) color.getAlpha() * brightness));

        int c = numParticles * 16;

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
    }

    protected void setParticleTex(float s, float t, float ds, float dt) {
        int v = numParticles * 8;

        texScratchpad[v + 0] = s;
        texScratchpad[v + 1] = t;
        texScratchpad[v + 2] = s;
        texScratchpad[v + 3] = t + dt;
        texScratchpad[v + 4] = s + ds;
        texScratchpad[v + 5] = t + dt;
        texScratchpad[v + 6] = s + ds;
        texScratchpad[v + 7] = t;
    }

    protected void setParticleTransformation(float posX, float posY, float angle) {
        // Optimized equivalent of:
        // m.setIdentify()
        // m.translate(posX + groupPosX, posY + groupPosY, 0);
        // m.rotate(angle, 0, 0, 1);

        float c = 1;
        float s = 0;

        if (angle != 0) {
            float a = angle * (float) (Math.PI / 180);
            c = (float) cos(a);
            s = (float) Math.sin(a);
        }

        m.m00 = c;
        m.m01 = -s;
        m.m03 = posX + groupPosX;

        m.m10 = s;
        m.m11 = c;
        m.m13 = posY + groupPosY;
    }

    protected void setParticleVertices(float x, float y, float dx, float dy) {
        int v = numParticles * 8;

        vertexScratchpad[v + 0] = x * m.m00 + y * m.m01 + m.m03;
        vertexScratchpad[v + 1] = x * m.m10 + y * m.m11 + m.m13;
        vertexScratchpad[v + 2] = x * m.m00 + (y + dy) * m.m01 + m.m03;
        vertexScratchpad[v + 3] = x * m.m10 + (y + dy) * m.m11 + m.m13;
        vertexScratchpad[v + 4] = (x + dx) * m.m00 + (y + dy) * m.m01 + m.m03;
        vertexScratchpad[v + 5] = (x + dx) * m.m10 + (y + dy) * m.m11 + m.m13;
        vertexScratchpad[v + 6] = (x + dx) * m.m00 + y * m.m01 + m.m03;
        vertexScratchpad[v + 7] = (x + dx) * m.m10 + y * m.m11 + m.m13;
    }

    protected void drawArrays() {
        if (vertexPointer.capacity() < vertexScratchpad.length) {
            vertexPointer = BufferUtils.createFloatBuffer(vertexScratchpad.length);
            texCoordPointer = BufferUtils.createFloatBuffer(texScratchpad.length);
            colorPointer = BufferUtils.createByteBuffer(colorScratchpad.length);
        }

        vertexPointer.put(0, vertexScratchpad, 0, numParticles * 8);
        texCoordPointer.put(0, texScratchpad, 0, numParticles * 8);
        colorPointer.put(0, colorScratchpad, 0, numParticles * 16);

        com.genir.renderer.bridge.commands.GL11.glEnableClientState(GL11.GL_VERTEX_ARRAY);
        com.genir.renderer.bridge.commands.GL11.glEnableClientState(GL11.GL_TEXTURE_COORD_ARRAY);
        com.genir.renderer.bridge.commands.GL11.glEnableClientState(GL11.GL_COLOR_ARRAY);

        com.genir.renderer.bridge.commands.GL11.glVertexPointer(2, 0, vertexPointer);
        com.genir.renderer.bridge.commands.GL11.glTexCoordPointer(2, 0, texCoordPointer);
        com.genir.renderer.bridge.commands.GL11.glColorPointer(4, true, 0, colorPointer);

        // Particle transformation is handled on the CPU.
        com.genir.renderer.bridge.commands.GL11.glPushMatrix();
        com.genir.renderer.bridge.commands.GL11.glLoadIdentity();

        com.genir.renderer.bridge.commands.GL11.glDrawArrays(GL11.GL_QUADS, 0, numParticles * 4);

        com.genir.renderer.bridge.commands.GL11.glPopMatrix();

        com.genir.renderer.bridge.commands.GL11.glDisableClientState(GL11.GL_VERTEX_ARRAY);
        com.genir.renderer.bridge.commands.GL11.glDisableClientState(GL11.GL_TEXTURE_COORD_ARRAY);
        com.genir.renderer.bridge.commands.GL11.glDisableClientState(GL11.GL_COLOR_ARRAY);
    }

    public void setParticleGroupPosition(float posX, float posY) {
        groupPosX = posX;
        groupPosY = posY;
    }
}
