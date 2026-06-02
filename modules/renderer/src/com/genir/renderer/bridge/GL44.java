package com.genir.renderer.bridge;

import com.genir.renderer.bridge.context.BufferPool.ByteBufferSnapshot;
import com.genir.renderer.bridge.context.BufferPool.FloatBufferSnapshot;
import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.commands.GLCommand;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;

import static com.genir.renderer.bridge.context.ContextManager.getThreadContext;

public class GL44 {
    public static void glBufferStorage(int target, ByteBuffer data, int flags) {
        record glBufferStorage(int target, ByteBufferSnapshot data, int flags) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int offset) {
                org.lwjgl.opengl.GL44.glBufferStorage(target, data.buffer, flags);
                data.release();
            }
        }

        final Context context = getThreadContext();
        final ByteBufferSnapshot snapshot = context.bufferPool.snapshot(data);
        context.exec.execute(new glBufferStorage(target, snapshot, flags));
    }

    public static void glBufferStorage(int target, FloatBuffer data, int flags) {
        record glBufferStorage(int target, FloatBufferSnapshot data, int flags) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int offset) {
                org.lwjgl.opengl.GL44.glBufferStorage(target, data.buffer, flags);
                data.release();
            }
        }

        final Context context = getThreadContext();
        final FloatBufferSnapshot snapshot = context.bufferPool.snapshot(data);
        context.exec.execute(new glBufferStorage(target, snapshot, flags));
    }

    public static void glBufferStorage(int target, long size, int flags) {
        record glBufferStorage(int target, long size, int flags) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int offset) {
                org.lwjgl.opengl.GL44.glBufferStorage(target, size, flags);
            }
        }

        getThreadContext().exec.execute(new glBufferStorage(target, size, flags));
    }
}
