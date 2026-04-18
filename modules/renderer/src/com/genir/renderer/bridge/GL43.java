package com.genir.renderer.bridge;

import com.genir.renderer.bridge.context.BufferUtil;
import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.commands.GLCommand;
import com.genir.renderer.bridge.context.commands.GLGetter;
import org.lwjgl.opengl.KHRDebugCallback;

import java.nio.IntBuffer;

import static com.genir.renderer.bridge.context.ContextManager.getThreadContext;

public class GL43 {
    public static int glGetProgramResourceIndex(int program, int programInterface, CharSequence name) {
        record glGetProgramResourceIndex(int program, int programInterface, CharSequence name) implements GLGetter<Integer> {
            @Override
            public Integer call(Context context) {
                return org.lwjgl.opengl.GL43.glGetProgramResourceIndex(program, programInterface, name);
            }
        }

        return getThreadContext().exec.get(new glGetProgramResourceIndex(program, programInterface, name));
    }

    public static void glShaderStorageBlockBinding(int program, int storageBlockIndex, int storageBlockBinding) {
        record glShaderStorageBlockBinding(int program, int storageBlockIndex, int storageBlockBinding) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                org.lwjgl.opengl.GL43.glShaderStorageBlockBinding(program, storageBlockIndex, storageBlockBinding);
            }
        }

        getThreadContext().exec.execute(new glShaderStorageBlockBinding(program, storageBlockIndex, storageBlockBinding));
    }

    public static void glDispatchCompute(int num_groups_x, int num_groups_y, int num_groups_z) {
        record glDispatchCompute(int num_groups_x, int num_groups_y, int num_groups_z) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                org.lwjgl.opengl.GL43.glDispatchCompute(num_groups_x, num_groups_y, num_groups_z);
            }
        }

        getThreadContext().exec.execute(new glDispatchCompute(num_groups_x, num_groups_y, num_groups_z));
    }

    public static void glDebugMessageCallback(KHRDebugCallback callback) {
        record glDebugMessageCallback(KHRDebugCallback callback) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                org.lwjgl.opengl.GL43.glDebugMessageCallback(callback);
            }
        }

        getThreadContext().exec.execute(new glDebugMessageCallback(callback));
    }

    public static void glDebugMessageControl(int source, int type, int severity, IntBuffer ids, boolean enabled) {
        record glDebugMessageControl(int source, int type, int severity, IntBuffer ids, boolean enabled) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                org.lwjgl.opengl.GL43.glDebugMessageControl(source, type, severity, ids, enabled);
            }
        }

        final IntBuffer snapshot = BufferUtil.snapshot(ids);
        getThreadContext().exec.execute(new glDebugMessageControl(source, type, severity, snapshot, enabled));
    }

    public static void glInvalidateBufferData(int buffer) {
        record glInvalidateBufferData(int buffer) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                org.lwjgl.opengl.GL43.glInvalidateBufferData(buffer);
            }
        }

        getThreadContext().exec.execute(new glInvalidateBufferData(buffer));
    }
}
