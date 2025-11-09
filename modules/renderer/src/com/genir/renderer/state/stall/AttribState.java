package com.genir.renderer.state.stall;

import org.lwjgl.opengl.GL11;
import org.lwjgl.opengl.GL13;

public class AttribState {
    // GL_TEXTURE_BIT
    int textureID = 0;
    int activeTexture = GL13.GL_TEXTURE0;

    // GL_TRANSFORM_BIT
    int matrixMode = GL11.GL_MODELVIEW;

    // GL_LINE_BIT
    float lineWidth = 1;

    // GL_CLIENT_VERTEX_ARRAY_BIT
    int arrayBufferBinding = 0;

    public void overwriteWith(AttribState source, int attribMask) {
        if ((attribMask & GL11.GL_TEXTURE_BIT) != 0) {
            overwriteTextureBit(source);
        }

        if ((attribMask & GL11.GL_TRANSFORM_BIT) != 0) {
            overwriteTransformBit(source);
        }

        if ((attribMask & GL11.GL_LINE_BIT) != 0) {
            overwriteLineBit(source);
        }

        if ((attribMask & GL11.GL_CLIENT_VERTEX_ARRAY_BIT) != 0) {
            overwriteClientVertexArrayBit(source);
        }
    }

    private void overwriteTextureBit(AttribState source) {
        textureID = source.textureID;
        activeTexture = source.activeTexture;
    }

    private void overwriteTransformBit(AttribState source) {
        matrixMode = source.matrixMode;
    }

    private void overwriteLineBit(AttribState source) {
        lineWidth = source.lineWidth;
    }

    private void overwriteClientVertexArrayBit(AttribState source) {
        arrayBufferBinding = source.arrayBufferBinding;
    }

    public record Snapshot(AttribState state, int attribMask) {
    }
}
