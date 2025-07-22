package com.genir.renderer.bridge.impl;

import org.lwjgl.BufferUtils;
import org.lwjgl.opengl.GL11;
import org.lwjgl.util.vector.Matrix4f;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;

import static com.genir.renderer.Debug.asert;

public class VertexInterceptor {
    private final int localBufferSize = 1 << 16;
    private final int drawBufferSize = 1 << 20;

    private final Executor exec;
    private final MatrixStack modelView;
    private final RenderContext renderContext;

    // State.
    private int mode = 0;
    private byte red;
    private byte green;
    private byte blue;
    private byte alpha;
    private float texS;
    private float texT;
    private float nx;
    private float ny;
    private float nz;

    // Local buffers.
    private final byte[] colors = new byte[4 * localBufferSize];
    private final float[] texCoords = new float[2 * localBufferSize];
    private final float[] normals = new float[3 * localBufferSize];
    private final float[] vertices = new float[3 * localBufferSize];

    // Total number of vertices since glBegin.
    private int vertexNum = 0;

    // Draw buffers.
    private final ByteBuffer colorPointer = BufferUtils.createByteBuffer(4 * drawBufferSize);
    private final FloatBuffer texCoordsPointer = BufferUtils.createFloatBuffer(2 * drawBufferSize);
    private final FloatBuffer normalsPointer = BufferUtils.createFloatBuffer(2 * drawBufferSize);
    private final FloatBuffer vertexPointer = BufferUtils.createFloatBuffer(3 * drawBufferSize);

    // Total number of vertices since update.
    private int totalVertexNum = 0;

    // External buffers.
    private ByteBuffer externalColorPointer;
    private FloatBuffer externalTexCoordsPointer;
    private FloatBuffer externalVertexPointer;

    public VertexInterceptor(Executor exec, MatrixStack modelView, RenderContext renderContext) {
        this.exec = exec;
        this.modelView = modelView;
        this.renderContext = renderContext;
    }

    public void update() {
        colorPointer.clear();
        texCoordsPointer.clear();
        normalsPointer.clear();
        vertexPointer.clear();

        GL11.glEnableClientState(GL11.GL_COLOR_ARRAY);
        GL11.glEnableClientState(GL11.GL_TEXTURE_COORD_ARRAY);
        GL11.glEnableClientState(GL11.GL_NORMAL_ARRAY);
        GL11.glEnableClientState(GL11.GL_VERTEX_ARRAY);

        GL11.glColorPointer(4, GL11.GL_UNSIGNED_BYTE, 0, colorPointer);
        GL11.glTexCoordPointer(2, 0, texCoordsPointer);
        GL11.glNormalPointer(0, normalsPointer);
        GL11.glVertexPointer(3, 0, vertexPointer);

        totalVertexNum = 0;
    }

    public void glBegin(int mode) {
        this.mode = mode;
    }

    public void glEnd() {
        colorPointer.put(colors, 0, 4 * vertexNum);

        if (renderContext.enableTexture()) {
            texCoordsPointer.put(texCoords, 0, 2 * vertexNum);
        } else {
            texCoordsPointer.position(texCoordsPointer.position() + 2 * vertexNum);
        }

        if (renderContext.enableLighting()) {
            normalsPointer.put(normals, 0, 3 * vertexNum);
        } else {
            normalsPointer.position(normalsPointer.position() + 3 * vertexNum);
        }

        vertexPointer.put(vertices, 0, 3 * vertexNum);

        final int drawMode = mode;
        final int drawTotalVertexNum = totalVertexNum;
        final int drawVertexNum = vertexNum;

        renderContext.apply();
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

    public void glNormal3f(float nx, float ny, float nz) {
        this.nx = nx;
        this.ny = ny;
        this.nz = nz;
    }

    public void glVertex3f(float x, float y, float z) {
        int idx = vertexNum;

        // Define vertex color.
        colors[idx * 4 + 0] = red;
        colors[idx * 4 + 1] = green;
        colors[idx * 4 + 2] = blue;
        colors[idx * 4 + 3] = alpha;

        // Define vertex texture.
        if (renderContext.enableTexture()) {
            texCoords[idx * 2 + 0] = texS;
            texCoords[idx * 2 + 1] = texT;
        }

        Matrix4f m = modelView.getMatrix();

        // Transform normals.
        if (renderContext.enableLighting()) {
            // Assume model view is just rotations and translations, no shear or scale.
            // Otherwise, the upper left 3x3 part of transformation matrix would have
            // to be inversed and transposed first.
            normals[idx * 3 + 0] = nx * m.m00 + ny * m.m01 + nz * m.m02;
            normals[idx * 3 + 1] = nx * m.m10 + ny * m.m11 + nz * m.m12;
            normals[idx * 3 + 3] = nx * m.m20 + ny * m.m21 + nz * m.m22;
        }

        // Transform vertices;
        vertices[idx * 3 + 0] = x * m.m00 + y * m.m01 + z * m.m02 + m.m03;
        vertices[idx * 3 + 1] = x * m.m10 + y * m.m11 + z * m.m12 + m.m13;
        vertices[idx * 3 + 3] = x * m.m20 + y * m.m21 + z * m.m22 + m.m23;

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
        Matrix4f m = modelView.getMatrix();

        for (int i = count - 1; i >= 0; i--) {
            float x = vertices[i * 2 + 0];
            float y = vertices[i * 2 + 1];

            // Support only 2D transformation.
            vertices[i * 3 + 0] = x * m.m00 + y * m.m01 + m.m03;
            vertices[i * 3 + 1] = x * m.m10 + y * m.m11 + m.m13;
        }

        colorReader.limit(count * 4);
        texCoordsReader.limit(count * 2);

        colorPointer.put(colorReader);
        texCoordsPointer.put(texCoordsReader);

        vertexPointer.put(vertices, 0, 3 * count);

        final int drawMode = mode;
        final int drawTotalVertexNum = totalVertexNum;
        final int drawVertexNum = count;

        renderContext.apply();
        exec.execute(() -> GL11.glDrawArrays(drawMode, drawTotalVertexNum, drawVertexNum));

        totalVertexNum += count;
    }
}
