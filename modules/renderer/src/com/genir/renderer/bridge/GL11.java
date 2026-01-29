package com.genir.renderer.bridge;

import com.genir.renderer.bridge.context.BufferUtil;
import com.genir.renderer.bridge.context.ClientAttribTracker;
import com.genir.renderer.bridge.context.Context;
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

public class GL11 {
    /**
     * Lists.
     */
    public static int glGenLists(int range) { // NoList
        record glGenLists(Context context, int range) implements Callable<Integer> {
            @Override
            public Integer call() throws Exception {
                return context.listManager.glGenLists(range);
            }
        }
        final Context context = getContext();
        return context.exec.get(new glGenLists(context, range));
    }

    public static void glNewList(int list, int mode) {
        record glNewList(Context context, int list, int mode) implements Runnable {
            @Override
            public void run() {
                context.listManager.glNewList(list, mode);
            }
        }
        final Context context = getContext();
        context.exec.execute(new glNewList(context, list, mode));
    }

    public static void glEndList() {
        record glEndList(Context context) implements Runnable {
            @Override
            public void run() {
                context.listManager.glEndList();
            }
        }
        final Context context = getContext();
        context.exec.execute(new glEndList(context));
    }

    public static void glCallList(int list) {
        record glCallList(Context context, int list) implements Runnable {
            @Override
            public void run() {
                context.listManager.glCallList(list);
            }
        }
        final Context context = getContext();
        context.exec.execute(new glCallList(context, list));
    }

    /**
     * Draw.
     */
    public static void glBegin(int mode) {
        record glBegin(Context context, int mode) implements Runnable {
            @Override
            public void run() {
                if (context.listManager.isRecording()) {
                    context.listManager.record(this);
                    return;
                }

                context.vertexInterceptor.glBegin(mode);
            }
        }
        final Context context = getContext();
        context.exec.execute(new glBegin(context, mode));
    }

    public static void glEnd() {
        record glEnd(Context context) implements Runnable {
            @Override
            public void run() {
                if (context.listManager.isRecording()) {
                    context.listManager.record(this);
                    return;
                }

                context.vertexInterceptor.glEnd();
            }
        }
        final Context context = getContext();
        context.exec.execute(new glEnd(context));
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
        record glColor4f(Context context, float red, float green, float blue, float alpha) implements Runnable {
            @Override
            public void run() {
                if (context.listManager.isRecording()) {
                    context.listManager.record(this);
                    return;
                }

                context.vertexInterceptor.glColor4f(red, green, blue, alpha);
            }
        }
        final Context context = getContext();
        context.exec.execute(new glColor4f(context, red, green, blue, alpha));
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
        record glTexCoord4f(Context context, float s, float t, float r, float q) implements Runnable {
            @Override
            public void run() {
                if (context.listManager.isRecording()) {
                    context.listManager.record(this);
                    return;
                }

                context.vertexInterceptor.glTexCoord4f(s, t, r, q);
            }
        }
        final Context context = getContext();
        context.exec.execute(new glTexCoord4f(context, s, t, r, q));
    }

    public static void glNormal3f(float nx, float ny, float nz) {
        record glNormal3f(Context context, float nx, float ny, float nz) implements Runnable {
            @Override
            public void run() {
                if (context.listManager.isRecording()) {
                    context.listManager.record(this);
                    return;
                }

                context.vertexInterceptor.glNormal3f(nx, ny, nz);
            }
        }
        final Context context = getContext();
        context.exec.execute(new glNormal3f(context, nx, ny, nz));
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
        record glVertex3f(Context context, float x, float y, float z) implements Runnable {
            @Override
            public void run() {
                if (context.listManager.isRecording()) {
                    context.listManager.record(this);
                    return;
                }

                context.vertexInterceptor.glVertex3f(x, y, z);
            }
        }
        final Context context = getContext();
        context.exec.execute(new glVertex3f(context, x, y, z));
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
        getContext().clientAttribTracker.glEnableClientState(cap);
    }

    public static void glDisableClientState(int cap) { // NoList
        getContext().clientAttribTracker.glDisableClientState(cap);
    }

    public static void glPushClientAttrib(int mask) { // NoList
        record glPushClientAttrib(Context context, int mask) implements Runnable {
            @Override
            public void run() {
                context.vertexInterceptor.arraysTouched();
                org.lwjgl.opengl.GL11.glPushClientAttrib(mask);
            }
        }
        final Context context = getContext();
        context.clientAttribTracker.glPushClientAttrib(mask);
        context.exec.execute(new glPushClientAttrib(context, mask));
    }

