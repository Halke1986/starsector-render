package com.genir.renderer.bridge;

import org.lwjgl.LWJGLException;
import org.lwjgl.opengl.DisplayMode;
import org.lwjgl.opengl.PixelFormat;

import java.nio.ByteBuffer;
import java.util.concurrent.Callable;

import static com.genir.renderer.Debug.log;
import static com.genir.renderer.bridge.impl.Bridge.*;

public class Display {
    public static DisplayMode[] getAvailableDisplayModes() {
        record getAvailableDisplayModes() implements Callable<DisplayMode[]> {
            @Override
            public DisplayMode[] call() throws LWJGLException {
                return org.lwjgl.opengl.Display.getAvailableDisplayModes();
            }
        }
        return exec.get(new getAvailableDisplayModes());
    }

    public static int getWidth() {
        record getWidth() implements Callable<Integer> {
            @Override
            public Integer call() {
                return org.lwjgl.opengl.Display.getWidth();
            }
        }
        return exec.get(new getWidth());
    }

    public static int setIcon(ByteBuffer[] icons) {
        record setIcon(ByteBuffer[] icons) implements Callable<Integer> {
            @Override
            public Integer call() {
                return org.lwjgl.opengl.Display.setIcon(icons);
            }
        }
        return exec.get(new setIcon(icons));
    }

    public static DisplayMode getDesktopDisplayMode() {
        record getDesktopDisplayMode() implements Callable<DisplayMode> {
            @Override
            public DisplayMode call() {
                return org.lwjgl.opengl.Display.getDesktopDisplayMode();
            }
        }
        return exec.get(new getDesktopDisplayMode());
    }

    public static DisplayMode getDisplayMode() {
        record getDisplayMode() implements Callable<DisplayMode> {
            @Override
            public DisplayMode call() {
                return org.lwjgl.opengl.Display.getDisplayMode();
            }
        }
        return exec.get(new getDisplayMode());
    }

    public static void setTitle(String newTitle) {
        record setTitle(String newTitle) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.Display.setTitle(newTitle);
            }
        }
        exec.wait(new setTitle(newTitle));
    }

    public static void setVSyncEnabled(boolean sync) {
        record setVSyncEnabled(boolean sync) implements Runnable {
            @Override
            public void run() {
                // Drain OpenGL error queue and log errors. NOTE: As of 0.98a vanilla
                // ignores OpenGL errors and lets setVSyncEnabled drain the error
                // queue and throw an exception.
                try {
                    int err = 0;
                    do {
                        err = org.lwjgl.opengl.GL11.glGetError();
                        if (err != 0) {
                            log("OpenGL error: " + err);
                        }
                    } while (err != 0);
                } catch (Throwable ignored) {
                    // glGetError may throw at application startup,
                    // when called before OpenGL context is created.
                }

                // setVSyncEnabled error does not prevent the application from
                // continuing to work correctly.
                try {
                    org.lwjgl.opengl.Display.setVSyncEnabled(sync);
                } catch (Throwable t) {
                    log("OpenGL setVSyncEnabled error: " + t);
                }
            }
        }
        exec.wait(new setVSyncEnabled(sync));
    }

    public static void create(PixelFormat pixel_format) {
        record create(PixelFormat pixel_format) implements Runnable {
            @Override
            public void run() {
                try {
                    // Clear server attributes when a new display is created.
                    attribManager.clear();
                    org.lwjgl.opengl.Display.create(pixel_format);
                } catch (LWJGLException e) {
                    throw new RuntimeException(e);
                }
            }
        }

        attribTracker.clear();
        exec.wait(new create(pixel_format));
    }

    public static int getHeight() {
        record getHeight() implements Callable<Integer> {
            @Override
            public Integer call() {
                return org.lwjgl.opengl.Display.getHeight();
            }
        }
        return exec.get(new getHeight());
    }

    public static float getPixelScaleFactor() {
        if (stateCache.isAvailable()) {
            return stateCache.getDisplayPixelScaleFactor();
        }

        record getPixelScaleFactor() implements Callable<Float> {
            @Override
            public Float call() {
                return org.lwjgl.opengl.Display.getPixelScaleFactor();
            }
        }
        return exec.get(new getPixelScaleFactor());
    }

    public static void update(boolean processMessages) {
        record update(boolean processMessages) implements Runnable {
            @Override
            public void run() {
                stateCache.update();
                vertexInterceptor.update();
                org.lwjgl.opengl.Display.update(processMessages);
            }
        }
        exec.wait(new update(processMessages));
    }

    public static void update() {
        record update() implements Runnable {
            @Override
            public void run() {
                stateCache.update();
                vertexInterceptor.update();
                org.lwjgl.opengl.Display.update();
            }
        }
        exec.wait(new update());
    }

    public static boolean isCloseRequested() {
        if (stateCache.isAvailable()) {
            return stateCache.getDisplayIsCloseRequested();
        }

        record isCloseRequested() implements Callable<Boolean> {
            @Override
            public Boolean call() {
                return org.lwjgl.opengl.Display.isCloseRequested();
            }
        }
        return exec.get(new isCloseRequested());
    }

    public static boolean isActive() {
        if (stateCache.isAvailable()) {
            return stateCache.getDisplayIsActive();
        }

        record isActive() implements Callable<Boolean> {
            @Override
            public Boolean call() {
                return org.lwjgl.opengl.Display.isActive();
            }
        }
        return exec.get(new isActive());
    }

    public static void destroy() {
        record destroy() implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.Display.destroy();
            }
        }
        exec.wait(new destroy(), true);
    }

    public static boolean isFullscreen() {
        if (stateCache.isAvailable()) {
            return stateCache.getDisplayIsFullscreen();
        }

        record isFullscreen() implements Callable<Boolean> {
            @Override
            public Boolean call() {
                return org.lwjgl.opengl.Display.isFullscreen();
            }
        }
        return exec.get(new isFullscreen());
    }

    public static void setFullscreen(boolean fullscreen) {
        record setFullscreen(boolean fullscreen) implements Runnable {
            @Override
            public void run() {
                try {
                    org.lwjgl.opengl.Display.setFullscreen(fullscreen);
                } catch (LWJGLException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        exec.wait(new setFullscreen(fullscreen));
    }

    public static boolean isVisible() {
        if (stateCache.isAvailable()) {
            return stateCache.getDisplayIsVisible();
        }

        record isVisible() implements Callable<Boolean> {
            @Override
            public Boolean call() {
                return org.lwjgl.opengl.Display.isVisible();
            }
        }
        return exec.get(new isVisible());
    }

    public static void processMessages() {
        record processMessages() implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.Display.processMessages();
            }
        }
        exec.wait(new processMessages());
    }

    public static void sync(int fps) {
        record sync(int fps) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.Display.sync(fps);
            }
        }
        exec.wait(new sync(fps));
    }
}
