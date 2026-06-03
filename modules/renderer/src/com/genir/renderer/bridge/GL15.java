package com.genir.renderer.bridge;

import com.genir.renderer.bridge.context.BufferPool;
import com.genir.renderer.bridge.context.BufferPool.ByteBufferSnapshot;
import com.genir.renderer.bridge.context.BufferPool.FloatBufferSnapshot;
import com.genir.renderer.bridge.context.BufferUtil;
import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.commands.GLCommand;
import com.genir.renderer.bridge.context.commands.GLGetter;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;

import static com.genir.renderer.bridge.context.ContextManager.getThreadContext;

public class GL15 {
    public static int glGenBuffers() {
        return getThreadContext().bufferGenerator.get();
    }

    public static void glGenBuffers(IntBuffer buffers) {
        while (buffers.remaining() > 0) {
            buffers.put(getThreadContext().bufferGenerator.get());
        }
    }

    public static void glDeleteBuffers(int buffer) {
        record glDeleteBuffers(int buffer) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int offset) {
                org.lwjgl.opengl.GL15.glDeleteBuffers(buffer);
            }
        }

        final Context context = getThreadContext();
        context.exec.execute(new glDeleteBuffers(buffer));
    }

    public static void glDeleteBuffers(IntBuffer buffers) {
        record glDeleteBuffers(IntBuffer buffers) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int offset) {
                org.lwjgl.opengl.GL15.glDeleteBuffers(buffers);
            }
        }

        final Context context = getThreadContext();
        final IntBuffer snapshot = BufferUtil.snapshot(buffers);
        context.exec.execute(new glDeleteBuffers(snapshot));
    }

    public static void glBindBuffer(int target, int buffer) {
        record glBindBuffer(int target, int buffer) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int offset) {
                org.lwjgl.opengl.GL15.glBindBuffer(target, buffer);
            }
        }

        final Context context = getThreadContext();
        context.bufferManager.glBindBuffer(target, buffer);
        context.attribTracker.glBindBuffer(target, buffer);
        context.exec.execute(new glBindBuffer(target, buffer));
    }

    public static void glBufferData(int target, long data_size, int usage) {
        record glBufferData(int target, long data_size, int usage) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int offset) {
                org.lwjgl.opengl.GL15.glBufferData(target, data_size, usage);
            }
        }

        final Context context = getThreadContext();
        context.exec.execute(new glBufferData(target, data_size, usage));
    }

    public static void glBufferData(int target, FloatBuffer data, int usage) {
        record glBufferData(int target, FloatBufferSnapshot data, int usage) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int offset) {
                org.lwjgl.opengl.GL15.glBufferData(target, data.buffer, usage);
                data.release();
            }
        }

        final Context context = getThreadContext();
        final FloatBufferSnapshot snapshot = context.bufferPool.snapshot(data);
        context.exec.execute(new glBufferData(target, snapshot, usage));
    }

    public static void glBufferData(int target, ByteBuffer data, int usage) {
        record glBufferData(int target, ByteBufferSnapshot data, int usage) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int offset) {
                org.lwjgl.opengl.GL15.glBufferData(target, data.buffer, usage);
                data.release();
            }
        }

        final Context context = getThreadContext();
        final ByteBufferSnapshot snapshot = context.bufferPool.snapshot(data);
        context.exec.execute(new glBufferData(target, snapshot, usage));
    }

    public static void glBufferData(int target, ShortBuffer data, int usage) {
        record glBufferData(int target, ShortBuffer data, int usage) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int offset) {
                org.lwjgl.opengl.GL15.glBufferData(target, data, usage);
            }
        }

        final Context context = getThreadContext();
        final ShortBuffer snapshot = BufferUtil.snapshot(data);
        context.exec.execute(new glBufferData(target, snapshot, usage));
    }

    public static void glBufferData(int target, IntBuffer data, int usage) {
        record glBufferData(int target, IntBuffer data, int usage) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int offset) {
                org.lwjgl.opengl.GL15.glBufferData(target, data, usage);
            }
        }

        final Context context = getThreadContext();
        final IntBuffer snapshot = BufferUtil.snapshot(data);
        context.exec.execute(new glBufferData(target, snapshot, usage));
    }

    public static void glBufferSubData(int target, long offset, FloatBuffer data) {
        record glBufferSubData(int target, long offset, FloatBufferSnapshot data) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int offset) {
                org.lwjgl.opengl.GL15.glBufferSubData(target, offset, data.buffer);
                data.release();
            }
        }

        final Context context = getThreadContext();
        final FloatBufferSnapshot snapshot = context.bufferPool.snapshot(data);
        context.exec.execute(new glBufferSubData(target, offset, snapshot));
    }

    public static void glBufferSubData(int target, long offset, ShortBuffer data) {
        record glBufferSubData(int target, long offset, ShortBuffer data) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int offset) {
                org.lwjgl.opengl.GL15.glBufferSubData(target, offset, data);
            }
        }

        final Context context = getThreadContext();
        final ShortBuffer snapshot = BufferUtil.snapshot(data);
        context.exec.execute(new glBufferSubData(target, offset, snapshot));
    }

    public static void glBufferSubData(int target, long offset, IntBuffer data) {
        record glBufferSubData(int target, long offset, IntBuffer data) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int offset) {
                org.lwjgl.opengl.GL15.glBufferSubData(target, offset, data);
            }
        }

        final Context context = getThreadContext();
        final IntBuffer snapshot = BufferUtil.snapshot(data);
        context.exec.execute(new glBufferSubData(target, offset, snapshot));
    }

    public static void glBufferSubData(int target, long offset, ByteBuffer data) {
        record glBufferSubData(int target, long offset, ByteBufferSnapshot data) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int offset) {
                org.lwjgl.opengl.GL15.glBufferSubData(target, offset, data.buffer);
                data.release();
            }
        }

        final Context context = getThreadContext();
        final ByteBufferSnapshot snapshot = context.bufferPool.snapshot(data);
        context.exec.execute(new glBufferSubData(target, offset, snapshot));
    }

    public static boolean glUnmapBuffer(int target) {
        final Context context = getThreadContext();

        boolean handled = context.bufferManager.glUnmapBuffer(target);
        if (handled) {
            return true;
        }

        // Fall back to OpenGL glUnmapBuffer if bufferManager cannot handle the buffer.
        record glUnmapBuffer(int target) implements GLGetter<Boolean> {
            @Override
            public Boolean call(Context context) {
                return org.lwjgl.opengl.GL15.glUnmapBuffer(target);
            }
        }

        return context.exec.get(new glUnmapBuffer(target));
    }
}