    public static void glPopClientAttrib() { // NoList
        record glPopClientAttrib(Context context) implements Runnable {
            @Override
            public void run() {
                context.vertexInterceptor.arraysTouched();
                org.lwjgl.opengl.GL11.glPopClientAttrib();
            }
        }
        final Context context = getContext();
        context.clientAttribTracker.glPopClientAttrib();
        context.exec.execute(new glPopClientAttrib(context));
    }

    public static void glVertexPointer(int size, int stride, FloatBuffer pointer) { // NoList
        getContext().clientAttribTracker.glVertexPointer(size, org.lwjgl.opengl.GL11.GL_FLOAT, stride, pointer);
    }

    public static void glVertexPointer(int size, int type, int stride, ByteBuffer pointer) { // NoList
        getContext().clientAttribTracker.glVertexPointer(size, stride, type, pointer);
    }

    public static void glColorPointer(int size, boolean unsigned, int stride, ByteBuffer pointer) { // NoList
        int type = unsigned ? org.lwjgl.opengl.GL11.GL_UNSIGNED_BYTE : org.lwjgl.opengl.GL11.GL_BYTE;
        getContext().clientAttribTracker.glColorPointer(size, type, stride, pointer);
    }

    public static void glColorPointer(int size, int stride, FloatBuffer pointer) { // NoList
        getContext().clientAttribTracker.glColorPointer(size, org.lwjgl.opengl.GL11.GL_FLOAT, stride, pointer);
    }

    public static void glTexCoordPointer(int size, int stride, FloatBuffer pointer) { // NoList
        getContext().clientAttribTracker.glTexCoordPointer(size, org.lwjgl.opengl.GL11.GL_FLOAT, stride, pointer);
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
        final Context context = getContext();
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
        final Context context = getContext();
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
        final Context context = getContext();
        context.clientAttribTracker.glVertexPointer(size, type, stride, pointer_buffer_offset);
        context.exec.execute(new glVertexPointer(size, type, stride, pointer_buffer_offset));
    }

    public static void glDrawArrays(int mode, int first, int count) {
        record glDrawArrays(Context context, int mode, int first, int count, ClientAttribTracker.ArrayPointersSnapshot snapshot) implements Runnable {
            @Override
            public void run() {
                if (context.listManager.isRecording()) {
                    context.listManager.record(this);
                    return;
                }

                Runnable glDrawArrays = () -> org.lwjgl.opengl.GL11.glDrawArrays(mode, first, count);
                context.vertexInterceptor.drawRecordedArrays(glDrawArrays, snapshot);
            }
        }

        final Context context = getContext();
        final ClientAttribTracker.ArrayPointersSnapshot snapshot = context.clientAttribTracker.makeArrayPointersSnapshot();
        context.exec.execute(new glDrawArrays(context, mode, first, count, snapshot));
    }

    public static void glDrawElements(int mode, IntBuffer indices) {
        record glDrawElements(Context context, int mode, IntBuffer indices, ClientAttribTracker.ArrayPointersSnapshot snapshot) implements Runnable {
            @Override
            public void run() {
                if (context.listManager.isRecording()) {
                    context.listManager.record(this);
                    return;
                }

                Runnable glDrawArrays = () -> org.lwjgl.opengl.GL11.glDrawElements(mode, indices);
                context.vertexInterceptor.drawRecordedArrays(glDrawArrays, snapshot);
            }
        }

        final IntBuffer indicesSnapshot = BufferUtil.snapshot(indices);
        final Context context = getContext();
        final ClientAttribTracker.ArrayPointersSnapshot snapshot = context.clientAttribTracker.makeArrayPointersSnapshot();
        context.exec.execute(new glDrawElements(context, mode, indicesSnapshot, snapshot));
    }

    public static void glDrawElements(int mode, int indices_count, int type, long indices_buffer_offset) {
        record glDrawElements(Context context, int mode, int indices_count, int type, long indices_buffer_offset) implements Runnable {
            @Override
            public void run() {
                if (context.listManager.isRecording()) {
                    context.listManager.record(this);
                    return;
                }

                context.attribManager.applyDrawAttribs();
                org.lwjgl.opengl.GL11.glDrawElements(mode, indices_count, type, indices_buffer_offset);
            }
        }
        final Context context = getContext();
        context.exec.execute(new glDrawElements(context, mode, indices_count, type, indices_buffer_offset));
    }

