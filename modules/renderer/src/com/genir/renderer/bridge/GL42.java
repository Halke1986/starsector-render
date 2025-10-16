package com.genir.renderer.bridge;


import static com.genir.renderer.bridge.impl.AppState.exec;

public class GL42 {
    public static void glMemoryBarrier(int barriers) {
        record glMemoryBarrier(int barriers) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL42.glMemoryBarrier(barriers);
            }
        }
        exec.execute(new glMemoryBarrier(barriers));
    }

    public static void glBindImageTexture(int unit, int texture, int level, boolean layered, int layer, int access, int format) {
        record glBindImageTexture(int unit, int texture, int level, boolean layered, int layer, int access, int format) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL42.glBindImageTexture(unit, texture, level, layered, layer, access, format);
            }
        }
        exec.execute(new glBindImageTexture(unit, texture, level, layered, layer, access, format));
    }

    public static void glTexStorage2D(int target, int levels, int internalformat, int width, int height) {
        record glTexStorage2D(int target, int levels, int internalformat, int width, int height) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL42.glTexStorage2D(target, levels, internalformat, width, height);
            }
        }
        exec.execute(new glTexStorage2D(target, levels, internalformat, width, height));
    }

}
