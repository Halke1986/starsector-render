package com.genir.renderer.bridge.impl;

import org.lwjgl.BufferUtils;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;

public class Bridge {
    public static final ListManager listManager = new ListManager();
    public static final Executor exec = new Executor();
    public static final StateCache stateCache = new StateCache();
    public static final MatrixStack modelView = new MatrixStack();
    public static final VertexInterceptor vertexInterceptor = new VertexInterceptor(exec);

    public static FloatBuffer bufferSnapshot(FloatBuffer params) {
        FloatBuffer reader = params.duplicate();
        reader.rewind();

        FloatBuffer snapshot = BufferUtils.createFloatBuffer(reader.limit());
        snapshot.put(reader);

        snapshot.flip();
        return snapshot;
    }

    public static ByteBuffer bufferSnapshot(ByteBuffer params) {
        ByteBuffer reader = params.duplicate();
        reader.rewind();

        ByteBuffer snapshot = BufferUtils.createByteBuffer(reader.limit());
        snapshot.put(reader);

        snapshot.flip();
        return snapshot;
    }

    public static void update(){
        stateCache.update();
        vertexInterceptor.update();
    }
}
