package com.genir.renderer.overrides.render;

import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.ContextManager;
import com.genir.renderer.bridge.context.VertexInterceptor;
import com.genir.renderer.bridge.interfaces.GLCommand;
import com.genir.renderer.debug.Assert;
import org.lwjgl.opengl.GL11;
import org.lwjgl.util.glu.Quadric;

import java.util.HashMap;
import java.util.Map;

/**
 * Optimized, cache-based sphere renderer that implements only the subset of
 * {@link  org.lwjgl.util.glu.Sphere#draw(float, int, int)} used by Starsector.
 */
public class Sphere extends Quadric {
    private static final Map<Integer, float[]> cache = new HashMap<>();

    public void draw(float radius, int slices, int stacks) {
        record Sphere$draw(float radius, int slices, int stacks) implements GLCommand {
            @Override
            public void run(Context context, float[] args, int argsOffset) {
                context.matrixManager.setGPUMode();

                org.lwjgl.opengl.GL11.glEnable(GL11.GL_NORMALIZE);
                org.lwjgl.opengl.GL11.glPushMatrix();
                org.lwjgl.opengl.GL11.glScalef(radius, radius, radius);

                float[] vertices = cache.get(slices);
                if (vertices == null) {
                    vertices = build(slices, stacks);
                    cache.put(slices, vertices);
                }

                int flags = VertexInterceptor.VERTEX_FLAG | VertexInterceptor.TEX_FLAG | VertexInterceptor.NORMAL_FLAG;
                context.attribManager.applyDrawAttribs();
                context.vertexInterceptor.drawExternalArray(GL11.GL_QUADS, vertices, slices * stacks * 4, flags);

                org.lwjgl.opengl.GL11.glPopMatrix();
                org.lwjgl.opengl.GL11.glDisable(GL11.GL_NORMALIZE);

                context.matrixManager.setCPUMode();
            }

            public static float[] build(int slices, int stacks) {
                float[] vertexScratchpad = new float[slices * stacks * 4 * VertexInterceptor.STRIDE];

                float drho = (float) (Math.PI / (double) stacks);
                float dtheta = (float) (2.0 * Math.PI / (double) slices);

                float ds = 1.0F / (float) slices;
                float dt = 1.0F / (float) stacks;

                for (int i = 0; i < stacks; i++) {
                    float rho = (float) i * drho;
                    float t = 1.0F - (dt * (float) i);

                    float sinRho = (float) Math.sin(rho);
                    float cosRho = (float) Math.cos(rho);
                    float sinDRho = (float) Math.sin(rho + drho);
                    float cosDRho = (float) Math.cos(rho + drho);

                    float x0 = 0;
                    float y0 = sinRho;
                    float z0 = cosRho;

                    float x1 = 0;
                    float y1 = sinDRho;
                    float z1 = cosDRho;

                    for (int j = 1; j <= slices; j++) {
                        float s0 = ds * (float) (j - 1);

                        int offset = (i * slices + (j - 1)) * 4;

                        int v0 = (offset + 0) * VertexInterceptor.STRIDE;
                        vertexScratchpad[v0 + 0] = x0;
                        vertexScratchpad[v0 + 1] = y0;
                        vertexScratchpad[v0 + 2] = z0;
                        vertexScratchpad[v0 + 7] = s0;
                        vertexScratchpad[v0 + 8] = t;
                        vertexScratchpad[v0 + 9] = 0;
                        vertexScratchpad[v0 + 10] = 1;
                        vertexScratchpad[v0 + 13] = x0;
                        vertexScratchpad[v0 + 14] = y0;
                        vertexScratchpad[v0 + 15] = z0;

                        int v1 = (offset + 1) * VertexInterceptor.STRIDE;
                        vertexScratchpad[v1 + 0] = x1;
                        vertexScratchpad[v1 + 1] = y1;
                        vertexScratchpad[v1 + 2] = z1;
                        vertexScratchpad[v1 + 7] = s0;
                        vertexScratchpad[v1 + 8] = t - dt;
                        vertexScratchpad[v1 + 9] = 0;
                        vertexScratchpad[v1 + 10] = 1;
                        vertexScratchpad[v1 + 13] = x1;
                        vertexScratchpad[v1 + 14] = y1;
                        vertexScratchpad[v1 + 15] = z1;

                        float s1 = ds * (float) j;

                        float theta = (float) j * dtheta;
                        float sinTheta = (float) Math.sin(theta);
                        float cosTheta = (float) Math.cos(theta);

                        x0 = -sinTheta * sinRho;
                        y0 = cosTheta * sinRho;
                        z0 = cosRho;

                        x1 = -sinTheta * sinDRho;
                        y1 = cosTheta * sinDRho;
                        z1 = cosDRho;

                        int v2 = (offset + 2) * VertexInterceptor.STRIDE;
                        vertexScratchpad[v2 + 0] = x1;
                        vertexScratchpad[v2 + 1] = y1;
                        vertexScratchpad[v2 + 2] = z1;
                        vertexScratchpad[v2 + 7] = s1;
                        vertexScratchpad[v2 + 8] = t - dt;
                        vertexScratchpad[v2 + 9] = 0;
                        vertexScratchpad[v2 + 10] = 1;
                        vertexScratchpad[v2 + 13] = x1;
                        vertexScratchpad[v2 + 14] = y1;
                        vertexScratchpad[v2 + 15] = z1;

                        int v3 = (offset + 3) * VertexInterceptor.STRIDE;
                        vertexScratchpad[v3 + 0] = x0;
                        vertexScratchpad[v3 + 1] = y0;
                        vertexScratchpad[v3 + 2] = z0;
                        vertexScratchpad[v3 + 7] = s1;
                        vertexScratchpad[v3 + 8] = t;
                        vertexScratchpad[v3 + 9] = 0;
                        vertexScratchpad[v3 + 10] = 1;
                        vertexScratchpad[v3 + 13] = x0;
                        vertexScratchpad[v3 + 14] = y0;
                        vertexScratchpad[v3 + 15] = z0;
                    }
                }

                return vertexScratchpad;
            }
        }

        Assert.invariant(slices == stacks);

        final Context context = ContextManager.getThreadContext();
        context.exec.execute(new Sphere$draw(radius, slices, stacks));
    }
}
