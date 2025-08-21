package com.genir.renderer.overrides;


public class Sync {
    static long prevUpdateTimestamp = 0;

    public static void sync(long ignored) {
        long frameNS = 1_000_000_000 / 60;

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
