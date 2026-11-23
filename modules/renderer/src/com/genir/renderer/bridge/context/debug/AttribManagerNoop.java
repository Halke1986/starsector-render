package com.genir.renderer.bridge.context.debug;

import com.genir.renderer.bridge.context.AttribManager;

public class AttribManagerNoop extends AttribManager {
    @Override
    public int getMatrixMode() {
        return org.lwjgl.opengl.GL11.glGetInteger(org.lwjgl.opengl.GL11.GL_MATRIX_MODE);
    }

    @Override
    public void applyDrawAttribs() {
    }

    //
    // GL calls.
    //

    @Override
    public void glEnable(int cap) {
        org.lwjgl.opengl.GL11.glEnable(cap);
    }

    @Override
    public void glDisable(int cap) {
        org.lwjgl.opengl.GL11.glDisable(cap);
    }

    @Override
    public void glPushAttrib(int mask) {
        org.lwjgl.opengl.GL11.glPushAttrib(mask);
    }

    @Override
    public void glPopAttrib() {
        org.lwjgl.opengl.GL11.glPopAttrib();
    }

    @Override
    public void glActiveTexture(int mode) {
        org.lwjgl.opengl.GL13.glActiveTexture(mode);
    }

    @Override
    public void glMatrixMode(int mode) {
        org.lwjgl.opengl.GL11.glMatrixMode(mode);
    }

    @Override
    public void glBlendFunc(int sfactorRGB, int dfactorRGB) {
        org.lwjgl.opengl.GL11.glBlendFunc(sfactorRGB, dfactorRGB);
    }

    @Override
    public void glBlendFuncSeparate(int sfactorRGB, int dfactorRGB, int sfactorAlpha, int dfactorAlpha) {
        org.lwjgl.opengl.GL14.glBlendFuncSeparate(sfactorRGB, dfactorRGB, sfactorAlpha, dfactorAlpha);
    }

    @Override
    public void glBlendFuncSeparatei(int buf, int srcRGB, int dstRGB, int srcAlpha, int dstAlpha) {
        org.lwjgl.opengl.GL40.glBlendFuncSeparatei(buf, srcRGB, dstRGB, srcAlpha, dstAlpha);
    }

    @Override
    public void glBlendEquation(int mode) {
        org.lwjgl.opengl.GL14.glBlendEquation(mode);
    }

    @Override
    public void glBlendEquationSeparate(int modeRGB, int modeAlpha) {
        org.lwjgl.opengl.GL20.glBlendEquationSeparate(modeRGB, modeAlpha);
    }

    @Override
    public void glBlendEquationSeparatei(int buf, int modeRGB, int modeAlpha) {
        org.lwjgl.opengl.GL40.glBlendEquationSeparatei(buf, modeRGB, modeAlpha);
    }
}
