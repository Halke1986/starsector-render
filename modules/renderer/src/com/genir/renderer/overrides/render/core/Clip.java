package com.genir.renderer.overrides.render.core;

import com.genir.renderer.bridge.context.Matrix;

public class Clip {
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

        if (!coordTest(0f, c01, x2, c00, c03)) {
            return false;
        }

        float c10 = m.m00 * p.m10 + m.m10 * p.m11 + m.m20 * p.m12 + m.m30 * p.m13;
        float c11 = m.m01 * p.m10 + m.m11 * p.m11 + m.m21 * p.m12 + m.m31 * p.m13;
        float c13 = m.m03 * p.m10 + m.m13 * p.m11 + m.m23 * p.m12 + m.m33 * p.m13;

        float y2 = c10 + c11;

        if (!coordTest(0f, c11, y2, c10, c13)) {
            return false;
        }

        return true;
    }

    private static boolean coordTest(float c0, float c1, float c2, float c3, float offset) {
        float smaller0;
        float larger0;

        if (c0 < c1) {
            smaller0 = c0;
            larger0 = c1;
        } else {
            smaller0 = c1;
            larger0 = c0;
        }

        float smaller1;
        float larger1;

        if (c2 < c3) {
            smaller1 = c2;
            larger1 = c3;
        } else {
            smaller1 = c3;
            larger1 = c2;
        }

        float min = (smaller0 < smaller1 ? smaller0 : smaller1) + offset;
        if (min > 1f) {
            return false;
        }

        float max = (larger0 > larger1 ? larger1 : larger1) + offset;
        if (max < -1f) {
            return false;
        }

        return true;
    }
}
