package com.genir.renderer.bridge;

public class Bridge {
    static boolean interceptActive = false;

    static final ListManager listManager = new ListManager();
    static final RenderContext renderContext = new RenderContext();
    static final ModelView modelView = new ModelView();
    static final VertexInterceptor vertexInterceptor = new VertexInterceptor(modelView);

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
