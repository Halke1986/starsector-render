package com.genir.renderer.bridge;

import com.genir.renderer.bridge.context.Recordable;

import static com.genir.renderer.bridge.context.ContextManager.context;

public class GL14 {
    public static void glBlendEquation(int mode) {
        record glBlendEquation(int mode) implements Runnable, Recordable {
            @Override
            public void run() {
                context.attribManager.glBlendEquation(mode);
            }
        }
        context.exec.execute(new glBlendEquation(mode));
    }

    public static void glBlendFuncSeparate(int sfactorRGB, int dfactorRGB, int sfactorAlpha, int dfactorAlpha) {
        record glBlendFuncSeparate(int sfactorRGB, int dfactorRGB, int sfactorAlpha, int dfactorAlpha) implements Runnable, Recordable {
            @Override
            public void run() {
                context.attribManager.glBlendFuncSeparate(sfactorRGB, dfactorRGB, sfactorAlpha, dfactorAlpha);
            }
        }
        context.exec.execute(new glBlendFuncSeparate(sfactorRGB, dfactorRGB, sfactorAlpha, dfactorAlpha));
    }
}
