package com.genir.renderer.bridge;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static com.genir.renderer.Debug.asert;

public class ListManager {
    private int mode = 0;
    private int listID;
    private List<GlCommand> newList;

    private final Map<Integer, List<GlCommand>> lists = new HashMap<>();

    public boolean isRecording() {
        return mode != 0;
    }

    public void glNewList(int list, int mode) {
        asert(!isRecording());
        asert(mode == org.lwjgl.opengl.GL11.GL_COMPILE || mode == org.lwjgl.opengl.GL11.GL_COMPILE_AND_EXECUTE);

        this.listID = list;
        this.mode = mode;

        newList = new ArrayList<>();
    }

    public void glEndList() {
        lists.put(listID, newList);

        boolean execute = mode == org.lwjgl.opengl.GL11.GL_COMPILE_AND_EXECUTE;

        mode = 0;
        newList = null;

        if (execute) {
            glCallList(listID);
        }
    }

    public void glCallList(int list) {
        asert(!isRecording());

        List<GlCommand> listToCall = lists.get(list);
        if (listToCall != null) {
            for (GlCommand command : listToCall) {
                command.call();
            }
        }
    }

    public void recordGlEnable(int cap) {
        newList.add(new GlEnable(cap));
    }

    public void recordGlDisable(int cap) {
        newList.add(new GlDisable(cap));
    }

    public void recordGlBegin(int mode) {
        newList.add(new GlBegin(mode));
    }

    public void recordGlEnd() {
        newList.add(new GlEnd());
    }

    public void recordGlBindTexture(int target, int texture) {
        newList.add(new GlBindTexture(target, texture));
    }

    public void recordGlBlendFunc(int sfactor, int dfactor) {
        newList.add(new GlBlendFunc(sfactor, dfactor));
    }

    public void recordGlMatrixMode(int mode) {
        newList.add(new GlMatrixMode(mode));
    }

    public void recordGlPushMatrix() {
        newList.add(new GlPushMatrix());
    }

    public void recordGlPopMatrix() {
        newList.add(new GlPopMatrix());
    }

    public void recordGlTranslatef(float x, float y, float z) {
        newList.add(new GlTranslatef(x, y, z));
    }

    public void recordGlScalef(float x, float y, float z) {
        newList.add(new GlScalef(x, y, z));
    }

    public void recordGlRotatef(float angle, float x, float y, float z) {
        newList.add(new GlRotatef(angle, x, y, z));
    }

    public void recordGlVertex2f(float x, float y) {
        newList.add(new GlVertex2f(x, y));
    }

    public void recordGlTexCoord2f(float s, float t) {
        newList.add(new GlTexCoord2f(s, t));
    }

    public void recordGlColor4ub(byte red, byte green, byte blue, byte alpha) {
        newList.add(new GlColor4ub(red, green, blue, alpha));
    }

    public void glStencilFunc(int func, int ref, int mask) {
        newList.add(new GlStencilFunc(func, ref, mask));
    }

    public void glStencilOp(int fail, int zfail, int zpass) {
        newList.add(new GlStencilOp(fail, zfail, zpass));
    }

    public void glColorMask(boolean red, boolean green, boolean blue, boolean alpha) {
        newList.add(new GlColorMask(red, green, blue, alpha));
    }

    public void glAlphaFunc(int func, float ref) {
        newList.add(new GlAlphaFunc(func, ref));
    }

    private interface GlCommand {
        void call();
    }

    private record GlEnable(int cap) implements GlCommand {
        @Override
        public void call() {
            GL11.glEnable(cap);
        }
    }

    private record GlDisable(int cap) implements GlCommand {
        @Override
        public void call() {
            GL11.glDisable(cap);
        }
    }

    private record GlBegin(int mode) implements GlCommand {
        @Override
        public void call() {
            GL11.glBegin(mode);
        }
    }

    private record GlEnd() implements GlCommand {
        @Override
        public void call() {
            GL11.glEnd();
        }
    }

    private record GlBindTexture(int target, int texture) implements GlCommand {
        @Override
        public void call() {
            GL11.glBindTexture(target, texture);
        }
    }

    private record GlBlendFunc(int sfactor, int dfactor) implements GlCommand {
        @Override
        public void call() {
            GL11.glBlendFunc(sfactor, dfactor);
        }
    }

    private record GlMatrixMode(int mode) implements GlCommand {
        @Override
        public void call() {
            GL11.glMatrixMode(mode);
        }
    }

    private record GlPushMatrix() implements GlCommand {
        @Override
        public void call() {
            GL11.glPushMatrix();
        }
    }

    private record GlPopMatrix() implements GlCommand {
        @Override
        public void call() {
            GL11.glPopMatrix();
        }
    }

    private record GlTranslatef(float x, float y, float z) implements GlCommand {
        @Override
        public void call() {
            GL11.glTranslatef(x, y, z);
        }
    }

    private record GlScalef(float x, float y, float z) implements GlCommand {
        @Override
        public void call() {
            GL11.glScalef(x, y, z);
        }
    }

    private record GlRotatef(float angle, float x, float y, float z) implements GlCommand {
        @Override
        public void call() {
            GL11.glRotatef(angle, x, y, z);
        }
    }

    private record GlVertex2f(float x, float y) implements GlCommand {
        @Override
        public void call() {
            GL11.glVertex2f(x, y);
        }
    }

    private record GlTexCoord2f(float s, float t) implements GlCommand {
        @Override
        public void call() {
            GL11.glTexCoord2f(s, t);
        }
    }

    private record GlColor4ub(byte red, byte green, byte blue, byte alpha) implements GlCommand {
        @Override
        public void call() {
            GL11.glColor4ub(red, green, blue, alpha);
        }
    }

    private record GlStencilFunc(int func, int ref, int mask) implements GlCommand {
        @Override
        public void call() {
            GL11.glStencilFunc(func, ref, mask);
        }
    }

    private record GlStencilOp(int fail, int zfail, int zpass) implements GlCommand {
        @Override
        public void call() {
            GL11.glStencilOp(fail, zfail, zpass);
        }
    }

    private record GlColorMask(boolean red, boolean green, boolean blue, boolean alpha) implements GlCommand {
        @Override
        public void call() {
            GL11.glColorMask(red, green, blue, alpha);
        }
    }

    private record GlAlphaFunc(int func, float ref) implements GlCommand {
        @Override
        public void call() {
            GL11.glAlphaFunc(func, ref);
        }
    }
}
