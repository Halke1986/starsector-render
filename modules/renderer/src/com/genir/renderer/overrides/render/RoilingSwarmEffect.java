package com.genir.renderer.overrides.render;

import com.fs.starfarer.api.Global;
import com.fs.starfarer.api.combat.CombatEngineLayers;
import com.fs.starfarer.api.combat.ViewportAPI;
import com.fs.starfarer.api.graphics.SpriteAPI;
import com.genir.renderer.overrides.render.particle.ParticleRenderer;
import org.lwjgl.opengl.GL11;

import java.util.List;

/**
 * OVERRIDES com.fs.starfarer.api.impl.combat.threat.RoilingSwarmEffect
 */
public class RoilingSwarmEffect {
    /**
     * STUBS
     */
    protected com.fs.starfarer.api.impl.combat.threat.RoilingSwarmEffect.RoilingSwarmParams params;
    protected List<com.fs.starfarer.api.impl.combat.threat.RoilingSwarmEffect.SwarmMember> members;

    /**
     * ADDED FIELDS
     */
    private ParticleRenderer bodyRenderer;
    private ParticleRenderer flashRenderer;
    private ParticleRenderer flashExtendedRenderer;
    private ParticleRenderer flashFringeRenderer;
    private static SpriteAPI glowSprite;

    /**
     * ADDED METHOD
     */
    public static void initStatic() {
        glowSprite = Global.getSettings().getSprite("misc", "threat_swarm_glow");
    }

    /**
     * REPLACED METHOD
     * <p>
     * Vanilla getNumActiveMembers executes a complex and CPU intensive
     * logic that's equivalent to members.size().
     */
    public int getNumActiveMembers() {
        return members.size();
    }

