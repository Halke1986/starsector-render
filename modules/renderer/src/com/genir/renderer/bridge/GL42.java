package com.genir.renderer.bridge;


import static com.genir.renderer.bridge.impl.Bridge.exec;

public class GL42 {
    public static void glMemoryBarrier(int barriers) {
        exec.execute(() -> org.lwjgl.opengl.GL42.glMemoryBarrier(barriers));
    }
}
