package com.genir.renderer.bridge.context.stall;

import java.nio.IntBuffer;
import java.util.HashSet;
import java.util.Set;

public class TextureTracker {
    private final Set<Integer> boundTextures = new HashSet<>();

    public void glBindTexture(int target, int texture) {
        boundTextures.add(texture);
    }

    public void glDeleteTextures(int texture) {
        boundTextures.remove(texture);
    }

    public void glDeleteTextures(IntBuffer textures) {
        IntBuffer readBuffer = textures.duplicate();
        while (readBuffer.hasRemaining()) {
            glDeleteTextures(readBuffer.get());
        }
    }

    public boolean glIsTexture(int texture) {
        return boundTextures.contains(texture);
    }
}
