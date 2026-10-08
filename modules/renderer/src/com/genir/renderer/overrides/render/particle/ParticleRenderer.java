package com.genir.renderer.overrides.render.particle;

import org.lwjgl.BufferUtils;
import org.lwjgl.opengl.GL11;

import java.awt.*;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.util.Arrays;

public class ParticleRenderer {
    private byte[] colorScratchpad = new byte[16];
    private float[] texScratchpad = new float[8];
    private float[] vertexScratchpad = new float[8];

    private ByteBuffer colorPointer = BufferUtils.createByteBuffer(16);
    private FloatBuffer texCoordPointer = BufferUtils.createFloatBuffer(8);
    private FloatBuffer vertexPointer = BufferUtils.createFloatBuffer(8);

    private int numParticles = 0;

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
        setColor((byte) color.getRed(), (byte) color.getGreen(), (byte) color.getBlue(), (byte) color.getAlpha(), brightness);
    }

    public void setColor(byte r, byte g, byte b, byte a, float brightness) {
        byte am = (byte) (byte) ((int) ((float) a * brightness));

        int c = (numParticles - 1) * 16;

        colorScratchpad[c + 0] = r;
        colorScratchpad[c + 1] = g;
        colorScratchpad[c + 2] = b;
        colorScratchpad[c + 3] = am;
        colorScratchpad[c + 4] = r;
        colorScratchpad[c + 5] = g;
        colorScratchpad[c + 6] = b;
        colorScratchpad[c + 7] = am;
        colorScratchpad[c + 8] = r;
        colorScratchpad[c + 9] = g;
        colorScratchpad[c + 10] = b;
        colorScratchpad[c + 11] = am;
        colorScratchpad[c + 12] = r;
        colorScratchpad[c + 13] = g;
        colorScratchpad[c + 14] = b;
        colorScratchpad[c + 15] = am;
    }

    public void setTexture(float texX, float texY, float texWidth, float texHeight) {
        int v = (numParticles - 1) * 8;

        texScratchpad[v + 0] = texX;
        texScratchpad[v + 1] = texY;
        texScratchpad[v + 2] = texX;
        texScratchpad[v + 3] = texY + texHeight;
        texScratchpad[v + 4] = texX + texWidth;
        texScratchpad[v + 5] = texY + texHeight;
        texScratchpad[v + 6] = texX + texWidth;
        texScratchpad[v + 7] = texY;
    }

    public void setVertices(float centerX, float centerY, float angle, float w, float h) {
        // Optimized equivalent of: achor at center, rotate and translate:
        // m.setIdentity()
        // m.translate(centerX, centerY, 0);
        // m.rotate(angle, 0, 0, 1);
        // m.translate(- width/2, - height/2, 0);

        float c = 1;
        float s = 0;

        if (angle != 0) {
            float a = angle * (float) (Math.PI / 180);
            c = (float) Math.cos(a);
            s = (float) Math.sin(a);
        }

        float w2 = w / 2;
        float h2 = h / 2;

        float m00 = c;
        float m01 = -s;
        float m03 = (-w2 * c) + (h2 * s) + centerX;

        float m10 = s;
        float m11 = c;
        float m13 = (-w2 * s) - (h2 * c) + centerY;

        int v = (numParticles - 1) * 8;

        vertexScratchpad[v + 0] = m03;
        vertexScratchpad[v + 1] = m13;
        vertexScratchpad[v + 2] = h * m01 + m03;
        vertexScratchpad[v + 3] = h * m11 + m13;
        vertexScratchpad[v + 4] = w * m00 + h * m01 + m03;
        vertexScratchpad[v + 5] = w * m10 + h * m11 + m13;
        vertexScratchpad[v + 6] = w * m00 + m03;
        vertexScratchpad[v + 7] = w * m10 + m13;
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
