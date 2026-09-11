package com.genir.renderer.bridge.opengl;

import java.nio.ByteBuffer;
import java.nio.DoubleBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;

public final class GL41 {
    public static void glReleaseShaderCompiler() {
        throw new UnsupportedOperationException();
    }

    public static void glShaderBinary(IntBuffer shaders, int binaryformat, ByteBuffer binary) {
        throw new UnsupportedOperationException();
    }

    public static void glGetShaderPrecisionFormat(int shadertype, int precisiontype, IntBuffer range, IntBuffer precision) {
        throw new UnsupportedOperationException();
    }

    public static void glDepthRangef(float n, float f) {
        com.genir.renderer.bridge.commands.GL41.glDepthRangef(n, f);
    }

    public static void glClearDepthf(float d) {
        com.genir.renderer.bridge.commands.GL41.glClearDepthf(d);
    }

    public static void glGetProgramBinary(int program, IntBuffer length, IntBuffer binaryFormat, ByteBuffer binary) {
        throw new UnsupportedOperationException();
    }

    public static void glProgramBinary(int program, int binaryFormat, ByteBuffer binary) {
        throw new UnsupportedOperationException();
    }

    public static void glProgramParameteri(int program, int pname, int value) {
        throw new UnsupportedOperationException();
    }

    public static void glUseProgramStages(int pipeline, int stages, int program) {
        throw new UnsupportedOperationException();
    }

    public static void glActiveShaderProgram(int pipeline, int program) {
        throw new UnsupportedOperationException();
    }

    public static int glCreateShaderProgram(int type, ByteBuffer string) {
        throw new UnsupportedOperationException();
    }

    public static int glCreateShaderProgram(int type, int count, ByteBuffer strings) {
        throw new UnsupportedOperationException();
    }

    public static int glCreateShaderProgram(int type, ByteBuffer[] strings) {
        throw new UnsupportedOperationException();
    }

    public static int glCreateShaderProgram(int type, CharSequence string) {
        throw new UnsupportedOperationException();
    }

    public static int glCreateShaderProgram(int type, CharSequence[] strings) {
        throw new UnsupportedOperationException();
    }

    public static void glBindProgramPipeline(int pipeline) {
        throw new UnsupportedOperationException();
    }

    public static void glDeleteProgramPipelines(IntBuffer pipelines) {
        throw new UnsupportedOperationException();
    }

    public static void glDeleteProgramPipelines(int pipeline) {
        throw new UnsupportedOperationException();
    }

    public static void glGenProgramPipelines(IntBuffer pipelines) {
        throw new UnsupportedOperationException();
    }

    public static int glGenProgramPipelines() {
        throw new UnsupportedOperationException();
    }

    public static boolean glIsProgramPipeline(int pipeline) {
        throw new UnsupportedOperationException();
    }

