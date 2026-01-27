package com.genir.renderer.bridge.context;

import com.genir.renderer.bridge.context.stall.*;

import java.util.HashMap;
import java.util.Map;

import static com.genir.renderer.debug.Debug.asert;

public class Context {
    // Default context for running LWJGL methods when OpenGL context is not defined.
    private static final Context backgroundContext = new Context();

    private static final Map<Thread, Context> contextMap = new HashMap<>();
    public static Context context = backgroundContext;

    // Server state. Runs on rendering thread.
    public final ListManager listManager = new ListManager();
    public final AttribManager attribManager = new AttribManager();
    public final TransformManager transformManager = new TransformManager(attribManager);
    public final VertexInterceptor vertexInterceptor = new VertexInterceptor(attribManager, transformManager);

    // Infrastructure. Spans main and rendering threads.
    public final StallDetector stallDetector = new StallDetector();
    public final Executor exec = new Executor(listManager, stallDetector);
    public final StateCache glStateCache = new StateCache();

    // Client state. Runs on main thread.
    public final ClientAttribTracker clientAttribTracker = new ClientAttribTracker();
    public final AttribTracker attribTracker = new AttribTracker();
    public final ResourceGenerator texGenerator = new ResourceGenerator(org.lwjgl.opengl.GL11::glGenTextures, exec);
    public final ResourceGenerator arrayGenerator = new ResourceGenerator(org.lwjgl.opengl.GL30::glGenVertexArrays, exec);
    public final ResourceGenerator bufferGenerator = new ResourceGenerator(org.lwjgl.opengl.GL15::glGenBuffers, exec);
    public final ShaderTracker shaderTracker = new ShaderTracker(exec);
    public final BufferManager bufferManager = new BufferManager();

    public static void create() {
        Context newContext = new Context();

        contextMap.put(Thread.currentThread(), newContext);
        context = newContext;
    }

    public static void destroy() {
        asert(contextMap.get(Thread.currentThread()) == context);

        context.exec.shutdown();

        contextMap.remove(Thread.currentThread());
        context = backgroundContext;
    }

    public void update() { // Rendering thread
        glStateCache.update();
        vertexInterceptor.update();
        texGenerator.update();
        arrayGenerator.update();
        bufferGenerator.update();
    }
}
