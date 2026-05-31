package com.genir.renderer.overrides;

import com.genir.renderer.bridge.Display;
import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.ContextManager;
import com.genir.renderer.debug.Profiler;
import com.genir.renderer.debug.SamplerRunner;
import proxy.com.fs.starfarer.settings.StarfarerSettings;

import static com.genir.renderer.debug.Debug.asert;

public class Sync {
    static long prevUpdateTimestamp = 0;

    public static void sleep(long ignored) {
    }

    /**
     * Main application state update.
     */
    public static void syncAndUpdate(boolean processMessages) {
        Context context = ContextManager.getThreadContext();
        asert(context.isMain);

        if (context.mainProfilerFrame != null) context.mainProfilerFrame.beginSwap();
        Display.update(processMessages);

        if (context.mainProfilerFrame != null) context.mainProfilerFrame.beginSync();
        sync(0);

        // Conclude the current animation frame.
        if (context.mainProfilerFrame != null) context.mainProfilerFrame.commit();

        SamplerRunner.samplerRunner.update();
        final Profiler.Frame nextProfilerFrame = Profiler.profiler.update();

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
     * Replacement for vanilla Thread.sleep()-based frame sync.
     * Thread.sleep() offers only millisecond precision, while a frame
     * (e.g. at 60 FPS) lasts ~16.67ms. Because the duration is not
     * a whole number of milliseconds, relying on millisecond delays
     * causes drift between animation updates and monitor refresh.
     * The result is visible stutter in smooth motion.
     * <p>
     * Using a microsecond-resolution delay avoids this, provided
     * the FPS matches (or divides evenly into) the monitor refresh rate.
     */
    public static void sync(long ignored) {
        long fps = (long) StarfarerSettings.StarfarerSettings_getFloatValue("fps");
        long frameNS = 1_000_000_000 / fps;

        long deadline = prevUpdateTimestamp + frameNS;
        long syncBegin = System.nanoTime();

        if (syncBegin < deadline) {
            long waitNS = deadline - syncBegin;
            long waitMS = Math.max(0, waitNS / 1_000_000 - 2);

            if (waitMS > 0) {
                try {
                    Thread.sleep(waitMS);
                } catch (InterruptedException e) {
                    throw new RuntimeException(e);
                }
            }

            // Spin
            while (System.nanoTime() < deadline) {
            }
        }

        prevUpdateTimestamp = System.nanoTime();
    }
}
