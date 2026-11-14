package com.genir.renderer.bridge.commands;

import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.ContextManager;
import com.genir.renderer.bridge.interfaces.GLCommand;
import com.genir.renderer.bridge.interfaces.GLGetter;
import com.genir.renderer.bridge.pool.BufferPool;
import com.genir.renderer.bridge.pool.BufferPool.IntBufferSnapshot;

import java.nio.IntBuffer;

public class GL40 {
    public static int glGetSubroutineIndex(int program, int shadertype, CharSequence name) {
        record glGetSubroutineIndex(int program, int shadertype, CharSequence name) implements GLGetter<Integer> {
            @Override
            public Integer call(Context context) {
                return org.lwjgl.opengl.GL40.glGetSubroutineIndex(program, shadertype, name);
            }
        }

        final Context context = ContextManager.getThreadContext();
        return context.exec.get(new glGetSubroutineIndex(program, shadertype, name));
    }

    public static int glGetSubroutineUniformLocation(int program, int shadertype, CharSequence name) {
        record glGetSubroutineUniformLocation(int program, int shadertype, CharSequence name) implements GLGetter<Integer> {
            @Override
            public Integer call(Context context) {
                return org.lwjgl.opengl.GL40.glGetSubroutineUniformLocation(program, shadertype, name);
            }
        }

        final Context context = ContextManager.getThreadContext();
        return context.exec.get(new glGetSubroutineUniformLocation(program, shadertype, name));
    }

    public static void glUniformSubroutinesu(int shadertype, IntBuffer indices) {
        record glUniformSubroutinesu(int shadertype, IntBufferSnapshot indices) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int argsOffset) {
                org.lwjgl.opengl.GL40.glUniformSubroutinesu(shadertype, indices.buffer);
                indices.release();
            }
        }

        final Context context = ContextManager.getThreadContext();
        final IntBufferSnapshot snapshot = BufferPool.bufferPool.snapshot(indices);
        context.exec.execute(new glUniformSubroutinesu(shadertype, snapshot));
    }

    public static void glPatchParameteri(int pname, int value) {
        record glPatchParameteri(int pname, int value) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int argsOffset) {
                org.lwjgl.opengl.GL40.glPatchParameteri(pname, value);
            }
        }

        final Context context = ContextManager.getThreadContext();
        context.exec.execute(new glPatchParameteri(pname, value));
    }

    public static void glBlendEquationSeparatei(int buf, int modeRGB, int modeAlpha) {
        record glBlendEquationSeparatei(int buf, int modeRGB, int modeAlpha) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int argsOffset) {
                context.attribManager.glBlendEquationSeparatei(buf, modeRGB, modeAlpha);
            }
        }

        final Context context = ContextManager.getThreadContext();
        context.attribTracker.glBlendEquationSeparatei(buf, modeRGB, modeAlpha);
        context.exec.execute(new glBlendEquationSeparatei(buf, modeRGB, modeAlpha));
    }

    public static void glBlendEquationi(int buf, int mode) {
        glBlendEquationSeparatei(buf, mode, mode);
    }

    public static void glBlendFuncSeparatei(int buf, int srcRGB, int dstRGB, int srcAlpha, int dstAlpha) {
        record glBlendFuncSeparatei(int buf, int srcRGB, int dstRGB, int srcAlpha, int dstAlpha) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int argsOffset) {
                context.attribManager.glBlendFuncSeparatei(buf, srcRGB, dstRGB, srcAlpha, dstAlpha);
            }
        }

        final Context context = ContextManager.getThreadContext();
        context.attribTracker.glBlendFuncSeparatei(buf, srcRGB, dstRGB, srcAlpha, dstAlpha);
        context.exec.execute(new glBlendFuncSeparatei(buf, srcRGB, dstRGB, srcAlpha, dstAlpha));
    }

    public static void glBlendFunci(int buf, int src, int dst) {
        glBlendFuncSeparatei(buf, src, dst, src, dst);
    }
}
