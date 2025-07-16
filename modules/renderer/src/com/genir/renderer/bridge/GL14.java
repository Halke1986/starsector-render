package com.genir.renderer.bridge;

import static com.genir.renderer.bridge.Bridge.process;

public class GL14 {
    public static void glBlendEquation(int mode) {
        process(() -> org.lwjgl.opengl.GL14.glBlendEquation(mode));
    }
}
