package com.genir.renderer.bridge.state;

import com.genir.renderer.bridge.state.stall.*;

public class AppState {
    public static final AppState state = new AppState();

    public boolean gameInitialized = false;

    // Server state. Runs on rendering thread.
    public final ListManager listManager = new ListManager();
    public final AttribManager attribManager = new AttribManager();
    public final TransformManager transformManager = new TransformManager(attribManager);
    public final VertexInterceptor vertexInterceptor = new VertexInterceptor(attribManager, transformManager);

    // Infrastructure. Spans main and rendering threads.
    public final StallDetector stallDetector = new StallDetector();
    public final Executor exec = new Executor(listManager, stallDetector);
    public final Profiler profiler = new Profiler();
    public final StateCache glStateCache = new StateCache();

    // Client state. Runs on main thread.
    public final ClientAttribTracker clientAttribTracker = new ClientAttribTracker();
    public final AttribTracker attribTracker = new AttribTracker();
    public final ResourceGenerator texGenerator = new ResourceGenerator(org.lwjgl.opengl.GL11::glGenTextures, exec);
    public final ResourceGenerator arrayGenerator = new ResourceGenerator(org.lwjgl.opengl.GL30::glGenVertexArrays, exec);
    public final ResourceGenerator bufferGenerator = new ResourceGenerator(org.lwjgl.opengl.GL15::glGenBuffers, exec);
    public final ShaderTracker shaderTracker = new ShaderTracker(exec);
    public final BufferManager bufferManager = new BufferManager();
}
