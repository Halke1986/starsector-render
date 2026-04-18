package com.genir.renderer.bridge;

import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.commands.GLCommand;

import static com.genir.renderer.bridge.context.ContextManager.getThreadContext;

public class GL42 {
    public static void glMemoryBarrier(int barriers) {
        record glMemoryBarrier(int barriers) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                org.lwjgl.opengl.GL42.glMemoryBarrier(barriers);
            }
        }

        getThreadContext().exec.execute(new glMemoryBarrier(barriers));
    }

    public static void glBindImageTexture(int unit, int texture, int level, boolean layered, int layer, int access, int format) {
        record glBindImageTexture(int unit, int texture, int level, boolean layered, int layer, int access, int format) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                org.lwjgl.opengl.GL42.glBindImageTexture(unit, texture, level, layered, layer, access, format);
            }
        }

        getThreadContext().exec.execute(new glBindImageTexture(unit, texture, level, layered, layer, access, format));
    }

    public static void glTexStorage2D(int target, int levels, int internalformat, int width, int height) {
        record glTexStorage2D(int target, int levels, int internalformat, int width, int height) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                org.lwjgl.opengl.GL42.glTexStorage2D(target, levels, internalformat, width, height);
            }
        }

        getThreadContext().exec.execute(new glTexStorage2D(target, levels, internalformat, width, height));
    }
}
