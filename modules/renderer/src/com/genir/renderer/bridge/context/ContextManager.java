package com.genir.renderer.bridge.context;

import java.util.HashMap;
import java.util.Map;

import static com.genir.renderer.debug.Debug.asert;

public class ContextManager {
    // Default context for running LWJGL methods when OpenGL context is not defined.
    private static final Context backgroundContext = new Context();

    private static final Map<Thread, Context> contextMap = new HashMap<>();
    private static Context context = backgroundContext;

    public static Context getContext() {
        return context;
    }

    public static void create() {
        Context newContext = new Context();

        contextMap.put(Thread.currentThread(), newContext);
        context = newContext;
    }

    public static void destroy() {
        asert(contextMap.get(Thread.currentThread()) == context);

        context.exec.shutdown();

        contextMap.remove(Thread.currentThread());
        context = backgroundContext;
    }

    public static void updateAll() {
        for (Context context : contextMap.values()) {
            context.update();
        }
    }
}
