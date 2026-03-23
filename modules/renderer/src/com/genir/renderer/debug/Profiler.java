package com.genir.renderer.debug;

import jdk.jfr.*;
import org.apache.log4j.Logger;
import org.lwjgl.input.Keyboard;

import java.nio.file.Path;
import java.time.Duration;

import static org.lwjgl.input.Keyboard.*;

public class Profiler {
    public static final Profiler profiler = new Profiler();

    public final Frame frame = new Frame();
    public Thread mainThread = null;

    private Recording recording = null;
    private boolean wasKeyPressed = false;

    public void update() {
        if (!org.lwjgl.input.Keyboard.isCreated()) {
            return;
        }

        boolean isKeyPressed = isKeyPressed();
        boolean isActionPerformed = isKeyPressed && !wasKeyPressed;
        wasKeyPressed = isKeyPressed;

        if (!isActionPerformed) {
            return;
        }

        if (recording == null) {
            startProfiler("");
        } else {
            stopProfiler();
        }
    }

    private void startProfiler(String profilePrefix) {
        try {
            Logger.getLogger(Profiler.class).info("Started profiling");

            Configuration cfg = Configuration.getConfiguration("profile");
            recording = new Recording(cfg);

            long unixTimestamp = System.currentTimeMillis() / 1000L;
            String fileName = profilePrefix + "profile-" + unixTimestamp + ".jfr";
            recording.setDestination(Path.of(fileName));

            configureAcquisition();
            recording.start();
        } catch (Throwable t) {
            throw new RuntimeException(t);
        }
    }

    private void stopProfiler() {
        try {
            String fileName = recording.getDestination().toString();
            Logger.getLogger(Profiler.class).info("Finished profiling. Writing results to: " + fileName);

            recording.stop();
            recording = null;
        } catch (Throwable t) {
            throw new RuntimeException(t);
        }
    }

    public boolean isProfiling() {
        return recording != null;
    }

    private void configureAcquisition() {
        recording.setToDisk(true);

        // Start from a clean slate: disable everything first
        for (EventType t : FlightRecorder.getFlightRecorder().getEventTypes()) {
            recording.disable(t.getName());
        }

        recording.enable("app.UpdateMark");
        recording.enable("app.FrameMark");

        recording.enable("jdk.ExecutionSample").withPeriod(Duration.ofMillis(2)).withStackTrace(); // CPU Time.
        recording.enable("jdk.NativeMethodSample").withPeriod(Duration.ofMillis(2)).withStackTrace();

        recording.enable("jdk.JavaMonitorEnter").withThreshold(Duration.ofMillis(1)).withStackTrace();
        recording.enable("jdk.JavaMonitorWait").withThreshold(Duration.ofMillis(1)).withStackTrace();

        recording.enable("jdk.ThreadPark").withThreshold(Duration.ofMillis(1)).withStackTrace();
        recording.enable("jdk.ThreadSleep").withThreshold(Duration.ofMillis(1)).withStackTrace();

        recording.enable("jdk.FileRead").withThreshold(Duration.ofMillis(1)).withStackTrace();
        recording.enable("jdk.FileWrite").withThreshold(Duration.ofMillis(1)).withStackTrace();
        recording.enable("jdk.SocketRead").withThreshold(Duration.ofMillis(1)).withStackTrace();
        recording.enable("jdk.SocketWrite").withThreshold(Duration.ofMillis(1)).withStackTrace();

        recording.enable("jdk.GCPhasePause");
        recording.enable("jdk.GCHeapSummary");

        recording.enable("jdk.Compilation");
        recording.enable("jdk.CodeCacheFull");
        recording.enable("jdk.Deoptimization");

        recording.enable("jdk.ClassLoad").withStackTrace();
        recording.enable("jdk.ClassDefine").withStackTrace();

        recording.enable("jdk.SafepointBegin");
        recording.enable("jdk.SafepointEnd");
        recording.enable("jdk.SafepointStateSynchronization");

//        rec.enable("jdk.ThreadDump").withPeriod(Duration.ofMillis(100));
//        rec.enable("jdk.CPULoad").withPeriod(Duration.ofSeconds(1));
//        rec.enable("jdk.ThreadCPULoad").withPeriod(Duration.ofSeconds(1));
//        rec.enable("jdk.ThreadContextSwitchRate").withPeriod(Duration.ofSeconds(1));

        recording.enable("jdk.ExceptionThrow");
    }

    private boolean isKeyPressed() {
        // CTRL + ALT + \
        boolean ctrl = Keyboard.isKeyDown(KEY_LCONTROL) || Keyboard.isKeyDown(KEY_RCONTROL);
        boolean shift = Keyboard.isKeyDown(KEY_LSHIFT) || Keyboard.isKeyDown(KEY_RSHIFT);
        boolean f8 = Keyboard.isKeyDown(KEY_F8);

        return ctrl && shift && f8;
    }

    /**
     * Custom frame progress metrics.
     */
    public static class Frame {
        private long frameStart = 0;
        private long swapStart = 0;
        private long syncStart = 0;
        private long renderSum = 0;
        private long stallSum = 0;

        public void beginFrame() {
            if (!profiler.isProfiling()) {
                frameStart = System.nanoTime();
                return;
            }

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

        public void beginSwap() {
            swapStart = System.nanoTime();
        }

        public void beginSync() {
            syncStart = System.nanoTime();
        }

        public void markRenderWork(long start) {
            renderSum += System.nanoTime() - start;
        }

        public void markStall(long start) {
            stallSum += System.nanoTime() - start;
        }
    }

    @Name("app.FrameMark")
    public static class FrameMark extends Event {
        public long frame; // Total frame duration.
        public long sim__; // Game engine update.
        public long swap_; // Wait for render thread.
        public long sync_; // Idle while waiting for next frame.
        public long stall;
        public long rendr; // Rendering thread work time.
    }
}
