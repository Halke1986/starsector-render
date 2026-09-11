package com.genir.renderer.bridge.opengl;

import com.genir.renderer.bridge.commands.GLSync;

import java.nio.*;

public final class GL32 {
    public static void glGetBufferParameter(int target, int pname, LongBuffer params) {
        throw new UnsupportedOperationException();
    }

    /**
     * @deprecated
     */
    @Deprecated
    public static long glGetBufferParameter(int target, int pname) {
        return glGetBufferParameteri64(target, pname);
    }

    public static long glGetBufferParameteri64(int target, int pname) {
        throw new UnsupportedOperationException();
    }

    public static void glDrawElementsBaseVertex(int mode, ByteBuffer indices, int basevertex) {
        throw new UnsupportedOperationException();
    }

    public static void glDrawElementsBaseVertex(int mode, IntBuffer indices, int basevertex) {
        throw new UnsupportedOperationException();
    }

    public static void glDrawElementsBaseVertex(int mode, ShortBuffer indices, int basevertex) {
        throw new UnsupportedOperationException();
    }

    public static void glDrawElementsBaseVertex(int mode, int indices_count, int type, long indices_buffer_offset, int basevertex) {
        throw new UnsupportedOperationException();
    }

    public static void glDrawRangeElementsBaseVertex(int mode, int start, int end, ByteBuffer indices, int basevertex) {
        throw new UnsupportedOperationException();
    }

    public static void glDrawRangeElementsBaseVertex(int mode, int start, int end, IntBuffer indices, int basevertex) {
        throw new UnsupportedOperationException();
    }

    public static void glDrawRangeElementsBaseVertex(int mode, int start, int end, ShortBuffer indices, int basevertex) {
        throw new UnsupportedOperationException();
    }

    public static void glDrawRangeElementsBaseVertex(int mode, int start, int end, int indices_count, int type, long indices_buffer_offset, int basevertex) {
        throw new UnsupportedOperationException();
    }

    public static void glDrawElementsInstancedBaseVertex(int mode, ByteBuffer indices, int primcount, int basevertex) {
        throw new UnsupportedOperationException();
    }

    public static void glDrawElementsInstancedBaseVertex(int mode, IntBuffer indices, int primcount, int basevertex) {
        throw new UnsupportedOperationException();
    }

    public static void glDrawElementsInstancedBaseVertex(int mode, ShortBuffer indices, int primcount, int basevertex) {
        throw new UnsupportedOperationException();
    }

    public static void glDrawElementsInstancedBaseVertex(int mode, int indices_count, int type, long indices_buffer_offset, int primcount, int basevertex) {
        throw new UnsupportedOperationException();
    }

    public static void glProvokingVertex(int mode) {
        throw new UnsupportedOperationException();
    }

    public static void glTexImage2DMultisample(int target, int samples, int internalformat, int width, int height, boolean fixedsamplelocations) {
        throw new UnsupportedOperationException();
    }

    public static void glTexImage3DMultisample(int target, int samples, int internalformat, int width, int height, int depth, boolean fixedsamplelocations) {
        throw new UnsupportedOperationException();
    }

    public static void glGetMultisample(int pname, int index, FloatBuffer val) {
        throw new UnsupportedOperationException();
    }

    public static void glSampleMaski(int index, int mask) {
        throw new UnsupportedOperationException();
    }

    public static void glFramebufferTexture(int target, int attachment, int texture, int level) {
        throw new UnsupportedOperationException();
    }

    public static GLSync glFenceSync(int condition, int flags) {
        return com.genir.renderer.bridge.commands.GL32.glFenceSync(condition, flags);
    }

    public static boolean glIsSync(GLSync sync) {
        throw new UnsupportedOperationException();
    }

    public static void glDeleteSync(GLSync sync) {
        com.genir.renderer.bridge.commands.GL32.glDeleteSync(sync);
    }

    public static int glClientWaitSync(GLSync sync, int flags, long timeout) {
        throw new UnsupportedOperationException();
    }

    public static void glWaitSync(GLSync sync, int flags, long timeout) {
        com.genir.renderer.bridge.commands.GL32.glWaitSync(sync, flags, timeout);
    }

    public static void glGetInteger64(int pname, LongBuffer data) {
        throw new UnsupportedOperationException();
    }

    public static long glGetInteger64(int pname) {
        return com.genir.renderer.bridge.commands.GL32.glGetInteger64(pname);
    }

    public static void glGetInteger64(int value, int index, LongBuffer data) {
        throw new UnsupportedOperationException();
    }

    public static long glGetInteger64(int value, int index) {
        return com.genir.renderer.bridge.commands.GL32.glGetInteger64(value, index);
    }

    public static void glGetSync(com.genir.renderer.bridge.commands.GLSync sync, int pname, IntBuffer length, IntBuffer values) {
        throw new UnsupportedOperationException();
    }

    /**
     * @deprecated
     */
    @Deprecated
    public static int glGetSync(GLSync sync, int pname) {
        return glGetSynci(sync, pname);
    }

    public static int glGetSynci(GLSync sync, int pname) {
        throw new UnsupportedOperationException();
    }
}
