package com.genir.renderer.bridge.opengl;

import java.nio.*;

public final class GL15 {
    public static void glBindBuffer(int target, int buffer) {
        com.genir.renderer.bridge.commands.GL15.glBindBuffer(target, buffer);
    }

    public static void glDeleteBuffers(IntBuffer buffers) {
        com.genir.renderer.bridge.commands.GL15.glDeleteBuffers(buffers);
    }

    public static void glDeleteBuffers(int buffer) {
        com.genir.renderer.bridge.commands.GL15.glDeleteBuffers(buffer);
    }

    public static void glGenBuffers(IntBuffer buffers) {
        com.genir.renderer.bridge.commands.GL15.glGenBuffers(buffers);
    }

    public static int glGenBuffers() {
        return com.genir.renderer.bridge.commands.GL15.glGenBuffers();
    }

    public static boolean glIsBuffer(int buffer) {
        throw new UnsupportedOperationException();
    }

    public static void glBufferData(int target, long data_size, int usage) {
        com.genir.renderer.bridge.commands.GL15.glBufferData(target, data_size, usage);
    }

    public static void glBufferData(int target, ByteBuffer data, int usage) {
        com.genir.renderer.bridge.commands.GL15.glBufferData(target, data, usage);
    }

    public static void glBufferData(int target, DoubleBuffer data, int usage) {
        throw new UnsupportedOperationException();
    }

    public static void glBufferData(int target, FloatBuffer data, int usage) {
        com.genir.renderer.bridge.commands.GL15.glBufferData(target, data, usage);
    }

    public static void glBufferData(int target, IntBuffer data, int usage) {
        throw new UnsupportedOperationException();
    }

    public static void glBufferData(int target, ShortBuffer data, int usage) {
        com.genir.renderer.bridge.commands.GL15.glBufferData(target, data, usage);
    }

    public static void glBufferSubData(int target, long offset, ByteBuffer data) {
        com.genir.renderer.bridge.commands.GL15.glBufferSubData(target, offset, data);
    }

    public static void glBufferSubData(int target, long offset, DoubleBuffer data) {
        throw new UnsupportedOperationException();
    }

    public static void glBufferSubData(int target, long offset, FloatBuffer data) {
        com.genir.renderer.bridge.commands.GL15.glBufferSubData(target, offset, data);
    }

    public static void glBufferSubData(int target, long offset, IntBuffer data) {
        com.genir.renderer.bridge.commands.GL15.glBufferSubData(target, offset, data);
    }

    public static void glBufferSubData(int target, long offset, ShortBuffer data) {
        com.genir.renderer.bridge.commands.GL15.glBufferSubData(target, offset, data);
    }

    public static void glGetBufferSubData(int target, long offset, ByteBuffer data) {
        throw new UnsupportedOperationException();
    }

    public static void glGetBufferSubData(int target, long offset, DoubleBuffer data) {
        throw new UnsupportedOperationException();
    }

    public static void glGetBufferSubData(int target, long offset, FloatBuffer data) {
        throw new UnsupportedOperationException();
    }

    public static void glGetBufferSubData(int target, long offset, IntBuffer data) {
        throw new UnsupportedOperationException();
    }

    public static void glGetBufferSubData(int target, long offset, ShortBuffer data) {
        throw new UnsupportedOperationException();
    }

    public static ByteBuffer glMapBuffer(int target, int access, ByteBuffer old_buffer) {
        throw new UnsupportedOperationException();
    }

    public static ByteBuffer glMapBuffer(int target, int access, long length, ByteBuffer old_buffer) {
        throw new UnsupportedOperationException();
    }

    public static boolean glUnmapBuffer(int target) {
        return com.genir.renderer.bridge.commands.GL15.glUnmapBuffer(target);
    }

    public static void glGetBufferParameter(int target, int pname, IntBuffer params) {
        throw new UnsupportedOperationException();
    }

    /**
     * @deprecated
     */
    @Deprecated
    public static int glGetBufferParameter(int target, int pname) {
        return glGetBufferParameteri(target, pname);
    }

    public static int glGetBufferParameteri(int target, int pname) {
        throw new UnsupportedOperationException();
    }

    public static ByteBuffer glGetBufferPointer(int target, int pname) {
        throw new UnsupportedOperationException();
    }

    public static void glGenQueries(IntBuffer ids) {
        throw new UnsupportedOperationException();
    }

    public static int glGenQueries() {
        throw new UnsupportedOperationException();
    }

    public static void glDeleteQueries(IntBuffer ids) {
        throw new UnsupportedOperationException();
    }

    public static void glDeleteQueries(int id) {
        throw new UnsupportedOperationException();
    }

    public static boolean glIsQuery(int id) {
        throw new UnsupportedOperationException();
    }

    public static void glBeginQuery(int target, int id) {
        throw new UnsupportedOperationException();
    }

    public static void glEndQuery(int target) {
        throw new UnsupportedOperationException();
    }

    public static void glGetQuery(int target, int pname, IntBuffer params) {
        throw new UnsupportedOperationException();
    }

    /**
     * @deprecated
     */
    @Deprecated
    public static int glGetQuery(int target, int pname) {
        return glGetQueryi(target, pname);
    }

    public static int glGetQueryi(int target, int pname) {
        throw new UnsupportedOperationException();
    }

    public static void glGetQueryObject(int id, int pname, IntBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static int glGetQueryObjecti(int id, int pname) {
        throw new UnsupportedOperationException();
    }

    public static void glGetQueryObjectu(int id, int pname, IntBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static int glGetQueryObjectui(int id, int pname) {
        throw new UnsupportedOperationException();
    }
}
