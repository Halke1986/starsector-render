package com.genir.renderer.bridge;

import com.genir.renderer.bridge.state.BufferUtil;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;

import static com.genir.renderer.bridge.state.AppState.state;


public class GL44 {
    public static void glBufferStorage(int target, ByteBuffer data, int flags) {
        record glBufferStorage(int target, ByteBuffer data, int flags) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL44.glBufferStorage(target, data, flags);
            }
        }
        final ByteBuffer snapshot = BufferUtil.snapshot(data);
        state.exec.execute(new glBufferStorage(target, snapshot, flags));
    }

    public static void glBufferStorage(int target, FloatBuffer data, int flags) {
        record glBufferStorage(int target, FloatBuffer data, int flags) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL44.glBufferStorage(target, data, flags);
            }
        }
        final FloatBuffer snapshot = BufferUtil.snapshot(data);
        state.exec.execute(new glBufferStorage(target, snapshot, flags));
    }

    public static void glBufferStorage(int target, long size, int flags) {
        record glBufferStorage(int target, long size, int flags) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL44.glBufferStorage(target, size, flags);
            }
        }
        state.exec.execute(new glBufferStorage(target, size, flags));
    }
}
