package com.genir.renderer.state.stall;

import org.lwjgl.opengl.GL11;
import org.lwjgl.opengl.GL13;
import org.lwjgl.opengl.GL15;

public class AttribState {
    // GL_TEXTURE_BIT
    private int textureID = 0;
    private int activeTexture = GL13.GL_TEXTURE0;

    // GL_TRANSFORM_BIT
    private int matrixMode = GL11.GL_MODELVIEW;

    // GL_LINE_BIT
    private float lineWidth = 1;

    // GL_CLIENT_VERTEX_ARRAY_BIT
    private int arrayBufferBinding = 0;

    //
    // Getters
    //

    public int getTextureBindingID() {
        return textureID;
    }

    public int getActiveTexture() {
        return activeTexture;
    }

    public int getMatrixMode() {
        return matrixMode;
    }

    public float getLineWidth() {
        return lineWidth;
    }

    public int getArrayBufferBinding() {
        return arrayBufferBinding;
    }

    //
    // Setters
    //

    public void glBindTexture(int target, int texture) {
        textureID = texture;
    }

    public void glActiveTexture(int mode) {
        activeTexture = mode;
    }

    public void glMatrixMode(int mode) {
        matrixMode = mode;
    }

    public void glLineWidth(float width) {
        lineWidth = width;
    }

    public void glBindBuffer(int target, int buffer) {
        if (target == GL15.GL_ARRAY_BUFFER) {
            arrayBufferBinding = buffer;
        }
    }

    //
    // Overwrite
    //

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