    /**
     * Matrix.
     */
    public static void glMatrixMode(int mode) {
        record glMatrixMode(Context context, int mode) implements Runnable {
            @Override
            public void run() {
                if (context.listManager.isRecording()) {
                    context.listManager.record(this);
                    return;
                }

                context.attribManager.glMatrixMode(mode);
            }
        }
        final Context context = getContext();
        context.attribTracker.glMatrixMode(mode);
        context.exec.execute(new glMatrixMode(context, mode));
    }

    public static void glPushMatrix() {
        record glPushMatrix(Context context) implements Runnable {
            @Override
            public void run() {
                if (context.listManager.isRecording()) {
                    context.listManager.record(this);
                    return;
                }

                context.transformManager.glPushMatrix();
            }
        }
        final Context context = getContext();
        context.exec.execute(new glPushMatrix(context));
    }

    public static void glPopMatrix() {
        record glPopMatrix(Context context) implements Runnable {
            @Override
            public void run() {
                if (context.listManager.isRecording()) {
                    context.listManager.record(this);
                    return;
                }

                context.transformManager.glPopMatrix();
            }
        }
        final Context context = getContext();
        context.exec.execute(new glPopMatrix(context));
    }

    public static void glLoadIdentity() {
        record glLoadIdentity(Context context) implements Runnable {
            @Override
            public void run() {
                if (context.listManager.isRecording()) {
                    context.listManager.record(this);
                    return;
                }

                context.transformManager.glLoadIdentity();
            }
        }
        final Context context = getContext();
        context.exec.execute(new glLoadIdentity(context));
    }

    public static void glTranslatef(float x, float y, float z) {
        record glTranslatef(Context context, float x, float y, float z) implements Runnable {
            @Override
            public void run() {
                if (context.listManager.isRecording()) {
                    context.listManager.record(this);
                    return;
                }

                context.transformManager.glTranslatef(x, y, z);
            }
        }
        final Context context = getContext();
        context.exec.execute(new glTranslatef(context, x, y, z));
    }

    public static void glRotatef(float angle, float x, float y, float z) {
        record glRotatef(Context context, float angle, float x, float y, float z) implements Runnable {
            @Override
            public void run() {
                if (context.listManager.isRecording()) {
                    context.listManager.record(this);
                    return;
                }

                context.transformManager.glRotatef(angle, x, y, z);
            }
        }
        final Context context = getContext();
        context.exec.execute(new glRotatef(context, angle, x, y, z));
    }

    public static void glScalef(float x, float y, float z) {
        record glScalef(Context context, float x, float y, float z) implements Runnable {
            @Override
            public void run() {
                if (context.listManager.isRecording()) {
                    context.listManager.record(this);
                    return;
                }

                context.transformManager.glScalef(x, y, z);
            }
        }
        final Context context = getContext();
        context.exec.execute(new glScalef(context, x, y, z));
    }

    public static void glMultMatrix(FloatBuffer m) {
        record glMultMatrix(Context context, FloatBuffer m) implements Runnable {
            @Override
            public void run() {
                if (context.listManager.isRecording()) {
                    context.listManager.record(this);
                    return;
                }

                context.transformManager.glMultMatrix(m);
            }
        }
        final FloatBuffer snapshot = BufferUtil.snapshot(m);
        final Context context = getContext();
        context.exec.execute(new glMultMatrix(context, snapshot));
    }

    public static void glLoadMatrix(FloatBuffer m) {
        record glLoadMatrix(Context context, FloatBuffer m) implements Runnable {
            @Override
            public void run() {
                if (context.listManager.isRecording()) {
                    context.listManager.record(this);
                    return;
                }

                context.transformManager.glLoadMatrix(m);
            }
        }
        final FloatBuffer snapshot = BufferUtil.snapshot(m);
        final Context context = getContext();
        context.exec.execute(new glLoadMatrix(context, snapshot));
    }

    public static void glOrtho(double left, double right, double bottom, double top, double zNear, double zFar) {
        record glOrtho(Context context, double left, double right, double bottom, double top, double zNear, double zFar) implements Runnable {
            @Override
            public void run() {
                if (context.listManager.isRecording()) {
                    context.listManager.record(this);
                    return;
                }

                context.transformManager.glOrtho(left, right, bottom, top, zNear, zFar);
            }
        }
        final Context context = getContext();
        context.exec.execute(new glOrtho(context, left, right, bottom, top, zNear, zFar));
    }

