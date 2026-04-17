package com.genir.renderer.bridge;

import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.commands.GLCommand;
import com.genir.renderer.bridge.context.commands.GLGetter;
import org.lwjgl.LWJGLException;
import org.lwjgl.PointerBuffer;
import org.lwjgl.opengl.Drawable;

import static com.genir.renderer.bridge.context.ContextManager.getThreadContext;

public class SharedDrawable implements Drawable {
    private final org.lwjgl.opengl.SharedDrawable impl;

    public SharedDrawable(Drawable drawable) {
        record SharedDrawableConstructor(Drawable drawable) implements GLGetter<org.lwjgl.opengl.SharedDrawable> {
            @Override
            public org.lwjgl.opengl.SharedDrawable call(Context context) {
                try {
                    return new org.lwjgl.opengl.SharedDrawable(drawable);
                } catch (LWJGLException e) {
                    throw new RuntimeException(e);
                }
            }
        }

        impl = getThreadContext().exec.get(new SharedDrawableConstructor(drawable));
    }

    @Override
    public void makeCurrent() {
        record makeCurrent(org.lwjgl.opengl.SharedDrawable impl) implements GLCommand {
            @Override
            public void run(Context context) {
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

        final Context context = getThreadContext();
        context.active = true;
        context.exec.wait(new makeCurrent(impl));
    }

    @Override
    public void destroy() {
        record destroy(org.lwjgl.opengl.SharedDrawable impl) implements GLCommand {
            @Override
            public void run(Context context) {
                impl.destroy();
            }
        }

        final Context context = getThreadContext();
        context.exec.wait(new destroy(impl));
        context.active = false;
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
