package com.genir.renderer.bridge.context;

import org.lwjgl.opengl.GL11;

public class ClientAttribState {

    boolean enableVertexArray = false;
    boolean enableTexCoordArray = false;
    boolean enableColorArray = false;

    ArrayPointer vertexPointer = null;
    ArrayPointer texCoordPointer = null;
    ArrayPointer colorPointer = null;

    public void overwriteWith(ClientAttribState source, int attribMask) {
        if ((attribMask & GL11.GL_CLIENT_VERTEX_ARRAY_BIT) != 0) {
            enableVertexArray = source.enableVertexArray;
            enableTexCoordArray = source.enableTexCoordArray;
            enableColorArray = source.enableColorArray;

            vertexPointer = source.vertexPointer;
            texCoordPointer = source.texCoordPointer;
            colorPointer = source.colorPointer;
        }
    }
}