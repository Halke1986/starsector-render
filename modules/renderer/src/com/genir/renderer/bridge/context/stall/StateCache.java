package com.genir.renderer.bridge.context.stall;

import org.lwjgl.opengl.ContextCapabilities;
import org.lwjgl.opengl.Display;
import org.lwjgl.opengl.GL11;
import org.lwjgl.opengl.GLContext;

import java.util.HashMap;
import java.util.Map;

public class StateCache {
    private float displayPixelScaleFactor;
    private boolean displayIsActive;
    private boolean displayIsVisible;
    private boolean displayIsFullscreen;
    private boolean displayIsCloseRequested;
    private int displayWidth;
    private int displayHeight;
    private int displayX;
    private int displayY;
    private String glStringExtensions;
    private ContextCapabilities contextCapabilities;
    private final Map<Integer, Integer> otherIntegers = new HashMap<>();

    synchronized public float getDisplayPixelScaleFactor() {
        return displayPixelScaleFactor;
    }

    synchronized public boolean getDisplayIsActive() {
        return displayIsActive;
    }

    synchronized public boolean getDisplayIsVisible() {
        return displayIsVisible;
    }

    synchronized public boolean getDisplayIsFullscreen() {
        return displayIsFullscreen;
    }

    synchronized public boolean getDisplayIsCloseRequested() {
        return displayIsCloseRequested;
    }

    synchronized public int getDisplayWidth() {
        return displayWidth;
    }

    synchronized public int getDisplayHeight() {
        return displayHeight;
    }

    synchronized public int getDisplayX() {
        return displayX;
    }

    synchronized public int getDisplayY() {
        return displayY;
    }

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

    synchronized public void update() { // Render thread
        displayPixelScaleFactor = Display.getPixelScaleFactor();
        displayIsActive = Display.isActive();
        displayIsVisible = Display.isVisible();
        displayIsFullscreen = Display.isFullscreen();
        displayIsCloseRequested = Display.isCloseRequested();
        displayWidth = Display.getWidth();
        displayHeight = Display.getHeight();
        displayX = Display.getX();
        displayY = Display.getY();
        glStringExtensions = GL11.glGetString(GL11.GL_EXTENSIONS);
        contextCapabilities = GLContext.getCapabilities();

        for (var entry : otherIntegers.entrySet()) {
            Integer key = entry.getKey();
            otherIntegers.put(key, GL11.glGetInteger(key));
        }
    }
}
