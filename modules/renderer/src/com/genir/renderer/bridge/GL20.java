package com.genir.renderer.bridge;


import com.genir.renderer.bridge.impl.BufferUtil;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.util.concurrent.Callable;

import static com.genir.renderer.bridge.impl.Bridge.*;

public class GL20 {
    public static void glAttachShader(int program, int shader) {
        record GL20glAttachShader(int program, int shader) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL20.glAttachShader(program, shader);
            }
        }
        exec.execute(new GL20glAttachShader(program, shader));
    }

    public static void glCompileShader(int shader) {
        record GL20glCompileShader(int shader) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL20.glCompileShader(shader);
            }
        }
        exec.execute(new GL20glCompileShader(shader));
    }

    public static int glCreateProgram() {
        record GL20glCreateProgram() implements Callable<Integer> {
            @Override
            public Integer call() throws Exception {
                return org.lwjgl.opengl.GL20.glCreateProgram();
            }
        }
        return exec.get(new GL20glCreateProgram());
    }

    public static int glCreateShader(int type) {
        record GL20glCreateShader(int type) implements Callable<Integer> {
            @Override
            public Integer call() throws Exception {
                return org.lwjgl.opengl.GL20.glCreateShader(type);
            }
        }
        return exec.get(new GL20glCreateShader(type));
    }

    public static void glDeleteProgram(int program) {
        record GL20glDeleteProgram(int program) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL20.glDeleteProgram(program);
            }
        }
        exec.execute(new GL20glDeleteProgram(program));
    }

    public static void glDeleteShader(int shader) {
        record GL20glDeleteShader(int shader) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL20.glDeleteShader(shader);
            }
        }
        exec.execute(new GL20glDeleteShader(shader));
    }

    public static void glGetAttachedShaders(int program, IntBuffer count, IntBuffer shaders) {
        record GL20glGetAttachedShaders(int program, IntBuffer count, IntBuffer shaders) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL20.glGetAttachedShaders(program, count, shaders);
            }
        }
        exec.wait(new GL20glGetAttachedShaders(program, count, shaders));
    }

    public static void glGetProgramInfoLog(int program, IntBuffer length, ByteBuffer infoLog) {
        record GL20glGetProgramInfoLog(int program, IntBuffer length, ByteBuffer infoLog) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL20.glGetProgramInfoLog(program, length, infoLog);
            }
        }
        exec.wait(new GL20glGetProgramInfoLog(program, length, infoLog));
    }

    public static String glGetProgramInfoLog(int program, int maxLength) {
        record GL20glGetProgramInfoLog(int program, int maxLength) implements Callable<String> {
            @Override
            public String call() throws Exception {
                return org.lwjgl.opengl.GL20.glGetProgramInfoLog(program, maxLength);
            }
        }
        return exec.get(new GL20glGetProgramInfoLog(program, maxLength));
    }

    public static void glGetShaderInfoLog(int shader, IntBuffer length, ByteBuffer infoLog) {
        record GL20glGetShaderInfoLog(int shader, IntBuffer length, ByteBuffer infoLog) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL20.glGetShaderInfoLog(shader, length, infoLog);
            }
        }
        exec.wait(new GL20glGetShaderInfoLog(shader, length, infoLog));
    }

    public static String glGetShaderInfoLog(int shader, int maxLength) {
        record GL20glGetShaderInfoLog(int shader, int maxLength) implements Callable<String> {
            @Override
            public String call() throws Exception {
                return org.lwjgl.opengl.GL20.glGetShaderInfoLog(shader, maxLength);
            }
        }
        return exec.get(new GL20glGetShaderInfoLog(shader, maxLength));
    }

    public static int glGetShaderi(int shader, int pname) {
        record GL20glGetShaderi(int shader, int pname) implements Callable<Integer> {
            @Override
            public Integer call() throws Exception {
                return org.lwjgl.opengl.GL20.glGetShaderi(shader, pname);
            }
        }
        return exec.get(new GL20glGetShaderi(shader, pname));
    }

    public static int glGetUniformLocation(int program, CharSequence name) {
        return shaderTracker.glGetUniformLocation(program, name);
    }

    public static int glGetProgrami(int program, int pname) {
        return shaderTracker.glGetProgrami(program, pname);
    }

    public static void glLinkProgram(int program) {
        record GL20glLinkProgram(int program) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL20.glLinkProgram(program);
            }
        }
        shaderTracker.glLinkProgram(program);
        exec.execute(new GL20glLinkProgram(program));
    }

    public static void glShaderSource(int shader, CharSequence string) {
        record GL20glShaderSource(int shader, CharSequence string) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL20.glShaderSource(shader, string);
            }
        }
        exec.execute(new GL20glShaderSource(shader, string));
    }

    public static void glUniform1f(int location, float v0) {
        record GL20glUniform1f(int location, float v0) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL20.glUniform1f(location, v0);
            }
        }
        exec.execute(new GL20glUniform1f(location, v0));
    }

    public static void glUniform1i(int location, int v0) {
        record GL20glUniform1i(int location, int v0) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL20.glUniform1i(location, v0);
            }
        }
        exec.execute(new GL20glUniform1i(location, v0));
    }

    public static void glUniform1(int location, FloatBuffer values) {
        record GL20glUniform1(int location, FloatBuffer values) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL20.glUniform1(location, values);
            }
        }
        final FloatBuffer snapshot = BufferUtil.snapshot(values);
        exec.execute(new GL20glUniform1(location, snapshot));
    }

    public static void glUniform2f(int location, float v0, float v1) {
        record GL20glUniform2f(int location, float v0, float v1) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL20.glUniform2f(location, v0, v1);
            }
        }
        exec.execute(new GL20glUniform2f(location, v0, v1));
    }

    public static void glUniform2i(int location, int v0, int v1) {
        record GL20glUniform2i(int location, int v0, int v1) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL20.glUniform2i(location, v0, v1);
            }
        }
        exec.execute(new GL20glUniform2i(location, v0, v1));
    }

    public static void glUniform2(int location, FloatBuffer values) {
        record GL20glUniform2(int location, FloatBuffer values) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL20.glUniform2(location, values);
            }
        }
        final FloatBuffer snapshot = BufferUtil.snapshot(values);
        exec.execute(new GL20glUniform2(location, snapshot));
    }

    public static void glUniform3f(int location, float v0, float v1, float v2) {
        record GL20glUniform3f(int location, float v0, float v1, float v2) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL20.glUniform3f(location, v0, v1, v2);
            }
        }
        exec.execute(new GL20glUniform3f(location, v0, v1, v2));
    }

    public static void glUniform3i(int location, int v0, int v1, int v2) {
        record GL20glUniform3i(int location, int v0, int v1, int v2) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL20.glUniform3i(location, v0, v1, v2);
            }
        }
        exec.execute(new GL20glUniform3i(location, v0, v1, v2));
    }

    public static void glUniform3(int location, FloatBuffer values) {
        record GL20glUniform3(int location, FloatBuffer values) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL20.glUniform3(location, values);
            }
        }
        final FloatBuffer snapshot = BufferUtil.snapshot(values);
        exec.execute(new GL20glUniform3(location, snapshot));
    }

    public static void glUniform4f(int location, float v0, float v1, float v2, float v3) {
        record GL20glUniform4f(int location, float v0, float v1, float v2, float v3) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL20.glUniform4f(location, v0, v1, v2, v3);
            }
        }
        exec.execute(new GL20glUniform4f(location, v0, v1, v2, v3));
    }

    public static void glUniform4i(int location, int v0, int v1, int v2, int v3) {
        record GL20glUniform4i(int location, int v0, int v1, int v2, int v3) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL20.glUniform4i(location, v0, v1, v2, v3);
            }
        }
        exec.execute(new GL20glUniform4i(location, v0, v1, v2, v3));
    }

    public static void glUniform4(int location, FloatBuffer values) {
        record GL20glUniform4(int location, FloatBuffer values) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL20.glUniform4(location, values);
            }
        }
        final FloatBuffer snapshot = BufferUtil.snapshot(values);
        exec.execute(new GL20glUniform4(location, snapshot));
    }

    public static void glUseProgram(int program) {
        record GL20glUseProgram(int program) implements Runnable {
            @Override
            public void run() {
                if (program != 0) {
                    // Performing model view transformation on
                    // CPU may interfere with the shader program.
                    transformManager.setGPUModelView();
                }

                org.lwjgl.opengl.GL20.glUseProgram(program);

                if (program == 0) {
                    transformManager.setCPUModelView();
                }
            }
        }
        exec.execute(new GL20glUseProgram(program));
    }

    public static void glValidateProgram(int program) {
        record GL20glValidateProgram(int program) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL20.glValidateProgram(program);
            }
        }
        exec.execute(new GL20glValidateProgram(program));
    }

    public static void glDetachShader(int program, int shader) {
        record GL20glDetachShader(int program, int shader) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL20.glDetachShader(program, shader);
            }
        }
        exec.execute(new GL20glDetachShader(program, shader));
    }

    public static void glDisableVertexAttribArray(int index) {
        record GL20glDisableVertexAttribArray(int index) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL20.glDisableVertexAttribArray(index);
            }
        }
        exec.execute(new GL20glDisableVertexAttribArray(index));
    }

    public static void glEnableVertexAttribArray(int index) {
        record GL20glEnableVertexAttribArray(int index) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL20.glEnableVertexAttribArray(index);
            }
        }
        exec.execute(new GL20glEnableVertexAttribArray(index));
    }

    public static void glUniformMatrix4(int location, boolean transpose, FloatBuffer matrices) {
        record GL20glUniformMatrix4(int location, boolean transpose, FloatBuffer matrices) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL20.glUniformMatrix4(location, transpose, matrices);
            }
        }
        final FloatBuffer snapshot = BufferUtil.snapshot(matrices);
        exec.execute(new GL20glUniformMatrix4(location, transpose, snapshot));
    }

    public static void glUniformMatrix3(int location, boolean transpose, FloatBuffer matrices) {
        record GL20glUniformMatrix3(int location, boolean transpose, FloatBuffer matrices) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL20.glUniformMatrix3(location, transpose, matrices);
            }
        }
        final FloatBuffer snapshot = BufferUtil.snapshot(matrices);
        exec.execute(new GL20glUniformMatrix3(location, transpose, snapshot));
    }

    public static void glVertexAttribPointer(int index, int size, int type, boolean normalized, int stride, long buffer_buffer_offset) {
        record GL20glVertexAttribPointer(int index, int size, int type, boolean normalized, int stride, long buffer_buffer_offset) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL20.glVertexAttribPointer(index, size, type, normalized, stride, buffer_buffer_offset);
            }
        }
        exec.execute(new GL20glVertexAttribPointer(index, size, type, normalized, stride, buffer_buffer_offset));
    }

    public static void glDrawBuffers(IntBuffer buffers) {
        record GL20glDrawBuffers(IntBuffer buffers) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL20.glDrawBuffers(buffers);
            }
        }
        final IntBuffer snapshot = BufferUtil.snapshot(buffers);
        exec.execute(new GL20glDrawBuffers(snapshot));
    }

    public static void glDrawBuffers(int buffer) {
        record GL20glDrawBuffers(int buffer) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL20.glDrawBuffers(buffer);
            }
        }
        exec.execute(new GL20glDrawBuffers(buffer));
    }
}
