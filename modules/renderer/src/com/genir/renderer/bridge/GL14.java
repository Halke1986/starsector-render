package com.genir.renderer.bridge;

import com.genir.renderer.state.Recordable;

import static com.genir.renderer.state.AppState.state;

public class GL14 {
    public static void glBlendEquation(int mode) {
        record glBlendEquation(int mode) implements Runnable, Recordable {
            @Override
            public void run() {
                state.attribManager.glBlendEquation(mode);
            }
        }
        state.exec.execute(new glBlendEquation(mode));
    }

    public static void glBlendFuncSeparate(int sfactorRGB, int dfactorRGB, int sfactorAlpha, int dfactorAlpha) {
        record glBlendFuncSeparate(int sfactorRGB, int dfactorRGB, int sfactorAlpha, int dfactorAlpha) implements Runnable, Recordable {
            @Override
            public void run() {
                state.attribManager.glBlendFuncSeparate(sfactorRGB, dfactorRGB, sfactorAlpha, dfactorAlpha);
            }
        }
        state.exec.execute(new glBlendFuncSeparate(sfactorRGB, dfactorRGB, sfactorAlpha, dfactorAlpha));
    }
}
