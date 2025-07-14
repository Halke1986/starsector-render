package com.genir.renderer.bridge.rendering;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;

public class VertexBuffer {
    private int numVertices = 0;
    private int maxVertices = 0;

    private byte[] colors = new byte[0];
    private float[] texCoords = new float[0];
    private float[] vertices = new float[0];

    public void clear() {
        numVertices = 0;
    }

    public void exportVertices(ByteBuffer colors, FloatBuffer texCoords, FloatBuffer vertices) {
        colors.clear();
        texCoords.clear();
        vertices.clear();

        colors.put(this.colors, 0, numVertices * 4);
        texCoords.put(this.texCoords, 0, numVertices * 2);
        vertices.put(this.vertices, 0, numVertices * 2);

        colors.flip();
        texCoords.flip();
        vertices.flip();
    }

    public int size() {
        return numVertices;
    }

    public void addVertices(byte[] colors, float[] texCoords, float[] vertices, int verticesToAdd) {
        ensureCapacity(verticesToAdd);

        System.arraycopy(colors, 0, this.colors, numVertices * 4, verticesToAdd * 4);
        System.arraycopy(texCoords, 0, this.texCoords, numVertices * 2, verticesToAdd * 2);
        System.arraycopy(vertices, 0, this.vertices, numVertices * 2, verticesToAdd * 2);

        numVertices += verticesToAdd;
    }

    private void ensureCapacity(int verticesToAdd) {
        while (maxVertices < numVertices + verticesToAdd) {
            colors = growByteBuffer(colors);
            texCoords = growFloatBuffer(texCoords);
            vertices = growFloatBuffer(vertices);

            maxVertices = vertices.length / 2;
        }
    }

    private byte[] growByteBuffer(byte[] src) {
        byte[] newBuffer = new byte[(Math.max(4, src.length * 2))];
        System.arraycopy(src, 0, newBuffer, 0, src.length);

        return newBuffer;
    }

    private float[] growFloatBuffer(float[] src) {
        float[] newBuffer = new float[(Math.max(2, src.length * 2))];
        System.arraycopy(src, 0, newBuffer, 0, src.length);

        return newBuffer;
    }

    public record Buffers(
            ByteBuffer colors,
            FloatBuffer texCoords,
            FloatBuffer vertices) {
    }
}
