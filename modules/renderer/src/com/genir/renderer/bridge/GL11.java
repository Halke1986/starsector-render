package com.genir.renderer.bridge;

import com.genir.renderer.bridge.context.BufferUtil;
import com.genir.renderer.bridge.context.ClientAttribTracker;
import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.Recordable;
import com.genir.renderer.bridge.context.stall.AttribState;
import org.lwjgl.opengl.ATIMeminfo;
import org.lwjgl.opengl.NVXGpuMemoryInfo;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.util.concurrent.Callable;

import static com.genir.renderer.bridge.GL14.glBlendFuncSeparate;
import static com.genir.renderer.bridge.context.BufferUtil.putIfPossible;
import static com.genir.renderer.bridge.context.ContextManager.getContext;
import static com.genir.renderer.bridge.context.ContextManager.getThreadContext;

public class GL11 {
    /**
     * Lists.
     */
    public static int glGenLists(int range) { // NoList
        record glGenLists(int contextId, int range) implements Callable<Integer> {
            @Override
            public Integer call() throws Exception {
                return getContext(contextId).listManager.glGenLists(range);
            }
        }

        final Context context = getThreadContext();
        return context.exec.get(new glGenLists(context.id, range));
    }

    public static void glNewList(int list, int mode) {
        record glNewList(int contextId, int list, int mode) implements Runnable {
            @Override
            public void run() {
                getContext(contextId).listManager.glNewList(list, mode);
            }
        }

        final Context context = getThreadContext();
        context.exec.execute(new glNewList(context.id, list, mode));
    }

    public static void glEndList() {
        record glEndList(int contextId) implements Runnable {
            @Override
            public void run() {
                getContext(contextId).listManager.glEndList();
            }
        }

        final Context context = getThreadContext();
        context.exec.execute(new glEndList(context.id));
    }

    public static void glCallList(int list) {
        record glCallList(int contextId, int list) implements Runnable {
            @Override
            public void run() {
                getContext(contextId).listManager.glCallList(list);
            }
        }

        final Context context = getThreadContext();
        context.exec.execute(new glCallList(context.id, list));
    }

    /**
     * Draw.
     */
    public static void glBegin(int mode) {
        record glBegin(int contextId, int mode) implements Runnable, Recordable {
            @Override
            public void run() {
                getContext(contextId).vertexInterceptor.glBegin(mode);
            }
        }

        final Context context = getThreadContext();
        context.exec.execute(new glBegin(context.id, mode));
    }

    public static void glEnd() {
        record glEnd(int contextId) implements Runnable, Recordable {
            @Override
            public void run() {
                getContext(contextId).vertexInterceptor.glEnd();
            }
        }

        final Context context = getThreadContext();
        context.exec.execute(new glEnd(context.id));
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
        record glColor4f(int contextId, float red, float green, float blue, float alpha) implements Runnable, Recordable {
            @Override
            public void run() {
                getContext(contextId).vertexInterceptor.glColor4f(red, green, blue, alpha);
            }
        }

        final Context context = getThreadContext();
        context.exec.execute(new glColor4f(context.id, red, green, blue, alpha));
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
        record glTexCoord4f(int contextId, float s, float t, float r, float q) implements Runnable, Recordable {
            @Override
            public void run() {
                getContext(contextId).vertexInterceptor.glTexCoord4f(s, t, r, q);
            }
        }

        final Context context = getThreadContext();
        context.exec.execute(new glTexCoord4f(context.id, s, t, r, q));
    }

    public static void glNormal3f(float nx, float ny, float nz) {
        record glNormal3f(int contextId, float nx, float ny, float nz) implements Runnable, Recordable {
            @Override
            public void run() {
                getContext(contextId).vertexInterceptor.glNormal3f(nx, ny, nz);
            }
        }

        final Context context = getThreadContext();
        context.exec.execute(new glNormal3f(context.id, nx, ny, nz));
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
        record glVertex3f(int contextId, float x, float y, float z) implements Runnable, Recordable {
            @Override
            public void run() {
                getContext(contextId).vertexInterceptor.glVertex3f(x, y, z);
            }
        }

        final Context context = getThreadContext();
        context.exec.execute(new glVertex3f(context.id, x, y, z));
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
        getThreadContext().clientAttribTracker.glEnableClientState(cap);
    }

