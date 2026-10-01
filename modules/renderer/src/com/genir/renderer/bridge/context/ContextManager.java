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
        // Leave access to auxContexts unsynchronized to minimize hot-path overhead.
        // Based on the HashMap implementation, concurrent access will not make isEmpty() throw.
        // If the map incorrectly appears nonempty, getThreadContext() handles it via the slow path.
        // If it incorrectly appears empty, returning mainContext is harmless on the main thread.
        // Auxiliary threads must call createAuxContext() before accessing contexts.
        if (auxContexts.isEmpty()) {
            return mainContext;
        }

        // Assume the majority of commands are executed by the main application thread.
        if (Thread.currentThread() == mainThread) {
            return mainContext;
        }

        return getAuxContext();
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
        final Context context = new Context(mainContext, drawable);

        Context prevValue = auxContexts.put(Thread.currentThread(), context);
        asert(prevValue == null);

        return context;
    }

    synchronized public static Context removeAuxContext() {
        return auxContexts.remove(Thread.currentThread());
    }

    synchronized private static Context getAuxContext() {
        return auxContexts.get(Thread.currentThread());
    }
}
