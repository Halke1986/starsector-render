package com.genir.renderer.bridge;


import com.genir.renderer.bridge.impl.BufferUtil;

import java.nio.IntBuffer;

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
}
