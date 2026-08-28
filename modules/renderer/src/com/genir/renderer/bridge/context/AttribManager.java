package com.genir.renderer.bridge.context;

import com.genir.renderer.bridge.context.stall.AttribState;
import org.lwjgl.opengl.GL11;
import org.lwjgl.opengl.GL13;
import org.lwjgl.opengl.GL14;
import org.lwjgl.opengl.GL40;

import java.util.Map;
import java.util.Stack;

import static com.genir.renderer.debug.Debug.asertEqual;

/**
 * AttribTracker optimizes state changes by filtering out redundant calls
 * (e.g., consecutive glEnable calls).
 */
public class AttribManager {
    private final AttribState expected = new AttribState();
    private final AttribState actual = new AttribState();

    private final Stack<AttribState.Snapshot> expectedStack = new Stack<>();
    private final Stack<AttribState.Snapshot> actualStack = new Stack<>();

    public boolean interceptEnable(int cap) {
        return (cap == GL11.GL_STENCIL_TEST
                || cap == GL11.GL_ALPHA_TEST
                || (cap == GL11.GL_TEXTURE_2D && expected.activeTexture == GL13.GL_TEXTURE0)
                || cap == GL11.GL_BLEND
                || cap == GL11.GL_LIGHTING
                || cap == GL11.GL_SCISSOR_TEST
        );
    }

    public int getMatrixMode() {
        return expected.matrixMode;
    }

    public ReorderedDrawContext getReorderedDrawContext(int mode) {
        return new ReorderedDrawContext(mode, expected);
    }

    // Set server-side attributes required by the bridge, which may be
    // different from attributes selected by the client.
    public void forceReorderedDrawContext(ReorderedDrawContext ctx) {
        applyTexture(ctx.enableTexture2D, ctx.texture2D);

        AttribState.BlendFactors blendFactors = new AttribState.BlendFactors();
        blendFactors.sfactorRGB = ctx.blendSfactor;
        blendFactors.dfactorRGB = ctx.blendDfactor;
        blendFactors.sfactorAlpha = ctx.blendSfactor;
        blendFactors.dfactorAlpha = ctx.blendDfactor;
        applyBlend(ctx.enableBlend, blendFactors, ctx.blendEquation, null, null);

        //
        // GL functions never required by reordered draw context.
        //

        applyAlpha(false);
        applyStencil(false);
        applyLighting(false);
        applyScissor(false);
    }

    // Apply server-side attributes selected by the client.
    public void applyDrawAttribs() {
        applyStencil(expected.enableStencilTest);
        applyAlpha(expected.enableAlphaTest);
        applyTexture(expected.enableTexture2DUnit0, expected.texture2DUnit0);
        applyBlend(expected.enableBlend, expected.blend, expected.blendEquation, expected.blendi, expected.blendEquationi);
        applyLighting(expected.enableLighting);
        applyScissor(expected.enableScissorTest);
    }

    // Apply matrix mode selected by the client.
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

    //
    // GL calls.
    //

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

        // Texture binding is not overriden, just tracked.
        actual.glBindTexture(target, texture);
    }

    public void glActiveTexture(int mode) {
        expected.glActiveTexture(mode);

        // Texture unit is not overriden, just tracked.
        actual.glActiveTexture(mode);
    }

    public void glBlendFunc(int sfactorRGB, int dfactorRGB) {
        expected.glBlendFuncSeparate(sfactorRGB, dfactorRGB, sfactorRGB, dfactorRGB);
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

    //
    // Attrib application.
    //

    private void applyStencil(boolean enable) {
        if (actual.enableStencilTest != enable) {
            actual.enableStencilTest = enable;
            execGlEnableDisable(GL11.GL_STENCIL_TEST, enable);
        }
    }

    private void applyAlpha(boolean enable) {
        if (actual.enableAlphaTest != enable) {
            actual.enableAlphaTest = enable;
            execGlEnableDisable(GL11.GL_ALPHA_TEST, enable);
        }
    }

    public void applyTexture(boolean enable, int texture) {
        // No changes required.
        if ((actual.enableTexture2DUnit0 == enable) && (!enable || actual.texture2DUnit0 == texture)) {
            return;
        }

        // Set texture unit 0 before applying changes.
        if (actual.activeTexture != GL13.GL_TEXTURE0) {
            GL13.glActiveTexture(GL13.GL_TEXTURE0);
        }

        if (actual.enableTexture2DUnit0 != enable) {
            actual.enableTexture2DUnit0 = enable;
            execGlEnableDisable(GL11.GL_TEXTURE_2D, enable);
        }

        if (enable) {
            if (actual.texture2DUnit0 != texture) {
                actual.texture2DUnit0 = texture;
                GL11.glBindTexture(GL11.GL_TEXTURE_2D, texture);
            }
        }

        // Cleanup texture unit.
        asertEqual(actual.activeTexture, expected.activeTexture, null);
        if (actual.activeTexture != GL13.GL_TEXTURE0) {
            GL13.glActiveTexture(actual.activeTexture);
        }
    }

    private void applyBlend(
            boolean enable,
            AttribState.BlendFactors blendFactors,
            int blendEquation,
            Map<Integer, AttribState.BlendFactors> blendi,
            Map<Integer, Integer> blendEquationi
    ) {
        if (actual.enableBlend != enable) {
            actual.enableBlend = enable;
            execGlEnableDisable(GL11.GL_BLEND, enable);
        }

        if (enable) {
            if (actual.blend.sfactorRGB != blendFactors.sfactorRGB ||
                    actual.blend.dfactorRGB != blendFactors.dfactorRGB ||
                    actual.blend.sfactorAlpha != blendFactors.sfactorAlpha ||
                    actual.blend.dfactorAlpha != blendFactors.dfactorAlpha) {
                actual.blend.sfactorRGB = blendFactors.sfactorRGB;
                actual.blend.dfactorRGB = blendFactors.dfactorRGB;
                actual.blend.sfactorAlpha = blendFactors.sfactorAlpha;
                actual.blend.dfactorAlpha = blendFactors.dfactorAlpha;

                GL14.glBlendFuncSeparate(blendFactors.sfactorRGB, blendFactors.dfactorRGB, blendFactors.sfactorAlpha, blendFactors.dfactorAlpha);
            }

            if (actual.blendEquation != blendEquation) {
                actual.blendEquation = blendEquation;

                GL14.glBlendEquation(blendEquation);
            }

            // Apply the buffer-specific blend settings. No comparison with
            // the actual state is performed for simplicity and because the
            // buffer-specific settings are not in the hot path.
            if (blendi != null) {
                for (Map.Entry<Integer, AttribState.BlendFactors> entry : blendi.entrySet()) {
                    AttribState.BlendFactors blend = entry.getValue();
                    GL40.glBlendFuncSeparatei(entry.getKey(), blend.sfactorRGB, blend.dfactorRGB, blend.sfactorAlpha, blend.dfactorAlpha);
                }
            }

            if (blendEquationi != null) {
                for (Map.Entry<Integer, Integer> entry : blendEquationi.entrySet()) {
                    GL40.glBlendEquationi(entry.getKey(), entry.getValue());
                }
            }
        }
    }

    private void applyLighting(boolean enable) {
        if (actual.enableLighting != enable) {
            actual.enableLighting = enable;
            execGlEnableDisable(GL11.GL_LIGHTING, enable);
        }
    }

    private void applyScissor(boolean enable) {
        if (actual.enableScissorTest != enable) {
            actual.enableScissorTest = enable;
            execGlEnableDisable(GL11.GL_SCISSOR_TEST, enable);
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
