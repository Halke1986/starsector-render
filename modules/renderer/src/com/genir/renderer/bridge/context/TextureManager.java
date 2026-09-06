package com.genir.renderer.bridge.context;

import com.genir.renderer.async.AsyncException;
import com.genir.renderer.async.ExecutorFactory;
import com.genir.renderer.overrides.loading.textures.TextureData;
import org.apache.log4j.Logger;
import org.lwjgl.opengl.GL11;

import java.nio.ByteBuffer;
import java.nio.IntBuffer;
import java.nio.file.Path;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.function.Consumer;

import static com.genir.renderer.debug.Debug.asert;
import static org.lwjgl.opengl.GL11.GL_TEXTURE_BINDING_2D;

public class TextureManager {
    // TODO AttribManager handles glDeleteTextures.

    private final Logger logger = Logger.getLogger(TextureManager.class);
    private final Path PWD = Path.of(System.getProperty("user.dir"));

    private int managedNumber = 0;
    private int loadedNumber = 0;
    private long loadingDuration = 0;

    private State[] texturesState = new State[1];
    private final Map<Integer, TextureCallbacks> loaders = new HashMap<>();

    private static final AsyncException asyncException = new AsyncException();
    private final ExecutorService workers = ExecutorFactory.newExecutor(
            4, "FR-Texture-Lazy-Loader", asyncException.getHandler());

    public void manageTexture(int texture, TextureData texData, Callable<ByteBuffer> loadFn, Consumer<ByteBuffer> commitFn) {
        while (texturesState.length <= texture) {
            texturesState = Arrays.copyOf(texturesState, texturesState.length * 2);
        }

        // Make sure texture is marked as managed only once.
        asert(!loaders.containsKey(texture));

        managedNumber++;
        texturesState[texture] = State.MANAGED;

        loaders.put(texture, new TextureCallbacks(texData, loadFn, commitFn));
    }

    // Runs on the client thread to allow asynchronous texture file loading
    // before the rendering thread processes the glBindTexture request.
    synchronized public void glBindTexture(Context context, int target, int texture) {
        // Texture is not managed.
        if (texture < 0 || texture >= texturesState.length || texturesState[texture] == null) {
            return;
        }

        // Texture is already loaded.
        if (texturesState[texture] == State.LOADED) {
            return;
        }

        loadedNumber++;
        texturesState[texture] = State.LOADED;

        TextureCallbacks callbacks = loaders.get(texture);
        Path path = PWD.relativize(callbacks.texData.imagePath);
        logger.info("Loading image DDS override " + loadedNumber + "/" + managedNumber + " [" + path + "]");

        // Load texture.
        Future<ByteBuffer> bufferFuture = workers.submit(() -> {
            try {
                return callbacks.loadFn.call();
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        });

        // Commit texture.
        context.exec.execute((ctx, args, offset) -> {
            commitTexture(ctx, texture, bufferFuture);
        });
    }

    private void commitTexture(Context context, int texture, Future<ByteBuffer> bufferFuture) {
        long start = System.nanoTime();
        try {
            ByteBuffer buffer = bufferFuture.get();

            TextureCallbacks texData = loaders.get(texture);
            texData.commitFn.accept(buffer);

            // Experiments indicate that the OpenGL driver defers most texture upload work
            // until a draw call. Force that work here to measure the total upload latency.
            forceDraw();
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            long thisTextureDuration = System.nanoTime() - start;
            loadingDuration += thisTextureDuration;

            if (context.renderingProfilerFrame != null) {
                context.renderingProfilerFrame.addLazyTime(thisTextureDuration);
            }
        }
    }

    private void forceDraw() {
        GL11.glPushAttrib(GL11.GL_COLOR_BUFFER_BIT | GL11.GL_ENABLE_BIT);

        GL11.glEnable(GL11.GL_TEXTURE_2D);

        // Ensure the texture is not visible
        // to not corrupt the game animation.
        GL11.glEnable(GL11.GL_BLEND);
        GL11.glBlendFunc(GL11.GL_ZERO, GL11.GL_ONE);

        GL11.glBegin(GL11.GL_TRIANGLES);

        GL11.glTexCoord2f(0.0f, 0.0f);
        GL11.glVertex2f(-1.0f, -1.0f);

        GL11.glTexCoord2f(1.0f, 0.0f);
        GL11.glVertex2f(1.0f, -1.0f);

        GL11.glTexCoord2f(0.0f, 1.0f);
        GL11.glVertex2f(-1.0f, 1.0f);

        GL11.glEnd();

        GL11.glPopAttrib();
    }

    public void glDeleteTextures(int texture) {
        doNotManageTexture(texture);
    }

    public void glDeleteTextures(IntBuffer textures) {
        IntBuffer readBuffer = textures.duplicate();
        while (readBuffer.hasRemaining()) {
            glDeleteTextures(readBuffer.get());
        }
    }

    public void textureModified() {
        int textureID = org.lwjgl.opengl.GL11.glGetInteger(GL_TEXTURE_BINDING_2D);
        doNotManageTexture(textureID);
    }

    synchronized private void doNotManageTexture(int texture) {
        if (texture >= 0 && texture < texturesState.length) {
            texturesState[texture] = null;
            loaders.remove(texture);
        }
    }

    public void update() {
        if (loadingDuration != 0) {
            logger.info("Texture loading time: " + (loadingDuration / 10000) / 100f + "ms");
            loadingDuration = 0;
        }
    }

    public void shutdown() {
        workers.shutdown();
    }

    private enum State {
        // null -> not managed
        MANAGED,
        LOADED,
    }

    private record TextureCallbacks(TextureData texData, Callable<ByteBuffer> loadFn, Consumer<ByteBuffer> commitFn) {
    }
}
