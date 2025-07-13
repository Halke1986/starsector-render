package com.genir.renderer.bridge;

import org.lwjgl.BufferUtils;
import org.lwjgl.opengl.GL11;
import org.lwjgl.util.vector.Matrix3f;

import java.nio.FloatBuffer;

import static com.genir.renderer.Debug.asert;

public class VertexInterceptor {
    private final ModelView modelView;

    private FloatBuffer inputVertexPointer;
    private final FloatBuffer outputVertexPointer = BufferUtils.createFloatBuffer(1 << 16);

    public VertexInterceptor(ModelView modelView) {
        this.modelView = modelView;
    }

    public void glVertex2f(float x, float y) {
        Matrix3f m = modelView.getMatrix();

        float u = x * m.m00 + y * m.m01 + m.m02;
        float v = x * m.m10 + y * m.m11 + m.m12;

        GL11.glVertex2f(u, v);
    }

    public void glVertex3d(double x, double y, double z) {
        asert(z == 0);

        glVertex2f((float) x, (float) y);
    }

    public void glVertexPointer(int size, int stride, FloatBuffer pointer) {
        asert(size == 2);
        asert(stride == 0);

        inputVertexPointer = pointer;
    }

    public void glDrawArrays(int mode, int first, int count) {
        asert(first == 0);

        float[] rawVertices = new float[count * 2];

        FloatBuffer reader = inputVertexPointer.duplicate();
        reader.rewind();
        reader.get(rawVertices);

        // Transform vertices;
        Matrix3f m = modelView.getMatrix();
        for (int i = 0; i < rawVertices.length; i += 2) {
            float x = rawVertices[i + 0];
            float y = rawVertices[i + 1];

            rawVertices[i + 0] = x * m.m00 + y * m.m01 + m.m02;
            rawVertices[i + 1] = x * m.m10 + y * m.m11 + m.m12;
        }

        outputVertexPointer.clear();
        outputVertexPointer.put(rawVertices);
        outputVertexPointer.flip();

        GL11.glVertexPointer(2, 0, outputVertexPointer);
        GL11.glDrawArrays(mode, first, count);
    }
}
