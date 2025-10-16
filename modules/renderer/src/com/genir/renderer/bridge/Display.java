package com.genir.renderer.bridge;

import com.genir.renderer.bridge.impl.AppState;
import org.lwjgl.LWJGLException;
import org.lwjgl.opengl.DisplayMode;
import org.lwjgl.opengl.Drawable;
import org.lwjgl.opengl.PixelFormat;

import java.nio.ByteBuffer;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;

import static com.genir.renderer.Debug.log;
import static com.genir.renderer.bridge.impl.AppState.*;

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
            record update(boolean processMessages) implements Runnable {
                @Override
                public void run() {
                    AppState.update();
                    org.lwjgl.opengl.Display.update(processMessages);
                }
            }
            prevFrameFinished = exec.submit(new update(processMessages));
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
        record getAvailableDisplayModes() implements Callable<DisplayMode[]> {
            @Override
            public DisplayMode[] call() throws Exception {
                return org.lwjgl.opengl.Display.getAvailableDisplayModes();
            }
        }
        return exec.get(new getAvailableDisplayModes());
    }

    public static int setIcon(ByteBuffer[] icons) {
        record setIcon(ByteBuffer[] icons) implements Callable<Integer> {
            @Override
            public Integer call() throws Exception {
                return org.lwjgl.opengl.Display.setIcon(icons);
            }
        }
        return exec.get(new setIcon(icons));
    }

    public static DisplayMode getDesktopDisplayMode() {
        record getDesktopDisplayMode() implements Callable<DisplayMode> {
            @Override
            public DisplayMode call() throws Exception {
                return org.lwjgl.opengl.Display.getDesktopDisplayMode();
            }
        }
        return exec.get(new getDesktopDisplayMode());
    }

    public static DisplayMode getDisplayMode() {
        record getDisplayMode() implements Callable<DisplayMode> {
            @Override
            public DisplayMode call() throws Exception {
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
                } catch (RuntimeException e) {
                    throw e;
                } catch (Throwable t) {
                    throw new RuntimeException(t);
                }
            }
        }
        exec.wait(new setVSyncEnabled(sync));
    }

    public static void create(PixelFormat pixel_format) {
        attribTracker.clear();
        prevFrameFinished = null;

        record create(PixelFormat pixel_format) implements Runnable {
            @Override
            public void run() {
                try {
                    org.lwjgl.opengl.Display.create(pixel_format);

                    // Clear server attributes when a new display is created.
                    attribManager.clear();
                    AppState.update();
                } catch (RuntimeException e) {
                    throw e;
                } catch (Throwable t) {
                    throw new RuntimeException(t);
                }
            }
        }
        exec.wait(new create(pixel_format));
    }

    public static int getHeight() {
        if (stateCache.isAvailable()) {
            return stateCache.getDisplayHeight();
        }

        record getHeight() implements Callable<Integer> {
            @Override
            public Integer call() throws Exception {
                return org.lwjgl.opengl.Display.getHeight();
            }
        }
        return exec.get(new getHeight());
    }

    public static int getWidth() {
        if (stateCache.isAvailable()) {
            return stateCache.getDisplayWidth();
        }

        record getWidth() implements Callable<Integer> {
            @Override
            public Integer call() throws Exception {
                return org.lwjgl.opengl.Display.getWidth();
            }
        }
        return exec.get(new getWidth());
    }

    public static float getPixelScaleFactor() {
        if (stateCache.isAvailable()) {
            return stateCache.getDisplayPixelScaleFactor();
        }

        record getPixelScaleFactor() implements Callable<Float> {
            @Override
            public Float call() throws Exception {
                return org.lwjgl.opengl.Display.getPixelScaleFactor();
            }
        }
        return exec.get(new getPixelScaleFactor());
    }

    public static boolean isCloseRequested() {
        if (stateCache.isAvailable()) {
            return stateCache.getDisplayIsCloseRequested();
        }

        record isCloseRequested() implements Callable<Boolean> {
            @Override
            public Boolean call() throws Exception {
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
            public Boolean call() throws Exception {
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
            public Boolean call() throws Exception {
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
            public Boolean call() throws Exception {
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
        exec.execute(new sync(fps));
    }

    public static int getX() {
        if (stateCache.isAvailable()) {
            return stateCache.getDisplayX();
        }

        record getX() implements Callable<Integer> {
            @Override
            public Integer call() throws Exception {
                return org.lwjgl.opengl.Display.getX();
            }
        }
        return exec.get(new getX());
    }

    public static int getY() {
        if (stateCache.isAvailable()) {
            return stateCache.getDisplayY();
        }

        record getY() implements Callable<Integer> {
            @Override
            public Integer call() throws Exception {
                return org.lwjgl.opengl.Display.getY();
            }
        }
        return exec.get(new getY());
    }

    public static Drawable getDrawable() {
        record getDrawable() implements Callable<Drawable> {
            @Override
            public Drawable call() throws Exception {
                return org.lwjgl.opengl.Display.getDrawable();
            }
        }
        return exec.get(new getDrawable());
    }
}
