package com.genir.renderer.bridge.context.stall;

import org.lwjgl.opengl.GL11;
import org.lwjgl.opengl.GL13;

public class ClientAttribState {
    // GL11.GL_CLIENT_VERTEX_ARRAY_BIT
    public int activeTexture = GL13.GL_TEXTURE0;

    public int arrayBuffer = 0;
    public int elementArrayBuffer = 0;

    // GL11.GL_CLIENT_PIXEL_STORE_BIT
    public int pixelUnpackAlignment = 4;

    public void overwriteWith(ClientAttribState source, int attribMask) {
        if ((attribMask & GL11.GL_CLIENT_VERTEX_ARRAY_BIT) != 0) {
            activeTexture = source.activeTexture;
            arrayBuffer = source.arrayBuffer;
            elementArrayBuffer = source.elementArrayBuffer;
        }

        if ((attribMask & GL11.GL_CLIENT_PIXEL_STORE_BIT) != 0) {
            pixelUnpackAlignment = source.pixelUnpackAlignment;
        }
    }
}