package com.genir.renderer.archiv;

import java.nio.FloatBuffer;

import static com.genir.renderer.archiv.Bridge.interceptActive;
import static com.genir.renderer.archiv.Bridge.throwUnsupportedOperation;

public class MatrixHandler {
    private int matrixMode = org.lwjgl.opengl.GL11.GL_MODELVIEW;

    private final MatrixStack modelView;

    public MatrixHandler(MatrixStack modelView) {
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

    public void glOrtho(double left, double right, double bottom, double top, double zNear, double zFar) {
        // glOrtho should never be called on model view matrix.
        if (matrixMode == org.lwjgl.opengl.GL11.GL_MODELVIEW) {
            throwUnsupportedOperation("glOrtho");
        }

        if (!interceptActive || matrixMode != org.lwjgl.opengl.GL11.GL_MODELVIEW) {
            org.lwjgl.opengl.GL11.glOrtho(left, right, bottom, top, zNear, zFar);
        }
    }

    public void glLoadIdentity() {
        if (matrixMode == org.lwjgl.opengl.GL11.GL_MODELVIEW) {
            modelView.glLoadIdentity();
        }

        if (!interceptActive || matrixMode != org.lwjgl.opengl.GL11.GL_MODELVIEW) {
            org.lwjgl.opengl.GL11.glLoadIdentity();
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

    public void glTranslated(double x, double y, double z) {
        glTranslatef((float) x, (float) y, (float) z);
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

    public void glMultMatrix(FloatBuffer m) {
        if (matrixMode == org.lwjgl.opengl.GL11.GL_MODELVIEW) {
            throwUnsupportedOperation("glMultMatrix");
        }

        if (!interceptActive || matrixMode != org.lwjgl.opengl.GL11.GL_MODELVIEW) {
            org.lwjgl.opengl.GL11.glMultMatrix(m);
        }
    }
}
