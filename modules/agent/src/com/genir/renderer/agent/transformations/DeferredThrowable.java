package com.genir.renderer.agent.transformations;

import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.ContextManager;

public class DeferredThrowable {
    private static Throwable deferredThrowable = null;

    /**
     * Set the throwable for later re-throw.
     */
    public static void set(Throwable t) {
        if (t != null && deferredThrowable == null) {
            deferredThrowable = t;
        }

        // Try to re-throw immediately.
        injectDeferredThrowableIntoRenderer();
    }

    /**
     * Use the executor exception handling to crash the application
     * in case of bytecode transformation failure.
     */
    public static void injectDeferredThrowableIntoRenderer() {
        if (deferredThrowable == null) {
            return;
        }

        // Handle cases when the transformation failed
        // before a rendering thread was started.
        final Context context = ContextManager.getThreadContext();
        if (context == null) {
            return;
        }

        final Throwable injection = deferredThrowable;
        context.exec.execute((ctx, args, offset) -> {
            throw new RuntimeException(injection);
        });

        deferredThrowable = null;
    }
}
