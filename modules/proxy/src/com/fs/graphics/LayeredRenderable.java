package com.fs.graphics;

import java.util.EnumSet;

public interface LayeredRenderable<T extends Enum<T>, V> {
    EnumSet<T> getActiveLayers();

    void render(T var1, V var2);
}
