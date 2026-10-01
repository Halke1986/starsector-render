package com.genir.renderer.bridge.opengl;

import java.nio.*;

public final class GL13 {
      public static void glActiveTexture(int texture) {
        com.genir.renderer.bridge.commands.GL13.glActiveTexture(texture);
    }

    public static void glClientActiveTexture(int texture) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL13.glClientActiveTexture(int)");
    }

    public static void glCompressedTexImage1D(int target, int level, int internalformat, int width, int border, ByteBuffer data) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL13.glCompressedTexImage1D(int, int, int, int, int, ByteBuffer)");
    }

    public static void glCompressedTexImage1D(int target, int level, int internalformat, int width, int border, int data_imageSize, long data_buffer_offset) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL13.glCompressedTexImage1D(int, int, int, int, int, int, long)");
    }

    public static void glCompressedTexImage1D(int target, int level, int internalformat, int width, int border, int imageSize) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL13.glCompressedTexImage1D(int, int, int, int, int, int)");
    }

    public static void glCompressedTexImage2D(int target, int level, int internalformat, int width, int height, int border, ByteBuffer data) {
        com.genir.renderer.bridge.commands.GL13.glCompressedTexImage2D(target, level, internalformat, width, height, border, data);
    }

    public static void glCompressedTexImage2D(int target, int level, int internalformat, int width, int height, int border, int data_imageSize, long data_buffer_offset) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL13.glCompressedTexImage2D(int, int, int, int, int, int, int, long)");
    }

    public static void glCompressedTexImage2D(int target, int level, int internalformat, int width, int height, int border, int imageSize) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL13.glCompressedTexImage2D(int, int, int, int, int, int, int)");
    }

    public static void glCompressedTexImage3D(int target, int level, int internalformat, int width, int height, int depth, int border, ByteBuffer data) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL13.glCompressedTexImage3D(int, int, int, int, int, int, int, ByteBuffer)");
    }

    public static void glCompressedTexImage3D(int target, int level, int internalformat, int width, int height, int depth, int border, int data_imageSize, long data_buffer_offset) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL13.glCompressedTexImage3D(int, int, int, int, int, int, int, int, long)");
    }

    public static void glCompressedTexImage3D(int target, int level, int internalformat, int width, int height, int depth, int border, int imageSize) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL13.glCompressedTexImage3D(int, int, int, int, int, int, int, int)");
    }

    public static void glCompressedTexSubImage1D(int target, int level, int xoffset, int width, int format, ByteBuffer data) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL13.glCompressedTexSubImage1D(int, int, int, int, int, ByteBuffer)");
    }

    public static void glCompressedTexSubImage1D(int target, int level, int xoffset, int width, int format, int data_imageSize, long data_buffer_offset) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL13.glCompressedTexSubImage1D(int, int, int, int, int, int, long)");
    }

    public static void glCompressedTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, ByteBuffer data) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL13.glCompressedTexSubImage2D(int, int, int, int, int, int, int, ByteBuffer)");
    }

    public static void glCompressedTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int data_imageSize, long data_buffer_offset) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL13.glCompressedTexSubImage2D(int, int, int, int, int, int, int, int, long)");
    }

    public static void glCompressedTexSubImage3D(int target, int level, int xoffset, int yoffset, int zoffset, int width, int height, int depth, int format, ByteBuffer data) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL13.glCompressedTexSubImage3D(int, int, int, int, int, int, int, int, int, ByteBuffer)");
    }

    public static void glCompressedTexSubImage3D(int target, int level, int xoffset, int yoffset, int zoffset, int width, int height, int depth, int format, int data_imageSize, long data_buffer_offset) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL13.glCompressedTexSubImage3D(int, int, int, int, int, int, int, int, int, int, long)");
    }

    public static void glGetCompressedTexImage(int target, int lod, ByteBuffer img) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL13.glGetCompressedTexImage(int, int, ByteBuffer)");
    }

    public static void glGetCompressedTexImage(int target, int lod, IntBuffer img) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL13.glGetCompressedTexImage(int, int, IntBuffer)");
    }

    public static void glGetCompressedTexImage(int target, int lod, ShortBuffer img) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL13.glGetCompressedTexImage(int, int, ShortBuffer)");
    }

    public static void glGetCompressedTexImage(int target, int lod, long img_buffer_offset) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL13.glGetCompressedTexImage(int, int, long)");
    }

    public static void glMultiTexCoord1f(int target, float s) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL13.glMultiTexCoord1f(int, float)");
    }

    public static void glMultiTexCoord1d(int target, double s) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL13.glMultiTexCoord1d(int, double)");
    }

    public static void glMultiTexCoord2f(int target, float s, float t) {
        com.genir.renderer.bridge.commands.GL13.glMultiTexCoord2f(target, s, t);
    }

    public static void glMultiTexCoord2d(int target, double s, double t) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL13.glMultiTexCoord2d(int, double, double)");
    }

    public static void glMultiTexCoord3f(int target, float s, float t, float r) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL13.glMultiTexCoord3f(int, float, float, float)");
    }

    public static void glMultiTexCoord3d(int target, double s, double t, double r) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL13.glMultiTexCoord3d(int, double, double, double)");
    }

    public static void glMultiTexCoord4f(int target, float s, float t, float r, float q) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL13.glMultiTexCoord4f(int, float, float, float, float)");
    }

    public static void glMultiTexCoord4d(int target, double s, double t, double r, double q) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL13.glMultiTexCoord4d(int, double, double, double, double)");
    }

    public static void glLoadTransposeMatrix(FloatBuffer m) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL13.glLoadTransposeMatrix(FloatBuffer)");
    }

    public static void glLoadTransposeMatrix(DoubleBuffer m) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL13.glLoadTransposeMatrix(DoubleBuffer)");
    }

    public static void glMultTransposeMatrix(FloatBuffer m) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL13.glMultTransposeMatrix(FloatBuffer)");
    }

    public static void glMultTransposeMatrix(DoubleBuffer m) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL13.glMultTransposeMatrix(DoubleBuffer)");
    }

    public static void glSampleCoverage(float value, boolean invert) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL13.glSampleCoverage(float, boolean)");
    }
}
