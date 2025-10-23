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

            configureAcquisition(rec);
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

    private void configureAcquisition(Recording rec) {
        rec.setToDisk(true);

        // Start from a clean slate: disable everything first
        for (EventType t : FlightRecorder.getFlightRecorder().getEventTypes()) {
            rec.disable(t.getName());
        }

        rec.enable("app.UpdateMark");

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
}
