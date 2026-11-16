package com.genir.renderer.bridge.context;

import com.genir.renderer.bridge.context.stall.AttribState;
import com.genir.renderer.debug.Debug;
import org.lwjgl.opengl.GL11;
import org.lwjgl.opengl.GL13;

import java.nio.IntBuffer;
import java.util.Map;
import java.util.Stack;

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

    // Apply server-side attributes selected by the client.
    public void applyDrawAttribs() {
        applyStencil(expected.enableStencilTest);
        applyAlpha(expected.enableAlphaTest);
        applyTexture(expected.enableTexture2DUnit0);
        applyBlend();
        applyLighting(expected.enableLighting);
        applyScissor(expected.enableScissorTest);
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
        // Do not track texture binding in AttribManager,
        // as the state synchronization is difficult to maintain.
        throw new UnsupportedOperationException();
    }

    public void glActiveTexture(int mode) {
        // Texture unit is not permanently overriden.
        expected.glActiveTexture(mode);
        actual.glActiveTexture(mode);
    }

    public void glMatrixMode(int mode) {
        // Matrix mode is not permanently overriden.
        expected.glMatrixMode(mode);
        actual.glMatrixMode(mode);
    }

    public void glBlendFuncSeparate(int sfactorRGB, int dfactorRGB, int sfactorAlpha, int dfactorAlpha) {
        expected.glBlendFuncSeparate(sfactorRGB, dfactorRGB, sfactorAlpha, dfactorAlpha);
    }

    public void glBlendFuncSeparatei(int buf, int srcRGB, int dstRGB, int srcAlpha, int dstAlpha) {
        expected.glBlendFuncSeparatei(buf, srcRGB, dstRGB, srcAlpha, dstAlpha);
    }

    public void glBlendEquationSeparate(int modeRGB, int modeAlpha) {
        expected.glBlendEquationSeparate(modeRGB, modeAlpha);
    }

    public void glBlendEquationSeparatei(int buf, int modeRGB, int modeAlpha) {
        expected.glBlendEquationSeparatei(buf, modeRGB, modeAlpha);
    }

    public void glBindTextures(int first, int count, IntBuffer textures, int[] targets) {
        expected.glBindTextures(first, count, textures, targets);
    }

    //
    // Attrib application.
    //

    private void applyStencil(boolean expected) {
        if (actual.enableStencilTest != expected) {
            actual.enableStencilTest = expected;
            execGlEnableDisable(GL11.GL_STENCIL_TEST, expected);
        }
    }

    private void applyAlpha(boolean expected) {
        if (actual.enableAlphaTest != expected) {
            actual.enableAlphaTest = expected;
            execGlEnableDisable(GL11.GL_ALPHA_TEST, expected);
        }
    }

    public void applyTexture(boolean enable) {
        // No changes required.
        if (actual.enableTexture2DUnit0 == enable) {
            return;
        }

        // Set texture unit 0 before applying changes.
        if (actual.activeTexture != GL13.GL_TEXTURE0) {
            org.lwjgl.opengl.GL13.glActiveTexture(GL13.GL_TEXTURE0);
        }

        if (actual.enableTexture2DUnit0 != enable) {
            actual.enableTexture2DUnit0 = enable;
            execGlEnableDisable(GL11.GL_TEXTURE_2D, enable);
        }

        // Cleanup texture unit.
        Debug.asertEqual(actual.activeTexture, expected.activeTexture, null);
        if (actual.activeTexture != GL13.GL_TEXTURE0) {
            org.lwjgl.opengl.GL13.glActiveTexture(actual.activeTexture);
        }
    }

    private void applyBlend() {
        if (expected.enableBlendi.isEmpty() && actual.enableBlendi.isEmpty()
                && expected.blendEquationi.isEmpty() && actual.blendEquationi.isEmpty()
                && expected.blendFunctioni.isEmpty() && actual.blendFunctioni.isEmpty()
        ) {
            applyBlendFast();
        } else {
            applyBlendEnable();
            applyBlendFunction();
            applyBlendEquation();
        }
    }

    private void applyBlendFast() {
        // Enable.
        if (actual.enableBlend != expected.enableBlend) {
            actual.enableBlend = expected.enableBlend;
            execGlEnableDisable(GL11.GL_BLEND, expected.enableBlend);
        }

        // No need to apply expected changes to a disabled blend.
        if (!expected.enableBlend) {
            return;
        }

        // Function.
        if (!actual.blendFunction.equals(expected.blendFunction)) {
            actual.blendFunction.overwriteWith(expected.blendFunction);

            org.lwjgl.opengl.GL14.glBlendFuncSeparate(
                    expected.blendFunction.srcRGB,
                    expected.blendFunction.dstRGB,
                    expected.blendFunction.srcAlpha,
                    expected.blendFunction.dstAlpha
            );
        }

        // Equation.
        if (!actual.blendEquation.equals(expected.blendEquation)) {
            actual.blendEquation.overwriteWith(expected.blendEquation);

            if (expected.blendEquation.modeRGB == expected.blendEquation.modeAlpha) {
                org.lwjgl.opengl.GL14.glBlendEquation(expected.blendEquation.modeRGB);
            } else {
                org.lwjgl.opengl.GL20.glBlendEquationSeparate(expected.blendEquation.modeRGB, expected.blendEquation.modeAlpha);
            }
        }
    }

    private void applyBlendEnable() {
        // Apply global changes.
        if (actual.enableBlend != expected.enableBlend) {
            actual.enableBlend = expected.enableBlend;
            execGlEnableDisable(GL11.GL_BLEND, expected.enableBlend);

            // Overwrite indexed settings.
            actual.enableBlendi.clear();
        }

        // Apply indexed changes.
        for (Map.Entry<Integer, AttribState.BlendEnable> expectedEntry : expected.enableBlendi.entrySet()) {
            int index = expectedEntry.getKey();
            AttribState.BlendEnable expectedValue = expectedEntry.getValue();

            // Read actual value. If not cached, assume the value is same as global.
            AttribState.BlendEnable actualValue = actual.enableBlendi.computeIfAbsent(index, k -> {
                AttribState.BlendEnable value = new AttribState.BlendEnable();
                value.enable = expected.enableBlend;
                return value;
            });

            if (actualValue.enable != expectedValue.enable) {
                actualValue.enable = expectedValue.enable;

                if (expectedValue.enable) {
                    org.lwjgl.opengl.GL30.glEnablei(GL11.GL_BLEND, index);
                } else {
                    org.lwjgl.opengl.GL30.glDisablei(GL11.GL_BLEND, index);
                }
            }
        }

        // Restore removed indexed overrides.
        var iterator = actual.enableBlendi.entrySet().iterator();
        while (iterator.hasNext()) {
            var entry = iterator.next();
            int index = entry.getKey();

            if (expected.enableBlendi.containsKey(index)) {
                continue;
            }

            if (entry.getValue().enable != actual.enableBlend) {
                if (actual.enableBlend) {
                    org.lwjgl.opengl.GL30.glEnablei(GL11.GL_BLEND, index);
                } else {
                    org.lwjgl.opengl.GL30.glDisablei(GL11.GL_BLEND, index);
                }
            }

            iterator.remove();
        }
    }

    private void applyBlendFunction() {
        // Apply global changes.
        if (!actual.blendFunction.equals(expected.blendFunction)) {
            actual.blendFunction.overwriteWith(expected.blendFunction);

            org.lwjgl.opengl.GL14.glBlendFuncSeparate(
                    expected.blendFunction.srcRGB,
                    expected.blendFunction.dstRGB,
                    expected.blendFunction.srcAlpha,
                    expected.blendFunction.dstAlpha
            );

            // Overwrite indexed settings.
            actual.blendFunctioni.clear();
        }

        // Apply indexed changes.
        for (Map.Entry<Integer, AttribState.BlendFunction> expectedEntry : expected.blendFunctioni.entrySet()) {
            int index = expectedEntry.getKey();
            AttribState.BlendFunction expectedValue = expectedEntry.getValue();

            // Read actual value. If not cached, assume the value is same as global.
            AttribState.BlendFunction actualValue = actual.blendFunctioni.computeIfAbsent(index, k -> {
                AttribState.BlendFunction value = new AttribState.BlendFunction();
                value.overwriteWith(expected.blendFunction);
                return value;
            });

            if (!actualValue.equals(expectedValue)) {
                actualValue.overwriteWith(expectedValue);

                org.lwjgl.opengl.GL40.glBlendFuncSeparatei(
                        index,
                        expectedValue.srcRGB,
                        expectedValue.dstRGB,
                        expectedValue.srcAlpha,
                        expectedValue.dstAlpha
                );
            }
        }

        // Restore removed indexed overrides.
        var iterator = actual.blendFunctioni.entrySet().iterator();
        while (iterator.hasNext()) {
            var entry = iterator.next();
            int index = entry.getKey();
            AttribState.BlendFunction expectedValue = entry.getValue();

            if (expected.blendFunctioni.containsKey(index)) {
                continue;
            }

            if (!expectedValue.equals(actual.blendFunction)) {
                org.lwjgl.opengl.GL40.glBlendFuncSeparatei(
                        index,
                        actual.blendFunction.srcRGB,
                        actual.blendFunction.dstRGB,
                        actual.blendFunction.srcAlpha,
                        actual.blendFunction.dstAlpha
                );
            }

            iterator.remove();
        }
    }

    private void applyBlendEquation() {
        // Apply global changes.
        if (!actual.blendEquation.equals(expected.blendEquation)) {
            actual.blendEquation.overwriteWith(expected.blendEquation);

            if (expected.blendEquation.modeRGB == expected.blendEquation.modeAlpha) {
                org.lwjgl.opengl.GL14.glBlendEquation(expected.blendEquation.modeRGB);
            } else {
                org.lwjgl.opengl.GL20.glBlendEquationSeparate(expected.blendEquation.modeRGB, expected.blendEquation.modeAlpha);
            }

            // Overwrite indexed settings.
            actual.blendEquationi.clear();
        }

        // Apply indexed changes.
        for (Map.Entry<Integer, AttribState.BlendEquation> expectedEntry : expected.blendEquationi.entrySet()) {
            int index = expectedEntry.getKey();
            AttribState.BlendEquation expectedValue = expectedEntry.getValue();

            // Read actual value. If not cached, assume the value is same as global.
            AttribState.BlendEquation actualValue = actual.blendEquationi.computeIfAbsent(index, k -> {
                AttribState.BlendEquation value = new AttribState.BlendEquation();
                value.overwriteWith(expected.blendEquation);
                return value;
            });

            if (!actualValue.equals(expectedValue)) {
                actualValue.overwriteWith(expectedValue);

                org.lwjgl.opengl.GL40.glBlendEquationSeparatei(
                        index,
                        expectedValue.modeRGB,
                        expectedValue.modeAlpha
                );
            }
        }

        // Restore removed indexed overrides.
        var iterator = actual.blendEquationi.entrySet().iterator();
        while (iterator.hasNext()) {
            var entry = iterator.next();
            int index = entry.getKey();
            AttribState.BlendEquation expectedValue = entry.getValue();

            if (expected.blendEquationi.containsKey(index)) {
                continue;
            }

            if (!expectedValue.equals(actual.blendEquation)) {
                org.lwjgl.opengl.GL40.glBlendEquationSeparatei(
                        index,
                        actual.blendEquation.modeRGB,
                        actual.blendEquation.modeAlpha
                );
            }

            iterator.remove();
        }
    }

    private void applyLighting(boolean expected) {
        if (actual.enableLighting != expected) {
            actual.enableLighting = expected;
            execGlEnableDisable(GL11.GL_LIGHTING, expected);
        }
    }

    private void applyScissor(boolean expected) {
        if (actual.enableScissorTest != expected) {
            actual.enableScissorTest = expected;
            execGlEnableDisable(GL11.GL_SCISSOR_TEST, expected);
        }
    }

    private void execGlEnableDisable(int cap, boolean value) {
        if (value) {
            org.lwjgl.opengl.GL11.glEnable(cap);
        } else {
            org.lwjgl.opengl.GL11.glDisable(cap);
        }
    }
}