    /**
     * REPLACED METHOD
     */
    public void render(CombatEngineLayers layer, ViewportAPI viewport) {
        if (layer != CombatEngineLayers.FIGHTERS_LAYER && layer != CombatEngineLayers.ABOVE_PARTICLES_LOWER) {
            return;
        }

        if ((layer == CombatEngineLayers.ABOVE_PARTICLES_LOWER) && params.renderFlashOnSameLayer) {
            return;
        }

        if (members.isEmpty()) {
            return;
        }

        float alphaMult = viewport.getAlphaMult() * params.alphaMult;
        if (alphaMult <= 0f) {
            // Swarm is transparent.
            return;
        }

        if (bodyRenderer == null) {
            bodyRenderer = new ParticleRenderer();
            flashRenderer = new ParticleRenderer();
            flashExtendedRenderer = new ParticleRenderer();
            flashFringeRenderer = new ParticleRenderer();
        }

        // Prepare geometry.
        if (layer == CombatEngineLayers.FIGHTERS_LAYER) {
            bodyRenderer.clear();
            flashRenderer.clear();
            flashExtendedRenderer.clear();
            flashFringeRenderer.clear();

            float rBody = params.color.getRed() / 255f;
            float gBody = params.color.getGreen() / 255f;
            float bBody = params.color.getBlue() / 255f;
            float aBody = params.color.getAlpha() / 255f;

            float rFlash = params.flashCoreColor.getRed() / 255f;
            float gFlash = params.flashCoreColor.getGreen() / 255f;
            float bFlash = params.flashCoreColor.getBlue() / 255f;
            float aFlash = params.flashCoreColor.getAlpha() / 255f;

            float rFlashFringe = params.flashFringeColor.getRed() / 255f;
            float gFlashFringe = params.flashFringeColor.getGreen() / 255f;
            float bFlashFringe = params.flashFringeColor.getBlue() / 255f;
            float aFlashFringe = params.flashFringeColor.getAlpha() / 255f;

            for (com.fs.starfarer.api.impl.combat.threat.RoilingSwarmEffect.SwarmMember p : members) {
                float brightness = p.fader.getBrightness();
                if (brightness <= 0) {
                    continue;
                }

                float bodySize = params.baseSpriteSize * p.scale * brightness;
                float bodyAlphaMult = alphaMult * brightness * params.alphaMultBase;

                bodyRenderer.beginNewParticle();
                bodyRenderer.setColor(rBody, gBody, bBody, aBody * bodyAlphaMult);
                bodyRenderer.setTexture(p.sprite.getTexX(), p.sprite.getTexY(), p.sprite.getTexWidth(), p.sprite.getTexHeight());
                bodyRenderer.setVertices(p.loc.x, p.loc.y, p.angle, bodySize, bodySize);

                float glow = getGlowForMember(p);
                if (glow <= 0) {
                    continue;
                }

                if (params.flashCoreRadiusMult <= 0f) {
                    float flashAlphaMult = alphaMult * brightness * glow * params.alphaMultFlash;

                    flashRenderer.beginNewParticle();
                    flashRenderer.setColor(rFlash, gFlash, bFlash, aFlash * flashAlphaMult);
                    flashRenderer.setTexture(p.sprite.getTexX(), p.sprite.getTexY(), p.sprite.getTexWidth(), p.sprite.getTexHeight());
                    flashRenderer.setVertices(p.loc.x, p.loc.y, p.angle, bodySize, bodySize);
                }

                float flashFringeSize = params.flashRadius * (0.5f + 0.5f * glow) * 2f * p.scale * brightness;
                if (flashFringeSize > 0) {
                    float flashFringeAlphaMult = alphaMult * brightness * glow * 0.5f * params.alphaMultFlash;

                    flashFringeRenderer.beginNewParticle();
                    flashFringeRenderer.setColor(rFlashFringe, gFlashFringe, bFlashFringe, aFlashFringe * flashFringeAlphaMult);
                    flashFringeRenderer.setTexture(glowSprite.getTexX(), glowSprite.getTexY(), glowSprite.getTexWidth(), glowSprite.getTexHeight());
                    flashFringeRenderer.setVertices(p.loc.x, p.loc.y, 0, flashFringeSize, flashFringeSize);
                }

                float flashExtendedSize = params.baseSpriteSize * 2f * p.scale * params.flashCoreRadiusMult;
                if (flashExtendedSize > 0) {
                    float flashExtendedAlphaMult = alphaMult * brightness * glow * 0.5f * params.alphaMultFlash;

                    flashExtendedRenderer.beginNewParticle();
                    flashExtendedRenderer.setColor(rFlash, gFlash, bFlash, aFlash * flashExtendedAlphaMult);
                    flashExtendedRenderer.setTexture(glowSprite.getTexX(), glowSprite.getTexY(), glowSprite.getTexWidth(), glowSprite.getTexHeight());
                    flashExtendedRenderer.setVertices(p.loc.x, p.loc.y, 0, flashExtendedSize, flashExtendedSize);
                }
            }
        }

        com.genir.renderer.bridge.commands.GL11.glEnable(GL11.GL_TEXTURE_2D);
        com.genir.renderer.bridge.commands.GL11.glEnable(GL11.GL_BLEND);

        com.genir.renderer.bridge.commands.GL11.glBlendFunc(GL11.GL_SRC_ALPHA, GL11.GL_ONE_MINUS_SRC_ALPHA);

        if ((layer == CombatEngineLayers.FIGHTERS_LAYER)) {
            // Swarm members share a texture atlas.
            members.get(0).sprite.bindTexture();

            com.genir.renderer.bridge.commands.GL11.glBlendFunc(GL11.GL_SRC_ALPHA, GL11.GL_ONE_MINUS_SRC_ALPHA);
            bodyRenderer.render();

            flashRenderer.render();
        }

        if ((layer == CombatEngineLayers.FIGHTERS_LAYER) == params.renderFlashOnSameLayer) {
            glowSprite.bindTexture();

            com.genir.renderer.bridge.commands.GL11.glBlendFunc(GL11.GL_SRC_ALPHA, GL11.GL_ONE);
            flashExtendedRenderer.render();
            flashFringeRenderer.render();
        }

        com.genir.renderer.bridge.commands.GL11.glDisable(GL11.GL_TEXTURE_2D);
        com.genir.renderer.bridge.commands.GL11.glDisable(GL11.GL_BLEND);
    }

    /**
     * STUB
     */
    public float getGlowForMember(com.fs.starfarer.api.impl.combat.threat.RoilingSwarmEffect.SwarmMember p) {
        float glow = 0f;
        if (p.flash != null) {
            glow = p.flash.getBrightness();
            glow *= glow;
        }
        return glow;
    }
}
