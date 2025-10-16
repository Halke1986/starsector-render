package com.genir.renderer.bridge;

import org.lwjgl.opengl.ContextCapabilities;

import static com.genir.renderer.state.AppState.state;

public class GLContext {
    public static ContextCapabilities getCapabilities() {
        if (state.glStateCache.isAvailable()) {
            return state.glStateCache.getContextCapabilities();
        }

        return state.exec.get(() -> org.lwjgl.opengl.GLContext.getCapabilities());
    }
}
