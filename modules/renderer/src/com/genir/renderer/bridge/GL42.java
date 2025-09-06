package com.genir.renderer.bridge;


import static com.genir.renderer.bridge.impl.Bridge.exec;

public class GL42 {
    public static void glMemoryBarrier(int barriers) {
        exec.execute(() -> org.lwjgl.opengl.GL42.glMemoryBarrier(barriers));
    }

    public static void glBindImageTexture(int unit, int texture, int level, boolean layered, int layer, int access, int format) {
        exec.execute(() -> org.lwjgl.opengl.GL42.glBindImageTexture(unit, texture, level, layered, layer, access, format));
    }

    public static void glTexStorage2D(int target, int levels, int internalformat, int width, int height) {
        exec.execute(() -> org.lwjgl.opengl.GL42.glTexStorage2D(target, levels, internalformat, width, height));
    }

}
