package com.genir.renderer.bridge;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;

import static com.genir.renderer.Debug.asert;
import static com.genir.renderer.bridge.Bridge.*;

public class GL11 {
    private static String unsupportedOperation;

    private static void throwUnsupportedOperation(String operation) {
        unsupportedOperation = operation;
        throw new UnsupportedOperationException("operation");
    }

    // TODO
    public static void glTexParameteri(int target, int pname, int param) {
        if (listManager.isRecording()) {
            listManager.glTexParameteri(target, pname, param);
            return;
        }

        if (!interceptActive) {
            org.lwjgl.opengl.GL11.glTexParameteri(target, pname, param);
        }
    }

    /**
     * Render context.
     */
    public static void glEnable(int cap) {
        if (listManager.isRecording()) {
            listManager.glEnable(cap);
            return;
        }

        renderContext.glEnable(cap);
        stencilManager.glEnable(cap);

        if (!interceptActive) {
            org.lwjgl.opengl.GL11.glEnable(cap);
        }
    }

    public static void glDisable(int cap) {
        if (listManager.isRecording()) {
            listManager.glDisable(cap);
            return;
        }

        renderContext.glDisable(cap);
        stencilManager.glDisable(cap);

        if (!interceptActive) {
            org.lwjgl.opengl.GL11.glDisable(cap);
        }
    }

    public static void glBegin(int mode) {
        if (unsupportedOperation != null) {
            // Throw UnsupportedOperationException again, in case where the initial exception was caught.
            throw new UnsupportedOperationException(unsupportedOperation);
        }

        if (listManager.isRecording()) {
            listManager.glBegin(mode);
            return;
        }

        renderContext.glBegin(mode);

        if (interceptActive) {
            vertexInterceptor.glBegin(mode);
        } else {
            org.lwjgl.opengl.GL11.glBegin(mode);
        }
    }

    public static void glEnd() {
        if (listManager.isRecording()) {
            listManager.glEnd();
            return;
        }

        renderContext.glEnd();

        if (!interceptActive) {
            org.lwjgl.opengl.GL11.glEnd();
        }
    }

    public static void glBindTexture(int target, int texture) {
        if (listManager.isRecording()) {
            listManager.glBindTexture(target, texture);
            return;
        }

        renderContext.glBindTexture(target, texture);

        if (!interceptActive) {
            org.lwjgl.opengl.GL11.glBindTexture(target, texture);
        }
    }

    public static void glBlendFunc(int sfactor, int dfactor) {
        if (listManager.isRecording()) {
            listManager.glBlendFunc(sfactor, dfactor);
            return;
        }

        renderContext.glBlendFunc(sfactor, dfactor);

        if (!interceptActive) {
            org.lwjgl.opengl.GL11.glBlendFunc(sfactor, dfactor);
        }
    }

    public static void glColorMask(boolean red, boolean green, boolean blue, boolean alpha) {
        if (listManager.isRecording()) {
            listManager.glColorMask(red, green, blue, alpha);
            return;
        }

        renderContext.glColorMask(red, green, blue, alpha);

        if (!interceptActive) {
            org.lwjgl.opengl.GL11.glColorMask(red, green, blue, alpha);
        }
    }

    public static void glAlphaFunc(int func, float ref) {
        if (listManager.isRecording()) {
            listManager.glAlphaFunc(func, ref);
            return;
        }

        renderContext.glAlphaFunc(func, ref);

        if (!interceptActive) {
            org.lwjgl.opengl.GL11.glAlphaFunc(func, ref);
        }
    }

    /**
     * Stencil manager.
     */
    public static void glStencilFunc(int func, int ref, int mask) {
        if (listManager.isRecording()) {
            listManager.glStencilFunc(func, ref, mask);
            return;
        }

        stencilManager.glStencilFunc(func, ref, mask);

        if (!interceptActive) {
            org.lwjgl.opengl.GL11.glStencilFunc(func, ref, mask);
        }
    }

