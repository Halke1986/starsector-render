package com.genir.renderer.bridge;

import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.ContextManager;
import org.lwjgl.LWJGLException;
import org.lwjgl.PointerBuffer;
import org.lwjgl.opengl.Drawable;

import java.util.concurrent.Callable;

import static com.genir.renderer.bridge.context.ContextManager.getContext;

public class SharedDrawable implements Drawable {
    private final org.lwjgl.opengl.SharedDrawable impl;

    public SharedDrawable(Drawable drawable) {
        record SharedDrawableConstructor(Drawable drawable) implements Callable<org.lwjgl.opengl.SharedDrawable> {
            @Override
            public org.lwjgl.opengl.SharedDrawable call() throws Exception {
                return new org.lwjgl.opengl.SharedDrawable(drawable);
            }
        }

        impl = getContext().exec.get(new SharedDrawableConstructor(drawable));
    }

    @Override
    public void makeCurrent() {
        record makeCurrent(Context context, org.lwjgl.opengl.SharedDrawable impl) implements Runnable {
            @Override
            public void run() {
                try {
                    impl.makeCurrent();
                    context.update();
                } catch (RuntimeException e) {
                    throw e;
                } catch (Throwable t) {
                    throw new RuntimeException(t);
                }
            }
        }

        ContextManager.makeCurrent();
        final Context context = getContext();
        context.exec.wait(new makeCurrent(context, impl));
    }

    @Override
    public void destroy() {
        record destroy(org.lwjgl.opengl.SharedDrawable impl) implements Runnable {
            @Override
            public void run() {
                impl.destroy();
            }
        }
        getContext().exec.wait(new destroy(impl));
        ContextManager.destroy();
    }

    @Override
    public boolean isCurrent() throws LWJGLException {
        throw new UnsupportedOperationException();
    }

    @Override
    public void releaseContext() throws LWJGLException {
        throw new UnsupportedOperationException();
    }

    @Override
    public void setCLSharingProperties(PointerBuffer pointerBuffer) throws LWJGLException {
        throw new UnsupportedOperationException();
    }
}
