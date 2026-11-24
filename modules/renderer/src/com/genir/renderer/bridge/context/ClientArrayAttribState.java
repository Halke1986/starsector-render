package com.genir.renderer.bridge.context;

import org.lwjgl.opengl.GL11;

public class ClientArrayAttribState {
    // GL11.GL_CLIENT_VERTEX_ARRAY_BIT
    public boolean enableVertexArray = false;
    public boolean enableTexCoordArray = false;
    public boolean enableColorArray = false;

    public ArrayPointer vertexPointer = null;
    public ArrayPointer texCoordPointer = null;
    public ArrayPointer colorPointer = null;

    public void overwriteWith(ClientArrayAttribState source, int attribMask) {
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