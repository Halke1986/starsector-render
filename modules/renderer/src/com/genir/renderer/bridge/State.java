package com.genir.renderer.bridge;

import com.fs.starfarer.api.combat.CombatEngineLayers;

public class State {
    static boolean layerActive = false;

    static Renderer renderer = new Renderer();
    static ModelView modelView = new ModelView();
    static Interceptor interceptor;

    public static void beginLayer(CombatEngineLayers layer) {
        beginLayer(layer.name());
    }

    public static void beginLayer(String layer) {
        layerActive = true;
        renderer.beginLayer();
    }

    public static void commitLayer() {
        renderer.commitLayer();
        layerActive = false;
    }

    public static void beginIntercept() {
        if (layerActive) {
            interceptor = new Interceptor(renderer, modelView);
        }
    }

    public static void endIntercept() {
        interceptor = null;
    }
}
