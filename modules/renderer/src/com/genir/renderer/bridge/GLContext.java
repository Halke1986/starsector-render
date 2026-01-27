package com.genir.renderer.bridge;

import org.lwjgl.opengl.ContextCapabilities;

import static com.genir.renderer.bridge.context.AppState.state;

public class GLContext {
    public static ContextCapabilities getCapabilities() {
        return state.glStateCache.getContextCapabilities();
    }
}
