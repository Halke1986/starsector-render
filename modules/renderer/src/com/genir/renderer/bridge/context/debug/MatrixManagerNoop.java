package com.genir.renderer.bridge.context.debug;

import com.genir.renderer.bridge.context.Matrix;
import com.genir.renderer.bridge.context.MatrixManager;

import java.nio.FloatBuffer;

public class MatrixManagerNoop extends MatrixManager {
    public MatrixManagerNoop() {
        super();
    }

    @Override
    public void setCPUMode() {
    }

    @Override
    public void setGPUMode() {
    }

    @Override
    public Matrix getCPUModelView() {
        return identity;
    }

    //
    // GL calls.
    //

    @Override
    public void glMatrixMode(int mode) {
    }

    @Override
    public void glPushMatrix() {
        org.lwjgl.opengl.GL11.glPushMatrix();
    }

    @Override
    public void glPopMatrix() {
        org.lwjgl.opengl.GL11.glPopMatrix();
    }

    @Override
    public void glLoadIdentity() {
        org.lwjgl.opengl.GL11.glLoadIdentity();
    }

    @Override
    public void glTranslatef(float x, float y, float z) {
        org.lwjgl.opengl.GL11.glTranslatef(x, y, z);
    }

    @Override
    public void glRotatef(float angle, float x, float y, float z) {
        org.lwjgl.opengl.GL11.glRotatef(angle, x, y, z);
    }

    @Override
    public void glScalef(float x, float y, float z) {
        org.lwjgl.opengl.GL11.glScalef(x, y, z);
    }

    @Override
    public void glMultMatrix(FloatBuffer m) {
        org.lwjgl.opengl.GL11.glMultMatrix(m);
    }

    @Override
    public void glLoadMatrix(FloatBuffer m) {
        org.lwjgl.opengl.GL11.glLoadMatrix(m);
    }

    @Override
    public void glOrtho(double left, double right, double bottom, double top, double zNear, double zFar) {
        org.lwjgl.opengl.GL11.glOrtho(left, right, bottom, top, zNear, zFar);
    }
}
