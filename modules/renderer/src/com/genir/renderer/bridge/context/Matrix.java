package com.genir.renderer.bridge.context;

import java.nio.FloatBuffer;

import static java.lang.Math.cos;
import static java.lang.Math.sqrt;

public class Matrix {
    public float m00 = 0;
    public float m01 = 0;
    public float m02 = 0;
    public float m03 = 0;
    public float m10 = 0;
    public float m11 = 0;
    public float m12 = 0;
    public float m13 = 0;
    public float m20 = 0;
    public float m21 = 0;
    public float m22 = 0;
    public float m23 = 0;
    public float m30 = 0;
    public float m31 = 0;
    public float m32 = 0;
    public float m33 = 0;

    public Matrix() {
    }

    public void setIdentity() {
        // 1 0 0 0
        // 0 1 0 0
        // 0 0 1 0
        // 0 0 0 1

        m00 = 1;
        m01 = 0;
        m02 = 0;
        m03 = 0;
        m10 = 0;
        m11 = 1;
        m12 = 0;
        m13 = 0;
        m20 = 0;
        m21 = 0;
        m22 = 1;
        m23 = 0;
        m30 = 0;
        m31 = 0;
        m32 = 0;
        m33 = 1;
    }

    public void translate(float x, float y, float z) {
        // 1 0 0 x
        // 0 1 0 y
        // 0 0 1 z
        // 0 0 0 1

        m03 = x * m00 + y * m01 + z * m02 + m03;
        m13 = x * m10 + y * m11 + z * m12 + m13;
        m23 = x * m20 + y * m21 + z * m22 + m23;
        m33 = x * m30 + y * m31 + z * m32 + m33;
    }

    public void rotate(float angle, float x, float y, float z) {
        // k = (1-c)
        // xxk+1c xyk-zs xzk+ys 0
        // xyk+zs yyk+1c yzk-xs 0
        // xzk-ys yzk+xs zzk+1c 0
        // 0      0      0      1

        float a = angle * (float) (Math.PI / 180);
        float c = (float) cos(a);
        float s = (float) Math.sin(a);

        if (x == 0f && y == 0f && z == 1f) {
            // 2D fast path.
            float r00 = +c * m00 + s * m01;
            float r01 = -s * m00 + c * m01;
            float r10 = +c * m10 + s * m11;
            float r11 = -s * m10 + c * m11;
            float r20 = +c * m20 + s * m21;
            float r21 = -s * m20 + c * m21;
            float r30 = +c * m30 + s * m31;
            float r31 = -s * m30 + c * m31;

            m00 = r00;
            m01 = r01;
            m10 = r10;
            m11 = r11;
            m20 = r20;
            m21 = r21;
            m30 = r30;
            m31 = r31;
        } else {
            // 3D path.
            float l = (float) sqrt(x * x + y * y + z * z);
            float xn = x / l;
            float yn = y / l;
            float zn = z / l;

            float k = 1 - c;

            float p00 = xn * xn * k + c;
            float p01 = xn * yn * k - zn * s;
            float p02 = xn * zn * k + yn * s;

            float p10 = xn * yn * k + zn * s;
            float p11 = yn * yn * k + c;
            float p12 = yn * zn * k - xn * s;

            float p20 = xn * zn * k - yn * s;
            float p21 = yn * zn * k + xn * s;
            float p22 = zn * zn * k + c;

            float r00 = p00 * m00 + p10 * m01 + p20 * m02;
            float r01 = p01 * m00 + p11 * m01 + p21 * m02;
            float r02 = p02 * m00 + p12 * m01 + p22 * m02;
            float r10 = p00 * m10 + p10 * m11 + p20 * m12;
            float r11 = p01 * m10 + p11 * m11 + p21 * m12;
            float r12 = p02 * m10 + p12 * m11 + p22 * m12;
            float r20 = p00 * m20 + p10 * m21 + p20 * m22;
            float r21 = p01 * m20 + p11 * m21 + p21 * m22;
            float r22 = p02 * m20 + p12 * m21 + p22 * m22;
            float r30 = p00 * m30 + p10 * m31 + p20 * m32;
            float r31 = p01 * m30 + p11 * m31 + p21 * m32;
            float r32 = p02 * m30 + p12 * m31 + p22 * m32;

            m00 = r00;
            m01 = r01;
            m02 = r02;
            m10 = r10;
            m11 = r11;
            m12 = r12;
            m20 = r20;
            m21 = r21;
            m22 = r22;
            m30 = r30;
            m31 = r31;
            m32 = r32;
        }
    }

