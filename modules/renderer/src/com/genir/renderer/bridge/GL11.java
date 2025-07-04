package com.genir.renderer.bridge;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;

import static com.genir.renderer.Debug.logStack;
import static com.genir.renderer.Debug.logger;
import static com.genir.renderer.bridge.Bridge.*;

public class GL11 {
    private static int matrixMode = org.lwjgl.opengl.GL11.GL_MODELVIEW;

    public static void glDisable(int cap) {
        if (intercept) {
            state.glDisable(cap);
        } else {
            org.lwjgl.opengl.GL11.glDisable(cap);
        }
    }

    public static void glEnable(int cap) {
        if (intercept) {
            state.glEnable(cap);
        } else {
            org.lwjgl.opengl.GL11.glEnable(cap);
        }
    }

    public static void glBlendFunc(int sfactor, int dfactor) {
        if (intercept) {
            state.glBlendFunc(sfactor, dfactor);
        } else {
            org.lwjgl.opengl.GL11.glBlendFunc(sfactor, dfactor);
        }
    }

    public static void glBegin(int mode) {
        if (intercept) {
            state.glBegin(mode);
        } else {
            org.lwjgl.opengl.GL11.glBegin(mode);
        }
    }

    public static void glEnd() {
        if (intercept) {
            state.glEnd();
        } else {
            org.lwjgl.opengl.GL11.glEnd();
        }
    }

    public static void glHint(int target, int mode) {
        if (intercept) {
            throw new UnsupportedOperationException("glHint");
        } else {
            org.lwjgl.opengl.GL11.glHint(target, mode);
        }
    }

    public static void glVertex2f(float x, float y) {
        if (intercept) {
            state.glVertex2f(x, y);
        } else {
            org.lwjgl.opengl.GL11.glVertex2f(x, y);
        }
    }

    public static void glMatrixMode(int mode) {
        matrixMode = mode;

        if (!intercept) {
            org.lwjgl.opengl.GL11.glMatrixMode(mode);
        }
    }

    public static void glPushMatrix() {
        if (matrixMode == org.lwjgl.opengl.GL11.GL_MODELVIEW) {
            modelView.glPushMatrix();
        }

        if (!intercept) {
            org.lwjgl.opengl.GL11.glPushMatrix();
        }
    }

    public static void glPopMatrix() {
        if (!intercept) {
            org.lwjgl.opengl.GL11.glPopMatrix();
        }

        if (matrixMode == org.lwjgl.opengl.GL11.GL_MODELVIEW) {
            modelView.glPopMatrix();
        }
    }

    public static void glTranslatef(float x, float y, float z) {
        if (matrixMode == org.lwjgl.opengl.GL11.GL_MODELVIEW) {
            modelView.glTranslatef(x, y, z);
        }

        if (!intercept) {
            org.lwjgl.opengl.GL11.glTranslatef(x, y, z);
        }
    }

    public static void glScalef(float x, float y, float z) {
        if (matrixMode == org.lwjgl.opengl.GL11.GL_MODELVIEW) {
            modelView.glScalef(x, y, z);
        }

        if (!intercept) {
            org.lwjgl.opengl.GL11.glScalef(x, y, z);
        }
    }

    public static void glRotatef(float angle, float x, float y, float z) {
        if (matrixMode == org.lwjgl.opengl.GL11.GL_MODELVIEW) {
            modelView.glRotatef(angle, x, y, z);
        }

        if (!intercept) {
            org.lwjgl.opengl.GL11.glRotatef(angle, x, y, z);
        }
    }

    public static void glColor4ub(byte red, byte green, byte blue, byte alpha) {
        if (intercept) {
            state.glColor4ub(red, green, blue, alpha);
        } else {
            org.lwjgl.opengl.GL11.glColor4ub(red, green, blue, alpha);
        }
    }

