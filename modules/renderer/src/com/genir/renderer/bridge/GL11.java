package com.genir.renderer.bridge;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;

import static com.genir.renderer.bridge.Bridge.*;

public class GL11 {
    /**
     * Render context.
     */
    public static void glEnable(int cap) {
        if (listManager.isRecording()) {
            listManager.recordGlEnable(cap);
            return;
        }

        renderContext.glEnable(cap);

        if (!interceptActive) {
            org.lwjgl.opengl.GL11.glEnable(cap);
        }
    }

    public static void glDisable(int cap) {
        if (listManager.isRecording()) {
            listManager.recordGlDisable(cap);
            return;
        }

        renderContext.glDisable(cap);

        if (!interceptActive) {
            org.lwjgl.opengl.GL11.glDisable(cap);
        }
    }

    public static void glBegin(int mode) {
        if (listManager.isRecording()) {
            listManager.recordGlBegin(mode);
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
            listManager.recordGlEnd();
            return;
        }

        renderContext.glEnd();

        if (!interceptActive) {
            org.lwjgl.opengl.GL11.glEnd();
        }
    }

    public static void glBindTexture(int target, int texture) {
        if (listManager.isRecording()) {
            listManager.recordGlBindTexture(target, texture);
            return;
        }

        renderContext.glBindTexture(target, texture);

        if (!interceptActive) {
            org.lwjgl.opengl.GL11.glBindTexture(target, texture);
        }
    }

    public static void glBlendFunc(int sfactor, int dfactor) {
        if (listManager.isRecording()) {
            listManager.recordGlBlendFunc(sfactor, dfactor);
            return;
        }

        renderContext.glBlendFunc(sfactor, dfactor);

        if (!interceptActive) {
            org.lwjgl.opengl.GL11.glBlendFunc(sfactor, dfactor);
        }
    }

    public static void glStencilFunc(int func, int ref, int mask) {
        if (listManager.isRecording()) {
            listManager.glStencilFunc(func, ref, mask);
            return;
        }

        renderContext.glStencilFunc(func, ref, mask);

        if (!interceptActive) {
            org.lwjgl.opengl.GL11.glStencilFunc(func, ref, mask);
        }
    }

