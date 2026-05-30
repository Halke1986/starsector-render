package com.genir.renderer.bridge;

import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.commands.GLCommand;

import static com.genir.renderer.bridge.context.ContextManager.getThreadContext;

public class GL33 {
    public static void glVertexAttribDivisor(int index, int divisor) {
        record glVertexAttribDivisor(int index, int divisor) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int offset) {
                org.lwjgl.opengl.GL33.glVertexAttribDivisor(index, divisor);
            }
        }

        getThreadContext().exec.execute(new glVertexAttribDivisor(index, divisor));
    }
}
