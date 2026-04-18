package com.genir.renderer.bridge;

import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.commands.GLCommand;

import static com.genir.renderer.bridge.context.ContextManager.getThreadContext;

public class GL41 {
    public static void glProgramUniform1i(int program, int location, int v0) {
        record glProgramUniform1i(int program, int location, int v0) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                org.lwjgl.opengl.GL41.glProgramUniform1i(program, location, v0);
            }
        }

        getThreadContext().exec.execute(new glProgramUniform1i(program, location, v0));
    }

    public static void glProgramUniform1f(int program, int location, float v0) {
        record glProgramUniform1f(int program, int location, float v0) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                org.lwjgl.opengl.GL41.glProgramUniform1f(program, location, v0);
            }
        }

        getThreadContext().exec.execute(new glProgramUniform1f(program, location, v0));
    }

    public static void glProgramUniform2f(int program, int location, float v0, float v1) {
        record glProgramUniform2f(int program, int location, float v0, float v1) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                org.lwjgl.opengl.GL41.glProgramUniform2f(program, location, v0, v1);
            }
        }

        getThreadContext().exec.execute(new glProgramUniform2f(program, location, v0, v1));
    }

    public static void glClearDepthf(float d) {
        record glClearDepthf(float d) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                org.lwjgl.opengl.GL41.glClearDepthf(d);
            }
        }

        getThreadContext().exec.execute(new glClearDepthf(d));
    }

    public static void glDepthRangef(float n, float f) {
        record glDepthRangef(float n, float f) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                org.lwjgl.opengl.GL41.glDepthRangef(n, f);
            }
        }

        getThreadContext().exec.execute(new glDepthRangef(n, f));
    }
}
