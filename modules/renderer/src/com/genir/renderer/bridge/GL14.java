package com.genir.renderer.bridge;

import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.commands.GLCommand;
import com.genir.renderer.bridge.context.commands.Recordable;

import static com.genir.renderer.bridge.context.ContextManager.getThreadContext;

public class GL14 {
    public static void glBlendEquation(int mode) {
        record glBlendEquation(int mode) implements GLCommand, Recordable {
            @Override
            public void run(Context context, int[] args, int offset) {
                context.attribManager.glBlendEquation(mode);
            }
        }

        final Context context = getThreadContext();
        context.exec.execute(new glBlendEquation(mode));
    }

    static class GlBlendFuncSeparate implements GLCommand, Recordable { // Heap optimized
        @Override
        public void run(Context context, int[] args, int offset) {
            int sfactorRGB = args[offset + 1];
            int dfactorRGB = args[offset + 2];
            int sfactorAlpha = args[offset + 3];
            int dfactorAlpha = args[offset + 4];

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
