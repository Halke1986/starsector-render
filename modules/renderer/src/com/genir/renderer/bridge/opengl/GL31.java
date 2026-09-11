package com.genir.renderer.bridge.opengl;

import java.nio.ByteBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;

public final class GL31 {
    public static void glDrawArraysInstanced(int mode, int first, int count, int primcount) {
        com.genir.renderer.bridge.commands.GL31.glDrawArraysInstanced(mode, first, count, primcount);
    }

    public static void glDrawElementsInstanced(int mode, ByteBuffer indices, int primcount) {
        throw new UnsupportedOperationException();
    }

    public static void glDrawElementsInstanced(int mode, IntBuffer indices, int primcount) {
        com.genir.renderer.bridge.commands.GL31.glDrawElementsInstanced(mode, indices, primcount);
    }

    public static void glDrawElementsInstanced(int mode, ShortBuffer indices, int primcount) {
        throw new UnsupportedOperationException();
    }

    public static void glDrawElementsInstanced(int mode, int indices_count, int type, long indices_buffer_offset, int primcount) {
        com.genir.renderer.bridge.commands.GL31.glDrawElementsInstanced(mode, indices_count, type, indices_buffer_offset, primcount);
    }

    public static void glCopyBufferSubData(int readtarget, int writetarget, long readoffset, long writeoffset, long size) {
        com.genir.renderer.bridge.commands.GL31.glCopyBufferSubData(readtarget, writetarget, readoffset, writeoffset, size);
    }

    public static void glPrimitiveRestartIndex(int index) {
        throw new UnsupportedOperationException();
    }

    public static void glTexBuffer(int target, int internalformat, int buffer) {
        com.genir.renderer.bridge.commands.GL31.glTexBuffer(target, internalformat, buffer);
    }

    public static void glGetUniformIndices(int program, ByteBuffer uniformNames, IntBuffer uniformIndices) {
        throw new UnsupportedOperationException();
    }

    public static void glGetUniformIndices(int program, CharSequence[] uniformNames, IntBuffer uniformIndices) {
        throw new UnsupportedOperationException();
    }

    public static void glGetActiveUniforms(int program, IntBuffer uniformIndices, int pname, IntBuffer params) {
        throw new UnsupportedOperationException();
    }

    /**
     * @deprecated
     */
    @Deprecated
    public static int glGetActiveUniforms(int program, int uniformIndex, int pname) {
        return glGetActiveUniformsi(program, uniformIndex, pname);
    }

    public static int glGetActiveUniformsi(int program, int uniformIndex, int pname) {
        throw new UnsupportedOperationException();
    }

    public static void glGetActiveUniformName(int program, int uniformIndex, IntBuffer length, ByteBuffer uniformName) {
        throw new UnsupportedOperationException();
    }

    public static String glGetActiveUniformName(int program, int uniformIndex, int bufSize) {
        throw new UnsupportedOperationException();
    }

    public static int glGetUniformBlockIndex(int program, ByteBuffer uniformBlockName) {
        throw new UnsupportedOperationException();
    }

    public static int glGetUniformBlockIndex(int program, CharSequence uniformBlockName) {
        return com.genir.renderer.bridge.commands.GL31.glGetUniformBlockIndex(program, uniformBlockName);
    }

    public static void glGetActiveUniformBlock(int program, int uniformBlockIndex, int pname, IntBuffer params) {
        throw new UnsupportedOperationException();
    }

    /**
     * @deprecated
     */
    @Deprecated
    public static int glGetActiveUniformBlock(int program, int uniformBlockIndex, int pname) {
        return glGetActiveUniformBlocki(program, uniformBlockIndex, pname);
    }

    public static int glGetActiveUniformBlocki(int program, int uniformBlockIndex, int pname) {
        return com.genir.renderer.bridge.commands.GL31.glGetActiveUniformBlocki(program, uniformBlockIndex, pname);
    }

    public static void glGetActiveUniformBlockName(int program, int uniformBlockIndex, IntBuffer length, ByteBuffer uniformBlockName) {
        throw new UnsupportedOperationException();
    }

    public static String glGetActiveUniformBlockName(int program, int uniformBlockIndex, int bufSize) {
        throw new UnsupportedOperationException();
    }

    public static void glUniformBlockBinding(int program, int uniformBlockIndex, int uniformBlockBinding) {
        com.genir.renderer.bridge.commands.GL31.glUniformBlockBinding(program, uniformBlockIndex, uniformBlockBinding);
    }
}
