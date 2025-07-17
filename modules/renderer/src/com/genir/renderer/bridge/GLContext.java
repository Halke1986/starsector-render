package com.genir.renderer.bridge;

import org.lwjgl.opengl.ContextCapabilities;

public class GLContext {
    public static ContextCapabilities getCapabilities() {
        return org.lwjgl.opengl.GLContext.getCapabilities();
    }
}
