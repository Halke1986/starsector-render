package com.genir.renderer.bridge;

import static com.genir.renderer.bridge.State.intercept;
import static com.genir.renderer.bridge.State.quads;

public class GL14 {
    public static void glBlendEquation(int mode) {
        if (intercept) {
            quads.glBlendEquation(mode);
        } else {
            org.lwjgl.opengl.GL14.glBlendEquation(mode);
        }
    }
}
