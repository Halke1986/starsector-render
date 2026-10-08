package com.genir.renderer.overrides.render.particle;

import org.lwjgl.BufferUtils;
import org.lwjgl.opengl.GL11;

import java.awt.*;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.util.Arrays;

import static java.lang.Math.cos;

public class ParticleRenderer {
    private byte[] colorScratchpad = new byte[16];
    private float[] texScratchpad = new float[8];
    private float[] vertexScratchpad = new float[8];

    private ByteBuffer colorPointer = BufferUtils.createByteBuffer(16);
    private FloatBuffer texCoordPointer = BufferUtils.createFloatBuffer(8);
    private FloatBuffer vertexPointer = BufferUtils.createFloatBuffer(8);

    private int numParticles = 0;

    // Transformation matrix excerpt.
    float m00 = 1;
    float m01 = 0;
    float m03 = 0;
    float m10 = 0;
    float m11 = 1;
    float m13 = 0;

    public void clear() {
        numParticles = 0;
    }

    public void beginNewParticle() {
        numParticles++;

        int requiredLength = numParticles * 8;
        while (vertexScratchpad.length < requiredLength) {
            colorScratchpad = Arrays.copyOf(colorScratchpad, colorScratchpad.length * 2);
            texScratchpad = Arrays.copyOf(texScratchpad, texScratchpad.length * 2);
            vertexScratchpad = Arrays.copyOf(vertexScratchpad, vertexScratchpad.length * 2);
        }
    }

    public void setColor(Color color, float brightness) {
        byte r = (byte) (byte) color.getRed();
        byte g = (byte) (byte) color.getGreen();
        byte b = (byte) (byte) color.getBlue();
        byte a = (byte) (byte) ((int) ((float) color.getAlpha() * brightness));

        int c = (numParticles - 1) * 16;

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

    public void setTexture(float s, float t, float ds, float dt) {
        int v = (numParticles - 1) * 8;

        texScratchpad[v + 0] = s;
        texScratchpad[v + 1] = t;
        texScratchpad[v + 2] = s;
        texScratchpad[v + 3] = t + dt;
        texScratchpad[v + 4] = s + ds;
        texScratchpad[v + 5] = t + dt;
        texScratchpad[v + 6] = s + ds;
        texScratchpad[v + 7] = t;
    }

    public void setTransformation(float posX, float posY, float angle) {
        // Optimized equivalent of:
        // m.setIdentify()
        // m.translate(posX, posY, 0);
        // m.rotate(angle, 0, 0, 1);

        float c = 1;
        float s = 0;

        if (angle != 0) {
            float a = angle * (float) (Math.PI / 180);
            c = (float) cos(a);
            s = (float) Math.sin(a);
        }

        m00 = c;
        m01 = -s;
        m03 = posX;

        m10 = s;
        m11 = c;
        m13 = posY;
    }

    public void setVertices(float x, float y, float w, float h) {
        int v = (numParticles - 1) * 8;

        vertexScratchpad[v + 0] = x * m00 + y * m01 + m03;
        vertexScratchpad[v + 1] = x * m10 + y * m11 + m13;
        vertexScratchpad[v + 2] = x * m00 + (y + h) * m01 + m03;
        vertexScratchpad[v + 3] = x * m10 + (y + h) * m11 + m13;
        vertexScratchpad[v + 4] = (x + w) * m00 + (y + h) * m01 + m03;
        vertexScratchpad[v + 5] = (x + w) * m10 + (y + h) * m11 + m13;
        vertexScratchpad[v + 6] = (x + w) * m00 + y * m01 + m03;
        vertexScratchpad[v + 7] = (x + w) * m10 + y * m11 + m13;
    }

    public void drawArrays() {
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
}
