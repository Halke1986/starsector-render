package com.genir.renderer.bridge;

import com.genir.renderer.bridge.rendering.Renderer;

public class Bridge {
    static String unsupportedOperation;
    public static boolean interceptActive = false;

    private static final MatrixStack modelView = new MatrixStack();
    private static final Renderer renderer = new Renderer();
    static final ListManager listManager = new ListManager();
    static final MatrixHandler matrixHandler = new MatrixHandler(modelView);
    static final VertexInterceptor vertexInterceptor = new VertexInterceptor(renderer, modelView);

    public static void beginIntercept() {
        renderer.beginLayer();
        interceptActive = true;
    }

    public static void endIntercept() {
        renderer.commitLayer();
        interceptActive = false;
    }

    static void throwUnsupportedOperation(String operation) {
        unsupportedOperation = operation;
        throw new UnsupportedOperationException(operation);
    }

    static void assertNoUnsupportedOperation() {
        if (unsupportedOperation != null) {
            throw new UnsupportedOperationException(unsupportedOperation);
        }
    }
}
