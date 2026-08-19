package com.genir.renderer.bridge.context;

import com.genir.renderer.bridge.context.stall.*;
import com.genir.renderer.debug.Profiler;
import org.apache.log4j.Logger;

public class Context {
    public final boolean isMain;

    public Profiler.Frame nextProfilerFrame = null;
    public Profiler.Frame mainProfilerFrame = null;
    public Profiler.Frame renderingProfilerFrame = null;

    public Context(Context parent) {
        Logger.getLogger(Context.class).info("Created new virtual OpenGL context.");

        if (parent == null) {
            this.isMain = true;
            this.textureManager = new TextureManager();
            this.shaderTracker = new ShaderTracker();
            this.textureTracker = new TextureTracker();
        } else {
            this.isMain = false;
            this.textureManager = parent.textureManager;
            this.shaderTracker = parent.shaderTracker;
            this.textureTracker = parent.textureTracker;
        }
    }

    // Server state. Runs on rendering thread.
    public final ListManager listManager = new ListManager(this);
    public final AttribManager attribManager = new AttribManager();
    public final TransformManager transformManager = new TransformManager(attribManager);
    public final VertexInterceptor vertexInterceptor = new VertexInterceptor(attribManager, transformManager);
    // Context-shared server state.
    public final TextureManager textureManager;

    // Infrastructure. Spans main and rendering threads.
    public final StallDetector stallDetector = new StallDetector();
    public final Executor exec = new Executor(this);
    public final StateCache glStateCache = new StateCache();
    public final BufferPool bufferPool = new BufferPool();

    // Context-local client state. Runs on main thread.
    public final float[] commandArgs = new float[4];
    public final AttribTracker attribTracker = new AttribTracker();
    public final ClientAttribTracker clientAttribTracker = new ClientAttribTracker(bufferPool);
    // Context-local client state, that can however be safely run per-context.
    public final ListManager clientListManager = new ListManager(this);
    public final ResourceGenerator texGenerator = new ResourceGenerator(org.lwjgl.opengl.GL11::glGenTextures, exec);
    public final ResourceGenerator arrayGenerator = new ResourceGenerator(org.lwjgl.opengl.GL30::glGenVertexArrays, exec);
    public final ResourceGenerator bufferGenerator = new ResourceGenerator(org.lwjgl.opengl.GL15::glGenBuffers, exec);
    // Context-shared client state.
    public final ShaderTracker shaderTracker;
    public final TextureTracker textureTracker;

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
