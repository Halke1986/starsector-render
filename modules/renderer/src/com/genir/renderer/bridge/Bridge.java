package com.genir.renderer.bridge;

import com.genir.renderer.bridge.state.ModelView;

public class Bridge {
    static final ListManager listManager = new ListManager();
    static final RenderContext renderContext = new RenderContext();

    static boolean interceptActive = false;

    // GL state.
    public static final ModelView modelView = new ModelView();
//    static final StencilManager stencilManager = new StencilManager(bufferPool, vertexRepository, renderContext);

    // Draw interceptors.
//    static final VertexInterceptor vertexInterceptor = new VertexInterceptor(vertexRepository, renderContext, modelView, stencilManager);
//    static final ArrayInterceptor arrayInterceptor = new ArrayInterceptor(vertexRepository, renderContext, modelView); // TODO stencilManager

    public static void beginLayer() {
        renderContext.sync();
    }

    public static void beginIntercept() {
        interceptActive = true;
    }

    public static void endIntercept() {
        interceptActive = false;
    }
}
