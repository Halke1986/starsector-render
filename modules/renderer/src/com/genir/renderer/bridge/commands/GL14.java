package com.genir.renderer.bridge.commands;

import com.genir.renderer.bridge.context.BufferPool.IntBufferSnapshot;
import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.ContextManager;
import com.genir.renderer.bridge.context.stall.ClientAttribTracker;
import com.genir.renderer.bridge.interfaces.GLCommand;
import com.genir.renderer.bridge.interfaces.Recordable;

import java.nio.IntBuffer;

public class GL14 {
    public static void glBlendEquation(int mode) {
        record glBlendEquation(int mode) implements GLCommand, Recordable {
            @Override
            public void run(Context context, float[] args, int argsOffset) {
                if (context.listManager.isRecording(this, args, argsOffset))
                    return;

                context.attribManager.glBlendEquation(mode);
            }
        }

        final Context context = ContextManager.getThreadContext();
        context.exec.execute(new glBlendEquation(mode));
    }

    public static void glBlendFuncSeparate(int sfactorRGB, int dfactorRGB, int sfactorAlpha, int dfactorAlpha) {
        record glBlendFuncSeparate(int sfactorRGB, int dfactorRGB, int sfactorAlpha, int dfactorAlpha) implements GLCommand, Recordable {
            @Override
            public void run(Context context, float[] args, int argsOffset) {
                if (context.listManager.isRecording(this, args, argsOffset))
                    return;

                context.attribManager.glBlendFuncSeparate(sfactorRGB, dfactorRGB, sfactorAlpha, dfactorAlpha);
            }
        }

        ContextManager.getThreadContext().exec.execute(new glBlendFuncSeparate(sfactorRGB, dfactorRGB, sfactorAlpha, dfactorAlpha));
    }

    public static void glMultiDrawArrays(int mode, IntBuffer piFirst, IntBuffer piCount) {
        record glMultiDrawArrays(int mode, IntBufferSnapshot piFirst, IntBufferSnapshot piCount, ClientAttribTracker.ArrayPointersSnapshot snapshot) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int argsOffset) {
                context.vertexInterceptor.drawRecordedArrays(this::runDraw, snapshot);

                piFirst.release();
                piCount().release();
                snapshot.release();
            }

            public void runDraw() {
                org.lwjgl.opengl.GL14.glMultiDrawArrays(mode, piFirst.buffer, piCount.buffer);
            }
        }

        final Context context = ContextManager.getThreadContext();
        final ClientAttribTracker.ArrayPointersSnapshot snapshot = context.clientAttribTracker.makeArrayPointersSnapshot();
        final IntBufferSnapshot piFirstSnapshot = context.bufferPool.snapshot(piFirst);
        final IntBufferSnapshot piCountSnapshot = context.bufferPool.snapshot(piCount);
        context.exec.execute(new glMultiDrawArrays(mode, piFirstSnapshot, piCountSnapshot, snapshot));
    }
}
