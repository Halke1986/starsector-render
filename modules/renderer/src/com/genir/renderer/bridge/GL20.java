package com.genir.renderer.bridge;

import com.genir.renderer.bridge.context.BufferUtil;
import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.commands.GLCommand;
import com.genir.renderer.bridge.context.commands.GLGetter;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;

import static com.genir.renderer.bridge.context.ContextManager.getThreadContext;

public class GL20 {
    public static void glAttachShader(int program, int shader) {
        record glAttachShader(int program, int shader) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                org.lwjgl.opengl.GL20.glAttachShader(program, shader);
            }
        }

        getThreadContext().exec.execute(new glAttachShader(program, shader));
    }

    public static void glCompileShader(int shader) {
        record glCompileShader(int shader) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                org.lwjgl.opengl.GL20.glCompileShader(shader);
            }
        }

        getThreadContext().exec.execute(new glCompileShader(shader));
    }

    public static int glCreateProgram() {
        record glCreateProgram() implements GLGetter<Integer> {
            @Override
            public Integer call(Context context) {
                return org.lwjgl.opengl.GL20.glCreateProgram();
            }
        }

        return getThreadContext().exec.get(new glCreateProgram());
    }

    public static int glCreateShader(int type) {
        record glCreateShader(int type) implements GLGetter<Integer> {
            @Override
            public Integer call(Context context) {
                return org.lwjgl.opengl.GL20.glCreateShader(type);
            }
        }

        return getThreadContext().exec.get(new glCreateShader(type));
    }

    public static void glDeleteProgram(int program) {
        record glDeleteProgram(int program) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                org.lwjgl.opengl.GL20.glDeleteProgram(program);
            }
        }

        getThreadContext().exec.execute(new glDeleteProgram(program));
    }

    public static void glDeleteShader(int shader) {
        record glDeleteShader(int shader) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                org.lwjgl.opengl.GL20.glDeleteShader(shader);
            }
        }

        getThreadContext().exec.execute(new glDeleteShader(shader));
    }

    public static void glGetAttachedShaders(int program, IntBuffer count, IntBuffer shaders) {
        record glGetAttachedShaders(int program, IntBuffer count, IntBuffer shaders) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                org.lwjgl.opengl.GL20.glGetAttachedShaders(program, count, shaders);
            }
        }

        getThreadContext().exec.wait(new glGetAttachedShaders(program, count, shaders));
    }

    public static void glGetProgramInfoLog(int program, IntBuffer length, ByteBuffer infoLog) {
        record glGetProgramInfoLog(int program, IntBuffer length, ByteBuffer infoLog) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                org.lwjgl.opengl.GL20.glGetProgramInfoLog(program, length, infoLog);
            }
        }

        getThreadContext().exec.wait(new glGetProgramInfoLog(program, length, infoLog));
    }

    public static String glGetProgramInfoLog(int program, int maxLength) {
        record glGetProgramInfoLog(int program, int maxLength) implements GLGetter<String> {
            @Override
            public String call(Context context) {
                return org.lwjgl.opengl.GL20.glGetProgramInfoLog(program, maxLength);
            }
        }

        return getThreadContext().exec.get(new glGetProgramInfoLog(program, maxLength));
    }

    public static void glGetShaderInfoLog(int shader, IntBuffer length, ByteBuffer infoLog) {
        record glGetShaderInfoLog(int shader, IntBuffer length, ByteBuffer infoLog) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                org.lwjgl.opengl.GL20.glGetShaderInfoLog(shader, length, infoLog);
            }
        }

        getThreadContext().exec.wait(new glGetShaderInfoLog(shader, length, infoLog));
    }

    public static String glGetShaderInfoLog(int shader, int maxLength) {
        record glGetShaderInfoLog(int shader, int maxLength) implements GLGetter<String> {
            @Override
            public String call(Context context) {
                return org.lwjgl.opengl.GL20.glGetShaderInfoLog(shader, maxLength);
            }
        }

        return getThreadContext().exec.get(new glGetShaderInfoLog(shader, maxLength));
    }

    public static int glGetShaderi(int shader, int pname) {
        record glGetShaderi(int shader, int pname) implements GLGetter<Integer> {
            @Override
            public Integer call(Context context) {
                return org.lwjgl.opengl.GL20.glGetShaderi(shader, pname);
            }
        }

        return getThreadContext().exec.get(new glGetShaderi(shader, pname));
    }

    public static int glGetUniformLocation(int program, CharSequence name) {
        return getThreadContext().shaderTracker.glGetUniformLocation(program, name);
    }

    public static int glGetProgrami(int program, int pname) {
        return getThreadContext().shaderTracker.glGetProgrami(program, pname);
    }

    public static void glLinkProgram(int program) {
        record glLinkProgram(int program) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                org.lwjgl.opengl.GL20.glLinkProgram(program);
            }
        }

        final Context context = getThreadContext();
        context.shaderTracker.glLinkProgram(program);
        context.exec.execute(new glLinkProgram(program));
    }

    public static void glShaderSource(int shader, CharSequence string) {
        record glShaderSource(int shader, CharSequence string) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                org.lwjgl.opengl.GL20.glShaderSource(shader, string);
            }
        }

        getThreadContext().exec.execute(new glShaderSource(shader, string));
    }

    public static void glUniform1f(int location, float v0) {
        record glUniform1f(int location, float v0) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                org.lwjgl.opengl.GL20.glUniform1f(location, v0);
            }
        }

        getThreadContext().exec.execute(new glUniform1f(location, v0));
    }

    public static void glUniform1i(int location, int v0) {
        record glUniform1i(int location, int v0) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                org.lwjgl.opengl.GL20.glUniform1i(location, v0);
            }
        }

        getThreadContext().exec.execute(new glUniform1i(location, v0));
    }

    public static void glUniform1(int location, FloatBuffer values) {
        record glUniform1(int location, FloatBuffer values) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                org.lwjgl.opengl.GL20.glUniform1(location, values);
            }
        }

        final FloatBuffer snapshot = BufferUtil.snapshot(values);
        getThreadContext().exec.execute(new glUniform1(location, snapshot));
    }

    public static void glUniform2f(int location, float v0, float v1) {
        record glUniform2f(int location, float v0, float v1) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                org.lwjgl.opengl.GL20.glUniform2f(location, v0, v1);
            }
        }

        getThreadContext().exec.execute(new glUniform2f(location, v0, v1));
    }

    public static void glUniform2i(int location, int v0, int v1) {
        record glUniform2i(int location, int v0, int v1) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                org.lwjgl.opengl.GL20.glUniform2i(location, v0, v1);
            }
        }

        getThreadContext().exec.execute(new glUniform2i(location, v0, v1));
    }

    public static void glUniform2(int location, FloatBuffer values) {
        record glUniform2(int location, FloatBuffer values) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                org.lwjgl.opengl.GL20.glUniform2(location, values);
            }
        }

        final FloatBuffer snapshot = BufferUtil.snapshot(values);
        getThreadContext().exec.execute(new glUniform2(location, snapshot));
    }

    public static void glUniform3f(int location, float v0, float v1, float v2) {
        record glUniform3f(int location, float v0, float v1, float v2) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                org.lwjgl.opengl.GL20.glUniform3f(location, v0, v1, v2);
            }
        }

        getThreadContext().exec.execute(new glUniform3f(location, v0, v1, v2));
    }

    public static void glUniform3i(int location, int v0, int v1, int v2) {
        record glUniform3i(int location, int v0, int v1, int v2) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                org.lwjgl.opengl.GL20.glUniform3i(location, v0, v1, v2);
            }
        }

        getThreadContext().exec.execute(new glUniform3i(location, v0, v1, v2));
    }

    public static void glUniform3(int location, FloatBuffer values) {
        record glUniform3(int location, FloatBuffer values) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                org.lwjgl.opengl.GL20.glUniform3(location, values);
            }
        }

        final FloatBuffer snapshot = BufferUtil.snapshot(values);
        getThreadContext().exec.execute(new glUniform3(location, snapshot));
    }

    public static void glUniform4f(int location, float v0, float v1, float v2, float v3) {
        record glUniform4f(int location, float v0, float v1, float v2, float v3) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                org.lwjgl.opengl.GL20.glUniform4f(location, v0, v1, v2, v3);
            }
        }

        getThreadContext().exec.execute(new glUniform4f(location, v0, v1, v2, v3));
    }

    public static void glUniform4i(int location, int v0, int v1, int v2, int v3) {
        record glUniform4i(int location, int v0, int v1, int v2, int v3) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                org.lwjgl.opengl.GL20.glUniform4i(location, v0, v1, v2, v3);
            }
        }

        getThreadContext().exec.execute(new glUniform4i(location, v0, v1, v2, v3));
    }

    public static void glUniform4(int location, FloatBuffer values) {
        record glUniform4(int location, FloatBuffer values) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                org.lwjgl.opengl.GL20.glUniform4(location, values);
            }
        }

        final FloatBuffer snapshot = BufferUtil.snapshot(values);
        getThreadContext().exec.execute(new glUniform4(location, snapshot));
    }

    public static void glUseProgram(int program) {
        record glUseProgram(int program) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                if (program != 0) {
                    // Performing model view transformation on
                    // CPU may interfere with the shader program.
                    context.transformManager.setGPUModelView();
                }

                org.lwjgl.opengl.GL20.glUseProgram(program);

                if (program == 0) {
                    context.transformManager.setCPUModelView();
                }
            }
        }

        final Context context = getThreadContext();
        context.exec.execute(new glUseProgram(program));
    }

    public static void glValidateProgram(int program) {
        record glValidateProgram(int program) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                org.lwjgl.opengl.GL20.glValidateProgram(program);
            }
        }

        getThreadContext().exec.execute(new glValidateProgram(program));
    }

    public static void glDetachShader(int program, int shader) {
        record glDetachShader(int program, int shader) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                org.lwjgl.opengl.GL20.glDetachShader(program, shader);
            }
        }

        getThreadContext().exec.execute(new glDetachShader(program, shader));
    }

    public static void glDisableVertexAttribArray(int index) {
        record glDisableVertexAttribArray(int index) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                org.lwjgl.opengl.GL20.glDisableVertexAttribArray(index);
            }
        }

        getThreadContext().exec.execute(new glDisableVertexAttribArray(index));
    }

    public static void glEnableVertexAttribArray(int index) {
        record glEnableVertexAttribArray(int index) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                org.lwjgl.opengl.GL20.glEnableVertexAttribArray(index);
            }
        }

        getThreadContext().exec.execute(new glEnableVertexAttribArray(index));
    }

    public static void glUniformMatrix4(int location, boolean transpose, FloatBuffer matrices) {
        record glUniformMatrix4(int location, boolean transpose, FloatBuffer matrices) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                org.lwjgl.opengl.GL20.glUniformMatrix4(location, transpose, matrices);
            }
        }

        final FloatBuffer snapshot = BufferUtil.snapshot(matrices);
        getThreadContext().exec.execute(new glUniformMatrix4(location, transpose, snapshot));
    }

    public static void glUniformMatrix3(int location, boolean transpose, FloatBuffer matrices) {
        record glUniformMatrix3(int location, boolean transpose, FloatBuffer matrices) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                org.lwjgl.opengl.GL20.glUniformMatrix3(location, transpose, matrices);
            }
        }

        final FloatBuffer snapshot = BufferUtil.snapshot(matrices);
        getThreadContext().exec.execute(new glUniformMatrix3(location, transpose, snapshot));
    }

    public static void glVertexAttribPointer(int index, int size, int type, boolean normalized, int stride, long buffer_buffer_offset) {
        record glVertexAttribPointer(int index, int size, int type, boolean normalized, int stride, long buffer_buffer_offset) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                org.lwjgl.opengl.GL20.glVertexAttribPointer(index, size, type, normalized, stride, buffer_buffer_offset);
            }
        }

        getThreadContext().exec.execute(new glVertexAttribPointer(index, size, type, normalized, stride, buffer_buffer_offset));
    }

    public static void glDrawBuffers(IntBuffer buffers) {
        record glDrawBuffers(IntBuffer buffers) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                org.lwjgl.opengl.GL20.glDrawBuffers(buffers);
            }
        }

        final IntBuffer snapshot = BufferUtil.snapshot(buffers);
        getThreadContext().exec.execute(new glDrawBuffers(snapshot));
    }

    public static void glDrawBuffers(int buffer) {
        record glDrawBuffers(int buffer) implements GLCommand {
            @Override
            public void run(Context context, int[] args) {
                org.lwjgl.opengl.GL20.glDrawBuffers(buffer);
            }
        }

        getThreadContext().exec.execute(new glDrawBuffers(buffer));
    }

    public static int glGetAttribLocation(int program, CharSequence name) {
        record glGetAttribLocation(int program, CharSequence name) implements GLGetter<Integer> {
            @Override
            public Integer call(Context context) {
                return org.lwjgl.opengl.GL20.glGetAttribLocation(program, name);
            }
        }

        return getThreadContext().exec.get(new glGetAttribLocation(program, name));
    }

    public static boolean glIsProgram(int program) {
        record glIsProgram(int program) implements GLGetter<Boolean> {
            @Override
            public Boolean call(Context context) {
                return org.lwjgl.opengl.GL20.glIsProgram(program);
            }
        }

        return getThreadContext().exec.get(new glIsProgram(program));
    }
}
