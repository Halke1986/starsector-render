package com.genir.renderer.bridge;

import com.fs.starfarer.api.combat.CombatEngineLayers;
import com.genir.renderer.bridge.interception.ArrayInterceptor;
import com.genir.renderer.bridge.interception.ListManager;
import com.genir.renderer.bridge.interception.StencilManager;
import com.genir.renderer.bridge.interception.VertexInterceptor;
import com.genir.renderer.bridge.rendering.Renderer;
import com.genir.renderer.bridge.state.ModelView;
import com.genir.renderer.bridge.state.RenderContext;

public class Bridge {
    static boolean layerActive = false;
    static boolean interceptActive = false;

    // GL state.
    public static final ModelView modelView = new ModelView();
    public static final RenderContext renderContext = new RenderContext();
    static final StencilManager stencilManager = new StencilManager();
    static final ListManager listManager = new ListManager();

    static final Renderer renderer = new Renderer();
    static final VertexInterceptor vertexInterceptor = new VertexInterceptor(renderer, renderContext, modelView, stencilManager);
    static final ArrayInterceptor arrayInterceptor = new ArrayInterceptor(renderer, renderContext, modelView); // TODO stencilManager

    public static void beginLayer(CombatEngineLayers layer) {
        beginLayer(layer.name());
    }

    public static void beginLayer(String layer) {
        layerActive = true;
        renderer.beginLayer(layer);
        stencilManager.beginLayer();
    }

    public static void commitLayer() {
        renderer.commitLayer();
        layerActive = false;
    }

    public static void beginIntercept() {
        if (layerActive) {
            interceptActive = true;
        }
    }

    public static void endIntercept() {
        interceptActive = false;
    }
}
