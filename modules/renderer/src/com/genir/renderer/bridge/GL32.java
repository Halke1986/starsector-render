package com.genir.renderer.bridge;

import com.genir.renderer.bridge.context.Context;

import java.util.concurrent.Callable;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutionException;

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

//    public static GLSync glFenceSync(int condition, int flags) {
//        record glFenceSync(Context context, CompletableFuture<org.lwjgl.opengl.GLSync> future, int condition, int flags) implements Runnable {
//            @Override
//            public void run() {
//                future.complete(org.lwjgl.opengl.GL32.glFenceSync(condition, flags));
//                context.update();
//            }
//        }
//
//        final CompletableFuture<org.lwjgl.opengl.GLSync> future = new CompletableFuture<>();
//        final Context context = getContext();
//        context.exec.execute(new glFenceSync(context, future, condition, flags));
//
//        // Execute commands, so other rendering threads waiting for this
//        // glSync can proceed and do not deadlock on a get or wait call.
//        context.exec.swapFrames();
//        return new GLSync(future, context);
//    }
//
//    public static void glWaitSync(GLSync sync, int flags, long timeout) {
//        record glWaitSync(GLSync sync, int flags, long timeout) implements Runnable {
//            @Override
//            public void run() {
//                try {
//                    // Wait until sync point is created in the detached rendering thread.
//                    org.lwjgl.opengl.GLSync impl = sync.future().get();
//
//                    // Wait until sync point is executed in the detached rendering thread.
//                    org.lwjgl.opengl.GL32.glWaitSync(impl, flags, timeout);
//                } catch (InterruptedException | ExecutionException e) {
//                    throw new RuntimeException(e);
//                }
//            }
//        }
//
//        getContext().exec.execute(new glWaitSync(sync, flags, timeout));
//    }
//
//    public static void glDeleteSync(GLSync sync) {
//        record glDeleteSync(GLSync sync) implements Runnable {
//            @Override
//            public void run() {
//                try {
//                    org.lwjgl.opengl.GLSync impl = sync.future().get();
//                    org.lwjgl.opengl.GL32.glDeleteSync(impl);
//                } catch (InterruptedException | ExecutionException e) {
//                    throw new RuntimeException(e);
//                }
//            }
//        }
//
//        getContext().exec.execute(new glDeleteSync(sync));
//    }
}