    public static void glColorMask(boolean red, boolean green, boolean blue, boolean alpha) {
        if (intercept) {
            throw new UnsupportedOperationException("glColorMask");
        } else {
            org.lwjgl.opengl.GL11.glColorMask(red, green, blue, alpha);
        }
    }

    public static void glTexCoord2f(float s, float t) {
        if (intercept) {
            state.glTexCoord2f(s, t);
        } else {
            org.lwjgl.opengl.GL11.glTexCoord2f(s, t);
        }
    }

    public static void glLineWidth(float width) {
        if (intercept) {
            throw new UnsupportedOperationException("glLineWidth");
        } else {
            org.lwjgl.opengl.GL11.glLineWidth(width);
        }
    }

    public static void glStencilFunc(int func, int ref, int mask) {
        if (intercept) {
            throw new UnsupportedOperationException("glStencilFunc");
        } else {
            org.lwjgl.opengl.GL11.glStencilFunc(func, ref, mask);
        }
    }

    public static void glDeleteTextures(IntBuffer textures) {
        if (intercept) {
            throw new UnsupportedOperationException("glDeleteTextures");
        } else {
            org.lwjgl.opengl.GL11.glDeleteTextures(textures);
        }
    }

    public static void glDeleteTextures(int texture) {
        if (intercept) {
            throw new UnsupportedOperationException("glDeleteTextures");
        } else {
            org.lwjgl.opengl.GL11.glDeleteTextures(texture);
        }
    }

    public static void glPolygonMode(int face, int mode) {
        if (intercept) {
            throw new UnsupportedOperationException("glPolygonMode");
        } else {
            org.lwjgl.opengl.GL11.glPolygonMode(face, mode);
        }
    }

    public static void glGetInteger(int pname, IntBuffer params) {
        if (intercept) {
            throw new UnsupportedOperationException("glGetInteger");
        } else {
            org.lwjgl.opengl.GL11.glGetInteger(pname, params);
        }
    }

    public static int glGetInteger(int pname) {
        if (intercept) {
            throw new UnsupportedOperationException("glGetInteger");
        } else {
            return org.lwjgl.opengl.GL11.glGetInteger(pname);
        }
    }

    public static void glViewport(int x, int y, int width, int height) {
        if (intercept) {
            throw new UnsupportedOperationException("glViewport");
        } else {
            org.lwjgl.opengl.GL11.glViewport(x, y, width, height);
        }
    }

    public static String glGetString(int name) {
        if (intercept) {
            throw new UnsupportedOperationException("glGetString");
        } else {
            return org.lwjgl.opengl.GL11.glGetString(name);
        }
    }

    public static void glFlush() {
        if (intercept) {
            throw new UnsupportedOperationException("glFlush");
        } else {
            org.lwjgl.opengl.GL11.glFlush();
        }
    }

    public static void glFinish() {
        if (intercept) {
            throw new UnsupportedOperationException("glFinish");
        } else {
            org.lwjgl.opengl.GL11.glFinish();
        }
    }

    public static void glScissor(int x, int y, int width, int height) {
        if (intercept) {
            throw new UnsupportedOperationException("glScissor");
        } else {
            org.lwjgl.opengl.GL11.glScissor(x, y, width, height);
        }
    }

    public static void glStencilOp(int fail, int zfail, int zpass) {
        if (intercept) {
            throw new UnsupportedOperationException("glStencilOp");
        } else {
            org.lwjgl.opengl.GL11.glStencilOp(fail, zfail, zpass);
        }
    }

    public static void glAlphaFunc(int func, float ref) {
        if (intercept) {
            throw new UnsupportedOperationException("glAlphaFunc");
        } else {
            org.lwjgl.opengl.GL11.glAlphaFunc(func, ref);
        }
    }

    public static void glReadPixels(int x, int y, int width, int height, int format, int type, FloatBuffer pixels) {
        if (intercept) {
            throw new UnsupportedOperationException("glReadPixels");
        } else {
            org.lwjgl.opengl.GL11.glReadPixels(x, y, width, height, format, type, pixels);
        }
    }

