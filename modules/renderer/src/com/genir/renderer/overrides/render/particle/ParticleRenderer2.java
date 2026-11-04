package com.genir.renderer.overrides.render.particle;

import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.ContextManager;
import com.genir.renderer.bridge.context.VertexInterceptor;
import com.genir.renderer.bridge.interfaces.GLCommand;
import com.genir.renderer.overrides.render.core.ArrayPool;
import org.lwjgl.opengl.GL11;

import java.awt.*;
import java.util.Arrays;
import java.util.function.Consumer;

public class ParticleRenderer2 {
    private static final int PARTICLE_SIZE = 13;
    private float[] particleArray = new float[PARTICLE_SIZE];

    private int numParticles = 0;

    public void clear() {
        numParticles = 0;
    }

    public void addParticle(
            Color color, float alphaMult,
            float texX, float texY, float texWidth, float texHeight,
            float centerX, float centerY, float angle, float w, float h
    ) {
        addParticle(
                color.getRed() / 255f,
                color.getGreen() / 255f,
                color.getBlue() / 255f,
                (color.getAlpha() / 255f) * alphaMult,
                texX, texY, texWidth, texHeight,
                centerX, centerY, angle, w, h
        );
    }

    public void addParticle(
            float r, float g, float b, float a,
            float texX, float texY, float texWidth, float texHeight,
            float centerX, float centerY, float angle, float w, float h
    ) {
        int requiredLength = (numParticles + 1) * PARTICLE_SIZE;
        if (particleArray.length < requiredLength) {
            particleArray = Arrays.copyOf(particleArray, particleArray.length * 2);
        }

        int o = numParticles * PARTICLE_SIZE;

        particleArray[o + 0] = r;
        particleArray[o + 1] = g;
        particleArray[o + 2] = b;
        particleArray[o + 3] = a;
        particleArray[o + 4] = texX;
        particleArray[o + 5] = texY;
        particleArray[o + 6] = texWidth;
        particleArray[o + 7] = texHeight;
        particleArray[o + 8] = centerX;
        particleArray[o + 9] = centerY;
        particleArray[o + 10] = angle;
        particleArray[o + 11] = w;
        particleArray[o + 12] = h;

        numParticles++;
    }

