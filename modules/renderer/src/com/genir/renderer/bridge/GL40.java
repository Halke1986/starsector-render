package com.genir.renderer.bridge;


import com.genir.renderer.bridge.impl.BufferUtil;

import java.nio.IntBuffer;
import java.util.concurrent.Callable;

import static com.genir.renderer.bridge.impl.Bridge.attribManager;
import static com.genir.renderer.bridge.impl.Bridge.exec;

public class GL40 {
    public static int glGetSubroutineIndex(int program, int shadertype, CharSequence name) {
        record GL40glGetSubroutineIndex(int program, int shadertype, CharSequence name) implements Callable<Integer> {
            @Override
            public Integer call() throws Exception {
                return org.lwjgl.opengl.GL40.glGetSubroutineIndex(program, shadertype, name);
            }
        }
        return exec.get(new GL40glGetSubroutineIndex(program, shadertype, name));
    }

    public static int glGetSubroutineUniformLocation(int program, int shadertype, CharSequence name) {
        record GL40glGetSubroutineUniformLocation(int program, int shadertype, CharSequence name) implements Callable<Integer> {
            @Override
            public Integer call() throws Exception {
                return org.lwjgl.opengl.GL40.glGetSubroutineUniformLocation(program, shadertype, name);
            }
        }
        return exec.get(new GL40glGetSubroutineUniformLocation(program, shadertype, name));
    }

    public static void glUniformSubroutinesu(int shadertype, IntBuffer indices) {
        record GL40glUniformSubroutinesu(int shadertype, IntBuffer indices) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL40.glUniformSubroutinesu(shadertype, indices);
            }
        }
        final IntBuffer snapshot = BufferUtil.snapshot(indices);
        exec.execute(new GL40glUniformSubroutinesu(shadertype, snapshot));
    }

    public static void glPatchParameteri(int pname, int value) {
        record GL40glPatchParameteri(int pname, int value) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL40.glPatchParameteri(pname, value);
            }
        }
        exec.execute(new GL40glPatchParameteri(pname, value));
    }

    public static void glBlendEquationi(int buf, int mode) {
        record GL40glBlendEquationi(int buf, int mode) implements Runnable {
            @Override
            public void run() {
                attribManager.glBlendEquationi(buf, mode);
            }
        }
        exec.execute(new GL40glBlendEquationi(buf, mode));
    }

    public static void glBlendFuncSeparatei(int buf, int srcRGB, int dstRGB, int srcAlpha, int dstAlpha) {
        record GL40glBlendFuncSeparatei(int buf, int srcRGB, int dstRGB, int srcAlpha, int dstAlpha) implements Runnable {
            @Override
            public void run() {
                attribManager.glBlendFuncSeparatei(buf, srcRGB, dstRGB, srcAlpha, dstAlpha);
            }
        }
        exec.execute(new GL40glBlendFuncSeparatei(buf, srcRGB, dstRGB, srcAlpha, dstAlpha));
    }

    public static void glBlendFunci(int buf, int src, int dst) {
        glBlendFuncSeparatei(buf, src, dst, src, dst);
    }
}
