package com.genir.graphics;

import org.lwjgl.opengl.GL11;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;

public class GLBridge {
    private static boolean intercept = false;
    public static GLState state = new GLState();

    public static void startIntercept() {
        intercept = true;
    }

    public static void endIntercept() {
        intercept = false;
    }

    public static void glDisable(int cap) {
        if (intercept) {
            state.glDisable(cap);
        } else {
            GL11.glDisable(cap);
        }
    }

    public static void glEnable(int cap) {
        if (intercept) {
            state.glEnable(cap);
        } else {
            GL11.glEnable(cap);
        }
    }

    public static void glBlendFunc(int sfactor, int dfactor) {
        if (intercept) {
            state.glBlendFunc(sfactor, dfactor);
        } else {
            GL11.glBlendFunc(sfactor, dfactor);
        }
    }

    public static void glBegin(int mode) {
        if (intercept) {
            state.glBegin(mode);
        } else {
            GL11.glBegin(mode);
        }
    }

    public static void glEnd() {
        if (intercept) {
            state.glEnd();
        } else {
            GL11.glEnd();
        }
    }

    public static void glHint(int target, int mode) {
        if (intercept) {
            throw new UnsupportedOperationException("glHint");
        } else {
            GL11.glHint(target, mode);
        }
    }

    public static void glVertex2f(float x, float y) {
        if (intercept) {
            state.glVertex2f(x, y);
        } else {
            GL11.glVertex2f(x, y);
        }
    }

    public static void glPushMatrix() {
        if (intercept) {
            state.glPushMatrix();
        } else {
            GL11.glPushMatrix();
        }
    }

    public static void glPopMatrix() {
        if (intercept) {
            state.glPopMatrix();
        } else {
            GL11.glPopMatrix();
        }
    }

    public static void glTranslatef(float x, float y, float z) {
        if (intercept) {
            state.glTranslatef(x, y, z);
        } else {
            GL11.glTranslatef(x, y, z);
        }
    }

    public static void glColor4ub(byte red, byte green, byte blue, byte alpha) {
        if (intercept) {
            state.glColor4ub(red, green, blue, alpha);
        } else {
            GL11.glColor4ub(red, green, blue, alpha);
        }
    }

    public static void glScalef(float x, float y, float z) {
        if (intercept) {
            throw new UnsupportedOperationException("glScalef");
        } else {
            GL11.glScalef(x, y, z);
        }
    }

    public static void glColorMask(boolean red, boolean green, boolean blue, boolean alpha) {
        if (intercept) {
            throw new UnsupportedOperationException("glColorMask");
        } else {
            GL11.glColorMask(red, green, blue, alpha);
        }
    }

    public static void glRotatef(float angle, float x, float y, float z) {
        if (intercept) {
            state.glRotatef(angle, x, y, z);
        } else {
            GL11.glRotatef(angle, x, y, z);
        }
    }

    public static void glTexCoord2f(float s, float t) {
        if (intercept) {
            state.glTexCoord2f(s, t);
        } else {
            GL11.glTexCoord2f(s, t);
        }
    }

    public static void glLineWidth(float width) {
        if (intercept) {
            throw new UnsupportedOperationException("glLineWidth");
        } else {
            GL11.glLineWidth(width);
        }
    }

    public static void glStencilFunc(int func, int ref, int mask) {
        if (intercept) {
            throw new UnsupportedOperationException("glStencilFunc");
        } else {
            GL11.glStencilFunc(func, ref, mask);
        }
    }

    public static void glDeleteTextures(IntBuffer textures) {
        if (intercept) {
            throw new UnsupportedOperationException("glDeleteTextures");
        } else {
            GL11.glDeleteTextures(textures);
        }
    }

    public static void glDeleteTextures(int texture) {
        if (intercept) {
            throw new UnsupportedOperationException("glDeleteTextures");
        } else {
            GL11.glDeleteTextures(texture);
        }
    }

    public static void glPolygonMode(int face, int mode) {
        if (intercept) {
            throw new UnsupportedOperationException("glPolygonMode");
        } else {
            GL11.glPolygonMode(face, mode);
        }
    }

