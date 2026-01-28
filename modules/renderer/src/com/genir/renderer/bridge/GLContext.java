package com.genir.renderer.bridge;

import com.genir.renderer.bridge.context.Context;
import org.lwjgl.opengl.ContextCapabilities;

import static com.genir.renderer.bridge.context.ContextManager.getContext;

public class GLContext {
    public static ContextCapabilities getCapabilities() {
        Context context = getContext();
        return context.glStateCache.getContextCapabilities();
    }
}