    public static void glGenTextures(IntBuffer textures) {
        if (intercept) {
            throw new UnsupportedOperationException("glGenTextures");
        } else {
            org.lwjgl.opengl.GL11.glGenTextures(textures);
        }
    }

    public static void glTexParameteri(int target, int pname, int param) {
        if (intercept) {
            throw new UnsupportedOperationException("glTexParameteri");
        } else {
            org.lwjgl.opengl.GL11.glTexParameteri(target, pname, param);
        }
    }

    public static void glPointSize(float size) {
        if (intercept) {
            throw new UnsupportedOperationException("glPointSize");
        } else {
            org.lwjgl.opengl.GL11.glPointSize(size);
        }
    }

    public static void glShadeModel(int mode) {
        if (intercept) {
            throw new UnsupportedOperationException("glShadeModel");
        } else {
            org.lwjgl.opengl.GL11.glShadeModel(mode);
        }
    }

    public static void glLight(int light, int pname, FloatBuffer params) {
        if (intercept) {
            throw new UnsupportedOperationException("glLight");
        } else {
            org.lwjgl.opengl.GL11.glLight(light, pname, params);
        }
    }

    public static void glMaterial(int face, int pname, FloatBuffer params) {
        if (intercept) {
            throw new UnsupportedOperationException("glMaterial");
        } else {
            org.lwjgl.opengl.GL11.glMaterial(face, pname, params);
        }
    }

    public static void glMateriali(int face, int pname, int param) {
        if (intercept) {
            throw new UnsupportedOperationException("glMateriali");
        } else {
            org.lwjgl.opengl.GL11.glMateriali(face, pname, param);
        }
    }

    public static void glColor3ub(byte red, byte green, byte blue) {
        if (intercept) {
            throw new UnsupportedOperationException("glColor3ub");
        } else {
            org.lwjgl.opengl.GL11.glColor3ub(red, green, blue);
        }
    }

    public static void glNormal3f(float nx, float ny, float nz) {
        if (intercept) {
            throw new UnsupportedOperationException("glNormal3f");
        } else {
            org.lwjgl.opengl.GL11.glNormal3f(nx, ny, nz);
        }
    }

    public static void glVertex3d(double x, double y, double z) {
        if (intercept) {
            throw new UnsupportedOperationException("glVertex3d");
        } else {
            org.lwjgl.opengl.GL11.glVertex3d(x, y, z);
        }
    }

    public static void glColor3d(double red, double green, double blue) {
        if (intercept) {
            throw new UnsupportedOperationException("glColor3d");
        } else {
            org.lwjgl.opengl.GL11.glColor3d(red, green, blue);
        }
    }

    public static void glTexEnvf(int target, int pname, float param) {
        if (intercept) {
            throw new UnsupportedOperationException("glTexEnvf");
        } else {
            org.lwjgl.opengl.GL11.glTexEnvf(target, pname, param);
        }
    }

    public static void glColor4f(float red, float green, float blue, float alpha) {
        if (intercept) {
            throw new UnsupportedOperationException("glColor4f");
        } else {
            org.lwjgl.opengl.GL11.glColor4f(red, green, blue, alpha);
        }
    }

    public static void glLoadIdentity() {
        if (intercept) {
            throw new UnsupportedOperationException("glLoadIdentity");
        } else {
            org.lwjgl.opengl.GL11.glLoadIdentity();
        }
    }

    public static boolean glIsEnabled(int cap) {
        if (intercept) {
            throw new UnsupportedOperationException("glIsEnabled");
        } else {
            return org.lwjgl.opengl.GL11.glIsEnabled(cap);
        }
    }

    public static void glBindTexture(int target, int texture) {
        if (intercept) {
            state.glBindTexture(target, texture);
        } else {
            org.lwjgl.opengl.GL11.glBindTexture(target, texture);
        }
    }

