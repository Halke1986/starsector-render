package com.genir.renderer.bridge;

import com.genir.renderer.bridge.impl.BufferUtil;

import java.nio.FloatBuffer;

import static com.genir.renderer.bridge.impl.Bridge.exec;

public class GL15 {
    public static void glBindBuffer(int target, int buffer) {
//        record glEnd() implements Runnable {
//            @Override
//            public void run() {
////                if (listManager.isRecording(this))
////                    return;
//
//                vertexInterceptor.glEnd();
//            }
//        }
//        exec.execute(new glEnd());

//        clientAttribTracker.glVertexPointer(0, 0, null);
//        clientAttribTracker.glColorPointer(0, false, 0, null);
//        clientAttribTracker.glTexCoordPointer(0, 0, null);

//        vertexInterceptor.arraysTouched();

        exec.execute(() -> org.lwjgl.opengl.GL15.glBindBuffer(target, buffer));
    }

    public static void glDeleteBuffers(int buffer) {
        exec.execute(() -> org.lwjgl.opengl.GL15.glDeleteBuffers(buffer));
    }

    /**
     * Blocking.
     */
    public static int glGenBuffers() {
        return exec.get(() -> org.lwjgl.opengl.GL15.glGenBuffers());
    }

    public static void glBufferData(int target, FloatBuffer data, int usage) {
//        record glEnd() implements Runnable {
//            @Override
//            public void run() {
//                if (listManager.isRecording(this))
//                    return;
//
//                vertexInterceptor.glEnd();
//            }
//        }
//        exec.execute(new glEnd());

        final FloatBuffer snapshot = BufferUtil.snapshot(data);
        exec.execute(() -> org.lwjgl.opengl.GL15.glBufferData(target, snapshot, usage));
    }
}
