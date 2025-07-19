package com.fs.starfarer.combat;

import com.fs.starfarer.api.combat.ViewportAPI;
import org.lwjgl.util.vector.Vector2f;

public class CombatViewportAPIImlp implements ViewportAPI {
    @Override
    public boolean isNearViewport(Vector2f vector2f, float v) {
        return false;
    }

    @Override
    public Vector2f getCenter() {
        return null;
    }

    @Override
    public float getLLX() {
        return 0;
    }

    @Override
    public float getLLY() {
        return 0;
    }

    @Override
    public float getVisibleWidth() {
        return 0;
    }

    @Override
    public float getVisibleHeight() {
        return 0;
    }

    @Override
    public float getWorldXtoScreenX() {
        return 0;
    }

    @Override
    public float getWorldYtoScreenY() {
        return 0;
    }

    @Override
    public float getViewMult() {
        return 0;
    }

    @Override
    public float getAlphaMult() {
        return 0;
    }

    @Override
    public float convertScreenXToWorldX(float v) {
        return 0;
    }

    @Override
    public float convertScreenYToWorldY(float v) {
        return 0;
    }

    @Override
    public float convertWorldXtoScreenX(float v) {
        return 0;
    }

    @Override
    public float convertWorldYtoScreenY(float v) {
        return 0;
    }

    @Override
    public float convertWorldWidthToScreenWidth(float v) {
        return 0;
    }

    @Override
    public float convertWorldHeightToScreenHeight(float v) {
        return 0;
    }

    @Override
    public float convertScreenWidthToWorldWidth(float v) {
        return 0;
    }

    @Override
    public float convertScreenHeightToWorldHeight(float v) {
        return 0;
    }

    @Override
    public void set(float v, float v1, float v2, float v3) {

    }

    @Override
    public void setViewMult(float v) {

    }

    @Override
    public boolean isExternalControl() {
        return false;
    }

    @Override
    public void setExternalControl(boolean b) {

    }

    @Override
    public void setCenter(Vector2f vector2f) {

    }

    @Override
    public void setAlphaMult(float v) {

    }

    @Override
    public boolean isEverythingNearViewport() {
        return false;
    }

    @Override
    public void setEverythingNearViewport(boolean b) {

    }
}
