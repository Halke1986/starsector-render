package com.genir.renderer.overrides;

import com.fs.starfarer.settings.StarfarerSettings;
import com.genir.renderer.bridge.commands.Display;
import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.ContextManager;
import com.genir.renderer.debug.Profiler;
import com.genir.renderer.debug.SamplerRunner;
import org.lwjgl.opengl.DisplayMode;

import static com.genir.renderer.debug.Debug.asert;

public class Sync {
    static long prevUpdateTimestamp = 0;

    public static void sleep(long duration) {
        // Sleeping is handled by the update(boolean processMessages) override, except when the game window
        // is inactive: the game calls processMessages() and sleeps for 50 ms, which should not be ignored.
        if (duration >= 50L) {
            try {
                Thread.sleep(duration);
            } catch (InterruptedException ignored) {
            }
        }
    }

    /**
     * Main application state update.
     */
    public static void update(boolean processMessages) {
        Context context = ContextManager.getThreadContext();
        asert(context.isMain);

        // Update the profiler before Display.update(), which may block a critical section
        // shared with keyboard state and stall the profiler's keyboard queries.
        SamplerRunner.samplerRunner.update();
        final Profiler.Frame nextProfilerFrame = Profiler.profiler.update();

        if (context.mainProfilerFrame != null) context.mainProfilerFrame.beginSwap();
        Display.update(processMessages);

        if (context.mainProfilerFrame != null) context.mainProfilerFrame.beginSync();
        sync();

        // Conclude the current animation frame.
        if (context.mainProfilerFrame != null) context.mainProfilerFrame.commit();

        // The simulation normally runs one frame ahead of rendering, unless
        // there is spare CPU capacity. To record concurrent simulation and
        // rendering profiles under a single event, the rendering thread
        // receives the profile collector before the simulation thread.
        context.mainProfilerFrame = context.nextProfilerFrame;
        context.nextProfilerFrame = nextProfilerFrame;
        context.exec.execute((ctx, args, offset) ->
                ctx.renderingProfilerFrame = nextProfilerFrame
        );

        // Mark the beginning of the next animation frame.
        if (context.mainProfilerFrame != null) context.mainProfilerFrame.beginFrame();
    }

    /**
     * Replaces vanilla Thread.sleep()-based frame synchronization.
     * Starsector's frame sync consistently oversleeps, causing missed
     * vsync windows and visible stutter during smooth motion.
     * <p>
     * A fixed frame schedule prevents this stutter, provided the target
     * FPS equals the monitor refresh rate or is an integer divisor of it.
     */
    private static void sync() {
        long fps = (long) StarfarerSettings.StarfarerSettings_getFloatValue("fps");
        long frameNS = 1_000_000_000 / fps;

        long deadline = prevUpdateTimestamp + frameNS;
        long now = System.nanoTime();

        // Allow drift in low FPS scenarios.
        if (now > deadline) {
            prevUpdateTimestamp = now;
            return;
        }

        long waitNS = deadline - now;
        long waitMS = waitNS / 1_000_000;

        try {
            Thread.sleep(waitMS);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }

        prevUpdateTimestamp = deadline;
    }

    // All org.lwjgl.opengl.Display methods are redirected to
    // com.genir.renderer.overrides.Sync in CombatState and BaseGameState.
    public static void processMessages() {
        com.genir.renderer.bridge.commands.Display.processMessages();
    }

    public static void update() {
        com.genir.renderer.bridge.commands.Display.update();
    }

    public static boolean isCloseRequested() {
        return com.genir.renderer.bridge.commands.Display.isCloseRequested();
    }

    public static boolean isActive() {
        return com.genir.renderer.bridge.commands.Display.isActive();
    }

    public static boolean isVisible() {
        return com.genir.renderer.bridge.commands.Display.isVisible();
    }

    public static boolean isFullscreen() {
        return com.genir.renderer.bridge.commands.Display.isFullscreen();
    }

    public static DisplayMode getDesktopDisplayMode() {
        return com.genir.renderer.bridge.commands.Display.getDesktopDisplayMode();
    }
}
