package com.genir.renderer.bridge;

import com.fs.starfarer.api.combat.CombatEngineLayers;
import com.genir.renderer.bridge.rendering.Renderer;
import com.genir.renderer.bridge.rendering.VertexInterceptor;
import com.genir.renderer.bridge.state.ModelView;
import com.genir.renderer.bridge.state.RenderContext;

public class Bridge {
    static boolean layerActive = false;

    static Renderer renderer = new Renderer();
    static VertexInterceptor vertexInterceptor;

    // GL state.
    public static final ModelView modelView = new ModelView();
    public static final RenderContext renderContext = new RenderContext();

    public static void beginLayer(CombatEngineLayers layer) {
        beginLayer(layer.name());
    }

    public static void beginLayer(String layer) {
        layerActive = true;
        renderer.beginLayer(layer);
    }

    public static void commitLayer() {
        renderer.commitLayer();
        layerActive = false;
    }

    public static void dropLayer() {
        layerActive = false;
    }

    public static void beginIntercept() {
        if (layerActive) {
            vertexInterceptor = new VertexInterceptor(renderer, renderContext, modelView);
        }
    }

    public static void endIntercept() {
        vertexInterceptor = null;
    }
}
