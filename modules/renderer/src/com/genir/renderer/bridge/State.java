package com.genir.renderer.bridge;

import com.fs.starfarer.api.combat.CombatEngineLayers;
import com.genir.renderer.Renderer;

public class State {
    static boolean intercept = false;
    static boolean layerActive = false;

    static Renderer renderer = new Renderer();
    static ModelView modelView = new ModelView();
    static Quads quads;

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
            quads = new Quads(renderer, modelView);
            intercept = true;
        }
    }

    public static void endIntercept() {
        if (intercept) {
            intercept = false;
            quads = null;
        }
    }
}
