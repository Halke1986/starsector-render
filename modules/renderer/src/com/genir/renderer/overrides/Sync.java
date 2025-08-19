package com.genir.renderer.overrides;


import com.genir.renderer.bridge.Display;

public class Sync {
    static long prevUpdate = 0;

    public static void sync(long ignored) {
        long frameNS = 1_000_000_000 / 60;

        long deadline = prevUpdate + frameNS;
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

        prevUpdate = System.nanoTime();
        Display.update(true);
    }

    public static void update(boolean ignored) {
    }
}