    public static void glStencilOp(int fail, int zfail, int zpass) {
        if (listManager.isRecording()) {
            listManager.glStencilOp(fail, zfail, zpass);
            return;
        }

        renderContext.glStencilOp(fail, zfail, zpass);

        if (!interceptActive) {
            org.lwjgl.opengl.GL11.glStencilOp(fail, zfail, zpass);
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
     * Model view.
     */
    public static void glMatrixMode(int mode) {
        if (listManager.isRecording()) {
            listManager.recordGlMatrixMode(mode);
            return;
        }

        modelView.glMatrixMode(mode);

        if (!interceptActive) {
            org.lwjgl.opengl.GL11.glMatrixMode(mode);
        }
    }

    public static void glPushMatrix() {
        if (listManager.isRecording()) {
            listManager.recordGlPushMatrix();
            return;
        }

        modelView.glPushMatrix();

        if (!interceptActive) {
            org.lwjgl.opengl.GL11.glPushMatrix();
        }
    }

    public static void glPopMatrix() {
        if (listManager.isRecording()) {
            listManager.recordGlPopMatrix();
            return;
        }

        modelView.glPopMatrix();

        if (!interceptActive) {
            org.lwjgl.opengl.GL11.glPopMatrix();
        }
    }

    public static void glTranslatef(float x, float y, float z) {
        if (listManager.isRecording()) {
            listManager.recordGlTranslatef(x, y, z);
            return;
        }

        modelView.glTranslatef(x, y, z);

        if (!interceptActive) {
            org.lwjgl.opengl.GL11.glTranslatef(x, y, z);
        }
    }

    public static void glScalef(float x, float y, float z) {
        if (listManager.isRecording()) {
            listManager.recordGlScalef(x, y, z);
            return;
        }

        modelView.glScalef(x, y, z);

        if (!interceptActive) {
            org.lwjgl.opengl.GL11.glScalef(x, y, z);
        }
    }

    public static void glRotatef(float angle, float x, float y, float z) {
        if (listManager.isRecording()) {
            listManager.recordGlRotatef(angle, x, y, z);
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
    public static void glVertex2f(float x, float y) {
        if (listManager.isRecording()) {
            listManager.recordGlVertex2f(x, y);
        } else if (interceptActive) {
            vertexInterceptor.glVertex2f(x, y);
        } else {
            org.lwjgl.opengl.GL11.glVertex2f(x, y);
        }
    }

    public static void glTexCoord2f(float s, float t) {
        if (listManager.isRecording()) {
            listManager.recordGlTexCoord2f(s, t);
        } else if (interceptActive) {
            vertexInterceptor.glTexCoord2f(s, t);
        } else {
            org.lwjgl.opengl.GL11.glTexCoord2f(s, t);
        }
    }

    public static void glColor4ub(byte red, byte green, byte blue, byte alpha) {
        if (listManager.isRecording()) {
            listManager.recordGlColor4ub(red, green, blue, alpha);
        } else if (interceptActive) {
            vertexInterceptor.glColor4ub(red, green, blue, alpha);
        } else {
            org.lwjgl.opengl.GL11.glColor4ub(red, green, blue, alpha);
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

    // TODO
    public static void glTexParameteri(int target, int pname, int param) {
//        if (interceptActive || listManager.isRecording()) {
//            throw new UnsupportedOperationException("glTexParameteri");
        if (!interceptActive) {
            org.lwjgl.opengl.GL11.glTexParameteri(target, pname, param);
        }
    }

    /**
     * UNSUPPORTED.
     */
    public static void glHint(int target, int mode) {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glHint");
        } else {
            org.lwjgl.opengl.GL11.glHint(target, mode);
        }
    }

    public static void glLineWidth(float width) {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glLineWidth");
        } else {
            org.lwjgl.opengl.GL11.glLineWidth(width);
        }
    }

    public static void glDeleteTextures(IntBuffer textures) {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glDeleteTextures");
        } else {
            org.lwjgl.opengl.GL11.glDeleteTextures(textures);
        }
    }

    public static void glDeleteTextures(int texture) {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glDeleteTextures");
        } else {
            org.lwjgl.opengl.GL11.glDeleteTextures(texture);
        }
    }

    public static void glPolygonMode(int face, int mode) {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glPolygonMode");
        } else {
            org.lwjgl.opengl.GL11.glPolygonMode(face, mode);
        }
    }

    public static void glGetInteger(int pname, IntBuffer params) {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glGetInteger");
        } else {
            org.lwjgl.opengl.GL11.glGetInteger(pname, params);
        }
    }

