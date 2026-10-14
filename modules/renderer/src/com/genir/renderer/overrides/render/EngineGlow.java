package com.genir.renderer.overrides.render;

import com.fs.graphics.Sprite;
import com.fs.graphics.TextureHandler;
import com.fs.graphics.util.Fader;
import com.fs.graphics.util.GLUtils;
import com.fs.starfarer.combat.entities.Ship;
import com.fs.starfarer.combat.entities.ship.ShipEngineController;
import com.fs.starfarer.loading.specs.EngineSlot;
import com.fs.starfarer.util.ColorShifter;
import com.fs.starfarer.util.ValueShifter;
import org.lwjgl.opengl.GL11;
import org.lwjgl.util.vector.Vector2f;

import java.awt.*;
import java.util.Iterator;

/**
 * OVERRIDES com.fs.starfarer.combat.entities.EngineGlow
 */
public class EngineGlow {
    /**
     * STUBS
     */
    private ShipEngineController.Delegate EngineGlow_delegate;
    private boolean EngineGlow_isActive;
    private TextureHandler EngineGlow_glowTexture;
    private TextureHandler EngineGlow_secondaryGlowTexture;
    private TextureHandler EngineGlow_flameTexture;
    private Sprite EngineGlow_hitGlowSprite;
    private Fader EngineGlow_fader;
    private Fader EngineGlow_flameoutFader;
    private ColorShifter EngineGlow_glowColorShifter;
    private ValueShifter EngineGlow_flameLengthShifter;
    private ValueShifter EngineGlow_flameWidthShifter;
    private ValueShifter EngineGlow_flameColorMultShifter;
    private float EngineGlow_colorShiftIntensity;
    private boolean EngineGlow_isAccelerating;

    /**
     * STUB
     */
    public void EngineGlow_renderFighter(float alphaMult) {
    }

    /**
     * STUB
     */
    public EngineGlowState EngineGlow_getEngineState(EngineSlot slot) {
        return null;
    }

