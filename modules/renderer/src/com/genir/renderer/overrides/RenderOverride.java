package com.genir.renderer.overrides;

import static com.genir.renderer.Debug.log;

public class RenderOverride {
    public static boolean shouldRender(Object entity) {
        boolean isVanilla = entity.getClass().getClassLoader() == ClassLoader.getSystemClassLoader();

        if (!isVanilla) {
            log(RenderOverride.class, entity.getClass().getName());
        }

        return isVanilla;
    }
}
