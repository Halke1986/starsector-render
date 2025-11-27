package com.genir.renderer.state.stall;


import com.genir.renderer.state.Executor;

import java.nio.IntBuffer;
import java.util.Stack;
import java.util.concurrent.Callable;

public class ResourceGenerator {
    private final Executor exec;
    private final Callable<Integer> generatorFn;

    private int requiredThisFrame = 0;
    private int cacheSize = 0;

    private final Stack<Integer> stash = new Stack<>();

    public ResourceGenerator(Callable<Integer> generate, Executor exec) {
        this.exec = exec;
        this.generatorFn = generate;
    }

    public int get() { // Main thread
        synchronized (this) {
            requiredThisFrame++;

            if (!stash.isEmpty()) {
                return stash.pop();
            }
        }

        // If cache is empty, fall back to generating
        // the resource using an actual OpenGL call.
        return exec.get(generatorFn);
    }

    public void get(IntBuffer buffer) {
        int startPosition = buffer.position();
        while (buffer.hasRemaining()) {
            buffer.put(get());
        }

        // OpenGL calls do not modify the buffer position.
        buffer.position(startPosition);
    }

    synchronized public void update() { // Render thread
        if (cacheSize == 0 && requiredThisFrame == 0) {
            return;
        }

        if (cacheSize == 0) {
            cacheSize = 1;
        }

        // Increase cache exponentially. Linear increase may lead
        // to asynchronous pipeline stalls if cache requirements
        // are rising steadily.
        while (cacheSize < requiredThisFrame) {
            cacheSize *= 2;
        }

        requiredThisFrame = 0;

        while (stash.size() < cacheSize) {
            try {
                stash.push(generatorFn.call());
            } catch (RuntimeException e) {
                throw e;
            } catch (Throwable t) {
                throw new RuntimeException(t);
            }
        }
    }

    synchronized public void clear() {
        requiredThisFrame = 0;
        cacheSize = 0;
        stash.clear();
    }
}
