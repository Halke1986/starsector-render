package com.genir.renderer.bridge;


import com.genir.renderer.bridge.impl.BufferUtil;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;

import static com.genir.renderer.bridge.impl.Bridge.exec;

public class GL20 {
    public static void glAttachShader(int program, int shader) {
        exec.execute(() -> org.lwjgl.opengl.GL20.glAttachShader(program, shader));
    }

    public static void glCompileShader(int shader) {
        exec.execute(() -> org.lwjgl.opengl.GL20.glCompileShader(shader));
    }

    public static int glCreateProgram() {
        return exec.get(() -> org.lwjgl.opengl.GL20.glCreateProgram());
    }

    public static int glCreateShader(int type) {
        return exec.get(() -> org.lwjgl.opengl.GL20.glCreateShader(type));
    }

    public static void glDeleteProgram(int program) {
        exec.execute(() -> org.lwjgl.opengl.GL20.glDeleteProgram(program));
    }

    public static void glDeleteShader(int shader) {
        exec.execute(() -> org.lwjgl.opengl.GL20.glDeleteShader(shader));
    }

    public static void glGetAttachedShaders(int program, IntBuffer count, IntBuffer shaders) {
        exec.wait(() -> org.lwjgl.opengl.GL20.glGetAttachedShaders(program, count, shaders));
    }

    public static void glGetProgramInfoLog(int program, IntBuffer length, ByteBuffer infoLog) {
        exec.wait(() -> org.lwjgl.opengl.GL20.glGetProgramInfoLog(program, length, infoLog));
    }

    public static String glGetProgramInfoLog(int program, int maxLength) {
        return exec.get(() -> org.lwjgl.opengl.GL20.glGetProgramInfoLog(program, maxLength));
    }

    public static int glGetProgrami(int program, int pname) {
        return exec.get(() -> org.lwjgl.opengl.GL20.glGetProgrami(program, pname));
    }

    public static void glGetShaderInfoLog(int shader, IntBuffer length, ByteBuffer infoLog) {
        exec.wait(() -> org.lwjgl.opengl.GL20.glGetShaderInfoLog(shader, length, infoLog));
    }

    public static String glGetShaderInfoLog(int shader, int maxLength) {
        return exec.get(() -> org.lwjgl.opengl.GL20.glGetShaderInfoLog(shader, maxLength));
    }

    public static int glGetShaderi(int shader, int pname) {
        return exec.get(() -> org.lwjgl.opengl.GL20.glGetShaderi(shader, pname));
    }

    public static int glGetUniformLocation(int program, CharSequence name) {
        return exec.get(() -> org.lwjgl.opengl.GL20.glGetUniformLocation(program, name));
    }

    public static void glLinkProgram(int program) {
        exec.execute(() -> org.lwjgl.opengl.GL20.glLinkProgram(program));
    }

    public static void glShaderSource(int shader, CharSequence string) {
        exec.execute(() -> org.lwjgl.opengl.GL20.glShaderSource(shader, string));
    }

    public static void glUniform1f(int location, float v0) {
        exec.execute(() -> org.lwjgl.opengl.GL20.glUniform1f(location, v0));
    }

    public static void glUniform1i(int location, int v0) {
        exec.execute(() -> org.lwjgl.opengl.GL20.glUniform1i(location, v0));
    }

    public static void glUniform1(int location, FloatBuffer values) {
        final FloatBuffer snapshot = BufferUtil.snapshot(values);
        exec.execute(() -> org.lwjgl.opengl.GL20.glUniform1(location, snapshot));
    }

    public static void glUniform2f(int location, float v0, float v1) {
        exec.execute(() -> org.lwjgl.opengl.GL20.glUniform2f(location, v0, v1));
    }

    public static void glUniform3f(int location, float v0, float v1, float v2) {
        exec.execute(() -> org.lwjgl.opengl.GL20.glUniform3f(location, v0, v1, v2));
    }

    public static void glUniform4f(int location, float v0, float v1, float v2, float v3) {
        exec.execute(() -> org.lwjgl.opengl.GL20.glUniform4f(location, v0, v1, v2, v3));
    }

    public static void glUseProgram(int program) {
        exec.execute(() -> org.lwjgl.opengl.GL20.glUseProgram(program));
    }

    public static void glValidateProgram(int program) {
        exec.execute(() -> org.lwjgl.opengl.GL20.glValidateProgram(program));
    }

    public static void glDetachShader(int program, int shader) {
        exec.execute(() -> org.lwjgl.opengl.GL20.glDetachShader(program, shader));
    }

    public static void glDisableVertexAttribArray(int index) {
        exec.execute(() -> org.lwjgl.opengl.GL20.glDisableVertexAttribArray(index));
    }

    public static void glEnableVertexAttribArray(int index) {
        exec.execute(() -> org.lwjgl.opengl.GL20.glEnableVertexAttribArray(index));
    }

    public static void glUniformMatrix4(int location, boolean transpose, FloatBuffer matrices) {
        final FloatBuffer snapshot = BufferUtil.snapshot(matrices);
        exec.execute(() -> org.lwjgl.opengl.GL20.glUniformMatrix4(location, transpose, snapshot));
    }

    public static void glVertexAttribPointer(int index, int size, int type, boolean normalized, int stride, long buffer_buffer_offset) {
        exec.execute(() -> org.lwjgl.opengl.GL20.glVertexAttribPointer(index, size, type, normalized, stride, buffer_buffer_offset));
    }
}
