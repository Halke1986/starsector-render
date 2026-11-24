package com.genir.renderer.bridge.context;

import org.lwjgl.opengl.GL15;
import org.lwjgl.opengl.OpenGLException;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;

public class ClientArray {
    public static void glVertexPointer(int size, int type, int stride, ByteBuffer pointer) {
        try {
            org.lwjgl.opengl.GL11.glVertexPointer(size, type, stride, pointer);
        } catch (OpenGLException e) {
            handleBufferException(e, () -> org.lwjgl.opengl.GL11.glVertexPointer(size, type, stride, pointer));
        }
    }

    public static void glVertexPointer(int size, int stride, FloatBuffer pointer) {
        try {
            org.lwjgl.opengl.GL11.glVertexPointer(size, stride, pointer);
        } catch (OpenGLException e) {
            handleBufferException(e, () -> org.lwjgl.opengl.GL11.glVertexPointer(size, stride, pointer));
        }
    }

    public static void glColorPointer(int size, int type, int stride, ByteBuffer pointer) {
        try {
            org.lwjgl.opengl.GL11.glColorPointer(size, type, stride, pointer);
        } catch (OpenGLException e) {
            handleBufferException(e, () -> org.lwjgl.opengl.GL11.glColorPointer(size, type, stride, pointer));
        }
    }

    public static void glColorPointer(int size, int stride, FloatBuffer pointer) {
        try {
            org.lwjgl.opengl.GL11.glColorPointer(size, stride, pointer);
        } catch (OpenGLException e) {
            handleBufferException(e, () -> org.lwjgl.opengl.GL11.glColorPointer(size, stride, pointer));
        }
    }

    public static void glTexCoordPointer(int size, int type, int stride, ByteBuffer pointer) {
        try {
            org.lwjgl.opengl.GL11.glTexCoordPointer(size, type, stride, pointer);
        } catch (OpenGLException e) {
            handleBufferException(e, () -> org.lwjgl.opengl.GL11.glTexCoordPointer(size, type, stride, pointer));
        }
    }

    public static void glTexCoordPointer(int size, int stride, FloatBuffer pointer) {
        try {
            org.lwjgl.opengl.GL11.glTexCoordPointer(size, stride, pointer);
        } catch (OpenGLException e) {
            handleBufferException(e, () -> org.lwjgl.opengl.GL11.glTexCoordPointer(size, stride, pointer));
        }
    }

    public static void glNormalPointer(int type, int stride, ByteBuffer pointer) {
        try {
            org.lwjgl.opengl.GL11.glNormalPointer(type, stride, pointer);
        } catch (OpenGLException e) {
            handleBufferException(e, () -> org.lwjgl.opengl.GL11.glNormalPointer(type, stride, pointer));
        }
    }

    public static void glNormalPointer(int stride, FloatBuffer pointer) {
        try {
            org.lwjgl.opengl.GL11.glNormalPointer(stride, pointer);
        } catch (OpenGLException e) {
            handleBufferException(e, () -> org.lwjgl.opengl.GL11.glNormalPointer(stride, pointer));
        }
    }

    private static void handleBufferException(OpenGLException e, Runnable command) {
        // CMUtils may leave an array buffer bound during game initialization.
        // Unbind it and retry vertex pointer setup.
        // This rarely occurs, so handle it through exception handling rather
        // than tracking OpenGL state, keeping the code simpler.
        int bufferBinding = org.lwjgl.opengl.GL11.glGetInteger(GL15.GL_ARRAY_BUFFER_BINDING);
        if (bufferBinding == 0) {
            // Unknown exception.
            throw e;
        }

        org.lwjgl.opengl.GL15.glBindBuffer(GL15.GL_ARRAY_BUFFER, 0);
        command.run();
        org.lwjgl.opengl.GL15.glBindBuffer(GL15.GL_ARRAY_BUFFER, bufferBinding);
    }
}
