package com.genir.renderer.overrides.loading;

public class ResourceLoaderLock {
    // During asset loading, clients on multiple threads submit tasks to the GL executor.
    // For performance reasons, the executor assumes client calls come from a single thread.
    // Callers must therefore use this lock to serialize access to the executor.
    public static final Object executorLock = new Object();
}
