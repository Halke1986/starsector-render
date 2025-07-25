package com.genir.renderer.bridge;


import static com.genir.renderer.bridge.impl.Bridge.recordOrExecute;

public class GL14 {
    public static void glBlendEquation(int mode) {
        recordOrExecute(() -> org.lwjgl.opengl.GL14.glBlendEquation(mode));
    }
}
