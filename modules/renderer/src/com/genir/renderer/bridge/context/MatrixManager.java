package com.genir.renderer.bridge.context;

import org.lwjgl.BufferUtils;
import org.lwjgl.opengl.GL11;

import java.nio.FloatBuffer;

public class MatrixManager {
    private final MatrixStack modelView = new MatrixStack();
    private final MatrixStack projection = new MatrixStack();

    private MatrixStack current = modelView;
    private int matrixMode = GL11.GL_MODELVIEW;
    private boolean cpuMode = true;

    // Allocation avoidance.
    private final FloatBuffer matrixBuffer = BufferUtils.createFloatBuffer(16);
    private final float[] matrixArray = new float[16];
    private final Matrix identity = new Matrix();

    public MatrixManager() {
        this.identity.glLoadIdentity();
    }

    public void setCPUMode() {
        if (cpuMode) {
            return;
        }

        if (matrixMode != GL11.GL_MODELVIEW) {
            org.lwjgl.opengl.GL11.glMatrixMode(GL11.GL_MODELVIEW);
        }

        // Disable GPU model view transformation.
        org.lwjgl.opengl.GL11.glLoadIdentity();

        if (matrixMode != GL11.GL_MODELVIEW) {
            org.lwjgl.opengl.GL11.glMatrixMode(matrixMode);
        }

        cpuMode = true;
    }

    public void setGPUMode() {
        if (!cpuMode) {
            return;
        }

        if (matrixMode != GL11.GL_MODELVIEW) {
            org.lwjgl.opengl.GL11.glMatrixMode(GL11.GL_MODELVIEW);
        }

        // Synchronize GPU model view state.
        modelView.getMatrix().storeTranspose(matrixArray);
        matrixBuffer.put(0, matrixArray, 0, 16);
        org.lwjgl.opengl.GL11.glLoadMatrix(matrixBuffer);

        if (matrixMode != GL11.GL_MODELVIEW) {
            org.lwjgl.opengl.GL11.glMatrixMode(matrixMode);
        }

        cpuMode = false;
    }

    public Matrix getCPUModelView() {
        if (cpuMode) {
            return modelView.getMatrix();
        }

        return identity;
    }

    //
    // GL calls.
    //

    public void glMatrixMode(int mode) {
        matrixMode = mode;
        current = switch (mode) {
            case GL11.GL_MODELVIEW -> modelView;
            case GL11.GL_PROJECTION -> projection;
            default -> null;
        };
    }

    public void glPushMatrix() {
        if (current != null) {
            current.glPushMatrix();
        }

        if (shouldDelegate()) {
            org.lwjgl.opengl.GL11.glPushMatrix();
        }
    }

    public void glPopMatrix() {
        if (current != null) {
            current.glPopMatrix();
        }

        if (shouldDelegate()) {
            org.lwjgl.opengl.GL11.glPopMatrix();
        }
    }

    public void glLoadIdentity() {
        if (current != null) {
            current.glLoadIdentity();
        }

        if (shouldDelegate()) {
            org.lwjgl.opengl.GL11.glLoadIdentity();
        }
    }

    public void glTranslatef(float x, float y, float z) {
        if (current != null) {
            current.glTranslatef(x, y, z);
        }

        if (shouldDelegate()) {
            org.lwjgl.opengl.GL11.glTranslatef(x, y, z);
        }
    }

    public void glRotatef(float angle, float x, float y, float z) {
        if (current != null) {
            current.glRotatef(angle, x, y, z);
        }

        if (shouldDelegate()) {
            org.lwjgl.opengl.GL11.glRotatef(angle, x, y, z);
        }
    }

    public void glScalef(float x, float y, float z) {
        if (current != null) {
            current.glScalef(x, y, z);
        }

        if (shouldDelegate()) {
            org.lwjgl.opengl.GL11.glScalef(x, y, z);
        }
    }

    public void glMultMatrix(FloatBuffer m) {
        if (current != null) {
            current.glMultMatrix(m);
        }

        if (shouldDelegate()) {
            org.lwjgl.opengl.GL11.glMultMatrix(m);
        }
    }

    public void glLoadMatrix(FloatBuffer m) {
        if (current != null) {
            current.glLoadMatrix(m);
        }

        if (shouldDelegate()) {
            org.lwjgl.opengl.GL11.glLoadMatrix(m);
        }
    }

    public void glLoadMatrix(Matrix m) {
        if (current != null) {
            current.glLoadMatrix(m);
        }

        if (shouldDelegate()) {
            m.storeTranspose(matrixArray);
            matrixBuffer.put(0, matrixArray, 0, 16);
            org.lwjgl.opengl.GL11.glLoadMatrix(matrixBuffer);
        }
    }

    public void glOrtho(double left, double right, double bottom, double top, double zNear, double zFar) {
        if (current != null) {
            current.glOrtho(left, right, bottom, top, zNear, zFar);
        }

        if (shouldDelegate()) {
            org.lwjgl.opengl.GL11.glOrtho(left, right, bottom, top, zNear, zFar);
        }
    }

    // Should the matrix operation be delegated to GPU instead of simulated on CPU.
    // Only GL_MODELVIEW transformations are simulated on CPU.
    private boolean shouldDelegate() {
        return matrixMode != GL11.GL_MODELVIEW || !cpuMode;
    }
}
