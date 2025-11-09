package com.genir.renderer.state;

import com.genir.renderer.state.stall.AttribState;
import org.lwjgl.opengl.GL11;
import org.lwjgl.opengl.GL14;
import org.lwjgl.opengl.GL40;

import java.util.Map;
import java.util.Stack;

/**
 * AttribTracker optimizes state changes by filtering out redundant calls
 * (e.g., consecutive glEnable calls).
 */
public class AttribManager {
    private AttribState expected = new AttribState();
    private AttribState actual = new AttribState();

    private Stack<AttribState.Snapshot> expectedStack = new Stack<>();
    private Stack<AttribState.Snapshot> actualStack = new Stack<>();

    public boolean interceptEnable(int cap) {
        return (cap == GL11.GL_STENCIL_TEST
                || cap == GL11.GL_ALPHA_TEST
                || cap == GL11.GL_TEXTURE_2D
                || cap == GL11.GL_BLEND
                || cap == GL11.GL_LIGHTING
        );
    }

    public int getMatrixMode() {
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
        expected = new AttribState();
        actual = new AttribState();

        expectedStack = new Stack<>();
        actualStack = new Stack<>();
    }

    public void glEnable(int cap) {
        expected.glEnable(cap);
    }

    public void glDisable(int cap) {
        expected.glDisable(cap);
    }

    public void glPushAttrib(int mask) {
        // Save expected state.
        AttribState expectedSnapshot = new AttribState();
        expectedSnapshot.overwriteWith(expected, mask);
        expectedStack.push(new AttribState.Snapshot(expectedSnapshot, mask));

        // Save actual state.
        AttribState actualSnapshot = new AttribState();
        actualSnapshot.overwriteWith(actual, mask);
        actualStack.push(new AttribState.Snapshot(actualSnapshot, mask));
    }

    public void glPopAttrib() {
        // GL_STACK_UNDERFLOW
        if (expectedStack.isEmpty()) {
            return;
        }

        // Load expected state.
        AttribState.Snapshot expectedSnapshot = expectedStack.pop();
        expected.overwriteWith(expectedSnapshot.state(), expectedSnapshot.attribMask());

        // Load actual state.
        AttribState.Snapshot actualSnapshot = actualStack.pop();
        actual.overwriteWith(actualSnapshot.state(), actualSnapshot.attribMask());
    }

    public void glBindTexture(int target, int texture) {
        expected.glBindTexture(target, texture);
    }

    public void glBlendFuncSeparate(int sfactorRGB, int dfactorRGB, int sfactorAlpha, int dfactorAlpha) {
        expected.glBlendFuncSeparate(sfactorRGB, dfactorRGB, sfactorAlpha, dfactorAlpha);
    }

    public void glBlendFuncSeparatei(int buf, int srcRGB, int dstRGB, int srcAlpha, int dstAlpha) {
        expected.glBlendFuncSeparatei(buf, srcRGB, dstRGB, srcAlpha, dstAlpha);
    }

    public void glBlendEquation(int mode) {
        expected.glBlendEquation(mode);
    }

    public void glBlendEquationi(int buf, int mode) {
        expected.glBlendEquationi(buf, mode);
    }

    public void glMatrixMode(int mode) {
        expected.glMatrixMode(mode);
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

            // Apply the buffer-specific blend settings. No comparison with
            // the actual state is performed for simplicity and because the
            // buffer-specific settings are not in the hot path.
            if (expected.blendi != null) {
                for (Map.Entry<Integer, AttribState.BlendFactors> entry : expected.blendi.entrySet()) {
                    AttribState.BlendFactors blend = entry.getValue();
                    GL40.glBlendFuncSeparatei(entry.getKey(), blend.sfactorRGB, blend.dfactorRGB, blend.sfactorAlpha, blend.dfactorAlpha);
                }
            }

            if (expected.blendEquationi != null) {
                for (Map.Entry<Integer, Integer> entry : expected.blendEquationi.entrySet()) {
                    GL40.glBlendEquationi(entry.getKey(), entry.getValue());
                }
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
}
