package com.genir.renderer.bridge.commands;

import com.genir.renderer.bridge.context.BufferPool.IntBufferSnapshot;
import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.interfaces.GLCommand;
import com.genir.renderer.bridge.interfaces.GLGetter;
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

        final Context context = getThreadContext();
        return context.exec.get(new glGetProgramResourceIndex(program, programInterface, name));
    }

    public static void glShaderStorageBlockBinding(int program, int storageBlockIndex, int storageBlockBinding) {
        record glShaderStorageBlockBinding(int program, int storageBlockIndex, int storageBlockBinding) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int argsOffset) {
                org.lwjgl.opengl.GL43.glShaderStorageBlockBinding(program, storageBlockIndex, storageBlockBinding);
            }
        }

        final Context context = getThreadContext();
        context.exec.execute(new glShaderStorageBlockBinding(program, storageBlockIndex, storageBlockBinding));
    }

    public static void glDispatchCompute(int num_groups_x, int num_groups_y, int num_groups_z) {
        record glDispatchCompute(int num_groups_x, int num_groups_y, int num_groups_z) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int argsOffset) {
                org.lwjgl.opengl.GL43.glDispatchCompute(num_groups_x, num_groups_y, num_groups_z);
            }
        }

        final Context context = getThreadContext();
        context.exec.execute(new glDispatchCompute(num_groups_x, num_groups_y, num_groups_z));
    }

    public static void glDebugMessageCallback(KHRDebugCallback callback) {
        record glDebugMessageCallback(KHRDebugCallback callback) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int argsOffset) {
                org.lwjgl.opengl.GL43.glDebugMessageCallback(callback);
            }
        }

        final Context context = getThreadContext();
        context.exec.execute(new glDebugMessageCallback(callback));
    }

    public static void glDebugMessageControl(int source, int type, int severity, IntBuffer ids, boolean enabled) {
        record glDebugMessageControl(int source, int type, int severity, IntBufferSnapshot ids, boolean enabled) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int argsOffset) {
                org.lwjgl.opengl.GL43.glDebugMessageControl(source, type, severity, ids.buffer, enabled);
                ids.release();
            }
        }

        final Context context = getThreadContext();
        final IntBufferSnapshot snapshot = context.bufferPool.snapshot(ids);
        context.exec.execute(new glDebugMessageControl(source, type, severity, snapshot, enabled));
    }

    public static void glInvalidateBufferData(int buffer) {
        record glInvalidateBufferData(int buffer) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int argsOffset) {
                org.lwjgl.opengl.GL43.glInvalidateBufferData(buffer);
            }
        }

        final Context context = getThreadContext();
        context.exec.execute(new glInvalidateBufferData(buffer));
    }
}
