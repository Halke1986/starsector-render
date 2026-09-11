package com.genir.renderer.bridge.context.stall;

import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.Executor;
import com.genir.renderer.bridge.interfaces.GLCommand;
import org.lwjgl.BufferUtils;
import org.lwjgl.opengl.*;

import java.nio.IntBuffer;
import java.util.Stack;

import static com.genir.renderer.debug.Debug.asertEqual;

/**
 * Tracks the state of OpenGL attributes as they would appear to the client
 * if operations were executed eagerly. Instead, operations are deferred
 * to a separate thread and performed lazily.
 * <p>
 * The rendering thread must ensure that when the client issues an OpenGL
 * call that depends on the current state, the thread’s state is synchronized
 * with what the client observes through AttribTracker.
 */
public class AttribTracker {
    private final Executor exec;

    private final AttribState state = new AttribState();
    private final Stack<AttribState.Snapshot> stateStack = new Stack<>();

    // Values not being a part of attributes stack.
    private int framebufferBinding = 0;
    private int vertexArrayBinding = 0;
    private int currentProgram = 0;

    public AttribTracker(Executor exec) {
        this.exec = exec;
    }

    public boolean getEnableStencilTest() {
        // No assertion required. Client and
        // server state are allowed to diverge.
        return state.enableStencilTest;
    }

    public boolean getEnableAlphaTest() {
        // No assertion required. Client and
        // server state are allowed to diverge.
        return state.enableAlphaTest;
    }

    public boolean getEnableTexture2D() {
        // No assertion required. Client and
        // server state are allowed to diverge.
        return state.getEnableTexture2D();
    }

    public boolean getEnableBlend() {
        // No assertion required. Client and
        // server state are allowed to diverge.
        return state.enableBlend;
    }

    public boolean getEnableLighting() {
        // No assertion required. Client and
        // server state are allowed to diverge.
        return state.enableLighting;
    }

    public boolean getEnableScissorTest() {
        // No assertion required. Client and
        // server state are allowed to diverge.
        return state.enableScissorTest;
    }

    public int getMatrixMode() {
        // No assertion required. Client and
        // server state are allowed to diverge.
        return state.matrixMode;
    }

    public int getTextureBinding(int target) {
        record getTextureBinding2D(int target, int expected) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int argsOffset) {
                int pname = switch (target) {
                    case GL11.GL_TEXTURE_2D -> GL11.GL_TEXTURE_BINDING_2D;
                    case GL11.GL_TEXTURE_1D -> GL11.GL_TEXTURE_BINDING_1D;
                    case GL12.GL_TEXTURE_3D -> GL12.GL_TEXTURE_BINDING_3D;
                    case GL13.GL_TEXTURE_CUBE_MAP -> GL13.GL_TEXTURE_BINDING_CUBE_MAP;
                    case GL30.GL_TEXTURE_1D_ARRAY -> GL30.GL_TEXTURE_BINDING_1D_ARRAY;
                    case GL30.GL_TEXTURE_2D_ARRAY -> GL30.GL_TEXTURE_BINDING_2D_ARRAY;
                    case GL31.GL_TEXTURE_RECTANGLE -> GL31.GL_TEXTURE_BINDING_RECTANGLE;
                    case GL31.GL_TEXTURE_BUFFER -> GL31.GL_TEXTURE_BINDING_BUFFER;
                    case GL32.GL_TEXTURE_2D_MULTISAMPLE -> GL32.GL_TEXTURE_BINDING_2D_MULTISAMPLE;
                    case GL32.GL_TEXTURE_2D_MULTISAMPLE_ARRAY -> GL32.GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY;
                    case GL40.GL_TEXTURE_CUBE_MAP_ARRAY -> GL40.GL_TEXTURE_BINDING_CUBE_MAP_ARRAY;
                    default -> 0;
                };

