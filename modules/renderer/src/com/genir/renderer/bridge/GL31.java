package com.genir.renderer.bridge;


import static com.genir.renderer.bridge.impl.Bridge.attribManager;
import static com.genir.renderer.bridge.impl.Bridge.exec;

public class GL31 {
    public static void glDrawArraysInstanced(int mode, int first, int count, int primcount) {
        exec.execute(() -> {
            attribManager.applyEnableAndColorBufferBit();
            org.lwjgl.opengl.GL31.glDrawArraysInstanced(mode, first, count, primcount);
        });
    }

    public static void glTexBuffer(int target, int internalformat, int buffer) {
        exec.execute(() -> org.lwjgl.opengl.GL31.glTexBuffer(target, internalformat, buffer));
    }

    public static int glGetUniformBlockIndex(int program, CharSequence uniformBlockName) {
        return exec.get(() -> org.lwjgl.opengl.GL31.glGetUniformBlockIndex(program, uniformBlockName));
    }

    public static void glUniformBlockBinding(int program, int uniformBlockIndex, int uniformBlockBinding) {
        exec.execute(() -> org.lwjgl.opengl.GL31.glUniformBlockBinding(program, uniformBlockIndex, uniformBlockBinding));
    }
}
