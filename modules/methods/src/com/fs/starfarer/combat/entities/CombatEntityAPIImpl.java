package com.fs.starfarer.combat.entities;

import com.fs.starfarer.api.combat.BoundsAPI;
import com.fs.starfarer.api.combat.CollisionClass;
import com.fs.starfarer.api.combat.CombatEntityAPI;
import com.fs.starfarer.api.combat.ShieldAPI;
import org.lwjgl.util.vector.Vector2f;

import java.util.Map;

public class CombatEntityAPIImpl implements CombatEntityAPI {
    @Override
    public Vector2f getLocation() {
        return null;
    }

    @Override
    public Vector2f getVelocity() {
        return null;
    }

    @Override
    public float getFacing() {
        return 0;
    }

    @Override
    public void setFacing(float v) {

    }

    @Override
    public float getAngularVelocity() {
        return 0;
    }

    @Override
    public void setAngularVelocity(float v) {

    }

    @Override
    public int getOwner() {
        return 0;
    }

    @Override
    public void setOwner(int i) {

    }

    @Override
    public float getCollisionRadius() {
        return 0;
    }

    @Override
    public CollisionClass getCollisionClass() {
        return null;
    }

    @Override
    public void setCollisionClass(CollisionClass collisionClass) {

    }

    @Override
    public float getMass() {
        return 0;
    }

    @Override
    public void setMass(float v) {

    }

    @Override
    public BoundsAPI getExactBounds() {
        return null;
    }

    @Override
    public ShieldAPI getShield() {
        return null;
    }

    @Override
    public float getHullLevel() {
        return 0;
    }

    @Override
    public float getHitpoints() {
        return 0;
    }

    @Override
    public float getMaxHitpoints() {
        return 0;
    }

    @Override
    public void setCollisionRadius(float v) {

    }

    @Override
    public Object getAI() {
        return null;
    }

    @Override
    public boolean isExpired() {
        return false;
    }

    @Override
    public void setCustomData(String s, Object o) {

    }

    @Override
    public void removeCustomData(String s) {

    }

    @Override
    public Map<String, Object> getCustomData() {
        return null;
    }

    @Override
    public void setHitpoints(float v) {

    }

    @Override
    public boolean isPointInBounds(Vector2f vector2f) {
        return false;
    }

    @Override
    public boolean wasRemoved() {
        return false;
    }
}
