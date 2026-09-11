package com.genir.renderer.bridge.opengl;

import java.nio.*;

public final class GL15 {
    public static final int GL_ARRAY_BUFFER = 34962;
    public static final int GL_ELEMENT_ARRAY_BUFFER = 34963;
    public static final int GL_ARRAY_BUFFER_BINDING = 34964;
    public static final int GL_ELEMENT_ARRAY_BUFFER_BINDING = 34965;
    public static final int GL_VERTEX_ARRAY_BUFFER_BINDING = 34966;
    public static final int GL_NORMAL_ARRAY_BUFFER_BINDING = 34967;
    public static final int GL_COLOR_ARRAY_BUFFER_BINDING = 34968;
    public static final int GL_INDEX_ARRAY_BUFFER_BINDING = 34969;
    public static final int GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING = 34970;
    public static final int GL_EDGE_FLAG_ARRAY_BUFFER_BINDING = 34971;
    public static final int GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING = 34972;
    public static final int GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING = 34973;
    public static final int GL_WEIGHT_ARRAY_BUFFER_BINDING = 34974;
    public static final int GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = 34975;
    public static final int GL_STREAM_DRAW = 35040;
    public static final int GL_STREAM_READ = 35041;
    public static final int GL_STREAM_COPY = 35042;
    public static final int GL_STATIC_DRAW = 35044;
    public static final int GL_STATIC_READ = 35045;
    public static final int GL_STATIC_COPY = 35046;
    public static final int GL_DYNAMIC_DRAW = 35048;
    public static final int GL_DYNAMIC_READ = 35049;
    public static final int GL_DYNAMIC_COPY = 35050;
    public static final int GL_READ_ONLY = 35000;
    public static final int GL_WRITE_ONLY = 35001;
    public static final int GL_READ_WRITE = 35002;
    public static final int GL_BUFFER_SIZE = 34660;
    public static final int GL_BUFFER_USAGE = 34661;
    public static final int GL_BUFFER_ACCESS = 35003;
    public static final int GL_BUFFER_MAPPED = 35004;
    public static final int GL_BUFFER_MAP_POINTER = 35005;
    public static final int GL_FOG_COORD_SRC = 33872;
    public static final int GL_FOG_COORD = 33873;
    public static final int GL_CURRENT_FOG_COORD = 33875;
    public static final int GL_FOG_COORD_ARRAY_TYPE = 33876;
    public static final int GL_FOG_COORD_ARRAY_STRIDE = 33877;
    public static final int GL_FOG_COORD_ARRAY_POINTER = 33878;
    public static final int GL_FOG_COORD_ARRAY = 33879;
    public static final int GL_FOG_COORD_ARRAY_BUFFER_BINDING = 34973;
    public static final int GL_SRC0_RGB = 34176;
    public static final int GL_SRC1_RGB = 34177;
    public static final int GL_SRC2_RGB = 34178;
    public static final int GL_SRC0_ALPHA = 34184;
    public static final int GL_SRC1_ALPHA = 34185;
    public static final int GL_SRC2_ALPHA = 34186;
    public static final int GL_SAMPLES_PASSED = 35092;
    public static final int GL_QUERY_COUNTER_BITS = 34916;
    public static final int GL_CURRENT_QUERY = 34917;
    public static final int GL_QUERY_RESULT = 34918;
    public static final int GL_QUERY_RESULT_AVAILABLE = 34919;

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
