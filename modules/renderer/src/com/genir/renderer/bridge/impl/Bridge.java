package com.genir.renderer.bridge.impl;

import com.genir.renderer.bridge.impl.stall.*;

public class Bridge {
    // Server state.
    public static final ListManager listManager = new ListManager();
    public static final StateCache stateCache = new StateCache();
    public static final AttribManager attribManager = new AttribManager();
    public static final MatrixStack modelView = new MatrixStack();

    public static final StallDetector stallDetector = new StallDetector(stateCache);
    public static final Executor exec = new Executor(listManager, stallDetector);

    // Client state.
    public static final ClientAttribTracker clientAttribTracker = new ClientAttribTracker();
    public static final AttribTracker attribTracker = new AttribTracker();
    public static final ResourceGenerator arrayGenerator = new ResourceGenerator(org.lwjgl.opengl.GL30::glGenVertexArrays, exec);
    public static final ResourceGenerator bufferGenerator = new ResourceGenerator(org.lwjgl.opengl.GL15::glGenBuffers, exec);
    public static final ShaderTracker shaderTracker = new ShaderTracker(exec);

    public static final VertexInterceptor vertexInterceptor = new VertexInterceptor(clientAttribTracker, attribManager, modelView);

    public static void setReorderDraw(boolean reorder) {
        exec.execute(() -> vertexInterceptor.setReorderDraw(reorder));
    }

    public static void commitLayer() {
        exec.execute(() -> vertexInterceptor.commitLayer());
    }

    public static void update() {
        stateCache.update();
        vertexInterceptor.update();
        arrayGenerator.update();
        bufferGenerator.update();
    }

    public static void enableStallDetection() {
        stallDetector.enableDetection();
    }
}
