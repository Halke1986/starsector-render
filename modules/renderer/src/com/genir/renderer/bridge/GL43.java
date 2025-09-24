package com.genir.renderer.bridge;


import com.genir.renderer.bridge.impl.BufferUtil;
import org.lwjgl.opengl.KHRDebugCallback;

import java.nio.IntBuffer;

import static com.genir.renderer.bridge.impl.Bridge.exec;

public class GL43 {
    public static int glGetProgramResourceIndex(int program, int programInterface, CharSequence name) {
        return exec.get(() -> org.lwjgl.opengl.GL43.glGetProgramResourceIndex(program, programInterface, name));
    }

    public static void glShaderStorageBlockBinding(int program, int storageBlockIndex, int storageBlockBinding) {
        exec.execute(() -> org.lwjgl.opengl.GL43.glShaderStorageBlockBinding(program, storageBlockIndex, storageBlockBinding));
    }

    public static void glDispatchCompute(int num_groups_x, int num_groups_y, int num_groups_z) {
        exec.execute(() -> org.lwjgl.opengl.GL43.glDispatchCompute(num_groups_x, num_groups_y, num_groups_z));
    }

    public static void glDebugMessageCallback(KHRDebugCallback callback) {
        exec.execute(() -> org.lwjgl.opengl.GL43.glDebugMessageCallback(callback));
    }

    public static void glDebugMessageControl(int source, int type, int severity, IntBuffer ids, boolean enabled) {
        final IntBuffer snapshot = BufferUtil.snapshot(ids);
        exec.execute(() -> org.lwjgl.opengl.GL43.glDebugMessageControl(source, type, severity, snapshot, enabled));
    }
}
