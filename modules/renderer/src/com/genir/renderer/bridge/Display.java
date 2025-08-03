package com.genir.renderer.bridge;

import com.genir.renderer.bridge.impl.Bridge;
import org.lwjgl.LWJGLException;
import org.lwjgl.opengl.DisplayMode;
import org.lwjgl.opengl.PixelFormat;

import java.nio.ByteBuffer;

import static com.genir.renderer.bridge.impl.Bridge.*;

public class Display {
    public static DisplayMode[] getAvailableDisplayModes() throws LWJGLException {
        return exec.get(() -> org.lwjgl.opengl.Display.getAvailableDisplayModes());
    }

    public static int getWidth() {
        return exec.get(() -> org.lwjgl.opengl.Display.getWidth());
    }

    public static int setIcon(ByteBuffer[] icons) {
        return exec.get(() -> org.lwjgl.opengl.Display.setIcon(icons));
    }

    public static DisplayMode getDesktopDisplayMode() {
        return exec.get(() -> org.lwjgl.opengl.Display.getDesktopDisplayMode());
    }

    public static DisplayMode getDisplayMode() {
        return exec.get(() -> org.lwjgl.opengl.Display.getDisplayMode());
    }

    public static void setTitle(String newTitle) {
        exec.wait(() -> org.lwjgl.opengl.Display.setTitle(newTitle));
    }

    public static void setFullscreen(boolean fullscreen) throws LWJGLException {
        exec.wait(() -> {
            try {
                org.lwjgl.opengl.Display.setFullscreen(fullscreen);
            } catch (LWJGLException e) {
                throw new RuntimeException(e);
            }
        });
    }

    public static void setVSyncEnabled(boolean sync) {
        exec.wait(() -> org.lwjgl.opengl.Display.setVSyncEnabled(sync));
    }

    public static void create(PixelFormat pixel_format) throws LWJGLException {
        attribTracker.clear();

        exec.wait(() -> {
            try {
                org.lwjgl.opengl.Display.create(pixel_format);
            } catch (LWJGLException e) {
                throw new RuntimeException(e);
            }
        });
    }

    public static int getHeight() {
        return exec.get(() -> org.lwjgl.opengl.Display.getHeight());
    }

    public static float getPixelScaleFactor() {
        if (stateCache.isAvailable()) {
            return stateCache.getDisplayPixelScaleFactor();
        }

        return exec.get(() -> org.lwjgl.opengl.Display.getPixelScaleFactor());
    }

    public static void update(boolean processMessages) {
        exec.barrier(() -> {
            org.lwjgl.opengl.Display.update(processMessages);
            Bridge.update();
        });
    }

    public static void update() {
        exec.barrier(() -> {
            org.lwjgl.opengl.Display.update();
            Bridge.update();
        });
    }

    public static boolean isCloseRequested() {
        if (stateCache.isAvailable()) {
            return stateCache.getDisplayIsCloseRequested();
        }

        return exec.get(() -> org.lwjgl.opengl.Display.isCloseRequested());
    }

    public static boolean isActive() {
        if (stateCache.isAvailable()) {
            return stateCache.getDisplayIsActive();
        }

        return exec.get(() -> org.lwjgl.opengl.Display.isActive());
    }

    public static void destroy() {
        exec.wait(() -> org.lwjgl.opengl.Display.destroy());
    }

    public static boolean isFullscreen() {
        if (stateCache.isAvailable()) {
            return stateCache.getDisplayIsFullscreen();
        }

        return exec.get(() -> org.lwjgl.opengl.Display.isFullscreen());
    }

    public static boolean isVisible() {
        if (stateCache.isAvailable()) {
            return stateCache.getDisplayIsVisible();
        }

        return exec.get(() -> org.lwjgl.opengl.Display.isVisible());
    }

    public static void processMessages() {
        exec.wait(() -> org.lwjgl.opengl.Display.processMessages());
    }

    public static void sync(int fps) {
        exec.wait(() -> org.lwjgl.opengl.Display.sync(fps));
    }
}
