package com.genir.renderer.bridge.context;

import org.lwjgl.util.vector.Matrix4f;

import java.nio.FloatBuffer;
import java.util.Arrays;

public class MatrixStack {
    private Matrix[] stack = new Matrix[1];
    private int matrixIdx = 0;
    private Matrix current;

    public MatrixStack() {
        stack[0] = new Matrix();
        current = stack[0];
    }

    public Matrix4f getMatrix() {
        return current.getMatrix4f();
    }

    public void glPushMatrix() {
        int next = matrixIdx + 1;
        if (next == stack.length) {
            stack = Arrays.copyOf(stack, stack.length * 2);
        }

        if (stack[next] == null) {
            stack[next] = new Matrix();
        }

        Matrix4f.load(current.getMatrix4f(), stack[next].getMatrix4f());
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
        current.glLoadIdentity();
    }

    public void glTranslatef(float x, float y, float z) {
        current.glTranslatef(x, y, z);
    }

    public void glRotatef(float angle, float x, float y, float z) {
        current.glRotatef(angle, x, y, z);
    }

    public void glScalef(float x, float y, float z) {
        current.glScalef(x, y, z);
    }

    public void glMultMatrix(FloatBuffer buf) {
        current.glMultMatrix(buf);
    }

    public void glLoadMatrix(FloatBuffer buf) {
        current.glLoadMatrix(buf);
    }

    public void glOrtho(double left, double right, double bottom, double top, double zNear, double zFar) {
        current.glOrtho(left, right, bottom, top, zNear, zFar);
    }
}
