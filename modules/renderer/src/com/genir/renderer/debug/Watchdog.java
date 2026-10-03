package com.genir.renderer.debug;

import com.genir.renderer.async.AsyncException;
import com.genir.renderer.async.ExecutorFactory;
import org.apache.log4j.Logger;

import java.util.Map;
import java.util.concurrent.ExecutorService;

/**
 * Periodically logs thread stack traces from a dedicated watchdog thread.
 */
public class Watchdog {
    private final static AsyncException asyncException = new AsyncException();
    private static int periodMS = 0;

    public static void start() {
        String config = System.getProperty("com.genir.renderer.watchdog");
        if (config == null) {
            return;
        }

        // Integer.parseInt will throw NumberFormatException
        // on wrong input. Let it crash.
        int period = Integer.parseInt(config);
        if (period == 0) {
            return;
        }

        periodMS = period * 1000;

        Logger.getLogger(Watchdog.class).info("Logging thread stacks every " + period + " seconds");

        ExecutorService exec = ExecutorFactory.newSingleThreadExecutor("FR-Watchdog", asyncException);
        exec.execute(Watchdog::run);
    }

    public static void update() {
        // Rethrow exception from logging thread.
        Throwable t = asyncException.get();
        if (t != null) {
            if (t instanceof RuntimeException e) {
                throw e;
            } else {
                throw new RuntimeException(t);
            }
        }
    }

    private static void run() {
        Logger logger = Logger.getLogger(Watchdog.class);

        while (true) {
            StringBuilder dump = new StringBuilder();

            Map<Thread, StackTraceElement[]> stacks = Thread.getAllStackTraces();

            dump.append('\n');

            stacks.forEach((thread, stack) -> {
                dump.append('\n');

                dump.append('"').append(thread.getName()).append('"')
                        .append(" id=").append(thread.getId())
                        .append(" state=").append(thread.getState())
                        .append('\n');

                for (StackTraceElement frame : stack) {
                    dump.append("\tat ").append(frame).append('\n');
                }
            });

            logger.info(dump);

            try {
                Thread.sleep(periodMS);
            } catch (InterruptedException e) {
                throw new RuntimeException(e);
            }
        }
    }
}
