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

    void overwriteWith(AttribState source) {
        attribMask = source.attribMask;

        if ((attribMask & GL11.GL_TEXTURE_BIT) != 0) {
            textureID = source.textureID;
            activeTexture = source.activeTexture;
        }

        if ((attribMask & GL11.GL_TRANSFORM_BIT) != 0) {
            matrixMode = source.matrixMode;
        }

        if ((attribMask & GL11.GL_LINE_BIT) != 0) {
            lineWidth = source.lineWidth;
        }

        if ((attribMask & GL11.GL_CLIENT_VERTEX_ARRAY_BIT) != 0) {
            arrayBufferBinding = source.arrayBufferBinding;
        }
    }
}
