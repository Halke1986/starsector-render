package com.genir.renderer.overrides.render;

import com.fs.starfarer.api.Global;
import com.fs.starfarer.api.combat.CombatEngineLayers;
import com.fs.starfarer.api.combat.ViewportAPI;
import com.fs.starfarer.api.graphics.SpriteAPI;

import java.awt.*;
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
     * REPLACED METHOD
     */
    public int getNumActiveMembers() {
        return members.size();
    }

    /**
     * REPLACED METHOD
     */
    public void render(CombatEngineLayers layer, ViewportAPI viewport) {
        // params.renderFlashOnSameLayer is ignored and the entire
        // swarm is rendered on the fighter layer.
        if (layer != CombatEngineLayers.FIGHTERS_LAYER) {
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

        Color color = params.color;
        members.get(0).sprite.bindTexture();

        SpriteAPI glowSprite = Global.getSettings().getSprite("misc", "threat_swarm_glow");
        glowSprite.setAdditiveBlend();

        for (com.fs.starfarer.api.impl.combat.threat.RoilingSwarmEffect.SwarmMember p : members) {
            float brightness = p.fader.getBrightness();
            float size = params.baseSpriteSize * p.scale * brightness;
            float glow = getGlowForMember(p);

            p.sprite.setAngle(p.angle);
            p.sprite.setSize(size, size);
            p.sprite.setAlphaMult(alphaMult * brightness * params.alphaMultBase);
            p.sprite.setColor(color);
            p.sprite.renderAtCenterNoBind(p.loc.x, p.loc.y);

            if (glow > 0 && params.flashCoreRadiusMult <= 0f) {
                p.sprite.setAlphaMult(alphaMult * brightness * glow * params.alphaMultFlash);
                p.sprite.setColor(params.flashCoreColor);
                p.sprite.setAdditiveBlend();
                p.sprite.renderAtCenter(p.loc.x, p.loc.y);
                p.sprite.setNormalBlend();
            }
        }

        for (com.fs.starfarer.api.impl.combat.threat.RoilingSwarmEffect.SwarmMember p : members) {
            float glow = getGlowForMember(p);

            if (glow > 0f) {
                float size = params.flashRadius * (0.5f + 0.5f * glow) * 2f;
                size *= p.scale * p.fader.getBrightness();


                float b = p.fader.getBrightness();
                if (b > 0 && size > 0) {
                    glowSprite.setSize(size, size);
                    glowSprite.setAlphaMult(alphaMult * b * glow * 0.5f * params.alphaMultFlash);
                    glowSprite.setColor(params.flashFringeColor);
                    glowSprite.renderAtCenter(p.loc.x, p.loc.y);
                }

                float memberSize = params.baseSpriteSize;
                memberSize *= p.scale;
                memberSize *= 2f;
                memberSize *= params.flashCoreRadiusMult;
                if (b > 0 && memberSize > 0) {
                    glowSprite.setSize(memberSize, memberSize);
                    glowSprite.setAlphaMult(alphaMult * b * p.fader.getBrightness() * glow * 0.5f * params.alphaMultFlash);
                    glowSprite.setColor(params.flashCoreColor);
                    glowSprite.renderAtCenter(p.loc.x, p.loc.y);
                }
            }
        }
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
