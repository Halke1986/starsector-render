package com.genir.renderer.bridge;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;

import static com.genir.renderer.bridge.Bridge.*;

public class GL11 {
    private static String unsupportedOperation;

    private static void throwUnsupportedOperation(String operation) {
        unsupportedOperation = operation;
        throw new UnsupportedOperationException("operation");
    }

    /**
     * Render context.
     */
    public static void glEnable(int cap) {
        renderContext.glEnable(cap);

        if (!interceptActive) {
            org.lwjgl.opengl.GL11.glEnable(cap);
        }
    }

    public static void glDisable(int cap) {
        renderContext.glDisable(cap);

        if (!interceptActive) {
            org.lwjgl.opengl.GL11.glDisable(cap);
        }
    }

    public static void glBegin(int mode) {
        if (unsupportedOperation != null) {
            // Throw UnsupportedOperationException again, in case where the initial exception was caught.
            throw new UnsupportedOperationException(unsupportedOperation);
        }

        renderContext.glBegin(mode);

        if (!interceptActive) {
            org.lwjgl.opengl.GL11.glBegin(mode);
        }
    }

    public static void glEnd() {
        renderContext.glEnd();

        if (!interceptActive) {
            org.lwjgl.opengl.GL11.glEnd();
        }
    }

    public static void glBindTexture(int target, int texture) {
        renderContext.glBindTexture(target, texture);

        if (!interceptActive) {
            org.lwjgl.opengl.GL11.glBindTexture(target, texture);
        }
    }

    public static void glBlendFunc(int sfactor, int dfactor) {
        renderContext.glBlendFunc(sfactor, dfactor);

        if (!interceptActive) {
            org.lwjgl.opengl.GL11.glBlendFunc(sfactor, dfactor);
        }
    }

    /**
     * Model view.
     */
    public static void glMatrixMode(int mode) {
        modelView.glMatrixMode(mode);

        if (!interceptActive) {
            org.lwjgl.opengl.GL11.glMatrixMode(mode);
        }
    }

    public static void glPushMatrix() {
        modelView.glPushMatrix();

        if (!interceptActive) {
            org.lwjgl.opengl.GL11.glPushMatrix();
        }
    }

    public static void glPopMatrix() {
        modelView.glPopMatrix();

        if (!interceptActive) {
            org.lwjgl.opengl.GL11.glPopMatrix();
        }
    }

    public static void glTranslatef(float x, float y, float z) {
        modelView.glTranslatef(x, y, z);

        if (!interceptActive) {
            org.lwjgl.opengl.GL11.glTranslatef(x, y, z);
        }
    }

    public static void glScalef(float x, float y, float z) {
        modelView.glScalef(x, y, z);

        if (!interceptActive) {
            org.lwjgl.opengl.GL11.glScalef(x, y, z);
        }
    }

    public static void glRotatef(float angle, float x, float y, float z) {
        modelView.glRotatef(angle, x, y, z);

        if (!interceptActive) {
            org.lwjgl.opengl.GL11.glRotatef(angle, x, y, z);
        }
    }

    /**
     * Vertex interceptor.
     */
    public static void glColor4ub(byte red, byte green, byte blue, byte alpha) {
        if (interceptActive) {
            vertexInterceptor.glColor4ub(red, green, blue, alpha);
        } else {
            org.lwjgl.opengl.GL11.glColor4ub(red, green, blue, alpha);
        }
    }

    public static void glTexCoord2f(float s, float t) {
        if (interceptActive) {
            vertexInterceptor.glTexCoord2f(s, t);
        } else {
            org.lwjgl.opengl.GL11.glTexCoord2f(s, t);
        }
    }

    public static void glVertex2f(float x, float y) {
        if (interceptActive) {
            vertexInterceptor.glVertex2f(x, y);
        } else {
            org.lwjgl.opengl.GL11.glVertex2f(x, y);
        }
    }

