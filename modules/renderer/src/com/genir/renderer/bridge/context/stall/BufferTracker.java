package com.genir.renderer.bridge.context.stall;

import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.ContextManager;
import com.genir.renderer.bridge.context.executor.Executor;
import com.genir.renderer.bridge.interfaces.GLCommand;
import com.genir.renderer.debug.Debug;
import org.lwjgl.opengl.*;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public class BufferTracker {
    private final Executor exec;

    private final Set<Integer> buffers = ConcurrentHashMap.newKeySet();
    private final Set<Integer> framebuffers = ConcurrentHashMap.newKeySet();
    private final Set<Integer> renderbuffers = ConcurrentHashMap.newKeySet();

    private int boundFramebuffer = 0;
    private int boundVertexArray = 0;
    private int boundUniformBuffer = 0;
    private int boundShaderStorageBuffer = 0;
    private final Map<Integer, Integer> boundUniformBufferIndexed = new HashMap<>();
    private final Map<Integer, Integer> boundShaderStorageBufferIndexed = new HashMap<>();

    public BufferTracker(Executor exec) {
        this.exec = exec;
    }

    //
    // GL CALLS
    //

    public void glBindBuffer(int target, int buffer) {
        if (!glBindBufferCheck(target, buffer)) {
            return;
        }

        switch (target) {
            case GL31.GL_UNIFORM_BUFFER:
                boundUniformBuffer = buffer;
                break;

            case GL43.GL_SHADER_STORAGE_BUFFER:
                boundShaderStorageBuffer = buffer;
                break;
        }

        if (buffer != 0) {
            buffers.add(buffer);
        }
    }

    public void glBindBufferBase(int target, int index, int buffer) {
        if (!glBindBufferCheck(target, buffer)) {
            return;
        }

        switch (target) {
            case GL31.GL_UNIFORM_BUFFER:
                boundUniformBuffer = buffer;
                boundUniformBufferIndexed.put(index, buffer);
                break;

            case GL43.GL_SHADER_STORAGE_BUFFER:
                boundShaderStorageBuffer = buffer;
                boundShaderStorageBufferIndexed.put(index, buffer);
                break;
        }

        if (buffer != 0) {
            buffers.add(buffer);
        }
    }

    private boolean glBindBufferCheck(int target, int buffer) {
        // Out of bounds.
        if (buffer < 0) {
            return false;
        }

        switch (target) {
            case GL15.GL_ARRAY_BUFFER:
            case GL15.GL_ELEMENT_ARRAY_BUFFER:
            case GL21.GL_PIXEL_PACK_BUFFER:
            case GL21.GL_PIXEL_UNPACK_BUFFER:
            case GL30.GL_TRANSFORM_FEEDBACK_BUFFER:
            case GL31.GL_COPY_READ_BUFFER:
            case GL31.GL_COPY_WRITE_BUFFER:
            case GL31.GL_TEXTURE_BUFFER:
            case GL31.GL_UNIFORM_BUFFER:
            case GL40.GL_DRAW_INDIRECT_BUFFER:
            case GL42.GL_ATOMIC_COUNTER_BUFFER:
            case GL43.GL_DISPATCH_INDIRECT_BUFFER:
            case GL43.GL_SHADER_STORAGE_BUFFER:
            case GL44.GL_QUERY_BUFFER:
                break;

            // Unknown buffer type.
            default:
                return false;
        }

        return true;
    }

    public void glBindVertexArray(int array) {
        boundVertexArray = array;
    }

    public void glBindFramebuffer(int target, int framebuffer) {
        // Out of bounds.
        if (framebuffer < 0) {
            return;
        }

        switch (target) {
            case GL30.GL_DRAW_FRAMEBUFFER:
            case GL30.GL_READ_FRAMEBUFFER:
            case GL30.GL_FRAMEBUFFER:
                break;

            // Unknown framebuffer type.
            default:
                return;
        }

        boundFramebuffer = framebuffer;

        // Unbinding a buffer.
        if (framebuffer == 0) {
            return;
        }

        framebuffers.add(framebuffer);
    }

    public void glBindRenderbuffer(int target, int renderbuffer) {
        // Unknown framebuffer type.
        if (target != GL30.GL_RENDERBUFFER) {
            return;
        }

        // Out of bounds.
        if (renderbuffer < 0) {
            return;
        }

        // Unbinding a buffer.
        if (renderbuffer == 0) {
            return;
        }

        renderbuffers.add(renderbuffer);
    }

    public void glFramebufferRenderbuffer(int target, int attachment, int renderbuffertarget, int renderbuffer) {
        // TODO validate target and attachment
        glBindRenderbuffer(renderbuffertarget, renderbuffer);
    }

    public void glDeleteBuffers(int buffer) {
        buffers.remove(buffer);
    }

    public void glDeleteFramebuffers(int framebuffer) {
        framebuffers.remove(framebuffer);
    }

    public void glDeleteRenderbuffers(int renderbuffer) {
        renderbuffers.remove(renderbuffer);
    }

    public boolean glIsBuffer(int buffer) {
        record BufferTracker$assertIsBuffer(int buffer, boolean expected) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int argsOffset) {
                // Assert the simulated value reflects the OpenGL state.
                boolean actual = org.lwjgl.opengl.GL15.glIsBuffer(buffer);
                Debug.asertEqual(expected, actual, this);
            }
        }

        boolean result = buffers.contains(buffer);
        final Context context = ContextManager.getThreadContext();
        context.exec.execute(new BufferTracker$assertIsBuffer(buffer, result));
        return result;
    }

    public boolean glIsFramebuffer(int framebuffer) {
        record BufferTracker$assertIsFramebuffer(int framebuffer, boolean expected) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int argsOffset) {
                // Assert the simulated value reflects the OpenGL state.
                boolean actual = org.lwjgl.opengl.GL30.glIsFramebuffer(framebuffer);
                Debug.asertEqual(expected, actual, this);
            }
        }

        boolean result = framebuffers.contains(framebuffer);
        final Context context = ContextManager.getThreadContext();
        context.exec.execute(new BufferTracker$assertIsFramebuffer(framebuffer, result));
        return result;
    }

    public boolean glIsRenderbuffer(int renderbuffer) {
        record BufferTracker$assertIsRenderbuffer(int renderbuffer, boolean expected) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int argsOffset) {
                // Assert the simulated value reflects the OpenGL state.
                boolean actual = org.lwjgl.opengl.GL30.glIsRenderbuffer(renderbuffer);
                Debug.asertEqual(expected, actual, this);
            }
        }

        boolean result = renderbuffers.contains(renderbuffer);
        final Context context = ContextManager.getThreadContext();
        context.exec.execute(new BufferTracker$assertIsRenderbuffer(renderbuffer, result));
        return result;
    }

    //
    // Getters.
    //

    public int getBoundFramebuffer() {
        int result = boundFramebuffer;
        assertBoundBuffer(result, GL30.GL_FRAMEBUFFER_BINDING);
        return result;
    }

    public int getBoundVertexArray() {
        int result = boundVertexArray;
        assertBoundBuffer(result, GL30.GL_VERTEX_ARRAY_BINDING);
        return result;
    }

    public int getBoundUniformBuffer() {
        int result = boundUniformBuffer;
        assertBoundBuffer(result, GL31.GL_UNIFORM_BUFFER_BINDING);
        return result;
    }

    public int getBoundUniformBuffer(int index) {
        int result = boundUniformBufferIndexed.getOrDefault(index, 0);
        assertBoundBuffer(result, GL31.GL_UNIFORM_BUFFER_BINDING, index);
        return result;
    }

    public int getBoundShaderStorageBuffer() {
        int result = boundShaderStorageBuffer;
        assertBoundBuffer(result, GL43.GL_SHADER_STORAGE_BUFFER_BINDING);
        return result;
    }

    public int getBoundShaderStorageBuffer(int index) {
        int result = boundShaderStorageBufferIndexed.getOrDefault(index, 0);;
        assertBoundBuffer(result, GL43.GL_SHADER_STORAGE_BUFFER_BINDING, index);
        return result;
    }

    private void assertBoundBuffer(int expected, int pname) {
        record BufferTracker$assertBoundBuffer(int expected, int pname) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int argsOffset) {
                int actual = org.lwjgl.opengl.GL11.glGetInteger(pname);
                Debug.asertEqual(expected, actual, this);
            }
        }

        exec.execute(new BufferTracker$assertBoundBuffer(expected, pname));
    }

    private void assertBoundBuffer(int expected, int index, int pname) {
        record BufferTracker$assertBoundBuffer(int expected, int index, int pname) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int argsOffset) {
                int actual = org.lwjgl.opengl.GL30.glGetInteger(pname, index);
                Debug.asertEqual(expected, actual, this);
            }
        }

        exec.execute(new BufferTracker$assertBoundBuffer(expected, index, pname));
    }
}
