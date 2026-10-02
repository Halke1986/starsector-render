package com.genir.renderer.bridge.context.stall;

import com.genir.renderer.bridge.context.MatrixStack;
import org.lwjgl.opengl.GL11;
import org.lwjgl.util.vector.Matrix4f;

import java.nio.FloatBuffer;

public class MatrixTracker {
    private final AttribTracker attribTracker;
    private final MatrixStack modelView = new MatrixStack();

    public MatrixTracker(AttribTracker attribTracker) {
        this.attribTracker = attribTracker;
    }

    public Matrix4f getModelView() {
        return modelView.getMatrix();
    }

    public void glPushMatrix() {
        if (attribTracker.getMatrixMode() == GL11.GL_MODELVIEW) {
            modelView.glPushMatrix();
        }
    }

    public void glPopMatrix() {
        if (attribTracker.getMatrixMode() == GL11.GL_MODELVIEW) {
            modelView.glPopMatrix();
        }
    }

    public void glLoadIdentity() {
        if (attribTracker.getMatrixMode() == GL11.GL_MODELVIEW) {
            modelView.glLoadIdentity();
        }
    }

    public void glTranslatef(float x, float y, float z) {
        if (attribTracker.getMatrixMode() == GL11.GL_MODELVIEW) {
            modelView.glTranslatef(x, y, z);
        }
    }

    public void glRotatef(float angle, float x, float y, float z) {
        if (attribTracker.getMatrixMode() == GL11.GL_MODELVIEW) {
            modelView.glRotatef(angle, x, y, z);
        }
    }

    public void glScalef(float x, float y, float z) {
        if (attribTracker.getMatrixMode() == GL11.GL_MODELVIEW) {
            modelView.glScalef(x, y, z);
        }
    }

    public void glMultMatrix(FloatBuffer m) {
        if (attribTracker.getMatrixMode() == GL11.GL_MODELVIEW) {
            modelView.glMultMatrix(m);
        }
    }

    public void glLoadMatrix(FloatBuffer m) {
        if (attribTracker.getMatrixMode() == GL11.GL_MODELVIEW) {
            modelView.glLoadMatrix(m);
        }
    }

    public void glOrtho(double left, double right, double bottom, double top, double zNear, double zFar) {
        if (attribTracker.getMatrixMode() == GL11.GL_MODELVIEW) {
            modelView.glOrtho(left, right, bottom, top, zNear, zFar);
        }
    }
}
