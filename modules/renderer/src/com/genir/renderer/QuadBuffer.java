package com.genir.renderer;

import org.lwjgl.BufferUtils;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;

public class QuadBuffer {
    private int numQuads = 0;
    private int maxQuads = 0;

    private ByteBuffer colors = BufferUtils.createByteBuffer(0);
    private FloatBuffer texCoord = BufferUtils.createFloatBuffer(0);
    private FloatBuffer vertices = BufferUtils.createFloatBuffer(0);

    public void clear() {
        colors.clear();
        texCoord.clear();
        vertices.clear();

        numQuads = 0;
    }

    public Buffers getBuffers() {
        colors.flip();
        texCoord.flip();
        vertices.flip();

        return new Buffers(colors, texCoord, vertices);
    }

    public int size() {
        return numQuads;
    }

    public void addQuad(byte[] colors, float[] texCoord, float[] vertices) {
        assert (colors.length == 16);
        assert (texCoord.length == 8);
        assert (vertices.length == 8);

        numQuads++;
        if (numQuads > maxQuads) {
            maxQuads = Math.max(16, maxQuads * 2);

            this.colors = growByteBuffer(this.colors);
            this.texCoord = growFloatBuffer(this.texCoord);
            this.vertices = growFloatBuffer(this.vertices);
        }

        this.colors.put(colors);
        this.texCoord.put(texCoord);
        this.vertices.put(vertices);
    }

    private FloatBuffer growFloatBuffer(FloatBuffer src) {
        FloatBuffer newBuffer = BufferUtils.createFloatBuffer(maxQuads * 8);

        src.flip();
        newBuffer.put(src);
        return newBuffer;
    }

    private ByteBuffer growByteBuffer(ByteBuffer src) {
        ByteBuffer newBuffer = BufferUtils.createByteBuffer(maxQuads * 16);

        src.flip();
        newBuffer.put(src);
        return newBuffer;
    }

    public record Buffers(
            ByteBuffer colors,
            FloatBuffer texCoord,
            FloatBuffer vertices) {
    }
}
