package com.genir.renderer.bridge.context.stall;

import com.genir.renderer.bridge.context.TextureUnit;
import org.lwjgl.opengl.*;

import java.nio.IntBuffer;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

// reference:
// https://registry.khronos.org/OpenGL-Refpages/gl2.1/xhtml/glPushAttrib.xml
public class AttribState {
    // Number of know texture types (targets).
    private static final int TEXTURE_TARGETS_NUM = 11;
    private static final int TEXTURE_UNITS_NUM = 32;

    // GL_COLOR_BUFFER_BIT
    public boolean enableAlphaTest = false;   // GL11.GL_ALPHA_TEST, also GL_ENABLE_BIT
    public boolean enableBlend = false;       // GL11.GL_BLEND, also GL_ENABLE_BIT
    public int blendEquation = GL14.GL_FUNC_ADD;
    public BlendFactors blend = new BlendFactors();
    public Map<Integer, BlendFactors> blendi = null;
    public Map<Integer, Integer> blendEquationi = null;

    // GL_LIGHTING_BIT
    public boolean enableLighting = false;    // GL11.GL_LIGHTING, also GL_ENABLE_BIT

    // GL_LINE_BIT
    public float lineWidth = 1;

    // GL_SCISSOR_BIT
    public boolean enableScissorTest = false; // GL11.GL_SCISSOR_TEST, also GL_ENABLE_BIT
    public Box scissorBox = new Box(0, 0, 0, 0);

    // GL_STENCIL_BUFFER_BIT
    public boolean enableStencilTest = false; // GL11.GL_STENCIL_TEST, also GL_ENABLE_BIT

    // GL_TEXTURE_BIT
    public int activeTexture = GL13.GL_TEXTURE0;
    public boolean enableTexture2DUnit0 = false;   // GL11.GL_TEXTURE_2D, also GL_ENABLE_BIT
    public int texture2DUnit0 = 0;
    private boolean[] enableTexture2DOther = new boolean[0];
    private int[] textureOther = new int[0];

    // GL_TRANSFORM_BIT
    public int matrixMode = GL11.GL_MODELVIEW;