    public static void glStencilOp(int fail, int zfail, int zpass) {
        if (listManager.isRecording()) {
            listManager.glStencilOp(fail, zfail, zpass);
            return;
        }

        stencilManager.glStencilOp(fail, zfail, zpass);

        if (!interceptActive) {
            org.lwjgl.opengl.GL11.glStencilOp(fail, zfail, zpass);
        }
    }

    /**
     * Model view.
     */
    public static void glMatrixMode(int mode) {
        if (listManager.isRecording()) {
            listManager.glMatrixMode(mode);
            return;
        }

        modelView.glMatrixMode(mode);

        if (!interceptActive) {
            org.lwjgl.opengl.GL11.glMatrixMode(mode);
        }
    }

    public static void glPushMatrix() {
        if (listManager.isRecording()) {
            listManager.glPushMatrix();
            return;
        }

        modelView.glPushMatrix();

        if (!interceptActive) {
            org.lwjgl.opengl.GL11.glPushMatrix();
        }
    }

    public static void glPopMatrix() {
        if (listManager.isRecording()) {
            listManager.glPopMatrix();
            return;
        }

        modelView.glPopMatrix();

        if (!interceptActive) {
            org.lwjgl.opengl.GL11.glPopMatrix();
        }
    }

    public static void glTranslatef(float x, float y, float z) {
        if (listManager.isRecording()) {
            listManager.glTranslatef(x, y, z);
            return;
        }

        modelView.glTranslatef(x, y, z);

        if (!interceptActive) {
            org.lwjgl.opengl.GL11.glTranslatef(x, y, z);
        }
    }

    public static void glScalef(float x, float y, float z) {
        if (listManager.isRecording()) {
            listManager.glScalef(x, y, z);
            return;
        }

        modelView.glScalef(x, y, z);

        if (!interceptActive) {
            org.lwjgl.opengl.GL11.glScalef(x, y, z);
        }
    }

    public static void glRotatef(float angle, float x, float y, float z) {
        if (listManager.isRecording()) {
            listManager.glRotatef(angle, x, y, z);
            return;
        }

        modelView.glRotatef(angle, x, y, z);

        if (!interceptActive) {
            org.lwjgl.opengl.GL11.glRotatef(angle, x, y, z);
        }
    }

    /**
     * Vertex interceptor.
     */
    public static void glColor4ub(byte red, byte green, byte blue, byte alpha) {
        if (listManager.isRecording()) {
            listManager.glColor4ub(red, green, blue, alpha);
            return;
        }

        if (interceptActive) {
            vertexInterceptor.glColor4ub(red, green, blue, alpha);
        } else {
            org.lwjgl.opengl.GL11.glColor4ub(red, green, blue, alpha);
        }
    }

    public static void glColor3d(double red, double green, double blue) {
        if (listManager.isRecording()) {
            listManager.glColor3d(red, green, blue);
            return;
        }

        if (interceptActive) {
            vertexInterceptor.glColor3d(red, green, blue);
        } else {
            org.lwjgl.opengl.GL11.glColor3d(red, green, blue);
        }
    }

    public static void glTexCoord2f(float s, float t) {
        if (listManager.isRecording()) {
            listManager.glTexCoord2f(s, t);
            return;
        }

        if (interceptActive) {
            vertexInterceptor.glTexCoord2f(s, t);
        } else {
            org.lwjgl.opengl.GL11.glTexCoord2f(s, t);
        }
    }

    public static void glVertex2f(float x, float y) {
        if (listManager.isRecording()) {
            listManager.glVertex2f(x, y);
            return;
        }

        if (interceptActive) {
            vertexInterceptor.glVertex2f(x, y);
        } else {
            org.lwjgl.opengl.GL11.glVertex2f(x, y);
        }
    }

