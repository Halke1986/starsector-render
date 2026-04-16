package com.genir.renderer.bridge;

import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.Recordable;

import static com.genir.renderer.bridge.context.ContextManager.getContext;
import static com.genir.renderer.bridge.context.ContextManager.getThreadContext;

public class GL14 {
    public static void glBlendEquation(int mode) {
        record glBlendEquation(int contextId, int mode) implements Runnable, Recordable {
            @Override
            public void run() {
                getContext(contextId).attribManager.glBlendEquation(mode);
            }
        }
        final Context context = getThreadContext();
        context.exec.execute(new glBlendEquation(context.id, mode));
    }

    public static void glBlendFuncSeparate(int sfactorRGB, int dfactorRGB, int sfactorAlpha, int dfactorAlpha) {
        record glBlendFuncSeparate(int contextId, int sfactorRGB, int dfactorRGB, int sfactorAlpha, int dfactorAlpha) implements Runnable, Recordable {
            @Override
            public void run() {
                getContext(contextId).attribManager.glBlendFuncSeparate(sfactorRGB, dfactorRGB, sfactorAlpha, dfactorAlpha);
            }
        }
        final Context context = getThreadContext();
        context.exec.execute(new glBlendFuncSeparate(context.id, sfactorRGB, dfactorRGB, sfactorAlpha, dfactorAlpha));
    }
}
