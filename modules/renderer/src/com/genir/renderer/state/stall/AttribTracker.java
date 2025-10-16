package com.genir.renderer.state.stall;

import org.lwjgl.opengl.GL11;
import org.lwjgl.opengl.GL13;
import org.lwjgl.opengl.GL15;

import java.util.Stack;

/**
 * Tracks the state of OpenGL attributes as they would appear to the client
 * if operations were executed eagerly. Instead, operations are deferred
 * to a separate thread and performed lazily. The rendering thread must ensure
 * that when the client issues an OpenGL call that depends on the current
 * state, the thread’s state is synchronized with what the client observes
 * through AttribTracker.
 */
public class AttribTracker {
    private final Snapshot expected = new Snapshot();
    private final Stack<Snapshot> expectedStack = new Stack<>();

    // Values not being a part of attributes stack.
    private int framebufferBinding = 0;
    private int vertexArrayBinding = 0;

    public int getTextureBinding() {
        return expected.textureID;
    }

    public int getActiveTexture() {
        return expected.activeTexture;
    }

    public int getMatrixMode() {
        return expected.matrixMode;
    }

    public float getLineWidth() {
        return expected.lineWidth;
    }

    public int getFramebufferBinding() {
        return framebufferBinding;
    }

    public int getVertexArrayBinding() {
        return vertexArrayBinding;
    }

    public int getArrayBufferBinding() {
        return expected.arrayBufferBinding;
    }

    public void clear() {
        Snapshot cleanContext = new Snapshot();
        cleanContext.attribMask = -1;

        cleanContext.save(expected);

        expectedStack.clear();

        framebufferBinding = 0;
    }

    public void glPushAttrib(int mask) {
        expected.attribMask = mask;

        // Save expected state.
        Snapshot savedExpected = new Snapshot();
        expected.save(savedExpected);
        expectedStack.push(savedExpected);
    }

    public void glPopAttrib() {
        // GL_STACK_UNDERFLOW
        if (expectedStack.isEmpty()) {
            return;
        }

        Snapshot savedExpected = expectedStack.pop();
        savedExpected.save(expected);
    }

    public void glBindTexture(int target, int texture) {
        expected.textureID = texture;
    }

    public void glActiveTexture(int mode) {
        expected.activeTexture = mode;
    }

    public void glMatrixMode(int mode) {
        expected.matrixMode = mode;
    }

    public void glLineWidth(float width) {
        expected.lineWidth = width;
    }

    public void glBindFramebuffer(int target, int framebuffer) {
        framebufferBinding = framebuffer;
    }

    public void glBindVertexArray(int array) {
        vertexArrayBinding = array;
    }

    public void glBindBuffer(int target, int buffer) {
        if (target == GL15.GL_ARRAY_BUFFER) {
            expected.arrayBufferBinding = buffer;
        }
    }

    public static class Snapshot {
        int attribMask = 0;

        int textureID = 0;
        int activeTexture = GL13.GL_TEXTURE0;
        int matrixMode = GL11.GL_MODELVIEW;
        int arrayBufferBinding = 0;
        float lineWidth = 1;

        void save(Snapshot other) {
            other.attribMask = attribMask;

            if ((attribMask & GL11.GL_TEXTURE_BIT) != 0) {
                other.textureID = textureID;
                other.activeTexture = activeTexture;
            }

            if ((attribMask & GL11.GL_TRANSFORM_BIT) != 0) {
                other.matrixMode = matrixMode;
            }

            if ((attribMask & GL11.GL_LINE_BIT) != 0) {
                other.lineWidth = lineWidth;
            }

            if ((attribMask & GL11.GL_CLIENT_VERTEX_ARRAY_BIT) != 0) {
                other.arrayBufferBinding = arrayBufferBinding;
            }
        }
    }
}
