package com.genir.renderer.bridge;

import org.lwjgl.opengl.ContextCapabilities;

import static com.genir.renderer.bridge.context.ContextManager.getThreadContext;

public class GLContext {
    public static ContextCapabilities getCapabilities() {
        return getThreadContext().glStateCache.getContextCapabilities();
    }
}
