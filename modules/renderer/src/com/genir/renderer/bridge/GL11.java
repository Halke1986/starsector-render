package com.genir.renderer.bridge;

import com.genir.renderer.bridge.impl.BufferUtil;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.util.concurrent.Callable;

import static com.genir.renderer.Debug.*;
import static com.genir.renderer.bridge.impl.Bridge.exec;
import static com.genir.renderer.bridge.impl.Bridge.stateCache;

public class GL11 {
    /**
     * Lists.
     */
    public static void glNewList(int list, int mode) {
        record glNewList(int list, int mode) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glNewList(list, mode);
            }
        }
        exec.execute(new glNewList(list, mode));
    }

    public static void glEndList() {
        record glEndList() implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glEndList();
            }
        }
        exec.execute(new glEndList());
    }

    public static void glCallList(int list) {
        record glCallList(int list) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glCallList(list);
            }
        }
        exec.execute(new glCallList(list));
    }

    /**
     * Draw.
     */
    public static void glBegin(int mode) {
        assertNoUnsupportedOperation();

        record glBegin(int mode) implements Runnable {
            @Override
            public void run() {
//                if (listManager.isRecording(this))
//                    return;

                org.lwjgl.opengl.GL11.glBegin(mode);
            }
        }
        exec.execute(new glBegin(mode));
    }

    public static void glEnd() {
        record glEnd() implements Runnable {
            @Override
            public void run() {
//                if (listManager.isRecording(this))
//                    return;

                org.lwjgl.opengl.GL11.glEnd();
            }
        }
        exec.execute(new glEnd());
    }

    public static void glColor4ub(byte red, byte green, byte blue, byte alpha) {
        glColor4f(
                (red & 0xFF) / 255f,
                (green & 0xFF) / 255f,
                (blue & 0xFF) / 255f,
                (alpha & 0xFF) / 255f
        );
    }

    public static void glColor3f(float red, float green, float blue) {
        glColor4f(
                red,
                green,
                blue,
                1f
        );
    }

    public static void glColor3d(double red, double green, double blue) {
        glColor4f(
                (float) red,
                (float) green,
                (float) blue,
                1f
        );
    }

    public static void glColor4f(float red, float green, float blue, float alpha) {
        record glColor4f(float red, float green, float blue, float alpha) implements Runnable {
            @Override
            public void run() {
//                if (listManager.isRecording(this))
//                    return;

                org.lwjgl.opengl.GL11.glColor4f(red, green, blue, alpha);
            }
        }
        exec.execute(new glColor4f(red, green, blue, alpha));
    }

    public static void glTexCoord2f(float s, float t) {
        record glTexCoord2f(float s, float t) implements Runnable {
            @Override
            public void run() {
//                if (listManager.isRecording(this))
//                    return;

                org.lwjgl.opengl.GL11.glTexCoord2f(s, t);
            }
        }
        exec.execute(new glTexCoord2f(s, t));
    }

    public static void glTexCoord2d(double s, double t) {
        glTexCoord2f(
                (float) s,
                (float) t
        );
    }

    public static void glNormal3f(float nx, float ny, float nz) {
        record glNormal3f(float nx, float ny, float nz) implements Runnable {
            @Override
            public void run() {
//                if (listManager.isRecording(this))
//                    return;

                org.lwjgl.opengl.GL11.glNormal3f(nx, ny, nz);

            }
        }
        exec.execute(new glNormal3f(nx, ny, nz));
    }

    public static void glVertex3f(float x, float y, float z) {
        record glVertex3f(float x, float y, float z) implements Runnable {
            @Override
            public void run() {
//                if (listManager.isRecording(this))
//                    return;

                org.lwjgl.opengl.GL11.glVertex3f(x, y, z);

            }
        }
        exec.execute(new glVertex3f(x, y, z));
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
        record glEnableClientState(int cap) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glEnableClientState(cap);
            }
        }
        exec.execute(new glEnableClientState(cap));
    }

    public static void glDisableClientState(int cap) { // NoList
        record glDisableClientState(int cap) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glDisableClientState(cap);
            }
        }
        exec.execute(new glDisableClientState(cap));
    }

    public static void glPushClientAttrib(int mask) {
        record glPushClientAttrib(int mask) implements Runnable {
            @Override
            public void run() {
//                if (listManager.isRecording(this))
//                    return;

//                clientAttribTracker.glPushClientAttrib(mask);
                org.lwjgl.opengl.GL11.glPushClientAttrib(mask);
            }
        }
        exec.execute(new glPushClientAttrib(mask));
    }

    public static void glPopClientAttrib() {
        record glPopClientAttrib() implements Runnable {
            @Override
            public void run() {
//                if (listManager.isRecording(this))
//                    return;

//                clientAttribTracker.glPopClientAttrib();
                org.lwjgl.opengl.GL11.glPopClientAttrib();
            }
        }
        exec.execute(new glPopClientAttrib());
    }

    public static void glVertexPointer(int size, int stride, FloatBuffer pointer) { // NoList
        asert(size == 2);
        asert(stride == 0);
        asert(pointer.position() == 0);

        record glVertexPointer(int size, int stride, FloatBuffer pointer) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glVertexPointer(size, stride, pointer);
            }
        }
        exec.execute(new glVertexPointer(size, stride, pointer));
    }

    public static void glColorPointer(int size, boolean unsigned, int stride, ByteBuffer pointer) { // NoList
        asert(size == 4);
        asert(stride == 0);
        asert(pointer.position() == 0);

        record glColorPointer(int size, boolean unsigned, int stride, ByteBuffer pointer) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glColorPointer(size, unsigned, stride, pointer);
            }
        }
        exec.execute(new glColorPointer(size, unsigned, stride, pointer));
    }

    public static void glTexCoordPointer(int size, int stride, FloatBuffer pointer) { // NoList
        asert(size == 2);
        asert(stride == 0);
        asert(pointer.position() == 0);

        record glTexCoordPointer(int size, int stride, FloatBuffer pointer) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glTexCoordPointer(size, stride, pointer);
            }
        }
        exec.execute(new glTexCoordPointer(size, stride, pointer));
    }

    /**
     * Array draw.
     */
    public static void glTexCoordPointer(int size, int type, int stride, long pointer_buffer_offset) { // NoList
        record glTexCoordPointer(int size, int type, int stride, long pointer_buffer_offset) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glTexCoordPointer(size, type, stride, pointer_buffer_offset);
            }
        }
        exec.execute(new glTexCoordPointer(size, type, stride, pointer_buffer_offset));
    }

    public static void glColorPointer(int size, int type, int stride, long pointer_buffer_offset) { // NoList
        record glColorPointer(int size, int type, int stride, long pointer_buffer_offset) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glColorPointer(size, type, stride, pointer_buffer_offset);
            }
        }
        exec.execute(new glColorPointer(size, type, stride, pointer_buffer_offset));
    }

    public static void glVertexPointer(int size, int type, int stride, long pointer_buffer_offset) { // NoList
        record glVertexPointer(int size, int type, int stride, long pointer_buffer_offset) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glVertexPointer(size, type, stride, pointer_buffer_offset);
            }
        }
        exec.execute(new glVertexPointer(size, type, stride, pointer_buffer_offset));
    }

    public static void glDrawArrays(int mode, int first, int count) {
        record glDrawArrays(int mode, int first, int count) implements Runnable {
            @Override
            public void run() {
//                if (listManager.isRecording()) {
//                    listManager.record(vertexInterceptor.recordedGlDrawArrays(mode, first, count));
//                } else {
                org.lwjgl.opengl.GL11.glDrawArrays(mode, first, count);
//                }
            }
        }
        exec.execute(new glDrawArrays(mode, first, count));
    }

    /**
     * Matrix.
     */
    public static void glMatrixMode(int mode) {
        record glMatrixMode(int mode) implements Runnable {
            @Override
            public void run() {
//                if (listManager.isRecording(this))
//                    return;

                org.lwjgl.opengl.GL11.glMatrixMode(mode);
            }
        }
        exec.execute(new glMatrixMode(mode));
    }

    public static void glPushMatrix() {
        record glPushMatrix() implements Runnable {
            @Override
            public void run() {
//                if (listManager.isRecording(this))
//                    return;
//
//                if (attribManager.matrixMode() == org.lwjgl.opengl.GL11.GL_MODELVIEW) {
//                    modelView.glPushMatrix();
//                } else {
//                    attribManager.applyMatrixMode();
                org.lwjgl.opengl.GL11.glPushMatrix();
//                }
            }
        }
        exec.execute(new glPushMatrix());
    }

    public static void glPopMatrix() {
        record glPopMatrix() implements Runnable {
            @Override
            public void run() {
//                if (listManager.isRecording(this))
//                    return;
//
//                if (attribManager.matrixMode() == org.lwjgl.opengl.GL11.GL_MODELVIEW) {
//                    modelView.glPopMatrix();
//                } else {
//                    attribManager.applyMatrixMode();
                org.lwjgl.opengl.GL11.glPopMatrix();
//                }
            }
        }
        exec.execute(new glPopMatrix());
    }

    public static void glLoadIdentity() {
        record glLoadIdentity() implements Runnable {
            @Override
            public void run() {
//                if (listManager.isRecording(this))
//                    return;
//
//                if (attribManager.matrixMode() == org.lwjgl.opengl.GL11.GL_MODELVIEW) {
//                    modelView.glLoadIdentity();
//                } else {
//                    attribManager.applyMatrixMode();
                org.lwjgl.opengl.GL11.glLoadIdentity();
//                }
            }
        }
        exec.execute(new glLoadIdentity());
    }

    public static void glTranslatef(float x, float y, float z) {
        record glTranslatef(float x, float y, float z) implements Runnable {
            @Override
            public void run() {
//                if (listManager.isRecording(this))
//                    return;
//
//                if (attribManager.matrixMode() == org.lwjgl.opengl.GL11.GL_MODELVIEW) {
//                    modelView.glTranslatef(x, y, z);
//                } else {
//                    attribManager.applyMatrixMode();
                org.lwjgl.opengl.GL11.glTranslatef(x, y, z);
//                }
            }
        }
        exec.execute(new glTranslatef(x, y, z));
    }

    public static void glRotatef(float angle, float x, float y, float z) {
        record glRotatef(float angle, float x, float y, float z) implements Runnable {
            @Override
            public void run() {
//                if (listManager.isRecording(this))
//                    return;
//
//                if (attribManager.matrixMode() == org.lwjgl.opengl.GL11.GL_MODELVIEW) {
//                    modelView.glRotatef(angle, x, y, z);
//                } else {
//                    attribManager.applyMatrixMode();
                org.lwjgl.opengl.GL11.glRotatef(angle, x, y, z);
//                }
            }
        }
        exec.execute(new glRotatef(angle, x, y, z));
    }

    public static void glScalef(float x, float y, float z) {
        record glScalef(float x, float y, float z) implements Runnable {
            @Override
            public void run() {
//                if (listManager.isRecording(this))
//                    return;
//
//                if (attribManager.matrixMode() == org.lwjgl.opengl.GL11.GL_MODELVIEW) {
//                    modelView.glScalef(x, y, z);
//                } else {
//                    attribManager.applyMatrixMode();
                org.lwjgl.opengl.GL11.glScalef(x, y, z);
//                }
            }
        }
        exec.execute(new glScalef(x, y, z));
    }

    public static void glMultMatrix(FloatBuffer m) {
        record glMultMatrix(FloatBuffer m) implements Runnable {
            @Override
            public void run() {
//                if (listManager.isRecording(this))
//                    return;
//
//                if (attribManager.matrixMode() == org.lwjgl.opengl.GL11.GL_MODELVIEW) {
//                    modelView.glMultMatrix(m);
//                } else {
//                    attribManager.applyMatrixMode();
                exec.execute(() -> org.lwjgl.opengl.GL11.glMultMatrix(m));
//                }
            }
        }
        final FloatBuffer snapshot = BufferUtil.snapshot(m);
        exec.execute(new glMultMatrix(m));
    }

    /**
     * Render context.
     */
    public static void glEnable(int cap) {
        record glEnable(int cap) implements Runnable {
            @Override
            public void run() {
//                if (listManager.isRecording(this))
//                    return;
//
//                if (attribManager.interceptEnable(cap)) {
//                    attribManager.glEnable(cap);
//                } else {
                org.lwjgl.opengl.GL11.glEnable(cap);
//                }
            }
        }
        exec.execute(new glEnable(cap));
    }

    public static void glDisable(int cap) {
        record glDisable(int cap) implements Runnable {
            @Override
            public void run() {
//                if (listManager.isRecording(this))
//                    return;
//
//                if (attribManager.interceptEnable(cap)) {
//                    attribManager.glDisable(cap);
//                } else {
                org.lwjgl.opengl.GL11.glDisable(cap);
//                }
            }
        }
        exec.execute(new glDisable(cap));
    }

    public static void glBlendFunc(int sfactor, int dfactor) {
        record glBlendFunc(int sfactor, int dfactor) implements Runnable {
            @Override
            public void run() {
//                if (listManager.isRecording(this))
//                    return;

                org.lwjgl.opengl.GL11.glBlendFunc(sfactor, dfactor);
            }
        }
        exec.execute(new glBlendFunc(sfactor, dfactor));
    }

    public static void glBindTexture(int target, int texture) {
        record glBindTexture(int target, int texture) implements Runnable {
            @Override
            public void run() {
//                if (listManager.isRecording(this))
//                    return;

                org.lwjgl.opengl.GL11.glBindTexture(target, texture);
            }
        }
        exec.execute(new glBindTexture(target, texture));
    }

    public static void glPushAttrib(int mask) { // NoList
        record glPushAttrib(int mask) implements Runnable {
            @Override
            public void run() {
//                attribManager.glPushAttrib(mask);
                org.lwjgl.opengl.GL11.glPushAttrib(mask);
            }
        }
        exec.execute(new glPushAttrib(mask));
    }

    public static void glPopAttrib() { // NoList
        record glPopAttrib() implements Runnable {
            @Override
            public void run() {
//                attribManager.glPopAttrib();
                org.lwjgl.opengl.GL11.glPopAttrib();
            }
        }
        exec.execute(new glPopAttrib());
    }

    /**
     * Other calls.
     */
    public static void glColorMask(boolean red, boolean green, boolean blue, boolean alpha) {
        record glColorMask(boolean red, boolean green, boolean blue, boolean alpha) implements Runnable {
            @Override
            public void run() {
//                if (listManager.isRecording(this))
//                    return;

                org.lwjgl.opengl.GL11.glColorMask(red, green, blue, alpha);
            }
        }
        exec.execute(new glColorMask(red, green, blue, alpha));
    }

    public static void glViewport(int x, int y, int width, int height) {
        record glViewport(int x, int y, int width, int height) implements Runnable {
            @Override
            public void run() {
//                if (listManager.isRecording(this))
//                    return;

                org.lwjgl.opengl.GL11.glViewport(x, y, width, height);
            }
        }
        exec.execute(new glViewport(x, y, width, height));
    }

    public static void glOrtho(double left, double right, double bottom, double top, double zNear, double zFar) {
        record glOrtho(double left, double right, double bottom, double top, double zNear, double zFar) implements Runnable {
            @Override
            public void run() {
//                if (listManager.isRecording(this))
//                    return;

                org.lwjgl.opengl.GL11.glOrtho(left, right, bottom, top, zNear, zFar);
            }
        }
        exec.execute(new glOrtho(left, right, bottom, top, zNear, zFar));
    }

    public static void glTexParameteri(int target, int pname, int param) {
        record glTexParameteri(int target, int pname, int param) implements Runnable {
            @Override
            public void run() {
//                if (listManager.isRecording(this))
//                    return;

                org.lwjgl.opengl.GL11.glTexParameteri(target, pname, param);
            }
        }
        exec.execute(new glTexParameteri(target, pname, param));
    }

    public static void glClearColor(float red, float green, float blue, float alpha) {
        record glClearColor(float red, float green, float blue, float alpha) implements Runnable {
            @Override
            public void run() {
//                if (listManager.isRecording(this))
//                    return;

                org.lwjgl.opengl.GL11.glClearColor(red, green, blue, alpha);
            }
        }
        exec.execute(new glClearColor(red, green, blue, alpha));
    }

    public static void glClear(int mask) {
        record glClear(int mask) implements Runnable {
            @Override
            public void run() {
//                if (listManager.isRecording(this))
//                    return;

                org.lwjgl.opengl.GL11.glClear(mask);
            }
        }
        exec.execute(new glClear(mask));
    }

    public static void glFlush() { // NoList
        record glFlush() implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glFlush();
            }
        }
        exec.execute(new glFlush());
    }

    public static void glScissor(int x, int y, int width, int height) {
        record glScissor(int x, int y, int width, int height) implements Runnable {
            @Override
            public void run() {
//                if (listManager.isRecording(this))
//                    return;

                org.lwjgl.opengl.GL11.glScissor(x, y, width, height);
            }
        }
        exec.execute(new glScissor(x, y, width, height));
    }

    public static void glStencilFunc(int func, int ref, int mask) {
        record glStencilFunc(int func, int ref, int mask) implements Runnable {
            @Override
            public void run() {
//                if (listManager.isRecording(this))
//                    return;

                org.lwjgl.opengl.GL11.glStencilFunc(func, ref, mask);
            }
        }
        exec.execute(new glStencilFunc(func, ref, mask));
    }

    public static void glStencilMask(int mask) {
        record glStencilMask(int mask) implements Runnable {
            @Override
            public void run() {
//                if (listManager.isRecording(this))
//                    return;

                org.lwjgl.opengl.GL11.glStencilMask(mask);
            }
        }
        exec.execute(new glStencilMask(mask));
    }

    public static void glStencilOp(int fail, int zfail, int zpass) {
        record glStencilOp(int fail, int zfail, int zpass) implements Runnable {
            @Override
            public void run() {
//                if (listManager.isRecording(this))
//                    return;

                org.lwjgl.opengl.GL11.glStencilOp(fail, zfail, zpass);
            }
        }
        exec.execute(new glStencilOp(fail, zfail, zpass));
    }

    public static void glClearStencil(int s) {
        record glClearStencil(int s) implements Runnable {
            @Override
            public void run() {
//                if (listManager.isRecording(this))
//                    return;

                org.lwjgl.opengl.GL11.glClearStencil(s);
            }
        }
        exec.execute(new glClearStencil(s));
    }

    public static void glAlphaFunc(int func, float ref) {
        record glAlphaFunc(int func, float ref) implements Runnable {
            @Override
            public void run() {
//                if (listManager.isRecording(this))
//                    return;

                org.lwjgl.opengl.GL11.glAlphaFunc(func, ref);
            }
        }
        exec.execute(new glAlphaFunc(func, ref));
    }

    public static void glHint(int target, int mode) {
        record glHint(int target, int mode) implements Runnable {
            @Override
            public void run() {
//                if (listManager.isRecording(this))
//                    return;

                org.lwjgl.opengl.GL11.glHint(target, mode);
            }
        }
        exec.execute(new glHint(target, mode));
    }

    public static void glLineWidth(float width) {
        record glLineWidth(float width) implements Runnable {
            @Override
            public void run() {
//                if (listManager.isRecording(this))
//                    return;

                org.lwjgl.opengl.GL11.glLineWidth(width);
            }
        }
        exec.execute(new glLineWidth(width));
    }

    public static void glColorMaterial(int face, int mode) {
        record glColorMaterial(int face, int mode) implements Runnable {
            @Override
            public void run() {
//                if (listManager.isRecording(this))
//                    return;

                org.lwjgl.opengl.GL11.glColorMaterial(face, mode);
            }
        }
        exec.execute(new glColorMaterial(face, mode));
    }

    public static void glShadeModel(int mode) {
        record glShadeModel(int mode) implements Runnable {
            @Override
            public void run() {
//                if (listManager.isRecording(this))
//                    return;

                org.lwjgl.opengl.GL11.glShadeModel(mode);
            }
        }
        exec.execute(new glShadeModel(mode));
    }

    public static void glTexImage1D(int target, int level, int internalformat, int width, int border, int format, int type, ByteBuffer pixels) { // NoList
        record glTexImage1D(int target, int level, int internalformat, int width, int border, int format, int type, ByteBuffer pixels) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glTexImage1D(target, level, internalformat, width, border, format, type, pixels);
            }
        }
        final ByteBuffer snapshot = BufferUtil.snapshot(pixels);
        exec.execute(new glTexImage1D(target, level, internalformat, width, border, format, type, snapshot));
    }

    public static void glTexImage2D(int target, int level, int internalformat, int width, int height, int border, int format, int type, ByteBuffer pixels) { // NoList
        record glTexImage2D(int target, int level, int internalformat, int width, int height, int border, int format, int type, ByteBuffer pixels) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glTexImage2D(target, level, internalformat, width, height, border, format, type, pixels);
            }
        }
        final ByteBuffer snapshot = BufferUtil.snapshot(pixels);
        exec.execute(new glTexImage2D(target, level, internalformat, width, height, border, format, type, snapshot));
    }

    public static void glTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, ByteBuffer pixels) { // NoList ?
        record glTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, ByteBuffer pixels) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixels);
            }
        }
        final ByteBuffer snapshot = BufferUtil.snapshot(pixels);
        exec.execute(new glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, snapshot));
    }

    public static void glTexSubImage1D(int target, int level, int xoffset, int width, int format, int type, FloatBuffer pixels) { // NoList ?
        record glTexSubImage1D(int target, int level, int xoffset, int width, int format, int type, FloatBuffer pixels) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glTexSubImage1D(target, level, xoffset, width, format, type, pixels);
            }
        }
        final FloatBuffer snapshot = BufferUtil.snapshot(pixels);
        exec.execute(new glTexSubImage1D(target, level, xoffset, width, format, type, snapshot));
    }

    public static void glLight(int light, int pname, FloatBuffer params) {
        record glLight(int light, int pname, FloatBuffer params) implements Runnable {
            @Override
            public void run() {
//                if (listManager.isRecording(this))
//                    return;

                org.lwjgl.opengl.GL11.glLight(light, pname, params);
            }
        }
        final FloatBuffer snapshot = BufferUtil.snapshot(params);
        exec.execute(new glLight(light, pname, snapshot));
    }

    public static void glMaterial(int face, int pname, FloatBuffer params) {
        record glMaterial(int face, int pname, FloatBuffer params) implements Runnable {
            @Override
            public void run() {
//                if (listManager.isRecording(this))
//                    return;

                org.lwjgl.opengl.GL11.glMaterial(face, pname, params);
            }
        }
        final FloatBuffer snapshot = BufferUtil.snapshot(params);
        exec.execute(new glMaterial(face, pname, snapshot));
    }

    public static void glDeleteTextures(int texture) { // NoList
        record glDeleteTextures(int texture) implements Runnable {
            @Override
            public void run() {
//                if (listManager.isRecording(this))
//                    return;

                org.lwjgl.opengl.GL11.glDeleteTextures(texture);
            }
        }
        exec.execute(new glDeleteTextures(texture));
    }

    public static void glCopyTexImage2D(int target, int level, int internalFormat, int x, int y, int width, int height, int border) {
        record glCopyTexImage2D(int target, int level, int internalFormat, int x, int y, int width, int height, int border) implements Runnable {
            @Override
            public void run() {
//                if (listManager.isRecording(this))
//                    return;

                org.lwjgl.opengl.GL11.glCopyTexImage2D(target, level, internalFormat, x, y, width, height, border);
            }
        }
        exec.execute(new glCopyTexImage2D(target, level, internalFormat, x, y, width, height, border));
    }

    public static void glCopyTexSubImage2D(int target, int level, int xoffset, int yoffset, int x, int y, int width, int height) {
        record glCopyTexSubImage2D(int target, int level, int xoffset, int yoffset, int x, int y, int width, int height) implements Runnable {
            @Override
            public void run() {
//                if (listManager.isRecording(this))
//                    return;

                org.lwjgl.opengl.GL11.glCopyTexSubImage2D(target, level, xoffset, yoffset, x, y, width, height);
            }
        }
        exec.execute(new glCopyTexSubImage2D(target, level, xoffset, yoffset, x, y, width, height));
    }

    public static void glEdgeFlag(boolean flag) {
        record glEdgeFlag(boolean flag) implements Runnable {
            @Override
            public void run() {
//                if (listManager.isRecording(this))
//                    return;

                org.lwjgl.opengl.GL11.glEdgeFlag(flag);
            }
        }
        exec.execute(new glEdgeFlag(flag));
    }

    /**
     * Blocking.
     */
    public static int glGetInteger(int pname) { // NoList
        // TODO
//        switch (pname) {
//            case org.lwjgl.opengl.GL11.GL_TEXTURE_BINDING_2D:
//                return attribManager.textureBinding();
//            case org.lwjgl.opengl.GL13.GL_ACTIVE_TEXTURE:
//                return attribManager.activeTexture();
//            default:
//                return exec.get(() -> org.lwjgl.opengl.GL11.glGetInteger(pname));
//        }
        record glGetInteger(int pname) implements Callable<Integer> {
            @Override
            public Integer call() {
                return org.lwjgl.opengl.GL11.glGetInteger(pname);
            }
        }
        return exec.get(new glGetInteger(pname));
    }

    public static void glGenTextures(IntBuffer textures) { // NoList
        record glGenTextures(IntBuffer textures) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glGenTextures(textures);
            }
        }
        exec.wait(new glGenTextures(textures));
    }

    public static int glGenTextures() { // NoList
        record glGenTextures() implements Callable<Integer> {
            @Override
            public Integer call() {
                return org.lwjgl.opengl.GL11.glGenTextures();
            }
        }
        return exec.get(new glGenTextures());
    }

    public static int glGenLists(int range) { // NoList
        record glGenLists(int range) implements Callable<Integer> {
            @Override
            public Integer call() {
                return org.lwjgl.opengl.GL11.glGenLists(range);
            }
        }
        return exec.get(new glGenLists(range));
    }

    public static String glGetString(int name) { // NoList
        if (stateCache.isAvailable() && name == org.lwjgl.opengl.GL11.GL_EXTENSIONS) {
            return stateCache.getGlStringExtensions();
        }

        record glGetString(int name) implements Callable<String> {
            @Override
            public String call() {
                return org.lwjgl.opengl.GL11.glGetString(name);
            }
        }
        return exec.get(new glGetString(name));
    }

    public static void glReadPixels(int x, int y, int width, int height, int format, int type, FloatBuffer pixels) { // NoList
        record glReadPixels(int x, int y, int width, int height, int format, int type, FloatBuffer pixels) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glReadPixels(x, y, width, height, format, type, pixels);
            }
        }
        exec.wait(new glReadPixels(x, y, width, height, format, type, pixels));
    }

    public static void glReadPixels(int x, int y, int width, int height, int format, int type, IntBuffer pixels) { // NoList
        record glReadPixels(int x, int y, int width, int height, int format, int type, IntBuffer pixels) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glReadPixels(x, y, width, height, format, type, pixels);
            }
        }
        exec.wait(new glReadPixels(x, y, width, height, format, type, pixels));
    }

    public static void glReadPixels(int x, int y, int width, int height, int format, int type, ByteBuffer pixels) { // NoList
        record glReadPixels(int x, int y, int width, int height, int format, int type, ByteBuffer pixels) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glReadPixels(x, y, width, height, format, type, pixels);
            }
        }
        exec.wait(new glReadPixels(x, y, width, height, format, type, pixels));
    }

    public static int glGetError() { // NoList
        record glGetError() implements Callable<Integer> {
            @Override
            public Integer call() {
                return org.lwjgl.opengl.GL11.glGetError();
            }
        }
        return exec.get(new glGetError());
    }

    public static int glGetTexLevelParameteri(int target, int level, int pname) { // NoList
        record glGetTexLevelParameteri(int target, int level, int pname) implements Callable<Integer> {
            @Override
            public Integer call() {
                return org.lwjgl.opengl.GL11.glGetTexLevelParameteri(target, level, pname);
            }
        }
        return exec.get(new glGetTexLevelParameteri(target, level, pname));
    }

    public static void glGetTexImage(int target, int level, int format, int type, ByteBuffer pixels) { // NoList
        record glGetTexImage(int target, int level, int format, int type, ByteBuffer pixels) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glGetTexImage(target, level, format, type, pixels);
            }
        }
        exec.wait(new glGetTexImage(target, level, format, type, pixels));
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

    public static void glArrayElement(int i) {
        throwUnsupportedOperation("glArrayElement");
    }

    public static void glDeleteLists(int list, int range) { // NoList
        throwUnsupportedOperation("glDeleteLists");
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
