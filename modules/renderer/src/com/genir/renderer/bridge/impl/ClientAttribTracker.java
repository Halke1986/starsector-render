package com.genir.renderer.bridge.impl;

import org.lwjgl.opengl.GL11;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.util.Stack;

public class ClientAttribTracker {
    public final Snapshot expected = new Snapshot();

    private final Stack<Snapshot> expectedStack = new Stack<>();

    public boolean enableTexCoordArray() {
        return expected.enableTexCoordArray;
    }

    public boolean enableColorArray() {
        return expected.enableColorArray;
    }

    public FloatBuffer vertexPointer() {
        return expected.vertexPointer;
    }

    public FloatBuffer texCoordPointer() {
        return expected.texCoordPointer;
    }

    public ByteBuffer colorPointer() {
        return expected.colorPointer;
    }

    public void glEnableClientState(int cap) {
        setState(cap, true);
    }

    public void glDisableClientState(int cap) {
        setState(cap, false);
    }

    public void glPushClientAttrib(int mask) {
        expected.attribMask = mask;

        // Save expected state.
        Snapshot savedExpected = new Snapshot();
        expected.save(savedExpected);
        expectedStack.push(savedExpected);
    }

    public void glPopClientAttrib() {
        Snapshot savedCurrent = expectedStack.pop();

        if (savedCurrent != null) {
            savedCurrent.save(expected);
        }
    }

    public void glColorPointer(int size, boolean unsigned, int stride, ByteBuffer pointer) {
        expected.colorPointer = pointer;
    }

    public void glTexCoordPointer(int size, int stride, FloatBuffer pointer) {
        expected.texCoordPointer = pointer;
    }

    public void glVertexPointer(int size, int stride, FloatBuffer pointer) {
        expected.vertexPointer = pointer;
    }

    private void setState(int cap, boolean value) {
        switch (cap) {
            case GL11.GL_VERTEX_ARRAY:
                expected.enableVertexArray = value;
                break;
            case GL11.GL_TEXTURE_COORD_ARRAY:
                expected.enableTexCoordArray = value;
                break;
            case GL11.GL_COLOR_ARRAY:
                expected.enableColorArray = value;
                break;
        }
    }

    public static class Snapshot {
        int attribMask = 0;

        boolean enableVertexArray = false;
        boolean enableTexCoordArray = false;
        boolean enableColorArray = false;

        FloatBuffer vertexPointer = null;
        FloatBuffer texCoordPointer = null;
        ByteBuffer colorPointer = null;

        void save(Snapshot other) {
            other.attribMask = attribMask;

            if ((attribMask & GL11.GL_CLIENT_VERTEX_ARRAY_BIT) != 0) {
                other.enableVertexArray = enableVertexArray;
                other.enableTexCoordArray = enableTexCoordArray;
                other.enableColorArray = enableColorArray;

                other.vertexPointer = vertexPointer;
                other.texCoordPointer = texCoordPointer;
                other.colorPointer = colorPointer;
            }
        }
    }
}

