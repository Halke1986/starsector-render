package com.genir.renderer.bridge.context;

import com.genir.renderer.bridge.context.stall.*;
import com.genir.renderer.debug.Profiler;
import org.apache.log4j.Logger;
import org.lwjgl.LWJGLException;

import static com.genir.renderer.debug.Debug.asert;

public class Context {
    public final boolean isMain;
    boolean isDestroyed = false;
    private final org.lwjgl.opengl.SharedDrawable sharedDrawable;

    public Profiler.Frame nextProfilerFrame = null;
    public Profiler.Frame mainProfilerFrame = null;
    public Profiler.Frame renderingProfilerFrame = null;

    public Context() {
        Logger.getLogger(Context.class).info("Created new virtual main OpenGL context.");

        this.isMain = true;
        this.sharedDrawable = null;

        this.textureManager = new TextureManager();
        this.shaderTracker = new ShaderTracker();
        this.textureTracker = new TextureTracker();
    }

    public Context(Context parent, org.lwjgl.opengl.SharedDrawable sharedDrawable) {
        Logger.getLogger(Context.class).info("Created new virtual aux OpenGL context.");

        this.isMain = false;
        this.sharedDrawable = sharedDrawable;

        this.textureManager = parent.textureManager;
        this.shaderTracker = parent.shaderTracker;
        this.textureTracker = parent.textureTracker;
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
    public final AttribTracker attribTracker = new AttribTracker(exec);
    public final ClientAttribTracker clientAttribTracker = new ClientAttribTracker(bufferPool);
    // Context-local client state, that can however be safely run per-context.
    public final ListManager clientListManager = new ListManager(this);
    public final ResourceGenerator texGenerator = new ResourceGenerator(org.lwjgl.opengl.GL11::glGenTextures, exec);
    public final ResourceGenerator arrayGenerator = new ResourceGenerator(org.lwjgl.opengl.GL30::glGenVertexArrays, exec);
    public final ResourceGenerator bufferGenerator = new ResourceGenerator(org.lwjgl.opengl.GL15::glGenBuffers, exec);
    // Context-shared client state.
    public final ShaderTracker shaderTracker;
    public final TextureTracker textureTracker;
    public final BufferManager bufferManager = new BufferManager();

    public void update() {
        // Runs on rendering thread.

        asert(!isDestroyed);

        if (org.lwjgl.opengl.Display.isCreated()) {
            stallDetector.update();
            glStateCache.update();
            vertexInterceptor.update();
            texGenerator.update();
            arrayGenerator.update();
            bufferGenerator.update();

            if (isMain) {
                textureManager.update();
            }
        }
    }

    public void restoreCurrent() {
        // Runs on rendering thread.

        asert(!isDestroyed);

        try {
            if (isMain) {
                org.lwjgl.opengl.Display.makeCurrent();
            } else {
                sharedDrawable.makeCurrent();
            }
        } catch (LWJGLException e) {
            throw new RuntimeException(e);
        }
    }

    public void destroy() {
        // Runs on rendering thread.

        asert(!isDestroyed);

        try {
            if (isMain) {
                textureManager.shutdown();
            }

            if (isMain) {
                org.lwjgl.opengl.Display.destroy();
            } else {
                sharedDrawable.destroy();
            }

            exec.shutdown();
        } finally {
            // Allow other methods to be called during context destruction.
            // NOTE: This allows incorrect re-entrant destroy() call.
            isDestroyed = true;
        }
    }
}

