package com.genir.renderer.bridge;


import static com.genir.renderer.bridge.impl.Bridge.exec;

public class GL40 {
    public static int glGetSubroutineIndex(int program, int shadertype, CharSequence name) {
        return exec.get(() -> org.lwjgl.opengl.GL40.glGetSubroutineIndex(program, shadertype, name));
    }

    public static int glGetSubroutineUniformLocation(int program, int shadertype, CharSequence name) {
        return exec.get(() -> org.lwjgl.opengl.GL40.glGetSubroutineUniformLocation(program, shadertype, name));
    }
}
