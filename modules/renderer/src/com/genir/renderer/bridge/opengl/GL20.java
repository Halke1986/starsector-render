package com.genir.renderer.bridge.opengl;

import java.nio.*;

public final class GL20 {
    public static void glShaderSource(int shader, ByteBuffer string) {
        throw new UnsupportedOperationException();
    }

    public static void glShaderSource(int shader, CharSequence string) {
        com.genir.renderer.bridge.commands.GL20.glShaderSource(shader, string);
    }

    public static void glShaderSource(int shader, CharSequence[] strings) {
        throw new UnsupportedOperationException();
    }

    public static int glCreateShader(int type) {
        return com.genir.renderer.bridge.commands.GL20.glCreateShader(type);
    }

    public static boolean glIsShader(int shader) {
        throw new UnsupportedOperationException();
    }

    public static void glCompileShader(int shader) {
        com.genir.renderer.bridge.commands.GL20.glCompileShader(shader);
    }

    public static void glDeleteShader(int shader) {
        com.genir.renderer.bridge.commands.GL20.glDeleteShader(shader);
    }

    public static int glCreateProgram() {
        return com.genir.renderer.bridge.commands.GL20.glCreateProgram();
    }

    public static boolean glIsProgram(int program) {
        return com.genir.renderer.bridge.commands.GL20.glIsProgram(program);
    }

    public static void glAttachShader(int program, int shader) {
        com.genir.renderer.bridge.commands.GL20.glAttachShader(program, shader);
    }

    public static void glDetachShader(int program, int shader) {
        com.genir.renderer.bridge.commands.GL20.glDetachShader(program, shader);
    }

    public static void glLinkProgram(int program) {
        com.genir.renderer.bridge.commands.GL20.glLinkProgram(program);
    }

    public static void glUseProgram(int program) {
        com.genir.renderer.bridge.commands.GL20.glUseProgram(program);
    }

    public static void glValidateProgram(int program) {
        com.genir.renderer.bridge.commands.GL20.glValidateProgram(program);
    }

    public static void glDeleteProgram(int program) {
        com.genir.renderer.bridge.commands.GL20.glDeleteProgram(program);
    }

    public static void glUniform1f(int location, float v0) {
        com.genir.renderer.bridge.commands.GL20.glUniform1f(location, v0);
    }

    public static void glUniform2f(int location, float v0, float v1) {
        com.genir.renderer.bridge.commands.GL20.glUniform2f(location, v0, v1);
    }

    public static void glUniform3f(int location, float v0, float v1, float v2) {
        com.genir.renderer.bridge.commands.GL20.glUniform3f(location, v0, v1, v2);
    }

    public static void glUniform4f(int location, float v0, float v1, float v2, float v3) {
        com.genir.renderer.bridge.commands.GL20.glUniform4f(location, v0, v1, v2, v3);
    }

    public static void glUniform1i(int location, int v0) {
        com.genir.renderer.bridge.commands.GL20.glUniform1i(location, v0);
    }

    public static void glUniform2i(int location, int v0, int v1) {
        com.genir.renderer.bridge.commands.GL20.glUniform2i(location, v0, v1);
    }

    public static void glUniform3i(int location, int v0, int v1, int v2) {
        com.genir.renderer.bridge.commands.GL20.glUniform3i(location, v0, v1, v2);
    }

    public static void glUniform4i(int location, int v0, int v1, int v2, int v3) {
        com.genir.renderer.bridge.commands.GL20.glUniform4i(location, v0, v1, v2, v3);
    }

    public static void glUniform1(int location, FloatBuffer values) {
        com.genir.renderer.bridge.commands.GL20.glUniform1(location, values);
    }

    public static void glUniform2(int location, FloatBuffer values) {
        com.genir.renderer.bridge.commands.GL20.glUniform2(location, values);
    }

    public static void glUniform3(int location, FloatBuffer values) {
        com.genir.renderer.bridge.commands.GL20.glUniform3(location, values);
    }

    public static void glUniform4(int location, FloatBuffer values) {
        com.genir.renderer.bridge.commands.GL20.glUniform4(location, values);
    }

    public static void glUniform1(int location, IntBuffer values) {
        throw new UnsupportedOperationException();
    }

