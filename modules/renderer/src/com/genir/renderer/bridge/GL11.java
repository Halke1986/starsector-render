package com.genir.renderer.bridge;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;

import static com.genir.renderer.Debug.assertNoUnsupportedOperation;
import static com.genir.renderer.Debug.throwUnsupportedOperation;
import static com.genir.renderer.bridge.impl.Bridge.*;

public class GL11 {
    private static int matrixMode = org.lwjgl.opengl.GL11.GL_MODELVIEW_MATRIX;

    /**
     * Lists.
     */
    public static void glNewList(int list, int mode) {
        listManager.glNewList(list, mode);
    }

    public static void glEndList() {
        listManager.glEndList();
    }

    public static void glCallList(int list) {
        listManager.glCallList(list);
    }

    /**
     * Draw.
     */
    public static void glBegin(int mode) {
        assertNoUnsupportedOperation();

        if (listManager.isRecording()) {
            listManager.record(() -> glBegin(mode));
        } else {
            vertexInterceptor.glBegin(mode);
        }
    }

    public static void glEnd() {
        if (listManager.isRecording()) {
            listManager.record(() -> glEnd());
        } else {
            vertexInterceptor.glEnd();
        }
    }

    public static void glColor4ub(byte red, byte green, byte blue, byte alpha) {
        if (listManager.isRecording()) {
            listManager.record(() -> glColor4ub(red, green, blue, alpha));
        } else {
            vertexInterceptor.glColor4ub(red, green, blue, alpha);
        }
    }

    public static void glColor3d(double red, double green, double blue) {
        glColor4ub(
                (byte) Math.round(red * 255),
                (byte) Math.round(green * 255),
                (byte) Math.round(blue * 255),
                (byte) 255
        );
    }

    public static void glColor4f(float red, float green, float blue, float alpha) {
        glColor4ub(
                (byte) Math.round(red * 255),
                (byte) Math.round(green * 255),
                (byte) Math.round(blue * 255),
                (byte) Math.round(alpha * 255)
        );
    }

    public static void glTexCoord2f(float s, float t) {
        if (listManager.isRecording()) {
            listManager.record(() -> glTexCoord2f(s, t));
        } else {
            vertexInterceptor.glTexCoord2f(s, t);
        }
    }

    public static void glNormal3f(float nx, float ny, float nz) { // TODO planets
        return;
//        if (listManager.isRecording()) {
//            listManager.record(() -> glNormal3f(nx, ny, nz));
//        } else {
//            exec.execute(() -> org.lwjgl.opengl.GL11.glNormal3f(nx, ny, nz));
//        }
    }

    public static void glVertex3f(float x, float y, float z) {
        if (listManager.isRecording()) {
            listManager.record(() -> glVertex3f(x, y, z));
        } else {
            vertexInterceptor.glVertex3f(x, y, z);
        }
    }

    public static void glVertex2f(float x, float y) {
        glVertex3f(x, y, 0);
    }

    public static void glVertex3d(double x, double y, double z) {
        glVertex3f(
                (float) x,
                (float) y,
                (float) z
        );
    }

    public static void glRectf(float x1, float y1, float x2, float y2) {
        glBegin(org.lwjgl.opengl.GL11.GL_QUADS);
        glVertex2f(x1, y1);
        glVertex2f(x2, y1);
        glVertex2f(x2, y2);
        glVertex2f(x1, y2);
        glEnd();
    }

    /**
     * Array draw.
     */
    public static void glEnableClientState(int cap) { // NoList
    }

    public static void glDisableClientState(int cap) { // NoList
    }

    public static void glVertexPointer(int size, int stride, FloatBuffer pointer) { // NoList
        vertexInterceptor.glVertexPointer(size, stride, pointer);
    }

    public static void glColorPointer(int size, boolean unsigned, int stride, ByteBuffer pointer) { // NoList
        vertexInterceptor.glColorPointer(size, unsigned, stride, pointer);
    }

    public static void glTexCoordPointer(int size, int stride, FloatBuffer pointer) { // NoList
        vertexInterceptor.glTexCoordPointer(size, stride, pointer);
    }

    public static void glDrawArrays(int mode, int first, int count) {
        vertexInterceptor.glDrawArrays(mode, first, count);
    }

    // TODO handle long pointers
    public static void glTexCoordPointer(int size, int type, int stride, long pointer_buffer_offset) { // NoList
        return;
//        exec.execute(() -> org.lwjgl.opengl.GL11.glTexCoordPointer(size, type, stride, pointer_buffer_offset));
    }

    public static void glColorPointer(int size, int type, int stride, long pointer_buffer_offset) { // NoList
        return;
//        exec.execute(() -> org.lwjgl.opengl.GL11.glColorPointer(size, type, stride, pointer_buffer_offset));
    }

