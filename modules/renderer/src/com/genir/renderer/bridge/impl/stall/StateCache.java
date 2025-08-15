package com.genir.renderer.bridge.impl.stall;

import org.lwjgl.opengl.ContextCapabilities;
import org.lwjgl.opengl.Display;
import org.lwjgl.opengl.GL11;
import org.lwjgl.opengl.GLContext;

public class StateCache {
    private boolean initialized = false;

    private float displayPixelScaleFactor;
    private boolean displayIsActive;
    private boolean displayIsVisible;
    private boolean displayIsFullscreen;
    private boolean displayIsCloseRequested;
    private String glStringExtensions;
    private ContextCapabilities contextCapabilities;

    public boolean isAvailable() {
        // Inactive displays use stale cache, causing a black screen on reactivation.
        // Starsector never updates the cache while inactive.
        return initialized && displayIsActive;
    }

    public float getDisplayPixelScaleFactor() {
        return displayPixelScaleFactor;
    }

    public boolean getDisplayIsActive() {
        return displayIsActive;
    }

    public boolean getDisplayIsVisible() {
        return displayIsVisible;
    }

    public boolean getDisplayIsFullscreen() {
        return displayIsFullscreen;
    }

    public boolean getDisplayIsCloseRequested() {
        return displayIsCloseRequested;
    }

    public String getGlStringExtensions() {
        return glStringExtensions;
    }

    public ContextCapabilities getContextCapabilities() {
        return contextCapabilities;
    }

    // Run by rendering thread.
    public void update() {
        displayPixelScaleFactor = Display.getPixelScaleFactor();
        displayIsActive = Display.isActive();
        displayIsVisible = Display.isVisible();
        displayIsFullscreen = Display.isFullscreen();
        displayIsCloseRequested = Display.isCloseRequested();
        glStringExtensions = GL11.glGetString(GL11.GL_EXTENSIONS);
        contextCapabilities = GLContext.getCapabilities();

        initialized = true;
    }
}
