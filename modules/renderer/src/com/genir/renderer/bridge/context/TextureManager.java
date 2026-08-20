package com.genir.renderer.bridge.context;

import org.apache.log4j.Logger;

import java.nio.ByteBuffer;
import java.nio.IntBuffer;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;
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

        // Load the texture.
        context.exec.execute((ctx, args, offset) -> loadTexture(texture));
    }

    synchronized private void loadTexture(int texture) {
        long start = System.nanoTime();
        try {
            TextureData texData = loaders.get(texture);

            ByteBuffer buffer = texData.loadFn.call();
            texData.commitFn.accept(buffer);

            logger.info("Loading image DDS override " + loadedNumber + "/" + managedNumber + " [" + texData.path + "]");
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

    private enum State {
        // null -> not managed
        MANAGED,
        LOADED,
    }

    private record TextureData(String path, Callable<ByteBuffer> loadFn, Consumer<ByteBuffer> commitFn) {
    }
}
