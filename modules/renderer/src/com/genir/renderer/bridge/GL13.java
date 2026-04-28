package com.genir.renderer.bridge;


import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.commands.GLCommand;

import static com.genir.renderer.bridge.context.ContextManager.getThreadContext;

public class GL13 {
    public static void glActiveTexture(int mode) {
        record glActiveTexture(int mode) implements GLCommand {
            @Override
            public void run(Context context, int[] args, int offset) {
                org.lwjgl.opengl.GL13.glActiveTexture(mode);
            }
        }

        final Context context = getThreadContext();
        context.attribTracker.glActiveTexture(mode);
        context.exec.execute(new glActiveTexture(mode));
    }
}
