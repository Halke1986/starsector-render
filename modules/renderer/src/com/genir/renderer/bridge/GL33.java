package com.genir.renderer.bridge;

import static com.genir.renderer.bridge.context.ContextManager.getContext;

public class GL33 {
    public static void glVertexAttribDivisor(int index, int divisor) {
        record glVertexAttribDivisor(int index, int divisor) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL33.glVertexAttribDivisor(index, divisor);
            }
        }
        getContext().exec.execute(new glVertexAttribDivisor(index, divisor));
    }
}
