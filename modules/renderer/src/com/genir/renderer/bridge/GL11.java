package com.genir.renderer.bridge;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;

import static com.genir.renderer.Debug.assertNoUnsupportedOperation;
import static com.genir.renderer.Debug.throwUnsupportedOperation;
import static com.genir.renderer.bridge.impl.State.exec;

public class GL11 {
    /**
     * Lists.
     */
    public static void glNewList(int list, int mode) {
//        listManager.glNewList(list, mode);
        exec.execute(() -> org.lwjgl.opengl.GL11.glNewList(list, mode));
    }

    public static void glEndList() {
//        listManager.glEndList();
        exec.execute(() -> org.lwjgl.opengl.GL11.glEndList());
    }

    public static void glCallList(int list) {
//        listManager.glCallList(list);
        exec.execute(() -> org.lwjgl.opengl.GL11.glCallList(list));
    }

    /**
     * Calls.
     */
    public static void glBegin(int mode) {
        assertNoUnsupportedOperation();

        exec.execute(() -> org.lwjgl.opengl.GL11.glBegin(mode));
    }

    public static void glDisable(int cap) {
        exec.execute(() -> org.lwjgl.opengl.GL11.glDisable(cap));
    }

    public static void glMatrixMode(int mode) {
        exec.execute(() -> org.lwjgl.opengl.GL11.glMatrixMode(mode));
    }

    public static void glLoadIdentity() {
        exec.execute(() -> org.lwjgl.opengl.GL11.glLoadIdentity());
    }

    public static void glColorMask(boolean red, boolean green, boolean blue, boolean alpha) {
        exec.execute(() -> org.lwjgl.opengl.GL11.glColorMask(red, green, blue, alpha));
    }

    public static void glViewport(int x, int y, int width, int height) {
        exec.execute(() -> org.lwjgl.opengl.GL11.glViewport(x, y, width, height));
    }

    public static void glPushAttrib(int mask) {
        exec.execute(() -> org.lwjgl.opengl.GL11.glPushAttrib(mask));
    }

    public static void glPushMatrix() {
        exec.execute(() -> org.lwjgl.opengl.GL11.glPushMatrix());
    }

    public static void glOrtho(double left, double right, double bottom, double top, double zNear, double zFar) {
        exec.execute(() -> org.lwjgl.opengl.GL11.glOrtho(left, right, bottom, top, zNear, zFar));
    }

    public static void glTranslatef(float x, float y, float z) {
        exec.execute(() -> org.lwjgl.opengl.GL11.glTranslatef(x, y, z));
    }

    public static void glEnable(int cap) {
        exec.execute(() -> org.lwjgl.opengl.GL11.glEnable(cap));
    }

    public static void glBlendFunc(int sfactor, int dfactor) {
        exec.execute(() -> org.lwjgl.opengl.GL11.glBlendFunc(sfactor, dfactor));
    }

    public static void glColor4ub(byte red, byte green, byte blue, byte alpha) {
        exec.execute(() -> org.lwjgl.opengl.GL11.glColor4ub(red, green, blue, alpha));
    }

    public static void glVertex2f(float x, float y) {
        exec.execute(() -> org.lwjgl.opengl.GL11.glVertex2f(x, y));
    }

    public static void glEnd() {
        exec.execute(() -> org.lwjgl.opengl.GL11.glEnd());
    }

    public static void glPopMatrix() {
        exec.execute(() -> org.lwjgl.opengl.GL11.glPopMatrix());
    }

    public static void glPopAttrib() {
        exec.execute(() -> org.lwjgl.opengl.GL11.glPopAttrib());
    }

    public static void glBindTexture(int target, int texture) {
        exec.execute(() -> org.lwjgl.opengl.GL11.glBindTexture(target, texture));
    }

    public static void glTexParameteri(int target, int pname, int param) {
        exec.execute(() -> org.lwjgl.opengl.GL11.glTexParameteri(target, pname, param));
    }

