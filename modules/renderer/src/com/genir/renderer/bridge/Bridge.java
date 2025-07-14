package com.genir.renderer.bridge;

import com.genir.renderer.bridge.interception.VertexInterceptor;
import com.genir.renderer.bridge.rendering.Renderer;
import com.genir.renderer.bridge.state.ModelView;
import com.genir.renderer.bridge.state.RenderContext;

public class Bridge {
    static boolean layerActive = false;
    static boolean interceptActive = false;

    // Rendering.
    private static final Renderer renderer = new Renderer();

    // GL state.
    public static final ModelView modelView = new ModelView();
    public static final RenderContext renderContext = new RenderContext();

    // Draw interceptors.
    static final VertexInterceptor vertexInterceptor = new VertexInterceptor(renderer, renderContext, modelView);

    public static void beginLayer(String layer) {
        layerActive = true;

        renderer.beginLayer(layer);
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
