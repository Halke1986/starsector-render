package com.genir.renderer.bridge;

import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.ContextManager;
import com.genir.renderer.bridge.context.commands.GLCommand;
import com.genir.renderer.bridge.context.commands.GLGetter;
import com.genir.renderer.debug.Profiler;
import com.genir.renderer.debug.SamplerRunner;
import com.genir.renderer.overrides.ProgressBar;
import org.lwjgl.LWJGLException;
import org.lwjgl.opengl.DisplayMode;
import org.lwjgl.opengl.Drawable;
import org.lwjgl.opengl.PixelFormat;

import java.nio.ByteBuffer;

import static com.genir.renderer.bridge.context.ContextManager.getThreadContext;
import static com.genir.renderer.debug.Debug.log;

public class Display {
    public static void create(PixelFormat pixel_format) {
        record create(PixelFormat pixel_format) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                try {
                    org.lwjgl.opengl.Display.create(pixel_format);
                    context.update();
                } catch (RuntimeException e) {
                    throw e;
                } catch (Throwable t) {
                    throw new RuntimeException(t);
                }
            }
        }

        ProgressBar.clear();
        final Context context = ContextManager.createMainContext();
        context.exec.wait(new create(pixel_format));
    }

    public static void destroy() {
        record destroy() implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                org.lwjgl.opengl.Display.destroy();
            }
        }

        final Context context = getThreadContext();
        context.exec.wait(new destroy());
        ContextManager.destroyMainContext();
    }

    public static void update(boolean processMessages) {
        record update(boolean processMessages) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                context.update();
                org.lwjgl.opengl.Display.update(processMessages);
            }
        }

        final Context context = getThreadContext();
        context.exec.execute(new update(processMessages));
        context.exec.swapFrames();

        Profiler.profiler.update();
        SamplerRunner.samplerRunner.update();
    }

    public static void update() {
        update(true);
    }

    public static DisplayMode[] getAvailableDisplayModes() {
        record getAvailableDisplayModes() implements GLGetter<DisplayMode[]> {
            @Override
            public DisplayMode[] call(Context context) {
                try {
                    return org.lwjgl.opengl.Display.getAvailableDisplayModes();
                } catch (LWJGLException e) {
                    throw new RuntimeException(e);
                }
            }
        }

        return getThreadContext().exec.get(new getAvailableDisplayModes());
    }

    public static int setIcon(ByteBuffer[] icons) {
        record setIcon(ByteBuffer[] icons) implements GLGetter<Integer> {
            @Override
            public Integer call(Context context) {
                return org.lwjgl.opengl.Display.setIcon(icons);
            }
        }

        return getThreadContext().exec.get(new setIcon(icons));
    }

    public static DisplayMode getDesktopDisplayMode() {
        record getDesktopDisplayMode() implements GLGetter<DisplayMode> {
            @Override
            public DisplayMode call(Context context) {
                return org.lwjgl.opengl.Display.getDesktopDisplayMode();
            }
        }

        return getThreadContext().exec.get(new getDesktopDisplayMode());
    }

    public static DisplayMode getDisplayMode() {
        record getDisplayMode() implements GLGetter<DisplayMode> {
            @Override
            public DisplayMode call(Context context) {
                return org.lwjgl.opengl.Display.getDisplayMode();
            }
        }

        return getThreadContext().exec.get(new getDisplayMode());
    }

    public static void setTitle(String newTitle) {
        record setTitle(String newTitle) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                org.lwjgl.opengl.Display.setTitle(newTitle);
            }
        }

        getThreadContext().exec.wait(new setTitle(newTitle));
    }

    public static void setVSyncEnabled(boolean sync) {
        record setVSyncEnabled(boolean sync) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
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

        getThreadContext().exec.wait(new setVSyncEnabled(sync));
    }


    public static void setFullscreen(boolean fullscreen) {
        record setFullscreen(boolean fullscreen) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                try {
                    org.lwjgl.opengl.Display.setFullscreen(fullscreen);
                    context.update();
                } catch (LWJGLException e) {
                    throw new RuntimeException(e);
                }
            }
        }

        final Context context = getThreadContext();
        context.exec.wait(new setFullscreen(fullscreen));
    }


    public static void processMessages() {
        record processMessages() implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                context.update();
                org.lwjgl.opengl.Display.processMessages();
            }
        }

        final Context context = getThreadContext();
        context.exec.execute(new processMessages());
        context.exec.swapFrames();
    }

    public static void sync(int fps) {
        record sync(int fps) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                org.lwjgl.opengl.Display.sync(fps);
            }
        }

        getThreadContext().exec.execute(new sync(fps));
    }


    public static Drawable getDrawable() {
        record getDrawable() implements GLGetter<Drawable> {
            @Override
            public Drawable call(Context context) {
                return org.lwjgl.opengl.Display.getDrawable();
            }
        }

        return getThreadContext().exec.get(new getDrawable());
    }

    //**********************************************************************
    // Following methods do not need to be called from OpenGl context proxy.

    public static int getX() {
        return org.lwjgl.opengl.Display.getX();
    }

    public static int getY() {
        return org.lwjgl.opengl.Display.getY();
    }

    public static int getHeight() {
        return org.lwjgl.opengl.Display.getHeight();
    }

    public static int getWidth() {
        return org.lwjgl.opengl.Display.getWidth();
    }

    public static float getPixelScaleFactor() {
        return org.lwjgl.opengl.Display.getPixelScaleFactor();
    }

    public static boolean isCloseRequested() {
        return org.lwjgl.opengl.Display.isCloseRequested();
    }

    public static boolean isActive() {
        return org.lwjgl.opengl.Display.isActive();
    }

    public static boolean isFullscreen() {
        return org.lwjgl.opengl.Display.isFullscreen();
    }

    public static boolean isVisible() {
        return org.lwjgl.opengl.Display.isVisible();
    }
}
