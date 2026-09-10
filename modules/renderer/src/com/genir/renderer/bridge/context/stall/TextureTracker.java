package com.genir.renderer.bridge.context.stall;

import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.interfaces.GLCommand;

import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import static com.genir.renderer.debug.Debug.asert;
import static com.genir.renderer.debug.Debug.asertEqual;

public class TextureTracker { // Context-shared object.
    // TODO re-bind textures on glPopAttrib.

    // Async access to this.boundTextures. Races are acceptable,
    // as long as not leading to out-of-bounds access errors.
    private int[] textureTargets = new int[1];
    private final Map<Integer, TexData> parameterCache = new ConcurrentHashMap<>();

    // Return true only when the binding request is correct and would not cause OpenGL error.
    public boolean glBindTexture(int target, int texture) {
        switch (target) {
            case org.lwjgl.opengl.GL11.GL_TEXTURE_2D:
            case org.lwjgl.opengl.GL11.GL_TEXTURE_1D:
            case org.lwjgl.opengl.GL12.GL_TEXTURE_3D:
            case org.lwjgl.opengl.GL13.GL_TEXTURE_CUBE_MAP:
            case org.lwjgl.opengl.GL30.GL_TEXTURE_1D_ARRAY:
            case org.lwjgl.opengl.GL30.GL_TEXTURE_2D_ARRAY:
            case org.lwjgl.opengl.GL31.GL_TEXTURE_RECTANGLE:
            case org.lwjgl.opengl.GL31.GL_TEXTURE_BUFFER:
            case org.lwjgl.opengl.GL32.GL_TEXTURE_2D_MULTISAMPLE:
            case org.lwjgl.opengl.GL32.GL_TEXTURE_2D_MULTISAMPLE_ARRAY:
            case org.lwjgl.opengl.GL40.GL_TEXTURE_CUBE_MAP_ARRAY:
                break;

            // Unhandled texture type.
            default:
                return false;
        }

        // Out of bounds.
        if (texture < 0) {
            return false;
        }

        // Unbinding a texture.
        if (texture == 0){
            return true;
        }

        int[] boundTextures = this.textureTargets;

        // New texture in new range.
        if (texture >= boundTextures.length) {
            synchronized (this) {
                while (this.textureTargets.length <= texture) {
                    this.textureTargets = Arrays.copyOf(this.textureTargets, this.textureTargets.length * 2);
                }

                this.textureTargets[texture] = target;
                return true;
            }
        }

        // Re-binding an existing texture.
        if (boundTextures[texture] == target) {
            return true;
        }

        // New texture.
        if (boundTextures[texture] == 0) {
            synchronized (this) {
                this.textureTargets[texture] = target;
                return true;
            }
        }

        // Attempting to re-bind an existing texture with different target.
        asert(boundTextures[texture] != target && boundTextures[texture] != 0);
        return false;
    }

    public boolean glIsTexture(Context context, int texture) {
        record glIsTexture(int texture, boolean expected) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int argsOffset) {
                // Assert the simulated value reflects the OpenGL state.
                boolean actual = org.lwjgl.opengl.GL11.glIsTexture(texture);
                asertEqual(expected, actual, this);
            }
        }

        boolean result = glIsTextureImpl(texture);
        context.exec.execute(new glIsTexture(texture, result));
        return result;
    }

    synchronized private boolean glIsTextureImpl(int texture) {
        return texture >= 0 && texture < textureTargets.length && textureTargets[texture] != 0;
    }

    synchronized public void glDeleteTextures(int texture) {
        if (texture >= 0 && texture < textureTargets.length) {
            textureTargets[texture] = 0;
        }
    }

    public void updateTextureData(Context context, int target, int level, int internalformat, int width, int height) {
        // Do not track mipmaps.
        if (level != 0) {
            return;
        }

        // TextureTracker object is shared between contexts, therefore
        // it cannot have a static reference to the context-local AttribTracker.
        int textureID = context.attribTracker.getTextureBinding(target);
        if (textureID == 0) {
            return;
        }

        asert(glIsTextureImpl(textureID));

        TexData data = new TexData(internalformat, width, height);
        parameterCache.put(textureID, data);
    }

    public Integer getTextureData(Context context, int target, int level, int pname) {
        record getTextureData(int target, int level, int pname, int expected) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int argsOffset) {
                // Assert the simulated value reflects the OpenGL state.
                int actual = org.lwjgl.opengl.GL11.glGetTexLevelParameteri(target, level, pname);
                asertEqual(expected, actual, this);
            }
        }

        // Do not track mipmaps.
        if (level != 0) {
            return null;
        }

        switch (pname) {
            case org.lwjgl.opengl.GL11.GL_TEXTURE_WIDTH:
            case org.lwjgl.opengl.GL11.GL_TEXTURE_HEIGHT:
            case org.lwjgl.opengl.GL11.GL_TEXTURE_INTERNAL_FORMAT:
                break;
            default:
                return null;
        }

        int textureID = context.attribTracker.getTextureBinding(target);
        TexData data = parameterCache.get(textureID);
        if (data == null) {
            return null;
        }

        // Do not assert internal format. Drivers are allowed to return
        // different format than was provided during texture creation.
        if (pname == org.lwjgl.opengl.GL11.GL_TEXTURE_INTERNAL_FORMAT) {
            return data.internalformat;
        }

        Integer result = switch (pname) {
            case org.lwjgl.opengl.GL11.GL_TEXTURE_WIDTH -> data.width;
            case org.lwjgl.opengl.GL11.GL_TEXTURE_HEIGHT -> data.height;
            default -> null;
        };

        context.exec.execute(new getTextureData(target, level, pname, result));
        return result;
    }

    private record TexData(int internalformat, int width, int height) {
    }
}
