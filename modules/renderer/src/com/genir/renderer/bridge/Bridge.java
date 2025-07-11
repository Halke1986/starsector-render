package com.genir.renderer.bridge;

import com.genir.renderer.bridge.interception.ArrayInterceptor;
import com.genir.renderer.bridge.interception.ListManager;
import com.genir.renderer.bridge.interception.StencilManager;
import com.genir.renderer.bridge.interception.VertexInterceptor;
import com.genir.renderer.bridge.rendering.BufferPool;
import com.genir.renderer.bridge.rendering.DrawOrderManager;
import com.genir.renderer.bridge.rendering.Renderer;
import com.genir.renderer.bridge.rendering.VertexRepository;
import com.genir.renderer.bridge.state.ModelView;
import com.genir.renderer.bridge.state.RenderContext;

public class Bridge {
    static boolean layerActive = false;
    static boolean interceptActive = false;

    // Rendering.
    private static final BufferPool bufferPool = new BufferPool();
    private static final VertexRepository vertexRepository = new VertexRepository(bufferPool);
    private static final Renderer renderer = new Renderer(vertexRepository);
    static final DrawOrderManager drawOrderManager = new DrawOrderManager();

    // GL state.
    public static final ModelView modelView = new ModelView();
    public static final RenderContext renderContext = new RenderContext();
    static final StencilManager stencilManager = new StencilManager(bufferPool, vertexRepository, renderContext);
    static final ListManager listManager = new ListManager();

    // Draw interceptors.
    static final VertexInterceptor vertexInterceptor = new VertexInterceptor(vertexRepository, renderContext, modelView, stencilManager);
    static final ArrayInterceptor arrayInterceptor = new ArrayInterceptor(vertexRepository, renderContext, modelView); // TODO stencilManager

    public static void beginLayer(String layer) {
        layerActive = true;

        renderer.beginLayer(layer);
        stencilManager.beginLayer();
        drawOrderManager.beginLayer();
        vertexRepository.clear();
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

    public static void beginEntity() {
        drawOrderManager.beginEntity();
    }

    public static void endEntity() {
        drawOrderManager.endEntity();
    }
}
