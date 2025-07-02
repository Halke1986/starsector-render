package com.genir.graphics;

import org.lwjgl.opengl.GL11;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;

public class GLBridge {
    public static void glDisable(int cap) {
        GL11.glDisable(cap);
    }

    public static void glEnable(int cap) {
        GL11.glEnable(cap);
    }

    public static void glBlendFunc(int sfactor, int dfactor) {
        GL11.glBlendFunc(sfactor, dfactor);
    }

    public static void glBegin(int mode) {
        GL11.glBegin(mode);
    }

    public static void glEnd() {
        GL11.glEnd();
    }

    public static void glHint(int target, int mode) {
        GL11.glHint(target, mode);
    }

    public static void glVertex2f(float x, float y) {
        GL11.glVertex2f(x, y);
    }

    public static void glPushMatrix() {
        GL11.glPushMatrix();
    }

    public static void glPopMatrix() {
        GL11.glPopMatrix();
    }

    public static void glTranslatef(float x, float y, float z) {
        GL11.glTranslatef(x, y, z);
    }

    public static void glColor4ub(byte red, byte green, byte blue, byte alpha) {
        GL11.glColor4ub(red, green, blue, alpha);
    }

    public static void glScalef(float x, float y, float z) {
        GL11.glScalef(x, y, z);
    }

    public static void glColorMask(boolean red, boolean green, boolean blue, boolean alpha) {
        GL11.glColorMask(red, green, blue, alpha);
    }

    public static void glRotatef(float angle, float x, float y, float z) {
        GL11.glRotatef(angle, x, y, z);
    }

    public static void glTexCoord2f(float s, float t) {
        GL11.glTexCoord2f(s, t);
    }

    public static void glLineWidth(float width) {
        GL11.glLineWidth(width);
    }

    public static void glStencilFunc(int func, int ref, int mask) {
        GL11.glStencilFunc(func, ref, mask);
    }

    public static void glDeleteTextures(IntBuffer textures) {
        GL11.glDeleteTextures(textures);
    }

    public static void glDeleteTextures(int texture) {
        GL11.glDeleteTextures(texture);
    }

    public static void glPolygonMode(int face, int mode) {
        GL11.glPolygonMode(face, mode);
    }

    public static void glGetInteger(int pname, IntBuffer params) {
        GL11.glGetInteger(pname, params);
    }

    public static int glGetInteger(int pname) {
        return GL11.glGetInteger(pname);
    }

    public static void glViewport(int x, int y, int width, int height) {
        GL11.glViewport(x, y, width, height);
    }

    public static String glGetString(int name) {
        return GL11.glGetString(name);
    }

    public static void glFlush() {
        GL11.glFlush();
    }

    public static void glFinish() {
        GL11.glFinish();
    }

    public static void glScissor(int x, int y, int width, int height) {
        GL11.glScissor(x, y, width, height);
    }

    public static void glStencilOp(int fail, int zfail, int zpass) {
        GL11.glStencilOp(fail, zfail, zpass);
    }

    public static void glAlphaFunc(int func, float ref) {
        GL11.glAlphaFunc(func, ref);
    }

    public static void glReadPixels(int x, int y, int width, int height, int format, int type, FloatBuffer pixels) {
        GL11.glReadPixels(x, y, width, height, format, type, pixels);
    }

    public static void glGenTextures(IntBuffer textures) {
        GL11.glGenTextures(textures);
    }

    public static void glTexParameteri(int target, int pname, int param) {
        GL11.glTexParameteri(target, pname, param);
    }

    public static void glPointSize(float size) {
        GL11.glPointSize(size);
    }

    public static void glShadeModel(int mode) {
        GL11.glShadeModel(mode);
    }

    public static void glLight(int light, int pname, FloatBuffer params) {
        GL11.glLight(light, pname, params);
    }

    public static void glMaterial(int face, int pname, FloatBuffer params) {
        GL11.glMaterial(face, pname, params);
    }

    public static void glMateriali(int face, int pname, int param) {
        GL11.glMateriali(face, pname, param);
    }

    public static void glColor3ub(byte red, byte green, byte blue) {
        GL11.glColor3ub(red, green, blue);
    }

    public static void glNormal3f(float nx, float ny, float nz) {
        GL11.glNormal3f(nx, ny, nz);
    }

    public static void glVertex3d(double x, double y, double z) {
        GL11.glVertex3d(x, y, z);
    }

