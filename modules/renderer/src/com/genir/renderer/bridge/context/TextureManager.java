package com.genir.renderer.bridge.context;

import java.nio.IntBuffer;
import java.util.HashMap;
import java.util.Map;

import static com.genir.renderer.debug.Debug.asert;
import static org.lwjgl.opengl.GL11.GL_TEXTURE_BINDING_2D;

public class TextureManager {
    private boolean[] managedTextures = new boolean[1];
    private boolean[] loadedTextures = new boolean[1];
    private final Map<Integer, Runnable> loaders = new HashMap<>();

    public void manageTexture(int texture, Runnable loader) {
        while (managedTextures.length <= texture) {
            managedTextures = BufferUtil.reallocate(managedTextures.length * 2, managedTextures);
            loadedTextures = BufferUtil.reallocate(loadedTextures.length * 2, loadedTextures);
        }

        // Make sure texture is marked as managed only once.
        asert(!loaders.containsKey(texture));

        managedTextures[texture] = true;
        loaders.put(texture, loader);
    }

    synchronized public void glBindTexture(int target, int texture) {
        // Texture is not managed.
        if (texture >= managedTextures.length || !managedTextures[texture]) {
            return;
        }

        // Texture is already loaded.
        if (loadedTextures[texture]) {
            return;
        }

        // Load the texture.
        loadedTextures[texture] = true;
        loaders.get(texture).run();
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
        if (texture < managedTextures.length) {
            managedTextures[texture] = false;
            loadedTextures[texture] = true;
        }
    }
}
