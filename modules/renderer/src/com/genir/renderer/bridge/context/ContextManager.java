package com.genir.renderer.bridge.context;

import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/**
 * ContextManager manages virtual OpenGL contexts.
 * Each non-context thread should have a separate context enabled,
 * even if OpenGL context was not created explicitly. This is to
 * allow executing LWJGL commands at all times.
 */
public class ContextManager {
    private static final Map<Thread, Context> contextMap = new ConcurrentHashMap<>();

    private static Context mainContext = null;
    private static Thread mainThread = null;

    public static Context getContext() {
        // Assume a majority of commands is executed by the main application thread.
        // Skip the slow contextMap.computeIfAbsent call for those commands.
        if (Thread.currentThread() == mainThread) {
            return mainContext;
        }

        return contextMap.computeIfAbsent(Thread.currentThread(), t -> new Context());
    }

    public static void createContext() {
        // Garbage collection. Remove all Context objects not associated with an OpenGL context.
        for (Iterator<Map.Entry<Thread, Context>> it = contextMap.entrySet().iterator(); it.hasNext(); ) {
            Map.Entry<Thread, Context> entry = it.next();

            Context context = entry.getValue();


            if (!context.active) {
                context.exec.shutdown();
                it.remove();
            }
        }

        Context context = getContext();
        context.active = true;

        mainContext = context;
        mainThread = Thread.currentThread();
    }

    public static void makeCurrent() {
        Context context = getContext();
        context.active = true;
    }

    public static void destroy() {
        // Mark context for deletion, but do not remove immediately.
        // This is because vanilla may perform additional LWJGL calls
        // after destroying the OpenGL context.
        getContext().active = false;
    }
}
