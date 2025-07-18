package com.genir.renderer.bridge;

import org.lwjgl.opengl.ContextCapabilities;

import static com.genir.renderer.bridge.impl.State.exec;

public class GLContext {
    public static ContextCapabilities getCapabilities() {
        return exec.get(() -> org.lwjgl.opengl.GLContext.getCapabilities());
    }
}
