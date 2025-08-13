package com.genir.renderer.bridge.impl;

public class Bridge {
    public static final Executor exec = new Executor();

    // Client state.
    public static final ClientAttribTracker clientAttribTracker = new ClientAttribTracker();

    // Server state.
    public static final ListManager listManager = new ListManager();
    public static final StateCache stateCache = new StateCache();
    public static final AttribManager attribManager = new AttribManager();
    public static final VertexInterceptor vertexInterceptor = new VertexInterceptor(clientAttribTracker, attribManager);
//    public static final MatrixStack modelView = new MatrixStack();


    public static void setReorderDraw(boolean reorder) {
//        vertexInterceptor.setReorderDraw(reorder);
    }

    public static void commitLayer() {
//        vertexInterceptor.commitLayer();
    }
}
