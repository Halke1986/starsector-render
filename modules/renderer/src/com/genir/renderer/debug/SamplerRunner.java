package com.genir.renderer.debug;

import com.genir.renderer.async.ExecutorFactory;

import java.io.File;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicReference;

import static com.genir.renderer.debug.samplers.ClassHistogramSampler.takeHistogram;

public class SamplerRunner {
    public static final SamplerRunner samplerRunner = new SamplerRunner();

    private final AtomicReference<Throwable> asyncException = new AtomicReference<>();

    public void update() {
        Throwable t = asyncException.get();
        if (t != null) {
            if (t instanceof RuntimeException e) {
                throw e;
            } else {
                throw new RuntimeException(t);
            }
        }
    }

    public void start() {
        long unixTimestamp = System.currentTimeMillis() / 1000L;
        String profileDir = "profiles-" + unixTimestamp;
        String histogramDir = profileDir + "/histograms";
        String leakDir = profileDir + "/leaks";

        new File(histogramDir).mkdirs();
        new File(leakDir).mkdirs();

        ExecutorService exec = ExecutorFactory.newExecutor(1, "FR-sampler", new ExceptionHandler(asyncException));

        exec.execute(() -> {
            while (true) {
                //profiler.startProfiler(profileDir + "/");

                try {
                    takeHistogram(histogramDir + "/");
                    //MemoryLeakSampler.startSampler(leakDir + "/");
                    Thread.sleep(60 * 1000);
                } catch (Throwable t) {
                    //profiler.stopProfiler();
                    asyncException.compareAndSet(null, t);
                    return;
                } finally {
                    //MemoryLeakSampler.stopSampler(leakDir + "/");
                }

                //profiler.stopProfiler();
            }
        });
    }

    private record ExceptionHandler(AtomicReference<Throwable> asyncException) implements Thread.UncaughtExceptionHandler {
        @Override
        public void uncaughtException(Thread t, Throwable e) {
            if (e != null) {
                asyncException.compareAndSet(null, e);
            }
        }
    }
}
