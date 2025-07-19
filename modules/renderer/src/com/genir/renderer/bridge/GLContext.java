package com.genir.renderer.bridge;

import org.lwjgl.opengl.ContextCapabilities;

import static com.genir.renderer.bridge.impl.State.exec;

public class GLContext {
    // MagicLib calls getCapabilities in EveryFrameCombatPlugin advance.
    // Assume the capabilities do not change and cache them to avoid pipeline stalls.
    private static ContextCapabilities contextCapabilitiesCache;

    public static ContextCapabilities getCapabilities() {
        if (contextCapabilitiesCache != null) {
            return contextCapabilitiesCache;
        }

        contextCapabilitiesCache = exec.get(() -> org.lwjgl.opengl.GLContext.getCapabilities());
        return contextCapabilitiesCache;
    }
}
