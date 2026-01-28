package com.genir.renderer.bridge;

import org.lwjgl.opengl.GLSync;

import java.util.concurrent.Callable;

import static com.genir.renderer.bridge.context.ContextManager.getContext;

public class GL32 {
    public static long glGetInteger64(int pname) {
        record glGetInteger64(int pname) implements Callable<Long> {
            @Override
            public Long call() {
                return org.lwjgl.opengl.GL32.glGetInteger64(pname);
            }
        }

        return getContext().exec.get(new glGetInteger64(pname));
    }

    public static long glGetInteger64(int value, int index) {
        record glGetInteger64(int value, int index) implements Callable<Long> {
            @Override
            public Long call() {
                return org.lwjgl.opengl.GL32.glGetInteger64(value, index);
            }
        }

        return getContext().exec.get(new glGetInteger64(value, index));
    }


    public static void glDeleteSync(GLSync sync) {
        record glDeleteSync(GLSync sync) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL32.glDeleteSync(sync);
            }
        }

        getContext().exec.execute(new glDeleteSync(sync));
    }

    public static GLSync glFenceSync(int condition, int flags) {
        record glFenceSync(int condition, int flags) implements Callable<GLSync> {
            @Override
            public GLSync call() {
                return org.lwjgl.opengl.GL32.glFenceSync(condition, flags);
            }
        }

        return getContext().exec.get(new glFenceSync(condition, flags));
    }

    public static void glWaitSync(GLSync sync, int flags, long timeout) {
        record glWaitSync(GLSync sync, int flags, long timeout) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL32.glWaitSync(sync, flags, timeout);
            }
        }

        getContext().exec.execute(new glWaitSync(sync, flags, timeout));
    }
}