    /**
     * UNSUPPORTED.
     */
    public static void glAlphaFunc(int func, float ref) {
        if (interceptActive) {
            throwUnsupportedOperation("glAlphaFunc");
        } else {
            org.lwjgl.opengl.GL11.glAlphaFunc(func, ref);
        }
    }

    public static void glColorMask(boolean red, boolean green, boolean blue, boolean alpha) {
        if (interceptActive) {
            throwUnsupportedOperation("glColorMask");
        } else {
            org.lwjgl.opengl.GL11.glColorMask(red, green, blue, alpha);
        }
    }

    public static void glVertex3d(double x, double y, double z) {
        if (interceptActive) {
            throwUnsupportedOperation("glVertex3d");
        } else {
            org.lwjgl.opengl.GL11.glVertex3d(x, y, z);
        }
    }

    public static void glColor3d(double red, double green, double blue) {
        if (interceptActive) {
            throwUnsupportedOperation("glColor3d");
        } else {
            org.lwjgl.opengl.GL11.glColor3d(red, green, blue);
        }
    }

    public static void glTexParameteri(int target, int pname, int param) {
        if (interceptActive) {
            throwUnsupportedOperation("glTexParameteri");
        } else {
            org.lwjgl.opengl.GL11.glTexParameteri(target, pname, param);
        }
    }

    public static void glColorPointer(int size, boolean unsigned, int stride, ByteBuffer pointer) {
        if (interceptActive) {
            throwUnsupportedOperation("glColorPointer");
        } else {
            org.lwjgl.opengl.GL11.glColorPointer(size, unsigned, stride, pointer);
        }
    }

    public static void glTexCoordPointer(int size, int stride, FloatBuffer pointer) {
        if (interceptActive) {
            throwUnsupportedOperation("glTexCoordPointer");
        } else {
            org.lwjgl.opengl.GL11.glTexCoordPointer(size, stride, pointer);
        }
    }

    public static void glVertexPointer(int size, int stride, FloatBuffer pointer) {
        if (interceptActive) {
            throwUnsupportedOperation("glVertexPointer");
        } else {
            org.lwjgl.opengl.GL11.glVertexPointer(size, stride, pointer);
        }
    }

    public static void glDrawArrays(int mode, int first, int count) {
        if (interceptActive) {
            throwUnsupportedOperation("glDrawArrays");
        } else {
            org.lwjgl.opengl.GL11.glDrawArrays(mode, first, count);
        }
    }

    public static void glEnableClientState(int cap) {
        if (interceptActive) {
            throwUnsupportedOperation("glEnableClientState");
        } else {
            org.lwjgl.opengl.GL11.glEnableClientState(cap);
        }
    }

    public static void glDisableClientState(int cap) {
        if (interceptActive) {
            throwUnsupportedOperation("glDisableClientState");
        } else {
            org.lwjgl.opengl.GL11.glDisableClientState(cap);
        }
    }

    public static void glStencilFunc(int func, int ref, int mask) {
        if (interceptActive) {
            throwUnsupportedOperation("glStencilFunc");
        } else {
            org.lwjgl.opengl.GL11.glStencilFunc(func, ref, mask);
        }
    }

    public static void glStencilOp(int fail, int zfail, int zpass) {
        if (interceptActive) {
            throwUnsupportedOperation("glStencilOp");
        } else {
            org.lwjgl.opengl.GL11.glStencilOp(fail, zfail, zpass);
        }
    }

    public static void glNewList(int list, int mode) {
        if (interceptActive) {
            throwUnsupportedOperation("glNewList");
        } else {
            org.lwjgl.opengl.GL11.glNewList(list, mode);
        }
    }

    public static void glEndList() {
        if (interceptActive) {
            throwUnsupportedOperation("glEndList");
        } else {
            org.lwjgl.opengl.GL11.glEndList();
        }
    }

