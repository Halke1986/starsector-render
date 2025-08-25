package com.genir.renderer.overrides;


import com.fs.starfarer.settings.StarfarerSettings;

public class Sync {
    static long prevUpdateTimestamp = 0;

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
        long fps = (long) StarfarerSettings.getFPS();
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
