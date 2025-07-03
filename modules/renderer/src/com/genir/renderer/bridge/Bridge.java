package com.genir.renderer.bridge;

import com.fs.starfarer.api.combat.CombatEngineLayers;
import com.genir.renderer.Renderer;

public class Bridge {
    static boolean intercept = false;

    static Renderer renderer = new Renderer();
    static State state;

    public static void beginLayer(CombatEngineLayers layer) {
        beginLayer(layer.name());
    }

    public static void beginLayer(String layer) {
        renderer.beginLayer(layer);
    }

    public static void commitLayer() {
        renderer.commitLayer();
    }

    public static void startIntercept() {
        state = new State(renderer);
        intercept = true;
    }

    public static void endIntercept() {
        if (!intercept) {
            return;
        }

        intercept = false;
        state.assertState();
        state = null;
    }
}
