package com.genir.renderer.overrides.render.core;

import com.genir.renderer.bridge.context.Matrix;

public class Clip {
    public static Matrix model = new Matrix();

    /**
     * Conservatively tests whether the unit rectangle [0, 1] × [0, 1] at Z = 0
     * may intersect the viewport after model and projection transforms.
     * Assumes transformed W = 1 and Z clipping always passes.
     */
    public static boolean rectangleTest(Matrix model, Matrix projection) {
        Matrix m = model;
        Matrix p = projection;

        float c00 = m.m00 * p.m00 + m.m10 * p.m01 + m.m20 * p.m02 + m.m30 * p.m03;
        float c01 = m.m01 * p.m00 + m.m11 * p.m01 + m.m21 * p.m02 + m.m31 * p.m03;
        float c03 = m.m03 * p.m00 + m.m13 * p.m01 + m.m23 * p.m02 + m.m33 * p.m03;

        float x2 = c00 + c01;

        float xMin = Math.min(Math.min(0f, c01), Math.min(x2, c00)) + c03;
        if (xMin > 1f) {
            return false;
        }

        float xMax = Math.max(Math.max(0f, c01), Math.max(x2, c00)) + c03;
        if (xMax < -1f) {
            return false;
        }

        float c10 = m.m00 * p.m10 + m.m10 * p.m11 + m.m20 * p.m12 + m.m30 * p.m13;
        float c11 = m.m01 * p.m10 + m.m11 * p.m11 + m.m21 * p.m12 + m.m31 * p.m13;
        float c13 = m.m03 * p.m10 + m.m13 * p.m11 + m.m23 * p.m12 + m.m33 * p.m13;

        float y2 = c10 + c11;

        float yMin = Math.min(Math.min(0f, c11), Math.min(y2, c10)) + c13;
        if (yMin > 1f) {
            return false;
        }

        float yMax = Math.max(Math.max(0f, c11), Math.max(y2, c10)) + c13;
        if (yMax < -1f) {
            return false;
        }

        return true;
    }
}