    public static void glDisableClientState(int cap) { // NoList
        getThreadContext().clientAttribTracker.glDisableClientState(cap);
    }

    public static void glPushClientAttrib(int mask) { // NoList
        record glPushClientAttrib(int contextId, int mask) implements Runnable {
            @Override
            public void run() {
                getContext(contextId).vertexInterceptor.arraysTouched();
                org.lwjgl.opengl.GL11.glPushClientAttrib(mask);
            }
        }

        final Context context = getThreadContext();
        context.clientAttribTracker.glPushClientAttrib(mask);
        context.exec.execute(new glPushClientAttrib(context.id, mask));
    }

    public static void glPopClientAttrib() { // NoList
        record glPopClientAttrib(int contextId) implements Runnable {
            @Override
            public void run() {
                getContext(contextId).vertexInterceptor.arraysTouched();
                org.lwjgl.opengl.GL11.glPopClientAttrib();
            }
        }

        final Context context = getThreadContext();
        context.clientAttribTracker.glPopClientAttrib();
        context.exec.execute(new glPopClientAttrib(context.id));
    }

    public static void glVertexPointer(int size, int stride, FloatBuffer pointer) { // NoList
        getThreadContext().clientAttribTracker.glVertexPointer(size, org.lwjgl.opengl.GL11.GL_FLOAT, stride, pointer);
    }

    public static void glVertexPointer(int size, int type, int stride, ByteBuffer pointer) { // NoList
        getThreadContext().clientAttribTracker.glVertexPointer(size, stride, type, pointer);
    }

    public static void glColorPointer(int size, boolean unsigned, int stride, ByteBuffer pointer) { // NoList
        int type = unsigned ? org.lwjgl.opengl.GL11.GL_UNSIGNED_BYTE : org.lwjgl.opengl.GL11.GL_BYTE;
        getThreadContext().clientAttribTracker.glColorPointer(size, type, stride, pointer);
    }

    public static void glColorPointer(int size, int stride, FloatBuffer pointer) { // NoList
        getThreadContext().clientAttribTracker.glColorPointer(size, org.lwjgl.opengl.GL11.GL_FLOAT, stride, pointer);
    }

    public static void glTexCoordPointer(int size, int stride, FloatBuffer pointer) { // NoList
        getThreadContext().clientAttribTracker.glTexCoordPointer(size, org.lwjgl.opengl.GL11.GL_FLOAT, stride, pointer);
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

        final Context context = getThreadContext();
        context.clientAttribTracker.glTexCoordPointer(size, type, stride, pointer_buffer_offset);
        context.exec.execute(new glTexCoordPointer(size, type, stride, pointer_buffer_offset));
    }

