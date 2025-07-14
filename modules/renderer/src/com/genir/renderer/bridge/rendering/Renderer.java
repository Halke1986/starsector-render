package com.genir.renderer.bridge.rendering;

import org.lwjgl.BufferUtils;
import org.lwjgl.opengl.GL11;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;

public class Renderer {
    private final ByteBuffer colors = BufferUtils.createByteBuffer(16);
    private final FloatBuffer texCoords = BufferUtils.createFloatBuffer(8);
    private final FloatBuffer vertices = BufferUtils.createFloatBuffer(8);

    private String layer = "";

    public void beginLayer(String layer) {
        this.layer = layer;

        // Vertices are already transformed into model frame.
        GL11.glMatrixMode(GL11.GL_MODELVIEW);
        GL11.glPushMatrix();
        GL11.glLoadIdentity();

        GL11.glEnableClientState(GL11.GL_VERTEX_ARRAY);
        GL11.glEnableClientState(GL11.GL_COLOR_ARRAY);
        GL11.glEnableClientState(GL11.GL_TEXTURE_COORD_ARRAY);

        GL11.glColorPointer(4, GL11.GL_UNSIGNED_BYTE, 0, colors);
        GL11.glTexCoordPointer(2, 0, texCoords);
        GL11.glVertexPointer(2, 0, vertices);
    }

    public void commitLayer() {
        // Cleanup.
        GL11.glDisableClientState(GL11.GL_COLOR_ARRAY);
        GL11.glDisableClientState(GL11.GL_TEXTURE_COORD_ARRAY);
        GL11.glDisableClientState(GL11.GL_VERTEX_ARRAY);

        GL11.glPopMatrix();
    }

    public void drawPrimitives(byte[] colors, float[] texCoords, float[] vertices, int numVertices) {
        this.colors.clear();
        this.texCoords.clear();
        this.vertices.clear();

        this.colors.put(colors, 0, numVertices * 4);
        this.texCoords.put(texCoords, 0, numVertices * 2);
        this.vertices.put(vertices, 0, numVertices * 2);

        this.colors.flip();
        this.texCoords.flip();
        this.vertices.flip();

        GL11.glDrawArrays(GL11.GL_QUADS, 0, numVertices);
    }
}
