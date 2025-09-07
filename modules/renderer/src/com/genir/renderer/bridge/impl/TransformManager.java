package com.genir.renderer.bridge.impl;

import org.lwjgl.opengl.GL11;

import java.nio.FloatBuffer;

public class TransformManager {
    private final AttribManager attribManager;
    private final MatrixStack modelView;

    public TransformManager(AttribManager attribManager, MatrixStack modelView) {
        this.attribManager = attribManager;
        this.modelView = modelView;
    }

    public void glPushMatrix() {
        if (attribManager.matrixMode() == GL11.GL_MODELVIEW) {
            modelView.glPushMatrix();
        } else {
            attribManager.applyMatrixMode();
            GL11.glPushMatrix();
        }
    }

    public void glPopMatrix() {
        if (attribManager.matrixMode() == GL11.GL_MODELVIEW) {
            modelView.glPopMatrix();
        } else {
            attribManager.applyMatrixMode();
            GL11.glPopMatrix();
        }
    }

    public void glLoadIdentity() {
        if (attribManager.matrixMode() == GL11.GL_MODELVIEW) {
            modelView.glLoadIdentity();
        } else {
            attribManager.applyMatrixMode();
            GL11.glLoadIdentity();
        }
    }

    public void glTranslatef(float x, float y, float z) {
        if (attribManager.matrixMode() == GL11.GL_MODELVIEW) {
            modelView.glTranslatef(x, y, z);
        } else {
            attribManager.applyMatrixMode();
            GL11.glTranslatef(x, y, z);
        }
    }

    public void glRotatef(float angle, float x, float y, float z) {
        if (attribManager.matrixMode() == GL11.GL_MODELVIEW) {
            modelView.glRotatef(angle, x, y, z);
        } else {
            attribManager.applyMatrixMode();
            GL11.glRotatef(angle, x, y, z);
        }
    }

    public void glScalef(float x, float y, float z) {
        if (attribManager.matrixMode() == GL11.GL_MODELVIEW) {
            modelView.glScalef(x, y, z);
        } else {
            attribManager.applyMatrixMode();
            GL11.glScalef(x, y, z);
        }
    }

    public void glMultMatrix(FloatBuffer m) {
        if (attribManager.matrixMode() == GL11.GL_MODELVIEW) {
            modelView.glMultMatrix(m);
        } else {
            attribManager.applyMatrixMode();
            GL11.glMultMatrix(m);
        }
    }

    public void glOrtho(double left, double right, double bottom, double top, double zNear, double zFar) {
        if (attribManager.matrixMode() == GL11.GL_MODELVIEW) {
            modelView.glOrtho(left, right, bottom, top, zNear, zFar);
        } else {
            attribManager.applyMatrixMode();
            GL11.glOrtho(left, right, bottom, top, zNear, zFar);
        }
    }
}
