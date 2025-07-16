package com.genir.renderer.bridge;

import org.lwjgl.util.vector.Matrix3f;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;

import static com.genir.renderer.Debug.asert;

public class VertexInterceptor {
    private final Renderer renderer;
    private final MatrixStack matrixStack;

    // State.
    private int mode = 0;
    private final byte[] color = new byte[4];
    private final float[] texCoord = new float[2];

    // Buffers.
    private final byte[] colors = new byte[1 << 16];
    private final float[] texCoords = new float[1 << 15];
    private final float[] vertices = new float[1 << 15];

    // Total number of vertices since glBegin.
    private int vertexNum = 0;

    // External buffers.
    private ByteBuffer colorPointer = null;
    private FloatBuffer texCoordsPointer = null;
    private FloatBuffer vertexPointer = null;

    public void glBegin(int mode) {
        this.mode = mode;
    }

    public void glEnd() {
        renderer.drawPrimitives(mode, colors, texCoords, vertices, vertexNum);
        vertexNum = 0;
    }

    public VertexInterceptor(Renderer renderer, MatrixStack matrixStack) {
        this.renderer = renderer;
        this.matrixStack = matrixStack;
    }

    public void glColor4ub(byte red, byte green, byte blue, byte alpha) {
        color[0] = red;
        color[1] = green;
        color[2] = blue;
        color[3] = alpha;
    }

    public void glColor3d(double red, double green, double blue) {
        color[0] = (byte) Math.round(red * 255.0);
        color[1] = (byte) Math.round(green * 255.0);
        color[2] = (byte) Math.round(blue * 255.0);
        color[3] = (byte) 255;
    }

    public void glTexCoord2f(float s, float t) {
        texCoord[0] = s;
        texCoord[1] = t;
    }

    public void glVertex3d(double x, double y, double z) {
        asert(z == 0);

        glVertex2f((float) x, (float) y);
    }

    public void glVertex2f(float x, float y) {
        Matrix3f m = matrixStack.getMatrix();

        float u = x * m.m00 + y * m.m01 + m.m02;
        float v = x * m.m10 + y * m.m11 + m.m12;

        int idx = vertexNum;

        vertices[idx * 2 + 0] = u;
        vertices[idx * 2 + 1] = v;

        // Define vertex texture.
        texCoords[idx * 2 + 0] = texCoord[0];
        texCoords[idx * 2 + 1] = texCoord[1];

        // Define vertex color.
        colors[idx * 4 + 0] = color[0];
        colors[idx * 4 + 1] = color[1];
        colors[idx * 4 + 2] = color[2];
        colors[idx * 4 + 3] = color[3];

        vertexNum++;
    }

    public void glColorPointer(int size, boolean unsigned, int stride, ByteBuffer pointer) {
        colorPointer = pointer;
    }

    public void glVertexPointer(int size, int stride, FloatBuffer pointer) {
        vertexPointer = pointer;
    }

    public void glTexCoordPointer(int size, int stride, FloatBuffer pointer) {
        texCoordsPointer = pointer;
    }

    public void glDrawArrays(int mode, int first, int count) {
        FloatBuffer vertexReader = vertexPointer.duplicate();
        FloatBuffer texCoordsReader = texCoordsPointer.duplicate();
        ByteBuffer colorReader = colorPointer.duplicate();

        vertexReader.rewind();
        texCoordsReader.rewind();
        colorReader.rewind();

        vertexReader.get(vertices, 0, count * 2);
        texCoordsReader.get(texCoords, 0, count * 2);
        colorReader.get(colors, 0, count * 4);

        // Transform vertices;
        Matrix3f m = matrixStack.getMatrix();

        for (int i = 0; i < count * 2; i += 2) {
            float x = vertices[i + 0];
            float y = vertices[i + 1];

            vertices[i + 0] = x * m.m00 + y * m.m01 + m.m02;
            vertices[i + 1] = x * m.m10 + y * m.m11 + m.m12;
        }

        renderer.drawPrimitives(mode, colors, texCoords, vertices, count);
    }
}