    /**
     * Render getContext().
     */
    public static void glEnable(int cap) {
        record glEnable(Context context, int cap) implements Runnable {
            @Override
            public void run() {
                if (context.listManager.isRecording()) {
                    context.listManager.record(this);
                    return;
                }

                if (context.attribManager.interceptEnable(cap)) {
                    context.attribManager.glEnable(cap);
                } else {
                    org.lwjgl.opengl.GL11.glEnable(cap);
                }
            }
        }
        final Context context = getContext();
        context.attribTracker.glEnable(cap);
        context.exec.execute(new glEnable(context, cap));
    }

    public static void glDisable(int cap) {
        record glDisable(Context context, int cap) implements Runnable {
            @Override
            public void run() {
                if (context.listManager.isRecording()) {
                    context.listManager.record(this);
                    return;
                }

                if (context.attribManager.interceptEnable(cap)) {
                    context.attribManager.glDisable(cap);
                } else {
                    org.lwjgl.opengl.GL11.glDisable(cap);
                }
            }
        }
        final Context context = getContext();
        context.attribTracker.glDisable(cap);
        context.exec.execute(new glDisable(context, cap));
    }

    public static void glBlendFunc(int sfactor, int dfactor) {
        glBlendFuncSeparate(sfactor, dfactor, sfactor, dfactor);
    }

    public static void glBindTexture(int target, int texture) {
        record glBindTexture(Context context, int target, int texture) implements Runnable {
            @Override
            public void run() {
                if (context.listManager.isRecording()) {
                    context.listManager.record(this);
                    return;
                }

                context.attribManager.glBindTexture(target, texture);
                org.lwjgl.opengl.GL11.glBindTexture(target, texture);
            }
        }
        final Context context = getContext();
        context.attribTracker.glBindTexture(target, texture);
        context.exec.execute(new glBindTexture(context, target, texture));
    }

    public static void glPushAttrib(int mask) { // NoList
        record glPushAttrib(Context context, int mask) implements Runnable {
            @Override
            public void run() {
                context.attribManager.glPushAttrib(mask);
                org.lwjgl.opengl.GL11.glPushAttrib(mask);
            }
        }
        final Context context = getContext();
        context.attribTracker.glPushAttrib(mask);
        context.exec.execute(new glPushAttrib(context, mask));
    }

    public static void glPopAttrib() { // NoList
        record glPopAttrib(Context context) implements Runnable {
            @Override
            public void run() {
                context.attribManager.glPopAttrib();
                org.lwjgl.opengl.GL11.glPopAttrib();
            }
        }
        final Context context = getContext();
        context.attribTracker.glPopAttrib();
        context.exec.execute(new glPopAttrib(context));
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
        record glColorMask(Context context, boolean red, boolean green, boolean blue, boolean alpha) implements Runnable {
            @Override
            public void run() {
                if (context.listManager.isRecording()) {
                    context.listManager.record(this);
                    return;
                }

                org.lwjgl.opengl.GL11.glColorMask(red, green, blue, alpha);
            }
        }
        final Context context = getContext();
        context.exec.execute(new glColorMask(context, red, green, blue, alpha));
    }

    public static void glDepthMask(boolean flag) {
        record glDepthMask(Context context, boolean flag) implements Runnable {
            @Override
            public void run() {
                if (context.listManager.isRecording()) {
                    context.listManager.record(this);
                    return;
                }

                org.lwjgl.opengl.GL11.glDepthMask(flag);
            }
        }
        final Context context = getContext();
        context.exec.execute(new glDepthMask(context, flag));
    }

    public static void glViewport(int x, int y, int width, int height) {
        record glViewport(Context context, int x, int y, int width, int height) implements Runnable {
            @Override
            public void run() {
                if (context.listManager.isRecording()) {
                    context.listManager.record(this);
                    return;
                }

                org.lwjgl.opengl.GL11.glViewport(x, y, width, height);
            }
        }
        final Context context = getContext();
        context.attribTracker.glViewport(x, y, width, height);
        context.exec.execute(new glViewport(context, x, y, width, height));
    }

