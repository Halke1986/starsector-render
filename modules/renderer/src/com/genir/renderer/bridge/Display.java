package com.genir.renderer.bridge;

import org.lwjgl.LWJGLException;
import org.lwjgl.opengl.DisplayMode;
import org.lwjgl.opengl.PixelFormat;

import java.nio.ByteBuffer;

import static com.genir.renderer.bridge.impl.State.exec;

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
        return exec.get(() -> org.lwjgl.opengl.Display.getPixelScaleFactor());
    }

    public static void update(boolean processMessages) {
        exec.wait(() -> org.lwjgl.opengl.Display.update(processMessages));
    }

    public static boolean isCloseRequested() {
        return exec.get(() -> org.lwjgl.opengl.Display.isCloseRequested());
    }

    public static boolean isActive() {
        return exec.get(() -> org.lwjgl.opengl.Display.isActive());
    }

    public static void destroy() {
        exec.wait(() -> org.lwjgl.opengl.Display.destroy());
    }

    public static void update() {
        exec.wait(() -> org.lwjgl.opengl.Display.update());
    }

    public static boolean isFullscreen() {
        return exec.get(() -> org.lwjgl.opengl.Display.isFullscreen());
    }

    public static boolean isVisible() {
        return exec.get(() -> org.lwjgl.opengl.Display.isVisible());
    }
}
