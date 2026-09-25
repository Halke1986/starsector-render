package com.genir.renderer.bridge.context.stall;

import com.genir.renderer.bridge.context.*;
import com.genir.renderer.bridge.interfaces.GLCommand;
import com.genir.renderer.bridge.interfaces.Releasable;
import org.lwjgl.opengl.GL11;
import org.lwjgl.opengl.GL15;

import java.nio.Buffer;
import java.util.Stack;

import static com.genir.renderer.debug.Debug.asert;
import static com.genir.renderer.debug.Debug.asertEqual;

public class ClientAttribTracker {
    private final Executor exec;
    private final BufferPool bufferPool;

    public final ClientAttribState state = new ClientAttribState();
    private final Stack<Snapshot> stateStack = new Stack<>();

    public ClientAttribTracker(BufferPool bufferPool, Executor exec) {
        this.bufferPool = bufferPool;
        this.exec = exec;
    }

    //
    // Getters.
    //

    public ArrayPointersSnapshot makeArrayPointersSnapshot() {
        return new ArrayPointersSnapshot(
                state.enableVertexArray ? state.vertexPointer.getSnapshot(bufferPool) : null,
                state.enableTexCoordArray ? state.texCoordPointer.getSnapshot(bufferPool) : null,
                state.enableColorArray ? state.colorPointer.getSnapshot(bufferPool) : null);
    }

    public int getArrayBufferBinding() {
        record getArrayBufferBinding(int expected) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int argsOffset) {
                int actual = org.lwjgl.opengl.GL11.glGetInteger(GL15.GL_ARRAY_BUFFER_BINDING);
                asertEqual(expected, actual, this);
            }
        }

        int result = state.arrayBufferBinding;
        exec.execute(new getArrayBufferBinding(result));
        return result;
    }

    //
    // GL calls.
    //

    public void glPushClientAttrib(int mask) {
        // Save expected state.
        ClientAttribState stateSnapshot = new ClientAttribState();
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
        asert(cap == GL11.GL_VERTEX_ARRAY ||
                cap == GL11.GL_TEXTURE_COORD_ARRAY ||
                cap == GL11.GL_COLOR_ARRAY);

        setState(cap, true);
    }

    public void glDisableClientState(int cap) {
        asert(cap == GL11.GL_VERTEX_ARRAY ||
                cap == GL11.GL_TEXTURE_COORD_ARRAY ||
                cap == GL11.GL_COLOR_ARRAY);

        setState(cap, false);
    }

    public void glColorPointer(int size, int type, int stride, Buffer pointer) {
        asert(stride == 0);
        asert(pointer.position() == 0);

        state.colorPointer = new ArrayPointer(size, type, stride, pointer);
    }

    public void glTexCoordPointer(int size, int type, int stride, Buffer pointer) {
        asert(size == 2);
        asert(stride == 0);
        asert(pointer.position() == 0);

        state.texCoordPointer = new ArrayPointer(size, type, stride, pointer);
    }

    public void glVertexPointer(int size, int type, int stride, Buffer pointer) {
        asert(stride == 0);
        asert(pointer.position() == 0);

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

    public void glBindBuffer(int target, int buffer) {
        if (target == GL15.GL_ARRAY_BUFFER) {
            state.arrayBufferBinding = buffer;
        }
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

    public record Snapshot(ClientAttribState state, int attribMask) {
    }
}

