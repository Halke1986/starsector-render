package com.genir.renderer.bridge;

import com.genir.renderer.bridge.interception.VertexInterceptor;
import com.genir.renderer.bridge.rendering.Renderer;
import com.genir.renderer.bridge.state.ModelView;

public class Bridge {
    public static boolean interceptActive = false;

    static final ListManager listManager = new ListManager();
    public static final ModelView modelView = new ModelView();
    private static final Renderer renderer = new Renderer();
    static final VertexInterceptor vertexInterceptor = new VertexInterceptor(renderer, modelView);

    public static void beginLayer(String layer) {
        renderer.beginLayer(layer);
        interceptActive = true;
    }

    public static void commitLayer() {
        renderer.commitLayer();
        interceptActive = false;
    }

    public static void beginIntercept() {
    }

    public static void endIntercept() {
    }
}
