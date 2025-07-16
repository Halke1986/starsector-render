package com.genir.renderer.bridge;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;

public class GL11 {
    public static void glNewList(int list, int mode) {
        throw new UnsupportedOperationException();
    }

    public static void glEndList() {
        throw new UnsupportedOperationException();
    }

    public static void glCallList(int list) {
        throw new UnsupportedOperationException();
    }

    public static void glMatrixMode(int mode) {
        throw new UnsupportedOperationException();
    }

    public static void glPushMatrix() {
        throw new UnsupportedOperationException();
    }

    public static void glPopMatrix() {
        throw new UnsupportedOperationException();
    }

    public static void glOrtho(double left, double right, double bottom, double top, double zNear, double zFar) {
        throw new UnsupportedOperationException();
    }

    public static void glLoadIdentity() {
        throw new UnsupportedOperationException();
    }

    public static void glTranslatef(float x, float y, float z) {
        throw new UnsupportedOperationException();
    }

    public static void glTranslated(double x, double y, double z) {
        throw new UnsupportedOperationException();
    }

    public static void glScalef(float x, float y, float z) {
        throw new UnsupportedOperationException();
    }

    public static void glRotatef(float angle, float x, float y, float z) {
        throw new UnsupportedOperationException();
    }

    public static void glMultMatrix(FloatBuffer m) {
        throw new UnsupportedOperationException();
    }

    public static void glBegin(int mode) {
        throw new UnsupportedOperationException();
    }

    public static void glEnd() {
        throw new UnsupportedOperationException();
    }

    public static void glVertex2f(float x, float y) {
        throw new UnsupportedOperationException();
    }

    public static void glVertex3d(double x, double y, double z) {
        throw new UnsupportedOperationException();
    }

    public static void glColor4ub(byte red, byte green, byte blue, byte alpha) {
        throw new UnsupportedOperationException();
    }

    public static void glColor3d(double red, double green, double blue) {
        throw new UnsupportedOperationException();
    }

    public static void glTexCoord2f(float s, float t) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexPointer(int size, int stride, FloatBuffer pointer) {
        throw new UnsupportedOperationException();
    }

    public static void glColorPointer(int size, boolean unsigned, int stride, ByteBuffer pointer) {
        throw new UnsupportedOperationException();
    }

    public static void glTexCoordPointer(int size, int stride, FloatBuffer pointer) {
        throw new UnsupportedOperationException();
    }

    public static void glDrawArrays(int mode, int first, int count) {
        throw new UnsupportedOperationException();
    }

    public static void glDisableClientState(int cap) {
        throw new UnsupportedOperationException();
    }

    public static void glEnableClientState(int cap) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexPointer(int size, int stride, IntBuffer pointer) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexPointer(int size, int type, int stride, long pointer_buffer_offset) {
        throw new UnsupportedOperationException();
    }

    public static void glTexCoordPointer(int size, int type, int stride, long pointer_buffer_offset) {
        throw new UnsupportedOperationException();
    }

    public static void glColorPointer(int size, int type, int stride, long pointer_buffer_offset) {
        throw new UnsupportedOperationException();
    }

    public static void glEnable(int cap) {
        throw new UnsupportedOperationException();
    }

    public static void glDisable(int cap) {
        throw new UnsupportedOperationException();
    }

    public static void glBindTexture(int target, int texture) {
        throw new UnsupportedOperationException();
    }

    public static void glBlendFunc(int sfactor, int dfactor) {
        throw new UnsupportedOperationException();
    }

    public static void glColorMask(boolean red, boolean green, boolean blue, boolean alpha) {
        throw new UnsupportedOperationException();
    }

    public static void glAlphaFunc(int func, float ref) {
        throw new UnsupportedOperationException();
    }

    public static void glStencilFunc(int func, int ref, int mask) {
        throw new UnsupportedOperationException();
    }

    public static void glStencilOp(int fail, int zfail, int zpass) {
        throw new UnsupportedOperationException();
    }

    public static void glTexParameteri(int target, int pname, int param) {
        throw new UnsupportedOperationException();
    }

    public static void glLineWidth(float width) {  // enable / disable GL_LINE_SMOOTH=2848
        throw new UnsupportedOperationException();
    }

    public static void glScissor(int x, int y, int width, int height) { //  GL_SCISSOR_TEST = 3089
        throw new UnsupportedOperationException();
    }

    public static void glClearColor(float red, float green, float blue, float alpha) {
        throw new UnsupportedOperationException();
    }

    public static void glClear(int mask) {
        throw new UnsupportedOperationException();
    }

    public static void glPushAttrib(int mask) {
        throw new UnsupportedOperationException();
    }

    public static void glViewport(int x, int y, int width, int height) {
        throw new UnsupportedOperationException();
    }

    public static void glPopAttrib() {
        throw new UnsupportedOperationException();
    }

    public static void glFlush() {
        throw new UnsupportedOperationException();
    }

    // BLOCKING!
    public static void glGenTextures(IntBuffer textures) {
        throw new UnsupportedOperationException();
    }

    // BLOCKING!
    public static void glTexImage2D(int target, int level, int internalformat, int width, int height, int border, int format, int type, ByteBuffer pixels) {
        throw new UnsupportedOperationException();
    }

    public static void glHint(int target, int mode) {
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

    public static void glLight(int light, int pname, FloatBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static void glMaterial(int face, int pname, FloatBuffer params) {
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

    public static void glTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, ByteBuffer pixels) {
        throw new UnsupportedOperationException();
    }

    public static void glTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, long pixels_buffer_offset) {
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

    public static void glDrawElements(int mode, IntBuffer indices) {
        throw new UnsupportedOperationException();
    }

    public static void glDeleteLists(int list, int range) {
        throw new UnsupportedOperationException();
    }

    public static void glDeleteTextures(IntBuffer textures) {
        throw new UnsupportedOperationException();
    }

    public static void glDeleteTextures(int texture) {
        throw new UnsupportedOperationException();
    }

    public static void glFinish() {
        throw new UnsupportedOperationException();
    }

    public static int glGenLists(int range) {
        throw new UnsupportedOperationException();
    }

    public static void glInterleavedArrays(int format, int stride, FloatBuffer pointer) {
        throw new UnsupportedOperationException();
    }

    public static boolean glIsEnabled(int cap) {
        throw new UnsupportedOperationException();
    }

    public static void glReadPixels(int x, int y, int width, int height, int format, int type, FloatBuffer pixels) {
        throw new UnsupportedOperationException();
    }

    public static void glGetInteger(int pname, IntBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static int glGetInteger(int pname) {
        throw new UnsupportedOperationException();
    }

    public static String glGetString(int name) {
        throw new UnsupportedOperationException();
    }
}