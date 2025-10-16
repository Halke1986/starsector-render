package com.genir.renderer.bridge;

import org.lwjgl.opengl.ContextCapabilities;

import static com.genir.renderer.state.AppState.exec;
import static com.genir.renderer.state.AppState.stateCache;

public class GLContext {
    public static ContextCapabilities getCapabilities() {
        if (stateCache.isAvailable()) {
            return stateCache.getContextCapabilities();
        }

        return exec.get(() -> org.lwjgl.opengl.GLContext.getCapabilities());
    }
}