                int actual = org.lwjgl.opengl.GL11.glGetInteger(pname);
                asertEqual(expected, actual, this);
            }
        }

        int result = state.getBoundTexture(target);
        exec.execute(new getTextureBinding2D(target, result));
        return result;
    }

    public int getActiveTexture() {
        record getActiveTexture(int expected) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int argsOffset) {
                int actual = org.lwjgl.opengl.GL11.glGetInteger(GL13.GL_ACTIVE_TEXTURE);
                asertEqual(expected, actual, this);
            }
        }

        int result = state.activeTexture;
        exec.execute(new getActiveTexture(result));
        return result;
    }

    public float getLineWidth() {
        record getLineWidth(float expected) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int argsOffset) {
                float actual = org.lwjgl.opengl.GL11.glGetInteger(GL11.GL_LINE_WIDTH);
                asertEqual(expected, actual, this);
            }
        }

        float result = state.lineWidth;
        exec.execute(new getLineWidth(result));
        return result;
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

    public int getFramebufferBinding() {
        record getFramebufferBinding(int expected) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int argsOffset) {
                int actual = org.lwjgl.opengl.GL11.glGetInteger(GL30.GL_FRAMEBUFFER_BINDING);
                asertEqual(expected, actual, this);
            }
        }

        int result = framebufferBinding;
        exec.execute(new getFramebufferBinding(result));
        return result;
    }

    public int getVertexArrayBinding() {
        record getVertexArrayBinding(int expected) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int argsOffset) {
                int actual = org.lwjgl.opengl.GL11.glGetInteger(GL30.GL_VERTEX_ARRAY_BINDING);
                asertEqual(expected, actual, this);
            }
        }

        int result = vertexArrayBinding;
        exec.execute(new getVertexArrayBinding(result));
        return result;
    }

    public AttribState.Viewport getViewport() {
        record getViewport(AttribState.Viewport expected) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int argsOffset) {
                IntBuffer actual = BufferUtils.createIntBuffer(16);
                org.lwjgl.opengl.GL11.glGetInteger(GL11.GL_VIEWPORT, actual);

                asertEqual(expected.x(), actual.get(), this);
                asertEqual(expected.y(), actual.get(), this);
                asertEqual(expected.width(), actual.get(), this);
                asertEqual(expected.height(), actual.get(), this);
            }
        }

        AttribState.Viewport result = state.viewport;
        exec.execute(new getViewport(result));
        return result;
    }

    public int getCurrentProgram() {
        record getCurrentProgram(int expected) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int argsOffset) {
                int actual = org.lwjgl.opengl.GL11.glGetInteger(GL20.GL_CURRENT_PROGRAM);
                asertEqual(expected, actual, this);
            }
        }

        int result = currentProgram;
        exec.execute(new getCurrentProgram(result));
        return result;
    }

    //
    // GL calls.
    //

    public void glPushAttrib(int mask) {
        // Save expected state.
        AttribState stateSnapshot = new AttribState();
        stateSnapshot.overwriteWith(state, mask);
        stateStack.push(new AttribState.Snapshot(stateSnapshot, mask));
    }

    public void glPopAttrib() {
        // GL_STACK_UNDERFLOW
        if (stateStack.isEmpty()) {
            return;
        }

        AttribState.Snapshot snapshot = stateStack.pop();
        state.overwriteWith(snapshot.state(), snapshot.attribMask());
    }

    public void glEnable(int cap) {
        state.glEnable(cap);
    }

    public void glDisable(int cap) {
        state.glDisable(cap);
    }

    public void glBindTexture(int target, int texture) {
        state.glBindTexture(target, texture);
    }

    public void glDeleteTextures(int texture) {
        state.glDeleteTextures(texture);
    }

    public void glActiveTexture(int mode) {
        state.glActiveTexture(mode);
    }

    public void glMatrixMode(int mode) {
        state.glMatrixMode(mode);
    }

    public void glLineWidth(float width) {
        state.glLineWidth(width);
    }

    public void glBindBuffer(int target, int buffer) {
        state.glBindBuffer(target, buffer);
    }

    public void glBindFramebuffer(int target, int framebuffer) {
        framebufferBinding = framebuffer;
    }

    public void glBindVertexArray(int array) {
        vertexArrayBinding = array;
    }

    public void glViewport(int x, int y, int width, int height) {
        state.glViewport(x, y, width, height);
    }

    public void glUseProgram(int program) {
        currentProgram = program;
    }
}