    public static void glUniform2(int location, IntBuffer values) {
        throw new UnsupportedOperationException();
    }

    public static void glUniform3(int location, IntBuffer values) {
        throw new UnsupportedOperationException();
    }

    public static void glUniform4(int location, IntBuffer values) {
        throw new UnsupportedOperationException();
    }

    public static void glUniformMatrix2(int location, boolean transpose, FloatBuffer matrices) {
        throw new UnsupportedOperationException();
    }

    public static void glUniformMatrix3(int location, boolean transpose, FloatBuffer matrices) {
        com.genir.renderer.bridge.commands.GL20.glUniformMatrix3(location, transpose, matrices);
    }

    public static void glUniformMatrix4(int location, boolean transpose, FloatBuffer matrices) {
        com.genir.renderer.bridge.commands.GL20.glUniformMatrix4(location, transpose, matrices);
    }

    public static void glGetShader(int shader, int pname, IntBuffer params) {
        throw new UnsupportedOperationException();
    }

    /**
     * @deprecated
     */
    @Deprecated
    public static int glGetShader(int shader, int pname) {
        return glGetShaderi(shader, pname);
    }

    public static int glGetShaderi(int shader, int pname) {
        return com.genir.renderer.bridge.commands.GL20.glGetShaderi(shader, pname);
    }

    public static void glGetProgram(int program, int pname, IntBuffer params) {
        throw new UnsupportedOperationException();
    }

    /**
     * @deprecated
     */
    @Deprecated
    public static int glGetProgram(int program, int pname) {
        return glGetProgrami(program, pname);
    }

    public static int glGetProgrami(int program, int pname) {
        return com.genir.renderer.bridge.commands.GL20.glGetProgrami(program, pname);
    }

    public static void glGetShaderInfoLog(int shader, IntBuffer length, ByteBuffer infoLog) {
        com.genir.renderer.bridge.commands.GL20.glGetShaderInfoLog(shader, length, infoLog);
    }

    public static String glGetShaderInfoLog(int shader, int maxLength) {
        return com.genir.renderer.bridge.commands.GL20.glGetShaderInfoLog(shader, maxLength);
    }

    public static void glGetProgramInfoLog(int program, IntBuffer length, ByteBuffer infoLog) {
        com.genir.renderer.bridge.commands.GL20.glGetProgramInfoLog(program, length, infoLog);
    }

    public static String glGetProgramInfoLog(int program, int maxLength) {
        return com.genir.renderer.bridge.commands.GL20.glGetProgramInfoLog(program, maxLength);
    }

    public static void glGetAttachedShaders(int program, IntBuffer count, IntBuffer shaders) {
        com.genir.renderer.bridge.commands.GL20.glGetAttachedShaders(program, count, shaders);
    }

    public static int glGetUniformLocation(int program, ByteBuffer name) {
        throw new UnsupportedOperationException();
    }

    public static int glGetUniformLocation(int program, CharSequence name) {
        return com.genir.renderer.bridge.commands.GL20.glGetUniformLocation(program, name);
    }

    public static void glGetActiveUniform(int program, int index, IntBuffer length, IntBuffer size, IntBuffer type, ByteBuffer name) {
        throw new UnsupportedOperationException();
    }

    public static String glGetActiveUniform(int program, int index, int maxLength, IntBuffer sizeType) {
        throw new UnsupportedOperationException();
    }

    public static String glGetActiveUniform(int program, int index, int maxLength) {
        throw new UnsupportedOperationException();
    }

    public static int glGetActiveUniformSize(int program, int index) {
        throw new UnsupportedOperationException();
    }

    public static int glGetActiveUniformType(int program, int index) {
        throw new UnsupportedOperationException();
    }

