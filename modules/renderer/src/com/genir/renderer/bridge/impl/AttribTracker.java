package com.genir.renderer.bridge.impl;

import org.lwjgl.opengl.GL11;
import org.lwjgl.opengl.GL14;

import java.util.Stack;

/**
 * AttribTracker optimizes state changes by filtering out redundant calls
 * (e.g., consecutive glEnable calls).
 */
public class AttribTracker {
    private final Executor exec;

    private final Snapshot expected = new Snapshot();
    private final Snapshot actual = new Snapshot();

    private final Stack<Snapshot> expectedStack = new Stack<>();
    private final Stack<Snapshot> actualStack = new Stack<>();

    public AttribTracker(Executor exec) {
        this.exec = exec;
    }

    public boolean interceptEnable(int cap) {
        return (cap == GL11.GL_STENCIL_TEST
                || cap == GL11.GL_ALPHA_TEST
                || cap == GL11.GL_TEXTURE_2D
                || cap == GL11.GL_BLEND
                || cap == GL11.GL_LIGHTING
        );
    }

    public boolean enableTexture() {
        return expected.enableTexture2D;
    }

    public boolean enableLighting() {
        return expected.enableLighting;
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
        ctx.blendSfactor = expected.blendSfactor;
        ctx.blendDfactor = expected.blendDfactor;
        ctx.blendEquation = expected.blendEquation;

        return ctx;
    }

    public void applyEnableAndColorBufferBit() {
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

            final int mode = expected.matrixMode;
            exec.execute(() -> GL11.glMatrixMode(mode));
        }
    }

    // Set matrix mode required by the bridge, which may be
    // different from mode selected by the client.
    public void forceMatrixMode(int mode) {
        if (actual.matrixMode != mode) {
            actual.matrixMode = mode;

            exec.execute(() -> GL11.glMatrixMode(mode));
        }
    }

    public void clear() {
        Snapshot cleanContext = new Snapshot();
        cleanContext.attribMask = -1;

        cleanContext.save(actual);
        cleanContext.save(expected);

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
        expected.save(savedExpected);
        expectedStack.push(savedExpected);

        // Save actual state.
        Snapshot savedActual = new Snapshot();
        actual.save(savedActual);
        actualStack.push(savedActual);
    }

    public void glPopAttrib() {
        Snapshot savedCurrent = expectedStack.pop();
        Snapshot savedPrevious = actualStack.pop();

        if (savedCurrent != null) {
            savedCurrent.save(expected);
            savedPrevious.save(actual);
        }
    }

    public void glBindTexture(int target, int texture) {
        expected.textureTarget = target;
        expected.textureID = texture;

        exec.execute(() -> GL11.glBindTexture(target, texture));
    }

    public void glBlendFunc(int sfactor, int dfactor) {
        expected.blendSfactor = sfactor;
        expected.blendDfactor = dfactor;
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
            apply(GL11.GL_STENCIL_TEST, expected.enableStencilTest);
        }
    }

    private void applyAlpha() {
        if (actual.enableAlphaTest != expected.enableAlphaTest) {
            actual.enableAlphaTest = expected.enableAlphaTest;
            apply(GL11.GL_ALPHA_TEST, expected.enableAlphaTest);
        }
    }

    public void applyTexture() {
        if (actual.enableTexture2D != expected.enableTexture2D) {
            actual.enableTexture2D = expected.enableTexture2D;
            apply(GL11.GL_TEXTURE_2D, expected.enableTexture2D);
        }

//        if (expected.enableTexture2D) {
//            if (actual.textureTarget != expected.textureTarget || actual.textureID != expected.textureID) {
//                actual.textureTarget = expected.textureTarget;
//                actual.textureID = expected.textureID;
//
//                final int target = expected.textureTarget;
//                final int texture = expected.textureID;
//
//                exec.execute(() -> GL11.glBindTexture(target, texture));
//            }
//        }
    }

    private void applyBlend() {
        if (actual.enableBlend != expected.enableBlend) {
            actual.enableBlend = expected.enableBlend;
            apply(GL11.GL_BLEND, expected.enableBlend);
        }

        if (expected.enableBlend) {
            if (actual.blendSfactor != expected.blendSfactor || actual.blendDfactor != expected.blendDfactor) {
                actual.blendSfactor = expected.blendSfactor;
                actual.blendDfactor = expected.blendDfactor;

                final int sfactor = expected.blendSfactor;
                final int dfactor = expected.blendDfactor;

                exec.execute(() -> GL11.glBlendFunc(sfactor, dfactor));
            }

            if (actual.blendEquation != expected.blendEquation) {
                actual.blendEquation = expected.blendEquation;

                final int equation = expected.blendEquation;

                exec.execute(() -> GL14.glBlendEquation(equation));
            }
        }
    }

    private void applyLighting() {
        if (actual.enableLighting != expected.enableLighting) {
            actual.enableLighting = expected.enableLighting;
            apply(GL11.GL_LIGHTING, expected.enableLighting);
        }
    }

    private void apply(int cap, boolean value) {
        if (value) {
            exec.execute(() -> GL11.glEnable(cap));
        } else {
            exec.execute(() -> GL11.glDisable(cap));
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

        // Texture.
        int textureTarget = 0;
        int textureID = 0;

        // Blend.
        int blendSfactor = 0;
        int blendDfactor = 0;
        int blendEquation = GL14.GL_FUNC_ADD;

        int matrixMode = GL11.GL_MODELVIEW;

        void save(Snapshot other) {
            other.attribMask = attribMask;

            if ((attribMask & GL11.GL_ENABLE_BIT) != 0) {
                other.enableStencilTest = enableStencilTest;
                other.enableAlphaTest = enableAlphaTest;
                other.enableTexture2D = enableTexture2D;
                other.enableBlend = enableBlend;
                other.enableLighting = enableLighting;
            }

            if ((attribMask & GL11.GL_COLOR_BUFFER_BIT) != 0) {
                other.blendSfactor = blendSfactor;
                other.blendDfactor = blendDfactor;
                other.blendEquation = blendEquation;
            }

            if ((attribMask & GL11.GL_TRANSFORM_BIT) != 0) {
                other.matrixMode = matrixMode;
            }
        }
    }
}
