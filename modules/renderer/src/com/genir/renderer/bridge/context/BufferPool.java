package com.genir.renderer.bridge.context;

import com.genir.renderer.bridge.interfaces.Releasable;
import org.lwjgl.BufferUtils;

import java.nio.*;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

public class BufferPool {
    private final List<ShortBufferSnapshot>[] shortPool = new List[32];
    private final List<IntBufferSnapshot>[] intPool = new List[32];
    private final List<ByteBufferSnapshot>[] bytePool = new List[32];
    private final List<FloatBufferSnapshot>[] floatPool = new List[32];

    public BufferPool() {
        for (int i = 0; i < shortPool.length; i++) shortPool[i] = new ArrayList<>();
        for (int i = 0; i < intPool.length; i++) intPool[i] = new ArrayList<>();
        for (int i = 0; i < bytePool.length; i++) bytePool[i] = new ArrayList<>();
        for (int i = 0; i < floatPool.length; i++) floatPool[i] = new ArrayList<>();
    }

    private static int poolIdx(int x) {
        if (x <= 0) {
            return 0;
        }
        return 32 - Integer.numberOfLeadingZeros(x - 1);
    }

    public FloatBufferSnapshot snapshot(FloatBuffer params) {
        if (params == null) {
            return new FloatBufferSnapshot(0);
        }

        int idx = poolIdx(params.capacity());
        FloatBufferSnapshot snapshot;

        synchronized (floatPool) {
            List<FloatBufferSnapshot> list = floatPool[idx];
            if (list.isEmpty()) {
                snapshot = new FloatBufferSnapshot(1 << idx);
            } else {
                snapshot = list.remove(list.size() - 1);
            }
        }

        snapshot.buffer.clear();
        snapshot.buffer.put(0, params, 0, params.limit());
        snapshot.buffer.position(params.position());
        snapshot.buffer.limit(params.limit());

        snapshot.alreadyCleaned.set(false);

        return snapshot;
    }

    public ByteBufferSnapshot snapshot(ByteBuffer params) {
        if (params == null) {
            return new ByteBufferSnapshot(0);
        }

        int idx = poolIdx(params.capacity());
        ByteBufferSnapshot snapshot;

        synchronized (bytePool) {
            List<ByteBufferSnapshot> list = bytePool[idx];
            if (list.isEmpty()) {
                snapshot = new ByteBufferSnapshot(1 << idx);
            } else {
                snapshot = list.remove(list.size() - 1);
            }
        }

        snapshot.buffer.clear();
        snapshot.buffer.put(0, params, 0, params.limit());
        snapshot.buffer.position(params.position());
        snapshot.buffer.limit(params.limit());

        snapshot.alreadyCleaned.set(false);

        return snapshot;
    }

    public IntBufferSnapshot snapshot(IntBuffer params) {
        if (params == null) {
            return new IntBufferSnapshot(0);
        }

        int idx = poolIdx(params.capacity());
        IntBufferSnapshot snapshot;

        synchronized (intPool) {
            List<IntBufferSnapshot> list = intPool[idx];
            if (list.isEmpty()) {
                snapshot = new IntBufferSnapshot(1 << idx);
            } else {
                snapshot = list.remove(list.size() - 1);
            }
        }

        snapshot.buffer.clear();
        snapshot.buffer.put(0, params, 0, params.limit());
        snapshot.buffer.position(params.position());
        snapshot.buffer.limit(params.limit());

        snapshot.alreadyCleaned.set(false);

        return snapshot;
    }

    public ShortBufferSnapshot snapshot(ShortBuffer params) {
        if (params == null) {
            return new ShortBufferSnapshot(0);
        }

        int idx = poolIdx(params.capacity());
        ShortBufferSnapshot snapshot;

        synchronized (shortPool) {
            List<ShortBufferSnapshot> list = shortPool[idx];
            if (list.isEmpty()) {
                snapshot = new ShortBufferSnapshot(1 << idx);
            } else {
                snapshot = list.remove(list.size() - 1);
            }
        }

        snapshot.buffer.clear();
        snapshot.buffer.put(0, params, 0, params.limit());
        snapshot.buffer.position(params.position());
        snapshot.buffer.limit(params.limit());

        snapshot.alreadyCleaned.set(false);

        return snapshot;
    }

    public class FloatBufferSnapshot implements Releasable {
        public final FloatBuffer buffer;
        private final BufferPool parent = BufferPool.this;
        final AtomicBoolean alreadyCleaned = new AtomicBoolean(false);

        FloatBufferSnapshot(int n2size) {
            buffer = n2size != 0 ? BufferUtils.createFloatBuffer(n2size) : null;
        }

        @Override
        public void release() {
            if (buffer != null && alreadyCleaned.compareAndSet(false, true)) {
                synchronized (parent.floatPool) {
                    parent.floatPool[poolIdx(buffer.capacity())].add(this);
                }
            }
        }
    }

    public class ByteBufferSnapshot implements Releasable {
        public final ByteBuffer buffer;
        private final BufferPool parent = BufferPool.this;
        final AtomicBoolean alreadyCleaned = new AtomicBoolean(false);

        ByteBufferSnapshot(int n2size) {
            buffer = n2size != 0 ? BufferUtils.createByteBuffer(n2size) : null;
        }

        @Override
        public void release() {
            if (buffer != null && alreadyCleaned.compareAndSet(false, true)) {
                synchronized (parent.bytePool) {
                    parent.bytePool[poolIdx(buffer.capacity())].add(this);
                }
            }
        }
    }

    public class IntBufferSnapshot implements Releasable {
        public final IntBuffer buffer;
        private final BufferPool parent = BufferPool.this;
        final AtomicBoolean alreadyCleaned = new AtomicBoolean(false);

        IntBufferSnapshot(int n2size) {
            buffer = n2size != 0 ? BufferUtils.createIntBuffer(n2size) : null;
        }

        @Override
        public void release() {
            if (buffer != null && alreadyCleaned.compareAndSet(false, true)) {
                synchronized (parent.intPool) {
                    parent.intPool[poolIdx(buffer.capacity())].add(this);
                }
            }
        }
    }

    public class ShortBufferSnapshot implements Releasable {
        public final ShortBuffer buffer;
        private final BufferPool parent = BufferPool.this;
        final AtomicBoolean alreadyCleaned = new AtomicBoolean(false);

        ShortBufferSnapshot(int n2size) {
            buffer = n2size != 0 ? BufferUtils.createShortBuffer(n2size) : null;
        }

        @Override
        public void release() {
            if (buffer != null && alreadyCleaned.compareAndSet(false, true)) {
                synchronized (parent.shortPool) {
                    parent.shortPool[poolIdx(buffer.capacity())].add(this);
                }
            }
        }
    }
}