    public static void glTexParameteri(int target, int pname, int param) {
        record glTexParameteri(Context context, int target, int pname, int param) implements Runnable {
            @Override
            public void run() {
                if (context.listManager.isRecording()) {
                    context.listManager.record(this);
                    return;
                }

                org.lwjgl.opengl.GL11.glTexParameteri(target, pname, param);
            }
        }
        final Context context = getContext();
        context.exec.execute(new glTexParameteri(context, target, pname, param));
    }

    public static void glTexParameter(int target, int pname, FloatBuffer param) {
        record glTexParameter(Context context, int target, int pname, FloatBuffer param) implements Runnable {
            @Override
            public void run() {
                if (context.listManager.isRecording()) {
                    context.listManager.record(this);
                    return;
                }

                org.lwjgl.opengl.GL11.glTexParameter(target, pname, param);
            }
        }
        final FloatBuffer snapshot = BufferUtil.snapshot(param);
        final Context context = getContext();
        context.exec.execute(new glTexParameter(context, target, pname, snapshot));
    }

    public static void glClearColor(float red, float green, float blue, float alpha) {
        record glClearColor(Context context, float red, float green, float blue, float alpha) implements Runnable {
            @Override
            public void run() {
                if (context.listManager.isRecording()) {
                    context.listManager.record(this);
                    return;
                }

                org.lwjgl.opengl.GL11.glClearColor(red, green, blue, alpha);
            }
        }
        final Context context = getContext();
        context.exec.execute(new glClearColor(context, red, green, blue, alpha));
    }

    public static void glClear(int mask) {
        record glClear(Context context, int mask) implements Runnable {
            @Override
            public void run() {
                if (context.listManager.isRecording()) {
                    context.listManager.record(this);
                    return;
                }

                org.lwjgl.opengl.GL11.glClear(mask);
            }
        }
        final Context context = getContext();
        context.exec.execute(new glClear(context, mask));
    }

    public static void glScissor(int x, int y, int width, int height) {
        record glScissor(Context context, int x, int y, int width, int height) implements Runnable {
            @Override
            public void run() {
                if (context.listManager.isRecording()) {
                    context.listManager.record(this);
                    return;
                }

                org.lwjgl.opengl.GL11.glScissor(x, y, width, height);
            }
        }
        final Context context = getContext();
        context.exec.execute(new glScissor(context, x, y, width, height));
    }

    public static void glStencilFunc(int func, int ref, int mask) {
        record glStencilFunc(Context context, int func, int ref, int mask) implements Runnable {
            @Override
            public void run() {
                if (context.listManager.isRecording()) {
                    context.listManager.record(this);
                    return;
                }

                org.lwjgl.opengl.GL11.glStencilFunc(func, ref, mask);
            }
        }
        final Context context = getContext();
        context.exec.execute(new glStencilFunc(context, func, ref, mask));
    }

    public static void glStencilMask(int mask) {
        record glStencilMask(Context context, int mask) implements Runnable {
            @Override
            public void run() {
                if (context.listManager.isRecording()) {
                    context.listManager.record(this);
                    return;
                }

                org.lwjgl.opengl.GL11.glStencilMask(mask);
            }
        }
        final Context context = getContext();
        context.exec.execute(new glStencilMask(context, mask));
    }

    public static void glStencilOp(int fail, int zfail, int zpass) {
        record glStencilOp(Context context, int fail, int zfail, int zpass) implements Runnable {
            @Override
            public void run() {
                if (context.listManager.isRecording()) {
                    context.listManager.record(this);
                    return;
                }

                org.lwjgl.opengl.GL11.glStencilOp(fail, zfail, zpass);
            }
        }
        final Context context = getContext();
        context.exec.execute(new glStencilOp(context, fail, zfail, zpass));
    }

    public static void glClearStencil(int s) {
        record glClearStencil(Context context, int s) implements Runnable {
            @Override
            public void run() {
                if (context.listManager.isRecording()) {
                    context.listManager.record(this);
                    return;
                }

                org.lwjgl.opengl.GL11.glClearStencil(s);
            }
        }
        final Context context = getContext();
        context.exec.execute(new glClearStencil(context, s));
    }

    public static void glAlphaFunc(int func, float ref) {
        record glAlphaFunc(Context context, int func, float ref) implements Runnable {
            @Override
            public void run() {
                if (context.listManager.isRecording()) {
                    context.listManager.record(this);
                    return;
                }

                org.lwjgl.opengl.GL11.glAlphaFunc(func, ref);
            }
        }
        final Context context = getContext();
        context.exec.execute(new glAlphaFunc(context, func, ref));
    }

