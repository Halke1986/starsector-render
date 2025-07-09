package com.genir.renderer.bridge.rendering;

import org.lwjgl.BufferUtils;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;

import static com.genir.renderer.bridge.rendering.Renderer.useCount;

public class VertexBuffer {
    public int lastUsed = 0;

    private int numVertices = 0;

    private ByteBuffer colors = BufferUtils.createByteBuffer(0);
    private FloatBuffer texCoords = BufferUtils.createFloatBuffer(0);
    private FloatBuffer vertices = BufferUtils.createFloatBuffer(0);

    public void clear() {
        colors.clear();
        texCoords.clear();
        vertices.clear();

        numVertices = 0;
    }

    public Buffers getFlippedBuffers() {
        colors.flip();
        texCoords.flip();
        vertices.flip();

        return new Buffers(colors, texCoords, vertices);
    }

    public int size() {
        return numVertices;
    }

    public void addVertices(byte[] colors, float[] texCoord, float[] vertices, int verticesToAdd) {
        ensureCapacity(verticesToAdd);

        this.colors.put(colors, 0, verticesToAdd * 4);
        this.texCoords.put(texCoord, 0, verticesToAdd * 2);
        this.vertices.put(vertices, 0, verticesToAdd * 2);

        numVertices += verticesToAdd;
        updateUsed();
    }

    public void addVertices(ByteBuffer colors, FloatBuffer texCoord, float[] vertices, int verticesToAdd) {
        ensureCapacity(verticesToAdd);

        this.colors.put(colors.position(), colors, 0, verticesToAdd * 4);
        this.texCoords.put(texCoord.position(), texCoord, 0, verticesToAdd * 2);
        this.vertices.put(vertices, 0, verticesToAdd * 2);

        numVertices += verticesToAdd;
        updateUsed();
    }

    private void updateUsed() {
        lastUsed = useCount;
        useCount++;
    }

    private void ensureCapacity(int verticesToAdd) {
        while (vertices.remaining() < verticesToAdd * 2) {
            colors = growByteBuffer(colors);
            texCoords = growFloatBuffer(texCoords);
            vertices = growFloatBuffer(vertices);
        }
    }

    private ByteBuffer growByteBuffer(ByteBuffer src) {
        ByteBuffer newBuffer = BufferUtils.createByteBuffer(Math.max(4, src.capacity() * 2));

        src.flip();
        newBuffer.put(src);

        return newBuffer;
    }

    private FloatBuffer growFloatBuffer(FloatBuffer src) {
        FloatBuffer newBuffer = BufferUtils.createFloatBuffer(Math.max(2, src.capacity() * 2));

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
