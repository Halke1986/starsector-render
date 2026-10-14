package com.fs.starfarer.combat.entities.ship;

import com.fs.starfarer.api.combat.ShipAPI;
import com.fs.starfarer.loading.specs.EngineSlot;
import org.lwjgl.util.vector.Vector2f;

import java.util.List;

// $FF: renamed from: com.fs.starfarer.combat.entities.ship.null.Oo
public class ShipEngineController {
    // $FF: renamed from: com.fs.starfarer.combat.entities.ship.null.Oo
    public interface Delegate {
        Vector2f getVelocity();

        Vector2f getLocation();

        float getAngularVelocity();

        void setAngularVelocity(float var1);

        float getFacing();

        boolean isHulk();

        boolean isMissile();

        boolean isFighter();

        boolean isShip();

        float getMaxHitpoints();

        List<EngineSlot> getEngineLocations();

        float getCollisionRadius();

        boolean isEngineBoostActive();

        boolean isStation();

        ShipAPI.HullSize getHullSize();

        // HullStyle getHullStyle();

        boolean isWingLeader();

        boolean isRecentlyShotByPlayer();

        boolean isDrone();

        boolean isDoNotFlareEnginesWhenStrafingOrDecelerating();

        float getEngineBoostLevel();

        // MutableShipStats getStats();
    }
}