    public static void glCallList(int list) {
        if (interceptActive) {
            throwUnsupportedOperation("glCallList");
        } else {
            org.lwjgl.opengl.GL11.glCallList(list);
        }
    }

    public static void glHint(int target, int mode) {
        if (interceptActive) {
            throwUnsupportedOperation("glHint");
        } else {
            org.lwjgl.opengl.GL11.glHint(target, mode);
        }
    }

    public static void glLineWidth(float width) {
        if (interceptActive) {
            throwUnsupportedOperation("glLineWidth");
        } else {
            org.lwjgl.opengl.GL11.glLineWidth(width);
        }
    }

    public static void glDeleteTextures(IntBuffer textures) {
        if (interceptActive) {
            throwUnsupportedOperation("glDeleteTextures");
        } else {
            org.lwjgl.opengl.GL11.glDeleteTextures(textures);
        }
    }

    public static void glDeleteTextures(int texture) {
        if (interceptActive) {
            throwUnsupportedOperation("glDeleteTextures");
        } else {
            org.lwjgl.opengl.GL11.glDeleteTextures(texture);
        }
    }

    public static void glPolygonMode(int face, int mode) {
        if (interceptActive) {
            throwUnsupportedOperation("glPolygonMode");
        } else {
            org.lwjgl.opengl.GL11.glPolygonMode(face, mode);
        }
    }

    public static void glGetInteger(int pname, IntBuffer params) {
        if (interceptActive) {
            throwUnsupportedOperation("glGetInteger");
        } else {
            org.lwjgl.opengl.GL11.glGetInteger(pname, params);
        }
    }

    public static int glGetInteger(int pname) {
        if (interceptActive) {
            throwUnsupportedOperation("glGetInteger");
            return 0;
        } else {
            return org.lwjgl.opengl.GL11.glGetInteger(pname);
        }
    }

    public static void glViewport(int x, int y, int width, int height) {
        if (interceptActive) {
            throwUnsupportedOperation("glViewport");
        } else {
            org.lwjgl.opengl.GL11.glViewport(x, y, width, height);
        }
    }

    public static String glGetString(int name) {
        if (interceptActive) {
            throwUnsupportedOperation("glGetString");
            return "";
        } else {
            return org.lwjgl.opengl.GL11.glGetString(name);
        }
    }

    public static void glFlush() {
        if (interceptActive) {
            throwUnsupportedOperation("glFlush");
        } else {
            org.lwjgl.opengl.GL11.glFlush();
        }
    }

    public static void glFinish() {
        if (interceptActive) {
            throwUnsupportedOperation("glFinish");
        } else {
            org.lwjgl.opengl.GL11.glFinish();
        }
    }

    public static void glScissor(int x, int y, int width, int height) {
        if (interceptActive) {
            throwUnsupportedOperation("glScissor");
        } else {
            org.lwjgl.opengl.GL11.glScissor(x, y, width, height);
        }
    }

    public static void glReadPixels(int x, int y, int width, int height, int format, int type, FloatBuffer pixels) {
        if (interceptActive) {
            throwUnsupportedOperation("glReadPixels");
        } else {
            org.lwjgl.opengl.GL11.glReadPixels(x, y, width, height, format, type, pixels);
        }
    }

    public static void glGenTextures(IntBuffer textures) {
        if (interceptActive) {
            throwUnsupportedOperation("glGenTextures");
        } else {
            org.lwjgl.opengl.GL11.glGenTextures(textures);
        }
    }

    public static void glPointSize(float size) {
        if (interceptActive) {
            throwUnsupportedOperation("glPointSize");
        } else {
            org.lwjgl.opengl.GL11.glPointSize(size);
        }
    }

    public static void glShadeModel(int mode) {
        if (interceptActive) {
            throwUnsupportedOperation("glShadeModel");
        } else {
            org.lwjgl.opengl.GL11.glShadeModel(mode);
        }
    }

