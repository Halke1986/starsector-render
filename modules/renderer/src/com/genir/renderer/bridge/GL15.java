package com.genir.renderer.bridge;

import com.genir.renderer.bridge.impl.BufferUtil;

import java.nio.FloatBuffer;
import java.util.concurrent.Callable;

import static com.genir.renderer.bridge.impl.Bridge.clientAttribTracker;
import static com.genir.renderer.bridge.impl.Bridge.exec;

public class GL15 {
    public static void glBindBuffer(int target, int buffer) {
        record glBindBuffer(int target, int buffer) implements Runnable {
            @Override
            public void run() {
                //        vertexInterceptor.arraysTouched();
                org.lwjgl.opengl.GL15.glBindBuffer(target, buffer);
            }
        }

        clientAttribTracker.glBindBuffer(target, buffer);
        exec.execute(new glBindBuffer(target, buffer));
    }

    public static void glDeleteBuffers(int buffer) {
        record glDeleteBuffers(int buffer) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL15.glDeleteBuffers(buffer);
            }
        }
        exec.execute(new glDeleteBuffers(buffer));
    }

    public static int glGenBuffers() {
        record glGenBuffers() implements Callable<Integer> {
            @Override
            public Integer call() {
                return org.lwjgl.opengl.GL15.glGenBuffers();
            }
        }
        return exec.get(new glGenBuffers());
    }

    public static void glBufferData(int target, FloatBuffer data, int usage) {
        record glBufferData(int target, FloatBuffer data, int usage) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL15.glBufferData(target, data, usage);
            }
        }
        final FloatBuffer snapshot = BufferUtil.snapshot(data);
        exec.execute(new glBufferData(target, snapshot, usage));
    }
}
