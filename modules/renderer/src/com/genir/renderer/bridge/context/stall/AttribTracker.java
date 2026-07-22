package com.genir.renderer.bridge.context.stall;

import java.util.Stack;

/**
 * Tracks the state of OpenGL attributes as they would appear to the client
 * if operations were executed eagerly. Instead, operations are deferred
 * to a separate thread and performed lazily.
 * <p>
 * The rendering thread must ensure that when the client issues an OpenGL
 * call that depends on the current state, the thread’s state is synchronized
 * with what the client observes through AttribTracker.
 */
public class AttribTracker {
    private final AttribState state = new AttribState();
    private final Stack<AttribState.Snapshot> stateStack = new Stack<>();

    // Values not being a part of attributes stack.
    private int framebufferBinding = 0;
    private int vertexArrayBinding = 0;
    private int currentProgram = 0;

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

    public int getCurrentProgram() {
        return currentProgram;
    }

    public boolean getEnableScissorTest() {
        return state.enableScissorTest;
    }

    //
    // GL calls.
    //

    public void glPushAttrib(int mask) {
        // Save expected state.
        AttribState stateSnapshot = new AttribState();
        stateSnapshot.overwriteWith(state, mask);
        stateStack.push(new AttribState.Snapshot(stateSnapshot, mask));
    }

    public void glPopAttrib() {
        // GL_STACK_UNDERFLOW
        if (stateStack.isEmpty()) {
            return;
        }

        AttribState.Snapshot snapshot = stateStack.pop();
        state.overwriteWith(snapshot.state(), snapshot.attribMask());
    }

    public void glEnable(int cap) { // TODO LIST
        state.glEnable(cap);
    }

    public void glDisable(int cap) { // TODO LIST
        state.glDisable(cap);
    }

    public void glBindTexture(int target, int texture) { // TODO LIST
        state.glBindTexture(target, texture);
    }

    public void glActiveTexture(int mode) {
        state.glActiveTexture(mode);
    }

    public void glMatrixMode(int mode) { // TODO LIST
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

    public void glViewport(int x, int y, int width, int height) { // TODO LIST
        state.glViewport(x, y, width, height);
    }

    public void glUseProgram(int program) {
        currentProgram = program;
    }
}