    /**
     * REPLACED METHOD
     */
    public void EngineGlow_render(float alphaMult) {
        ShipEngineController.Delegate delegate = EngineGlow_delegate;

        if (delegate.isFighter()) {
            this.EngineGlow_renderFighter(alphaMult);
            return;
        }

        boolean omegaMode = !delegate.getEngineLocations().isEmpty() && delegate.getEngineLocations().get(0).isOmegaMode();
        boolean withSpread = delegate.getEngineLocations().isEmpty() || delegate.getEngineLocations().get(0).isWithSpread();

        com.genir.renderer.bridge.commands.GL11.glEnable(3553);
        com.genir.renderer.bridge.commands.GL11.glEnable(3042);
        com.genir.renderer.bridge.commands.GL11.glBlendFunc(770, 1);

        float textureInset = 0.01F;
        float angularSkew = -(delegate.getAngularVelocity() * 0.15F);
        if (omegaMode) {
            angularSkew *= 2.5F;
            float angularDirection = Math.signum(-delegate.getAngularVelocity());
            float angularSpeedFraction = Math.min(1.0F, Math.abs(delegate.getAngularVelocity()) / 120.0F);
            angularSpeedFraction *= angularSpeedFraction;
            angularSkew = angularDirection * angularSpeedFraction * 10.0F;
        }

        Iterator slotIterator = delegate.getEngineLocations().iterator();

        while (true) {
            EngineGlowState state;
            float glowLevel;
            float effectiveGlow;
            EngineSlot slot;

            while (true) {
                if (!slotIterator.hasNext()) {
                    return;
                }

                slot = (EngineSlot) slotIterator.next();
                state = this.EngineGlow_getEngineState(slot);
                glowLevel = state.EngineGlowState_glowLevel;
                effectiveGlow = glowLevel;

                if (!slot.isSystemActivated() || !(delegate instanceof Ship)) {
                    break;
                }

                if (EngineGlow_isActive) {
                    glowLevel *= EngineGlow_flameLengthShifter.getShiftProgress(((Ship) delegate).getSystem());
                    if (glowLevel < 0.25F) {
                        effectiveGlow = 0.0F;
                    } else {
                        effectiveGlow = (glowLevel - 0.25F) / 0.75F;
                    }
                    break;
                }
            }

            if (glowLevel != 0.0F) {
                float angle = slot.computeMidArcAngle(delegate.getFacing());
                Vector2f location = slot.computePosition(new Vector2f(), delegate.getFacing());
                float spread = state.EngineGlowState_spread;
                float maxSpread = slot.getMaxSpread();
                Color color = slot.getColor();
                if (EngineGlow_glowColorShifter.isShifted()) {
                    color = GLUtils.GLUtils_lerpColor(color, EngineGlow_glowColorShifter.getCurrForBase(color), EngineGlow_colorShiftIntensity);
                }

                float idleAlpha = glowLevel / 0.4F;
                if (idleAlpha > 1.0F) {
                    idleAlpha = 1.0F;
                }

                com.genir.renderer.bridge.commands.GL11.glPushMatrix();
                com.genir.renderer.bridge.commands.GL11.glTranslatef(location.x, location.y, 0.0F);
                com.genir.renderer.bridge.commands.GL11.glRotatef(angle, 0.0F, 0.0F, 1.0F);

                float widthFactor;
                float lengthFactor;
                if (EngineGlow_isAccelerating) {
                    widthFactor = Math.min(effectiveGlow, 0.8F) / 0.8F;
                    widthFactor *= widthFactor;
                    if (widthFactor < 0.45000005F) {
                        widthFactor = 0.45000005F;
                    }

                    lengthFactor = Math.max(0.0F, effectiveGlow - 0.8F) / 0.19999999F;
                    lengthFactor *= lengthFactor;
                } else {
                    widthFactor = Math.max(0.09F, effectiveGlow - 0.8F) / 0.19999999F;
                    lengthFactor = Math.max(0.0F, effectiveGlow - 0.8F) / 0.19999999F;
                }

                if (omegaMode) {
                    widthFactor *= (spread * 2.0F + maxSpread) / maxSpread;
                } else {
                    widthFactor *= (spread + maxSpread) / maxSpread;
                }

                float faderBrightness = EngineGlow_fader.getBrightness();
                float flameLength = slot.getLength() + slot.getLength() * 0.25F * faderBrightness;
                float flameWidth = slot.getWidth();
                flameLength += slot.getLength() * EngineGlow_flameLengthShifter.getCurr();
                flameWidth += slot.getWidth() * EngineGlow_flameWidthShifter.getCurr();
                float renderLength = flameLength * (0.2F + lengthFactor * 0.8F);
                float baseRenderWidth = slot.getWidth() * (0.1F + widthFactor * 0.9F);
                float renderWidth = flameWidth * (0.1F + widthFactor * 0.9F);
                if (!withSpread) {
                    float spreadFraction = spread / 90.0F;
                    if (spreadFraction > 1.0F) {
                        spreadFraction = 1.0F;
                    }

                    if (spreadFraction < 0.0F) {
                        spreadFraction = 0.0F;
                    }

                    spread = 0.0F;
                    renderLength *= 1.0F - spreadFraction * 0.5F;
                    renderWidth *= 1.0F + spreadFraction * 0.25F;
                }

                float spreadRotation = (1.0F - renderLength / flameLength) * spread;
                float textureLength = glowLevel * 1.0F;
                float layerCount = 6.0F;
                if (omegaMode) {
                    layerCount = 1.0F;
                    spreadRotation = 0.0F;
                }

                float textureU = state.EngineGlowState_textureU;
                float transitionLength = Math.min(baseRenderWidth / 2.0F, renderLength / 4.0F);
                float transitionU = transitionLength / renderLength;
                int textureID;
                if (slot.getGlowType() == EngineGlowType.EngineGlowType_NORMAL) {
                    textureID = EngineGlow_glowTexture.TextureHandler_getTextureID();
                } else {
                    textureID = EngineGlow_secondaryGlowTexture.TextureHandler_getTextureID();
                }
                com.genir.renderer.bridge.commands.GL11.glBindTexture(GL11.GL_TEXTURE_2D, textureID);

                byte passCount = 1;
                if (omegaMode) {
                    passCount = 2;
                }

                for (int passIndex = 0; passIndex < passCount; passIndex++) {
                    for (float layerIndex = 0.0F; layerIndex < layerCount; layerIndex++) {
                        com.genir.renderer.bridge.commands.GL11.glPushMatrix();
                        float layerSkew = (layerCount - layerIndex - 1.0F) / layerCount * angularSkew;
                        if (omegaMode) {
                            layerSkew = angularSkew;
                        }

                        com.genir.renderer.bridge.commands.GL11.glRotatef(layerSkew, 0.0F, 0.0F, 1.0F);
                        float sideSign = 1.0F;
                        if (layerIndex % 2.0F == 0.0F) {
                            sideSign = -1.0F;
                        }

                        float layerPairIndex = (layerIndex + 1.0F) / 2.0F;
                        com.genir.renderer.bridge.commands.GL11.glRotatef(
                                (layerCount / 2.0F - layerPairIndex - 1.0F)
                                        / (layerCount / 2.0F) * sideSign * 2.0F * spreadRotation,
                                0.0F, 0.0F, 1.0F);
                        com.genir.renderer.bridge.commands.GL11.glTranslatef(
                                (layerCount - layerIndex - 1.0F) * transitionLength / (layerCount * 2.0F),
                                0.0F, 0.0F);
                        com.genir.renderer.bridge.commands.GL11.glScalef(
                                0.5F + 0.5F * (layerIndex + 1.0F) / layerCount,
                                1.0F * (layerCount - layerIndex) / layerCount,
                                1.0F);
                        com.genir.renderer.bridge.commands.GL11.glBegin(8);
                        com.genir.renderer.bridge.commands.GL11.glColor4ub((byte) color.getRed(), (byte) color.getGreen(), (byte) color.getBlue(), (byte) (int) (layerIndex * 5.0F * color.getAlpha() / 255.0F * alphaMult * idleAlpha));
                        com.genir.renderer.bridge.commands.GL11.glTexCoord2f(textureU, 0.0F + textureInset);
                        com.genir.renderer.bridge.commands.GL11.glVertex2f(0.0F, -renderWidth / 2.0F);
                        com.genir.renderer.bridge.commands.GL11.glTexCoord2f(textureU, 1.0F - textureInset);
                        com.genir.renderer.bridge.commands.GL11.glVertex2f(0.0F, renderWidth / 2.0F);
                        float alphaScale = 1.0F;

                        com.genir.renderer.bridge.commands.GL11.glColor4ub((byte) color.getRed(), (byte) color.getGreen(), (byte) color.getBlue(), (byte) (int) (100.0F * alphaScale * color.getAlpha() / 255.0F * alphaMult * idleAlpha));
                        com.genir.renderer.bridge.commands.GL11.glTexCoord2f(textureU + transitionU, 0.0F + textureInset);
                        com.genir.renderer.bridge.commands.GL11.glVertex2f(transitionLength, -renderWidth / 2.0F);
                        com.genir.renderer.bridge.commands.GL11.glTexCoord2f(textureU + transitionU, 1.0F - textureInset);
                        com.genir.renderer.bridge.commands.GL11.glVertex2f(transitionLength, renderWidth / 2.0F);
                        com.genir.renderer.bridge.commands.GL11.glColor4ub((byte) color.getRed(), (byte) color.getGreen(), (byte) color.getBlue(), (byte) 0);
                        com.genir.renderer.bridge.commands.GL11.glTexCoord2f(textureU + textureLength, 0.0F + textureInset);
                        com.genir.renderer.bridge.commands.GL11.glVertex2f(renderLength, -renderWidth / 2.0F);
                        com.genir.renderer.bridge.commands.GL11.glTexCoord2f(textureU + textureLength, 1.0F - textureInset);
                        com.genir.renderer.bridge.commands.GL11.glVertex2f(renderLength, renderWidth / 2.0F);
                        com.genir.renderer.bridge.commands.GL11.glEnd();
                        com.genir.renderer.bridge.commands.GL11.glPopMatrix();
                        textureU += 1.0F / layerCount;
                    }
                }

                com.genir.renderer.bridge.commands.GL11.glRotatef(state.EngineGlowState_angle, 0.0F, 0.0F, 1.0F);
                com.genir.renderer.bridge.commands.GL11.glScalef(0.9F, 1.0F, 1.0F);
                float flamePassCount = 1.0F;

                com.genir.renderer.bridge.commands.GL11.glBindTexture(GL11.GL_TEXTURE_2D, EngineGlow_flameTexture.TextureHandler_getTextureID());

                for (float flamePassIndex = 0.0F; flamePassIndex < flamePassCount; flamePassIndex++) {
                    com.genir.renderer.bridge.commands.GL11.glPushMatrix();
                    float flamePassSkew = 0.0F;
                    if (omegaMode) {
                        flamePassSkew = angularSkew;
                    }

                    com.genir.renderer.bridge.commands.GL11.glRotatef(flamePassSkew, 0.0F, 0.0F, 1.0F);
                    com.genir.renderer.bridge.commands.GL11.glColor4ub((byte) color.getRed(), (byte) color.getGreen(), (byte) color.getBlue(), (byte) (int) (glowLevel * 50.0F * color.getAlpha() / 255.0F * alphaMult * idleAlpha));
                    com.genir.renderer.bridge.commands.GL11.glBegin(8);
                    com.genir.renderer.bridge.commands.GL11.glTexCoord2f(0.0F + textureInset, 0.0F + textureInset);
                    com.genir.renderer.bridge.commands.GL11.glVertex2f(0.0F, -renderWidth / 2.0F);
                    com.genir.renderer.bridge.commands.GL11.glTexCoord2f(0.0F + textureInset, 1.0F - textureInset);
                    com.genir.renderer.bridge.commands.GL11.glVertex2f(0.0F, renderWidth / 2.0F);
                    com.genir.renderer.bridge.commands.GL11.glTexCoord2f(1.0F - textureInset, 0.0F + textureInset);
                    com.genir.renderer.bridge.commands.GL11.glVertex2f(renderLength, -renderWidth / 2.0F);
                    com.genir.renderer.bridge.commands.GL11.glTexCoord2f(1.0F - textureInset, 1.0F - textureInset);
                    com.genir.renderer.bridge.commands.GL11.glVertex2f(renderLength, renderWidth / 2.0F);
                    com.genir.renderer.bridge.commands.GL11.glEnd();
                    com.genir.renderer.bridge.commands.GL11.glPopMatrix();
                }

                glowLevel = 1.0F;
                float flameoutBrightness = EngineGlow_flameoutFader.getBrightness();
                if (flameoutBrightness > 0.0F) {
                    flameoutBrightness = (float) Math.sqrt(flameoutBrightness);
                }

                flameoutBrightness *= 0.75F;
                float glowDiameter;
                if (!EngineGlow_flameLengthShifter.isShifted()
                        && !EngineGlow_flameWidthShifter.isShifted()
                        && !EngineGlow_flameColorMultShifter.isShifted()) {
                    glowDiameter = renderWidth * (2.0F + 1.0F * faderBrightness);
                } else {
                    float shiftedGlowDiameter =
                            (renderWidth - baseRenderWidth * EngineGlow_flameWidthShifter.getCurr()) * 2.0F;
                    glowDiameter = shiftedGlowDiameter + shiftedGlowDiameter * 0.5F * faderBrightness;
                    glowDiameter += shiftedGlowDiameter * EngineGlow_flameColorMultShifter.getCurr();
                }

                float glowLevelForAlpha = Math.max(faderBrightness * 0.25F, spread / maxSpread * 0.5F);
                glowLevelForAlpha = Math.max(glowLevelForAlpha, flameoutBrightness);
                float glowAlpha = Math.max(glowLevelForAlpha, glowLevel - 0.4F) * 0.75F * alphaMult;
                glowAlpha = Math.min(idleAlpha, glowAlpha);
                if (delegate.isMissile()) {
                    glowDiameter *= 2.0F;
                } else if (delegate.isFighter()) {
                    glowDiameter *= 0.66F;
                }

                if (glowAlpha < 0.5F) {
                    glowDiameter *= 0.15F + 0.85F * (glowAlpha / 0.5F);
                }

                if (glowAlpha > 0.0F) {
                    if (slot.getGlowAlternateColor() != null) {
                        color = slot.getGlowAlternateColor();
                        if (EngineGlow_glowColorShifter.isShifted()) {
                            color = GLUtils.GLUtils_lerpColor(color, EngineGlow_glowColorShifter.getCurrForBase(color), EngineGlow_colorShiftIntensity);
                        }
                    }

                    float glowSizeMult = slot.getGlowSizeMult();
                    EngineGlow_hitGlowSprite.setAlphaMult(glowAlpha);
                    EngineGlow_hitGlowSprite.setColor(color);
                    float glowExpansion = Math.min(glowDiameter, 15.0F) * 1.0F * faderBrightness;
                    glowExpansion *= 1.0F + flameoutBrightness;
                    EngineGlow_hitGlowSprite.setSize(
                            glowSizeMult * (glowDiameter * 2.0F + glowExpansion),
                            glowSizeMult * (glowDiameter * 2.0F + glowExpansion));
                    EngineGlow_hitGlowSprite.renderAtCenter(0.0F, 0.0F);
                    EngineGlow_hitGlowSprite.setColor(Color.white);
                    EngineGlow_hitGlowSprite.setSize(
                            glowSizeMult * glowDiameter * 0.75F,
                            glowSizeMult * glowDiameter * 0.75F);
                    EngineGlow_hitGlowSprite.renderAtCenter(0.0F, 0.0F);
                }

                com.genir.renderer.bridge.commands.GL11.glEnable(3042);
                com.genir.renderer.bridge.commands.GL11.glPopMatrix();
            }
        }
    }

    public class EngineGlowState {
        public float EngineGlowState_textureU;
        public float EngineGlowState_angle;
        public float EngineGlowState_spread;
        public float EngineGlowState_glowLevel;
    }

    public enum EngineGlowType {
        EngineGlowType_NORMAL,
    }
}
