package com.genir.renderer.bridge.commands;

import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.ContextManager;
import com.genir.renderer.bridge.interfaces.GLCommand;
import com.genir.renderer.bridge.interfaces.GLGetter;
import org.lwjgl.LWJGLException;
import org.lwjgl.PointerBuffer;
import org.lwjgl.opengl.Drawable;

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

        final Context context = ContextManager.getThreadContext();
        impl = context.exec.get(new SharedDrawableConstructor(drawable));
    }

    @Override
    public void makeCurrent() {
        record makeCurrent(org.lwjgl.opengl.SharedDrawable impl) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int argsOffset) {
                try {
                    impl.makeCurrent();
                    context.update();
                } catch (LWJGLException e) {
                    throw new RuntimeException(e);
                }
            }
        }

        final Context context = ContextManager.createAuxContext(impl);
        context.exec.wait(new makeCurrent(impl));
    }

    @Override
    public void destroy() {
        record destroy() implements GLCommand {
            @Override
            public void run(Context context, float[] args, int argsOffset) {
                context.destroy();
            }
        }

        final Context context = ContextManager.removeAuxContext();
        context.exec.wait(new destroy());
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
