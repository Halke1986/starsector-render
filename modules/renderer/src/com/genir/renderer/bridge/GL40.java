package com.genir.renderer.bridge;


import com.genir.renderer.bridge.impl.BufferUtil;

import java.nio.IntBuffer;

import static com.genir.renderer.bridge.impl.Bridge.attribManager;
import static com.genir.renderer.bridge.impl.Bridge.exec;

public class GL40 {
    public static int glGetSubroutineIndex(int program, int shadertype, CharSequence name) {
        return exec.get(() -> org.lwjgl.opengl.GL40.glGetSubroutineIndex(program, shadertype, name));
    }

    public static int glGetSubroutineUniformLocation(int program, int shadertype, CharSequence name) {
        return exec.get(() -> org.lwjgl.opengl.GL40.glGetSubroutineUniformLocation(program, shadertype, name));
    }

    public static void glUniformSubroutinesu(int shadertype, IntBuffer indices) {
        final IntBuffer snapshot = BufferUtil.snapshot(indices);
        exec.execute(() -> org.lwjgl.opengl.GL40.glUniformSubroutinesu(shadertype, snapshot));
    }

    public static void glPatchParameteri(int pname, int value) {
        exec.execute(() -> org.lwjgl.opengl.GL40.glPatchParameteri(pname, value));
    }

    public static void glBlendEquationi(int buf, int mode) {
        exec.execute(() -> attribManager.glBlendEquationi(buf, mode));
    }

    public static void glBlendFuncSeparatei(int buf, int srcRGB, int dstRGB, int srcAlpha, int dstAlpha) {
        exec.execute(() -> attribManager.glBlendFuncSeparatei(buf, srcRGB, dstRGB, srcAlpha, dstAlpha));
    }

    public static void glBlendFunci(int buf, int src, int dst) {
        glBlendFuncSeparatei(buf, src, dst, src, dst);
    }
}
