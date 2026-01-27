package com.genir.renderer.bridge;

import com.genir.renderer.bridge.context.BufferUtil;

import java.nio.IntBuffer;
import java.util.concurrent.Callable;

import static com.genir.renderer.bridge.context.Context.context;

public class GL40 {
    public static int glGetSubroutineIndex(int program, int shadertype, CharSequence name) {
        record glGetSubroutineIndex(int program, int shadertype, CharSequence name) implements Callable<Integer> {
            @Override
            public Integer call() {
                return org.lwjgl.opengl.GL40.glGetSubroutineIndex(program, shadertype, name);
            }
        }
        return context.exec.get(new glGetSubroutineIndex(program, shadertype, name));
    }

    public static int glGetSubroutineUniformLocation(int program, int shadertype, CharSequence name) {
        record glGetSubroutineUniformLocation(int program, int shadertype, CharSequence name) implements Callable<Integer> {
            @Override
            public Integer call() {
                return org.lwjgl.opengl.GL40.glGetSubroutineUniformLocation(program, shadertype, name);
            }
        }
        return context.exec.get(new glGetSubroutineUniformLocation(program, shadertype, name));
    }

    public static void glUniformSubroutinesu(int shadertype, IntBuffer indices) {
        record glUniformSubroutinesu(int shadertype, IntBuffer indices) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL40.glUniformSubroutinesu(shadertype, indices);
            }
        }
        final IntBuffer snapshot = BufferUtil.snapshot(indices);
        context.exec.execute(new glUniformSubroutinesu(shadertype, snapshot));
    }

    public static void glPatchParameteri(int pname, int value) {
        record glPatchParameteri(int pname, int value) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL40.glPatchParameteri(pname, value);
            }
        }
        context.exec.execute(new glPatchParameteri(pname, value));
    }

    public static void glBlendEquationi(int buf, int mode) {
        record glBlendEquationi(int buf, int mode) implements Runnable {
            @Override
            public void run() {
                context.attribManager.glBlendEquationi(buf, mode);
            }
        }
        context.exec.execute(new glBlendEquationi(buf, mode));
    }

    public static void glBlendFuncSeparatei(int buf, int srcRGB, int dstRGB, int srcAlpha, int dstAlpha) {
        record glBlendFuncSeparatei(int buf, int srcRGB, int dstRGB, int srcAlpha, int dstAlpha) implements Runnable {
            @Override
            public void run() {
                context.attribManager.glBlendFuncSeparatei(buf, srcRGB, dstRGB, srcAlpha, dstAlpha);
            }
        }
        context.exec.execute(new glBlendFuncSeparatei(buf, srcRGB, dstRGB, srcAlpha, dstAlpha));
    }

    public static void glBlendFunci(int buf, int src, int dst) {
        glBlendFuncSeparatei(buf, src, dst, src, dst);
    }
}
