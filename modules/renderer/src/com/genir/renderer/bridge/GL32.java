package com.genir.renderer.bridge;


import static com.genir.renderer.state.AppState.exec;

public class GL32 {
    public static long glGetInteger64(int pname) {
        return exec.get(() -> org.lwjgl.opengl.GL32.glGetInteger64(pname));
    }

    public static long glGetInteger64(int value, int index) {
        return exec.get(() -> org.lwjgl.opengl.GL32.glGetInteger64(value, index));
    }
}