    public static void glVertex3d(double x, double y, double z) {
        if (listManager.isRecording()) {
            listManager.glVertex3d(x, y, z);
            return;
        }

        if (interceptActive) {
            vertexInterceptor.glVertex3d(x, y, z);
        } else {
            org.lwjgl.opengl.GL11.glVertex3d(x, y, z);
        }
    }

    /**
     * Array interceptor.
     */
    public static void glColorPointer(int size, boolean unsigned, int stride, ByteBuffer pointer) {
        if (interceptActive) {
            arrayInterceptor.glColorPointer(size, unsigned, stride, pointer);
        } else {
            org.lwjgl.opengl.GL11.glColorPointer(size, unsigned, stride, pointer);
        }
    }

    public static void glTexCoordPointer(int size, int stride, FloatBuffer pointer) {
        if (interceptActive) {
            arrayInterceptor.glTexCoordPointer(size, stride, pointer);
        } else {
            org.lwjgl.opengl.GL11.glTexCoordPointer(size, stride, pointer);
        }
    }

    public static void glVertexPointer(int size, int stride, FloatBuffer pointer) {
        if (interceptActive) {
            arrayInterceptor.glVertexPointer(size, stride, pointer);
        } else {
            org.lwjgl.opengl.GL11.glVertexPointer(size, stride, pointer);
        }
    }

    public static void glDrawArrays(int mode, int first, int count) {
        if (listManager.isRecording()) {
            listManager.glDrawArrays(mode, first, count);
            return;
        }

        renderContext.glDrawArrays(mode, first, count);

        if (interceptActive) {
            arrayInterceptor.glDrawArrays(mode, first, count);
        } else {
            org.lwjgl.opengl.GL11.glDrawArrays(mode, first, count);
        }
    }

    /**
     * Object lists.
     */
    public static void glNewList(int list, int mode) {
        if (interceptActive) {
            listManager.glNewList(list, mode);
        } else {
            org.lwjgl.opengl.GL11.glNewList(list, mode);
        }
    }

    public static void glEndList() {
        if (interceptActive) {
            listManager.glEndList();
        } else {
            org.lwjgl.opengl.GL11.glEndList();
        }
    }

    public static void glCallList(int list) {
        if (interceptActive) {
            listManager.glCallList(list);
        } else {
            org.lwjgl.opengl.GL11.glCallList(list);
        }
    }

    /**
     * No op
     */
    public static void glEnableClientState(int cap) {
        if (interceptActive) {
            asert(cap == org.lwjgl.opengl.GL11.GL_VERTEX_ARRAY
                    || cap == org.lwjgl.opengl.GL11.GL_COLOR_ARRAY
                    || cap == org.lwjgl.opengl.GL11.GL_TEXTURE_COORD_ARRAY);
        } else {
            org.lwjgl.opengl.GL11.glEnableClientState(cap);
        }
    }

    public static void glDisableClientState(int cap) {
        if (!interceptActive) {
            org.lwjgl.opengl.GL11.glDisableClientState(cap);
        }
    }

    /**
     * UNSUPPORTED.
     */
    public static void glHint(int target, int mode) {
        if (listManager.isRecording()) {
            listManager.glHint(target, mode);
            return;
        }

        if (interceptActive) {
            throwUnsupportedOperation("glHint");
        } else {
            org.lwjgl.opengl.GL11.glHint(target, mode);
        }
    }

    public static void glLineWidth(float width) {
        if (listManager.isRecording()) {
            listManager.glLineWidth(width);
            return;
        }

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
        if (listManager.isRecording()) {
            listManager.glPolygonMode(face, mode);
            return;
        }

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
        if (listManager.isRecording()) {
            listManager.glViewport(x, y, width, height);
            return;
        }

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
        if (listManager.isRecording()) {
            listManager.glScissor(x, y, width, height);
            return;
        }

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
        if (listManager.isRecording()) {
            listManager.glPointSize(size);
            return;
        }

        if (interceptActive) {
            throwUnsupportedOperation("glPointSize");
        } else {
            org.lwjgl.opengl.GL11.glPointSize(size);
        }
    }

