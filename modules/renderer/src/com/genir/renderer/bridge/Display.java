package com.genir.renderer.bridge;

import com.genir.renderer.state.AppState;
import com.genir.renderer.state.Profiler;
import org.lwjgl.LWJGLException;
import org.lwjgl.opengl.DisplayMode;
import org.lwjgl.opengl.Drawable;
import org.lwjgl.opengl.PixelFormat;

import java.nio.ByteBuffer;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;

import static com.genir.renderer.Debug.log;
import static com.genir.renderer.state.AppState.state;

public class Display {
    private static Future<?> prevFrameFinished = null;

    public static void update(boolean processMessages) {
        try {
            if (prevFrameFinished != null) {
                prevFrameFinished.get();
            }

            state.stallDetector.update();

            Profiler.UpdateMark.mark();

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

            prevFrameFinished = state.exec.submit(new update(processMessages));
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
        return state.exec.get(new getAvailableDisplayModes());
    }

    public static int setIcon(ByteBuffer[] icons) {
        record setIcon(ByteBuffer[] icons) implements Callable<Integer> {
            @Override
            public Integer call() throws Exception {
                return org.lwjgl.opengl.Display.setIcon(icons);
            }
        }
        return state.exec.get(new setIcon(icons));
    }

    public static DisplayMode getDesktopDisplayMode() {
        record getDesktopDisplayMode() implements Callable<DisplayMode> {
            @Override
            public DisplayMode call() throws Exception {
                return org.lwjgl.opengl.Display.getDesktopDisplayMode();
            }
        }
        return state.exec.get(new getDesktopDisplayMode());
    }

    public static DisplayMode getDisplayMode() {
        record getDisplayMode() implements Callable<DisplayMode> {
            @Override
            public DisplayMode call() throws Exception {
                return org.lwjgl.opengl.Display.getDisplayMode();
            }
        }
        return state.exec.get(new getDisplayMode());
    }

    public static void setTitle(String newTitle) {
        record setTitle(String newTitle) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.Display.setTitle(newTitle);
            }
        }

        state.exec.wait(new setTitle(newTitle));
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
        state.exec.wait(new setVSyncEnabled(sync));
    }

    public static void create(PixelFormat pixel_format) {
        state.attribTracker.clear();
        prevFrameFinished = null;

        record create(PixelFormat pixel_format) implements Runnable {
            @Override
            public void run() {
                try {
                    org.lwjgl.opengl.Display.create(pixel_format);

                    // Clear server attributes when a new display is created.
                    state.attribManager.clear();

                    AppState.update();
                } catch (RuntimeException e) {
                    throw e;
                } catch (Throwable t) {
                    throw new RuntimeException(t);
                }
            }
        }
        state.exec.wait(new create(pixel_format));
    }

    public static int getHeight() {
        if (state.glStateCache.isAvailable()) {
            return state.glStateCache.getDisplayHeight();
        }

        record getHeight() implements Callable<Integer> {
            @Override
            public Integer call() throws Exception {
                return org.lwjgl.opengl.Display.getHeight();
            }
        }
        return state.exec.get(new getHeight());
    }

    public static int getWidth() {
        if (state.glStateCache.isAvailable()) {
            return state.glStateCache.getDisplayWidth();
        }

        record getWidth() implements Callable<Integer> {
            @Override
            public Integer call() throws Exception {
                return org.lwjgl.opengl.Display.getWidth();
            }
        }
        return state.exec.get(new getWidth());
    }

    public static float getPixelScaleFactor() {
        if (state.glStateCache.isAvailable()) {
            return state.glStateCache.getDisplayPixelScaleFactor();
        }

        record getPixelScaleFactor() implements Callable<Float> {
            @Override
            public Float call() throws Exception {
                return org.lwjgl.opengl.Display.getPixelScaleFactor();
            }
        }
        return state.exec.get(new getPixelScaleFactor());
    }

    public static boolean isCloseRequested() {
        if (state.glStateCache.isAvailable()) {
            return state.glStateCache.getDisplayIsCloseRequested();
        }

        record isCloseRequested() implements Callable<Boolean> {
            @Override
            public Boolean call() throws Exception {
                return org.lwjgl.opengl.Display.isCloseRequested();
            }
        }
        return state.exec.get(new isCloseRequested());
    }

    public static boolean isActive() {
        if (state.glStateCache.isAvailable()) {
            return state.glStateCache.getDisplayIsActive();
        }

        record isActive() implements Callable<Boolean> {
            @Override
            public Boolean call() throws Exception {
                return org.lwjgl.opengl.Display.isActive();
            }
        }
        return state.exec.get(new isActive());
    }

    public static void destroy() {
        record destroy() implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.Display.destroy();
            }
        }
        state.exec.wait(new destroy(), true);
    }

    public static boolean isFullscreen() {
        if (state.glStateCache.isAvailable()) {
            return state.glStateCache.getDisplayIsFullscreen();
        }

        record isFullscreen() implements Callable<Boolean> {
            @Override
            public Boolean call() throws Exception {
                return org.lwjgl.opengl.Display.isFullscreen();
            }
        }
        return state.exec.get(new isFullscreen());
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
        state.exec.wait(new setFullscreen(fullscreen));
    }

    public static boolean isVisible() {
        if (state.glStateCache.isAvailable()) {
            return state.glStateCache.getDisplayIsVisible();
        }

        record isVisible() implements Callable<Boolean> {
            @Override
            public Boolean call() throws Exception {
                return org.lwjgl.opengl.Display.isVisible();
            }
        }
        return state.exec.get(new isVisible());
    }

    public static void processMessages() {
        record processMessages() implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.Display.processMessages();
            }
        }
        state.exec.wait(new processMessages());
    }

    public static void sync(int fps) {
        record sync(int fps) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.Display.sync(fps);
            }
        }
        state.exec.execute(new sync(fps));
    }

    public static int getX() {
        if (state.glStateCache.isAvailable()) {
            return state.glStateCache.getDisplayX();
        }

        record getX() implements Callable<Integer> {
            @Override
            public Integer call() throws Exception {
                return org.lwjgl.opengl.Display.getX();
            }
        }
        return state.exec.get(new getX());
    }

    public static int getY() {
        if (state.glStateCache.isAvailable()) {
            return state.glStateCache.getDisplayY();
        }

        record getY() implements Callable<Integer> {
            @Override
            public Integer call() throws Exception {
                return org.lwjgl.opengl.Display.getY();
            }
        }
        return state.exec.get(new getY());
    }

    public static Drawable getDrawable() {
        record getDrawable() implements Callable<Drawable> {
            @Override
            public Drawable call() throws Exception {
                return org.lwjgl.opengl.Display.getDrawable();
            }
        }
        return state.exec.get(new getDrawable());
    }
}