    public static void glGetProgramPipeline(int pipeline, int pname, IntBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static int glGetProgramPipelinei(int pipeline, int pname) {
        throw new UnsupportedOperationException();
    }

    public static void glProgramUniform1i(int program, int location, int v0) {
        com.genir.renderer.bridge.commands.GL41.glProgramUniform1i(program, location, v0);
    }

    public static void glProgramUniform2i(int program, int location, int v0, int v1) {
        throw new UnsupportedOperationException();
    }

    public static void glProgramUniform3i(int program, int location, int v0, int v1, int v2) {
        throw new UnsupportedOperationException();
    }

    public static void glProgramUniform4i(int program, int location, int v0, int v1, int v2, int v3) {
        throw new UnsupportedOperationException();
    }

    public static void glProgramUniform1f(int program, int location, float v0) {
        com.genir.renderer.bridge.commands.GL41.glProgramUniform1f(program, location, v0);
    }

    public static void glProgramUniform2f(int program, int location, float v0, float v1) {
        com.genir.renderer.bridge.commands.GL41.glProgramUniform2f(program, location, v0, v1);
    }

    public static void glProgramUniform3f(int program, int location, float v0, float v1, float v2) {
        throw new UnsupportedOperationException();
    }

    public static void glProgramUniform4f(int program, int location, float v0, float v1, float v2, float v3) {
        throw new UnsupportedOperationException();
    }

    public static void glProgramUniform1d(int program, int location, double v0) {
        throw new UnsupportedOperationException();
    }

    public static void glProgramUniform2d(int program, int location, double v0, double v1) {
        throw new UnsupportedOperationException();
    }

    public static void glProgramUniform3d(int program, int location, double v0, double v1, double v2) {
        throw new UnsupportedOperationException();
    }

    public static void glProgramUniform4d(int program, int location, double v0, double v1, double v2, double v3) {
        throw new UnsupportedOperationException();
    }

    public static void glProgramUniform1(int program, int location, IntBuffer value) {
        throw new UnsupportedOperationException();
    }

    public static void glProgramUniform2(int program, int location, IntBuffer value) {
        throw new UnsupportedOperationException();
    }

    public static void glProgramUniform3(int program, int location, IntBuffer value) {
        throw new UnsupportedOperationException();
    }

    public static void glProgramUniform4(int program, int location, IntBuffer value) {
        throw new UnsupportedOperationException();
    }

    public static void glProgramUniform1(int program, int location, FloatBuffer value) {
        throw new UnsupportedOperationException();
    }

    public static void glProgramUniform2(int program, int location, FloatBuffer value) {
        throw new UnsupportedOperationException();
    }

    public static void glProgramUniform3(int program, int location, FloatBuffer value) {
        throw new UnsupportedOperationException();
    }

    public static void glProgramUniform4(int program, int location, FloatBuffer value) {
        throw new UnsupportedOperationException();
    }

    public static void glProgramUniform1(int program, int location, DoubleBuffer value) {
        throw new UnsupportedOperationException();
    }

    public static void glProgramUniform2(int program, int location, DoubleBuffer value) {
        throw new UnsupportedOperationException();
    }

    public static void glProgramUniform3(int program, int location, DoubleBuffer value) {
        throw new UnsupportedOperationException();
    }

    public static void glProgramUniform4(int program, int location, DoubleBuffer value) {
        throw new UnsupportedOperationException();
    }

    public static void glProgramUniform1ui(int program, int location, int v0) {
        throw new UnsupportedOperationException();
    }

    public static void glProgramUniform2ui(int program, int location, int v0, int v1) {
        throw new UnsupportedOperationException();
    }

    public static void glProgramUniform3ui(int program, int location, int v0, int v1, int v2) {
        throw new UnsupportedOperationException();
    }

    public static void glProgramUniform4ui(int program, int location, int v0, int v1, int v2, int v3) {
        throw new UnsupportedOperationException();
    }

    public static void glProgramUniform1u(int program, int location, IntBuffer value) {
        throw new UnsupportedOperationException();
    }

    public static void glProgramUniform2u(int program, int location, IntBuffer value) {
        throw new UnsupportedOperationException();
    }

    public static void glProgramUniform3u(int program, int location, IntBuffer value) {
        throw new UnsupportedOperationException();
    }

    public static void glProgramUniform4u(int program, int location, IntBuffer value) {
        throw new UnsupportedOperationException();
    }

    public static void glProgramUniformMatrix2(int program, int location, boolean transpose, FloatBuffer value) {
        throw new UnsupportedOperationException();
    }

    public static void glProgramUniformMatrix3(int program, int location, boolean transpose, FloatBuffer value) {
        throw new UnsupportedOperationException();
    }

    public static void glProgramUniformMatrix4(int program, int location, boolean transpose, FloatBuffer value) {
        throw new UnsupportedOperationException();
    }

    public static void glProgramUniformMatrix2(int program, int location, boolean transpose, DoubleBuffer value) {
        throw new UnsupportedOperationException();
    }

    public static void glProgramUniformMatrix3(int program, int location, boolean transpose, DoubleBuffer value) {
        throw new UnsupportedOperationException();
    }

    public static void glProgramUniformMatrix4(int program, int location, boolean transpose, DoubleBuffer value) {
        throw new UnsupportedOperationException();
    }

    public static void glProgramUniformMatrix2x3(int program, int location, boolean transpose, FloatBuffer value) {
        throw new UnsupportedOperationException();
    }

    public static void glProgramUniformMatrix3x2(int program, int location, boolean transpose, FloatBuffer value) {
        throw new UnsupportedOperationException();
    }

    public static void glProgramUniformMatrix2x4(int program, int location, boolean transpose, FloatBuffer value) {
        throw new UnsupportedOperationException();
    }

    public static void glProgramUniformMatrix4x2(int program, int location, boolean transpose, FloatBuffer value) {
        throw new UnsupportedOperationException();
    }

    public static void glProgramUniformMatrix3x4(int program, int location, boolean transpose, FloatBuffer value) {
        throw new UnsupportedOperationException();
    }

    public static void glProgramUniformMatrix4x3(int program, int location, boolean transpose, FloatBuffer value) {
        throw new UnsupportedOperationException();
    }

    public static void glProgramUniformMatrix2x3(int program, int location, boolean transpose, DoubleBuffer value) {
        throw new UnsupportedOperationException();
    }

    public static void glProgramUniformMatrix3x2(int program, int location, boolean transpose, DoubleBuffer value) {
        throw new UnsupportedOperationException();
    }

    public static void glProgramUniformMatrix2x4(int program, int location, boolean transpose, DoubleBuffer value) {
        throw new UnsupportedOperationException();
    }

    public static void glProgramUniformMatrix4x2(int program, int location, boolean transpose, DoubleBuffer value) {
        throw new UnsupportedOperationException();
    }

    public static void glProgramUniformMatrix3x4(int program, int location, boolean transpose, DoubleBuffer value) {
        throw new UnsupportedOperationException();
    }

    public static void glProgramUniformMatrix4x3(int program, int location, boolean transpose, DoubleBuffer value) {
        throw new UnsupportedOperationException();
    }

    public static void glValidateProgramPipeline(int pipeline) {
        throw new UnsupportedOperationException();
    }

    public static void glGetProgramPipelineInfoLog(int pipeline, IntBuffer length, ByteBuffer infoLog) {
        throw new UnsupportedOperationException();
    }

    public static String glGetProgramPipelineInfoLog(int pipeline, int bufSize) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexAttribL1d(int index, double x) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexAttribL2d(int index, double x, double y) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexAttribL3d(int index, double x, double y, double z) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexAttribL4d(int index, double x, double y, double z, double w) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexAttribL1(int index, DoubleBuffer v) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexAttribL2(int index, DoubleBuffer v) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexAttribL3(int index, DoubleBuffer v) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexAttribL4(int index, DoubleBuffer v) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexAttribLPointer(int index, int size, int stride, DoubleBuffer pointer) {
        throw new UnsupportedOperationException();
    }

    public static void glVertexAttribLPointer(int index, int size, int stride, long pointer_buffer_offset) {
        throw new UnsupportedOperationException();
    }

    public static void glGetVertexAttribL(int index, int pname, DoubleBuffer params) {
        throw new UnsupportedOperationException();
    }

    public static void glViewportArray(int first, FloatBuffer v) {
        throw new UnsupportedOperationException();
    }

    public static void glViewportIndexedf(int index, float x, float y, float w, float h) {
        throw new UnsupportedOperationException();
    }

    public static void glViewportIndexed(int index, FloatBuffer v) {
        throw new UnsupportedOperationException();
    }

    public static void glScissorArray(int first, IntBuffer v) {
        throw new UnsupportedOperationException();
    }

    public static void glScissorIndexed(int index, int left, int bottom, int width, int height) {
        throw new UnsupportedOperationException();
    }

    public static void glScissorIndexed(int index, IntBuffer v) {
        throw new UnsupportedOperationException();
    }

    public static void glDepthRangeArray(int first, DoubleBuffer v) {
        throw new UnsupportedOperationException();
    }

    public static void glDepthRangeIndexed(int index, double n, double f) {
        throw new UnsupportedOperationException();
    }

    public static void glGetFloat(int target, int index, FloatBuffer data) {
        throw new UnsupportedOperationException();
    }

    public static float glGetFloat(int target, int index) {
        throw new UnsupportedOperationException();
    }

    public static void glGetDouble(int target, int index, DoubleBuffer data) {
        throw new UnsupportedOperationException();
    }

    public static double glGetDouble(int target, int index) {
        throw new UnsupportedOperationException();
    }
}
