package com.genir.renderer.bridge.impl;

import org.lwjgl.util.vector.Matrix4f;

import java.nio.FloatBuffer;

import static java.lang.Math.cos;
import static java.lang.Math.sqrt;

public class MatrixStack {
    private Matrix4f[] stack = new Matrix4f[1];
    private int matrixIdx = 0;
    private Matrix4f current;

    public MatrixStack() {
        stack[0] = new Matrix4f();
        stack[0].setIdentity();
        current = stack[0];
    }

    public Matrix4f getMatrix() {
        return current;
    }

    public void glPushMatrix() {
        int next = matrixIdx + 1;
        if (next == stack.length) {
            stack = BufferUtils.reallocate(Matrix4f.class, stack.length * 2, stack);
        }

        if (stack[next] == null) {
            stack[next] = new Matrix4f();
        }

        Matrix4f.load(current, stack[next]);
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
        Matrix4f.setIdentity(current);
    }

    public void glTranslatef(float x, float y, float z) {
        // 1 0 0 x
        // 0 1 0 y
        // 0 0 1 z
        // 0 0 0 1

        Matrix4f m = current;

        m.m03 = x * m.m00 + y * m.m01 + z * m.m02 + m.m03;
        m.m13 = x * m.m10 + y * m.m11 + z * m.m12 + m.m13;
        m.m23 = x * m.m20 + y * m.m21 + z * m.m22 + m.m23;
        m.m33 = x * m.m30 + y * m.m31 + z * m.m32 + m.m33;
    }

    public void glRotatef(float angle, float x, float y, float z) {
        // k = (1-c)
        // xxk+1c xyk-zs xzk+ys 0
        // xyk+zs yyk+1c yzk-xs 0
        // xzk-ys yzk+xs zzk+1c 0
        // 0      0      0      1

        float a = angle * (float) (Math.PI / 180);
        float c = (float) cos(a);
        float s = (float) Math.sin(a);

        Matrix4f m = current;

        if (x == 0f && y == 0f && z == 1f) {
            // 2D fast path.
            float m00 = c * m.m00 + s * m.m01;
            float m01 = -s * m.m00 + c * m.m01;
            float m10 = c * m.m10 + s * m.m11;
            float m11 = -s * m.m10 + c * m.m11;
            float m20 = c * m.m20 + s * m.m21;
            float m21 = -s * m.m20 + c * m.m21;
            float m30 = c * m.m30 + s * m.m31;
            float m31 = -s * m.m30 + c * m.m31;

            m.m00 = m00;
            m.m01 = m01;
            m.m10 = m10;
            m.m11 = m11;
            m.m20 = m20;
            m.m21 = m21;
            m.m30 = m30;
            m.m31 = m31;
        } else {
            // 3D path.
            float l = (float) sqrt(x * x + y * y + z * z);
            float xn = x / l;
            float yn = y / l;
            float zn = z / l;

            float k = 1 - c;

            float r00 = xn * xn * k + c;
            float r01 = xn * yn * k - zn * s;
            float r02 = xn * zn * k + yn * s;

            float r10 = xn * yn * k + zn * s;
            float r11 = yn * yn * k + c;
            float r12 = yn * zn * k - xn * s;

            float r20 = xn * zn * k - yn * s;
            float r21 = yn * zn * k + xn * s;
            float r22 = zn * zn * k + c;

            float m00 = r00 * m.m00 + r10 * m.m01 + r20 * m.m02;
            float m01 = r01 * m.m00 + r11 * m.m01 + r21 * m.m02;
            float m02 = r02 * m.m00 + r12 * m.m01 + r22 * m.m02;
            float m10 = r00 * m.m10 + r10 * m.m11 + r20 * m.m12;
            float m11 = r01 * m.m10 + r11 * m.m11 + r21 * m.m12;
            float m12 = r02 * m.m10 + r12 * m.m11 + r22 * m.m12;
            float m20 = r00 * m.m20 + r10 * m.m21 + r20 * m.m22;
            float m21 = r01 * m.m20 + r11 * m.m21 + r21 * m.m22;
            float m22 = r02 * m.m20 + r12 * m.m21 + r22 * m.m22;
            float m30 = r00 * m.m30 + r10 * m.m31 + r20 * m.m32;
            float m31 = r01 * m.m30 + r11 * m.m31 + r21 * m.m32;
            float m32 = r02 * m.m30 + r12 * m.m31 + r22 * m.m32;

            m.m00 = m00;
            m.m01 = m01;
            m.m02 = m02;
            m.m10 = m10;
            m.m11 = m11;
            m.m12 = m12;
            m.m20 = m20;
            m.m21 = m21;
            m.m22 = m22;
            m.m30 = m30;
            m.m31 = m31;
            m.m32 = m32;
        }
    }

    public void glScalef(float x, float y, float z) {
        // x 0 0 0
        // 0 y 0 0
        // 0 0 z 0
        // 0 0 0 1

        Matrix4f m = current;

        m.m00 = x * m.m00;
        m.m01 = y * m.m01;
        m.m02 = z * m.m02;
        m.m10 = x * m.m10;
        m.m11 = y * m.m11;
        m.m12 = z * m.m12;
        m.m20 = x * m.m20;
        m.m21 = y * m.m21;
        m.m22 = z * m.m22;
        m.m30 = x * m.m30;
        m.m31 = y * m.m31;
        m.m32 = z * m.m32;
    }

    public void glMultMatrix(FloatBuffer buf) {
        Matrix4f m2 = new Matrix4f();
        FloatBuffer reader = buf.duplicate();
        reader.clear();
        m2.loadTranspose(reader);

        Matrix4f m = current;
        Matrix4f.mul(m2, m, m);
    }
}