    public static void glGetInteger(int pname, IntBuffer params) {
        if (intercept) {
            throw new UnsupportedOperationException("glGetInteger");
        } else {
            GL11.glGetInteger(pname, params);
        }
    }

    public static int glGetInteger(int pname) {
        if (intercept) {
            throw new UnsupportedOperationException("glGetInteger");
        } else {
            return GL11.glGetInteger(pname);
        }
    }

    public static void glViewport(int x, int y, int width, int height) {
        if (intercept) {
            throw new UnsupportedOperationException("glViewport");
        } else {
            GL11.glViewport(x, y, width, height);
        }
    }

    public static String glGetString(int name) {
        if (intercept) {
            throw new UnsupportedOperationException("glGetString");
        } else {
            return GL11.glGetString(name);
        }
    }

    public static void glFlush() {
        if (intercept) {
            throw new UnsupportedOperationException("glFlush");
        } else {
            GL11.glFlush();
        }
    }

    public static void glFinish() {
        if (intercept) {
            throw new UnsupportedOperationException("glFinish");
        } else {
            GL11.glFinish();
        }
    }

    public static void glScissor(int x, int y, int width, int height) {
        if (intercept) {
            throw new UnsupportedOperationException("glScissor");
        } else {
            GL11.glScissor(x, y, width, height);
        }
    }

    public static void glStencilOp(int fail, int zfail, int zpass) {
        if (intercept) {
            throw new UnsupportedOperationException("glStencilOp");
        } else {
            GL11.glStencilOp(fail, zfail, zpass);
        }
    }

    public static void glAlphaFunc(int func, float ref) {
        if (intercept) {
            throw new UnsupportedOperationException("glAlphaFunc");
        } else {
            GL11.glAlphaFunc(func, ref);
        }
    }

    public static void glReadPixels(int x, int y, int width, int height, int format, int type, FloatBuffer pixels) {
        if (intercept) {
            throw new UnsupportedOperationException("glReadPixels");
        } else {
            GL11.glReadPixels(x, y, width, height, format, type, pixels);
        }
    }

    public static void glGenTextures(IntBuffer textures) {
        if (intercept) {
            throw new UnsupportedOperationException("glGenTextures");
        } else {
            GL11.glGenTextures(textures);
        }
    }

    public static void glTexParameteri(int target, int pname, int param) {
        if (intercept) {
            throw new UnsupportedOperationException("glTexParameteri");
        } else {
            GL11.glTexParameteri(target, pname, param);
        }
    }

    public static void glPointSize(float size) {
        if (intercept) {
            throw new UnsupportedOperationException("glPointSize");
        } else {
            GL11.glPointSize(size);
        }
    }

    public static void glShadeModel(int mode) {
        if (intercept) {
            throw new UnsupportedOperationException("glShadeModel");
        } else {
            GL11.glShadeModel(mode);
        }
    }

    public static void glLight(int light, int pname, FloatBuffer params) {
        if (intercept) {
            throw new UnsupportedOperationException("glLight");
        } else {
            GL11.glLight(light, pname, params);
        }
    }

    public static void glMaterial(int face, int pname, FloatBuffer params) {
        if (intercept) {
            throw new UnsupportedOperationException("glMaterial");
        } else {
            GL11.glMaterial(face, pname, params);
        }
    }

    public static void glMateriali(int face, int pname, int param) {
        if (intercept) {
            throw new UnsupportedOperationException("glMateriali");
        } else {
            GL11.glMateriali(face, pname, param);
        }
    }

    public static void glColor3ub(byte red, byte green, byte blue) {
        if (intercept) {
            throw new UnsupportedOperationException("glColor3ub");
        } else {
            GL11.glColor3ub(red, green, blue);
        }
    }

    public static void glNormal3f(float nx, float ny, float nz) {
        if (intercept) {
            throw new UnsupportedOperationException("glNormal3f");
        } else {
            GL11.glNormal3f(nx, ny, nz);
        }
    }

    public static void glVertex3d(double x, double y, double z) {
        if (intercept) {
            throw new UnsupportedOperationException("glVertex3d");
        } else {
            GL11.glVertex3d(x, y, z);
        }
    }