    public static void glTexImage2D(int target, int level, int internalformat, int width, int height, int border, int format, int type, ByteBuffer pixels) {
        if (intercept) {
            throw new UnsupportedOperationException("glTexImage2D");
        } else {
            org.lwjgl.opengl.GL11.glTexImage2D(target, level, internalformat, width, height, border, format, type, pixels);
        }
    }

    public static void glTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, long pixels_buffer_offset) {
        if (intercept) {
            throw new UnsupportedOperationException("glTexSubImage2D");
        } else {
            org.lwjgl.opengl.GL11.glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixels_buffer_offset);
        }
    }

    public static void glTexCoordPointer(int size, int stride, FloatBuffer pointer) {
        if (intercept) {
            throw new UnsupportedOperationException("glTexCoordPointer");
        } else {
            org.lwjgl.opengl.GL11.glTexCoordPointer(size, stride, pointer);
        }
    }

    public static void glTexCoordPointer(int size, int type, int stride, long pointer_buffer_offset) {
        if (intercept) {
            throw new UnsupportedOperationException("glTexCoordPointer");
        } else {
            org.lwjgl.opengl.GL11.glTexCoordPointer(size, type, stride, pointer_buffer_offset);
        }
    }

    public static void glColorPointer(int size, boolean unsigned, int stride, ByteBuffer pointer) {
        if (intercept) {
            throw new UnsupportedOperationException("glColorPointer");
        } else {
            org.lwjgl.opengl.GL11.glColorPointer(size, unsigned, stride, pointer);
        }
    }

    public static void glColorPointer(int size, int type, int stride, long pointer_buffer_offset) {
        if (intercept) {
            throw new UnsupportedOperationException("glColorPointer");
        } else {
            org.lwjgl.opengl.GL11.glColorPointer(size, type, stride, pointer_buffer_offset);
        }
    }

    public static void glVertex3f(float x, float y, float z) {
        if (intercept) {
            throw new UnsupportedOperationException("glVertex3f");
        } else {
            org.lwjgl.opengl.GL11.glVertex3f(x, y, z);
        }
    }

    public static void glColorMaterial(int face, int mode) {
        if (intercept) {
            throw new UnsupportedOperationException("glColorMaterial");
        } else {
            org.lwjgl.opengl.GL11.glColorMaterial(face, mode);
        }
    }

    public static void glColor3f(float red, float green, float blue) {
        if (intercept) {
            throw new UnsupportedOperationException("glColor3f");
        } else {
            org.lwjgl.opengl.GL11.glColor3f(red, green, blue);
        }
    }

    public static void glDrawArrays(int mode, int first, int count) {
        if (intercept) {
            throw new UnsupportedOperationException("glDrawArrays");
        } else {
            org.lwjgl.opengl.GL11.glDrawArrays(mode, first, count);
        }
    }

    public static void glOrtho(double left, double right, double bottom, double top, double zNear, double zFar) {
        if (intercept) {
            throw new UnsupportedOperationException("glOrtho");
        } else {
            org.lwjgl.opengl.GL11.glOrtho(left, right, bottom, top, zNear, zFar);
        }
    }

    public static void glClear(int mask) {
        if (intercept) {
            throw new UnsupportedOperationException("glClear");
        } else {
            org.lwjgl.opengl.GL11.glClear(mask);
        }
    }

    public static void glClearColor(float red, float green, float blue, float alpha) {
        if (intercept) {
            throw new UnsupportedOperationException("glClearColor");
        } else {
            org.lwjgl.opengl.GL11.glClearColor(red, green, blue, alpha);
        }
    }

    public static void glPushAttrib(int mask) {
        if (intercept) {
            throw new UnsupportedOperationException("glPushAttrib");
        } else {
            org.lwjgl.opengl.GL11.glPushAttrib(mask);
        }
    }

    public static void glPopAttrib() {
        if (intercept) {
            throw new UnsupportedOperationException("glPopAttrib");
        } else {
            org.lwjgl.opengl.GL11.glPopAttrib();
        }
    }

    public static void glCallList(int list) {
        if (intercept) {
            throw new UnsupportedOperationException("glCallList");
        } else {
            org.lwjgl.opengl.GL11.glCallList(list);
        }
    }

    public static int glGenLists(int range) {
        if (intercept) {
            throw new UnsupportedOperationException("glGenLists");
        } else {
            return org.lwjgl.opengl.GL11.glGenLists(range);
        }
    }

    public static void glNewList(int list, int mode) {
        if (intercept) {
            throw new UnsupportedOperationException("glNewList");
        } else {
            org.lwjgl.opengl.GL11.glNewList(list, mode);
        }
    }

    public static void glVertexPointer(int size, int stride, FloatBuffer pointer) {
        if (intercept) {
            throw new UnsupportedOperationException("glVertexPointer");
        } else {
            org.lwjgl.opengl.GL11.glVertexPointer(size, stride, pointer);
        }
    }

    public static void glVertexPointer(int size, int stride, IntBuffer pointer) {
        if (intercept) {
            throw new UnsupportedOperationException("glVertexPointer");
        } else {
            org.lwjgl.opengl.GL11.glVertexPointer(size, stride, pointer);
        }
    }

    public static void glVertexPointer(int size, int type, int stride, long pointer_buffer_offset) {
        if (intercept) {
            throw new UnsupportedOperationException("glVertexPointer");
        } else {
            org.lwjgl.opengl.GL11.glVertexPointer(size, type, stride, pointer_buffer_offset);
        }
    }

    public static void glDeleteLists(int list, int range) {
        if (intercept) {
            throw new UnsupportedOperationException("glDeleteLists");
        } else {
            org.lwjgl.opengl.GL11.glDeleteLists(list, range);
        }
    }

    public static void glInterleavedArrays(int format, int stride, FloatBuffer pointer) {
        if (intercept) {
            throw new UnsupportedOperationException("glInterleavedArrays");
        } else {
            org.lwjgl.opengl.GL11.glInterleavedArrays(format, stride, pointer);
        }
    }

    public static void glArrayElement(int i) {
        if (intercept) {
            throw new UnsupportedOperationException("glArrayElement");
        } else {
            org.lwjgl.opengl.GL11.glArrayElement(i);
        }
    }

    public static void glDrawElements(int mode, IntBuffer indices) {
        if (intercept) {
            throw new UnsupportedOperationException("glDrawElements");
        } else {
            org.lwjgl.opengl.GL11.glDrawElements(mode, indices);
        }
    }

    public static void glTranslated(double x, double y, double z) {
        if (intercept) {
            throw new UnsupportedOperationException("glTranslated");
        } else {
            org.lwjgl.opengl.GL11.glTranslated(x, y, z);
        }
    }

    public static void glEnableClientState(int cap) {
        if (intercept) {
            throw new UnsupportedOperationException("glEnableClientState");
        } else {
            org.lwjgl.opengl.GL11.glEnableClientState(cap);
        }
    }

    public static void glMultMatrix(FloatBuffer m) {
        if (intercept) {
            throw new UnsupportedOperationException("glMultMatrix");
        } else {
            org.lwjgl.opengl.GL11.glMultMatrix(m);
        }
    }

    public static void glEndList() {
        if (intercept) {
            throw new UnsupportedOperationException("glEndList");
        } else {
            org.lwjgl.opengl.GL11.glEndList();
        }
    }

    public static void glDisableClientState(int cap) {
        if (intercept) {
            throw new UnsupportedOperationException("glDisableClientState");
        } else {
            org.lwjgl.opengl.GL11.glDisableClientState(cap);
        }
    }
}