    public void scale(float x, float y, float z) {
        // x 0 0 0
        // 0 y 0 0
        // 0 0 z 0
        // 0 0 0 1

        m00 = x * m00;
        m01 = y * m01;
        m02 = z * m02;
        m10 = x * m10;
        m11 = y * m11;
        m12 = z * m12;
        m20 = x * m20;
        m21 = y * m21;
        m22 = z * m22;
        m30 = x * m30;
        m31 = y * m31;
        m32 = z * m32;
    }

    public void ortho(double left, double right, double bottom, double top, double zNear, double zFar) {
        Matrix p = new Matrix();

        float l = (float) left;
        float r = (float) right;
        float t = (float) top;
        float b = (float) bottom;
        float n = (float) zNear;
        float f = (float) zFar;

        p.m00 = 2 / (r - l);
        p.m11 = 2 / (t - b);
        p.m22 = -2 / (f - n);
        p.m03 = -(r + l) / (r - l);
        p.m13 = -(t + b) / (t - b);
        p.m23 = -(f + n) / (f - n);
        p.m33 = 1;

        mul(p);
    }

    public void mul(Matrix right) {
        float r00 = m00 * right.m00 + m10 * right.m01 + m20 * right.m02 + m30 * right.m03;
        float r01 = m01 * right.m00 + m11 * right.m01 + m21 * right.m02 + m31 * right.m03;
        float r02 = m02 * right.m00 + m12 * right.m01 + m22 * right.m02 + m32 * right.m03;
        float r03 = m03 * right.m00 + m13 * right.m01 + m23 * right.m02 + m33 * right.m03;
        float r10 = m00 * right.m10 + m10 * right.m11 + m20 * right.m12 + m30 * right.m13;
        float r11 = m01 * right.m10 + m11 * right.m11 + m21 * right.m12 + m31 * right.m13;
        float r12 = m02 * right.m10 + m12 * right.m11 + m22 * right.m12 + m32 * right.m13;
        float r13 = m03 * right.m10 + m13 * right.m11 + m23 * right.m12 + m33 * right.m13;
        float r20 = m00 * right.m20 + m10 * right.m21 + m20 * right.m22 + m30 * right.m23;
        float r21 = m01 * right.m20 + m11 * right.m21 + m21 * right.m22 + m31 * right.m23;
        float r22 = m02 * right.m20 + m12 * right.m21 + m22 * right.m22 + m32 * right.m23;
        float r23 = m03 * right.m20 + m13 * right.m21 + m23 * right.m22 + m33 * right.m23;
        float r30 = m00 * right.m30 + m10 * right.m31 + m20 * right.m32 + m30 * right.m33;
        float r31 = m01 * right.m30 + m11 * right.m31 + m21 * right.m32 + m31 * right.m33;
        float r32 = m02 * right.m30 + m12 * right.m31 + m22 * right.m32 + m32 * right.m33;
        float r33 = m03 * right.m30 + m13 * right.m31 + m23 * right.m32 + m33 * right.m33;

        m00 = r00;
        m01 = r01;
        m02 = r02;
        m03 = r03;
        m10 = r10;
        m11 = r11;
        m12 = r12;
        m13 = r13;
        m20 = r20;
        m21 = r21;
        m22 = r22;
        m23 = r23;
        m30 = r30;
        m31 = r31;
        m32 = r32;
        m33 = r33;
    }

    public void set(Matrix src) {
        m00 = src.m00;
        m01 = src.m01;
        m02 = src.m02;
        m03 = src.m03;
        m10 = src.m10;
        m11 = src.m11;
        m12 = src.m12;
        m13 = src.m13;
        m20 = src.m20;
        m21 = src.m21;
        m22 = src.m22;
        m23 = src.m23;
        m30 = src.m30;
        m31 = src.m31;
        m32 = src.m32;
        m33 = src.m33;
    }

    public void loadTranspose(FloatBuffer buf) {
        m00 = buf.get();
        m10 = buf.get();
        m20 = buf.get();
        m30 = buf.get();
        m01 = buf.get();
        m11 = buf.get();
        m21 = buf.get();
        m31 = buf.get();
        m02 = buf.get();
        m12 = buf.get();
        m22 = buf.get();
        m32 = buf.get();
        m03 = buf.get();
        m13 = buf.get();
        m23 = buf.get();
        m33 = buf.get();
    }

    public void storeTranspose(FloatBuffer buf) {
        buf.put(m00);
        buf.put(m10);
        buf.put(m20);
        buf.put(m30);
        buf.put(m01);
        buf.put(m11);
        buf.put(m21);
        buf.put(m31);
        buf.put(m02);
        buf.put(m12);
        buf.put(m22);
        buf.put(m32);
        buf.put(m03);
        buf.put(m13);
        buf.put(m23);
        buf.put(m33);
    }
}
