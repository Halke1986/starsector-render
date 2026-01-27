package com.genir.renderer.bridge;

import static com.genir.renderer.bridge.context.AppState.state;

public class GL33 {
    public static void glVertexAttribDivisor(int index, int divisor) {
        record glVertexAttribDivisor(int index, int divisor) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL33.glVertexAttribDivisor(index, divisor);
            }
        }
        state.exec.execute(new glVertexAttribDivisor(index, divisor));
    }
}
