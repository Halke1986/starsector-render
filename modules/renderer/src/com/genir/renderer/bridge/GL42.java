package com.genir.renderer.bridge;


import static com.genir.renderer.bridge.impl.Bridge.exec;

public class GL42 {
    public static void glMemoryBarrier(int barriers) {
        record GL42glMemoryBarrier(int barriers) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL42.glMemoryBarrier(barriers);
            }
        }
        exec.execute(new GL42glMemoryBarrier(barriers));
    }

    public static void glBindImageTexture(int unit, int texture, int level, boolean layered, int layer, int access, int format) {
        record GL42glBindImageTexture(int unit, int texture, int level, boolean layered, int layer, int access, int format) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL42.glBindImageTexture(unit, texture, level, layered, layer, access, format);
            }
        }
        exec.execute(new GL42glBindImageTexture(unit, texture, level, layered, layer, access, format));
    }

    public static void glTexStorage2D(int target, int levels, int internalformat, int width, int height) {
        record GL42glTexStorage2D(int target, int levels, int internalformat, int width, int height) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL42.glTexStorage2D(target, levels, internalformat, width, height);
            }
        }
        exec.execute(new GL42glTexStorage2D(target, levels, internalformat, width, height));
    }

}
