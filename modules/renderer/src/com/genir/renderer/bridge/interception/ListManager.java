package com.genir.renderer.bridge.interception;

import org.lwjgl.BufferUtils;
import org.lwjgl.opengl.GL11;
import org.lwjgl.opengl.GL14;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static com.genir.renderer.Debug.asert;

public class ListManager {
    private int mode = 0;
    private int listID;
    private List<GlCommand> newList;

    private final Map<Integer, List<GlCommand>> lists = new HashMap<>();

    public boolean isRecording() {
        return mode != 0;
    }

    public void glNewList(int list, int mode) {
        asert(!isRecording());
        asert(mode == org.lwjgl.opengl.GL11.GL_COMPILE || mode == org.lwjgl.opengl.GL11.GL_COMPILE_AND_EXECUTE);

        this.listID = list;
        this.mode = mode;

        newList = new ArrayList<>();
    }

    public void glEndList() {
        lists.put(listID, newList);

        boolean execute = mode == org.lwjgl.opengl.GL11.GL_COMPILE_AND_EXECUTE;

        mode = 0;
        newList = null;

        if (execute) {
            glCallList(listID);
        }
    }

    public void glCallList(int list) {
        asert(!isRecording());

        List<GlCommand> listToCall = lists.get(list);
        if (listToCall != null) {
            for (GlCommand command : listToCall) {
                command.call();
            }
        }
    }

    public void glEnable(int cap) {
        newList.add(new GlEnable(cap));
    }

    public void glDisable(int cap) {
        newList.add(new GlDisable(cap));
    }

    public void glBegin(int mode) {
        newList.add(new GlBegin(mode));
    }

    public void glEnd() {
        newList.add(new GlEnd());
    }

    public void glBindTexture(int target, int texture) {
        newList.add(new GlBindTexture(target, texture));
    }

    public void glBlendFunc(int sfactor, int dfactor) {
        newList.add(new GlBlendFunc(sfactor, dfactor));
    }

    public void glMatrixMode(int mode) {
        newList.add(new GlMatrixMode(mode));
    }

    public void glPushMatrix() {
        newList.add(new GlPushMatrix());
    }

    public void glPopMatrix() {
        newList.add(new GlPopMatrix());
    }

    public void glTranslatef(float x, float y, float z) {
        newList.add(new GlTranslatef(x, y, z));
    }

    public void glScalef(float x, float y, float z) {
        newList.add(new GlScalef(x, y, z));
    }

    public void glRotatef(float angle, float x, float y, float z) {
        newList.add(new GlRotatef(angle, x, y, z));
    }

    public void glVertex2f(float x, float y) {
        newList.add(new GlVertex2f(x, y));
    }

    public void glVertex3d(double x, double y, double z) {
        newList.add(new GlVertex3d(x, y, z));
    }

    public void glTexCoord2f(float s, float t) {
        newList.add(new GlTexCoord2f(s, t));
    }

    public void glColor4ub(byte red, byte green, byte blue, byte alpha) {
        newList.add(new GlColor4ub(red, green, blue, alpha));
    }

    public void glColor3d(double red, double green, double blue) {
        newList.add(new GlColor3d(red, green, blue));
    }

    public void glStencilFunc(int func, int ref, int mask) {
        newList.add(new GlStencilFunc(func, ref, mask));
    }

    public void glStencilOp(int fail, int zfail, int zpass) {
        newList.add(new GlStencilOp(fail, zfail, zpass));
    }

    public void glColorMask(boolean red, boolean green, boolean blue, boolean alpha) {
        newList.add(new GlColorMask(red, green, blue, alpha));
    }

    public void glAlphaFunc(int func, float ref) {
        newList.add(new GlAlphaFunc(func, ref));
    }

    public void glDrawArrays(int mode, int first, int count) {
        newList.add(new GlDrawArrays(mode, first, count));
    }

    public void glTexParameteri(int target, int pname, int param) {
        newList.add(new GlTexParameteri(target, pname, param));
    }

    public void glHint(int target, int mode) {
        newList.add(new GlHint(target, mode));
    }

    public void glLineWidth(float width) {
        newList.add(new GlLineWidth(width));
    }

    public void glPolygonMode(int face, int mode) {
        newList.add(new GlPolygonMode(face, mode));
    }

    public void glViewport(int x, int y, int width, int height) {
        newList.add(new GlViewport(x, y, width, height));
    }

