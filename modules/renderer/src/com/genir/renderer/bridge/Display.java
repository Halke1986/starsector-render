package com.genir.renderer.bridge;

import com.genir.renderer.bridge.impl.Bridge;
import org.lwjgl.LWJGLException;
import org.lwjgl.opengl.DisplayMode;
import org.lwjgl.opengl.PixelFormat;

import java.nio.ByteBuffer;
import java.util.concurrent.Future;

import static com.genir.renderer.Debug.log;
import static com.genir.renderer.bridge.impl.Bridge.*;

public class Display {
    private static Future<?> prevFrameFinished = null;

    public static void update(boolean processMessages) {
        try {
            if (prevFrameFinished != null) {
                prevFrameFinished.get();
            }

            stallDetector.update();

            // Swap OpenGL buffers and update the bridge state.
            // Ideally, these would run on the render thread synchronously
            // to avoid concurrency issues. However, profiling showed a ~5%
            // performance penalty from lock contention when blocking.
            // To avoid this, the update is executed asynchronously.
            prevFrameFinished = exec.submit(() -> {
                Bridge.update();
                org.lwjgl.opengl.Display.update(processMessages);
            });
        } catch (RuntimeException e) {
            throw e;
        } catch (Throwable t) {
            throw new RuntimeException(t);
        }
    }

    public static void update() {
        update(true);
    }

    public static DisplayMode[] getAvailableDisplayModes() {
        return exec.get(() -> org.lwjgl.opengl.Display.getAvailableDisplayModes());
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

    public static void setVSyncEnabled(boolean sync) {
        exec.wait(() -> {
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
            } catch (RuntimeException e) {
                throw e;
            } catch (Throwable t) {
                throw new RuntimeException(t);
            }
        });
    }

    public static void create(PixelFormat pixel_format) {
        attribTracker.clear();
        prevFrameFinished = null;

        exec.wait(() -> {
            try {
                org.lwjgl.opengl.Display.create(pixel_format);

                // Clear server attributes when a new display is created.
                attribManager.clear();
                Bridge.update();
            } catch (RuntimeException e) {
                throw e;
            } catch (Throwable t) {
                throw new RuntimeException(t);
            }
        });
    }

    public static int getHeight() {
        if (stateCache.isAvailable()) {
            return stateCache.getDisplayHeight();
        }

        return exec.get(() -> org.lwjgl.opengl.Display.getHeight());
    }

    public static int getWidth() {
        if (stateCache.isAvailable()) {
            return stateCache.getDisplayWidth();
        }

        return exec.get(() -> org.lwjgl.opengl.Display.getWidth());
    }

    public static float getPixelScaleFactor() {
        if (stateCache.isAvailable()) {
            return stateCache.getDisplayPixelScaleFactor();
        }

        return exec.get(() -> org.lwjgl.opengl.Display.getPixelScaleFactor());
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
        exec.wait(() -> org.lwjgl.opengl.Display.destroy(), true);
    }

    public static boolean isFullscreen() {
        if (stateCache.isAvailable()) {
            return stateCache.getDisplayIsFullscreen();
        }

        return exec.get(() -> org.lwjgl.opengl.Display.isFullscreen());
    }

    public static void setFullscreen(boolean fullscreen) {
        exec.wait(() -> {
            try {
                org.lwjgl.opengl.Display.setFullscreen(fullscreen);
            } catch (LWJGLException e) {
                throw new RuntimeException(e);
            }
        });
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
        exec.execute(() -> org.lwjgl.opengl.Display.sync(fps));
    }
}
