package com.genir.renderer.bridge.context.array;

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
}