    public static void glLight(int light, int pname, FloatBuffer params) {
        if (interceptActive) {
            throwUnsupportedOperation("glLight");
        } else {
            org.lwjgl.opengl.GL11.glLight(light, pname, params);
        }
    }

    public static void glMaterial(int face, int pname, FloatBuffer params) {
        if (interceptActive) {
            throwUnsupportedOperation("glMaterial");
        } else {
            org.lwjgl.opengl.GL11.glMaterial(face, pname, params);
        }
    }

    public static void glMateriali(int face, int pname, int param) {
        if (interceptActive) {
            throwUnsupportedOperation("glMateriali");
        } else {
            org.lwjgl.opengl.GL11.glMateriali(face, pname, param);
        }
    }

    public static void glColor3ub(byte red, byte green, byte blue) {
        if (interceptActive) {
            throwUnsupportedOperation("glColor3ub");
        } else {
            org.lwjgl.opengl.GL11.glColor3ub(red, green, blue);
        }
    }

    public static void glNormal3f(float nx, float ny, float nz) {
        if (interceptActive) {
            throwUnsupportedOperation("glNormal3f");
        } else {
            org.lwjgl.opengl.GL11.glNormal3f(nx, ny, nz);
        }
    }

    public static void glTexEnvf(int target, int pname, float param) {
        if (interceptActive) {
            throwUnsupportedOperation("glTexEnvf");
        } else {
            org.lwjgl.opengl.GL11.glTexEnvf(target, pname, param);
        }
    }

    public static void glColor4f(float red, float green, float blue, float alpha) {
        if (interceptActive) {
            throwUnsupportedOperation("glColor4f");
        } else {
            org.lwjgl.opengl.GL11.glColor4f(red, green, blue, alpha);
        }
    }

    public static void glLoadIdentity() {
        if (interceptActive) {
            throwUnsupportedOperation("glLoadIdentity");
        } else {
            org.lwjgl.opengl.GL11.glLoadIdentity();
        }
    }

    public static boolean glIsEnabled(int cap) {
        if (interceptActive) {
            throwUnsupportedOperation("glIsEnabled");
            return false;
        } else {
            return org.lwjgl.opengl.GL11.glIsEnabled(cap);
        }
    }

    public static void glTexImage2D(int target, int level, int internalformat, int width, int height, int border, int format, int type, ByteBuffer pixels) {
        if (interceptActive) {
            throwUnsupportedOperation("glTexImage2D");
        } else {
            org.lwjgl.opengl.GL11.glTexImage2D(target, level, internalformat, width, height, border, format, type, pixels);
        }
    }

