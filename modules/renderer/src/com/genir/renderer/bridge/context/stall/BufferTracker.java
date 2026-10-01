package com.genir.renderer.bridge.context.stall;

import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.ContextManager;
import com.genir.renderer.bridge.interfaces.GLCommand;
import org.lwjgl.opengl.*;

import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

import static com.genir.renderer.debug.Debug.asertEqual;

public class BufferTracker {
    private final Set<Integer> buffers = ConcurrentHashMap.newKeySet();
    private final Set<Integer> framebuffers = ConcurrentHashMap.newKeySet();

    //
    // GL CALLS
    //

    public void glBindBuffer(int target, int buffer) {
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
                return;
        }

        // Out of bounds.
        if (buffer < 0) {
            return;
        }

        // Unbinding a buffer.
        if (buffer == 0) {
            return;
        }

        buffers.add(buffer);
    }

    public void glBindFramebuffer(int target, int framebuffer) {
        switch (target) {
            case GL30.GL_DRAW_FRAMEBUFFER:
            case GL30.GL_READ_FRAMEBUFFER:
            case GL30.GL_FRAMEBUFFER:
                break;

            // Unknown framebuffer type.
            default:
                return;
        }

        // Out of bounds.
        if (framebuffer < 0) {
            return;
        }

        // Unbinding a buffer.
        if (framebuffer == 0) {
            return;
        }

        framebuffers.add(framebuffer);
    }

    public void glDeleteBuffers(int buffer) {
        buffers.remove(buffer);
    }

    public void glDeleteFramebuffers(int framebuffer) {
        framebuffers.remove(framebuffer);
    }

    public boolean glIsBuffer(int buffer) {
        record glIsBuffer(int buffer, boolean expected) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int argsOffset) {
                // Assert the simulated value reflects the OpenGL state.
                boolean actual = org.lwjgl.opengl.GL15.glIsBuffer(buffer);
                asertEqual(expected, actual, this);
            }
        }

        boolean result = buffers.contains(buffer);
        final Context context = ContextManager.getThreadContext();
        context.exec.execute(new glIsBuffer(buffer, result));
        return result;
    }

    public boolean glIsFramebuffer(int framebuffer) {
        record glIsFramebuffer(int framebuffer, boolean expected) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int argsOffset) {
                // Assert the simulated value reflects the OpenGL state.
                boolean actual = org.lwjgl.opengl.GL30.glIsFramebuffer(framebuffer);
                asertEqual(expected, actual, this);
            }
        }

        boolean result = framebuffers.contains(framebuffer);
        final Context context = ContextManager.getThreadContext();
        context.exec.execute(new glIsFramebuffer(framebuffer, result));
        return result;
    }

//    GL30.glIsRenderbuffer(id)
}
