package com.genir.renderer.async;

import java.util.concurrent.atomic.AtomicReference;

public class AsyncException {
    private final AtomicReference<Throwable> asyncException = new AtomicReference<>(null);
    private final ExceptionHandler handler = new ExceptionHandler();

    public void set(Throwable e) {
        if (e != null) {
            asyncException.compareAndSet(null, e);
        }
    }

    public Throwable get() {
        return asyncException.get();
    }

    public boolean compareAndSet(Throwable expectedValue, Throwable newValue) {
        return asyncException.compareAndSet(expectedValue, newValue);
    }

    public Throwable getAndSet(Throwable newValue) {
        return asyncException.getAndSet(newValue);
    }

    public ExceptionHandler getHandler() {
        return handler;
    }

    public class ExceptionHandler implements Thread.UncaughtExceptionHandler {
        @Override
        public void uncaughtException(Thread t, Throwable e) {
            set(e);
        }
    }
}
