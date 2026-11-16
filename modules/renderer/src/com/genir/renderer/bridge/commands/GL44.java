package com.genir.renderer.bridge.commands;

import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.ContextManager;
import com.genir.renderer.bridge.interfaces.DebugString;
import com.genir.renderer.bridge.interfaces.GLCommand;
import com.genir.renderer.bridge.pool.BufferPool;
import com.genir.renderer.bridge.pool.BufferPool.ByteBufferSnapshot;
import com.genir.renderer.bridge.pool.BufferPool.FloatBufferSnapshot;
import com.genir.renderer.bridge.pool.BufferPool.IntBufferSnapshot;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;

public class GL44 {
    public static void glBufferStorage(int target, ByteBuffer data, int flags) {
        record glBufferStorage(int target, ByteBufferSnapshot data, int flags) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int argsOffset) {
                org.lwjgl.opengl.GL44.glBufferStorage(target, data.buffer, flags);
                data.release();
            }
        }

        final Context context = ContextManager.getThreadContext();
        final ByteBufferSnapshot snapshot = BufferPool.bufferPool.snapshot(data);
        context.exec.execute(new glBufferStorage(target, snapshot, flags));
    }

    public static void glBufferStorage(int target, FloatBuffer data, int flags) {
        record glBufferStorage(int target, FloatBufferSnapshot data, int flags) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int argsOffset) {
                org.lwjgl.opengl.GL44.glBufferStorage(target, data.buffer, flags);
                data.release();
            }
        }

        final Context context = ContextManager.getThreadContext();
        final FloatBufferSnapshot snapshot = BufferPool.bufferPool.snapshot(data);
        context.exec.execute(new glBufferStorage(target, snapshot, flags));
    }

    public static void glBufferStorage(int target, long size, int flags) {
        record glBufferStorage(int target, long size, int flags) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int argsOffset) {
                org.lwjgl.opengl.GL44.glBufferStorage(target, size, flags);
            }
        }

        final Context context = ContextManager.getThreadContext();
        context.exec.execute(new glBufferStorage(target, size, flags));
    }

    public static void glBindTextures(int first, int count, IntBuffer textures) {
        record glBindTextures(int first, int count, IntBufferSnapshot textures, int[] targets) implements GLCommand, DebugString {
            @Override
            public void run(Context context, float[] args, int argsOffset) {
                org.lwjgl.opengl.GL44.glBindTextures(first, count, textures.buffer);

                // Leave the buffer allocated in case the debug log requires it.
                // GL44.glBindTextures call is infrequent enough that it should
                // not lead to a noticeable allocation pressure.
            }

            @Override
            public String debugString(Context context, float[] args, int argsOffset) {
                StringBuilder builder = new StringBuilder();

                builder.append("glBindTextures[");
                builder.append("first=").append(first).append(", ");
                builder.append("count=").append(count).append(", ");

                if (textures.buffer == null) {
                    builder.append("textures=null, ");
                } else {
                    builder.append("textures=[");
                    IntBuffer reader = textures.buffer.duplicate();
                    for (int i = 0; i < count; i++) {
                        builder.append(reader.get());
                        if (i != count - 1) {
                            builder.append(", ");
                        }
                    }
                    builder.append("], ");
                }

                builder.append("targets=[");
                for (int i = 0; i < count; i++) {
                    builder.append(targets[i]);
                    if (i != count - 1) {
                        builder.append(", ");
                    }
                }
                builder.append("]");

                return builder.toString();
            }
        }

        final Context context = ContextManager.getThreadContext();
        final int[] targets = context.textureTracker.getTextureTargets(count, textures);
        final IntBufferSnapshot snapshot = BufferPool.bufferPool.snapshot(textures);

        context.attribTracker.glBindTextures(first, count, textures, targets);
        context.textureManager.glBindTextures(context, count, targets, textures);
        context.exec.execute(new glBindTextures(first, count, snapshot, targets));
    }
}

