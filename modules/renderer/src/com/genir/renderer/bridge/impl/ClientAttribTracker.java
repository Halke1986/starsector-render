package com.genir.renderer.bridge.impl;

import org.lwjgl.opengl.GL11;

import java.nio.Buffer;
import java.util.Stack;

import static com.genir.renderer.Debug.asert;

public class ClientAttribTracker {
    public final Snapshot expected = new Snapshot();

    private final Stack<Snapshot> expectedStack = new Stack<>();

    public boolean getEnableVertexArray() {
        return expected.enableVertexArray;
    }

    public boolean getEnableTexCoordArray() {
        return expected.enableTexCoordArray;
    }

    public boolean getEnableColorArray() {
        return expected.enableColorArray;
    }

    public ArrayPointer getVertexPointer() {
        return expected.vertexPointer;
    }

    public ArrayPointer getTexCoordPointer() {
        return expected.texCoordPointer;
    }

    public ArrayPointer getColorPointer() {
        return expected.colorPointer;
    }

    public void glEnableClientState(int cap) {
        asert(cap == org.lwjgl.opengl.GL11.GL_VERTEX_ARRAY ||
                cap == org.lwjgl.opengl.GL11.GL_TEXTURE_COORD_ARRAY ||
                cap == org.lwjgl.opengl.GL11.GL_COLOR_ARRAY);

        setState(cap, true);
    }

    public void glDisableClientState(int cap) {
        asert(cap == org.lwjgl.opengl.GL11.GL_VERTEX_ARRAY ||
                cap == org.lwjgl.opengl.GL11.GL_TEXTURE_COORD_ARRAY ||
                cap == org.lwjgl.opengl.GL11.GL_COLOR_ARRAY);

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
        // GL_STACK_UNDERFLOW
        if (expectedStack.isEmpty()) {
            return;
        }

        Snapshot savedExpected = expectedStack.pop();
        savedExpected.save(expected);
    }

    public void glColorPointer(int size, int type, int stride, Buffer pointer) {
        asert(stride == 0);
        asert(pointer.position() == 0);

        expected.colorPointer = new ArrayPointer(size, type, stride, pointer);
    }

    public void glTexCoordPointer(int size, int type, int stride, Buffer pointer) {
        asert(size == 2);
        asert(stride == 0);
        asert(pointer.position() == 0);

        expected.texCoordPointer = new ArrayPointer(size, type, stride, pointer);
    }

    public void glVertexPointer(int size, int type, int stride, Buffer pointer) {
        asert(stride == 0);
        asert(pointer.position() == 0);

        expected.vertexPointer = new ArrayPointer(size, type, stride, pointer);
    }

    public void glColorPointer(int size, int type, int stride, Long pointer) {
        expected.colorPointer = new ArrayPointer(size, type, stride, null);
    }

    public void glTexCoordPointer(int size, int type, int stride, Long pointer) {
        expected.texCoordPointer = new ArrayPointer(size, type, stride, null);
    }

    public void glVertexPointer(int size, int type, int stride, Long pointer) {
        expected.vertexPointer = new ArrayPointer(size, type, stride, null);
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

        ArrayPointer vertexPointer = null;
        ArrayPointer texCoordPointer = null;
        ArrayPointer colorPointer = null;

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

