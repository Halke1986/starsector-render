package com.genir.renderer.bridge.context.stall;

import org.lwjgl.opengl.GL11;
import org.lwjgl.opengl.GL13;
import org.lwjgl.opengl.GL14;
import org.lwjgl.opengl.GL15;

import java.util.HashMap;
import java.util.Map;

public class AttribState {
    // GL_ENABLE_BIT
    public boolean enableStencilTest = false; // GL11.GL_STENCIL_TEST
    public boolean enableAlphaTest = false;   // GL11.GL_ALPHA_TEST
    public boolean enableTexture2D = false;   // GL11.GL_TEXTURE_2D
    public boolean enableBlend = false;       // GL11.GL_BLEND
    public boolean enableLighting = false;    // GL11.GL_LIGHTING

    // GL_TEXTURE_BIT
    public int textureTarget = 0;
    public int textureID = 0;
    public int activeTexture = GL13.GL_TEXTURE0;

    // GL_TRANSFORM_BIT
    public int matrixMode = GL11.GL_MODELVIEW;

    // GL_LINE_BIT
    public float lineWidth = 1;

    // GL_CLIENT_VERTEX_ARRAY_BIT
    public int arrayBufferBinding = 0;

    // GL_COLOR_BUFFER_BIT
    public int blendEquation = GL14.GL_FUNC_ADD;
    public BlendFactors blend = new BlendFactors();
    public Map<Integer, BlendFactors> blendi = null;
    public Map<Integer, Integer> blendEquationi = null;

    // GL_VIEWPORT_BIT
    public Viewport viewport = new Viewport(0, 0, 0, 0);

    //
    // GL Setters
    //

    public void glEnable(int cap) {
        setEnable(cap, true);
    }

    public void glDisable(int cap) {
        setEnable(cap, false);
    }

    public void glBindTexture(int target, int texture) {
        textureTarget = target;
        textureID = texture;
    }

    public void glActiveTexture(int mode) {
        activeTexture = mode;
    }

    public void glMatrixMode(int mode) {
        matrixMode = mode;
    }

    public void glLineWidth(float width) {
        lineWidth = width;
    }

    public void glBindBuffer(int target, int buffer) {
        if (target == GL15.GL_ARRAY_BUFFER) {
            arrayBufferBinding = buffer;
        }
    }

    public void glBlendFuncSeparate(int sfactorRGB, int dfactorRGB, int sfactorAlpha, int dfactorAlpha) {
        blend.sfactorRGB = sfactorRGB;
        blend.dfactorRGB = dfactorRGB;
        blend.sfactorAlpha = sfactorAlpha;
        blend.dfactorAlpha = dfactorAlpha;

        // glBlendFuncSeparate overwrites buffer-specific glBlendFuncSeparatei values.
        blendi = null;
    }

    public void glBlendFuncSeparatei(int buf, int srcRGB, int dstRGB, int srcAlpha, int dstAlpha) {
        if (blendi == null) {
            blendi = new HashMap<>();
        }

        BlendFactors blend = new BlendFactors();
        blend.sfactorRGB = srcRGB;
        blend.dfactorRGB = dstRGB;
        blend.sfactorAlpha = srcAlpha;
        blend.dfactorAlpha = dstAlpha;

        blendi.put(buf, blend);
    }

    public void glBlendEquation(int mode) {
        blendEquation = mode;

        // glBlendEquation overwrites buffer-specific glBlendEquationi values.
        blendEquationi = null;
    }

    public void glBlendEquationi(int buf, int mode) {
        if (blendEquationi == null) {
            blendEquationi = new HashMap<>();
        }

        blendEquationi.put(buf, mode);
    }

    public void glViewport(int x, int y, int width, int height) {
        viewport = new Viewport(x, y, width, height);
    }

    private void setEnable(int cap, boolean value) {
        switch (cap) {
            case GL11.GL_STENCIL_TEST:
                enableStencilTest = value;
                break;
            case GL11.GL_ALPHA_TEST:
                enableAlphaTest = value;
                break;
            case GL11.GL_TEXTURE_2D:
                enableTexture2D = value;
                break;
            case GL11.GL_BLEND:
                enableBlend = value;
                break;
            case GL11.GL_LIGHTING:
                enableLighting = value;
                break;
        }
    }

    //
    // Overwrite
    //

    public void overwriteWith(AttribState source, int attribMask) {
        if ((attribMask & GL11.GL_ENABLE_BIT) != 0) {
            overwriteEnableBit(source);
        }

        if ((attribMask & GL11.GL_STENCIL_BUFFER_BIT) != 0) {
            enableStencilTest = source.enableStencilTest;
        }

        if ((attribMask & GL11.GL_TEXTURE_BIT) != 0) {
            overwriteTextureBit(source);
        }

        if ((attribMask & GL11.GL_TRANSFORM_BIT) != 0) {
            matrixMode = source.matrixMode;
        }

        if ((attribMask & GL11.GL_LINE_BIT) != 0) {
            lineWidth = source.lineWidth;
        }

        if ((attribMask & GL11.GL_CLIENT_VERTEX_ARRAY_BIT) != 0) {
            arrayBufferBinding = source.arrayBufferBinding;
        }

        if ((attribMask & GL11.GL_COLOR_BUFFER_BIT) != 0) {
            overwriteColorBufferBit(source);
        }

        if ((attribMask & GL11.GL_VIEWPORT_BIT) != 0) {
            viewport = source.viewport;
        }
    }

    private void overwriteEnableBit(AttribState source) {
        enableStencilTest = source.enableStencilTest;
        enableAlphaTest = source.enableAlphaTest;
        enableTexture2D = source.enableTexture2D;
        enableBlend = source.enableBlend;
        enableLighting = source.enableLighting;
    }

    private void overwriteTextureBit(AttribState source) {
        textureTarget = source.textureTarget;
        textureID = source.textureID;
        activeTexture = source.activeTexture;
    }

    private void overwriteColorBufferBit(AttribState source) {
        blend.overwriteWith(source.blend);
        blendEquation = source.blendEquation;

        if (source.blendi != null) {
            if (blendi == null) {
                blendi = new HashMap<>();
            } else {
                blendi.clear();
            }

            for (Map.Entry<Integer, BlendFactors> entry : source.blendi.entrySet()) {
                BlendFactors blend = new BlendFactors();
                blend.overwriteWith(entry.getValue());
                blendi.put(entry.getKey(), blend);
            }
        }

        if (source.blendEquationi != null) {
            if (blendEquationi == null) {
                blendEquationi = new HashMap<>();
            } else {
                blendEquationi.clear();
            }

            blendEquationi.putAll(source.blendEquationi);
        }
    }

    public static class BlendFactors {
        public int sfactorRGB = 0;
        public int dfactorRGB = 0;
        public int sfactorAlpha = 0;
        public int dfactorAlpha = 0;

        void overwriteWith(BlendFactors source) {
            sfactorRGB = source.sfactorRGB;
            dfactorRGB = source.dfactorRGB;
            sfactorAlpha = source.sfactorAlpha;
            dfactorAlpha = source.dfactorAlpha;
        }
    }

    public record Viewport(int x, int y, int width, int height) {
    }

    public record Snapshot(AttribState state, int attribMask) {
    }
}