    public static int glGetInteger(int pname) {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glGetInteger");
        } else {
            return org.lwjgl.opengl.GL11.glGetInteger(pname);
        }
    }

    public static void glViewport(int x, int y, int width, int height) {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glViewport");
        } else {
            org.lwjgl.opengl.GL11.glViewport(x, y, width, height);
        }
    }

    public static String glGetString(int name) {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glGetString");
        } else {
            return org.lwjgl.opengl.GL11.glGetString(name);
        }
    }

    public static void glFlush() {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glFlush");
        } else {
            org.lwjgl.opengl.GL11.glFlush();
        }
    }

    public static void glFinish() {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glFinish");
        } else {
            org.lwjgl.opengl.GL11.glFinish();
        }
    }

    public static void glScissor(int x, int y, int width, int height) {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glScissor");
        } else {
            org.lwjgl.opengl.GL11.glScissor(x, y, width, height);
        }
    }

    public static void glReadPixels(int x, int y, int width, int height, int format, int type, FloatBuffer pixels) {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glReadPixels");
        } else {
            org.lwjgl.opengl.GL11.glReadPixels(x, y, width, height, format, type, pixels);
        }
    }

    public static void glGenTextures(IntBuffer textures) {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glGenTextures");
        } else {
            org.lwjgl.opengl.GL11.glGenTextures(textures);
        }
    }

    public static void glPointSize(float size) {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glPointSize");
        } else {
            org.lwjgl.opengl.GL11.glPointSize(size);
        }
    }

    public static void glShadeModel(int mode) {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glShadeModel");
        } else {
            org.lwjgl.opengl.GL11.glShadeModel(mode);
        }
    }

    public static void glLight(int light, int pname, FloatBuffer params) {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glLight");
        } else {
            org.lwjgl.opengl.GL11.glLight(light, pname, params);
        }
    }

    public static void glMaterial(int face, int pname, FloatBuffer params) {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glMaterial");
        } else {
            org.lwjgl.opengl.GL11.glMaterial(face, pname, params);
        }
    }

    public static void glMateriali(int face, int pname, int param) {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glMateriali");
        } else {
            org.lwjgl.opengl.GL11.glMateriali(face, pname, param);
        }
    }

    public static void glColor3ub(byte red, byte green, byte blue) {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glColor3ub");
        } else {
            org.lwjgl.opengl.GL11.glColor3ub(red, green, blue);
        }
    }

    public static void glNormal3f(float nx, float ny, float nz) {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glNormal3f");
        } else {
            org.lwjgl.opengl.GL11.glNormal3f(nx, ny, nz);
        }
    }

    public static void glVertex3d(double x, double y, double z) {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glVertex3d");
        } else {
            org.lwjgl.opengl.GL11.glVertex3d(x, y, z);
        }
    }

    public static void glColor3d(double red, double green, double blue) {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glColor3d");
        } else {
            org.lwjgl.opengl.GL11.glColor3d(red, green, blue);
        }
    }

    public static void glTexEnvf(int target, int pname, float param) {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glTexEnvf");
        } else {
            org.lwjgl.opengl.GL11.glTexEnvf(target, pname, param);
        }
    }

    public static void glColor4f(float red, float green, float blue, float alpha) {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glColor4f");
        } else {
            org.lwjgl.opengl.GL11.glColor4f(red, green, blue, alpha);
        }
    }

    public static void glLoadIdentity() {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glLoadIdentity");
        } else {
            org.lwjgl.opengl.GL11.glLoadIdentity();
        }
    }

    public static boolean glIsEnabled(int cap) {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glIsEnabled");
        } else {
            return org.lwjgl.opengl.GL11.glIsEnabled(cap);
        }
    }

    public static void glTexImage2D(int target, int level, int internalformat, int width, int height, int border, int format, int type, ByteBuffer pixels) {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glTexImage2D");
        } else {
            org.lwjgl.opengl.GL11.glTexImage2D(target, level, internalformat, width, height, border, format, type, pixels);
        }
    }

    public static void glTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, ByteBuffer pixels) {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glTexSubImage2D");
        } else {
            org.lwjgl.opengl.GL11.glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixels);
        }
    }

    public static void glTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, long pixels_buffer_offset) {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glTexSubImage2D");
        } else {
            org.lwjgl.opengl.GL11.glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixels_buffer_offset);
        }
    }

    public static void glTexCoordPointer(int size, int stride, FloatBuffer pointer) {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glTexCoordPointer");
        } else {
            org.lwjgl.opengl.GL11.glTexCoordPointer(size, stride, pointer);
        }
    }

    public static void glTexCoordPointer(int size, int type, int stride, long pointer_buffer_offset) {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glTexCoordPointer");
        } else {
            org.lwjgl.opengl.GL11.glTexCoordPointer(size, type, stride, pointer_buffer_offset);
        }
    }

    public static void glColorPointer(int size, boolean unsigned, int stride, ByteBuffer pointer) {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glColorPointer");
        } else {
            org.lwjgl.opengl.GL11.glColorPointer(size, unsigned, stride, pointer);
        }
    }

    public static void glColorPointer(int size, int type, int stride, long pointer_buffer_offset) {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glColorPointer");
        } else {
            org.lwjgl.opengl.GL11.glColorPointer(size, type, stride, pointer_buffer_offset);
        }
    }

    public static void glVertex3f(float x, float y, float z) {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glVertex3f");
        } else {
            org.lwjgl.opengl.GL11.glVertex3f(x, y, z);
        }
    }

    public static void glColorMaterial(int face, int mode) {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glColorMaterial");
        } else {
            org.lwjgl.opengl.GL11.glColorMaterial(face, mode);
        }
    }

    public static void glColor3f(float red, float green, float blue) {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glColor3f");
        } else {
            org.lwjgl.opengl.GL11.glColor3f(red, green, blue);
        }
    }

    public static void glDrawArrays(int mode, int first, int count) {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glDrawArrays");
        } else {
            org.lwjgl.opengl.GL11.glDrawArrays(mode, first, count);
        }
    }

    public static void glOrtho(double left, double right, double bottom, double top, double zNear, double zFar) {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glOrtho");
        } else {
            org.lwjgl.opengl.GL11.glOrtho(left, right, bottom, top, zNear, zFar);
        }
    }

    public static void glClear(int mask) {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glClear");
        } else {
            org.lwjgl.opengl.GL11.glClear(mask);
        }
    }

    public static void glClearColor(float red, float green, float blue, float alpha) {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glClearColor");
        } else {
            org.lwjgl.opengl.GL11.glClearColor(red, green, blue, alpha);
        }
    }

    public static void glPushAttrib(int mask) {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glPushAttrib");
        } else {
            org.lwjgl.opengl.GL11.glPushAttrib(mask);
        }
    }

    public static void glPopAttrib() {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glPopAttrib");
        } else {
            org.lwjgl.opengl.GL11.glPopAttrib();
        }
    }

    public static int glGenLists(int range) {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glGenLists");
        } else {
            return org.lwjgl.opengl.GL11.glGenLists(range);
        }
    }

    public static void glVertexPointer(int size, int stride, FloatBuffer pointer) {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glVertexPointer");
        } else {
            org.lwjgl.opengl.GL11.glVertexPointer(size, stride, pointer);
        }
    }

    public static void glVertexPointer(int size, int stride, IntBuffer pointer) {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glVertexPointer");
        } else {
            org.lwjgl.opengl.GL11.glVertexPointer(size, stride, pointer);
        }
    }

    public static void glVertexPointer(int size, int type, int stride, long pointer_buffer_offset) {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glVertexPointer");
        } else {
            org.lwjgl.opengl.GL11.glVertexPointer(size, type, stride, pointer_buffer_offset);
        }
    }

    public static void glDeleteLists(int list, int range) {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glDeleteLists");
        } else {
            org.lwjgl.opengl.GL11.glDeleteLists(list, range);
        }
    }

    public static void glInterleavedArrays(int format, int stride, FloatBuffer pointer) {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glInterleavedArrays");
        } else {
            org.lwjgl.opengl.GL11.glInterleavedArrays(format, stride, pointer);
        }
    }

    public static void glArrayElement(int i) {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glArrayElement");
        } else {
            org.lwjgl.opengl.GL11.glArrayElement(i);
        }
    }

    public static void glDrawElements(int mode, IntBuffer indices) {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glDrawElements");
        } else {
            org.lwjgl.opengl.GL11.glDrawElements(mode, indices);
        }
    }

    public static void glTranslated(double x, double y, double z) {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glTranslated");
        } else {
            org.lwjgl.opengl.GL11.glTranslated(x, y, z);
        }
    }

    public static void glEnableClientState(int cap) {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glEnableClientState");
        } else {
            org.lwjgl.opengl.GL11.glEnableClientState(cap);
        }
    }

    public static void glMultMatrix(FloatBuffer m) {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glMultMatrix");
        } else {
            org.lwjgl.opengl.GL11.glMultMatrix(m);
        }
    }

    public static void glDisableClientState(int cap) {
        if (interceptActive || listManager.isRecording()) {
            throw new UnsupportedOperationException("glDisableClientState");
        } else {
            org.lwjgl.opengl.GL11.glDisableClientState(cap);
        }
    }
}