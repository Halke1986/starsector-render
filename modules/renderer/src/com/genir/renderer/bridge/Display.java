package com.genir.renderer.bridge;

import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.ContextManager;
import com.genir.renderer.debug.Profiler;
import com.genir.renderer.overrides.ProgressBar;
import org.lwjgl.LWJGLException;
import org.lwjgl.opengl.DisplayMode;
import org.lwjgl.opengl.Drawable;
import org.lwjgl.opengl.PixelFormat;

import java.nio.ByteBuffer;
import java.util.concurrent.Callable;

import static com.genir.renderer.bridge.context.ContextManager.context;
import static com.genir.renderer.debug.Debug.log;

public class Display {
    public static void create(PixelFormat pixel_format) {
        record create(PixelFormat pixel_format) implements Runnable {
            @Override
            public void run() {
                try {
                    org.lwjgl.opengl.Display.create(pixel_format);

                    // Clear server attributes when a new display is created.
                    context.attribManager.clear();

                    updateState();
                } catch (RuntimeException e) {
                    throw e;
                } catch (Throwable t) {
                    throw new RuntimeException(t);
                }
            }
        }

        ProgressBar.clear();
        ContextManager.create();
        context.exec.wait(new create(pixel_format));
    }

    public static void destroy() {
        record destroy() implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.Display.destroy();
            }
        }
        context.exec.wait(new destroy());
        ContextManager.destroy();
    }

    private static void updateState() {
        if (!org.lwjgl.opengl.Display.isCreated()) {
            return;
        }

        context.update();

        Profiler.profiler.update();
    }

    public static void update(boolean processMessages) {
        context.stallDetector.update();

        // Swap OpenGL buffers and update the bridge context.
        // Ideally, these would run on the render thread synchronously
        // to avoid concurrency issues. However, profiling showed a ~5%
        // performance penalty from lock contention when blocking.
        // To avoid this, the update is executed asynchronously.
        record update(boolean processMessages) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.Display.update(processMessages);
                updateState();
            }
        }

        context.exec.execute(new update(processMessages));
        context.exec.swapFrames();
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
        return context.exec.get(new getAvailableDisplayModes());
    }

    public static int setIcon(ByteBuffer[] icons) {
        record setIcon(ByteBuffer[] icons) implements Callable<Integer> {
            @Override
            public Integer call() throws Exception {
                return org.lwjgl.opengl.Display.setIcon(icons);
            }
        }
        return context.exec.get(new setIcon(icons));
    }

    public static DisplayMode getDesktopDisplayMode() {
        record getDesktopDisplayMode() implements Callable<DisplayMode> {
            @Override
            public DisplayMode call() throws Exception {
                return org.lwjgl.opengl.Display.getDesktopDisplayMode();
            }
        }
        return context.exec.get(new getDesktopDisplayMode());
    }

    public static DisplayMode getDisplayMode() {
        record getDisplayMode() implements Callable<DisplayMode> {
            @Override
            public DisplayMode call() throws Exception {
                return org.lwjgl.opengl.Display.getDisplayMode();
            }
        }
        return context.exec.get(new getDisplayMode());
    }

    public static void setTitle(String newTitle) {
        record setTitle(String newTitle) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.Display.setTitle(newTitle);
            }
        }

        context.exec.wait(new setTitle(newTitle));
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
        context.exec.wait(new setVSyncEnabled(sync));
    }

    public static int getHeight() {
        return context.glStateCache.getDisplayHeight();
    }

    public static int getWidth() {
        return context.glStateCache.getDisplayWidth();
    }

    public static float getPixelScaleFactor() {
        return context.glStateCache.getDisplayPixelScaleFactor();
    }

    public static boolean isCloseRequested() {
        return context.glStateCache.getDisplayIsCloseRequested();
    }

    public static boolean isActive() {
        return context.glStateCache.getDisplayIsActive();
    }

    public static boolean isFullscreen() {
        return context.glStateCache.getDisplayIsFullscreen();
    }

    public static void setFullscreen(boolean fullscreen) {
        record setFullscreen(boolean fullscreen) implements Runnable {
            @Override
            public void run() {
                try {
                    org.lwjgl.opengl.Display.setFullscreen(fullscreen);
                    updateState();
                } catch (LWJGLException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        context.exec.wait(new setFullscreen(fullscreen));
    }

    public static boolean isVisible() {
        return context.glStateCache.getDisplayIsVisible();
    }

    public static void processMessages() {
        record processMessages() implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.Display.processMessages();
                updateState();
            }
        }
        context.exec.wait(new processMessages());
    }

    public static void sync(int fps) {
        record sync(int fps) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.Display.sync(fps);
            }
        }
        context.exec.execute(new sync(fps));
    }

    public static int getX() {
        return context.glStateCache.getDisplayX();
    }

    public static int getY() {
        return context.glStateCache.getDisplayY();
    }

    public static Drawable getDrawable() {
        record getDrawable() implements Callable<Drawable> {
            @Override
            public Drawable call() throws Exception {
                return org.lwjgl.opengl.Display.getDrawable();
            }
        }
        return context.exec.get(new getDrawable());
    }
}
