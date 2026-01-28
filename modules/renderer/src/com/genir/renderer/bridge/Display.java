package com.genir.renderer.bridge;

import com.genir.renderer.bridge.context.ContextManager;
import com.genir.renderer.debug.Profiler;
import com.genir.renderer.overrides.ProgressBar;
import org.lwjgl.LWJGLException;
import org.lwjgl.opengl.DisplayMode;
import org.lwjgl.opengl.Drawable;
import org.lwjgl.opengl.PixelFormat;

import java.nio.ByteBuffer;
import java.util.concurrent.Callable;

import static com.genir.renderer.bridge.context.ContextManager.getContext;
import static com.genir.renderer.debug.Debug.log;

public class Display {
    public static void create(PixelFormat pixel_format) {
        record create(PixelFormat pixel_format) implements Runnable {
            @Override
            public void run() {
                try {
                    org.lwjgl.opengl.Display.create(pixel_format);
                } catch (RuntimeException e) {
                    throw e;
                } catch (Throwable t) {
                    throw new RuntimeException(t);
                }
            }
        }

        ProgressBar.clear();
        ContextManager.createContext();
        getContext().exec.execute(new create(pixel_format));
        ContextManager.updateSynchronous();
    }

    public static void destroy() {
        record destroy() implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.Display.destroy();
            }
        }
        getContext().exec.wait(new destroy());
        ContextManager.destroy();
    }

    private static void swapFrames() {
        ContextManager.updateAsynchronous();
        Profiler.profiler.update();
    }

    public static void update(boolean processMessages) {
        record update(boolean processMessages) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.Display.update(processMessages);
            }
        }

        getContext().exec.execute(new update(processMessages));
        swapFrames();
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
        return getContext().exec.get(new getAvailableDisplayModes());
    }

    public static int setIcon(ByteBuffer[] icons) {
        record setIcon(ByteBuffer[] icons) implements Callable<Integer> {
            @Override
            public Integer call() throws Exception {
                return org.lwjgl.opengl.Display.setIcon(icons);
            }
        }
        return getContext().exec.get(new setIcon(icons));
    }

    public static DisplayMode getDesktopDisplayMode() {
        record getDesktopDisplayMode() implements Callable<DisplayMode> {
            @Override
            public DisplayMode call() throws Exception {
                return org.lwjgl.opengl.Display.getDesktopDisplayMode();
            }
        }
        return getContext().exec.get(new getDesktopDisplayMode());
    }

    public static DisplayMode getDisplayMode() {
        record getDisplayMode() implements Callable<DisplayMode> {
            @Override
            public DisplayMode call() throws Exception {
                return org.lwjgl.opengl.Display.getDisplayMode();
            }
        }
        return getContext().exec.get(new getDisplayMode());
    }

    public static void setTitle(String newTitle) {
        record setTitle(String newTitle) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.Display.setTitle(newTitle);
            }
        }

        getContext().exec.wait(new setTitle(newTitle));
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
        getContext().exec.wait(new setVSyncEnabled(sync));
    }

    public static int getHeight() {
        return getContext().glStateCache.getDisplayHeight();
    }

    public static int getWidth() {
        return getContext().glStateCache.getDisplayWidth();
    }

    public static float getPixelScaleFactor() {
        return getContext().glStateCache.getDisplayPixelScaleFactor();
    }

    public static boolean isCloseRequested() {
        return getContext().glStateCache.getDisplayIsCloseRequested();
    }

    public static boolean isActive() {
        return getContext().glStateCache.getDisplayIsActive();
    }

    public static boolean isFullscreen() {
        return getContext().glStateCache.getDisplayIsFullscreen();
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
        getContext().exec.execute(new setFullscreen(fullscreen));
        ContextManager.updateSynchronous();
    }

    public static boolean isVisible() {
        return getContext().glStateCache.getDisplayIsVisible();
    }

    public static void processMessages() {
        record processMessages() implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.Display.processMessages();
            }
        }
        getContext().exec.execute(new processMessages());
        ContextManager.updateAsynchronous();
    }

    public static void sync(int fps) {
        record sync(int fps) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.Display.sync(fps);
            }
        }
        getContext().exec.execute(new sync(fps));
    }

    public static int getX() {
        return getContext().glStateCache.getDisplayX();
    }

    public static int getY() {
        return getContext().glStateCache.getDisplayY();
    }

    public static Drawable getDrawable() {
        record getDrawable() implements Callable<Drawable> {
            @Override
            public Drawable call() throws Exception {
                return org.lwjgl.opengl.Display.getDrawable();
            }
        }
        return getContext().exec.get(new getDrawable());
    }
}
