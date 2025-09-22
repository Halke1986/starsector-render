package com.genir.renderer.bridge.impl;

import org.lwjgl.opengl.GL11;
import org.lwjgl.opengl.GL14;

import java.util.Stack;

/**
 * AttribTracker optimizes state changes by filtering out redundant calls
 * (e.g., consecutive glEnable calls).
 */
public class AttribManager {
    private final Snapshot expected = new Snapshot();
    private final Snapshot actual = new Snapshot();

    private final Stack<Snapshot> expectedStack = new Stack<>();
    private final Stack<Snapshot> actualStack = new Stack<>();

    public boolean interceptEnable(int cap) {
        return (cap == GL11.GL_STENCIL_TEST
                || cap == GL11.GL_ALPHA_TEST
                || cap == GL11.GL_TEXTURE_2D
                || cap == GL11.GL_BLEND
                || cap == GL11.GL_LIGHTING
        );
    }

    public int matrixMode() {
        return expected.matrixMode;
    }

    public ReorderedDrawContext getReorderedDrawContext(int mode) {
        ReorderedDrawContext ctx = new ReorderedDrawContext();

        ctx.mode = mode;

        ctx.enableTexture = expected.enableTexture2D;
        ctx.textureTarget = expected.textureTarget;
        ctx.textureID = expected.textureID;

        // Blend.
        ctx.enableBlend = expected.enableBlend;
        ctx.blendSfactor = expected.blend.sfactorRGB;
        ctx.blendDfactor = expected.blend.dfactorRGB;
        ctx.blendEquation = expected.blendEquation;

        return ctx;
    }

    public void forceReorderedDrawContext(ReorderedDrawContext ctx) {
        if (actual.enableAlphaTest) {
            actual.enableBlend = false;
            execGlEnableDisable(GL11.GL_ALPHA_TEST, false);
        }

        if (actual.enableStencilTest) {
            actual.enableStencilTest = false;
            execGlEnableDisable(GL11.GL_STENCIL_TEST, false);
        }

        if (actual.enableLighting) {
            actual.enableLighting = false;
            execGlEnableDisable(GL11.GL_LIGHTING, false);
        }

        if (actual.enableTexture2D != ctx.enableTexture) {
            actual.enableTexture2D = ctx.enableTexture;
            execGlEnableDisable(GL11.GL_TEXTURE_2D, ctx.enableTexture);
        }

        if (ctx.enableTexture) {
            if (actual.textureTarget != ctx.textureTarget || actual.textureID != ctx.textureID) {
                actual.textureTarget = ctx.textureTarget;
                actual.textureID = ctx.textureID;
                GL11.glBindTexture(ctx.textureTarget, ctx.textureID);
            }
        }

        if (actual.enableBlend != ctx.enableBlend) {
            actual.enableBlend = ctx.enableBlend;
            execGlEnableDisable(GL11.GL_BLEND, ctx.enableBlend);
        }

        if (ctx.enableBlend) {
            if (actual.blend.sfactorRGB != ctx.blendSfactor || actual.blend.dfactorRGB != ctx.blendDfactor) {
                actual.blend.sfactorRGB = ctx.blendSfactor;
                actual.blend.dfactorRGB = ctx.blendDfactor;
                actual.blend.sfactorAlpha = ctx.blendSfactor;
                actual.blend.dfactorAlpha = ctx.blendDfactor;
                GL11.glBlendFunc(ctx.blendSfactor, ctx.blendDfactor);
            }

            if (actual.blendEquation != ctx.blendEquation) {
                actual.blendEquation = ctx.blendEquation;
                GL14.glBlendEquation(ctx.blendEquation);
            }
        }
    }

    public void applyDrawAttribs() {
        applyStencil();
        applyAlpha();
        applyTexture();
        applyBlend();
        applyLighting();
    }

    // Apply matrix mode selected by client.
    public void applyMatrixMode() {
        if (actual.matrixMode != expected.matrixMode) {
            actual.matrixMode = expected.matrixMode;

            GL11.glMatrixMode(expected.matrixMode);
        }
    }

    // Set matrix mode required by the bridge, which may be
    // different from mode selected by the client.
    public void forceMatrixMode(int mode) {
        if (actual.matrixMode != mode) {
            actual.matrixMode = mode;

            GL11.glMatrixMode(mode);
        }
    }

    public void clear() {
        Snapshot emptyContext = new Snapshot();
        emptyContext.attribMask = -1;

        actual.copyFrom(emptyContext);
        expected.copyFrom(emptyContext);

        expectedStack.clear();
        actualStack.clear();
    }

    public void glEnable(int cap) {
        setState(cap, true);
    }

    public void glDisable(int cap) {
        setState(cap, false);
    }

    public void glPushAttrib(int mask) {
        expected.attribMask = mask;
        actual.attribMask = mask;

        // Save expected state.
        Snapshot savedExpected = new Snapshot();
        savedExpected.copyFrom(expected);
        expectedStack.push(savedExpected);

        // Save actual state.
        Snapshot savedActual = new Snapshot();
        savedActual.copyFrom(actual);
        actualStack.push(savedActual);
    }

    public void glPopAttrib() {
        // GL_STACK_UNDERFLOW
        if (expectedStack.isEmpty()) {
            return;
        }

        Snapshot savedExpected = expectedStack.pop();
        Snapshot savedActual = actualStack.pop();

        expected.copyFrom(savedExpected);
        actual.copyFrom(savedActual);
    }

    public void glBindTexture(int target, int texture) {
        expected.textureTarget = target;
        expected.textureID = texture;
    }

