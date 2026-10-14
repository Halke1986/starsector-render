package com.fs.starfarer.combat.entities;

import com.fs.starfarer.api.characters.PersonAPI;
import com.fs.starfarer.api.combat.*;
import com.fs.starfarer.api.combat.listeners.CombatListenerManagerAPI;
import com.fs.starfarer.api.fleet.FleetMemberAPI;
import com.fs.starfarer.api.graphics.SpriteAPI;
import com.fs.starfarer.api.loading.WeaponSlotAPI;
import org.lwjgl.util.vector.Vector2f;

import java.awt.*;
import java.util.EnumSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class Ship implements ShipAPI {
    @Override
    public String getFleetMemberId() {
        return null;
    }

    @Override
    public Vector2f getMouseTarget() {
        return null;
    }

    @Override
    public boolean isShuttlePod() {
        return false;
    }

    @Override
    public boolean isDrone() {
        return false;
    }

    @Override
    public boolean isFighter() {
        return false;
    }

    @Override
    public boolean isFrigate() {
        return false;
    }

    @Override
    public boolean isDestroyer() {
        return false;
    }

    @Override
    public boolean isCruiser() {
        return false;
    }

    @Override
    public boolean isCapital() {
        return false;
    }

    @Override
    public HullSize getHullSize() {
        return null;
    }

    @Override
    public ShipAPI getShipTarget() {
        return null;
    }

    @Override
    public void setShipTarget(ShipAPI shipAPI) {

    }

    @Override
    public int getOriginalOwner() {
        return 0;
    }

    @Override
    public void setOriginalOwner(int i) {

    }

    @Override
    public void resetOriginalOwner() {

    }

    @Override
    public MutableShipStatsAPI getMutableStats() {
        return null;
    }

    @Override
    public boolean isHulk() {
        return false;
    }

    @Override
    public List<WeaponAPI> getAllWeapons() {
        return null;
    }

    @Override
    public ShipSystemAPI getPhaseCloak() {
        return null;
    }

    @Override
    public ShipSystemAPI getSystem() {
        return null;
    }

    @Override
    public ShipSystemAPI getTravelDrive() {
        return null;
    }

    @Override
    public void toggleTravelDrive() {

    }

    @Override
    public void setShield(ShieldAPI.ShieldType shieldType, float v, float v1, float v2) {

    }

    @Override
    public ShipHullSpecAPI getHullSpec() {
        return null;
    }

    @Override
    public ShipVariantAPI getVariant() {
        return null;
    }

    @Override
    public void useSystem() {

    }

    @Override
    public FluxTrackerAPI getFluxTracker() {
        return null;
    }

    @Override
    public List<ShipAPI> getWingMembers() {
        return null;
    }

    @Override
    public ShipAPI getWingLeader() {
        return null;
    }

    @Override
    public boolean isWingLeader() {
        return false;
    }

    @Override
    public FighterWingAPI getWing() {
        return null;
    }

    @Override
    public List<ShipAPI> getDeployedDrones() {
        return null;
    }

    @Override
    public ShipAPI getDroneSource() {
        return null;
    }

    @Override
    public Object getWingToken() {
        return null;
    }

    @Override
    public ArmorGridAPI getArmorGrid() {
        return null;
    }

    @Override
    public void setRenderBounds(boolean b) {

    }

    @Override
    public void setCRAtDeployment(float v) {

    }

    @Override
    public float getCRAtDeployment() {
        return 0;
    }

    @Override
    public float getCurrentCR() {
        return 0;
    }

    @Override
    public void setCurrentCR(float v) {

    }

    @Override
    public float getWingCRAtDeployment() {
        return 0;
    }

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
    public float getTimeDeployedForCRReduction() {
        return 0;
    }

    @Override
    public float getFullTimeDeployed() {
        return 0;
    }

    @Override
    public boolean losesCRDuringCombat() {
        return false;
    }

    @Override
    public boolean controlsLocked() {
        return false;
    }

    @Override
    public void setControlsLocked(boolean b) {

    }

    @Override
    public void setShipSystemDisabled(boolean b) {

    }

    @Override
    public Set<WeaponAPI> getDisabledWeapons() {
        return null;
    }

    @Override
    public int getNumFlameouts() {
        return 0;
    }

    @Override
    public float getHullLevelAtDeployment() {
        return 0;
    }

    @Override
    public void setSprite(String s, String s1) {

    }

    @Override
    public SpriteAPI getSpriteAPI() {
        return null;
    }

    @Override
    public ShipEngineControllerAPI getEngineController() {
        return null;
    }

    @Override
    public void giveCommand(ShipCommand shipCommand, Object o, int i) {

    }

    @Override
    public void setShipAI(ShipAIPlugin shipAIPlugin) {

    }

    @Override
    public ShipAIPlugin getShipAI() {
        return null;
    }

    @Override
    public void resetDefaultAI() {

    }

    @Override
    public void turnOnTravelDrive() {

    }

    @Override
    public void turnOnTravelDrive(float v) {

    }

    @Override
    public void turnOffTravelDrive() {

    }

    @Override
    public boolean isRetreating() {
        return false;
    }

    @Override
    public void abortLanding() {

    }

    @Override
    public void beginLandingAnimation(ShipAPI shipAPI) {

    }

    @Override
    public boolean isLanding() {
        return false;
    }

    @Override
    public boolean isFinishedLanding() {
        return false;
    }

    @Override
    public boolean isAlive() {
        return false;
    }

    @Override
    public boolean isInsideNebula() {
        return false;
    }

    @Override
    public void setInsideNebula(boolean b) {

    }

    @Override
    public boolean isAffectedByNebula() {
        return false;
    }

    @Override
    public void setAffectedByNebula(boolean b) {

    }

    @Override
    public float getDeployCost() {
        return 0;
    }

    @Override
    public void removeWeaponFromGroups(WeaponAPI weaponAPI) {

    }

    @Override
    public void applyCriticalMalfunction(Object o) {

    }

    @Override
    public float getBaseCriticalMalfunctionDamage() {
        return 0;
    }

    @Override
    public float getEngineFractionPermanentlyDisabled() {
        return 0;
    }

    @Override
    public float getCombinedAlphaMult() {
        return 0;
    }

    @Override
    public float getLowestHullLevelReached() {
        return 0;
    }

    @Override
    public ShipwideAIFlags getAIFlags() {
        return null;
    }

    @Override
    public List<WeaponGroupAPI> getWeaponGroupsCopy() {
        return null;
    }

    @Override
    public boolean isHoldFire() {
        return false;
    }

    @Override
    public boolean isHoldFireOneFrame() {
        return false;
    }

    @Override
    public void setHoldFireOneFrame(boolean b) {

    }

    @Override
    public boolean isPhased() {
        return false;
    }

    @Override
    public boolean isAlly() {
        return false;
    }

    @Override
    public void setWeaponGlow(float v, Color color, EnumSet<WeaponAPI.WeaponType> enumSet) {

    }

    @Override
    public void setVentCoreColor(Color color) {

    }

    @Override
    public void setVentFringeColor(Color color) {

    }

    @Override
    public Color getVentCoreColor() {
        return null;
    }

    @Override
    public Color getVentFringeColor() {
        return null;
    }

    @Override
    public String getHullStyleId() {
        return null;
    }

    @Override
    public WeaponGroupAPI getWeaponGroupFor(WeaponAPI weaponAPI) {
        return null;
    }

    @Override
    public void setCopyLocation(Vector2f vector2f, float v, float v1) {

    }

    @Override
    public Vector2f getCopyLocation() {
        return null;
    }

    @Override
    public void setAlly(boolean b) {

    }

    @Override
    public void applyCriticalMalfunction(Object o, boolean b) {

    }

    @Override
    public String getId() {
        return null;
    }

    @Override
    public String getName() {
        return null;
    }

    @Override
    public void setJitter(Object o, Color color, float v, int i, float v1) {

    }

    @Override
    public void setJitterUnder(Object o, Color color, float v, int i, float v1) {

    }

    @Override
    public void setJitter(Object o, Color color, float v, int i, float v1, float v2) {

    }

    @Override
    public void setJitterUnder(Object o, Color color, float v, int i, float v1, float v2) {

    }

    @Override
    public float getTimeDeployedUnderPlayerControl() {
        return 0;
    }

    @Override
    public SpriteAPI getSmallTurretCover() {
        return null;
    }

    @Override
    public SpriteAPI getSmallHardpointCover() {
        return null;
    }

    @Override
    public SpriteAPI getMediumTurretCover() {
        return null;
    }

    @Override
    public SpriteAPI getMediumHardpointCover() {
        return null;
    }

    @Override
    public SpriteAPI getLargeTurretCover() {
        return null;
    }

    @Override
    public SpriteAPI getLargeHardpointCover() {
        return null;
    }

    @Override
    public boolean isDefenseDisabled() {
        return false;
    }

    @Override
    public void setDefenseDisabled(boolean b) {

    }

    @Override
    public void setPhased(boolean b) {

    }

    @Override
    public void setExtraAlphaMult(float v) {

    }

    @Override
    public void setApplyExtraAlphaToEngines(boolean b) {

    }

    @Override
    public void setOverloadColor(Color color) {

    }

    @Override
    public void resetOverloadColor() {

    }

    @Override
    public Color getOverloadColor() {
        return null;
    }

    @Override
    public boolean isRecentlyShotByPlayer() {
        return false;
    }

    @Override
    public float getMaxSpeedWithoutBoost() {
        return 0;
    }

    @Override
    public float getHardFluxLevel() {
        return 0;
    }

    @Override
    public void fadeToColor(Object o, Color color, float v, float v1, float v2) {

    }

    @Override
    public boolean isShowModuleJitterUnder() {
        return false;
    }

    @Override
    public void setShowModuleJitterUnder(boolean b) {

    }

    @Override
    public void addAfterimage(Color color, float v, float v1, float v2, float v3, float v4, float v5, float v6, float v7, boolean b, boolean b1, boolean b2) {

    }

    @Override
    public PersonAPI getCaptain() {
        return null;
    }

    @Override
    public WeaponSlotAPI getStationSlot() {
        return null;
    }

    @Override
    public void setStationSlot(WeaponSlotAPI weaponSlotAPI) {

    }

    @Override
    public ShipAPI getParentStation() {
        return null;
    }

    @Override
    public void setParentStation(ShipAPI shipAPI) {

    }

    @Override
    public Vector2f getFixedLocation() {
        return null;
    }

    @Override
    public void setFixedLocation(Vector2f vector2f) {

    }

    @Override
    public boolean hasRadarRibbonIcon() {
        return false;
    }

    @Override
    public boolean isTargetable() {
        return false;
    }

    @Override
    public void setStation(boolean b) {

    }

    @Override
    public boolean isSelectableInWarroom() {
        return false;
    }

    @Override
    public boolean isShipWithModules() {
        return false;
    }

    @Override
    public void setShipWithModules(boolean b) {

    }

    @Override
    public List<ShipAPI> getChildModulesCopy() {
        return null;
    }

    @Override
    public boolean isPiece() {
        return false;
    }

    @Override
    public BoundsAPI getVisualBounds() {
        return null;
    }

    @Override
    public Vector2f getRenderOffset() {
        return null;
    }

    @Override
    public ShipAPI splitShip() {
        return null;
    }

    @Override
    public int getNumFighterBays() {
        return 0;
    }

    @Override
    public boolean isPullBackFighters() {
        return false;
    }

    @Override
    public void setPullBackFighters(boolean b) {

    }

    @Override
    public boolean hasLaunchBays() {
        return false;
    }

    @Override
    public List<FighterLaunchBayAPI> getLaunchBaysCopy() {
        return null;
    }

    @Override
    public float getFighterTimeBeforeRefit() {
        return 0;
    }

    @Override
    public void setFighterTimeBeforeRefit(float v) {

    }

    @Override
    public List<FighterWingAPI> getAllWings() {
        return null;
    }

    @Override
    public float getSharedFighterReplacementRate() {
        return 0;
    }

    @Override
    public boolean areSignificantEnemiesInRange() {
        return false;
    }

    @Override
    public List<WeaponAPI> getUsableWeapons() {
        return null;
    }

    @Override
    public Vector2f getModuleOffset() {
        return null;
    }

    @Override
    public float getMassWithModules() {
        return 0;
    }

    @Override
    public PersonAPI getOriginalCaptain() {
        return null;
    }

    @Override
    public boolean isRenderEngines() {
        return false;
    }

    @Override
    public void setRenderEngines(boolean b) {

    }

    @Override
    public WeaponGroupAPI getSelectedGroupAPI() {
        return null;
    }

    @Override
    public void setHullSize(HullSize hullSize) {

    }

    @Override
    public void ensureClonedStationSlotSpec() {

    }

    @Override
    public void setMaxHitpoints(float v) {

    }

    @Override
    public void setDHullOverlay(String s) {

    }

    @Override
    public boolean isStation() {
        return false;
    }

    @Override
    public boolean isStationModule() {
        return false;
    }

    @Override
    public boolean areAnyEnemiesInRange() {
        return false;
    }

    @Override
    public void blockCommandForOneFrame(ShipCommand shipCommand) {

    }

    @Override
    public float getMaxTurnRate() {
        return 0;
    }

    @Override
    public float getTurnAcceleration() {
        return 0;
    }

    @Override
    public float getTurnDeceleration() {
        return 0;
    }

    @Override
    public float getDeceleration() {
        return 0;
    }

    @Override
    public float getAcceleration() {
        return 0;
    }

    @Override
    public float getMaxSpeed() {
        return 0;
    }

    @Override
    public float getFluxLevel() {
        return 0;
    }

    @Override
    public float getCurrFlux() {
        return 0;
    }

    @Override
    public float getMaxFlux() {
        return 0;
    }

    @Override
    public float getMinFluxLevel() {
        return 0;
    }

    @Override
    public float getMinFlux() {
        return 0;
    }

    @Override
    public void setLightDHullOverlay() {

    }

    @Override
    public void setMediumDHullOverlay() {

    }

    @Override
    public void setHeavyDHullOverlay() {

    }

    @Override
    public boolean isJitterShields() {
        return false;
    }

    @Override
    public void setJitterShields(boolean b) {

    }

    @Override
    public boolean isInvalidTransferCommandTarget() {
        return false;
    }

    @Override
    public void setInvalidTransferCommandTarget(boolean b) {

    }

    @Override
    public void clearDamageDecals() {

    }

    @Override
    public void syncWithArmorGridState() {

    }

    @Override
    public void syncWeaponDecalsWithArmorDamage() {

    }

    @Override
    public boolean isDirectRetreat() {
        return false;
    }

    @Override
    public void setRetreating(boolean b, boolean b1) {

    }

    @Override
    public boolean isLiftingOff() {
        return false;
    }

    @Override
    public void setVariantForHullmodCheckOnly(ShipVariantAPI shipVariantAPI) {

    }

    @Override
    public Vector2f getShieldCenterEvenIfNoShield() {
        return null;
    }

    @Override
    public float getShieldRadiusEvenIfNoShield() {
        return 0;
    }

    @Override
    public FleetMemberAPI getFleetMember() {
        return null;
    }

    @Override
    public Vector2f getShieldTarget() {
        return null;
    }

    @Override
    public void setShieldTargetOverride(float v, float v1) {

    }

    @Override
    public CombatListenerManagerAPI getListenerManager() {
        return null;
    }

    @Override
    public void addListener(Object o) {

    }

    @Override
    public void removeListener(Object o) {

    }

    @Override
    public void removeListenerOfClass(Class<?> aClass) {

    }

    @Override
    public boolean hasListener(Object o) {
        return false;
    }

    @Override
    public boolean hasListenerOfClass(Class<?> aClass) {
        return false;
    }

    @Override
    public <T> List<T> getListeners(Class<T> aClass) {
        return null;
    }

    @Override
    public Object getParamAboutToApplyDamage() {
        return null;
    }

    @Override
    public void setParamAboutToApplyDamage(Object o) {

    }

    @Override
    public float getFluxBasedEnergyWeaponDamageMultiplier() {
        return 0;
    }

    @Override
    public void setName(String s) {

    }

    @Override
    public void setHulk(boolean b) {

    }

    @Override
    public void setCaptain(PersonAPI personAPI) {

    }

    @Override
    public float getShipExplosionRadius() {
        return 0;
    }

    @Override
    public void setCircularJitter(boolean b) {

    }

    @Override
    public float getExtraAlphaMult() {
        return 0;
    }

    @Override
    public void setAlphaMult(float v) {

    }

    @Override
    public float getAlphaMult() {
        return 0;
    }

    @Override
    public void setAnimatedLaunch() {

    }

    @Override
    public void setLaunchingShip(ShipAPI shipAPI) {

    }

    @Override
    public boolean isNonCombat(boolean b) {
        return false;
    }

    @Override
    public float findBestArmorInArc(float v, float v1) {
        return 0;
    }

    @Override
    public float getAverageArmorInSlice(float v, float v1) {
        return 0;
    }

    @Override
    public void setHoldFire(boolean b) {

    }

    @Override
    public void cloneVariant() {

    }

    @Override
    public void setTimeDeployed(float v) {

    }

    @Override
    public void setFluxVentTextureSheet(String s) {

    }

    @Override
    public String getFluxVentTextureSheet() {
        return null;
    }

    @Override
    public float getAimAccuracy() {
        return 0;
    }

    @Override
    public float getForceCarrierTargetTime() {
        return 0;
    }

    @Override
    public void setForceCarrierTargetTime(float v) {

    }

    @Override
    public float getForceCarrierPullBackTime() {
        return 0;
    }

    @Override
    public void setForceCarrierPullBackTime(float v) {

    }

    @Override
    public ShipAPI getForceCarrierTarget() {
        return null;
    }

    @Override
    public void setForceCarrierTarget(ShipAPI shipAPI) {

    }

    @Override
    public void setWing(FighterWingAPI fighterWingAPI) {

    }

    @Override
    public float getExplosionScale() {
        return 0;
    }

    @Override
    public void setExplosionScale(float v) {

    }

    @Override
    public Color getExplosionFlashColorOverride() {
        return null;
    }

    @Override
    public void setExplosionFlashColorOverride(Color color) {

    }

    @Override
    public Vector2f getExplosionVelocityOverride() {
        return null;
    }

    @Override
    public void setExplosionVelocityOverride(Vector2f vector2f) {

    }

    @Override
    public void setNextHitHullDamageThresholdMult(float v, float v1) {

    }

    @Override
    public boolean isEngineBoostActive() {
        return false;
    }

    @Override
    public void makeLookDisabled() {

    }

    @Override
    public void setExtraAlphaMult2(float v) {

    }

    @Override
    public float getExtraAlphaMult2() {
        return 0;
    }

    @Override
    public void setDrone(boolean b) {

    }

    @Override
    public CombatEngineLayers getLayer() {
        return null;
    }

    @Override
    public void setLayer(CombatEngineLayers combatEngineLayers) {

    }

    @Override
    public boolean isForceHideFFOverlay() {
        return false;
    }

    @Override
    public void setForceHideFFOverlay(boolean b) {

    }

    @Override
    public Set<String> getTags() {
        return null;
    }

    @Override
    public void addTag(String s) {

    }

    @Override
    public boolean hasTag(String s) {
        return false;
    }

    @Override
    public void setSprite(SpriteAPI spriteAPI) {

    }

    @Override
    public float getPeakTimeRemaining() {
        return 0;
    }

    @Override
    public EnumSet<CombatEngineLayers> getActiveLayers() {
        return null;
    }

    @Override
    public boolean isShipSystemDisabled() {
        return false;
    }

    @Override
    public boolean isDoNotFlareEnginesWhenStrafingOrDecelerating() {
        return false;
    }

    @Override
    public void setDoNotFlareEnginesWhenStrafingOrDecelerating(boolean b) {

    }

    @Override
    public PersonAPI getFleetCommander() {
        return null;
    }

    @Override
    public boolean isDoNotRender() {
        return false;
    }

    @Override
    public void setDoNotRender(boolean b) {

    }

    @Override
    public float getHulkChanceOverride() {
        return 0;
    }

    @Override
    public void setHulkChanceOverride(float v) {

    }

    @Override
    public float getImpactVolumeMult() {
        return 0;
    }

    @Override
    public void setImpactVolumeMult(float v) {

    }

    @Override
    public Vector2f checkCollisionVsRay(Vector2f vector2f, Vector2f vector2f1) {
        return null;
    }

    @Override
    public boolean isPointInBounds(Vector2f vector2f) {
        return false;
    }

    @Override
    public boolean wasRemoved() {
        return false;
    }

    @Override
    public boolean isSpawnDebris() {
        return false;
    }

    @Override
    public void setSpawnDebris(boolean b) {

    }

    @Override
    public float getDHullOverlayAngleOffset() {
        return 0;
    }

    @Override
    public void setDHullOverlayAngleOffset(float v) {

    }

    @Override
    public float getExtraOverlayAngleOffset() {
        return 0;
    }

    @Override
    public void setExtraOverlayAngleOffset(float v) {

    }

    @Override
    public void setExtraOverlay(String s) {

    }

    @Override
    public float getExtraOverlayShadowOpacity() {
        return 0;
    }

    @Override
    public void setExtraOverlayShadowOpacity(float v) {

    }

    @Override
    public boolean isExtraOverlayMatchHullColor() {
        return false;
    }

    @Override
    public void setExtraOverlayMatchHullColor(boolean b) {

    }

    @Override
    public void resetSelectedGroup() {

    }

    @Override
    public void removeTag(String s) {

    }

    @Override
    public boolean isSkipNextDamagedExplosion() {
        return false;
    }

    @Override
    public void setSkipNextDamagedExplosion(boolean b) {

    }

    @Override
    public void setDefaultAI(FleetMemberAPI fleetMemberAPI) {

    }

    @Override
    public boolean isNoDamagedExplosions() {
        return false;
    }

    @Override
    public void setNoDamagedExplosions(boolean b) {

    }

    @Override
    public boolean isDoNotRenderSprite() {
        return false;
    }

    @Override
    public void setDoNotRenderSprite(boolean b) {

    }

    @Override
    public boolean isDoNotRenderShield() {
        return false;
    }

    @Override
    public void setDoNotRenderShield(boolean b) {

    }

    @Override
    public boolean isDoNotRenderWeapons() {
        return false;
    }

    @Override
    public void setDoNotRenderWeapons(boolean b) {

    }

    @Override
    public void setDoNotRenderVentingAnimation(boolean b) {

    }

    @Override
    public boolean isDoNotRenderVentingAnimation() {
        return false;
    }

    @Override
    public String getShipCollisionSoundOverride() {
        return null;
    }

    @Override
    public void setShipCollisionSoundOverride(String s) {

    }

    @Override
    public String getAsteroidCollisionSoundOverride() {
        return null;
    }

    @Override
    public void setAsteroidCollisionSoundOverride(String s) {

    }

    @Override
    public String getParentPieceId() {
        return null;
    }

    @Override
    public void setParentPieceId(String s) {

    }

    @Override
    public void applyEffectsAfterShipAddedToCombatEngine() {

    }

    @Override
    public float getSinceLastDamageTaken() {
        return 0;
    }

    @Override
    public boolean isNoMuzzleFlash() {
        return false;
    }

    @Override
    public void setNoMuzzleFlash(boolean b) {

    }

    @Override
    public boolean isBeingIgnored() {
        return false;
    }

    @Override
    public void setBeingIgnored(boolean b) {

    }

    @Override
    public void setLowestHullLevelReached(float v) {

    }

    @Override
    public void setFleetMember(FleetMemberAPI fleetMemberAPI) {

    }
}