    public static void glHint(int target, int mode) {
        record glHint(Context context, int target, int mode) implements Runnable {
            @Override
            public void run() {
                if (context.listManager.isRecording()) {
                    context.listManager.record(this);
                    return;
                }

                org.lwjgl.opengl.GL11.glHint(target, mode);
            }
        }
        final Context context = getContext();
        context.exec.execute(new glHint(context, target, mode));
    }

    public static void glLineWidth(float width) {
        record glLineWidth(Context context, float width) implements Runnable {
            @Override
            public void run() {
                if (context.listManager.isRecording()) {
                    context.listManager.record(this);
                    return;
                }

                org.lwjgl.opengl.GL11.glLineWidth(width);
            }
        }
        final Context context = getContext();
        context.exec.execute(new glLineWidth(context, width));
    }

    public static void glPointSize(float size) {
        record glPointSize(Context context, float size) implements Runnable {
            @Override
            public void run() {
                if (context.listManager.isRecording()) {
                    context.listManager.record(this);
                    return;
                }

                org.lwjgl.opengl.GL11.glPointSize(size);
            }
        }
        final Context context = getContext();
        context.exec.execute(new glPointSize(context, size));
    }

    public static void glColorMaterial(int face, int mode) {
        record glColorMaterial(Context context, int face, int mode) implements Runnable {
            @Override
            public void run() {
                if (context.listManager.isRecording()) {
                    context.listManager.record(this);
                    return;
                }

                org.lwjgl.opengl.GL11.glColorMaterial(face, mode);
            }
        }
        final Context context = getContext();
        context.exec.execute(new glColorMaterial(context, face, mode));
    }

    public static void glShadeModel(int mode) {
        record glShadeModel(Context context, int mode) implements Runnable {
            @Override
            public void run() {
                if (context.listManager.isRecording()) {
                    context.listManager.record(this);
                    return;
                }

                org.lwjgl.opengl.GL11.glShadeModel(mode);
            }
        }
        final Context context = getContext();
        context.exec.execute(new glShadeModel(context, mode));
    }

