package com.genir.renderer.bridge;

import com.genir.renderer.bridge.context.BufferUtil;
import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.commands.GLCommand;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;

import static com.genir.renderer.bridge.context.ContextManager.getThreadContext;

public class GL44 {
    public static void glBufferStorage(int target, ByteBuffer data, int flags) {
        record glBufferStorage(int target, ByteBuffer data, int flags) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                org.lwjgl.opengl.GL44.glBufferStorage(target, data, flags);
            }
        }

        final ByteBuffer snapshot = BufferUtil.snapshot(data);
        getThreadContext().exec.execute(new glBufferStorage(target, snapshot, flags));
    }

    public static void glBufferStorage(int target, FloatBuffer data, int flags) {
        record glBufferStorage(int target, FloatBuffer data, int flags) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                org.lwjgl.opengl.GL44.glBufferStorage(target, data, flags);
            }
        }

        final FloatBuffer snapshot = BufferUtil.snapshot(data);
        getThreadContext().exec.execute(new glBufferStorage(target, snapshot, flags));
    }

    public static void glBufferStorage(int target, long size, int flags) {
        record glBufferStorage(int target, long size, int flags) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                org.lwjgl.opengl.GL44.glBufferStorage(target, size, flags);
            }
        }

        getThreadContext().exec.execute(new glBufferStorage(target, size, flags));
    }
}
