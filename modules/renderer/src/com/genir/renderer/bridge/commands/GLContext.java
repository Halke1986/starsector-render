package com.genir.renderer.bridge.commands;

import com.genir.renderer.bridge.context.ContextManager;
import org.lwjgl.opengl.ContextCapabilities;

public class GLContext {
    public static ContextCapabilities getCapabilities() {
        return ContextManager.getThreadContext().glStateCache.getContextCapabilities();
    }
}
