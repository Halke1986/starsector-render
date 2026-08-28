package com.genir.renderer.bridge.commands;

import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.interfaces.GLCommand;
import com.genir.renderer.bridge.interfaces.Recordable;

import static com.genir.renderer.bridge.context.ContextManager.getThreadContext;

public class GL14 {
    public static void glBlendEquation(int mode) {
        record glBlendEquation(int mode) implements GLCommand, Recordable {
            @Override
            public void run(Context context, float[] args, int argsOffset) {
                if (context.listManager.isRecording(this, args, argsOffset))
                    return;

                context.attribManager.glBlendEquation(mode);
            }
        }

        final Context context = getThreadContext();
        context.exec.execute(new glBlendEquation(mode));
    }

    public static void glBlendFuncSeparate(int sfactorRGB, int dfactorRGB, int sfactorAlpha, int dfactorAlpha) {
        record glBlendFuncSeparate(int sfactorRGB, int dfactorRGB, int sfactorAlpha, int dfactorAlpha) implements GLCommand, Recordable {
            @Override
            public void run(Context context, float[] args, int argsOffset) {
                if (context.listManager.isRecording(this, args, argsOffset))
                    return;

                context.attribManager.glBlendFuncSeparate(sfactorRGB, dfactorRGB, sfactorAlpha, dfactorAlpha);
            }
        }

        getThreadContext().exec.execute(new glBlendFuncSeparate(sfactorRGB, dfactorRGB, sfactorAlpha, dfactorAlpha));
    }
}