    public void glScissor(int x, int y, int width, int height) {
        newList.add(new GlScissor(x, y, width, height));
    }

    public void glPointSize(float size) {
        newList.add(new GlPointSize(size));
    }

    public void glShadeModel(int mode) {
        newList.add(new GlShadeModel(mode));
    }

    public void glLight(int light, int pname, FloatBuffer params) {
        newList.add(new GlLight(light, pname, bufferSnapshot(params)));
    }

    public void glMaterial(int face, int pname, FloatBuffer params) {
        newList.add(new GlMaterial(face, pname, bufferSnapshot(params)));
    }

    public void glMateriali(int face, int pname, int param) {
        newList.add(new GlMateriali(face, pname, param));
    }

    public void glColor3ub(byte red, byte green, byte blue) {
        newList.add(new GlColor3ub(red, green, blue));
    }

    public void glNormal3f(float nx, float ny, float nz) {
        newList.add(new GlNormal3f(nx, ny, nz));
    }

    public void glTexEnvf(int target, int pname, float param) {
        newList.add(new GlTexEnvf(target, pname, param));
    }

    public void glColor4f(float red, float green, float blue, float alpha) {
        newList.add(new GlColor4f(red, green, blue, alpha));
    }

    public void glLoadIdentity() {
        newList.add(new GlLoadIdentity());
    }

    public void glTexImage2D(int target, int level, int internalformat, int width, int height, int border, int format, int type, ByteBuffer pixels) {
        newList.add(new GlTexImage2D(target, level, internalformat, width, height, border, format, type, bufferSnapshot(pixels)));
    }

