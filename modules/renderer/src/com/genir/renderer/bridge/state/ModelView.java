package com.genir.renderer.bridge.state;

import org.lwjgl.util.vector.Matrix3f;

public class ModelView {
    private static int matrixMode = org.lwjgl.opengl.GL11.GL_MODELVIEW;
    private final Matrix3f[] stack = new Matrix3f[16];
    private int matrixIdx = 0;

    public ModelView() {
        stack[0] = new Matrix3f();
        stack[0].setIdentity();
    }

    public Matrix3f getMatrix() {
        return stack[matrixIdx];
    }

    public void glMatrixMode(int mode) {
        matrixMode = mode;
    }

    public void glPushMatrix() {
        if (matrixMode != org.lwjgl.opengl.GL11.GL_MODELVIEW) {
            return;
        }

        int next = matrixIdx + 1;
        if (stack[next] == null) {
            stack[next] = new Matrix3f();
        }

        Matrix3f.load(stack[matrixIdx], stack[next]);
        matrixIdx++;
    }

    public void glPopMatrix() {
        if (matrixMode != org.lwjgl.opengl.GL11.GL_MODELVIEW) {
            return;
        }

        // GL_STACK_UNDERFLOW
        if (matrixIdx == 0) {
            return;
        }

        matrixIdx--;
    }

    public void glTranslatef(float x, float y, float z) {
        if (matrixMode != org.lwjgl.opengl.GL11.GL_MODELVIEW) {
            return;
        }

        Matrix3f m = stack[matrixIdx];

        m.m02 = x * m.m00 + y * m.m01 + m.m02;
        m.m12 = x * m.m10 + y * m.m11 + m.m12;
        m.m22 = x * m.m20 + y * m.m21 + m.m22;
    }

    public void glRotatef(float angle, float x, float y, float z) {
        if (matrixMode != org.lwjgl.opengl.GL11.GL_MODELVIEW) {
            return;
        }

        float a = angle * (float) (Math.PI / 180);
        float cos = (float) Math.cos(a);
        float sin = (float) Math.sin(a);

        Matrix3f m = stack[matrixIdx];

        float mm00 = m.m00;
        float mm10 = m.m10;
        float mm20 = m.m20;
        m.m00 = cos * m.m00 + sin * m.m01;
        m.m01 = -sin * mm00 + cos * m.m01;
        m.m10 = cos * m.m10 + sin * m.m11;
        m.m11 = -sin * mm10 + cos * m.m11;
        m.m20 = cos * m.m20 + sin * m.m21;
        m.m21 = -sin * mm20 + cos * m.m21;
    }

    public void glScalef(float x, float y, float z) {
        if (matrixMode != org.lwjgl.opengl.GL11.GL_MODELVIEW) {
            return;
        }

        Matrix3f m = stack[matrixIdx];

        m.m00 *= x;
        m.m01 *= y;
        m.m10 *= x;
        m.m11 *= y;
        m.m20 *= x;
        m.m21 *= y;
    }
}
