package com.genir.renderer.state;

import jdk.jfr.*;
import org.apache.log4j.Logger;
import org.lwjgl.input.Keyboard;

import java.nio.file.Path;
import java.time.Duration;

import static org.lwjgl.input.Keyboard.*;

public class Profiler {
    private Recording rec = null;
    private boolean wasKeyPressed = false;

    public void update() {
        boolean isKeyPressed = isKeyPressed();
        boolean isActionPerformed = isKeyPressed && !wasKeyPressed;
        wasKeyPressed = isKeyPressed;

        if (!isActionPerformed) {
            return;
        }

        if (rec == null) {
            startProfiler();
        } else {
            stopProfiler();
        }
    }

    private void startProfiler() {
        try {
            Logger.getLogger(Profiler.class).info("Started profiling");

            Configuration cfg = Configuration.getConfiguration("profile");
            rec = new Recording(cfg);

            long unixTimestamp = System.currentTimeMillis() / 1000L;
            String fileName = "profile-" + unixTimestamp + ".jfr";
            rec.setDestination(Path.of(fileName));

            configureAcquisition();
            rec.start();
        } catch (Throwable t) {
            throw new RuntimeException(t);
        }
    }

    private void stopProfiler() {
        try {
            String fileName = rec.getDestination().toString();
            Logger.getLogger(Profiler.class).info("Finished profiling. Writing results to: " + fileName);

            rec.stop();
            rec = null;
        } catch (Throwable t) {
            throw new RuntimeException(t);
        }
    }

    private void configureAcquisition() {
        rec.setToDisk(true);

        // Start from a clean slate: disable everything first
        for (EventType t : FlightRecorder.getFlightRecorder().getEventTypes()) {
            rec.disable(t.getName());
        }

        rec.enable("app.UpdateMark");
        rec.enable("app.FrameMark");

        rec.enable("jdk.ExecutionSample").withPeriod(Duration.ofMillis(2)).withStackTrace(); // CPU Time.
        rec.enable("jdk.NativeMethodSample").withPeriod(Duration.ofMillis(2)).withStackTrace();

        rec.enable("jdk.JavaMonitorEnter").withThreshold(Duration.ofMillis(1)).withStackTrace();
        rec.enable("jdk.JavaMonitorWait").withThreshold(Duration.ofMillis(1)).withStackTrace();

        rec.enable("jdk.ThreadPark").withThreshold(Duration.ofMillis(1)).withStackTrace();
        rec.enable("jdk.ThreadSleep").withThreshold(Duration.ofMillis(1)).withStackTrace();

        rec.enable("jdk.FileRead").withThreshold(Duration.ofMillis(1)).withStackTrace();
        rec.enable("jdk.FileWrite").withThreshold(Duration.ofMillis(1)).withStackTrace();
        rec.enable("jdk.SocketRead").withThreshold(Duration.ofMillis(1)).withStackTrace();
        rec.enable("jdk.SocketWrite").withThreshold(Duration.ofMillis(1)).withStackTrace();

        rec.enable("jdk.GCPhasePause");
        rec.enable("jdk.GCHeapSummary");

        rec.enable("jdk.Compilation");
        rec.enable("jdk.CodeCacheFull");
        rec.enable("jdk.Deoptimization");

        rec.enable("jdk.ClassLoad").withStackTrace();
        rec.enable("jdk.ClassDefine").withStackTrace();

        rec.enable("jdk.SafepointBegin");
        rec.enable("jdk.SafepointEnd");
        rec.enable("jdk.SafepointStateSynchronization");

//        rec.enable("jdk.ThreadDump").withPeriod(Duration.ofMillis(100));
//        rec.enable("jdk.CPULoad").withPeriod(Duration.ofSeconds(1));
//        rec.enable("jdk.ThreadCPULoad").withPeriod(Duration.ofSeconds(1));
//        rec.enable("jdk.ThreadContextSwitchRate").withPeriod(Duration.ofSeconds(1));

        rec.enable("jdk.ExceptionThrow");
    }

    private boolean isKeyPressed() {
        // CTRL + ALT + \
        boolean ctrl = Keyboard.isKeyDown(KEY_LCONTROL) || Keyboard.isKeyDown(KEY_RCONTROL);
        boolean alt = Keyboard.isKeyDown(KEY_LMENU) || Keyboard.isKeyDown(KEY_RMENU);
        boolean backslash = Keyboard.isKeyDown(KEY_BACKSLASH);

        return ctrl && alt && backslash;
    }

    @Name("app.UpdateMark")
    public static class UpdateMark extends Event {
        private static long prevMark = 0;
        public long dtNs;

        public static void mark() {
            var e = new UpdateMark();
            long thisFrame = System.nanoTime();
            e.dtNs = thisFrame - prevMark;
            e.commit();

            prevMark = thisFrame;
        }
    }

    @Name("app.FrameMark")
    public static class FrameMark extends Event {
        private static long frameStart = 0;
        private static long swapStart = 0;
        private static long syncStart = 0;
        private static long renderSum = 0;
        private static long stallSum = 0;

        public long frame; // Total frame duration.
        public long sim__; // Game engine update.
        public long swap_; // Wait for render thread.
        public long sync_; // Idle while waiting for next frame.
        public long stall;
        public long rendr; // Rendering thread work time.

        public static void beginFrame() {
            long nextFrameStart = System.nanoTime();

            var e = new FrameMark();

            // Main thread.
            e.sim__ = swapStart - frameStart;
            e.swap_ = syncStart - swapStart;
            e.sync_ = nextFrameStart - syncStart;
            e.frame = e.sim__ + e.swap_ + e.sync_;
            e.stall = stallSum;

            // Rendering thread.
            e.rendr = renderSum;

            e.commit();

            renderSum = 0;
            stallSum = 0;
            frameStart = nextFrameStart;
        }

        public static void beginSwap() {
            swapStart = System.nanoTime();
        }

        public static void beginSync() {
            syncStart = System.nanoTime();
        }

        public static void markRenderWork(long start) {
            renderSum += System.nanoTime() - start;
        }

        public static void markStall(long start) {
            stallSum += System.nanoTime() - start;
        }
    }
}
