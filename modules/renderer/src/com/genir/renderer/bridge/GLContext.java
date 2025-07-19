package com.genir.renderer.bridge;

import org.lwjgl.opengl.ContextCapabilities;

import static com.genir.renderer.bridge.impl.Bridge.exec;
import static com.genir.renderer.bridge.impl.Bridge.stateCache;

public class GLContext {
    public static ContextCapabilities getCapabilities() {
        if (stateCache.isInitialized()) {
            return stateCache.getContextCapabilities();
        }

        return exec.get(() -> org.lwjgl.opengl.GLContext.getCapabilities());
    }
}
