package com.genir.renderer.bridge.servercmds;

import com.genir.renderer.bridge.context.Context;

public class GL14 {
    public static void glBlendEquation(Context context, int mode) {
        record glBlendEquation(int mode) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL14.glBlendEquation(mode);
            }
        }

        context.exec.executeNow(new glBlendEquation(mode));
    }

    public static void glBlendFuncSeparate(Context context, int sfactorRGB, int dfactorRGB, int sfactorAlpha, int dfactorAlpha) {
        record glBlendFuncSeparate(int sfactorRGB, int dfactorRGB, int sfactorAlpha, int dfactorAlpha) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL14.glBlendFuncSeparate(sfactorRGB, dfactorRGB, sfactorAlpha, dfactorAlpha);
            }
        }

        context.exec.executeNow(new glBlendFuncSeparate(sfactorRGB, dfactorRGB, sfactorAlpha, dfactorAlpha));
    }
}
