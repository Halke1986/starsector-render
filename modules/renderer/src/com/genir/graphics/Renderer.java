package com.genir.graphics;

import org.apache.log4j.Logger;
import org.lwjgl.BufferUtils;
import org.lwjgl.opengl.GL11;

import java.nio.FloatBuffer;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class Renderer {
    static Map<SpriteIndex, List<Sprite>> buffer = new HashMap<>();

    public static void beginLayer() {
        buffer = new HashMap<>();
    }

    public static void commitLayer() {
//        GL11.glMatrixMode(GL11.GL_MODELVIEW);
//        GL11.glLoadIdentity();
//        GL11.glDisable(GL11.GL_DEPTH_TEST);

// setup once per frame (or once at init if window size doesn’t change)
        GL11.glViewport(0, 0, 1920, 1200);

        GL11.glMatrixMode(GL11.GL_PROJECTION);
        GL11.glLoadIdentity();
        GL11.glMatrixMode(GL11.GL_MODELVIEW);
        GL11.glLoadIdentity();

        GL11.glEnableClientState(GL11.GL_VERTEX_ARRAY);
        GL11.glEnableClientState(GL11.GL_TEXTURE_COORD_ARRAY);
        GL11.glEnable(GL11.GL_TEXTURE_2D);
        GL11.glEnable(GL11.GL_BLEND);

        for (Map.Entry<SpriteIndex, List<Sprite>> entry : buffer.entrySet()) {
            SpriteIndex key = entry.getKey();
            List<Sprite> sprites = entry.getValue();

            GL11.glBindTexture(GL11.GL_TEXTURE_2D, key.textureID);
            GL11.glColor4f(1, 1, 1, 1);

            FloatBuffer vertexBuffer = BufferUtils.createFloatBuffer(sprites.size() * 4 * 2);
            FloatBuffer textureBuffer = BufferUtils.createFloatBuffer(sprites.size() * 4 * 2);

            for (Sprite s : sprites) {
                // a 0.5×0.5 quad in NDC
                vertexBuffer.put(-0.5f).put(-0.5f);
                vertexBuffer.put(-0.5f).put(0.5f);
                vertexBuffer.put(0.5f).put(0.5f);
                vertexBuffer.put(0.5f).put(-0.5f);

                // full‐texture UVs
                //            tb.put(0).put(0);
                //            tb.put(0).put(1);
                //            tb.put(1).put(1);
                //            tb.put(1).put(0);

                textureBuffer
                        .put(s.texX)
                        .put(s.texY);

                textureBuffer
                        .put(s.texX)
                        .put(s.texY + s.texHeight);

                textureBuffer
                        .put(s.texX + s.texWidth)
                        .put(s.texY + s.texHeight);

                textureBuffer
                        .put(s.texX + s.texWidth)
                        .put(s.texY);
            }

            //for (Sprite s : sprites) {
            //                float px = s.width / 2;
            //                float py = s.height / 2;
            //
            //                float a = s.angle * (float) (Math.PI / 180);
            //                float cos = (float) Math.cos(a);
            //                float sin = (float) Math.sin(a);
            //
            //                {
            //                    float vx = 0f - px;
            //                    float vy = 0f - py;
            //
            //                    vertexBuffer
            //                            .put(cos * vx - sin * vy + px + s.offsetX)
            //                            .put(sin * vx + cos * vy + py + s.offsetY);
            //
            //                    textureBuffer
            //                            .put(s.texX)
            //                            .put(s.texY);
            //                }
            //
            //                {
            //                    float vx = 0f - px;
            //                    float vy = s.height - py;
            //
            //                    vertexBuffer
            //                            .put(cos * vx - sin * vy + px + s.offsetX)
            //                            .put(sin * vx + cos * vy + py + s.offsetY);
            //
            //                    textureBuffer
            //                            .put(s.texX)
            //                            .put(s.texY + s.texHeight);
            //                }
            //
            //                {
            //                    float vx = s.width - px;
            //                    float vy = s.height - py;
            //
            //                    vertexBuffer
            //                            .put(cos * vx - sin * vy + px + s.offsetX)
            //                            .put(sin * vx + cos * vy + py + s.offsetY);
            //
            //                    textureBuffer
            //                            .put(s.texX + s.texWidth)
            //                            .put(s.texY + s.texHeight);
            //                }
            //
            //                {
            //                    float vx = s.width - px;
            //                    float vy = 0f - py;
            //
            //                    vertexBuffer
            //                            .put(cos * vx - sin * vy + px + s.offsetX)
            //                            .put(sin * vx + cos * vy + py + s.offsetY);
            //
            //                    textureBuffer
            //                            .put(s.texX + s.texWidth)
            //                            .put(s.texY);
            //                }
            //            }

            vertexBuffer.flip();
            textureBuffer.flip();

            GL11.glVertexPointer(2, 0, vertexBuffer);
            GL11.glTexCoordPointer(2, 0, textureBuffer);
            GL11.glDrawArrays(GL11.GL_QUADS, 0, sprites.size() * 4);
        }

        GL11.glDisable(GL11.GL_BLEND);
        GL11.glDisable(GL11.GL_TEXTURE_2D);
        GL11.glDisableClientState(GL11.GL_TEXTURE_COORD_ARRAY);
        GL11.glDisableClientState(GL11.GL_VERTEX_ARRAY);
    }

    public static void render(float x, float y, int ö00000, int ô00000, com.fs.graphics.Sprite sprite) {
        SpriteIndex idx = new SpriteIndex(
                ô00000,
                sprite.blendSrc,
                sprite.blendDest
        );

        Sprite quad = new Sprite();
        quad.r = (byte) sprite.color.getRed();
        quad.g = (byte) sprite.color.getGreen();
        quad.b = (byte) sprite.color.getBlue();
        quad.a = (byte) sprite.color.getAlpha();
        quad.alphaMult = sprite.alphaMult;
        quad.offsetX = sprite.offsetX + x;
        quad.offsetY = sprite.offsetY + y;
        quad.centerX = sprite.centerX;
        quad.centerY = sprite.centerY;
        quad.width = sprite.width;
        quad.height = sprite.height;
        quad.angle = sprite.angle;
        quad.texX = sprite.texX;
        quad.texY = sprite.texY;
        quad.texWidth = sprite.texWidth;
        quad.texHeight = sprite.texHeight;

        List<Sprite> quads = buffer.computeIfAbsent(idx, k -> new LinkedList<>());

        quads.add(quad);

//        GL11.glBindTexture(GL11.GL_TEXTURE_2D, ô00000);
//
//        GL11.glPushMatrix();
//
//        GL11.glColor4ub(
//                (byte) sprite.color.getRed(),
//                (byte) sprite.color.getGreen(),
//                (byte) sprite.color.getBlue(),
//                (byte) ((int) ((float) sprite.color.getAlpha() * sprite.alphaMult))
//        );
//
//        GL11.glTranslatef(x + (float) sprite.offsetX, y + (float) sprite.offsetY, 0.0F);
//
//        if (sprite.centerX != -1.0F && sprite.centerY != -1.0F) {
//            GL11.glTranslatef(sprite.width / 2.0F, sprite.height / 2.0F, 0.0F);
//            GL11.glRotatef(sprite.angle, 0.0F, 0.0F, 1.0F);
//            GL11.glTranslatef(-sprite.centerX, -sprite.centerY, 0.0F);
//        } else {
//            GL11.glTranslatef(sprite.width / 2.0F, sprite.height / 2.0F, 0.0F);
//            GL11.glRotatef(sprite.angle, 0.0F, 0.0F, 1.0F);
//            GL11.glTranslatef(-sprite.width / 2.0F, -sprite.height / 2.0F, 0.0F);
//        }
//
//
//        GL11.glEnable(GL11.GL_TEXTURE_2D);
//        GL11.glEnable(GL11.GL_BLEND);
//        GL11.glBlendFunc(sprite.blendSrc, sprite.blendDest);
//
//        GL11.glBegin(GL11.GL_QUADS);
//
//        GL11.glTexCoord2f(sprite.texX, sprite.texY);
//        GL11.glVertex2f(0.0F, 0.0F);
//
//        GL11.glTexCoord2f(sprite.texX, sprite.texY + sprite.texHeight);
//        GL11.glVertex2f(0.0F, sprite.height);
//
//        GL11.glTexCoord2f(sprite.texX + sprite.texWidth, sprite.texY + sprite.texHeight);
//        GL11.glVertex2f(sprite.width, sprite.height);
//
//        GL11.glTexCoord2f(sprite.texX + sprite.texWidth, sprite.texY);
//        GL11.glVertex2f(sprite.width, 0.0F);
//
//        GL11.glEnd();
//        GL11.glDisable(GL11.GL_BLEND);
//        GL11.glPopMatrix();
    }

    private static Logger logger() {
        return Logger.getLogger(com.genir.graphics.Renderer.class);
    }

    record SpriteIndex(
            int textureID,
            int blendSrc,
            int blendDst) {
    }

    private static class Sprite {
        // Color
        byte r;
        byte g;
        byte b;
        byte a;
        float alphaMult;

        // Always zero.
        float offsetX;
        float offsetY;

        // Rotation pivot.
        float centerX;
        float centerY;

        float width;
        float height;

        float angle;

        float texX;
        float texY;
        float texWidth;
        float texHeight;
    }
}
