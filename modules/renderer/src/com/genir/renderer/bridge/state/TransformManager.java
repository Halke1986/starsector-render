package com.genir.renderer.bridge.state;

import org.lwjgl.BufferUtils;
import org.lwjgl.opengl.GL11;
import org.lwjgl.util.vector.Matrix4f;

import java.nio.FloatBuffer;

public class TransformManager {
    private final AttribManager attribManager;
    private final MatrixStack modelView = new MatrixStack();

    private final FloatBuffer matrixBuffer = BufferUtils.createFloatBuffer(16);
    private boolean cpuModelView = true;
    private final Matrix4f identity = new Matrix4f();

    public TransformManager(AttribManager attribManager) {
        this.attribManager = attribManager;
        this.identity.setIdentity();
    }

    public void setCPUModelView() {
        if (cpuModelView) {
            return;
        }

        // Disable GPU model view transformation.
        attribManager.forceMatrixMode(GL11.GL_MODELVIEW);
        GL11.glLoadIdentity();

        cpuModelView = true;
    }

    public void setGPUModelView() {
        if (!cpuModelView) {
            return;
        }

        // Synchronize GPU model view state.
        attribManager.forceMatrixMode(GL11.GL_MODELVIEW);
        modelView.getMatrix().storeTranspose(matrixBuffer.clear());
        GL11.glMultMatrix(matrixBuffer.flip());

        cpuModelView = false;
    }

    public Matrix4f getCPUModelView() {
        if (cpuModelView) {
            return modelView.getMatrix();
        }

        return identity;
    }

    public void glPushMatrix() {
        if (attribManager.getMatrixMode() == GL11.GL_MODELVIEW) {
            modelView.glPushMatrix();
        }

        if (shouldDelegate()) {
            attribManager.applyMatrixMode();
            GL11.glPushMatrix();
        }
    }

    public void glPopMatrix() {
        if (attribManager.getMatrixMode() == GL11.GL_MODELVIEW) {
            modelView.glPopMatrix();
        }

        if (shouldDelegate()) {
            attribManager.applyMatrixMode();
            GL11.glPopMatrix();
        }
    }

    public void glLoadIdentity() {
        if (attribManager.getMatrixMode() == GL11.GL_MODELVIEW) {
            modelView.glLoadIdentity();
        }

        if (shouldDelegate()) {
            attribManager.applyMatrixMode();
            GL11.glLoadIdentity();
        }
    }

    public void glTranslatef(float x, float y, float z) {
        if (attribManager.getMatrixMode() == GL11.GL_MODELVIEW) {
            modelView.glTranslatef(x, y, z);
        }

        if (shouldDelegate()) {
            attribManager.applyMatrixMode();
            GL11.glTranslatef(x, y, z);
        }
    }

    public void glRotatef(float angle, float x, float y, float z) {
        if (attribManager.getMatrixMode() == GL11.GL_MODELVIEW) {
            modelView.glRotatef(angle, x, y, z);
        }

        if (shouldDelegate()) {
            attribManager.applyMatrixMode();
            GL11.glRotatef(angle, x, y, z);
        }
    }

    public void glScalef(float x, float y, float z) {
        if (attribManager.getMatrixMode() == GL11.GL_MODELVIEW) {
            modelView.glScalef(x, y, z);
        }

        if (shouldDelegate()) {
            attribManager.applyMatrixMode();
            GL11.glScalef(x, y, z);
        }
    }

    public void glMultMatrix(FloatBuffer m) {
        if (attribManager.getMatrixMode() == GL11.GL_MODELVIEW) {
            modelView.glMultMatrix(m);
        }

        if (shouldDelegate()) {
            attribManager.applyMatrixMode();
            GL11.glMultMatrix(m);
        }
    }

    public void glOrtho(double left, double right, double bottom, double top, double zNear, double zFar) {
        if (attribManager.getMatrixMode() == GL11.GL_MODELVIEW) {
            modelView.glOrtho(left, right, bottom, top, zNear, zFar);
        }

        if (shouldDelegate()) {
            attribManager.applyMatrixMode();
            GL11.glOrtho(left, right, bottom, top, zNear, zFar);
        }
    }

    private boolean shouldDelegate() {
        return attribManager.getMatrixMode() != GL11.GL_MODELVIEW || !cpuModelView;
    }
}
