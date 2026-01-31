package com.genir.renderer.bridge;

import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.Recordable;

import static com.genir.renderer.bridge.context.ContextManager.getContext;

public class GL14 {
    public static void glBlendEquation(int mode) {
        record glBlendEquation(Context context, int mode) implements Runnable, Recordable {
            @Override
            public void run() {
                context.attribManager.glBlendEquation(mode);
            }
        }
        final Context context = getContext();
        context.exec.execute(new glBlendEquation(context, mode));
    }

    public static void glBlendFuncSeparate(int sfactorRGB, int dfactorRGB, int sfactorAlpha, int dfactorAlpha) {
        record glBlendFuncSeparate(Context context, int sfactorRGB, int dfactorRGB, int sfactorAlpha, int dfactorAlpha) implements Runnable, Recordable {
            @Override
            public void run() {
                context.attribManager.glBlendFuncSeparate(sfactorRGB, dfactorRGB, sfactorAlpha, dfactorAlpha);
            }
        }
        final Context context = getContext();
        context.exec.execute(new glBlendFuncSeparate(context, sfactorRGB, dfactorRGB, sfactorAlpha, dfactorAlpha));
    }
}
