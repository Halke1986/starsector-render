package com.genir.renderer.bridge.context;

import com.genir.renderer.bridge.context.interfaces.Releasable;

import java.nio.*;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

public class BufferPool {
    private final List<ByteBuffer>[] pool = new List[32];

    public BufferPool() {
        for (int i = 0; i < pool.length; i++) {
            pool[i] = new ArrayList<>();
        }
    }

    private ByteBuffer getMem(int bytes) {
        int idx = poolIdx(bytes);
        List<ByteBuffer> list = pool[idx];

        if (list.isEmpty()) {
            return ByteBuffer.allocateDirect(1 << idx).order(ByteOrder.nativeOrder());
        }

        return list.remove(list.size() - 1);
    }

    private static int poolIdx(int x) {
        if (x <= 0) {
            return 0;
        }
        return 32 - Integer.numberOfLeadingZeros(x - 1);
    }

    public synchronized FloatBufferSnapshot snapshot(FloatBuffer params) {
        if (params == null) {
            return new FloatBufferSnapshot(null, null, null);
        }

        ByteBuffer mem = getMem(params.capacity() * Float.BYTES);
        FloatBuffer buffer = mem.asFloatBuffer().slice(0, params.capacity());

        buffer.put(0, params, 0, params.limit());
        buffer.position(params.position());
        buffer.limit(params.limit());

        return new FloatBufferSnapshot(buffer, mem, this);
    }

    public synchronized ByteBufferSnapshot snapshot(ByteBuffer params) {
        if (params == null) {
            return new ByteBufferSnapshot(null, null, null);
        }

        ByteBuffer mem = getMem(params.capacity() * Byte.BYTES);
        ByteBuffer buffer = mem.slice(0, params.capacity());

        buffer.put(0, params, 0, params.limit());
        buffer.position(params.position());
        buffer.limit(params.limit());

        return new ByteBufferSnapshot(buffer, mem, this);
    }

    public synchronized IntBufferSnapshot snapshot(IntBuffer params) {
        if (params == null) {
            return new IntBufferSnapshot(null, null, null);
        }

        ByteBuffer mem = getMem(params.capacity() * Integer.BYTES);
        IntBuffer buffer = mem.asIntBuffer().slice(0, params.capacity());

        buffer.put(0, params, 0, params.limit());
        buffer.position(params.position());
        buffer.limit(params.limit());

        return new IntBufferSnapshot(buffer, mem, this);
    }

    public synchronized ShortBufferSnapshot snapshot(ShortBuffer params) {
        if (params == null) {
            return new ShortBufferSnapshot(null, null, null);
        }

        ByteBuffer mem = getMem(params.capacity() * Short.BYTES);
        ShortBuffer buffer = mem.asShortBuffer().slice(0, params.capacity());

        buffer.put(0, params, 0, params.limit());
        buffer.position(params.position());
        buffer.limit(params.limit());

        return new ShortBufferSnapshot(buffer, mem, this);
    }

    private synchronized void release(ByteBuffer mem) {
        pool[poolIdx(mem.capacity())].add(mem);
    }

    public static class FloatBufferSnapshot extends BufferSnapshot {
        public final FloatBuffer buffer;

        FloatBufferSnapshot(FloatBuffer buffer, ByteBuffer mem, BufferPool parent) {
            super(mem, parent);
            this.buffer = buffer;
        }
    }

    public static class ByteBufferSnapshot extends BufferSnapshot {
        public final ByteBuffer buffer;

        ByteBufferSnapshot(ByteBuffer buffer, ByteBuffer mem, BufferPool parent) {
            super(mem, parent);
            this.buffer = buffer;
        }
    }

    public static class IntBufferSnapshot extends BufferSnapshot {
        public final IntBuffer buffer;

        IntBufferSnapshot(IntBuffer buffer, ByteBuffer mem, BufferPool parent) {
            super(mem, parent);
            this.buffer = buffer;
        }
    }

    public static class ShortBufferSnapshot extends BufferSnapshot {
        public final ShortBuffer buffer;

        ShortBufferSnapshot(ShortBuffer buffer, ByteBuffer mem, BufferPool parent) {
            super(mem, parent);
            this.buffer = buffer;
        }
    }

    public static class BufferSnapshot implements Releasable {
        private final ByteBuffer mem;
        private final BufferPool parent;
        private final AtomicBoolean alreadyCleaned = new AtomicBoolean(false);

        BufferSnapshot(ByteBuffer mem, BufferPool parent) {
            this.mem = mem;
            this.parent = parent;
        }

        @Override
        public void release() {
            if (mem != null && alreadyCleaned.compareAndSet(false, true)) {
                parent.release(mem);
            }
        }
    }
}
