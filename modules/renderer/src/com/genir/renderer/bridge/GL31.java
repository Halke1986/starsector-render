package com.genir.renderer.bridge;


import com.genir.renderer.bridge.state.BufferUtil;

import java.nio.IntBuffer;
import java.util.concurrent.Callable;

import static com.genir.renderer.bridge.state.AppState.state;

public class GL31 {
    public static void glDrawArraysInstanced(int mode, int first, int count, int primcount) {
        record glDrawArraysInstanced(int mode, int first, int count, int primcount) implements Runnable {
            @Override
            public void run() {
                state.attribManager.applyDrawAttribs();
                org.lwjgl.opengl.GL31.glDrawArraysInstanced(mode, first, count, primcount);
            }
        }
        state.exec.execute(new glDrawArraysInstanced(mode, first, count, primcount));
    }

    public static void glDrawElementsInstanced(int mode, int indices_count, int type, long indices_buffer_offset, int primcount) {
        record glDrawElementsInstanced(int mode, int indices_count, int type, long indices_buffer_offset, int primcount) implements Runnable {
            @Override
            public void run() {
                state.attribManager.applyDrawAttribs();
                org.lwjgl.opengl.GL31.glDrawElementsInstanced(mode, indices_count, type, indices_buffer_offset, primcount);
            }
        }
        state.exec.execute(new glDrawElementsInstanced(mode, indices_count, type, indices_buffer_offset, primcount));
    }

    public static void glDrawElementsInstanced(int mode, IntBuffer indices, int primcount) {
        record glDrawElementsInstanced(int mode, IntBuffer indices, int primcount) implements Runnable {
            @Override
            public void run() {
                state.attribManager.applyDrawAttribs();
                org.lwjgl.opengl.GL31.glDrawElementsInstanced(mode, indices, primcount);
            }
        }
        final IntBuffer snapshot = BufferUtil.snapshot(indices);
        state.exec.execute(new glDrawElementsInstanced(mode, snapshot, primcount));
    }

    public static void glTexBuffer(int target, int internalformat, int buffer) {
        record glTexBuffer(int target, int internalformat, int buffer) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL31.glTexBuffer(target, internalformat, buffer);
            }
        }
        state.exec.execute(new glTexBuffer(target, internalformat, buffer));
    }

    public static int glGetUniformBlockIndex(int program, CharSequence uniformBlockName) {
        record glGetUniformBlockIndex(int program, CharSequence uniformBlockName) implements Callable<Integer> {
            @Override
            public Integer call() throws Exception {
                return org.lwjgl.opengl.GL31.glGetUniformBlockIndex(program, uniformBlockName);
            }
        }
        return state.exec.get(new glGetUniformBlockIndex(program, uniformBlockName));
    }

    public static void glUniformBlockBinding(int program, int uniformBlockIndex, int uniformBlockBinding) {
        record glUniformBlockBinding(int program, int uniformBlockIndex, int uniformBlockBinding) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL31.glUniformBlockBinding(program, uniformBlockIndex, uniformBlockBinding);
            }
        }
        state.exec.execute(new glUniformBlockBinding(program, uniformBlockIndex, uniformBlockBinding));
    }

    public static int glGetActiveUniformBlocki(int program, int uniformBlockIndex, int pname) {
        record glGetActiveUniformBlocki(int program, int uniformBlockIndex, int pname) implements Callable<Integer> {
            @Override
            public Integer call() throws Exception {
                return org.lwjgl.opengl.GL31.glGetActiveUniformBlocki(program, uniformBlockIndex, pname);
            }
        }
        return state.exec.get(new glGetActiveUniformBlocki(program, uniformBlockIndex, pname));
    }
}
