package com.genir.renderer.bridge.context.array;

import com.genir.renderer.bridge.interfaces.Releasable;

public record ArraysSnapshot(ArraySnapshot vertex, ArraySnapshot texCoord, ArraySnapshot color) implements Releasable {
    @Override
    public void release() {
        if (vertex != null) vertex.release();
        if (texCoord != null) texCoord.release();
        if (color != null) color.release();
    }
}
