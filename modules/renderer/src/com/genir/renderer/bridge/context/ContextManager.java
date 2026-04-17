package com.genir.renderer.bridge.context;

import com.genir.renderer.debug.Profiler;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/**
 * ContextManager manages virtual OpenGL contexts.
 * Each non-context thread should have a separate context enabled,
 * even if OpenGL context was not created explicitly. This is to
 * allow executing LWJGL commands at all times.
 */
public class ContextManager {
    private static final Map<Thread, Context> contextMap = new HashMap<>();

    private static Context mainContext = null;
    private static Thread mainThread = null;

    public static Context getThreadContext() {
        // Assume a majority of commands is executed by the main application thread.
        // Skip the slow contextMap.computeIfAbsent call for those commands.
        if (Thread.currentThread() == mainThread) {
            return mainContext;
        }

        return getThreadContextFallback();
    }

    synchronized private static Context getThreadContextFallback() {
        Context context = contextMap.get(Thread.currentThread());
        if (context == null) {
            context = new Context();
            contextMap.put(Thread.currentThread(), context);
        }

        return context;
    }

    synchronized public static Context createThreadContext() {
        // Garbage collection. Remove all Context objects not associated with an OpenGL context.
        for (Iterator<Map.Entry<Thread, Context>> it = contextMap.entrySet().iterator(); it.hasNext(); ) {
            Map.Entry<Thread, Context> entry = it.next();

            Context context = entry.getValue();
            if (!context.active) {
                context.exec.shutdown();
                it.remove();
            }
        }

        Context context = getThreadContext();
        context.active = true;

        mainContext = context;
        mainThread = Thread.currentThread();
        Profiler.profiler.mainThread = Thread.currentThread();

        return context;
    }
}
