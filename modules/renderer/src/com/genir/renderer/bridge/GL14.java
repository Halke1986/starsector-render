package com.genir.renderer.bridge;

import static com.genir.renderer.bridge.Bridge.vertexInterceptor;
import static com.genir.renderer.bridge.Bridge.renderContext;

public class GL14 {
    public static void glBlendEquation(int mode) {
        renderContext.glBlendEquation(mode);

        if (vertexInterceptor == null) {
            org.lwjgl.opengl.GL14.glBlendEquation(mode);
        }
    }
}