    public static void glColorPointer(int size, int type, int stride, long pointer_buffer_offset) { // NoList
        record glColorPointer(int size, int type, int stride, long pointer_buffer_offset) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glColorPointer(size, type, stride, pointer_buffer_offset);
            }
        }

        final Context context = getThreadContext();
        context.clientAttribTracker.glColorPointer(size, type, stride, pointer_buffer_offset);
        context.exec.execute(new glColorPointer(size, type, stride, pointer_buffer_offset));
    }

    public static void glVertexPointer(int size, int type, int stride, long pointer_buffer_offset) { // NoList
        record glVertexPointer(int size, int type, int stride, long pointer_buffer_offset) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glVertexPointer(size, type, stride, pointer_buffer_offset);
            }
        }

        final Context context = getThreadContext();
        context.clientAttribTracker.glVertexPointer(size, type, stride, pointer_buffer_offset);
        context.exec.execute(new glVertexPointer(size, type, stride, pointer_buffer_offset));
    }

    public static void glDrawArrays(int mode, int first, int count) {
        record glDrawArrays(int contextId, int mode, int first, int count, ClientAttribTracker.ArrayPointersSnapshot snapshot) implements Runnable, Recordable {
            @Override
            public void run() {
                Runnable glDrawArrays = () -> org.lwjgl.opengl.GL11.glDrawArrays(mode, first, count);
                getContext(contextId).vertexInterceptor.drawRecordedArrays(glDrawArrays, snapshot);
            }
        }

        final Context context = getThreadContext();
        final ClientAttribTracker.ArrayPointersSnapshot snapshot = context.clientAttribTracker.makeArrayPointersSnapshot();
        context.exec.execute(new glDrawArrays(context.id, mode, first, count, snapshot));
    }

    public static void glDrawElements(int mode, IntBuffer indices) {
        record glDrawElements(int contextId, int mode, IntBuffer indices, ClientAttribTracker.ArrayPointersSnapshot snapshot) implements Runnable, Recordable {
            @Override
            public void run() {
                Runnable glDrawArrays = () -> org.lwjgl.opengl.GL11.glDrawElements(mode, indices);
                getContext(contextId).vertexInterceptor.drawRecordedArrays(glDrawArrays, snapshot);
            }
        }

        final IntBuffer indicesSnapshot = BufferUtil.snapshot(indices);
        final Context context = getThreadContext();
        final ClientAttribTracker.ArrayPointersSnapshot snapshot = context.clientAttribTracker.makeArrayPointersSnapshot();
        context.exec.execute(new glDrawElements(context.id, mode, indicesSnapshot, snapshot));
    }

    public static void glDrawElements(int mode, int indices_count, int type, long indices_buffer_offset) {
        record glDrawElements(int contextId, int mode, int indices_count, int type, long indices_buffer_offset) implements Runnable, Recordable {
            @Override
            public void run() {
                getContext(contextId).attribManager.applyDrawAttribs();
                org.lwjgl.opengl.GL11.glDrawElements(mode, indices_count, type, indices_buffer_offset);
            }
        }

        final Context context = getThreadContext();
        context.exec.execute(new glDrawElements(context.id, mode, indices_count, type, indices_buffer_offset));
    }

    /**
     * Matrix.
     */
    public static void glMatrixMode(int mode) {
        record glMatrixMode(int contextId, int mode) implements Runnable, Recordable {
            @Override
            public void run() {
                getContext(contextId).attribManager.glMatrixMode(mode);
            }
        }

        final Context context = getThreadContext();
        context.attribTracker.glMatrixMode(mode);
        context.exec.execute(new glMatrixMode(context.id, mode));
    }

    public static void glPushMatrix() {
        record glPushMatrix(int contextId) implements Runnable, Recordable {
            @Override
            public void run() {
                getContext(contextId).transformManager.glPushMatrix();
            }
        }

        final Context context = getThreadContext();
        context.exec.execute(new glPushMatrix(context.id));
    }

    public static void glPopMatrix() {
        record glPopMatrix(int contextId) implements Runnable, Recordable {
            @Override
            public void run() {
                getContext(contextId).transformManager.glPopMatrix();
            }
        }

        final Context context = getThreadContext();
        context.exec.execute(new glPopMatrix(context.id));
    }

    public static void glLoadIdentity() {
        record glLoadIdentity(int contextId) implements Runnable, Recordable {
            @Override
            public void run() {
                getContext(contextId).transformManager.glLoadIdentity();
            }
        }

        final Context context = getThreadContext();
        context.exec.execute(new glLoadIdentity(context.id));
    }

    public static void glTranslatef(float x, float y, float z) {
        record glTranslatef(int contextId, float x, float y, float z) implements Runnable, Recordable {
            @Override
            public void run() {
                getContext(contextId).transformManager.glTranslatef(x, y, z);
            }
        }

        final Context context = getThreadContext();
        context.exec.execute(new glTranslatef(context.id, x, y, z));
    }

    public static void glRotatef(float angle, float x, float y, float z) {
        record glRotatef(int contextId, float angle, float x, float y, float z) implements Runnable, Recordable {
            @Override
            public void run() {
                getContext(contextId).transformManager.glRotatef(angle, x, y, z);
            }
        }

        final Context context = getThreadContext();
        context.exec.execute(new glRotatef(context.id, angle, x, y, z));
    }

    public static void glScalef(float x, float y, float z) {
        record glScalef(int contextId, float x, float y, float z) implements Runnable, Recordable {
            @Override
            public void run() {
                getContext(contextId).transformManager.glScalef(x, y, z);
            }
        }

        final Context context = getThreadContext();
        context.exec.execute(new glScalef(context.id, x, y, z));
    }

    public static void glMultMatrix(FloatBuffer m) {
        record glMultMatrix(int contextId, FloatBuffer m) implements Runnable, Recordable {
            @Override
            public void run() {
                getContext(contextId).transformManager.glMultMatrix(m);
            }
        }

        final FloatBuffer snapshot = BufferUtil.snapshot(m);
        final Context context = getThreadContext();
        context.exec.execute(new glMultMatrix(context.id, snapshot));
    }

    public static void glLoadMatrix(FloatBuffer m) {
        record glLoadMatrix(int contextId, FloatBuffer m) implements Runnable, Recordable {
            @Override
            public void run() {
                getContext(contextId).transformManager.glLoadMatrix(m);
            }
        }

        final FloatBuffer snapshot = BufferUtil.snapshot(m);
        final Context context = getThreadContext();
        context.exec.execute(new glLoadMatrix(context.id, snapshot));
    }

    public static void glOrtho(double left, double right, double bottom, double top, double zNear, double zFar) {
        record glOrtho(int contextId, double left, double right, double bottom, double top, double zNear, double zFar) implements Runnable, Recordable {
            @Override
            public void run() {
                getContext(contextId).transformManager.glOrtho(left, right, bottom, top, zNear, zFar);
            }
        }

        final Context context = getThreadContext();
        context.exec.execute(new glOrtho(context.id, left, right, bottom, top, zNear, zFar));
    }

    /**
     * Render getContext().
     */
    public static void glEnable(int cap) {
        record glEnable(int contextId, int cap) implements Runnable, Recordable {
            @Override
            public void run() {
                Context context = getContext(contextId);
                if (context.attribManager.interceptEnable(cap)) {
                    context.attribManager.glEnable(cap);
                } else {
                    org.lwjgl.opengl.GL11.glEnable(cap);
                }
            }
        }

        final Context context = getThreadContext();
        context.attribTracker.glEnable(cap);
        context.exec.execute(new glEnable(context.id, cap));
    }

    public static void glDisable(int cap) {
        record glDisable(int contextId, int cap) implements Runnable, Recordable {
            @Override
            public void run() {
                Context context = getContext(contextId);
                if (context.attribManager.interceptEnable(cap)) {
                    context.attribManager.glDisable(cap);
                } else {
                    org.lwjgl.opengl.GL11.glDisable(cap);
                }
            }
        }

        final Context context = getThreadContext();
        context.attribTracker.glDisable(cap);
        context.exec.execute(new glDisable(context.id, cap));
    }

    public static void glBlendFunc(int sfactor, int dfactor) {
        glBlendFuncSeparate(sfactor, dfactor, sfactor, dfactor);
    }

    public static void glBindTexture(int target, int texture) {
        record glBindTexture(int contextId, int target, int texture) implements Runnable, Recordable {
            @Override
            public void run() {
                getContext(contextId).attribManager.glBindTexture(target, texture);
                org.lwjgl.opengl.GL11.glBindTexture(target, texture);
            }
        }

        final Context context = getThreadContext();
        context.attribTracker.glBindTexture(target, texture);
        context.exec.execute(new glBindTexture(context.id, target, texture));
    }

    public static void glPushAttrib(int mask) { // NoList
        record glPushAttrib(int contextId, int mask) implements Runnable {
            @Override
            public void run() {
                getContext(contextId).attribManager.glPushAttrib(mask);
                org.lwjgl.opengl.GL11.glPushAttrib(mask);
            }
        }

        final Context context = getThreadContext();
        context.attribTracker.glPushAttrib(mask);
        context.exec.execute(new glPushAttrib(context.id, mask));
    }

    public static void glPopAttrib() { // NoList
        record glPopAttrib(int contextId) implements Runnable {
            @Override
            public void run() {
                getContext(contextId).attribManager.glPopAttrib();
                org.lwjgl.opengl.GL11.glPopAttrib();
            }
        }

        final Context context = getThreadContext();
        context.attribTracker.glPopAttrib();
        context.exec.execute(new glPopAttrib(context.id));
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

        getThreadContext().exec.execute(new glColorMask(red, green, blue, alpha));
    }

    public static void glDepthMask(boolean flag) {
        record glDepthMask(boolean flag) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glDepthMask(flag);
            }
        }

        getThreadContext().exec.execute(new glDepthMask(flag));
    }

    public static void glViewport(int x, int y, int width, int height) {
        record glViewport(int x, int y, int width, int height) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glViewport(x, y, width, height);
            }
        }

        final Context context = getThreadContext();
        context.attribTracker.glViewport(x, y, width, height);
        context.exec.execute(new glViewport(x, y, width, height));
    }

    public static void glTexParameteri(int target, int pname, int param) {
        record glTexParameteri(int target, int pname, int param) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glTexParameteri(target, pname, param);
            }
        }

        getThreadContext().exec.execute(new glTexParameteri(target, pname, param));
    }

    public static void glTexParameter(int target, int pname, FloatBuffer param) {
        record glTexParameter(int target, int pname, FloatBuffer param) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glTexParameter(target, pname, param);
            }
        }

        final FloatBuffer snapshot = BufferUtil.snapshot(param);
        getThreadContext().exec.execute(new glTexParameter(target, pname, snapshot));
    }

    public static void glClearColor(float red, float green, float blue, float alpha) {
        record glClearColor(float red, float green, float blue, float alpha) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glClearColor(red, green, blue, alpha);
            }
        }

        getThreadContext().exec.execute(new glClearColor(red, green, blue, alpha));
    }

    public static void glClear(int mask) {
        record glClear(int mask) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glClear(mask);
            }
        }

        getThreadContext().exec.execute(new glClear(mask));
    }

    public static void glScissor(int x, int y, int width, int height) {
        record glScissor(int x, int y, int width, int height) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glScissor(x, y, width, height);
            }
        }

        getThreadContext().exec.execute(new glScissor(x, y, width, height));
    }

    public static void glStencilFunc(int func, int ref, int mask) {
        record glStencilFunc(int func, int ref, int mask) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glStencilFunc(func, ref, mask);
            }
        }

        getThreadContext().exec.execute(new glStencilFunc(func, ref, mask));
    }

    public static void glStencilMask(int mask) {
        record glStencilMask(int mask) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glStencilMask(mask);
            }
        }

        getThreadContext().exec.execute(new glStencilMask(mask));
    }

    public static void glStencilOp(int fail, int zfail, int zpass) {
        record glStencilOp(int fail, int zfail, int zpass) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glStencilOp(fail, zfail, zpass);
            }
        }

        getThreadContext().exec.execute(new glStencilOp(fail, zfail, zpass));
    }

    public static void glClearStencil(int s) {
        record glClearStencil(int s) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glClearStencil(s);
            }
        }

        getThreadContext().exec.execute(new glClearStencil(s));
    }

    public static void glAlphaFunc(int func, float ref) {
        record glAlphaFunc(int func, float ref) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glAlphaFunc(func, ref);
            }
        }

        getThreadContext().exec.execute(new glAlphaFunc(func, ref));
    }

    public static void glHint(int target, int mode) {
        record glHint(int target, int mode) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glHint(target, mode);
            }
        }

        getThreadContext().exec.execute(new glHint(target, mode));
    }

    public static void glLineWidth(float width) {
        record glLineWidth(float width) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glLineWidth(width);
            }
        }

        getThreadContext().exec.execute(new glLineWidth(width));
    }

    public static void glPointSize(float size) {
        record glPointSize(float size) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glPointSize(size);
            }
        }

        getThreadContext().exec.execute(new glPointSize(size));
    }

    public static void glColorMaterial(int face, int mode) {
        record glColorMaterial(int face, int mode) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glColorMaterial(face, mode);
            }
        }

        getThreadContext().exec.execute(new glColorMaterial(face, mode));
    }

    public static void glShadeModel(int mode) {
        record glShadeModel(int mode) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glShadeModel(mode);
            }
        }

        getThreadContext().exec.execute(new glShadeModel(mode));
    }

    public static void glTexImage1D(int target, int level, int internalformat, int width, int border, int format, int type, ByteBuffer pixels) { // NoList
        record glTexImage1D(int target, int level, int internalformat, int width, int border, int format, int type, ByteBuffer pixels) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glTexImage1D(target, level, internalformat, width, border, format, type, pixels);
            }
        }

        final ByteBuffer snapshot = BufferUtil.snapshot(pixels);
        getThreadContext().exec.execute(new glTexImage1D(target, level, internalformat, width, border, format, type, snapshot));
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

        getThreadContext().exec.execute(new glTexImage2D(target, level, internalformat, width, height, border, format, type, snapshot, stack));
    }

    public static void glTexImage2D(int target, int level, int internalformat, int width, int height, int border, int format, int type, FloatBuffer pixels) { // NoList
        record glTexImage2D(int target, int level, int internalformat, int width, int height, int border, int format, int type, FloatBuffer pixels) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glTexImage2D(target, level, internalformat, width, height, border, format, type, pixels);
            }
        }

        final FloatBuffer snapshot = BufferUtil.snapshot(pixels);
        getThreadContext().exec.execute(new glTexImage2D(target, level, internalformat, width, height, border, format, type, snapshot));
    }

    public static void glTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, ByteBuffer pixels) { // NoList ?
        record glTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, ByteBuffer pixels) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixels);
            }
        }

        final ByteBuffer snapshot = BufferUtil.snapshot(pixels);
        getThreadContext().exec.execute(new glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, snapshot));
    }

    public static void glTexSubImage1D(int target, int level, int xoffset, int width, int format, int type, FloatBuffer pixels) { // NoList ?
        record glTexSubImage1D(int target, int level, int xoffset, int width, int format, int type, FloatBuffer pixels) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glTexSubImage1D(target, level, xoffset, width, format, type, pixels);
            }
        }

        final FloatBuffer snapshot = BufferUtil.snapshot(pixels);
        getThreadContext().exec.execute(new glTexSubImage1D(target, level, xoffset, width, format, type, snapshot));
    }

    public static void glLight(int light, int pname, FloatBuffer params) {
        record glLight(int light, int pname, FloatBuffer params) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glLight(light, pname, params);
            }
        }

        final FloatBuffer snapshot = BufferUtil.snapshot(params);
        getThreadContext().exec.execute(new glLight(light, pname, snapshot));
    }

    public static void glMaterial(int face, int pname, FloatBuffer params) {
        record glMaterial(int face, int pname, FloatBuffer params) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glMaterial(face, pname, params);
            }
        }

        final FloatBuffer snapshot = BufferUtil.snapshot(params);
        getThreadContext().exec.execute(new glMaterial(face, pname, snapshot));
    }

    public static void glDeleteTextures(int texture) { // NoList
        record glDeleteTextures(int texture) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glDeleteTextures(texture);
            }
        }

        getThreadContext().exec.execute(new glDeleteTextures(texture));
    }

    public static void glDeleteTextures(IntBuffer textures) { // NoList
        record glDeleteTextures(IntBuffer textures) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glDeleteTextures(textures);
            }
        }

        final IntBuffer snapshot = BufferUtil.snapshot(textures);
        getThreadContext().exec.execute(new glDeleteTextures(snapshot));
    }

    public static void glCopyTexImage2D(int target, int level, int internalFormat, int x, int y, int width, int height, int border) {
        record glCopyTexImage2D(int target, int level, int internalFormat, int x, int y, int width, int height, int border) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glCopyTexImage2D(target, level, internalFormat, x, y, width, height, border);
            }
        }

        getThreadContext().exec.execute(new glCopyTexImage2D(target, level, internalFormat, x, y, width, height, border));
    }

    public static void glCopyTexSubImage2D(int target, int level, int xoffset, int yoffset, int x, int y, int width, int height) {
        record glCopyTexSubImage2D(int target, int level, int xoffset, int yoffset, int x, int y, int width, int height) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glCopyTexSubImage2D(target, level, xoffset, yoffset, x, y, width, height);
            }
        }

        getThreadContext().exec.execute(new glCopyTexSubImage2D(target, level, xoffset, yoffset, x, y, width, height));
    }

    public static void glEdgeFlag(boolean flag) {
        record glEdgeFlag(boolean flag) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glEdgeFlag(flag);
            }
        }

        getThreadContext().exec.execute(new glEdgeFlag(flag));
    }

    public static void glCullFace(int mode) {
        record glCullFace(int mode) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glCullFace(mode);
            }
        }

        getThreadContext().exec.execute(new glCullFace(mode));
    }

    public static void glDepthFunc(int func) {
        record glDepthFunc(int func) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glDepthFunc(func);
            }
        }

        getThreadContext().exec.execute(new glDepthFunc(func));
    }

    public static void glDepthRange(double zNear, double zFar) {
        record glDepthRange(double zNear, double zFar) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glDepthRange(zNear, zFar);
            }
        }

        getThreadContext().exec.execute(new glDepthRange(zNear, zFar));
    }

    public static void glFrontFace(int mode) {
        record glFrontFace(int mode) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glFrontFace(mode);
            }
        }

        getThreadContext().exec.execute(new glFrontFace(mode));
    }

    public static void glPixelStorei(int pname, int param) { // NoList
        record glPixelStorei(int pname, int param) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glPixelStorei(pname, param);
            }
        }

        getThreadContext().exec.execute(new glPixelStorei(pname, param));
    }

    public static void glReadBuffer(int mode) {
        record glReadBuffer(int mode) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glReadBuffer(mode);
            }
        }

        getThreadContext().exec.execute(new glReadBuffer(mode));
    }

    public static void glTexEnvi(int target, int pname, int param) {
        record glTexEnvi(int target, int pname, int param) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glTexEnvi(target, pname, param);
            }
        }

        getThreadContext().exec.execute(new glTexEnvi(target, pname, param));
    }

    /**
     * Blocking.
     */
    public static int glGetInteger(int pname) { // NoList
        final Context context = getThreadContext();

        switch (pname) {
            case org.lwjgl.opengl.GL11.GL_TEXTURE_BINDING_2D:
                return context.attribTracker.getTextureBindingID();
            case org.lwjgl.opengl.GL11.GL_MATRIX_MODE:
                return context.attribTracker.getMatrixMode();
            case org.lwjgl.opengl.GL13.GL_ACTIVE_TEXTURE:
                return context.attribTracker.getActiveTexture();
            case org.lwjgl.opengl.GL15.GL_ARRAY_BUFFER_BINDING:
                return context.attribTracker.getArrayBufferBinding();
            case org.lwjgl.opengl.GL30.GL_FRAMEBUFFER_BINDING:
                return context.attribTracker.getFramebufferBinding();
            case org.lwjgl.opengl.GL30.GL_VERTEX_ARRAY_BINDING:
                return context.attribTracker.getVertexArrayBinding();

            case NVXGpuMemoryInfo.GL_GPU_MEMORY_INFO_CURRENT_AVAILABLE_VIDMEM_NVX:
            case NVXGpuMemoryInfo.GL_GPU_MEMORY_INFO_DEDICATED_VIDMEM_NVX:
            case NVXGpuMemoryInfo.GL_GPU_MEMORY_INFO_TOTAL_AVAILABLE_MEMORY_NVX:
            case ATIMeminfo.GL_TEXTURE_FREE_MEMORY_ATI:
                Integer cached = context.glStateCache.getOtherInteger(pname);
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

        return context.exec.get(new glGetInteger(pname));
    }

    public static void glGetInteger(int pname, IntBuffer params) { // NoList
        final Context context = getThreadContext();
        IntBuffer outBuffer = params.duplicate();

        // Return a cached value.
        switch (pname) {
            case org.lwjgl.opengl.GL11.GL_VIEWPORT:
                AttribState.Viewport viewport = context.attribTracker.getViewport();
                putIfPossible(outBuffer, viewport.x());
                putIfPossible(outBuffer, viewport.y());
                putIfPossible(outBuffer, viewport.width());
                putIfPossible(outBuffer, viewport.height());
                return;
        }

        // Fallback to blocking GL call.
        record glGetInteger(int pname, IntBuffer params) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glGetInteger(pname, params);
            }
        }

        context.exec.wait(new glGetInteger(pname, outBuffer));
    }

    public static float glGetFloat(int pname) { // NoList
        final Context context = getThreadContext();

        switch (pname) {
            case org.lwjgl.opengl.GL11.GL_LINE_WIDTH:
                return context.attribTracker.getLineWidth();
        }

        record glGetFloat(int pname) implements Callable<Float> {
            @Override
            public Float call() throws Exception {
                return org.lwjgl.opengl.GL11.glGetFloat(pname);
            }
        }

        return context.exec.get(new glGetFloat(pname));
    }

    public static void glGenTextures(IntBuffer textures) { // NoList
        getThreadContext().texGenerator.get(textures);
    }

    public static int glGenTextures() { // NoList
        return getThreadContext().texGenerator.get();
    }

    public static String glGetString(int name) { // NoList
        final Context context = getThreadContext();
        String result;

        if (name == org.lwjgl.opengl.GL11.GL_EXTENSIONS) {
            result = context.glStateCache.getGlStringExtensions();
        } else {
            record glGetString(int name) implements Callable<String> {
                @Override
                public String call() throws Exception {
                    return org.lwjgl.opengl.GL11.glGetString(name);
                }
            }
            result = context.exec.get(new glGetString(name));
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

        getThreadContext().exec.wait(new glReadPixels(x, y, width, height, format, type, pixels));
    }

    public static void glReadPixels(int x, int y, int width, int height, int format, int type, IntBuffer pixels) { // NoList
        record glReadPixels(int x, int y, int width, int height, int format, int type, IntBuffer pixels) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glReadPixels(x, y, width, height, format, type, pixels);
            }
        }

        getThreadContext().exec.wait(new glReadPixels(x, y, width, height, format, type, pixels));
    }

    public static void glReadPixels(int x, int y, int width, int height, int format, int type, ByteBuffer pixels) { // NoList
        record glReadPixels(int x, int y, int width, int height, int format, int type, ByteBuffer pixels) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glReadPixels(x, y, width, height, format, type, pixels);
            }
        }

        getThreadContext().exec.wait(new glReadPixels(x, y, width, height, format, type, pixels));
    }

    public static int glGetError() { // NoList
        record glGetError() implements Callable<Integer> {
            @Override
            public Integer call() throws Exception {
                return org.lwjgl.opengl.GL11.glGetError();
            }
        }

        return getThreadContext().exec.get(new glGetError());
    }

    public static int glGetTexLevelParameteri(int target, int level, int pname) { // NoList
        record glGetTexLevelParameteri(int target, int level, int pname) implements Callable<Integer> {
            @Override
            public Integer call() throws Exception {
                return org.lwjgl.opengl.GL11.glGetTexLevelParameteri(target, level, pname);
            }
        }

        return getThreadContext().exec.get(new glGetTexLevelParameteri(target, level, pname));
    }

    public static void glGetTexImage(int target, int level, int format, int type, ByteBuffer pixels) { // NoList
        record glGetTexImage(int target, int level, int format, int type, ByteBuffer pixels) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glGetTexImage(target, level, format, type, pixels);
            }
        }

        getThreadContext().exec.wait(new glGetTexImage(target, level, format, type, pixels));
    }

    public static void glGetTexImage(int target, int level, int format, int type, FloatBuffer pixels) { // NoList
        record glGetTexImage(int target, int level, int format, int type, FloatBuffer pixels) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glGetTexImage(target, level, format, type, pixels);
            }
        }

        getThreadContext().exec.wait(new glGetTexImage(target, level, format, type, pixels));
    }

    public static boolean glIsEnabled(int pname) { // NoList
        final Context context = getThreadContext();

        switch (pname) {
            case org.lwjgl.opengl.GL11.GL_STENCIL_TEST:
                return context.attribTracker.getEnableStencilTest();
            case org.lwjgl.opengl.GL11.GL_ALPHA_TEST:
                return context.attribTracker.getEnableAlphaTest();
            case org.lwjgl.opengl.GL11.GL_TEXTURE_2D:
                return context.attribTracker.getEnableTexture2D();
            case org.lwjgl.opengl.GL11.GL_BLEND:
                return context.attribTracker.getEnableBlend();
            case org.lwjgl.opengl.GL11.GL_LIGHTING:
                return context.attribTracker.getEnableLighting();
        }

        record glIsEnabled(int pname) implements Callable<Boolean> {
            @Override
            public Boolean call() throws Exception {
                return org.lwjgl.opengl.GL11.glIsEnabled(pname);
            }
        }

        return context.exec.get(new glIsEnabled(pname));
    }
}
