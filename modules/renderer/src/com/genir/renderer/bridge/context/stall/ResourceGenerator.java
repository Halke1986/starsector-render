package com.genir.renderer.bridge.context.stall;

import com.genir.renderer.bridge.context.executor.Executor;

import java.nio.IntBuffer;
import java.util.Stack;
import java.util.concurrent.Callable;

public class ResourceGenerator {
    private final Executor exec;
    private final Callable<Integer> generatorFn;

    private int expectedCacheSize = 0;

    // NOTE: generators across related GL contexts share the same resource pool.
    // As long as the actual resource generation is delegated to a GL call, it
    // is safe to maintain separate ResourceGenerator objects per context.
    private final Stack<Integer> cache = new Stack<>();

    public ResourceGenerator(Callable<Integer> generate, Executor exec) {
        this.exec = exec;
        this.generatorFn = generate;
    }

    public int get() { // Main thread
        // Synchronize only this block. Otherwise,
        // a deadlock on executor.get may ensue.
        synchronized (this) {
            if (!cache.isEmpty()) {
                return cache.pop();
            }

            // Increase cache exponentially. Linear increase may lead
            // to asynchronous pipeline stalls if cache requirements
            // are rising steadily.
            expectedCacheSize = Math.max(1, expectedCacheSize * 2);
        }

        // If cache is empty, fall back to generating
        // the resource using an actual OpenGL call.
        return exec.get(context -> {
            fillCache();

            try {
                return generatorFn.call();
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        });
    }

    public void get(IntBuffer buffer) {
        IntBuffer writer = buffer.duplicate();
        while (writer.hasRemaining()) {
            writer.put(get());
        }
    }

    synchronized public void update() { // Render thread
        fillCache();
    }

    private void fillCache() {
        try {
            while (cache.size() < expectedCacheSize) {
                cache.push(generatorFn.call());
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
