package com.genir.renderer.bridge.context;

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

    private static Context mainContext = new Context();
    private static Thread mainThread = Thread.currentThread();

    static {
        contextMap.put(mainThread, mainContext);
    }

    public static Context getContext() {
        if (Thread.currentThread() == mainThread) {
            return mainContext;
        }

        return contextMap.computeIfAbsent(Thread.currentThread(), t -> new Context());
    }

    public static void createContext() {
        Context context = getContext();

        context.active = true;

        mainContext = context;
        mainThread = Thread.currentThread();
    }

    public static void destroy() {
        getContext().active = false;
    }

    public static void updateAll() {
        for (Context context : contextMap.values()) {
            context.update();
        }
    }
}
