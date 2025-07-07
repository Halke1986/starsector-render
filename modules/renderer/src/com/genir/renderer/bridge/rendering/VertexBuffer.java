package com.genir.renderer.bridge.rendering;

import org.lwjgl.BufferUtils;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;

public class VertexBuffer {
    private int numVertices = 0;
    private int maxVertices = 0;

    private ByteBuffer colors = BufferUtils.createByteBuffer(0);
    private FloatBuffer texCoord = BufferUtils.createFloatBuffer(0);
    private FloatBuffer vertices = BufferUtils.createFloatBuffer(0);

    public void clear() {
        colors.clear();
        texCoord.clear();
        vertices.clear();

        numVertices = 0;
    }

    public Buffers getBuffers() {
        colors.flip();
        texCoord.flip();
        vertices.flip();

        return new Buffers(colors, texCoord, vertices);
    }

    public int size() {
        return numVertices;
    }

    public void addVertices(byte[] colors, float[] texCoord, float[] vertices, int vertexNumber) {
        numVertices += vertexNumber;

        if (numVertices > maxVertices) {
            maxVertices = numVertices * 2;

            this.colors = growByteBuffer(this.colors);
            this.texCoord = growFloatBuffer(this.texCoord);
            this.vertices = growFloatBuffer(this.vertices);
        }

        this.colors.put(colors, 0, vertexNumber * 4);
        this.texCoord.put(texCoord, 0, vertexNumber * 2);
        this.vertices.put(vertices, 0, vertexNumber * 2);
    }

    private ByteBuffer growByteBuffer(ByteBuffer src) {
        ByteBuffer newBuffer = BufferUtils.createByteBuffer(maxVertices * 4);

        src.flip();
        newBuffer.put(src);
        return newBuffer;
    }

    private FloatBuffer growFloatBuffer(FloatBuffer src) {
        FloatBuffer newBuffer = BufferUtils.createFloatBuffer(maxVertices * 2);

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
