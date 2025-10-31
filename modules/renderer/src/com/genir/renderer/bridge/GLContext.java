package com.genir.renderer.bridge;

import org.lwjgl.opengl.ContextCapabilities;

import static com.genir.renderer.state.AppState.state;

public class GLContext {
    public static ContextCapabilities getCapabilities() {
        return state.glStateCache.getContextCapabilities();
    }
}