    public static void glGetUniform(int program, int location, FloatBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static void glGetUniform(int program, int location, IntBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static void glGetShaderSource(int shader, IntBuffer length, ByteBuffer source) {
        throw new UnsupportedOperationException();
    }

    public static String glGetShaderSource(int shader, int maxLength) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexAttrib1s(int index, short x) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexAttrib1f(int index, float x) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexAttrib1d(int index, double x) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexAttrib2s(int index, short x, short y) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexAttrib2f(int index, float x, float y) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexAttrib2d(int index, double x, double y) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexAttrib3s(int index, short x, short y, short z) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexAttrib3f(int index, float x, float y, float z) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexAttrib3d(int index, double x, double y, double z) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexAttrib4s(int index, short x, short y, short z, short w) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexAttrib4f(int index, float x, float y, float z, float w) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexAttrib4d(int index, double x, double y, double z, double w) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexAttrib4Nub(int index, byte x, byte y, byte z, byte w) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexAttribPointer(int index, int size, boolean normalized, int stride, DoubleBuffer buffer) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexAttribPointer(int index, int size, boolean normalized, int stride, FloatBuffer buffer) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexAttribPointer(int index, int size, boolean unsigned, boolean normalized, int stride, ByteBuffer buffer) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexAttribPointer(int index, int size, boolean unsigned, boolean normalized, int stride, IntBuffer buffer) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexAttribPointer(int index, int size, boolean unsigned, boolean normalized, int stride, ShortBuffer buffer) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexAttribPointer(int index, int size, int type, boolean normalized, int stride, long buffer_buffer_offset) {
        com.genir.renderer.bridge.commands.GL20.glVertexAttribPointer(index, size, type, normalized, stride, buffer_buffer_offset);
    }

    public static void glVertexAttribPointer(int index, int size, int type, boolean normalized, int stride, ByteBuffer buffer) {
        throw new UnsupportedOperationException();
    }

    public static void glEnableVertexAttribArray(int index) {
        com.genir.renderer.bridge.commands.GL20.glEnableVertexAttribArray(index);
    }

    public static void glDisableVertexAttribArray(int index) {
        com.genir.renderer.bridge.commands.GL20.glDisableVertexAttribArray(index);
    }

    public static void glGetVertexAttrib(int index, int pname, FloatBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static void glGetVertexAttrib(int index, int pname, DoubleBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static void glGetVertexAttrib(int index, int pname, IntBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static ByteBuffer glGetVertexAttribPointer(int index, int pname, long result_size) {
        throw new UnsupportedOperationException();
    }

    public static void glGetVertexAttribPointer(int index, int pname, ByteBuffer pointer) {
        throw new UnsupportedOperationException();
    }

    public static void glBindAttribLocation(int program, int index, ByteBuffer name) {
        throw new UnsupportedOperationException();
    }

    public static void glBindAttribLocation(int program, int index, CharSequence name) {
        throw new UnsupportedOperationException();
    }

    public static void glGetActiveAttrib(int program, int index, IntBuffer length, IntBuffer size, IntBuffer type, ByteBuffer name) {
        throw new UnsupportedOperationException();
    }

    public static String glGetActiveAttrib(int program, int index, int maxLength, IntBuffer sizeType) {
        throw new UnsupportedOperationException();
    }

    public static String glGetActiveAttrib(int program, int index, int maxLength) {
        throw new UnsupportedOperationException();
    }

    public static int glGetActiveAttribSize(int program, int index) {
        throw new UnsupportedOperationException();
    }

    public static int glGetActiveAttribType(int program, int index) {
        throw new UnsupportedOperationException();
    }

    public static int glGetAttribLocation(int program, ByteBuffer name) {
        throw new UnsupportedOperationException();
    }

    public static int glGetAttribLocation(int program, CharSequence name) {
        return com.genir.renderer.bridge.commands.GL20.glGetAttribLocation(program, name);
    }

    public static void glDrawBuffers(IntBuffer buffers) {
        com.genir.renderer.bridge.commands.GL20.glDrawBuffers(buffers);
    }

    public static void glDrawBuffers(int buffer) {
        com.genir.renderer.bridge.commands.GL20.glDrawBuffers(buffer);
    }

    public static void glStencilOpSeparate(int face, int sfail, int dpfail, int dppass) {
        throw new UnsupportedOperationException();
    }

    public static void glStencilFuncSeparate(int face, int func, int ref, int mask) {
        throw new UnsupportedOperationException();
    }

    public static void glStencilMaskSeparate(int face, int mask) {
        throw new UnsupportedOperationException();
    }

    public static void glBlendEquationSeparate(int modeRGB, int modeAlpha) {
        throw new UnsupportedOperationException();
    }
}