    // GL_VIEWPORT_BIT
    public Box viewport = new Box(0, 0, 0, 0);

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
        glBindTexture(activeTexture, target, texture);
    }

    private void glBindTexture(int textureUnit, int target, int texture) {
        if (target == GL11.GL_TEXTURE_2D && textureUnit == GL13.GL_TEXTURE0) {
            texture2DUnit0 = texture;
            return;
        }

        int key = textureKey(target, textureUnit);

        // Incorrect parameters.
        if (key == -1) {
            return;
        }

        if (textureOther.length <= key) {
            textureOther = Arrays.copyOf(textureOther, key + 1);
        }

        textureOther[key] = texture;
    }

    public void glBindTextures(int first, int count, IntBuffer textures, int[] targets) {
        IntBuffer reader = textures != null ? textures.duplicate() : null;

        for (int u = 0; u < count; u++) {
            int texture = reader != null ? reader.get() : 0;
            int target = targets[u];
            int textureUnitIndex = u + first;
            int textureUnit = TextureUnit.getEnum(textureUnitIndex);

            if (texture != 0) {
                // Skip incorrect binding.
                if (target == 0) {
                    continue;
                }

                glBindTexture(textureUnit, target, texture);
            } else {
                // Unbind all targets in the given unit.
                if (textureUnit == GL13.GL_TEXTURE0) {
                    texture2DUnit0 = 0;
                }

                int unitOffset = textureUnitIndex * TEXTURE_TARGETS_NUM;
                for (int i = 0; i < TEXTURE_TARGETS_NUM; i++) {
                    int key = unitOffset + i;

                    if (key >= textureOther.length) {
                        break;
                    }

                    textureOther[key] = 0;
                }
            }
        }
    }

    public void glDeleteTextures(int texture) {
        if (texture == texture2DUnit0) {
            texture2DUnit0 = 0;
        }

        for (int i = 0; i < textureOther.length; i++) {
            if (textureOther[i] == texture) {
                textureOther[i] = 0;
            }
        }
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
        viewport = new Box(x, y, width, height);
    }

    public void glScissor(int x, int y, int width, int height) {
        scissorBox = new Box(x, y, width, height);
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
                setEnableTexture2D(value);
                break;
            case GL11.GL_BLEND:
                enableBlend = value;
                break;
            case GL11.GL_LIGHTING:
                enableLighting = value;
                break;
            case GL11.GL_SCISSOR_TEST:
                enableScissorTest = value;
                break;
        }
    }

    private void setEnableTexture2D(boolean value) {
        if (activeTexture == GL13.GL_TEXTURE0) {
            enableTexture2DUnit0 = value;
            return;
        }

        int key = TextureUnit.getIndex(activeTexture);

        // Incorrect parameters.
        if (key == -1) {
            return;
        }

        if (enableTexture2DOther.length <= key) {
            enableTexture2DOther = Arrays.copyOf(enableTexture2DOther, key + 1);
        }

        enableTexture2DOther[key] = value;
    }

    //
    // Getters
    //

    public int getBoundTexture(int target) {
        if (target == GL11.GL_TEXTURE_2D && activeTexture == GL13.GL_TEXTURE0) {
            return texture2DUnit0;
        }

        int key = textureKey(target, activeTexture);

        // Incorrect parameters.
        if (key == -1) {
            return 0;
        }

        if (textureOther.length <= key) {
            return 0;
        }

        return textureOther[key];
    }

    public boolean getEnableTexture2D() {
        if (activeTexture == GL13.GL_TEXTURE0) {
            return enableTexture2DUnit0;

        }

        int key = TextureUnit.getIndex(activeTexture);

        // Incorrect parameters.
        if (key == -1) {
            return false;
        }

        if (enableTexture2DOther.length <= key) {
            return false;
        }

        return enableTexture2DOther[key];
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

        if ((attribMask & GL11.GL_COLOR_BUFFER_BIT) != 0) {
            overwriteColorBufferBit(source);
        }

        if ((attribMask & GL11.GL_VIEWPORT_BIT) != 0) {
            viewport = source.viewport;
        }

        if ((attribMask & GL11.GL_LIGHTING_BIT) != 0) {
            enableLighting = source.enableLighting;
        }

        if ((attribMask & GL11.GL_SCISSOR_BIT) != 0) {
            enableScissorTest = source.enableScissorTest;
            scissorBox = source.scissorBox;
        }
    }

    private void overwriteEnableBit(AttribState source) {
        enableStencilTest = source.enableStencilTest;
        enableAlphaTest = source.enableAlphaTest;
        enableTexture2DUnit0 = source.enableTexture2DUnit0;
        enableTexture2DOther = Arrays.copyOf(source.enableTexture2DOther, source.enableTexture2DOther.length);
        enableBlend = source.enableBlend;
        enableLighting = source.enableLighting;
        enableScissorTest = source.enableScissorTest;
    }

    private void overwriteTextureBit(AttribState source) {
        textureOther = Arrays.copyOf(source.textureOther, source.textureOther.length);
        texture2DUnit0 = source.texture2DUnit0;
        activeTexture = source.activeTexture;
    }

    private void overwriteColorBufferBit(AttribState source) {
        enableAlphaTest = source.enableAlphaTest;
        enableBlend = source.enableBlend;
        blendEquation = source.blendEquation;

        blend.overwriteWith(source.blend);

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

    private static int textureKey(int target, int activeTexture) {
        int x = textureTargetIndex(target);
        int y = TextureUnit.getIndex(activeTexture);

        if (x == -1 || y == -1) {
            return -1;
        }

        return x + y * TEXTURE_TARGETS_NUM;
    }

    private static int textureTargetIndex(int target) {
        return switch (target) {
            case GL11.GL_TEXTURE_2D -> 0;
            case GL11.GL_TEXTURE_1D -> 1;
            case GL12.GL_TEXTURE_3D -> 2;
            case GL13.GL_TEXTURE_CUBE_MAP -> 3;
            case GL30.GL_TEXTURE_1D_ARRAY -> 4;
            case GL30.GL_TEXTURE_2D_ARRAY -> 5;
            case GL31.GL_TEXTURE_RECTANGLE -> 6;
            case GL31.GL_TEXTURE_BUFFER -> 7;
            case GL32.GL_TEXTURE_2D_MULTISAMPLE -> 8;
            case GL32.GL_TEXTURE_2D_MULTISAMPLE_ARRAY -> 9;
            case GL40.GL_TEXTURE_CUBE_MAP_ARRAY -> 10;

            default -> -1;
        };
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

    public record Box(int x, int y, int width, int height) {
    }

    public record Snapshot(AttribState state, int attribMask) {
    }
}
