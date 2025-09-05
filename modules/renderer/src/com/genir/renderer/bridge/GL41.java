package com.genir.renderer.bridge;


import static com.genir.renderer.bridge.impl.Bridge.exec;

public class GL41 {
    public static void glProgramUniform1i(int program, int location, int v0) {
        exec.execute(() -> org.lwjgl.opengl.GL41.glProgramUniform1i(program, location, v0));
    }
}