    public static void glTexImage1D(int target, int level, int internalformat, int width, int border, int format, int type, ByteBuffer pixels) { // NoList
        record glTexImage1D(int target, int level, int internalformat, int width, int border, int format, int type, ByteBuffer pixels) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glTexImage1D(target, level, internalformat, width, border, format, type, pixels);
            }
        }
        final ByteBuffer snapshot = BufferUtil.snapshot(pixels);
        getContext().exec.execute(new glTexImage1D(target, level, internalformat, width, border, format, type, snapshot));
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

        getContext().exec.execute(new glTexImage2D(target, level, internalformat, width, height, border, format, type, snapshot, stack));
    }

    public static void glTexImage2D(int target, int level, int internalformat, int width, int height, int border, int format, int type, FloatBuffer pixels) { // NoList
        record glTexImage2D(int target, int level, int internalformat, int width, int height, int border, int format, int type, FloatBuffer pixels) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glTexImage2D(target, level, internalformat, width, height, border, format, type, pixels);
            }
        }
        final FloatBuffer snapshot = BufferUtil.snapshot(pixels);
        getContext().exec.execute(new glTexImage2D(target, level, internalformat, width, height, border, format, type, snapshot));
    }

    public static void glTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, ByteBuffer pixels) { // NoList ?
        record glTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, ByteBuffer pixels) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixels);
            }
        }
        final ByteBuffer snapshot = BufferUtil.snapshot(pixels);
        getContext().exec.execute(new glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, snapshot));
    }

    public static void glTexSubImage1D(int target, int level, int xoffset, int width, int format, int type, FloatBuffer pixels) { // NoList ?
        record glTexSubImage1D(int target, int level, int xoffset, int width, int format, int type, FloatBuffer pixels) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glTexSubImage1D(target, level, xoffset, width, format, type, pixels);
            }
        }
        final FloatBuffer snapshot = BufferUtil.snapshot(pixels);
        getContext().exec.execute(new glTexSubImage1D(target, level, xoffset, width, format, type, snapshot));
    }

    public static void glLight(int light, int pname, FloatBuffer params) {
        record glLight(Context context, int light, int pname, FloatBuffer params) implements Runnable {
            @Override
            public void run() {
                if (context.listManager.isRecording()) {
                    context.listManager.record(this);
                    return;
                }

                org.lwjgl.opengl.GL11.glLight(light, pname, params);
            }
        }
        final FloatBuffer snapshot = BufferUtil.snapshot(params);
        final Context context = getContext();
        context.exec.execute(new glLight(context, light, pname, snapshot));
    }

    public static void glMaterial(int face, int pname, FloatBuffer params) {
        record glMaterial(Context context, int face, int pname, FloatBuffer params) implements Runnable {
            @Override
            public void run() {
                if (context.listManager.isRecording()) {
                    context.listManager.record(this);
                    return;
                }

                org.lwjgl.opengl.GL11.glMaterial(face, pname, params);
            }
        }
        final FloatBuffer snapshot = BufferUtil.snapshot(params);
        final Context context = getContext();
        context.exec.execute(new glMaterial(context, face, pname, snapshot));
    }

    public static void glDeleteTextures(int texture) { // NoList
        record glDeleteTextures(int texture) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glDeleteTextures(texture);
            }
        }
        getContext().exec.execute(new glDeleteTextures(texture));
    }

    public static void glDeleteTextures(IntBuffer textures) { // NoList
        record glDeleteTextures(IntBuffer textures) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glDeleteTextures(textures);
            }
        }
        final IntBuffer snapshot = BufferUtil.snapshot(textures);
        getContext().exec.execute(new glDeleteTextures(snapshot));
    }

    public static void glCopyTexImage2D(int target, int level, int internalFormat, int x, int y, int width, int height, int border) {
        record glCopyTexImage2D(Context context, int target, int level, int internalFormat, int x, int y, int width, int height, int border) implements Runnable {
            @Override
            public void run() {
                if (context.listManager.isRecording()) {
                    context.listManager.record(this);
                    return;
                }

                org.lwjgl.opengl.GL11.glCopyTexImage2D(target, level, internalFormat, x, y, width, height, border);
            }
        }
        final Context context = getContext();
        context.exec.execute(new glCopyTexImage2D(context, target, level, internalFormat, x, y, width, height, border));
    }

    public static void glCopyTexSubImage2D(int target, int level, int xoffset, int yoffset, int x, int y, int width, int height) {
        record glCopyTexSubImage2D(Context context, int target, int level, int xoffset, int yoffset, int x, int y, int width, int height) implements Runnable {
            @Override
            public void run() {
                if (context.listManager.isRecording()) {
                    context.listManager.record(this);
                    return;
                }

                org.lwjgl.opengl.GL11.glCopyTexSubImage2D(target, level, xoffset, yoffset, x, y, width, height);
            }
        }
        final Context context = getContext();
        context.exec.execute(new glCopyTexSubImage2D(context, target, level, xoffset, yoffset, x, y, width, height));
    }

    public static void glEdgeFlag(boolean flag) {
        record glEdgeFlag(Context context, boolean flag) implements Runnable {
            @Override
            public void run() {
                if (context.listManager.isRecording()) {
                    context.listManager.record(this);
                    return;
                }

                org.lwjgl.opengl.GL11.glEdgeFlag(flag);
            }
        }
        final Context context = getContext();
        context.exec.execute(new glEdgeFlag(context, flag));
    }

    public static void glCullFace(int mode) {
        record glCullFace(Context context, int mode) implements Runnable {
            @Override
            public void run() {
                if (context.listManager.isRecording()) {
                    context.listManager.record(this);
                    return;
                }

                org.lwjgl.opengl.GL11.glCullFace(mode);
            }
        }
        final Context context = getContext();
        context.exec.execute(new glCullFace(context, mode));
    }

    public static void glDepthFunc(int func) {
        record glDepthFunc(Context context, int func) implements Runnable {
            @Override
            public void run() {
                if (context.listManager.isRecording()) {
                    context.listManager.record(this);
                    return;
                }

                org.lwjgl.opengl.GL11.glDepthFunc(func);
            }
        }
        final Context context = getContext();
        context.exec.execute(new glDepthFunc(context, func));
    }

    public static void glDepthRange(double zNear, double zFar) {
        record glDepthRange(Context context, double zNear, double zFar) implements Runnable {
            @Override
            public void run() {
                if (context.listManager.isRecording()) {
                    context.listManager.record(this);
                    return;
                }

                org.lwjgl.opengl.GL11.glDepthRange(zNear, zFar);
            }
        }
        final Context context = getContext();
        context.exec.execute(new glDepthRange(context, zNear, zFar));
    }

    public static void glFrontFace(int mode) {
        record glFrontFace(Context context, int mode) implements Runnable {
            @Override
            public void run() {
                if (context.listManager.isRecording()) {
                    context.listManager.record(this);
                    return;
                }

                org.lwjgl.opengl.GL11.glFrontFace(mode);
            }
        }
        final Context context = getContext();
        context.exec.execute(new glFrontFace(context, mode));
    }

    public static void glPixelStorei(int pname, int param) { // NoList
        record glPixelStorei(int pname, int param) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glPixelStorei(pname, param);
            }
        }
        getContext().exec.execute(new glPixelStorei(pname, param));
    }

    public static void glReadBuffer(int mode) {
        record glReadBuffer(Context context, int mode) implements Runnable {
            @Override
            public void run() {
                if (context.listManager.isRecording()) {
                    context.listManager.record(this);
                    return;
                }

                org.lwjgl.opengl.GL11.glReadBuffer(mode);
            }
        }
        final Context context = getContext();
        context.exec.execute(new glReadBuffer(context, mode));
    }

    public static void glTexEnvi(int target, int pname, int param) {
        record glTexEnvi(Context context, int target, int pname, int param) implements Runnable {
            @Override
            public void run() {
                if (context.listManager.isRecording()) {
                    context.listManager.record(this);
                    return;
                }

                org.lwjgl.opengl.GL11.glTexEnvi(target, pname, param);
            }
        }
        final Context context = getContext();
        context.exec.execute(new glTexEnvi(context, target, pname, param));
    }

    /**
     * Blocking.
     */
    public static int glGetInteger(int pname) { // NoList
        final Context context = getContext();

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
        final Context context = getContext();
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
        final Context context = getContext();

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
        getContext().texGenerator.get(textures);
    }

    public static int glGenTextures() { // NoList
        return getContext().texGenerator.get();
    }

    public static String glGetString(int name) { // NoList
        final Context context = getContext();
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
        getContext().exec.wait(new glReadPixels(x, y, width, height, format, type, pixels));
    }

    public static void glReadPixels(int x, int y, int width, int height, int format, int type, IntBuffer pixels) { // NoList
        record glReadPixels(int x, int y, int width, int height, int format, int type, IntBuffer pixels) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glReadPixels(x, y, width, height, format, type, pixels);
            }
        }
        getContext().exec.wait(new glReadPixels(x, y, width, height, format, type, pixels));
    }

    public static void glReadPixels(int x, int y, int width, int height, int format, int type, ByteBuffer pixels) { // NoList
        record glReadPixels(int x, int y, int width, int height, int format, int type, ByteBuffer pixels) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glReadPixels(x, y, width, height, format, type, pixels);
            }
        }
        getContext().exec.wait(new glReadPixels(x, y, width, height, format, type, pixels));
    }

    public static int glGetError() { // NoList
        record glGetError() implements Callable<Integer> {
            @Override
            public Integer call() throws Exception {
                return org.lwjgl.opengl.GL11.glGetError();
            }
        }
        return getContext().exec.get(new glGetError());
    }

    public static int glGetTexLevelParameteri(int target, int level, int pname) { // NoList
        record glGetTexLevelParameteri(int target, int level, int pname) implements Callable<Integer> {
            @Override
            public Integer call() throws Exception {
                return org.lwjgl.opengl.GL11.glGetTexLevelParameteri(target, level, pname);
            }
        }
        return getContext().exec.get(new glGetTexLevelParameteri(target, level, pname));
    }

    public static void glGetTexImage(int target, int level, int format, int type, ByteBuffer pixels) { // NoList
        record glGetTexImage(int target, int level, int format, int type, ByteBuffer pixels) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glGetTexImage(target, level, format, type, pixels);
            }
        }
        getContext().exec.wait(new glGetTexImage(target, level, format, type, pixels));
    }

    public static void glGetTexImage(int target, int level, int format, int type, FloatBuffer pixels) { // NoList
        record glGetTexImage(int target, int level, int format, int type, FloatBuffer pixels) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glGetTexImage(target, level, format, type, pixels);
            }
        }
        getContext().exec.wait(new glGetTexImage(target, level, format, type, pixels));
    }

    public static boolean glIsEnabled(int pname) { // NoList
        final Context context = getContext();

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
