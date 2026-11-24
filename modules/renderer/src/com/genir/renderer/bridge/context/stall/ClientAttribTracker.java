package com.genir.renderer.bridge.context.stall;

import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.Executor;
import com.genir.renderer.bridge.interfaces.GLCommand;
import com.genir.renderer.debug.Assert;
import org.lwjgl.opengl.GL11;
import org.lwjgl.opengl.GL15;

import java.util.Stack;

public class ClientAttribTracker {
    private final Executor exec;

    public final ClientAttribState state = new ClientAttribState();
    private final Stack<Snapshot> stateStack = new Stack<>();

    public ClientAttribTracker(Executor exec) {
        this.exec = exec;
    }

    //
    // Getters.
    //

    public int glGetInteger(int pname) {
        record ClientAttribTracker$assertGetInteger(int pname, int expected) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int argsOffset) {
                int actual = org.lwjgl.opengl.GL11.glGetInteger(pname);
                Assert.glValue(expected, actual, this);
            }
        }

        int result = switch (pname) {
            case org.lwjgl.opengl.GL11.GL_UNPACK_ALIGNMENT -> state.pixelUnpackAlignment;
            case org.lwjgl.opengl.GL15.GL_ARRAY_BUFFER_BINDING -> state.arrayBuffer;
            case org.lwjgl.opengl.GL15.GL_ELEMENT_ARRAY_BUFFER_BINDING -> state.elementArrayBuffer;

            default -> throw new UnsupportedOperationException("unsupported pname: " + pname);
        };

        exec.execute(new ClientAttribTracker$assertGetInteger(pname, result));
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

    public void glBindBuffer(int target, int buffer) {
        switch (target) {
            case GL15.GL_ARRAY_BUFFER:
                state.arrayBuffer = buffer;
                break;
            case GL15.GL_ELEMENT_ARRAY_BUFFER:
                state.elementArrayBuffer = buffer;
                break;
        }
    }

    public void glClientActiveTexture(int texture) {
        state.activeTexture = texture;
    }

    public void glPixelStorei(int pname, int param) {
        switch (pname) {
            case GL11.GL_UNPACK_ALIGNMENT:
                state.pixelUnpackAlignment = param;
                break;
        }
    }

    private record Snapshot(ClientAttribState state, int attribMask) {
    }
}

