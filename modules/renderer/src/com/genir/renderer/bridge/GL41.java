package com.genir.renderer.bridge;

import static com.genir.renderer.bridge.context.Context.context;

public class GL41 {
    public static void glProgramUniform1i(int program, int location, int v0) {
        context.exec.execute(() -> org.lwjgl.opengl.GL41.glProgramUniform1i(program, location, v0));
    }

    public static void glProgramUniform1f(int program, int location, float v0) {
        context.exec.execute(() -> org.lwjgl.opengl.GL41.glProgramUniform1f(program, location, v0));
    }

    public static void glProgramUniform2f(int program, int location, float v0, float v1) {
        context.exec.execute(() -> org.lwjgl.opengl.GL41.glProgramUniform2f(program, location, v0, v1));
    }

    public static void glClearDepthf(float d) {
        context.exec.execute(() -> org.lwjgl.opengl.GL41.glClearDepthf(d));
    }

    public static void glDepthRangef(float n, float f) {
        context.exec.execute(() -> org.lwjgl.opengl.GL41.glDepthRangef(n, f));
    }
}
