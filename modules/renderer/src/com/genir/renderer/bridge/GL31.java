package com.genir.renderer.bridge;


import static com.genir.renderer.bridge.impl.Bridge.attribManager;
import static com.genir.renderer.bridge.impl.Bridge.exec;

public class GL31 {
    public static void glDrawArraysInstanced(int mode, int first, int count, int primcount) {
        exec.execute(() -> {
            attribManager.applyDrawAttribs();
            org.lwjgl.opengl.GL31.glDrawArraysInstanced(mode, first, count, primcount);
        });
    }

    public static void glDrawElementsInstanced(int mode, int indices_count, int type, long indices_buffer_offset, int primcount) {
        exec.execute(() -> {
            attribManager.applyDrawAttribs();
            org.lwjgl.opengl.GL31.glDrawElementsInstanced(mode, indices_count, type, indices_buffer_offset, primcount);
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

    public static int glGetActiveUniformBlocki(int program, int uniformBlockIndex, int pname) {
        return exec.get(() -> org.lwjgl.opengl.GL31.glGetActiveUniformBlocki(program, uniformBlockIndex, pname));
    }
}
