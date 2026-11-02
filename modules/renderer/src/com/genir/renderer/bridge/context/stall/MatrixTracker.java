package com.genir.renderer.bridge.context.stall;

import com.genir.renderer.bridge.context.Matrix;
import com.genir.renderer.bridge.context.MatrixStack;
import org.lwjgl.opengl.GL11;

import java.nio.FloatBuffer;

public class MatrixTracker {
    private final MatrixStack modelView = new MatrixStack();
    private final MatrixStack projection = new MatrixStack();

    private MatrixStack current = modelView;

    public Matrix getModelView() {
        return modelView.getMatrix();
    }

    public Matrix getProjection() {
        return projection.getMatrix();
    }

    //
    // GL calls.
    //

    public void glMatrixMode(int mode) {
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
    }

    public void glPopMatrix() {
        if (current != null) {
            current.glPopMatrix();
        }
    }

    public void glLoadIdentity() {
        if (current != null) {
            current.glLoadIdentity();
        }
    }

    public void glTranslatef(float x, float y, float z) {
        if (current != null) {
            current.glTranslatef(x, y, z);
        }
    }

    public void glRotatef(float angle, float x, float y, float z) {
        if (current != null) {
            current.glRotatef(angle, x, y, z);
        }
    }

    public void glScalef(float x, float y, float z) {
        if (current != null) {
            current.glScalef(x, y, z);
        }
    }

    public void glMultMatrix(FloatBuffer m) {
        if (current != null) {
            current.glMultMatrix(m);
        }
    }

    public void glLoadMatrix(FloatBuffer m) {
        if (current != null) {
            current.glLoadMatrix(m);
        }
    }

    public void glOrtho(double left, double right, double bottom, double top, double zNear, double zFar) {
        if (current != null) {
            current.glOrtho(left, right, bottom, top, zNear, zFar);
        }
    }
}
