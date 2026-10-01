package com.genir.renderer.bridge.opengl;

import java.nio.*;

public final class GL11 {
    public static void glAccum(int op, float value) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glAccum(int, float)");
    }

    public static void glAlphaFunc(int func, float ref) {
        com.genir.renderer.bridge.commands.GL11.glAlphaFunc(func, ref);
    }

    public static void glClearColor(float red, float green, float blue, float alpha) {
        com.genir.renderer.bridge.commands.GL11.glClearColor(red, green, blue, alpha);
    }

    public static void glClearAccum(float red, float green, float blue, float alpha) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glClearAccum(float, float, float, float)");
    }

    public static void glClear(int mask) {
        com.genir.renderer.bridge.commands.GL11.glClear(mask);
    }

    public static void glCallLists(ByteBuffer lists) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glCallLists(ByteBuffer)");
    }

    public static void glCallLists(IntBuffer lists) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glCallLists(IntBuffer)");
    }

    public static void glCallLists(ShortBuffer lists) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glCallLists(ShortBuffer)");
    }

    public static void glCallList(int list) {
        com.genir.renderer.bridge.commands.GL11.glCallList(list);
    }

    public static void glBlendFunc(int sfactor, int dfactor) {
        com.genir.renderer.bridge.commands.GL11.glBlendFunc(sfactor, dfactor);
    }

    public static void glBitmap(int width, int height, float xorig, float yorig, float xmove, float ymove, ByteBuffer bitmap) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glBitmap(int, int, float, float, float, float, ByteBuffer)");
    }

    public static void glBitmap(int width, int height, float xorig, float yorig, float xmove, float ymove, long bitmap_buffer_offset) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glBitmap(int, int, float, float, float, float, long)");
    }

    public static void glBindTexture(int target, int texture) {
        com.genir.renderer.bridge.commands.GL11.glBindTexture(target, texture);
    }

    public static void glPrioritizeTextures(IntBuffer textures, FloatBuffer priorities) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glPrioritizeTextures(IntBuffer, FloatBuffer)");
    }

    public static boolean glAreTexturesResident(IntBuffer textures, ByteBuffer residences) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glAreTexturesResident(IntBuffer, ByteBuffer)");
    }

    public static void glBegin(int mode) {
        com.genir.renderer.bridge.commands.GL11.glBegin(mode);
    }

    public static void glEnd() {
        com.genir.renderer.bridge.commands.GL11.glEnd();
    }

    public static void glArrayElement(int i) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glArrayElement(int)");
    }

    public static void glClearDepth(double depth) {
        com.genir.renderer.bridge.commands.GL11.glClearDepth(depth);
    }

    public static void glDeleteLists(int list, int range) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glDeleteLists(int, int)");
    }

    public static void glDeleteTextures(IntBuffer textures) {
        com.genir.renderer.bridge.commands.GL11.glDeleteTextures(textures);
    }

    public static void glDeleteTextures(int texture) {
        com.genir.renderer.bridge.commands.GL11.glDeleteTextures(texture);
    }

    public static void glCullFace(int mode) {
        com.genir.renderer.bridge.commands.GL11.glCullFace(mode);
    }

    public static void glCopyTexSubImage2D(int target, int level, int xoffset, int yoffset, int x, int y, int width, int height) {
        com.genir.renderer.bridge.commands.GL11.glCopyTexSubImage2D(target, level, xoffset, yoffset, x, y, width, height);
    }

    public static void glCopyTexSubImage1D(int target, int level, int xoffset, int x, int y, int width) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glCopyTexSubImage1D(int, int, int, int, int, int)");
    }

    public static void glCopyTexImage2D(int target, int level, int internalFormat, int x, int y, int width, int height, int border) {
        com.genir.renderer.bridge.commands.GL11.glCopyTexImage2D(target, level, internalFormat, x, y, width, height, border);
    }

    public static void glCopyTexImage1D(int target, int level, int internalFormat, int x, int y, int width, int border) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glCopyTexImage1D(int, int, int, int, int, int, int)");
    }

    public static void glCopyPixels(int x, int y, int width, int height, int type) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glCopyPixels(int, int, int, int, int)");
    }

    public static void glColorPointer(int size, int stride, DoubleBuffer pointer) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glColorPointer(int, int, DoubleBuffer)");
    }

    public static void glColorPointer(int size, int stride, FloatBuffer pointer) {
        com.genir.renderer.bridge.commands.GL11.glColorPointer(size, stride, pointer);
    }

    public static void glColorPointer(int size, boolean unsigned, int stride, ByteBuffer pointer) {
        com.genir.renderer.bridge.commands.GL11.glColorPointer(size, unsigned, stride, pointer);
    }

    public static void glColorPointer(int size, int type, int stride, long pointer_buffer_offset) {
        com.genir.renderer.bridge.commands.GL11.glColorPointer(size, type, stride, pointer_buffer_offset);
    }

    public static void glColorPointer(int size, int type, int stride, ByteBuffer pointer) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glColorPointer(int, int, int, ByteBuffer)");
    }

    public static void glColorMaterial(int face, int mode) {
        com.genir.renderer.bridge.commands.GL11.glColorMaterial(face, mode);
    }

    public static void glColorMask(boolean red, boolean green, boolean blue, boolean alpha) {
        com.genir.renderer.bridge.commands.GL11.glColorMask(red, green, blue, alpha);
    }

    public static void glColor3b(byte red, byte green, byte blue) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glColor3b(byte, byte, byte)");
    }

    public static void glColor3f(float red, float green, float blue) {
        com.genir.renderer.bridge.commands.GL11.glColor3f(red, green, blue);
    }

    public static void glColor3d(double red, double green, double blue) {
        com.genir.renderer.bridge.commands.GL11.glColor3d(red, green, blue);
    }

    public static void glColor3ub(byte red, byte green, byte blue) {
        com.genir.renderer.bridge.commands.GL11.glColor3ub(red, green, blue);
    }

    public static void glColor4b(byte red, byte green, byte blue, byte alpha) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glColor4b(byte, byte, byte, byte)");
    }

    public static void glColor4f(float red, float green, float blue, float alpha) {
        com.genir.renderer.bridge.commands.GL11.glColor4f(red, green, blue, alpha);
    }

    public static void glColor4d(double red, double green, double blue, double alpha) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glColor4d(double, double, double, double)");
    }

    public static void glColor4ub(byte red, byte green, byte blue, byte alpha) {
        com.genir.renderer.bridge.commands.GL11.glColor4ub(red, green, blue, alpha);
    }

    public static void glClipPlane(int plane, DoubleBuffer equation) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glClipPlane(int, DoubleBuffer)");
    }

    public static void glClearStencil(int s) {
        com.genir.renderer.bridge.commands.GL11.glClearStencil(s);
    }

    public static void glEvalPoint1(int i) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glEvalPoint1(int)");
    }

    public static void glEvalPoint2(int i, int j) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glEvalPoint2(int, int)");
    }

    public static void glEvalMesh1(int mode, int i1, int i2) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glEvalMesh1(int, int, int)");
    }

    public static void glEvalMesh2(int mode, int i1, int i2, int j1, int j2) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glEvalMesh2(int, int, int, int, int)");
    }

    public static void glEvalCoord1f(float u) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glEvalCoord1f(float)");
    }

    public static void glEvalCoord1d(double u) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glEvalCoord1d(double)");
    }

    public static void glEvalCoord2f(float u, float v) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glEvalCoord2f(float, float)");
    }

    public static void glEvalCoord2d(double u, double v) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glEvalCoord2d(double, double)");
    }

    public static void glEnableClientState(int cap) {
        com.genir.renderer.bridge.commands.GL11.glEnableClientState(cap);
    }

    public static void glDisableClientState(int cap) {
        com.genir.renderer.bridge.commands.GL11.glDisableClientState(cap);
    }

    public static void glEnable(int cap) {
        com.genir.renderer.bridge.commands.GL11.glEnable(cap);
    }

    public static void glDisable(int cap) {
        com.genir.renderer.bridge.commands.GL11.glDisable(cap);
    }

    public static void glEdgeFlagPointer(int stride, ByteBuffer pointer) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glEdgeFlagPointer(int, ByteBuffer)");
    }

    public static void glEdgeFlagPointer(int stride, long pointer_buffer_offset) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glEdgeFlagPointer(int, long)");
    }

    public static void glEdgeFlag(boolean flag) {
        com.genir.renderer.bridge.commands.GL11.glEdgeFlag(flag);
    }

    public static void glDrawPixels(int width, int height, int format, int type, ByteBuffer pixels) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glDrawPixels(int, int, int, int, ByteBuffer)");
    }

    public static void glDrawPixels(int width, int height, int format, int type, IntBuffer pixels) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glDrawPixels(int, int, int, int, IntBuffer)");
    }

    public static void glDrawPixels(int width, int height, int format, int type, ShortBuffer pixels) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glDrawPixels(int, int, int, int, ShortBuffer)");
    }

    public static void glDrawPixels(int width, int height, int format, int type, long pixels_buffer_offset) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glDrawPixels(int, int, int, int, long)");
    }

    public static void glDrawElements(int mode, ByteBuffer indices) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glDrawElements(int, ByteBuffer)");
    }

    public static void glDrawElements(int mode, IntBuffer indices) {
        com.genir.renderer.bridge.commands.GL11.glDrawElements(mode, indices);
    }

    public static void glDrawElements(int mode, ShortBuffer indices) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glDrawElements(int, ShortBuffer)");
    }

    public static void glDrawElements(int mode, int indices_count, int type, long indices_buffer_offset) {
        com.genir.renderer.bridge.commands.GL11.glDrawElements(mode, indices_count, type, indices_buffer_offset);
    }

    public static void glDrawElements(int mode, int count, int type, ByteBuffer indices) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glDrawElements(int, int, int, ByteBuffer)");
    }

    public static void glDrawBuffer(int mode) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glDrawBuffer(int)");
    }

    public static void glDrawArrays(int mode, int first, int count) {
        com.genir.renderer.bridge.commands.GL11.glDrawArrays(mode, first, count);
    }

    public static void glDepthRange(double zNear, double zFar) {
        com.genir.renderer.bridge.commands.GL11.glDepthRange(zNear, zFar);
    }

    public static void glDepthMask(boolean flag) {
        com.genir.renderer.bridge.commands.GL11.glDepthMask(flag);
    }

    public static void glDepthFunc(int func) {
        com.genir.renderer.bridge.commands.GL11.glDepthFunc(func);
    }

    public static void glFeedbackBuffer(int type, FloatBuffer buffer) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glFeedbackBuffer(int, FloatBuffer)");
    }

    public static void glGetPixelMap(int map, FloatBuffer values) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glGetPixelMap(int, FloatBuffer)");
    }

    public static void glGetPixelMapfv(int map, long values_buffer_offset) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glGetPixelMapfv(int, long)");
    }

    public static void glGetPixelMapu(int map, IntBuffer values) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glGetPixelMapu(int, IntBuffer)");
    }

    public static void glGetPixelMapuiv(int map, long values_buffer_offset) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glGetPixelMapuiv(int, long)");
    }

    public static void glGetPixelMapu(int map, ShortBuffer values) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glGetPixelMapu(int, ShortBuffer)");
    }

    public static void glGetPixelMapusv(int map, long values_buffer_offset) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glGetPixelMapusv(int, long)");
    }

    public static void glGetMaterial(int face, int pname, FloatBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glGetMaterial(int, int, FloatBuffer)");
    }

    public static void glGetMaterial(int face, int pname, IntBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glGetMaterial(int, int, IntBuffer)");
    }

    public static void glGetMap(int target, int query, FloatBuffer v) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glGetMap(int, int, FloatBuffer)");
    }

    public static void glGetMap(int target, int query, DoubleBuffer v) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glGetMap(int, int, DoubleBuffer)");
    }

    public static void glGetMap(int target, int query, IntBuffer v) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glGetMap(int, int, IntBuffer)");
    }

    public static void glGetLight(int light, int pname, FloatBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glGetLight(int, int, FloatBuffer)");
    }

    public static void glGetLight(int light, int pname, IntBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glGetLight(int, int, IntBuffer)");
    }

    public static int glGetError() {
        return com.genir.renderer.bridge.commands.GL11.glGetError();
    }

    public static void glGetClipPlane(int plane, DoubleBuffer equation) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glGetClipPlane(int, DoubleBuffer)");
    }

    public static void glGetBoolean(int pname, ByteBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glGetBoolean(int, ByteBuffer)");
    }

    public static boolean glGetBoolean(int pname) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glGetBoolean(int)");
    }

    public static void glGetDouble(int pname, DoubleBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glGetDouble(int, DoubleBuffer)");
    }

    public static double glGetDouble(int pname) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glGetDouble(int)");
    }

    public static void glGetFloat(int pname, FloatBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glGetFloat(int, FloatBuffer)");
    }

    public static float glGetFloat(int pname) {
        return com.genir.renderer.bridge.commands.GL11.glGetFloat(pname);
    }

    public static void glGetInteger(int pname, IntBuffer params) {
        com.genir.renderer.bridge.commands.GL11.glGetInteger(pname, params);
    }

    public static int glGetInteger(int pname) {
        return com.genir.renderer.bridge.commands.GL11.glGetInteger(pname);
    }

    public static void glGenTextures(IntBuffer textures) {
        com.genir.renderer.bridge.commands.GL11.glGenTextures(textures);
    }

    public static int glGenTextures() {
        return com.genir.renderer.bridge.commands.GL11.glGenTextures();
    }

    public static int glGenLists(int range) {
        return com.genir.renderer.bridge.commands.GL11.glGenLists(range);
    }

    public static void glFrustum(double left, double right, double bottom, double top, double zNear, double zFar) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glFrustum(double, double, double, double, double, double)");
    }

    public static void glFrontFace(int mode) {
        com.genir.renderer.bridge.commands.GL11.glFrontFace(mode);
    }

    public static void glFogf(int pname, float param) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glFogf(int, float)");
    }

    public static void glFogi(int pname, int param) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glFogi(int, int)");
    }

    public static void glFog(int pname, FloatBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glFog(int, FloatBuffer)");
    }

    public static void glFog(int pname, IntBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glFog(int, IntBuffer)");
    }

    public static void glFlush() {
        com.genir.renderer.bridge.commands.GL11.glFlush();
    }

    public static void glFinish() {
        com.genir.renderer.bridge.commands.GL11.glFinish();
    }

    public static ByteBuffer glGetPointer(int pname, long result_size) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glGetPointer(int, long)");
    }

    public static boolean glIsEnabled(int cap) {
        return com.genir.renderer.bridge.commands.GL11.glIsEnabled(cap);
    }

    public static void glInterleavedArrays(int format, int stride, ByteBuffer pointer) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glInterleavedArrays(int, int, ByteBuffer)");
    }

    public static void glInterleavedArrays(int format, int stride, DoubleBuffer pointer) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glInterleavedArrays(int, int, DoubleBuffer)");
    }

    public static void glInterleavedArrays(int format, int stride, FloatBuffer pointer) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glInterleavedArrays(int, int, FloatBuffer)");
    }

    public static void glInterleavedArrays(int format, int stride, IntBuffer pointer) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glInterleavedArrays(int, int, IntBuffer)");
    }

    public static void glInterleavedArrays(int format, int stride, ShortBuffer pointer) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glInterleavedArrays(int, int, ShortBuffer)");
    }

    public static void glInterleavedArrays(int format, int stride, long pointer_buffer_offset) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glInterleavedArrays(int, int, long)");
    }

    public static void glInitNames() {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glInitNames()");
    }

    public static void glHint(int target, int mode) {
        com.genir.renderer.bridge.commands.GL11.glHint(target, mode);
    }

    public static void glGetTexParameter(int target, int pname, FloatBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glGetTexParameter(int, int, FloatBuffer)");
    }

    public static float glGetTexParameterf(int target, int pname) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glGetTexParameterf(int, int)");
    }

    public static void glGetTexParameter(int target, int pname, IntBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glGetTexParameter(int, int, IntBuffer)");
    }

    public static int glGetTexParameteri(int target, int pname) {
        return com.genir.renderer.bridge.commands.GL11.glGetTexParameteri(target, pname);
    }

    public static void glGetTexLevelParameter(int target, int level, int pname, FloatBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glGetTexLevelParameter(int, int, int, FloatBuffer)");
    }

    public static float glGetTexLevelParameterf(int target, int level, int pname) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glGetTexLevelParameterf(int, int, int)");
    }

    public static void glGetTexLevelParameter(int target, int level, int pname, IntBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glGetTexLevelParameter(int, int, int, IntBuffer)");
    }

    public static int glGetTexLevelParameteri(int target, int level, int pname) {
        return com.genir.renderer.bridge.commands.GL11.glGetTexLevelParameteri(target, level, pname);
    }

    public static void glGetTexImage(int target, int level, int format, int type, ByteBuffer pixels) {
        com.genir.renderer.bridge.commands.GL11.glGetTexImage(target, level, format, type, pixels);
    }

    public static void glGetTexImage(int target, int level, int format, int type, DoubleBuffer pixels) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glGetTexImage(int, int, int, int, DoubleBuffer)");
    }

    public static void glGetTexImage(int target, int level, int format, int type, FloatBuffer pixels) {
        com.genir.renderer.bridge.commands.GL11.glGetTexImage(target, level, format, type, pixels);
    }

    public static void glGetTexImage(int target, int level, int format, int type, IntBuffer pixels) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glGetTexImage(int, int, int, int, IntBuffer)");
    }

    public static void glGetTexImage(int target, int level, int format, int type, ShortBuffer pixels) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glGetTexImage(int, int, int, int, ShortBuffer)");
    }

    public static void glGetTexImage(int target, int level, int format, int type, long pixels_buffer_offset) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glGetTexImage(int, int, int, int, long)");
    }

    public static void glGetTexGen(int coord, int pname, IntBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glGetTexGen(int, int, IntBuffer)");
    }

    public static int glGetTexGeni(int coord, int pname) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glGetTexGeni(int, int)");
    }

    public static void glGetTexGen(int coord, int pname, FloatBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glGetTexGen(int, int, FloatBuffer)");
    }

    public static float glGetTexGenf(int coord, int pname) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glGetTexGenf(int, int)");
    }

    public static void glGetTexGen(int coord, int pname, DoubleBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glGetTexGen(int, int, DoubleBuffer)");
    }

    public static double glGetTexGend(int coord, int pname) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glGetTexGend(int, int)");
    }

    public static void glGetTexEnv(int coord, int pname, IntBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glGetTexEnv(int, int, IntBuffer)");
    }

    public static int glGetTexEnvi(int coord, int pname) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glGetTexEnvi(int, int)");
    }

    public static void glGetTexEnv(int coord, int pname, FloatBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glGetTexEnv(int, int, FloatBuffer)");
    }

    public static float glGetTexEnvf(int coord, int pname) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glGetTexEnvf(int, int)");
    }

    public static String glGetString(int name) {
        return com.genir.renderer.bridge.commands.GL11.glGetString(name);
    }

    public static void glGetPolygonStipple(ByteBuffer mask) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glGetPolygonStipple(ByteBuffer)");
    }

    public static void glGetPolygonStipple(long mask_buffer_offset) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glGetPolygonStipple(long)");
    }

    public static boolean glIsList(int list) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glIsList(int)");
    }

    public static void glMaterialf(int face, int pname, float param) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glMaterialf(int, int, float)");
    }

    public static void glMateriali(int face, int pname, int param) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glMateriali(int, int, int)");
    }

    public static void glMaterial(int face, int pname, FloatBuffer params) {
        com.genir.renderer.bridge.commands.GL11.glMaterial(face, pname, params);
    }

    public static void glMaterial(int face, int pname, IntBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glMaterial(int, int, IntBuffer)");
    }

    public static void glMapGrid1f(int un, float u1, float u2) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glMapGrid1f(int, float, float)");
    }

    public static void glMapGrid1d(int un, double u1, double u2) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glMapGrid1d(int, double, double)");
    }

    public static void glMapGrid2f(int un, float u1, float u2, int vn, float v1, float v2) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glMapGrid2f(int, float, float, int, float, float)");
    }

    public static void glMapGrid2d(int un, double u1, double u2, int vn, double v1, double v2) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glMapGrid2d(int, double, double, int, double, double)");
    }

    public static void glMap2f(int target, float u1, float u2, int ustride, int uorder, float v1, float v2, int vstride, int vorder, FloatBuffer points) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glMap2f(int, float, float, int, int, float, float, int, int, FloatBuffer)");
    }

    public static void glMap2d(int target, double u1, double u2, int ustride, int uorder, double v1, double v2, int vstride, int vorder, DoubleBuffer points) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glMap2d(int, double, double, int, int, double, double, int, int, DoubleBuffer)");
    }

    public static void glMap1f(int target, float u1, float u2, int stride, int order, FloatBuffer points) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glMap1f(int, float, float, int, int, FloatBuffer)");
    }

    public static void glMap1d(int target, double u1, double u2, int stride, int order, DoubleBuffer points) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glMap1d(int, double, double, int, int, DoubleBuffer)");
    }

    public static void glLogicOp(int opcode) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glLogicOp(int)");
    }

    public static void glLoadName(int name) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glLoadName(int)");
    }

    public static void glLoadMatrix(FloatBuffer m) {
        com.genir.renderer.bridge.commands.GL11.glLoadMatrix(m);
    }

    public static void glLoadMatrix(DoubleBuffer m) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glLoadMatrix(DoubleBuffer)");
    }

    public static void glLoadIdentity() {
        com.genir.renderer.bridge.commands.GL11.glLoadIdentity();
    }

    public static void glListBase(int base) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glListBase(int)");
    }

    public static void glLineWidth(float width) {
        com.genir.renderer.bridge.commands.GL11.glLineWidth(width);
    }

    public static void glLineStipple(int factor, short pattern) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glLineStipple(int, short)");
    }

    public static void glLightModelf(int pname, float param) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glLightModelf(int, float)");
    }

    public static void glLightModeli(int pname, int param) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glLightModeli(int, int)");
    }

    public static void glLightModel(int pname, FloatBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glLightModel(int, FloatBuffer)");
    }

    public static void glLightModel(int pname, IntBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glLightModel(int, IntBuffer)");
    }

    public static void glLightf(int light, int pname, float param) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glLightf(int, int, float)");
    }

    public static void glLighti(int light, int pname, int param) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glLighti(int, int, int)");
    }

    public static void glLight(int light, int pname, FloatBuffer params) {
        com.genir.renderer.bridge.commands.GL11.glLight(light, pname, params);
    }

    public static void glLight(int light, int pname, IntBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glLight(int, int, IntBuffer)");
    }

    public static boolean glIsTexture(int texture) {
        return com.genir.renderer.bridge.commands.GL11.glIsTexture(texture);
    }

    public static void glMatrixMode(int mode) {
        com.genir.renderer.bridge.commands.GL11.glMatrixMode(mode);
    }

    public static void glPolygonStipple(ByteBuffer mask) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glPolygonStipple(ByteBuffer)");
    }

    public static void glPolygonStipple(long mask_buffer_offset) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glPolygonStipple(long)");
    }

    public static void glPolygonOffset(float factor, float units) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glPolygonOffset(float, float)");
    }

    public static void glPolygonMode(int face, int mode) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glPolygonMode(int, int)");
    }

    public static void glPointSize(float size) {
        com.genir.renderer.bridge.commands.GL11.glPointSize(size);
    }

    public static void glPixelZoom(float xfactor, float yfactor) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glPixelZoom(float, float)");
    }

    public static void glPixelTransferf(int pname, float param) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glPixelTransferf(int, float)");
    }

    public static void glPixelTransferi(int pname, int param) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glPixelTransferi(int, int)");
    }

    public static void glPixelStoref(int pname, float param) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glPixelStoref(int, float)");
    }

    public static void glPixelStorei(int pname, int param) {
        com.genir.renderer.bridge.commands.GL11.glPixelStorei(pname, param);
    }

    public static void glPixelMap(int map, FloatBuffer values) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glPixelMap(int, FloatBuffer)");
    }

    public static void glPixelMapfv(int map, int values_mapsize, long values_buffer_offset) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glPixelMapfv(int, int, long)");
    }

    public static void glPixelMapu(int map, IntBuffer values) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glPixelMapu(int, IntBuffer)");
    }

    public static void glPixelMapuiv(int map, int values_mapsize, long values_buffer_offset) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glPixelMapuiv(int, int, long)");
    }

    public static void glPixelMapu(int map, ShortBuffer values) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glPixelMapu(int, ShortBuffer)");
    }

    public static void glPixelMapusv(int map, int values_mapsize, long values_buffer_offset) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glPixelMapusv(int, int, long)");
    }

    public static void glPassThrough(float token) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glPassThrough(float)");
    }

    public static void glOrtho(double left, double right, double bottom, double top, double zNear, double zFar) {
        com.genir.renderer.bridge.commands.GL11.glOrtho(left, right, bottom, top, zNear, zFar);
    }

    public static void glNormalPointer(int stride, ByteBuffer pointer) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glNormalPointer(int, ByteBuffer)");
    }

    public static void glNormalPointer(int stride, DoubleBuffer pointer) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glNormalPointer(int, DoubleBuffer)");
    }

    public static void glNormalPointer(int stride, FloatBuffer pointer) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glNormalPointer(int, FloatBuffer)");
    }

    public static void glNormalPointer(int stride, IntBuffer pointer) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glNormalPointer(int, IntBuffer)");
    }

    public static void glNormalPointer(int type, int stride, long pointer_buffer_offset) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glNormalPointer(int, int, long)");
    }

    public static void glNormalPointer(int type, int stride, ByteBuffer pointer) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glNormalPointer(int, int, ByteBuffer)");
    }

    public static void glNormal3b(byte nx, byte ny, byte nz) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glNormal3b(byte, byte, byte)");
    }

    public static void glNormal3f(float nx, float ny, float nz) {
        com.genir.renderer.bridge.commands.GL11.glNormal3f(nx, ny, nz);
    }

    public static void glNormal3d(double nx, double ny, double nz) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glNormal3d(double, double, double)");
    }

    public static void glNormal3i(int nx, int ny, int nz) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glNormal3i(int, int, int)");
    }

    public static void glNewList(int list, int mode) {
        com.genir.renderer.bridge.commands.GL11.glNewList(list, mode);
    }

    public static void glEndList() {
        com.genir.renderer.bridge.commands.GL11.glEndList();
    }

    public static void glMultMatrix(FloatBuffer m) {
        com.genir.renderer.bridge.commands.GL11.glMultMatrix(m);
    }

    public static void glMultMatrix(DoubleBuffer m) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glMultMatrix(DoubleBuffer)");
    }

    public static void glShadeModel(int mode) {
        com.genir.renderer.bridge.commands.GL11.glShadeModel(mode);
    }

    public static void glSelectBuffer(IntBuffer buffer) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glSelectBuffer(IntBuffer)");
    }

    public static void glScissor(int x, int y, int width, int height) {
        com.genir.renderer.bridge.commands.GL11.glScissor(x, y, width, height);
    }

    public static void glScalef(float x, float y, float z) {
        com.genir.renderer.bridge.commands.GL11.glScalef(x, y, z);
    }

    public static void glScaled(double x, double y, double z) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glScaled(double, double, double)");
    }

    public static void glRotatef(float angle, float x, float y, float z) {
        com.genir.renderer.bridge.commands.GL11.glRotatef(angle, x, y, z);
    }

    public static void glRotated(double angle, double x, double y, double z) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glRotated(double, double, double, double)");
    }

    public static int glRenderMode(int mode) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glRenderMode(int)");
    }

    public static void glRectf(float x1, float y1, float x2, float y2) {
        com.genir.renderer.bridge.commands.GL11.glRectf(x1, y1, x2, y2);
    }

    public static void glRectd(double x1, double y1, double x2, double y2) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glRectd(double, double, double, double)");
    }

    public static void glRecti(int x1, int y1, int x2, int y2) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glRecti(int, int, int, int)");
    }

    public static void glReadPixels(int x, int y, int width, int height, int format, int type, ByteBuffer pixels) {
        com.genir.renderer.bridge.commands.GL11.glReadPixels(x, y, width, height, format, type, pixels);
    }

    public static void glReadPixels(int x, int y, int width, int height, int format, int type, DoubleBuffer pixels) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glReadPixels(int, int, int, int, int, int, DoubleBuffer)");
    }

    public static void glReadPixels(int x, int y, int width, int height, int format, int type, FloatBuffer pixels) {
        com.genir.renderer.bridge.commands.GL11.glReadPixels(x, y, width, height, format, type, pixels);
    }

    public static void glReadPixels(int x, int y, int width, int height, int format, int type, IntBuffer pixels) {
        com.genir.renderer.bridge.commands.GL11.glReadPixels(x, y, width, height, format, type, pixels);
    }

    public static void glReadPixels(int x, int y, int width, int height, int format, int type, ShortBuffer pixels) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glReadPixels(int, int, int, int, int, int, ShortBuffer)");
    }

    public static void glReadPixels(int x, int y, int width, int height, int format, int type, long pixels_buffer_offset) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glReadPixels(int, int, int, int, int, int, long)");
    }

    public static void glReadBuffer(int mode) {
        com.genir.renderer.bridge.commands.GL11.glReadBuffer(mode);
    }

    public static void glRasterPos2f(float x, float y) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glRasterPos2f(float, float)");
    }

    public static void glRasterPos2d(double x, double y) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glRasterPos2d(double, double)");
    }

    public static void glRasterPos2i(int x, int y) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glRasterPos2i(int, int)");
    }

    public static void glRasterPos3f(float x, float y, float z) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glRasterPos3f(float, float, float)");
    }

    public static void glRasterPos3d(double x, double y, double z) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glRasterPos3d(double, double, double)");
    }

    public static void glRasterPos3i(int x, int y, int z) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glRasterPos3i(int, int, int)");
    }

    public static void glRasterPos4f(float x, float y, float z, float w) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glRasterPos4f(float, float, float, float)");
    }

    public static void glRasterPos4d(double x, double y, double z, double w) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glRasterPos4d(double, double, double, double)");
    }

    public static void glRasterPos4i(int x, int y, int z, int w) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glRasterPos4i(int, int, int, int)");
    }

    public static void glPushName(int name) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glPushName(int)");
    }

    public static void glPopName() {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glPopName()");
    }

    public static void glPushMatrix() {
        com.genir.renderer.bridge.commands.GL11.glPushMatrix();
    }

    public static void glPopMatrix() {
        com.genir.renderer.bridge.commands.GL11.glPopMatrix();
    }

    public static void glPushClientAttrib(int mask) {
        com.genir.renderer.bridge.commands.GL11.glPushClientAttrib(mask);
    }

    public static void glPopClientAttrib() {
        com.genir.renderer.bridge.commands.GL11.glPopClientAttrib();
    }

    public static void glPushAttrib(int mask) {
        com.genir.renderer.bridge.commands.GL11.glPushAttrib(mask);
    }

    public static void glPopAttrib() {
        com.genir.renderer.bridge.commands.GL11.glPopAttrib();
    }

    public static void glStencilFunc(int func, int ref, int mask) {
        com.genir.renderer.bridge.commands.GL11.glStencilFunc(func, ref, mask);
    }

    public static void glVertexPointer(int size, int stride, DoubleBuffer pointer) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glVertexPointer(int, int, DoubleBuffer)");
    }

    public static void glVertexPointer(int size, int stride, FloatBuffer pointer) {
        com.genir.renderer.bridge.commands.GL11.glVertexPointer(size, stride, pointer);
    }

    public static void glVertexPointer(int size, int stride, IntBuffer pointer) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glVertexPointer(int, int, IntBuffer)");
    }

    public static void glVertexPointer(int size, int stride, ShortBuffer pointer) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glVertexPointer(int, int, ShortBuffer)");
    }

    public static void glVertexPointer(int size, int type, int stride, long pointer_buffer_offset) {
        com.genir.renderer.bridge.commands.GL11.glVertexPointer(size, type, stride, pointer_buffer_offset);
    }

    public static void glVertexPointer(int size, int type, int stride, ByteBuffer pointer) {
        com.genir.renderer.bridge.commands.GL11.glVertexPointer(size, type, stride, pointer);
    }

    public static void glVertex2f(float x, float y) {
        com.genir.renderer.bridge.commands.GL11.glVertex2f(x, y);
    }

    public static void glVertex2d(double x, double y) {
        com.genir.renderer.bridge.commands.GL11.glVertex2d(x, y);
    }

    public static void glVertex2i(int x, int y) {
        com.genir.renderer.bridge.commands.GL11.glVertex2i(x, y);
    }

    public static void glVertex3f(float x, float y, float z) {
        com.genir.renderer.bridge.commands.GL11.glVertex3f(x, y, z);
    }

    public static void glVertex3d(double x, double y, double z) {
        com.genir.renderer.bridge.commands.GL11.glVertex3d(x, y, z);
    }

    public static void glVertex3i(int x, int y, int z) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glVertex3i(int, int, int)");
    }

    public static void glVertex4f(float x, float y, float z, float w) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glVertex4f(float, float, float, float)");
    }

    public static void glVertex4d(double x, double y, double z, double w) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glVertex4d(double, double, double, double)");
    }

    public static void glVertex4i(int x, int y, int z, int w) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glVertex4i(int, int, int, int)");
    }

    public static void glTranslatef(float x, float y, float z) {
        com.genir.renderer.bridge.commands.GL11.glTranslatef(x, y, z);
    }

    public static void glTranslated(double x, double y, double z) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glTranslated(double, double, double)");
    }

    public static void glTexImage1D(int target, int level, int internalformat, int width, int border, int format, int type, ByteBuffer pixels) {
        com.genir.renderer.bridge.commands.GL11.glTexImage1D(target, level, internalformat, width, border, format, type, pixels);
    }

    public static void glTexImage1D(int target, int level, int internalformat, int width, int border, int format, int type, DoubleBuffer pixels) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glTexImage1D(int, int, int, int, int, int, int, DoubleBuffer)");
    }

    public static void glTexImage1D(int target, int level, int internalformat, int width, int border, int format, int type, FloatBuffer pixels) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glTexImage1D(int, int, int, int, int, int, int, FloatBuffer)");
    }

    public static void glTexImage1D(int target, int level, int internalformat, int width, int border, int format, int type, IntBuffer pixels) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glTexImage1D(int, int, int, int, int, int, int, IntBuffer)");
    }

    public static void glTexImage1D(int target, int level, int internalformat, int width, int border, int format, int type, ShortBuffer pixels) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glTexImage1D(int, int, int, int, int, int, int, ShortBuffer)");
    }

    public static void glTexImage1D(int target, int level, int internalformat, int width, int border, int format, int type, long pixels_buffer_offset) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glTexImage1D(int, int, int, int, int, int, int, long)");
    }

    public static void glTexImage2D(int target, int level, int internalformat, int width, int height, int border, int format, int type, ByteBuffer pixels) {
        com.genir.renderer.bridge.commands.GL11.glTexImage2D(target, level, internalformat, width, height, border, format, type, pixels);
    }

    public static void glTexImage2D(int target, int level, int internalformat, int width, int height, int border, int format, int type, DoubleBuffer pixels) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glTexImage2D(int, int, int, int, int, int, int, int, DoubleBuffer)");
    }

    public static void glTexImage2D(int target, int level, int internalformat, int width, int height, int border, int format, int type, FloatBuffer pixels) {
        com.genir.renderer.bridge.commands.GL11.glTexImage2D(target, level, internalformat, width, height, border, format, type, pixels);
    }

    public static void glTexImage2D(int target, int level, int internalformat, int width, int height, int border, int format, int type, IntBuffer pixels) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glTexImage2D(int, int, int, int, int, int, int, int, IntBuffer)");
    }

    public static void glTexImage2D(int target, int level, int internalformat, int width, int height, int border, int format, int type, ShortBuffer pixels) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glTexImage2D(int, int, int, int, int, int, int, int, ShortBuffer)");
    }

    public static void glTexImage2D(int target, int level, int internalformat, int width, int height, int border, int format, int type, long pixels_buffer_offset) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glTexImage2D(int, int, int, int, int, int, int, int, long)");
    }

    public static void glTexSubImage1D(int target, int level, int xoffset, int width, int format, int type, ByteBuffer pixels) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glTexSubImage1D(int, int, int, int, int, int, ByteBuffer)");
    }

    public static void glTexSubImage1D(int target, int level, int xoffset, int width, int format, int type, DoubleBuffer pixels) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glTexSubImage1D(int, int, int, int, int, int, DoubleBuffer)");
    }

    public static void glTexSubImage1D(int target, int level, int xoffset, int width, int format, int type, FloatBuffer pixels) {
        com.genir.renderer.bridge.commands.GL11.glTexSubImage1D(target, level, xoffset, width, format, type, pixels);
    }

    public static void glTexSubImage1D(int target, int level, int xoffset, int width, int format, int type, IntBuffer pixels) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glTexSubImage1D(int, int, int, int, int, int, IntBuffer)");
    }

    public static void glTexSubImage1D(int target, int level, int xoffset, int width, int format, int type, ShortBuffer pixels) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glTexSubImage1D(int, int, int, int, int, int, ShortBuffer)");
    }

    public static void glTexSubImage1D(int target, int level, int xoffset, int width, int format, int type, long pixels_buffer_offset) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glTexSubImage1D(int, int, int, int, int, int, long)");
    }

    public static void glTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, ByteBuffer pixels) {
        com.genir.renderer.bridge.commands.GL11.glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixels);
    }

    public static void glTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, DoubleBuffer pixels) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glTexSubImage2D(int, int, int, int, int, int, int, int, DoubleBuffer)");
    }

    public static void glTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, FloatBuffer pixels) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glTexSubImage2D(int, int, int, int, int, int, int, int, FloatBuffer)");
    }

    public static void glTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, IntBuffer pixels) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glTexSubImage2D(int, int, int, int, int, int, int, int, IntBuffer)");
    }

    public static void glTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, ShortBuffer pixels) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glTexSubImage2D(int, int, int, int, int, int, int, int, ShortBuffer)");
    }

    public static void glTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, long pixels_buffer_offset) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glTexSubImage2D(int, int, int, int, int, int, int, int, long)");
    }

    public static void glTexParameterf(int target, int pname, float param) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glTexParameterf(int, int, float)");
    }

    public static void glTexParameteri(int target, int pname, int param) {
        com.genir.renderer.bridge.commands.GL11.glTexParameteri(target, pname, param);
    }

    public static void glTexParameter(int target, int pname, FloatBuffer param) {
        com.genir.renderer.bridge.commands.GL11.glTexParameter(target, pname, param);
    }

    public static void glTexParameter(int target, int pname, IntBuffer param) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glTexParameter(int, int, IntBuffer)");
    }

    public static void glTexGenf(int coord, int pname, float param) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glTexGenf(int, int, float)");
    }

    public static void glTexGend(int coord, int pname, double param) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glTexGend(int, int, double)");
    }

    public static void glTexGen(int coord, int pname, FloatBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glTexGen(int, int, FloatBuffer)");
    }

    public static void glTexGen(int coord, int pname, DoubleBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glTexGen(int, int, DoubleBuffer)");
    }

    public static void glTexGeni(int coord, int pname, int param) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glTexGeni(int, int, int)");
    }

    public static void glTexGen(int coord, int pname, IntBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glTexGen(int, int, IntBuffer)");
    }

    public static void glTexEnvf(int target, int pname, float param) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glTexEnvf(int, int, float)");
    }

    public static void glTexEnvi(int target, int pname, int param) {
        com.genir.renderer.bridge.commands.GL11.glTexEnvi(target, pname, param);
    }

    public static void glTexEnv(int target, int pname, FloatBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glTexEnv(int, int, FloatBuffer)");
    }

    public static void glTexEnv(int target, int pname, IntBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glTexEnv(int, int, IntBuffer)");
    }

    public static void glTexCoordPointer(int size, int stride, DoubleBuffer pointer) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glTexCoordPointer(int, int, DoubleBuffer)");
    }

    public static void glTexCoordPointer(int size, int stride, FloatBuffer pointer) {
        com.genir.renderer.bridge.commands.GL11.glTexCoordPointer(size, stride, pointer);
    }

    public static void glTexCoordPointer(int size, int stride, IntBuffer pointer) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glTexCoordPointer(int, int, IntBuffer)");
    }

    public static void glTexCoordPointer(int size, int stride, ShortBuffer pointer) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glTexCoordPointer(int, int, ShortBuffer)");
    }

    public static void glTexCoordPointer(int size, int type, int stride, long pointer_buffer_offset) {
        com.genir.renderer.bridge.commands.GL11.glTexCoordPointer(size, type, stride, pointer_buffer_offset);
    }

    public static void glTexCoordPointer(int size, int type, int stride, ByteBuffer pointer) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glTexCoordPointer(int, int, int, ByteBuffer)");
    }

    public static void glTexCoord1f(float s) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glTexCoord1f(float)");
    }

    public static void glTexCoord1d(double s) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glTexCoord1d(double)");
    }

    public static void glTexCoord2f(float s, float t) {
        com.genir.renderer.bridge.commands.GL11.glTexCoord2f(s, t);
    }

    public static void glTexCoord2d(double s, double t) {
        com.genir.renderer.bridge.commands.GL11.glTexCoord2d(s, t);
    }

    public static void glTexCoord3f(float s, float t, float r) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glTexCoord3f(float, float, float)");
    }

    public static void glTexCoord3d(double s, double t, double r) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glTexCoord3d(double, double, double)");
    }

    public static void glTexCoord4f(float s, float t, float r, float q) {
        com.genir.renderer.bridge.commands.GL11.glTexCoord4f(s, t, r, q);
    }

    public static void glTexCoord4d(double s, double t, double r, double q) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL11.glTexCoord4d(double, double, double, double)");
    }

    public static void glStencilOp(int fail, int zfail, int zpass) {
        com.genir.renderer.bridge.commands.GL11.glStencilOp(fail, zfail, zpass);
    }

    public static void glStencilMask(int mask) {
        com.genir.renderer.bridge.commands.GL11.glStencilMask(mask);
    }

    public static void glViewport(int x, int y, int width, int height) {
        com.genir.renderer.bridge.commands.GL11.glViewport(x, y, width, height);
    }

    /**
     * Custom.
     */

    public static int glDrainErrors() {
        return com.genir.renderer.bridge.commands.GL11.glDrainErrors();
    }
}
