package com.genir.renderer.bridge.context.stall;

import com.genir.renderer.bridge.context.TextureUnit;
import org.lwjgl.opengl.*;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

// reference:
// https://registry.khronos.org/OpenGL-Refpages/gl2.1/xhtml/glPushAttrib.xml
public class AttribState {
    // Number of know texture types (targets).
    private static final int TEXTURE_TARGETS_NUM = 11;

    // GL_COLOR_BUFFER_BIT
    public boolean enableAlphaTest = false;   // GL11.GL_ALPHA_TEST, also GL_ENABLE_BIT
    // Non-indexed settings.
    public boolean enableBlend = false;
    public final BlendEquation blendEquation = new BlendEquation();
    public final BlendFunction blendFunction = new BlendFunction();
    // Indexed, per draw buffer settings.
    public final Map<Integer, BlendEnable> enableBlendi = new HashMap<>();
    public final Map<Integer, BlendEquation> blendEquationi = new HashMap<>();
    public final Map<Integer, BlendFunction> blendFunctioni = new HashMap<>();

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

    public void glEnablei(int target, int index) {
        switch (target) {
            case GL11.GL_BLEND:
                enableBlendi.computeIfAbsent(index, k -> new BlendEnable()).enable = true;
                break;
            case GL11.GL_SCISSOR_TEST:
                // TODO
                break;
        }
    }

    public void glDisablei(int target, int index) {
        switch (target) {
            case GL11.GL_BLEND:
                enableBlendi.computeIfAbsent(index, k -> new BlendEnable()).enable = false;
                break;
            case GL11.GL_SCISSOR_TEST:
                // TODO
                break;
        }
    }

    public void glBindTexture(int target, int texture) {
        glBindTexture(activeTexture, target, texture);
    }

    public void glBindTexture(int textureUnit, int target, int texture) {
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

    // Unbind all targets in the given unit.
    public void unbindAllTextures(int textureUnit) {
        if (textureUnit == GL13.GL_TEXTURE0) {
            texture2DUnit0 = 0;
        }

        int textureUnitIndex = TextureUnit.getIndex(textureUnit);
        int unitOffset = textureUnitIndex * TEXTURE_TARGETS_NUM;
        for (int i = 0; i < TEXTURE_TARGETS_NUM; i++) {
            int key = unitOffset + i;

            if (key >= textureOther.length) {
                break;
            }

            textureOther[key] = 0;
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
        blendFunction.glBlendFuncSeparate(sfactorRGB, dfactorRGB, sfactorAlpha, dfactorAlpha);

        // Overwrite indexed settings.
        blendFunctioni.clear();
    }

    public void glBlendFuncSeparatei(int buf, int srcRGB, int dstRGB, int srcAlpha, int dstAlpha) {
        blendFunctioni.computeIfAbsent(buf, k -> new BlendFunction())
                .glBlendFuncSeparate(srcRGB, dstRGB, srcAlpha, dstAlpha);
    }

    public void glBlendEquationSeparate(int modeRGB, int modeAlpha) {
        blendEquation.glBlendEquationSeparate(modeRGB, modeAlpha);

        // Overwrite indexed settings.
        blendEquationi.clear();
    }

    public void glBlendEquationSeparatei(int buf, int modeRGB, int modeAlpha) {
        blendEquationi.computeIfAbsent(buf, k -> new BlendEquation())
                .glBlendEquationSeparate(modeRGB, modeAlpha);
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
                enableBlendi.clear();
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
        enableLighting = source.enableLighting;
        enableScissorTest = source.enableScissorTest;

        enableBlend = source.enableBlend;
        enableBlendi.clear();
        for (Map.Entry<Integer, BlendEnable> entry : source.enableBlendi.entrySet()) {
            BlendEnable enable = new BlendEnable();
            enable.overwriteWith(entry.getValue());
            enableBlendi.put(entry.getKey(), enable);
        }
    }

    private void overwriteTextureBit(AttribState source) {
        textureOther = Arrays.copyOf(source.textureOther, source.textureOther.length);
        texture2DUnit0 = source.texture2DUnit0;
        activeTexture = source.activeTexture;
    }

    private void overwriteColorBufferBit(AttribState source) {
        enableAlphaTest = source.enableAlphaTest;

        // Blend enable.
        enableBlend = source.enableBlend;
        enableBlendi.clear();
        for (Map.Entry<Integer, BlendEnable> entry : source.enableBlendi.entrySet()) {
            BlendEnable enable = new BlendEnable();
            enable.overwriteWith(entry.getValue());
            enableBlendi.put(entry.getKey(), enable);
        }

        // Blend equation.
        blendEquation.overwriteWith(source.blendEquation);
        blendEquationi.clear();
        for (Map.Entry<Integer, BlendEquation> entry : source.blendEquationi.entrySet()) {
            BlendEquation equation = new BlendEquation();
            equation.overwriteWith(entry.getValue());
            blendEquationi.put(entry.getKey(), equation);
        }

        // Blend function.
        blendFunction.overwriteWith(source.blendFunction);
        blendFunctioni.clear();
        for (Map.Entry<Integer, BlendFunction> entry : source.blendFunctioni.entrySet()) {
            BlendFunction function = new BlendFunction();
            function.overwriteWith(entry.getValue());
            blendFunctioni.put(entry.getKey(), function);
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

    public static class BlendEnable {
        public boolean enable = false;

        public void overwriteWith(BlendEnable source) {
            this.enable = source.enable;
        }
    }

    public static class BlendFunction {
        public int srcRGB = GL11.GL_ONE;
        public int dstRGB = GL11.GL_ZERO;
        public int srcAlpha = GL11.GL_ONE;
        public int dstAlpha = GL11.GL_ZERO;

        public void overwriteWith(BlendFunction source) {
            this.srcRGB = source.srcRGB;
            this.dstRGB = source.dstRGB;
            this.srcAlpha = source.srcAlpha;
            this.dstAlpha = source.dstAlpha;
        }

        void glBlendFuncSeparate(int sfactorRGB, int dfactorRGB, int sfactorAlpha, int dfactorAlpha) {
            this.srcRGB = sfactorRGB;
            this.dstRGB = dfactorRGB;
            this.srcAlpha = sfactorAlpha;
            this.dstAlpha = dfactorAlpha;
        }

        @Override
        public boolean equals(Object other) {
            if (this == other) return true;
            if (!(other instanceof BlendFunction o)) return false;

            return this.srcRGB == o.srcRGB
                    && this.dstRGB == o.dstRGB
                    && this.srcAlpha == o.srcAlpha
                    && this.dstAlpha == o.dstAlpha;
        }
    }

    public static class BlendEquation {
        public int modeRGB = GL14.GL_FUNC_ADD;
        public int modeAlpha = GL14.GL_FUNC_ADD;

        public void overwriteWith(BlendEquation source) {
            this.modeRGB = source.modeRGB;
            this.modeAlpha = source.modeAlpha;
        }

        public void glBlendEquationSeparate(int modeRGB, int modeAlpha) {
            this.modeRGB = modeRGB;
            this.modeAlpha = modeAlpha;
        }

        @Override
        public boolean equals(Object other) {
            if (this == other) return true;
            if (!(other instanceof BlendEquation o)) return false;

            return this.modeRGB == o.modeRGB && this.modeAlpha == o.modeAlpha;
        }
    }

    public record Box(int x, int y, int width, int height) {
    }

    public record Snapshot(AttribState state, int attribMask) {
    }
}
