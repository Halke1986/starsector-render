package com.genir.renderer.bridge.impl;

import org.lwjgl.BufferUtils;
import org.lwjgl.opengl.GL11;
import org.lwjgl.util.vector.Matrix3f;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;

import static com.genir.renderer.Debug.asert;

public class VertexInterceptor {
    private final int localBufferSize = 1 << 16;
    private final int drawBufferSize = 1 << 20;

    private final Executor exec;
    private final MatrixStack modelView;

    // State.
    private int mode = 0;
    private byte red;
    private byte green;
    private byte blue;
    private byte alpha;
    private float texS;
    private float texT;

    // Local buffers.
    private final byte[] colors = new byte[4 * localBufferSize];
    private final float[] texCoords = new float[2 * localBufferSize];
    private final float[] vertices = new float[3 * localBufferSize];

    // Total number of vertices since glBegin.
    private int vertexNum = 0;

    // Draw buffers.
    private final ByteBuffer colorPointer = BufferUtils.createByteBuffer(4 * drawBufferSize);
    private final FloatBuffer texCoordsPointer = BufferUtils.createFloatBuffer(2 * drawBufferSize);
    private final FloatBuffer vertexPointer = BufferUtils.createFloatBuffer(3 * drawBufferSize);

    // Total number of vertices since update.
    private int totalVertexNum = 0;

    // External buffers.
    private ByteBuffer externalColorPointer;
    private FloatBuffer externalTexCoordsPointer;
    private FloatBuffer externalVertexPointer;

    public VertexInterceptor(Executor exec, MatrixStack modelView) {
        this.exec = exec;
        this.modelView = modelView;
    }

    public void update() {
        colorPointer.clear();
        texCoordsPointer.clear();
        vertexPointer.clear();

        GL11.glEnableClientState(GL11.GL_VERTEX_ARRAY);
        GL11.glEnableClientState(GL11.GL_COLOR_ARRAY);
        GL11.glEnableClientState(GL11.GL_TEXTURE_COORD_ARRAY);

        GL11.glColorPointer(4, GL11.GL_UNSIGNED_BYTE, 0, colorPointer);
        GL11.glTexCoordPointer(2, 0, texCoordsPointer);
        GL11.glVertexPointer(3, 0, vertexPointer);

        totalVertexNum = 0;
    }

    public void glBegin(int mode) {
        this.mode = mode;
    }

    public void glEnd() {
        colorPointer.put(colors, 0, 4 * vertexNum);
        texCoordsPointer.put(texCoords, 0, 2 * vertexNum);
        vertexPointer.put(vertices, 0, 3 * vertexNum);

        final int drawMode = mode;
        final int drawTotalVertexNum = totalVertexNum;
        final int drawVertexNum = vertexNum;

        exec.execute(() -> GL11.glDrawArrays(drawMode, drawTotalVertexNum, drawVertexNum));

        totalVertexNum += vertexNum;
        vertexNum = 0;
    }

    public void glColor4ub(byte red, byte green, byte blue, byte alpha) {
        this.red = red;
        this.green = green;
        this.blue = blue;
        this.alpha = alpha;
    }

    public void glTexCoord2f(float s, float t) {
        texS = s;
        texT = t;
    }

    public void glVertex3f(float x, float y, float z) {
        int idx = vertexNum;

        // Transform vertices;
        Matrix3f m = modelView.getMatrix();

        vertices[idx * 3 + 0] = x * m.m00 + y * m.m01 + m.m02;
        vertices[idx * 3 + 1] = x * m.m10 + y * m.m11 + m.m12;
        vertices[idx * 3 + 3] = z;

        // Define vertex texture.
        texCoords[idx * 2 + 0] = texS;
        texCoords[idx * 2 + 1] = texT;

        // Define vertex color.
        colors[idx * 4 + 0] = red;
        colors[idx * 4 + 1] = green;
        colors[idx * 4 + 2] = blue;
        colors[idx * 4 + 3] = alpha;

        vertexNum++;
    }

    public void glColorPointer(int size, boolean unsigned, int stride, ByteBuffer pointer) {
        asert(stride == 0);
        asert(size == 4);

        externalColorPointer = pointer;
    }

    public void glTexCoordPointer(int size, int stride, FloatBuffer pointer) {
        asert(stride == 0);
        asert(size == 2);

        externalTexCoordsPointer = pointer;
    }

    public void glVertexPointer(int size, int stride, FloatBuffer pointer) {
        asert(stride == 0);
        asert(size == 2);

        externalVertexPointer = pointer;
    }

    public void glDrawArrays(int mode, int first, int count) {
        asert(first == 0);

        ByteBuffer colorReader = externalColorPointer.duplicate();
        FloatBuffer texCoordsReader = externalTexCoordsPointer.duplicate();
        FloatBuffer vertexReader = externalVertexPointer.duplicate();

        colorReader.rewind();
        texCoordsReader.rewind();
        vertexReader.rewind();

        vertexReader.get(vertices, 0, count * 2);

        // Transform vertices;
        Matrix3f m = modelView.getMatrix();

        for (int i = count - 1; i >= 0; i--) {
            float x = vertices[i * 2 + 0];
            float y = vertices[i * 2 + 1];

            vertices[i * 3 + 0] = x * m.m00 + y * m.m01 + m.m02;
            vertices[i * 3 + 1] = x * m.m10 + y * m.m11 + m.m12;
        }

        colorReader.limit(count * 4);
        texCoordsReader.limit(count * 2);

        colorPointer.put(colorReader);
        texCoordsPointer.put(texCoordsReader);

        vertexPointer.put(vertices, 0, 3 * count);

        final int drawMode = mode;
        final int drawTotalVertexNum = totalVertexNum;
        final int drawVertexNum = count;

        exec.execute(() -> GL11.glDrawArrays(drawMode, drawTotalVertexNum, drawVertexNum));

        totalVertexNum += count;
    }
}
