package com.genir.renderer.bridge;

import static com.genir.renderer.bridge.Bridge.interceptActive;

public class MatrixTracker {
    private int matrixMode = org.lwjgl.opengl.GL11.GL_MODELVIEW;

    private final Matrix modelView;

    public MatrixTracker(Matrix modelView) {
        this.modelView = modelView;
    }

    public void glMatrixMode(int mode) {
        matrixMode = mode;

        org.lwjgl.opengl.GL11.glMatrixMode(mode);
    }

    public void glPushMatrix() {
        if (matrixMode == org.lwjgl.opengl.GL11.GL_MODELVIEW) {
            modelView.glPushMatrix();
        }

        if (!interceptActive || matrixMode != org.lwjgl.opengl.GL11.GL_MODELVIEW) {
            org.lwjgl.opengl.GL11.glPushMatrix();
        }
    }

    public void glPopMatrix() {
        if (matrixMode == org.lwjgl.opengl.GL11.GL_MODELVIEW) {
            modelView.glPopMatrix();
        }

        if (!interceptActive || matrixMode != org.lwjgl.opengl.GL11.GL_MODELVIEW) {
            org.lwjgl.opengl.GL11.glPopMatrix();
        }
    }

    public void glTranslatef(float x, float y, float z) {
        if (matrixMode == org.lwjgl.opengl.GL11.GL_MODELVIEW) {
            modelView.glTranslatef(x, y, z);
        }

        if (!interceptActive || matrixMode != org.lwjgl.opengl.GL11.GL_MODELVIEW) {
            org.lwjgl.opengl.GL11.glTranslatef(x, y, z);
        }
    }

    public void glRotatef(float angle, float x, float y, float z) {
        if (matrixMode == org.lwjgl.opengl.GL11.GL_MODELVIEW) {
            modelView.glRotatef(angle, x, y, z);
        }

        if (!interceptActive || matrixMode != org.lwjgl.opengl.GL11.GL_MODELVIEW) {
            org.lwjgl.opengl.GL11.glRotatef(angle, x, y, z);
        }
    }

    public void glScalef(float x, float y, float z) {
        if (matrixMode == org.lwjgl.opengl.GL11.GL_MODELVIEW) {
            modelView.glScalef(x, y, z);
        }

        if (!interceptActive || matrixMode != org.lwjgl.opengl.GL11.GL_MODELVIEW) {
            org.lwjgl.opengl.GL11.glScalef(x, y, z);
        }
    }
}
