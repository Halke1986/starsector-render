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
    private int displayWidth;
    private int displayHeight;

    private String glStringExtensions;
    private ContextCapabilities contextCapabilities;

    synchronized public boolean isAvailable() {
        // Inactive displays use stale cache, causing a black screen on reactivation.
        // Starsector never updates the display while inactive.
        return initialized && displayIsActive;
    }

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

    synchronized public String getGlStringExtensions() {
        return glStringExtensions;
    }

    synchronized public ContextCapabilities getContextCapabilities() {
        return contextCapabilities;
    }

    synchronized public void update() { // Render thread
        displayPixelScaleFactor = Display.getPixelScaleFactor();
        displayIsActive = Display.isActive();
        displayIsVisible = Display.isVisible();
        displayIsFullscreen = Display.isFullscreen();
        displayIsCloseRequested = Display.isCloseRequested();
        displayWidth = Display.getWidth();
        displayHeight = Display.getHeight();
        glStringExtensions = GL11.glGetString(GL11.GL_EXTENSIONS);
        contextCapabilities = GLContext.getCapabilities();

        initialized = true;
    }
}
