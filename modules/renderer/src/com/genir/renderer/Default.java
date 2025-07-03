package com.genir.renderer;

import org.lwjgl.opengl.GL14;
import org.lwjgl.util.vector.Matrix3f;

public class Default {
    public static int blendEquation = GL14.GL_FUNC_ADD;

    public static Matrix3f modelMatrix() {
        Matrix3f defaultMatrix = new Matrix3f();
        defaultMatrix.setIdentity();
        defaultMatrix.m02 = 0.01f;
        defaultMatrix.m12 = 0.01f;

        return defaultMatrix;
    }
}
