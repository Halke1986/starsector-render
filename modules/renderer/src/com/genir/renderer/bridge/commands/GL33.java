package com.genir.renderer.bridge.commands;

import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.ContextManager;
import com.genir.renderer.bridge.interfaces.GLCommand;

public class GL33 {
    public static void glVertexAttribDivisor(int index, int divisor) {
        record glVertexAttribDivisor(int index, int divisor) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int argsOffset) {
                org.lwjgl.opengl.GL33.glVertexAttribDivisor(index, divisor);
            }
        }

        final Context context = ContextManager.getThreadContext();
        context.exec.execute(new glVertexAttribDivisor(index, divisor));
    }
}
