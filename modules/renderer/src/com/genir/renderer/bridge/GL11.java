package com.genir.renderer.bridge;

import com.genir.renderer.bridge.impl.BufferUtil;
import com.genir.renderer.bridge.impl.Recordable;
import org.lwjgl.opengl.ATIMeminfo;
import org.lwjgl.opengl.NVXGpuMemoryInfo;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;

import static com.genir.renderer.bridge.GL14.glBlendFuncSeparate;
import static com.genir.renderer.bridge.impl.Bridge.*;

public class GL11 {
    /**
     * Lists.
     */
    public static void glNewList(int list, int mode) {
        exec.execute(() -> listManager.glNewList(list, mode));
    }

    public static void glEndList() {
        exec.execute(() -> listManager.glEndList());
    }

    public static void glCallList(int list) {
        exec.execute(() -> listManager.glCallList(list));
    }

    /**
     * Draw.
     */
    public static void glBegin(int mode) {
        record glBegin(int mode) implements Runnable, Recordable {
            @Override
            public void run() {
                vertexInterceptor.glBegin(mode);
            }
        }

        exec.execute(new glBegin(mode));
    }

    public static void glEnd() {
        record glEnd() implements Runnable, Recordable {
            @Override
            public void run() {
                vertexInterceptor.glEnd();
            }
        }
        exec.execute(new glEnd());
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
                vertexInterceptor.glColor4f(red, green, blue, alpha);
            }
        }
        exec.execute(new glColor4f(red, green, blue, alpha));
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
                vertexInterceptor.glTexCoord4f(s, t, r, q);
            }
        }
        exec.execute(new glTexCoord4f(s, t, r, q));
    }


    public static void glNormal3f(float nx, float ny, float nz) {
        record glNormal3f(float nx, float ny, float nz) implements Runnable, Recordable {
            @Override
            public void run() {
                vertexInterceptor.glNormal3f(nx, ny, nz);
            }
        }
        exec.execute(new glNormal3f(nx, ny, nz));
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
                vertexInterceptor.glVertex3f(x, y, z);
            }
        }
        exec.execute(new glVertex3f(x, y, z));
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
        clientAttribTracker.glEnableClientState(cap);
    }

    public static void glDisableClientState(int cap) { // NoList
        clientAttribTracker.glDisableClientState(cap);
    }

    public static void glPushClientAttrib(int mask) { // NoList
        clientAttribTracker.glPushClientAttrib(mask);
        exec.execute(() -> {
            vertexInterceptor.arraysTouched();
            org.lwjgl.opengl.GL11.glPushClientAttrib(mask);
        });
    }

    public static void glPopClientAttrib() { // NoList
        clientAttribTracker.glPopClientAttrib();
        exec.execute(() -> {
            vertexInterceptor.arraysTouched();
            org.lwjgl.opengl.GL11.glPopClientAttrib();
        });
    }

    public static void glVertexPointer(int size, int stride, FloatBuffer pointer) { // NoList
        clientAttribTracker.glVertexPointer(size, org.lwjgl.opengl.GL11.GL_FLOAT, stride, pointer);
    }

    public static void glVertexPointer(int size, int type, int stride, ByteBuffer pointer) { // NoList
        clientAttribTracker.glVertexPointer(size, stride, type, pointer);
    }

    public static void glColorPointer(int size, boolean unsigned, int stride, ByteBuffer pointer) { // NoList
        int type = unsigned ? org.lwjgl.opengl.GL11.GL_UNSIGNED_BYTE : org.lwjgl.opengl.GL11.GL_BYTE;
        clientAttribTracker.glColorPointer(size, type, stride, pointer);
    }

    public static void glColorPointer(int size, int stride, FloatBuffer pointer) { // NoList
        clientAttribTracker.glColorPointer(size, org.lwjgl.opengl.GL11.GL_FLOAT, stride, pointer);
    }

    public static void glTexCoordPointer(int size, int stride, FloatBuffer pointer) { // NoList
        clientAttribTracker.glTexCoordPointer(size, org.lwjgl.opengl.GL11.GL_FLOAT, stride, pointer);
    }

    /**
     * Array draw.
     */
    public static void glTexCoordPointer(int size, int type, int stride, long pointer_buffer_offset) { // NoList
        clientAttribTracker.glTexCoordPointer(size, type, stride, pointer_buffer_offset);
        exec.execute(() -> org.lwjgl.opengl.GL11.glTexCoordPointer(size, type, stride, pointer_buffer_offset));
    }

    public static void glColorPointer(int size, int type, int stride, long pointer_buffer_offset) { // NoList
        clientAttribTracker.glColorPointer(size, type, stride, pointer_buffer_offset);
        exec.execute(() -> org.lwjgl.opengl.GL11.glColorPointer(size, type, stride, pointer_buffer_offset));
    }

    public static void glVertexPointer(int size, int type, int stride, long pointer_buffer_offset) { // NoList
        clientAttribTracker.glVertexPointer(size, type, stride, pointer_buffer_offset);
        exec.execute(() -> org.lwjgl.opengl.GL11.glVertexPointer(size, type, stride, pointer_buffer_offset));
    }

    public static void glDrawArrays(int mode, int first, int count) {
        record glDrawArrays(Runnable recordedGlDrawArrays) implements Runnable, Recordable {
            @Override
            public void run() {
                recordedGlDrawArrays.run();
            }
        }

        Runnable glDrawArrays = () -> org.lwjgl.opengl.GL11.glDrawArrays(mode, first, count);
        Runnable glDrawArraysWithContext = vertexInterceptor.glDrawArraysWithContext(glDrawArrays);
        exec.execute(new glDrawArrays(glDrawArraysWithContext));
    }

    public static void glDrawElements(int mode, IntBuffer indices) {
        final IntBuffer snapshot = BufferUtil.snapshot(indices);

        Runnable glDrawElements = () -> org.lwjgl.opengl.GL11.glDrawElements(mode, snapshot);
        Runnable glDrawArraysWithContext = vertexInterceptor.glDrawArraysWithContext(glDrawElements);
        exec.execute(glDrawArraysWithContext);
    }

    public static void glDrawElements(int mode, int indices_count, int type, long indices_buffer_offset) {
        exec.execute(() -> {
            attribManager.applyDrawAttribs();
            org.lwjgl.opengl.GL11.glDrawElements(mode, indices_count, type, indices_buffer_offset);
        });
    }

    /**
     * Matrix.
     */
    public static void glMatrixMode(int mode) {
        record glMatrixMode(int mode) implements Runnable, Recordable {
            @Override
            public void run() {
                attribManager.glMatrixMode(mode);
            }
        }

        attribTracker.glMatrixMode(mode);
        exec.execute(new glMatrixMode(mode));
    }

    public static void glPushMatrix() {
        record glPushMatrix() implements Runnable, Recordable {
            @Override
            public void run() {
                transformManager.glPushMatrix();
            }
        }
        exec.execute(new glPushMatrix());
    }

    public static void glPopMatrix() {
        record glPopMatrix() implements Runnable, Recordable {
            @Override
            public void run() {
                transformManager.glPopMatrix();
            }
        }
        exec.execute(new glPopMatrix());
    }

    public static void glLoadIdentity() {
        record glLoadIdentity() implements Runnable, Recordable {
            @Override
            public void run() {
                transformManager.glLoadIdentity();
            }
        }
        exec.execute(new glLoadIdentity());
    }

    public static void glTranslatef(float x, float y, float z) {
        record glTranslatef(float x, float y, float z) implements Runnable, Recordable {
            @Override
            public void run() {
                transformManager.glTranslatef(x, y, z);
            }
        }
        exec.execute(new glTranslatef(x, y, z));
    }

    public static void glRotatef(float angle, float x, float y, float z) {
        record glRotatef(float angle, float x, float y, float z) implements Runnable, Recordable {
            @Override
            public void run() {
                transformManager.glRotatef(angle, x, y, z);
            }
        }
        exec.execute(new glRotatef(angle, x, y, z));
    }

    public static void glScalef(float x, float y, float z) {
        record glScalef(float x, float y, float z) implements Runnable, Recordable {
            @Override
            public void run() {
                transformManager.glScalef(x, y, z);
            }
        }
        exec.execute(new glScalef(x, y, z));
    }

    public static void glMultMatrix(FloatBuffer m) {
        record glMultMatrix(FloatBuffer m) implements Runnable, Recordable {
            @Override
            public void run() {
                transformManager.glMultMatrix(m);
            }
        }
        final FloatBuffer snapshot = BufferUtil.snapshot(m);
        exec.execute(new glMultMatrix(snapshot));
    }

    public static void glOrtho(double left, double right, double bottom, double top, double zNear, double zFar) {
        record glOrtho(double left, double right, double bottom, double top, double zNear, double zFar) implements Runnable, Recordable {
            @Override
            public void run() {
                transformManager.glOrtho(left, right, bottom, top, zNear, zFar);
            }
        }
        exec.execute(new glOrtho(left, right, bottom, top, zNear, zFar));
    }

    /**
     * Render context.
     */
    public static void glEnable(int cap) {
        record glEnable(int cap) implements Runnable, Recordable {
            @Override
            public void run() {
                if (attribManager.interceptEnable(cap)) {
                    attribManager.glEnable(cap);
                } else {
                    org.lwjgl.opengl.GL11.glEnable(cap);
                }
            }
        }
        exec.execute(new glEnable(cap));
    }

    public static void glDisable(int cap) {
        record glDisable(int cap) implements Runnable, Recordable {
            @Override
            public void run() {
                if (attribManager.interceptEnable(cap)) {
                    attribManager.glDisable(cap);
                } else {
                    org.lwjgl.opengl.GL11.glDisable(cap);
                }
            }
        }
        exec.execute(new glDisable(cap));
    }

    public static void glBlendFunc(int sfactor, int dfactor) {
        glBlendFuncSeparate(sfactor, dfactor, sfactor, dfactor);
    }

    public static void glBindTexture(int target, int texture) {
        record glBindTexture(int target, int texture) implements Runnable, Recordable {
            @Override
            public void run() {
                attribManager.glBindTexture(target, texture);
                org.lwjgl.opengl.GL11.glBindTexture(target, texture);
            }
        }

        attribTracker.glBindTexture(target, texture);
        exec.execute(new glBindTexture(target, texture));
    }

    public static void glPushAttrib(int mask) { // NoList
        attribTracker.glPushAttrib(mask);
        exec.execute(() -> {
            attribManager.glPushAttrib(mask);
            org.lwjgl.opengl.GL11.glPushAttrib(mask);
        });
    }

    public static void glPopAttrib() { // NoList
        attribTracker.glPopAttrib();
        exec.execute(() -> {
            attribManager.glPopAttrib();
            org.lwjgl.opengl.GL11.glPopAttrib();
        });
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
        exec.execute(new glColorMask(red, green, blue, alpha));
    }

    public static void glDepthMask(boolean flag) {
        record glDepthMask(boolean flag) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glDepthMask(flag);
            }
        }
        exec.execute(new glDepthMask(flag));
    }

    public static void glViewport(int x, int y, int width, int height) {
        record glViewport(int x, int y, int width, int height) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glViewport(x, y, width, height);
            }
        }
        exec.execute(new glViewport(x, y, width, height));
    }

    public static void glTexParameteri(int target, int pname, int param) {
        record glTexParameteri(int target, int pname, int param) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glTexParameteri(target, pname, param);
            }
        }
        exec.execute(new glTexParameteri(target, pname, param));
    }

    public static void glTexParameter(int target, int pname, FloatBuffer param) {
        record glTexParameter(int target, int pname, FloatBuffer param) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glTexParameter(target, pname, param);
            }
        }
        final FloatBuffer snapshot = BufferUtil.snapshot(param);
        exec.execute(new glTexParameter(target, pname, snapshot));
    }

    public static void glClearColor(float red, float green, float blue, float alpha) {
        record glClearColor(float red, float green, float blue, float alpha) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glClearColor(red, green, blue, alpha);
            }
        }
        exec.execute(new glClearColor(red, green, blue, alpha));
    }

    public static void glClear(int mask) {
        record glClear(int mask) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glClear(mask);
            }
        }
        exec.execute(new glClear(mask));
    }

    public static void glScissor(int x, int y, int width, int height) {
        record glScissor(int x, int y, int width, int height) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glScissor(x, y, width, height);
            }
        }
        exec.execute(new glScissor(x, y, width, height));
    }

    public static void glStencilFunc(int func, int ref, int mask) {
        record glStencilFunc(int func, int ref, int mask) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glStencilFunc(func, ref, mask);
            }
        }
        exec.execute(new glStencilFunc(func, ref, mask));
    }

    public static void glStencilMask(int mask) {
        record glStencilMask(int mask) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glStencilMask(mask);
            }
        }
        exec.execute(new glStencilMask(mask));
    }

    public static void glStencilOp(int fail, int zfail, int zpass) {
        record glStencilOp(int fail, int zfail, int zpass) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glStencilOp(fail, zfail, zpass);
            }
        }
        exec.execute(new glStencilOp(fail, zfail, zpass));
    }

    public static void glClearStencil(int s) {
        record glClearStencil(int s) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glClearStencil(s);
            }
        }
        exec.execute(new glClearStencil(s));
    }

    public static void glAlphaFunc(int func, float ref) {
        record glAlphaFunc(int func, float ref) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glAlphaFunc(func, ref);
            }
        }
        exec.execute(new glAlphaFunc(func, ref));
    }

    public static void glHint(int target, int mode) {
        record glHint(int target, int mode) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glHint(target, mode);
            }
        }
        exec.execute(new glHint(target, mode));
    }

    public static void glLineWidth(float width) {
        record glLineWidth(float width) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glLineWidth(width);
            }
        }
        exec.execute(new glLineWidth(width));
    }

    public static void glColorMaterial(int face, int mode) {
        record glColorMaterial(int face, int mode) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glColorMaterial(face, mode);
            }
        }
        exec.execute(new glColorMaterial(face, mode));
    }

    public static void glShadeModel(int mode) {
        record glShadeModel(int mode) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glShadeModel(mode);
            }
        }
        exec.execute(new glShadeModel(mode));
    }

    public static void glTexImage1D(int target, int level, int internalformat, int width, int border, int format, int type, ByteBuffer pixels) { // NoList
        final ByteBuffer snapshot = BufferUtil.snapshot(pixels);
        exec.execute(() -> org.lwjgl.opengl.GL11.glTexImage1D(target, level, internalformat, width, border, format, type, snapshot));
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

        exec.execute(new glTexImage2D(target, level, internalformat, width, height, border, format, type, snapshot, stack));
    }

    public static void glTexImage2D(int target, int level, int internalformat, int width, int height, int border, int format, int type, FloatBuffer pixels) { // NoList
        final FloatBuffer snapshot = BufferUtil.snapshot(pixels);
        exec.execute(() -> org.lwjgl.opengl.GL11.glTexImage2D(target, level, internalformat, width, height, border, format, type, snapshot));
    }

    public static void glTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, ByteBuffer pixels) { // NoList ?
        final ByteBuffer snapshot = BufferUtil.snapshot(pixels);
        exec.execute(() -> org.lwjgl.opengl.GL11.glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, snapshot));
    }

    public static void glTexSubImage1D(int target, int level, int xoffset, int width, int format, int type, FloatBuffer pixels) { // NoList ?
        final FloatBuffer snapshot = BufferUtil.snapshot(pixels);
        exec.execute(() -> org.lwjgl.opengl.GL11.glTexSubImage1D(target, level, xoffset, width, format, type, snapshot));
    }

    public static void glLight(int light, int pname, FloatBuffer params) {
        record glLight(int light, int pname, FloatBuffer params) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glLight(light, pname, params);
            }
        }
        final FloatBuffer snapshot = BufferUtil.snapshot(params);
        exec.execute(new glLight(light, pname, snapshot));
    }

    public static void glMaterial(int face, int pname, FloatBuffer params) {
        record glMaterial(int face, int pname, FloatBuffer params) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glMaterial(face, pname, params);
            }
        }
        final FloatBuffer snapshot = BufferUtil.snapshot(params);
        exec.execute(new glMaterial(face, pname, snapshot));
    }

    public static void glDeleteTextures(int texture) { // NoList
        exec.execute(() -> org.lwjgl.opengl.GL11.glDeleteTextures(texture));
    }

    public static void glDeleteTextures(IntBuffer textures) { // NoList
        final IntBuffer snapshot = BufferUtil.snapshot(textures);
        exec.execute(() -> org.lwjgl.opengl.GL11.glDeleteTextures(snapshot));
    }

    public static void glCopyTexImage2D(int target, int level, int internalFormat, int x, int y, int width, int height, int border) {
        record glCopyTexImage2D(int target, int level, int internalFormat, int x, int y, int width, int height, int border) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glCopyTexImage2D(target, level, internalFormat, x, y, width, height, border);
            }
        }
        exec.execute(new glCopyTexImage2D(target, level, internalFormat, x, y, width, height, border));
    }

    public static void glCopyTexSubImage2D(int target, int level, int xoffset, int yoffset, int x, int y, int width, int height) {
        record glCopyTexSubImage2D(int target, int level, int xoffset, int yoffset, int x, int y, int width, int height) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glCopyTexSubImage2D(target, level, xoffset, yoffset, x, y, width, height);
            }
        }
        exec.execute(new glCopyTexSubImage2D(target, level, xoffset, yoffset, x, y, width, height));
    }

    public static void glEdgeFlag(boolean flag) {
        record glEdgeFlag(boolean flag) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glEdgeFlag(flag);
            }
        }
        exec.execute(new glEdgeFlag(flag));
    }

    public static void glCullFace(int mode) {
        record glCullFace(int mode) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glCullFace(mode);
            }
        }
        exec.execute(new glCullFace(mode));
    }

    public static void glDepthFunc(int func) {
        record glDepthFunc(int func) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glDepthFunc(func);
            }
        }
        exec.execute(new glDepthFunc(func));
    }

    public static void glDepthRange(double zNear, double zFar) {
        record glDepthRange(double zNear, double zFar) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glDepthRange(zNear, zFar);
            }
        }
        exec.execute(new glDepthRange(zNear, zFar));
    }

    public static void glFrontFace(int mode) {
        record glFrontFace(int mode) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glFrontFace(mode);
            }
        }
        exec.execute(new glFrontFace(mode));
    }

    public static void glPixelStorei(int pname, int param) { // NoList
        exec.execute(() -> org.lwjgl.opengl.GL11.glPixelStorei(pname, param));
    }

    public static void glReadBuffer(int mode) {
        record glReadBuffer(int mode) implements Runnable, Recordable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glReadBuffer(mode);
            }
        }
        exec.execute(new glReadBuffer(mode));
    }

    public static void glTexEnvi(int target, int pname, int param) { // Modded
        exec.execute(() -> org.lwjgl.opengl.GL11.glTexEnvi(target, pname, param));
    }

    /**
     * Blocking.
     */
    public static int glGetInteger(int pname) { // NoList
        switch (pname) {
            case org.lwjgl.opengl.GL11.GL_TEXTURE_BINDING_2D:
                return attribTracker.getTextureBinding();
            case org.lwjgl.opengl.GL11.GL_MATRIX_MODE:
                return attribTracker.getMatrixMode();
            case org.lwjgl.opengl.GL13.GL_ACTIVE_TEXTURE:
                return attribTracker.getActiveTexture();
            case org.lwjgl.opengl.GL15.GL_ARRAY_BUFFER_BINDING:
                return attribTracker.getArrayBufferBinding();
            case org.lwjgl.opengl.GL30.GL_FRAMEBUFFER_BINDING:
                return attribTracker.getFramebufferBinding();
            case org.lwjgl.opengl.GL30.GL_VERTEX_ARRAY_BINDING:
                return attribTracker.getVertexArrayBinding();

            case NVXGpuMemoryInfo.GL_GPU_MEMORY_INFO_CURRENT_AVAILABLE_VIDMEM_NVX:
            case NVXGpuMemoryInfo.GL_GPU_MEMORY_INFO_DEDICATED_VIDMEM_NVX:
            case NVXGpuMemoryInfo.GL_GPU_MEMORY_INFO_TOTAL_AVAILABLE_MEMORY_NVX:
            case ATIMeminfo.GL_TEXTURE_FREE_MEMORY_ATI:
                if (stateCache.isAvailable()) {
                    Integer value = stateCache.getOtherInteger(pname);
                    if (value != null) {
                        return value;
                    }
                }
        }

        return exec.get(() -> org.lwjgl.opengl.GL11.glGetInteger(pname));
    }

    public static float glGetFloat(int pname) { // NoList
        switch (pname) {
            case org.lwjgl.opengl.GL11.GL_LINE_WIDTH:
                return attribTracker.getLineWidth();
        }

        return exec.get(() -> org.lwjgl.opengl.GL11.glGetFloat(pname));
    }

    public static void glGenTextures(IntBuffer textures) { // NoList
        exec.wait(() -> org.lwjgl.opengl.GL11.glGenTextures(textures));
    }

    public static int glGenTextures() { // NoList
        return exec.get(() -> org.lwjgl.opengl.GL11.glGenTextures());
    }

    public static int glGenLists(int range) { // NoList
        return exec.get(() -> org.lwjgl.opengl.GL11.glGenLists(range));
    }

    public static String glGetString(int name) { // NoList
        String result;

        if (stateCache.isAvailable() && name == org.lwjgl.opengl.GL11.GL_EXTENSIONS) {
            result = stateCache.getGlStringExtensions();
        } else {
            result = exec.get(() -> org.lwjgl.opengl.GL11.glGetString(name));
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
        exec.wait(() -> org.lwjgl.opengl.GL11.glReadPixels(x, y, width, height, format, type, pixels));
    }

    public static void glReadPixels(int x, int y, int width, int height, int format, int type, IntBuffer pixels) { // NoList
        exec.wait(() -> org.lwjgl.opengl.GL11.glReadPixels(x, y, width, height, format, type, pixels));
    }

    public static void glReadPixels(int x, int y, int width, int height, int format, int type, ByteBuffer pixels) { // NoList
        exec.wait(() -> org.lwjgl.opengl.GL11.glReadPixels(x, y, width, height, format, type, pixels));
    }

    public static int glGetError() { // NoList
        return exec.get(() -> org.lwjgl.opengl.GL11.glGetError());
    }

    public static int glGetTexLevelParameteri(int target, int level, int pname) { // NoList
        return exec.get(() -> org.lwjgl.opengl.GL11.glGetTexLevelParameteri(target, level, pname));
    }

    public static void glGetTexImage(int target, int level, int format, int type, ByteBuffer pixels) { // NoList
        exec.wait(() -> org.lwjgl.opengl.GL11.glGetTexImage(target, level, format, type, pixels));
    }

    public static void glGetTexImage(int target, int level, int format, int type, FloatBuffer pixels) { // NoList
        exec.wait(() -> org.lwjgl.opengl.GL11.glGetTexImage(target, level, format, type, pixels));
    }
}
