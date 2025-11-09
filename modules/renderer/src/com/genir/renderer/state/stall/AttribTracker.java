package com.genir.renderer.state.stall;

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
    private final AttribState expected = new AttribState();
    private final Stack<AttribState.Snapshot> expectedStack = new Stack<>();

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
        expected.overwriteWith(new AttribState(), -1);
        expectedStack.clear();

        framebufferBinding = 0;
        vertexArrayBinding = 0;
    }

    public void glPushAttrib(int mask) {
        // Save expected state.
        AttribState stateSnapshot = new AttribState();
        stateSnapshot.overwriteWith(expected, mask);
        expectedStack.push(new AttribState.Snapshot(stateSnapshot, mask));
    }

    public void glPopAttrib() {
        // GL_STACK_UNDERFLOW
        if (expectedStack.isEmpty()) {
            return;
        }

        AttribState.Snapshot snapshot = expectedStack.pop();
        expected.overwriteWith(snapshot.state(), snapshot.attribMask());
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
}
