package com.genir.renderer.bridge.context.array;

import org.lwjgl.opengl.GL11;

public abstract class ArrayPointer {
    public final int size;
    public final int type;
    public final int stride;

    public ArrayPointer(int size, int type, int stride) {
        this.size = size;
        this.type = type;
        this.stride = stride;
    }

    public abstract ArraySnapshot makeSnapshot();

    public abstract int getCapacity();

    public static int getTypeBytes(int type) {
        return switch (type) {
            case GL11.GL_BYTE, GL11.GL_UNSIGNED_BYTE -> Byte.BYTES;
            case GL11.GL_SHORT, GL11.GL_UNSIGNED_SHORT -> Short.BYTES;
            case GL11.GL_INT, GL11.GL_UNSIGNED_INT -> Integer.BYTES;
            case GL11.GL_FLOAT -> Float.BYTES;
            case GL11.GL_DOUBLE -> Double.BYTES;

            default -> throw new UnsupportedOperationException("unknown type :" + type);
        };
    }
}
