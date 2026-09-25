package com.genir.renderer.bridge.context;

import com.genir.renderer.async.AsyncException;
import com.genir.renderer.async.ExecutorFactory;
import com.genir.renderer.overrides.loading.textures.TextureData;
import org.apache.log4j.Logger;
import org.lwjgl.opengl.GL11;

import java.nio.file.Path;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.function.Consumer;

public class TextureManager {
    private final Logger logger = Logger.getLogger(TextureManager.class);
    private final Path PWD = Path.of(System.getProperty("user.dir"));

    private int managedNumber = 0;
    private int loadedNumber = 0;
    private long loadingDuration = 0;
    private boolean assetLoadingFinished = false;

    private TextureState[] texturesState = new TextureState[1];
    private final Map<Integer, TextureCallbacks> loadersCache = new HashMap<>();

    private static final AsyncException asyncException = new AsyncException();
    private final ExecutorService workers = ExecutorFactory.newExecutor(4, "FR-Texture-Lazy-Loader", asyncException);

    // Runs on the client thread to allow asynchronous texture file loading
    // before the rendering thread processes the glBindTexture request.
    synchronized public void manageTexture(Context context, int target, int texture, TextureData texData, Callable<byte[]> loadFn, Consumer<byte[]> commitFn) {
        while (texturesState.length <= texture) {
            texturesState = Arrays.copyOf(texturesState, texturesState.length * 2);
        }

        TextureCallbacks loaders = new TextureCallbacks(texData, loadFn, commitFn);

        // Upload textures defined after the asset loading phase immediately.
        // Textures defined by mods at runtime are likely to be displayed immediately,
        // without advance notice that would allow reliable lazy uploading.
        if (assetLoadingFinished) {
            logger.info("Loading DDS texture  [" + PWD.relativize(texData.imagePath) + "]");
            uploadTexture(context, texture, loaders);
            return;
        }

        // Perform an eager upload for non-managed textures.
        if (texturesState[texture] == TextureState.DO_NOT_MANAGE) {
            logger.info("Loading DDS texture  [" + PWD.relativize(texData.imagePath) + "]");
            uploadTexture(context, texture, loaders);
            return;
        }

        // Schedule texture for lazy upload.
        if (texturesState[texture] == null) {
            managedNumber++;
            texturesState[texture] = TextureState.UNLOADED;
        }

        loadersCache.put(texture, loaders);
    }

    // Runs on the client thread. Triggers texture lazy upload.
    synchronized public void glBindTexture(Context context, int target, int texture) {
        if (texture < 0 || texture >= texturesState.length || texturesState[texture] != TextureState.UNLOADED) {
            // Texture is not scheduled for lazy upload.
            return;
        }

        // Lazy load is performed only once per texture.
        texturesState[texture] = TextureState.DO_NOT_MANAGE;
        loadedNumber++;

        TextureCallbacks loaders = loadersCache.remove(texture);

        Path path = PWD.relativize(loaders.texData.imagePath);
        logger.info("Loading DDS texture " + loadedNumber + "/" + managedNumber + " [" + path + "]");

        uploadTexture(context, texture, loaders);
    }

    private void uploadTexture(Context context, int texture, TextureCallbacks loaders) {
        // Load texture.
        Future<byte[]> bufferFuture = workers.submit(() -> {
            try {
                return loaders.loadFn.call();
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        });

        // Commit texture.
        context.exec.execute((ctx, args, offset) -> {
            commitTexture(ctx, texture, bufferFuture, loaders);
        });
    }

    private void commitTexture(Context context, int texture, Future<byte[]> bufferFuture, TextureCallbacks loaders) {
        long start = System.nanoTime();
        try {
            byte[] bytes = bufferFuture.get();
            loaders.commitFn.accept(bytes);

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
        org.lwjgl.opengl.GL11.glPushAttrib(GL11.GL_COLOR_BUFFER_BIT | GL11.GL_ENABLE_BIT);

        org.lwjgl.opengl.GL11.glEnable(GL11.GL_TEXTURE_2D);

        // Ensure the texture is not visible
        // to not corrupt the game animation.
        org.lwjgl.opengl.GL11.glEnable(GL11.GL_BLEND);
        org.lwjgl.opengl.GL11.glBlendFunc(GL11.GL_ZERO, GL11.GL_ONE);

        org.lwjgl.opengl.GL11.glBegin(GL11.GL_TRIANGLES);

        org.lwjgl.opengl.GL11.glTexCoord2f(0.0f, 0.0f);
        org.lwjgl.opengl.GL11.glVertex2f(-1.0f, -1.0f);

        org.lwjgl.opengl.GL11.glTexCoord2f(1.0f, 0.0f);
        org.lwjgl.opengl.GL11.glVertex2f(1.0f, -1.0f);

        org.lwjgl.opengl.GL11.glTexCoord2f(0.0f, 1.0f);
        org.lwjgl.opengl.GL11.glVertex2f(-1.0f, 1.0f);

        org.lwjgl.opengl.GL11.glEnd();

        org.lwjgl.opengl.GL11.glPopAttrib();
    }

    public void assetLoadingFinished() {
        assetLoadingFinished = true;
    }

    public void glDeleteTextures(int texture) {
        doNotManageTexture(texture);
    }

    public void textureModified() {
        int textureID = GL11.glGetInteger(GL11.GL_TEXTURE_BINDING_2D);
        doNotManageTexture(textureID);
    }

    synchronized private void doNotManageTexture(int texture) {
        while (texturesState.length <= texture) {
            texturesState = Arrays.copyOf(texturesState, texturesState.length * 2);
        }

        texturesState[texture] = TextureState.DO_NOT_MANAGE;
        loadersCache.remove(texture);
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

    public enum TextureState {
        // null -> not managed
        UNLOADED,
        DO_NOT_MANAGE,
    }

    private record TextureCallbacks(TextureData texData, Callable<byte[]> loadFn, Consumer<byte[]> commitFn) {
    }
}
