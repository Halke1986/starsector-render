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
    private static final Map<Thread, Context> auxContexts = new HashMap<>();

    public static Context getThreadContext() {
        if (auxContexts.isEmpty()) {
            return mainContext;
        }

        // Assume the majority of commands is executed by main application thread.
        if (Thread.currentThread() == mainThread) {
            return mainContext;
        }

        return auxContexts.get(Thread.currentThread());
    }

    synchronized public static Context createMainContext() {
        mainContext = new Context();
        mainThread = Thread.currentThread();

        return mainContext;
    }

    synchronized public static Context removeMainContext() {
        try {
            return mainContext;
        } finally {
            mainContext = null;
            mainThread = null;
        }
    }

    synchronized public static Context createAuxContext(org.lwjgl.opengl.SharedDrawable drawable) {
        asert(auxContexts.get(Thread.currentThread()) == null);

        Context context = new Context(mainContext, drawable);
        auxContexts.put(Thread.currentThread(), context);

        return context;
    }

    synchronized public static Context removeAuxContext() {
        return auxContexts.remove(Thread.currentThread());
    }
}
