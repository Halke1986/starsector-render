package com.genir.renderer.bridge;

import com.genir.renderer.bridge.state.BufferUtil;
import org.lwjgl.opengl.KHRDebugCallback;

import java.nio.IntBuffer;
import java.util.concurrent.Callable;

import static com.genir.renderer.bridge.state.AppState.state;

public class GL43 {
    public static int glGetProgramResourceIndex(int program, int programInterface, CharSequence name) {
        record glGetProgramResourceIndex(int program, int programInterface, CharSequence name) implements Callable<Integer> {
            @Override
            public Integer call() {
                return org.lwjgl.opengl.GL43.glGetProgramResourceIndex(program, programInterface, name);
            }
        }
        return state.exec.get(new glGetProgramResourceIndex(program, programInterface, name));
    }

    public static void glShaderStorageBlockBinding(int program, int storageBlockIndex, int storageBlockBinding) {
        record glShaderStorageBlockBinding(int program, int storageBlockIndex, int storageBlockBinding) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL43.glShaderStorageBlockBinding(program, storageBlockIndex, storageBlockBinding);
            }
        }
        state.exec.execute(new glShaderStorageBlockBinding(program, storageBlockIndex, storageBlockBinding));
    }

    public static void glDispatchCompute(int num_groups_x, int num_groups_y, int num_groups_z) {
        record glDispatchCompute(int num_groups_x, int num_groups_y, int num_groups_z) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL43.glDispatchCompute(num_groups_x, num_groups_y, num_groups_z);
            }
        }
        state.exec.execute(new glDispatchCompute(num_groups_x, num_groups_y, num_groups_z));
    }

    public static void glDebugMessageCallback(KHRDebugCallback callback) {
        record glDebugMessageCallback(KHRDebugCallback callback) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL43.glDebugMessageCallback(callback);
            }
        }
        state.exec.execute(new glDebugMessageCallback(callback));
    }

    public static void glDebugMessageControl(int source, int type, int severity, IntBuffer ids, boolean enabled) {
        record glDebugMessageControl(int source, int type, int severity, IntBuffer ids, boolean enabled) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL43.glDebugMessageControl(source, type, severity, ids, enabled);
            }
        }
        final IntBuffer snapshot = BufferUtil.snapshot(ids);
        state.exec.execute(new glDebugMessageControl(source, type, severity, snapshot, enabled));
    }

    public static void glInvalidateBufferData(int buffer) {
        record glInvalidateBufferData(int buffer) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL43.glInvalidateBufferData(buffer);
            }
        }
        state.exec.execute(new glInvalidateBufferData(buffer));
    }
}