    public static void glTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, ByteBuffer pixels) {
        if (interceptActive) {
            throwUnsupportedOperation("glTexSubImage2D");
        } else {
            org.lwjgl.opengl.GL11.glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixels);
        }
    }

    public static void glTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, long pixels_buffer_offset) {
        if (interceptActive) {
            throwUnsupportedOperation("glTexSubImage2D");
        } else {
            org.lwjgl.opengl.GL11.glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixels_buffer_offset);
        }
    }

    public static void glTexCoordPointer(int size, int type, int stride, long pointer_buffer_offset) {
        if (interceptActive) {
            throwUnsupportedOperation("glTexCoordPointer");
        } else {
            org.lwjgl.opengl.GL11.glTexCoordPointer(size, type, stride, pointer_buffer_offset);
        }
    }

    public static void glColorPointer(int size, int type, int stride, long pointer_buffer_offset) {
        if (interceptActive) {
            throwUnsupportedOperation("glColorPointer");
        } else {
            org.lwjgl.opengl.GL11.glColorPointer(size, type, stride, pointer_buffer_offset);
        }
    }

    public static void glVertex3f(float x, float y, float z) {
        if (interceptActive) {
            throwUnsupportedOperation("glVertex3f");
        } else {
            org.lwjgl.opengl.GL11.glVertex3f(x, y, z);
        }
    }

    public static void glColorMaterial(int face, int mode) {
        if (interceptActive) {
            throwUnsupportedOperation("glColorMaterial");
        } else {
            org.lwjgl.opengl.GL11.glColorMaterial(face, mode);
        }
    }

    public static void glColor3f(float red, float green, float blue) {
        if (interceptActive) {
            throwUnsupportedOperation("glColor3f");
        } else {
            org.lwjgl.opengl.GL11.glColor3f(red, green, blue);
        }
    }

    public static void glOrtho(double left, double right, double bottom, double top, double zNear, double zFar) {
        if (interceptActive) {
            throwUnsupportedOperation("glOrtho");
        } else {
            org.lwjgl.opengl.GL11.glOrtho(left, right, bottom, top, zNear, zFar);
        }
    }

    public static void glClear(int mask) {
        if (interceptActive) {
            throwUnsupportedOperation("glClear");
        } else {
            org.lwjgl.opengl.GL11.glClear(mask);
        }
    }

    public static void glClearColor(float red, float green, float blue, float alpha) {
        if (interceptActive) {
            throwUnsupportedOperation("glClearColor");
        } else {
            org.lwjgl.opengl.GL11.glClearColor(red, green, blue, alpha);
        }
    }

    public static void glPushAttrib(int mask) {
        if (interceptActive) {
            throwUnsupportedOperation("glPushAttrib");
        } else {
            org.lwjgl.opengl.GL11.glPushAttrib(mask);
        }
    }

    public static void glPopAttrib() {
        if (interceptActive) {
            throwUnsupportedOperation("glPopAttrib");
        } else {
            org.lwjgl.opengl.GL11.glPopAttrib();
        }
    }

    public static int glGenLists(int range) {
        if (interceptActive) {
            throwUnsupportedOperation("glGenLists");
            return 0;
        } else {
            return org.lwjgl.opengl.GL11.glGenLists(range);
        }
    }

    public static void glVertexPointer(int size, int stride, IntBuffer pointer) {
        if (interceptActive) {
            throwUnsupportedOperation("glVertexPointer");
        } else {
            org.lwjgl.opengl.GL11.glVertexPointer(size, stride, pointer);
        }
    }

    public static void glVertexPointer(int size, int type, int stride, long pointer_buffer_offset) {
        if (interceptActive) {
            throwUnsupportedOperation("glVertexPointer");
        } else {
            org.lwjgl.opengl.GL11.glVertexPointer(size, type, stride, pointer_buffer_offset);
        }
    }

    public static void glDeleteLists(int list, int range) {
        if (interceptActive) {
            throwUnsupportedOperation("glDeleteLists");
        } else {
            org.lwjgl.opengl.GL11.glDeleteLists(list, range);
        }
    }

    public static void glInterleavedArrays(int format, int stride, FloatBuffer pointer) {
        if (interceptActive) {
            throwUnsupportedOperation("glInterleavedArrays");
        } else {
            org.lwjgl.opengl.GL11.glInterleavedArrays(format, stride, pointer);
        }
    }

    public static void glArrayElement(int i) {
        if (interceptActive) {
            throwUnsupportedOperation("glArrayElement");
        } else {
            org.lwjgl.opengl.GL11.glArrayElement(i);
        }
    }

    public static void glDrawElements(int mode, IntBuffer indices) {
        if (interceptActive) {
            throwUnsupportedOperation("glDrawElements");
        } else {
            org.lwjgl.opengl.GL11.glDrawElements(mode, indices);
        }
    }

    public static void glTranslated(double x, double y, double z) {
        if (interceptActive) {
            throwUnsupportedOperation("glTranslated");
        } else {
            org.lwjgl.opengl.GL11.glTranslated(x, y, z);
        }
    }

    public static void glMultMatrix(FloatBuffer m) {
        if (interceptActive) {
            throwUnsupportedOperation("glMultMatrix");
        } else {
            org.lwjgl.opengl.GL11.glMultMatrix(m);
        }
    }
}