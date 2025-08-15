package com.genir.renderer.bridge.impl.stall;

import org.lwjgl.opengl.GL11;
import org.lwjgl.opengl.GL13;

import java.util.Stack;

public class AttribTracker {
    private final Snapshot expected = new Snapshot();

    private final Stack<Snapshot> expectedStack = new Stack<>();

    public int textureBinding() {
        return expected.textureID;
    }

    public int activeTexture() {
        return expected.activeTexture;
    }

    public void clear() {
        Snapshot cleanContext = new Snapshot();
        cleanContext.attribMask = -1;

        cleanContext.save(expected);

        expectedStack.clear();
    }

    public void glPushAttrib(int mask) {
        expected.attribMask = mask;

        // Save expected state.
        Snapshot savedExpected = new Snapshot();
        expected.save(savedExpected);
        expectedStack.push(savedExpected);
    }

    public void glPopAttrib() {
        Snapshot savedCurrent = expectedStack.pop();

        if (savedCurrent != null) {
            savedCurrent.save(expected);
        }
    }

    public void glBindTexture(int target, int texture) {
        expected.textureID = texture;
    }

    public void glActiveTexture(int mode) {
        expected.activeTexture = mode;
    }

    public static class Snapshot {
        int attribMask = 0;

        int textureID = 0;
        int activeTexture = GL13.GL_TEXTURE0;

        void save(Snapshot other) {
            other.attribMask = attribMask;

            if ((attribMask & GL11.GL_TEXTURE_BIT) != 0) {
                other.textureID = textureID;
                other.activeTexture = activeTexture;
            }
        }
    }
}
