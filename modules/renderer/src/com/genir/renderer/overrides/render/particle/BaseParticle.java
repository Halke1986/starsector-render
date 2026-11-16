package com.genir.renderer.overrides.render.particle;

import com.genir.renderer.bridge.context.Context;
import com.genir.renderer.bridge.context.ContextManager;
import org.lwjgl.opengl.GL11;

import java.util.HashSet;
import java.util.Set;

/**
 * OVERRIDES com.fs.graphics.particle.BaseParticle
 */
public abstract class BaseParticle {
    /**
     * ADDED FIELDS
     */
    protected static ParticleRenderer renderer;
    private static Set<Integer> knownTextures;

    protected static float groupPosX;
    protected static float groupPosY;

    /**
     * STUB
     */
    public abstract void preBatch();

    /**
     * STUB
     */
    public abstract void postBatch();

    /**
     * STUB
     */
    public abstract void render();

    /**
     * STUB
     */
    public void advance(float dt) {
    }

    /**
     * STUB
     */
    public boolean isExpired() {
        return false;
    }

    /**
     * STUB
     */
    public float getBrightness() {
        return 0;
    }

    /**
     * STUB
     */
    public float getBrightnessOverride() {
        return 0;
    }

    /**
     * STUB
     */
    public float getBrightnessMult() {
        return 0;
    }

    /**
     * STUB
     */
    public float getX() {
        return 0;
    }

    /**
     * STUB
     */
    public float getY() {
        return 0;
    }

    /**
     * STUB
     */
    public float getAge() {
        return 0;
    }

    /**
     * STUB
     */
    public float getMaxAge() {
        return 0;
    }

    /**
     * STUB
     */
    public float getAngle() {
        return 0;
    }

    /**
     * ADDED METHOD
     */
    public static void initStatic() {
        renderer = new ParticleRenderer();
        knownTextures = new HashSet<>();
    }

    /**
     * ADDED METHOD
     */
    public void initGroupRendering(float posX, float posY) {
        renderer.clear();

        groupPosX = posX;
        groupPosY = posY;
    }

    /**
     * ADDED METHOD
     */
    public void renderBase(int textureID, int blendSfactor, int blendDfactor, int blendMode) {
        // Profiling suggests that issuing glBindTexture as a separate bridge call
        // substantially increases CPU time in particle rendering. The cause is unknown,
        // and the result may be a profiling artifact. To reduce this overhead, the
        // required OpenGL calls are bundled into a single bridge call.
        // These calls bypass the caller-side GL simulator, so any state changes must
        // either be restored or explicitly reflected in the simulator.

        // Bind each texture through the bridge on first use to trigger lazy DDS upload.
        if (!knownTextures.contains(textureID)) {
            knownTextures.add(textureID);
            com.genir.renderer.bridge.commands.GL11.glBindTexture(GL11.GL_TEXTURE_2D, textureID);
        }

        renderer.render(
                // Pre-batch
                (Context ctx) -> {
                    ctx.attribManager.applyDrawAttribs();

                    org.lwjgl.opengl.GL11.glPushAttrib(GL11.GL_ENABLE_BIT | GL11.GL_COLOR_BUFFER_BIT);

                    org.lwjgl.opengl.GL11.glEnable(GL11.GL_TEXTURE_2D);
                    org.lwjgl.opengl.GL11.glEnable(GL11.GL_BLEND);
                    org.lwjgl.opengl.GL11.glBlendFunc(blendSfactor, blendDfactor);
                    org.lwjgl.opengl.GL14.glBlendEquation(blendMode);
                    org.lwjgl.opengl.GL11.glBindTexture(GL11.GL_TEXTURE_2D, textureID);
                },

                // Post-batch
                (Context ctx) -> {
                    // GL_TEXTURE_BIT is omitted from glPushAttrib because profiling
                    // indicates substantial CPU overhead. Reset the binding explicitly.
                    org.lwjgl.opengl.GL11.glPopAttrib();
                    org.lwjgl.opengl.GL11.glBindTexture(GL11.GL_TEXTURE_2D, 0);
                }
        );

        // Update the caller-side simulator to reflect the post-batch texture binding.
        final Context context = ContextManager.getThreadContext();
        context.attribTracker.glBindTexture(GL11.GL_TEXTURE_2D, 0);
    }
}
