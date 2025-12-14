package com.genir.renderer.bridge;

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

    private static void updateAppState() {
        if (!org.lwjgl.opengl.Display.isCreated()) {
            return;
        }

        state.glStateCache.update();
        state.vertexInterceptor.update();
        state.texGenerator.update();
        state.arrayGenerator.update();
        state.bufferGenerator.update();
        state.profiler.update();
    }

    public static void update(boolean processMessages) {
        try {
            state.stallDetector.update();

            // Swap OpenGL buffers and update the bridge state.
            // Ideally, these would run on the render thread synchronously
            // to avoid concurrency issues. However, profiling showed a ~5%
            // performance penalty from lock contention when blocking.
            // To avoid this, the update is executed asynchronously.
            record update(boolean processMessages) implements Runnable {
                @Override
                public void run() {
                    org.lwjgl.opengl.Display.update(processMessages);
                    updateAppState();

                    Profiler.UpdateMark.mark();
                }
            }

            Future<?> thisFrameFinished = state.exec.submit(new update(processMessages));

            if (prevFrameFinished != null) {
                prevFrameFinished.get();
            }

            prevFrameFinished = thisFrameFinished;
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
        state.arrayGenerator.clear();
        state.bufferGenerator.clear();
        state.texGenerator.clear();

        prevFrameFinished = null;

        record create(PixelFormat pixel_format) implements Runnable {
            @Override
            public void run() {
                try {
                    org.lwjgl.opengl.Display.create(pixel_format);

                    // Clear server attributes when a new display is created.
                    state.attribManager.clear();

                    updateAppState();
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
        return state.glStateCache.getDisplayHeight();
    }

    public static int getWidth() {
        return state.glStateCache.getDisplayWidth();
    }

    public static float getPixelScaleFactor() {
        return state.glStateCache.getDisplayPixelScaleFactor();
    }

    public static boolean isCloseRequested() {
        return state.glStateCache.getDisplayIsCloseRequested();
    }

    public static boolean isActive() {
        return state.glStateCache.getDisplayIsActive();
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
        return state.glStateCache.getDisplayIsFullscreen();
    }

    public static void setFullscreen(boolean fullscreen) {
        record setFullscreen(boolean fullscreen) implements Runnable {
            @Override
            public void run() {
                try {
                    org.lwjgl.opengl.Display.setFullscreen(fullscreen);
                    updateAppState();
                } catch (LWJGLException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        state.exec.wait(new setFullscreen(fullscreen));
    }

    public static boolean isVisible() {
        return state.glStateCache.getDisplayIsVisible();
    }

    public static void processMessages() {
        record processMessages() implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.Display.processMessages();
                updateAppState();
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
        return state.glStateCache.getDisplayX();
    }

    public static int getY() {
        return state.glStateCache.getDisplayY();
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
