package com.genir.renderer.bridge.opengl;

import java.nio.ByteBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;

public final class GL42 {
    public static void glGetActiveAtomicCounterBuffer(int program, int bufferIndex, int pname, IntBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static int glGetActiveAtomicCounterBuffer(int program, int bufferIndex, int pname) {
        throw new UnsupportedOperationException();
    }

    public static void glTexStorage1D(int target, int levels, int internalformat, int width) {
        throw new UnsupportedOperationException();
    }

    public static void glTexStorage2D(int target, int levels, int internalformat, int width, int height) {
        com.genir.renderer.bridge.commands.GL42.glTexStorage2D(target, levels, internalformat, width, height);
    }

    public static void glTexStorage3D(int target, int levels, int internalformat, int width, int height, int depth) {
        throw new UnsupportedOperationException();
    }

    public static void glDrawTransformFeedbackInstanced(int mode, int id, int primcount) {
        throw new UnsupportedOperationException();
    }

    public static void glDrawTransformFeedbackStreamInstanced(int mode, int id, int stream, int primcount) {
        throw new UnsupportedOperationException();
    }

    public static void glDrawArraysInstancedBaseInstance(int mode, int first, int count, int primcount, int baseinstance) {
        throw new UnsupportedOperationException();
    }

    public static void glDrawElementsInstancedBaseInstance(int mode, ByteBuffer indices, int primcount, int baseinstance) {
        throw new UnsupportedOperationException();
    }

    public static void glDrawElementsInstancedBaseInstance(int mode, IntBuffer indices, int primcount, int baseinstance) {
        throw new UnsupportedOperationException();
    }

    public static void glDrawElementsInstancedBaseInstance(int mode, ShortBuffer indices, int primcount, int baseinstance) {
        throw new UnsupportedOperationException();
    }

    public static void glDrawElementsInstancedBaseInstance(int mode, int indices_count, int type, long indices_buffer_offset, int primcount, int baseinstance) {
        throw new UnsupportedOperationException();
    }

    public static void glDrawElementsInstancedBaseVertexBaseInstance(int mode, ByteBuffer indices, int primcount, int basevertex, int baseinstance) {
        throw new UnsupportedOperationException();
    }

    public static void glDrawElementsInstancedBaseVertexBaseInstance(int mode, IntBuffer indices, int primcount, int basevertex, int baseinstance) {
        throw new UnsupportedOperationException();
    }

    public static void glDrawElementsInstancedBaseVertexBaseInstance(int mode, ShortBuffer indices, int primcount, int basevertex, int baseinstance) {
        throw new UnsupportedOperationException();
    }

    public static void glDrawElementsInstancedBaseVertexBaseInstance(int mode, int indices_count, int type, long indices_buffer_offset, int primcount, int basevertex, int baseinstance) {
        throw new UnsupportedOperationException();
    }

    public static void glBindImageTexture(int unit, int texture, int level, boolean layered, int layer, int access, int format) {
        com.genir.renderer.bridge.commands.GL42.glBindImageTexture(unit, texture, level, layered, layer, access, format);
    }

    public static void glMemoryBarrier(int barriers) {
        com.genir.renderer.bridge.commands.GL42.glMemoryBarrier(barriers);
    }

    public static void glGetInternalformat(int target, int internalformat, int pname, IntBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static int glGetInternalformat(int target, int internalformat, int pname) {
        throw new UnsupportedOperationException();
    }
}
