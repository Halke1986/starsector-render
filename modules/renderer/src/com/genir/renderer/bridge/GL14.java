package com.genir.renderer.bridge;

import static com.genir.renderer.bridge.Bridge.interceptActive;
import static com.genir.renderer.bridge.Bridge.renderContext;

public class GL14 {
    public static void glBlendEquation(int mode) {
        renderContext.glBlendEquation(mode);

        if (!interceptActive) {
            org.lwjgl.opengl.GL14.glBlendEquation(mode);
        }
    }
}
