package com.genir.renderer.bridge.context;

import org.apache.log4j.Logger;

import java.nio.IntBuffer;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;

import static com.genir.renderer.debug.Debug.asert;
import static org.lwjgl.opengl.GL11.GL_TEXTURE_BINDING_2D;

public class TextureManager {
    private final Logger logger = Logger.getLogger(TextureManager.class);

    private int managedNumber = 0;
    private int loadedNumber = 0;
    private long loadingDuration = 0;

    private State[] texturesState = new State[1];
    private final Map<Integer, Callable<String>> loaders = new HashMap<>();

    public void manageTexture(int texture, Callable<String> loader) {
        while (texturesState.length <= texture) {
            texturesState = BufferUtil.reallocate(State.class, texturesState.length * 2, texturesState);
        }

        // Make sure texture is marked as managed only once.
        asert(!loaders.containsKey(texture));

        managedNumber++;
        texturesState[texture] = State.MANAGED;
        loaders.put(texture, loader);
    }

    synchronized public void glBindTexture(int target, int texture) {
        // Texture is already loaded (or not managed).
        if (texture >= texturesState.length || texturesState[texture] == null) {
            return;
        }

        // Texture is already loaded (or not managed).

        // Texture is already loaded.
        if (texturesState[texture] == State.LOADED) {
            return;
        }

        // Load the texture.
        long start = System.nanoTime();
        try {
            loadedNumber++;
            texturesState[texture] = State.LOADED;

            String path = loaders.get(texture).call();
            logger.info("Loading image DDS override " + loadedNumber + "/" + managedNumber + " [" + path + "]");
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
}