    public void glTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, ByteBuffer pixels) {
        newList.add(new GlTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, bufferSnapshot(pixels)));
    }

    public void glTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, long pixels_buffer_offset) {
        newList.add(new GlTexSubImage2D_2(target, level, xoffset, yoffset, width, height, format, type, pixels_buffer_offset));
    }

    public void glVertex3f(float x, float y, float z) {
        newList.add(new GlVertex3f(x, y, z));
    }

    public void glColorMaterial(int face, int mode) {
        newList.add(new GlColorMaterial(face, mode));
    }

    public void glColor3f(float red, float green, float blue) {
        newList.add(new GlColor3f(red, green, blue));
    }

    public void glOrtho(double left, double right, double bottom, double top, double zNear, double zFar) {
        newList.add(new GlOrtho(left, right, bottom, top, zNear, zFar));
    }

    public void glClear(int mask) {
        newList.add(new GlClear(mask));
    }

    public void glClearColor(float red, float green, float blue, float alpha) {
        newList.add(new GlClearColor(red, green, blue, alpha));
    }

    public void glPushAttrib(int mask) {
        newList.add(new GlPushAttrib(mask));
    }

    public void glPopAttrib() {
        newList.add(new GlPopAttrib());
    }

    public void glArrayElement(int i) {
        newList.add(new GlArrayElement(i));
    }

    public void glDrawElements(int mode, IntBuffer indices) {
        newList.add(new GlDrawElements(mode, indices));
    }

    public void glTranslated(double x, double y, double z) {
        newList.add(new GlTranslated(x, y, z));
    }

    public void glMultMatrix(FloatBuffer m) {
        newList.add(new GlMultMatrix(bufferSnapshot(m)));
    }

    public void glBlendEquation(int mode) {
        newList.add(new GlBlendEquation(mode));
    }

    private static FloatBuffer bufferSnapshot(FloatBuffer params) {
        FloatBuffer reader = params.duplicate();
        reader.rewind();

        FloatBuffer snapshot = BufferUtils.createFloatBuffer(reader.limit());
        snapshot.put(reader);

        snapshot.flip();
        return snapshot;
    }

    private ByteBuffer bufferSnapshot(ByteBuffer params) {
        ByteBuffer reader = params.duplicate();
        reader.rewind();

        ByteBuffer snapshot = BufferUtils.createByteBuffer(reader.limit());
        snapshot.put(reader);

        snapshot.flip();
        return snapshot;
    }

    private interface GlCommand {
        void call();
    }

    private record GlEnable(int cap) implements GlCommand {
        @Override
        public void call() {
            GL11.glEnable(cap);
        }
    }

    private record GlDisable(int cap) implements GlCommand {
        @Override
        public void call() {
            GL11.glDisable(cap);
        }
    }

    private record GlBegin(int mode) implements GlCommand {
        @Override
        public void call() {
            GL11.glBegin(mode);
        }
    }

    private record GlEnd() implements GlCommand {
        @Override
        public void call() {
            GL11.glEnd();
        }
    }

    private record GlBindTexture(int target, int texture) implements GlCommand {
        @Override
        public void call() {
            GL11.glBindTexture(target, texture);
        }
    }

    private record GlBlendFunc(int sfactor, int dfactor) implements GlCommand {
        @Override
        public void call() {
            GL11.glBlendFunc(sfactor, dfactor);
        }
    }

    private record GlMatrixMode(int mode) implements GlCommand {
        @Override
        public void call() {
            GL11.glMatrixMode(mode);
        }
    }

    private record GlPushMatrix() implements GlCommand {
        @Override
        public void call() {
            GL11.glPushMatrix();
        }
    }

    private record GlPopMatrix() implements GlCommand {
        @Override
        public void call() {
            GL11.glPopMatrix();
        }
    }

    private record GlTranslatef(float x, float y, float z) implements GlCommand {
        @Override
        public void call() {
            GL11.glTranslatef(x, y, z);
        }
    }

    private record GlScalef(float x, float y, float z) implements GlCommand {
        @Override
        public void call() {
            GL11.glScalef(x, y, z);
        }
    }

    private record GlRotatef(float angle, float x, float y, float z) implements GlCommand {
        @Override
        public void call() {
            GL11.glRotatef(angle, x, y, z);
        }
    }

    private record GlVertex2f(float x, float y) implements GlCommand {
        @Override
        public void call() {
            GL11.glVertex2f(x, y);
        }
    }

    private record GlVertex3d(double x, double y, double z) implements GlCommand {
        @Override
        public void call() {
            GL11.glVertex3d(x, y, z);
        }
    }

    private record GlTexCoord2f(float s, float t) implements GlCommand {
        @Override
        public void call() {
            GL11.glTexCoord2f(s, t);
        }
    }

    private record GlColor4ub(byte red, byte green, byte blue, byte alpha) implements GlCommand {
        @Override
        public void call() {
            GL11.glColor4ub(red, green, blue, alpha);
        }
    }

    private record GlColor3d(double red, double green, double blue) implements GlCommand {
        @Override
        public void call() {
            GL11.glColor3d(red, green, blue);
        }
    }

    private record GlStencilFunc(int func, int ref, int mask) implements GlCommand {
        @Override
        public void call() {
            GL11.glStencilFunc(func, ref, mask);
        }
    }

    private record GlStencilOp(int fail, int zfail, int zpass) implements GlCommand {
        @Override
        public void call() {
            GL11.glStencilOp(fail, zfail, zpass);
        }
    }

    private record GlColorMask(boolean red, boolean green, boolean blue, boolean alpha) implements GlCommand {
        @Override
        public void call() {
            GL11.glColorMask(red, green, blue, alpha);
        }
    }

    private record GlAlphaFunc(int func, float ref) implements GlCommand {
        @Override
        public void call() {
            GL11.glAlphaFunc(func, ref);
        }
    }

    private record GlDrawArrays(int mode, int first, int count) implements GlCommand {
        @Override
        public void call() {
            GL11.glDrawArrays(mode, first, count);
        }
    }

    private record GlTexParameteri(int target, int pname, int param) implements GlCommand {
        @Override
        public void call() {
            GL11.glTexParameteri(target, pname, param);
        }
    }

    private record GlHint(int target, int mode) implements GlCommand {
        @Override
        public void call() {
            GL11.glHint(target, mode);
        }
    }

    private record GlLineWidth(float width) implements GlCommand {
        @Override
        public void call() {
            GL11.glLineWidth(width);
        }
    }

    private record GlPolygonMode(int face, int mode) implements GlCommand {
        @Override
        public void call() {
            GL11.glPolygonMode(face, mode);
        }
    }

    private record GlViewport(int x, int y, int width, int height) implements GlCommand {
        @Override
        public void call() {
            GL11.glViewport(x, y, width, height);
        }
    }

    private record GlScissor(int x, int y, int width, int height) implements GlCommand {
        @Override
        public void call() {
            GL11.glScissor(x, y, width, height);
        }
    }

    private record GlPointSize(float size) implements GlCommand {
        @Override
        public void call() {
            GL11.glPointSize(size);
        }
    }

    private record GlShadeModel(int mode) implements GlCommand {
        @Override
        public void call() {
            GL11.glShadeModel(mode);
        }
    }

    private record GlLight(int light, int pname, FloatBuffer params) implements GlCommand {
        @Override
        public void call() {
            GL11.glLight(light, pname, params);
        }
    }

    private record GlMaterial(int face, int pname, FloatBuffer params) implements GlCommand {
        @Override
        public void call() {
            GL11.glMaterial(face, pname, params);
        }
    }

    private record GlMateriali(int face, int pname, int param) implements GlCommand {
        @Override
        public void call() {
            GL11.glMateriali(face, pname, param);
        }
    }

    private record GlColor3ub(byte red, byte green, byte blue) implements GlCommand {
        @Override
        public void call() {
            GL11.glColor3ub(red, green, blue);
        }
    }

    private record GlNormal3f(float nx, float ny, float nz) implements GlCommand {
        @Override
        public void call() {
            GL11.glNormal3f(nx, ny, nz);
        }
    }

    private record GlTexEnvf(int target, int pname, float param) implements GlCommand {
        @Override
        public void call() {
            GL11.glTexEnvf(target, pname, param);
        }
    }

    private record GlColor4f(float red, float green, float blue, float alpha) implements GlCommand {
        @Override
        public void call() {
            GL11.glColor4f(red, green, blue, alpha);
        }
    }

    private record GlLoadIdentity() implements GlCommand {
        @Override
        public void call() {
            GL11.glLoadIdentity();
        }
    }

    private record GlTexImage2D(int target, int level, int internalformat, int width, int height, int border, int format, int type, ByteBuffer pixels) implements GlCommand {
        @Override
        public void call() {
            GL11.glTexImage2D(target, level, internalformat, width, height, border, format, type, pixels);
        }
    }

    private record GlTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, ByteBuffer pixels) implements GlCommand {
        @Override
        public void call() {
            GL11.glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixels);
        }
    }

    private record GlTexSubImage2D_2(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, long pixels_buffer_offset) implements GlCommand {
        @Override
        public void call() {
            GL11.glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixels_buffer_offset);
        }
    }

    private record GlVertex3f(float x, float y, float z) implements GlCommand {
        @Override
        public void call() {
            GL11.glVertex3f(x, y, z);
        }
    }

    private record GlColorMaterial(int face, int mode) implements GlCommand {
        @Override
        public void call() {
            GL11.glColorMaterial(face, mode);
        }
    }

    private record GlColor3f(float red, float green, float blue) implements GlCommand {
        @Override
        public void call() {
            GL11.glColor3f(red, green, blue);
        }
    }

    private record GlOrtho(double left, double right, double bottom, double top, double zNear, double zFar) implements GlCommand {
        @Override
        public void call() {
            GL11.glOrtho(left, right, bottom, top, zNear, zFar);
        }
    }

    private record GlClear(int mask) implements GlCommand {
        @Override
        public void call() {
            GL11.glClear(mask);
        }
    }

    private record GlClearColor(float red, float green, float blue, float alpha) implements GlCommand {
        @Override
        public void call() {
            GL11.glClearColor(red, green, blue, alpha);
        }
    }

    private record GlPushAttrib(int mask) implements GlCommand {
        @Override
        public void call() {
            GL11.glPushAttrib(mask);
        }
    }

    private record GlPopAttrib() implements GlCommand {
        @Override
        public void call() {
            GL11.glPopAttrib();
        }
    }

    private record GlArrayElement(int i) implements GlCommand {
        @Override
        public void call() {
            GL11.glArrayElement(i);
        }
    }

    private record GlDrawElements(int mode, IntBuffer indices) implements GlCommand {
        @Override
        public void call() {
            GL11.glDrawElements(mode, indices);
        }
    }

    private record GlTranslated(double x, double y, double z) implements GlCommand {
        @Override
        public void call() {
            GL11.glTranslated(x, y, z);
        }
    }

    private record GlMultMatrix(FloatBuffer m) implements GlCommand {
        @Override
        public void call() {
            GL11.glMultMatrix(m);
        }
    }

    private record GlBlendEquation(int mode) implements GlCommand {
        @Override
        public void call() {
            GL14.glBlendEquation(mode);
        }
    }
}
