package com.genir.renderer.bridge;


import static com.genir.renderer.bridge.impl.Bridge.exec;

public class GL43 {
    public static int glGetProgramResourceIndex(int program, int programInterface, CharSequence name) {
        return exec.get(() -> org.lwjgl.opengl.GL43.glGetProgramResourceIndex(program, programInterface, name));
    }

    public static void glShaderStorageBlockBinding(int program, int storageBlockIndex, int storageBlockBinding) {
        exec.execute(() -> org.lwjgl.opengl.GL43.glShaderStorageBlockBinding(program, storageBlockIndex, storageBlockBinding));
    }
}
