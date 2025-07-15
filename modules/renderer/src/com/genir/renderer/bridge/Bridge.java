package com.genir.renderer.bridge;

import com.genir.renderer.bridge.interception.VertexInterceptor;
import com.genir.renderer.bridge.rendering.Renderer;

public class Bridge {
    public static boolean interceptActive = false;

    static final ListManager listManager = new ListManager();
    public static final Matrix modelView = new Matrix();
    static final MatrixTracker matrixTracker = new MatrixTracker(modelView);
    private static final Renderer renderer = new Renderer();
    static final VertexInterceptor vertexInterceptor = new VertexInterceptor(renderer, modelView);

    public static void beginIntercept() {
        renderer.beginLayer();
        interceptActive = true;
    }

    public static void endIntercept() {
        renderer.commitLayer();
        interceptActive = false;
    }
}
