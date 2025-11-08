package com.genir.renderer.state.stall;

import org.lwjgl.opengl.GL11;
import org.lwjgl.opengl.GL13;

public class AttribState {
    int attribMask = 0;

    int textureID = 0;
    int activeTexture = GL13.GL_TEXTURE0;
    int matrixMode = GL11.GL_MODELVIEW;
    int arrayBufferBinding = 0;
    float lineWidth = 1;

    void save(AttribState other) {
        other.attribMask = attribMask;

        if ((attribMask & GL11.GL_TEXTURE_BIT) != 0) {
            other.textureID = textureID;
            other.activeTexture = activeTexture;
        }

        if ((attribMask & GL11.GL_TRANSFORM_BIT) != 0) {
            other.matrixMode = matrixMode;
        }

        if ((attribMask & GL11.GL_LINE_BIT) != 0) {
            other.lineWidth = lineWidth;
        }

        if ((attribMask & GL11.GL_CLIENT_VERTEX_ARRAY_BIT) != 0) {
            other.arrayBufferBinding = arrayBufferBinding;
        }
    }
}