    public static void glVertexPointer(int size, int type, int stride, long pointer_buffer_offset) { // NoList
        return;
//        exec.execute(() -> org.lwjgl.opengl.GL11.glVertexPointer(size, type, stride, pointer_buffer_offset));
    }

    /**
     * Matrix.
     */
    public static void glMatrixMode(int mode) {
        if (listManager.isRecording()) {
            listManager.record(() -> glMatrixMode(mode));
            return;
        }

        matrixMode = mode;

        if (matrixMode != org.lwjgl.opengl.GL11.GL_MODELVIEW) {
            exec.execute(() -> org.lwjgl.opengl.GL11.glMatrixMode(mode));
        }
    }

    public static void glLoadIdentity() {
        if (listManager.isRecording()) {
            listManager.record(() -> glLoadIdentity());
        } else if (matrixMode == org.lwjgl.opengl.GL11.GL_MODELVIEW) {
            modelView.glLoadIdentity();
        } else {
            exec.execute(() -> org.lwjgl.opengl.GL11.glLoadIdentity());
        }
    }

    public static void glPushMatrix() {
        if (listManager.isRecording()) {
            listManager.record(() -> glPushMatrix());
        } else if (matrixMode == org.lwjgl.opengl.GL11.GL_MODELVIEW) {
            modelView.glPushMatrix();
        } else {
            exec.execute(() -> org.lwjgl.opengl.GL11.glPushMatrix());
        }
    }

    public static void glTranslatef(float x, float y, float z) {
        if (listManager.isRecording()) {
            listManager.record(() -> glTranslatef(x, y, z));
        } else if (matrixMode == org.lwjgl.opengl.GL11.GL_MODELVIEW) {
            modelView.glTranslatef(x, y, z);
        } else {
            exec.execute(() -> org.lwjgl.opengl.GL11.glTranslatef(x, y, z));
        }
    }

    public static void glPopMatrix() {
        if (listManager.isRecording()) {
            listManager.record(() -> glPopMatrix());
        } else if (matrixMode == org.lwjgl.opengl.GL11.GL_MODELVIEW) {
            modelView.glPopMatrix();
        } else {
            exec.execute(() -> org.lwjgl.opengl.GL11.glPopMatrix());
        }
    }

    public static void glRotatef(float angle, float x, float y, float z) {
        if (listManager.isRecording()) {
            listManager.record(() -> glRotatef(angle, x, y, z));
        } else if (matrixMode == org.lwjgl.opengl.GL11.GL_MODELVIEW) {
            modelView.glRotatef(angle, x, y, z);
        } else {
            exec.execute(() -> org.lwjgl.opengl.GL11.glRotatef(angle, x, y, z));
        }
    }

    public static void glScalef(float x, float y, float z) {
        if (listManager.isRecording()) {
            listManager.record(() -> glScalef(x, y, z));
        } else if (matrixMode == org.lwjgl.opengl.GL11.GL_MODELVIEW) {
            modelView.glScalef(x, y, z);
        } else {
            exec.execute(() -> org.lwjgl.opengl.GL11.glScalef(x, y, z));
        }
    }

    public static void glMultMatrix(FloatBuffer m) {
        FloatBuffer snapshot = bufferSnapshot(m);

        if (listManager.isRecording()) {
            listManager.record(() -> glMultMatrix(snapshot));
        } else if (matrixMode == org.lwjgl.opengl.GL11.GL_MODELVIEW) {
            // TODO
        } else {
            exec.execute(() -> org.lwjgl.opengl.GL11.glMultMatrix(snapshot));
        }
    }

    /**
     * Other calls.
     */
    public static void glDisable(int cap) {
        if (listManager.isRecording()) {
            listManager.record(() -> glDisable(cap));
        } else {
            exec.execute(() -> org.lwjgl.opengl.GL11.glDisable(cap));
        }
    }

    public static void glColorMask(boolean red, boolean green, boolean blue, boolean alpha) {
        if (listManager.isRecording()) {
            listManager.record(() -> glColorMask(red, green, blue, alpha));
        } else {
            exec.execute(() -> org.lwjgl.opengl.GL11.glColorMask(red, green, blue, alpha));
        }
    }

    public static void glViewport(int x, int y, int width, int height) {
        if (listManager.isRecording()) {
            listManager.record(() -> glViewport(x, y, width, height));
        } else {
            exec.execute(() -> org.lwjgl.opengl.GL11.glViewport(x, y, width, height));
        }
    }

    public static void glPushAttrib(int mask) {
        if (listManager.isRecording()) {
            listManager.record(() -> glPushAttrib(mask));
        } else {
            exec.execute(() -> org.lwjgl.opengl.GL11.glPushAttrib(mask));
        }
    }