    private record ParticleRenderer$render(
            ParticleRenderer2 renderer,
            Consumer<Context> preBatch,
            Consumer<Context> postBatch,
            int numParticles,
            float[] particleArray
    ) implements GLCommand {
        @Override
        public void run(Context context, float[] args, int argsOffset) {
            float[] vertexScratchpad = context.vertexInterceptor.getVertexScratchpad(numParticles * 4);

            for (int i = 0; i < numParticles; i++) {
                int readOffset = i * PARTICLE_SIZE;

                float r = particleArray[readOffset + 0];
                float g = particleArray[readOffset + 1];
                float b = particleArray[readOffset + 2];
                float a = particleArray[readOffset + 3];
                float texX = particleArray[readOffset + 4];
                float texY = particleArray[readOffset + 5];
                float texWidth = particleArray[readOffset + 6];
                float texHeight = particleArray[readOffset + 7];
                float centerX = particleArray[readOffset + 8];
                float centerY = particleArray[readOffset + 9];
                float angle = particleArray[readOffset + 10];
                float w = particleArray[readOffset + 11];
                float h = particleArray[readOffset + 12];

                // Optimized equivalent of: anchor at center, rotate and translate:
                // m.setIdentity()
                // m.translate(centerX, centerY, 0);
                // m.rotate(angle, 0, 0, 1);
                // m.translate(- width/2, - height/2, 0);
                double rad = angle * (Math.PI / 180);
                float c = (float) Math.cos(rad);
                float s = (float) Math.sin(rad);

                float w2 = w / 2;
                float h2 = h / 2;

                float m00 = c;
                float m01 = -s;
                float m03 = (-w2 * c) + (h2 * s) + centerX;

                float m10 = s;
                float m11 = c;
                float m13 = (-w2 * s) - (h2 * c) + centerY;

                int v0 = (i * 4 + 0) * VertexInterceptor.STRIDE;
                vertexScratchpad[v0 + 0] = m03;
                vertexScratchpad[v0 + 1] = m13;
                vertexScratchpad[v0 + 3] = 0;
                vertexScratchpad[v0 + 3] = r;
                vertexScratchpad[v0 + 4] = g;
                vertexScratchpad[v0 + 5] = b;
                vertexScratchpad[v0 + 6] = a;
                vertexScratchpad[v0 + 7] = texX;
                vertexScratchpad[v0 + 8] = texY;
                vertexScratchpad[v0 + 9] = 0;
                vertexScratchpad[v0 + 10] = 1;

                int v1 = (i * 4 + 1) * VertexInterceptor.STRIDE;
                vertexScratchpad[v1 + 0] = h * m01 + m03;
                vertexScratchpad[v1 + 1] = h * m11 + m13;
                vertexScratchpad[v1 + 3] = 0;
                vertexScratchpad[v1 + 3] = r;
                vertexScratchpad[v1 + 4] = g;
                vertexScratchpad[v1 + 5] = b;
                vertexScratchpad[v1 + 6] = a;
                vertexScratchpad[v1 + 7] = texX;
                vertexScratchpad[v1 + 8] = texY + texHeight;
                vertexScratchpad[v1 + 9] = 0;
                vertexScratchpad[v1 + 10] = 1;

                int v2 = (i * 4 + 2) * VertexInterceptor.STRIDE;
                vertexScratchpad[v2 + 0] = w * m00 + h * m01 + m03;
                vertexScratchpad[v2 + 1] = w * m10 + h * m11 + m13;
                vertexScratchpad[v2 + 3] = 0;
                vertexScratchpad[v2 + 3] = r;
                vertexScratchpad[v2 + 4] = g;
                vertexScratchpad[v2 + 5] = b;
                vertexScratchpad[v2 + 6] = a;
                vertexScratchpad[v2 + 7] = texX + texWidth;
                vertexScratchpad[v2 + 8] = texY + texHeight;
                vertexScratchpad[v2 + 9] = 0;
                vertexScratchpad[v2 + 10] = 1;

                int v3 = (i * 4 + 3) * VertexInterceptor.STRIDE;
                vertexScratchpad[v3 + 0] = w * m00 + m03;
                vertexScratchpad[v3 + 1] = w * m10 + m13;
                vertexScratchpad[v3 + 3] = 0;
                vertexScratchpad[v3 + 3] = r;
                vertexScratchpad[v3 + 4] = g;
                vertexScratchpad[v3 + 5] = b;
                vertexScratchpad[v3 + 6] = a;
                vertexScratchpad[v3 + 7] = texX + texWidth;
                vertexScratchpad[v3 + 8] = texY;
                vertexScratchpad[v3 + 9] = 0;
                vertexScratchpad[v3 + 10] = 1;
            }

            preBatch.accept(context);

            int flags = VertexInterceptor.VERTEX_FLAG | VertexInterceptor.COLOR_FLAG | VertexInterceptor.TEX_FLAG;
            context.vertexInterceptor.drawExternalArray(GL11.GL_QUADS, vertexScratchpad, numParticles * 4, flags);

            postBatch.accept(context);

            ArrayPool.arrayPool.put(particleArray);
        }
    }

    public void render(Consumer<Context> preBatch, Consumer<Context> postBatch) {
        final Context context = ContextManager.getThreadContext();
        final float[] particleArraySnapshot = ArrayPool.arrayPool.get(numParticles * PARTICLE_SIZE);
        System.arraycopy(particleArray, 0, particleArraySnapshot, 0, numParticles * PARTICLE_SIZE);

        context.exec.execute(new ParticleRenderer$render(this, preBatch, postBatch, numParticles, particleArraySnapshot));
    }
}