    public static void glColor3d(double red, double green, double blue) {
        GL11.glColor3d(red, green, blue);
    }

    public static void glTexEnvf(int target, int pname, float param) {
        GL11.glTexEnvf(target, pname, param);
    }

    public static void glColor4f(float red, float green, float blue, float alpha) {
        GL11.glColor4f(red, green, blue, alpha);
    }

    public static void glMatrixMode(int mode) {
        GL11.glMatrixMode(mode);
    }

    public static void glLoadIdentity() {
        GL11.glLoadIdentity();
    }

    public static boolean glIsEnabled(int cap) {
        return GL11.glIsEnabled(cap);
    }

    public static void glBindTexture(int target, int texture) {
        GL11.glBindTexture(target, texture);
    }

    public static void glTexImage2D(int target, int level, int internalformat, int width, int height, int border, int format, int type, ByteBuffer pixels) {
        GL11.glTexImage2D(target, level, internalformat, width, height, border, format, type, pixels);
    }

    public static void glTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, long pixels_buffer_offset) {
        GL11.glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixels_buffer_offset);
    }

    public static void glTexCoordPointer(int size, int stride, FloatBuffer pointer) {
        GL11.glTexCoordPointer(size, stride, pointer);
    }

    public static void glTexCoordPointer(int size, int type, int stride, long pointer_buffer_offset) {
        GL11.glTexCoordPointer(size, type, stride, pointer_buffer_offset);
    }

    public static void glColorPointer(int size, boolean unsigned, int stride, ByteBuffer pointer) {
        GL11.glColorPointer(size, unsigned, stride, pointer);
    }

    public static void glColorPointer(int size, int type, int stride, long pointer_buffer_offset) {
        GL11.glColorPointer(size, type, stride, pointer_buffer_offset);
    }

    public static void glVertex3f(float x, float y, float z) {
        GL11.glVertex3f(x, y, z);
    }

    public static void glColorMaterial(int face, int mode) {
        GL11.glColorMaterial(face, mode);
    }

    public static void glColor3f(float red, float green, float blue) {
        GL11.glColor3f(red, green, blue);
    }

    public static void glDrawArrays(int mode, int first, int count) {
        GL11.glDrawArrays(mode, first, count);
    }

    public static void glOrtho(double left, double right, double bottom, double top, double zNear, double zFar) {
        GL11.glOrtho(left, right, bottom, top, zNear, zFar);
    }

    public static void glClear(int mask) {
        GL11.glClear(mask);
    }

    public static void glClearColor(float red, float green, float blue, float alpha) {
        GL11.glClearColor(red, green, blue, alpha);
    }

    public static void glPushAttrib(int mask) {
        GL11.glPushAttrib(mask);
    }

    public static void glPopAttrib() {
        GL11.glPopAttrib();
    }

    public static void glCallList(int list) {
        GL11.glCallList(list);
    }

    public static int glGenLists(int range) {
        return GL11.glGenLists(range);
    }

    public static void glNewList(int list, int mode) {
        GL11.glNewList(list, mode);
    }

    public static void glVertexPointer(int size, int stride, FloatBuffer pointer) {
        GL11.glVertexPointer(size, stride, pointer);
    }

    public static void glVertexPointer(int size, int stride, IntBuffer pointer) {
        GL11.glVertexPointer(size, stride, pointer);
    }

    public static void glVertexPointer(int size, int type, int stride, long pointer_buffer_offset) {
        GL11.glVertexPointer(size, type, stride, pointer_buffer_offset);
    }

    public static void glDeleteLists(int list, int range) {
        GL11.glDeleteLists(list, range);
    }

    public static void glInterleavedArrays(int format, int stride, FloatBuffer pointer) {
        GL11.glInterleavedArrays(format, stride, pointer);
    }

    public static void glArrayElement(int i) {
        GL11.glArrayElement(i);
    }

    public static void glDrawElements(int mode, IntBuffer indices) {
        GL11.glDrawElements(mode, indices);
    }

    public static void glTranslated(double x, double y, double z) {
        GL11.glTranslated(x, y, z);
    }

    public static void glEnableClientState(int cap) {
        GL11.glEnableClientState(cap);
    }

    public static void glMultMatrix(FloatBuffer m) {
        GL11.glMultMatrix(m);
    }

    public static void glEndList() {
        GL11.glEndList();
    }

    public static void glDisableClientState(int cap) {
        GL11.glDisableClientState(cap);
    }
}
