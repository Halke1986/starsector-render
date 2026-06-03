package com.genir.renderer.bridge.context;

import com.genir.renderer.bridge.context.stall.*;
import com.genir.renderer.debug.Profiler;

public class Context {
    public final boolean isMain;

    public Profiler.Frame nextProfilerFrame = null;
    public Profiler.Frame mainProfilerFrame = null;
    public Profiler.Frame renderingProfilerFrame = null;

    public Context(boolean isMain) {
        this.isMain = isMain;
    }

    // Server state. Runs on rendering thread.
    public final ListManager listManager = new ListManager(this);
    public final AttribManager attribManager = new AttribManager();
    public final TransformManager transformManager = new TransformManager(attribManager);
    public final VertexInterceptor vertexInterceptor = new VertexInterceptor(attribManager, transformManager);

    // Infrastructure. Spans main and rendering threads.
    public final StallDetector stallDetector = new StallDetector();
    public final Executor exec = new Executor(this);
    public final StateCache glStateCache = new StateCache();
    public final BufferPool bufferPool = new BufferPool();

    // Client state. Runs on main thread.
    public final ClientAttribTracker clientAttribTracker = new ClientAttribTracker(bufferPool);
    public final AttribTracker attribTracker = new AttribTracker();
    public final ResourceGenerator texGenerator = new ResourceGenerator(org.lwjgl.opengl.GL11::glGenTextures, exec);
    public final ResourceGenerator arrayGenerator = new ResourceGenerator(org.lwjgl.opengl.GL30::glGenVertexArrays, exec);
    public final ResourceGenerator bufferGenerator = new ResourceGenerator(org.lwjgl.opengl.GL15::glGenBuffers, exec);
    public final ShaderTracker shaderTracker = new ShaderTracker(exec);
    public final BufferManager bufferManager = new BufferManager();

    public void update() {
        // Runs on rendering thread.
        if (org.lwjgl.opengl.Display.isCreated()) {
            stallDetector.update();
            glStateCache.update();
            vertexInterceptor.update();
            texGenerator.update();
            arrayGenerator.update();
            bufferGenerator.update();
        }
    }

    public void shutdown() {
        // Runs on main thread.
        exec.shutdown();
    }
}
