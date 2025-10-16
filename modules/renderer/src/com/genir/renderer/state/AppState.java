package com.genir.renderer.state;

import com.genir.renderer.state.stall.*;

public class AppState {
    public static final AppState state = new AppState();

    // Server state.
    public final ListManager listManager = new ListManager();
    public final StateCache glStateCache = new StateCache();
    public final AttribManager attribManager = new AttribManager();
    public final TransformManager transformManager = new TransformManager(attribManager);

    public final StallDetector stallDetector = new StallDetector(glStateCache);
    public final Executor exec = new Executor(listManager, stallDetector);

    // Client state.
    public final ClientAttribTracker clientAttribTracker = new ClientAttribTracker();
    public final AttribTracker attribTracker = new AttribTracker();
    public final ResourceGenerator arrayGenerator = new ResourceGenerator(org.lwjgl.opengl.GL30::glGenVertexArrays, exec);
    public final ResourceGenerator bufferGenerator = new ResourceGenerator(org.lwjgl.opengl.GL15::glGenBuffers, exec);
    public final ShaderTracker shaderTracker = new ShaderTracker(exec);
    public final BufferManager bufferManager = new BufferManager();

    public final VertexInterceptor vertexInterceptor = new VertexInterceptor(clientAttribTracker, attribManager, transformManager);

    public static void update() {
        state.glStateCache.update();
        state.vertexInterceptor.update();
        state.arrayGenerator.update();
        state.bufferGenerator.update();
    }
}
