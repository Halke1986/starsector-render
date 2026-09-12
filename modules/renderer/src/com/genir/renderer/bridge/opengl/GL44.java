package com.genir.renderer.bridge.opengl;

import org.lwjgl.PointerBuffer;

import java.nio.*;

public final class GL44 {
    public static void glBufferStorage(int target, ByteBuffer data, int flags) {
        com.genir.renderer.bridge.commands.GL44.glBufferStorage(target, data, flags);
    }

    public static void glBufferStorage(int target, DoubleBuffer data, int flags) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL44.glBufferStorage");
    }

    public static void glBufferStorage(int target, FloatBuffer data, int flags) {
        com.genir.renderer.bridge.commands.GL44.glBufferStorage(target, data, flags);
    }

    public static void glBufferStorage(int target, IntBuffer data, int flags) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL44.glBufferStorage");
    }

    public static void glBufferStorage(int target, ShortBuffer data, int flags) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL44.glBufferStorage");
    }

    public static void glBufferStorage(int target, LongBuffer data, int flags) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL44.glBufferStorage");
    }

    public static void glBufferStorage(int target, long size, int flags) {
        com.genir.renderer.bridge.commands.GL44.glBufferStorage(target, size, flags);
    }

    public static void glClearTexImage(int texture, int level, int format, int type, ByteBuffer data) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL44.glClearTexImage");
    }

    public static void glClearTexImage(int texture, int level, int format, int type, DoubleBuffer data) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL44.glClearTexImage");
    }

    public static void glClearTexImage(int texture, int level, int format, int type, FloatBuffer data) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL44.glClearTexImage");
    }

    public static void glClearTexImage(int texture, int level, int format, int type, IntBuffer data) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL44.glClearTexImage");
    }

    public static void glClearTexImage(int texture, int level, int format, int type, ShortBuffer data) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL44.glClearTexImage");
    }

    public static void glClearTexImage(int texture, int level, int format, int type, LongBuffer data) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL44.glClearTexImage");
    }

    public static void glClearTexSubImage(int texture, int level, int xoffset, int yoffset, int zoffset, int width, int height, int depth, int format, int type, ByteBuffer data) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL44.glClearTexSubImage");
    }

    public static void glClearTexSubImage(int texture, int level, int xoffset, int yoffset, int zoffset, int width, int height, int depth, int format, int type, DoubleBuffer data) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL44.glClearTexSubImage");
    }

    public static void glClearTexSubImage(int texture, int level, int xoffset, int yoffset, int zoffset, int width, int height, int depth, int format, int type, FloatBuffer data) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL44.glClearTexSubImage");
    }

    public static void glClearTexSubImage(int texture, int level, int xoffset, int yoffset, int zoffset, int width, int height, int depth, int format, int type, IntBuffer data) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL44.glClearTexSubImage");
    }

    public static void glClearTexSubImage(int texture, int level, int xoffset, int yoffset, int zoffset, int width, int height, int depth, int format, int type, ShortBuffer data) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL44.glClearTexSubImage");
    }

    public static void glClearTexSubImage(int texture, int level, int xoffset, int yoffset, int zoffset, int width, int height, int depth, int format, int type, LongBuffer data) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL44.glClearTexSubImage");
    }

    public static void glBindBuffersBase(int target, int first, int count, IntBuffer buffers) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL44.glBindBuffersBase");
    }

    public static void glBindBuffersRange(int target, int first, int count, IntBuffer buffers, PointerBuffer offsets, PointerBuffer sizes) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL44.glBindBuffersRange");
    }

    public static void glBindTextures(int first, int count, IntBuffer textures) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL44.glBindTextures");
    }

    public static void glBindSamplers(int first, int count, IntBuffer samplers) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL44.glBindSamplers");
    }

    public static void glBindImageTextures(int first, int count, IntBuffer textures) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL44.glBindImageTextures");
    }

    public static void glBindVertexBuffers(int first, int count, IntBuffer buffers, PointerBuffer offsets, IntBuffer strides) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL44.glBindVertexBuffers");
    }
}
