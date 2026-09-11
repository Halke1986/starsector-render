package com.genir.renderer.bridge.opengl;

import java.nio.ByteBuffer;
import java.nio.DoubleBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;

public final class GL14 {
    public static final int GL_GENERATE_MIPMAP = 33169;
    public static final int GL_GENERATE_MIPMAP_HINT = 33170;
    public static final int GL_DEPTH_COMPONENT16 = 33189;
    public static final int GL_DEPTH_COMPONENT24 = 33190;
    public static final int GL_DEPTH_COMPONENT32 = 33191;
    public static final int GL_TEXTURE_DEPTH_SIZE = 34890;
    public static final int GL_DEPTH_TEXTURE_MODE = 34891;
    public static final int GL_TEXTURE_COMPARE_MODE = 34892;
    public static final int GL_TEXTURE_COMPARE_FUNC = 34893;
    public static final int GL_COMPARE_R_TO_TEXTURE = 34894;
    public static final int GL_FOG_COORDINATE_SOURCE = 33872;
    public static final int GL_FOG_COORDINATE = 33873;
    public static final int GL_FRAGMENT_DEPTH = 33874;
    public static final int GL_CURRENT_FOG_COORDINATE = 33875;
    public static final int GL_FOG_COORDINATE_ARRAY_TYPE = 33876;
    public static final int GL_FOG_COORDINATE_ARRAY_STRIDE = 33877;
    public static final int GL_FOG_COORDINATE_ARRAY_POINTER = 33878;
    public static final int GL_FOG_COORDINATE_ARRAY = 33879;
    public static final int GL_POINT_SIZE_MIN = 33062;
    public static final int GL_POINT_SIZE_MAX = 33063;
    public static final int GL_POINT_FADE_THRESHOLD_SIZE = 33064;
    public static final int GL_POINT_DISTANCE_ATTENUATION = 33065;
    public static final int GL_COLOR_SUM = 33880;
    public static final int GL_CURRENT_SECONDARY_COLOR = 33881;
    public static final int GL_SECONDARY_COLOR_ARRAY_SIZE = 33882;
    public static final int GL_SECONDARY_COLOR_ARRAY_TYPE = 33883;
    public static final int GL_SECONDARY_COLOR_ARRAY_STRIDE = 33884;
    public static final int GL_SECONDARY_COLOR_ARRAY_POINTER = 33885;
    public static final int GL_SECONDARY_COLOR_ARRAY = 33886;
    public static final int GL_BLEND_DST_RGB = 32968;
    public static final int GL_BLEND_SRC_RGB = 32969;
    public static final int GL_BLEND_DST_ALPHA = 32970;
    public static final int GL_BLEND_SRC_ALPHA = 32971;
    public static final int GL_INCR_WRAP = 34055;
    public static final int GL_DECR_WRAP = 34056;
    public static final int GL_TEXTURE_FILTER_CONTROL = 34048;
    public static final int GL_TEXTURE_LOD_BIAS = 34049;
    public static final int GL_MAX_TEXTURE_LOD_BIAS = 34045;
    public static final int GL_MIRRORED_REPEAT = 33648;
    public static final int GL_BLEND_COLOR = 32773;
    public static final int GL_BLEND_EQUATION = 32777;
    public static final int GL_FUNC_ADD = 32774;
    public static final int GL_FUNC_SUBTRACT = 32778;
    public static final int GL_FUNC_REVERSE_SUBTRACT = 32779;
    public static final int GL_MIN = 32775;
    public static final int GL_MAX = 32776;

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
