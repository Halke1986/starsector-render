package com.genir.renderer.bridge;

import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.commands.GLCommand;
import com.genir.renderer.bridge.context.commands.Recordable;

import static com.genir.renderer.bridge.context.ContextManager.getThreadContext;

public class GL14 {
    public static void glBlendEquation(int mode) {
        record glBlendEquation(int mode) implements GLCommand, Recordable {
            @Override
            public void run(Context context) {
                context.attribManager.glBlendEquation(mode);
            }
        }

        final Context context = getThreadContext();
        context.exec.execute(new glBlendEquation(mode));
    }

    public static void glBlendFuncSeparate(int sfactorRGB, int dfactorRGB, int sfactorAlpha, int dfactorAlpha) {
        record glBlendFuncSeparate(int sfactorRGB, int dfactorRGB, int sfactorAlpha, int dfactorAlpha) implements GLCommand, Recordable {
            @Override
            public void run(Context context) {
                context.attribManager.glBlendFuncSeparate(sfactorRGB, dfactorRGB, sfactorAlpha, dfactorAlpha);
            }
        }

        final Context context = getThreadContext();
        context.exec.execute(new glBlendFuncSeparate(sfactorRGB, dfactorRGB, sfactorAlpha, dfactorAlpha));
    }
}
