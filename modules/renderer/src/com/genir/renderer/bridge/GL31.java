package com.genir.renderer.bridge;


import com.genir.renderer.bridge.context.BufferUtil;
import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.commands.GLCommand;
import com.genir.renderer.bridge.context.commands.GLGetter;

import java.nio.IntBuffer;

import static com.genir.renderer.bridge.context.ContextManager.getThreadContext;

public class GL31 {
    public static void glDrawArraysInstanced(int mode, int first, int count, int primcount) {
        record glDrawArraysInstanced(int mode, int first, int count, int primcount) implements GLCommand {
            @Override
            public void run(Context context, int[] args, int offset) {
                context.attribManager.applyDrawAttribs();
                org.lwjgl.opengl.GL31.glDrawArraysInstanced(mode, first, count, primcount);
            }
        }

        final Context context = getThreadContext();
        context.exec.execute(new glDrawArraysInstanced(mode, first, count, primcount));
    }

    public static void glDrawElementsInstanced(int mode, int indices_count, int type, long indices_buffer_offset, int primcount) {
        record glDrawElementsInstanced(int mode, int indices_count, int type, long indices_buffer_offset, int primcount) implements GLCommand {
            @Override
            public void run(Context context, int[] args, int offset) {
                context.attribManager.applyDrawAttribs();
                org.lwjgl.opengl.GL31.glDrawElementsInstanced(mode, indices_count, type, indices_buffer_offset, primcount);
            }
        }

        final Context context = getThreadContext();
        context.exec.execute(new glDrawElementsInstanced(mode, indices_count, type, indices_buffer_offset, primcount));
    }

    public static void glDrawElementsInstanced(int mode, IntBuffer indices, int primcount) {
        record glDrawElementsInstanced(int mode, IntBuffer indices, int primcount) implements GLCommand {
            @Override
            public void run(Context context, int[] args, int offset) {
                context.attribManager.applyDrawAttribs();
                org.lwjgl.opengl.GL31.glDrawElementsInstanced(mode, indices, primcount);
            }
        }

        final IntBuffer snapshot = BufferUtil.snapshot(indices);
        final Context context = getThreadContext();
        context.exec.execute(new glDrawElementsInstanced(mode, snapshot, primcount));
    }

    public static void glTexBuffer(int target, int internalformat, int buffer) {
        record glTexBuffer(int target, int internalformat, int buffer) implements GLCommand {
            @Override
            public void run(Context context, int[] args, int offset) {
                org.lwjgl.opengl.GL31.glTexBuffer(target, internalformat, buffer);
            }
        }

        getThreadContext().exec.execute(new glTexBuffer(target, internalformat, buffer));
    }

    public static int glGetUniformBlockIndex(int program, CharSequence uniformBlockName) {
        record glGetUniformBlockIndex(int program, CharSequence uniformBlockName) implements GLGetter<Integer> {
            @Override
            public Integer call(Context context) {
                return org.lwjgl.opengl.GL31.glGetUniformBlockIndex(program, uniformBlockName);
            }
        }

        return getThreadContext().exec.get(new glGetUniformBlockIndex(program, uniformBlockName));
    }

    public static void glUniformBlockBinding(int program, int uniformBlockIndex, int uniformBlockBinding) {
        record glUniformBlockBinding(int program, int uniformBlockIndex, int uniformBlockBinding) implements GLCommand {
            @Override
            public void run(Context context, int[] args, int offset) {
                org.lwjgl.opengl.GL31.glUniformBlockBinding(program, uniformBlockIndex, uniformBlockBinding);
            }
        }

        getThreadContext().exec.execute(new glUniformBlockBinding(program, uniformBlockIndex, uniformBlockBinding));
    }

    public static int glGetActiveUniformBlocki(int program, int uniformBlockIndex, int pname) {
        record glGetActiveUniformBlocki(int program, int uniformBlockIndex, int pname) implements GLGetter<Integer> {
            @Override
            public Integer call(Context context) {
                return org.lwjgl.opengl.GL31.glGetActiveUniformBlocki(program, uniformBlockIndex, pname);
            }
        }

        return getThreadContext().exec.get(new glGetActiveUniformBlocki(program, uniformBlockIndex, pname));
    }

    public static void glCopyBufferSubData(int readtarget, int writetarget, long readoffset, long writeoffset, long size) {
        record glCopyBufferSubData(int readtarget, int writetarget, long readoffset, long writeoffset, long size) implements GLCommand {
            @Override
            public void run(Context context, int[] args, int offset) {
                org.lwjgl.opengl.GL31.glCopyBufferSubData(readtarget, writetarget, readoffset, writeoffset, size);
            }
        }

        getThreadContext().exec.execute(new glCopyBufferSubData(readtarget, writetarget, readoffset, writeoffset, size));
    }
}
