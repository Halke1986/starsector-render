package com.genir.renderer.bridge;

import org.lwjgl.opengl.ContextCapabilities;

import static com.genir.renderer.bridge.context.ContextManager.context;

public class GLContext {
    public static ContextCapabilities getCapabilities() {
        return context.glStateCache.getContextCapabilities();
    }
}
