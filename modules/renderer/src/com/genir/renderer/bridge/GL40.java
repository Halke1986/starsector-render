package com.genir.renderer.bridge;

import com.genir.renderer.bridge.context.BufferUtil;
import com.genir.renderer.bridge.context.Context;

import java.nio.IntBuffer;
import java.util.concurrent.Callable;

import static com.genir.renderer.bridge.context.ContextManager.getContext;
import static com.genir.renderer.bridge.context.ContextManager.getThreadContext;

public class GL40 {
    public static int glGetSubroutineIndex(int program, int shadertype, CharSequence name) {
        record glGetSubroutineIndex(int program, int shadertype, CharSequence name) implements Callable<Integer> {
            @Override
            public Integer call() {
                return org.lwjgl.opengl.GL40.glGetSubroutineIndex(program, shadertype, name);
            }
        }
        return getThreadContext().exec.get(new glGetSubroutineIndex(program, shadertype, name));
    }

    public static int glGetSubroutineUniformLocation(int program, int shadertype, CharSequence name) {
        record glGetSubroutineUniformLocation(int program, int shadertype, CharSequence name) implements Callable<Integer> {
            @Override
            public Integer call() {
                return org.lwjgl.opengl.GL40.glGetSubroutineUniformLocation(program, shadertype, name);
            }
        }
        return getThreadContext().exec.get(new glGetSubroutineUniformLocation(program, shadertype, name));
    }

    public static void glUniformSubroutinesu(int shadertype, IntBuffer indices) {
        record glUniformSubroutinesu(int shadertype, IntBuffer indices) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL40.glUniformSubroutinesu(shadertype, indices);
            }
        }
        final IntBuffer snapshot = BufferUtil.snapshot(indices);
        getThreadContext().exec.execute(new glUniformSubroutinesu(shadertype, snapshot));
    }

    public static void glPatchParameteri(int pname, int value) {
        record glPatchParameteri(int pname, int value) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL40.glPatchParameteri(pname, value);
            }
        }
        getThreadContext().exec.execute(new glPatchParameteri(pname, value));
    }

    public static void glBlendEquationi(int buf, int mode) {
        record glBlendEquationi(int contextId, int buf, int mode) implements Runnable {
            @Override
            public void run() {
                getContext(contextId).attribManager.glBlendEquationi(buf, mode);
            }
        }
        final Context context = getThreadContext();
        context.exec.execute(new glBlendEquationi(context.id, buf, mode));
    }

    public static void glBlendFuncSeparatei(int buf, int srcRGB, int dstRGB, int srcAlpha, int dstAlpha) {
        record glBlendFuncSeparatei(int contextId, int buf, int srcRGB, int dstRGB, int srcAlpha, int dstAlpha) implements Runnable {
            @Override
            public void run() {
                getContext(contextId).attribManager.glBlendFuncSeparatei(buf, srcRGB, dstRGB, srcAlpha, dstAlpha);
            }
        }
        final Context context = getThreadContext();
        context.exec.execute(new glBlendFuncSeparatei(context.id, buf, srcRGB, dstRGB, srcAlpha, dstAlpha));
    }

    public static void glBlendFunci(int buf, int src, int dst) {
        glBlendFuncSeparatei(buf, src, dst, src, dst);
    }
}
