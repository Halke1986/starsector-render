package com.genir.renderer.bridge.context;

import com.genir.renderer.bridge.context.commands.Releasable;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

public class BufferPool {
    private final List<ByteBuffer>[] pool = new List[32];

    private int hit = 0;
    private int miss = 0;
    private int ret = 0;

    public BufferPool() {
        for (int i = 0; i < pool.length; i++) {
            pool[i] = new ArrayList<>();
        }
    }

    private ByteBuffer getMem(int bytes) {
        int idx = poolIdx(bytes);
        List<ByteBuffer> list = pool[idx];

        System.out.println(ret + " " + miss + " " + hit);

        if (list.isEmpty()) {
            miss++;
            return ByteBuffer.allocateDirect((1 << idx) >> 1).order(ByteOrder.nativeOrder());
        }

        hit++;
        return list.remove(list.size() - 1);
    }

    private static int poolIdx(int x) {
        if (x <= 0) {
            return 0;
        }
        return 32 - Integer.numberOfLeadingZeros(x - 1) + 1;
    }

    public synchronized FloatBufferSnapshot snapshot(FloatBuffer params) {
        ByteBuffer mem = getMem(params.capacity() * Float.BYTES);
        FloatBuffer buffer = mem.asFloatBuffer().slice(0, params.capacity());

        buffer.put(0, params, 0, params.limit());
        buffer.position(params.position());
        buffer.limit(params.limit());

        return new FloatBufferSnapshot(buffer, mem, this);
    }

    private synchronized void release(ByteBuffer mem) {
        ret++;
        pool[poolIdx(mem.capacity())].add(mem);
    }

    public static class FloatBufferSnapshot implements Releasable {
        public final FloatBuffer buffer;

        private final ByteBuffer mem;
        private final BufferPool parent;
        private final AtomicBoolean alreadyCleaned = new AtomicBoolean(false);

        FloatBufferSnapshot(FloatBuffer buffer, ByteBuffer mem, BufferPool parent) {
            this.buffer = buffer;
            this.mem = mem;
            this.parent = parent;
        }

        @Override
        public void release() {
            if (alreadyCleaned.compareAndSet(false, true)) {
                parent.release(mem);
            }
        }
    }
}
