package com.genir.renderer.bridge;


import static com.genir.renderer.bridge.impl.Bridge.exec;

public class GL33 {
    public static void glVertexAttribDivisor(int index, int divisor) {
        exec.execute(() -> org.lwjgl.opengl.GL33.glVertexAttribDivisor(index, divisor));
    }
}
