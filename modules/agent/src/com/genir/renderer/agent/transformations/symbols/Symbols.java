package com.genir.renderer.agent.transformations.symbols;

import com.fs.graphics.Sprite;

public class Symbols {
    public final Class<?> sprite = Sprite.class;

    public final Class<?> textureHandler;

    public Symbols() {
        try {
            textureHandler = sprite.getMethod("getTexture").getReturnType();



        } catch (NoSuchMethodException e) {
            throw new RuntimeException(e);
        }
    }
}
