package com.genir.renderer.bridge.opengl;

import java.nio.ByteBuffer;
import java.nio.DoubleBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;

public final class GL14 {
    public static void glBlendEquation(int mode) {
        com.genir.renderer.bridge.commands.GL14.glBlendEquation(mode);
    }

    public static void glBlendColor(float red, float green, float blue, float alpha) {
        throw new UnsupportedOperationException();
    }

    public static void glFogCoordf(float coord) {
        throw new UnsupportedOperationException();
    }

    public static void glFogCoordd(double coord) {
        throw new UnsupportedOperationException();
    }

    public static void glFogCoordPointer(int stride, DoubleBuffer data) {
        throw new UnsupportedOperationException();
    }

    public static void glFogCoordPointer(int stride, FloatBuffer data) {
        throw new UnsupportedOperationException();
    }

    public static void glFogCoordPointer(int type, int stride, long data_buffer_offset) {
        throw new UnsupportedOperationException();
    }

    public static void glMultiDrawArrays(int mode, IntBuffer piFirst, IntBuffer piCount) {
        throw new UnsupportedOperationException();
    }

    public static void glPointParameteri(int pname, int param) {
        throw new UnsupportedOperationException();
    }

    public static void glPointParameterf(int pname, float param) {
        throw new UnsupportedOperationException();
    }

    public static void glPointParameter(int pname, IntBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static void glPointParameter(int pname, FloatBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static void glSecondaryColor3b(byte red, byte green, byte blue) {
        throw new UnsupportedOperationException();
    }

    public static void glSecondaryColor3f(float red, float green, float blue) {
        throw new UnsupportedOperationException();
    }

    public static void glSecondaryColor3d(double red, double green, double blue) {
        throw new UnsupportedOperationException();
    }

    public static void glSecondaryColor3ub(byte red, byte green, byte blue) {
        throw new UnsupportedOperationException();
    }

    public static void glSecondaryColorPointer(int size, int stride, DoubleBuffer data) {
        throw new UnsupportedOperationException();
    }

    public static void glSecondaryColorPointer(int size, int stride, FloatBuffer data) {
        throw new UnsupportedOperationException();
    }

    public static void glSecondaryColorPointer(int size, boolean unsigned, int stride, ByteBuffer data) {
        throw new UnsupportedOperationException();
    }

    public static void glSecondaryColorPointer(int size, int type, int stride, long data_buffer_offset) {
        throw new UnsupportedOperationException();
    }

    public static void glBlendFuncSeparate(int sfactorRGB, int dfactorRGB, int sfactorAlpha, int dfactorAlpha) {
        com.genir.renderer.bridge.commands.GL14.glBlendFuncSeparate(sfactorRGB, dfactorRGB, sfactorAlpha, dfactorAlpha);
    }

    public static void glWindowPos2f(float x, float y) {
        throw new UnsupportedOperationException();
    }

    public static void glWindowPos2d(double x, double y) {
        throw new UnsupportedOperationException();
    }

    public static void glWindowPos2i(int x, int y) {
        throw new UnsupportedOperationException();
    }

    public static void glWindowPos3f(float x, float y, float z) {
        throw new UnsupportedOperationException();
    }

    public static void glWindowPos3d(double x, double y, double z) {
        throw new UnsupportedOperationException();
    }

    public static void glWindowPos3i(int x, int y, int z) {
        throw new UnsupportedOperationException();
    }
}
