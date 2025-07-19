package com.genir.renderer.bridge;


import static com.genir.renderer.bridge.impl.Bridge.exec;

public class GL14 {
    public static void glBlendEquation(int mode) {
        exec.execute(() -> org.lwjgl.opengl.GL14.glBlendEquation(mode));
    }
}
