package com.genir.renderer.bridge.context;

import com.genir.renderer.bridge.interfaces.Releasable;
import com.genir.renderer.debug.Assert;
import org.lwjgl.opengl.GL11;

import java.nio.Buffer;
import java.util.Stack;

public class ClientArrayManager {
    private final Executor exec;

    public final ClientArrayAttribState state = new ClientArrayAttribState();
    private final Stack<Snapshot> stateStack = new Stack<>();

    public ClientArrayManager(Executor exec) {
        this.exec = exec;
    }

    //
    // Getters.
    //

    public ArrayPointersSnapshot makeArrayPointersSnapshot() {
        return new ArrayPointersSnapshot(
                state.enableVertexArray ? state.vertexPointer.getSnapshot() : null,
                state.enableTexCoordArray ? state.texCoordPointer.getSnapshot() : null,
                state.enableColorArray ? state.colorPointer.getSnapshot() : null);
    }

    public void assertArrayPointersCapacity(int first, int count) {
        int required = first + count;

        if (first < 0) {
            throw new AssertionError("Invalid draw range: first=" + first);
        }

        if (state.enableVertexArray) {
            int capacity = state.vertexPointer.getCapacity();
            if (capacity != -1 && capacity < required) {
                throw new AssertionError("Insufficient vertex array size: " + capacity + "<" + required);
            }
        }

        if (state.enableTexCoordArray) {
            int capacity = state.texCoordPointer.getCapacity();
            if (capacity != -1 && capacity < required) {
                throw new AssertionError("Insufficient texture array size: " + capacity + "<" + required);
            }
        }

        if (state.enableColorArray) {
            int capacity = state.colorPointer.getCapacity();
            if (capacity != -1 && capacity < required) {
                throw new AssertionError("Insufficient color array size: " + capacity + "<" + required);
            }
        }
    }

    //
    // GL calls.
    //

    public void glPushClientAttrib(int mask) {
        // Save expected state.
        ClientArrayAttribState stateSnapshot = new ClientArrayAttribState();
        stateSnapshot.overwriteWith(state, mask);
        stateStack.push(new Snapshot(stateSnapshot, mask));
    }

    public void glPopClientAttrib() {
        // GL_STACK_UNDERFLOW
        if (stateStack.isEmpty()) {
            return;
        }

        Snapshot snapshot = stateStack.pop();
        state.overwriteWith(snapshot.state(), snapshot.attribMask());
    }

    public void glEnableClientState(int cap) {
        Assert.supported(cap, cap == GL11.GL_VERTEX_ARRAY ||
                cap == GL11.GL_TEXTURE_COORD_ARRAY ||
                cap == GL11.GL_COLOR_ARRAY, "glEnableClientState$cap");

        setState(cap, true);
    }

    public void glDisableClientState(int cap) {
        Assert.supported(cap, cap == GL11.GL_VERTEX_ARRAY ||
                cap == GL11.GL_TEXTURE_COORD_ARRAY ||
                cap == GL11.GL_COLOR_ARRAY, "glDisableClientState$cap");

        setState(cap, false);
    }

    public void glColorPointer(int size, int type, int stride, Buffer pointer) {
        Assert.supported(stride, 0, "glColorPointer$stride");
        Assert.supported(pointer.position(), 0, "glColorPointer$position");

        state.colorPointer = new ArrayPointer(size, type, stride, pointer);
    }

    public void glTexCoordPointer(int size, int type, int stride, Buffer pointer) {
        Assert.supported(stride, 0, "glTexCoordPointer$stride");
        Assert.supported(pointer.position(), 0, "glTexCoordPointer$position");

        state.texCoordPointer = new ArrayPointer(size, type, stride, pointer);
    }

    public void glVertexPointer(int size, int type, int stride, Buffer pointer) {
        Assert.supported(stride, 0, "glVertexPointer$stride");
        Assert.supported(pointer.position(), 0, "glVertexPointer$position");

        state.vertexPointer = new ArrayPointer(size, type, stride, pointer);
    }

    public void glColorPointer(int size, int type, int stride, Long pointer) {
        state.colorPointer = new ArrayPointer(size, type, stride, null);
    }

    public void glTexCoordPointer(int size, int type, int stride, Long pointer) {
        state.texCoordPointer = new ArrayPointer(size, type, stride, null);
    }

    public void glVertexPointer(int size, int type, int stride, Long pointer) {
        state.vertexPointer = new ArrayPointer(size, type, stride, null);
    }

    private void setState(int cap, boolean value) {
        switch (cap) {
            case GL11.GL_VERTEX_ARRAY:
                state.enableVertexArray = value;
                break;
            case GL11.GL_TEXTURE_COORD_ARRAY:
                state.enableTexCoordArray = value;
                break;
            case GL11.GL_COLOR_ARRAY:
                state.enableColorArray = value;
                break;
        }
    }

    public record ArrayPointersSnapshot(ArraySnapshot vertex, ArraySnapshot texCoord, ArraySnapshot color) implements Releasable {
        @Override
        public void release() {
            if (vertex != null) vertex.release();
            if (texCoord != null) texCoord.release();
            if (color != null) color.release();
        }
    }

    private record Snapshot(ClientArrayAttribState state, int attribMask) {
    }
}

