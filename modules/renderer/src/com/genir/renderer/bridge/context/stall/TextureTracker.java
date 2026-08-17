package com.genir.renderer.bridge.context.stall;

import com.genir.renderer.bridge.context.BufferUtil;

import java.nio.IntBuffer;
import java.util.HashMap;
import java.util.Map;

import static com.genir.renderer.debug.Debug.asert;

public class TextureTracker {
    private final AttribTracker attribTracker;

    private boolean[] boundTextures = new boolean[1];
    private final Map<Integer, TexData> parameterCache = new HashMap<>();

    public TextureTracker(AttribTracker attribTracker) {
        this.attribTracker = attribTracker;
    }

    public void glBindTexture(int target, int texture) {
        while (boundTextures.length <= texture) {
            boundTextures = BufferUtil.reallocate(boundTextures.length * 2, boundTextures);
        }

        boundTextures[texture] = true;
    }

    public void glDeleteTextures(int texture) {
        if (texture < boundTextures.length) {
            boundTextures[texture] = false;
        }
    }

    public void glDeleteTextures(IntBuffer textures) {
        IntBuffer readBuffer = textures.duplicate();
        while (readBuffer.hasRemaining()) {
            glDeleteTextures(readBuffer.get());
        }
    }

    public boolean glIsTexture(int texture) {
        return texture < boundTextures.length && boundTextures[texture];
    }

    public void updateTextureData(int level, int internalformat, int width, int height) {
        // Do not track mipmaps.
        if (level != 0) {
            return;
        }

        int textureID = attribTracker.getTextureBindingID();
        if (textureID == 0) {
            return;
        }

        asert(glIsTexture(textureID));

        TexData data = new TexData(internalformat, width, height);
        parameterCache.put(textureID, data);
    }

    public Integer getTextureData(int pname) {
        boolean handledPname = pname == org.lwjgl.opengl.GL11.GL_TEXTURE_WIDTH
                || pname == org.lwjgl.opengl.GL11.GL_TEXTURE_HEIGHT
                || pname == org.lwjgl.opengl.GL11.GL_TEXTURE_INTERNAL_FORMAT;

        if (!handledPname) {
            return null;
        }

        int textureID = attribTracker.getTextureBindingID();
        TexData data = parameterCache.get(textureID);
        if (data == null) {
            return null;
        }

        return switch (pname) {
            case org.lwjgl.opengl.GL11.GL_TEXTURE_WIDTH -> data.width;
            case org.lwjgl.opengl.GL11.GL_TEXTURE_HEIGHT -> data.height;
            case org.lwjgl.opengl.GL11.GL_TEXTURE_INTERNAL_FORMAT -> data.internalformat;
            default -> null;
        };
    }

    private record TexData(int internalformat, int width, int height) {
    }
}
