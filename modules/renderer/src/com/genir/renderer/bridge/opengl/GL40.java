package com.genir.renderer.bridge.opengl;

import java.nio.ByteBuffer;
import java.nio.DoubleBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;

public final class GL40 {
    public static void glBlendEquationi(int buf, int mode) {
        com.genir.renderer.bridge.commands.GL40.glBlendEquationi(buf, mode);
    }

    public static void glBlendEquationSeparatei(int buf, int modeRGB, int modeAlpha) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glBlendEquationSeparatei");
    }

    public static void glBlendFunci(int buf, int src, int dst) {
        com.genir.renderer.bridge.commands.GL40.glBlendFunci(buf, src, dst);
    }

    public static void glBlendFuncSeparatei(int buf, int srcRGB, int dstRGB, int srcAlpha, int dstAlpha) {
        com.genir.renderer.bridge.commands.GL40.glBlendFuncSeparatei(buf, srcRGB, dstRGB, srcAlpha, dstAlpha);
    }

    public static void glDrawArraysIndirect(int mode, ByteBuffer indirect) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glDrawArraysIndirect");
    }

    public static void glDrawArraysIndirect(int mode, long indirect_buffer_offset) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glDrawArraysIndirect");
    }

    public static void glDrawArraysIndirect(int mode, IntBuffer indirect) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glDrawArraysIndirect");
    }

    public static void glDrawElementsIndirect(int mode, int type, ByteBuffer indirect) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glDrawElementsIndirect");
    }

    public static void glDrawElementsIndirect(int mode, int type, long indirect_buffer_offset) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glDrawElementsIndirect");
    }

    public static void glDrawElementsIndirect(int mode, int type, IntBuffer indirect) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glDrawElementsIndirect");
    }

    public static void glUniform1d(int location, double x) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glUniform1d");
    }

    public static void glUniform2d(int location, double x, double y) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glUniform2d");
    }

    public static void glUniform3d(int location, double x, double y, double z) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glUniform3d");
    }

    public static void glUniform4d(int location, double x, double y, double z, double w) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glUniform4d");
    }

    public static void glUniform1(int location, DoubleBuffer value) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glUniform1");
    }

    public static void glUniform2(int location, DoubleBuffer value) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glUniform2");
    }

    public static void glUniform3(int location, DoubleBuffer value) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glUniform3");
    }

    public static void glUniform4(int location, DoubleBuffer value) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glUniform4");
    }

    public static void glUniformMatrix2(int location, boolean transpose, DoubleBuffer value) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glUniformMatrix2");
    }

    public static void glUniformMatrix3(int location, boolean transpose, DoubleBuffer value) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glUniformMatrix3");
    }

    public static void glUniformMatrix4(int location, boolean transpose, DoubleBuffer value) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glUniformMatrix4");
    }

    public static void glUniformMatrix2x3(int location, boolean transpose, DoubleBuffer value) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glUniformMatrix2x3");
    }

    public static void glUniformMatrix2x4(int location, boolean transpose, DoubleBuffer value) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glUniformMatrix2x4");
    }

    public static void glUniformMatrix3x2(int location, boolean transpose, DoubleBuffer value) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glUniformMatrix3x2");
    }

    public static void glUniformMatrix3x4(int location, boolean transpose, DoubleBuffer value) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glUniformMatrix3x4");
    }

    public static void glUniformMatrix4x2(int location, boolean transpose, DoubleBuffer value) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glUniformMatrix4x2");
    }

    public static void glUniformMatrix4x3(int location, boolean transpose, DoubleBuffer value) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glUniformMatrix4x3");
    }

    public static void glGetUniform(int program, int location, DoubleBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glGetUniform");
    }

    public static void glMinSampleShading(float value) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glMinSampleShading");
    }

    public static int glGetSubroutineUniformLocation(int program, int shadertype, ByteBuffer name) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glGetSubroutineUniformLocation");
    }

    public static int glGetSubroutineUniformLocation(int program, int shadertype, CharSequence name) {
        return com.genir.renderer.bridge.commands.GL40.glGetSubroutineUniformLocation(program, shadertype, name);
    }

    public static int glGetSubroutineIndex(int program, int shadertype, ByteBuffer name) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glGetSubroutineIndex");
    }

    public static int glGetSubroutineIndex(int program, int shadertype, CharSequence name) {
        return com.genir.renderer.bridge.commands.GL40.glGetSubroutineIndex(program, shadertype, name);
    }

    public static void glGetActiveSubroutineUniform(int program, int shadertype, int index, int pname, IntBuffer values) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glGetActiveSubroutineUniform");
    }

    /**
     * @deprecated
     */
    @Deprecated
    public static int glGetActiveSubroutineUniform(int program, int shadertype, int index, int pname) {
        return glGetActiveSubroutineUniformi(program, shadertype, index, pname);
    }

    public static int glGetActiveSubroutineUniformi(int program, int shadertype, int index, int pname) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glGetActiveSubroutineUniformi");
    }

    public static void glGetActiveSubroutineUniformName(int program, int shadertype, int index, IntBuffer length, ByteBuffer name) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glGetActiveSubroutineUniformName");
    }

    public static String glGetActiveSubroutineUniformName(int program, int shadertype, int index, int bufsize) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glGetActiveSubroutineUniformName");
    }

    public static void glGetActiveSubroutineName(int program, int shadertype, int index, IntBuffer length, ByteBuffer name) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glGetActiveSubroutineName");
    }

    public static String glGetActiveSubroutineName(int program, int shadertype, int index, int bufsize) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glGetActiveSubroutineName");
    }

    public static void glUniformSubroutinesu(int shadertype, IntBuffer indices) {
        com.genir.renderer.bridge.commands.GL40.glUniformSubroutinesu(shadertype, indices);
    }

    public static void glGetUniformSubroutineu(int shadertype, int location, IntBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glGetUniformSubroutineu");
    }

    /**
     * @deprecated
     */
    @Deprecated
    public static int glGetUniformSubroutineu(int shadertype, int location) {
        return glGetUniformSubroutineui(shadertype, location);
    }

    public static int glGetUniformSubroutineui(int shadertype, int location) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glGetUniformSubroutineui");
    }

    public static void glGetProgramStage(int program, int shadertype, int pname, IntBuffer values) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glGetProgramStage");
    }

    /**
     * @deprecated
     */
    @Deprecated
    public static int glGetProgramStage(int program, int shadertype, int pname) {
        return glGetProgramStagei(program, shadertype, pname);
    }

    public static int glGetProgramStagei(int program, int shadertype, int pname) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glGetProgramStagei");
    }

    public static void glPatchParameteri(int pname, int value) {
        com.genir.renderer.bridge.commands.GL40.glPatchParameteri(pname, value);
    }

    public static void glPatchParameter(int pname, FloatBuffer values) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glPatchParameter");
    }

    public static void glBindTransformFeedback(int target, int id) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glBindTransformFeedback");
    }

    public static void glDeleteTransformFeedbacks(IntBuffer ids) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glDeleteTransformFeedbacks");
    }

    public static void glDeleteTransformFeedbacks(int id) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glDeleteTransformFeedbacks");
    }

    public static void glGenTransformFeedbacks(IntBuffer ids) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glGenTransformFeedbacks");
    }

    public static int glGenTransformFeedbacks() {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glGenTransformFeedbacks");
    }

    public static boolean glIsTransformFeedback(int id) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glIsTransformFeedback");
    }

    public static void glPauseTransformFeedback() {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glPauseTransformFeedback");
    }

    public static void glResumeTransformFeedback() {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glResumeTransformFeedback");
    }

    public static void glDrawTransformFeedback(int mode, int id) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glDrawTransformFeedback");
    }

    public static void glDrawTransformFeedbackStream(int mode, int id, int stream) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glDrawTransformFeedbackStream");
    }

    public static void glBeginQueryIndexed(int target, int index, int id) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glBeginQueryIndexed");
    }

    public static void glEndQueryIndexed(int target, int index) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glEndQueryIndexed");
    }

    public static void glGetQueryIndexed(int target, int index, int pname, IntBuffer params) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glGetQueryIndexed");
    }

    /**
     * @deprecated
     */
    @Deprecated
    public static int glGetQueryIndexed(int target, int index, int pname) {
        return glGetQueryIndexedi(target, index, pname);
    }

    public static int glGetQueryIndexedi(int target, int index, int pname) {
        throw new UnsupportedOperationException("UnsupportedOperationException: GL40.glGetQueryIndexedi");
    }
}
