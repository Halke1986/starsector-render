package com.genir.renderer.bridge;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;

import static com.genir.renderer.bridge.Bridge.*;

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
     * Calls.
     */
    public static void glDisable(int cap) {
        process(() -> org.lwjgl.opengl.GL11.glDisable(cap));
    }

    public static void glMatrixMode(int mode) {
        process(() -> org.lwjgl.opengl.GL11.glMatrixMode(mode));
    }

    public static void glLoadIdentity() {
        process(org.lwjgl.opengl.GL11::glLoadIdentity);
    }

    public static void glColorMask(boolean red, boolean green, boolean blue, boolean alpha) {
        process(() -> org.lwjgl.opengl.GL11.glColorMask(red, green, blue, alpha));
    }

    public static void glViewport(int x, int y, int width, int height) {
        process(() -> org.lwjgl.opengl.GL11.glViewport(x, y, width, height));
    }

    public static void glPushAttrib(int mask) {
        process(() -> org.lwjgl.opengl.GL11.glPushAttrib(mask));
    }

    public static void glPushMatrix() {
        process(org.lwjgl.opengl.GL11::glPushMatrix);
    }

    public static void glOrtho(double left, double right, double bottom, double top, double zNear, double zFar) {
        process(() -> org.lwjgl.opengl.GL11.glOrtho(left, right, bottom, top, zNear, zFar));
    }

    public static void glTranslatef(float x, float y, float z) {
        process(() -> org.lwjgl.opengl.GL11.glTranslatef(x, y, z));
    }

    public static void glEnable(int cap) {
        process(() -> org.lwjgl.opengl.GL11.glEnable(cap));
    }

    public static void glBlendFunc(int sfactor, int dfactor) {
        process(() -> org.lwjgl.opengl.GL11.glBlendFunc(sfactor, dfactor));
    }

    public static void glColor4ub(byte red, byte green, byte blue, byte alpha) {
        process(() -> org.lwjgl.opengl.GL11.glColor4ub(red, green, blue, alpha));
    }

    public static void glBegin(int mode) {
        process(() -> org.lwjgl.opengl.GL11.glBegin(mode));
    }

    public static void glVertex2f(float x, float y) {
        process(() -> org.lwjgl.opengl.GL11.glVertex2f(x, y));
    }

    public static void glEnd() {
        process(org.lwjgl.opengl.GL11::glEnd);
    }

    public static void glPopMatrix() {
        process(org.lwjgl.opengl.GL11::glPopMatrix);
    }

    public static void glPopAttrib() {
        process(org.lwjgl.opengl.GL11::glPopAttrib);
    }

    public static void glBindTexture(int target, int texture) {
        process(() -> org.lwjgl.opengl.GL11.glBindTexture(target, texture));
    }

    public static void glTexParameteri(int target, int pname, int param) {
        process(() -> org.lwjgl.opengl.GL11.glTexParameteri(target, pname, param));
    }

    public static void glRotatef(float angle, float x, float y, float z) {
        process(() -> org.lwjgl.opengl.GL11.glRotatef(angle, x, y, z));
    }

    public static void glTexCoord2f(float s, float t) {
        process(() -> org.lwjgl.opengl.GL11.glTexCoord2f(s, t));
    }

    public static void glClearColor(float red, float green, float blue, float alpha) {
        process(() -> org.lwjgl.opengl.GL11.glClearColor(red, green, blue, alpha));
    }

    public static void glClear(int mask) {
        process(() -> org.lwjgl.opengl.GL11.glClear(mask));
    }

    // TODO sync here?
    public static void glFlush() {
        processNoList(org.lwjgl.opengl.GL11::glFlush);
    }

    public static void glScissor(int x, int y, int width, int height) {
        process(() -> org.lwjgl.opengl.GL11.glScissor(x, y, width, height));
    }

    public static void glStencilFunc(int func, int ref, int mask) {
        process(() -> org.lwjgl.opengl.GL11.glStencilFunc(func, ref, mask));
    }

    public static void glStencilOp(int fail, int zfail, int zpass) {
        process(() -> org.lwjgl.opengl.GL11.glStencilOp(fail, zfail, zpass));
    }

    public static void glAlphaFunc(int func, float ref) {
        process(() -> org.lwjgl.opengl.GL11.glAlphaFunc(func, ref));
    }

    public static void glScalef(float x, float y, float z) {
        process(() -> org.lwjgl.opengl.GL11.glScalef(x, y, z));
    }

    public static void glHint(int target, int mode) {
        process(() -> org.lwjgl.opengl.GL11.glHint(target, mode));
    }

    public static void glLineWidth(float width) {
        process(() -> org.lwjgl.opengl.GL11.glLineWidth(width));
    }

    public static void glEnableClientState(int cap) {
        processNoList(() -> org.lwjgl.opengl.GL11.glEnableClientState(cap));
    }

    public static void glVertexPointer(int size, int stride, FloatBuffer pointer) {
        processNoList(() -> org.lwjgl.opengl.GL11.glVertexPointer(size, stride, pointer));
    }

    public static void glColorPointer(int size, boolean unsigned, int stride, ByteBuffer pointer) {
        processNoList(() -> org.lwjgl.opengl.GL11.glColorPointer(size, unsigned, stride, pointer));
    }

    public static void glTexCoordPointer(int size, int stride, FloatBuffer pointer) {
        processNoList(() -> org.lwjgl.opengl.GL11.glTexCoordPointer(size, stride, pointer));
    }

    public static void glDrawArrays(int mode, int first, int count) {
        process(() -> org.lwjgl.opengl.GL11.glDrawArrays(mode, first, count));
    }

    public static void glDisableClientState(int cap) {
        processNoList(() -> org.lwjgl.opengl.GL11.glDisableClientState(cap));
    }

    /**
     * Blocking.
     */
    public static int glGetInteger(int pname) {
        return org.lwjgl.opengl.GL11.glGetInteger(pname);
    }

    public static void glGenTextures(IntBuffer textures) {
        org.lwjgl.opengl.GL11.glGenTextures(textures);
    }

    public static void glTexImage2D(int target, int level, int internalformat, int width, int height, int border, int format, int type, ByteBuffer pixels) {
        if (listManager.isRecording()) {
            throw new UnsupportedOperationException();
        }

        org.lwjgl.opengl.GL11.glTexImage2D(target, level, internalformat, width, height, border, format, type, pixels);
    }

    public static int glGenLists(int range) {
        return org.lwjgl.opengl.GL11.glGenLists(range);
    }

    public static String glGetString(int name) {
        return org.lwjgl.opengl.GL11.glGetString(name);
    }

    /**
     * Unsupported.
     */
    public static void glTranslated(double x, double y, double z) {
        throw new UnsupportedOperationException();
    }

    public static void glVertex3d(double x, double y, double z) {
        throw new UnsupportedOperationException();
    }

    public static void glColor3d(double red, double green, double blue) {
        throw new UnsupportedOperationException();
    }

    public static void glPolygonMode(int face, int mode) {
        throw new UnsupportedOperationException();
    }

    public static void glPointSize(float size) {
        throw new UnsupportedOperationException();
    }

    public static void glShadeModel(int mode) {
        throw new UnsupportedOperationException();
    }

    public static void glMateriali(int face, int pname, int param) {
        throw new UnsupportedOperationException();
    }

    public static void glColor3ub(byte red, byte green, byte blue) {
        throw new UnsupportedOperationException();
    }

    public static void glNormal3f(float nx, float ny, float nz) {
        throw new UnsupportedOperationException();
    }

    public static void glTexEnvf(int target, int pname, float param) {
        throw new UnsupportedOperationException();
    }

    public static void glColor4f(float red, float green, float blue, float alpha) {
        throw new UnsupportedOperationException();
    }

    public static void glVertex3f(float x, float y, float z) {
        throw new UnsupportedOperationException();
    }

    public static void glColorMaterial(int face, int mode) {
        throw new UnsupportedOperationException();
    }

    public static void glColor3f(float red, float green, float blue) {
        throw new UnsupportedOperationException();
    }

    public static void glArrayElement(int i) {
        throw new UnsupportedOperationException();
    }

    public static void glDeleteLists(int list, int range) { // NO LIST
        throw new UnsupportedOperationException();
    }

    public static void glDeleteTextures(int texture) {
        throw new UnsupportedOperationException();
    }

    public static void glFinish() { // NO LIST
        throw new UnsupportedOperationException();
    }

    public static boolean glIsEnabled(int cap) { // NO LIST
        throw new UnsupportedOperationException();
    }

    public static void glMultMatrix(FloatBuffer m) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexPointer(int size, int stride, IntBuffer pointer) { // NO LIST
        throw new UnsupportedOperationException();
    }

    public static void glLight(int light, int pname, FloatBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static void glMaterial(int face, int pname, FloatBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static void glTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, ByteBuffer pixels) {
        throw new UnsupportedOperationException();
    }

    public static void glDrawElements(int mode, IntBuffer indices) {
        throw new UnsupportedOperationException();
    }

    public static void glDeleteTextures(IntBuffer textures) { // NO LIST
        throw new UnsupportedOperationException();
    }

    public static void glInterleavedArrays(int format, int stride, FloatBuffer pointer) { // NO LIST
        throw new UnsupportedOperationException();
    }

    public static void glGetInteger(int pname, IntBuffer params) { // NO LIST
        throw new UnsupportedOperationException();
    }

    public static void glReadPixels(int x, int y, int width, int height, int format, int type, FloatBuffer pixels) { // NO LIST
        throw new UnsupportedOperationException();
    }

    public static void glVertexPointer(int size, int type, int stride, long pointer_buffer_offset) { // NO LIST
        throw new UnsupportedOperationException();
    }

    public static void glTexCoordPointer(int size, int type, int stride, long pointer_buffer_offset) { // NO LIST
        throw new UnsupportedOperationException();
    }

    public static void glColorPointer(int size, int type, int stride, long pointer_buffer_offset) { // NO LIST
        throw new UnsupportedOperationException();
    }

    public static void glTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, long pixels_buffer_offset) {
        throw new UnsupportedOperationException();
    }
}