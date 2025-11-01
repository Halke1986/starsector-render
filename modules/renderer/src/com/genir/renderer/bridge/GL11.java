package com.genir.renderer.bridge;

import com.genir.renderer.state.BufferUtil;
import com.genir.renderer.state.ClientAttribTracker;
import com.genir.renderer.state.Recordable;
import org.lwjgl.opengl.ATIMeminfo;
import org.lwjgl.opengl.NVXGpuMemoryInfo;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.util.concurrent.Callable;

import static com.genir.renderer.bridge.GL14.glBlendFuncSeparate;
import static com.genir.renderer.state.AppState.state;

public class GL11 {
    /**
     * Lists.
     */
    public static int glGenLists(int range) { // NoList
        record glGenLists(int range) implements Callable<Integer> {
            @Override
            public Integer call() throws Exception {
                return state.listManager.glGenLists(range);
            }
        }
        return state.exec.get(new glGenLists(range));
    }

    public static void glNewList(int list, int mode) {
        record glNewList(int list, int mode) implements Runnable {
            @Override
            public void run() {
                state.listManager.glNewList(list, mode);
            }
        }
        state.exec.execute(new glNewList(list, mode));
    }

    public static void glEndList() {
        record glEndList() implements Runnable {
            @Override
            public void run() {
                state.listManager.glEndList();
            }
        }
        state.exec.execute(new glEndList());
    }

    public static void glCallList(int list) {
        record glCallList(int list) implements Runnable {
            @Override
            public void run() {
                state.listManager.glCallList(list);
            }
        }
        state.exec.execute(new glCallList(list));
    }

    /**
     * Draw.
     */
    public static void glBegin(int mode) {
        record glBegin(int mode) implements Runnable, Recordable {
            @Override
            public void run() {
                state.vertexInterceptor.glBegin(mode);
            }
        }
        state.exec.execute(new glBegin(mode));
    }