    public static void glShadeModel(int mode) {
        if (listManager.isRecording()) {
            listManager.glShadeModel(mode);
            return;
        }

        if (interceptActive) {
            throwUnsupportedOperation("glShadeModel");
        } else {
            org.lwjgl.opengl.GL11.glShadeModel(mode);
        }
    }

    public static void glLight(int light, int pname, FloatBuffer params) {
        if (listManager.isRecording()) {
            listManager.glLight(light, pname, params);
            return;
        }

        if (interceptActive) {
            throwUnsupportedOperation("glLight");
        } else {
            org.lwjgl.opengl.GL11.glLight(light, pname, params);
        }
    }

    public static void glMaterial(int face, int pname, FloatBuffer params) {
        if (listManager.isRecording()) {
            listManager.glMaterial(face, pname, params);
            return;
        }

        if (interceptActive) {
            throwUnsupportedOperation("glMaterial");
        } else {
            org.lwjgl.opengl.GL11.glMaterial(face, pname, params);
        }
    }

    public static void glMateriali(int face, int pname, int param) {
        if (listManager.isRecording()) {
            listManager.glMateriali(face, pname, param);
            return;
        }

        if (interceptActive) {
            throwUnsupportedOperation("glMateriali");
        } else {
            org.lwjgl.opengl.GL11.glMateriali(face, pname, param);
        }
    }

    public static void glColor3ub(byte red, byte green, byte blue) {
        if (listManager.isRecording()) {
            listManager.glColor3ub(red, green, blue);
            return;
        }

        if (interceptActive) {
            throwUnsupportedOperation("glColor3ub");
        } else {
            org.lwjgl.opengl.GL11.glColor3ub(red, green, blue);
        }
    }

    public static void glNormal3f(float nx, float ny, float nz) {
        if (listManager.isRecording()) {
            listManager.glNormal3f(nx, ny, nz);
            return;
        }

        if (interceptActive) {
            throwUnsupportedOperation("glNormal3f");
        } else {
            org.lwjgl.opengl.GL11.glNormal3f(nx, ny, nz);
        }
    }

    public static void glTexEnvf(int target, int pname, float param) {
        if (listManager.isRecording()) {
            listManager.glTexEnvf(target, pname, param);
            return;
        }

        if (interceptActive) {
            throwUnsupportedOperation("glTexEnvf");
        } else {
            org.lwjgl.opengl.GL11.glTexEnvf(target, pname, param);
        }
    }

    public static void glColor4f(float red, float green, float blue, float alpha) {
        if (listManager.isRecording()) {
            listManager.glColor4f(red, green, blue, alpha);
            return;
        }

        if (interceptActive) {
            throwUnsupportedOperation("glColor4f");
        } else {
            org.lwjgl.opengl.GL11.glColor4f(red, green, blue, alpha);
        }
    }

    public static void glLoadIdentity() {
        if (listManager.isRecording()) {
            listManager.glLoadIdentity();
            return;
        }

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
        if (listManager.isRecording()) {
            listManager.glTexImage2D(target, level, internalformat, width, height, border, format, type, pixels);
            return;
        }

        if (interceptActive) {
            throwUnsupportedOperation("glTexImage2D");
        } else {
            org.lwjgl.opengl.GL11.glTexImage2D(target, level, internalformat, width, height, border, format, type, pixels);
        }
    }

