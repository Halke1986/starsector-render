package com.genir.renderer.overrides;

public class RenderOverride {
    public static boolean shouldRender(Object entity) {
        return true;
//        boolean isVanilla = entity.getClass().getClassLoader() == ClassLoader.getSystemClassLoader();

//        if (!isVanilla) {
//            log(RenderOverride.class, entity.getClass().getName());
//        }

//        return isVanilla;
    }
}