    public static void glEnd() {
        record glEnd() implements Runnable, Recordable {
            @Override
            public void run() {
                state.vertexInterceptor.glEnd();
            }
        }
        state.exec.execute(new glEnd());
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

    public static void glColor3ub(byte red, byte green, byte blue) {
        glColor4f(
                (red & 0xFF) / 255f,
                (green & 0xFF) / 255f,
                (blue & 0xFF) / 255f,
                1f
        );
    }

    public static void glColor4f(float red, float green, float blue, float alpha) {
        record glColor4f(float red, float green, float blue, float alpha) implements Runnable, Recordable {
            @Override
            public void run() {
                state.vertexInterceptor.glColor4f(red, green, blue, alpha);
            }
        }
        state.exec.execute(new glColor4f(red, green, blue, alpha));
    }

    public static void glColor4ub(byte red, byte green, byte blue, byte alpha) {
        glColor4f(
                (red & 0xFF) / 255f,
                (green & 0xFF) / 255f,
                (blue & 0xFF) / 255f,
                (alpha & 0xFF) / 255f
        );
    }

    public static void glTexCoord2f(float s, float t) {
        glTexCoord4f(s, t, 0, 1);
    }

    public static void glTexCoord2d(double s, double t) {
        glTexCoord2f(
                (float) s,
                (float) t
        );
    }

    public static void glTexCoord4f(float s, float t, float r, float q) {
        record glTexCoord4f(float s, float t, float r, float q) implements Runnable, Recordable {
            @Override
            public void run() {
                state.vertexInterceptor.glTexCoord4f(s, t, r, q);
            }
        }
        state.exec.execute(new glTexCoord4f(s, t, r, q));
    }

    public static void glNormal3f(float nx, float ny, float nz) {
        record glNormal3f(float nx, float ny, float nz) implements Runnable, Recordable {
            @Override
            public void run() {
                state.vertexInterceptor.glNormal3f(nx, ny, nz);
            }
        }
        state.exec.execute(new glNormal3f(nx, ny, nz));
    }

    public static void glVertex2f(float x, float y) {
        glVertex3f(x, y, 0);
    }

    public static void glVertex2d(double x, double y) {
        glVertex3f(
                (float) x,
                (float) y,
                0
        );
    }

    public static void glVertex2i(int x, int y) {
        glVertex3f(
                (float) x,
                (float) y,
                0
        );
    }

    public static void glVertex3f(float x, float y, float z) {
        record glVertex3f(float x, float y, float z) implements Runnable, Recordable {
            @Override
            public void run() {
                state.vertexInterceptor.glVertex3f(x, y, z);
            }
        }
        state.exec.execute(new glVertex3f(x, y, z));
    }

    public static void glVertex3d(double x, double y, double z) {
        glVertex3f(
                (float) x,
                (float) y,
                (float) z
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
        state.clientAttribTracker.glEnableClientState(cap);
    }

    public static void glDisableClientState(int cap) { // NoList
        state.clientAttribTracker.glDisableClientState(cap);
    }

    public static void glPushClientAttrib(int mask) { // NoList
        record glPushClientAttrib(int mask) implements Runnable {
            @Override
            public void run() {
                state.vertexInterceptor.arraysTouched();
                org.lwjgl.opengl.GL11.glPushClientAttrib(mask);
            }
        }
        state.clientAttribTracker.glPushClientAttrib(mask);
        state.exec.execute(new glPushClientAttrib(mask));
    }

    public static void glPopClientAttrib() { // NoList
        record glPopClientAttrib() implements Runnable {
            @Override
            public void run() {
                state.vertexInterceptor.arraysTouched();
                org.lwjgl.opengl.GL11.glPopClientAttrib();
            }
        }
        state.clientAttribTracker.glPopClientAttrib();
        state.exec.execute(new glPopClientAttrib());
    }

    public static void glVertexPointer(int size, int stride, FloatBuffer pointer) { // NoList
        state.clientAttribTracker.glVertexPointer(size, org.lwjgl.opengl.GL11.GL_FLOAT, stride, pointer);
    }

    public static void glVertexPointer(int size, int type, int stride, ByteBuffer pointer) { // NoList
        state.clientAttribTracker.glVertexPointer(size, stride, type, pointer);
    }

    public static void glColorPointer(int size, boolean unsigned, int stride, ByteBuffer pointer) { // NoList
        int type = unsigned ? org.lwjgl.opengl.GL11.GL_UNSIGNED_BYTE : org.lwjgl.opengl.GL11.GL_BYTE;
        state.clientAttribTracker.glColorPointer(size, type, stride, pointer);
    }

    public static void glColorPointer(int size, int stride, FloatBuffer pointer) { // NoList
        state.clientAttribTracker.glColorPointer(size, org.lwjgl.opengl.GL11.GL_FLOAT, stride, pointer);
    }

    public static void glTexCoordPointer(int size, int stride, FloatBuffer pointer) { // NoList
        state.clientAttribTracker.glTexCoordPointer(size, org.lwjgl.opengl.GL11.GL_FLOAT, stride, pointer);
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
        state.clientAttribTracker.glTexCoordPointer(size, type, stride, pointer_buffer_offset);
        state.exec.execute(new glTexCoordPointer(size, type, stride, pointer_buffer_offset));
    }

    public static void glColorPointer(int size, int type, int stride, long pointer_buffer_offset) { // NoList
        record glColorPointer(int size, int type, int stride, long pointer_buffer_offset) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glColorPointer(size, type, stride, pointer_buffer_offset);
            }
        }
        state.clientAttribTracker.glColorPointer(size, type, stride, pointer_buffer_offset);
        state.exec.execute(new glColorPointer(size, type, stride, pointer_buffer_offset));
    }

