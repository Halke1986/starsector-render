package com.genir.renderer.bridge;

import com.genir.renderer.bridge.impl.BufferUtil;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;

import static com.genir.renderer.Debug.*;
import static com.genir.renderer.bridge.impl.Bridge.*;

public class GL11 {
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
            listManager.record(() -> vertexInterceptor.glBegin(mode));
        } else {
            vertexInterceptor.glBegin(mode);
        }
    }

    public static void glEnd() {
        if (listManager.isRecording()) {
            listManager.record(() -> vertexInterceptor.glEnd());
        } else {
            vertexInterceptor.glEnd();
        }
    }

    public static void glColor4ub(byte red, byte green, byte blue, byte alpha) {
        glColor4f(
                (red & 0xFF) / 255f,
                (green & 0xFF) / 255f,
                (blue & 0xFF) / 255f,
                (alpha & 0xFF) / 255f
        );
    }

    public static void glColor3d(double red, double green, double blue) {
        glColor4f(
                (float) red * 255,
                (float) green * 255,
                (float) blue * 255,
                1f
        );
    }

    public static void glColor4f(float red, float green, float blue, float alpha) {
        if (listManager.isRecording()) {
            listManager.record(() -> vertexInterceptor.glColor4f(red, green, blue, alpha));
        } else {
            vertexInterceptor.glColor4f(red, green, blue, alpha);
        }
    }

    public static void glTexCoord2f(float s, float t) {
        if (listManager.isRecording()) {
            listManager.record(() -> vertexInterceptor.glTexCoord2f(s, t));
        } else {
            vertexInterceptor.glTexCoord2f(s, t);
        }
    }

    public static void glNormal3f(float nx, float ny, float nz) {
        if (listManager.isRecording()) {
            listManager.record(() -> vertexInterceptor.glNormal3f(nx, ny, nz));
        } else {
            vertexInterceptor.glNormal3f(nx, ny, nz);
        }
    }

    public static void glVertex3f(float x, float y, float z) {
        if (listManager.isRecording()) {
            listManager.record(() -> vertexInterceptor.glVertex3f(x, y, z));
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

    public static void glVertex2d(double x, double y) {
        glVertex3f(
                (float) x,
                (float) y,
                0
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
     * Client attributes.
     */
    public static void glEnableClientState(int cap) { // NoList
        clientAttribTracker.glEnableClientState(cap);
    }

    public static void glDisableClientState(int cap) { // NoList
        clientAttribTracker.glDisableClientState(cap);
    }

    public static void glPushClientAttrib(int mask) {
        if (listManager.isRecording()) {
            listManager.record(() -> iglPushClientAttrib(mask));
        } else {
            iglPushClientAttrib(mask);
        }
    }

    private static void iglPushClientAttrib(int mask) {
        clientAttribTracker.glPushClientAttrib(mask);

        exec.execute(() -> org.lwjgl.opengl.GL11.glPushClientAttrib(mask));
    }

    public static void glPopClientAttrib() {
        if (listManager.isRecording()) {
            listManager.record(() -> iglPopClientAttrib());
        } else {
            iglPopClientAttrib();
        }
    }

    public static void iglPopClientAttrib() {
        clientAttribTracker.glPopClientAttrib();

        exec.execute(() -> org.lwjgl.opengl.GL11.glPopClientAttrib());
    }

    public static void glVertexPointer(int size, int stride, FloatBuffer pointer) { // NoList
        asert(size == 2);
        asert(stride == 0);
        asert(pointer.position() == 0);

        clientAttribTracker.glVertexPointer(size, stride, pointer);
    }

    public static void glColorPointer(int size, boolean unsigned, int stride, ByteBuffer pointer) { // NoList
        asert(size == 4);
        asert(stride == 0);
        asert(pointer.position() == 0);

        clientAttribTracker.glColorPointer(size, unsigned, stride, pointer);
    }

    public static void glTexCoordPointer(int size, int stride, FloatBuffer pointer) { // NoList
        asert(size == 2);
        asert(stride == 0);
        asert(pointer.position() == 0);

        clientAttribTracker.glTexCoordPointer(size, stride, pointer);
    }

    /**
     * Array draw.
     */
    public static void glTexCoordPointer(int size, int type, int stride, long pointer_buffer_offset) { // NoList
        exec.execute(() -> org.lwjgl.opengl.GL11.glTexCoordPointer(size, type, stride, pointer_buffer_offset));
    }

    public static void glColorPointer(int size, int type, int stride, long pointer_buffer_offset) { // NoList
        exec.execute(() -> org.lwjgl.opengl.GL11.glColorPointer(size, type, stride, pointer_buffer_offset));
    }

    public static void glVertexPointer(int size, int type, int stride, long pointer_buffer_offset) { // NoList
        exec.execute(() -> org.lwjgl.opengl.GL11.glVertexPointer(size, type, stride, pointer_buffer_offset));
    }

    public static void glDrawArrays(int mode, int first, int count) {
        if (listManager.isRecording()) {
            listManager.record(vertexInterceptor.recordedGlDrawArrays(mode, first, count));
        } else {
            vertexInterceptor.glDrawArrays(mode, first, count);
        }
    }

    /**
     * Matrix.
     */
    public static void glMatrixMode(int mode) {
        if (listManager.isRecording()) {
            listManager.record(() -> attribTracker.glMatrixMode(mode));
        } else {
            attribTracker.glMatrixMode(mode);
        }
    }

    public static void glPushMatrix() {
        if (listManager.isRecording()) {
            listManager.record(() -> iglPushMatrix());
        } else {
            iglPushMatrix();
        }
    }

    private static void iglPushMatrix() {
        if (attribTracker.matrixMode() == org.lwjgl.opengl.GL11.GL_MODELVIEW) {
            modelView.glPushMatrix();
        } else {
            attribTracker.applyMatrixMode();
            exec.execute(() -> org.lwjgl.opengl.GL11.glPushMatrix());
        }
    }

    public static void glPopMatrix() {
        if (listManager.isRecording()) {
            listManager.record(() -> iglPopMatrix());
        } else {
            iglPopMatrix();
        }
    }

    private static void iglPopMatrix() {
        if (attribTracker.matrixMode() == org.lwjgl.opengl.GL11.GL_MODELVIEW) {
            modelView.glPopMatrix();
        } else {
            attribTracker.applyMatrixMode();
            exec.execute(() -> org.lwjgl.opengl.GL11.glPopMatrix());
        }
    }

    public static void glLoadIdentity() {
        if (listManager.isRecording()) {
            listManager.record(() -> iglLoadIdentity());
        } else {
            iglLoadIdentity();
        }
    }

    private static void iglLoadIdentity() {
        if (attribTracker.matrixMode() == org.lwjgl.opengl.GL11.GL_MODELVIEW) {
            modelView.glLoadIdentity();
        } else {
            attribTracker.applyMatrixMode();
            exec.execute(() -> org.lwjgl.opengl.GL11.glLoadIdentity());
        }
    }

    public static void glTranslatef(float x, float y, float z) {
        if (listManager.isRecording()) {
            listManager.record(() -> iglTranslatef(x, y, z));
        } else {
            iglTranslatef(x, y, z);
        }
    }

    private static void iglTranslatef(float x, float y, float z) {
        if (attribTracker.matrixMode() == org.lwjgl.opengl.GL11.GL_MODELVIEW) {
            modelView.glTranslatef(x, y, z);
        } else {
            attribTracker.applyMatrixMode();
            exec.execute(() -> org.lwjgl.opengl.GL11.glTranslatef(x, y, z));
        }
    }

    public static void glRotatef(float angle, float x, float y, float z) {
        if (listManager.isRecording()) {
            listManager.record(() -> iglRotatef(angle, x, y, z));
        } else {
            iglRotatef(angle, x, y, z);
        }
    }

    private static void iglRotatef(float angle, float x, float y, float z) {
        if (attribTracker.matrixMode() == org.lwjgl.opengl.GL11.GL_MODELVIEW) {
            modelView.glRotatef(angle, x, y, z);
        } else {
            attribTracker.applyMatrixMode();
            exec.execute(() -> org.lwjgl.opengl.GL11.glRotatef(angle, x, y, z));
        }
    }

    public static void glScalef(float x, float y, float z) {
        if (listManager.isRecording()) {
            listManager.record(() -> iglScalef(x, y, z));
        } else {
            iglScalef(x, y, z);
        }
    }

    private static void iglScalef(float x, float y, float z) {
        if (attribTracker.matrixMode() == org.lwjgl.opengl.GL11.GL_MODELVIEW) {
            modelView.glScalef(x, y, z);
        } else {
            attribTracker.applyMatrixMode();
            exec.execute(() -> org.lwjgl.opengl.GL11.glScalef(x, y, z));
        }
    }

    public static void glMultMatrix(FloatBuffer m) {
        final FloatBuffer snapshot = BufferUtil.snapshot(m);
        if (listManager.isRecording()) {
            listManager.record(() -> iglMultMatrix(snapshot));
        } else {
            iglMultMatrix(snapshot);
        }
    }

    private static void iglMultMatrix(FloatBuffer m) {
        if (attribTracker.matrixMode() == org.lwjgl.opengl.GL11.GL_MODELVIEW) {
            modelView.glMultMatrix(m);
        } else {
            attribTracker.applyMatrixMode();
            exec.execute(() -> org.lwjgl.opengl.GL11.glMultMatrix(m));
        }
    }

    /**
     * Render context.
     */
    public static void glEnable(int cap) {
        if (listManager.isRecording()) {
            listManager.record(() -> iglEnable(cap));
        } else {
            iglEnable(cap);
        }
    }

    private static void iglEnable(int cap) {
        if (attribTracker.interceptEnable(cap)) {
            attribTracker.glEnable(cap);
        } else {
            exec.execute(() -> org.lwjgl.opengl.GL11.glEnable(cap));
        }
    }

    public static void glDisable(int cap) {
        if (listManager.isRecording()) {
            listManager.record(() -> iglDisable(cap));
        } else {
            iglDisable(cap);
        }
    }

    private static void iglDisable(int cap) {
        if (attribTracker.interceptEnable(cap)) {
            attribTracker.glDisable(cap);
        } else {
            exec.execute(() -> org.lwjgl.opengl.GL11.glDisable(cap));
        }
    }

    public static void glBlendFunc(int sfactor, int dfactor) {
        if (listManager.isRecording()) {
            listManager.record(() -> attribTracker.glBlendFunc(sfactor, dfactor));
        } else {
            attribTracker.glBlendFunc(sfactor, dfactor);
        }
    }

    public static void glPushAttrib(int mask) { // NoList
        attribTracker.glPushAttrib(mask);
        exec.execute(() -> org.lwjgl.opengl.GL11.glPushAttrib(mask));
    }

    public static void glPopAttrib() { // NoList
        attribTracker.glPopAttrib();
        exec.execute(() -> org.lwjgl.opengl.GL11.glPopAttrib());
    }

    /**
     * Other calls.
     */
    public static void glBindTexture(int target, int texture) {
        recordOrExecute(() -> org.lwjgl.opengl.GL11.glBindTexture(target, texture));
    }

    public static void glColorMask(boolean red, boolean green, boolean blue, boolean alpha) {
        recordOrExecute(() -> org.lwjgl.opengl.GL11.glColorMask(red, green, blue, alpha));
    }

    public static void glViewport(int x, int y, int width, int height) {
        recordOrExecute(() -> org.lwjgl.opengl.GL11.glViewport(x, y, width, height));
    }

    public static void glOrtho(double left, double right, double bottom, double top, double zNear, double zFar) {
        recordOrExecute(() -> org.lwjgl.opengl.GL11.glOrtho(left, right, bottom, top, zNear, zFar));
    }

    public static void glTexParameteri(int target, int pname, int param) {
        recordOrExecute(() -> org.lwjgl.opengl.GL11.glTexParameteri(target, pname, param));
    }

    public static void glClearColor(float red, float green, float blue, float alpha) {
        recordOrExecute(() -> org.lwjgl.opengl.GL11.glClearColor(red, green, blue, alpha));
    }

    public static void glClear(int mask) {
        recordOrExecute(() -> org.lwjgl.opengl.GL11.glClear(mask));
    }

    public static void glFlush() { // NoList
        exec.execute(() -> org.lwjgl.opengl.GL11.glFlush());
    }

    public static void glScissor(int x, int y, int width, int height) {
        recordOrExecute(() -> org.lwjgl.opengl.GL11.glScissor(x, y, width, height));
    }

    public static void glStencilFunc(int func, int ref, int mask) {
        recordOrExecute(() -> org.lwjgl.opengl.GL11.glStencilFunc(func, ref, mask));
    }

    public static void glStencilOp(int fail, int zfail, int zpass) {
        recordOrExecute(() -> org.lwjgl.opengl.GL11.glStencilOp(fail, zfail, zpass));
    }

    public static void glAlphaFunc(int func, float ref) {
        recordOrExecute(() -> org.lwjgl.opengl.GL11.glAlphaFunc(func, ref));
    }

    public static void glHint(int target, int mode) {
        recordOrExecute(() -> org.lwjgl.opengl.GL11.glHint(target, mode));
    }

    public static void glLineWidth(float width) {
        recordOrExecute(() -> org.lwjgl.opengl.GL11.glLineWidth(width));
    }

    public static void glColorMaterial(int face, int mode) {
        recordOrExecute(() -> org.lwjgl.opengl.GL11.glColorMaterial(face, mode));
    }

    public static void glShadeModel(int mode) {
        recordOrExecute(() -> org.lwjgl.opengl.GL11.glShadeModel(mode));
    }

    public static void glTexImage2D(int target, int level, int internalformat, int width, int height, int border, int format, int type, ByteBuffer pixels) { // NoList
        final ByteBuffer snapshot = BufferUtil.snapshot(pixels);
        recordOrExecute(() -> org.lwjgl.opengl.GL11.glTexImage2D(target, level, internalformat, width, height, border, format, type, snapshot));
    }

    public static void glTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, ByteBuffer pixels) {
        final ByteBuffer snapshot = BufferUtil.snapshot(pixels);
        recordOrExecute(() -> org.lwjgl.opengl.GL11.glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, snapshot));
    }

    public static void glLight(int light, int pname, FloatBuffer params) {
        final FloatBuffer snapshot = BufferUtil.snapshot(params);
        recordOrExecute(() -> org.lwjgl.opengl.GL11.glLight(light, pname, snapshot));
    }

    public static void glMaterial(int face, int pname, FloatBuffer params) {
        final FloatBuffer snapshot = BufferUtil.snapshot(params);
        recordOrExecute(() -> org.lwjgl.opengl.GL11.glMaterial(face, pname, snapshot));
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

    public static void glReadPixels(int x, int y, int width, int height, int format, int type, FloatBuffer pixels) { // NoList
        exec.wait(() -> org.lwjgl.opengl.GL11.glReadPixels(x, y, width, height, format, type, pixels));
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

    public static void glTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, long pixels_buffer_offset) {
        throwUnsupportedOperation("glTexSubImage2D");
    }
}
