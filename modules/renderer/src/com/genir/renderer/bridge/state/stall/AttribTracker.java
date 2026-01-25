package com.genir.renderer.bridge.state.stall;

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
    private AttribState state = new AttribState();
    private Stack<AttribState.Snapshot> expectedStack = new Stack<>();

    // Values not being a part of attributes stack.
    private int framebufferBinding = 0;
    private int vertexArrayBinding = 0;

    public boolean getEnableStencilTest() {
        return state.enableStencilTest;
    }

    public boolean getEnableAlphaTest() {
        return state.enableAlphaTest;
    }

    public boolean getEnableTexture2D() {
        return state.enableTexture2D;
    }

    public boolean getEnableBlend() {
        return state.enableBlend;
    }

    public boolean getEnableLighting() {
        return state.enableLighting;
    }

    public int getTextureBindingID() {
        return state.textureID;
    }

    public int getActiveTexture() {
        return state.activeTexture;
    }

    public int getMatrixMode() {
        return state.matrixMode;
    }

    public float getLineWidth() {
        return state.lineWidth;
    }

    public int getArrayBufferBinding() {
        return state.arrayBufferBinding;
    }

    public int getFramebufferBinding() {
        return framebufferBinding;
    }

    public int getVertexArrayBinding() {
        return vertexArrayBinding;
    }

    public AttribState.Viewport getViewport() {
        return state.viewport;
    }

    public void clear() {
        state = new AttribState();
        expectedStack = new Stack<>();

        framebufferBinding = 0;
        vertexArrayBinding = 0;
    }

    //
    // GL calls.
    //

    public void glPushAttrib(int mask) {
        // Save expected state.
        AttribState stateSnapshot = new AttribState();
        stateSnapshot.overwriteWith(state, mask);
        expectedStack.push(new AttribState.Snapshot(stateSnapshot, mask));
    }

    public void glPopAttrib() {
        // GL_STACK_UNDERFLOW
        if (expectedStack.isEmpty()) {
            return;
        }

        AttribState.Snapshot snapshot = expectedStack.pop();
        state.overwriteWith(snapshot.state(), snapshot.attribMask());
    }

    public void glEnable(int cap) {
        state.glEnable(cap);
    }

    public void glDisable(int cap) {
        state.glDisable(cap);
    }

    public void glBindTexture(int target, int texture) {
        state.glBindTexture(target, texture);
    }

    public void glActiveTexture(int mode) {
        state.glActiveTexture(mode);
    }

    public void glMatrixMode(int mode) {
        state.glMatrixMode(mode);
    }

    public void glLineWidth(float width) {
        state.glLineWidth(width);
    }

    public void glBindBuffer(int target, int buffer) {
        state.glBindBuffer(target, buffer);
    }

    public void glBindFramebuffer(int target, int framebuffer) {
        framebufferBinding = framebuffer;
    }

    public void glBindVertexArray(int array) {
        vertexArrayBinding = array;
    }

    public void glViewport(int x, int y, int width, int height) {
        state.glViewport(x, y, width, height);
    }
}
