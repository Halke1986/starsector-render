package com.genir.renderer.bridge;


import com.genir.renderer.bridge.context.BufferUtil;
import com.genir.renderer.bridge.context.Context;

import java.nio.IntBuffer;
import java.util.concurrent.Callable;

import static com.genir.renderer.bridge.context.ContextManager.getContext;

public class GL31 {
    public static void glDrawArraysInstanced(int mode, int first, int count, int primcount) {
        record glDrawArraysInstanced(Context context, int mode, int first, int count, int primcount) implements Runnable {
            @Override
            public void run() {
                context.attribManager.applyDrawAttribs();
                org.lwjgl.opengl.GL31.glDrawArraysInstanced(mode, first, count, primcount);
            }
        }
        final Context context = getContext();
        context.exec.execute(new glDrawArraysInstanced(context, mode, first, count, primcount));
    }

    public static void glDrawElementsInstanced(int mode, int indices_count, int type, long indices_buffer_offset, int primcount) {
        record glDrawElementsInstanced(Context context, int mode, int indices_count, int type, long indices_buffer_offset, int primcount) implements Runnable {
            @Override
            public void run() {
                context.attribManager.applyDrawAttribs();
                org.lwjgl.opengl.GL31.glDrawElementsInstanced(mode, indices_count, type, indices_buffer_offset, primcount);
            }
        }
        final Context context = getContext();
        context.exec.execute(new glDrawElementsInstanced(context, mode, indices_count, type, indices_buffer_offset, primcount));
    }

    public static void glDrawElementsInstanced(int mode, IntBuffer indices, int primcount) {
        record glDrawElementsInstanced(Context context, int mode, IntBuffer indices, int primcount) implements Runnable {
            @Override
            public void run() {
                context.attribManager.applyDrawAttribs();
                org.lwjgl.opengl.GL31.glDrawElementsInstanced(mode, indices, primcount);
            }
        }
        final IntBuffer snapshot = BufferUtil.snapshot(indices);
        final Context context = getContext();
        context.exec.execute(new glDrawElementsInstanced(context, mode, snapshot, primcount));
    }

    public static void glTexBuffer(int target, int internalformat, int buffer) {
        record glTexBuffer(int target, int internalformat, int buffer) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL31.glTexBuffer(target, internalformat, buffer);
            }
        }
        getContext().exec.execute(new glTexBuffer(target, internalformat, buffer));
    }

    public static int glGetUniformBlockIndex(int program, CharSequence uniformBlockName) {
        record glGetUniformBlockIndex(int program, CharSequence uniformBlockName) implements Callable<Integer> {
            @Override
            public Integer call() {
                return org.lwjgl.opengl.GL31.glGetUniformBlockIndex(program, uniformBlockName);
            }
        }
        return getContext().exec.get(new glGetUniformBlockIndex(program, uniformBlockName));
    }

    public static void glUniformBlockBinding(int program, int uniformBlockIndex, int uniformBlockBinding) {
        record glUniformBlockBinding(int program, int uniformBlockIndex, int uniformBlockBinding) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL31.glUniformBlockBinding(program, uniformBlockIndex, uniformBlockBinding);
            }
        }
        getContext().exec.execute(new glUniformBlockBinding(program, uniformBlockIndex, uniformBlockBinding));
    }

    public static int glGetActiveUniformBlocki(int program, int uniformBlockIndex, int pname) {
        record glGetActiveUniformBlocki(int program, int uniformBlockIndex, int pname) implements Callable<Integer> {
            @Override
            public Integer call() {
                return org.lwjgl.opengl.GL31.glGetActiveUniformBlocki(program, uniformBlockIndex, pname);
            }
        }
        return getContext().exec.get(new glGetActiveUniformBlocki(program, uniformBlockIndex, pname));
    }

    public static void glCopyBufferSubData(int readtarget, int writetarget, long readoffset, long writeoffset, long size) {
        record glCopyBufferSubData(int readtarget, int writetarget, long readoffset, long writeoffset, long size) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL31.glCopyBufferSubData(readtarget, writetarget, readoffset, writeoffset, size);
            }
        }
        getContext().exec.execute(new glCopyBufferSubData(readtarget, writetarget, readoffset, writeoffset, size));
    }
}
