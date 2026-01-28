package com.genir.renderer.bridge;

import org.lwjgl.opengl.ContextCapabilities;

import static com.genir.renderer.bridge.context.ContextManager.getContext;

public class GLContext {
    public static ContextCapabilities getCapabilities() {
        return getContext().glStateCache.getContextCapabilities();
    }
}
