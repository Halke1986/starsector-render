package com.genir.renderer.bridge.context.array;

import com.genir.renderer.bridge.interfaces.Releasable;

public abstract class ArraySnapshot implements Releasable {
    public final int size;
    public final int type;
    public final int stride;

    public ArraySnapshot(ArrayPointer array) {
        this.size = array.size;
        this.type = array.type;
        this.stride = array.stride;
    }
}
