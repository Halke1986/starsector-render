package com.genir.renderer.overrides;


import com.genir.renderer.bridge.impl.Bridge;

import java.util.concurrent.CountDownLatch;

import static com.genir.renderer.bridge.impl.Bridge.exec;
import static com.genir.renderer.bridge.impl.Bridge.stallDetector;

public class Sync {
    static long prevUpdateTimestamp = 0;
    static CountDownLatch prevUpdateDone = null;

    public static void sync(long ignored) {
        try {
            if (prevUpdateDone != null) {
                prevUpdateDone.await();
            }

            long frameNS = 1_000_000_000 / 60;

            long deadline = prevUpdateTimestamp + frameNS;
            long syncBegin = System.nanoTime();

            if (syncBegin < deadline) {
                long waitNS = deadline - syncBegin;
                long waitMS = Math.max(0, waitNS / 1_000_000 - 2);

                if (waitMS > 0) {
                    Thread.sleep(waitMS);
                }

                // Spin
                while (System.nanoTime() < deadline) {
                }
            }

            prevUpdateTimestamp = System.nanoTime();
            prevUpdateDone = new CountDownLatch(1);
            final CountDownLatch updateDone = prevUpdateDone;

            stallDetector.update();
            exec.execute(() -> {
                Bridge.update();
                org.lwjgl.opengl.Display.update(true);
                updateDone.countDown();
            });
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }

    public static void update(boolean ignored) {
    }
}
