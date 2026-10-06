package com.genir.renderer.bridge.context;

import java.nio.FloatBuffer;
import java.util.Arrays;

public class MatrixStack {
    private Matrix[] stack = new Matrix[1];
    private int matrixIdx = 0;
    private Matrix current;

    public MatrixStack() {
        stack[0] = new Matrix();
        stack[0].setIdentity();
        current = stack[0];
    }

    public Matrix getMatrix() {
        return current;
    }

    public void glPushMatrix() {
        int next = matrixIdx + 1;
        if (next == stack.length) {
            stack = Arrays.copyOf(stack, stack.length * 2);
        }

        if (stack[next] == null) {
            stack[next] = new Matrix();
        }

        stack[next].set(current);

        matrixIdx++;
        current = stack[matrixIdx];
    }

    public void glPopMatrix() {
        // GL_STACK_UNDERFLOW
        if (matrixIdx == 0) {
            return;
        }

        matrixIdx--;
        current = stack[matrixIdx];
    }

    public void glLoadIdentity() {
        current.setIdentity();
    }

    public void glTranslatef(float x, float y, float z) {
        current.translate(x, y, z);
    }

    public void glRotatef(float angle, float x, float y, float z) {
        current.rotate(angle, x, y, z);
    }

    public void glScalef(float x, float y, float z) {
        current.scale(x, y, z);
    }

    public void glMultMatrix(FloatBuffer buf) {
        Matrix right = new Matrix();
        right.loadTranspose(buf.duplicate());
        current.mul(right);
    }

    public void glLoadMatrix(FloatBuffer buf) {
        current.loadTranspose(buf.duplicate());
    }

    public void glOrtho(double left, double right, double bottom, double top, double zNear, double zFar) {
        current.ortho(left, right, bottom, top, zNear, zFar);
    }
}