    public static void glVertexPointer(int size, int type, int stride, long pointer_buffer_offset) { // NoList
        record glVertexPointer(int size, int type, int stride, long pointer_buffer_offset) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glVertexPointer(size, type, stride, pointer_buffer_offset);
            }
        }
        state.clientAttribTracker.glVertexPointer(size, type, stride, pointer_buffer_offset);
        state.exec.execute(new glVertexPointer(size, type, stride, pointer_buffer_offset));
    }

    public static void glDrawArrays(int mode, int first, int count) {
        record glDrawArrays(int mode, int first, int count, ClientAttribTracker.ArrayPointersSnapshot snapshot) implements Runnable, Recordable {
            @Override
            public void run() {
                Runnable glDrawArrays = () -> org.lwjgl.opengl.GL11.glDrawArrays(mode, first, count);
                state.vertexInterceptor.drawRecordedArrays(glDrawArrays, snapshot);
            }
        }

        final ClientAttribTracker.ArrayPointersSnapshot snapshot = state.clientAttribTracker.makeArrayPointersSnapshot();
        state.exec.execute(new glDrawArrays(mode, first, count, snapshot));
    }

    public static void glDrawElements(int mode, IntBuffer indices) {
        record glDrawElements(int mode, IntBuffer indices, ClientAttribTracker.ArrayPointersSnapshot snapshot) implements Runnable, Recordable {
            @Override
            public void run() {
                Runnable glDrawArrays = () -> org.lwjgl.opengl.GL11.glDrawElements(mode, indices);
                state.vertexInterceptor.drawRecordedArrays(glDrawArrays, snapshot);
            }
        }

        final IntBuffer indicesSnapshot = BufferUtil.snapshot(indices);
        final ClientAttribTracker.ArrayPointersSnapshot snapshot = state.clientAttribTracker.makeArrayPointersSnapshot();
        state.exec.execute(new glDrawElements(mode, indicesSnapshot, snapshot));
    }

    public static void glDrawElements(int mode, int indices_count, int type, long indices_buffer_offset) {
        record glDrawElements(int mode, int indices_count, int type, long indices_buffer_offset) implements Runnable, Recordable {
            @Override
            public void run() {
                state.attribManager.applyDrawAttribs();
                org.lwjgl.opengl.GL11.glDrawElements(mode, indices_count, type, indices_buffer_offset);
            }
        }
        state.exec.execute(new glDrawElements(mode, indices_count, type, indices_buffer_offset));
    }

    /**
     * Matrix.
     */
    public static void glMatrixMode(int mode) {
        record glMatrixMode(int mode) implements Runnable, Recordable {
            @Override
            public void run() {
                state.attribManager.glMatrixMode(mode);
            }
        }

        state.attribTracker.glMatrixMode(mode);
        state.exec.execute(new glMatrixMode(mode));
    }

    public static void glPushMatrix() {
        record glPushMatrix() implements Runnable, Recordable {
            @Override
            public void run() {
                state.transformManager.glPushMatrix();
            }
        }
        state.exec.execute(new glPushMatrix());
    }

    public static void glPopMatrix() {
        record glPopMatrix() implements Runnable, Recordable {
            @Override
            public void run() {
                state.transformManager.glPopMatrix();
            }
        }
        state.exec.execute(new glPopMatrix());
    }

    public static void glLoadIdentity() {
        record glLoadIdentity() implements Runnable, Recordable {
            @Override
            public void run() {
                state.transformManager.glLoadIdentity();
            }
        }
        state.exec.execute(new glLoadIdentity());
    }

    public static void glTranslatef(float x, float y, float z) {
        record glTranslatef(float x, float y, float z) implements Runnable, Recordable {
            @Override
            public void run() {
                state.transformManager.glTranslatef(x, y, z);
            }
        }
        state.exec.execute(new glTranslatef(x, y, z));
    }

    public static void glRotatef(float angle, float x, float y, float z) {
        record glRotatef(float angle, float x, float y, float z) implements Runnable, Recordable {
            @Override
            public void run() {
                state.transformManager.glRotatef(angle, x, y, z);
            }
        }
        state.exec.execute(new glRotatef(angle, x, y, z));
    }

    public static void glScalef(float x, float y, float z) {
        record glScalef(float x, float y, float z) implements Runnable, Recordable {
            @Override
            public void run() {
                state.transformManager.glScalef(x, y, z);
            }
        }
        state.exec.execute(new glScalef(x, y, z));
    }

    public static void glMultMatrix(FloatBuffer m) {
        record glMultMatrix(FloatBuffer m) implements Runnable, Recordable {
            @Override
            public void run() {
                state.transformManager.glMultMatrix(m);
            }
        }
        final FloatBuffer snapshot = BufferUtil.snapshot(m);
        state.exec.execute(new glMultMatrix(snapshot));
    }

    public static void glOrtho(double left, double right, double bottom, double top, double zNear, double zFar) {
        record glOrtho(double left, double right, double bottom, double top, double zNear, double zFar) implements Runnable, Recordable {
            @Override
            public void run() {
                state.transformManager.glOrtho(left, right, bottom, top, zNear, zFar);
            }
        }
        state.exec.execute(new glOrtho(left, right, bottom, top, zNear, zFar));
    }

    /**
     * Render context.
     */
    public static void glEnable(int cap) {
        record glEnable(int cap) implements Runnable, Recordable {
            @Override
            public void run() {
                if (state.attribManager.interceptEnable(cap)) {
                    state.attribManager.glEnable(cap);
                } else {
                    org.lwjgl.opengl.GL11.glEnable(cap);
                }
            }
        }
        state.exec.execute(new glEnable(cap));
    }

    public static void glDisable(int cap) {
        record glDisable(int cap) implements Runnable, Recordable {
            @Override
            public void run() {
                if (state.attribManager.interceptEnable(cap)) {
                    state.attribManager.glDisable(cap);
                } else {
                    org.lwjgl.opengl.GL11.glDisable(cap);
                }
            }
        }
        state.exec.execute(new glDisable(cap));
    }

    public static void glBlendFunc(int sfactor, int dfactor) {
        glBlendFuncSeparate(sfactor, dfactor, sfactor, dfactor);
    }

    public static void glBindTexture(int target, int texture) {
        record glBindTexture(int target, int texture) implements Runnable, Recordable {
            @Override
            public void run() {
                state.attribManager.glBindTexture(target, texture);
                org.lwjgl.opengl.GL11.glBindTexture(target, texture);
            }
        }

        state.attribTracker.glBindTexture(target, texture);
        state.exec.execute(new glBindTexture(target, texture));
    }

    public static void glPushAttrib(int mask) { // NoList
        record glPushAttrib(int mask) implements Runnable {
            @Override
            public void run() {
                state.attribManager.glPushAttrib(mask);
                org.lwjgl.opengl.GL11.glPushAttrib(mask);
            }
        }
        state.attribTracker.glPushAttrib(mask);
        state.exec.execute(new glPushAttrib(mask));
    }

    public static void glPopAttrib() { // NoList
        record glPopAttrib() implements Runnable {
            @Override
            public void run() {
                state.attribManager.glPopAttrib();
                org.lwjgl.opengl.GL11.glPopAttrib();
            }
        }
        state.attribTracker.glPopAttrib();
        state.exec.execute(new glPopAttrib());
    }

    /**
     * Other calls.
     */
    public static void glFlush() { // NoList
        // Don't do anything. glFlush and glFinish are mostly
        // redundant when Display update is being called.
    }

    public static void glFinish() { // NoList
    }

    public static void glColorMask(boolean red, boolean green, boolean blue, boolean alpha) {
        record glColorMask(boolean red, boolean green, boolean blue, boolean alpha) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glColorMask(red, green, blue, alpha);
            }
        }
        state.exec.execute(new glColorMask(red, green, blue, alpha));
    }

    public static void glDepthMask(boolean flag) {
        record glDepthMask(boolean flag) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glDepthMask(flag);
            }
        }
        state.exec.execute(new glDepthMask(flag));
    }

    public static void glViewport(int x, int y, int width, int height) {
        record glViewport(int x, int y, int width, int height) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glViewport(x, y, width, height);
            }
        }
        state.exec.execute(new glViewport(x, y, width, height));
    }

    public static void glTexParameteri(int target, int pname, int param) {
        record glTexParameteri(int target, int pname, int param) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glTexParameteri(target, pname, param);
            }
        }
        state.exec.execute(new glTexParameteri(target, pname, param));
    }

    public static void glTexParameter(int target, int pname, FloatBuffer param) {
        record glTexParameter(int target, int pname, FloatBuffer param) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glTexParameter(target, pname, param);
            }
        }
        final FloatBuffer snapshot = BufferUtil.snapshot(param);
        state.exec.execute(new glTexParameter(target, pname, snapshot));
    }

    public static void glClearColor(float red, float green, float blue, float alpha) {
        record glClearColor(float red, float green, float blue, float alpha) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glClearColor(red, green, blue, alpha);
            }
        }
        state.exec.execute(new glClearColor(red, green, blue, alpha));
    }

    public static void glClear(int mask) {
        record glClear(int mask) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glClear(mask);
            }
        }
        state.exec.execute(new glClear(mask));
    }

    public static void glScissor(int x, int y, int width, int height) {
        record glScissor(int x, int y, int width, int height) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glScissor(x, y, width, height);
            }
        }
        state.exec.execute(new glScissor(x, y, width, height));
    }

    public static void glStencilFunc(int func, int ref, int mask) {
        record glStencilFunc(int func, int ref, int mask) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glStencilFunc(func, ref, mask);
            }
        }
        state.exec.execute(new glStencilFunc(func, ref, mask));
    }

    public static void glStencilMask(int mask) {
        record glStencilMask(int mask) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glStencilMask(mask);
            }
        }
        state.exec.execute(new glStencilMask(mask));
    }

    public static void glStencilOp(int fail, int zfail, int zpass) {
        record glStencilOp(int fail, int zfail, int zpass) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glStencilOp(fail, zfail, zpass);
            }
        }
        state.exec.execute(new glStencilOp(fail, zfail, zpass));
    }

    public static void glClearStencil(int s) {
        record glClearStencil(int s) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glClearStencil(s);
            }
        }
        state.exec.execute(new glClearStencil(s));
    }

    public static void glAlphaFunc(int func, float ref) {
        record glAlphaFunc(int func, float ref) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glAlphaFunc(func, ref);
            }
        }
        state.exec.execute(new glAlphaFunc(func, ref));
    }

    public static void glHint(int target, int mode) {
        record glHint(int target, int mode) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glHint(target, mode);
            }
        }
        state.exec.execute(new glHint(target, mode));
    }

    public static void glLineWidth(float width) {
        record glLineWidth(float width) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glLineWidth(width);
            }
        }
        state.exec.execute(new glLineWidth(width));
    }

    public static void glPointSize(float size) {
        record glPointSize(float size) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glPointSize(size);
            }
        }
        state.exec.execute(new glPointSize(size));
    }

    public static void glColorMaterial(int face, int mode) {
        record glColorMaterial(int face, int mode) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glColorMaterial(face, mode);
            }
        }
        state.exec.execute(new glColorMaterial(face, mode));
    }

    public static void glShadeModel(int mode) {
        record glShadeModel(int mode) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glShadeModel(mode);
            }
        }
        state.exec.execute(new glShadeModel(mode));
    }

    public static void glTexImage1D(int target, int level, int internalformat, int width, int border, int format, int type, ByteBuffer pixels) { // NoList
        record glTexImage1D(int target, int level, int internalformat, int width, int border, int format, int type, ByteBuffer pixels) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glTexImage1D(target, level, internalformat, width, border, format, type, pixels);
            }
        }
        final ByteBuffer snapshot = BufferUtil.snapshot(pixels);
        state.exec.execute(new glTexImage1D(target, level, internalformat, width, border, format, type, snapshot));
    }

    public static void glTexImage2D(int target, int level, int internalformat, int width, int height, int border, int format, int type, ByteBuffer pixels) { // NoList
        record glTexImage2D(int target, int level, int internalformat, int width, int height, int border, int format, int type, ByteBuffer snapshot, StackTraceElement[] stack) implements Runnable {
            @Override
            public void run() {
                try {
                    org.lwjgl.opengl.GL11.glTexImage2D(target, level, internalformat, width, height, border, format, type, snapshot);
                } catch (Throwable t) {
                    RuntimeException e = new RuntimeException(this.toString(), t);
                    e.setStackTrace(stack);

                    throw e;
                }
            }
        }

        final ByteBuffer snapshot = BufferUtil.snapshot(pixels);
        final StackTraceElement[] stack = new Exception().getStackTrace();

        state.exec.execute(new glTexImage2D(target, level, internalformat, width, height, border, format, type, snapshot, stack));
    }

    public static void glTexImage2D(int target, int level, int internalformat, int width, int height, int border, int format, int type, FloatBuffer pixels) { // NoList
        record glTexImage2D(int target, int level, int internalformat, int width, int height, int border, int format, int type, FloatBuffer pixels) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glTexImage2D(target, level, internalformat, width, height, border, format, type, pixels);
            }
        }
        final FloatBuffer snapshot = BufferUtil.snapshot(pixels);
        state.exec.execute(new glTexImage2D(target, level, internalformat, width, height, border, format, type, snapshot));
    }

    public static void glTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, ByteBuffer pixels) { // NoList ?
        record glTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, ByteBuffer pixels) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixels);
            }
        }
        final ByteBuffer snapshot = BufferUtil.snapshot(pixels);
        state.exec.execute(new glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, snapshot));
    }

    public static void glTexSubImage1D(int target, int level, int xoffset, int width, int format, int type, FloatBuffer pixels) { // NoList ?
        record glTexSubImage1D(int target, int level, int xoffset, int width, int format, int type, FloatBuffer pixels) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glTexSubImage1D(target, level, xoffset, width, format, type, pixels);
            }
        }
        final FloatBuffer snapshot = BufferUtil.snapshot(pixels);
        state.exec.execute(new glTexSubImage1D(target, level, xoffset, width, format, type, snapshot));
    }

    public static void glLight(int light, int pname, FloatBuffer params) {
        record glLight(int light, int pname, FloatBuffer params) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glLight(light, pname, params);
            }
        }
        final FloatBuffer snapshot = BufferUtil.snapshot(params);
        state.exec.execute(new glLight(light, pname, snapshot));
    }

    public static void glMaterial(int face, int pname, FloatBuffer params) {
        record glMaterial(int face, int pname, FloatBuffer params) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glMaterial(face, pname, params);
            }
        }
        final FloatBuffer snapshot = BufferUtil.snapshot(params);
        state.exec.execute(new glMaterial(face, pname, snapshot));
    }

    public static void glDeleteTextures(int texture) { // NoList
        record glDeleteTextures(int texture) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glDeleteTextures(texture);
            }
        }
        state.exec.execute(new glDeleteTextures(texture));
    }

    public static void glDeleteTextures(IntBuffer textures) { // NoList
        record glDeleteTextures(IntBuffer textures) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glDeleteTextures(textures);
            }
        }
        final IntBuffer snapshot = BufferUtil.snapshot(textures);
        state.exec.execute(new glDeleteTextures(snapshot));
    }

    public static void glCopyTexImage2D(int target, int level, int internalFormat, int x, int y, int width, int height, int border) {
        record glCopyTexImage2D(int target, int level, int internalFormat, int x, int y, int width, int height, int border) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glCopyTexImage2D(target, level, internalFormat, x, y, width, height, border);
            }
        }
        state.exec.execute(new glCopyTexImage2D(target, level, internalFormat, x, y, width, height, border));
    }

    public static void glCopyTexSubImage2D(int target, int level, int xoffset, int yoffset, int x, int y, int width, int height) {
        record glCopyTexSubImage2D(int target, int level, int xoffset, int yoffset, int x, int y, int width, int height) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glCopyTexSubImage2D(target, level, xoffset, yoffset, x, y, width, height);
            }
        }
        state.exec.execute(new glCopyTexSubImage2D(target, level, xoffset, yoffset, x, y, width, height));
    }

    public static void glEdgeFlag(boolean flag) {
        record glEdgeFlag(boolean flag) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glEdgeFlag(flag);
            }
        }
        state.exec.execute(new glEdgeFlag(flag));
    }

    public static void glCullFace(int mode) {
        record glCullFace(int mode) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glCullFace(mode);
            }
        }
        state.exec.execute(new glCullFace(mode));
    }

    public static void glDepthFunc(int func) {
        record glDepthFunc(int func) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glDepthFunc(func);
            }
        }
        state.exec.execute(new glDepthFunc(func));
    }

    public static void glDepthRange(double zNear, double zFar) {
        record glDepthRange(double zNear, double zFar) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glDepthRange(zNear, zFar);
            }
        }
        state.exec.execute(new glDepthRange(zNear, zFar));
    }

    public static void glFrontFace(int mode) {
        record glFrontFace(int mode) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glFrontFace(mode);
            }
        }
        state.exec.execute(new glFrontFace(mode));
    }

    public static void glPixelStorei(int pname, int param) { // NoList
        record glPixelStorei(int pname, int param) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glPixelStorei(pname, param);
            }
        }
        state.exec.execute(new glPixelStorei(pname, param));
    }

    public static void glReadBuffer(int mode) {
        record glReadBuffer(int mode) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glReadBuffer(mode);
            }
        }
        state.exec.execute(new glReadBuffer(mode));
    }

    public static void glTexEnvi(int target, int pname, int param) {
        record glTexEnvi(int target, int pname, int param) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glTexEnvi(target, pname, param);
            }
        }
        state.exec.execute(new glTexEnvi(target, pname, param));
    }

    /**
     * Blocking.
     */
    public static int glGetInteger(int pname) { // NoList
        switch (pname) {
            case org.lwjgl.opengl.GL11.GL_TEXTURE_BINDING_2D:
                return state.attribTracker.getTextureBinding();
            case org.lwjgl.opengl.GL11.GL_MATRIX_MODE:
                return state.attribTracker.getMatrixMode();
            case org.lwjgl.opengl.GL13.GL_ACTIVE_TEXTURE:
                return state.attribTracker.getActiveTexture();
            case org.lwjgl.opengl.GL15.GL_ARRAY_BUFFER_BINDING:
                return state.attribTracker.getArrayBufferBinding();
            case org.lwjgl.opengl.GL30.GL_FRAMEBUFFER_BINDING:
                return state.attribTracker.getFramebufferBinding();
            case org.lwjgl.opengl.GL30.GL_VERTEX_ARRAY_BINDING:
                return state.attribTracker.getVertexArrayBinding();

            case NVXGpuMemoryInfo.GL_GPU_MEMORY_INFO_CURRENT_AVAILABLE_VIDMEM_NVX:
            case NVXGpuMemoryInfo.GL_GPU_MEMORY_INFO_DEDICATED_VIDMEM_NVX:
            case NVXGpuMemoryInfo.GL_GPU_MEMORY_INFO_TOTAL_AVAILABLE_MEMORY_NVX:
            case ATIMeminfo.GL_TEXTURE_FREE_MEMORY_ATI:
                Integer cached = state.glStateCache.getOtherInteger(pname);
                if (cached != null) {
                    return cached;
                }
        }

        record glGetInteger(int pname) implements Callable<Integer> {
            @Override
            public Integer call() throws Exception {
                return org.lwjgl.opengl.GL11.glGetInteger(pname);
            }
        }
        return state.exec.get(new glGetInteger(pname));
    }

    public static float glGetFloat(int pname) { // NoList
        switch (pname) {
            case org.lwjgl.opengl.GL11.GL_LINE_WIDTH:
                return state.attribTracker.getLineWidth();
        }

        record glGetFloat(int pname) implements Callable<Float> {
            @Override
            public Float call() throws Exception {
                return org.lwjgl.opengl.GL11.glGetFloat(pname);
            }
        }
        return state.exec.get(new glGetFloat(pname));
    }

    public static void glGenTextures(IntBuffer textures) { // NoList
        record glGenTextures(IntBuffer textures) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glGenTextures(textures);
            }
        }
        state.exec.wait(new glGenTextures(textures));
    }

    public static int glGenTextures() { // NoList
        record glGenTextures() implements Callable<Integer> {
            @Override
            public Integer call() throws Exception {
                return org.lwjgl.opengl.GL11.glGenTextures();
            }
        }
        return state.exec.get(new glGenTextures());
    }

    public static String glGetString(int name) { // NoList
        String result;

        if (name == org.lwjgl.opengl.GL11.GL_EXTENSIONS) {
            result = state.glStateCache.getGlStringExtensions();
        } else {
            record glGetString(int name) implements Callable<String> {
                @Override
                public String call() throws Exception {
                    return org.lwjgl.opengl.GL11.glGetString(name);
                }
            }
            result = state.exec.get(new glGetString(name));
        }

        // Disable vanilla usage of VBOs. When VBO array draws are recorded
        // in a display list, they cause visual glitches. Correct handling of
        // VBOs inside display lists is possible, but complicated and offers
        // no performance benefits.
        if (name == org.lwjgl.opengl.GL11.GL_EXTENSIONS) {
            return result.replace("GL_ARB_vertex_buffer_object", "");
        }

        return result;
    }

    public static void glReadPixels(int x, int y, int width, int height, int format, int type, FloatBuffer pixels) { // NoList
        record glReadPixels(int x, int y, int width, int height, int format, int type, FloatBuffer pixels) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glReadPixels(x, y, width, height, format, type, pixels);
            }
        }
        state.exec.wait(new glReadPixels(x, y, width, height, format, type, pixels));
    }

    public static void glReadPixels(int x, int y, int width, int height, int format, int type, IntBuffer pixels) { // NoList
        record glReadPixels(int x, int y, int width, int height, int format, int type, IntBuffer pixels) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glReadPixels(x, y, width, height, format, type, pixels);
            }
        }
        state.exec.wait(new glReadPixels(x, y, width, height, format, type, pixels));
    }

    public static void glReadPixels(int x, int y, int width, int height, int format, int type, ByteBuffer pixels) { // NoList
        record glReadPixels(int x, int y, int width, int height, int format, int type, ByteBuffer pixels) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glReadPixels(x, y, width, height, format, type, pixels);
            }
        }
        state.exec.wait(new glReadPixels(x, y, width, height, format, type, pixels));
    }

    public static int glGetError() { // NoList
        record glGetError() implements Callable<Integer> {
            @Override
            public Integer call() throws Exception {
                return org.lwjgl.opengl.GL11.glGetError();
            }
        }
        return state.exec.get(new glGetError());
    }

    public static int glGetTexLevelParameteri(int target, int level, int pname) { // NoList
        record glGetTexLevelParameteri(int target, int level, int pname) implements Callable<Integer> {
            @Override
            public Integer call() throws Exception {
                return org.lwjgl.opengl.GL11.glGetTexLevelParameteri(target, level, pname);
            }
        }
        return state.exec.get(new glGetTexLevelParameteri(target, level, pname));
    }

    public static void glGetTexImage(int target, int level, int format, int type, ByteBuffer pixels) { // NoList
        record glGetTexImage(int target, int level, int format, int type, ByteBuffer pixels) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glGetTexImage(target, level, format, type, pixels);
            }
        }
        state.exec.wait(new glGetTexImage(target, level, format, type, pixels));
    }

    public static void glGetTexImage(int target, int level, int format, int type, FloatBuffer pixels) { // NoList
        record glGetTexImage(int target, int level, int format, int type, FloatBuffer pixels) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glGetTexImage(target, level, format, type, pixels);
            }
        }
        state.exec.wait(new glGetTexImage(target, level, format, type, pixels));
    }
}
