package com.genir.renderer.bridge.context;

import org.lwjgl.BufferUtils;
import org.lwjgl.opengl.GL11;
import org.lwjgl.util.vector.Matrix4f;

import java.nio.FloatBuffer;

public class TransformManager {
    private final Context context;
    private final AttribManager attribManager;

    private final MatrixStack modelView = new MatrixStack();

    private final FloatBuffer matrixBuffer = BufferUtils.createFloatBuffer(16);
    private boolean cpuMode = true;
    private final Matrix4f identity = new Matrix4f();

    public TransformManager(Context context, AttribManager attribManager) {
        this.context = context;
        this.attribManager = attribManager;
        this.identity.setIdentity();
    }

    public void setCPUMode() {
        if (cpuMode) {
            return;
        }

        // Disable GPU model view transformation.
        attribManager.forceMatrixMode(GL11.GL_MODELVIEW);
        com.genir.renderer.bridge.servercmds.GL11.glLoadIdentity(context);

        cpuMode = true;
    }

    public void setGPUMode() {
        if (!cpuMode) {
            return;
        }

        // Synchronize GPU model view state.
        attribManager.forceMatrixMode(GL11.GL_MODELVIEW);
        modelView.getMatrix().storeTranspose(matrixBuffer.clear());
        com.genir.renderer.bridge.servercmds.GL11.glMultMatrix(context, matrixBuffer.flip());

        cpuMode = false;
    }

    public Matrix4f getCPUModelView() {
        if (cpuMode) {
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
            com.genir.renderer.bridge.servercmds.GL11.glPushMatrix(context);
        }
    }

    public void glPopMatrix() {
        if (attribManager.getMatrixMode() == GL11.GL_MODELVIEW) {
            modelView.glPopMatrix();
        }

        if (shouldDelegate()) {
            attribManager.applyMatrixMode();
            com.genir.renderer.bridge.servercmds.GL11.glPopMatrix(context);
        }
    }

    public void glLoadIdentity() {
        if (attribManager.getMatrixMode() == GL11.GL_MODELVIEW) {
            modelView.glLoadIdentity();
        }

        if (shouldDelegate()) {
            attribManager.applyMatrixMode();
            com.genir.renderer.bridge.servercmds.GL11.glLoadIdentity(context);
        }
    }

    public void glTranslatef(float x, float y, float z) {
        if (attribManager.getMatrixMode() == GL11.GL_MODELVIEW) {
            modelView.glTranslatef(x, y, z);
        }

        if (shouldDelegate()) {
            attribManager.applyMatrixMode();
            com.genir.renderer.bridge.servercmds.GL11.glTranslatef(context, x, y, z);
        }
    }

    public void glRotatef(float angle, float x, float y, float z) {
        if (attribManager.getMatrixMode() == GL11.GL_MODELVIEW) {
            modelView.glRotatef(angle, x, y, z);
        }

        if (shouldDelegate()) {
            attribManager.applyMatrixMode();
            com.genir.renderer.bridge.servercmds.GL11.glRotatef(context, angle, x, y, z);
        }
    }

    public void glScalef(float x, float y, float z) {
        if (attribManager.getMatrixMode() == GL11.GL_MODELVIEW) {
            modelView.glScalef(x, y, z);
        }

        if (shouldDelegate()) {
            attribManager.applyMatrixMode();
            com.genir.renderer.bridge.servercmds.GL11.glScalef(context, x, y, z);
        }
    }

    public void glMultMatrix(FloatBuffer m) {
        if (attribManager.getMatrixMode() == GL11.GL_MODELVIEW) {
            modelView.glMultMatrix(m);
        }

        if (shouldDelegate()) {
            attribManager.applyMatrixMode();
            com.genir.renderer.bridge.servercmds.GL11.glMultMatrix(context, m);
        }
    }

    public void glLoadMatrix(FloatBuffer m) {
        if (attribManager.getMatrixMode() == GL11.GL_MODELVIEW) {
            modelView.glLoadMatrix(m);
        }

        if (shouldDelegate()) {
            attribManager.applyMatrixMode();
            com.genir.renderer.bridge.servercmds.GL11.glLoadMatrix(context, m);
        }
    }

    public void glOrtho(double left, double right, double bottom, double top, double zNear, double zFar) {
        if (attribManager.getMatrixMode() == GL11.GL_MODELVIEW) {
            modelView.glOrtho(left, right, bottom, top, zNear, zFar);
        }

        if (shouldDelegate()) {
            attribManager.applyMatrixMode();
            com.genir.renderer.bridge.servercmds.GL11.glOrtho(context, left, right, bottom, top, zNear, zFar);
        }
    }

    // Should the matrix operation be delegated to GPU instead of simulated on CPU.
    // Only GL_MODELVIEW transformations are simulated on CPU.
    private boolean shouldDelegate() {
        return attribManager.getMatrixMode() != GL11.GL_MODELVIEW || !cpuMode;
    }
}
