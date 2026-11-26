package com.genir.renderer.bridge.context.debug;

import com.genir.renderer.bridge.context.AttribManager;
import com.genir.renderer.bridge.context.MatrixManager;
import com.genir.renderer.bridge.context.VertexInterceptor;

public class VertexInterceptorNoop extends VertexInterceptor {
    public VertexInterceptorNoop(AttribManager attribManager, MatrixManager matrixManager) {
        super(attribManager, matrixManager);
    }

    public void update() {
    }

    public void yieldClientState() {
    }

    public void glBegin(int mode) {
        org.lwjgl.opengl.GL11.glBegin(mode);
    }

    public void glEnd() {
        org.lwjgl.opengl.GL11.glEnd();
    }

    public void glColor4f(float red, float green, float blue, float alpha) {
        org.lwjgl.opengl.GL11.glColor4f(red, green, blue, alpha);
    }

    public void glTexCoord4f(float s, float t, float r, float q) {
        org.lwjgl.opengl.GL11.glTexCoord4f(s, t, r, q);
    }

    public void glMultiTexCoord2f(int target, float s, float t) {
        org.lwjgl.opengl.GL13.glMultiTexCoord2f(target, s, t);
    }

    public void glNormal3f(float nx, float ny, float nz) {
        org.lwjgl.opengl.GL11.glNormal3f(nx, ny, nz);
    }

    public void glVertex3f(float x, float y, float z) {
        org.lwjgl.opengl.GL11.glVertex3f(x, y, z);
    }

    public float[] borrowVertexScratchpad(int vertices) {
        throw new UnsupportedOperationException();
    }

    public void drawExternalArray(int mode, float[] externalScratchpad, int vertexCount, int flags) {
        throw new UnsupportedOperationException();
    }
}