    public static void glTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, ByteBuffer pixels) {
        if (listManager.isRecording()) {
            listManager.glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixels);
            return;
        }

        if (interceptActive) {
            throwUnsupportedOperation("glTexSubImage2D");
        } else {
            org.lwjgl.opengl.GL11.glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixels);
        }
    }

    public static void glTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, long pixels_buffer_offset) {
        if (listManager.isRecording()) {
            listManager.glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixels_buffer_offset);
            return;
        }

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
        if (listManager.isRecording()) {
            listManager.glVertex3f(x, y, z);
            return;
        }

        if (interceptActive) {
            throwUnsupportedOperation("glVertex3f");
        } else {
            org.lwjgl.opengl.GL11.glVertex3f(x, y, z);
        }
    }

    public static void glColorMaterial(int face, int mode) {
        if (listManager.isRecording()) {
            listManager.glColorMaterial(face, mode);
            return;
        }

        if (interceptActive) {
            throwUnsupportedOperation("glColorMaterial");
        } else {
            org.lwjgl.opengl.GL11.glColorMaterial(face, mode);
        }
    }

    public static void glColor3f(float red, float green, float blue) {
        if (listManager.isRecording()) {
            listManager.glColor3f(red, green, blue);
            return;
        }

        if (interceptActive) {
            throwUnsupportedOperation("glColor3f");
        } else {
            org.lwjgl.opengl.GL11.glColor3f(red, green, blue);
        }
    }

    public static void glOrtho(double left, double right, double bottom, double top, double zNear, double zFar) {
        if (listManager.isRecording()) {
            listManager.glOrtho(left, right, bottom, top, zNear, zFar);
            return;
        }

        if (interceptActive) {
            throwUnsupportedOperation("glOrtho");
        } else {
            org.lwjgl.opengl.GL11.glOrtho(left, right, bottom, top, zNear, zFar);
        }
    }

    public static void glClear(int mask) {
        if (listManager.isRecording()) {
            listManager.glClear(mask);
            return;
        }

        if (interceptActive) {
            throwUnsupportedOperation("glClear");
        } else {
            org.lwjgl.opengl.GL11.glClear(mask);
        }
    }

    public static void glClearColor(float red, float green, float blue, float alpha) {
        if (listManager.isRecording()) {
            listManager.glClearColor(red, green, blue, alpha);
            return;
        }

        if (interceptActive) {
            throwUnsupportedOperation("glClearColor");
        } else {
            org.lwjgl.opengl.GL11.glClearColor(red, green, blue, alpha);
        }
    }

    public static void glPushAttrib(int mask) {
        if (listManager.isRecording()) {
            listManager.glPushAttrib(mask);
            return;
        }

        if (interceptActive) {
            throwUnsupportedOperation("glPushAttrib");
        } else {
            org.lwjgl.opengl.GL11.glPushAttrib(mask);
        }
    }

    public static void glPopAttrib() {
        if (listManager.isRecording()) {
            listManager.glPopAttrib();
            return;
        }

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
        if (listManager.isRecording()) {
            listManager.glArrayElement(i);
            return;
        }

        if (interceptActive) {
            throwUnsupportedOperation("glArrayElement");
        } else {
            org.lwjgl.opengl.GL11.glArrayElement(i);
        }
    }

    public static void glDrawElements(int mode, IntBuffer indices) {
        if (listManager.isRecording()) {
            listManager.glDrawElements(mode, indices);
            return;
        }

        if (interceptActive) {
            throwUnsupportedOperation("glDrawElements");
        } else {
            org.lwjgl.opengl.GL11.glDrawElements(mode, indices);
        }
    }

    public static void glTranslated(double x, double y, double z) {
        if (listManager.isRecording()) {
            listManager.glTranslated(x, y, z);
            return;
        }

        if (interceptActive) {
            throwUnsupportedOperation("glTranslated");
        } else {
            org.lwjgl.opengl.GL11.glTranslated(x, y, z);
        }
    }

    public static void glMultMatrix(FloatBuffer m) {
        if (listManager.isRecording()) {
            listManager.glMultMatrix(m);
            return;
        }

        if (interceptActive) {
            throwUnsupportedOperation("glMultMatrix");
        } else {
            org.lwjgl.opengl.GL11.glMultMatrix(m);
        }
    }
}