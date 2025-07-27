package com.genir.renderer.bridge.impl;

public class Bridge {
    public static final ListManager listManager = new ListManager();
    public static final Executor exec = new Executor();
    public static final StateCache stateCache = new StateCache();
    public static final RenderContext renderContext = new RenderContext(exec);
    public static final MatrixStack modelView = new MatrixStack();
    public static final VertexInterceptor vertexInterceptor = new VertexInterceptor(exec, modelView, renderContext);

    public static void recordOrExecute(Runnable command) {
        if (listManager.isRecording()) {
            listManager.record(() -> exec.execute(command));
        } else {
            exec.execute(command);
        }
    }

    public static void update() {
        stateCache.update();
        vertexInterceptor.update();
    }
}