    public static void glOrtho(double left, double right, double bottom, double top, double zNear, double zFar) {
        if (listManager.isRecording()) {
            listManager.record(() -> glOrtho(left, right, bottom, top, zNear, zFar));
        } else {
            exec.execute(() -> org.lwjgl.opengl.GL11.glOrtho(left, right, bottom, top, zNear, zFar));
        }
    }

    public static void glEnable(int cap) {
        if (listManager.isRecording()) {
            listManager.record(() -> glEnable(cap));
        } else {
            exec.execute(() -> org.lwjgl.opengl.GL11.glEnable(cap));
        }
    }

    public static void glBlendFunc(int sfactor, int dfactor) {
        if (listManager.isRecording()) {
            listManager.record(() -> glBlendFunc(sfactor, dfactor));
        } else {
            exec.execute(() -> org.lwjgl.opengl.GL11.glBlendFunc(sfactor, dfactor));
        }
    }

    public static void glPopAttrib() {
        if (listManager.isRecording()) {
            listManager.record(() -> glPopAttrib());
        } else {
            exec.execute(() -> org.lwjgl.opengl.GL11.glPopAttrib());
        }
    }

    public static void glBindTexture(int target, int texture) {
        if (listManager.isRecording()) {
            listManager.record(() -> glBindTexture(target, texture));
        } else {
            exec.execute(() -> org.lwjgl.opengl.GL11.glBindTexture(target, texture));
        }
    }

    public static void glTexParameteri(int target, int pname, int param) {
        if (listManager.isRecording()) {
            listManager.record(() -> glTexParameteri(target, pname, param));
        } else {
            exec.execute(() -> org.lwjgl.opengl.GL11.glTexParameteri(target, pname, param));
        }
    }

    public static void glClearColor(float red, float green, float blue, float alpha) {
        if (listManager.isRecording()) {
            listManager.record(() -> glClearColor(red, green, blue, alpha));
        } else {
            exec.execute(() -> org.lwjgl.opengl.GL11.glClearColor(red, green, blue, alpha));
        }
    }

    public static void glClear(int mask) {
        if (listManager.isRecording()) {
            listManager.record(() -> glClear(mask));
        } else {
            exec.execute(() -> org.lwjgl.opengl.GL11.glClear(mask));
        }
    }

    public static void glFlush() { // NoList
        exec.execute(() -> org.lwjgl.opengl.GL11.glFlush());
    }

    public static void glScissor(int x, int y, int width, int height) {
        if (listManager.isRecording()) {
            listManager.record(() -> glScissor(x, y, width, height));
        } else {
            exec.execute(() -> org.lwjgl.opengl.GL11.glScissor(x, y, width, height));
        }
    }

    public static void glStencilFunc(int func, int ref, int mask) {
        if (listManager.isRecording()) {
            listManager.record(() -> glStencilFunc(func, ref, mask));
        } else {
            exec.execute(() -> org.lwjgl.opengl.GL11.glStencilFunc(func, ref, mask));
        }
    }

    public static void glStencilOp(int fail, int zfail, int zpass) {
        if (listManager.isRecording()) {
            listManager.record(() -> glStencilOp(fail, zfail, zpass));
        } else {
            exec.execute(() -> org.lwjgl.opengl.GL11.glStencilOp(fail, zfail, zpass));
        }
    }

    public static void glAlphaFunc(int func, float ref) {
        if (listManager.isRecording()) {
            listManager.record(() -> GL11.glAlphaFunc(func, ref));
        } else {
            exec.execute(() -> org.lwjgl.opengl.GL11.glAlphaFunc(func, ref));
        }
    }

    public static void glHint(int target, int mode) {
        if (listManager.isRecording()) {
            listManager.record(() -> glHint(target, mode));
        } else {
            exec.execute(() -> org.lwjgl.opengl.GL11.glHint(target, mode));
        }
    }

    public static void glLineWidth(float width) {
        if (listManager.isRecording()) {
            listManager.record(() -> glLineWidth(width));
        } else {
            exec.execute(() -> org.lwjgl.opengl.GL11.glLineWidth(width));
        }
    }

    public static void glColorMaterial(int face, int mode) {
        if (listManager.isRecording()) {
            listManager.record(() -> glColorMaterial(face, mode));
        } else {
            exec.execute(() -> org.lwjgl.opengl.GL11.glColorMaterial(face, mode));
        }
    }

    public static void glShadeModel(int mode) {
        if (listManager.isRecording()) {
            listManager.record(() -> glShadeModel(mode));
        } else {
            exec.execute(() -> org.lwjgl.opengl.GL11.glShadeModel(mode));
        }
    }

    public static void glPushClientAttrib(int mask) { // NoList
        exec.execute(() -> org.lwjgl.opengl.GL11.glPushClientAttrib(mask));
    }