    public static void glColor3d(double red, double green, double blue) {
        if (intercept) {
            throw new UnsupportedOperationException("glColor3d");
        } else {
            GL11.glColor3d(red, green, blue);
        }
    }

    public static void glTexEnvf(int target, int pname, float param) {
        if (intercept) {
            throw new UnsupportedOperationException("glTexEnvf");
        } else {
            GL11.glTexEnvf(target, pname, param);
        }
    }

    public static void glColor4f(float red, float green, float blue, float alpha) {
        if (intercept) {
            throw new UnsupportedOperationException("glColor4f");
        } else {
            GL11.glColor4f(red, green, blue, alpha);
        }
    }

    public static void glMatrixMode(int mode) {
        if (intercept) {
            throw new UnsupportedOperationException("glMatrixMode");
        } else {
            GL11.glMatrixMode(mode);
        }
    }

    public static void glLoadIdentity() {
        if (intercept) {
            throw new UnsupportedOperationException("glLoadIdentity");
        } else {
            GL11.glLoadIdentity();
        }
    }

    public static boolean glIsEnabled(int cap) {
        if (intercept) {
            throw new UnsupportedOperationException("glIsEnabled");
        } else {
            return GL11.glIsEnabled(cap);
        }
    }

    public static void glBindTexture(int target, int texture) {
        if (intercept) {
            state.glBindTexture(target, texture);
        } else {
            GL11.glBindTexture(target, texture);
        }
    }

    public static void glTexImage2D(int target, int level, int internalformat, int width, int height, int border, int format, int type, ByteBuffer pixels) {
        if (intercept) {
            throw new UnsupportedOperationException("glTexImage2D");
        } else {
            GL11.glTexImage2D(target, level, internalformat, width, height, border, format, type, pixels);
        }
    }