    public static void glRotatef(float angle, float x, float y, float z) {
        exec.execute(() -> org.lwjgl.opengl.GL11.glRotatef(angle, x, y, z));
    }

    public static void glTexCoord2f(float s, float t) {
        exec.execute(() -> org.lwjgl.opengl.GL11.glTexCoord2f(s, t));
    }

    public static void glClearColor(float red, float green, float blue, float alpha) {
        exec.execute(() -> org.lwjgl.opengl.GL11.glClearColor(red, green, blue, alpha));
    }

    public static void glClear(int mask) {
        exec.execute(() -> org.lwjgl.opengl.GL11.glClear(mask));
    }

    // TODO sync here?
    public static void glFlush() { // NoList
        exec.execute(() -> org.lwjgl.opengl.GL11.glFlush());
    }

    public static void glScissor(int x, int y, int width, int height) {
        exec.execute(() -> org.lwjgl.opengl.GL11.glScissor(x, y, width, height));
    }

    public static void glStencilFunc(int func, int ref, int mask) {
        exec.execute(() -> org.lwjgl.opengl.GL11.glStencilFunc(func, ref, mask));
    }

    public static void glStencilOp(int fail, int zfail, int zpass) {
        exec.execute(() -> org.lwjgl.opengl.GL11.glStencilOp(fail, zfail, zpass));
    }

    public static void glAlphaFunc(int func, float ref) {
        exec.execute(() -> org.lwjgl.opengl.GL11.glAlphaFunc(func, ref));
    }

    public static void glScalef(float x, float y, float z) {
        exec.execute(() -> org.lwjgl.opengl.GL11.glScalef(x, y, z));
    }

    public static void glHint(int target, int mode) {
        exec.execute(() -> org.lwjgl.opengl.GL11.glHint(target, mode));
    }

    public static void glLineWidth(float width) {
        exec.execute(() -> org.lwjgl.opengl.GL11.glLineWidth(width));
    }

    public static void glEnableClientState(int cap) { // NoList
        exec.execute(() -> org.lwjgl.opengl.GL11.glEnableClientState(cap));
    }

    public static void glVertexPointer(int size, int stride, FloatBuffer pointer) { // NoList
        exec.execute(() -> org.lwjgl.opengl.GL11.glVertexPointer(size, stride, pointer));
    }

    public static void glColorPointer(int size, boolean unsigned, int stride, ByteBuffer pointer) { // NoList
        exec.execute(() -> org.lwjgl.opengl.GL11.glColorPointer(size, unsigned, stride, pointer));
    }

    public static void glTexCoordPointer(int size, int stride, FloatBuffer pointer) { // NoList
        exec.execute(() -> org.lwjgl.opengl.GL11.glTexCoordPointer(size, stride, pointer));
    }

    public static void glDrawArrays(int mode, int first, int count) {
        exec.execute(() -> org.lwjgl.opengl.GL11.glDrawArrays(mode, first, count));
    }

    public static void glDisableClientState(int cap) { // NoList
        exec.execute(() -> org.lwjgl.opengl.GL11.glDisableClientState(cap));
    }

    public static void glVertex3d(double x, double y, double z) {
        exec.execute(() -> org.lwjgl.opengl.GL11.glVertex3d(x, y, z));
    }

    public static void glColor3d(double red, double green, double blue) {
        exec.execute(() -> org.lwjgl.opengl.GL11.glColor3d(red, green, blue));
    }

    public static void glColorMaterial(int face, int mode) {
        exec.execute(() -> org.lwjgl.opengl.GL11.glColorMaterial(face, mode));
    }

    public static void glShadeModel(int mode) {
        exec.execute(() -> org.lwjgl.opengl.GL11.glShadeModel(mode));
    }

    public static void glNormal3f(float nx, float ny, float nz) {
        exec.execute(() -> org.lwjgl.opengl.GL11.glNormal3f(nx, ny, nz));
    }

