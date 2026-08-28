package com.genir.renderer.bridge.servercmds;

import com.genir.renderer.bridge.context.Context;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;

import static com.genir.renderer.bridge.context.ContextManager.getThreadContext;

public class GL11 {
    public static void glMatrixMode(Context context, int mode) {
        record glMatrixMode(int mode) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glMatrixMode(mode);
            }
        }

        context.exec.executeNow(new glMatrixMode(mode));
    }

    public static void glBindTexture(Context context, int target, int texture) {
        record glBindTexture(int target, int texture) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glBindTexture(target, texture);
            }
        }

        context.exec.executeNow(new glBindTexture(target, texture));
    }

    public static void glEnable(Context context, int cap) {
        record glEnable(int cap) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glEnable(cap);
            }
        }

        context.exec.executeNow(new glEnable(cap));
    }

    public static void glDisable(Context context, int cap) {
        record glDisable(int cap) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glDisable(cap);
            }
        }

        context.exec.executeNow(new glDisable(cap));
    }

    public static void glFlush(Context context) {
        record glFlush() implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glFlush();
            }
        }

        context.exec.executeNow(new glFlush());
    }

    public static void glLoadIdentity(Context context) {
        record glLoadIdentity() implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glLoadIdentity();
            }
        }

        context.exec.executeNow(new glLoadIdentity());
    }

    public static void glMultMatrix(Context context, FloatBuffer m) {
        record glMultMatrix(FloatBuffer m) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glMultMatrix(m);
            }
        }

        context.exec.executeNow(new glMultMatrix(m));
    }

    public static void glPushMatrix(Context context) {
        record glPushMatrix() implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glPushMatrix();
            }
        }

        context.exec.executeNow(new glPushMatrix());
    }

    public static void glPopMatrix(Context context) {
        record glPopMatrix() implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glPopMatrix();
            }
        }

        context.exec.executeNow(new glPopMatrix());
    }

    public static void glTranslatef(Context context, float x, float y, float z) {
        record glTranslatef(float x, float y, float z) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glTranslatef(x, y, z);
            }
        }

        context.exec.executeNow(new glTranslatef(x, y, z));
    }

    public static void glRotatef(Context context, float angle, float x, float y, float z) {
        record glRotatef(float angle, float x, float y, float z) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glRotatef(angle, x, y, z);
            }
        }

        context.exec.executeNow(new glRotatef(angle, x, y, z));
    }

    public static void glScalef(Context context, float x, float y, float z) {
        record glScalef(float x, float y, float z) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glScalef(x, y, z);
            }
        }

        context.exec.executeNow(new glScalef(x, y, z));
    }

    public static void glLoadMatrix(Context context, FloatBuffer m) {
        record glLoadMatrix(FloatBuffer m) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glLoadMatrix(m);
            }
        }

        context.exec.executeNow(new glLoadMatrix(m));
    }

    public static void glOrtho(Context context, double left, double right, double bottom, double top, double zNear, double zFar) {
        record glOrtho(double left, double right, double bottom, double top, double zNear, double zFar) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glOrtho(left, right, bottom, top, zNear, zFar);
            }
        }

        context.exec.executeNow(new glOrtho(left, right, bottom, top, zNear, zFar));
    }

    public static void glDrawArrays(Context context, int mode, int first, int count) {
        record glDrawArrays(int mode, int first, int count) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glDrawArrays(mode, first, count);
            }
        }

        context.exec.executeNow(new glDrawArrays(mode, first, count));
    }

    public static void glEnableClientState(Context context, int cap) {
        record glEnableClientState(int cap) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glEnableClientState(cap);
            }
        }

        context.exec.executeNow(new glEnableClientState(cap));
    }

    public static void glDisableClientState(Context context, int cap) {
        record glDisableClientState(int cap) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glDisableClientState(cap);
            }
        }

        context.exec.executeNow(new glDisableClientState(cap));
    }

    public static void glVertexPointer(Context context, int size, int type, int stride, ByteBuffer pointer) {
        record glVertexPointer(int size, int type, int stride, ByteBuffer pointer) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glVertexPointer(size, type, stride, pointer);
            }
        }

        context.exec.executeNow(new glVertexPointer(size, type, stride, pointer));
    }

    public static void glTexCoordPointer(Context context, int size, int type, int stride, ByteBuffer pointer) {
        record glTexCoordPointer(int size, int type, int stride, ByteBuffer pointer) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glTexCoordPointer(size, type, stride, pointer);
            }
        }

        context.exec.executeNow(new glTexCoordPointer(size, type, stride, pointer));
    }

    public static void glColorPointer(Context context, int size, int type, int stride, ByteBuffer pointer) {
        record glColorPointer(int size, int type, int stride, ByteBuffer pointer) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glColorPointer(size, type, stride, pointer);
            }
        }

        context.exec.executeNow(new glColorPointer(size, type, stride, pointer));
    }

    public static void glColor4f(Context context, float red, float green, float blue, float alpha) {
        record glColor4f(float red, float green, float blue, float alpha) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glColor4f(red, green, blue, alpha);
            }
        }

        context.exec.executeNow(new glColor4f(red, green, blue, alpha));
    }

    public static void glVertexPointer(Context context, int size, int stride, FloatBuffer pointer) {
        record glVertexPointer(int size, int stride, FloatBuffer pointer) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glVertexPointer(size, stride, pointer);
            }
        }

        context.exec.executeNow(new glVertexPointer(size, stride, pointer));
    }

    public static void glColorPointer(Context context, int size, int stride, FloatBuffer pointer) {
        record glColorPointer(int size, int stride, FloatBuffer pointer) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glColorPointer(size, stride, pointer);
            }
        }

        context.exec.executeNow(new glColorPointer(size, stride, pointer));
    }

    public static void glTexCoordPointer(Context context, int size, int stride, FloatBuffer pointer) {
        record glTexCoordPointer(int size, int stride, FloatBuffer pointer) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glTexCoordPointer(size, stride, pointer);
            }
        }

        context.exec.executeNow(new glTexCoordPointer(size, stride, pointer));
    }

    public static void glNormalPointer(Context context, int stride, FloatBuffer pointer) {
        record glNormalPointer(int stride, FloatBuffer pointer) implements Runnable {
            @Override
            public void run() {
                org.lwjgl.opengl.GL11.glNormalPointer(stride, pointer);
            }
        }

        context.exec.executeNow(new glNormalPointer(stride, pointer));
    }
}
