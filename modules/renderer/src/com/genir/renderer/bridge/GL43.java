package com.genir.renderer.bridge;

import com.genir.renderer.bridge.state.BufferUtil;
import org.lwjgl.opengl.KHRDebugCallback;

import java.nio.IntBuffer;

import static com.genir.renderer.bridge.state.AppState.state;

public class GL43 {
    public static int glGetProgramResourceIndex(int program, int programInterface, CharSequence name) {
        return state.exec.get(() -> org.lwjgl.opengl.GL43.glGetProgramResourceIndex(program, programInterface, name));
    }

    public static void glShaderStorageBlockBinding(int program, int storageBlockIndex, int storageBlockBinding) {
        state.exec.execute(() -> org.lwjgl.opengl.GL43.glShaderStorageBlockBinding(program, storageBlockIndex, storageBlockBinding));
    }

    public static void glDispatchCompute(int num_groups_x, int num_groups_y, int num_groups_z) {
        state.exec.execute(() -> org.lwjgl.opengl.GL43.glDispatchCompute(num_groups_x, num_groups_y, num_groups_z));
    }

    public static void glDebugMessageCallback(KHRDebugCallback callback) {
        state.exec.execute(() -> org.lwjgl.opengl.GL43.glDebugMessageCallback(callback));
    }

    public static void glDebugMessageControl(int source, int type, int severity, IntBuffer ids, boolean enabled) {
        final IntBuffer snapshot = BufferUtil.snapshot(ids);
        state.exec.execute(() -> org.lwjgl.opengl.GL43.glDebugMessageControl(source, type, severity, snapshot, enabled));
    }
}
