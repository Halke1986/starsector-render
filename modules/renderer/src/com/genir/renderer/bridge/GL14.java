package com.genir.renderer.bridge;

import static com.genir.renderer.bridge.Bridge.intercept;
import static com.genir.renderer.bridge.Bridge.state;

public class GL14 {
    public static void glBlendEquation(int mode) {
        if (intercept) {
            state.glBlendEquation(mode);
        } else {
            org.lwjgl.opengl.GL14.glBlendEquation(mode);
        }
    }
}
