package com.genir.renderer.bridge.context;

import com.genir.renderer.debug.Profiler;

import java.util.HashMap;
import java.util.Map;

import static com.genir.renderer.debug.Debug.asert;

/**
 * ContextManager manages virtual OpenGL contexts.
 * Each non-context thread should have a separate context enabled,
 * even if OpenGL context was not created explicitly. This is to
 * allow executing LWJGL commands at all times.
 */
public class ContextManager {
    private static Context mainContext = new Context();
    private static Thread mainThread = Thread.currentThread();
    private static final Map<Thread, Context> auxContext = new HashMap<>();

    public static Context getThreadContext() {
        if (auxContext.isEmpty()) {
            return mainContext;
        }

        // Assume a majority of commands is executed by the main application thread.
        // Skip the slow contextMap.computeIfAbsent call for those commands.
        if (Thread.currentThread() == mainThread) {
            return mainContext;
        }

        return auxContext.get(Thread.currentThread());
    }

    synchronized public static Context createMainContext() {
        mainThread = Thread.currentThread();
        Profiler.profiler.mainThread = mainThread;
        return mainContext;
    }

    synchronized public static Context createAuxContext() {
        asert(auxContext.get(Thread.currentThread()) == null);

        Context context = new Context();
        auxContext.put(Thread.currentThread(), context);

        return context;
    }

    synchronized public static void destroyMainContext() {
        mainContext.shutdown();

        // Always have a context ready, because vanilla may perform
        // additional LWJGL calls after destroying the OpenGL context.
        mainContext = new Context();
    }

    synchronized public static void destroyAuxContext() {
        Context context = auxContext.remove(Thread.currentThread());
        context.shutdown();
    }
}
