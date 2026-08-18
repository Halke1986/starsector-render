package com.genir.renderer.bridge.context;

import java.util.HashMap;
import java.util.Map;

import static com.genir.renderer.debug.Debug.asert;

/**
 * ContextManager manages virtual OpenGL contexts.
 * Each client thread should have a separate context enabled.
 */
public class ContextManager {
    private static Context mainContext = null;
    private static Thread mainThread = null;
    private static final Map<Thread, Context> auxContext = new HashMap<>();

    public static Context getThreadContext() {
        if (auxContext.isEmpty()) {
            return mainContext;
        }

        // Assume the majority of commands is executed by main application thread.
        if (Thread.currentThread() == mainThread) {
            return mainContext;
        }

        return auxContext.get(Thread.currentThread());
    }

    synchronized public static Context createMainContext() {
        mainContext = new Context(null);
        mainThread = Thread.currentThread();

        return mainContext;
    }

    synchronized public static void destroyMainContext() {
        mainContext.shutdown();

        mainContext = null;
        mainThread = null;
    }

    synchronized public static Context createAuxContext() {
        asert(auxContext.get(Thread.currentThread()) == null);

        Context context = new Context(mainContext);
        auxContext.put(Thread.currentThread(), context);

        return context;
    }

    synchronized public static void destroyAuxContext() {
        Context context = auxContext.remove(Thread.currentThread());
        context.shutdown();
    }
}
