package com.genir.renderer.bridge;

import org.lwjgl.LWJGLException;
import org.lwjgl.opengl.DisplayMode;
import org.lwjgl.opengl.PixelFormat;

import java.nio.ByteBuffer;

public class Display {
    public static DisplayMode[] getAvailableDisplayModes() throws LWJGLException {
        return org.lwjgl.opengl.Display.getAvailableDisplayModes();
    }

    public static int getWidth() {
        return org.lwjgl.opengl.Display.getWidth();
    }

    public static int setIcon(ByteBuffer[] icons) {
        return org.lwjgl.opengl.Display.setIcon(icons);
    }

    public static DisplayMode getDesktopDisplayMode() {
        return org.lwjgl.opengl.Display.getDesktopDisplayMode();
    }

    public static DisplayMode getDisplayMode() {
        return org.lwjgl.opengl.Display.getDisplayMode();
    }

    public static void setTitle(String newTitle) {
        org.lwjgl.opengl.Display.setTitle(newTitle);
    }

    public static void setFullscreen(boolean fullscreen) throws LWJGLException {
        org.lwjgl.opengl.Display.setFullscreen(fullscreen);
    }

    public static void setVSyncEnabled(boolean sync) {
        org.lwjgl.opengl.Display.setVSyncEnabled(sync);
    }

    public static void create(PixelFormat pixel_format) throws LWJGLException {
        org.lwjgl.opengl.Display.create(pixel_format);
    }

    public static int getHeight() {
        return org.lwjgl.opengl.Display.getHeight();
    }

    public static float getPixelScaleFactor() {
        return org.lwjgl.opengl.Display.getPixelScaleFactor();
    }

    public static void update(boolean processMessages) {
        org.lwjgl.opengl.Display.update(processMessages);
    }

    public static boolean isCloseRequested() {
        return org.lwjgl.opengl.Display.isCloseRequested();
    }

    public static boolean isActive() {
        return org.lwjgl.opengl.Display.isActive();
    }

    public static void destroy() {
        org.lwjgl.opengl.Display.destroy();
    }

    public static void update() {
        org.lwjgl.opengl.Display.update();
    }

    public static boolean isFullscreen() {
        return org.lwjgl.opengl.Display.isFullscreen();
    }

    public static boolean isVisible() {
        return org.lwjgl.opengl.Display.isVisible();
    }
}