    public void glBlendFuncSeparate(int sfactorRGB, int dfactorRGB, int sfactorAlpha, int dfactorAlpha) {
        expected.blend.sfactorRGB = sfactorRGB;
        expected.blend.dfactorRGB = dfactorRGB;
        expected.blend.sfactorAlpha = sfactorAlpha;
        expected.blend.dfactorAlpha = dfactorAlpha;
    }

    public void glBlendEquation(int mode) {
        expected.blendEquation = mode;
    }

    public void glMatrixMode(int mode) {
        expected.matrixMode = mode;
    }

    private void applyStencil() {
        if (actual.enableStencilTest != expected.enableStencilTest) {
            actual.enableStencilTest = expected.enableStencilTest;
            execGlEnableDisable(GL11.GL_STENCIL_TEST, expected.enableStencilTest);
        }
    }

    private void applyAlpha() {
        if (actual.enableAlphaTest != expected.enableAlphaTest) {
            actual.enableAlphaTest = expected.enableAlphaTest;
            execGlEnableDisable(GL11.GL_ALPHA_TEST, expected.enableAlphaTest);
        }
    }

    public void applyTexture() {
        if (actual.enableTexture2D != expected.enableTexture2D) {
            actual.enableTexture2D = expected.enableTexture2D;
            execGlEnableDisable(GL11.GL_TEXTURE_2D, expected.enableTexture2D);
        }
    }

    private void applyBlend() {
        if (actual.enableBlend != expected.enableBlend) {
            actual.enableBlend = expected.enableBlend;
            execGlEnableDisable(GL11.GL_BLEND, expected.enableBlend);
        }

        if (expected.enableBlend) {
            if (actual.blend.sfactorRGB != expected.blend.sfactorRGB ||
                    actual.blend.dfactorRGB != expected.blend.dfactorRGB ||
                    actual.blend.sfactorAlpha != expected.blend.sfactorAlpha ||
                    actual.blend.dfactorAlpha != expected.blend.dfactorAlpha) {
                actual.blend.sfactorRGB = expected.blend.sfactorRGB;
                actual.blend.dfactorRGB = expected.blend.dfactorRGB;
                actual.blend.sfactorAlpha = expected.blend.sfactorAlpha;
                actual.blend.dfactorAlpha = expected.blend.dfactorAlpha;

                GL14.glBlendFuncSeparate(expected.blend.sfactorRGB, expected.blend.dfactorRGB, expected.blend.sfactorAlpha, expected.blend.dfactorAlpha);
            }

            if (actual.blendEquation != expected.blendEquation) {
                actual.blendEquation = expected.blendEquation;

                GL14.glBlendEquation(expected.blendEquation);
            }
        }
    }

    private void applyLighting() {
        if (actual.enableLighting != expected.enableLighting) {
            actual.enableLighting = expected.enableLighting;
            execGlEnableDisable(GL11.GL_LIGHTING, expected.enableLighting);
        }
    }

    private void execGlEnableDisable(int cap, boolean value) {
        if (value) {
            GL11.glEnable(cap);
        } else {
            GL11.glDisable(cap);
        }
    }

    private void setState(int cap, boolean value) {
        switch (cap) {
            case GL11.GL_STENCIL_TEST:
                expected.enableStencilTest = value;
                break;
            case GL11.GL_ALPHA_TEST:
                expected.enableAlphaTest = value;
                break;
            case GL11.GL_TEXTURE_2D:
                expected.enableTexture2D = value;
                break;
            case GL11.GL_BLEND:
                expected.enableBlend = value;
                break;
            case GL11.GL_LIGHTING:
                expected.enableLighting = value;
                break;
        }
    }

    public static class Snapshot {
        int attribMask = 0;

        boolean enableStencilTest = false;
        boolean enableAlphaTest = false;
        boolean enableTexture2D = false;
        boolean enableBlend = false;
        boolean enableLighting = false;

        // Texture. Only tracking, no application.
        int textureTarget = 0;
        int textureID = 0;

        // Blend.
        BlendFactors blend = new BlendFactors();
        int blendEquation = GL14.GL_FUNC_ADD;

        int matrixMode = GL11.GL_MODELVIEW;

        void copyFrom(Snapshot source) {
            attribMask = source.attribMask;

            if ((attribMask & GL11.GL_ENABLE_BIT) != 0) {
                enableStencilTest = source.enableStencilTest;
                enableAlphaTest = source.enableAlphaTest;
                enableTexture2D = source.enableTexture2D;
                enableBlend = source.enableBlend;
                enableLighting = source.enableLighting;
            }

            if ((attribMask & GL11.GL_STENCIL_BUFFER_BIT) != 0) {
                enableStencilTest = source.enableStencilTest;
            }

            if ((attribMask & GL11.GL_COLOR_BUFFER_BIT) != 0) {
                blend.copyFrom(source.blend);
                blendEquation = source.blendEquation;
            }

            if ((attribMask & GL11.GL_TRANSFORM_BIT) != 0) {
                matrixMode = source.matrixMode;
            }

            if ((attribMask & GL11.GL_TEXTURE_BIT) != 0) {
                textureTarget = source.textureTarget;
                textureID = source.textureID;
            }
        }
    }

    public static class BlendFactors {
        int sfactorRGB = 0;
        int dfactorRGB = 0;
        int sfactorAlpha = 0;
        int dfactorAlpha = 0;

        void copyFrom(BlendFactors source) {
            sfactorRGB = source.sfactorRGB;
            dfactorRGB = source.dfactorRGB;
            sfactorAlpha = source.sfactorAlpha;
            dfactorAlpha = source.dfactorAlpha;
        }
    }
}
