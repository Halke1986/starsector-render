package com.genir.renderer.bridge.context;

import com.genir.renderer.async.AsyncException;
import com.genir.renderer.async.ExecutorFactory;
import org.apache.log4j.Logger;

import java.nio.ByteBuffer;
import java.nio.IntBuffer;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.function.Consumer;

import static com.genir.renderer.debug.Debug.asert;
import static org.lwjgl.opengl.GL11.GL_TEXTURE_BINDING_2D;

public class TextureManager {
    private final Logger logger = Logger.getLogger(TextureManager.class);

    private int managedNumber = 0;
    private int loadedNumber = 0;
    private long loadingDuration = 0;

    private State[] texturesState = new State[1];
    private final Map<Integer, TextureData> loaders = new HashMap<>();

    private static final AsyncException asyncException = new AsyncException();
    private final ExecutorService workers = ExecutorFactory.newExecutor(
            4, "FR-Texture-Lazy-Loader", asyncException.getHandler());

    public void manageTexture(int texture, String path, Callable<ByteBuffer> loadFn, Consumer<ByteBuffer> commitFn) {
        while (texturesState.length <= texture) {
            texturesState = BufferUtil.reallocate(State.class, texturesState.length * 2, texturesState);
        }

        // Make sure texture is marked as managed only once.
        asert(!loaders.containsKey(texture));

        managedNumber++;
        texturesState[texture] = State.MANAGED;

        loaders.put(texture, new TextureData(path, loadFn, commitFn));
    }

    // Client thread.
    synchronized public void glBindTexture(Context context, int target, int texture) {
        // Texture is not managed.
        if (texture >= texturesState.length || texturesState[texture] == null) {
            return;
        }

        // Texture is already loaded.
        if (texturesState[texture] == State.LOADED) {
            return;
        }

        loadedNumber++;
        texturesState[texture] = State.LOADED;

        TextureData texData = loaders.get(texture);
        logger.info("Loading image DDS override " + loadedNumber + "/" + managedNumber + " [" + texData.path + "]");

        // Load texture.
        Future<ByteBuffer> bufferFuture = workers.submit(() -> {
            try {
                return texData.loadFn.call();
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        });

        // Commit texture.
        context.exec.execute((ctx, args, offset) -> {
            commitTexture(texture, bufferFuture);
        });
    }

    synchronized private void commitTexture(int texture, Future<ByteBuffer> bufferFuture) {
        long start = System.nanoTime();
        try {
            ByteBuffer buffer = bufferFuture.get();

            TextureData texData = loaders.get(texture);
            texData.commitFn.accept(buffer);
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
            loadingDuration += System.nanoTime() - start;
        }
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
        if (texture < texturesState.length) {
            texturesState[texture] = null;
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

    private record TextureData(String path, Callable<ByteBuffer> loadFn, Consumer<ByteBuffer> commitFn) {
    }
}
