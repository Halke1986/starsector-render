package com.genir.renderer.bridge;

import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.commands.GLCommand;
import com.genir.renderer.bridge.context.commands.Recordable;

import static com.genir.renderer.bridge.context.ContextManager.getThreadContext;

public class GL14 {
    public static void glBlendEquation(int mode) {
        record glBlendEquation(int mode) implements GLCommand, Recordable {
            @Override
            public void run(Context context, float[] args, int offset) {
                context.attribManager.glBlendEquation(mode);
            }
        }

        final Context context = getThreadContext();
        context.exec.execute(new glBlendEquation(mode));
    }

    static class GlBlendFuncSeparate implements GLCommand, Recordable { // Heap optimized
        @Override
        public void run(Context context, float[] args, int offset) {
            int sfactorRGB = Float.floatToRawIntBits(args[offset + 1]);
            int dfactorRGB = Float.floatToRawIntBits(args[offset + 2]);
            int sfactorAlpha = Float.floatToRawIntBits(args[offset + 3]);
            int dfactorAlpha = Float.floatToRawIntBits(args[offset + 4]);

            context.attribManager.glBlendFuncSeparate(sfactorRGB, dfactorRGB, sfactorAlpha, dfactorAlpha);
        }
    }

    static GlBlendFuncSeparate glBlendFuncSeparateCommand = new GlBlendFuncSeparate();

    public static void glBlendFuncSeparate(int sfactorRGB, int dfactorRGB, int sfactorAlpha, int dfactorAlpha) {
        getThreadContext().exec.execute(
                glBlendFuncSeparateCommand,
                Float.intBitsToFloat(sfactorRGB),
                Float.intBitsToFloat(dfactorRGB),
                Float.intBitsToFloat(sfactorAlpha),
                Float.intBitsToFloat(dfactorAlpha)
        );
    }
}
