package com.genir.renderer.state.stall;

import org.lwjgl.BufferUtils;
import org.lwjgl.opengl.GL30;

import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Map;

import static com.genir.renderer.bridge.GL15.glBufferSubData;

/**
 * BufferManager avoids the stalls of GL30.glMapBufferRange by
 * emulating its behavior with GL15.glBufferSubData.
 */
public class BufferManager {
    private final Map<Integer, Binding> bufferBinding = new HashMap<>();

    public void glBindBuffer(int target, int buffer) {
        // Unbind the buffer.
        if (buffer == 0) {
            bufferBinding.remove(target);
            return;
        }

        Binding binding = new Binding();
        binding.bufferID = buffer;

        bufferBinding.put(target, binding);
    }

    public ByteBuffer glMapBufferRange(int target, long offset, long length, int access, ByteBuffer old_buffer) {
        int handledAccess = GL30.GL_MAP_WRITE_BIT | GL30.GL_MAP_UNSYNCHRONIZED_BIT | GL30.GL_MAP_INVALIDATE_RANGE_BIT;
        if ((access & ~handledAccess) != 0) {
            // Unhandled access type. Delegate binding to OpenGL.
            return null;
        }

        Binding binding = bufferBinding.get(target);
        if (binding == null) {
            // No buffer bound to target. Let OpenGL handle the incorrect call.
            return null;
        }

        if (binding.range != null) {
            // Do not attempt to re-map the buffer if a mapping already exists.
            throw new RuntimeException("buffer already bound");
        }

        binding.range = BufferUtils.createByteBuffer((int) length);
        binding.offset = offset;

        return binding.range;
    }

    public boolean glUnmapBuffer(int target) {
        Binding binding = bufferBinding.get(target);
        if (binding == null) {
            // No buffer bound to target. Let OpenGL handle the incorrect call.
            return false;
        }

        if (binding.range == null) {
            // No buffer mapping defined. Let OpenGL handle the incorrect call.
            return false;
        }

        // Write the mapped range to the buffer.
        glBufferSubData(target, binding.offset, binding.range);
        binding.range = null;
        binding.offset = 0;

        return true;
    }

    private static class Binding {
        int bufferID;

        ByteBuffer range = null;
        long offset = 0;
    }
}