    public static void glVertex3f(float x, float y, float z) {
        exec.execute(() -> org.lwjgl.opengl.GL11.glVertex3f(x, y, z));
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

    public static void glTexImage2D(int target, int level, int internalformat, int width, int height, int border, int format, int type, ByteBuffer pixels) { // NoList
//        if (listManager.isRecording()) {
//            throwUnsupportedOperation("glTexImage2D");
//        }

        exec.wait(() -> org.lwjgl.opengl.GL11.glTexImage2D(target, level, internalformat, width, height, border, format, type, pixels));
    }

    public static int glGenLists(int range) { // NoList
        return exec.get(() -> org.lwjgl.opengl.GL11.glGenLists(range));
    }

    public static String glGetString(int name) { // NoList
        return exec.get(() -> org.lwjgl.opengl.GL11.glGetString(name));
    }

    public static void glMultMatrix(FloatBuffer m) {
        exec.wait(() -> org.lwjgl.opengl.GL11.glMultMatrix(m));
    }

    public static void glTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, ByteBuffer pixels) {
        exec.wait(() -> org.lwjgl.opengl.GL11.glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixels));
    }

    public static void glLight(int light, int pname, FloatBuffer params) {
        exec.wait(() -> org.lwjgl.opengl.GL11.glLight(light, pname, params));
    }

    public static void glMaterial(int face, int pname, FloatBuffer params) {
        exec.wait(() -> org.lwjgl.opengl.GL11.glMaterial(face, pname, params));
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

    public static void glColor4f(float red, float green, float blue, float alpha) {
        throwUnsupportedOperation("glColor4f");
    }

    public static void glColor3f(float red, float green, float blue) {
        throwUnsupportedOperation("glColor3f");
    }

    public static void glArrayElement(int i) {
        throwUnsupportedOperation("glArrayElement");
    }

    public static void glDeleteLists(int list, int range) { // NO LIST
        throwUnsupportedOperation("glDeleteLists");
    }

    public static void glDeleteTextures(int texture) {
        throwUnsupportedOperation("glDeleteTextures");
    }

    public static void glFinish() { // NO LIST
        throwUnsupportedOperation("glFinish");
    }

    public static boolean glIsEnabled(int cap) { // NO LIST
        throwUnsupportedOperation("glIsEnabled");
        return false;
    }

    public static void glVertexPointer(int size, int stride, IntBuffer pointer) { // NO LIST
        throwUnsupportedOperation("glVertexPointer");
    }

    public static void glDrawElements(int mode, IntBuffer indices) {
        throwUnsupportedOperation("glDrawElements");
    }

    public static void glDeleteTextures(IntBuffer textures) { // NO LIST
        throwUnsupportedOperation("glDeleteTextures");
    }

    public static void glInterleavedArrays(int format, int stride, FloatBuffer pointer) { // NO LIST
        throwUnsupportedOperation("glInterleavedArrays");
    }

    public static void glGetInteger(int pname, IntBuffer params) { // NO LIST
        throwUnsupportedOperation("glGetInteger");
    }

    public static void glReadPixels(int x, int y, int width, int height, int format, int type, FloatBuffer pixels) { // NO LIST
        throwUnsupportedOperation("glReadPixels");
    }

    public static void glVertexPointer(int size, int type, int stride, long pointer_buffer_offset) { // NO LIST
        throwUnsupportedOperation("glVertexPointer");
    }

    public static void glTexCoordPointer(int size, int type, int stride, long pointer_buffer_offset) { // NO LIST
        throwUnsupportedOperation("glTexCoordPointer");
    }

    public static void glColorPointer(int size, int type, int stride, long pointer_buffer_offset) { // NO LIST
        throwUnsupportedOperation("glColorPointer");
    }

    public static void glTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, long pixels_buffer_offset) {
        throwUnsupportedOperation("glTexSubImage2D");
    }
}