    public static void glPopClientAttrib() { // NoList
        exec.execute(() -> org.lwjgl.opengl.GL11.glPopClientAttrib());
    }

    public static void glTexImage2D(int target, int level, int internalformat, int width, int height, int border, int format, int type, ByteBuffer pixels) { // NoList
        ByteBuffer snapshot = bufferSnapshot(pixels);
        exec.wait(() -> org.lwjgl.opengl.GL11.glTexImage2D(target, level, internalformat, width, height, border, format, type, snapshot));
    }

    public static void glTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, ByteBuffer pixels) {
        ByteBuffer snapshot = bufferSnapshot(pixels);

        if (listManager.isRecording()) {
            listManager.record(() -> glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, snapshot));
        } else {
            exec.execute(() -> org.lwjgl.opengl.GL11.glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, snapshot));
        }
    }

    public static void glLight(int light, int pname, FloatBuffer params) {
        FloatBuffer snapshot = bufferSnapshot(params);

        if (listManager.isRecording()) {
            listManager.record(() -> glLight(light, pname, snapshot));
        } else {
            exec.execute(() -> org.lwjgl.opengl.GL11.glLight(light, pname, snapshot));
        }
    }

    public static void glMaterial(int face, int pname, FloatBuffer params) {
        FloatBuffer snapshot = bufferSnapshot(params);

        if (listManager.isRecording()) {
            listManager.record(() -> glMaterial(face, pname, snapshot));
        } else {
            exec.execute(() -> org.lwjgl.opengl.GL11.glMaterial(face, pname, snapshot));
        }
    }

    /**
     * Blocking.
     */
    public static int glGetInteger(int pname) { // NoList
        return exec.get(() -> org.lwjgl.opengl.GL11.glGetInteger(pname));
    }

    public static void glGenTextures(IntBuffer textures) { // NoList
        exec.wait(() -> org.lwjgl.opengl.GL11.glGenTextures(textures));
    }

    public static int glGenLists(int range) { // NoList
        return exec.get(() -> org.lwjgl.opengl.GL11.glGenLists(range));
    }

    public static String glGetString(int name) { // NoList
        if (stateCache.isAvailable() && name == org.lwjgl.opengl.GL11.GL_EXTENSIONS) {
            return stateCache.getGlStringExtensions();
        }

        return exec.get(() -> org.lwjgl.opengl.GL11.glGetString(name));
    }

    /**
     * Unsupported.
     */
    public static void glTranslated(double x, double y, double z) {
        throwUnsupportedOperation("glTranslated");
    }

    public static void glPolygonMode(int face, int mode) {
        throwUnsupportedOperation("glPolygonMode");
    }

    public static void glPointSize(float size) {
        throwUnsupportedOperation("glPointSize");
    }

    public static void glMateriali(int face, int pname, int param) {
        throwUnsupportedOperation("glMateriali");
    }

    public static void glColor3ub(byte red, byte green, byte blue) {
        throwUnsupportedOperation("glColor3ub");
    }

    public static void glTexEnvf(int target, int pname, float param) {
        throwUnsupportedOperation("glTexEnvf");
    }

    public static void glColor3f(float red, float green, float blue) {
        throwUnsupportedOperation("glColor3f");
    }

    public static void glArrayElement(int i) {
        throwUnsupportedOperation("glArrayElement");
    }

    public static void glDeleteLists(int list, int range) { // NoList
        throwUnsupportedOperation("glDeleteLists");
    }

    public static void glDeleteTextures(int texture) {
        throwUnsupportedOperation("glDeleteTextures");
    }

    public static void glFinish() { // NoList
        throwUnsupportedOperation("glFinish");
    }

    public static boolean glIsEnabled(int cap) { // NoList
        throwUnsupportedOperation("glIsEnabled");
        return false;
    }

    public static void glVertexPointer(int size, int stride, IntBuffer pointer) { // NoList
        throwUnsupportedOperation("glVertexPointer");
    }

    public static void glDrawElements(int mode, IntBuffer indices) {
        throwUnsupportedOperation("glDrawElements");
    }

    public static void glDeleteTextures(IntBuffer textures) { // NoList
        throwUnsupportedOperation("glDeleteTextures");
    }

    public static void glInterleavedArrays(int format, int stride, FloatBuffer pointer) { // NoList
        throwUnsupportedOperation("glInterleavedArrays");
    }

    public static void glGetInteger(int pname, IntBuffer params) { // NoList
        throwUnsupportedOperation("glGetInteger");
    }

    public static void glReadPixels(int x, int y, int width, int height, int format, int type, FloatBuffer pixels) { // NoList
        throwUnsupportedOperation("glReadPixels");
    }

    public static void glTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, long pixels_buffer_offset) {
        throwUnsupportedOperation("glTexSubImage2D");
    }
}
