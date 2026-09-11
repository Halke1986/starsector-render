package com.genir.renderer.bridge.opengl;

import java.nio.ByteBuffer;
import java.nio.DoubleBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.LongBuffer;
import java.nio.ShortBuffer;

import org.lwjgl.BufferChecks;
import org.lwjgl.MemoryUtil;
import org.lwjgl.PointerBuffer;
import org.lwjgl.opengl.ContextCapabilities;
import org.lwjgl.opengl.GLContext;

public final class GL44 {
    public static final int GL_MAX_VERTEX_ATTRIB_STRIDE = 33509;
    public static final int GL_MAP_PERSISTENT_BIT = 64;
    public static final int GL_MAP_COHERENT_BIT = 128;
    public static final int GL_DYNAMIC_STORAGE_BIT = 256;
    public static final int GL_CLIENT_STORAGE_BIT = 512;
    public static final int GL_BUFFER_IMMUTABLE_STORAGE = 33311;
    public static final int GL_BUFFER_STORAGE_FLAGS = 33312;
    public static final int GL_CLIENT_MAPPED_BUFFER_BARRIER_BIT = 16384;
    public static final int GL_CLEAR_TEXTURE = 37733;
    public static final int GL_LOCATION_COMPONENT = 37706;
    public static final int GL_TRANSFORM_FEEDBACK_BUFFER_INDEX = 37707;
    public static final int GL_TRANSFORM_FEEDBACK_BUFFER_STRIDE = 37708;
    public static final int GL_QUERY_RESULT_NO_WAIT = 37268;
    public static final int GL_QUERY_BUFFER = 37266;
    public static final int GL_QUERY_BUFFER_BINDING = 37267;
    public static final int GL_QUERY_BUFFER_BARRIER_BIT = 32768;
    public static final int GL_MIRROR_CLAMP_TO_EDGE = 34627;

    public static void glBufferStorage(int target, ByteBuffer data, int flags) {
        com.genir.renderer.bridge.commands.GL44.glBufferStorage(target, data, flags);
    }

    public static void glBufferStorage(int target, DoubleBuffer data, int flags) {
        throw new UnsupportedOperationException();
    }

    public static void glBufferStorage(int target, FloatBuffer data, int flags) {
        com.genir.renderer.bridge.commands.GL44.glBufferStorage(target, data, flags);
    }

    public static void glBufferStorage(int target, IntBuffer data, int flags) {
        throw new UnsupportedOperationException();
    }

    public static void glBufferStorage(int target, ShortBuffer data, int flags) {
        throw new UnsupportedOperationException();
    }

    public static void glBufferStorage(int target, LongBuffer data, int flags) {
        throw new UnsupportedOperationException();
    }

    public static void glBufferStorage(int target, long size, int flags) {
        com.genir.renderer.bridge.commands.GL44.glBufferStorage(target, size, flags);
    }

    public static void glClearTexImage(int texture, int level, int format, int type, ByteBuffer data) {
        throw new UnsupportedOperationException();
    }

    public static void glClearTexImage(int texture, int level, int format, int type, DoubleBuffer data) {
        throw new UnsupportedOperationException();
    }

    public static void glClearTexImage(int texture, int level, int format, int type, FloatBuffer data) {
        throw new UnsupportedOperationException();
    }

    public static void glClearTexImage(int texture, int level, int format, int type, IntBuffer data) {
        throw new UnsupportedOperationException();
    }

    public static void glClearTexImage(int texture, int level, int format, int type, ShortBuffer data) {
        throw new UnsupportedOperationException();
    }

    public static void glClearTexImage(int texture, int level, int format, int type, LongBuffer data) {
        throw new UnsupportedOperationException();
    }

    public static void glClearTexSubImage(int texture, int level, int xoffset, int yoffset, int zoffset, int width, int height, int depth, int format, int type, ByteBuffer data) {
        throw new UnsupportedOperationException();
    }

    public static void glClearTexSubImage(int texture, int level, int xoffset, int yoffset, int zoffset, int width, int height, int depth, int format, int type, DoubleBuffer data) {
        throw new UnsupportedOperationException();
    }

    public static void glClearTexSubImage(int texture, int level, int xoffset, int yoffset, int zoffset, int width, int height, int depth, int format, int type, FloatBuffer data) {
        throw new UnsupportedOperationException();
    }

    public static void glClearTexSubImage(int texture, int level, int xoffset, int yoffset, int zoffset, int width, int height, int depth, int format, int type, IntBuffer data) {
        throw new UnsupportedOperationException();
    }

    public static void glClearTexSubImage(int texture, int level, int xoffset, int yoffset, int zoffset, int width, int height, int depth, int format, int type, ShortBuffer data) {
        throw new UnsupportedOperationException();
    }

    public static void glClearTexSubImage(int texture, int level, int xoffset, int yoffset, int zoffset, int width, int height, int depth, int format, int type, LongBuffer data) {
        throw new UnsupportedOperationException();
    }

    public static void glBindBuffersBase(int target, int first, int count, IntBuffer buffers) {
        throw new UnsupportedOperationException();
    }

    public static void glBindBuffersRange(int target, int first, int count, IntBuffer buffers, PointerBuffer offsets, PointerBuffer sizes) {
        throw new UnsupportedOperationException();
    }

    public static void glBindTextures(int first, int count, IntBuffer textures) {
        throw new UnsupportedOperationException();
    }

    public static void glBindSamplers(int first, int count, IntBuffer samplers) {
        throw new UnsupportedOperationException();
    }

    public static void glBindImageTextures(int first, int count, IntBuffer textures) {
        throw new UnsupportedOperationException();
    }

    public static void glBindVertexBuffers(int first, int count, IntBuffer buffers, PointerBuffer offsets, IntBuffer strides) {
        throw new UnsupportedOperationException();
    }
}
