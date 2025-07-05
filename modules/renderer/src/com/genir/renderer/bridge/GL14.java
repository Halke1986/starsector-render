package com.genir.renderer.bridge;

import static com.genir.renderer.bridge.State.interceptor;

public class GL14 {
    public static void glBlendEquation(int mode) {
        if (interceptor != null) {
            interceptor.glBlendEquation(mode);
        } else {
            org.lwjgl.opengl.GL14.glBlendEquation(mode);
        }
    }
}