    public static void glTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, long pixels_buffer_offset) {
        if (intercept) {
            throw new UnsupportedOperationException("glTexSubImage2D");
        } else {
            GL11.glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixels_buffer_offset);
        }
    }

    public static void glTexCoordPointer(int size, int stride, FloatBuffer pointer) {
        if (intercept) {
            throw new UnsupportedOperationException("glTexCoordPointer");
        } else {
            GL11.glTexCoordPointer(size, stride, pointer);
        }
    }

    public static void glTexCoordPointer(int size, int type, int stride, long pointer_buffer_offset) {
        if (intercept) {
            throw new UnsupportedOperationException("glTexCoordPointer");
        } else {
            GL11.glTexCoordPointer(size, type, stride, pointer_buffer_offset);
        }
    }

    public static void glColorPointer(int size, boolean unsigned, int stride, ByteBuffer pointer) {
        if (intercept) {
            throw new UnsupportedOperationException("glColorPointer");
        } else {
            GL11.glColorPointer(size, unsigned, stride, pointer);
        }
    }

    public static void glColorPointer(int size, int type, int stride, long pointer_buffer_offset) {
        if (intercept) {
            throw new UnsupportedOperationException("glColorPointer");
        } else {
            GL11.glColorPointer(size, type, stride, pointer_buffer_offset);
        }
    }

    public static void glVertex3f(float x, float y, float z) {
        if (intercept) {
            throw new UnsupportedOperationException("glVertex3f");
        } else {
            GL11.glVertex3f(x, y, z);
        }
    }

    public static void glColorMaterial(int face, int mode) {
        if (intercept) {
            throw new UnsupportedOperationException("glColorMaterial");
        } else {
            GL11.glColorMaterial(face, mode);
        }
    }

    public static void glColor3f(float red, float green, float blue) {
        if (intercept) {
            throw new UnsupportedOperationException("glColor3f");
        } else {
            GL11.glColor3f(red, green, blue);
        }
    }

    public static void glDrawArrays(int mode, int first, int count) {
        if (intercept) {
            throw new UnsupportedOperationException("glDrawArrays");
        } else {
            GL11.glDrawArrays(mode, first, count);
        }
    }

    public static void glOrtho(double left, double right, double bottom, double top, double zNear, double zFar) {
        if (intercept) {
            throw new UnsupportedOperationException("glOrtho");
        } else {
            GL11.glOrtho(left, right, bottom, top, zNear, zFar);
        }
    }

    public static void glClear(int mask) {
        if (intercept) {
            throw new UnsupportedOperationException("glClear");
        } else {
            GL11.glClear(mask);
        }
    }

    public static void glClearColor(float red, float green, float blue, float alpha) {
        if (intercept) {
            throw new UnsupportedOperationException("glClearColor");
        } else {
            GL11.glClearColor(red, green, blue, alpha);
        }
    }

    public static void glPushAttrib(int mask) {
        if (intercept) {
            throw new UnsupportedOperationException("glPushAttrib");
        } else {
            GL11.glPushAttrib(mask);
        }
    }

    public static void glPopAttrib() {
        if (intercept) {
            throw new UnsupportedOperationException("glPopAttrib");
        } else {
            GL11.glPopAttrib();
        }
    }

    public static void glCallList(int list) {
        if (intercept) {
            throw new UnsupportedOperationException("glCallList");
        } else {
            GL11.glCallList(list);
        }
    }

    public static int glGenLists(int range) {
        if (intercept) {
            throw new UnsupportedOperationException("glGenLists");
        } else {
            return GL11.glGenLists(range);
        }
    }

    public static void glNewList(int list, int mode) {
        if (intercept) {
            throw new UnsupportedOperationException("glNewList");
        } else {
            GL11.glNewList(list, mode);
        }
    }

    public static void glVertexPointer(int size, int stride, FloatBuffer pointer) {
        if (intercept) {
            throw new UnsupportedOperationException("glVertexPointer");
        } else {
            GL11.glVertexPointer(size, stride, pointer);
        }
    }

    public static void glVertexPointer(int size, int stride, IntBuffer pointer) {
        if (intercept) {
            throw new UnsupportedOperationException("glVertexPointer");
        } else {
            GL11.glVertexPointer(size, stride, pointer);
        }
    }

    public static void glVertexPointer(int size, int type, int stride, long pointer_buffer_offset) {
        if (intercept) {
            throw new UnsupportedOperationException("glVertexPointer");
        } else {
            GL11.glVertexPointer(size, type, stride, pointer_buffer_offset);
        }
    }

    public static void glDeleteLists(int list, int range) {
        if (intercept) {
            throw new UnsupportedOperationException("glDeleteLists");
        } else {
            GL11.glDeleteLists(list, range);
        }
    }

    public static void glInterleavedArrays(int format, int stride, FloatBuffer pointer) {
        if (intercept) {
            throw new UnsupportedOperationException("glInterleavedArrays");
        } else {
            GL11.glInterleavedArrays(format, stride, pointer);
        }
    }

    public static void glArrayElement(int i) {
        if (intercept) {
            throw new UnsupportedOperationException("glArrayElement");
        } else {
            GL11.glArrayElement(i);
        }
    }

    public static void glDrawElements(int mode, IntBuffer indices) {
        if (intercept) {
            throw new UnsupportedOperationException("glDrawElements");
        } else {
            GL11.glDrawElements(mode, indices);
        }
    }

    public static void glTranslated(double x, double y, double z) {
        if (intercept) {
            throw new UnsupportedOperationException("glTranslated");
        } else {
            GL11.glTranslated(x, y, z);
        }
    }

    public static void glEnableClientState(int cap) {
        if (intercept) {
            throw new UnsupportedOperationException("glEnableClientState");
        } else {
            GL11.glEnableClientState(cap);
        }
    }

    public static void glMultMatrix(FloatBuffer m) {
        if (intercept) {
            throw new UnsupportedOperationException("glMultMatrix");
        } else {
            GL11.glMultMatrix(m);
        }
    }

    public static void glEndList() {
        if (intercept) {
            throw new UnsupportedOperationException("glEndList");
        } else {
            GL11.glEndList();
        }
    }

    public static void glDisableClientState(int cap) {
        if (intercept) {
            throw new UnsupportedOperationException("glDisableClientState");
        } else {
            GL11.glDisableClientState(cap);
        }
    }
}