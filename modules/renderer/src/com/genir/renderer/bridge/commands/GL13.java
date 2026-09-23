package com.genir.renderer.bridge.commands;

import com.genir.renderer.bridge.context.BufferPool;
import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.ContextManager;
import com.genir.renderer.bridge.interfaces.GLCommand;

import java.nio.ByteBuffer;

import static com.genir.renderer.bridge.commands.GL11.glTexCoord2f;

public class GL13 {
    public static void glActiveTexture(int mode) {
        record glActiveTexture(int mode) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int argsOffset) {
                context.attribManager.glActiveTexture(mode);
                org.lwjgl.opengl.GL13.glActiveTexture(mode);
            }
        }

        final Context context = ContextManager.getThreadContext();
        context.attribTracker.glActiveTexture(mode);
        context.exec.execute(new glActiveTexture(mode));
    }

    public static void glCompressedTexImage2D(int target, int level, int internalformat, int width, int height, int border, ByteBuffer data) {
        record glCompressedTexImage2D(int target, int level, int internalformat, int width, int height, int border, BufferPool.ByteBufferSnapshot data) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int argsOffset) {
                context.textureManager.textureModified();
                org.lwjgl.opengl.GL13.glCompressedTexImage2D(target, level, internalformat, width, height, border, data.buffer);
                data.release();
            }
        }

        final Context context = ContextManager.getThreadContext();
        final BufferPool.ByteBufferSnapshot snapshot = context.bufferPool.snapshot(data);
        context.textureTracker.updateTextureData(context, target, level, internalformat, width, height);
        context.exec.execute(new glCompressedTexImage2D(target, level, internalformat, width, height, border, snapshot));
    }

    public static void glMultiTexCoord2f(int target, float s, float t) {
        record glMultiTexCoord2f(int target, float s, float t) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int argsOffset) {
                context.vertexInterceptor.glMultiTexCoord2f(target, s, t);
            }
        }

        switch (target) {
            case org.lwjgl.opengl.GL13.GL_TEXTURE0:
                glTexCoord2f(s, t);
                break;

            case org.lwjgl.opengl.GL13.GL_TEXTURE1:
                final Context context = ContextManager.getThreadContext();
                context.exec.execute(new glMultiTexCoord2f(target, s, t));
                break;

            default:
                throw new UnsupportedOperationException("glMultiTexCoord2f target > 1");
        }
    }
}
