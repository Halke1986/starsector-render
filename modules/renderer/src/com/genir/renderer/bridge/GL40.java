package com.genir.renderer.bridge;

import com.genir.renderer.bridge.context.BufferUtil;
import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.commands.GLCommand;
import com.genir.renderer.bridge.context.commands.GLGetter;

import java.nio.IntBuffer;

import static com.genir.renderer.bridge.context.ContextManager.getThreadContext;

public class GL40 {
    public static int glGetSubroutineIndex(int program, int shadertype, CharSequence name) {
        record glGetSubroutineIndex(int program, int shadertype, CharSequence name) implements GLGetter<Integer> {
            @Override
            public Integer call(Context context) {
                return org.lwjgl.opengl.GL40.glGetSubroutineIndex(program, shadertype, name);
            }
        }

        return getThreadContext().exec.get(new glGetSubroutineIndex(program, shadertype, name));
    }

    public static int glGetSubroutineUniformLocation(int program, int shadertype, CharSequence name) {
        record glGetSubroutineUniformLocation(int program, int shadertype, CharSequence name) implements GLGetter<Integer> {
            @Override
            public Integer call(Context context) {
                return org.lwjgl.opengl.GL40.glGetSubroutineUniformLocation(program, shadertype, name);
            }
        }

        return getThreadContext().exec.get(new glGetSubroutineUniformLocation(program, shadertype, name));
    }

    public static void glUniformSubroutinesu(int shadertype, IntBuffer indices) {
        record glUniformSubroutinesu(int shadertype, IntBuffer indices) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                org.lwjgl.opengl.GL40.glUniformSubroutinesu(shadertype, indices);
            }
        }

        final IntBuffer snapshot = BufferUtil.snapshot(indices);
        getThreadContext().exec.execute(new glUniformSubroutinesu(shadertype, snapshot));
    }

    public static void glPatchParameteri(int pname, int value) {
        record glPatchParameteri(int pname, int value) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                org.lwjgl.opengl.GL40.glPatchParameteri(pname, value);
            }
        }

        getThreadContext().exec.execute(new glPatchParameteri(pname, value));
    }

    public static void glBlendEquationi(int buf, int mode) {
        record glBlendEquationi(int buf, int mode) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                context.attribManager.glBlendEquationi(buf, mode);
            }
        }

        final Context context = getThreadContext();
        context.exec.execute(new glBlendEquationi(buf, mode));
    }

    public static void glBlendFuncSeparatei(int buf, int srcRGB, int dstRGB, int srcAlpha, int dstAlpha) {
        record glBlendFuncSeparatei(int buf, int srcRGB, int dstRGB, int srcAlpha, int dstAlpha) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                context.attribManager.glBlendFuncSeparatei(buf, srcRGB, dstRGB, srcAlpha, dstAlpha);
            }
        }

        final Context context = getThreadContext();
        context.exec.execute(new glBlendFuncSeparatei(buf, srcRGB, dstRGB, srcAlpha, dstAlpha));
    }

    public static void glBlendFunci(int buf, int src, int dst) {
        glBlendFuncSeparatei(buf, src, dst, src, dst);
    }
}
