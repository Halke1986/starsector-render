package com.genir.renderer.bridge.context.stall;

import org.lwjgl.opengl.ContextCapabilities;
import org.lwjgl.opengl.GL11;
import org.lwjgl.opengl.GLContext;

import java.util.HashMap;
import java.util.Map;

public class StateCache {
    private String glStringExtensions;
    private ContextCapabilities contextCapabilities;
    private final Map<Integer, Integer> otherIntegers = new HashMap<>();
    private final Map<Integer, String> otherStrings = new HashMap<>();

    synchronized public String getGlStringExtensions() {
        return glStringExtensions;
    }

    synchronized public ContextCapabilities getContextCapabilities() {
        return contextCapabilities;
    }

    // NOTE: getOtherInteger will return null when
    // asked for a given pname for the first time.
    synchronized public Integer getOtherInteger(int pname) {
        Integer value = otherIntegers.get(pname);

        // The parameter is requested for the first time.
        // Register it, so it's updated during subsequent cache updates.
        if (value == null) {
            otherIntegers.put(pname, null);
            return null;
        }

        return value;
    }

    // NOTE: getOtherString will return null when
    // asked for a given pname for the first time.
    synchronized public String getOtherString(int pname) {
        String value = otherStrings.get(pname);

        // The parameter is requested for the first time.
        // Register it, so it's updated during subsequent cache updates.
        if (value == null) {
            otherStrings.put(pname, null);
            return null;
        }

        return value;
    }

    synchronized public void update() { // Render thread
        glStringExtensions = GL11.glGetString(GL11.GL_EXTENSIONS);
        contextCapabilities = GLContext.getCapabilities();

        for (var entry : otherIntegers.entrySet()) {
            Integer key = entry.getKey();
            otherIntegers.put(key, GL11.glGetInteger(key));
        }

        for (var entry : otherStrings.entrySet()) {
            Integer key = entry.getKey();
            otherStrings.put(key, GL11.glGetString(key));
        }
    }
}
