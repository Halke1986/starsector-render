package com.genir.renderer.bridge;

import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.commands.GLCommand;
import com.genir.renderer.bridge.context.commands.Recordable;

import static com.genir.renderer.bridge.context.ContextManager.getThreadContext;

public class GL14 {
    public static void glBlendEquation(int mode) {
        record glBlendEquation(int mode) implements GLCommand, Recordable {
            @Override
            public void run(Context context, int[] args) {
                context.attribManager.glBlendEquation(mode);
            }
        }

        final Context context = getThreadContext();
        context.exec.execute(new glBlendEquation(mode));
    }

    static class GlBlendFuncSeparate implements GLCommand, Recordable {
        @Override
        public void run(Context context, int[] args) {
            int sfactorRGB = args[0];
            int dfactorRGB = args[1];
            int sfactorAlpha = args[2];
            int dfactorAlpha = args[3];

            context.attribManager.glBlendFuncSeparate(sfactorRGB, dfactorRGB, sfactorAlpha, dfactorAlpha);
        }
    }

    static GlBlendFuncSeparate glBlendFuncSeparateCommand = new GlBlendFuncSeparate();

    public static void glBlendFuncSeparate(int sfactorRGB, int dfactorRGB, int sfactorAlpha, int dfactorAlpha) {
        getThreadContext().exec.execute(
                glBlendFuncSeparateCommand,
                sfactorRGB,
                dfactorRGB,
                sfactorAlpha,
                dfactorAlpha
        );
    }
}
