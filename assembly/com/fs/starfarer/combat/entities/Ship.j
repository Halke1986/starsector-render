.version 61 0 
.class public super com/fs/starfarer/combat/entities/Ship 
.super com/fs/starfarer/combat/entities/BaseEntity 
.implements com/fs/graphics/LayeredRenderable 
.implements com/fs/starfarer/combat/entities/ship/null$Oo 
.implements com/fs/starfarer/combat/entities/ship/D$o 
.implements com/fs/starfarer/renderers/damage/I$o 
.implements com/fs/starfarer/combat/ai/o0oO 
.implements com/fs/starfarer/api/combat/ShipAPI 
.implements com/fs/starfarer/combat/new/OoOO$o 
.implements java/lang/Cloneable 
.implements com/fs/starfarer/combat/entities/C 
.field public static INPUT_BUFFER_DELAY F 
.field private afterimages Ljava/util/List; .fieldattributes 
    .signature Ljava/util/List<Lcom/fs/starfarer/combat/entities/Ship$o;>; 
.end fieldattributes 
.field private static final VERTICAL_LIFT_RATE F = +75.0f 
.field private static final LAUNCH_DURATION F = +1.0f 
.field private static final MAX_LIFT F = +112.5f 
.field private static final LAUNCH_SHADOW_FULL F = +2.0f 
.field private static final LAUNCH_SHADOW_FADE F = +1.0f 
.field private id Ljava/lang/String; 
.field private ignoresMapBounds Z 
.field private engineController Lcom/fs/starfarer/combat/entities/ship/null; 
.field private armorGrid Lcom/fs/starfarer/combat/entities/ship/new; 
.field private decalRenderer Lcom/fs/starfarer/renderers/damage/String; 
.field private empDecal Lcom/fs/starfarer/renderers/damage/I; 
.field private ventingAnimation Lcom/fs/starfarer/renderers/oOoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO; 
.field private engineLocations Ljava/util/List; .fieldattributes 
    .signature Ljava/util/List<Lcom/fs/starfarer/loading/specs/EngineSlot;>; 
.end fieldattributes 
.field private modules Ljava/util/List; .fieldattributes 
    .signature Ljava/util/List<Lcom/fs/starfarer/combat/entities/ship/A/OooO;>; 
.end fieldattributes 
.field private launchBays Ljava/util/List; .fieldattributes 
    .signature Ljava/util/List<Lcom/fs/starfarer/combat/entities/ship/A/C;>; 
.end fieldattributes 
.field private groups Ljava/util/List; .fieldattributes 
    .signature Ljava/util/List<Lcom/fs/starfarer/combat/systems/WeaponGroup;>; 
.end fieldattributes 
.field private selected Lcom/fs/starfarer/combat/systems/WeaponGroup; 
.field private sprite Lcom/fs/graphics/Sprite; 
.field private shadow Lcom/fs/graphics/Sprite; 
.field private ffInd Lcom/fs/starfarer/renderers/OOoO; 
.field private maxViewOffset F 
.field private mouseTarget Lorg/lwjgl/util/vector/Vector2f; 
.field private shieldTarget Lorg/lwjgl/util/vector/Vector2f; 
.field private shipTarget Lcom/fs/starfarer/combat/entities/Ship; 
.field private fighterWaypoint Lorg/lwjgl/util/vector/Vector2f; 
.field private spec Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
.field private colorFader Lcom/fs/graphics/util/Fader; 
.field private fadeToColor Ljava/awt/Color; 
.field private currColor Ljava/awt/Color; 
.field private name Ljava/lang/String; 
.field private overkill F 
.field private sinceLastDamageTaken F 
.field private sinceLastShieldDamageTaken F 
.field private fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
.field private wing Lcom/fs/starfarer/combat/ai/M; 
.field private layer Lcom/fs/starfarer/api/combat/CombatEngineLayers; 
.field private hullSize Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
.field private stats Lcom/fs/starfarer/combat/entities/ship/o0OO; 
.field private originalOwner I 
.field private holdFire Z 
.field private holdFireOneFrame Z 
.field public static FLUX_PER_CAPACITOR F 
.field public static DISSIPATION_PER_VENT F 
.field private aimAccuracy F 
.field private armorEvaluator Lcom/fs/starfarer/combat/ai/super; 
.field private system Lcom/fs/starfarer/combat/systems/F; 
.field private phaseCloak Lcom/fs/starfarer/combat/systems/F; 
.field private travelDrive Lcom/fs/starfarer/combat/systems/F; 
.field private blockedCommands Ljava/util/EnumSet; .fieldattributes 
    .signature Ljava/util/EnumSet<Lcom/fs/starfarer/combat/entities/Ship$oo;>; 
.end fieldattributes 
.field private phased Z 
.field private isDrone Z 
.field private setModuleFacings Z 
.field private fleetMemberId Ljava/lang/String; 
.field private captain Lcom/fs/starfarer/rpg/Person; 
.field private originalCaptain Lcom/fs/starfarer/rpg/Person; 
.field private fleetCommander Lcom/fs/starfarer/rpg/Person; 
.field private crAtDeployment F 
.field private currentCR F 
.field private timeDeployed F 
.field private fullTimeDeployed F 
.field private timeDeployedUnderPlayerControl F 
.field private sinceTimeIncrease F 
.field private hullLevelAtDeployment F 
.field private lowestHullLevelReached F 
.field private wasNudged Z 
.field private crMalfunctionThreshold F 
.field private crCritMalfunctionThreshold F 
.field private playedWarnSound Z 
.field private playedMalfSound Z 
.field private playedCritMalfSound Z 
.field private baseCriticalMalfunctionDamage F 
.field private remainingCriticalMalfunctionAttempts F 
.field private engineFractionPermanentlyDisabled F 
.field private shieldMalfunctionTracker Lcom/fs/starfarer/util/IntervalTracker; 
.field private minTimeBeforeReport F 
.field private peakActiveTracker Lcom/fs/starfarer/util/IntervalTracker; 
.field private enemyShipInRange Z 
.field private travelDriveCollisionTestTracker Lcom/fs/starfarer/util/IntervalTracker; 
.field private visualBounds Lcom/fs/starfarer/combat/E/o0OO; 
.field private decalBounds Lcom/fs/starfarer/combat/E/o0OO; 
.field private isPiece Z 
.field private renderOffset Lorg/lwjgl/util/vector/Vector2f; 
.field private moduleOffset Lorg/lwjgl/util/vector/Vector2f; 
.field private breakingAnimation Lcom/fs/starfarer/combat/entities/H; 
.field private fighterTimeBeforeRefit F 
.field private timeBeforeFade F 
.field private hulkFader Lcom/fs/graphics/util/Fader; 
.field private dHullOverlay Lcom/fs/graphics/Sprite; 
.field private dHullOverlayAngleOffset F 
.field private extraOverlay Lcom/fs/graphics/Sprite; 
.field private extraOverlayAngleOffset F 
.field private extraOverlayShadowOpacity F 
.field private extraOverlayMatchHullColor Z 
.field private invalidTransferCommandTarget Z 
.field private isStation Z 
.field private isShipWithModules Z 
.field private parentPieceId Ljava/lang/String; 
.field private appliedAfterAddEffects Z 
.field private fallbackPersonalityId Ljava/lang/String; 
.field private shipColor Lcom/fs/starfarer/util/ColorShifter; 
.field private lastFriendlyTarget Lcom/fs/starfarer/combat/entities/Ship; 
.field private elapsedSinceRaiseShieldsWhileOverloaded F 
.field private commands Ljava/util/List; .fieldattributes 
    .signature Ljava/util/List<Lcom/fs/starfarer/combat/entities/Ship$Oo;>; 
.end fieldattributes 
.field private pullBackFighters Z 
.field private launchingShip Lcom/fs/starfarer/combat/entities/Ship; 
.field private sinceLaunch F 
.field private isLiftingOffOrLanding Z 
.field private isAnimatedLaunch Z 
.field private isLanding Z 
.field private travelDriveWasOn Z 
.field private travelDriveDir F 
.field private remainingDriveDur F 
.field private computedAlly Z 
.field private isAlly Z 
.field private computedFleetMember Z 
.field private fleetMember Lcom/fs/starfarer/api/fleet/FleetMemberAPI; 
.field private savedVel Lorg/lwjgl/util/vector/Vector2f; 
.field private savedAngVel F 
.field private fixedLocation Lorg/lwjgl/util/vector/Vector2f; 
.field private anyEnemiesInRange Z 
.field private significantEnemiesInRange Z 
.field private sinceVisible F 
.field private forceCarrierTargetTime F 
.field private forceCarrierPullBackTime F 
.field private forceCarrierTarget Lcom/fs/starfarer/api/combat/ShipAPI; 
.field private alphaMult F 
.field private extraAlphaMult2 F 
.field private extraAlphaMult F 
.field private applyExtraAlphaToEngines Z 
.field private copyLocation Lorg/lwjgl/util/vector/Vector2f; 
.field private copyAlpha F 
.field private copyFacing F 
.field private jitter Lcom/fs/starfarer/renderers/JitterRenderer; 
.field private jitterShields Z 
.field private jitterEffectColorShifter Lcom/fs/starfarer/util/ColorShifter; 
.field private jitterEffectIntensityShifter Lcom/fs/starfarer/util/ValueShifter; 
.field private jitterCopiesShifter Lcom/fs/starfarer/util/ValueShifter; 
.field private jitterMinRangeShifter Lcom/fs/starfarer/util/ValueShifter; 
.field private jitterRangeShifter Lcom/fs/starfarer/util/ValueShifter; 
.field private jitterUnder Lcom/fs/starfarer/renderers/JitterRenderer; 
.field private jitterUnderEffectColorShifter Lcom/fs/starfarer/util/ColorShifter; 
.field private jitterUnderEffectIntensityShifter Lcom/fs/starfarer/util/ValueShifter; 
.field private jitterUnderCopiesShifter Lcom/fs/starfarer/util/ValueShifter; 
.field private jitterUnderMinRangeShifter Lcom/fs/starfarer/util/ValueShifter; 
.field private jitterUnderRangeShifter Lcom/fs/starfarer/util/ValueShifter; 
.field private visible Z 
.field private showModuleJitterUnder Z 
.field private smallT Lcom/fs/graphics/Sprite; 
.field private smallH Lcom/fs/graphics/Sprite; 
.field private mediumT Lcom/fs/graphics/Sprite; 
.field private mediumH Lcom/fs/graphics/Sprite; 
.field private largeT Lcom/fs/graphics/Sprite; 
.field private largeH Lcom/fs/graphics/Sprite; 
.field private refitMode Z 
.field private impactVolumeMult F 
.field private doNotRenderVentingAnimation Z 
.field private doNotRenderSprite Z 
.field private doNotRenderShield Z 
.field private doNotRenderWeapons Z 
.field private noMuzzleFlash Z 
.field private doNotRender Z 
.field private combinedAlphaMult F 
.field private renderBounds Z 
.field private weaponsToRemove Ljava/util/List; .fieldattributes 
    .signature Ljava/util/List<Lcom/fs/starfarer/api/combat/WeaponAPI;>; 
.end fieldattributes 
.field private needsWeaponGroupUIUpdate Z 
.field private shield Lcom/fs/starfarer/combat/systems/G; 
.field private childModules Ljava/util/List; .fieldattributes 
    .signature Ljava/util/List<Lcom/fs/starfarer/combat/entities/Ship;>; 
.end fieldattributes 
.field private stationSlot Lcom/fs/starfarer/loading/specs/nullsuper; 
.field private station Lcom/fs/starfarer/combat/entities/Ship; 
.field private cloned Z 
.field private static ATTACK_HULKS Z 
.field private expired Z 
.field private static final RECENTLY_DAMAGED_THRESHOLD F = +3.0f 
.field private sinceDamagedByPlayer F 
.field private isHulk Z 
.field private renderEngines Z 
.field private renderEnginesUnder Z 
.field private wasDestroyed Z 
.field private destroyable Z 
.field private suppressFloaties Z 
.field private statistics Lcom/fs/starfarer/combat/entities/I; 
.field private spawnDebris Z 
.field private paramAboutToApplyDamage Ljava/lang/Object; 
.field private hullDamageThreshold F 
.field private hullDamageBeyondThresholdMult F 
.field private hulkChanceOverride F 
.field private explosionVelocityOverride Lorg/lwjgl/util/vector/Vector2f; 
.field private explosionScale F 
.field private explosionFlashColorOverride Ljava/awt/Color; 
.field public static final SMALL_EXPLOSION_DAMAGE I = 300 
.field public static final MEDIUM_EXPLOSION_DAMAGE I = 400 
.field public static final LARGE_EXPLOSION_DAMAGE I = 600 
.field public static final ALWAYS_EXPLODE_THRESHOLD I = 150 
.field private noDamagedExplosions Z 
.field private skipNextDamagedExplosion Z 
.field private accumulatedDamageForExplosion F 
.field private layers Ljava/util/EnumSet; .fieldattributes 
    .signature Ljava/util/EnumSet<Lcom/fs/starfarer/api/combat/CombatEngineLayers;>; 
.end fieldattributes 
.field private phase Ljava/lang/Boolean; 
.field private retreating Z 
.field private directRetreat Z 
.field private isInsideNebula Z 
.field private affectedByNebula Z 
.field private controlsLocked Z 
.field private controlsNotLocked Z 
.field private disabledWeapons Ljava/util/Set; .fieldattributes 
    .signature Ljava/util/Set<Lcom/fs/starfarer/api/combat/WeaponAPI;>; 
.end fieldattributes 
.field private numFlameouts I 
.field private systemDisabled Z 
.field private defenseDisabled Z 
.field private weaponActiveThisFrame Z 
.field private busyLaunchBays I 
.field private effect Lcom/fs/starfarer/api/combat/CombatReadinessPlugin; 
.field private dHullOverlaySize F 
.field private extraOverlaySize F 
.field private listenerManager Lcom/fs/starfarer/combat/O; 
.field protected forceHideFFOverlay Z 
.field private tags Ljava/util/Set; .fieldattributes 
    .signature Ljava/util/Set<Ljava/lang/String;>; 
.end fieldattributes 
.field private doNotFlareEngines Z 
.field private shipCollisionSoundOverride Ljava/lang/String; 
.field private asteroidCollisionSoundOverride Ljava/lang/String; 
.field private beingIgnored Z 
.field private static volatile synthetic $SWITCH_TABLE$com$fs$starfarer$api$combat$ShipCommand [I 
.field private static volatile synthetic $SWITCH_TABLE$com$fs$starfarer$combat$entities$Ship$CommandType [I 
.field private static volatile synthetic $SWITCH_TABLE$com$fs$starfarer$api$combat$WeaponAPI$WeaponSize [I 
.field private static volatile synthetic $SWITCH_TABLE$com$fs$starfarer$api$combat$DamageType [I 
.field private static volatile synthetic $SWITCH_TABLE$com$fs$starfarer$api$combat$ShipAPI$HullSize [I 

.method static <clinit> : ()V 
    .code stack 1 locals 0 
L0:     ldc_w +0.20000000298023224f 
L3:     putstatic Field com/fs/starfarer/combat/entities/Ship INPUT_BUFFER_DELAY F 
L6:     ldc_w 'fluxPerCapacitor' 
L9:     invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'ö00000' (Ljava/lang/String;)F 
L12:    putstatic Field com/fs/starfarer/combat/entities/Ship FLUX_PER_CAPACITOR F 
L15:    ldc_w 'dissipationPerVent' 
L18:    invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'ö00000' (Ljava/lang/String;)F 
L21:    putstatic Field com/fs/starfarer/combat/entities/Ship DISSIPATION_PER_VENT F 
L24:    iconst_0 
L25:    putstatic Field com/fs/starfarer/combat/entities/Ship ATTACK_HULKS Z 
L28:    return 
L29:    
    .end code 
.end method 

.method public addAfterimage : (Ljava/awt/Color;FFFFFFFFZZZ)V 
    .code stack 3 locals 14 
L0:     new com/fs/starfarer/combat/entities/Ship$o 
L3:     dup 
L4:     invokespecial Method com/fs/starfarer/combat/entities/Ship$o <init> ()V 
L7:     astore 13 
L9:     aload 13 
L11:    getfield Field com/fs/starfarer/combat/entities/Ship$o float Lorg/lwjgl/util/vector/Vector2f; 
L14:    fload 4 
L16:    fload 5 
L18:    invokevirtual Method org/lwjgl/util/vector/Vector2f set (FF)V 
L21:    aload 13 
L23:    getfield Field com/fs/starfarer/combat/entities/Ship$o null Lorg/lwjgl/util/vector/Vector2f; 
L26:    fload_2 
L27:    fload_3 
L28:    invokevirtual Method org/lwjgl/util/vector/Vector2f set (FF)V 
L31:    aload 13 
L33:    fload 7 
L35:    putfield Field com/fs/starfarer/combat/entities/Ship$o 'ö00000' F 
L38:    aload 13 
L40:    fload 9 
L42:    putfield Field com/fs/starfarer/combat/entities/Ship$o 'Ö00000' F 
L45:    aload 13 
L47:    fload 8 
L49:    putfield Field com/fs/starfarer/combat/entities/Ship$o o00000 F 
L52:    aload 13 
L54:    aload_1 
L55:    putfield Field com/fs/starfarer/combat/entities/Ship$o class Ljava/awt/Color; 
L58:    aload 13 
L60:    iload 10 
L62:    putfield Field com/fs/starfarer/combat/entities/Ship$o 'Ø00000' Z 
L65:    aload 13 
L67:    fload 6 
L69:    putfield Field com/fs/starfarer/combat/entities/Ship$o 'Ó00000' F 
L72:    aload 13 
L74:    iload 11 
L76:    putfield Field com/fs/starfarer/combat/entities/Ship$o new Z 
L79:    aload 13 
L81:    iload 12 
L83:    putfield Field com/fs/starfarer/combat/entities/Ship$o 'õ00000' Z 
L86:    aload_0 
L87:    getfield Field com/fs/starfarer/combat/entities/Ship afterimages Ljava/util/List; 
L90:    aload 13 
L92:    invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L97:    pop 
L98:    return 
L99:    
    .end code 
.end method 

.method public toString : ()Ljava/lang/String; 
    .code stack 3 locals 1 
L0:     new java/lang/StringBuilder 
L3:     dup 
L4:     aload_0 
L5:     getfield Field com/fs/starfarer/combat/entities/Ship spec Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L8:     invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullVariantId ()Ljava/lang/String; 
L11:    invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L14:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L17:    ldc_w ' ' 
L20:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L23:    aload_0 
L24:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getName ()Ljava/lang/String; 
L27:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L30:    ldc_w ' [' 
L33:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L36:    aload_0 
L37:    getfield Field com/fs/starfarer/combat/entities/Ship spec Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L40:    invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L43:    invokevirtual Method com/fs/starfarer/loading/specs/g getHullId ()Ljava/lang/String; 
L46:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L49:    ldc_w ']' 
L52:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L55:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L58:    areturn 
L59:    
    .end code 
.end method 

.method public getId : ()Ljava/lang/String; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship id Ljava/lang/String; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public isInvalidTransferCommandTarget : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship invalidTransferCommandTarget Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public setInvalidTransferCommandTarget : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship invalidTransferCommandTarget Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public getVisualBounds : ()Lcom/fs/starfarer/combat/E/o0OO; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship visualBounds Lcom/fs/starfarer/combat/E/o0OO; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public getDecalBounds : ()Lcom/fs/starfarer/combat/E/o0OO; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship decalBounds Lcom/fs/starfarer/combat/E/o0OO; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public splitShip : ()Lcom/fs/starfarer/api/combat/ShipAPI; 
    .code stack 3 locals 6 
L0:     new com/fs/starfarer/util/Tesselator$o 
L3:     dup 
L4:     invokespecial Method com/fs/starfarer/util/Tesselator$o <init> ()V 
L7:     astore_1 
L8:     aload_0 
L9:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getVisualBounds ()Lcom/fs/starfarer/combat/E/o0OO; 
L12:    ifnull L37 
L15:    aload_1 
L16:    aload_0 
L17:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getExactBounds ()Lcom/fs/starfarer/combat/E/o0OO; 
L20:    invokestatic Method com/fs/starfarer/util/Tesselator o00000 (Lcom/fs/starfarer/combat/E/o0OO;)Ljava/util/List; 
L23:    putfield Field com/fs/starfarer/util/Tesselator$o 'Õ00000' Ljava/util/List; 
L26:    aload_1 
L27:    aload_0 
L28:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getVisualBounds ()Lcom/fs/starfarer/combat/E/o0OO; 
L31:    invokestatic Method com/fs/starfarer/util/Tesselator o00000 (Lcom/fs/starfarer/combat/E/o0OO;)Ljava/util/List; 
L34:    putfield Field com/fs/starfarer/util/Tesselator$o 'Ó00000' Ljava/util/List; 

        .stack append Object com/fs/starfarer/util/Tesselator$o 
L37:    aload_1 
L38:    aload_0 
L39:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullSize ()Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L42:    putfield Field com/fs/starfarer/util/Tesselator$o 'Ö00000' Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L45:    aload_0 
L46:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getExactBounds ()Lcom/fs/starfarer/combat/E/o0OO; 
L49:    aload_1 
L50:    invokestatic Method com/fs/starfarer/util/Tesselator o00000 (Lcom/fs/starfarer/combat/E/o0OO;Lcom/fs/starfarer/util/Tesselator$o;)Ljava/util/List; 
L53:    astore_2 
L54:    aload_2 
L55:    invokeinterface InterfaceMethod java/util/List size ()I 1 
L60:    iconst_2 
L61:    if_icmplt L133 
L64:    aload_2 
L65:    iconst_0 
L66:    invokeinterface InterfaceMethod java/util/List get (I)Ljava/lang/Object; 2 
L71:    checkcast com/fs/starfarer/util/Tesselator$oo 
L74:    astore_3 
L75:    aload_2 
L76:    iconst_1 
L77:    invokeinterface InterfaceMethod java/util/List get (I)Ljava/lang/Object; 2 
L82:    checkcast com/fs/starfarer/util/Tesselator$oo 
L85:    astore 4 
L87:    aload_3 
L88:    invokevirtual Method com/fs/starfarer/util/Tesselator$oo 'Ò00000' ()Lcom/fs/starfarer/combat/E/o0OO; 
L91:    getfield Field com/fs/starfarer/combat/E/o0OO origSegments Ljava/util/List; 
L94:    invokeinterface InterfaceMethod java/util/List size ()I 1 
L99:    aload 4 
L101:   invokevirtual Method com/fs/starfarer/util/Tesselator$oo 'Ò00000' ()Lcom/fs/starfarer/combat/E/o0OO; 
L104:   getfield Field com/fs/starfarer/combat/E/o0OO origSegments Ljava/util/List; 
L107:   invokeinterface InterfaceMethod java/util/List size ()I 1 
L112:   if_icmpge L125 
L115:   aload_3 
L116:   astore 5 
L118:   aload 4 
L120:   astore_3 
L121:   aload 5 
L123:   astore 4 

        .stack append Object java/util/List Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/util/Tesselator$oo 
L125:   aload_0 
L126:   aload_3 
L127:   aload 4 
L129:   invokevirtual Method com/fs/starfarer/combat/entities/Ship splitShip (Lcom/fs/starfarer/util/Tesselator$oo;Lcom/fs/starfarer/util/Tesselator$oo;)Lcom/fs/starfarer/combat/entities/Ship; 
L132:   areturn 

        .stack chop 2 
L133:   aconst_null 
L134:   areturn 
L135:   
    .end code 
.end method 

.method public splitShip : (Lcom/fs/starfarer/util/Tesselator$oo;Lcom/fs/starfarer/util/Tesselator$oo;)Lcom/fs/starfarer/combat/entities/Ship; 
    .code stack 11 locals 62 
L0:     aload_1 
L1:     invokevirtual Method com/fs/starfarer/util/Tesselator$oo 'Ò00000' ()Lcom/fs/starfarer/combat/E/o0OO; 
L4:     astore_3 
L5:     aload_1 
L6:     invokevirtual Method com/fs/starfarer/util/Tesselator$oo 'Ó00000' ()Lcom/fs/starfarer/combat/E/o0OO; 
L9:     astore 4 
L11:    aload_1 
L12:    invokevirtual Method com/fs/starfarer/util/Tesselator$oo 'super' ()Lcom/fs/starfarer/combat/E/o0OO; 
L15:    astore 5 
L17:    aload_2 
L18:    invokevirtual Method com/fs/starfarer/util/Tesselator$oo 'Ò00000' ()Lcom/fs/starfarer/combat/E/o0OO; 
L21:    astore 6 
L23:    aload_2 
L24:    invokevirtual Method com/fs/starfarer/util/Tesselator$oo 'Ó00000' ()Lcom/fs/starfarer/combat/E/o0OO; 
L27:    astore 7 
L29:    aload_2 
L30:    invokevirtual Method com/fs/starfarer/util/Tesselator$oo 'super' ()Lcom/fs/starfarer/combat/E/o0OO; 
L33:    astore 8 
L35:    aload_0 
L36:    invokevirtual Method com/fs/starfarer/combat/entities/Ship clone ()Lcom/fs/starfarer/combat/entities/Ship; 
L39:    astore 9 
L41:    aload_0 
L42:    bipush 100 
L44:    invokevirtual Method com/fs/starfarer/combat/entities/Ship setOwner (I)V 
L47:    aload 9 
L49:    bipush 100 
L51:    invokevirtual Method com/fs/starfarer/combat/entities/Ship setOwner (I)V 
L54:    aload 9 
L56:    aload_0 
L57:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getId ()Ljava/lang/String; 
L60:    invokevirtual Method com/fs/starfarer/combat/entities/Ship setParentPieceId (Ljava/lang/String;)V 
L63:    aload_0 
L64:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullSize ()Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L67:    getstatic Field com/fs/starfarer/api/combat/ShipAPI$HullSize FIGHTER Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L70:    if_acmpne L91 
L73:    aload_0 
L74:    getstatic Field com/fs/starfarer/api/combat/ShipAPI$HullSize FIGHTER Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L77:    invokevirtual Method com/fs/starfarer/combat/entities/Ship setHullSize (Lcom/fs/starfarer/api/combat/ShipAPI$HullSize;)V 
L80:    aload 9 
L82:    getstatic Field com/fs/starfarer/api/combat/ShipAPI$HullSize FIGHTER Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L85:    invokevirtual Method com/fs/starfarer/combat/entities/Ship setHullSize (Lcom/fs/starfarer/api/combat/ShipAPI$HullSize;)V 
L88:    goto L106 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/entities/Ship 
            stack 
        .end stack 
L91:    aload_0 
L92:    getstatic Field com/fs/starfarer/api/combat/ShipAPI$HullSize FRIGATE Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L95:    invokevirtual Method com/fs/starfarer/combat/entities/Ship setHullSize (Lcom/fs/starfarer/api/combat/ShipAPI$HullSize;)V 
L98:    aload 9 
L100:   getstatic Field com/fs/starfarer/api/combat/ShipAPI$HullSize FRIGATE Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L103:   invokevirtual Method com/fs/starfarer/combat/entities/Ship setHullSize (Lcom/fs/starfarer/api/combat/ShipAPI$HullSize;)V 

        .stack same 
L106:   aload_0 
L107:   new java/util/ArrayList 
L110:   dup 
L111:   aload_0 
L112:   getfield Field com/fs/starfarer/combat/entities/Ship modules Ljava/util/List; 
L115:   invokespecial Method java/util/ArrayList <init> (Ljava/util/Collection;)V 
L118:   putfield Field com/fs/starfarer/combat/entities/Ship modules Ljava/util/List; 
L121:   aload 9 
L123:   new java/util/ArrayList 
L126:   dup 
L127:   aload_0 
L128:   getfield Field com/fs/starfarer/combat/entities/Ship modules Ljava/util/List; 
L131:   invokespecial Method java/util/ArrayList <init> (Ljava/util/Collection;)V 
L134:   putfield Field com/fs/starfarer/combat/entities/Ship modules Ljava/util/List; 
L137:   aload_0 
L138:   fconst_0 
L139:   invokevirtual Method com/fs/starfarer/combat/entities/Ship setHitpoints (F)V 
L142:   aload 9 
L144:   fconst_0 
L145:   invokevirtual Method com/fs/starfarer/combat/entities/Ship setHitpoints (F)V 
L148:   aload_0 
L149:   getfield Field com/fs/starfarer/combat/entities/Ship modules Ljava/util/List; 
L152:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L157:   astore 10 
L159:   aload_3 
L160:   invokestatic Method com/fs/starfarer/util/Tesselator o00000 (Lcom/fs/starfarer/combat/E/o0OO;)Ljava/util/List; 
L163:   astore 11 
L165:   aload 11 
L167:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L172:   astore 13 
L174:   goto L201 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/entities/Ship Object java/util/Iterator Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L177:   aload 13 
L179:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L184:   checkcast org/lwjgl/util/vector/Vector2f 
L187:   astore 12 
L189:   aload 12 
L191:   aload_0 
L192:   getfield Field com/fs/starfarer/combat/entities/Ship renderOffset Lorg/lwjgl/util/vector/Vector2f; 
L195:   aload 12 
L197:   invokestatic Method org/lwjgl/util/vector/Vector2f sub (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)Lorg/lwjgl/util/vector/Vector2f; 
L200:   pop 

        .stack same 
L201:   aload 13 
L203:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L208:   ifne L177 
L211:   goto L280 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/entities/Ship Object java/util/Iterator Object java/util/List 
            stack 
        .end stack 
L214:   aload 10 
L216:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L221:   checkcast com/fs/starfarer/combat/entities/ship/A/OooO 
L224:   astore 12 
L226:   aload 12 
L228:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/A/OooO getSlot ()Lcom/fs/starfarer/loading/specs/nullsuper; 1 
L233:   fconst_0 
L234:   invokevirtual Method com/fs/starfarer/loading/specs/nullsuper computeRelativePosition (F)Lorg/lwjgl/util/vector/Vector2f; 
L237:   astore 13 
L239:   aload 13 
L241:   aload 11 
L243:   invokestatic Method com/fs/util/oOOO o00000 (Lorg/lwjgl/util/vector/Vector2f;Ljava/util/List;)Z 
L246:   ifne L259 
L249:   aload 10 
L251:   invokeinterface InterfaceMethod java/util/Iterator remove ()V 1 
L256:   goto L280 

        .stack append Object com/fs/starfarer/combat/entities/ship/A/OooO Object org/lwjgl/util/vector/Vector2f 
L259:   aload 9 
L261:   getfield Field com/fs/starfarer/combat/entities/Ship modules Ljava/util/List; 
L264:   aload 12 
L266:   invokeinterface InterfaceMethod java/util/List remove (Ljava/lang/Object;)Z 2 
L271:   pop 
L272:   aload 12 
L274:   aload_0 
L275:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/A/OooO setShip (Lcom/fs/starfarer/combat/entities/Ship;)V 2 

        .stack chop 2 
L280:   aload 10 
L282:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L287:   ifne L214 
L290:   aload 9 
L292:   getfield Field com/fs/starfarer/combat/entities/Ship modules Ljava/util/List; 
L295:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L300:   astore 10 
L302:   aload 6 
L304:   invokestatic Method com/fs/starfarer/util/Tesselator o00000 (Lcom/fs/starfarer/combat/E/o0OO;)Ljava/util/List; 
L307:   astore 11 
L309:   aload 11 
L311:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L316:   astore 13 
L318:   goto L345 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/entities/Ship Object java/util/Iterator Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L321:   aload 13 
L323:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L328:   checkcast org/lwjgl/util/vector/Vector2f 
L331:   astore 12 
L333:   aload 12 
L335:   aload_0 
L336:   getfield Field com/fs/starfarer/combat/entities/Ship renderOffset Lorg/lwjgl/util/vector/Vector2f; 
L339:   aload 12 
L341:   invokestatic Method org/lwjgl/util/vector/Vector2f sub (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)Lorg/lwjgl/util/vector/Vector2f; 
L344:   pop 

        .stack same 
L345:   aload 13 
L347:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L352:   ifne L321 
L355:   goto L412 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/entities/Ship Object java/util/Iterator Object java/util/List 
            stack 
        .end stack 
L358:   aload 10 
L360:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L365:   checkcast com/fs/starfarer/combat/entities/ship/A/OooO 
L368:   astore 12 
L370:   aload 12 
L372:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/A/OooO getSlot ()Lcom/fs/starfarer/loading/specs/nullsuper; 1 
L377:   fconst_0 
L378:   invokevirtual Method com/fs/starfarer/loading/specs/nullsuper computeRelativePosition (F)Lorg/lwjgl/util/vector/Vector2f; 
L381:   astore 13 
L383:   aload 13 
L385:   aload 11 
L387:   invokestatic Method com/fs/util/oOOO o00000 (Lorg/lwjgl/util/vector/Vector2f;Ljava/util/List;)Z 
L390:   ifne L403 
L393:   aload 10 
L395:   invokeinterface InterfaceMethod java/util/Iterator remove ()V 1 
L400:   goto L412 

        .stack append Object com/fs/starfarer/combat/entities/ship/A/OooO Object org/lwjgl/util/vector/Vector2f 
L403:   aload 12 
L405:   aload 9 
L407:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/A/OooO setShip (Lcom/fs/starfarer/combat/entities/Ship;)V 2 

        .stack chop 2 
L412:   aload 10 
L414:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L419:   ifne L358 
L422:   aload_0 
L423:   getfield Field com/fs/starfarer/combat/entities/Ship childModules Ljava/util/List; 
L426:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L431:   astore 13 
L433:   goto L454 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/entities/Ship Object java/util/Iterator Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L436:   aload 13 
L438:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L443:   checkcast com/fs/starfarer/combat/entities/Ship 
L446:   astore 12 
L448:   aload 12 
L450:   aconst_null 
L451:   invokevirtual Method com/fs/starfarer/combat/entities/Ship setStationSlot (Lcom/fs/starfarer/api/loading/WeaponSlotAPI;)V 

        .stack same 
L454:   aload 13 
L456:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L461:   ifne L436 
L464:   aload 9 
L466:   getfield Field com/fs/starfarer/combat/entities/Ship childModules Ljava/util/List; 
L469:   invokeinterface InterfaceMethod java/util/List clear ()V 1 
L474:   aload_0 
L475:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L478:   aload_3 
L479:   aload_0 
L480:   getfield Field com/fs/starfarer/combat/entities/Ship armorGrid Lcom/fs/starfarer/combat/entities/ship/new; 
L483:   invokevirtual Method com/fs/starfarer/combat/entities/ship/new getGridSize ()F 
L486:   invokestatic Method com/fs/starfarer/combat/entities/Ship createPieceHullSpec (Lcom/fs/starfarer/loading/specs/g;Lcom/fs/starfarer/combat/E/o0OO;F)Lcom/fs/starfarer/loading/specs/g; 
L489:   astore 12 
L491:   aload_0 
L492:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L495:   aload 6 
L497:   aload_0 
L498:   getfield Field com/fs/starfarer/combat/entities/Ship armorGrid Lcom/fs/starfarer/combat/entities/ship/new; 
L501:   invokevirtual Method com/fs/starfarer/combat/entities/ship/new getGridSize ()F 
L504:   invokestatic Method com/fs/starfarer/combat/entities/Ship createPieceHullSpec (Lcom/fs/starfarer/loading/specs/g;Lcom/fs/starfarer/combat/E/o0OO;F)Lcom/fs/starfarer/loading/specs/g; 
L507:   astore 13 
L509:   aload_0 
L510:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getVariant ()Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L513:   invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec clone ()Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L516:   astore 14 
L518:   aload_0 
L519:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getVariant ()Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L522:   invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec clone ()Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L525:   astore 15 
L527:   aload 14 
L529:   aload 12 
L531:   invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec setHullSpec (Lcom/fs/starfarer/loading/specs/g;)V 
L534:   aload 15 
L536:   aload 13 
L538:   invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec setHullSpec (Lcom/fs/starfarer/loading/specs/g;)V 
L541:   aload_3 
L542:   invokestatic Method com/fs/starfarer/util/Tesselator 'Ò00000' (Lcom/fs/starfarer/combat/E/o0OO;)Lcom/fs/starfarer/util/Tesselator$Oo; 
L545:   astore 16 
L547:   aload 6 
L549:   invokestatic Method com/fs/starfarer/util/Tesselator 'Ò00000' (Lcom/fs/starfarer/combat/E/o0OO;)Lcom/fs/starfarer/util/Tesselator$Oo; 
L552:   astore 17 
L554:   aload_0 
L555:   aload 14 
L557:   putfield Field com/fs/starfarer/combat/entities/Ship spec Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L560:   aload 9 
L562:   aload 15 
L564:   putfield Field com/fs/starfarer/combat/entities/Ship spec Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L567:   aload 9 
L569:   aload_0 
L570:   getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L573:   invokevirtual Method com/fs/graphics/Sprite clone ()Lcom/fs/graphics/Sprite; 
L576:   putfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L579:   aload_0 
L580:   getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L583:   aload 12 
L585:   invokevirtual Method com/fs/starfarer/loading/specs/g getSpriteSpec ()Lcom/fs/starfarer/loading/specs/Q; 
L588:   invokevirtual Method com/fs/starfarer/loading/specs/Q class ()F 
L591:   aload 12 
L593:   invokevirtual Method com/fs/starfarer/loading/specs/g getSpriteSpec ()Lcom/fs/starfarer/loading/specs/Q; 
L596:   invokevirtual Method com/fs/starfarer/loading/specs/Q new ()F 
L599:   invokevirtual Method com/fs/graphics/Sprite setCenter (FF)V 
L602:   aload 9 
L604:   getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L607:   aload 13 
L609:   invokevirtual Method com/fs/starfarer/loading/specs/g getSpriteSpec ()Lcom/fs/starfarer/loading/specs/Q; 
L612:   invokevirtual Method com/fs/starfarer/loading/specs/Q class ()F 
L615:   aload 13 
L617:   invokevirtual Method com/fs/starfarer/loading/specs/g getSpriteSpec ()Lcom/fs/starfarer/loading/specs/Q; 
L620:   invokevirtual Method com/fs/starfarer/loading/specs/Q new ()F 
L623:   invokevirtual Method com/fs/graphics/Sprite setCenter (FF)V 
L626:   aload_0 
L627:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getCollisionRadius ()F 
L630:   fstore 18 
L632:   new org/lwjgl/util/vector/Vector2f 
L635:   dup 
L636:   aload_0 
L637:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L640:   invokespecial Method org/lwjgl/util/vector/Vector2f <init> (Lorg/lwjgl/util/vector/ReadableVector2f;)V 
L643:   astore 19 
L645:   aload_0 
L646:   aload 16 
L648:   invokevirtual Method com/fs/starfarer/util/Tesselator$Oo 'super' ()F 
L651:   invokevirtual Method com/fs/starfarer/combat/entities/Ship setCollisionRadius (F)V 
L654:   aload 9 
L656:   aload 17 
L658:   invokevirtual Method com/fs/starfarer/util/Tesselator$Oo 'super' ()F 
L661:   invokevirtual Method com/fs/starfarer/combat/entities/Ship setCollisionRadius (F)V 
L664:   aload_0 
L665:   new com/fs/starfarer/renderers/OOoO 
L668:   dup 
L669:   aload_0 
L670:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getCollisionRadius ()F 
L673:   aload_0 
L674:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isFighter ()Z 
L677:   ifeq L686 
L680:   ldc_w +3.5f 
L683:   goto L689 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/entities/Ship Object java/util/Iterator Object java/util/List Object com/fs/starfarer/loading/specs/g Object com/fs/starfarer/loading/specs/g Object com/fs/starfarer/loading/specs/HullVariantSpec Object com/fs/starfarer/loading/specs/HullVariantSpec Object com/fs/starfarer/util/Tesselator$Oo Object com/fs/starfarer/util/Tesselator$Oo Float Object org/lwjgl/util/vector/Vector2f 
            stack Object com/fs/starfarer/combat/entities/Ship Uninitialized L665 Uninitialized L665 Float 
        .end stack 
L686:   ldc_w +5.5f 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/entities/Ship Object java/util/Iterator Object java/util/List Object com/fs/starfarer/loading/specs/g Object com/fs/starfarer/loading/specs/g Object com/fs/starfarer/loading/specs/HullVariantSpec Object com/fs/starfarer/loading/specs/HullVariantSpec Object com/fs/starfarer/util/Tesselator$Oo Object com/fs/starfarer/util/Tesselator$Oo Float Object org/lwjgl/util/vector/Vector2f 
            stack Object com/fs/starfarer/combat/entities/Ship Uninitialized L665 Uninitialized L665 Float Float 
        .end stack 
L689:   invokespecial Method com/fs/starfarer/renderers/OOoO <init> (FF)V 
L692:   putfield Field com/fs/starfarer/combat/entities/Ship ffInd Lcom/fs/starfarer/renderers/OOoO; 
L695:   aload 9 
L697:   new com/fs/starfarer/renderers/OOoO 
L700:   dup 
L701:   aload 9 
L703:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getCollisionRadius ()F 
L706:   aload_0 
L707:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isFighter ()Z 
L710:   ifeq L719 
L713:   ldc_w +3.5f 
L716:   goto L722 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/entities/Ship Object java/util/Iterator Object java/util/List Object com/fs/starfarer/loading/specs/g Object com/fs/starfarer/loading/specs/g Object com/fs/starfarer/loading/specs/HullVariantSpec Object com/fs/starfarer/loading/specs/HullVariantSpec Object com/fs/starfarer/util/Tesselator$Oo Object com/fs/starfarer/util/Tesselator$Oo Float Object org/lwjgl/util/vector/Vector2f 
            stack Object com/fs/starfarer/combat/entities/Ship Uninitialized L697 Uninitialized L697 Float 
        .end stack 
L719:   ldc_w +5.5f 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/entities/Ship Object java/util/Iterator Object java/util/List Object com/fs/starfarer/loading/specs/g Object com/fs/starfarer/loading/specs/g Object com/fs/starfarer/loading/specs/HullVariantSpec Object com/fs/starfarer/loading/specs/HullVariantSpec Object com/fs/starfarer/util/Tesselator$Oo Object com/fs/starfarer/util/Tesselator$Oo Float Object org/lwjgl/util/vector/Vector2f 
            stack Object com/fs/starfarer/combat/entities/Ship Uninitialized L697 Uninitialized L697 Float Float 
        .end stack 
L722:   invokespecial Method com/fs/starfarer/renderers/OOoO <init> (FF)V 
L725:   putfield Field com/fs/starfarer/combat/entities/Ship ffInd Lcom/fs/starfarer/renderers/OOoO; 
L728:   aload_0 
L729:   getfield Field com/fs/starfarer/combat/entities/Ship decalRenderer Lcom/fs/starfarer/renderers/damage/String; 
L732:   astore 20 
L734:   aload_0 
L735:   getfield Field com/fs/starfarer/combat/entities/Ship armorGrid Lcom/fs/starfarer/combat/entities/ship/new; 
L738:   astore 21 
L740:   aload_0 
L741:   getfield Field com/fs/starfarer/combat/entities/Ship armorGrid Lcom/fs/starfarer/combat/entities/ship/new; 
L744:   invokevirtual Method com/fs/starfarer/combat/entities/ship/new getCellSize ()F 
L747:   fstore 22 
L749:   aload 16 
L751:   aload 16 
L753:   getfield Field com/fs/starfarer/util/Tesselator$Oo o00000 F 
L756:   fload 22 
L758:   fdiv 
L759:   invokestatic Method java/lang/Math round (F)I 
L762:   i2f 
L763:   fload 22 
L765:   fmul 
L766:   putfield Field com/fs/starfarer/util/Tesselator$Oo o00000 F 
L769:   aload 16 
L771:   aload 16 
L773:   getfield Field com/fs/starfarer/util/Tesselator$Oo 'Ø00000' F 
L776:   fload 22 
L778:   fdiv 
L779:   invokestatic Method java/lang/Math round (F)I 
L782:   i2f 
L783:   fload 22 
L785:   fmul 
L786:   putfield Field com/fs/starfarer/util/Tesselator$Oo 'Ø00000' F 
L789:   aload 17 
L791:   aload 17 
L793:   getfield Field com/fs/starfarer/util/Tesselator$Oo o00000 F 
L796:   fload 22 
L798:   fdiv 
L799:   invokestatic Method java/lang/Math round (F)I 
L802:   i2f 
L803:   fload 22 
L805:   fmul 
L806:   putfield Field com/fs/starfarer/util/Tesselator$Oo o00000 F 
L809:   aload 17 
L811:   aload 17 
L813:   getfield Field com/fs/starfarer/util/Tesselator$Oo 'Ø00000' F 
L816:   fload 22 
L818:   fdiv 
L819:   invokestatic Method java/lang/Math round (F)I 
L822:   i2f 
L823:   fload 22 
L825:   fmul 
L826:   putfield Field com/fs/starfarer/util/Tesselator$Oo 'Ø00000' F 
L829:   aload 16 
L831:   getfield Field com/fs/starfarer/util/Tesselator$Oo o00000 F 
L834:   fneg 
L835:   fstore 23 
L837:   aload 16 
L839:   getfield Field com/fs/starfarer/util/Tesselator$Oo 'Ø00000' F 
L842:   fneg 
L843:   fstore 24 
L845:   aload 17 
L847:   getfield Field com/fs/starfarer/util/Tesselator$Oo o00000 F 
L850:   fneg 
L851:   fstore 25 
L853:   aload 17 
L855:   getfield Field com/fs/starfarer/util/Tesselator$Oo 'Ø00000' F 
L858:   fneg 
L859:   fstore 26 
L861:   aload_3 
L862:   fload 23 
L864:   fload 24 
L866:   invokestatic Method com/fs/starfarer/util/Tesselator o00000 (Lcom/fs/starfarer/combat/E/o0OO;FF)V 
L869:   aload 4 
L871:   fload 23 
L873:   fload 24 
L875:   invokestatic Method com/fs/starfarer/util/Tesselator o00000 (Lcom/fs/starfarer/combat/E/o0OO;FF)V 
L878:   aload 5 
L880:   fload 23 
L882:   fload 24 
L884:   invokestatic Method com/fs/starfarer/util/Tesselator o00000 (Lcom/fs/starfarer/combat/E/o0OO;FF)V 
L887:   aload_1 
L888:   getfield Field com/fs/starfarer/util/Tesselator$oo String Ljava/util/List; 
L891:   fload 23 
L893:   fload 24 
L895:   invokestatic Method com/fs/starfarer/util/Tesselator o00000 (Ljava/util/List;FF)V 
L898:   aload 6 
L900:   fload 25 
L902:   fload 26 
L904:   invokestatic Method com/fs/starfarer/util/Tesselator o00000 (Lcom/fs/starfarer/combat/E/o0OO;FF)V 
L907:   aload 7 
L909:   fload 25 
L911:   fload 26 
L913:   invokestatic Method com/fs/starfarer/util/Tesselator o00000 (Lcom/fs/starfarer/combat/E/o0OO;FF)V 
L916:   aload 8 
L918:   fload 25 
L920:   fload 26 
L922:   invokestatic Method com/fs/starfarer/util/Tesselator o00000 (Lcom/fs/starfarer/combat/E/o0OO;FF)V 
L925:   aload_2 
L926:   getfield Field com/fs/starfarer/util/Tesselator$oo String Ljava/util/List; 
L929:   fload 25 
L931:   fload 26 
L933:   invokestatic Method com/fs/starfarer/util/Tesselator o00000 (Ljava/util/List;FF)V 
L936:   new org/lwjgl/util/vector/Vector2f 
L939:   dup 
L940:   fload 23 
L942:   fneg 
L943:   fload 24 
L945:   fneg 
L946:   invokespecial Method org/lwjgl/util/vector/Vector2f <init> (FF)V 
L949:   astore 27 
L951:   new org/lwjgl/util/vector/Vector2f 
L954:   dup 
L955:   fload 25 
L957:   fneg 
L958:   fload 26 
L960:   fneg 
L961:   invokespecial Method org/lwjgl/util/vector/Vector2f <init> (FF)V 
L964:   astore 28 
L966:   new org/lwjgl/util/vector/Vector2f 
L969:   dup 
L970:   aload_0 
L971:   getfield Field com/fs/starfarer/combat/entities/Ship renderOffset Lorg/lwjgl/util/vector/Vector2f; 
L974:   invokespecial Method org/lwjgl/util/vector/Vector2f <init> (Lorg/lwjgl/util/vector/ReadableVector2f;)V 
L977:   astore 29 
L979:   aload_0 
L980:   aload 29 
L982:   aload 27 
L984:   new org/lwjgl/util/vector/Vector2f 
L987:   dup 
L988:   invokespecial Method org/lwjgl/util/vector/Vector2f <init> ()V 
L991:   invokestatic Method org/lwjgl/util/vector/Vector2f sub (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)Lorg/lwjgl/util/vector/Vector2f; 
L994:   putfield Field com/fs/starfarer/combat/entities/Ship renderOffset Lorg/lwjgl/util/vector/Vector2f; 
L997:   aload 9 
L999:   aload 29 
L1001:  aload 28 
L1003:  new org/lwjgl/util/vector/Vector2f 
L1006:  dup 
L1007:  invokespecial Method org/lwjgl/util/vector/Vector2f <init> ()V 
L1010:  invokestatic Method org/lwjgl/util/vector/Vector2f sub (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)Lorg/lwjgl/util/vector/Vector2f; 
L1013:  putfield Field com/fs/starfarer/combat/entities/Ship renderOffset Lorg/lwjgl/util/vector/Vector2f; 
L1016:  aload 27 
L1018:  aload_0 
L1019:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getFacing ()F 
L1022:  invokestatic Method com/fs/starfarer/prototype/Utils o00000 (Lorg/lwjgl/util/vector/Vector2f;F)Lorg/lwjgl/util/vector/Vector2f; 
L1025:  astore 27 
L1027:  aload 28 
L1029:  aload 9 
L1031:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getFacing ()F 
L1034:  invokestatic Method com/fs/starfarer/prototype/Utils o00000 (Lorg/lwjgl/util/vector/Vector2f;F)Lorg/lwjgl/util/vector/Vector2f; 
L1037:  astore 28 
L1039:  aload_0 
L1040:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L1043:  aload 27 
L1045:  aload_0 
L1046:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L1049:  invokestatic Method org/lwjgl/util/vector/Vector2f add (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)Lorg/lwjgl/util/vector/Vector2f; 
L1052:  pop 
L1053:  aload 9 
L1055:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L1058:  aload 28 
L1060:  aload 9 
L1062:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L1065:  invokestatic Method org/lwjgl/util/vector/Vector2f add (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)Lorg/lwjgl/util/vector/Vector2f; 
L1068:  pop 
L1069:  aload 9 
L1071:  aload 6 
L1073:  invokevirtual Method com/fs/starfarer/combat/entities/Ship setBounds (Lcom/fs/starfarer/combat/E/o0OO;)V 
L1076:  aload 9 
L1078:  aload 7 
L1080:  putfield Field com/fs/starfarer/combat/entities/Ship visualBounds Lcom/fs/starfarer/combat/E/o0OO; 
L1083:  aload 9 
L1085:  iconst_1 
L1086:  putfield Field com/fs/starfarer/combat/entities/Ship isPiece Z 
L1089:  aload_0 
L1090:  getfield Field com/fs/starfarer/combat/entities/Ship visualBounds Lcom/fs/starfarer/combat/E/o0OO; 
L1093:  ifnonnull L1100 
L1096:  iconst_1 
L1097:  goto L1101 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/entities/Ship Object java/util/Iterator Object java/util/List Object com/fs/starfarer/loading/specs/g Object com/fs/starfarer/loading/specs/g Object com/fs/starfarer/loading/specs/HullVariantSpec Object com/fs/starfarer/loading/specs/HullVariantSpec Object com/fs/starfarer/util/Tesselator$Oo Object com/fs/starfarer/util/Tesselator$Oo Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/renderers/damage/String Object com/fs/starfarer/combat/entities/ship/new Float Float Float Float Float Object org/lwjgl/util/vector/Vector2f Object org/lwjgl/util/vector/Vector2f Object org/lwjgl/util/vector/Vector2f 
            stack 
        .end stack 
L1100:  iconst_0 

        .stack stack_1 Integer 
L1101:  istore 30 
L1103:  aload_0 
L1104:  aload_3 
L1105:  invokevirtual Method com/fs/starfarer/combat/entities/Ship setBounds (Lcom/fs/starfarer/combat/E/o0OO;)V 
L1108:  aload_0 
L1109:  aload 4 
L1111:  putfield Field com/fs/starfarer/combat/entities/Ship visualBounds Lcom/fs/starfarer/combat/E/o0OO; 
L1114:  aload_0 
L1115:  iconst_1 
L1116:  putfield Field com/fs/starfarer/combat/entities/Ship isPiece Z 
L1119:  aload_0 
L1120:  aload 5 
L1122:  putfield Field com/fs/starfarer/combat/entities/Ship decalBounds Lcom/fs/starfarer/combat/E/o0OO; 
L1125:  aload 9 
L1127:  aload 8 
L1129:  putfield Field com/fs/starfarer/combat/entities/Ship decalBounds Lcom/fs/starfarer/combat/E/o0OO; 
L1132:  aload 16 
L1134:  getfield Field com/fs/starfarer/util/Tesselator$Oo 'Ô00000' F 
L1137:  aload 16 
L1139:  getfield Field com/fs/starfarer/util/Tesselator$Oo 'Ò00000' F 
L1142:  fmul 
L1143:  fstore 31 
L1145:  aload 17 
L1147:  getfield Field com/fs/starfarer/util/Tesselator$Oo 'Ô00000' F 
L1150:  aload 17 
L1152:  getfield Field com/fs/starfarer/util/Tesselator$Oo 'Ò00000' F 
L1155:  fmul 
L1156:  fstore 32 
L1158:  fload 31 
L1160:  fload 31 
L1162:  fload 32 
L1164:  fadd 
L1165:  fdiv 
L1166:  fstore 33 
L1168:  aload_0 
L1169:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getMass ()F 
L1172:  fload 33 
L1174:  fmul 
L1175:  fstore 34 
L1177:  aload_0 
L1178:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getMass ()F 
L1181:  fload 34 
L1183:  fsub 
L1184:  fstore 35 
L1186:  iload 30 
L1188:  ifeq L1237 
L1191:  aload_0 
L1192:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isCapital ()Z 
L1195:  ifeq L1214 
L1198:  fload 34 
L1200:  ldc_w +0.5f 
L1203:  fmul 
L1204:  fstore 34 
L1206:  fload 35 
L1208:  ldc_w +0.5f 
L1211:  fmul 
L1212:  fstore 35 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/entities/Ship Object java/util/Iterator Object java/util/List Object com/fs/starfarer/loading/specs/g Object com/fs/starfarer/loading/specs/g Object com/fs/starfarer/loading/specs/HullVariantSpec Object com/fs/starfarer/loading/specs/HullVariantSpec Object com/fs/starfarer/util/Tesselator$Oo Object com/fs/starfarer/util/Tesselator$Oo Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/renderers/damage/String Object com/fs/starfarer/combat/entities/ship/new Float Float Float Float Float Object org/lwjgl/util/vector/Vector2f Object org/lwjgl/util/vector/Vector2f Object org/lwjgl/util/vector/Vector2f Integer Float Float Float Float Float 
            stack 
        .end stack 
L1214:  aload_0 
L1215:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isCruiser ()Z 
L1218:  ifeq L1237 
L1221:  fload 34 
L1223:  ldc_w +0.5f 
L1226:  fmul 
L1227:  fstore 34 
L1229:  fload 35 
L1231:  ldc_w +0.5f 
L1234:  fmul 
L1235:  fstore 35 

        .stack same 
L1237:  aload_0 
L1238:  fload 34 
L1240:  invokevirtual Method com/fs/starfarer/combat/entities/Ship setMass (F)V 
L1243:  aload 9 
L1245:  fload 35 
L1247:  invokevirtual Method com/fs/starfarer/combat/entities/Ship setMass (F)V 
L1250:  aload_0 
L1251:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getMaxHitpoints ()F 
L1254:  fstore 36 
L1256:  fload 36 
L1258:  fload 33 
L1260:  fmul 
L1261:  fstore 37 
L1263:  fload 36 
L1265:  fload 37 
L1267:  fsub 
L1268:  fstore 38 
L1270:  aload_0 
L1271:  fload 37 
L1273:  invokevirtual Method com/fs/starfarer/combat/entities/Ship setMaxHitpoints (F)V 
L1276:  aload 9 
L1278:  fload 38 
L1280:  invokevirtual Method com/fs/starfarer/combat/entities/Ship setMaxHitpoints (F)V 
L1283:  getstatic Field com/fs/starfarer/combat/entities/Ship ATTACK_HULKS Z 
L1286:  ifeq L1310 
L1289:  aload_0 
L1290:  fload 37 
L1292:  ldc_w +0.5f 
L1295:  fmul 
L1296:  invokevirtual Method com/fs/starfarer/combat/entities/Ship setMaxHitpoints (F)V 
L1299:  aload 9 
L1301:  fload 38 
L1303:  ldc_w +0.5f 
L1306:  fmul 
L1307:  invokevirtual Method com/fs/starfarer/combat/entities/Ship setMaxHitpoints (F)V 

        .stack append Float Float Float 
L1310:  aload_0 
L1311:  fconst_0 
L1312:  putfield Field com/fs/starfarer/combat/entities/Ship overkill F 
L1315:  aload 9 
L1317:  fconst_0 
L1318:  putfield Field com/fs/starfarer/combat/entities/Ship overkill F 
L1321:  aload_0 
L1322:  iconst_0 
L1323:  putfield Field com/fs/starfarer/combat/entities/Ship wasDestroyed Z 
L1326:  aload 9 
L1328:  iconst_0 
L1329:  putfield Field com/fs/starfarer/combat/entities/Ship wasDestroyed Z 
L1332:  iload 30 
L1334:  ifeq L1422 
L1337:  aload_0 
L1338:  invokevirtual Method com/fs/starfarer/combat/entities/Ship makeLookDisabled ()V 
L1341:  aload 9 
L1343:  invokevirtual Method com/fs/starfarer/combat/entities/Ship makeLookDisabled ()V 
L1346:  aload_0 
L1347:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getArmorGrid ()Lcom/fs/starfarer/combat/entities/ship/new; 
L1350:  invokevirtual Method com/fs/starfarer/combat/entities/ship/new getGrid ()[[F 
L1353:  astore 39 
L1355:  iconst_0 
L1356:  istore 40 
L1358:  goto L1406 

        .stack append Object [[F Integer 
L1361:  iconst_0 
L1362:  istore 41 
L1364:  goto L1391 

        .stack append Integer 
L1367:  aload 39 
L1369:  iload 40 
L1371:  aaload 
L1372:  iload 41 
L1374:  fconst_0 
L1375:  fastore 
L1376:  aload 20 
L1378:  iload 40 
L1380:  iload 41 
L1382:  iconst_0 
L1383:  invokevirtual Method com/fs/starfarer/renderers/damage/String 'Ò00000' (IIZ)Lcom/fs/starfarer/renderers/damage/OOoO; 
L1386:  astore 42 
L1388:  iinc 41 1 

        .stack same 
L1391:  iload 41 
L1393:  aload_0 
L1394:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getArmorGrid ()Lcom/fs/starfarer/combat/entities/ship/new; 
L1397:  invokevirtual Method com/fs/starfarer/combat/entities/ship/new getGridHeight ()I 
L1400:  if_icmplt L1367 
L1403:  iinc 40 1 

        .stack chop 1 
L1406:  iload 40 
L1408:  aload_0 
L1409:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getArmorGrid ()Lcom/fs/starfarer/combat/entities/ship/new; 
L1412:  invokevirtual Method com/fs/starfarer/combat/entities/ship/new getGridWidth ()I 
L1415:  if_icmplt L1361 
L1418:  aload_0 
L1419:  invokevirtual Method com/fs/starfarer/combat/entities/Ship syncWithArmorGridState ()V 

        .stack chop 2 
L1422:  iconst_1 
L1423:  istore 39 
L1425:  iconst_1 
L1426:  istore 40 
L1428:  iconst_0 
L1429:  istore 39 
L1431:  iload 40 
L1433:  ifeq L1560 
L1436:  aload_1 
L1437:  getfield Field com/fs/starfarer/util/Tesselator$oo String Ljava/util/List; 
L1440:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L1445:  astore 42 
L1447:  goto L1550 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/entities/Ship Object java/util/Iterator Object java/util/List Object com/fs/starfarer/loading/specs/g Object com/fs/starfarer/loading/specs/g Object com/fs/starfarer/loading/specs/HullVariantSpec Object com/fs/starfarer/loading/specs/HullVariantSpec Object com/fs/starfarer/util/Tesselator$Oo Object com/fs/starfarer/util/Tesselator$Oo Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/renderers/damage/String Object com/fs/starfarer/combat/entities/ship/new Float Float Float Float Float Object org/lwjgl/util/vector/Vector2f Object org/lwjgl/util/vector/Vector2f Object org/lwjgl/util/vector/Vector2f Integer Float Float Float Float Float Float Float Float Integer Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L1450:  aload 42 
L1452:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L1457:  checkcast org/lwjgl/util/vector/Vector2f 
L1460:  astore 41 
L1462:  aload 41 
L1464:  aload_0 
L1465:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getFacing ()F 
L1468:  invokestatic Method com/fs/starfarer/prototype/Utils o00000 (Lorg/lwjgl/util/vector/Vector2f;F)Lorg/lwjgl/util/vector/Vector2f; 
L1471:  astore 41 
L1473:  aload 41 
L1475:  aload 19 
L1477:  aload 41 
L1479:  invokestatic Method org/lwjgl/util/vector/Vector2f add (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)Lorg/lwjgl/util/vector/Vector2f; 
L1482:  pop 
L1483:  aload 21 
L1485:  aload 41 
L1487:  aload 19 
L1489:  invokevirtual Method com/fs/starfarer/combat/entities/ship/new getCellAtLocation (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)[I 
L1492:  astore 43 
L1494:  aload 43 
L1496:  ifnonnull L1502 
L1499:  goto L1550 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/entities/Ship Object java/util/Iterator Object java/util/List Object com/fs/starfarer/loading/specs/g Object com/fs/starfarer/loading/specs/g Object com/fs/starfarer/loading/specs/HullVariantSpec Object com/fs/starfarer/loading/specs/HullVariantSpec Object com/fs/starfarer/util/Tesselator$Oo Object com/fs/starfarer/util/Tesselator$Oo Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/renderers/damage/String Object com/fs/starfarer/combat/entities/ship/new Float Float Float Float Float Object org/lwjgl/util/vector/Vector2f Object org/lwjgl/util/vector/Vector2f Object org/lwjgl/util/vector/Vector2f Integer Float Float Float Float Float Float Float Float Integer Integer Object org/lwjgl/util/vector/Vector2f Object java/util/Iterator Object [I 
            stack 
        .end stack 
L1502:  aload 21 
L1504:  aload 43 
L1506:  iconst_0 
L1507:  iaload 
L1508:  aload 43 
L1510:  iconst_1 
L1511:  iaload 
L1512:  fconst_0 
L1513:  invokevirtual Method com/fs/starfarer/combat/entities/ship/new setArmorValue (IIF)V 
L1516:  iload 39 
L1518:  ifeq L1550 
L1521:  aload 20 
L1523:  aload 43 
L1525:  iconst_0 
L1526:  iaload 
L1527:  aload 43 
L1529:  iconst_1 
L1530:  iaload 
L1531:  iconst_0 
L1532:  invokevirtual Method com/fs/starfarer/renderers/damage/String 'Ò00000' (IIZ)Lcom/fs/starfarer/renderers/damage/OOoO; 
L1535:  astore 44 
L1537:  aload 44 
L1539:  ifnull L1550 
L1542:  aload 44 
L1544:  ldc_w +255.0f 
L1547:  invokevirtual Method com/fs/starfarer/renderers/damage/OOoO class (F)V 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/entities/Ship Object java/util/Iterator Object java/util/List Object com/fs/starfarer/loading/specs/g Object com/fs/starfarer/loading/specs/g Object com/fs/starfarer/loading/specs/HullVariantSpec Object com/fs/starfarer/loading/specs/HullVariantSpec Object com/fs/starfarer/util/Tesselator$Oo Object com/fs/starfarer/util/Tesselator$Oo Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/renderers/damage/String Object com/fs/starfarer/combat/entities/ship/new Float Float Float Float Float Object org/lwjgl/util/vector/Vector2f Object org/lwjgl/util/vector/Vector2f Object org/lwjgl/util/vector/Vector2f Integer Float Float Float Float Float Float Float Float Integer Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L1550:  aload 42 
L1552:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L1557:  ifne L1450 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/entities/Ship Object java/util/Iterator Object java/util/List Object com/fs/starfarer/loading/specs/g Object com/fs/starfarer/loading/specs/g Object com/fs/starfarer/loading/specs/HullVariantSpec Object com/fs/starfarer/loading/specs/HullVariantSpec Object com/fs/starfarer/util/Tesselator$Oo Object com/fs/starfarer/util/Tesselator$Oo Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/renderers/damage/String Object com/fs/starfarer/combat/entities/ship/new Float Float Float Float Float Object org/lwjgl/util/vector/Vector2f Object org/lwjgl/util/vector/Vector2f Object org/lwjgl/util/vector/Vector2f Integer Float Float Float Float Float Float Float Float Integer Integer 
            stack 
        .end stack 
L1560:  aload_0 
L1561:  new com/fs/starfarer/combat/entities/ship/new 
L1564:  dup 
L1565:  aload_0 
L1566:  aload 12 
L1568:  fload 22 
L1570:  aload 16 
L1572:  getfield Field com/fs/starfarer/util/Tesselator$Oo 'Ø00000' F 
L1575:  aload 16 
L1577:  getfield Field com/fs/starfarer/util/Tesselator$Oo 'ô00000' F 
L1580:  fsub 
L1581:  aload 16 
L1583:  getfield Field com/fs/starfarer/util/Tesselator$Oo 'Õ00000' F 
L1586:  aload 16 
L1588:  getfield Field com/fs/starfarer/util/Tesselator$Oo 'Ø00000' F 
L1591:  fsub 
L1592:  aload 16 
L1594:  getfield Field com/fs/starfarer/util/Tesselator$Oo return F 
L1597:  aload 16 
L1599:  getfield Field com/fs/starfarer/util/Tesselator$Oo o00000 F 
L1602:  fsub 
L1603:  aload 16 
L1605:  getfield Field com/fs/starfarer/util/Tesselator$Oo o00000 F 
L1608:  aload 16 
L1610:  getfield Field com/fs/starfarer/util/Tesselator$Oo Object F 
L1613:  fsub 
L1614:  invokespecial Method com/fs/starfarer/combat/entities/ship/new <init> (Lcom/fs/starfarer/combat/entities/Ship;Lcom/fs/starfarer/loading/specs/g;FFFFF)V 
L1617:  putfield Field com/fs/starfarer/combat/entities/Ship armorGrid Lcom/fs/starfarer/combat/entities/ship/new; 
L1620:  aload_0 
L1621:  new com/fs/starfarer/renderers/damage/String 
L1624:  dup 
L1625:  aload_0 
L1626:  invokespecial Method com/fs/starfarer/renderers/damage/String <init> (Lcom/fs/starfarer/combat/entities/Ship;)V 
L1629:  putfield Field com/fs/starfarer/combat/entities/Ship decalRenderer Lcom/fs/starfarer/renderers/damage/String; 
L1632:  aload_0 
L1633:  getfield Field com/fs/starfarer/combat/entities/Ship armorGrid Lcom/fs/starfarer/combat/entities/ship/new; 
L1636:  aload_0 
L1637:  getfield Field com/fs/starfarer/combat/entities/Ship decalRenderer Lcom/fs/starfarer/renderers/damage/String; 
L1640:  invokevirtual Method com/fs/starfarer/combat/entities/ship/new setListener (Lcom/fs/starfarer/combat/entities/ship/new$Oo;)V 
L1643:  aload_0 
L1644:  getfield Field com/fs/starfarer/combat/entities/Ship decalRenderer Lcom/fs/starfarer/renderers/damage/String; 
L1647:  invokevirtual Method com/fs/starfarer/renderers/damage/String 'Ø00000' ()V 
L1650:  aload 9 
L1652:  new com/fs/starfarer/combat/entities/ship/new 
L1655:  dup 
L1656:  aload 9 
L1658:  aload 13 
L1660:  fload 22 
L1662:  aload 17 
L1664:  getfield Field com/fs/starfarer/util/Tesselator$Oo 'Ø00000' F 
L1667:  aload 17 
L1669:  getfield Field com/fs/starfarer/util/Tesselator$Oo 'ô00000' F 
L1672:  fsub 
L1673:  aload 17 
L1675:  getfield Field com/fs/starfarer/util/Tesselator$Oo 'Õ00000' F 
L1678:  aload 17 
L1680:  getfield Field com/fs/starfarer/util/Tesselator$Oo 'Ø00000' F 
L1683:  fsub 
L1684:  aload 17 
L1686:  getfield Field com/fs/starfarer/util/Tesselator$Oo return F 
L1689:  aload 17 
L1691:  getfield Field com/fs/starfarer/util/Tesselator$Oo o00000 F 
L1694:  fsub 
L1695:  aload 17 
L1697:  getfield Field com/fs/starfarer/util/Tesselator$Oo o00000 F 
L1700:  aload 17 
L1702:  getfield Field com/fs/starfarer/util/Tesselator$Oo Object F 
L1705:  fsub 
L1706:  invokespecial Method com/fs/starfarer/combat/entities/ship/new <init> (Lcom/fs/starfarer/combat/entities/Ship;Lcom/fs/starfarer/loading/specs/g;FFFFF)V 
L1709:  putfield Field com/fs/starfarer/combat/entities/Ship armorGrid Lcom/fs/starfarer/combat/entities/ship/new; 
L1712:  aload 9 
L1714:  new com/fs/starfarer/renderers/damage/String 
L1717:  dup 
L1718:  aload 9 
L1720:  invokespecial Method com/fs/starfarer/renderers/damage/String <init> (Lcom/fs/starfarer/combat/entities/Ship;)V 
L1723:  putfield Field com/fs/starfarer/combat/entities/Ship decalRenderer Lcom/fs/starfarer/renderers/damage/String; 
L1726:  aload 9 
L1728:  getfield Field com/fs/starfarer/combat/entities/Ship armorGrid Lcom/fs/starfarer/combat/entities/ship/new; 
L1731:  aload 9 
L1733:  getfield Field com/fs/starfarer/combat/entities/Ship decalRenderer Lcom/fs/starfarer/renderers/damage/String; 
L1736:  invokevirtual Method com/fs/starfarer/combat/entities/ship/new setListener (Lcom/fs/starfarer/combat/entities/ship/new$Oo;)V 
L1739:  aload 9 
L1741:  getfield Field com/fs/starfarer/combat/entities/Ship decalRenderer Lcom/fs/starfarer/renderers/damage/String; 
L1744:  invokevirtual Method com/fs/starfarer/renderers/damage/String 'Ø00000' ()V 
L1747:  fload 18 
L1749:  fload 22 
L1751:  fdiv 
L1752:  f2d 
L1753:  invokestatic Method java/lang/Math ceil (D)D 
L1756:  fload 22 
L1758:  f2d 
L1759:  dmul 
L1760:  fconst_2 
L1761:  fload 22 
L1763:  fmul 
L1764:  f2d 
L1765:  dadd 
L1766:  d2f 
L1767:  fstore 41 
L1769:  aload_0 
L1770:  getfield Field com/fs/starfarer/combat/entities/Ship decalRenderer Lcom/fs/starfarer/renderers/damage/String; 
L1773:  invokevirtual Method com/fs/starfarer/renderers/damage/String 'ø00000' ()V 
L1776:  aload 9 
L1778:  getfield Field com/fs/starfarer/combat/entities/Ship decalRenderer Lcom/fs/starfarer/renderers/damage/String; 
L1781:  invokevirtual Method com/fs/starfarer/renderers/damage/String 'ø00000' ()V 
L1784:  aload 4 
L1786:  invokestatic Method com/fs/starfarer/util/Tesselator o00000 (Lcom/fs/starfarer/combat/E/o0OO;)Ljava/util/List; 
L1789:  astore 11 
L1791:  aload 7 
L1793:  invokestatic Method com/fs/starfarer/util/Tesselator o00000 (Lcom/fs/starfarer/combat/E/o0OO;)Ljava/util/List; 
L1796:  astore 42 
L1798:  aload 11 
L1800:  invokestatic Method com/fs/starfarer/util/Tesselator return (Ljava/util/List;)Lcom/fs/starfarer/util/Tesselator$Oo; 
L1803:  astore 43 
L1805:  aload 42 
L1807:  invokestatic Method com/fs/starfarer/util/Tesselator return (Ljava/util/List;)Lcom/fs/starfarer/util/Tesselator$Oo; 
L1810:  astore 44 
L1812:  new org/lwjgl/util/vector/Vector2f 
L1815:  dup 
L1816:  aload_0 
L1817:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L1820:  invokespecial Method org/lwjgl/util/vector/Vector2f <init> (Lorg/lwjgl/util/vector/ReadableVector2f;)V 
L1823:  astore 45 
L1825:  aload 45 
L1827:  dup 
L1828:  getfield Field org/lwjgl/util/vector/Vector2f x F 
L1831:  ldc_w +50.0f 
L1834:  fadd 
L1835:  putfield Field org/lwjgl/util/vector/Vector2f x F 
L1838:  aload 45 
L1840:  dup 
L1841:  getfield Field org/lwjgl/util/vector/Vector2f y F 
L1844:  ldc_w +50.0f 
L1847:  fadd 
L1848:  putfield Field org/lwjgl/util/vector/Vector2f y F 
L1851:  aload_0 
L1852:  getfield Field com/fs/starfarer/combat/entities/Ship armorGrid Lcom/fs/starfarer/combat/entities/ship/new; 
L1855:  aload 45 
L1857:  invokevirtual Method com/fs/starfarer/combat/entities/ship/new getCellAtLocation (Lorg/lwjgl/util/vector/Vector2f;)[I 
L1860:  astore 46 
L1862:  aconst_null 
L1863:  astore 46 
L1865:  aload 46 
L1867:  ifnull L1890 
L1870:  aload_0 
L1871:  getfield Field com/fs/starfarer/combat/entities/Ship armorGrid Lcom/fs/starfarer/combat/entities/ship/new; 
L1874:  aload 46 
L1876:  iconst_0 
L1877:  iaload 
L1878:  aload 46 
L1880:  iconst_1 
L1881:  iaload 
L1882:  fconst_0 
L1883:  invokevirtual Method com/fs/starfarer/combat/entities/ship/new setArmorValue (IIF)V 
L1886:  aload_0 
L1887:  invokevirtual Method com/fs/starfarer/combat/entities/Ship syncWithArmorGridState ()V 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/entities/Ship Object java/util/Iterator Object java/util/List Object com/fs/starfarer/loading/specs/g Object com/fs/starfarer/loading/specs/g Object com/fs/starfarer/loading/specs/HullVariantSpec Object com/fs/starfarer/loading/specs/HullVariantSpec Object com/fs/starfarer/util/Tesselator$Oo Object com/fs/starfarer/util/Tesselator$Oo Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/renderers/damage/String Object com/fs/starfarer/combat/entities/ship/new Float Float Float Float Float Object org/lwjgl/util/vector/Vector2f Object org/lwjgl/util/vector/Vector2f Object org/lwjgl/util/vector/Vector2f Integer Float Float Float Float Float Float Float Float Integer Integer Float Object java/util/List Object com/fs/starfarer/util/Tesselator$Oo Object com/fs/starfarer/util/Tesselator$Oo Object org/lwjgl/util/vector/Vector2f Object [I 
            stack 
        .end stack 
L1890:  iconst_1 
L1891:  istore 47 
L1893:  iconst_2 
L1894:  istore 48 
L1896:  fconst_1 
L1897:  fstore 49 
L1899:  fload 41 
L1901:  fneg 
L1902:  fload 22 
L1904:  fconst_2 
L1905:  fdiv 
L1906:  fsub 
L1907:  fstore 50 
L1909:  goto L2685 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/entities/Ship Object java/util/Iterator Object java/util/List Object com/fs/starfarer/loading/specs/g Object com/fs/starfarer/loading/specs/g Object com/fs/starfarer/loading/specs/HullVariantSpec Object com/fs/starfarer/loading/specs/HullVariantSpec Object com/fs/starfarer/util/Tesselator$Oo Object com/fs/starfarer/util/Tesselator$Oo Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/renderers/damage/String Object com/fs/starfarer/combat/entities/ship/new Float Float Float Float Float Object org/lwjgl/util/vector/Vector2f Object org/lwjgl/util/vector/Vector2f Object org/lwjgl/util/vector/Vector2f Integer Float Float Float Float Float Float Float Float Integer Integer Float Object java/util/List Object com/fs/starfarer/util/Tesselator$Oo Object com/fs/starfarer/util/Tesselator$Oo Object org/lwjgl/util/vector/Vector2f Object [I Integer Integer Float Float 
            stack 
        .end stack 
L1912:  fload 41 
L1914:  fneg 
L1915:  fload 22 
L1917:  fconst_2 
L1918:  fdiv 
L1919:  fsub 
L1920:  fstore 51 
L1922:  goto L2665 

        .stack append Float 
L1925:  new org/lwjgl/util/vector/Vector2f 
L1928:  dup 
L1929:  fload 50 
L1931:  fload 51 
L1933:  invokespecial Method org/lwjgl/util/vector/Vector2f <init> (FF)V 
L1936:  astore 52 
L1938:  aload 52 
L1940:  aload_0 
L1941:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getFacing ()F 
L1944:  invokestatic Method com/fs/starfarer/prototype/Utils o00000 (Lorg/lwjgl/util/vector/Vector2f;F)Lorg/lwjgl/util/vector/Vector2f; 
L1947:  astore 52 
L1949:  aload 52 
L1951:  aload 19 
L1953:  aload 52 
L1955:  invokestatic Method org/lwjgl/util/vector/Vector2f add (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)Lorg/lwjgl/util/vector/Vector2f; 
L1958:  pop 
L1959:  aload 21 
L1961:  aload 52 
L1963:  aload 19 
L1965:  invokevirtual Method com/fs/starfarer/combat/entities/ship/new getCellAtLocation (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)[I 
L1968:  astore 53 
L1970:  aload 53 
L1972:  ifnonnull L1978 
L1975:  goto L2658 

        .stack append Object org/lwjgl/util/vector/Vector2f Object [I 
L1978:  aload 20 
L1980:  aload 53 
L1982:  iconst_0 
L1983:  iaload 
L1984:  aload 53 
L1986:  iconst_1 
L1987:  iaload 
L1988:  iconst_0 
L1989:  invokevirtual Method com/fs/starfarer/renderers/damage/String 'Ò00000' (IIZ)Lcom/fs/starfarer/renderers/damage/OOoO; 
L1992:  astore 54 
L1994:  aload 54 
L1996:  ifnonnull L2002 
L1999:  goto L2658 

        .stack append Object com/fs/starfarer/renderers/damage/OOoO 
L2002:  fload 22 
L2004:  ldc_w +0.6000000238418579f 
L2007:  fmul 
L2008:  fstore 55 
L2010:  aload_0 
L2011:  getfield Field com/fs/starfarer/combat/entities/Ship armorGrid Lcom/fs/starfarer/combat/entities/ship/new; 
L2014:  aload 52 
L2016:  aload_0 
L2017:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L2020:  invokevirtual Method com/fs/starfarer/combat/entities/ship/new getCellAtLocation (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)[I 
L2023:  astore 56 
L2025:  aload 56 
L2027:  ifnull L2331 
L2030:  aload_0 
L2031:  getfield Field com/fs/starfarer/combat/entities/Ship armorGrid Lcom/fs/starfarer/combat/entities/ship/new; 
L2034:  aload 56 
L2036:  iconst_0 
L2037:  iaload 
L2038:  aload 56 
L2040:  iconst_1 
L2041:  iaload 
L2042:  aload 21 
L2044:  aload 53 
L2046:  iconst_0 
L2047:  iaload 
L2048:  aload 53 
L2050:  iconst_1 
L2051:  iaload 
L2052:  invokevirtual Method com/fs/starfarer/combat/entities/ship/new getArmorValue (II)F 
L2055:  invokevirtual Method com/fs/starfarer/combat/entities/ship/new setArmorValue (IIF)V 
L2058:  iconst_0 
L2059:  istore 57 
L2061:  aload 43 
L2063:  getfield Field com/fs/starfarer/util/Tesselator$Oo Object F 
L2066:  fload 50 
L2068:  fload 23 
L2070:  fadd 
L2071:  fload 55 
L2073:  fload 49 
L2075:  fmul 
L2076:  fadd 
L2077:  fcmpl 
L2078:  ifgt L2244 
L2081:  aload 43 
L2083:  getfield Field com/fs/starfarer/util/Tesselator$Oo 'ô00000' F 
L2086:  fload 51 
L2088:  fload 24 
L2090:  fadd 
L2091:  fload 55 
L2093:  fload 49 
L2095:  fmul 
L2096:  fadd 
L2097:  fcmpl 
L2098:  ifgt L2244 
L2101:  aload 43 
L2103:  getfield Field com/fs/starfarer/util/Tesselator$Oo return F 
L2106:  fload 50 
L2108:  fload 23 
L2110:  fadd 
L2111:  fload 55 
L2113:  fload 49 
L2115:  fmul 
L2116:  fsub 
L2117:  fcmpg 
L2118:  iflt L2244 
L2121:  aload 43 
L2123:  getfield Field com/fs/starfarer/util/Tesselator$Oo 'Õ00000' F 
L2126:  fload 51 
L2128:  fload 24 
L2130:  fadd 
L2131:  fload 55 
L2133:  fload 49 
L2135:  fmul 
L2136:  fsub 
L2137:  fcmpg 
L2138:  iflt L2244 
L2141:  fload 55 
L2143:  fneg 
L2144:  fload 49 
L2146:  fmul 
L2147:  fstore 58 
L2149:  goto L2233 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/entities/Ship Object java/util/Iterator Object java/util/List Object com/fs/starfarer/loading/specs/g Object com/fs/starfarer/loading/specs/g Object com/fs/starfarer/loading/specs/HullVariantSpec Object com/fs/starfarer/loading/specs/HullVariantSpec Object com/fs/starfarer/util/Tesselator$Oo Object com/fs/starfarer/util/Tesselator$Oo Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/renderers/damage/String Object com/fs/starfarer/combat/entities/ship/new Float Float Float Float Float Object org/lwjgl/util/vector/Vector2f Object org/lwjgl/util/vector/Vector2f Object org/lwjgl/util/vector/Vector2f Integer Float Float Float Float Float Float Float Float Integer Integer Float Object java/util/List Object com/fs/starfarer/util/Tesselator$Oo Object com/fs/starfarer/util/Tesselator$Oo Object org/lwjgl/util/vector/Vector2f Object [I Integer Integer Float Float Float Object org/lwjgl/util/vector/Vector2f Object [I Object com/fs/starfarer/renderers/damage/OOoO Float Object [I Integer Float 
            stack 
        .end stack 
L2152:  fload 55 
L2154:  fneg 
L2155:  fload 49 
L2157:  fmul 
L2158:  fstore 59 
L2160:  goto L2215 

        .stack append Float 
L2163:  new org/lwjgl/util/vector/Vector2f 
L2166:  dup 
L2167:  fload 50 
L2169:  fload 23 
L2171:  fadd 
L2172:  fload 58 
L2174:  fadd 
L2175:  fload 51 
L2177:  fload 24 
L2179:  fadd 
L2180:  fload 59 
L2182:  fadd 
L2183:  invokespecial Method org/lwjgl/util/vector/Vector2f <init> (FF)V 
L2186:  astore 60 
L2188:  iload 57 
L2190:  aload 60 
L2192:  aload 11 
L2194:  invokestatic Method com/fs/util/oOOO o00000 (Lorg/lwjgl/util/vector/Vector2f;Ljava/util/List;)Z 
L2197:  ior 
L2198:  istore 57 
L2200:  iload 57 
L2202:  ifeq L2208 
L2205:  goto L2244 

        .stack same 
L2208:  fload 59 
L2210:  fload 55 
L2212:  fadd 
L2213:  fstore 59 

        .stack same 
L2215:  fload 59 
L2217:  fload 55 
L2219:  fload 49 
L2221:  fmul 
L2222:  fcmpg 
L2223:  ifle L2163 
L2226:  fload 58 
L2228:  fload 55 
L2230:  fadd 
L2231:  fstore 58 

        .stack chop 1 
L2233:  fload 58 
L2235:  fload 55 
L2237:  fload 49 
L2239:  fmul 
L2240:  fcmpg 
L2241:  ifle L2152 

        .stack chop 1 
L2244:  iload 57 
L2246:  ifeq L2331 
L2249:  aload 56 
L2251:  iconst_0 
L2252:  iaload 
L2253:  iload 47 
L2255:  if_icmplt L2331 
L2258:  aload 56 
L2260:  iconst_0 
L2261:  iaload 
L2262:  aload_0 
L2263:  getfield Field com/fs/starfarer/combat/entities/Ship armorGrid Lcom/fs/starfarer/combat/entities/ship/new; 
L2266:  invokevirtual Method com/fs/starfarer/combat/entities/ship/new getGridWidth ()I 
L2269:  iload 48 
L2271:  isub 
L2272:  if_icmpgt L2331 
L2275:  aload 56 
L2277:  iconst_1 
L2278:  iaload 
L2279:  iload 47 
L2281:  if_icmplt L2331 
L2284:  aload 56 
L2286:  iconst_1 
L2287:  iaload 
L2288:  aload_0 
L2289:  getfield Field com/fs/starfarer/combat/entities/Ship armorGrid Lcom/fs/starfarer/combat/entities/ship/new; 
L2292:  invokevirtual Method com/fs/starfarer/combat/entities/ship/new getGridHeight ()I 
L2295:  iload 48 
L2297:  isub 
L2298:  if_icmpgt L2331 
L2301:  aload_0 
L2302:  getfield Field com/fs/starfarer/combat/entities/Ship decalRenderer Lcom/fs/starfarer/renderers/damage/String; 
L2305:  aload 56 
L2307:  iconst_0 
L2308:  iaload 
L2309:  aload 56 
L2311:  iconst_1 
L2312:  iaload 
L2313:  iconst_1 
L2314:  invokevirtual Method com/fs/starfarer/renderers/damage/String 'Ò00000' (IIZ)Lcom/fs/starfarer/renderers/damage/OOoO; 
L2317:  astore 58 
L2319:  aload 58 
L2321:  ifnull L2331 
L2324:  aload 58 
L2326:  aload 54 
L2328:  invokevirtual Method com/fs/starfarer/renderers/damage/OOoO o00000 (Lcom/fs/starfarer/renderers/damage/OOoO;)V 

        .stack chop 1 
L2331:  aload 9 
L2333:  getfield Field com/fs/starfarer/combat/entities/Ship armorGrid Lcom/fs/starfarer/combat/entities/ship/new; 
L2336:  aload 52 
L2338:  aload 9 
L2340:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L2343:  invokevirtual Method com/fs/starfarer/combat/entities/ship/new getCellAtLocation (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)[I 
L2346:  astore 57 
L2348:  aload 57 
L2350:  ifnull L2658 
L2353:  aload 9 
L2355:  getfield Field com/fs/starfarer/combat/entities/Ship armorGrid Lcom/fs/starfarer/combat/entities/ship/new; 
L2358:  aload 57 
L2360:  iconst_0 
L2361:  iaload 
L2362:  aload 57 
L2364:  iconst_1 
L2365:  iaload 
L2366:  aload 21 
L2368:  aload 53 
L2370:  iconst_0 
L2371:  iaload 
L2372:  aload 53 
L2374:  iconst_1 
L2375:  iaload 
L2376:  invokevirtual Method com/fs/starfarer/combat/entities/ship/new getArmorValue (II)F 
L2379:  invokevirtual Method com/fs/starfarer/combat/entities/ship/new setArmorValue (IIF)V 
L2382:  iconst_0 
L2383:  istore 58 
L2385:  aload 44 
L2387:  getfield Field com/fs/starfarer/util/Tesselator$Oo Object F 
L2390:  fload 50 
L2392:  fload 25 
L2394:  fadd 
L2395:  fload 55 
L2397:  fload 49 
L2399:  fmul 
L2400:  fadd 
L2401:  fcmpl 
L2402:  ifgt L2568 
L2405:  aload 44 
L2407:  getfield Field com/fs/starfarer/util/Tesselator$Oo 'ô00000' F 
L2410:  fload 51 
L2412:  fload 26 
L2414:  fadd 
L2415:  fload 55 
L2417:  fload 49 
L2419:  fmul 
L2420:  fadd 
L2421:  fcmpl 
L2422:  ifgt L2568 
L2425:  aload 44 
L2427:  getfield Field com/fs/starfarer/util/Tesselator$Oo return F 
L2430:  fload 50 
L2432:  fload 25 
L2434:  fadd 
L2435:  fload 55 
L2437:  fload 49 
L2439:  fmul 
L2440:  fsub 
L2441:  fcmpg 
L2442:  iflt L2568 
L2445:  aload 44 
L2447:  getfield Field com/fs/starfarer/util/Tesselator$Oo 'Õ00000' F 
L2450:  fload 51 
L2452:  fload 26 
L2454:  fadd 
L2455:  fload 55 
L2457:  fload 49 
L2459:  fmul 
L2460:  fsub 
L2461:  fcmpg 
L2462:  iflt L2568 
L2465:  fload 55 
L2467:  fneg 
L2468:  fload 49 
L2470:  fmul 
L2471:  fstore 59 
L2473:  goto L2557 

        .stack append Object [I Integer Float 
L2476:  fload 55 
L2478:  fneg 
L2479:  fload 49 
L2481:  fmul 
L2482:  fstore 60 
L2484:  goto L2539 

        .stack append Float 
L2487:  new org/lwjgl/util/vector/Vector2f 
L2490:  dup 
L2491:  fload 50 
L2493:  fload 25 
L2495:  fadd 
L2496:  fload 59 
L2498:  fadd 
L2499:  fload 51 
L2501:  fload 26 
L2503:  fadd 
L2504:  fload 60 
L2506:  fadd 
L2507:  invokespecial Method org/lwjgl/util/vector/Vector2f <init> (FF)V 
L2510:  astore 61 
L2512:  iload 58 
L2514:  aload 61 
L2516:  aload 42 
L2518:  invokestatic Method com/fs/util/oOOO o00000 (Lorg/lwjgl/util/vector/Vector2f;Ljava/util/List;)Z 
L2521:  ior 
L2522:  istore 58 
L2524:  iload 58 
L2526:  ifeq L2532 
L2529:  goto L2568 

        .stack same 
L2532:  fload 60 
L2534:  fload 55 
L2536:  fadd 
L2537:  fstore 60 

        .stack same 
L2539:  fload 60 
L2541:  fload 55 
L2543:  fload 49 
L2545:  fmul 
L2546:  fcmpg 
L2547:  ifle L2487 
L2550:  fload 59 
L2552:  fload 55 
L2554:  fadd 
L2555:  fstore 59 

        .stack chop 1 
L2557:  fload 59 
L2559:  fload 55 
L2561:  fload 49 
L2563:  fmul 
L2564:  fcmpg 
L2565:  ifle L2476 

        .stack chop 1 
L2568:  iload 58 
L2570:  ifeq L2658 
L2573:  aload 57 
L2575:  iconst_0 
L2576:  iaload 
L2577:  iload 47 
L2579:  if_icmplt L2658 
L2582:  aload 57 
L2584:  iconst_0 
L2585:  iaload 
L2586:  aload 9 
L2588:  getfield Field com/fs/starfarer/combat/entities/Ship armorGrid Lcom/fs/starfarer/combat/entities/ship/new; 
L2591:  invokevirtual Method com/fs/starfarer/combat/entities/ship/new getGridWidth ()I 
L2594:  iload 48 
L2596:  isub 
L2597:  if_icmpgt L2658 
L2600:  aload 57 
L2602:  iconst_1 
L2603:  iaload 
L2604:  iload 47 
L2606:  if_icmplt L2658 
L2609:  aload 57 
L2611:  iconst_1 
L2612:  iaload 
L2613:  aload 9 
L2615:  getfield Field com/fs/starfarer/combat/entities/Ship armorGrid Lcom/fs/starfarer/combat/entities/ship/new; 
L2618:  invokevirtual Method com/fs/starfarer/combat/entities/ship/new getGridHeight ()I 
L2621:  iload 48 
L2623:  isub 
L2624:  if_icmpgt L2658 
L2627:  aload 9 
L2629:  getfield Field com/fs/starfarer/combat/entities/Ship decalRenderer Lcom/fs/starfarer/renderers/damage/String; 
L2632:  aload 57 
L2634:  iconst_0 
L2635:  iaload 
L2636:  aload 57 
L2638:  iconst_1 
L2639:  iaload 
L2640:  iconst_1 
L2641:  invokevirtual Method com/fs/starfarer/renderers/damage/String 'Ò00000' (IIZ)Lcom/fs/starfarer/renderers/damage/OOoO; 
L2644:  astore 59 
L2646:  aload 59 
L2648:  ifnull L2658 
L2651:  aload 59 
L2653:  aload 54 
L2655:  invokevirtual Method com/fs/starfarer/renderers/damage/OOoO o00000 (Lcom/fs/starfarer/renderers/damage/OOoO;)V 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/entities/Ship Object java/util/Iterator Object java/util/List Object com/fs/starfarer/loading/specs/g Object com/fs/starfarer/loading/specs/g Object com/fs/starfarer/loading/specs/HullVariantSpec Object com/fs/starfarer/loading/specs/HullVariantSpec Object com/fs/starfarer/util/Tesselator$Oo Object com/fs/starfarer/util/Tesselator$Oo Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/renderers/damage/String Object com/fs/starfarer/combat/entities/ship/new Float Float Float Float Float Object org/lwjgl/util/vector/Vector2f Object org/lwjgl/util/vector/Vector2f Object org/lwjgl/util/vector/Vector2f Integer Float Float Float Float Float Float Float Float Integer Integer Float Object java/util/List Object com/fs/starfarer/util/Tesselator$Oo Object com/fs/starfarer/util/Tesselator$Oo Object org/lwjgl/util/vector/Vector2f Object [I Integer Integer Float Float Float 
            stack 
        .end stack 
L2658:  fload 51 
L2660:  fload 22 
L2662:  fadd 
L2663:  fstore 51 

        .stack same 
L2665:  fload 51 
L2667:  fload 41 
L2669:  fload 41 
L2671:  fconst_2 
L2672:  fdiv 
L2673:  fadd 
L2674:  fcmpg 
L2675:  iflt L1925 
L2678:  fload 50 
L2680:  fload 22 
L2682:  fadd 
L2683:  fstore 50 

        .stack chop 1 
L2685:  fload 50 
L2687:  fload 41 
L2689:  fload 41 
L2691:  fconst_2 
L2692:  fdiv 
L2693:  fadd 
L2694:  fcmpg 
L2695:  ifge L2703 
L2698:  aload 46 
L2700:  ifnull L1912 

        .stack chop 1 
L2703:  aload 9 
L2705:  new com/fs/starfarer/combat/entities/ship/null 
L2708:  dup 
L2709:  aload 9 
L2711:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getStats ()Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L2714:  aload 9 
L2716:  invokespecial Method com/fs/starfarer/combat/entities/ship/null <init> (Lcom/fs/starfarer/combat/entities/ship/return;Lcom/fs/starfarer/combat/entities/ship/null$Oo;)V 
L2719:  putfield Field com/fs/starfarer/combat/entities/Ship engineController Lcom/fs/starfarer/combat/entities/ship/null; 
L2722:  aload 9 
L2724:  getfield Field com/fs/starfarer/combat/entities/Ship engineController Lcom/fs/starfarer/combat/entities/ship/null; 
L2727:  invokevirtual Method com/fs/starfarer/combat/entities/ship/null init ()V 
L2730:  aload 9 
L2732:  new com/fs/starfarer/renderers/damage/I 
L2735:  dup 
L2736:  aload 9 
L2738:  invokespecial Method com/fs/starfarer/renderers/damage/I <init> (Lcom/fs/starfarer/renderers/damage/I$o;)V 
L2741:  putfield Field com/fs/starfarer/combat/entities/Ship empDecal Lcom/fs/starfarer/renderers/damage/I; 
L2744:  aload 9 
L2746:  new com/fs/starfarer/renderers/oOoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 
L2749:  dup 
L2750:  aload 9 
L2752:  invokespecial Method com/fs/starfarer/renderers/oOoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO <init> (Lcom/fs/starfarer/combat/entities/Ship;)V 
L2755:  putfield Field com/fs/starfarer/combat/entities/Ship ventingAnimation Lcom/fs/starfarer/renderers/oOoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO; 
L2758:  aload_0 
L2759:  getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L2762:  invokevirtual Method com/fs/starfarer/combat/entities/ship/D isVenting ()Z 
L2765:  ifeq L2775 
L2768:  aload_0 
L2769:  getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L2772:  invokevirtual Method com/fs/starfarer/combat/entities/ship/D stopVenting ()V 

        .stack same_extended 
L2775:  aload 9 
L2777:  new com/fs/starfarer/combat/entities/ship/D 
L2780:  dup 
L2781:  aload 9 
L2783:  aload 9 
L2785:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getStats ()Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L2788:  aload 9 
L2790:  invokespecial Method com/fs/starfarer/combat/entities/ship/D <init> (Lcom/fs/starfarer/combat/entities/Ship;Lcom/fs/starfarer/combat/entities/ship/C;Lcom/fs/starfarer/combat/entities/ship/D$o;)V 
L2793:  putfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L2796:  aload_0 
L2797:  getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L2800:  invokevirtual Method com/fs/starfarer/combat/entities/ship/D isOverloaded ()Z 
L2803:  ifeq L2821 
L2806:  aload 9 
L2808:  getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L2811:  aload_0 
L2812:  getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L2815:  invokevirtual Method com/fs/starfarer/combat/entities/ship/D getOverloadTimeRemaining ()F 
L2818:  invokevirtual Method com/fs/starfarer/combat/entities/ship/D forceOverload (F)V 

        .stack same 
L2821:  aload_0 
L2822:  getfield Field com/fs/starfarer/combat/entities/Ship modules Ljava/util/List; 
L2825:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L2830:  astore 51 
L2832:  goto L2912 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/entities/Ship Object java/util/Iterator Object java/util/List Object com/fs/starfarer/loading/specs/g Object com/fs/starfarer/loading/specs/g Object com/fs/starfarer/loading/specs/HullVariantSpec Object com/fs/starfarer/loading/specs/HullVariantSpec Object com/fs/starfarer/util/Tesselator$Oo Object com/fs/starfarer/util/Tesselator$Oo Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/renderers/damage/String Object com/fs/starfarer/combat/entities/ship/new Float Float Float Float Float Object org/lwjgl/util/vector/Vector2f Object org/lwjgl/util/vector/Vector2f Object org/lwjgl/util/vector/Vector2f Integer Float Float Float Float Float Float Float Float Integer Integer Float Object java/util/List Object com/fs/starfarer/util/Tesselator$Oo Object com/fs/starfarer/util/Tesselator$Oo Object org/lwjgl/util/vector/Vector2f Object [I Integer Integer Float Top Object java/util/Iterator 
            stack 
        .end stack 
L2835:  aload 51 
L2837:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L2842:  checkcast com/fs/starfarer/combat/entities/ship/A/OooO 
L2845:  astore 50 
L2847:  aload 50 
L2849:  instanceof com/fs/starfarer/combat/systems/o00O 
L2852:  ifeq L2912 
L2855:  aload 50 
L2857:  checkcast com/fs/starfarer/combat/systems/o00O 
L2860:  astore 52 
L2862:  ldc_w +0.30000001192092896f 
L2865:  fstore 53 
L2867:  aload 52 
L2869:  invokeinterface InterfaceMethod com/fs/starfarer/combat/systems/o00O getSlot ()Lcom/fs/starfarer/loading/specs/nullsuper; 1 
L2874:  invokevirtual Method com/fs/starfarer/loading/specs/nullsuper isHardpoint ()Z 
L2877:  ifeq L2885 
L2880:  ldc_w +0.25f 
L2883:  fstore 53 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/entities/Ship Object java/util/Iterator Object java/util/List Object com/fs/starfarer/loading/specs/g Object com/fs/starfarer/loading/specs/g Object com/fs/starfarer/loading/specs/HullVariantSpec Object com/fs/starfarer/loading/specs/HullVariantSpec Object com/fs/starfarer/util/Tesselator$Oo Object com/fs/starfarer/util/Tesselator$Oo Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/renderers/damage/String Object com/fs/starfarer/combat/entities/ship/new Float Float Float Float Float Object org/lwjgl/util/vector/Vector2f Object org/lwjgl/util/vector/Vector2f Object org/lwjgl/util/vector/Vector2f Integer Float Float Float Float Float Float Float Float Integer Integer Float Object java/util/List Object com/fs/starfarer/util/Tesselator$Oo Object com/fs/starfarer/util/Tesselator$Oo Object org/lwjgl/util/vector/Vector2f Object [I Integer Integer Float Object com/fs/starfarer/combat/entities/ship/A/OooO Object java/util/Iterator Object com/fs/starfarer/combat/systems/o00O Float 
            stack 
        .end stack 
L2885:  aload 52 
L2887:  invokeinterface InterfaceMethod com/fs/starfarer/combat/systems/o00O getDamageTracker ()Lcom/fs/starfarer/combat/entities/ship/A/String; 1 
L2892:  astore 54 
L2894:  aload 54 
L2896:  ifnull L2912 
L2899:  aload 54 
L2901:  fload 53 
L2903:  invokevirtual Method com/fs/starfarer/combat/entities/ship/A/String 'super' (F)V 
L2906:  aload 54 
L2908:  iconst_1 
L2909:  invokevirtual Method com/fs/starfarer/combat/entities/ship/A/String 'super' (Z)V 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/entities/Ship Object java/util/Iterator Object java/util/List Object com/fs/starfarer/loading/specs/g Object com/fs/starfarer/loading/specs/g Object com/fs/starfarer/loading/specs/HullVariantSpec Object com/fs/starfarer/loading/specs/HullVariantSpec Object com/fs/starfarer/util/Tesselator$Oo Object com/fs/starfarer/util/Tesselator$Oo Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/renderers/damage/String Object com/fs/starfarer/combat/entities/ship/new Float Float Float Float Float Object org/lwjgl/util/vector/Vector2f Object org/lwjgl/util/vector/Vector2f Object org/lwjgl/util/vector/Vector2f Integer Float Float Float Float Float Float Float Float Integer Integer Float Object java/util/List Object com/fs/starfarer/util/Tesselator$Oo Object com/fs/starfarer/util/Tesselator$Oo Object org/lwjgl/util/vector/Vector2f Object [I Integer Integer Float Top Object java/util/Iterator 
            stack 
        .end stack 
L2912:  aload 51 
L2914:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L2919:  ifne L2835 
L2922:  aload 9 
L2924:  getfield Field com/fs/starfarer/combat/entities/Ship modules Ljava/util/List; 
L2927:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L2932:  astore 51 
L2934:  goto L3014 

        .stack same 
L2937:  aload 51 
L2939:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L2944:  checkcast com/fs/starfarer/combat/entities/ship/A/OooO 
L2947:  astore 50 
L2949:  aload 50 
L2951:  instanceof com/fs/starfarer/combat/systems/o00O 
L2954:  ifeq L3014 
L2957:  aload 50 
L2959:  checkcast com/fs/starfarer/combat/systems/o00O 
L2962:  astore 52 
L2964:  ldc_w +0.30000001192092896f 
L2967:  fstore 53 
L2969:  aload 52 
L2971:  invokeinterface InterfaceMethod com/fs/starfarer/combat/systems/o00O getSlot ()Lcom/fs/starfarer/loading/specs/nullsuper; 1 
L2976:  invokevirtual Method com/fs/starfarer/loading/specs/nullsuper isHardpoint ()Z 
L2979:  ifeq L2987 
L2982:  ldc_w +0.25f 
L2985:  fstore 53 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/entities/Ship Object java/util/Iterator Object java/util/List Object com/fs/starfarer/loading/specs/g Object com/fs/starfarer/loading/specs/g Object com/fs/starfarer/loading/specs/HullVariantSpec Object com/fs/starfarer/loading/specs/HullVariantSpec Object com/fs/starfarer/util/Tesselator$Oo Object com/fs/starfarer/util/Tesselator$Oo Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/renderers/damage/String Object com/fs/starfarer/combat/entities/ship/new Float Float Float Float Float Object org/lwjgl/util/vector/Vector2f Object org/lwjgl/util/vector/Vector2f Object org/lwjgl/util/vector/Vector2f Integer Float Float Float Float Float Float Float Float Integer Integer Float Object java/util/List Object com/fs/starfarer/util/Tesselator$Oo Object com/fs/starfarer/util/Tesselator$Oo Object org/lwjgl/util/vector/Vector2f Object [I Integer Integer Float Object com/fs/starfarer/combat/entities/ship/A/OooO Object java/util/Iterator Object com/fs/starfarer/combat/systems/o00O Float 
            stack 
        .end stack 
L2987:  aload 52 
L2989:  invokeinterface InterfaceMethod com/fs/starfarer/combat/systems/o00O getDamageTracker ()Lcom/fs/starfarer/combat/entities/ship/A/String; 1 
L2994:  astore 54 
L2996:  aload 54 
L2998:  ifnull L3014 
L3001:  aload 54 
L3003:  fload 53 
L3005:  invokevirtual Method com/fs/starfarer/combat/entities/ship/A/String 'super' (F)V 
L3008:  aload 54 
L3010:  iconst_1 
L3011:  invokevirtual Method com/fs/starfarer/combat/entities/ship/A/String 'super' (Z)V 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/entities/Ship Object java/util/Iterator Object java/util/List Object com/fs/starfarer/loading/specs/g Object com/fs/starfarer/loading/specs/g Object com/fs/starfarer/loading/specs/HullVariantSpec Object com/fs/starfarer/loading/specs/HullVariantSpec Object com/fs/starfarer/util/Tesselator$Oo Object com/fs/starfarer/util/Tesselator$Oo Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/renderers/damage/String Object com/fs/starfarer/combat/entities/ship/new Float Float Float Float Float Object org/lwjgl/util/vector/Vector2f Object org/lwjgl/util/vector/Vector2f Object org/lwjgl/util/vector/Vector2f Integer Float Float Float Float Float Float Float Float Integer Integer Float Object java/util/List Object com/fs/starfarer/util/Tesselator$Oo Object com/fs/starfarer/util/Tesselator$Oo Object org/lwjgl/util/vector/Vector2f Object [I Integer Integer Float Top Object java/util/Iterator 
            stack 
        .end stack 
L3014:  aload 51 
L3016:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L3021:  ifne L2937 
L3024:  aload_0 
L3025:  getfield Field com/fs/starfarer/combat/entities/Ship groups Ljava/util/List; 
L3028:  invokeinterface InterfaceMethod java/util/List clear ()V 1 
L3033:  aload 9 
L3035:  getfield Field com/fs/starfarer/combat/entities/Ship groups Ljava/util/List; 
L3038:  invokeinterface InterfaceMethod java/util/List clear ()V 1 
L3043:  aload 9 
L3045:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L3048:  aload 19 
L3050:  invokestatic Method com/fs/starfarer/prototype/Utils 'Ó00000' (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)F 
L3053:  invokestatic Method com/fs/starfarer/prototype/Utils 'Ó00000' (F)Lorg/lwjgl/util/vector/Vector2f; 
L3056:  astore 50 
L3058:  aload 50 
L3060:  ldc_w +0.5f 
L3063:  invokevirtual Method org/lwjgl/util/vector/Vector2f scale (F)Lorg/lwjgl/util/vector/Vector; 
L3066:  pop 
L3067:  aload 9 
L3069:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 
L3072:  aload 50 
L3074:  aload 9 
L3076:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 
L3079:  invokestatic Method org/lwjgl/util/vector/Vector2f add (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)Lorg/lwjgl/util/vector/Vector2f; 
L3082:  pop 
L3083:  aload_0 
L3084:  invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L3087:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L3090:  if_acmpeq L3136 
L3093:  invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L3096:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getCombatUI ()Lcom/fs/starfarer/combat/K; 
L3099:  ifnull L3265 
L3102:  invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L3105:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getCombatUI ()Lcom/fs/starfarer/combat/K; 
L3108:  invokeinterface InterfaceMethod com/fs/starfarer/combat/K getEntityToFollow ()Lcom/fs/starfarer/combat/new/OoOO$o; 1 
L3113:  ifnull L3265 
L3116:  aload_0 
L3117:  invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L3120:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getCombatUI ()Lcom/fs/starfarer/combat/K; 
L3123:  invokeinterface InterfaceMethod com/fs/starfarer/combat/K getEntityToFollow ()Lcom/fs/starfarer/combat/new/OoOO$o; 1 
L3128:  invokeinterface InterfaceMethod com/fs/starfarer/combat/new/OoOO$o getEntity ()Lcom/fs/starfarer/combat/E/B; 1 
L3133:  if_acmpne L3265 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/util/Tesselator$oo Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/entities/Ship Object java/util/Iterator Object java/util/List Object com/fs/starfarer/loading/specs/g Object com/fs/starfarer/loading/specs/g Object com/fs/starfarer/loading/specs/HullVariantSpec Object com/fs/starfarer/loading/specs/HullVariantSpec Object com/fs/starfarer/util/Tesselator$Oo Object com/fs/starfarer/util/Tesselator$Oo Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/renderers/damage/String Object com/fs/starfarer/combat/entities/ship/new Float Float Float Float Float Object org/lwjgl/util/vector/Vector2f Object org/lwjgl/util/vector/Vector2f Object org/lwjgl/util/vector/Vector2f Integer Float Float Float Float Float Float Float Float Integer Integer Float Object java/util/List Object com/fs/starfarer/util/Tesselator$Oo Object com/fs/starfarer/util/Tesselator$Oo Object org/lwjgl/util/vector/Vector2f Object [I Integer Integer Float Object org/lwjgl/util/vector/Vector2f 
            stack 
        .end stack 
L3136:  invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L3139:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getCombatUI ()Lcom/fs/starfarer/combat/K; 
L3142:  astore 51 
L3144:  aload 51 
L3146:  ifnull L3265 
L3149:  aload 51 
L3151:  invokeinterface InterfaceMethod com/fs/starfarer/combat/K isViewOnTarget ()Z 1 
L3156:  ifne L3265 
L3159:  aload 51 
L3161:  invokeinterface InterfaceMethod com/fs/starfarer/combat/K getEntityToFollow ()Lcom/fs/starfarer/combat/new/OoOO$o; 1 
L3166:  ifnonnull L3265 
L3169:  aload 51 
L3171:  invokeinterface InterfaceMethod com/fs/starfarer/combat/K getViewMouseOffset ()Lcom/fs/starfarer/combat/L; 1 
L3176:  ifnull L3265 
L3179:  aload 51 
L3181:  invokeinterface InterfaceMethod com/fs/starfarer/combat/K getViewMouseOffset ()Lcom/fs/starfarer/combat/L; 1 
L3186:  astore 52 
L3188:  aload 52 
L3190:  invokeinterface InterfaceMethod com/fs/starfarer/combat/L 'Ò00000' ()F 1 
L3195:  fstore 53 
L3197:  aload 52 
L3199:  invokeinterface InterfaceMethod com/fs/starfarer/combat/L String ()F 1 
L3204:  fstore 54 
L3206:  aload 19 
L3208:  aload_0 
L3209:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L3212:  invokestatic Method com/fs/starfarer/prototype/Utils 'Ø00000' (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)F 
L3215:  fstore 55 
L3217:  fload 55 
L3219:  ldc_w +2000.0f 
L3222:  fcmpg 
L3223:  ifge L3265 
L3226:  aload 52 
L3228:  fload 53 
L3230:  aload 19 
L3232:  getfield Field org/lwjgl/util/vector/Vector2f x F 
L3235:  fadd 
L3236:  aload_0 
L3237:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L3240:  getfield Field org/lwjgl/util/vector/Vector2f x F 
L3243:  fsub 
L3244:  fload 54 
L3246:  aload 19 
L3248:  getfield Field org/lwjgl/util/vector/Vector2f y F 
L3251:  fadd 
L3252:  aload_0 
L3253:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L3256:  getfield Field org/lwjgl/util/vector/Vector2f y F 
L3259:  fsub 
L3260:  invokeinterface InterfaceMethod com/fs/starfarer/combat/L 'super' (FF)V 3 

        .stack same_extended 
L3265:  invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L3268:  aload 9 
L3270:  invokevirtual Method com/fs/starfarer/combat/CombatEngine addObject (Ljava/lang/Object;)V 
L3273:  aload 9 
L3275:  areturn 
L3276:  
    .end code 
.end method 

.method public static createPieceHullSpec : (Lcom/fs/starfarer/loading/specs/g;Lcom/fs/starfarer/combat/E/o0OO;F)Lcom/fs/starfarer/loading/specs/g; 
    .code stack 4 locals 8 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/loading/specs/g clone ()Lcom/fs/starfarer/loading/specs/g; 
L4:     astore_3 
L5:     aload_1 
L6:     invokestatic Method com/fs/starfarer/util/Tesselator 'Ò00000' (Lcom/fs/starfarer/combat/E/o0OO;)Lcom/fs/starfarer/util/Tesselator$Oo; 
L9:     astore 4 
L11:    aload 4 
L13:    aload 4 
L15:    getfield Field com/fs/starfarer/util/Tesselator$Oo o00000 F 
L18:    fload_2 
L19:    fdiv 
L20:    invokestatic Method java/lang/Math round (F)I 
L23:    i2f 
L24:    fload_2 
L25:    fmul 
L26:    putfield Field com/fs/starfarer/util/Tesselator$Oo o00000 F 
L29:    aload 4 
L31:    aload 4 
L33:    getfield Field com/fs/starfarer/util/Tesselator$Oo 'Ø00000' F 
L36:    fload_2 
L37:    fdiv 
L38:    invokestatic Method java/lang/Math round (F)I 
L41:    i2f 
L42:    fload_2 
L43:    fmul 
L44:    putfield Field com/fs/starfarer/util/Tesselator$Oo 'Ø00000' F 
L47:    aload_3 
L48:    invokevirtual Method com/fs/starfarer/loading/specs/g getSpriteSpec ()Lcom/fs/starfarer/loading/specs/Q; 
L51:    astore 5 
L53:    aload 5 
L55:    invokevirtual Method com/fs/starfarer/loading/specs/Q class ()F 
L58:    fstore 6 
L60:    aload 5 
L62:    invokevirtual Method com/fs/starfarer/loading/specs/Q new ()F 
L65:    fstore 7 
L67:    aload 5 
L69:    aload_1 
L70:    invokevirtual Method com/fs/starfarer/loading/specs/Q o00000 (Lcom/fs/starfarer/combat/E/o0OO;)V 
L73:    aload 5 
L75:    aload 4 
L77:    getfield Field com/fs/starfarer/util/Tesselator$Oo 'Ø00000' F 
L80:    fneg 
L81:    fload 6 
L83:    fadd 
L84:    aload 4 
L86:    getfield Field com/fs/starfarer/util/Tesselator$Oo o00000 F 
L89:    fload 7 
L91:    fadd 
L92:    invokevirtual Method com/fs/starfarer/loading/specs/Q o00000 (FF)V 
L95:    aload_3 
L96:    areturn 
L97:    
    .end code 
.end method 

.method public getRenderOffset : ()Lorg/lwjgl/util/vector/Vector2f; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship renderOffset Lorg/lwjgl/util/vector/Vector2f; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public isPiece : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship isPiece Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public clone : ()Lcom/fs/starfarer/combat/entities/Ship; 
    .code stack 4 locals 2 
        .catch java/lang/CloneNotSupportedException from L0 to L49 using L50 
L0:     aload_0 
L1:     invokespecial Method java/lang/Object clone ()Ljava/lang/Object; 
L4:     checkcast com/fs/starfarer/combat/entities/Ship 
L7:     astore_1 
L8:     aload_1 
L9:     new org/lwjgl/util/vector/Vector2f 
L12:    dup 
L13:    aload_0 
L14:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 
L17:    invokespecial Method org/lwjgl/util/vector/Vector2f <init> (Lorg/lwjgl/util/vector/ReadableVector2f;)V 
L20:    invokevirtual Method com/fs/starfarer/combat/entities/Ship setVel (Lorg/lwjgl/util/vector/Vector2f;)V 
L23:    aload_1 
L24:    new org/lwjgl/util/vector/Vector2f 
L27:    dup 
L28:    aload_0 
L29:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L32:    invokespecial Method org/lwjgl/util/vector/Vector2f <init> (Lorg/lwjgl/util/vector/ReadableVector2f;)V 
L35:    invokevirtual Method com/fs/starfarer/combat/entities/Ship setLoc (Lorg/lwjgl/util/vector/Vector2f;)V 
L38:    aload_1 
L39:    aconst_null 
L40:    invokevirtual Method com/fs/starfarer/combat/entities/Ship setAI (Lcom/fs/starfarer/combat/ai/AI;)V 
L43:    aload_1 
L44:    aconst_null 
L45:    putfield Field com/fs/starfarer/combat/entities/Ship breakingAnimation Lcom/fs/starfarer/combat/entities/H; 
L48:    aload_1 
L49:    areturn 

        .stack stack_1 Object java/lang/CloneNotSupportedException 
L50:    astore_1 
L51:    aconst_null 
L52:    areturn 
L53:    
    .end code 
.end method 

.method public <init> : (Lcom/fs/starfarer/combat/entities/ship/o0OO;Lcom/fs/starfarer/loading/specs/HullVariantSpec;ZLcom/fs/starfarer/rpg/Person;Ljava/lang/String;Lcom/fs/starfarer/api/fleet/FleetMemberAPI;)V 
    .code stack 9 locals 12 
L0:     aload_0 
L1:     invokespecial Method com/fs/starfarer/combat/entities/BaseEntity <init> ()V 
L4:     aload_0 
L5:     new java/util/ArrayList 
L8:     dup 
L9:     invokespecial Method java/util/ArrayList <init> ()V 
L12:    putfield Field com/fs/starfarer/combat/entities/Ship afterimages Ljava/util/List; 
L15:    aload_0 
L16:    iconst_0 
L17:    putfield Field com/fs/starfarer/combat/entities/Ship ignoresMapBounds Z 
L20:    aload_0 
L21:    new java/util/ArrayList 
L24:    dup 
L25:    invokespecial Method java/util/ArrayList <init> ()V 
L28:    putfield Field com/fs/starfarer/combat/entities/Ship engineLocations Ljava/util/List; 
L31:    aload_0 
L32:    new java/util/ArrayList 
L35:    dup 
L36:    invokespecial Method java/util/ArrayList <init> ()V 
L39:    putfield Field com/fs/starfarer/combat/entities/Ship modules Ljava/util/List; 
L42:    aload_0 
L43:    new java/util/ArrayList 
L46:    dup 
L47:    invokespecial Method java/util/ArrayList <init> ()V 
L50:    putfield Field com/fs/starfarer/combat/entities/Ship launchBays Ljava/util/List; 
L53:    aload_0 
L54:    new java/util/ArrayList 
L57:    dup 
L58:    invokespecial Method java/util/ArrayList <init> ()V 
L61:    putfield Field com/fs/starfarer/combat/entities/Ship groups Ljava/util/List; 
L64:    aload_0 
L65:    ldc_w +76.0f 
L68:    putfield Field com/fs/starfarer/combat/entities/Ship maxViewOffset F 
L71:    aload_0 
L72:    new org/lwjgl/util/vector/Vector2f 
L75:    dup 
L76:    invokespecial Method org/lwjgl/util/vector/Vector2f <init> ()V 
L79:    putfield Field com/fs/starfarer/combat/entities/Ship mouseTarget Lorg/lwjgl/util/vector/Vector2f; 
L82:    aload_0 
L83:    aconst_null 
L84:    putfield Field com/fs/starfarer/combat/entities/Ship shieldTarget Lorg/lwjgl/util/vector/Vector2f; 
L87:    aload_0 
L88:    aconst_null 
L89:    putfield Field com/fs/starfarer/combat/entities/Ship fighterWaypoint Lorg/lwjgl/util/vector/Vector2f; 
L92:    aload_0 
L93:    aconst_null 
L94:    putfield Field com/fs/starfarer/combat/entities/Ship colorFader Lcom/fs/graphics/util/Fader; 
L97:    aload_0 
L98:    new java/awt/Color 
L101:   dup 
L102:   sipush 255 
L105:   sipush 255 
L108:   sipush 255 
L111:   sipush 255 
L114:   invokespecial Method java/awt/Color <init> (IIII)V 
L117:   putfield Field com/fs/starfarer/combat/entities/Ship fadeToColor Ljava/awt/Color; 
L120:   aload_0 
L121:   new java/awt/Color 
L124:   dup 
L125:   sipush 255 
L128:   sipush 255 
L131:   sipush 255 
L134:   sipush 255 
L137:   invokespecial Method java/awt/Color <init> (IIII)V 
L140:   putfield Field com/fs/starfarer/combat/entities/Ship currColor Ljava/awt/Color; 
L143:   aload_0 
L144:   fconst_0 
L145:   putfield Field com/fs/starfarer/combat/entities/Ship overkill F 
L148:   aload_0 
L149:   ldc_w +1.7014117331926443e+38f 
L152:   putfield Field com/fs/starfarer/combat/entities/Ship sinceLastDamageTaken F 
L155:   aload_0 
L156:   ldc_w +1.7014117331926443e+38f 
L159:   putfield Field com/fs/starfarer/combat/entities/Ship sinceLastShieldDamageTaken F 
L162:   aload_0 
L163:   aconst_null 
L164:   putfield Field com/fs/starfarer/combat/entities/Ship wing Lcom/fs/starfarer/combat/ai/M; 
L167:   aload_0 
L168:   getstatic Field com/fs/starfarer/api/combat/CombatEngineLayers CAPITAL_SHIPS_LAYER Lcom/fs/starfarer/api/combat/CombatEngineLayers; 
L171:   putfield Field com/fs/starfarer/combat/entities/Ship layer Lcom/fs/starfarer/api/combat/CombatEngineLayers; 
L174:   aload_0 
L175:   iconst_m1 
L176:   putfield Field com/fs/starfarer/combat/entities/Ship originalOwner I 
L179:   aload_0 
L180:   iconst_0 
L181:   putfield Field com/fs/starfarer/combat/entities/Ship holdFire Z 
L184:   aload_0 
L185:   iconst_0 
L186:   putfield Field com/fs/starfarer/combat/entities/Ship holdFireOneFrame Z 
L189:   aload_0 
L190:   ldc_w +1.600000023841858f 
L193:   putfield Field com/fs/starfarer/combat/entities/Ship aimAccuracy F 
L196:   aload_0 
L197:   ldc_w Class com/fs/starfarer/combat/entities/Ship$oo 
L200:   invokestatic Method java/util/EnumSet noneOf (Ljava/lang/Class;)Ljava/util/EnumSet; 
L203:   putfield Field com/fs/starfarer/combat/entities/Ship blockedCommands Ljava/util/EnumSet; 
L206:   aload_0 
L207:   iconst_0 
L208:   putfield Field com/fs/starfarer/combat/entities/Ship phased Z 
L211:   aload_0 
L212:   iconst_0 
L213:   putfield Field com/fs/starfarer/combat/entities/Ship isDrone Z 
L216:   aload_0 
L217:   iconst_0 
L218:   putfield Field com/fs/starfarer/combat/entities/Ship setModuleFacings Z 
L221:   aload_0 
L222:   aconst_null 
L223:   putfield Field com/fs/starfarer/combat/entities/Ship fleetMemberId Ljava/lang/String; 
L226:   aload_0 
L227:   ldc_w +0.5f 
L230:   putfield Field com/fs/starfarer/combat/entities/Ship crAtDeployment F 
L233:   aload_0 
L234:   ldc_w +0.5f 
L237:   putfield Field com/fs/starfarer/combat/entities/Ship currentCR F 
L240:   aload_0 
L241:   fconst_0 
L242:   putfield Field com/fs/starfarer/combat/entities/Ship timeDeployed F 
L245:   aload_0 
L246:   fconst_0 
L247:   putfield Field com/fs/starfarer/combat/entities/Ship fullTimeDeployed F 
L250:   aload_0 
L251:   fconst_0 
L252:   putfield Field com/fs/starfarer/combat/entities/Ship timeDeployedUnderPlayerControl F 
L255:   aload_0 
L256:   ldc_w +6000.0f 
L259:   putfield Field com/fs/starfarer/combat/entities/Ship sinceTimeIncrease F 
L262:   aload_0 
L263:   fconst_1 
L264:   putfield Field com/fs/starfarer/combat/entities/Ship hullLevelAtDeployment F 
L267:   aload_0 
L268:   fconst_1 
L269:   putfield Field com/fs/starfarer/combat/entities/Ship lowestHullLevelReached F 
L272:   aload_0 
L273:   iconst_0 
L274:   putfield Field com/fs/starfarer/combat/entities/Ship wasNudged Z 
L277:   aload_0 
L278:   iconst_0 
L279:   putfield Field com/fs/starfarer/combat/entities/Ship playedWarnSound Z 
L282:   aload_0 
L283:   iconst_0 
L284:   putfield Field com/fs/starfarer/combat/entities/Ship playedMalfSound Z 
L287:   aload_0 
L288:   iconst_0 
L289:   putfield Field com/fs/starfarer/combat/entities/Ship playedCritMalfSound Z 
L292:   aload_0 
L293:   ldc_w +100.0f 
L296:   putfield Field com/fs/starfarer/combat/entities/Ship baseCriticalMalfunctionDamage F 
L299:   aload_0 
L300:   fconst_0 
L301:   putfield Field com/fs/starfarer/combat/entities/Ship remainingCriticalMalfunctionAttempts F 
L304:   aload_0 
L305:   fconst_0 
L306:   putfield Field com/fs/starfarer/combat/entities/Ship engineFractionPermanentlyDisabled F 
L309:   aload_0 
L310:   new com/fs/starfarer/util/IntervalTracker 
L313:   dup 
L314:   ldc_w +0.75f 
L317:   ldc_w +1.25f 
L320:   invokespecial Method com/fs/starfarer/util/IntervalTracker <init> (FF)V 
L323:   putfield Field com/fs/starfarer/combat/entities/Ship shieldMalfunctionTracker Lcom/fs/starfarer/util/IntervalTracker; 
L326:   aload_0 
L327:   ldc_w +4.0f 
L330:   ldc +3.0f 
L332:   invokestatic Method java/lang/Math random ()D 
L335:   d2f 
L336:   fmul 
L337:   fadd 
L338:   putfield Field com/fs/starfarer/combat/entities/Ship minTimeBeforeReport F 
L341:   aload_0 
L342:   new com/fs/starfarer/util/IntervalTracker 
L345:   dup 
L346:   ldc_w +0.75f 
L349:   ldc_w +1.25f 
L352:   invokespecial Method com/fs/starfarer/util/IntervalTracker <init> (FF)V 
L355:   putfield Field com/fs/starfarer/combat/entities/Ship peakActiveTracker Lcom/fs/starfarer/util/IntervalTracker; 
L358:   aload_0 
L359:   iconst_0 
L360:   putfield Field com/fs/starfarer/combat/entities/Ship enemyShipInRange Z 
L363:   aload_0 
L364:   new com/fs/starfarer/util/IntervalTracker 
L367:   dup 
L368:   ldc_w +0.4000000059604645f 
L371:   ldc_w +0.6000000238418579f 
L374:   invokespecial Method com/fs/starfarer/util/IntervalTracker <init> (FF)V 
L377:   putfield Field com/fs/starfarer/combat/entities/Ship travelDriveCollisionTestTracker Lcom/fs/starfarer/util/IntervalTracker; 
L380:   aload_0 
L381:   aconst_null 
L382:   putfield Field com/fs/starfarer/combat/entities/Ship visualBounds Lcom/fs/starfarer/combat/E/o0OO; 
L385:   aload_0 
L386:   aconst_null 
L387:   putfield Field com/fs/starfarer/combat/entities/Ship decalBounds Lcom/fs/starfarer/combat/E/o0OO; 
L390:   aload_0 
L391:   iconst_0 
L392:   putfield Field com/fs/starfarer/combat/entities/Ship isPiece Z 
L395:   aload_0 
L396:   new org/lwjgl/util/vector/Vector2f 
L399:   dup 
L400:   invokespecial Method org/lwjgl/util/vector/Vector2f <init> ()V 
L403:   putfield Field com/fs/starfarer/combat/entities/Ship renderOffset Lorg/lwjgl/util/vector/Vector2f; 
L406:   aload_0 
L407:   new org/lwjgl/util/vector/Vector2f 
L410:   dup 
L411:   invokespecial Method org/lwjgl/util/vector/Vector2f <init> ()V 
L414:   putfield Field com/fs/starfarer/combat/entities/Ship moduleOffset Lorg/lwjgl/util/vector/Vector2f; 
L417:   aload_0 
L418:   aconst_null 
L419:   putfield Field com/fs/starfarer/combat/entities/Ship breakingAnimation Lcom/fs/starfarer/combat/entities/H; 
L422:   aload_0 
L423:   ldc_w +10000000.0f 
L426:   putfield Field com/fs/starfarer/combat/entities/Ship fighterTimeBeforeRefit F 
L429:   aload_0 
L430:   ldc_w +10.0f 
L433:   putfield Field com/fs/starfarer/combat/entities/Ship timeBeforeFade F 
L436:   aload_0 
L437:   new com/fs/graphics/util/Fader 
L440:   dup 
L441:   fconst_1 
L442:   ldc_w +0.5f 
L445:   ldc_w +0.5f 
L448:   invokespecial Method com/fs/graphics/util/Fader <init> (FFF)V 
L451:   putfield Field com/fs/starfarer/combat/entities/Ship hulkFader Lcom/fs/graphics/util/Fader; 
L454:   aload_0 
L455:   ldc_w +0.699999988079071f 
L458:   putfield Field com/fs/starfarer/combat/entities/Ship extraOverlayShadowOpacity F 
L461:   aload_0 
L462:   iconst_1 
L463:   putfield Field com/fs/starfarer/combat/entities/Ship extraOverlayMatchHullColor Z 
L466:   aload_0 
L467:   iconst_0 
L468:   putfield Field com/fs/starfarer/combat/entities/Ship invalidTransferCommandTarget Z 
L471:   aload_0 
L472:   iconst_0 
L473:   putfield Field com/fs/starfarer/combat/entities/Ship isStation Z 
L476:   aload_0 
L477:   iconst_0 
L478:   putfield Field com/fs/starfarer/combat/entities/Ship isShipWithModules Z 
L481:   aload_0 
L482:   aconst_null 
L483:   putfield Field com/fs/starfarer/combat/entities/Ship parentPieceId Ljava/lang/String; 
L486:   aload_0 
L487:   iconst_0 
L488:   putfield Field com/fs/starfarer/combat/entities/Ship appliedAfterAddEffects Z 
L491:   aload_0 
L492:   ldc_w 'steady' 
L495:   putfield Field com/fs/starfarer/combat/entities/Ship fallbackPersonalityId Ljava/lang/String; 
L498:   aload_0 
L499:   new com/fs/starfarer/util/ColorShifter 
L502:   dup 
L503:   getstatic Field java/awt/Color white Ljava/awt/Color; 
L506:   invokespecial Method com/fs/starfarer/util/ColorShifter <init> (Ljava/awt/Color;)V 
L509:   putfield Field com/fs/starfarer/combat/entities/Ship shipColor Lcom/fs/starfarer/util/ColorShifter; 
L512:   aload_0 
L513:   aconst_null 
L514:   putfield Field com/fs/starfarer/combat/entities/Ship lastFriendlyTarget Lcom/fs/starfarer/combat/entities/Ship; 
L517:   aload_0 
L518:   ldc_w +1000.0f 
L521:   putfield Field com/fs/starfarer/combat/entities/Ship elapsedSinceRaiseShieldsWhileOverloaded F 
L524:   aload_0 
L525:   new java/util/ArrayList 
L528:   dup 
L529:   invokespecial Method java/util/ArrayList <init> ()V 
L532:   putfield Field com/fs/starfarer/combat/entities/Ship commands Ljava/util/List; 
L535:   aload_0 
L536:   iconst_1 
L537:   putfield Field com/fs/starfarer/combat/entities/Ship pullBackFighters Z 
L540:   aload_0 
L541:   aconst_null 
L542:   putfield Field com/fs/starfarer/combat/entities/Ship launchingShip Lcom/fs/starfarer/combat/entities/Ship; 
L545:   aload_0 
L546:   fconst_0 
L547:   putfield Field com/fs/starfarer/combat/entities/Ship sinceLaunch F 
L550:   aload_0 
L551:   iconst_0 
L552:   putfield Field com/fs/starfarer/combat/entities/Ship isLiftingOffOrLanding Z 
L555:   aload_0 
L556:   iconst_0 
L557:   putfield Field com/fs/starfarer/combat/entities/Ship isAnimatedLaunch Z 
L560:   aload_0 
L561:   iconst_0 
L562:   putfield Field com/fs/starfarer/combat/entities/Ship isLanding Z 
L565:   aload_0 
L566:   iconst_0 
L567:   putfield Field com/fs/starfarer/combat/entities/Ship travelDriveWasOn Z 
L570:   aload_0 
L571:   ldc_w -1.0f 
L574:   putfield Field com/fs/starfarer/combat/entities/Ship travelDriveDir F 
L577:   aload_0 
L578:   fconst_0 
L579:   putfield Field com/fs/starfarer/combat/entities/Ship remainingDriveDur F 
L582:   aload_0 
L583:   iconst_0 
L584:   putfield Field com/fs/starfarer/combat/entities/Ship computedAlly Z 
L587:   aload_0 
L588:   iconst_0 
L589:   putfield Field com/fs/starfarer/combat/entities/Ship isAlly Z 
L592:   aload_0 
L593:   iconst_0 
L594:   putfield Field com/fs/starfarer/combat/entities/Ship computedFleetMember Z 
L597:   aload_0 
L598:   aconst_null 
L599:   putfield Field com/fs/starfarer/combat/entities/Ship fleetMember Lcom/fs/starfarer/api/fleet/FleetMemberAPI; 
L602:   aload_0 
L603:   aconst_null 
L604:   putfield Field com/fs/starfarer/combat/entities/Ship fixedLocation Lorg/lwjgl/util/vector/Vector2f; 
L607:   aload_0 
L608:   fconst_0 
L609:   putfield Field com/fs/starfarer/combat/entities/Ship sinceVisible F 
L612:   aload_0 
L613:   fconst_0 
L614:   putfield Field com/fs/starfarer/combat/entities/Ship forceCarrierTargetTime F 
L617:   aload_0 
L618:   fconst_0 
L619:   putfield Field com/fs/starfarer/combat/entities/Ship forceCarrierPullBackTime F 
L622:   aload_0 
L623:   aconst_null 
L624:   putfield Field com/fs/starfarer/combat/entities/Ship forceCarrierTarget Lcom/fs/starfarer/api/combat/ShipAPI; 
L627:   aload_0 
L628:   fconst_1 
L629:   putfield Field com/fs/starfarer/combat/entities/Ship alphaMult F 
L632:   aload_0 
L633:   fconst_1 
L634:   putfield Field com/fs/starfarer/combat/entities/Ship extraAlphaMult2 F 
L637:   aload_0 
L638:   fconst_1 
L639:   putfield Field com/fs/starfarer/combat/entities/Ship extraAlphaMult F 
L642:   aload_0 
L643:   iconst_1 
L644:   putfield Field com/fs/starfarer/combat/entities/Ship applyExtraAlphaToEngines Z 
L647:   aload_0 
L648:   aconst_null 
L649:   putfield Field com/fs/starfarer/combat/entities/Ship copyLocation Lorg/lwjgl/util/vector/Vector2f; 
L652:   aload_0 
L653:   fconst_1 
L654:   putfield Field com/fs/starfarer/combat/entities/Ship copyAlpha F 
L657:   aload_0 
L658:   fconst_0 
L659:   putfield Field com/fs/starfarer/combat/entities/Ship copyFacing F 
L662:   aload_0 
L663:   new com/fs/starfarer/renderers/JitterRenderer 
L666:   dup 
L667:   invokespecial Method com/fs/starfarer/renderers/JitterRenderer <init> ()V 
L670:   putfield Field com/fs/starfarer/combat/entities/Ship jitter Lcom/fs/starfarer/renderers/JitterRenderer; 
L673:   aload_0 
L674:   iconst_1 
L675:   putfield Field com/fs/starfarer/combat/entities/Ship jitterShields Z 
L678:   aload_0 
L679:   new com/fs/starfarer/util/ColorShifter 
L682:   dup 
L683:   new java/awt/Color 
L686:   dup 
L687:   iconst_0 
L688:   iconst_0 
L689:   iconst_0 
L690:   iconst_0 
L691:   invokespecial Method java/awt/Color <init> (IIII)V 
L694:   invokespecial Method com/fs/starfarer/util/ColorShifter <init> (Ljava/awt/Color;)V 
L697:   putfield Field com/fs/starfarer/combat/entities/Ship jitterEffectColorShifter Lcom/fs/starfarer/util/ColorShifter; 
L700:   aload_0 
L701:   new com/fs/starfarer/util/ValueShifter 
L704:   dup 
L705:   fconst_0 
L706:   invokespecial Method com/fs/starfarer/util/ValueShifter <init> (F)V 
L709:   putfield Field com/fs/starfarer/combat/entities/Ship jitterEffectIntensityShifter Lcom/fs/starfarer/util/ValueShifter; 
L712:   aload_0 
L713:   new com/fs/starfarer/util/ValueShifter 
L716:   dup 
L717:   fconst_0 
L718:   invokespecial Method com/fs/starfarer/util/ValueShifter <init> (F)V 
L721:   putfield Field com/fs/starfarer/combat/entities/Ship jitterCopiesShifter Lcom/fs/starfarer/util/ValueShifter; 
L724:   aload_0 
L725:   new com/fs/starfarer/util/ValueShifter 
L728:   dup 
L729:   fconst_0 
L730:   invokespecial Method com/fs/starfarer/util/ValueShifter <init> (F)V 
L733:   putfield Field com/fs/starfarer/combat/entities/Ship jitterMinRangeShifter Lcom/fs/starfarer/util/ValueShifter; 
L736:   aload_0 
L737:   new com/fs/starfarer/util/ValueShifter 
L740:   dup 
L741:   fconst_0 
L742:   invokespecial Method com/fs/starfarer/util/ValueShifter <init> (F)V 
L745:   putfield Field com/fs/starfarer/combat/entities/Ship jitterRangeShifter Lcom/fs/starfarer/util/ValueShifter; 
L748:   aload_0 
L749:   new com/fs/starfarer/renderers/JitterRenderer 
L752:   dup 
L753:   invokespecial Method com/fs/starfarer/renderers/JitterRenderer <init> ()V 
L756:   putfield Field com/fs/starfarer/combat/entities/Ship jitterUnder Lcom/fs/starfarer/renderers/JitterRenderer; 
L759:   aload_0 
L760:   new com/fs/starfarer/util/ColorShifter 
L763:   dup 
L764:   new java/awt/Color 
L767:   dup 
L768:   iconst_0 
L769:   iconst_0 
L770:   iconst_0 
L771:   iconst_0 
L772:   invokespecial Method java/awt/Color <init> (IIII)V 
L775:   invokespecial Method com/fs/starfarer/util/ColorShifter <init> (Ljava/awt/Color;)V 
L778:   putfield Field com/fs/starfarer/combat/entities/Ship jitterUnderEffectColorShifter Lcom/fs/starfarer/util/ColorShifter; 
L781:   aload_0 
L782:   new com/fs/starfarer/util/ValueShifter 
L785:   dup 
L786:   fconst_0 
L787:   invokespecial Method com/fs/starfarer/util/ValueShifter <init> (F)V 
L790:   putfield Field com/fs/starfarer/combat/entities/Ship jitterUnderEffectIntensityShifter Lcom/fs/starfarer/util/ValueShifter; 
L793:   aload_0 
L794:   new com/fs/starfarer/util/ValueShifter 
L797:   dup 
L798:   fconst_0 
L799:   invokespecial Method com/fs/starfarer/util/ValueShifter <init> (F)V 
L802:   putfield Field com/fs/starfarer/combat/entities/Ship jitterUnderCopiesShifter Lcom/fs/starfarer/util/ValueShifter; 
L805:   aload_0 
L806:   new com/fs/starfarer/util/ValueShifter 
L809:   dup 
L810:   fconst_0 
L811:   invokespecial Method com/fs/starfarer/util/ValueShifter <init> (F)V 
L814:   putfield Field com/fs/starfarer/combat/entities/Ship jitterUnderMinRangeShifter Lcom/fs/starfarer/util/ValueShifter; 
L817:   aload_0 
L818:   new com/fs/starfarer/util/ValueShifter 
L821:   dup 
L822:   fconst_0 
L823:   invokespecial Method com/fs/starfarer/util/ValueShifter <init> (F)V 
L826:   putfield Field com/fs/starfarer/combat/entities/Ship jitterUnderRangeShifter Lcom/fs/starfarer/util/ValueShifter; 
L829:   aload_0 
L830:   iconst_0 
L831:   putfield Field com/fs/starfarer/combat/entities/Ship visible Z 
L834:   aload_0 
L835:   iconst_0 
L836:   putfield Field com/fs/starfarer/combat/entities/Ship showModuleJitterUnder Z 
L839:   aload_0 
L840:   iconst_0 
L841:   putfield Field com/fs/starfarer/combat/entities/Ship refitMode Z 
L844:   aload_0 
L845:   fconst_1 
L846:   putfield Field com/fs/starfarer/combat/entities/Ship impactVolumeMult F 
L849:   aload_0 
L850:   iconst_0 
L851:   putfield Field com/fs/starfarer/combat/entities/Ship doNotRenderVentingAnimation Z 
L854:   aload_0 
L855:   iconst_0 
L856:   putfield Field com/fs/starfarer/combat/entities/Ship doNotRenderSprite Z 
L859:   aload_0 
L860:   iconst_0 
L861:   putfield Field com/fs/starfarer/combat/entities/Ship doNotRenderShield Z 
L864:   aload_0 
L865:   iconst_0 
L866:   putfield Field com/fs/starfarer/combat/entities/Ship doNotRenderWeapons Z 
L869:   aload_0 
L870:   iconst_0 
L871:   putfield Field com/fs/starfarer/combat/entities/Ship noMuzzleFlash Z 
L874:   aload_0 
L875:   iconst_0 
L876:   putfield Field com/fs/starfarer/combat/entities/Ship doNotRender Z 
L879:   aload_0 
L880:   fconst_1 
L881:   putfield Field com/fs/starfarer/combat/entities/Ship combinedAlphaMult F 
L884:   aload_0 
L885:   iconst_0 
L886:   putfield Field com/fs/starfarer/combat/entities/Ship renderBounds Z 
L889:   aload_0 
L890:   new java/util/ArrayList 
L893:   dup 
L894:   invokespecial Method java/util/ArrayList <init> ()V 
L897:   putfield Field com/fs/starfarer/combat/entities/Ship weaponsToRemove Ljava/util/List; 
L900:   aload_0 
L901:   iconst_0 
L902:   putfield Field com/fs/starfarer/combat/entities/Ship needsWeaponGroupUIUpdate Z 
L905:   aload_0 
L906:   aconst_null 
L907:   putfield Field com/fs/starfarer/combat/entities/Ship shield Lcom/fs/starfarer/combat/systems/G; 
L910:   aload_0 
L911:   new java/util/ArrayList 
L914:   dup 
L915:   invokespecial Method java/util/ArrayList <init> ()V 
L918:   putfield Field com/fs/starfarer/combat/entities/Ship childModules Ljava/util/List; 
L921:   aload_0 
L922:   aconst_null 
L923:   putfield Field com/fs/starfarer/combat/entities/Ship stationSlot Lcom/fs/starfarer/loading/specs/nullsuper; 
L926:   aload_0 
L927:   aconst_null 
L928:   putfield Field com/fs/starfarer/combat/entities/Ship station Lcom/fs/starfarer/combat/entities/Ship; 
L931:   aload_0 
L932:   iconst_0 
L933:   putfield Field com/fs/starfarer/combat/entities/Ship cloned Z 
L936:   aload_0 
L937:   iconst_0 
L938:   putfield Field com/fs/starfarer/combat/entities/Ship expired Z 
L941:   aload_0 
L942:   ldc +3.0f 
L944:   putfield Field com/fs/starfarer/combat/entities/Ship sinceDamagedByPlayer F 
L947:   aload_0 
L948:   iconst_0 
L949:   putfield Field com/fs/starfarer/combat/entities/Ship isHulk Z 
L952:   aload_0 
L953:   iconst_1 
L954:   putfield Field com/fs/starfarer/combat/entities/Ship renderEngines Z 
L957:   aload_0 
L958:   iconst_0 
L959:   putfield Field com/fs/starfarer/combat/entities/Ship renderEnginesUnder Z 
L962:   aload_0 
L963:   iconst_0 
L964:   putfield Field com/fs/starfarer/combat/entities/Ship wasDestroyed Z 
L967:   aload_0 
L968:   iconst_1 
L969:   putfield Field com/fs/starfarer/combat/entities/Ship destroyable Z 
L972:   aload_0 
L973:   iconst_0 
L974:   putfield Field com/fs/starfarer/combat/entities/Ship suppressFloaties Z 
L977:   aload_0 
L978:   aconst_null 
L979:   putfield Field com/fs/starfarer/combat/entities/Ship statistics Lcom/fs/starfarer/combat/entities/I; 
L982:   aload_0 
L983:   iconst_1 
L984:   putfield Field com/fs/starfarer/combat/entities/Ship spawnDebris Z 
L987:   aload_0 
L988:   ldc_w -1.0f 
L991:   putfield Field com/fs/starfarer/combat/entities/Ship hullDamageThreshold F 
L994:   aload_0 
L995:   ldc_w -1.0f 
L998:   putfield Field com/fs/starfarer/combat/entities/Ship hullDamageBeyondThresholdMult F 
L1001:  aload_0 
L1002:  ldc_w -1.0f 
L1005:  putfield Field com/fs/starfarer/combat/entities/Ship hulkChanceOverride F 
L1008:  aload_0 
L1009:  aconst_null 
L1010:  putfield Field com/fs/starfarer/combat/entities/Ship explosionVelocityOverride Lorg/lwjgl/util/vector/Vector2f; 
L1013:  aload_0 
L1014:  fconst_1 
L1015:  putfield Field com/fs/starfarer/combat/entities/Ship explosionScale F 
L1018:  aload_0 
L1019:  aconst_null 
L1020:  putfield Field com/fs/starfarer/combat/entities/Ship explosionFlashColorOverride Ljava/awt/Color; 
L1023:  aload_0 
L1024:  iconst_0 
L1025:  putfield Field com/fs/starfarer/combat/entities/Ship noDamagedExplosions Z 
L1028:  aload_0 
L1029:  iconst_0 
L1030:  putfield Field com/fs/starfarer/combat/entities/Ship skipNextDamagedExplosion Z 
L1033:  aload_0 
L1034:  fconst_0 
L1035:  putfield Field com/fs/starfarer/combat/entities/Ship accumulatedDamageForExplosion F 
L1038:  aload_0 
L1039:  aconst_null 
L1040:  putfield Field com/fs/starfarer/combat/entities/Ship phase Ljava/lang/Boolean; 
L1043:  aload_0 
L1044:  iconst_0 
L1045:  putfield Field com/fs/starfarer/combat/entities/Ship retreating Z 
L1048:  aload_0 
L1049:  iconst_0 
L1050:  putfield Field com/fs/starfarer/combat/entities/Ship directRetreat Z 
L1053:  aload_0 
L1054:  iconst_0 
L1055:  putfield Field com/fs/starfarer/combat/entities/Ship isInsideNebula Z 
L1058:  aload_0 
L1059:  iconst_1 
L1060:  putfield Field com/fs/starfarer/combat/entities/Ship affectedByNebula Z 
L1063:  aload_0 
L1064:  iconst_0 
L1065:  putfield Field com/fs/starfarer/combat/entities/Ship controlsNotLocked Z 
L1068:  aload_0 
L1069:  new java/util/HashSet 
L1072:  dup 
L1073:  invokespecial Method java/util/HashSet <init> ()V 
L1076:  putfield Field com/fs/starfarer/combat/entities/Ship disabledWeapons Ljava/util/Set; 
L1079:  aload_0 
L1080:  iconst_0 
L1081:  putfield Field com/fs/starfarer/combat/entities/Ship numFlameouts I 
L1084:  aload_0 
L1085:  iconst_0 
L1086:  putfield Field com/fs/starfarer/combat/entities/Ship systemDisabled Z 
L1089:  aload_0 
L1090:  iconst_0 
L1091:  putfield Field com/fs/starfarer/combat/entities/Ship defenseDisabled Z 
L1094:  aload_0 
L1095:  iconst_0 
L1096:  putfield Field com/fs/starfarer/combat/entities/Ship forceHideFFOverlay Z 
L1099:  aload_0 
L1100:  new java/util/LinkedHashSet 
L1103:  dup 
L1104:  invokespecial Method java/util/LinkedHashSet <init> ()V 
L1107:  putfield Field com/fs/starfarer/combat/entities/Ship tags Ljava/util/Set; 
L1110:  aload_0 
L1111:  iconst_0 
L1112:  putfield Field com/fs/starfarer/combat/entities/Ship doNotFlareEngines Z 
L1115:  aload_0 
L1116:  aconst_null 
L1117:  putfield Field com/fs/starfarer/combat/entities/Ship shipCollisionSoundOverride Ljava/lang/String; 
L1120:  aload_0 
L1121:  aconst_null 
L1122:  putfield Field com/fs/starfarer/combat/entities/Ship asteroidCollisionSoundOverride Ljava/lang/String; 
L1125:  aload_0 
L1126:  iconst_0 
L1127:  putfield Field com/fs/starfarer/combat/entities/Ship beingIgnored Z 
L1130:  aload_0 
L1131:  aload_2 
L1132:  putfield Field com/fs/starfarer/combat/entities/Ship spec Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L1135:  aload_2 
L1136:  ifnull L1159 
L1139:  aload_2 
L1140:  ldc_w 'fx_drone' 
L1143:  invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec hasTag (Ljava/lang/String;)Z 
L1146:  ifeq L1159 
L1149:  aload_0 
L1150:  ldc_w '' 
L1153:  putfield Field com/fs/starfarer/combat/entities/Ship id Ljava/lang/String; 
L1156:  goto L1166 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/ship/o0OO Object com/fs/starfarer/loading/specs/HullVariantSpec Integer Object com/fs/starfarer/rpg/Person Object java/lang/String Object com/fs/starfarer/api/fleet/FleetMemberAPI 
            stack 
        .end stack 
L1159:  aload_0 
L1160:  invokestatic Method com/fs/starfarer/api/util/Misc genUID ()Ljava/lang/String; 
L1163:  putfield Field com/fs/starfarer/combat/entities/Ship id Ljava/lang/String; 

        .stack same 
L1166:  aload_0 
L1167:  aload_0 
L1168:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L1171:  invokevirtual Method com/fs/starfarer/loading/specs/g getHints ()Ljava/util/EnumSet; 
L1174:  getstatic Field com/fs/starfarer/api/combat/ShipHullSpecAPI$ShipTypeHints RENDER_ENGINES_BELOW_HULL Lcom/fs/starfarer/api/combat/ShipHullSpecAPI$ShipTypeHints; 
L1177:  invokevirtual Method java/util/EnumSet contains (Ljava/lang/Object;)Z 
L1180:  putfield Field com/fs/starfarer/combat/entities/Ship renderEnginesUnder Z 
L1183:  aload_0 
L1184:  aload_0 
L1185:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L1188:  invokevirtual Method com/fs/starfarer/loading/specs/g getHints ()Ljava/util/EnumSet; 
L1191:  getstatic Field com/fs/starfarer/api/combat/ShipHullSpecAPI$ShipTypeHints STATION Lcom/fs/starfarer/api/combat/ShipHullSpecAPI$ShipTypeHints; 
L1194:  invokevirtual Method java/util/EnumSet contains (Ljava/lang/Object;)Z 
L1197:  putfield Field com/fs/starfarer/combat/entities/Ship isStation Z 
L1200:  aload_0 
L1201:  aload_0 
L1202:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L1205:  invokevirtual Method com/fs/starfarer/loading/specs/g getHints ()Ljava/util/EnumSet; 
L1208:  getstatic Field com/fs/starfarer/api/combat/ShipHullSpecAPI$ShipTypeHints SHIP_WITH_MODULES Lcom/fs/starfarer/api/combat/ShipHullSpecAPI$ShipTypeHints; 
L1211:  invokevirtual Method java/util/EnumSet contains (Ljava/lang/Object;)Z 
L1214:  putfield Field com/fs/starfarer/combat/entities/Ship isShipWithModules Z 
L1217:  aload_2 
L1218:  invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L1221:  invokevirtual Method com/fs/starfarer/loading/specs/g getModuleAnchor ()Lorg/lwjgl/util/vector/Vector2f; 
L1224:  ifnull L1246 
L1227:  aload_2 
L1228:  invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L1231:  invokevirtual Method com/fs/starfarer/loading/specs/g getModuleAnchor ()Lorg/lwjgl/util/vector/Vector2f; 
L1234:  astore 7 
L1236:  aload_0 
L1237:  getfield Field com/fs/starfarer/combat/entities/Ship moduleOffset Lorg/lwjgl/util/vector/Vector2f; 
L1240:  aload 7 
L1242:  invokevirtual Method org/lwjgl/util/vector/Vector2f set (Lorg/lwjgl/util/vector/ReadableVector2f;)Lorg/lwjgl/util/vector/Vector2f; 
L1245:  pop 

        .stack same_extended 
L1246:  aload_1 
L1247:  ifnonnull L1261 
L1250:  aload_0 
L1251:  aload_2 
L1252:  invokestatic Method com/fs/starfarer/combat/entities/ship/o0OO create (Lcom/fs/starfarer/loading/specs/HullVariantSpec;)Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L1255:  putfield Field com/fs/starfarer/combat/entities/Ship stats Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L1258:  goto L1266 

        .stack same 
L1261:  aload_0 
L1262:  aload_1 
L1263:  putfield Field com/fs/starfarer/combat/entities/Ship stats Lcom/fs/starfarer/combat/entities/ship/o0OO; 

        .stack same 
L1266:  aload_0 
L1267:  getfield Field com/fs/starfarer/combat/entities/Ship stats Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L1270:  aload_0 
L1271:  invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO setEntity (Lcom/fs/starfarer/api/combat/CombatEntityAPI;)V 
L1274:  aload_0 
L1275:  getfield Field com/fs/starfarer/combat/entities/Ship stats Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L1278:  aload 6 
L1280:  invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO setFleetMember (Lcom/fs/starfarer/api/fleet/FleetMemberAPI;)V 
L1283:  aload_0 
L1284:  aload 5 
L1286:  putfield Field com/fs/starfarer/combat/entities/Ship fleetMemberId Ljava/lang/String; 
L1289:  iload_3 
L1290:  ifeq L1360 
L1293:  aload_2 
L1294:  invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getAllMods ()Ljava/util/List; 
L1297:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L1302:  astore 8 
L1304:  goto L1350 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/ship/o0OO Object com/fs/starfarer/loading/specs/HullVariantSpec Integer Object com/fs/starfarer/rpg/Person Object java/lang/String Object com/fs/starfarer/api/fleet/FleetMemberAPI Top Object java/util/Iterator 
            stack 
        .end stack 
L1307:  aload 8 
L1309:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L1314:  checkcast com/fs/starfarer/loading/specs/O00O 
L1317:  astore 7 
L1319:  aload 7 
L1321:  invokevirtual Method com/fs/starfarer/loading/specs/O00O getEffect ()Lcom/fs/starfarer/api/combat/HullModEffect; 
L1324:  ifnull L1350 
L1327:  aload 7 
L1329:  invokevirtual Method com/fs/starfarer/loading/specs/O00O getEffect ()Lcom/fs/starfarer/api/combat/HullModEffect; 
L1332:  aload_2 
L1333:  invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSize ()Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L1336:  aload_0 
L1337:  getfield Field com/fs/starfarer/combat/entities/Ship stats Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L1340:  aload 7 
L1342:  invokevirtual Method com/fs/starfarer/loading/specs/O00O getId ()Ljava/lang/String; 
L1345:  invokeinterface InterfaceMethod com/fs/starfarer/api/combat/HullModEffect applyEffectsBeforeShipCreation (Lcom/fs/starfarer/api/combat/ShipAPI$HullSize;Lcom/fs/starfarer/api/combat/MutableShipStatsAPI;Ljava/lang/String;)V 4 

        .stack same 
L1350:  aload 8 
L1352:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L1357:  ifne L1307 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/ship/o0OO Object com/fs/starfarer/loading/specs/HullVariantSpec Integer Object com/fs/starfarer/rpg/Person Object java/lang/String Object com/fs/starfarer/api/fleet/FleetMemberAPI 
            stack 
        .end stack 
L1360:  aload 4 
L1362:  ifnull L1371 
L1365:  aload_0 
L1366:  aload 4 
L1368:  invokevirtual Method com/fs/starfarer/combat/entities/Ship setCaptain (Lcom/fs/starfarer/api/characters/PersonAPI;)V 

        .stack same 
L1371:  aload_0 
L1372:  getfield Field com/fs/starfarer/combat/entities/Ship stats Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L1375:  invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getFluxCapacity ()Lcom/fs/starfarer/api/combat/MutableStat; 
L1378:  ldc_w 'flux_capacitors' 
L1381:  aload_2 
L1382:  invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getNumFluxCapacitors ()I 
L1385:  i2f 
L1386:  getstatic Field com/fs/starfarer/combat/entities/Ship FLUX_PER_CAPACITOR F 
L1389:  fmul 
L1390:  invokevirtual Method com/fs/starfarer/api/combat/MutableStat modifyFlat (Ljava/lang/String;F)V 
L1393:  aload_0 
L1394:  getfield Field com/fs/starfarer/combat/entities/Ship stats Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L1397:  invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getFluxDissipation ()Lcom/fs/starfarer/api/combat/MutableStat; 
L1400:  ldc_w 'flux_vents' 
L1403:  aload_2 
L1404:  invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getNumFluxVents ()I 
L1407:  i2f 
L1408:  getstatic Field com/fs/starfarer/combat/entities/Ship DISSIPATION_PER_VENT F 
L1411:  fmul 
L1412:  invokevirtual Method com/fs/starfarer/api/combat/MutableStat modifyFlat (Ljava/lang/String;F)V 
L1415:  aload_0 
L1416:  aload_2 
L1417:  invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L1420:  invokevirtual Method com/fs/starfarer/loading/specs/g getCollisionClass ()Lcom/fs/starfarer/api/combat/CollisionClass; 
L1423:  invokevirtual Method com/fs/starfarer/combat/entities/Ship setCollisionClass (Lcom/fs/starfarer/api/combat/CollisionClass;)V 
L1426:  aload_0 
L1427:  aload_2 
L1428:  invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L1431:  invokevirtual Method com/fs/starfarer/loading/specs/g getHullSize ()Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L1434:  invokevirtual Method com/fs/starfarer/combat/entities/Ship setHullSize (Lcom/fs/starfarer/api/combat/ShipAPI$HullSize;)V 
L1437:  aload_0 
L1438:  aload_2 
L1439:  invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L1442:  invokevirtual Method com/fs/starfarer/loading/specs/g getMass ()F 
L1445:  invokevirtual Method com/fs/starfarer/combat/entities/Ship setMass (F)V 
L1448:  aload_0 
L1449:  new com/fs/graphics/Sprite 
L1452:  dup 
L1453:  aconst_null 
L1454:  invokespecial Method com/fs/graphics/Sprite <init> (Lcom/fs/graphics/Object;)V 
L1457:  putfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L1460:  aload_0 
L1461:  getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L1464:  fconst_0 
L1465:  invokevirtual Method com/fs/graphics/Sprite setAngle (F)V 
L1468:  aload_0 
L1469:  getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L1472:  ldc_w +64.0f 
L1475:  ldc_w +64.0f 
L1478:  invokevirtual Method com/fs/graphics/Sprite setSize (FF)V 
L1481:  aload_0 
L1482:  new com/fs/starfarer/combat/entities/ship/new 
L1485:  dup 
L1486:  aload_0 
L1487:  aload_2 
L1488:  invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L1491:  invokespecial Method com/fs/starfarer/combat/entities/ship/new <init> (Lcom/fs/starfarer/combat/entities/Ship;Lcom/fs/starfarer/loading/specs/g;)V 
L1494:  putfield Field com/fs/starfarer/combat/entities/Ship armorGrid Lcom/fs/starfarer/combat/entities/ship/new; 
L1497:  aload_0 
L1498:  new com/fs/starfarer/renderers/damage/String 
L1501:  dup 
L1502:  aload_0 
L1503:  invokespecial Method com/fs/starfarer/renderers/damage/String <init> (Lcom/fs/starfarer/combat/entities/Ship;)V 
L1506:  putfield Field com/fs/starfarer/combat/entities/Ship decalRenderer Lcom/fs/starfarer/renderers/damage/String; 
L1509:  aload_0 
L1510:  getfield Field com/fs/starfarer/combat/entities/Ship armorGrid Lcom/fs/starfarer/combat/entities/ship/new; 
L1513:  aload_0 
L1514:  getfield Field com/fs/starfarer/combat/entities/Ship decalRenderer Lcom/fs/starfarer/renderers/damage/String; 
L1517:  invokevirtual Method com/fs/starfarer/combat/entities/ship/new setListener (Lcom/fs/starfarer/combat/entities/ship/new$Oo;)V 
L1520:  aload_0 
L1521:  new com/fs/starfarer/combat/entities/ship/D 
L1524:  dup 
L1525:  aload_0 
L1526:  aload_0 
L1527:  getfield Field com/fs/starfarer/combat/entities/Ship stats Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L1530:  aload_0 
L1531:  invokespecial Method com/fs/starfarer/combat/entities/ship/D <init> (Lcom/fs/starfarer/combat/entities/Ship;Lcom/fs/starfarer/combat/entities/ship/C;Lcom/fs/starfarer/combat/entities/ship/D$o;)V 
L1534:  putfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L1537:  aload_0 
L1538:  new com/fs/starfarer/combat/entities/ship/null 
L1541:  dup 
L1542:  aload_0 
L1543:  getfield Field com/fs/starfarer/combat/entities/Ship stats Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L1546:  aload_0 
L1547:  invokespecial Method com/fs/starfarer/combat/entities/ship/null <init> (Lcom/fs/starfarer/combat/entities/ship/return;Lcom/fs/starfarer/combat/entities/ship/null$Oo;)V 
L1550:  putfield Field com/fs/starfarer/combat/entities/Ship engineController Lcom/fs/starfarer/combat/entities/ship/null; 
L1553:  aload_0 
L1554:  new com/fs/graphics/Sprite 
L1557:  dup 
L1558:  aconst_null 
L1559:  invokespecial Method com/fs/graphics/Sprite <init> (Lcom/fs/graphics/Object;)V 
L1562:  putfield Field com/fs/starfarer/combat/entities/Ship shadow Lcom/fs/graphics/Sprite; 
L1565:  aload_0 
L1566:  getfield Field com/fs/starfarer/combat/entities/Ship shadow Lcom/fs/graphics/Sprite; 
L1569:  new java/awt/Color 
L1572:  dup 
L1573:  iconst_0 
L1574:  iconst_0 
L1575:  iconst_0 
L1576:  bipush 100 
L1578:  invokespecial Method java/awt/Color <init> (IIII)V 
L1581:  invokevirtual Method com/fs/graphics/Sprite setColor (Ljava/awt/Color;)V 
L1584:  aload_0 
L1585:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isFighter ()Z 
L1588:  ifeq L1596 
L1591:  aload_0 
L1592:  iconst_1 
L1593:  putfield Field com/fs/starfarer/combat/entities/Ship ignoresMapBounds Z 

        .stack same_extended 
L1596:  aload_2 
L1597:  invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L1600:  invokevirtual Method com/fs/starfarer/loading/specs/g getShieldSpec ()Lcom/fs/starfarer/loading/specs/OOOo; 
L1603:  invokevirtual Method com/fs/starfarer/loading/specs/OOOo getRadius ()F 
L1606:  ldc_w +0.8999999761581421f 
L1609:  fmul 
L1610:  ldc_w +25.0f 
L1613:  invokestatic Method java/lang/Math max (FF)F 
L1616:  fstore 7 
L1618:  aload_2 
L1619:  invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L1622:  invokevirtual Method com/fs/starfarer/loading/specs/g getSpriteSpec ()Lcom/fs/starfarer/loading/specs/Q; 
L1625:  invokevirtual Method com/fs/starfarer/loading/specs/Q null ()F 
L1628:  fstore 8 
L1630:  aload_2 
L1631:  invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L1634:  invokevirtual Method com/fs/starfarer/loading/specs/g getSpriteSpec ()Lcom/fs/starfarer/loading/specs/Q; 
L1637:  invokevirtual Method com/fs/starfarer/loading/specs/Q o00000 ()F 
L1640:  fstore 9 
L1642:  fload 7 
L1644:  fload 8 
L1646:  fload 9 
L1648:  fadd 
L1649:  ldc_w +0.5f 
L1652:  fmul 
L1653:  invokestatic Method java/lang/Math min (FF)F 
L1656:  fstore 7 
L1658:  fload 7 
L1660:  ldc_w +25.0f 
L1663:  fcmpg 
L1664:  ifge L1672 
L1667:  ldc_w +25.0f 
L1670:  fstore 7 

        .stack append Float Float Float 
L1672:  aload_0 
L1673:  new com/fs/starfarer/renderers/OOoO 
L1676:  dup 
L1677:  fload 7 
L1679:  aload_0 
L1680:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isFighter ()Z 
L1683:  ifeq L1692 
L1686:  ldc_w +3.5f 
L1689:  goto L1695 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/ship/o0OO Object com/fs/starfarer/loading/specs/HullVariantSpec Integer Object com/fs/starfarer/rpg/Person Object java/lang/String Object com/fs/starfarer/api/fleet/FleetMemberAPI Float Float Float 
            stack Object com/fs/starfarer/combat/entities/Ship Uninitialized L1673 Uninitialized L1673 Float 
        .end stack 
L1692:  ldc_w +5.5f 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/ship/o0OO Object com/fs/starfarer/loading/specs/HullVariantSpec Integer Object com/fs/starfarer/rpg/Person Object java/lang/String Object com/fs/starfarer/api/fleet/FleetMemberAPI Float Float Float 
            stack Object com/fs/starfarer/combat/entities/Ship Uninitialized L1673 Uninitialized L1673 Float Float 
        .end stack 
L1695:  invokespecial Method com/fs/starfarer/renderers/OOoO <init> (FF)V 
L1698:  putfield Field com/fs/starfarer/combat/entities/Ship ffInd Lcom/fs/starfarer/renderers/OOoO; 
L1701:  aload_0 
L1702:  new com/fs/starfarer/combat/ai/super 
L1705:  dup 
L1706:  aload_0 
L1707:  invokespecial Method com/fs/starfarer/combat/ai/super <init> (Lcom/fs/starfarer/combat/entities/Ship;)V 
L1710:  putfield Field com/fs/starfarer/combat/entities/Ship armorEvaluator Lcom/fs/starfarer/combat/ai/super; 
L1713:  aload_2 
L1714:  invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L1717:  invokevirtual Method com/fs/starfarer/loading/specs/g getShipSystemId ()Ljava/lang/String; 
L1720:  ifnull L1824 
L1723:  aload_2 
L1724:  invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L1727:  invokevirtual Method com/fs/starfarer/loading/specs/g getShipSystemId ()Ljava/lang/String; 
L1730:  ldc_w '' 
L1733:  invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L1736:  ifne L1824 
L1739:  ldc_w Class com/fs/starfarer/loading/specs/do 
L1742:  aload_2 
L1743:  invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L1746:  invokevirtual Method com/fs/starfarer/loading/specs/g getShipSystemId ()Ljava/lang/String; 
L1749:  invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object; 
L1752:  checkcast com/fs/starfarer/loading/specs/do 
L1755:  astore 10 
L1757:  aload 10 
L1759:  ifnonnull L1799 
L1762:  new java/lang/RuntimeException 
L1765:  dup 
L1766:  new java/lang/StringBuilder 
L1769:  dup 
L1770:  ldc_w 'System with id [' 
L1773:  invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L1776:  aload_2 
L1777:  invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L1780:  invokevirtual Method com/fs/starfarer/loading/specs/g getShipSystemId ()Ljava/lang/String; 
L1783:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L1786:  ldc_w '] not found' 
L1789:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L1792:  invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L1795:  invokespecial Method java/lang/RuntimeException <init> (Ljava/lang/String;)V 
L1798:  athrow 

        .stack append Object com/fs/starfarer/loading/specs/do 
L1799:  aload_0 
L1800:  aload 10 
L1802:  aload_0 
L1803:  invokevirtual Method com/fs/starfarer/loading/specs/do createSystem (Lcom/fs/starfarer/combat/entities/Ship;)Lcom/fs/starfarer/combat/systems/F; 
L1806:  putfield Field com/fs/starfarer/combat/entities/Ship system Lcom/fs/starfarer/combat/systems/F; 
L1809:  aload_0 
L1810:  getfield Field com/fs/starfarer/combat/entities/Ship layers Ljava/util/EnumSet; 
L1813:  aload_0 
L1814:  getfield Field com/fs/starfarer/combat/entities/Ship system Lcom/fs/starfarer/combat/systems/F; 
L1817:  invokevirtual Method com/fs/starfarer/combat/systems/F getActiveLayers ()Ljava/util/EnumSet; 
L1820:  invokevirtual Method java/util/EnumSet addAll (Ljava/util/Collection;)Z 
L1823:  pop 

        .stack chop 1 
L1824:  aload_2 
L1825:  invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L1828:  invokevirtual Method com/fs/starfarer/loading/specs/g getShieldSpec ()Lcom/fs/starfarer/loading/specs/OOOo; 
L1831:  invokevirtual Method com/fs/starfarer/loading/specs/OOOo getType ()Lcom/fs/starfarer/api/combat/ShieldAPI$ShieldType; 
L1834:  getstatic Field com/fs/starfarer/api/combat/ShieldAPI$ShieldType PHASE Lcom/fs/starfarer/api/combat/ShieldAPI$ShieldType; 
L1837:  if_acmpne L1883 
L1840:  ldc_w Class com/fs/starfarer/loading/specs/do 
L1843:  aload_0 
L1844:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L1847:  invokevirtual Method com/fs/starfarer/loading/specs/g getShipDefenseId ()Ljava/lang/String; 
L1850:  invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object; 
L1853:  checkcast com/fs/starfarer/loading/specs/do 
L1856:  astore 10 
L1858:  aload_0 
L1859:  aload 10 
L1861:  aload_0 
L1862:  invokevirtual Method com/fs/starfarer/loading/specs/do createSystem (Lcom/fs/starfarer/combat/entities/Ship;)Lcom/fs/starfarer/combat/systems/F; 
L1865:  putfield Field com/fs/starfarer/combat/entities/Ship phaseCloak Lcom/fs/starfarer/combat/systems/F; 
L1868:  aload_0 
L1869:  getfield Field com/fs/starfarer/combat/entities/Ship layers Ljava/util/EnumSet; 
L1872:  aload_0 
L1873:  getfield Field com/fs/starfarer/combat/entities/Ship phaseCloak Lcom/fs/starfarer/combat/systems/F; 
L1876:  invokevirtual Method com/fs/starfarer/combat/systems/F getActiveLayers ()Ljava/util/EnumSet; 
L1879:  invokevirtual Method java/util/EnumSet addAll (Ljava/util/Collection;)Z 
L1882:  pop 

        .stack same 
L1883:  ldc_w Class com/fs/starfarer/loading/specs/do 
L1886:  aload_2 
L1887:  invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L1890:  invokevirtual Method com/fs/starfarer/loading/specs/g getTravelDriveId ()Ljava/lang/String; 
L1893:  invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object; 
L1896:  checkcast com/fs/starfarer/loading/specs/do 
L1899:  astore 10 
L1901:  aload_2 
L1902:  ifnull L1915 
L1905:  aload_2 
L1906:  ldc_w 'fx_drone' 
L1909:  invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec hasTag (Ljava/lang/String;)Z 
L1912:  ifne L1940 

        .stack append Object com/fs/starfarer/loading/specs/do 
L1915:  aload_0 
L1916:  aload 10 
L1918:  aload_0 
L1919:  invokevirtual Method com/fs/starfarer/loading/specs/do createSystem (Lcom/fs/starfarer/combat/entities/Ship;)Lcom/fs/starfarer/combat/systems/F; 
L1922:  putfield Field com/fs/starfarer/combat/entities/Ship travelDrive Lcom/fs/starfarer/combat/systems/F; 
L1925:  aload_0 
L1926:  getfield Field com/fs/starfarer/combat/entities/Ship layers Ljava/util/EnumSet; 
L1929:  aload_0 
L1930:  getfield Field com/fs/starfarer/combat/entities/Ship travelDrive Lcom/fs/starfarer/combat/systems/F; 
L1933:  invokevirtual Method com/fs/starfarer/combat/systems/F getActiveLayers ()Ljava/util/EnumSet; 
L1936:  invokevirtual Method java/util/EnumSet addAll (Ljava/util/Collection;)Z 
L1939:  pop 

        .stack same 
L1940:  aload_0 
L1941:  ldc_w 'combatReadinessPlugin' 
L1944:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'Ö00000' (Ljava/lang/String;)Ljava/lang/Object; 
L1947:  checkcast com/fs/starfarer/api/combat/CombatReadinessPlugin 
L1950:  putfield Field com/fs/starfarer/combat/entities/Ship effect Lcom/fs/starfarer/api/combat/CombatReadinessPlugin; 
L1953:  aload_0 
L1954:  aload_0 
L1955:  getfield Field com/fs/starfarer/combat/entities/Ship effect Lcom/fs/starfarer/api/combat/CombatReadinessPlugin; 
L1958:  aload_0 
L1959:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getMutableStats ()Lcom/fs/starfarer/api/combat/MutableShipStatsAPI; 
L1962:  invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatReadinessPlugin getMalfunctionThreshold (Lcom/fs/starfarer/api/combat/MutableShipStatsAPI;)F 2 
L1967:  putfield Field com/fs/starfarer/combat/entities/Ship crMalfunctionThreshold F 
L1970:  aload_0 
L1971:  aload_0 
L1972:  getfield Field com/fs/starfarer/combat/entities/Ship effect Lcom/fs/starfarer/api/combat/CombatReadinessPlugin; 
L1975:  aload_0 
L1976:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getMutableStats ()Lcom/fs/starfarer/api/combat/MutableShipStatsAPI; 
L1979:  invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatReadinessPlugin getCriticalMalfunctionThreshold (Lcom/fs/starfarer/api/combat/MutableShipStatsAPI;)F 2 
L1984:  putfield Field com/fs/starfarer/combat/entities/Ship crCritMalfunctionThreshold F 
L1987:  aload_2 
L1988:  invokestatic Method com/fs/starfarer/api/impl/campaign/DModManager getNumNonBuiltInDMods (Lcom/fs/starfarer/api/combat/ShipVariantAPI;)I 
L1991:  istore 11 
L1993:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'ÔÖ0000' ()Z 
L1996:  ifeq L2078 
L1999:  iload 11 
L2001:  ifgt L2013 
L2004:  ldc_w 'renderDHullOverlayForAllDebug' 
L2007:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings class (Ljava/lang/String;)Z 
L2010:  ifeq L2078 

        .stack append Integer 
L2013:  iload 11 
L2015:  ifle L2078 
L2018:  iload 11 
L2020:  iconst_2 
L2021:  if_icmpgt L2041 
L2024:  aload_0 
L2025:  aload_2 
L2026:  invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L2029:  invokevirtual Method com/fs/starfarer/loading/specs/g getHullStyle ()Lcom/fs/starfarer/loading/specs/OoOO; 
L2032:  invokevirtual Method com/fs/starfarer/loading/specs/OoOO oO0000 ()Ljava/lang/String; 
L2035:  invokevirtual Method com/fs/starfarer/combat/entities/Ship setDHullOverlay (Ljava/lang/String;)V 
L2038:  goto L2078 

        .stack same 
L2041:  iload 11 
L2043:  iconst_4 
L2044:  if_icmpgt L2064 
L2047:  aload_0 
L2048:  aload_2 
L2049:  invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L2052:  invokevirtual Method com/fs/starfarer/loading/specs/g getHullStyle ()Lcom/fs/starfarer/loading/specs/OoOO; 
L2055:  invokevirtual Method com/fs/starfarer/loading/specs/OoOO 'öO0000' ()Ljava/lang/String; 
L2058:  invokevirtual Method com/fs/starfarer/combat/entities/Ship setDHullOverlay (Ljava/lang/String;)V 
L2061:  goto L2078 

        .stack same 
L2064:  aload_0 
L2065:  aload_2 
L2066:  invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L2069:  invokevirtual Method com/fs/starfarer/loading/specs/g getHullStyle ()Lcom/fs/starfarer/loading/specs/OoOO; 
L2072:  invokevirtual Method com/fs/starfarer/loading/specs/OoOO 'Ô00000' ()Ljava/lang/String; 
L2075:  invokevirtual Method com/fs/starfarer/combat/entities/Ship setDHullOverlay (Ljava/lang/String;)V 

        .stack same 
L2078:  aload_0 
L2079:  invokevirtual Method com/fs/starfarer/combat/entities/Ship initSlotCovers ()V 
L2082:  return 
L2083:  
    .end code 
.end method 

.method public applyEffectsAfterShipAddedToCombatEngine : ()V 
    .code stack 3 locals 3 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship appliedAfterAddEffects Z 
L4:     ifeq L8 
L7:     return 

        .stack same 
L8:     aload_0 
L9:     getfield Field com/fs/starfarer/combat/entities/Ship spec Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L12:    invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getAllMods ()Ljava/util/List; 
L15:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L20:    astore_2 
L21:    goto L48 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Top Object java/util/Iterator 
            stack 
        .end stack 
L24:    aload_2 
L25:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L30:    checkcast com/fs/starfarer/loading/specs/O00O 
L33:    astore_1 
L34:    aload_1 
L35:    invokevirtual Method com/fs/starfarer/loading/specs/O00O getEffect ()Lcom/fs/starfarer/api/combat/HullModEffect; 
L38:    aload_0 
L39:    aload_1 
L40:    invokevirtual Method com/fs/starfarer/loading/specs/O00O getId ()Ljava/lang/String; 
L43:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/HullModEffect applyEffectsAfterShipAddedToCombatEngine (Lcom/fs/starfarer/api/combat/ShipAPI;Ljava/lang/String;)V 3 

        .stack same 
L48:    aload_2 
L49:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L54:    ifne L24 
L57:    aload_0 
L58:    iconst_1 
L59:    putfield Field com/fs/starfarer/combat/entities/Ship appliedAfterAddEffects Z 
L62:    return 
L63:    
    .end code 
.end method 

.method public setLightDHullOverlay : ()V 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     aload_0 
L2:     getfield Field com/fs/starfarer/combat/entities/Ship spec Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L5:     invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L8:     invokevirtual Method com/fs/starfarer/loading/specs/g getHullStyle ()Lcom/fs/starfarer/loading/specs/OoOO; 
L11:    invokevirtual Method com/fs/starfarer/loading/specs/OoOO oO0000 ()Ljava/lang/String; 
L14:    invokevirtual Method com/fs/starfarer/combat/entities/Ship setDHullOverlay (Ljava/lang/String;)V 
L17:    return 
L18:    
    .end code 
.end method 

.method public setMediumDHullOverlay : ()V 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     aload_0 
L2:     getfield Field com/fs/starfarer/combat/entities/Ship spec Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L5:     invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L8:     invokevirtual Method com/fs/starfarer/loading/specs/g getHullStyle ()Lcom/fs/starfarer/loading/specs/OoOO; 
L11:    invokevirtual Method com/fs/starfarer/loading/specs/OoOO 'öO0000' ()Ljava/lang/String; 
L14:    invokevirtual Method com/fs/starfarer/combat/entities/Ship setDHullOverlay (Ljava/lang/String;)V 
L17:    return 
L18:    
    .end code 
.end method 

.method public setHeavyDHullOverlay : ()V 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     aload_0 
L2:     getfield Field com/fs/starfarer/combat/entities/Ship spec Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L5:     invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L8:     invokevirtual Method com/fs/starfarer/loading/specs/g getHullStyle ()Lcom/fs/starfarer/loading/specs/OoOO; 
L11:    invokevirtual Method com/fs/starfarer/loading/specs/OoOO 'Ô00000' ()Ljava/lang/String; 
L14:    invokevirtual Method com/fs/starfarer/combat/entities/Ship setDHullOverlay (Ljava/lang/String;)V 
L17:    return 
L18:    
    .end code 
.end method 

.method public setDHullOverlay : (Ljava/lang/String;)V 
    .code stack 4 locals 8 
L0:     aload_1 
L1:     ifnonnull L10 
L4:     aload_0 
L5:     aconst_null 
L6:     putfield Field com/fs/starfarer/combat/entities/Ship dHullOverlay Lcom/fs/graphics/Sprite; 
L9:     return 

        .stack same 
L10:    aload_0 
L11:    getfield Field com/fs/starfarer/combat/entities/Ship spec Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L14:    invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L17:    invokevirtual Method com/fs/starfarer/loading/specs/g getSpriteSpec ()Lcom/fs/starfarer/loading/specs/Q; 
L20:    astore_2 
L21:    aload_2 
L22:    invokevirtual Method com/fs/starfarer/loading/specs/Q null ()F 
L25:    fstore_3 
L26:    aload_2 
L27:    invokevirtual Method com/fs/starfarer/loading/specs/Q o00000 ()F 
L30:    fstore 4 
L32:    aload_0 
L33:    fload_3 
L34:    fload 4 
L36:    invokestatic Method java/lang/Math max (FF)F 
L39:    ldc_w +1.409999966621399f 
L42:    fmul 
L43:    putfield Field com/fs/starfarer/combat/entities/Ship dHullOverlaySize F 
L46:    aload_0 
L47:    new com/fs/graphics/Sprite 
L50:    dup 
L51:    aload_1 
L52:    invokespecial Method com/fs/graphics/Sprite <init> (Ljava/lang/String;)V 
L55:    putfield Field com/fs/starfarer/combat/entities/Ship dHullOverlay Lcom/fs/graphics/Sprite; 
L58:    new java/util/Random 
L61:    dup 
L62:    invokespecial Method java/util/Random <init> ()V 
L65:    invokevirtual Method java/util/Random nextLong ()J 
L68:    lstore 5 
L70:    aload_0 
L71:    getfield Field com/fs/starfarer/combat/entities/Ship fleetMemberId Ljava/lang/String; 
L74:    ifnull L94 
L77:    aload_0 
L78:    getfield Field com/fs/starfarer/combat/entities/Ship fleetMemberId Ljava/lang/String; 
L81:    invokevirtual Method java/lang/String hashCode ()I 
L84:    bipush 17 
L86:    imul 
L87:    i2l 
L88:    ldc2_w 100000000L 
L91:    lmul 
L92:    lstore 5 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object java/lang/String Object com/fs/starfarer/loading/specs/Q Float Float Long 
            stack 
        .end stack 
L94:    new java/util/Random 
L97:    dup 
L98:    lload 5 
L100:   invokespecial Method java/util/Random <init> (J)V 
L103:   astore 7 
L105:   aload_0 
L106:   aload 7 
L108:   invokevirtual Method java/util/Random nextFloat ()F 
L111:   ldc_w +360.0f 
L114:   fmul 
L115:   putfield Field com/fs/starfarer/combat/entities/Ship dHullOverlayAngleOffset F 
L118:   return 
L119:   
    .end code 
.end method 

.method public getExtraOverlayShadowOpacity : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship extraOverlayShadowOpacity F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method public setExtraOverlayShadowOpacity : (F)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     fload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship extraOverlayShadowOpacity F 
L5:     return 
L6:     
    .end code 
.end method 

.method public isExtraOverlayMatchHullColor : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship extraOverlayMatchHullColor Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public setExtraOverlayMatchHullColor : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship extraOverlayMatchHullColor Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public setExtraOverlay : (Ljava/lang/String;)V 
    .code stack 4 locals 8 
L0:     aload_1 
L1:     ifnonnull L10 
L4:     aload_0 
L5:     aconst_null 
L6:     putfield Field com/fs/starfarer/combat/entities/Ship extraOverlay Lcom/fs/graphics/Sprite; 
L9:     return 

        .stack same 
L10:    aload_0 
L11:    getfield Field com/fs/starfarer/combat/entities/Ship spec Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L14:    invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L17:    invokevirtual Method com/fs/starfarer/loading/specs/g getSpriteSpec ()Lcom/fs/starfarer/loading/specs/Q; 
L20:    astore_2 
L21:    aload_2 
L22:    invokevirtual Method com/fs/starfarer/loading/specs/Q null ()F 
L25:    fstore_3 
L26:    aload_2 
L27:    invokevirtual Method com/fs/starfarer/loading/specs/Q o00000 ()F 
L30:    fstore 4 
L32:    aload_0 
L33:    fload_3 
L34:    fload 4 
L36:    invokestatic Method java/lang/Math max (FF)F 
L39:    ldc_w +1.409999966621399f 
L42:    fmul 
L43:    putfield Field com/fs/starfarer/combat/entities/Ship extraOverlaySize F 
L46:    aload_0 
L47:    new com/fs/graphics/Sprite 
L50:    dup 
L51:    aload_1 
L52:    invokespecial Method com/fs/graphics/Sprite <init> (Ljava/lang/String;)V 
L55:    putfield Field com/fs/starfarer/combat/entities/Ship extraOverlay Lcom/fs/graphics/Sprite; 
L58:    new java/util/Random 
L61:    dup 
L62:    invokespecial Method java/util/Random <init> ()V 
L65:    invokevirtual Method java/util/Random nextLong ()J 
L68:    lstore 5 
L70:    aload_0 
L71:    getfield Field com/fs/starfarer/combat/entities/Ship fleetMemberId Ljava/lang/String; 
L74:    ifnull L98 
L77:    aload_0 
L78:    getfield Field com/fs/starfarer/combat/entities/Ship fleetMemberId Ljava/lang/String; 
L81:    invokevirtual Method java/lang/String hashCode ()I 
L84:    bipush 17 
L86:    imul 
L87:    i2l 
L88:    ldc2_w 100000000L 
L91:    lmul 
L92:    ldc2_w 23L 
L95:    lmul 
L96:    lstore 5 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object java/lang/String Object com/fs/starfarer/loading/specs/Q Float Float Long 
            stack 
        .end stack 
L98:    new java/util/Random 
L101:   dup 
L102:   lload 5 
L104:   invokespecial Method java/util/Random <init> (J)V 
L107:   astore 7 
L109:   aload_0 
L110:   aload 7 
L112:   invokevirtual Method java/util/Random nextFloat ()F 
L115:   ldc_w +360.0f 
L118:   fmul 
L119:   putfield Field com/fs/starfarer/combat/entities/Ship extraOverlayAngleOffset F 
L122:   return 
L123:   
    .end code 
.end method 

.method public getParentPieceId : ()Ljava/lang/String; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship parentPieceId Ljava/lang/String; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public setParentPieceId : (Ljava/lang/String;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship parentPieceId Ljava/lang/String; 
L5:     return 
L6:     
    .end code 
.end method 

.method public getExtraOverlayAngleOffset : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship extraOverlayAngleOffset F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method public setExtraOverlayAngleOffset : (F)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     fload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship extraOverlayAngleOffset F 
L5:     return 
L6:     
    .end code 
.end method 

.method public getDHullOverlayAngleOffset : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship dHullOverlayAngleOffset F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method public setDHullOverlayAngleOffset : (F)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     fload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship dHullOverlayAngleOffset F 
L5:     return 
L6:     
    .end code 
.end method 

.method public updateDHullOverlayColor : ()V 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     aload_0 
L2:     getfield Field com/fs/starfarer/combat/entities/Ship dHullOverlay Lcom/fs/graphics/Sprite; 
L5:     invokevirtual Method com/fs/starfarer/combat/entities/Ship updateOverlaySpriteColor (Lcom/fs/graphics/Sprite;)V 
L8:     return 
L9:     
    .end code 
.end method 

.method public updateExtraOverlayColor : ()V 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     aload_0 
L2:     getfield Field com/fs/starfarer/combat/entities/Ship extraOverlay Lcom/fs/graphics/Sprite; 
L5:     invokevirtual Method com/fs/starfarer/combat/entities/Ship updateOverlaySpriteColor (Lcom/fs/graphics/Sprite;)V 
L8:     return 
L9:     
    .end code 
.end method 

.method public updateOverlaySpriteColor : (Lcom/fs/graphics/Sprite;)V 
    .code stack 3 locals 8 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L4:     invokevirtual Method com/fs/graphics/Sprite getTexture ()Lcom/fs/graphics/Object; 
L7:     ifnull L300 
L10:    aload_0 
L11:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullStyle ()Lcom/fs/starfarer/loading/specs/OoOO; 
L14:    astore_2 
L15:    aconst_null 
L16:    astore_3 
L17:    aload_3 
L18:    ifnonnull L166 
L21:    aload_0 
L22:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L25:    invokevirtual Method com/fs/starfarer/loading/specs/g getCoversColor ()Ljava/awt/Color; 
L28:    ifnull L42 
L31:    aload_0 
L32:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L35:    invokevirtual Method com/fs/starfarer/loading/specs/g getCoversColor ()Ljava/awt/Color; 
L38:    astore_3 
L39:    goto L166 

        .stack append Object com/fs/starfarer/loading/specs/OoOO Object java/awt/Color 
L42:    aload_2 
L43:    invokevirtual Method com/fs/starfarer/loading/specs/OoOO 'ôo0000' ()F 
L46:    fconst_0 
L47:    fcmpl 
L48:    ifle L158 
L51:    aload_0 
L52:    getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L55:    invokevirtual Method com/fs/graphics/Sprite getTexture ()Lcom/fs/graphics/Object; 
L58:    invokevirtual Method com/fs/graphics/Object 'ø00000' ()Ljava/awt/Color; 
L61:    astore 4 
L63:    aload 4 
L65:    invokevirtual Method java/awt/Color getRed ()I 
L68:    i2f 
L69:    fstore 5 
L71:    aload 4 
L73:    invokevirtual Method java/awt/Color getGreen ()I 
L76:    i2f 
L77:    fload 5 
L79:    fcmpl 
L80:    ifle L91 
L83:    aload 4 
L85:    invokevirtual Method java/awt/Color getGreen ()I 
L88:    i2f 
L89:    fstore 5 

        .stack append Object java/awt/Color Float 
L91:    aload 4 
L93:    invokevirtual Method java/awt/Color getBlue ()I 
L96:    i2f 
L97:    fload 5 
L99:    fcmpl 
L100:   ifle L111 
L103:   aload 4 
L105:   invokevirtual Method java/awt/Color getBlue ()I 
L108:   i2f 
L109:   fstore 5 

        .stack same 
L111:   ldc_w +255.0f 
L114:   fload 5 
L116:   fdiv 
L117:   fstore 6 
L119:   aload 4 
L121:   fload 6 
L123:   invokestatic Method com/fs/graphics/util/B return (Ljava/awt/Color;F)Ljava/awt/Color; 
L126:   astore 7 
L128:   getstatic Field java/awt/Color white Ljava/awt/Color; 
L131:   aload 7 
L133:   aload_2 
L134:   invokevirtual Method com/fs/starfarer/loading/specs/OoOO 'ôo0000' ()F 
L137:   invokestatic Method com/fs/graphics/util/B o00000 (Ljava/awt/Color;Ljava/awt/Color;F)Ljava/awt/Color; 
L140:   astore 7 
L142:   aload_0 
L143:   getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L146:   invokevirtual Method com/fs/graphics/Sprite getColor ()Ljava/awt/Color; 
L149:   aload 7 
L151:   invokestatic Method com/fs/graphics/util/B o00000 (Ljava/awt/Color;Ljava/awt/Color;)Ljava/awt/Color; 
L154:   astore_3 
L155:   goto L166 

        .stack chop 2 
L158:   aload_0 
L159:   getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L162:   invokevirtual Method com/fs/graphics/Sprite getColor ()Ljava/awt/Color; 
L165:   astore_3 

        .stack same 
L166:   aload_3 
L167:   astore 4 
L169:   aload_0 
L170:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L173:   invokevirtual Method com/fs/starfarer/loading/specs/g getCoversColor ()Ljava/awt/Color; 
L176:   ifnonnull L270 
L179:   aload_2 
L180:   invokevirtual Method com/fs/starfarer/loading/specs/OoOO 'public' ()Z 
L183:   ifeq L270 
L186:   aload_0 
L187:   getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L190:   invokevirtual Method com/fs/graphics/Sprite getTexture ()Lcom/fs/graphics/Object; 
L193:   invokevirtual Method com/fs/graphics/Object 'Ò00000' ()Ljava/awt/Color; 
L196:   invokestatic Method com/fs/graphics/util/B Object (Ljava/awt/Color;)F 
L199:   fstore 5 
L201:   aload_0 
L202:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isHulk ()Z 
L205:   ifeq L223 
L208:   fload 5 
L210:   aload_0 
L211:   getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L214:   invokevirtual Method com/fs/graphics/Sprite getColor ()Ljava/awt/Color; 
L217:   invokestatic Method com/fs/graphics/util/B Object (Ljava/awt/Color;)F 
L220:   fmul 
L221:   fstore 5 

        .stack append Object java/awt/Color Float 
L223:   aload_1 
L224:   invokevirtual Method com/fs/graphics/Sprite getTexture ()Lcom/fs/graphics/Object; 
L227:   invokevirtual Method com/fs/graphics/Object 'Ò00000' ()Ljava/awt/Color; 
L230:   invokestatic Method com/fs/graphics/util/B Object (Ljava/awt/Color;)F 
L233:   fstore 6 
L235:   fload 5 
L237:   fload 6 
L239:   fadd 
L240:   fconst_2 
L241:   fdiv 
L242:   fload 6 
L244:   fdiv 
L245:   fconst_1 
L246:   fcmpg 
L247:   ifge L264 
L250:   aload_3 
L251:   fload 5 
L253:   fload 6 
L255:   fdiv 
L256:   invokestatic Method com/fs/graphics/util/B o00000 (Ljava/awt/Color;F)Ljava/awt/Color; 
L259:   astore 4 
L261:   goto L294 

        .stack append Float 
L264:   aload_3 
L265:   astore 4 
L267:   goto L294 

        .stack chop 2 
L270:   aload_0 
L271:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isHulk ()Z 
L274:   ifeq L294 
L277:   aload 4 
L279:   aload_0 
L280:   getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L283:   invokevirtual Method com/fs/graphics/Sprite getColor ()Ljava/awt/Color; 
L286:   ldc_w +0.75f 
L289:   invokestatic Method com/fs/graphics/util/B o00000 (Ljava/awt/Color;Ljava/awt/Color;F)Ljava/awt/Color; 
L292:   astore 4 

        .stack same 
L294:   aload_1 
L295:   aload 4 
L297:   invokevirtual Method com/fs/graphics/Sprite setColor (Ljava/awt/Color;)V 

        .stack chop 3 
L300:   return 
L301:   
    .end code 
.end method 

.method public getSpriteAPI : ()Lcom/fs/starfarer/api/graphics/SpriteAPI; 
    .code stack 3 locals 1 
L0:     new com/fs/starfarer/settings/OoOO 
L3:     dup 
L4:     aload_0 
L5:     getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L8:     invokespecial Method com/fs/starfarer/settings/OoOO <init> (Lcom/fs/graphics/Sprite;)V 
L11:    areturn 
L12:    
    .end code 
.end method 

.method public getHullLevelAtDeployment : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship hullLevelAtDeployment F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method public setHullLevelAtDeployment : (F)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     fload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship hullLevelAtDeployment F 
L5:     return 
L6:     
    .end code 
.end method 

.method public getBlockedCommands : ()Ljava/util/EnumSet; 
    .signature ()Ljava/util/EnumSet<Lcom/fs/starfarer/combat/entities/Ship$oo;>; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship blockedCommands Ljava/util/EnumSet; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public getCRAtDeployment : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship crAtDeployment F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method public setCRAtDeployment : (F)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     fload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship crAtDeployment F 
L5:     aload_0 
L6:     fload_1 
L7:     putfield Field com/fs/starfarer/combat/entities/Ship currentCR F 
L10:    return 
L11:    
    .end code 
.end method 

.method public getWingCRAtDeployment : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship wing Lcom/fs/starfarer/combat/ai/M; 
L4:     invokevirtual Method com/fs/starfarer/combat/ai/M getLaunchCR ()F 
L7:     freturn 
L8:     
    .end code 
.end method 

.method public getCurrentCR : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship currentCR F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method public setCurrentCR : (F)V 
    .code stack 3 locals 2 
L0:     fload_1 
L1:     fconst_0 
L2:     fcmpg 
L3:     ifge L8 
L6:     fconst_0 
L7:     fstore_1 

        .stack same 
L8:     aload_0 
L9:     getfield Field com/fs/starfarer/combat/entities/Ship currentCR F 
L12:    fload_1 
L13:    fcmpl 
L14:    ifeq L29 
L17:    fload_1 
L18:    aload_0 
L19:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getStats ()Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L22:    aload_0 
L23:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullSize ()Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L26:    invokestatic Method com/fs/starfarer/campaign/fleet/RepairTracker applyCRToStats (FLcom/fs/starfarer/api/combat/MutableShipStatsAPI;Lcom/fs/starfarer/api/combat/ShipAPI$HullSize;)V 

        .stack same 
L29:    aload_0 
L30:    fload_1 
L31:    putfield Field com/fs/starfarer/combat/entities/Ship currentCR F 
L34:    return 
L35:    
    .end code 
.end method 

.method public getFleetMemberId : ()Ljava/lang/String; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship fleetMemberId Ljava/lang/String; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public setFleetMemberId : (Ljava/lang/String;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship fleetMemberId Ljava/lang/String; 
L5:     return 
L6:     
    .end code 
.end method 

.method public getFleetCommander : ()Lcom/fs/starfarer/rpg/Person; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship fleetCommander Lcom/fs/starfarer/rpg/Person; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public setFleetCommander : (Lcom/fs/starfarer/rpg/Person;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship fleetCommander Lcom/fs/starfarer/rpg/Person; 
L5:     return 
L6:     
    .end code 
.end method 

.method public getCaptain : ()Lcom/fs/starfarer/rpg/Person; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship captain Lcom/fs/starfarer/rpg/Person; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public setFallbackPersonalityId : (Ljava/lang/String;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship fallbackPersonalityId Ljava/lang/String; 
L5:     return 
L6:     
    .end code 
.end method 

.method public getPersonality : ()Ljava/lang/String; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship captain Lcom/fs/starfarer/rpg/Person; 
L4:     ifnonnull L12 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/entities/Ship fallbackPersonalityId Ljava/lang/String; 
L11:    areturn 

        .stack same 
L12:    aload_0 
L13:    getfield Field com/fs/starfarer/combat/entities/Ship captain Lcom/fs/starfarer/rpg/Person; 
L16:    invokevirtual Method com/fs/starfarer/rpg/Person getPersonality ()Lcom/fs/starfarer/rpg/oOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO; 
L19:    invokevirtual Method com/fs/starfarer/rpg/oOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO getId ()Ljava/lang/String; 
L22:    areturn 
L23:    
    .end code 
.end method 

.method public setCaptain : (Lcom/fs/starfarer/api/characters/PersonAPI;)V 
    .code stack 3 locals 5 
L0:     aload_1 
L1:     checkcast com/fs/starfarer/rpg/Person 
L4:     astore_2 
L5:     aload_0 
L6:     getfield Field com/fs/starfarer/combat/entities/Ship captain Lcom/fs/starfarer/rpg/Person; 
L9:     ifnull L69 
L12:    aload_0 
L13:    getfield Field com/fs/starfarer/combat/entities/Ship captain Lcom/fs/starfarer/rpg/Person; 
L16:    invokevirtual Method com/fs/starfarer/rpg/Person getStats ()Lcom/fs/starfarer/campaign/CharacterStats; 
L19:    aload_0 
L20:    invokevirtual Method com/fs/starfarer/campaign/CharacterStats unapplyPersonalToShip (Lcom/fs/starfarer/combat/entities/Ship;)V 
L23:    aload_0 
L24:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getChildModules ()Ljava/util/List; 
L27:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L32:    astore 4 
L34:    goto L59 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/api/characters/PersonAPI Object com/fs/starfarer/rpg/Person Top Object java/util/Iterator 
            stack 
        .end stack 
L37:    aload 4 
L39:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L44:    checkcast com/fs/starfarer/combat/entities/Ship 
L47:    astore_3 
L48:    aload_0 
L49:    getfield Field com/fs/starfarer/combat/entities/Ship captain Lcom/fs/starfarer/rpg/Person; 
L52:    invokevirtual Method com/fs/starfarer/rpg/Person getStats ()Lcom/fs/starfarer/campaign/CharacterStats; 
L55:    aload_3 
L56:    invokevirtual Method com/fs/starfarer/campaign/CharacterStats unapplyPersonalToShip (Lcom/fs/starfarer/combat/entities/Ship;)V 

        .stack same 
L59:    aload 4 
L61:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L66:    ifne L37 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/api/characters/PersonAPI Object com/fs/starfarer/rpg/Person 
            stack 
        .end stack 
L69:    aload_2 
L70:    ifnonnull L85 
L73:    new com/fs/starfarer/rpg/Person 
L76:    dup 
L77:    aload_0 
L78:    getfield Field com/fs/starfarer/combat/entities/Ship fallbackPersonalityId Ljava/lang/String; 
L81:    invokespecial Method com/fs/starfarer/rpg/Person <init> (Ljava/lang/String;)V 
L84:    astore_2 

        .stack same 
L85:    aload_0 
L86:    aload_2 
L87:    putfield Field com/fs/starfarer/combat/entities/Ship captain Lcom/fs/starfarer/rpg/Person; 
L90:    aload_2 
L91:    ifnull L145 
L94:    aload_2 
L95:    invokevirtual Method com/fs/starfarer/rpg/Person getStats ()Lcom/fs/starfarer/campaign/CharacterStats; 
L98:    aload_0 
L99:    invokevirtual Method com/fs/starfarer/campaign/CharacterStats applyPersonalToShip (Lcom/fs/starfarer/combat/entities/Ship;)V 
L102:   aload_0 
L103:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getChildModules ()Ljava/util/List; 
L106:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L111:   astore 4 
L113:   goto L135 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/api/characters/PersonAPI Object com/fs/starfarer/rpg/Person Top Object java/util/Iterator 
            stack 
        .end stack 
L116:   aload 4 
L118:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L123:   checkcast com/fs/starfarer/combat/entities/Ship 
L126:   astore_3 
L127:   aload_2 
L128:   invokevirtual Method com/fs/starfarer/rpg/Person getStats ()Lcom/fs/starfarer/campaign/CharacterStats; 
L131:   aload_3 
L132:   invokevirtual Method com/fs/starfarer/campaign/CharacterStats applyPersonalToShip (Lcom/fs/starfarer/combat/entities/Ship;)V 

        .stack same 
L135:   aload 4 
L137:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L142:   ifne L116 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/api/characters/PersonAPI Object com/fs/starfarer/rpg/Person 
            stack 
        .end stack 
L145:   return 
L146:   
    .end code 
.end method 

.method public getOriginalCaptain : ()Lcom/fs/starfarer/rpg/Person; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship originalCaptain Lcom/fs/starfarer/rpg/Person; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public setOriginalCaptain : (Lcom/fs/starfarer/rpg/Person;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship originalCaptain Lcom/fs/starfarer/rpg/Person; 
L5:     return 
L6:     
    .end code 
.end method 

.method public getPhaseCloak : ()Lcom/fs/starfarer/combat/systems/F; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship phaseCloak Lcom/fs/starfarer/combat/systems/F; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public getTravelDrive : ()Lcom/fs/starfarer/combat/systems/F; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship travelDrive Lcom/fs/starfarer/combat/systems/F; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public isTravelDriveOn : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship travelDrive Lcom/fs/starfarer/combat/systems/F; 
L4:     ifnull L19 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/entities/Ship travelDrive Lcom/fs/starfarer/combat/systems/F; 
L11:    invokevirtual Method com/fs/starfarer/combat/systems/F isOn ()Z 
L14:    ifeq L19 
L17:    iconst_1 
L18:    ireturn 

        .stack same 
L19:    iconst_0 
L20:    ireturn 
L21:    
    .end code 
.end method 

.method public isDrone : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship isDrone Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public setDrone : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship isDrone Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public getDeployedDrones : ()Ljava/util/List; 
    .signature ()Ljava/util/List<Lcom/fs/starfarer/api/combat/ShipAPI;>; 
    .code stack 2 locals 5 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship system Lcom/fs/starfarer/combat/systems/F; 
L4:     instanceof com/fs/starfarer/combat/systems/oO0O 
L7:     ifne L12 
L10:    aconst_null 
L11:    areturn 

        .stack same 
L12:    new java/util/ArrayList 
L15:    dup 
L16:    invokespecial Method java/util/ArrayList <init> ()V 
L19:    astore_1 
L20:    aload_0 
L21:    getfield Field com/fs/starfarer/combat/entities/Ship system Lcom/fs/starfarer/combat/systems/F; 
L24:    checkcast com/fs/starfarer/combat/systems/oO0O 
L27:    astore_2 
L28:    aload_2 
L29:    invokevirtual Method com/fs/starfarer/combat/systems/oO0O getDrones ()Ljava/util/List; 
L32:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L37:    astore 4 
L39:    goto L62 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object java/util/ArrayList Object com/fs/starfarer/combat/systems/oO0O Top Object java/util/Iterator 
            stack 
        .end stack 
L42:    aload 4 
L44:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L49:    checkcast com/fs/starfarer/combat/systems/oO0O$Oo 
L52:    astore_3 
L53:    aload_1 
L54:    aload_3 
L55:    getfield Field com/fs/starfarer/combat/systems/oO0O$Oo 'Ò00000' Lcom/fs/starfarer/combat/entities/Ship; 
L58:    invokevirtual Method java/util/ArrayList add (Ljava/lang/Object;)Z 
L61:    pop 

        .stack same 
L62:    aload 4 
L64:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L69:    ifne L42 
L72:    aload_1 
L73:    areturn 
L74:    
    .end code 
.end method 

.method public getDroneSource : ()Lcom/fs/starfarer/api/combat/ShipAPI; 
    .code stack 1 locals 2 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getAI ()Lcom/fs/starfarer/combat/ai/AI; 
L4:     instanceof com/fs/starfarer/combat/ai/system/drones/DroneAI 
L7:     ifeq L23 
L10:    aload_0 
L11:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getAI ()Lcom/fs/starfarer/combat/ai/AI; 
L14:    checkcast com/fs/starfarer/combat/ai/system/drones/DroneAI 
L17:    astore_1 
L18:    aload_1 
L19:    invokevirtual Method com/fs/starfarer/combat/ai/system/drones/DroneAI getMothership ()Lcom/fs/starfarer/combat/entities/Ship; 
L22:    areturn 

        .stack same 
L23:    aconst_null 
L24:    areturn 
L25:    
    .end code 
.end method 

.method public blockCommandForOneFrame : (Lcom/fs/starfarer/combat/entities/Ship$oo;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship blockedCommands Ljava/util/EnumSet; 
L4:     aload_1 
L5:     invokevirtual Method java/util/EnumSet add (Ljava/lang/Object;)Z 
L8:     pop 
L9:     return 
L10:    
    .end code 
.end method 

.method public blockCommandForOneFrame : (Lcom/fs/starfarer/api/combat/ShipCommand;)V 
    .code stack 2 locals 3 
L0:     aconst_null 
L1:     astore_2 
L2:     invokestatic Method com/fs/starfarer/combat/entities/Ship $SWITCH_TABLE$com$fs$starfarer$api$combat$ShipCommand ()[I 
L5:     aload_1 
L6:     invokevirtual Method com/fs/starfarer/api/combat/ShipCommand ordinal ()I 
L9:     iaload 
L10:    tableswitch 1 
            L165 
            L172 
            L137 
            L144 
            L88 
            L95 
            L102 
            L130 
            L179 
            L151 
            L109 
            L193 
            L158 
            L116 
            L123 
            L186 
            default : L197 


        .stack append Object com/fs/starfarer/combat/entities/Ship$oo 
L88:    getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'this.super' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L91:    astore_2 
L92:    goto L197 

        .stack same 
L95:    getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'ö00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L98:    astore_2 
L99:    goto L197 

        .stack same 
L102:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'Ò00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L105:   astore_2 
L106:   goto L197 

        .stack same 
L109:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'Ø00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L112:   astore_2 
L113:   goto L197 

        .stack same 
L116:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'ÒO0000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L119:   astore_2 
L120:   goto L197 

        .stack same 
L123:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'public' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L126:   astore_2 
L127:   goto L197 

        .stack same 
L130:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'ô00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L133:   astore_2 
L134:   goto L197 

        .stack same 
L137:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'ÕO0000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L140:   astore_2 
L141:   goto L197 

        .stack same 
L144:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo o00000 Lcom/fs/starfarer/combat/entities/Ship$oo; 
L147:   astore_2 
L148:   goto L197 

        .stack same 
L151:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo int Lcom/fs/starfarer/combat/entities/Ship$oo; 
L154:   astore_2 
L155:   goto L197 

        .stack same 
L158:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'ØO0000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L161:   astore_2 
L162:   goto L197 

        .stack same 
L165:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo for Lcom/fs/starfarer/combat/entities/Ship$oo; 
L168:   astore_2 
L169:   goto L197 

        .stack same 
L172:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo return Lcom/fs/starfarer/combat/entities/Ship$oo; 
L175:   astore_2 
L176:   goto L197 

        .stack same 
L179:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo oO0000 Lcom/fs/starfarer/combat/entities/Ship$oo; 
L182:   astore_2 
L183:   goto L197 

        .stack same 
L186:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'Õ00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L189:   astore_2 
L190:   goto L197 

        .stack same 
L193:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'ø00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L196:   astore_2 

        .stack same 
L197:   aload_2 
L198:   ifnonnull L202 
L201:   return 

        .stack same 
L202:   aload_0 
L203:   getfield Field com/fs/starfarer/combat/entities/Ship blockedCommands Ljava/util/EnumSet; 
L206:   aload_2 
L207:   invokevirtual Method java/util/EnumSet add (Ljava/lang/Object;)Z 
L210:   pop 
L211:   aload_2 
L212:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'Ø00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L215:   if_acmpne L229 
L218:   aload_0 
L219:   getfield Field com/fs/starfarer/combat/entities/Ship blockedCommands Ljava/util/EnumSet; 
L222:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo oO0000 Lcom/fs/starfarer/combat/entities/Ship$oo; 
L225:   invokevirtual Method java/util/EnumSet add (Ljava/lang/Object;)Z 
L228:   pop 

        .stack same 
L229:   aload_2 
L230:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo oO0000 Lcom/fs/starfarer/combat/entities/Ship$oo; 
L233:   if_acmpne L247 
L236:   aload_0 
L237:   getfield Field com/fs/starfarer/combat/entities/Ship blockedCommands Ljava/util/EnumSet; 
L240:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'Ø00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L243:   invokevirtual Method java/util/EnumSet add (Ljava/lang/Object;)Z 
L246:   pop 

        .stack same 
L247:   return 
L248:   
    .end code 
.end method 

.method public getSystem : ()Lcom/fs/starfarer/combat/systems/F; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship system Lcom/fs/starfarer/combat/systems/F; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public getAimAccuracy : ()F 
    .code stack 4 locals 1 
L0:     fconst_2 
L1:     fconst_0 
L2:     fconst_1 
L3:     aload_0 
L4:     getfield Field com/fs/starfarer/combat/entities/Ship stats Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L7:     invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getAutofireAimAccuracy ()Lcom/fs/starfarer/api/combat/MutableStat; 
L10:    invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L13:    invokestatic Method java/lang/Math min (FF)F 
L16:    invokestatic Method java/lang/Math max (FF)F 
L19:    fsub 
L20:    freturn 
L21:    
    .end code 
.end method 

.method public hasOmniShield : ()Z 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship shield Lcom/fs/starfarer/combat/systems/G; 
L4:     ifnull L22 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/entities/Ship shield Lcom/fs/starfarer/combat/systems/G; 
L11:    invokevirtual Method com/fs/starfarer/combat/systems/G getType ()Lcom/fs/starfarer/api/combat/ShieldAPI$ShieldType; 
L14:    getstatic Field com/fs/starfarer/api/combat/ShieldAPI$ShieldType OMNI Lcom/fs/starfarer/api/combat/ShieldAPI$ShieldType; 
L17:    if_acmpne L22 
L20:    iconst_1 
L21:    ireturn 

        .stack same 
L22:    iconst_0 
L23:    ireturn 
L24:    
    .end code 
.end method 

.method public getFullDesignation : ()Ljava/lang/String; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship wing Lcom/fs/starfarer/combat/ai/M; 
L4:     ifnonnull L15 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/entities/Ship spec Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L11:    invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getFullDesignationForShip ()Ljava/lang/String; 
L14:    areturn 

        .stack same 
L15:    aload_0 
L16:    getfield Field com/fs/starfarer/combat/entities/Ship spec Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L19:    invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getFullDesignationForFighter ()Ljava/lang/String; 
L22:    areturn 
L23:    
    .end code 
.end method 

.method public getDesignationWithoutClass : ()Ljava/lang/String; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship wing Lcom/fs/starfarer/combat/ai/M; 
L4:     ifnonnull L15 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/entities/Ship spec Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L11:    invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getFullDesignationForShip ()Ljava/lang/String; 
L14:    areturn 

        .stack same 
L15:    aload_0 
L16:    getfield Field com/fs/starfarer/combat/entities/Ship spec Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L19:    invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getWingTypeDesignationForFighter ()Ljava/lang/String; 
L22:    areturn 
L23:    
    .end code 
.end method 

.method public isShuttlePod : ()Z 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship spec Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L4:     invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSize ()Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L7:     getstatic Field com/fs/starfarer/api/combat/ShipAPI$HullSize FRIGATE Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L10:    if_acmpne L31 
L13:    aload_0 
L14:    getfield Field com/fs/starfarer/combat/entities/Ship spec Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L17:    invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullVariantId ()Ljava/lang/String; 
L20:    ldc_w 'shuttlepod_xfer' 
L23:    invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L26:    ifeq L31 
L29:    iconst_1 
L30:    ireturn 

        .stack same 
L31:    iconst_0 
L32:    ireturn 
L33:    
    .end code 
.end method 

.method public getAIFlags : ()Lcom/fs/starfarer/api/combat/ShipwideAIFlags; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokestatic Method com/fs/starfarer/combat/ai/OO0O 'super.super' (Lcom/fs/starfarer/combat/entities/Ship;)Lcom/fs/starfarer/api/combat/ShipwideAIFlags; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public setOwner : (I)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     invokespecial Method com/fs/starfarer/combat/entities/BaseEntity setOwner (I)V 
L5:     aload_0 
L6:     getfield Field com/fs/starfarer/combat/entities/Ship originalOwner I 
L9:     iconst_m1 
L10:    if_icmpne L18 
L13:    aload_0 
L14:    iload_1 
L15:    putfield Field com/fs/starfarer/combat/entities/Ship originalOwner I 

        .stack same 
L18:    return 
L19:    
    .end code 
.end method 

.method public resetOriginalOwner : ()V 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     iconst_m1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship originalOwner I 
L5:     return 
L6:     
    .end code 
.end method 

.method public getWeaponGroupsCopy : ()Ljava/util/List; 
    .signature ()Ljava/util/List<Lcom/fs/starfarer/api/combat/WeaponGroupAPI;>; 
    .code stack 3 locals 1 
L0:     new java/util/ArrayList 
L3:     dup 
L4:     aload_0 
L5:     getfield Field com/fs/starfarer/combat/entities/Ship groups Ljava/util/List; 
L8:     invokespecial Method java/util/ArrayList <init> (Ljava/util/Collection;)V 
L11:    areturn 
L12:    
    .end code 
.end method 

.method public getOriginalOwner : ()I 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship originalOwner I 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public setOriginalOwner : (I)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship originalOwner I 
L5:     return 
L6:     
    .end code 
.end method 

.method public canUseEngines : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L4:     invokevirtual Method com/fs/starfarer/combat/entities/ship/D canUseEngines ()Z 
L7:     ireturn 
L8:     
    .end code 
.end method 

.method public fadeToColor : (FLjava/awt/Color;)V 
    .code stack 5 locals 3 
L0:     aload_0 
L1:     aload_2 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship fadeToColor Ljava/awt/Color; 
L5:     aload_0 
L6:     new com/fs/graphics/util/Fader 
L9:     dup 
L10:    fconst_0 
L11:    fload_1 
L12:    invokespecial Method com/fs/graphics/util/Fader <init> (FF)V 
L15:    putfield Field com/fs/starfarer/combat/entities/Ship colorFader Lcom/fs/graphics/util/Fader; 
L18:    aload_0 
L19:    getfield Field com/fs/starfarer/combat/entities/Ship colorFader Lcom/fs/graphics/util/Fader; 
L22:    invokevirtual Method com/fs/graphics/util/Fader fadeIn ()V 
L25:    return 
L26:    
    .end code 
.end method 

.method public fadeToColor : (Ljava/lang/Object;Ljava/awt/Color;FFF)V 
    .code stack 6 locals 6 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship shipColor Lcom/fs/starfarer/util/ColorShifter; 
L4:     aload_1 
L5:     aload_2 
L6:     fload_3 
L7:     fload 4 
L9:     fload 5 
L11:    invokevirtual Method com/fs/starfarer/util/ColorShifter shift (Ljava/lang/Object;Ljava/awt/Color;FFF)V 
L14:    return 
L15:    
    .end code 
.end method 

.method public makeLookDisabled : ()V 
    .code stack 7 locals 4 
L0:     aload_0 
L1:     new java/awt/Color 
L4:     dup 
L5:     bipush 120 
L7:     bipush 120 
L9:     bipush 120 
L11:    sipush 255 
L14:    invokespecial Method java/awt/Color <init> (IIII)V 
L17:    invokevirtual Method com/fs/starfarer/combat/entities/Ship setColor (Ljava/awt/Color;)V 
L20:    aload_0 
L21:    iconst_1 
L22:    putfield Field com/fs/starfarer/combat/entities/Ship isHulk Z 
L25:    aload_0 
L26:    invokevirtual Method com/fs/starfarer/combat/entities/Ship isFighter ()Z 
L29:    ifeq L88 
L32:    aload_0 
L33:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getArmorGrid ()Lcom/fs/starfarer/combat/entities/ship/new; 
L36:    invokevirtual Method com/fs/starfarer/combat/entities/ship/new getGrid ()[[F 
L39:    astore_1 
L40:    iconst_0 
L41:    istore_2 
L42:    goto L73 

        .stack append Object [[F Integer 
L45:    iconst_0 
L46:    istore_3 
L47:    goto L59 

        .stack append Integer 
L50:    aload_1 
L51:    iload_2 
L52:    aaload 
L53:    iload_3 
L54:    fconst_0 
L55:    fastore 
L56:    iinc 3 1 

        .stack same 
L59:    iload_3 
L60:    aload_0 
L61:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getArmorGrid ()Lcom/fs/starfarer/combat/entities/ship/new; 
L64:    invokevirtual Method com/fs/starfarer/combat/entities/ship/new getGridHeight ()I 
L67:    if_icmplt L50 
L70:    iinc 2 1 

        .stack chop 1 
L73:    iload_2 
L74:    aload_0 
L75:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getArmorGrid ()Lcom/fs/starfarer/combat/entities/ship/new; 
L78:    invokevirtual Method com/fs/starfarer/combat/entities/ship/new getGridWidth ()I 
L81:    if_icmplt L45 
L84:    aload_0 
L85:    invokevirtual Method com/fs/starfarer/combat/entities/Ship syncWithArmorGridState ()V 

        .stack chop 2 
L88:    return 
L89:    
    .end code 
.end method 

.method public setHulk : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship isHulk Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public syncWithArmorGridState : ()V 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship decalRenderer Lcom/fs/starfarer/renderers/damage/String; 
L4:     invokevirtual Method com/fs/starfarer/renderers/damage/String 'ö00000' ()V 
L7:     aload_0 
L8:     invokevirtual Method com/fs/starfarer/combat/entities/Ship syncWeaponDecalsWithArmorDamage ()V 
L11:    return 
L12:    
    .end code 
.end method 

.method public syncWeaponDecalsWithArmorDamage : ()V 
    .code stack 1 locals 4 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship modules Ljava/util/List; 
L4:     invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L9:     astore_2 
L10:    goto L48 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Top Object java/util/Iterator 
            stack 
        .end stack 
L13:    aload_2 
L14:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L19:    checkcast com/fs/starfarer/combat/entities/ship/A/OooO 
L22:    astore_1 
L23:    aload_1 
L24:    instanceof com/fs/starfarer/combat/systems/o00O 
L27:    ifeq L48 
L30:    aload_1 
L31:    checkcast com/fs/starfarer/combat/systems/o00O 
L34:    invokeinterface InterfaceMethod com/fs/starfarer/combat/systems/o00O getDamageTracker ()Lcom/fs/starfarer/combat/entities/ship/A/String; 1 
L39:    astore_3 
L40:    aload_3 
L41:    ifnull L48 
L44:    aload_3 
L45:    invokevirtual Method com/fs/starfarer/combat/entities/ship/A/String 'super' ()V 

        .stack same 
L48:    aload_2 
L49:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L54:    ifne L13 
L57:    return 
L58:    
    .end code 
.end method 

.method public getSpec : ()Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship spec Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public getWing : ()Lcom/fs/starfarer/combat/ai/M; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship wing Lcom/fs/starfarer/combat/ai/M; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public setWing : (Lcom/fs/starfarer/combat/ai/M;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship wing Lcom/fs/starfarer/combat/ai/M; 
L5:     return 
L6:     
    .end code 
.end method 

.method public setWing : (Lcom/fs/starfarer/api/combat/FighterWingAPI;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     checkcast com/fs/starfarer/combat/ai/M 
L5:     putfield Field com/fs/starfarer/combat/entities/Ship wing Lcom/fs/starfarer/combat/ai/M; 
L8:     return 
L9:     
    .end code 
.end method 

.method public getMouseTarget : ()Lorg/lwjgl/util/vector/Vector2f; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship mouseTarget Lorg/lwjgl/util/vector/Vector2f; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public getShieldTarget : ()Lorg/lwjgl/util/vector/Vector2f; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship shieldTarget Lorg/lwjgl/util/vector/Vector2f; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public setShieldTargetOverride : (FF)V 
    .code stack 5 locals 3 
L0:     aload_0 
L1:     new org/lwjgl/util/vector/Vector2f 
L4:     dup 
L5:     fload_1 
L6:     fload_2 
L7:     invokespecial Method org/lwjgl/util/vector/Vector2f <init> (FF)V 
L10:    putfield Field com/fs/starfarer/combat/entities/Ship shieldTarget Lorg/lwjgl/util/vector/Vector2f; 
L13:    return 
L14:    
    .end code 
.end method 

.method public getShipTarget : ()Lcom/fs/starfarer/combat/entities/Ship; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship shipTarget Lcom/fs/starfarer/combat/entities/Ship; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public setShipTarget : (Lcom/fs/starfarer/api/combat/ShipAPI;)V 
    .code stack 2 locals 2 
L0:     aload_1 
L1:     ifnull L37 
L4:     aload_1 
L5:     invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ShipAPI isFighter ()Z 1 
L10:    ifne L37 
L13:    aload_0 
L14:    aload_1 
L15:    invokevirtual Method com/fs/starfarer/combat/entities/Ship isFriendOf (Lcom/fs/starfarer/api/combat/ShipAPI;)Z 
L18:    ifeq L32 
L21:    aload_0 
L22:    aload_1 
L23:    checkcast com/fs/starfarer/combat/entities/Ship 
L26:    putfield Field com/fs/starfarer/combat/entities/Ship lastFriendlyTarget Lcom/fs/starfarer/combat/entities/Ship; 
L29:    goto L37 

        .stack same 
L32:    aload_0 
L33:    aconst_null 
L34:    putfield Field com/fs/starfarer/combat/entities/Ship lastFriendlyTarget Lcom/fs/starfarer/combat/entities/Ship; 

        .stack same 
L37:    aload_0 
L38:    aload_1 
L39:    checkcast com/fs/starfarer/combat/entities/Ship 
L42:    putfield Field com/fs/starfarer/combat/entities/Ship shipTarget Lcom/fs/starfarer/combat/entities/Ship; 
L45:    return 
L46:    
    .end code 
.end method 

.method public getLastFriendlyTarget : ()Lcom/fs/starfarer/combat/entities/Ship; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship lastFriendlyTarget Lcom/fs/starfarer/combat/entities/Ship; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public setLastFriendlyTarget : (Lcom/fs/starfarer/combat/entities/Ship;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship lastFriendlyTarget Lcom/fs/starfarer/combat/entities/Ship; 
L5:     return 
L6:     
    .end code 
.end method 

.method public isEnemyOf : (Lcom/fs/starfarer/api/combat/ShipAPI;)Z 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getOwner ()I 
L4:     bipush 100 
L6:     if_icmpne L11 
L9:     iconst_0 
L10:    ireturn 

        .stack same 
L11:    aload_1 
L12:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ShipAPI getOwner ()I 1 
L17:    bipush 100 
L19:    if_icmpne L24 
L22:    iconst_0 
L23:    ireturn 

        .stack same 
L24:    aload_0 
L25:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getOwner ()I 
L28:    aload_1 
L29:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ShipAPI getOwner ()I 1 
L34:    if_icmpeq L39 
L37:    iconst_1 
L38:    ireturn 

        .stack same 
L39:    iconst_0 
L40:    ireturn 
L41:    
    .end code 
.end method 

.method public isFriendOf : (Lcom/fs/starfarer/api/combat/ShipAPI;)Z 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getOwner ()I 
L4:     bipush 100 
L6:     if_icmpne L11 
L9:     iconst_0 
L10:    ireturn 

        .stack same 
L11:    aload_1 
L12:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ShipAPI getOwner ()I 1 
L17:    bipush 100 
L19:    if_icmpne L24 
L22:    iconst_0 
L23:    ireturn 

        .stack same 
L24:    aload_0 
L25:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getOwner ()I 
L28:    aload_1 
L29:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ShipAPI getOwner ()I 1 
L34:    if_icmpne L39 
L37:    iconst_1 
L38:    ireturn 

        .stack same 
L39:    iconst_0 
L40:    ireturn 
L41:    
    .end code 
.end method 

.method public addFittedModule : (Lcom/fs/starfarer/combat/entities/ship/A/OooO;)V 
    .code stack 4 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship modules Ljava/util/List; 
L4:     aload_1 
L5:     invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L10:    pop 
L11:    aload_0 
L12:    getfield Field com/fs/starfarer/combat/entities/Ship modules Ljava/util/List; 
L15:    new com/fs/starfarer/combat/entities/Ship$1 
L18:    dup 
L19:    aload_0 
L20:    invokespecial Method com/fs/starfarer/combat/entities/Ship$1 <init> (Lcom/fs/starfarer/combat/entities/Ship;)V 
L23:    invokestatic Method java/util/Collections sort (Ljava/util/List;Ljava/util/Comparator;)V 
L26:    return 
L27:    
    .end code 
.end method 

.method public getModules : ()Ljava/util/List; 
    .signature ()Ljava/util/List<Lcom/fs/starfarer/combat/entities/ship/A/OooO;>; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship modules Ljava/util/List; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public findModule : (Lcom/fs/starfarer/loading/specs/nullsuper;)Lcom/fs/starfarer/combat/entities/ship/A/OooO; 
    .code stack 2 locals 4 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship modules Ljava/util/List; 
L4:     invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L9:     astore_3 
L10:    goto L35 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/loading/specs/nullsuper Top Object java/util/Iterator 
            stack 
        .end stack 
L13:    aload_3 
L14:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L19:    checkcast com/fs/starfarer/combat/entities/ship/A/OooO 
L22:    astore_2 
L23:    aload_2 
L24:    invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/A/OooO getSlot ()Lcom/fs/starfarer/loading/specs/nullsuper; 1 
L29:    aload_1 
L30:    if_acmpne L35 
L33:    aload_2 
L34:    areturn 

        .stack same 
L35:    aload_3 
L36:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L41:    ifne L13 
L44:    aconst_null 
L45:    areturn 
L46:    
    .end code 
.end method 

.method public addLaunchBay : (Lcom/fs/starfarer/combat/entities/ship/A/C;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship modules Ljava/util/List; 
L4:     aload_1 
L5:     invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L10:    pop 
L11:    aload_0 
L12:    getfield Field com/fs/starfarer/combat/entities/Ship launchBays Ljava/util/List; 
L15:    aload_1 
L16:    invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L21:    pop 
L22:    return 
L23:    
    .end code 
.end method 

.method public getLaunchBays : ()Ljava/util/List; 
    .signature ()Ljava/util/List<Lcom/fs/starfarer/combat/entities/ship/A/C;>; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship launchBays Ljava/util/List; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public getLaunchBaysCopy : ()Ljava/util/List; 
    .signature ()Ljava/util/List<Lcom/fs/starfarer/api/combat/FighterLaunchBayAPI;>; 
    .code stack 3 locals 1 
L0:     new java/util/ArrayList 
L3:     dup 
L4:     aload_0 
L5:     getfield Field com/fs/starfarer/combat/entities/Ship launchBays Ljava/util/List; 
L8:     invokespecial Method java/util/ArrayList <init> (Ljava/util/Collection;)V 
L11:    areturn 
L12:    
    .end code 
.end method 

.method public hasLaunchBays : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship launchBays Ljava/util/List; 
L4:     invokeinterface InterfaceMethod java/util/List isEmpty ()Z 1 
L9:     ifeq L16 
L12:    iconst_0 
L13:    goto L17 

        .stack same 
L16:    iconst_1 

        .stack stack_1 Integer 
L17:    ireturn 
L18:    
    .end code 
.end method 

.method public isCarrier : ()Z 
    .code stack 3 locals 2 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getVariant ()Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L4:     invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec isCarrier ()Z 
L7:     ifeq L42 
L10:    aload_0 
L11:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getLaunchBays ()Ljava/util/List; 
L14:    invokeinterface InterfaceMethod java/util/List size ()I 1 
L19:    i2f 
L20:    aload_0 
L21:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getStats ()Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L24:    invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getNumFighterBays ()Lcom/fs/starfarer/api/combat/MutableStat; 
L27:    invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L30:    ldc_w +0.6600000262260437f 
L33:    fmul 
L34:    fcmpl 
L35:    iflt L42 
L38:    iconst_1 
L39:    goto L43 

        .stack same 
L42:    iconst_0 

        .stack stack_1 Integer 
L43:    istore_1 
L44:    iload_1 
L45:    ireturn 
L46:    
    .end code 
.end method 

.method public giveCommand : (Lcom/fs/starfarer/combat/entities/Ship$Oo;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship isLiftingOffOrLanding Z 
L4:     ifeq L8 
L7:     return 

        .stack same 
L8:     aload_0 
L9:     getfield Field com/fs/starfarer/combat/entities/Ship isHulk Z 
L12:    ifeq L16 
L15:    return 

        .stack same 
L16:    aload_1 
L17:    getfield Field com/fs/starfarer/combat/entities/Ship$Oo 'Ò00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L20:    getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'ØO0000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L23:    if_acmpne L58 
L26:    aload_0 
L27:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getFluxTracker ()Lcom/fs/starfarer/combat/entities/ship/D; 
L30:    invokevirtual Method com/fs/starfarer/combat/entities/ship/D isOverloadedOrVenting ()Z 
L33:    ifeq L58 
L36:    aload_0 
L37:    invokevirtual Method com/fs/starfarer/combat/entities/Ship isShieldOn ()Z 
L40:    ifne L58 
L43:    aload_0 
L44:    invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L47:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L50:    if_acmpne L58 
L53:    aload_0 
L54:    fconst_0 
L55:    putfield Field com/fs/starfarer/combat/entities/Ship elapsedSinceRaiseShieldsWhileOverloaded F 

        .stack same 
L58:    aload_0 
L59:    getfield Field com/fs/starfarer/combat/entities/Ship commands Ljava/util/List; 
L62:    aload_1 
L63:    invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L68:    pop 
L69:    return 
L70:    
    .end code 
.end method 

.method public getMaxViewOffset : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship maxViewOffset F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method public setMaxViewOffset : (F)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     fload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship maxViewOffset F 
L5:     return 
L6:     
    .end code 
.end method 

.method public setAnimatedLaunch : ()V 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     iconst_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship isAnimatedLaunch Z 
L5:     aload_0 
L6:     iconst_0 
L7:     putfield Field com/fs/starfarer/combat/entities/Ship isLanding Z 
L10:    aload_0 
L11:    fconst_0 
L12:    putfield Field com/fs/starfarer/combat/entities/Ship sinceLaunch F 
L15:    aload_0 
L16:    getfield Field com/fs/starfarer/combat/entities/Ship shadow Lcom/fs/graphics/Sprite; 
L19:    aload_0 
L20:    getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L23:    invokevirtual Method com/fs/graphics/Sprite getTexture ()Lcom/fs/graphics/Object; 
L26:    invokevirtual Method com/fs/graphics/Sprite setTexture (Lcom/fs/graphics/Object;)V 
L29:    return 
L30:    
    .end code 
.end method 

.method public abortLanding : ()V 
    .code stack 3 locals 2 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getSinceLaunch ()F 
L4:     fstore_1 
L5:     aload_0 
L6:     invokevirtual Method com/fs/starfarer/combat/entities/Ship setAnimatedLaunch ()V 
L9:     aload_0 
L10:    fconst_0 
L11:    fload_1 
L12:    invokestatic Method java/lang/Math max (FF)F 
L15:    invokevirtual Method com/fs/starfarer/combat/entities/Ship setSinceLaunch (F)V 
L18:    return 
L19:    
    .end code 
.end method 

.method public getSinceLaunch : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship sinceLaunch F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method public setSinceLaunch : (F)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     fload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship sinceLaunch F 
L5:     return 
L6:     
    .end code 
.end method 

.method public getLaunchingShip : ()Lcom/fs/starfarer/combat/entities/Ship; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship launchingShip Lcom/fs/starfarer/combat/entities/Ship; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public setLaunchingShip : (Lcom/fs/starfarer/api/combat/ShipAPI;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     checkcast com/fs/starfarer/combat/entities/Ship 
L5:     putfield Field com/fs/starfarer/combat/entities/Ship launchingShip Lcom/fs/starfarer/combat/entities/Ship; 
L8:     return 
L9:     
    .end code 
.end method 

.method public isAnimatedLaunch : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship isAnimatedLaunch Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public getSinceLastDamageTaken : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship sinceLastDamageTaken F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method public beginLandingAnimation : (Lcom/fs/starfarer/api/combat/ShipAPI;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship shield Lcom/fs/starfarer/combat/systems/G; 
L4:     ifnull L24 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/entities/Ship shield Lcom/fs/starfarer/combat/systems/G; 
L11:    invokevirtual Method com/fs/starfarer/combat/systems/G isToggle ()Z 
L14:    ifeq L24 
L17:    aload_0 
L18:    getfield Field com/fs/starfarer/combat/entities/Ship shield Lcom/fs/starfarer/combat/systems/G; 
L21:    invokevirtual Method com/fs/starfarer/combat/systems/G toggleOff ()V 

        .stack same 
L24:    aload_0 
L25:    invokevirtual Method com/fs/starfarer/combat/entities/Ship turnOffAllGroups ()V 
L28:    aload_0 
L29:    iconst_1 
L30:    putfield Field com/fs/starfarer/combat/entities/Ship isAnimatedLaunch Z 
L33:    aload_0 
L34:    iconst_1 
L35:    putfield Field com/fs/starfarer/combat/entities/Ship isLanding Z 
L38:    aload_0 
L39:    getfield Field com/fs/starfarer/combat/entities/Ship shadow Lcom/fs/graphics/Sprite; 
L42:    aload_0 
L43:    getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L46:    invokevirtual Method com/fs/graphics/Sprite getTexture ()Lcom/fs/graphics/Object; 
L49:    invokevirtual Method com/fs/graphics/Sprite setTexture (Lcom/fs/graphics/Object;)V 
L52:    aload_0 
L53:    ldc +3.0f 
L55:    putfield Field com/fs/starfarer/combat/entities/Ship sinceLaunch F 
L58:    aload_0 
L59:    aload_1 
L60:    checkcast com/fs/starfarer/combat/entities/Ship 
L63:    invokevirtual Method com/fs/starfarer/combat/entities/Ship setLaunchingShip (Lcom/fs/starfarer/api/combat/ShipAPI;)V 
L66:    return 
L67:    
    .end code 
.end method 

.method public isFinishedLanding : ()Z 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship isLanding Z 
L4:     ifeq L18 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/entities/Ship sinceLaunch F 
L11:    fconst_0 
L12:    fcmpg 
L13:    ifgt L18 
L16:    iconst_1 
L17:    ireturn 

        .stack same 
L18:    iconst_0 
L19:    ireturn 
L20:    
    .end code 
.end method 

.method public isPullBackFighters : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship isHulk ()Z 
L4:     ifeq L9 
L7:     iconst_0 
L8:     ireturn 

        .stack same 
L9:     aload_0 
L10:    getfield Field com/fs/starfarer/combat/entities/Ship pullBackFighters Z 
L13:    ireturn 
L14:    
    .end code 
.end method 

.method public setPullBackFighters : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship pullBackFighters Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public isHoldFire : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getParentStation ()Lcom/fs/starfarer/combat/entities/Ship; 
L4:     ifnull L28 
L7:     aload_0 
L8:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getParentStation ()Lcom/fs/starfarer/combat/entities/Ship; 
L11:    invokevirtual Method com/fs/starfarer/combat/entities/Ship isHoldFire ()Z 
L14:    ifne L26 
L17:    aload_0 
L18:    getfield Field com/fs/starfarer/combat/entities/Ship holdFire Z 
L21:    ifne L26 
L24:    iconst_0 
L25:    ireturn 

        .stack same 
L26:    iconst_1 
L27:    ireturn 

        .stack same 
L28:    aload_0 
L29:    getfield Field com/fs/starfarer/combat/entities/Ship holdFire Z 
L32:    ireturn 
L33:    
    .end code 
.end method 

.method public setHoldFire : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship holdFire Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public isHoldFireOneFrame : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getParentStation ()Lcom/fs/starfarer/combat/entities/Ship; 
L4:     ifnull L28 
L7:     aload_0 
L8:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getParentStation ()Lcom/fs/starfarer/combat/entities/Ship; 
L11:    invokevirtual Method com/fs/starfarer/combat/entities/Ship isHoldFireOneFrame ()Z 
L14:    ifne L26 
L17:    aload_0 
L18:    getfield Field com/fs/starfarer/combat/entities/Ship holdFireOneFrame Z 
L21:    ifne L26 
L24:    iconst_0 
L25:    ireturn 

        .stack same 
L26:    iconst_1 
L27:    ireturn 

        .stack same 
L28:    aload_0 
L29:    getfield Field com/fs/starfarer/combat/entities/Ship holdFireOneFrame Z 
L32:    ireturn 
L33:    
    .end code 
.end method 

.method public isReplacingFighters : ()Z 
    .code stack 1 locals 3 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship launchBays Ljava/util/List; 
L4:     invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L9:     astore_2 
L10:    goto L32 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Top Object java/util/Iterator 
            stack 
        .end stack 
L13:    aload_2 
L14:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L19:    checkcast com/fs/starfarer/combat/entities/ship/A/C 
L22:    astore_1 
L23:    aload_1 
L24:    invokevirtual Method com/fs/starfarer/combat/entities/ship/A/C isWorking ()Z 
L27:    ifeq L32 
L30:    iconst_1 
L31:    ireturn 

        .stack same 
L32:    aload_2 
L33:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L38:    ifne L13 
L41:    iconst_0 
L42:    ireturn 
L43:    
    .end code 
.end method 

.method public setHoldFireOneFrame : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship holdFireOneFrame Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public getArmorEvaluator : ()Lcom/fs/starfarer/combat/ai/super; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship armorEvaluator Lcom/fs/starfarer/combat/ai/super; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public isLiftingOff : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship isLiftingOffOrLanding Z 
L4:     ifeq L16 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/entities/Ship isLanding Z 
L11:    ifne L16 
L14:    iconst_1 
L15:    ireturn 

        .stack same 
L16:    iconst_0 
L17:    ireturn 
L18:    
    .end code 
.end method 

.method public turnOnTravelDrive : ()V 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     ldc_w +10000.0f 
L4:     invokevirtual Method com/fs/starfarer/combat/entities/Ship turnOnTravelDrive (F)V 
L7:     return 
L8:     
    .end code 
.end method 

.method public turnOnTravelDrive : (F)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getSystem ()Lcom/fs/starfarer/combat/systems/F; 
L4:     ifnull L34 
L7:     aload_0 
L8:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getSystem ()Lcom/fs/starfarer/combat/systems/F; 
L11:    invokevirtual Method com/fs/starfarer/combat/systems/F isActive ()Z 
L14:    ifeq L34 
L17:    aload_0 
L18:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getSystem ()Lcom/fs/starfarer/combat/systems/F; 
L21:    invokevirtual Method com/fs/starfarer/combat/systems/F canBeDeactivated ()Z 
L24:    ifeq L34 
L27:    aload_0 
L28:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getSystem ()Lcom/fs/starfarer/combat/systems/F; 
L31:    invokevirtual Method com/fs/starfarer/combat/systems/F deactivate ()V 

        .stack same 
L34:    aload_0 
L35:    getfield Field com/fs/starfarer/combat/entities/Ship travelDrive Lcom/fs/starfarer/combat/systems/F; 
L38:    ifnull L56 
L41:    aload_0 
L42:    getfield Field com/fs/starfarer/combat/entities/Ship travelDrive Lcom/fs/starfarer/combat/systems/F; 
L45:    invokevirtual Method com/fs/starfarer/combat/systems/F isOn ()Z 
L48:    ifne L56 
L51:    aload_0 
L52:    fload_1 
L53:    putfield Field com/fs/starfarer/combat/entities/Ship remainingDriveDur F 

        .stack same 
L56:    return 
L57:    
    .end code 
.end method 

.method public turnOffTravelDrive : ()V 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     fconst_0 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship remainingDriveDur F 
L5:     return 
L6:     
    .end code 
.end method 

.method public isTravelDriveWasOn : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship travelDriveWasOn Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public setTravelDriveWasOn : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship travelDriveWasOn Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public setTravelDriveDir : (F)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     fload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship travelDriveDir F 
L5:     return 
L6:     
    .end code 
.end method 

.method public isAlly : ()Z 
    .code stack 2 locals 3 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship computedAlly Z 
L4:     ifeq L12 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/entities/Ship isAlly Z 
L11:    ireturn 

        .stack same 
L12:    aload_0 
L13:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getOwner ()I 
L16:    ifeq L21 
L19:    iconst_0 
L20:    ireturn 

        .stack same 
L21:    invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L24:    aload_0 
L25:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getOwner ()I 
L28:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L31:    astore_1 
L32:    aload_1 
L33:    ifnull L72 
L36:    aload_1 
L37:    aload_0 
L38:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getDeployedFleetMember (Lcom/fs/starfarer/combat/entities/Ship;)Lcom/fs/starfarer/combat/CombatFleetManager$O0; 
L41:    astore_2 
L42:    aload_0 
L43:    iconst_1 
L44:    putfield Field com/fs/starfarer/combat/entities/Ship computedAlly Z 
L47:    aload_2 
L48:    ifnull L62 
L51:    aload_0 
L52:    aload_2 
L53:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 isAlly ()Z 
L56:    putfield Field com/fs/starfarer/combat/entities/Ship isAlly Z 
L59:    goto L67 

        .stack append Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/CombatFleetManager$O0 
L62:    aload_0 
L63:    iconst_0 
L64:    putfield Field com/fs/starfarer/combat/entities/Ship isAlly Z 

        .stack same 
L67:    aload_0 
L68:    getfield Field com/fs/starfarer/combat/entities/Ship isAlly Z 
L71:    ireturn 

        .stack chop 1 
L72:    iconst_0 
L73:    ireturn 
L74:    
    .end code 
.end method 

.method public setAlly : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship isAlly Z 
L5:     aload_0 
L6:     iconst_1 
L7:     putfield Field com/fs/starfarer/combat/entities/Ship computedAlly Z 
L10:    return 
L11:    
    .end code 
.end method 

.method public setFleetMember : (Lcom/fs/starfarer/api/fleet/FleetMemberAPI;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship fleetMember Lcom/fs/starfarer/api/fleet/FleetMemberAPI; 
L5:     aload_0 
L6:     aload_1 
L7:     ifnull L14 
L10:    iconst_1 
L11:    goto L15 

        .stack stack_1 Object com/fs/starfarer/combat/entities/Ship 
L14:    iconst_0 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/api/fleet/FleetMemberAPI 
            stack Object com/fs/starfarer/combat/entities/Ship Integer 
        .end stack 
L15:    putfield Field com/fs/starfarer/combat/entities/Ship computedFleetMember Z 
L18:    return 
L19:    
    .end code 
.end method 

.method public getFleetMember : ()Lcom/fs/starfarer/api/fleet/FleetMemberAPI; 
    .code stack 2 locals 3 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship computedFleetMember Z 
L4:     ifeq L12 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/entities/Ship fleetMember Lcom/fs/starfarer/api/fleet/FleetMemberAPI; 
L11:    areturn 

        .stack same 
L12:    invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L15:    aload_0 
L16:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getOwner ()I 
L19:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L22:    astore_1 
L23:    aload_1 
L24:    ifnull L95 
L27:    aload_1 
L28:    aload_0 
L29:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getDeployedFleetMember (Lcom/fs/starfarer/combat/entities/Ship;)Lcom/fs/starfarer/combat/CombatFleetManager$O0; 
L32:    astore_2 
L33:    aload_2 
L34:    ifnull L95 
L37:    aload_0 
L38:    iconst_1 
L39:    putfield Field com/fs/starfarer/combat/entities/Ship computedFleetMember Z 
L42:    aload_0 
L43:    aload_2 
L44:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getMember ()Lcom/fs/starfarer/campaign/fleet/FleetMember; 
L47:    putfield Field com/fs/starfarer/combat/entities/Ship fleetMember Lcom/fs/starfarer/api/fleet/FleetMemberAPI; 
L50:    aload_0 
L51:    getfield Field com/fs/starfarer/combat/entities/Ship fleetMember Lcom/fs/starfarer/api/fleet/FleetMemberAPI; 
L54:    ifnull L95 
L57:    aload_0 
L58:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getOriginalOwner ()I 
L61:    ifne L77 
L64:    aload_0 
L65:    getfield Field com/fs/starfarer/combat/entities/Ship fleetMember Lcom/fs/starfarer/api/fleet/FleetMemberAPI; 
L68:    iconst_0 
L69:    invokeinterface InterfaceMethod com/fs/starfarer/api/fleet/FleetMemberAPI setOwner (I)V 2 
L74:    goto L95 

        .stack append Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/CombatFleetManager$O0 
L77:    aload_0 
L78:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getOriginalOwner ()I 
L81:    iconst_1 
L82:    if_icmpne L95 
L85:    aload_0 
L86:    getfield Field com/fs/starfarer/combat/entities/Ship fleetMember Lcom/fs/starfarer/api/fleet/FleetMemberAPI; 
L89:    iconst_1 
L90:    invokeinterface InterfaceMethod com/fs/starfarer/api/fleet/FleetMemberAPI setOwner (I)V 2 

        .stack chop 1 
L95:    aload_0 
L96:    getfield Field com/fs/starfarer/combat/entities/Ship fleetMember Lcom/fs/starfarer/api/fleet/FleetMemberAPI; 
L99:    areturn 
L100:   
    .end code 
.end method 

.method public getParentStationFleetMemberIfPossible : ()Lcom/fs/starfarer/api/fleet/FleetMemberAPI; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getParentStation ()Lcom/fs/starfarer/combat/entities/Ship; 
L4:     ifnull L15 
L7:     aload_0 
L8:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getParentStation ()Lcom/fs/starfarer/combat/entities/Ship; 
L11:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getFleetMember ()Lcom/fs/starfarer/api/fleet/FleetMemberAPI; 
L14:    areturn 

        .stack same 
L15:    aload_0 
L16:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getFleetMember ()Lcom/fs/starfarer/api/fleet/FleetMemberAPI; 
L19:    areturn 
L20:    
    .end code 
.end method 

.method public saveVelAndAngVel : ()V 
    .code stack 4 locals 1 
L0:     aload_0 
L1:     new org/lwjgl/util/vector/Vector2f 
L4:     dup 
L5:     aload_0 
L6:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 
L9:     invokespecial Method org/lwjgl/util/vector/Vector2f <init> (Lorg/lwjgl/util/vector/ReadableVector2f;)V 
L12:    putfield Field com/fs/starfarer/combat/entities/Ship savedVel Lorg/lwjgl/util/vector/Vector2f; 
L15:    aload_0 
L16:    aload_0 
L17:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getAngularVelocity ()F 
L20:    putfield Field com/fs/starfarer/combat/entities/Ship savedAngVel F 
L23:    return 
L24:    
    .end code 
.end method 

.method public restoreVelAndAngVel : ()V 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship savedVel Lorg/lwjgl/util/vector/Vector2f; 
L4:     ifnull L19 
L7:     aload_0 
L8:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 
L11:    aload_0 
L12:    getfield Field com/fs/starfarer/combat/entities/Ship savedVel Lorg/lwjgl/util/vector/Vector2f; 
L15:    invokevirtual Method org/lwjgl/util/vector/Vector2f set (Lorg/lwjgl/util/vector/ReadableVector2f;)Lorg/lwjgl/util/vector/Vector2f; 
L18:    pop 

        .stack same 
L19:    aload_0 
L20:    aload_0 
L21:    getfield Field com/fs/starfarer/combat/entities/Ship savedAngVel F 
L24:    invokevirtual Method com/fs/starfarer/combat/entities/Ship setAngularVelocity (F)V 
L27:    return 
L28:    
    .end code 
.end method 

.method public adjustVelAndAngVelForTimeMult : ()V 
    .code stack 3 locals 2 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getStats ()Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L4:     invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getTimeMult ()Lcom/fs/starfarer/api/combat/MutableStat; 
L7:     invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L10:    fstore_1 
L11:    aload_0 
L12:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 
L15:    fload_1 
L16:    invokevirtual Method org/lwjgl/util/vector/Vector2f scale (F)Lorg/lwjgl/util/vector/Vector; 
L19:    pop 
L20:    aload_0 
L21:    aload_0 
L22:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getAngularVelocity ()F 
L25:    fload_1 
L26:    fmul 
L27:    invokevirtual Method com/fs/starfarer/combat/entities/Ship setAngularVelocity (F)V 
L30:    return 
L31:    
    .end code 
.end method 

.method public getCommands : ()Ljava/util/List; 
    .signature ()Ljava/util/List<Lcom/fs/starfarer/combat/entities/Ship$Oo;>; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship commands Ljava/util/List; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public areSignificantEnemiesInRange : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship significantEnemiesInRange Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public setSignificantEnemiesInRange : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship significantEnemiesInRange Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public areAnyEnemiesInRange : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship anyEnemiesInRange Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public setAnyEnemiesInRange : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship anyEnemiesInRange Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public getFixedLocation : ()Lorg/lwjgl/util/vector/Vector2f; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship fixedLocation Lorg/lwjgl/util/vector/Vector2f; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public setFixedLocation : (Lorg/lwjgl/util/vector/Vector2f;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship fixedLocation Lorg/lwjgl/util/vector/Vector2f; 
L5:     return 
L6:     
    .end code 
.end method 

.method public getForceCarrierTargetTime : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship forceCarrierTargetTime F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method public setForceCarrierTargetTime : (F)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     fload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship forceCarrierTargetTime F 
L5:     return 
L6:     
    .end code 
.end method 

.method public getForceCarrierPullBackTime : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship forceCarrierPullBackTime F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method public setForceCarrierPullBackTime : (F)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     fload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship forceCarrierPullBackTime F 
L5:     return 
L6:     
    .end code 
.end method 

.method public getForceCarrierTarget : ()Lcom/fs/starfarer/api/combat/ShipAPI; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship forceCarrierTarget Lcom/fs/starfarer/api/combat/ShipAPI; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public setForceCarrierTarget : (Lcom/fs/starfarer/api/combat/ShipAPI;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship forceCarrierTarget Lcom/fs/starfarer/api/combat/ShipAPI; 
L5:     return 
L6:     
    .end code 
.end method 

.method public advance : (F)V 
    .code stack 8 locals 23 
L0:     aload_0 
L1:     dup 
L2:     getfield Field com/fs/starfarer/combat/entities/Ship forceCarrierTargetTime F 
L5:     fload_1 
L6:     fsub 
L7:     putfield Field com/fs/starfarer/combat/entities/Ship forceCarrierTargetTime F 
L10:    aload_0 
L11:    dup 
L12:    getfield Field com/fs/starfarer/combat/entities/Ship forceCarrierPullBackTime F 
L15:    fload_1 
L16:    fsub 
L17:    putfield Field com/fs/starfarer/combat/entities/Ship forceCarrierPullBackTime F 
L20:    aload_0 
L21:    getfield Field com/fs/starfarer/combat/entities/Ship forceCarrierTargetTime F 
L24:    fconst_0 
L25:    fcmpg 
L26:    ifgt L34 
L29:    aload_0 
L30:    aconst_null 
L31:    putfield Field com/fs/starfarer/combat/entities/Ship forceCarrierTarget Lcom/fs/starfarer/api/combat/ShipAPI; 

        .stack same 
L34:    aload_0 
L35:    invokevirtual Method com/fs/starfarer/combat/entities/Ship isHulk ()Z 
L38:    ifeq L207 
L41:    fload_1 
L42:    fconst_0 
L43:    fcmpl 
L44:    ifle L207 
L47:    aload_0 
L48:    getfield Field com/fs/starfarer/combat/entities/Ship hulkFader Lcom/fs/graphics/util/Fader; 
L51:    invokevirtual Method com/fs/graphics/util/Fader isFadingOut ()Z 
L54:    ifne L207 
L57:    aload_0 
L58:    invokevirtual Method com/fs/starfarer/combat/entities/Ship isFighter ()Z 
L61:    ifne L207 
L64:    aload_0 
L65:    invokevirtual Method com/fs/starfarer/combat/entities/Ship isStation ()Z 
L68:    ifne L207 
L71:    aload_0 
L72:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getStationSlot ()Lcom/fs/starfarer/loading/specs/nullsuper; 
L75:    ifnonnull L207 
L78:    aload_0 
L79:    invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L82:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L85:    if_acmpeq L207 
L88:    invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L91:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getViewport ()Lcom/fs/starfarer/combat/CombatViewport; 
L94:    astore_2 
L95:    aload_2 
L96:    ifnull L122 
L99:    aload_2 
L100:   aload_0 
L101:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L104:   aload_0 
L105:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getCollisionRadius ()F 
L108:   ldc_w +500.0f 
L111:   fadd 
L112:   invokevirtual Method com/fs/starfarer/combat/CombatViewport isNearViewport (Lorg/lwjgl/util/vector/Vector2f;F)Z 
L115:   ifeq L122 
L118:   iconst_1 
L119:   goto L123 

        .stack append Object com/fs/starfarer/combat/CombatViewport 
L122:   iconst_0 

        .stack stack_1 Integer 
L123:   istore_3 
L124:   iload_3 
L125:   ifeq L136 
L128:   aload_0 
L129:   fconst_0 
L130:   putfield Field com/fs/starfarer/combat/entities/Ship sinceVisible F 
L133:   goto L146 

        .stack append Integer 
L136:   aload_0 
L137:   dup 
L138:   getfield Field com/fs/starfarer/combat/entities/Ship sinceVisible F 
L141:   fload_1 
L142:   fadd 
L143:   putfield Field com/fs/starfarer/combat/entities/Ship sinceVisible F 

        .stack same 
L146:   invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L149:   iconst_0 
L150:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getFogOfWar (I)Lcom/fs/starfarer/combat/new/T; 
L153:   astore 4 
L155:   aload 4 
L157:   ifnull L207 
L160:   iload_3 
L161:   ifne L207 
L164:   aload_0 
L165:   getfield Field com/fs/starfarer/combat/entities/Ship sinceVisible F 
L168:   ldc_w +30.0f 
L171:   fcmpl 
L172:   ifle L207 
L175:   aload_0 
L176:   getfield Field com/fs/starfarer/combat/entities/Ship sinceLastDamageTaken F 
L179:   ldc_w +60.0f 
L182:   fcmpl 
L183:   ifgt L195 
L186:   aload 4 
L188:   aload_0 
L189:   invokevirtual Method com/fs/starfarer/combat/new/T isVisible (Lcom/fs/starfarer/api/combat/CombatEntityAPI;)Z 
L192:   ifne L207 

        .stack append Object com/fs/starfarer/combat/new/T 
L195:   aload_0 
L196:   fconst_0 
L197:   putfield Field com/fs/starfarer/combat/entities/Ship timeBeforeFade F 
L200:   aload_0 
L201:   getfield Field com/fs/starfarer/combat/entities/Ship hulkFader Lcom/fs/graphics/util/Fader; 
L204:   invokevirtual Method com/fs/graphics/util/Fader fadeOut ()V 

        .stack chop 3 
L207:   aload_0 
L208:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getListenerManager ()Lcom/fs/starfarer/api/combat/listeners/CombatListenerManagerAPI; 
L211:   ifnull L272 
L214:   fload_1 
L215:   fconst_0 
L216:   fcmpl 
L217:   ifle L272 
L220:   new java/util/ArrayList 
L223:   dup 
L224:   aload_0 
L225:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getListenerManager ()Lcom/fs/starfarer/api/combat/listeners/CombatListenerManagerAPI; 
L228:   ldc_w Class com/fs/starfarer/api/combat/listeners/AdvanceableListener 
L231:   invokeinterface InterfaceMethod com/fs/starfarer/api/combat/listeners/CombatListenerManagerAPI getListeners (Ljava/lang/Class;)Ljava/util/List; 2 
L236:   invokespecial Method java/util/ArrayList <init> (Ljava/util/Collection;)V 
L239:   invokevirtual Method java/util/ArrayList iterator ()Ljava/util/Iterator; 
L242:   astore_3 
L243:   goto L263 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Top Object java/util/Iterator 
            stack 
        .end stack 
L246:   aload_3 
L247:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L252:   checkcast com/fs/starfarer/api/combat/listeners/AdvanceableListener 
L255:   astore_2 
L256:   aload_2 
L257:   fload_1 
L258:   invokeinterface InterfaceMethod com/fs/starfarer/api/combat/listeners/AdvanceableListener advance (F)V 2 

        .stack same 
L263:   aload_3 
L264:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L269:   ifne L246 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float 
            stack 
        .end stack 
L272:   ldc_w 'Ship.advance()' 
L275:   invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
        .catch [0] from L278 to L1366 using L5768 
L278:   aload_0 
L279:   invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L282:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L285:   if_acmpne L309 
L288:   aload_0 
L289:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getAI ()Lcom/fs/starfarer/combat/ai/AI; 
L292:   ifnonnull L309 
L295:   aload_0 
L296:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getAIFlags ()Lcom/fs/starfarer/api/combat/ShipwideAIFlags; 
L299:   astore_2 
L300:   aload_2 
L301:   ifnull L309 
L304:   aload_2 
L305:   fload_1 
L306:   invokevirtual Method com/fs/starfarer/api/combat/ShipwideAIFlags advance (F)V 

        .stack same 
L309:   aload_0 
L310:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullLevel ()F 
L313:   aload_0 
L314:   getfield Field com/fs/starfarer/combat/entities/Ship lowestHullLevelReached F 
L317:   fcmpg 
L318:   ifge L329 
L321:   aload_0 
L322:   aload_0 
L323:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullLevel ()F 
L326:   putfield Field com/fs/starfarer/combat/entities/Ship lowestHullLevelReached F 

        .stack same 
L329:   aload_0 
L330:   getfield Field com/fs/starfarer/combat/entities/Ship weaponsToRemove Ljava/util/List; 
L333:   invokeinterface InterfaceMethod java/util/List isEmpty ()Z 1 
L338:   ifne L387 
L341:   aload_0 
L342:   getfield Field com/fs/starfarer/combat/entities/Ship weaponsToRemove Ljava/util/List; 
L345:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L350:   astore_3 
L351:   goto L369 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Top Object java/util/Iterator 
            stack 
        .end stack 
L354:   aload_3 
L355:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L360:   checkcast com/fs/starfarer/api/combat/WeaponAPI 
L363:   astore_2 
L364:   aload_0 
L365:   aload_2 
L366:   invokevirtual Method com/fs/starfarer/combat/entities/Ship removeWeaponFromGroupsReal (Lcom/fs/starfarer/api/combat/WeaponAPI;)V 

        .stack same 
L369:   aload_3 
L370:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L375:   ifne L354 
L378:   aload_0 
L379:   getfield Field com/fs/starfarer/combat/entities/Ship weaponsToRemove Ljava/util/List; 
L382:   invokeinterface InterfaceMethod java/util/List clear ()V 1 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float 
            stack 
        .end stack 
L387:   aload_0 
L388:   getfield Field com/fs/starfarer/combat/entities/Ship travelDrive Lcom/fs/starfarer/combat/systems/F; 
L391:   ifnull L923 
L394:   aload_0 
L395:   getfield Field com/fs/starfarer/combat/entities/Ship system Lcom/fs/starfarer/combat/systems/F; 
L398:   ifnull L418 
L401:   aload_0 
L402:   getfield Field com/fs/starfarer/combat/entities/Ship system Lcom/fs/starfarer/combat/systems/F; 
L405:   invokevirtual Method com/fs/starfarer/combat/systems/F getSpec ()Lcom/fs/starfarer/loading/specs/do; 
L408:   invokevirtual Method com/fs/starfarer/loading/specs/do affectsEngineFlameVisuals ()Z 
L411:   ifeq L418 
L414:   iconst_1 
L415:   goto L419 

        .stack same 
L418:   iconst_0 

        .stack stack_1 Integer 
L419:   istore_2 
L420:   aload_0 
L421:   getfield Field com/fs/starfarer/combat/entities/Ship remainingDriveDur F 
L424:   fconst_0 
L425:   fcmpl 
L426:   ifle L440 
L429:   iload_2 
L430:   ifeq L440 
L433:   aload_0 
L434:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'Õ00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L437:   invokevirtual Method com/fs/starfarer/combat/entities/Ship blockCommandForOneFrame (Lcom/fs/starfarer/combat/entities/Ship$oo;)V 

        .stack append Integer 
L440:   aload_0 
L441:   getfield Field com/fs/starfarer/combat/entities/Ship travelDrive Lcom/fs/starfarer/combat/systems/F; 
L444:   invokevirtual Method com/fs/starfarer/combat/systems/F isActive ()Z 
L447:   ifeq L457 
L450:   aload_0 
L451:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'Õ00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L454:   invokevirtual Method com/fs/starfarer/combat/entities/Ship blockCommandForOneFrame (Lcom/fs/starfarer/combat/entities/Ship$oo;)V 

        .stack same 
L457:   aload_0 
L458:   getfield Field com/fs/starfarer/combat/entities/Ship travelDrive Lcom/fs/starfarer/combat/systems/F; 
L461:   invokevirtual Method com/fs/starfarer/combat/systems/F isOn ()Z 
L464:   istore_3 
L465:   iload_3 
L466:   ifeq L842 
L469:   aload_0 
L470:   dup 
L471:   getfield Field com/fs/starfarer/combat/entities/Ship remainingDriveDur F 
L474:   fload_1 
L475:   fsub 
L476:   putfield Field com/fs/starfarer/combat/entities/Ship remainingDriveDur F 
L479:   aload_0 
L480:   getfield Field com/fs/starfarer/combat/entities/Ship travelDriveCollisionTestTracker Lcom/fs/starfarer/util/IntervalTracker; 
L483:   fload_1 
L484:   invokevirtual Method com/fs/starfarer/util/IntervalTracker advance (F)V 
L487:   aload_0 
L488:   getfield Field com/fs/starfarer/combat/entities/Ship travelDriveCollisionTestTracker Lcom/fs/starfarer/util/IntervalTracker; 
L491:   invokevirtual Method com/fs/starfarer/util/IntervalTracker intervalElapsed ()Z 
L494:   ifeq L756 
L497:   aload_0 
L498:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isFighter ()Z 
L501:   ifne L756 
L504:   aload_0 
L505:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isRetreating ()Z 
L508:   ifne L756 
L511:   new com/fs/starfarer/combat/ai/collisions/CollisionAnalysisModule 
L514:   dup 
L515:   aload_0 
L516:   aconst_null 
L517:   invokespecial Method com/fs/starfarer/combat/ai/collisions/CollisionAnalysisModule <init> (Lcom/fs/starfarer/combat/entities/Ship;Lcom/fs/starfarer/combat/ai/movement/maneuvers/M$o;)V 
L520:   astore 4 
L522:   aload 4 
L524:   iconst_1 
L525:   invokevirtual Method com/fs/starfarer/combat/ai/collisions/CollisionAnalysisModule o00000 (Z)V 
L528:   invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L531:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getObjects ()Lcom/fs/util/container/repo/ObjectRepository; 
L534:   ldc_w Class com/fs/starfarer/combat/entities/terrain/Asteroid 
L537:   invokevirtual Method com/fs/util/container/repo/ObjectRepository getList (Ljava/lang/Class;)Ljava/util/List; 
L540:   astore 5 
L542:   aload_0 
L543:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L546:   astore 6 
L548:   aload 5 
L550:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L555:   astore 8 
L557:   goto L643 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Integer Integer Object com/fs/starfarer/combat/ai/collisions/CollisionAnalysisModule Object java/util/List Object org/lwjgl/util/vector/Vector2f Top Object java/util/Iterator 
            stack 
        .end stack 
L560:   aload 8 
L562:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L567:   checkcast com/fs/starfarer/combat/entities/terrain/Asteroid 
L570:   astore 7 
L572:   aload 7 
L574:   invokevirtual Method com/fs/starfarer/combat/entities/terrain/Asteroid isFromRing ()Z 
L577:   ifeq L583 
L580:   goto L643 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Integer Integer Object com/fs/starfarer/combat/ai/collisions/CollisionAnalysisModule Object java/util/List Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/entities/terrain/Asteroid Object java/util/Iterator 
            stack 
        .end stack 
L583:   aload 6 
L585:   aload 7 
L587:   invokevirtual Method com/fs/starfarer/combat/entities/terrain/Asteroid getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L590:   invokestatic Method com/fs/starfarer/prototype/Utils 'Ø00000' (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)F 
L593:   fstore 9 
L595:   fload 9 
L597:   ldc_w +1000.0f 
L600:   fcmpl 
L601:   ifle L607 
L604:   goto L643 

        .stack append Float 
L607:   aload 7 
L609:   invokevirtual Method com/fs/starfarer/combat/entities/terrain/Asteroid getMass ()F 
L612:   ldc_w +5.0f 
L615:   fmul 
L616:   aload_0 
L617:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getMass ()F 
L620:   fcmpl 
L621:   ifge L635 
L624:   aload_0 
L625:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getHitpoints ()F 
L628:   ldc_w +100.0f 
L631:   fcmpg 
L632:   ifge L643 

        .stack same 
L635:   aload 4 
L637:   aload 7 
L639:   iconst_1 
L640:   invokevirtual Method com/fs/starfarer/combat/ai/collisions/CollisionAnalysisModule o00000 (Lcom/fs/starfarer/combat/entities/terrain/Asteroid;Z)V 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Integer Integer Object com/fs/starfarer/combat/ai/collisions/CollisionAnalysisModule Object java/util/List Object org/lwjgl/util/vector/Vector2f Top Object java/util/Iterator 
            stack 
        .end stack 
L643:   aload 8 
L645:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L650:   ifne L560 
L653:   invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L656:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getObjects ()Lcom/fs/util/container/repo/ObjectRepository; 
L659:   ldc Class com/fs/starfarer/combat/entities/Ship 
L661:   invokevirtual Method com/fs/util/container/repo/ObjectRepository getList (Ljava/lang/Class;)Ljava/util/List; 
L664:   astore 7 
L666:   aload 7 
L668:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L673:   astore 9 
L675:   goto L733 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Integer Integer Object com/fs/starfarer/combat/ai/collisions/CollisionAnalysisModule Object java/util/List Object org/lwjgl/util/vector/Vector2f Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L678:   aload 9 
L680:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L685:   checkcast com/fs/starfarer/combat/entities/Ship 
L688:   astore 8 
L690:   aload 8 
L692:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isFighter ()Z 
L695:   ifeq L701 
L698:   goto L733 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Integer Integer Object com/fs/starfarer/combat/ai/collisions/CollisionAnalysisModule Object java/util/List Object org/lwjgl/util/vector/Vector2f Object java/util/List Object com/fs/starfarer/combat/entities/Ship Object java/util/Iterator 
            stack 
        .end stack 
L701:   aload 6 
L703:   aload 8 
L705:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L708:   invokestatic Method com/fs/starfarer/prototype/Utils 'Ø00000' (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)F 
L711:   fstore 10 
L713:   fload 10 
L715:   ldc_w +1500.0f 
L718:   fcmpl 
L719:   ifle L725 
L722:   goto L733 

        .stack append Float 
L725:   aload 4 
L727:   aload 8 
L729:   iconst_1 
L730:   invokevirtual Method com/fs/starfarer/combat/ai/collisions/CollisionAnalysisModule o00000 (Lcom/fs/starfarer/combat/entities/Ship;Z)V 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Integer Integer Object [c2434] Object java/util/List Object org/lwjgl/util/vector/Vector2f Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L733:   aload 9 
L735:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L740:   ifne L678 
L743:   aload 4 
L745:   invokevirtual Method [c2434] null ()Z 
L748:   ifeq L756 
L751:   aload_0 
L752:   fconst_0 
L753:   putfield Field com/fs/starfarer/combat/entities/Ship remainingDriveDur F 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Integer Integer 
            stack 
        .end stack 
L756:   aload_0 
L757:   getfield Field com/fs/starfarer/combat/entities/Ship remainingDriveDur F 
L760:   fconst_0 
L761:   fcmpg 
L762:   ifgt L791 
L765:   aload_0 
L766:   getfield Field com/fs/starfarer/combat/entities/Ship travelDrive Lcom/fs/starfarer/combat/systems/F; 
L769:   aconst_null 
L770:   invokevirtual Method com/fs/starfarer/combat/systems/F fire (Lorg/lwjgl/util/vector/Vector2f;)V 
L773:   aload_0 
L774:   getfield Field com/fs/starfarer/combat/entities/Ship travelDrive Lcom/fs/starfarer/combat/systems/F; 
L777:   fconst_0 
L778:   invokevirtual Method com/fs/starfarer/combat/systems/F advance (F)V 
L781:   aload_0 
L782:   fconst_0 
L783:   putfield Field com/fs/starfarer/combat/entities/Ship remainingDriveDur F 
L786:   iconst_0 
L787:   istore_3 
L788:   goto L798 

        .stack same 
L791:   aload_0 
L792:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'Õ00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L795:   invokevirtual Method com/fs/starfarer/combat/entities/Ship blockCommandForOneFrame (Lcom/fs/starfarer/combat/entities/Ship$oo;)V 

        .stack same 
L798:   iload_3 
L799:   ifeq L899 
L802:   aload_0 
L803:   getfield Field com/fs/starfarer/combat/entities/Ship engineController Lcom/fs/starfarer/combat/entities/ship/null; 
L806:   invokevirtual Method com/fs/starfarer/combat/entities/ship/null isDisabled ()Z 
L809:   ifne L822 
L812:   aload_0 
L813:   getfield Field com/fs/starfarer/combat/entities/Ship engineController Lcom/fs/starfarer/combat/entities/ship/null; 
L816:   invokevirtual Method com/fs/starfarer/combat/entities/ship/null isFlamingOut ()Z 
L819:   ifeq L899 

        .stack same 
L822:   aload_0 
L823:   getfield Field com/fs/starfarer/combat/entities/Ship travelDrive Lcom/fs/starfarer/combat/systems/F; 
L826:   invokevirtual Method com/fs/starfarer/combat/systems/F getChargeTracker ()Lcom/fs/starfarer/combat/systems/super; 
L829:   invokevirtual Method com/fs/starfarer/combat/systems/super new ()V 
L832:   aload_0 
L833:   fconst_0 
L834:   putfield Field com/fs/starfarer/combat/entities/Ship remainingDriveDur F 
L837:   iconst_0 
L838:   istore_3 
L839:   goto L899 

        .stack same 
L842:   iload_3 
L843:   ifne L899 
L846:   iload_2 
L847:   ifeq L860 
L850:   aload_0 
L851:   getfield Field com/fs/starfarer/combat/entities/Ship system Lcom/fs/starfarer/combat/systems/F; 
L854:   invokevirtual Method com/fs/starfarer/combat/systems/F isActive ()Z 
L857:   ifne L899 

        .stack same 
L860:   aload_0 
L861:   getfield Field com/fs/starfarer/combat/entities/Ship remainingDriveDur F 
L864:   fconst_0 
L865:   fcmpl 
L866:   ifle L899 
L869:   aload_0 
L870:   getfield Field com/fs/starfarer/combat/entities/Ship engineController Lcom/fs/starfarer/combat/entities/ship/null; 
L873:   invokevirtual Method com/fs/starfarer/combat/entities/ship/null isDisabled ()Z 
L876:   ifne L899 
L879:   aload_0 
L880:   getfield Field com/fs/starfarer/combat/entities/Ship engineController Lcom/fs/starfarer/combat/entities/ship/null; 
L883:   invokevirtual Method com/fs/starfarer/combat/entities/ship/null isFlamingOut ()Z 
L886:   ifne L899 
L889:   aload_0 
L890:   getfield Field com/fs/starfarer/combat/entities/Ship travelDrive Lcom/fs/starfarer/combat/systems/F; 
L893:   aconst_null 
L894:   invokevirtual Method com/fs/starfarer/combat/systems/F fire (Lorg/lwjgl/util/vector/Vector2f;)V 
L897:   iconst_1 
L898:   istore_3 

        .stack same 
L899:   iload_3 
L900:   ifeq L918 
L903:   aload_0 
L904:   getfield Field com/fs/starfarer/combat/entities/Ship travelDriveWasOn Z 
L907:   ifne L918 
L910:   aload_0 
L911:   aload_0 
L912:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getFacing ()F 
L915:   putfield Field com/fs/starfarer/combat/entities/Ship travelDriveDir F 

        .stack same 
L918:   aload_0 
L919:   iload_3 
L920:   putfield Field com/fs/starfarer/combat/entities/Ship travelDriveWasOn Z 

        .stack chop 2 
L923:   aload_0 
L924:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isFighter ()Z 
L927:   ifeq L937 
L930:   aload_0 
L931:   getfield Field com/fs/starfarer/combat/entities/Ship shield Lcom/fs/starfarer/combat/systems/G; 
L934:   ifnull L945 

        .stack same 
L937:   aload_0 
L938:   getfield Field com/fs/starfarer/combat/entities/Ship armorEvaluator Lcom/fs/starfarer/combat/ai/super; 
L941:   fload_1 
L942:   invokevirtual Method com/fs/starfarer/combat/ai/super o00000 (F)V 

        .stack same 
L945:   aload_0 
L946:   dup 
L947:   getfield Field com/fs/starfarer/combat/entities/Ship sinceDamagedByPlayer F 
L950:   fload_1 
L951:   fadd 
L952:   putfield Field com/fs/starfarer/combat/entities/Ship sinceDamagedByPlayer F 
L955:   aload_0 
L956:   dup 
L957:   getfield Field com/fs/starfarer/combat/entities/Ship sinceLastDamageTaken F 
L960:   fload_1 
L961:   fadd 
L962:   putfield Field com/fs/starfarer/combat/entities/Ship sinceLastDamageTaken F 
L965:   aload_0 
L966:   dup 
L967:   getfield Field com/fs/starfarer/combat/entities/Ship sinceLastShieldDamageTaken F 
L970:   fload_1 
L971:   fadd 
L972:   putfield Field com/fs/starfarer/combat/entities/Ship sinceLastShieldDamageTaken F 
L975:   aload_0 
L976:   dup 
L977:   getfield Field com/fs/starfarer/combat/entities/Ship elapsedSinceRaiseShieldsWhileOverloaded F 
L980:   fload_1 
L981:   fadd 
L982:   putfield Field com/fs/starfarer/combat/entities/Ship elapsedSinceRaiseShieldsWhileOverloaded F 
L985:   aload_0 
L986:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getFluxTracker ()Lcom/fs/starfarer/combat/entities/ship/D; 
L989:   invokevirtual Method com/fs/starfarer/combat/entities/ship/D isOverloadedOrVenting ()Z 
L992:   ifne L1106 
L995:   aload_0 
L996:   invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L999:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L1002:  if_acmpne L1106 
L1005:  aload_0 
L1006:  getfield Field com/fs/starfarer/combat/entities/Ship elapsedSinceRaiseShieldsWhileOverloaded F 
L1009:  getstatic Field com/fs/starfarer/combat/entities/Ship INPUT_BUFFER_DELAY F 
L1012:  fcmpg 
L1013:  ifge L1106 
L1016:  aload_0 
L1017:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isShieldOn ()Z 
L1020:  ifne L1106 
L1023:  iconst_0 
L1024:  istore_2 
L1025:  aload_0 
L1026:  getfield Field com/fs/starfarer/combat/entities/Ship commands Ljava/util/List; 
L1029:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L1034:  astore_3 
L1035:  goto L1065 

        .stack append Integer Object java/util/Iterator 
L1038:  aload_3 
L1039:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L1044:  checkcast com/fs/starfarer/combat/entities/Ship$Oo 
L1047:  astore 4 
L1049:  aload 4 
L1051:  getfield Field com/fs/starfarer/combat/entities/Ship$Oo 'Ò00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L1054:  getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'ØO0000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L1057:  if_acmpne L1065 
L1060:  iconst_1 
L1061:  istore_2 
L1062:  goto L1074 

        .stack same 
L1065:  aload_3 
L1066:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L1071:  ifne L1038 

        .stack same 
L1074:  iload_2 
L1075:  ifne L1099 
L1078:  aload_0 
L1079:  getfield Field com/fs/starfarer/combat/entities/Ship commands Ljava/util/List; 
L1082:  new com/fs/starfarer/combat/entities/Ship$Oo 
L1085:  dup 
L1086:  getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'ØO0000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L1089:  aconst_null 
L1090:  invokespecial Method com/fs/starfarer/combat/entities/Ship$Oo <init> (Lcom/fs/starfarer/combat/entities/Ship$oo;Ljava/lang/Object;)V 
L1093:  invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L1098:  pop 

        .stack same 
L1099:  aload_0 
L1100:  ldc_w +1000.0f 
L1103:  putfield Field com/fs/starfarer/combat/entities/Ship elapsedSinceRaiseShieldsWhileOverloaded F 

        .stack chop 2 
L1106:  aload_0 
L1107:  getfield Field com/fs/starfarer/combat/entities/Ship isHulk Z 
L1110:  ifeq L1202 
L1113:  aload_0 
L1114:  getfield Field com/fs/starfarer/combat/entities/Ship commands Ljava/util/List; 
L1117:  invokeinterface InterfaceMethod java/util/List clear ()V 1 
L1122:  aload_0 
L1123:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getMouseTarget ()Lorg/lwjgl/util/vector/Vector2f; 
L1126:  aload_0 
L1127:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L1130:  invokevirtual Method org/lwjgl/util/vector/Vector2f set (Lorg/lwjgl/util/vector/ReadableVector2f;)Lorg/lwjgl/util/vector/Vector2f; 
L1133:  pop 
L1134:  aload_0 
L1135:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isFighter ()Z 
L1138:  ifne L1151 
L1141:  aload_0 
L1142:  getfield Field com/fs/starfarer/combat/entities/Ship hulkFader Lcom/fs/graphics/util/Fader; 
L1145:  invokevirtual Method com/fs/graphics/util/Fader isFadingOut ()Z 
L1148:  ifeq L1202 

        .stack same 
L1151:  fload_1 
L1152:  fconst_0 
L1153:  fcmpl 
L1154:  ifle L1202 
L1157:  aload_0 
L1158:  dup 
L1159:  getfield Field com/fs/starfarer/combat/entities/Ship timeBeforeFade F 
L1162:  fload_1 
L1163:  fsub 
L1164:  putfield Field com/fs/starfarer/combat/entities/Ship timeBeforeFade F 
L1167:  aload_0 
L1168:  getfield Field com/fs/starfarer/combat/entities/Ship timeBeforeFade F 
L1171:  fconst_0 
L1172:  fcmpg 
L1173:  ifgt L1202 
L1176:  aload_0 
L1177:  getfield Field com/fs/starfarer/combat/entities/Ship hulkFader Lcom/fs/graphics/util/Fader; 
L1180:  invokevirtual Method com/fs/graphics/util/Fader fadeOut ()V 
L1183:  aload_0 
L1184:  getfield Field com/fs/starfarer/combat/entities/Ship hulkFader Lcom/fs/graphics/util/Fader; 
L1187:  fload_1 
L1188:  invokevirtual Method com/fs/graphics/util/Fader advance (F)V 
L1191:  aload_0 
L1192:  aload_0 
L1193:  getfield Field com/fs/starfarer/combat/entities/Ship hulkFader Lcom/fs/graphics/util/Fader; 
L1196:  invokevirtual Method com/fs/graphics/util/Fader getBrightness ()F 
L1199:  invokevirtual Method com/fs/starfarer/combat/entities/Ship setAlphaMult (F)V 

        .stack same 
L1202:  aload_0 
L1203:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isSelectableInWarroom ()Z 
L1206:  ifne L1219 
L1209:  aload_0 
L1210:  getfield Field com/fs/starfarer/combat/entities/Ship ffInd Lcom/fs/starfarer/renderers/OOoO; 
L1213:  invokevirtual Method com/fs/starfarer/renderers/OOoO class ()Lcom/fs/graphics/util/Fader; 
L1216:  invokevirtual Method com/fs/graphics/util/Fader fadeOut ()V 

        .stack same 
L1219:  aload_0 
L1220:  getfield Field com/fs/starfarer/combat/entities/Ship ffInd Lcom/fs/starfarer/renderers/OOoO; 
L1223:  fload_1 
L1224:  aload_0 
L1225:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getOwner ()I 
L1228:  aload_0 
L1229:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isAlly ()Z 
L1232:  invokevirtual Method com/fs/starfarer/renderers/OOoO o00000 (FIZ)V 
L1235:  aload_0 
L1236:  getfield Field com/fs/starfarer/combat/entities/Ship isLanding Z 
L1239:  ifeq L1270 
L1242:  aload_0 
L1243:  getfield Field com/fs/starfarer/combat/entities/Ship launchingShip Lcom/fs/starfarer/combat/entities/Ship; 
L1246:  ifnull L1266 
L1249:  aload_0 
L1250:  getfield Field com/fs/starfarer/combat/entities/Ship launchingShip Lcom/fs/starfarer/combat/entities/Ship; 
L1253:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isAlive ()Z 
L1256:  ifne L1270 
L1259:  aload_0 
L1260:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isShuttlePod ()Z 
L1263:  ifne L1270 

        .stack same 
L1266:  aload_0 
L1267:  invokevirtual Method com/fs/starfarer/combat/entities/Ship abortLanding ()V 

        .stack same 
L1270:  aload_0 
L1271:  getfield Field com/fs/starfarer/combat/entities/Ship isLanding Z 
L1274:  ifne L1290 
L1277:  aload_0 
L1278:  dup 
L1279:  getfield Field com/fs/starfarer/combat/entities/Ship sinceLaunch F 
L1282:  fload_1 
L1283:  fadd 
L1284:  putfield Field com/fs/starfarer/combat/entities/Ship sinceLaunch F 
L1287:  goto L1314 

        .stack same 
L1290:  aload_0 
L1291:  dup 
L1292:  getfield Field com/fs/starfarer/combat/entities/Ship sinceLaunch F 
L1295:  fload_1 
L1296:  fsub 
L1297:  putfield Field com/fs/starfarer/combat/entities/Ship sinceLaunch F 
L1300:  aload_0 
L1301:  getfield Field com/fs/starfarer/combat/entities/Ship sinceLaunch F 
L1304:  fconst_0 
L1305:  fcmpg 
L1306:  ifgt L1314 
L1309:  aload_0 
L1310:  fconst_0 
L1311:  putfield Field com/fs/starfarer/combat/entities/Ship sinceLaunch F 

        .stack same 
L1314:  aload_0 
L1315:  getfield Field com/fs/starfarer/combat/entities/Ship isAnimatedLaunch Z 
L1318:  ifeq L1338 
L1321:  aload_0 
L1322:  getfield Field com/fs/starfarer/combat/entities/Ship sinceLaunch F 
L1325:  fconst_1 
L1326:  fcmpg 
L1327:  ifgt L1338 
L1330:  aload_0 
L1331:  iconst_1 
L1332:  putfield Field com/fs/starfarer/combat/entities/Ship isLiftingOffOrLanding Z 
L1335:  goto L1343 

        .stack same 
L1338:  aload_0 
L1339:  iconst_0 
L1340:  putfield Field com/fs/starfarer/combat/entities/Ship isLiftingOffOrLanding Z 

        .stack same 
L1343:  aload_0 
L1344:  getfield Field com/fs/starfarer/combat/entities/Ship isLiftingOffOrLanding Z 
L1347:  ifeq L1370 
L1350:  aload_0 
L1351:  getfield Field com/fs/starfarer/combat/entities/Ship isLanding Z 
L1354:  ifne L1370 
L1357:  aload_0 
L1358:  getfield Field com/fs/starfarer/combat/entities/Ship commands Ljava/util/List; 
L1361:  invokeinterface InterfaceMethod java/util/List clear ()V 1 
L1366:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L1369:  return 
        .catch [0] from L1370 to L3169 using L5768 

        .stack same 
L1370:  new java/util/HashSet 
L1373:  dup 
L1374:  invokespecial Method java/util/HashSet <init> ()V 
L1377:  astore_2 
L1378:  aload_0 
L1379:  getfield Field com/fs/starfarer/combat/entities/Ship commands Ljava/util/List; 
L1382:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L1387:  astore_3 
L1388:  goto L1642 

        .stack append Object java/util/Set Object java/util/Iterator 
L1391:  aload_3 
L1392:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L1397:  checkcast com/fs/starfarer/combat/entities/Ship$Oo 
L1400:  astore 4 
L1402:  aload_0 
L1403:  getfield Field com/fs/starfarer/combat/entities/Ship blockedCommands Ljava/util/EnumSet; 
L1406:  aload 4 
L1408:  getfield Field com/fs/starfarer/combat/entities/Ship$Oo 'Ò00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L1411:  invokevirtual Method java/util/EnumSet contains (Ljava/lang/Object;)Z 
L1414:  ifeq L1434 
L1417:  aload 4 
L1419:  getfield Field com/fs/starfarer/combat/entities/Ship$Oo 'super' Z 
L1422:  ifne L1434 
L1425:  aload_3 
L1426:  invokeinterface InterfaceMethod java/util/Iterator remove ()V 1 
L1431:  goto L1642 

        .stack append Object com/fs/starfarer/combat/entities/Ship$Oo 
L1434:  aload_2 
L1435:  aload 4 
L1437:  getfield Field com/fs/starfarer/combat/entities/Ship$Oo 'Ò00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L1440:  invokeinterface InterfaceMethod java/util/Set contains (Ljava/lang/Object;)Z 2 
L1445:  ifeq L1457 
L1448:  aload_3 
L1449:  invokeinterface InterfaceMethod java/util/Iterator remove ()V 1 
L1454:  goto L1642 

        .stack same 
L1457:  aload_2 
L1458:  getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'Ò00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L1461:  invokeinterface InterfaceMethod java/util/Set contains (Ljava/lang/Object;)Z 2 
L1466:  ifeq L1489 
L1469:  aload 4 
L1471:  getfield Field com/fs/starfarer/combat/entities/Ship$Oo 'Ò00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L1474:  getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'ö00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L1477:  if_acmpne L1489 
L1480:  aload_3 
L1481:  invokeinterface InterfaceMethod java/util/Iterator remove ()V 1 
L1486:  goto L1642 

        .stack same 
L1489:  aload_2 
L1490:  getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'ö00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L1493:  invokeinterface InterfaceMethod java/util/Set contains (Ljava/lang/Object;)Z 2 
L1498:  ifeq L1521 
L1501:  aload 4 
L1503:  getfield Field com/fs/starfarer/combat/entities/Ship$Oo 'Ò00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L1506:  getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'Ò00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L1509:  if_acmpne L1521 
L1512:  aload_3 
L1513:  invokeinterface InterfaceMethod java/util/Iterator remove ()V 1 
L1518:  goto L1642 

        .stack same 
L1521:  aload 4 
L1523:  getfield Field com/fs/starfarer/combat/entities/Ship$Oo 'Ò00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L1526:  getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'Õ00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L1529:  if_acmpne L1572 
L1532:  aload_0 
L1533:  getfield Field com/fs/starfarer/combat/entities/Ship systemDisabled Z 
L1536:  ifeq L1572 
L1539:  aload_3 
L1540:  invokeinterface InterfaceMethod java/util/Iterator remove ()V 1 
L1545:  aload_0 
L1546:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getSystem ()Lcom/fs/starfarer/combat/systems/F; 
L1549:  ifnull L1642 
L1552:  aload_0 
L1553:  invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L1556:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L1559:  if_acmpne L1642 
L1562:  aload_0 
L1563:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getSystem ()Lcom/fs/starfarer/combat/systems/F; 
L1566:  invokevirtual Method com/fs/starfarer/combat/systems/F failedToActivateDueToAmmo ()V 
L1569:  goto L1642 

        .stack same 
L1572:  aload 4 
L1574:  getfield Field com/fs/starfarer/combat/entities/Ship$Oo 'Ò00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L1577:  getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'ØO0000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L1580:  if_acmpne L1630 
L1583:  aload_0 
L1584:  getfield Field com/fs/starfarer/combat/entities/Ship defenseDisabled Z 
L1587:  ifeq L1630 
L1590:  aload_3 
L1591:  invokeinterface InterfaceMethod java/util/Iterator remove ()V 1 
L1596:  aload_0 
L1597:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getPhaseCloak ()Lcom/fs/starfarer/combat/systems/F; 
L1600:  ifnull L1613 
L1603:  aload_0 
L1604:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getPhaseCloak ()Lcom/fs/starfarer/combat/systems/F; 
L1607:  invokevirtual Method com/fs/starfarer/combat/systems/F failedToActivateDueToAmmo ()V 
L1610:  goto L1642 

        .stack same 
L1613:  aload_0 
L1614:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getSystem ()Lcom/fs/starfarer/combat/systems/F; 
L1617:  ifnull L1642 
L1620:  aload_0 
L1621:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getSystem ()Lcom/fs/starfarer/combat/systems/F; 
L1624:  invokevirtual Method com/fs/starfarer/combat/systems/F failedToActivateDueToAmmo ()V 
L1627:  goto L1642 

        .stack same 
L1630:  aload_2 
L1631:  aload 4 
L1633:  getfield Field com/fs/starfarer/combat/entities/Ship$Oo 'Ò00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L1636:  invokeinterface InterfaceMethod java/util/Set add (Ljava/lang/Object;)Z 2 
L1641:  pop 

        .stack chop 1 
L1642:  aload_3 
L1643:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L1648:  ifne L1391 
L1651:  aload_0 
L1652:  getfield Field com/fs/starfarer/combat/entities/Ship blockedCommands Ljava/util/EnumSet; 
L1655:  invokevirtual Method java/util/EnumSet clear ()V 
L1658:  aload_2 
L1659:  getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'this.super' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L1662:  invokeinterface InterfaceMethod java/util/Set contains (Ljava/lang/Object;)Z 2 
L1667:  ifne L1762 
L1670:  aload_2 
L1671:  getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'Ò00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L1674:  invokeinterface InterfaceMethod java/util/Set contains (Ljava/lang/Object;)Z 2 
L1679:  ifne L1762 
L1682:  aload_2 
L1683:  getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'ö00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L1686:  invokeinterface InterfaceMethod java/util/Set contains (Ljava/lang/Object;)Z 2 
L1691:  ifne L1762 
L1694:  aload_2 
L1695:  getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'ÕO0000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L1698:  invokeinterface InterfaceMethod java/util/Set contains (Ljava/lang/Object;)Z 2 
L1703:  ifne L1762 
L1706:  aload_2 
L1707:  getstatic Field com/fs/starfarer/combat/entities/Ship$oo o00000 Lcom/fs/starfarer/combat/entities/Ship$oo; 
L1710:  invokeinterface InterfaceMethod java/util/Set contains (Ljava/lang/Object;)Z 2 
L1715:  ifne L1762 
L1718:  aload_0 
L1719:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 
L1722:  invokevirtual Method org/lwjgl/util/vector/Vector2f length ()F 
L1725:  aload_0 
L1726:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getMaxSpeed ()F 
L1729:  fcmpl 
L1730:  ifle L1762 
L1733:  aload_0 
L1734:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isFighter ()Z 
L1737:  ifeq L1747 
L1740:  aload_0 
L1741:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isWingLeader ()Z 
L1744:  ifeq L1762 

        .stack same_extended 
L1747:  aload_0 
L1748:  new com/fs/starfarer/combat/entities/Ship$Oo 
L1751:  dup 
L1752:  getstatic Field com/fs/starfarer/combat/entities/Ship$oo Object Lcom/fs/starfarer/combat/entities/Ship$oo; 
L1755:  aconst_null 
L1756:  invokespecial Method com/fs/starfarer/combat/entities/Ship$Oo <init> (Lcom/fs/starfarer/combat/entities/Ship$oo;Ljava/lang/Object;)V 
L1759:  invokevirtual Method com/fs/starfarer/combat/entities/Ship giveCommand (Lcom/fs/starfarer/combat/entities/Ship$Oo;)V 

        .stack same 
L1762:  aload_0 
L1763:  getfield Field com/fs/starfarer/combat/entities/Ship travelDrive Lcom/fs/starfarer/combat/systems/F; 
L1766:  ifnull L1789 
L1769:  aload_0 
L1770:  getfield Field com/fs/starfarer/combat/entities/Ship travelDrive Lcom/fs/starfarer/combat/systems/F; 
L1773:  invokevirtual Method com/fs/starfarer/combat/systems/F isOn ()Z 
L1776:  ifeq L1789 
L1779:  aload_0 
L1780:  fconst_0 
L1781:  aload_0 
L1782:  getfield Field com/fs/starfarer/combat/entities/Ship travelDriveDir F 
L1785:  invokestatic Method com/fs/starfarer/combat/ai/OO0O 'super' (Lcom/fs/starfarer/combat/ai/o0oO;FF)Z 
L1788:  pop 

        .stack same 
L1789:  aload_0 
L1790:  getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L1793:  invokevirtual Method com/fs/starfarer/combat/entities/ship/D canUseEngines ()Z 
L1796:  ifeq L1811 
L1799:  aload_0 
L1800:  getfield Field com/fs/starfarer/combat/entities/Ship engineController Lcom/fs/starfarer/combat/entities/ship/null; 
L1803:  aload_0 
L1804:  getfield Field com/fs/starfarer/combat/entities/Ship commands Ljava/util/List; 
L1807:  fload_1 
L1808:  invokevirtual Method com/fs/starfarer/combat/entities/ship/null processCommands (Ljava/util/List;F)V 

        .stack same 
L1811:  aload_0 
L1812:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getShield ()Lcom/fs/starfarer/combat/systems/G; 
L1815:  ifnull L1832 
L1818:  aload_0 
L1819:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getShield ()Lcom/fs/starfarer/combat/systems/G; 
L1822:  invokevirtual Method com/fs/starfarer/combat/systems/G wasHit ()Z 
L1825:  ifeq L1832 
L1828:  iconst_1 
L1829:  goto L1833 

        .stack same 
L1832:  iconst_0 

        .stack stack_1 Integer 
L1833:  istore 4 
L1835:  iconst_0 
L1836:  istore 5 
L1838:  new java/util/ArrayList 
L1841:  dup 
L1842:  invokespecial Method java/util/ArrayList <init> ()V 
L1845:  astore 6 
L1847:  new java/util/ArrayList 
L1850:  dup 
L1851:  invokespecial Method java/util/ArrayList <init> ()V 
L1854:  astore 7 
L1856:  new java/util/ArrayList 
L1859:  dup 
L1860:  invokespecial Method java/util/ArrayList <init> ()V 
L1863:  astore 8 
L1865:  new java/util/ArrayList 
L1868:  dup 
L1869:  aload_0 
L1870:  getfield Field com/fs/starfarer/combat/entities/Ship commands Ljava/util/List; 
L1873:  invokespecial Method java/util/ArrayList <init> (Ljava/util/Collection;)V 
L1876:  invokevirtual Method java/util/ArrayList iterator ()Ljava/util/Iterator; 
L1879:  astore 10 
L1881:  goto L2618 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Object java/util/Set Object java/util/Iterator Integer Integer Object java/util/List Object java/util/List Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L1884:  aload 10 
L1886:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L1891:  checkcast com/fs/starfarer/combat/entities/Ship$Oo 
L1894:  astore 9 
L1896:  invokestatic Method com/fs/starfarer/combat/entities/Ship $SWITCH_TABLE$com$fs$starfarer$combat$entities$Ship$CommandType ()[I 
L1899:  aload 9 
L1901:  getfield Field com/fs/starfarer/combat/entities/Ship$Oo 'Ò00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L1904:  invokevirtual Method com/fs/starfarer/combat/entities/Ship$oo ordinal ()I 
L1907:  iaload 
L1908:  tableswitch 9 
            L2273 
            L2244 
            L2528 
            L2244 
            L2601 
            L2611 
            L2395 
            L1989 
            L2008 
            L1964 
            default : L2618 


        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Object java/util/Set Object java/util/Iterator Integer Integer Object java/util/List Object java/util/List Object java/util/List Object com/fs/starfarer/combat/entities/Ship$Oo Object java/util/Iterator 
            stack 
        .end stack 
L1964:  aload_0 
L1965:  getfield Field com/fs/starfarer/combat/entities/Ship system Lcom/fs/starfarer/combat/systems/F; 
L1968:  ifnull L2618 
L1971:  aload_0 
L1972:  getfield Field com/fs/starfarer/combat/entities/Ship system Lcom/fs/starfarer/combat/systems/F; 
L1975:  aload 9 
L1977:  getfield Field com/fs/starfarer/combat/entities/Ship$Oo 'Ó00000' Ljava/lang/Object; 
L1980:  checkcast org/lwjgl/util/vector/Vector2f 
L1983:  invokevirtual Method com/fs/starfarer/combat/systems/F fire (Lorg/lwjgl/util/vector/Vector2f;)V 
L1986:  goto L2618 

        .stack same 
L1989:  aload_0 
L1990:  aload_0 
L1991:  getfield Field com/fs/starfarer/combat/entities/Ship holdFire Z 
L1994:  ifeq L2001 
L1997:  iconst_0 
L1998:  goto L2002 

        .stack stack_1 Object com/fs/starfarer/combat/entities/Ship 
L2001:  iconst_1 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Object java/util/Set Object java/util/Iterator Integer Integer Object java/util/List Object java/util/List Object java/util/List Object com/fs/starfarer/combat/entities/Ship$Oo Object java/util/Iterator 
            stack Object com/fs/starfarer/combat/entities/Ship Integer 
        .end stack 
L2002:  putfield Field com/fs/starfarer/combat/entities/Ship holdFire Z 
L2005:  goto L2618 

        .stack same 
L2008:  aload_0 
L2009:  aload_0 
L2010:  getfield Field com/fs/starfarer/combat/entities/Ship pullBackFighters Z 
L2013:  ifeq L2020 
L2016:  iconst_0 
L2017:  goto L2021 

        .stack stack_1 Object com/fs/starfarer/combat/entities/Ship 
L2020:  iconst_1 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Object java/util/Set Object java/util/Iterator Integer Integer Object java/util/List Object java/util/List Object java/util/List Object com/fs/starfarer/combat/entities/Ship$Oo Object java/util/Iterator 
            stack Object com/fs/starfarer/combat/entities/Ship Integer 
        .end stack 
L2021:  putfield Field com/fs/starfarer/combat/entities/Ship pullBackFighters Z 
L2024:  aload_0 
L2025:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getMouseTarget ()Lorg/lwjgl/util/vector/Vector2f; 
L2028:  astore 11 
L2030:  aload_0 
L2031:  getfield Field com/fs/starfarer/combat/entities/Ship pullBackFighters Z 
L2034:  ifeq L2040 
L2037:  aconst_null 
L2038:  astore 11 

        .stack append Object org/lwjgl/util/vector/Vector2f 
L2040:  aload_0 
L2041:  aload 11 
L2043:  invokestatic Method com/fs/starfarer/combat/ai/FighterAI setWaypoint (Lcom/fs/starfarer/combat/entities/Ship;Lorg/lwjgl/util/vector/Vector2f;)V 
L2046:  aload_0 
L2047:  getfield Field com/fs/starfarer/combat/entities/Ship launchBays Ljava/util/List; 
L2050:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L2055:  astore 13 
L2057:  goto L2129 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Object java/util/Set Object java/util/Iterator Integer Integer Object java/util/List Object java/util/List Object java/util/List Object com/fs/starfarer/combat/entities/Ship$Oo Object java/util/Iterator Object org/lwjgl/util/vector/Vector2f Top Object java/util/Iterator 
            stack 
        .end stack 
L2060:  aload 13 
L2062:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L2067:  checkcast com/fs/starfarer/combat/entities/ship/A/C 
L2070:  astore 12 
L2072:  aload 12 
L2074:  invokevirtual Method com/fs/starfarer/combat/entities/ship/A/C getWing ()Lcom/fs/starfarer/combat/ai/M; 
L2077:  ifnull L2129 
L2080:  aload 12 
L2082:  invokevirtual Method com/fs/starfarer/combat/entities/ship/A/C getWing ()Lcom/fs/starfarer/combat/ai/M; 
L2085:  invokevirtual Method com/fs/starfarer/combat/ai/M getLeader ()Lcom/fs/starfarer/combat/entities/Ship; 
L2088:  ifnull L2129 
L2091:  aload 12 
L2093:  invokevirtual Method com/fs/starfarer/combat/entities/ship/A/C getWing ()Lcom/fs/starfarer/combat/ai/M; 
L2096:  invokevirtual Method com/fs/starfarer/combat/ai/M getLeader ()Lcom/fs/starfarer/combat/entities/Ship; 
L2099:  astore 14 
L2101:  aload 14 
L2103:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getAI ()Lcom/fs/starfarer/combat/ai/AI; 
L2106:  instanceof com/fs/starfarer/api/combat/ShipAIPlugin 
L2109:  ifeq L2129 
L2112:  aload 14 
L2114:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getAI ()Lcom/fs/starfarer/combat/ai/AI; 
L2117:  checkcast com/fs/starfarer/api/combat/ShipAIPlugin 
L2120:  astore 15 
L2122:  aload 15 
L2124:  invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ShipAIPlugin cancelCurrentManeuver ()V 1 

        .stack same_extended 
L2129:  aload 13 
L2131:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L2136:  ifne L2060 
L2139:  aload_0 
L2140:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getAI ()Lcom/fs/starfarer/combat/ai/AI; 
L2143:  ifnonnull L2618 
L2146:  aload_0 
L2147:  invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L2150:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L2153:  if_acmpne L2618 
L2156:  aload_0 
L2157:  getfield Field com/fs/starfarer/combat/entities/Ship pullBackFighters Z 
L2160:  ifeq L2183 
L2163:  aload_0 
L2164:  ldc_w +20.0f 
L2167:  putfield Field com/fs/starfarer/combat/entities/Ship forceCarrierPullBackTime F 
L2170:  aload_0 
L2171:  fconst_0 
L2172:  putfield Field com/fs/starfarer/combat/entities/Ship forceCarrierTargetTime F 
L2175:  aload_0 
L2176:  aconst_null 
L2177:  putfield Field com/fs/starfarer/combat/entities/Ship forceCarrierTarget Lcom/fs/starfarer/api/combat/ShipAPI; 
L2180:  goto L2618 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Object java/util/Set Object java/util/Iterator Integer Integer Object java/util/List Object java/util/List Object java/util/List Object com/fs/starfarer/combat/entities/Ship$Oo Object java/util/Iterator Object org/lwjgl/util/vector/Vector2f 
            stack 
        .end stack 
L2183:  aload_0 
L2184:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getShipTarget ()Lcom/fs/starfarer/combat/entities/Ship; 
L2187:  astore 12 
L2189:  aload 12 
L2191:  ifnull L2618 
L2194:  aload 12 
L2196:  invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ShipAPI isAlive ()Z 1 
L2201:  ifeq L2618 
L2204:  aload_0 
L2205:  aload 12 
L2207:  putfield Field com/fs/starfarer/combat/entities/Ship forceCarrierTarget Lcom/fs/starfarer/api/combat/ShipAPI; 
L2210:  aload 12 
L2212:  invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ShipAPI getOwner ()I 1 
L2217:  aload_0 
L2218:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getOwner ()I 
L2221:  if_icmpne L2234 
L2224:  aload_0 
L2225:  ldc_w +30.0f 
L2228:  putfield Field com/fs/starfarer/combat/entities/Ship forceCarrierTargetTime F 
L2231:  goto L2618 

        .stack append Object com/fs/starfarer/api/combat/ShipAPI 
L2234:  aload_0 
L2235:  ldc_w +20.0f 
L2238:  putfield Field com/fs/starfarer/combat/entities/Ship forceCarrierTargetTime F 
L2241:  goto L2618 

        .stack chop 2 
L2244:  aload_0 
L2245:  iconst_1 
L2246:  aload 9 
L2248:  getfield Field com/fs/starfarer/combat/entities/Ship$Oo 'Ó00000' Ljava/lang/Object; 
L2251:  checkcast org/lwjgl/util/vector/Vector2f 
L2254:  fload_1 
L2255:  invokevirtual Method com/fs/starfarer/combat/entities/Ship fire (ZLorg/lwjgl/util/vector/Vector2f;F)V 
L2258:  aload 6 
L2260:  aload_0 
L2261:  getfield Field com/fs/starfarer/combat/entities/Ship selected Lcom/fs/starfarer/combat/systems/WeaponGroup; 
L2264:  invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L2269:  pop 
L2270:  goto L2618 

        .stack same 
L2273:  aload 9 
L2275:  getfield Field com/fs/starfarer/combat/entities/Ship$Oo String I 
L2278:  istore 12 
L2280:  iload 12 
L2282:  aload_0 
L2283:  getfield Field com/fs/starfarer/combat/entities/Ship groups Ljava/util/List; 
L2286:  invokeinterface InterfaceMethod java/util/List size ()I 1 
L2291:  if_icmpge L2387 
L2294:  iload 12 
L2296:  iflt L2387 
L2299:  aload_0 
L2300:  getfield Field com/fs/starfarer/combat/entities/Ship groups Ljava/util/List; 
L2303:  iload 12 
L2305:  invokeinterface InterfaceMethod java/util/List get (I)Ljava/lang/Object; 2 
L2310:  checkcast com/fs/starfarer/combat/systems/WeaponGroup 
L2313:  astore 13 
L2315:  aload 13 
L2317:  iconst_1 
L2318:  aload 9 
L2320:  getfield Field com/fs/starfarer/combat/entities/Ship$Oo 'Ó00000' Ljava/lang/Object; 
L2323:  fload_1 
L2324:  invokevirtual Method com/fs/starfarer/combat/systems/WeaponGroup select (ZLjava/lang/Object;F)V 
L2327:  aload 7 
L2329:  aload 13 
L2331:  invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L2336:  pop 
L2337:  aload_0 
L2338:  getfield Field com/fs/starfarer/combat/entities/Ship selected Lcom/fs/starfarer/combat/systems/WeaponGroup; 
L2341:  aload 13 
L2343:  if_acmpeq L2365 
L2346:  aload 13 
L2348:  invokevirtual Method com/fs/starfarer/combat/systems/WeaponGroup isAlternating ()Z 
L2351:  ifeq L2365 
L2354:  aload 13 
L2356:  invokevirtual Method com/fs/starfarer/combat/systems/WeaponGroup getWeapons ()Ljava/util/List; 
L2359:  invokeinterface InterfaceMethod java/util/List size ()I 1 
L2364:  pop 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Object java/util/Set Object java/util/Iterator Integer Integer Object java/util/List Object java/util/List Object java/util/List Object com/fs/starfarer/combat/entities/Ship$Oo Object java/util/Iterator Top Integer Object com/fs/starfarer/combat/systems/WeaponGroup 
            stack 
        .end stack 
L2365:  aload 13 
L2367:  invokevirtual Method com/fs/starfarer/combat/systems/WeaponGroup flashIfNeeded ()V 
L2370:  aload 13 
L2372:  invokevirtual Method com/fs/starfarer/combat/systems/WeaponGroup isToggle ()Z 
L2375:  ifne L2618 
L2378:  aload_0 
L2379:  aload 13 
L2381:  putfield Field com/fs/starfarer/combat/entities/Ship selected Lcom/fs/starfarer/combat/systems/WeaponGroup; 
L2384:  goto L2618 

        .stack chop 1 
L2387:  aload_0 
L2388:  aconst_null 
L2389:  putfield Field com/fs/starfarer/combat/entities/Ship selected Lcom/fs/starfarer/combat/systems/WeaponGroup; 
L2392:  goto L2618 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Object java/util/Set Object java/util/Iterator Integer Integer Object java/util/List Object java/util/List Object java/util/List Object com/fs/starfarer/combat/entities/Ship$Oo Object java/util/Iterator 
            stack 
        .end stack 
L2395:  aload_0 
L2396:  getfield Field com/fs/starfarer/combat/entities/Ship phaseCloak Lcom/fs/starfarer/combat/systems/F; 
L2399:  ifnull L2450 
L2402:  aload_0 
L2403:  getfield Field com/fs/starfarer/combat/entities/Ship phaseCloak Lcom/fs/starfarer/combat/systems/F; 
L2406:  aload 9 
L2408:  getfield Field com/fs/starfarer/combat/entities/Ship$Oo 'Ó00000' Ljava/lang/Object; 
L2411:  checkcast org/lwjgl/util/vector/Vector2f 
L2414:  invokevirtual Method com/fs/starfarer/combat/systems/F fire (Lorg/lwjgl/util/vector/Vector2f;)V 
L2417:  aload_0 
L2418:  getfield Field com/fs/starfarer/combat/entities/Ship phaseCloak Lcom/fs/starfarer/combat/systems/F; 
L2421:  invokevirtual Method com/fs/starfarer/combat/systems/F canBeDeactivated ()Z 
L2424:  ifne L2444 
L2427:  aload_0 
L2428:  getfield Field com/fs/starfarer/combat/entities/Ship phaseCloak Lcom/fs/starfarer/combat/systems/F; 
L2431:  invokevirtual Method com/fs/starfarer/combat/systems/F isOn ()Z 
L2434:  ifeq L2444 
L2437:  aload_0 
L2438:  getfield Field com/fs/starfarer/combat/entities/Ship phaseCloak Lcom/fs/starfarer/combat/systems/F; 
L2441:  invokevirtual Method com/fs/starfarer/combat/systems/F failedToDeactivate ()V 

        .stack same 
L2444:  iconst_1 
L2445:  istore 5 
L2447:  goto L2618 

        .stack same 
L2450:  aload_0 
L2451:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getShield ()Lcom/fs/starfarer/combat/systems/G; 
L2454:  ifnull L2618 
L2457:  aload_0 
L2458:  getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L2461:  invokevirtual Method com/fs/starfarer/combat/entities/ship/D canUseShields ()Z 
L2464:  ifeq L2618 
L2467:  aload_0 
L2468:  getfield Field com/fs/starfarer/combat/entities/Ship isHulk Z 
L2471:  ifeq L2477 
L2474:  goto L2618 

        .stack same 
L2477:  aload_0 
L2478:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getShieldTarget ()Lorg/lwjgl/util/vector/Vector2f; 
L2481:  ifnull L2505 
L2484:  aload_0 
L2485:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getShield ()Lcom/fs/starfarer/combat/systems/G; 
L2488:  iconst_1 
L2489:  aload_0 
L2490:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getShieldTarget ()Lorg/lwjgl/util/vector/Vector2f; 
L2493:  fload_1 
L2494:  invokevirtual Method com/fs/starfarer/combat/systems/G advance (ZLjava/lang/Object;F)V 
L2497:  aload_0 
L2498:  aconst_null 
L2499:  putfield Field com/fs/starfarer/combat/entities/Ship shieldTarget Lorg/lwjgl/util/vector/Vector2f; 
L2502:  goto L2522 

        .stack same 
L2505:  aload_0 
L2506:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getShield ()Lcom/fs/starfarer/combat/systems/G; 
L2509:  iconst_1 
L2510:  aload 9 
L2512:  getfield Field com/fs/starfarer/combat/entities/Ship$Oo 'Ó00000' Ljava/lang/Object; 
L2515:  checkcast org/lwjgl/util/vector/Vector2f 
L2518:  fload_1 
L2519:  invokevirtual Method com/fs/starfarer/combat/systems/G advance (ZLjava/lang/Object;F)V 

        .stack same 
L2522:  iconst_1 
L2523:  istore 5 
L2525:  goto L2618 

        .stack same 
L2528:  aload 9 
L2530:  getfield Field com/fs/starfarer/combat/entities/Ship$Oo String I 
L2533:  istore 12 
L2535:  iload 12 
L2537:  iflt L2618 
L2540:  iload 12 
L2542:  aload_0 
L2543:  getfield Field com/fs/starfarer/combat/entities/Ship groups Ljava/util/List; 
L2546:  invokeinterface InterfaceMethod java/util/List size ()I 1 
L2551:  if_icmpge L2618 
L2554:  iload 12 
L2556:  iflt L2618 
L2559:  aload_0 
L2560:  getfield Field com/fs/starfarer/combat/entities/Ship groups Ljava/util/List; 
L2563:  iload 12 
L2565:  invokeinterface InterfaceMethod java/util/List get (I)Ljava/lang/Object; 2 
L2570:  checkcast com/fs/starfarer/combat/systems/WeaponGroup 
L2573:  astore 13 
L2575:  aload 13 
L2577:  iconst_1 
L2578:  aconst_null 
L2579:  fload_1 
L2580:  invokevirtual Method com/fs/starfarer/combat/systems/WeaponGroup autofire (ZLjava/lang/Object;F)V 
L2583:  aload 8 
L2585:  aload 13 
L2587:  invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L2592:  pop 
L2593:  aload 13 
L2595:  invokevirtual Method com/fs/starfarer/combat/systems/WeaponGroup flashIfNeeded ()V 
L2598:  goto L2618 

        .stack same_extended 
L2601:  aload_0 
L2602:  getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L2605:  invokevirtual Method com/fs/starfarer/combat/entities/ship/D raiseFlux ()V 
L2608:  goto L2618 

        .stack same 
L2611:  aload_0 
L2612:  getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L2615:  invokevirtual Method com/fs/starfarer/combat/entities/ship/D ventFlux ()V 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Object java/util/Set Object java/util/Iterator Integer Integer Object java/util/List Object java/util/List Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L2618:  aload 10 
L2620:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L2625:  ifne L1884 
L2628:  aload_0 
L2629:  getfield Field com/fs/starfarer/combat/entities/Ship commands Ljava/util/List; 
L2632:  invokeinterface InterfaceMethod java/util/List clear ()V 1 
L2637:  iload 5 
L2639:  ifne L2690 
L2642:  aload_0 
L2643:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getShield ()Lcom/fs/starfarer/combat/systems/G; 
L2646:  ifnull L2690 
L2649:  aload_0 
L2650:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getShieldTarget ()Lorg/lwjgl/util/vector/Vector2f; 
L2653:  ifnull L2677 
L2656:  aload_0 
L2657:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getShield ()Lcom/fs/starfarer/combat/systems/G; 
L2660:  iconst_0 
L2661:  aload_0 
L2662:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getShieldTarget ()Lorg/lwjgl/util/vector/Vector2f; 
L2665:  fload_1 
L2666:  invokevirtual Method com/fs/starfarer/combat/systems/G advance (ZLjava/lang/Object;F)V 
L2669:  aload_0 
L2670:  aconst_null 
L2671:  putfield Field com/fs/starfarer/combat/entities/Ship shieldTarget Lorg/lwjgl/util/vector/Vector2f; 
L2674:  goto L2690 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Object java/util/Set Object java/util/Iterator Integer Integer Object java/util/List Object java/util/List Object java/util/List 
            stack 
        .end stack 
L2677:  aload_0 
L2678:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getShield ()Lcom/fs/starfarer/combat/systems/G; 
L2681:  iconst_0 
L2682:  aload_0 
L2683:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getMouseTarget ()Lorg/lwjgl/util/vector/Vector2f; 
L2686:  fload_1 
L2687:  invokevirtual Method com/fs/starfarer/combat/systems/G advance (ZLjava/lang/Object;F)V 

        .stack same 
L2690:  ldc_w 'Advancing weapon groups' 
L2693:  invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L2696:  new java/util/HashSet 
L2699:  dup 
L2700:  invokespecial Method java/util/HashSet <init> ()V 
L2703:  astore 9 
L2705:  aload_0 
L2706:  getfield Field com/fs/starfarer/combat/entities/Ship groups Ljava/util/List; 
L2709:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L2714:  astore 11 
L2716:  goto L2855 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Object java/util/Set Object java/util/Iterator Integer Integer Object java/util/List Object java/util/List Object java/util/List Object java/util/Set Top Object java/util/Iterator 
            stack 
        .end stack 
L2719:  aload 11 
L2721:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L2726:  checkcast com/fs/starfarer/combat/systems/WeaponGroup 
L2729:  astore 10 
L2731:  aload 9 
L2733:  aload 10 
L2735:  invokevirtual Method com/fs/starfarer/combat/systems/WeaponGroup getWeapons ()Ljava/util/List; 
L2738:  invokeinterface InterfaceMethod java/util/Set addAll (Ljava/util/Collection;)Z 2 
L2743:  pop 
L2744:  aload_0 
L2745:  getfield Field com/fs/starfarer/combat/entities/Ship mouseTarget Lorg/lwjgl/util/vector/Vector2f; 
L2748:  astore 12 
L2750:  aload 10 
L2752:  invokevirtual Method com/fs/starfarer/combat/systems/WeaponGroup isFiringAtWill ()Z 
L2755:  ifeq L2769 
L2758:  aload 10 
L2760:  invokevirtual Method com/fs/starfarer/combat/systems/WeaponGroup isOverrideActive ()Z 
L2763:  ifne L2769 
L2766:  aconst_null 
L2767:  astore 12 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Object java/util/Set Object java/util/Iterator Integer Integer Object java/util/List Object java/util/List Object java/util/List Object java/util/Set Object com/fs/starfarer/combat/systems/WeaponGroup Object java/util/Iterator Object org/lwjgl/util/vector/Vector2f 
            stack 
        .end stack 
L2769:  ldc_w 'Advance group' 
L2772:  invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L2775:  aload 6 
L2777:  aload 10 
L2779:  invokeinterface InterfaceMethod java/util/List contains (Ljava/lang/Object;)Z 2 
L2784:  ifne L2802 
L2787:  fload_1 
L2788:  fconst_0 
L2789:  fcmpl 
L2790:  ifle L2802 
L2793:  aload 10 
L2795:  iconst_0 
L2796:  aload 12 
L2798:  fload_1 
L2799:  invokevirtual Method com/fs/starfarer/combat/systems/WeaponGroup advance (ZLjava/lang/Object;F)V 

        .stack same 
L2802:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L2805:  ldc_w 'Selection & AF status' 
L2808:  invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L2811:  aload 7 
L2813:  aload 10 
L2815:  invokeinterface InterfaceMethod java/util/List contains (Ljava/lang/Object;)Z 2 
L2820:  ifne L2832 
L2823:  aload 10 
L2825:  iconst_0 
L2826:  aload 12 
L2828:  fload_1 
L2829:  invokevirtual Method com/fs/starfarer/combat/systems/WeaponGroup select (ZLjava/lang/Object;F)V 

        .stack same 
L2832:  aload 8 
L2834:  aload 10 
L2836:  invokeinterface InterfaceMethod java/util/List contains (Ljava/lang/Object;)Z 2 
L2841:  ifne L2852 
L2844:  aload 10 
L2846:  iconst_0 
L2847:  aconst_null 
L2848:  fload_1 
L2849:  invokevirtual Method com/fs/starfarer/combat/systems/WeaponGroup autofire (ZLjava/lang/Object;F)V 

        .stack same 
L2852:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Object java/util/Set Object java/util/Iterator Integer Integer Object java/util/List Object java/util/List Object java/util/List Object java/util/Set Top Object java/util/Iterator 
            stack 
        .end stack 
L2855:  aload 11 
L2857:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L2862:  ifne L2719 
L2865:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L2868:  aload_0 
L2869:  iconst_0 
L2870:  putfield Field com/fs/starfarer/combat/entities/Ship weaponActiveThisFrame Z 
L2873:  aload_0 
L2874:  getfield Field com/fs/starfarer/combat/entities/Ship modules Ljava/util/List; 
L2877:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L2882:  astore 11 
L2884:  goto L2988 

        .stack same 
L2887:  aload 11 
L2889:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L2894:  checkcast com/fs/starfarer/combat/entities/ship/A/OooO 
L2897:  astore 10 
L2899:  aload 10 
L2901:  instanceof com/fs/starfarer/combat/systems/o00O 
L2904:  ifeq L2988 
L2907:  aload 10 
L2909:  checkcast com/fs/starfarer/combat/systems/o00O 
L2912:  astore 12 
L2914:  aload 12 
L2916:  invokeinterface InterfaceMethod com/fs/starfarer/combat/systems/o00O getChargeLevel ()F 1 
L2921:  fconst_0 
L2922:  fcmpl 
L2923:  ifgt L2938 
L2926:  aload 12 
L2928:  invokeinterface InterfaceMethod com/fs/starfarer/combat/systems/o00O getCooldownRemaining ()F 1 
L2933:  fconst_0 
L2934:  fcmpl 
L2935:  ifle L2943 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Object java/util/Set Object java/util/Iterator Integer Integer Object java/util/List Object java/util/List Object java/util/List Object java/util/Set Object com/fs/starfarer/combat/entities/ship/A/OooO Object java/util/Iterator Object com/fs/starfarer/combat/systems/o00O 
            stack 
        .end stack 
L2938:  aload_0 
L2939:  iconst_1 
L2940:  putfield Field com/fs/starfarer/combat/entities/Ship weaponActiveThisFrame Z 

        .stack same 
L2943:  aload 9 
L2945:  aload 12 
L2947:  invokeinterface InterfaceMethod java/util/Set contains (Ljava/lang/Object;)Z 2 
L2952:  ifeq L2978 
L2955:  aload 12 
L2957:  invokeinterface InterfaceMethod com/fs/starfarer/combat/systems/o00O getSlot ()Lcom/fs/starfarer/loading/specs/nullsuper; 1 
L2962:  ifnull L2988 
L2965:  aload 12 
L2967:  invokeinterface InterfaceMethod com/fs/starfarer/combat/systems/o00O getSlot ()Lcom/fs/starfarer/loading/specs/nullsuper; 1 
L2972:  invokevirtual Method com/fs/starfarer/loading/specs/nullsuper isDecorative ()Z 
L2975:  ifeq L2988 

        .stack same 
L2978:  aload 12 
L2980:  iconst_0 
L2981:  aconst_null 
L2982:  fload_1 
L2983:  invokeinterface InterfaceMethod com/fs/starfarer/combat/systems/o00O advance (ZLjava/lang/Object;F)V 4 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Object java/util/Set Object java/util/Iterator Integer Integer Object java/util/List Object java/util/List Object java/util/List Object java/util/Set Top Object java/util/Iterator 
            stack 
        .end stack 
L2988:  aload 11 
L2990:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L2995:  ifne L2887 
L2998:  aload_0 
L2999:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getShield ()Lcom/fs/starfarer/combat/systems/G; 
L3002:  ifnull L3019 
L3005:  aload_0 
L3006:  getfield Field com/fs/starfarer/combat/entities/Ship isHulk Z 
L3009:  ifeq L3019 
L3012:  aload_0 
L3013:  getfield Field com/fs/starfarer/combat/entities/Ship shield Lcom/fs/starfarer/combat/systems/G; 
L3016:  invokevirtual Method com/fs/starfarer/combat/systems/G toggleOff ()V 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Object java/util/Set Object java/util/Iterator Integer Integer Object java/util/List Object java/util/List Object java/util/List Object java/util/Set 
            stack 
        .end stack 
L3019:  aload_0 
L3020:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getSystem ()Lcom/fs/starfarer/combat/systems/F; 
L3023:  ifnull L3053 
L3026:  aload_0 
L3027:  getfield Field com/fs/starfarer/combat/entities/Ship isHulk Z 
L3030:  ifeq L3053 
L3033:  aload_0 
L3034:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getSystem ()Lcom/fs/starfarer/combat/systems/F; 
L3037:  invokevirtual Method com/fs/starfarer/combat/systems/F isActive ()Z 
L3040:  ifeq L3053 
L3043:  aload_0 
L3044:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getSystem ()Lcom/fs/starfarer/combat/systems/F; 
L3047:  invokevirtual Method com/fs/starfarer/combat/systems/F getChargeTracker ()Lcom/fs/starfarer/combat/systems/super; 
L3050:  invokevirtual Method com/fs/starfarer/combat/systems/super new ()V 

        .stack same 
L3053:  aload_0 
L3054:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getPhaseCloak ()Lcom/fs/starfarer/combat/systems/F; 
L3057:  ifnull L3087 
L3060:  aload_0 
L3061:  getfield Field com/fs/starfarer/combat/entities/Ship isHulk Z 
L3064:  ifeq L3087 
L3067:  aload_0 
L3068:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getPhaseCloak ()Lcom/fs/starfarer/combat/systems/F; 
L3071:  invokevirtual Method com/fs/starfarer/combat/systems/F isActive ()Z 
L3074:  ifeq L3087 
L3077:  aload_0 
L3078:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getPhaseCloak ()Lcom/fs/starfarer/combat/systems/F; 
L3081:  invokevirtual Method com/fs/starfarer/combat/systems/F getChargeTracker ()Lcom/fs/starfarer/combat/systems/super; 
L3084:  invokevirtual Method com/fs/starfarer/combat/systems/super new ()V 

        .stack same 
L3087:  aload_0 
L3088:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getTravelDrive ()Lcom/fs/starfarer/combat/systems/F; 
L3091:  ifnull L3121 
L3094:  aload_0 
L3095:  getfield Field com/fs/starfarer/combat/entities/Ship isHulk Z 
L3098:  ifeq L3121 
L3101:  aload_0 
L3102:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getTravelDrive ()Lcom/fs/starfarer/combat/systems/F; 
L3105:  invokevirtual Method com/fs/starfarer/combat/systems/F isActive ()Z 
L3108:  ifeq L3121 
L3111:  aload_0 
L3112:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getTravelDrive ()Lcom/fs/starfarer/combat/systems/F; 
L3115:  invokevirtual Method com/fs/starfarer/combat/systems/F getChargeTracker ()Lcom/fs/starfarer/combat/systems/super; 
L3118:  invokevirtual Method com/fs/starfarer/combat/systems/super new ()V 

        .stack same 
L3121:  aload_0 
L3122:  getfield Field com/fs/starfarer/combat/entities/Ship system Lcom/fs/starfarer/combat/systems/F; 
L3125:  ifnull L3135 
L3128:  aload_0 
L3129:  getfield Field com/fs/starfarer/combat/entities/Ship system Lcom/fs/starfarer/combat/systems/F; 
L3132:  invokevirtual Method com/fs/starfarer/combat/systems/F advanceEvenIfPaused ()V 

        .stack same 
L3135:  aload_0 
L3136:  getfield Field com/fs/starfarer/combat/entities/Ship phaseCloak Lcom/fs/starfarer/combat/systems/F; 
L3139:  ifnull L3149 
L3142:  aload_0 
L3143:  getfield Field com/fs/starfarer/combat/entities/Ship phaseCloak Lcom/fs/starfarer/combat/systems/F; 
L3146:  invokevirtual Method com/fs/starfarer/combat/systems/F advanceEvenIfPaused ()V 

        .stack same 
L3149:  aload_0 
L3150:  getfield Field com/fs/starfarer/combat/entities/Ship travelDrive Lcom/fs/starfarer/combat/systems/F; 
L3153:  ifnull L3163 
L3156:  aload_0 
L3157:  getfield Field com/fs/starfarer/combat/entities/Ship travelDrive Lcom/fs/starfarer/combat/systems/F; 
L3160:  invokevirtual Method com/fs/starfarer/combat/systems/F advanceEvenIfPaused ()V 

        .stack same 
L3163:  fload_1 
L3164:  fconst_0 
L3165:  fcmpl 
L3166:  ifne L3173 
L3169:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L3172:  return 
        .catch [0] from L3173 to L5768 using L5768 

        .stack same 
L3173:  aload_0 
L3174:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isFighter ()Z 
L3177:  ifne L3195 
L3180:  aload_0 
L3181:  getfield Field com/fs/starfarer/combat/entities/Ship statistics Lcom/fs/starfarer/combat/entities/I; 
L3184:  ifnull L3195 
L3187:  aload_0 
L3188:  getfield Field com/fs/starfarer/combat/entities/Ship statistics Lcom/fs/starfarer/combat/entities/I; 
L3191:  fload_1 
L3192:  invokevirtual Method com/fs/starfarer/combat/entities/I 'super' (F)V 

        .stack same 
L3195:  aload_0 
L3196:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getVariant ()Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L3199:  invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getAllMods ()Ljava/util/List; 
L3202:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L3207:  astore 11 
L3209:  goto L3244 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Object java/util/Set Object java/util/Iterator Integer Integer Object java/util/List Object java/util/List Object java/util/List Object java/util/Set Top Object java/util/Iterator 
            stack 
        .end stack 
L3212:  aload 11 
L3214:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L3219:  checkcast com/fs/starfarer/loading/specs/O00O 
L3222:  astore 10 
L3224:  aload 10 
L3226:  invokevirtual Method com/fs/starfarer/loading/specs/O00O getEffect ()Lcom/fs/starfarer/api/combat/HullModEffect; 
L3229:  ifnull L3244 
L3232:  aload 10 
L3234:  invokevirtual Method com/fs/starfarer/loading/specs/O00O getEffect ()Lcom/fs/starfarer/api/combat/HullModEffect; 
L3237:  aload_0 
L3238:  fload_1 
L3239:  invokeinterface InterfaceMethod com/fs/starfarer/api/combat/HullModEffect advanceInCombat (Lcom/fs/starfarer/api/combat/ShipAPI;F)V 3 

        .stack same 
L3244:  aload 11 
L3246:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L3251:  ifne L3212 
L3254:  iconst_0 
L3255:  istore 10 
L3257:  aload_0 
L3258:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getSystem ()Lcom/fs/starfarer/combat/systems/F; 
L3261:  instanceof com/fs/starfarer/combat/systems/oO0O 
L3264:  ifeq L3366 
L3267:  aload_0 
L3268:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getSystem ()Lcom/fs/starfarer/combat/systems/F; 
L3271:  checkcast com/fs/starfarer/combat/systems/oO0O 
L3274:  invokevirtual Method com/fs/starfarer/combat/systems/oO0O getDrones ()Ljava/util/List; 
L3277:  astore 11 
L3279:  aload 11 
L3281:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L3286:  astore 13 
L3288:  goto L3356 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Object java/util/Set Object java/util/Iterator Integer Integer Object java/util/List Object java/util/List Object java/util/List Object java/util/Set Integer Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L3291:  aload 13 
L3293:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L3298:  checkcast com/fs/starfarer/combat/systems/oO0O$Oo 
L3301:  astore 12 
L3303:  aload 12 
L3305:  getfield Field com/fs/starfarer/combat/systems/oO0O$Oo 'Ò00000' Lcom/fs/starfarer/combat/entities/Ship; 
L3308:  astore 14 
L3310:  aload 14 
L3312:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getFluxTracker ()Lcom/fs/starfarer/combat/entities/ship/D; 
L3315:  invokevirtual Method com/fs/starfarer/combat/entities/ship/D getPreviousReduction ()F 
L3318:  fconst_0 
L3319:  fcmpl 
L3320:  ifgt L3350 
L3323:  aload 14 
L3325:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isWeaponsActiveThisFrame ()Z 
L3328:  ifne L3350 
L3331:  aload 14 
L3333:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getSystem ()Lcom/fs/starfarer/combat/systems/F; 
L3336:  ifnull L3356 
L3339:  aload 14 
L3341:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getSystem ()Lcom/fs/starfarer/combat/systems/F; 
L3344:  invokevirtual Method com/fs/starfarer/combat/systems/F isActive ()Z 
L3347:  ifeq L3356 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Object java/util/Set Object java/util/Iterator Integer Integer Object java/util/List Object java/util/List Object java/util/List Object java/util/Set Integer Object java/util/List Object com/fs/starfarer/combat/systems/oO0O$Oo Object java/util/Iterator Object com/fs/starfarer/combat/entities/Ship 
            stack 
        .end stack 
L3350:  iconst_1 
L3351:  istore 10 
L3353:  goto L3366 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Object java/util/Set Object java/util/Iterator Integer Integer Object java/util/List Object java/util/List Object java/util/List Object java/util/Set Integer Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L3356:  aload 13 
L3358:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L3363:  ifne L3291 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Object java/util/Set Object java/util/Iterator Integer Integer Object java/util/List Object java/util/List Object java/util/List Object java/util/Set Integer 
            stack 
        .end stack 
L3366:  aload_0 
L3367:  getfield Field com/fs/starfarer/combat/entities/Ship shieldMalfunctionTracker Lcom/fs/starfarer/util/IntervalTracker; 
L3370:  fload_1 
L3371:  invokevirtual Method com/fs/starfarer/util/IntervalTracker advance (F)V 
L3374:  aload_0 
L3375:  getfield Field com/fs/starfarer/combat/entities/Ship shieldMalfunctionTracker Lcom/fs/starfarer/util/IntervalTracker; 
L3378:  invokevirtual Method com/fs/starfarer/util/IntervalTracker intervalElapsed ()Z 
L3381:  ifeq L3524 
L3384:  aload_0 
L3385:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getStats ()Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L3388:  invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getShieldMalfunctionChance ()Lcom/fs/starfarer/api/combat/MutableStat; 
L3391:  invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L3394:  fstore 11 
L3396:  fload 11 
L3398:  fconst_0 
L3399:  fcmpl 
L3400:  ifle L3524 
L3403:  aload_0 
L3404:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getFluxLevel ()F 
L3407:  aload_0 
L3408:  getfield Field com/fs/starfarer/combat/entities/Ship stats Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L3411:  invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getShieldMalfunctionFluxLevel ()Lcom/fs/starfarer/api/combat/MutableStat; 
L3414:  invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L3417:  fcmpl 
L3418:  ifle L3524 
L3421:  aload_0 
L3422:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getShield ()Lcom/fs/starfarer/combat/systems/G; 
L3425:  ifnull L3524 
L3428:  aload_0 
L3429:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getShield ()Lcom/fs/starfarer/combat/systems/G; 
L3432:  invokevirtual Method com/fs/starfarer/combat/systems/G isOn ()Z 
L3435:  ifeq L3524 
L3438:  aload_0 
L3439:  getfield Field com/fs/starfarer/combat/entities/Ship sinceLastShieldDamageTaken F 
L3442:  ldc_w +1.25f 
L3445:  fcmpg 
L3446:  ifge L3524 
L3449:  invokestatic Method java/lang/Math random ()D 
L3452:  d2f 
L3453:  fload 11 
L3455:  fcmpg 
L3456:  ifge L3524 
L3459:  ldc_w 'Shield Malfunction!' 
L3462:  astore 12 
L3464:  aload_0 
L3465:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L3468:  astore 13 
L3470:  invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L3473:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getFloatingTextManager ()Lcom/fs/starfarer/renderers/Q; 
L3476:  aload 13 
L3478:  getfield Field org/lwjgl/util/vector/Vector2f x F 
L3481:  aload 13 
L3483:  getfield Field org/lwjgl/util/vector/Vector2f y F 
L3486:  ldc_w +20.0f 
L3489:  fadd 
L3490:  aload 12 
L3492:  aload_0 
L3493:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getFluxTracker ()Lcom/fs/starfarer/combat/entities/ship/D; 
L3496:  invokevirtual Method com/fs/starfarer/combat/entities/ship/D getFloatySize ()F 
L3499:  getstatic Field com/fs/starfarer/O0OO 'void.super' Ljava/awt/Color; 
L3502:  aload_0 
L3503:  aconst_null 
L3504:  invokevirtual Method com/fs/starfarer/renderers/Q 'super' (FFLjava/lang/String;FLjava/awt/Color;Lcom/fs/starfarer/combat/E/B;Lcom/fs/starfarer/combat/E/B;)Lcom/fs/starfarer/renderers/O00O; 
L3507:  ldc_w +4.0f 
L3510:  ldc_w +2000.0f 
L3513:  invokevirtual Method com/fs/starfarer/renderers/O00O o00000 (FF)V 
L3516:  aload_0 
L3517:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getFluxTracker ()Lcom/fs/starfarer/combat/entities/ship/D; 
L3520:  fconst_0 
L3521:  invokevirtual Method com/fs/starfarer/combat/entities/ship/D forceOverload (F)V 

        .stack same_extended 
L3524:  aload_0 
L3525:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L3528:  astore 11 
L3530:  aload_0 
L3531:  getfield Field com/fs/starfarer/combat/entities/Ship stats Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L3534:  invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getPeakCRDuration ()Lcom/fs/starfarer/api/combat/StatBonus; 
L3537:  aload 11 
L3539:  invokevirtual Method com/fs/starfarer/loading/specs/g getNoCRLossSeconds ()F 
L3542:  invokevirtual Method com/fs/starfarer/api/combat/StatBonus computeEffective (F)F 
L3545:  fstore 12 
L3547:  aload_0 
L3548:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getFluxTracker ()Lcom/fs/starfarer/combat/entities/ship/D; 
L3551:  invokevirtual Method com/fs/starfarer/combat/entities/ship/D getPreviousReduction ()F 
L3554:  fconst_0 
L3555:  fcmpg 
L3556:  ifgt L3602 
L3559:  aload_0 
L3560:  getfield Field com/fs/starfarer/combat/entities/Ship weaponActiveThisFrame Z 
L3563:  ifne L3602 
L3566:  aload_0 
L3567:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getSystem ()Lcom/fs/starfarer/combat/systems/F; 
L3570:  ifnull L3593 
L3573:  aload_0 
L3574:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getSystem ()Lcom/fs/starfarer/combat/systems/F; 
L3577:  invokevirtual Method com/fs/starfarer/combat/systems/F isActive ()Z 
L3580:  ifne L3602 
L3583:  aload_0 
L3584:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getSystem ()Lcom/fs/starfarer/combat/systems/F; 
L3587:  invokevirtual Method com/fs/starfarer/combat/systems/F isCoolingDown ()Z 
L3590:  ifne L3602 

        .stack append Object com/fs/starfarer/loading/specs/g Float 
L3593:  iload 10 
L3595:  ifne L3602 
L3598:  iconst_1 
L3599:  goto L3603 

        .stack same 
L3602:  iconst_0 

        .stack stack_1 Integer 
L3603:  istore 13 
L3605:  iconst_1 
L3606:  istore 13 
L3608:  aload_0 
L3609:  getfield Field com/fs/starfarer/combat/entities/Ship peakActiveTracker Lcom/fs/starfarer/util/IntervalTracker; 
L3612:  fload_1 
L3613:  invokevirtual Method com/fs/starfarer/util/IntervalTracker advance (F)V 
L3616:  aload_0 
L3617:  getfield Field com/fs/starfarer/combat/entities/Ship peakActiveTracker Lcom/fs/starfarer/util/IntervalTracker; 
L3620:  invokevirtual Method com/fs/starfarer/util/IntervalTracker intervalElapsed ()Z 
L3623:  ifeq L3921 
L3626:  ldc_w +3000.0f 
L3629:  fstore 14 
L3631:  aload_0 
L3632:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getAIFlags ()Lcom/fs/starfarer/api/combat/ShipwideAIFlags; 
L3635:  getstatic Field com/fs/starfarer/api/combat/ShipwideAIFlags$AIFlags STANDING_OFF_VS_SHIP_ON_MAP_BORDER Lcom/fs/starfarer/api/combat/ShipwideAIFlags$AIFlags; 
L3638:  invokevirtual Method com/fs/starfarer/api/combat/ShipwideAIFlags hasFlag (Lcom/fs/starfarer/api/combat/ShipwideAIFlags$AIFlags;)Z 
L3641:  ifeq L3649 
L3644:  ldc_w +2000.0f 
L3647:  fstore 14 

        .stack append Integer Float 
L3649:  aload_0 
L3650:  fconst_0 
L3651:  ldc_w +360.0f 
L3654:  fload 14 
L3656:  iconst_0 
L3657:  invokestatic Method com/fs/starfarer/combat/ai/OO0O 'super' (Lcom/fs/starfarer/combat/entities/Ship;FFFZ)F 
L3660:  fstore 15 
L3662:  aload_0 
L3663:  invokestatic Method com/fs/starfarer/combat/ai/OO0O 'super' (Lcom/fs/starfarer/combat/entities/Ship;)F 
L3666:  fstore 16 
L3668:  aload_0 
L3669:  iconst_0 
L3670:  putfield Field com/fs/starfarer/combat/entities/Ship busyLaunchBays I 
L3673:  aload_0 
L3674:  getfield Field com/fs/starfarer/combat/entities/Ship launchBays Ljava/util/List; 
L3677:  invokeinterface InterfaceMethod java/util/List isEmpty ()Z 1 
L3682:  ifne L3769 
L3685:  aload_0 
L3686:  getfield Field com/fs/starfarer/combat/entities/Ship launchBays Ljava/util/List; 
L3689:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L3694:  astore 18 
L3696:  goto L3759 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Object java/util/Set Object java/util/Iterator Integer Integer Object java/util/List Object java/util/List Object java/util/List Object java/util/Set Integer Object com/fs/starfarer/loading/specs/g Float Integer Float Float Float Top Object java/util/Iterator 
            stack 
        .end stack 
L3699:  aload 18 
L3701:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L3706:  checkcast com/fs/starfarer/combat/entities/ship/A/C 
L3709:  astore 17 
L3711:  aload 17 
L3713:  invokevirtual Method com/fs/starfarer/combat/entities/ship/A/C getWing ()Lcom/fs/starfarer/combat/ai/M; 
L3716:  ifnonnull L3722 
L3719:  goto L3759 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Object java/util/Set Object java/util/Iterator Integer Integer Object java/util/List Object java/util/List Object java/util/List Object java/util/Set Integer Object com/fs/starfarer/loading/specs/g Float Integer Float Float Float Object com/fs/starfarer/combat/entities/ship/A/C Object java/util/Iterator 
            stack 
        .end stack 
L3722:  aload 17 
L3724:  invokevirtual Method com/fs/starfarer/combat/entities/ship/A/C getWing ()Lcom/fs/starfarer/combat/ai/M; 
L3727:  invokevirtual Method com/fs/starfarer/combat/ai/M getLeader ()Lcom/fs/starfarer/combat/entities/Ship; 
L3730:  astore 19 
L3732:  aload 19 
L3734:  ifnonnull L3740 
L3737:  goto L3759 

        .stack append Object com/fs/starfarer/combat/entities/Ship 
L3740:  fload 15 
L3742:  aload 19 
L3744:  fconst_0 
L3745:  ldc_w +360.0f 
L3748:  fload 14 
L3750:  iconst_0 
L3751:  invokestatic Method com/fs/starfarer/combat/ai/OO0O 'super' (Lcom/fs/starfarer/combat/entities/Ship;FFFZ)F 
L3754:  invokestatic Method java/lang/Math max (FF)F 
L3757:  fstore 15 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Object java/util/Set Object java/util/Iterator Integer Integer Object java/util/List Object java/util/List Object java/util/List Object java/util/Set Integer Object com/fs/starfarer/loading/specs/g Float Integer Float Float Float Top Object java/util/Iterator 
            stack 
        .end stack 
L3759:  aload 18 
L3761:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L3766:  ifne L3699 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Object java/util/Set Object java/util/Iterator Integer Integer Object java/util/List Object java/util/List Object java/util/List Object java/util/Set Integer Object com/fs/starfarer/loading/specs/g Float Integer Float Float Float 
            stack 
        .end stack 
L3769:  aload_0 
L3770:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getAllWeapons ()Ljava/util/List; 
L3773:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L3778:  astore 18 
L3780:  goto L3859 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Object java/util/Set Object java/util/Iterator Integer Integer Object java/util/List Object java/util/List Object java/util/List Object java/util/Set Integer Object com/fs/starfarer/loading/specs/g Float Integer Float Float Float Top Object java/util/Iterator 
            stack 
        .end stack 
L3783:  aload 18 
L3785:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L3790:  checkcast com/fs/starfarer/api/combat/WeaponAPI 
L3793:  astore 17 
L3795:  aload 17 
L3797:  invokeinterface InterfaceMethod com/fs/starfarer/api/combat/WeaponAPI getCustom ()Ljava/lang/Object; 1 
L3802:  instanceof com/fs/starfarer/api/combat/FighterWingAPI 
L3805:  ifeq L3859 
L3808:  aload 17 
L3810:  invokeinterface InterfaceMethod com/fs/starfarer/api/combat/WeaponAPI getCustom ()Ljava/lang/Object; 1 
L3815:  checkcast com/fs/starfarer/api/combat/FighterWingAPI 
L3818:  astore 19 
L3820:  aload 19 
L3822:  invokeinterface InterfaceMethod com/fs/starfarer/api/combat/FighterWingAPI getLeader ()Lcom/fs/starfarer/api/combat/ShipAPI; 1 
L3827:  checkcast com/fs/starfarer/combat/entities/Ship 
L3830:  astore 20 
L3832:  aload 20 
L3834:  ifnonnull L3840 
L3837:  goto L3859 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Object java/util/Set Object java/util/Iterator Integer Integer Object java/util/List Object java/util/List Object java/util/List Object java/util/Set Integer Object com/fs/starfarer/loading/specs/g Float Integer Float Float Float Object com/fs/starfarer/api/combat/WeaponAPI Object java/util/Iterator Object com/fs/starfarer/api/combat/FighterWingAPI Object com/fs/starfarer/combat/entities/Ship 
            stack 
        .end stack 
L3840:  fload 15 
L3842:  aload 20 
L3844:  fconst_0 
L3845:  ldc_w +360.0f 
L3848:  fload 14 
L3850:  iconst_0 
L3851:  invokestatic Method com/fs/starfarer/combat/ai/OO0O 'super' (Lcom/fs/starfarer/combat/entities/Ship;FFFZ)F 
L3854:  invokestatic Method java/lang/Math max (FF)F 
L3857:  fstore 15 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Object java/util/Set Object java/util/Iterator Integer Integer Object java/util/List Object java/util/List Object java/util/List Object java/util/Set Integer Object com/fs/starfarer/loading/specs/g Float Integer Float Float Float Top Object java/util/Iterator 
            stack 
        .end stack 
L3859:  aload 18 
L3861:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L3866:  ifne L3783 
L3869:  fload 15 
L3871:  fload 16 
L3873:  fcmpl 
L3874:  iflt L3885 
L3877:  aload_0 
L3878:  iconst_1 
L3879:  putfield Field com/fs/starfarer/combat/entities/Ship enemyShipInRange Z 
L3882:  goto L3890 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Object java/util/Set Object java/util/Iterator Integer Integer Object java/util/List Object java/util/List Object java/util/List Object java/util/Set Integer Object com/fs/starfarer/loading/specs/g Float Integer Float Float Float 
            stack 
        .end stack 
L3885:  aload_0 
L3886:  iconst_0 
L3887:  putfield Field com/fs/starfarer/combat/entities/Ship enemyShipInRange Z 

        .stack same 
L3890:  fload 15 
L3892:  fconst_0 
L3893:  fcmpl 
L3894:  ifle L3905 
L3897:  aload_0 
L3898:  iconst_1 
L3899:  putfield Field com/fs/starfarer/combat/entities/Ship anyEnemiesInRange Z 
L3902:  goto L3910 

        .stack same 
L3905:  aload_0 
L3906:  iconst_0 
L3907:  putfield Field com/fs/starfarer/combat/entities/Ship anyEnemiesInRange Z 

        .stack same 
L3910:  aload_0 
L3911:  aload_0 
L3912:  ldc_w +3000.0f 
L3915:  invokestatic Method com/fs/starfarer/combat/ai/OO0O 'Ò00000' (Lcom/fs/starfarer/combat/entities/Ship;F)Z 
L3918:  putfield Field com/fs/starfarer/combat/entities/Ship anyEnemiesInRange Z 

        .stack chop 3 
L3921:  aload_0 
L3922:  getfield Field com/fs/starfarer/combat/entities/Ship enemyShipInRange Z 
L3925:  ifeq L3931 
L3928:  iconst_0 
L3929:  istore 13 

        .stack same 
L3931:  aload_0 
L3932:  getfield Field com/fs/starfarer/combat/entities/Ship isHulk Z 
L3935:  ifeq L3941 
L3938:  iconst_1 
L3939:  istore 13 

        .stack same 
L3941:  iload 13 
L3943:  ifeq L3964 
L3946:  aload_0 
L3947:  dup 
L3948:  getfield Field com/fs/starfarer/combat/entities/Ship minTimeBeforeReport F 
L3951:  fload_1 
L3952:  fsub 
L3953:  putfield Field com/fs/starfarer/combat/entities/Ship minTimeBeforeReport F 
L3956:  aload_0 
L3957:  iconst_0 
L3958:  putfield Field com/fs/starfarer/combat/entities/Ship significantEnemiesInRange Z 
L3961:  goto L3992 

        .stack same 
L3964:  aload_0 
L3965:  fconst_0 
L3966:  putfield Field com/fs/starfarer/combat/entities/Ship sinceTimeIncrease F 
L3969:  aload_0 
L3970:  dup 
L3971:  getfield Field com/fs/starfarer/combat/entities/Ship timeDeployed F 
L3974:  fload_1 
L3975:  fconst_1 
L3976:  aload_0 
L3977:  getfield Field com/fs/starfarer/combat/entities/Ship busyLaunchBays I 
L3980:  i2f 
L3981:  fadd 
L3982:  fmul 
L3983:  fadd 
L3984:  putfield Field com/fs/starfarer/combat/entities/Ship timeDeployed F 
L3987:  aload_0 
L3988:  iconst_1 
L3989:  putfield Field com/fs/starfarer/combat/entities/Ship significantEnemiesInRange Z 

        .stack same 
L3992:  aload_0 
L3993:  dup 
L3994:  getfield Field com/fs/starfarer/combat/entities/Ship sinceTimeIncrease F 
L3997:  fload_1 
L3998:  fadd 
L3999:  putfield Field com/fs/starfarer/combat/entities/Ship sinceTimeIncrease F 
L4002:  aload_0 
L4003:  dup 
L4004:  getfield Field com/fs/starfarer/combat/entities/Ship fullTimeDeployed F 
L4007:  fload_1 
L4008:  fadd 
L4009:  putfield Field com/fs/starfarer/combat/entities/Ship fullTimeDeployed F 
L4012:  aload_0 
L4013:  invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L4016:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L4019:  if_acmpne L4032 
L4022:  aload_0 
L4023:  dup 
L4024:  getfield Field com/fs/starfarer/combat/entities/Ship timeDeployedUnderPlayerControl F 
L4027:  fload_1 
L4028:  fadd 
L4029:  putfield Field com/fs/starfarer/combat/entities/Ship timeDeployedUnderPlayerControl F 

        .stack same 
L4032:  aload_0 
L4033:  getfield Field com/fs/starfarer/combat/entities/Ship timeDeployed F 
L4036:  fload 12 
L4038:  fcmpl 
L4039:  ifle L4114 
L4042:  iload 13 
L4044:  ifne L4114 
L4047:  fload_1 
L4048:  aload_0 
L4049:  getfield Field com/fs/starfarer/combat/entities/Ship stats Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L4052:  invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getCRLossPerSecondPercent ()Lcom/fs/starfarer/api/combat/StatBonus; 
L4055:  aload 11 
L4057:  aload_0 
L4058:  getfield Field com/fs/starfarer/combat/entities/Ship stats Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L4061:  invokevirtual Method com/fs/starfarer/loading/specs/g getCRLossPerSecond (Lcom/fs/starfarer/api/combat/MutableShipStatsAPI;)F 
L4064:  invokevirtual Method com/fs/starfarer/api/combat/StatBonus computeEffective (F)F 
L4067:  fmul 
L4068:  ldc_w +0.009999999776482582f 
L4071:  fmul 
L4072:  fstore 14 
L4074:  aload_0 
L4075:  dup 
L4076:  getfield Field com/fs/starfarer/combat/entities/Ship currentCR F 
L4079:  fload 14 
L4081:  fsub 
L4082:  putfield Field com/fs/starfarer/combat/entities/Ship currentCR F 
L4085:  aload_0 
L4086:  getfield Field com/fs/starfarer/combat/entities/Ship currentCR F 
L4089:  fconst_0 
L4090:  fcmpg 
L4091:  ifge L4099 
L4094:  aload_0 
L4095:  fconst_0 
L4096:  putfield Field com/fs/starfarer/combat/entities/Ship currentCR F 

        .stack append Float 
L4099:  aload_0 
L4100:  getfield Field com/fs/starfarer/combat/entities/Ship currentCR F 
L4103:  aload_0 
L4104:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getStats ()Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L4107:  aload_0 
L4108:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullSize ()Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L4111:  invokestatic Method com/fs/starfarer/campaign/fleet/RepairTracker applyCRToStats (FLcom/fs/starfarer/api/combat/MutableShipStatsAPI;Lcom/fs/starfarer/api/combat/ShipAPI$HullSize;)V 

        .stack chop 1 
L4114:  aload_0 
L4115:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isFighter ()Z 
L4118:  ifne L4961 
L4121:  aload_0 
L4122:  invokevirtual Method com/fs/starfarer/combat/entities/Ship controlsLocked ()Z 
L4125:  ifne L4961 
L4128:  aload_0 
L4129:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isAlly ()Z 
L4132:  ifne L4961 
L4135:  aload_0 
L4136:  aload_0 
L4137:  getfield Field com/fs/starfarer/combat/entities/Ship effect Lcom/fs/starfarer/api/combat/CombatReadinessPlugin; 
L4140:  aload_0 
L4141:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getMutableStats ()Lcom/fs/starfarer/api/combat/MutableShipStatsAPI; 
L4144:  invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatReadinessPlugin getMalfunctionThreshold (Lcom/fs/starfarer/api/combat/MutableShipStatsAPI;)F 2 
L4149:  putfield Field com/fs/starfarer/combat/entities/Ship crMalfunctionThreshold F 
L4152:  aload_0 
L4153:  aload_0 
L4154:  getfield Field com/fs/starfarer/combat/entities/Ship effect Lcom/fs/starfarer/api/combat/CombatReadinessPlugin; 
L4157:  aload_0 
L4158:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getMutableStats ()Lcom/fs/starfarer/api/combat/MutableShipStatsAPI; 
L4161:  invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatReadinessPlugin getCriticalMalfunctionThreshold (Lcom/fs/starfarer/api/combat/MutableShipStatsAPI;)F 2 
L4166:  putfield Field com/fs/starfarer/combat/entities/Ship crCritMalfunctionThreshold F 
L4169:  ldc_w 'peakTimeWarningSeconds' 
L4172:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'ö00000' (Ljava/lang/String;)F 
L4175:  fstore 14 
L4177:  fload 12 
L4179:  aload_0 
L4180:  getfield Field com/fs/starfarer/combat/entities/Ship timeDeployed F 
L4183:  fsub 
L4184:  fload 14 
L4186:  fcmpg 
L4187:  ifge L4194 
L4190:  iconst_1 
L4191:  goto L4195 

        .stack append Float 
L4194:  iconst_0 

        .stack stack_1 Integer 
L4195:  istore 15 
L4197:  aload_0 
L4198:  getfield Field com/fs/starfarer/combat/entities/Ship currentCR F 
L4201:  aload_0 
L4202:  getfield Field com/fs/starfarer/combat/entities/Ship crMalfunctionThreshold F 
L4205:  fcmpg 
L4206:  ifge L4213 
L4209:  iconst_1 
L4210:  goto L4214 

        .stack append Integer 
L4213:  iconst_0 

        .stack stack_1 Integer 
L4214:  istore 16 
L4216:  aload_0 
L4217:  getfield Field com/fs/starfarer/combat/entities/Ship currentCR F 
L4220:  aload_0 
L4221:  getfield Field com/fs/starfarer/combat/entities/Ship crCritMalfunctionThreshold F 
L4224:  fcmpg 
L4225:  ifge L4232 
L4228:  iconst_1 
L4229:  goto L4233 

        .stack append Integer 
L4232:  iconst_0 

        .stack stack_1 Integer 
L4233:  istore 17 
L4235:  aload_0 
L4236:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getOwner ()I 
L4239:  invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L4242:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerId ()I 
L4245:  if_icmpne L4252 
L4248:  iconst_1 
L4249:  goto L4253 

        .stack append Integer 
L4252:  iconst_0 

        .stack stack_1 Integer 
L4253:  istore 18 
L4255:  aload_0 
L4256:  invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L4259:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L4262:  if_acmpne L4269 
L4265:  iconst_1 
L4266:  goto L4270 

        .stack append Integer 
L4269:  iconst_0 

        .stack stack_1 Integer 
L4270:  istore 19 
L4272:  aload_0 
L4273:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isStationModule ()Z 
L4276:  ifeq L4285 
L4279:  iconst_0 
L4280:  istore 18 
L4282:  iconst_0 
L4283:  istore 19 

        .stack append Integer 
L4285:  invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L4288:  astore 20 
L4290:  aload_0 
L4291:  getfield Field com/fs/starfarer/combat/entities/Ship timeDeployed F 
L4294:  aload_0 
L4295:  getfield Field com/fs/starfarer/combat/entities/Ship minTimeBeforeReport F 
L4298:  fcmpl 
L4299:  ifle L4961 
L4302:  aload 20 
L4304:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getTimeSinceLastReport ()F 
L4307:  getstatic Field com/fs/starfarer/combat/CombatEngine MIN_REPORT_INTERVAL F 
L4310:  fcmpl 
L4311:  ifle L4961 
L4314:  iload 18 
L4316:  ifne L4324 
L4319:  iload 19 
L4321:  ifeq L4961 

        .stack append Object com/fs/starfarer/combat/CombatEngine 
L4324:  iload 17 
L4326:  ifeq L4535 
L4329:  aload_0 
L4330:  getfield Field com/fs/starfarer/combat/entities/Ship playedCritMalfSound Z 
L4333:  ifne L4535 
L4336:  aload_0 
L4337:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getOwner ()I 
L4340:  aload_0 
L4341:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isAlly ()Z 
L4344:  invokestatic Method com/fs/starfarer/prototype/Utils o00000 (IZ)Ljava/awt/Color; 
L4347:  astore 21 
L4349:  iload 19 
L4351:  ifeq L4408 
L4354:  ldc_w 'cr_playership_critical' 
L4357:  fconst_1 
L4358:  fconst_1 
L4359:  invokestatic Method com/fs/starfarer/D/M o00000 (Ljava/lang/String;FF)Lsound/Sound; 
L4362:  pop 
L4363:  invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L4366:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getCombatUI ()Lcom/fs/starfarer/combat/K; 
L4369:  invokeinterface InterfaceMethod com/fs/starfarer/combat/K getMessageWidget ()Lcom/fs/starfarer/class/C; 1 
L4374:  iconst_2 
L4375:  anewarray java/lang/Object 
L4378:  dup 
L4379:  iconst_0 
L4380:  getstatic Field com/fs/starfarer/O0OO String Ljava/awt/Color; 
L4383:  aastore 
L4384:  dup 
L4385:  iconst_1 
L4386:  ldc_w 'Your flagship is in danger of suffering critical malfunctions due to low combat readiness.' 
L4389:  aastore 
L4390:  invokevirtual Method com/fs/starfarer/class/C o00000 ([Ljava/lang/Object;)Lcom/fs/starfarer/class/O0OO/C; 
L4393:  pop 
L4394:  aload_0 
L4395:  iconst_1 
L4396:  putfield Field com/fs/starfarer/combat/entities/Ship playedCritMalfSound Z 
L4399:  aload 20 
L4401:  fconst_0 
L4402:  invokevirtual Method com/fs/starfarer/combat/CombatEngine setTimeSinceLastReport (F)V 
L4405:  goto L4961 

        .stack append Object java/awt/Color 
L4408:  iload 18 
L4410:  ifeq L4961 
L4413:  ldc_w 'cr_allied_critical' 
L4416:  fconst_1 
L4417:  fconst_1 
L4418:  invokestatic Method com/fs/starfarer/D/M o00000 (Ljava/lang/String;FF)Lsound/Sound; 
L4421:  pop 
L4422:  invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L4425:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getCombatUI ()Lcom/fs/starfarer/combat/K; 
L4428:  invokeinterface InterfaceMethod com/fs/starfarer/combat/K getMessageWidget ()Lcom/fs/starfarer/class/C; 1 
L4433:  bipush 6 
L4435:  anewarray java/lang/Object 
L4438:  dup 
L4439:  iconst_0 
L4440:  aload_0 
L4441:  aastore 
L4442:  dup 
L4443:  iconst_1 
L4444:  aload 21 
L4446:  aastore 
L4447:  dup 
L4448:  iconst_2 
L4449:  new java/lang/StringBuilder 
L4452:  dup 
L4453:  invokespecial Method java/lang/StringBuilder <init> ()V 
L4456:  aload_0 
L4457:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getName ()Ljava/lang/String; 
L4460:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L4463:  ldc_w ' (' 
L4466:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L4469:  invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L4472:  aastore 
L4473:  dup 
L4474:  iconst_3 
L4475:  new java/lang/StringBuilder 
L4478:  dup 
L4479:  aload_0 
L4480:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getSpec ()Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L4483:  invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L4486:  invokevirtual Method com/fs/starfarer/loading/specs/g getHullName ()Ljava/lang/String; 
L4489:  invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L4492:  invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L4495:  ldc_w '-class)' 
L4498:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L4501:  invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L4504:  aastore 
L4505:  dup 
L4506:  iconst_4 
L4507:  getstatic Field com/fs/starfarer/O0OO String Ljava/awt/Color; 
L4510:  aastore 
L4511:  dup 
L4512:  iconst_5 
L4513:  ldc_w ' reports danger of critical malfunctions due to low combat readiness.' 
L4516:  aastore 
L4517:  invokevirtual Method com/fs/starfarer/class/C o00000 ([Ljava/lang/Object;)Lcom/fs/starfarer/class/O0OO/C; 
L4520:  pop 
L4521:  aload_0 
L4522:  iconst_1 
L4523:  putfield Field com/fs/starfarer/combat/entities/Ship playedCritMalfSound Z 
L4526:  aload 20 
L4528:  fconst_0 
L4529:  invokevirtual Method com/fs/starfarer/combat/CombatEngine setTimeSinceLastReport (F)V 
L4532:  goto L4961 

        .stack chop 1 
L4535:  iload 16 
L4537:  ifeq L4753 
L4540:  aload_0 
L4541:  getfield Field com/fs/starfarer/combat/entities/Ship playedMalfSound Z 
L4544:  ifne L4753 
L4547:  aload_0 
L4548:  getfield Field com/fs/starfarer/combat/entities/Ship playedCritMalfSound Z 
L4551:  ifne L4753 
L4554:  aload_0 
L4555:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getOwner ()I 
L4558:  aload_0 
L4559:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isAlly ()Z 
L4562:  invokestatic Method com/fs/starfarer/prototype/Utils o00000 (IZ)Ljava/awt/Color; 
L4565:  astore 21 
L4567:  iload 19 
L4569:  ifeq L4626 
L4572:  ldc_w 'cr_playership_malfunction' 
L4575:  fconst_1 
L4576:  fconst_1 
L4577:  invokestatic Method com/fs/starfarer/D/M o00000 (Ljava/lang/String;FF)Lsound/Sound; 
L4580:  pop 
L4581:  invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L4584:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getCombatUI ()Lcom/fs/starfarer/combat/K; 
L4587:  invokeinterface InterfaceMethod com/fs/starfarer/combat/K getMessageWidget ()Lcom/fs/starfarer/class/C; 1 
L4592:  iconst_2 
L4593:  anewarray java/lang/Object 
L4596:  dup 
L4597:  iconst_0 
L4598:  getstatic Field com/fs/starfarer/O0OO String Ljava/awt/Color; 
L4601:  aastore 
L4602:  dup 
L4603:  iconst_1 
L4604:  ldc_w 'Your flagship is in danger of suffering malfunctions due to low combat readiness.' 
L4607:  aastore 
L4608:  invokevirtual Method com/fs/starfarer/class/C o00000 ([Ljava/lang/Object;)Lcom/fs/starfarer/class/O0OO/C; 
L4611:  pop 
L4612:  aload_0 
L4613:  iconst_1 
L4614:  putfield Field com/fs/starfarer/combat/entities/Ship playedMalfSound Z 
L4617:  aload 20 
L4619:  fconst_0 
L4620:  invokevirtual Method com/fs/starfarer/combat/CombatEngine setTimeSinceLastReport (F)V 
L4623:  goto L4961 

        .stack append Object java/awt/Color 
L4626:  iload 18 
L4628:  ifeq L4961 
L4631:  ldc_w 'cr_allied_malfunction' 
L4634:  fconst_1 
L4635:  fconst_1 
L4636:  invokestatic Method com/fs/starfarer/D/M o00000 (Ljava/lang/String;FF)Lsound/Sound; 
L4639:  pop 
L4640:  invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L4643:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getCombatUI ()Lcom/fs/starfarer/combat/K; 
L4646:  invokeinterface InterfaceMethod com/fs/starfarer/combat/K getMessageWidget ()Lcom/fs/starfarer/class/C; 1 
L4651:  bipush 6 
L4653:  anewarray java/lang/Object 
L4656:  dup 
L4657:  iconst_0 
L4658:  aload_0 
L4659:  aastore 
L4660:  dup 
L4661:  iconst_1 
L4662:  aload 21 
L4664:  aastore 
L4665:  dup 
L4666:  iconst_2 
L4667:  new java/lang/StringBuilder 
L4670:  dup 
L4671:  invokespecial Method java/lang/StringBuilder <init> ()V 
L4674:  aload_0 
L4675:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getName ()Ljava/lang/String; 
L4678:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L4681:  ldc_w ' (' 
L4684:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L4687:  invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L4690:  aastore 
L4691:  dup 
L4692:  iconst_3 
L4693:  new java/lang/StringBuilder 
L4696:  dup 
L4697:  aload_0 
L4698:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getSpec ()Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L4701:  invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L4704:  invokevirtual Method com/fs/starfarer/loading/specs/g getHullName ()Ljava/lang/String; 
L4707:  invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L4710:  invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L4713:  ldc_w '-class)' 
L4716:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L4719:  invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L4722:  aastore 
L4723:  dup 
L4724:  iconst_4 
L4725:  getstatic Field com/fs/starfarer/O0OO String Ljava/awt/Color; 
L4728:  aastore 
L4729:  dup 
L4730:  iconst_5 
L4731:  ldc_w ' reports danger of malfunctions due to low combat readiness.' 
L4734:  aastore 
L4735:  invokevirtual Method com/fs/starfarer/class/C o00000 ([Ljava/lang/Object;)Lcom/fs/starfarer/class/O0OO/C; 
L4738:  pop 
L4739:  aload_0 
L4740:  iconst_1 
L4741:  putfield Field com/fs/starfarer/combat/entities/Ship playedMalfSound Z 
L4744:  aload 20 
L4746:  fconst_0 
L4747:  invokevirtual Method com/fs/starfarer/combat/CombatEngine setTimeSinceLastReport (F)V 
L4750:  goto L4961 

        .stack chop 1 
L4753:  iload 15 
L4755:  ifeq L4961 
L4758:  aload_0 
L4759:  getfield Field com/fs/starfarer/combat/entities/Ship playedWarnSound Z 
L4762:  ifne L4961 
L4765:  aload_0 
L4766:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getOwner ()I 
L4769:  aload_0 
L4770:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isAlly ()Z 
L4773:  invokestatic Method com/fs/starfarer/prototype/Utils o00000 (IZ)Ljava/awt/Color; 
L4776:  astore 21 
L4778:  iload 19 
L4780:  ifeq L4837 
L4783:  ldc_w 'cr_playership_warning' 
L4786:  fconst_1 
L4787:  fconst_1 
L4788:  invokestatic Method com/fs/starfarer/D/M o00000 (Ljava/lang/String;FF)Lsound/Sound; 
L4791:  pop 
L4792:  invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L4795:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getCombatUI ()Lcom/fs/starfarer/combat/K; 
L4798:  invokeinterface InterfaceMethod com/fs/starfarer/combat/K getMessageWidget ()Lcom/fs/starfarer/class/C; 1 
L4803:  iconst_2 
L4804:  anewarray java/lang/Object 
L4807:  dup 
L4808:  iconst_0 
L4809:  getstatic Field com/fs/starfarer/O0OO String Ljava/awt/Color; 
L4812:  aastore 
L4813:  dup 
L4814:  iconst_1 
L4815:  ldc_w "Your flagship's combat readiness will start decreasing soon due to extended deployment." 
L4818:  aastore 
L4819:  invokevirtual Method com/fs/starfarer/class/C o00000 ([Ljava/lang/Object;)Lcom/fs/starfarer/class/O0OO/C; 
L4822:  pop 
L4823:  aload_0 
L4824:  iconst_1 
L4825:  putfield Field com/fs/starfarer/combat/entities/Ship playedWarnSound Z 
L4828:  aload 20 
L4830:  fconst_0 
L4831:  invokevirtual Method com/fs/starfarer/combat/CombatEngine setTimeSinceLastReport (F)V 
L4834:  goto L4961 

        .stack append Object java/awt/Color 
L4837:  iload 18 
L4839:  ifeq L4961 
L4842:  ldc_w 'cr_allied_warning' 
L4845:  fconst_1 
L4846:  fconst_1 
L4847:  invokestatic Method com/fs/starfarer/D/M o00000 (Ljava/lang/String;FF)Lsound/Sound; 
L4850:  pop 
L4851:  invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L4854:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getCombatUI ()Lcom/fs/starfarer/combat/K; 
L4857:  invokeinterface InterfaceMethod com/fs/starfarer/combat/K getMessageWidget ()Lcom/fs/starfarer/class/C; 1 
L4862:  bipush 6 
L4864:  anewarray java/lang/Object 
L4867:  dup 
L4868:  iconst_0 
L4869:  aload_0 
L4870:  aastore 
L4871:  dup 
L4872:  iconst_1 
L4873:  aload 21 
L4875:  aastore 
L4876:  dup 
L4877:  iconst_2 
L4878:  new java/lang/StringBuilder 
L4881:  dup 
L4882:  invokespecial Method java/lang/StringBuilder <init> ()V 
L4885:  aload_0 
L4886:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getName ()Ljava/lang/String; 
L4889:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L4892:  ldc_w ' (' 
L4895:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L4898:  invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L4901:  aastore 
L4902:  dup 
L4903:  iconst_3 
L4904:  new java/lang/StringBuilder 
L4907:  dup 
L4908:  aload_0 
L4909:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getSpec ()Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L4912:  invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L4915:  invokevirtual Method com/fs/starfarer/loading/specs/g getHullName ()Ljava/lang/String; 
L4918:  invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L4921:  invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L4924:  ldc_w '-class)' 
L4927:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L4930:  invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L4933:  aastore 
L4934:  dup 
L4935:  iconst_4 
L4936:  getstatic Field com/fs/starfarer/O0OO String Ljava/awt/Color; 
L4939:  aastore 
L4940:  dup 
L4941:  iconst_5 
L4942:  ldc_w ' reports combat readiness will start decreasing soon.' 
L4945:  aastore 
L4946:  invokevirtual Method com/fs/starfarer/class/C o00000 ([Ljava/lang/Object;)Lcom/fs/starfarer/class/O0OO/C; 
L4949:  pop 
L4950:  aload_0 
L4951:  iconst_1 
L4952:  putfield Field com/fs/starfarer/combat/entities/Ship playedWarnSound Z 
L4955:  aload 20 
L4957:  fconst_0 
L4958:  invokevirtual Method com/fs/starfarer/combat/CombatEngine setTimeSinceLastReport (F)V 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Object java/util/Set Object java/util/Iterator Integer Integer Object java/util/List Object java/util/List Object java/util/List Object java/util/Set Integer Object com/fs/starfarer/loading/specs/g Float Integer 
            stack 
        .end stack 
L4961:  aload_0 
L4962:  getfield Field com/fs/starfarer/combat/entities/Ship jitterEffectColorShifter Lcom/fs/starfarer/util/ColorShifter; 
L4965:  invokevirtual Method com/fs/starfarer/util/ColorShifter isShifted ()Z 
L4968:  ifeq L5018 
L4971:  aload_0 
L4972:  getfield Field com/fs/starfarer/combat/entities/Ship jitter Lcom/fs/starfarer/renderers/JitterRenderer; 
L4975:  invokevirtual Method com/fs/starfarer/renderers/JitterRenderer updateSeed ()V 
L4978:  aload_0 
L4979:  getfield Field com/fs/starfarer/combat/entities/Ship jitterEffectColorShifter Lcom/fs/starfarer/util/ColorShifter; 
L4982:  fload_1 
L4983:  invokevirtual Method com/fs/starfarer/util/ColorShifter advance (F)V 
L4986:  aload_0 
L4987:  getfield Field com/fs/starfarer/combat/entities/Ship jitterEffectIntensityShifter Lcom/fs/starfarer/util/ValueShifter; 
L4990:  fload_1 
L4991:  invokevirtual Method com/fs/starfarer/util/ValueShifter advance (F)V 
L4994:  aload_0 
L4995:  getfield Field com/fs/starfarer/combat/entities/Ship jitterCopiesShifter Lcom/fs/starfarer/util/ValueShifter; 
L4998:  fload_1 
L4999:  invokevirtual Method com/fs/starfarer/util/ValueShifter advance (F)V 
L5002:  aload_0 
L5003:  getfield Field com/fs/starfarer/combat/entities/Ship jitterMinRangeShifter Lcom/fs/starfarer/util/ValueShifter; 
L5006:  fload_1 
L5007:  invokevirtual Method com/fs/starfarer/util/ValueShifter advance (F)V 
L5010:  aload_0 
L5011:  getfield Field com/fs/starfarer/combat/entities/Ship jitterRangeShifter Lcom/fs/starfarer/util/ValueShifter; 
L5014:  fload_1 
L5015:  invokevirtual Method com/fs/starfarer/util/ValueShifter advance (F)V 

        .stack same 
L5018:  aload_0 
L5019:  getfield Field com/fs/starfarer/combat/entities/Ship jitterUnderEffectColorShifter Lcom/fs/starfarer/util/ColorShifter; 
L5022:  invokevirtual Method com/fs/starfarer/util/ColorShifter isShifted ()Z 
L5025:  ifeq L5075 
L5028:  aload_0 
L5029:  getfield Field com/fs/starfarer/combat/entities/Ship jitterUnder Lcom/fs/starfarer/renderers/JitterRenderer; 
L5032:  invokevirtual Method com/fs/starfarer/renderers/JitterRenderer updateSeed ()V 
L5035:  aload_0 
L5036:  getfield Field com/fs/starfarer/combat/entities/Ship jitterUnderEffectColorShifter Lcom/fs/starfarer/util/ColorShifter; 
L5039:  fload_1 
L5040:  invokevirtual Method com/fs/starfarer/util/ColorShifter advance (F)V 
L5043:  aload_0 
L5044:  getfield Field com/fs/starfarer/combat/entities/Ship jitterUnderEffectIntensityShifter Lcom/fs/starfarer/util/ValueShifter; 
L5047:  fload_1 
L5048:  invokevirtual Method com/fs/starfarer/util/ValueShifter advance (F)V 
L5051:  aload_0 
L5052:  getfield Field com/fs/starfarer/combat/entities/Ship jitterUnderCopiesShifter Lcom/fs/starfarer/util/ValueShifter; 
L5055:  fload_1 
L5056:  invokevirtual Method com/fs/starfarer/util/ValueShifter advance (F)V 
L5059:  aload_0 
L5060:  getfield Field com/fs/starfarer/combat/entities/Ship jitterUnderMinRangeShifter Lcom/fs/starfarer/util/ValueShifter; 
L5063:  fload_1 
L5064:  invokevirtual Method com/fs/starfarer/util/ValueShifter advance (F)V 
L5067:  aload_0 
L5068:  getfield Field com/fs/starfarer/combat/entities/Ship jitterUnderRangeShifter Lcom/fs/starfarer/util/ValueShifter; 
L5071:  fload_1 
L5072:  invokevirtual Method com/fs/starfarer/util/ValueShifter advance (F)V 

        .stack same 
L5075:  aload_0 
L5076:  getfield Field com/fs/starfarer/combat/entities/Ship afterimages Ljava/util/List; 
L5079:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L5084:  astore 14 
L5086:  goto L5122 

        .stack append Object java/util/Iterator 
L5089:  aload 14 
L5091:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L5096:  checkcast com/fs/starfarer/combat/entities/Ship$o 
L5099:  astore 15 
L5101:  aload 15 
L5103:  fload_1 
L5104:  invokevirtual Method com/fs/starfarer/combat/entities/Ship$o o00000 (F)V 
L5107:  aload 15 
L5109:  invokevirtual Method com/fs/starfarer/combat/entities/Ship$o o00000 ()Z 
L5112:  ifeq L5122 
L5115:  aload 14 
L5117:  invokeinterface InterfaceMethod java/util/Iterator remove ()V 1 

        .stack same 
L5122:  aload 14 
L5124:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L5129:  ifne L5089 
L5132:  aload_0 
L5133:  iconst_0 
L5134:  invokevirtual Method com/fs/starfarer/combat/entities/Ship setHoldFireOneFrame (Z)V 
L5137:  aload_0 
L5138:  getfield Field com/fs/starfarer/combat/entities/Ship system Lcom/fs/starfarer/combat/systems/F; 
L5141:  ifnull L5152 
L5144:  aload_0 
L5145:  getfield Field com/fs/starfarer/combat/entities/Ship system Lcom/fs/starfarer/combat/systems/F; 
L5148:  fload_1 
L5149:  invokevirtual Method com/fs/starfarer/combat/systems/F advance (F)V 

        .stack same 
L5152:  aload_0 
L5153:  getfield Field com/fs/starfarer/combat/entities/Ship travelDrive Lcom/fs/starfarer/combat/systems/F; 
L5156:  ifnull L5167 
L5159:  aload_0 
L5160:  getfield Field com/fs/starfarer/combat/entities/Ship travelDrive Lcom/fs/starfarer/combat/systems/F; 
L5163:  fload_1 
L5164:  invokevirtual Method com/fs/starfarer/combat/systems/F advance (F)V 

        .stack same 
L5167:  aload_0 
L5168:  getfield Field com/fs/starfarer/combat/entities/Ship phaseCloak Lcom/fs/starfarer/combat/systems/F; 
L5171:  ifnull L5182 
L5174:  aload_0 
L5175:  getfield Field com/fs/starfarer/combat/entities/Ship phaseCloak Lcom/fs/starfarer/combat/systems/F; 
L5178:  fload_1 
L5179:  invokevirtual Method com/fs/starfarer/combat/systems/F advance (F)V 

        .stack same 
L5182:  aload_0 
L5183:  getfield Field com/fs/starfarer/combat/entities/Ship launchBays Ljava/util/List; 
L5186:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L5191:  astore 16 
L5193:  goto L5214 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Object java/util/Set Object java/util/Iterator Integer Integer Object java/util/List Object java/util/List Object java/util/List Object java/util/Set Integer Object com/fs/starfarer/loading/specs/g Float Integer Object java/util/Iterator Top Object java/util/Iterator 
            stack 
        .end stack 
L5196:  aload 16 
L5198:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L5203:  checkcast com/fs/starfarer/combat/entities/ship/A/C 
L5206:  astore 15 
L5208:  aload 15 
L5210:  fload_1 
L5211:  invokevirtual Method com/fs/starfarer/combat/entities/ship/A/C advance (F)V 

        .stack same 
L5214:  aload 16 
L5216:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L5221:  ifne L5196 
L5224:  aload_0 
L5225:  getfield Field com/fs/starfarer/combat/entities/Ship stats Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L5228:  invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getMaxHullRepairFraction ()Lcom/fs/starfarer/api/combat/MutableStat; 
L5231:  invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L5234:  fstore 15 
L5236:  fload 15 
L5238:  fconst_1 
L5239:  fcmpl 
L5240:  ifle L5246 
L5243:  fconst_1 
L5244:  fstore 15 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Object java/util/Set Object java/util/Iterator Integer Integer Object java/util/List Object java/util/List Object java/util/List Object java/util/Set Integer Object com/fs/starfarer/loading/specs/g Float Integer Object java/util/Iterator Float 
            stack 
        .end stack 
L5246:  fload 15 
L5248:  fconst_0 
L5249:  fcmpg 
L5250:  ifge L5256 
L5253:  fconst_0 
L5254:  fstore 15 

        .stack same 
L5256:  aload_0 
L5257:  getfield Field com/fs/starfarer/combat/entities/Ship isHulk Z 
L5260:  ifne L5337 
L5263:  fload 15 
L5265:  aload_0 
L5266:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullLevel ()F 
L5269:  fcmpl 
L5270:  ifle L5337 
L5273:  aload_0 
L5274:  getfield Field com/fs/starfarer/combat/entities/Ship stats Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L5277:  invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getHullRepairRatePercentPerSecond ()Lcom/fs/starfarer/api/combat/MutableStat; 
L5280:  invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L5283:  aload_0 
L5284:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getMaxHitpoints ()F 
L5287:  fmul 
L5288:  ldc_w +0.009999999776482582f 
L5291:  fmul 
L5292:  fstore 16 
L5294:  aload_0 
L5295:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getHitpoints ()F 
L5298:  fstore 17 
L5300:  fload 17 
L5302:  fload 16 
L5304:  fload_1 
L5305:  fmul 
L5306:  fadd 
L5307:  fstore 17 
L5309:  fload 17 
L5311:  aload_0 
L5312:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getMaxHitpoints ()F 
L5315:  fload 15 
L5317:  fmul 
L5318:  fcmpl 
L5319:  ifle L5331 
L5322:  aload_0 
L5323:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getMaxHitpoints ()F 
L5326:  fload 15 
L5328:  fmul 
L5329:  fstore 17 

        .stack append Float Float 
L5331:  aload_0 
L5332:  fload 17 
L5334:  invokevirtual Method com/fs/starfarer/combat/entities/Ship setHitpoints (F)V 

        .stack chop 2 
L5337:  aload_0 
L5338:  getfield Field com/fs/starfarer/combat/entities/Ship engineController Lcom/fs/starfarer/combat/entities/ship/null; 
L5341:  fload_1 
L5342:  invokevirtual Method com/fs/starfarer/combat/entities/ship/null advance (F)V 
L5345:  aload_0 
L5346:  getfield Field com/fs/starfarer/combat/entities/Ship pullBackFighters Z 
L5349:  ifne L5563 
L5352:  aload_0 
L5353:  getfield Field com/fs/starfarer/combat/entities/Ship launchBays Ljava/util/List; 
L5356:  invokeinterface InterfaceMethod java/util/List isEmpty ()Z 1 
L5361:  ifne L5563 
L5364:  aload_0 
L5365:  getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L5368:  invokevirtual Method com/fs/starfarer/combat/entities/ship/D isOverloadedOrVenting ()Z 
L5371:  ifeq L5384 
L5374:  aload_0 
L5375:  getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L5378:  invokevirtual Method com/fs/starfarer/combat/entities/ship/D forceOffEngineBoost ()V 
L5381:  goto L5563 

        .stack same 
L5384:  getstatic Field com/fs/starfarer/api/impl/campaign/skills/Helmsmanship ZERO_FLUX_LEVEL F 
L5387:  ldc_w +0.009999999776482582f 
L5390:  fmul 
L5391:  aload_0 
L5392:  getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L5395:  invokevirtual Method com/fs/starfarer/combat/entities/ship/D getMaxFlux ()F 
L5398:  fmul 
L5399:  fstore 16 
L5401:  fload_1 
L5402:  aload_0 
L5403:  getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L5406:  invokevirtual Method com/fs/starfarer/combat/entities/ship/D getDissipationRate ()F 
L5409:  fmul 
L5410:  ldc_w +100.0f 
L5413:  ldc_w +0.009999999776482582f 
L5416:  aload_0 
L5417:  getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L5420:  invokevirtual Method com/fs/starfarer/combat/entities/ship/D getMaxFlux ()F 
L5423:  fmul 
L5424:  invokestatic Method java/lang/Math min (FF)F 
L5427:  fadd 
L5428:  fstore 17 
L5430:  fload 16 
L5432:  fload 17 
L5434:  fadd 
L5435:  fstore 16 
L5437:  aload_0 
L5438:  getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L5441:  invokevirtual Method com/fs/starfarer/combat/entities/ship/D getCurrFlux ()F 
L5444:  fload 16 
L5446:  fcmpg 
L5447:  ifge L5563 
L5450:  fload 16 
L5452:  ldc_w +10.0f 
L5455:  frem 
L5456:  f2i 
L5457:  i2f 
L5458:  fstore 18 
L5460:  fconst_1 
L5461:  fstore 19 
L5463:  fload 18 
L5465:  ldc_w +5.0f 
L5468:  fcmpl 
L5469:  ifle L5488 
L5472:  ldc_w -1.0f 
L5475:  fstore 19 
L5477:  fload 18 
L5479:  ldc_w +4.0f 
L5482:  fsub 
L5483:  fstore 18 
L5485:  goto L5496 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Object java/util/Set Object java/util/Iterator Integer Integer Object java/util/List Object java/util/List Object java/util/List Object java/util/Set Integer Object com/fs/starfarer/loading/specs/g Float Integer Object java/util/Iterator Float Float Float Float Float 
            stack 
        .end stack 
L5488:  ldc_w +9.0f 
L5491:  fload 18 
L5493:  fsub 
L5494:  fstore 18 

        .stack same 
L5496:  ldc +3.0f 
L5498:  fstore 18 
L5500:  aload_0 
L5501:  getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L5504:  invokevirtual Method com/fs/starfarer/combat/entities/ship/D getCurrFlux ()F 
L5507:  fload 16 
L5509:  ldc_w +0.949999988079071f 
L5512:  fmul 
L5513:  fcmpg 
L5514:  ifge L5543 
L5517:  aload_0 
L5518:  getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L5521:  fload_1 
L5522:  aload_0 
L5523:  getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L5526:  invokevirtual Method com/fs/starfarer/combat/entities/ship/D getDissipationRate ()F 
L5529:  fmul 
L5530:  ldc +3.0f 
L5532:  fmul 
L5533:  iconst_1 
L5534:  iconst_0 
L5535:  iconst_0 
L5536:  invokevirtual Method com/fs/starfarer/combat/entities/ship/D increaseFlux (FZZZ)Z 
L5539:  pop 
L5540:  goto L5563 

        .stack same 
L5543:  aload_0 
L5544:  getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L5547:  fload 16 
L5549:  fload 19 
L5551:  fload 18 
L5553:  invokestatic Method java/lang/Math random ()D 
L5556:  d2f 
L5557:  fmul 
L5558:  fmul 
L5559:  fadd 
L5560:  invokevirtual Method com/fs/starfarer/combat/entities/ship/D setCurrFlux (F)V 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Object java/util/Set Object java/util/Iterator Integer Integer Object java/util/List Object java/util/List Object java/util/List Object java/util/Set Integer Object com/fs/starfarer/loading/specs/g Float Integer Object java/util/Iterator Float 
            stack 
        .end stack 
L5563:  aload_0 
L5564:  getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L5567:  fload_1 
L5568:  invokevirtual Method com/fs/starfarer/combat/entities/ship/D advance (F)V 
L5571:  aload_0 
L5572:  dup 
L5573:  getfield Field com/fs/starfarer/combat/entities/Ship fighterTimeBeforeRefit F 
L5576:  fload_1 
L5577:  fsub 
L5578:  putfield Field com/fs/starfarer/combat/entities/Ship fighterTimeBeforeRefit F 
L5581:  aload_0 
L5582:  getfield Field com/fs/starfarer/combat/entities/Ship decalRenderer Lcom/fs/starfarer/renderers/damage/String; 
L5585:  fload_1 
L5586:  invokevirtual Method com/fs/starfarer/renderers/damage/String 'Ò00000' (F)V 
L5589:  aload_0 
L5590:  getfield Field com/fs/starfarer/combat/entities/Ship empDecal Lcom/fs/starfarer/renderers/damage/I; 
L5593:  ifnull L5604 
L5596:  aload_0 
L5597:  getfield Field com/fs/starfarer/combat/entities/Ship empDecal Lcom/fs/starfarer/renderers/damage/I; 
L5600:  fload_1 
L5601:  invokevirtual Method com/fs/starfarer/renderers/damage/I 'Ò00000' (F)V 

        .stack same 
L5604:  aload_0 
L5605:  getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L5608:  invokevirtual Method com/fs/starfarer/combat/entities/ship/D isVenting ()Z 
L5611:  ifeq L5622 
L5614:  aload_0 
L5615:  getfield Field com/fs/starfarer/combat/entities/Ship ventingAnimation Lcom/fs/starfarer/renderers/oOoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO; 
L5618:  fload_1 
L5619:  invokevirtual Method com/fs/starfarer/renderers/oOoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 'super' (F)V 

        .stack same 
L5622:  aload_0 
L5623:  getfield Field com/fs/starfarer/combat/entities/Ship breakingAnimation Lcom/fs/starfarer/combat/entities/H; 
L5626:  ifnull L5652 
L5629:  aload_0 
L5630:  getfield Field com/fs/starfarer/combat/entities/Ship breakingAnimation Lcom/fs/starfarer/combat/entities/H; 
L5633:  fload_1 
L5634:  invokevirtual Method com/fs/starfarer/combat/entities/H o00000 (F)V 
L5637:  aload_0 
L5638:  getfield Field com/fs/starfarer/combat/entities/Ship breakingAnimation Lcom/fs/starfarer/combat/entities/H; 
L5641:  invokevirtual Method com/fs/starfarer/combat/entities/H new ()Z 
L5644:  ifeq L5652 
L5647:  aload_0 
L5648:  aconst_null 
L5649:  putfield Field com/fs/starfarer/combat/entities/Ship breakingAnimation Lcom/fs/starfarer/combat/entities/H; 

        .stack same 
L5652:  aload_0 
L5653:  getfield Field com/fs/starfarer/combat/entities/Ship currColor Ljava/awt/Color; 
L5656:  astore 16 
L5658:  aload_0 
L5659:  getfield Field com/fs/starfarer/combat/entities/Ship colorFader Lcom/fs/graphics/util/Fader; 
L5662:  ifnull L5730 
L5665:  aload_0 
L5666:  getfield Field com/fs/starfarer/combat/entities/Ship colorFader Lcom/fs/graphics/util/Fader; 
L5669:  invokevirtual Method com/fs/graphics/util/Fader getBrightness ()F 
L5672:  fstore 17 
L5674:  aload_0 
L5675:  getfield Field com/fs/starfarer/combat/entities/Ship currColor Ljava/awt/Color; 
L5678:  aload_0 
L5679:  getfield Field com/fs/starfarer/combat/entities/Ship fadeToColor Ljava/awt/Color; 
L5682:  fload 17 
L5684:  invokestatic Method com/fs/graphics/util/B o00000 (Ljava/awt/Color;Ljava/awt/Color;F)Ljava/awt/Color; 
L5687:  astore 18 
L5689:  aload_0 
L5690:  aload 18 
L5692:  invokevirtual Method com/fs/starfarer/combat/entities/Ship setColor (Ljava/awt/Color;)V 
L5695:  aload 18 
L5697:  astore 16 
L5699:  fload 17 
L5701:  fconst_1 
L5702:  fcmpl 
L5703:  ifne L5722 
L5706:  aload_0 
L5707:  aconst_null 
L5708:  putfield Field com/fs/starfarer/combat/entities/Ship colorFader Lcom/fs/graphics/util/Fader; 
L5711:  aload_0 
L5712:  aload_0 
L5713:  getfield Field com/fs/starfarer/combat/entities/Ship fadeToColor Ljava/awt/Color; 
L5716:  putfield Field com/fs/starfarer/combat/entities/Ship currColor Ljava/awt/Color; 
L5719:  goto L5730 

        .stack append Object java/awt/Color Float Object java/awt/Color 
L5722:  aload_0 
L5723:  getfield Field com/fs/starfarer/combat/entities/Ship colorFader Lcom/fs/graphics/util/Fader; 
L5726:  fload_1 
L5727:  invokevirtual Method com/fs/graphics/util/Fader advance (F)V 

        .stack chop 2 
L5730:  aload_0 
L5731:  getfield Field com/fs/starfarer/combat/entities/Ship shipColor Lcom/fs/starfarer/util/ColorShifter; 
L5734:  fload_1 
L5735:  invokevirtual Method com/fs/starfarer/util/ColorShifter advance (F)V 
L5738:  aload_0 
L5739:  getfield Field com/fs/starfarer/combat/entities/Ship shipColor Lcom/fs/starfarer/util/ColorShifter; 
L5742:  aload 16 
L5744:  invokevirtual Method com/fs/starfarer/util/ColorShifter getCurrForBase (Ljava/awt/Color;)Ljava/awt/Color; 
L5747:  astore 17 
L5749:  aload 17 
L5751:  aload 16 
L5753:  invokevirtual Method java/awt/Color equals (Ljava/lang/Object;)Z 
L5756:  ifne L5776 
L5759:  aload_0 
L5760:  aload 17 
L5762:  invokevirtual Method com/fs/starfarer/combat/entities/Ship setColor (Ljava/awt/Color;)V 
L5765:  goto L5776 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float 
            stack Object java/lang/Throwable 
        .end stack 
L5768:  astore 22 
L5770:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L5773:  aload 22 
L5775:  athrow 

        .stack same 
L5776:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L5779:  return 
L5780:  
    .end code 
.end method 

.method public getFullTimeDeployed : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship fullTimeDeployed F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method public getTimeDeployedUnderPlayerControl : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship timeDeployedUnderPlayerControl F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method public getTimeDeployedForCRReduction : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship timeDeployed F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method public setTimeDeployed : (F)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     fload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship timeDeployed F 
L5:     return 
L6:     
    .end code 
.end method 

.method public setColor : (Ljava/awt/Color;)V 
    .code stack 2 locals 5 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L4:     aload_1 
L5:     invokevirtual Method com/fs/graphics/Sprite setColor (Ljava/awt/Color;)V 
L8:     aload_0 
L9:     getfield Field com/fs/starfarer/combat/entities/Ship modules Ljava/util/List; 
L12:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L17:    astore_3 
L18:    goto L42 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object java/awt/Color Top Object java/util/Iterator 
            stack 
        .end stack 
L21:    aload_3 
L22:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L27:    checkcast com/fs/starfarer/combat/entities/ship/A/OooO 
L30:    astore_2 
L31:    aload_1 
L32:    astore 4 
L34:    aload_2 
L35:    aload 4 
L37:    invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/A/OooO setColor (Ljava/awt/Color;)V 2 

        .stack same 
L42:    aload_3 
L43:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L48:    ifne L21 
L51:    return 
L52:    
    .end code 
.end method 

.method public getEffects : ()Lcom/fs/starfarer/renderers/damage/if; 
    .code stack 1 locals 1 
L0:     aconst_null 
L1:     areturn 
L2:     
    .end code 
.end method 

.method public setOverloadColor : (Ljava/awt/Color;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship empDecal Lcom/fs/starfarer/renderers/damage/I; 
L4:     ifnull L15 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/entities/Ship empDecal Lcom/fs/starfarer/renderers/damage/I; 
L11:    aload_1 
L12:    invokevirtual Method com/fs/starfarer/renderers/damage/I 'super' (Ljava/awt/Color;)V 

        .stack same 
L15:    return 
L16:    
    .end code 
.end method 

.method public resetOverloadColor : ()V 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship empDecal Lcom/fs/starfarer/renderers/damage/I; 
L4:     ifnull L14 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/entities/Ship empDecal Lcom/fs/starfarer/renderers/damage/I; 
L11:    invokevirtual Method com/fs/starfarer/renderers/damage/I 'Ó00000' ()V 

        .stack same 
L14:    return 
L15:    
    .end code 
.end method 

.method public getOverloadColor : ()Ljava/awt/Color; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship empDecal Lcom/fs/starfarer/renderers/damage/I; 
L4:     ifnull L15 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/entities/Ship empDecal Lcom/fs/starfarer/renderers/damage/I; 
L11:    invokevirtual Method com/fs/starfarer/renderers/damage/I 'Ò00000' ()Ljava/awt/Color; 
L14:    areturn 

        .stack same 
L15:    getstatic Field java/awt/Color white Ljava/awt/Color; 
L18:    areturn 
L19:    
    .end code 
.end method 

.method public init : ()V 
    .code stack 4 locals 7 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship decalRenderer Lcom/fs/starfarer/renderers/damage/String; 
L4:     invokevirtual Method com/fs/starfarer/renderers/damage/String 'Ø00000' ()V 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/entities/Ship engineController Lcom/fs/starfarer/combat/entities/ship/null; 
L11:    invokevirtual Method com/fs/starfarer/combat/entities/ship/null init ()V 
L14:    aload_0 
L15:    new com/fs/starfarer/renderers/damage/I 
L18:    dup 
L19:    aload_0 
L20:    invokespecial Method com/fs/starfarer/renderers/damage/I <init> (Lcom/fs/starfarer/renderers/damage/I$o;)V 
L23:    putfield Field com/fs/starfarer/combat/entities/Ship empDecal Lcom/fs/starfarer/renderers/damage/I; 
L26:    aload_0 
L27:    new com/fs/starfarer/renderers/oOoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 
L30:    dup 
L31:    aload_0 
L32:    invokespecial Method com/fs/starfarer/renderers/oOoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO <init> (Lcom/fs/starfarer/combat/entities/Ship;)V 
L35:    putfield Field com/fs/starfarer/combat/entities/Ship ventingAnimation Lcom/fs/starfarer/renderers/oOoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO; 
L38:    ldc_w +0.75f 
L41:    fstore_1 
L42:    fconst_0 
L43:    fstore_2 
L44:    aload_0 
L45:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getAllWeapons ()Ljava/util/List; 
L48:    astore_3 
L49:    fload_2 
L50:    aload_3 
L51:    invokeinterface InterfaceMethod java/util/List size ()I 1 
L56:    i2f 
L57:    fadd 
L58:    fstore_2 
L59:    aload_3 
L60:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L65:    astore 5 
L67:    goto L122 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Float Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L70:    aload 5 
L72:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L77:    checkcast com/fs/starfarer/api/combat/WeaponAPI 
L80:    astore 4 
L82:    aload 4 
L84:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/WeaponAPI getType ()Lcom/fs/starfarer/api/combat/WeaponAPI$WeaponType; 1 
L89:    astore 6 
L91:    aload 6 
L93:    getstatic Field com/fs/starfarer/api/combat/WeaponAPI$WeaponType DECORATIVE Lcom/fs/starfarer/api/combat/WeaponAPI$WeaponType; 
L96:    if_acmpeq L122 
L99:    aload 6 
L101:   getstatic Field com/fs/starfarer/api/combat/WeaponAPI$WeaponType LAUNCH_BAY Lcom/fs/starfarer/api/combat/WeaponAPI$WeaponType; 
L104:   if_acmpeq L122 
L107:   aload 6 
L109:   getstatic Field com/fs/starfarer/api/combat/WeaponAPI$WeaponType SYSTEM Lcom/fs/starfarer/api/combat/WeaponAPI$WeaponType; 
L112:   if_acmpne L118 
L115:   goto L122 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Float Object java/util/List Object com/fs/starfarer/api/combat/WeaponAPI Object java/util/Iterator Object com/fs/starfarer/api/combat/WeaponAPI$WeaponType 
            stack 
        .end stack 
L118:   fload_2 
L119:   fconst_1 
L120:   fadd 
L121:   fstore_2 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Float Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L122:   aload 5 
L124:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L129:   ifne L70 
L132:   aload_0 
L133:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getEngineController ()Lcom/fs/starfarer/combat/entities/ship/null; 
L136:   invokevirtual Method com/fs/starfarer/combat/entities/ship/null getShipEngines ()Ljava/util/List; 
L139:   astore 4 
L141:   aload 4 
L143:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L148:   astore 6 
L150:   goto L179 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Float Object java/util/List Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L153:   aload 6 
L155:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L160:   checkcast com/fs/starfarer/api/combat/ShipEngineControllerAPI$ShipEngineAPI 
L163:   astore 5 
L165:   aload 5 
L167:   invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ShipEngineControllerAPI$ShipEngineAPI isSystemActivated ()Z 1 
L172:   ifne L179 
L175:   fload_2 
L176:   fconst_1 
L177:   fadd 
L178:   fstore_2 

        .stack same 
L179:   aload 6 
L181:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L186:   ifne L153 
L189:   fload_2 
L190:   fconst_1 
L191:   fcmpg 
L192:   ifge L197 
L195:   fconst_1 
L196:   fstore_2 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Float Object java/util/List Object java/util/List 
            stack 
        .end stack 
L197:   aload_0 
L198:   aload_0 
L199:   getfield Field com/fs/starfarer/combat/entities/Ship spec Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L202:   invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L205:   invokevirtual Method com/fs/starfarer/loading/specs/g getArmorSpec ()Lcom/fs/starfarer/loading/specs/G; 
L208:   invokevirtual Method com/fs/starfarer/loading/specs/G 'super' ()F 
L211:   fload_2 
L212:   fdiv 
L213:   fload_1 
L214:   fmul 
L215:   putfield Field com/fs/starfarer/combat/entities/Ship baseCriticalMalfunctionDamage F 
L218:   return 
L219:   
    .end code 
.end method 

.method public cleanup : ()V 
    .code stack 1 locals 3 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship groups Ljava/util/List; 
L4:     invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L9:     astore_2 
L10:    goto L29 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Top Object java/util/Iterator 
            stack 
        .end stack 
L13:    aload_2 
L14:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L19:    checkcast com/fs/starfarer/combat/oOoO 
L22:    astore_1 
L23:    aload_1 
L24:    invokeinterface InterfaceMethod com/fs/starfarer/combat/oOoO cleanup ()V 1 

        .stack same 
L29:    aload_2 
L30:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L35:    ifne L13 
L38:    aload_0 
L39:    getfield Field com/fs/starfarer/combat/entities/Ship launchBays Ljava/util/List; 
L42:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L47:    astore_2 
L48:    goto L65 

        .stack same 
L51:    aload_2 
L52:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L57:    checkcast com/fs/starfarer/combat/entities/ship/A/C 
L60:    astore_1 
L61:    aload_1 
L62:    invokevirtual Method com/fs/starfarer/combat/entities/ship/A/C cleanup ()V 

        .stack same 
L65:    aload_2 
L66:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L71:    ifne L51 
L74:    aload_0 
L75:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getShield ()Lcom/fs/starfarer/combat/systems/G; 
L78:    ifnull L88 
L81:    aload_0 
L82:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getShield ()Lcom/fs/starfarer/combat/systems/G; 
L85:    invokevirtual Method com/fs/starfarer/combat/systems/G cleanup ()V 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship 
            stack 
        .end stack 
L88:    aload_0 
L89:    getfield Field com/fs/starfarer/combat/entities/Ship engineController Lcom/fs/starfarer/combat/entities/ship/null; 
L92:    invokevirtual Method com/fs/starfarer/combat/entities/ship/null cleanup ()V 
L95:    aload_0 
L96:    getfield Field com/fs/starfarer/combat/entities/Ship decalRenderer Lcom/fs/starfarer/renderers/damage/String; 
L99:    invokevirtual Method com/fs/starfarer/renderers/damage/String int ()V 
L102:   return 
L103:   
    .end code 
.end method 

.method private fire : (ZLorg/lwjgl/util/vector/Vector2f;F)V 
    .code stack 4 locals 4 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship selected Lcom/fs/starfarer/combat/systems/WeaponGroup; 
L4:     ifnull L17 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/entities/Ship selected Lcom/fs/starfarer/combat/systems/WeaponGroup; 
L11:    iload_1 
L12:    aload_2 
L13:    fload_3 
L14:    invokevirtual Method com/fs/starfarer/combat/systems/WeaponGroup advance (ZLjava/lang/Object;F)V 

        .stack same 
L17:    return 
L18:    
    .end code 
.end method 

.method public setNoWeaponSelected : ()V 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     aconst_null 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship selected Lcom/fs/starfarer/combat/systems/WeaponGroup; 
L5:     return 
L6:     
    .end code 
.end method 

.method public getSelectedWeapon : ()Lcom/fs/starfarer/combat/systems/o00O; 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship groups Ljava/util/List; 
L4:     iconst_0 
L5:     invokeinterface InterfaceMethod java/util/List get (I)Ljava/lang/Object; 2 
L10:    checkcast com/fs/starfarer/combat/systems/WeaponGroup 
L13:    invokevirtual Method com/fs/starfarer/combat/systems/WeaponGroup getWeapons ()Ljava/util/List; 
L16:    iconst_0 
L17:    invokeinterface InterfaceMethod java/util/List get (I)Ljava/lang/Object; 2 
L22:    checkcast com/fs/starfarer/combat/systems/o00O 
L25:    areturn 
L26:    
    .end code 
.end method 

.method public clipToShip : (FF)V 
    .code stack 6 locals 4 
L0:     sipush 2960 
L3:     invokestatic Method org/lwjgl/opengl/GL11 glEnable (I)V 
L6:     sipush 3008 
L9:     invokestatic Method org/lwjgl/opengl/GL11 glEnable (I)V 
L12:    sipush 512 
L15:    iconst_0 
L16:    iconst_1 
L17:    invokestatic Method org/lwjgl/opengl/GL11 glStencilFunc (III)V 
L20:    sipush 7681 
L23:    sipush 7681 
L26:    sipush 7681 
L29:    invokestatic Method org/lwjgl/opengl/GL11 glStencilOp (III)V 
L32:    aload_0 
L33:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getCollisionRadius ()F 
L36:    fstore_3 
L37:    fload_3 
L38:    ldc_w +1.5f 
L41:    fmul 
L42:    fstore_3 
L43:    fload_1 
L44:    fload_3 
L45:    fsub 
L46:    fload_2 
L47:    fload_3 
L48:    fsub 
L49:    fload_3 
L50:    fconst_2 
L51:    fmul 
L52:    fload_3 
L53:    fconst_2 
L54:    fmul 
L55:    getstatic Field java/awt/Color white Ljava/awt/Color; 
L58:    fconst_1 
L59:    invokestatic Method com/fs/starfarer/renderers/O 'Ó00000' (FFFFLjava/awt/Color;F)V 
L62:    sipush 517 
L65:    fconst_0 
L66:    invokestatic Method org/lwjgl/opengl/GL11 glAlphaFunc (IF)V 
L69:    sipush 514 
L72:    iconst_1 
L73:    iconst_1 
L74:    invokestatic Method org/lwjgl/opengl/GL11 glStencilFunc (III)V 
L77:    sipush 7681 
L80:    sipush 7681 
L83:    sipush 7681 
L86:    invokestatic Method org/lwjgl/opengl/GL11 glStencilOp (III)V 
L89:    aload_0 
L90:    getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L93:    aload_0 
L94:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getFacing ()F 
L97:    ldc_w +90.0f 
L100:   fsub 
L101:   invokevirtual Method com/fs/graphics/Sprite setAngle (F)V 
L104:   aload_0 
L105:   getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L108:   fload_1 
L109:   fload_2 
L110:   invokevirtual Method com/fs/graphics/Sprite renderAtCenter (FF)V 
L113:   sipush 7680 
L116:   sipush 7680 
L119:   sipush 7680 
L122:   invokestatic Method org/lwjgl/opengl/GL11 glStencilOp (III)V 
L125:   sipush 3008 
L128:   invokestatic Method org/lwjgl/opengl/GL11 glDisable (I)V 
L131:   return 
L132:   
    .end code 
.end method 

.method public clipToBounds : (FFZ)V 
    .code stack 5 locals 4 
L0:     aload_0 
L1:     fload_1 
L2:     fload_2 
L3:     iload_3 
L4:     ldc_w -1.0f 
L7:     invokevirtual Method com/fs/starfarer/combat/entities/Ship clipToBounds (FFZF)V 
L10:    return 
L11:    
    .end code 
.end method 

.method public clipToBounds : (FFZF)V 
    .code stack 6 locals 8 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getVisualBounds ()Lcom/fs/starfarer/combat/E/o0OO; 
L4:     astore 5 
L6:     iload_3 
L7:     ifeq L16 
L10:    aload_0 
L11:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getDecalBounds ()Lcom/fs/starfarer/combat/E/o0OO; 
L14:    astore 5 

        .stack append Object com/fs/starfarer/combat/E/o0OO 
L16:    aload 5 
L18:    ifnonnull L22 
L21:    return 

        .stack same 
L22:    sipush 2960 
L25:    invokestatic Method org/lwjgl/opengl/GL11 glEnable (I)V 
L28:    sipush 3008 
L31:    invokestatic Method org/lwjgl/opengl/GL11 glEnable (I)V 
L34:    sipush 512 
L37:    iconst_0 
L38:    iconst_1 
L39:    invokestatic Method org/lwjgl/opengl/GL11 glStencilFunc (III)V 
L42:    sipush 7681 
L45:    sipush 7681 
L48:    sipush 7681 
L51:    invokestatic Method org/lwjgl/opengl/GL11 glStencilOp (III)V 
L54:    aload_0 
L55:    getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L58:    invokevirtual Method com/fs/graphics/Sprite getWidth ()F 
L61:    aload_0 
L62:    getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L65:    invokevirtual Method com/fs/graphics/Sprite getHeight ()F 
L68:    invokestatic Method java/lang/Math max (FF)F 
L71:    fconst_1 
L72:    fmul 
L73:    fstore 6 
L75:    fload 6 
L77:    fload 4 
L79:    fcmpg 
L80:    ifge L87 
L83:    fload 4 
L85:    fstore 6 

        .stack append Float 
L87:    fload_1 
L88:    fload 6 
L90:    fsub 
L91:    fload_2 
L92:    fload 6 
L94:    fsub 
L95:    fload 6 
L97:    fconst_2 
L98:    fmul 
L99:    fload 6 
L101:   fconst_2 
L102:   fmul 
L103:   getstatic Field java/awt/Color white Ljava/awt/Color; 
L106:   fconst_1 
L107:   invokestatic Method com/fs/starfarer/renderers/O 'Ó00000' (FFFFLjava/awt/Color;F)V 
L110:   sipush 517 
L113:   fconst_0 
L114:   invokestatic Method org/lwjgl/opengl/GL11 glAlphaFunc (IF)V 
L117:   sipush 514 
L120:   iconst_1 
L121:   iconst_1 
L122:   invokestatic Method org/lwjgl/opengl/GL11 glStencilFunc (III)V 
L125:   sipush 7681 
L128:   sipush 7681 
L131:   sipush 7681 
L134:   invokestatic Method org/lwjgl/opengl/GL11 glStencilOp (III)V 
L137:   sipush 3553 
L140:   invokestatic Method org/lwjgl/opengl/GL11 glDisable (I)V 
L143:   sipush 3042 
L146:   invokestatic Method org/lwjgl/opengl/GL11 glDisable (I)V 
L149:   getstatic Field java/awt/Color white Ljava/awt/Color; 
L152:   invokestatic Method com/fs/graphics/util/B 'Ò00000' (Ljava/awt/Color;)V 
L155:   invokestatic Method org/lwjgl/opengl/GL11 glPushMatrix ()V 
L158:   fload_1 
L159:   fload_2 
L160:   fconst_0 
L161:   invokestatic Method org/lwjgl/opengl/GL11 glTranslatef (FFF)V 
L164:   invokestatic Method org/lwjgl/opengl/GL11 glPushMatrix ()V 
L167:   aload_0 
L168:   getfield Field com/fs/starfarer/combat/entities/Ship renderOffset Lorg/lwjgl/util/vector/Vector2f; 
L171:   aload_0 
L172:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getFacing ()F 
L175:   invokestatic Method com/fs/starfarer/prototype/Utils o00000 (Lorg/lwjgl/util/vector/Vector2f;F)Lorg/lwjgl/util/vector/Vector2f; 
L178:   astore 7 
L180:   aload 7 
L182:   getfield Field org/lwjgl/util/vector/Vector2f x F 
L185:   aload 7 
L187:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L190:   fconst_0 
L191:   invokestatic Method org/lwjgl/opengl/GL11 glTranslatef (FFF)V 
L194:   aload_0 
L195:   aconst_null 
L196:   iconst_0 
L197:   fconst_1 
L198:   invokevirtual Method com/fs/starfarer/combat/entities/Ship renderSlotCovers (Ljava/awt/Color;ZF)V 
L201:   sipush 3553 
L204:   invokestatic Method org/lwjgl/opengl/GL11 glDisable (I)V 
L207:   invokestatic Method org/lwjgl/opengl/GL11 glPopMatrix ()V 
L210:   aload_0 
L211:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getFacing ()F 
L214:   fconst_0 
L215:   fconst_0 
L216:   fconst_1 
L217:   invokestatic Method org/lwjgl/opengl/GL11 glRotatef (FFFF)V 
L220:   sipush 512 
L223:   iconst_1 
L224:   iconst_1 
L225:   invokestatic Method org/lwjgl/opengl/GL11 glStencilFunc (III)V 
L228:   aload 5 
L230:   fconst_1 
L231:   fconst_1 
L232:   fconst_1 
L233:   invokestatic Method com/genir/renderer/overrides/Tesselation renderAsPolygon (Lcom/fs/starfarer/combat/E/o0OO;FFF)V
L236:   sipush 514 
L239:   iconst_1 
L240:   iconst_1 
L241:   invokestatic Method org/lwjgl/opengl/GL11 glStencilFunc (III)V 
L244:   invokestatic Method org/lwjgl/opengl/GL11 glPopMatrix ()V 
L247:   sipush 7680 
L250:   sipush 7680 
L253:   sipush 7680 
L256:   invokestatic Method org/lwjgl/opengl/GL11 glStencilOp (III)V 
L259:   sipush 3008 
L262:   invokestatic Method org/lwjgl/opengl/GL11 glDisable (I)V 
L265:   return 
L266:   
    .end code 
.end method 

.method public unclipToShip : ()V 
    .code stack 1 locals 1 
L0:     sipush 2960 
L3:     invokestatic Method org/lwjgl/opengl/GL11 glDisable (I)V 
L6:     return 
L7:     
    .end code 
.end method 

.method private renderShadow : (FFF)V 
    .code stack 4 locals 6 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship launchingShip Lcom/fs/starfarer/combat/entities/Ship; 
L4:     ifnonnull L8 
L7:     return 

        .stack same 
L8:     aload_0 
L9:     getfield Field com/fs/starfarer/combat/entities/Ship shadow Lcom/fs/graphics/Sprite; 
L12:    aload_0 
L13:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getFacing ()F 
L16:    ldc_w +90.0f 
L19:    fsub 
L20:    invokevirtual Method com/fs/graphics/Sprite setAngle (F)V 
L23:    aload_0 
L24:    getfield Field com/fs/starfarer/combat/entities/Ship shadow Lcom/fs/graphics/Sprite; 
L27:    fload_1 
L28:    fload_2 
L29:    invokevirtual Method com/fs/graphics/Sprite setSize (FF)V 
L32:    aload_0 
L33:    getfield Field com/fs/starfarer/combat/entities/Ship shadow Lcom/fs/graphics/Sprite; 
L36:    fload_3 
L37:    invokevirtual Method com/fs/graphics/Sprite setAlphaMult (F)V 
L40:    aload_0 
L41:    getfield Field com/fs/starfarer/combat/entities/Ship launchingShip Lcom/fs/starfarer/combat/entities/Ship; 
L44:    ifnull L100 
L47:    aload_0 
L48:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L51:    getfield Field org/lwjgl/util/vector/Vector2f x F 
L54:    aload_0 
L55:    getfield Field com/fs/starfarer/combat/entities/Ship launchingShip Lcom/fs/starfarer/combat/entities/Ship; 
L58:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L61:    getfield Field org/lwjgl/util/vector/Vector2f x F 
L64:    fsub 
L65:    fstore 4 
L67:    aload_0 
L68:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L71:    getfield Field org/lwjgl/util/vector/Vector2f y F 
L74:    aload_0 
L75:    getfield Field com/fs/starfarer/combat/entities/Ship launchingShip Lcom/fs/starfarer/combat/entities/Ship; 
L78:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L81:    getfield Field org/lwjgl/util/vector/Vector2f y F 
L84:    fsub 
L85:    fstore 5 
L87:    aload_0 
L88:    getfield Field com/fs/starfarer/combat/entities/Ship launchingShip Lcom/fs/starfarer/combat/entities/Ship; 
L91:    fload 4 
L93:    fneg 
L94:    fload 5 
L96:    fneg 
L97:    invokevirtual Method com/fs/starfarer/combat/entities/Ship clipToShip (FF)V 

        .stack same_extended 
L100:   aload_0 
L101:   getfield Field com/fs/starfarer/combat/entities/Ship sinceLaunch F 
L104:   ldc +75.0f 
L106:   fmul 
L107:   ldc +112.5f 
L109:   invokestatic Method java/lang/Math min (FF)F 
L112:   fstore 4 
L114:   aload_0 
L115:   getfield Field com/fs/starfarer/combat/entities/Ship shadow Lcom/fs/graphics/Sprite; 
L118:   fconst_0 
L119:   fconst_0 
L120:   fload 4 
L122:   fsub 
L123:   invokevirtual Method com/fs/graphics/Sprite renderAtCenter (FF)V 
L126:   aload_0 
L127:   getfield Field com/fs/starfarer/combat/entities/Ship launchingShip Lcom/fs/starfarer/combat/entities/Ship; 
L130:   ifnull L140 
L133:   aload_0 
L134:   getfield Field com/fs/starfarer/combat/entities/Ship launchingShip Lcom/fs/starfarer/combat/entities/Ship; 
L137:   invokevirtual Method com/fs/starfarer/combat/entities/Ship unclipToShip ()V 

        .stack append Float 
L140:   return 
L141:   
    .end code 
.end method 

.method public isLanding : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship isLanding Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public getAlphaMult : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship alphaMult F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method public setAlphaMult : (F)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     fload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship alphaMult F 
L5:     return 
L6:     
    .end code 
.end method 

.method public setApplyExtraAlphaToEngines : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship applyExtraAlphaToEngines Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public setExtraAlphaMult : (F)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     fload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship extraAlphaMult F 
L5:     return 
L6:     
    .end code 
.end method 

.method public getExtraAlphaMult : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship extraAlphaMult F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method public setExtraAlphaMult2 : (F)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     fload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship extraAlphaMult2 F 
L5:     return 
L6:     
    .end code 
.end method 

.method public getExtraAlphaMult2 : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship extraAlphaMult2 F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method public setCopyLocation : (Lorg/lwjgl/util/vector/Vector2f;FF)V 
    .code stack 2 locals 4 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship copyLocation Lorg/lwjgl/util/vector/Vector2f; 
L5:     aload_0 
L6:     fload_2 
L7:     putfield Field com/fs/starfarer/combat/entities/Ship copyAlpha F 
L10:    aload_0 
L11:    fload_3 
L12:    putfield Field com/fs/starfarer/combat/entities/Ship copyFacing F 
L15:    return 
L16:    
    .end code 
.end method 

.method public getCopyLocation : ()Lorg/lwjgl/util/vector/Vector2f; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship copyLocation Lorg/lwjgl/util/vector/Vector2f; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public isJitterShields : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship jitterShields Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public setJitterShields : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship jitterShields Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public setJitter : (Ljava/lang/Object;Ljava/awt/Color;FIF)V 
    .code stack 7 locals 6 
L0:     aload_0 
L1:     aload_1 
L2:     aload_2 
L3:     fload_3 
L4:     iload 4 
L6:     fconst_0 
L7:     fload 5 
L9:     invokevirtual Method com/fs/starfarer/combat/entities/Ship setJitter (Ljava/lang/Object;Ljava/awt/Color;FIFF)V 
L12:    return 
L13:    
    .end code 
.end method 

.method public setJitter : (Ljava/lang/Object;Ljava/awt/Color;FIFF)V 
    .code stack 6 locals 8 
L0:     ldc_w +0.10000000149011612f 
L3:     fstore 7 
L5:     aload_0 
L6:     getfield Field com/fs/starfarer/combat/entities/Ship jitterEffectColorShifter Lcom/fs/starfarer/util/ColorShifter; 
L9:     aload_1 
L10:    aload_2 
L11:    fload 7 
L13:    fload 7 
L15:    fconst_1 
L16:    invokevirtual Method com/fs/starfarer/util/ColorShifter shift (Ljava/lang/Object;Ljava/awt/Color;FFF)V 
L19:    aload_0 
L20:    getfield Field com/fs/starfarer/combat/entities/Ship jitterEffectIntensityShifter Lcom/fs/starfarer/util/ValueShifter; 
L23:    aload_1 
L24:    fload_3 
L25:    fload 7 
L27:    fload 7 
L29:    fconst_1 
L30:    invokevirtual Method com/fs/starfarer/util/ValueShifter shift (Ljava/lang/Object;FFFF)V 
L33:    aload_0 
L34:    getfield Field com/fs/starfarer/combat/entities/Ship jitterCopiesShifter Lcom/fs/starfarer/util/ValueShifter; 
L37:    aload_1 
L38:    iload 4 
L40:    i2f 
L41:    fload 7 
L43:    fload 7 
L45:    fconst_1 
L46:    invokevirtual Method com/fs/starfarer/util/ValueShifter shift (Ljava/lang/Object;FFFF)V 
L49:    aload_0 
L50:    getfield Field com/fs/starfarer/combat/entities/Ship jitterMinRangeShifter Lcom/fs/starfarer/util/ValueShifter; 
L53:    aload_1 
L54:    fload 5 
L56:    fload 7 
L58:    fload 7 
L60:    fconst_1 
L61:    invokevirtual Method com/fs/starfarer/util/ValueShifter shift (Ljava/lang/Object;FFFF)V 
L64:    aload_0 
L65:    getfield Field com/fs/starfarer/combat/entities/Ship jitterRangeShifter Lcom/fs/starfarer/util/ValueShifter; 
L68:    aload_1 
L69:    fload 6 
L71:    fload 7 
L73:    fload 7 
L75:    fconst_1 
L76:    invokevirtual Method com/fs/starfarer/util/ValueShifter shift (Ljava/lang/Object;FFFF)V 
L79:    return 
L80:    
    .end code 
.end method 

.method public setJitterUnder : (Ljava/lang/Object;Ljava/awt/Color;FIF)V 
    .code stack 7 locals 6 
L0:     aload_0 
L1:     aload_1 
L2:     aload_2 
L3:     fload_3 
L4:     iload 4 
L6:     fconst_0 
L7:     fload 5 
L9:     invokevirtual Method com/fs/starfarer/combat/entities/Ship setJitterUnder (Ljava/lang/Object;Ljava/awt/Color;FIFF)V 
L12:    return 
L13:    
    .end code 
.end method 

.method public setJitterUnder : (Ljava/lang/Object;Ljava/awt/Color;FIFF)V 
    .code stack 6 locals 8 
L0:     ldc_w +0.10000000149011612f 
L3:     fstore 7 
L5:     aload_0 
L6:     getfield Field com/fs/starfarer/combat/entities/Ship jitterUnderEffectColorShifter Lcom/fs/starfarer/util/ColorShifter; 
L9:     aload_1 
L10:    aload_2 
L11:    fload 7 
L13:    fload 7 
L15:    fconst_1 
L16:    invokevirtual Method com/fs/starfarer/util/ColorShifter shift (Ljava/lang/Object;Ljava/awt/Color;FFF)V 
L19:    aload_0 
L20:    getfield Field com/fs/starfarer/combat/entities/Ship jitterUnderEffectIntensityShifter Lcom/fs/starfarer/util/ValueShifter; 
L23:    aload_1 
L24:    fload_3 
L25:    fload 7 
L27:    fload 7 
L29:    fconst_1 
L30:    invokevirtual Method com/fs/starfarer/util/ValueShifter shift (Ljava/lang/Object;FFFF)V 
L33:    aload_0 
L34:    getfield Field com/fs/starfarer/combat/entities/Ship jitterUnderCopiesShifter Lcom/fs/starfarer/util/ValueShifter; 
L37:    aload_1 
L38:    iload 4 
L40:    i2f 
L41:    fload 7 
L43:    fload 7 
L45:    fconst_1 
L46:    invokevirtual Method com/fs/starfarer/util/ValueShifter shift (Ljava/lang/Object;FFFF)V 
L49:    aload_0 
L50:    getfield Field com/fs/starfarer/combat/entities/Ship jitterUnderMinRangeShifter Lcom/fs/starfarer/util/ValueShifter; 
L53:    aload_1 
L54:    fload 5 
L56:    fload 7 
L58:    fload 7 
L60:    fconst_1 
L61:    invokevirtual Method com/fs/starfarer/util/ValueShifter shift (Ljava/lang/Object;FFFF)V 
L64:    aload_0 
L65:    getfield Field com/fs/starfarer/combat/entities/Ship jitterUnderRangeShifter Lcom/fs/starfarer/util/ValueShifter; 
L68:    aload_1 
L69:    fload 6 
L71:    fload 7 
L73:    fload 7 
L75:    fconst_1 
L76:    invokevirtual Method com/fs/starfarer/util/ValueShifter shift (Ljava/lang/Object;FFFF)V 
L79:    return 
L80:    
    .end code 
.end method 

.method public isVisible : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship visible Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public render : (Lcom/fs/starfarer/api/combat/CombatEngineLayers;Lcom/fs/starfarer/combat/CombatViewport;)V 
    .code stack 4 locals 6 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship doNotRender Z 
L4:     ifeq L8 
L7:     return 

        .stack same 
L8:     aload_0 
L9:     iconst_0 
L10:    putfield Field com/fs/starfarer/combat/entities/Ship visible Z 
L13:    aload_0 
L14:    aload_1 
L15:    aload_2 
L16:    iconst_1 
L17:    invokevirtual Method com/fs/starfarer/combat/entities/Ship render (Lcom/fs/starfarer/api/combat/CombatEngineLayers;Lcom/fs/starfarer/combat/CombatViewport;Z)V 
L20:    aload_0 
L21:    getfield Field com/fs/starfarer/combat/entities/Ship copyLocation Lorg/lwjgl/util/vector/Vector2f; 
L24:    ifnull L107 
L27:    new org/lwjgl/util/vector/Vector2f 
L30:    dup 
L31:    aload_0 
L32:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L35:    invokespecial Method org/lwjgl/util/vector/Vector2f <init> (Lorg/lwjgl/util/vector/ReadableVector2f;)V 
L38:    astore_3 
L39:    aload_0 
L40:    getfield Field com/fs/starfarer/combat/entities/Ship extraAlphaMult F 
L43:    fstore 4 
L45:    aload_0 
L46:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getFacing ()F 
L49:    fstore 5 
L51:    aload_0 
L52:    aload_0 
L53:    getfield Field com/fs/starfarer/combat/entities/Ship copyFacing F 
L56:    invokevirtual Method com/fs/starfarer/combat/entities/Ship setFacing (F)V 
L59:    aload_0 
L60:    aload_0 
L61:    getfield Field com/fs/starfarer/combat/entities/Ship copyAlpha F 
L64:    putfield Field com/fs/starfarer/combat/entities/Ship extraAlphaMult F 
L67:    aload_0 
L68:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L71:    aload_0 
L72:    getfield Field com/fs/starfarer/combat/entities/Ship copyLocation Lorg/lwjgl/util/vector/Vector2f; 
L75:    invokevirtual Method org/lwjgl/util/vector/Vector2f set (Lorg/lwjgl/util/vector/ReadableVector2f;)Lorg/lwjgl/util/vector/Vector2f; 
L78:    pop 
L79:    aload_0 
L80:    aload_1 
L81:    aload_2 
L82:    iconst_1 
L83:    invokevirtual Method com/fs/starfarer/combat/entities/Ship render (Lcom/fs/starfarer/api/combat/CombatEngineLayers;Lcom/fs/starfarer/combat/CombatViewport;Z)V 
L86:    aload_0 
L87:    fload 5 
L89:    invokevirtual Method com/fs/starfarer/combat/entities/Ship setFacing (F)V 
L92:    aload_0 
L93:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L96:    aload_3 
L97:    invokevirtual Method org/lwjgl/util/vector/Vector2f set (Lorg/lwjgl/util/vector/ReadableVector2f;)Lorg/lwjgl/util/vector/Vector2f; 
L100:   pop 
L101:   aload_0 
L102:   fload 4 
L104:   putfield Field com/fs/starfarer/combat/entities/Ship extraAlphaMult F 

        .stack same_extended 
L107:   return 
L108:   
    .end code 
.end method 

.method public renderDecorativeModules : (Lcom/fs/starfarer/api/combat/CombatEngineLayers;Lcom/fs/starfarer/combat/CombatViewport;)V 
    .code stack 4 locals 5 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship modules Ljava/util/List; 
L4:     invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L9:     astore 4 
L11:    goto L52 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/api/combat/CombatEngineLayers Object com/fs/starfarer/combat/CombatViewport Top Object java/util/Iterator 
            stack 
        .end stack 
L14:    aload 4 
L16:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L21:    checkcast com/fs/starfarer/combat/entities/ship/A/OooO 
L24:    astore_3 
L25:    aload_3 
L26:    invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/A/OooO getSlot ()Lcom/fs/starfarer/loading/specs/nullsuper; 1 
L31:    invokevirtual Method com/fs/starfarer/loading/specs/nullsuper isDecorative ()Z 
L34:    ifne L40 
L37:    goto L52 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/api/combat/CombatEngineLayers Object com/fs/starfarer/combat/CombatViewport Object com/fs/starfarer/combat/entities/ship/A/OooO Object java/util/Iterator 
            stack 
        .end stack 
L40:    aload_3 
L41:    aload_1 
L42:    aload_2 
L43:    aload_0 
L44:    getfield Field com/fs/starfarer/combat/entities/Ship alphaMult F 
L47:    invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/A/OooO render (Lcom/fs/starfarer/api/combat/CombatEngineLayers;Lcom/fs/starfarer/combat/CombatViewport;F)V 4 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/api/combat/CombatEngineLayers Object com/fs/starfarer/combat/CombatViewport Top Object java/util/Iterator 
            stack 
        .end stack 
L52:    aload 4 
L54:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L59:    ifne L14 
L62:    return 
L63:    
    .end code 
.end method 

.method public renderNonDecorativeModules : (Lcom/fs/starfarer/api/combat/CombatEngineLayers;Lcom/fs/starfarer/combat/CombatViewport;)V 
    .code stack 4 locals 5 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship modules Ljava/util/List; 
L4:     invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L9:     astore 4 
L11:    goto L52 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/api/combat/CombatEngineLayers Object com/fs/starfarer/combat/CombatViewport Top Object java/util/Iterator 
            stack 
        .end stack 
L14:    aload 4 
L16:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L21:    checkcast com/fs/starfarer/combat/entities/ship/A/OooO 
L24:    astore_3 
L25:    aload_3 
L26:    invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/A/OooO getSlot ()Lcom/fs/starfarer/loading/specs/nullsuper; 1 
L31:    invokevirtual Method com/fs/starfarer/loading/specs/nullsuper isDecorative ()Z 
L34:    ifeq L40 
L37:    goto L52 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/api/combat/CombatEngineLayers Object com/fs/starfarer/combat/CombatViewport Object com/fs/starfarer/combat/entities/ship/A/OooO Object java/util/Iterator 
            stack 
        .end stack 
L40:    aload_3 
L41:    aload_1 
L42:    aload_2 
L43:    aload_0 
L44:    getfield Field com/fs/starfarer/combat/entities/Ship alphaMult F 
L47:    invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/A/OooO render (Lcom/fs/starfarer/api/combat/CombatEngineLayers;Lcom/fs/starfarer/combat/CombatViewport;F)V 4 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/api/combat/CombatEngineLayers Object com/fs/starfarer/combat/CombatViewport Top Object java/util/Iterator 
            stack 
        .end stack 
L52:    aload 4 
L54:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L59:    ifne L14 
L62:    return 
L63:    
    .end code 
.end method 

.method public renderModules : (Lcom/fs/starfarer/api/combat/CombatEngineLayers;Lcom/fs/starfarer/combat/CombatViewport;)V 
    .code stack 4 locals 5 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship modules Ljava/util/List; 
L4:     invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L9:     astore 4 
L11:    goto L37 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/api/combat/CombatEngineLayers Object com/fs/starfarer/combat/CombatViewport Top Object java/util/Iterator 
            stack 
        .end stack 
L14:    aload 4 
L16:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L21:    checkcast com/fs/starfarer/combat/entities/ship/A/OooO 
L24:    astore_3 
L25:    aload_3 
L26:    aload_1 
L27:    aload_2 
L28:    aload_0 
L29:    getfield Field com/fs/starfarer/combat/entities/Ship alphaMult F 
L32:    invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/A/OooO render (Lcom/fs/starfarer/api/combat/CombatEngineLayers;Lcom/fs/starfarer/combat/CombatViewport;F)V 4 

        .stack same 
L37:    aload 4 
L39:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L44:    ifne L14 
L47:    return 
L48:    
    .end code 
.end method 

.method public getCombinedAlphaMult : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship combinedAlphaMult F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method public isShowModuleJitterUnder : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship showModuleJitterUnder Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public setShowModuleJitterUnder : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship showModuleJitterUnder Z 
L5:     return 
L6:     
    .end code 
.end method 

.method private renderAfterimages : (Z)V 
    .code stack 7 locals 14 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getVisualBounds ()Lcom/fs/starfarer/combat/E/o0OO; 
L4:     ifnull L8 
L7:     return 

        .stack same 
L8:     ldc_w 'Afterimage rendering' 
L11:    invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L14:    aload_0 
L15:    getfield Field com/fs/starfarer/combat/entities/Ship combinedAlphaMult F 
L18:    fstore_2 
L19:    invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L22:    invokevirtual Method com/fs/starfarer/combat/CombatEngine isPaused ()Z 
L25:    ifne L35 
L28:    aload_0 
L29:    getfield Field com/fs/starfarer/combat/entities/Ship jitterUnder Lcom/fs/starfarer/renderers/JitterRenderer; 
L32:    invokevirtual Method com/fs/starfarer/renderers/JitterRenderer updateSeed ()V 

        .stack append Float 
L35:    aload_0 
L36:    getfield Field com/fs/starfarer/combat/entities/Ship jitterUnder Lcom/fs/starfarer/renderers/JitterRenderer; 
L39:    invokevirtual Method com/fs/starfarer/renderers/JitterRenderer getRandom ()Ljava/util/Random; 
L42:    pop 
L43:    aload_0 
L44:    getfield Field com/fs/starfarer/combat/entities/Ship jitterUnder Lcom/fs/starfarer/renderers/JitterRenderer; 
L47:    iconst_0 
L48:    invokevirtual Method com/fs/starfarer/renderers/JitterRenderer setSetSeedOnRender (Z)V 
L51:    aload_0 
L52:    getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L55:    invokevirtual Method com/fs/graphics/Sprite getColor ()Ljava/awt/Color; 
L58:    astore_3 
L59:    aload_0 
L60:    getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L63:    invokevirtual Method com/fs/graphics/Sprite getWidth ()F 
L66:    fstore 4 
L68:    aload_0 
L69:    getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L72:    invokevirtual Method com/fs/graphics/Sprite getHeight ()F 
L75:    fstore 5 
L77:    aload_0 
L78:    getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L81:    invokevirtual Method com/fs/graphics/Sprite getAngle ()F 
L84:    fstore 6 
L86:    fconst_0 
L87:    fstore 7 
L89:    aload_0 
L90:    getfield Field com/fs/starfarer/combat/entities/Ship afterimages Ljava/util/List; 
L93:    invokeinterface InterfaceMethod java/util/List size ()I 1 
L98:    i2f 
L99:    fstore 8 
L101:   aload_0 
L102:   getfield Field com/fs/starfarer/combat/entities/Ship afterimages Ljava/util/List; 
L105:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L110:   astore 10 
L112:   goto L333 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Integer Float Object java/awt/Color Float Float Float Float Float Top Object java/util/Iterator 
            stack 
        .end stack 
L115:   aload 10 
L117:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L122:   checkcast com/fs/starfarer/combat/entities/Ship$o 
L125:   astore 9 
L127:   aload 9 
L129:   getfield Field com/fs/starfarer/combat/entities/Ship$o 'õ00000' Z 
L132:   iload_1 
L133:   if_icmpeq L139 
L136:   goto L333 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Integer Float Object java/awt/Color Float Float Float Float Float Object com/fs/starfarer/combat/entities/Ship$o Object java/util/Iterator 
            stack 
        .end stack 
L139:   aload 9 
L141:   getfield Field com/fs/starfarer/combat/entities/Ship$o class Ljava/awt/Color; 
L144:   astore 11 
L146:   aload 9 
L148:   getfield Field com/fs/starfarer/combat/entities/Ship$o new Z 
L151:   ifeq L251 
L154:   aload_0 
L155:   getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L158:   invokevirtual Method com/fs/graphics/Sprite getAverageColor ()Ljava/awt/Color; 
L161:   aload 9 
L163:   getfield Field com/fs/starfarer/combat/entities/Ship$o class Ljava/awt/Color; 
L166:   invokestatic Method com/fs/graphics/util/B o00000 (Ljava/awt/Color;Ljava/awt/Color;)Ljava/awt/Color; 
L169:   astore 11 
L171:   aload 11 
L173:   invokevirtual Method java/awt/Color getRed ()I 
L176:   i2f 
L177:   fstore 12 
L179:   aload 11 
L181:   invokevirtual Method java/awt/Color getGreen ()I 
L184:   i2f 
L185:   fload 12 
L187:   fcmpl 
L188:   ifle L199 
L191:   aload 11 
L193:   invokevirtual Method java/awt/Color getGreen ()I 
L196:   i2f 
L197:   fstore 12 

        .stack append Object java/awt/Color Float 
L199:   aload 11 
L201:   invokevirtual Method java/awt/Color getBlue ()I 
L204:   i2f 
L205:   fload 12 
L207:   fcmpl 
L208:   ifle L219 
L211:   aload 11 
L213:   invokevirtual Method java/awt/Color getBlue ()I 
L216:   i2f 
L217:   fstore 12 

        .stack same 
L219:   ldc_w +255.0f 
L222:   fload 12 
L224:   fdiv 
L225:   fstore 13 
L227:   aload 11 
L229:   fload 13 
L231:   invokestatic Method com/fs/graphics/util/B return (Ljava/awt/Color;F)Ljava/awt/Color; 
L234:   astore 11 
L236:   aload 11 
L238:   aload 9 
L240:   getfield Field com/fs/starfarer/combat/entities/Ship$o class Ljava/awt/Color; 
L243:   invokevirtual Method java/awt/Color getAlpha ()I 
L246:   invokestatic Method com/fs/graphics/util/B 'Ò00000' (Ljava/awt/Color;I)Ljava/awt/Color; 
L249:   astore 11 

        .stack chop 1 
L251:   aload_0 
L252:   getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L255:   aload 11 
L257:   invokevirtual Method com/fs/graphics/Sprite setColor (Ljava/awt/Color;)V 
L260:   aload_0 
L261:   getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L264:   fload_2 
L265:   aload 9 
L267:   invokevirtual Method com/fs/starfarer/combat/entities/Ship$o new ()F 
L270:   fmul 
L271:   invokevirtual Method com/fs/graphics/Sprite setAlphaMult (F)V 
L274:   aload 9 
L276:   getfield Field com/fs/starfarer/combat/entities/Ship$o 'Ø00000' Z 
L279:   ifeq L292 
L282:   aload_0 
L283:   getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L286:   invokevirtual Method com/fs/graphics/Sprite setAdditiveBlend ()V 
L289:   goto L299 

        .stack same 
L292:   aload_0 
L293:   getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L296:   invokevirtual Method com/fs/graphics/Sprite setNormalBlend ()V 

        .stack same 
L299:   aload_0 
L300:   getfield Field com/fs/starfarer/combat/entities/Ship jitterUnder Lcom/fs/starfarer/renderers/JitterRenderer; 
L303:   aload_0 
L304:   getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L307:   aload 9 
L309:   getfield Field com/fs/starfarer/combat/entities/Ship$o null Lorg/lwjgl/util/vector/Vector2f; 
L312:   getfield Field org/lwjgl/util/vector/Vector2f x F 
L315:   aload 9 
L317:   getfield Field com/fs/starfarer/combat/entities/Ship$o null Lorg/lwjgl/util/vector/Vector2f; 
L320:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L323:   fconst_0 
L324:   aload 9 
L326:   getfield Field com/fs/starfarer/combat/entities/Ship$o 'Ó00000' F 
L329:   iconst_1 
L330:   invokevirtual Method com/fs/starfarer/renderers/JitterRenderer render (Lcom/fs/graphics/Sprite;FFFFI)V 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Integer Float Object java/awt/Color Float Float Float Float Float Top Object java/util/Iterator 
            stack 
        .end stack 
L333:   aload 10 
L335:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L340:   ifne L115 
L343:   aload_0 
L344:   getfield Field com/fs/starfarer/combat/entities/Ship afterimages Ljava/util/List; 
L347:   invokeinterface InterfaceMethod java/util/List isEmpty ()Z 1 
L352:   ifne L398 
L355:   aload_0 
L356:   getfield Field com/fs/starfarer/combat/entities/Ship jitterUnder Lcom/fs/starfarer/renderers/JitterRenderer; 
L359:   iconst_1 
L360:   invokevirtual Method com/fs/starfarer/renderers/JitterRenderer setSetSeedOnRender (Z)V 
L363:   aload_0 
L364:   getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L367:   aload_3 
L368:   invokevirtual Method com/fs/graphics/Sprite setColor (Ljava/awt/Color;)V 
L371:   aload_0 
L372:   getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L375:   invokevirtual Method com/fs/graphics/Sprite setNormalBlend ()V 
L378:   aload_0 
L379:   getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L382:   fload 6 
L384:   invokevirtual Method com/fs/graphics/Sprite setAngle (F)V 
L387:   aload_0 
L388:   getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L391:   fload 4 
L393:   fload 5 
L395:   invokevirtual Method com/fs/graphics/Sprite setSize (FF)V 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Integer Float Object java/awt/Color Float Float Float Float Float 
            stack 
        .end stack 
L398:   invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L401:   return 
L402:   
    .end code 
.end method 

.method public setCircularJitter : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship jitterUnder Lcom/fs/starfarer/renderers/JitterRenderer; 
L4:     ifnull L15 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/entities/Ship jitterUnder Lcom/fs/starfarer/renderers/JitterRenderer; 
L11:    iload_1 
L12:    invokevirtual Method com/fs/starfarer/renderers/JitterRenderer setUseCircularJitter (Z)V 

        .stack same 
L15:    aload_0 
L16:    getfield Field com/fs/starfarer/combat/entities/Ship jitter Lcom/fs/starfarer/renderers/JitterRenderer; 
L19:    ifnull L30 
L22:    aload_0 
L23:    getfield Field com/fs/starfarer/combat/entities/Ship jitter Lcom/fs/starfarer/renderers/JitterRenderer; 
L26:    iload_1 
L27:    invokevirtual Method com/fs/starfarer/renderers/JitterRenderer setUseCircularJitter (Z)V 

        .stack same 
L30:    return 
L31:    
    .end code 
.end method 

.method private renderJitterUnder : (Lcom/fs/starfarer/combat/CombatViewport;)V 
    .code stack 7 locals 18 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship isPiece ()Z 
L4:     ifeq L8 
L7:     return 

        .stack same 
L8:     aload_0 
L9:     getfield Field com/fs/starfarer/combat/entities/Ship jitterUnderEffectColorShifter Lcom/fs/starfarer/util/ColorShifter; 
L12:    invokevirtual Method com/fs/starfarer/util/ColorShifter getCurr ()Ljava/awt/Color; 
L15:    astore_2 
L16:    aload_0 
L17:    getfield Field com/fs/starfarer/combat/entities/Ship jitterUnderEffectIntensityShifter Lcom/fs/starfarer/util/ValueShifter; 
L20:    invokevirtual Method com/fs/starfarer/util/ValueShifter getCurr ()F 
L23:    fstore_3 
L24:    aload_0 
L25:    getfield Field com/fs/starfarer/combat/entities/Ship jitterUnderCopiesShifter Lcom/fs/starfarer/util/ValueShifter; 
L28:    invokevirtual Method com/fs/starfarer/util/ValueShifter getCurr ()F 
L31:    f2i 
L32:    istore 4 
L34:    iload 4 
L36:    iconst_1 
L37:    if_icmpge L53 
L40:    aload_0 
L41:    getfield Field com/fs/starfarer/combat/entities/Ship jitterUnderCopiesShifter Lcom/fs/starfarer/util/ValueShifter; 
L44:    invokevirtual Method com/fs/starfarer/util/ValueShifter isShifted ()Z 
L47:    ifeq L53 
L50:    iconst_1 
L51:    istore 4 

        .stack append Object java/awt/Color Float Integer 
L53:    aload_0 
L54:    getfield Field com/fs/starfarer/combat/entities/Ship jitterUnderMinRangeShifter Lcom/fs/starfarer/util/ValueShifter; 
L57:    invokevirtual Method com/fs/starfarer/util/ValueShifter getCurr ()F 
L60:    fstore 5 
L62:    aload_0 
L63:    getfield Field com/fs/starfarer/combat/entities/Ship jitterUnderRangeShifter Lcom/fs/starfarer/util/ValueShifter; 
L66:    invokevirtual Method com/fs/starfarer/util/ValueShifter getCurr ()F 
L69:    fstore 6 
L71:    aload_0 
L72:    getfield Field com/fs/starfarer/combat/entities/Ship jitterUnderEffectColorShifter Lcom/fs/starfarer/util/ColorShifter; 
L75:    invokevirtual Method com/fs/starfarer/util/ColorShifter isShifted ()Z 
L78:    ifeq L904 
L81:    fload_3 
L82:    fconst_0 
L83:    fcmpl 
L84:    ifle L904 
L87:    aload_2 
L88:    ifnull L904 
L91:    ldc_w 'Jitter under rendering' 
L94:    invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L97:    aload_0 
L98:    getfield Field com/fs/starfarer/combat/entities/Ship combinedAlphaMult F 
L101:   fload_3 
L102:   fmul 
L103:   fstore 7 
L105:   aload_0 
L106:   getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L109:   invokevirtual Method com/fs/graphics/Sprite getColor ()Ljava/awt/Color; 
L112:   astore 8 
L114:   aload_0 
L115:   getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L118:   aload_2 
L119:   invokevirtual Method com/fs/graphics/Sprite setColor (Ljava/awt/Color;)V 
L122:   aload_0 
L123:   getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L126:   fload 7 
L128:   invokevirtual Method com/fs/graphics/Sprite setAlphaMult (F)V 
L131:   aload_0 
L132:   getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L135:   invokevirtual Method com/fs/graphics/Sprite setAdditiveBlend ()V 
L138:   fload 5 
L140:   fstore 9 
L142:   aload_0 
L143:   getfield Field com/fs/starfarer/combat/entities/Ship doNotRenderSprite Z 
L146:   ifne L170 
L149:   aload_0 
L150:   getfield Field com/fs/starfarer/combat/entities/Ship jitterUnder Lcom/fs/starfarer/renderers/JitterRenderer; 
L153:   aload_0 
L154:   getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L157:   fconst_0 
L158:   fconst_0 
L159:   fload 9 
L161:   fload 6 
L163:   fload_3 
L164:   fmul 
L165:   iload 4 
L167:   invokevirtual Method com/fs/starfarer/renderers/JitterRenderer render (Lcom/fs/graphics/Sprite;FFFFI)V 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/CombatViewport Object java/awt/Color Float Integer Float Float Float Object java/awt/Color Float 
            stack 
        .end stack 
L170:   aload_0 
L171:   getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L174:   aload 8 
L176:   invokevirtual Method com/fs/graphics/Sprite setColor (Ljava/awt/Color;)V 
L179:   aload_0 
L180:   getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L183:   invokevirtual Method com/fs/graphics/Sprite setNormalBlend ()V 
L186:   aload_0 
L187:   getfield Field com/fs/starfarer/combat/entities/Ship jitterUnder Lcom/fs/starfarer/renderers/JitterRenderer; 
L190:   invokevirtual Method com/fs/starfarer/renderers/JitterRenderer getRandom ()Ljava/util/Random; 
L193:   astore 10 
L195:   fload 6 
L197:   fload_3 
L198:   fmul 
L199:   fstore 11 
L201:   ldc_w 'Module jitter under' 
L204:   invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L207:   aload_0 
L208:   getfield Field com/fs/starfarer/combat/entities/Ship showModuleJitterUnder Z 
L211:   ifeq L543 
L214:   aload_0 
L215:   getfield Field com/fs/starfarer/combat/entities/Ship doNotRenderWeapons Z 
L218:   ifne L543 
L221:   aconst_null 
L222:   astore 12 
L224:   aload_0 
L225:   getfield Field com/fs/starfarer/combat/entities/Ship shield Lcom/fs/starfarer/combat/systems/G; 
L228:   ifnull L239 
L231:   aload_0 
L232:   getfield Field com/fs/starfarer/combat/entities/Ship shield Lcom/fs/starfarer/combat/systems/G; 
L235:   iconst_1 
L236:   invokevirtual Method com/fs/starfarer/combat/systems/G setRenderAdditive (Z)V 

        .stack append Object java/util/Random Float Object com/fs/graphics/util/GLListManager$GLListToken 
L239:   iconst_0 
L240:   istore 13 
L242:   goto L536 

        .stack append Integer 
L245:   new org/lwjgl/util/vector/Vector2f 
L248:   dup 
L249:   invokespecial Method org/lwjgl/util/vector/Vector2f <init> ()V 
L252:   astore 14 
L254:   fload 9 
L256:   fconst_0 
L257:   fcmpg 
L258:   ifgt L300 
L261:   aload 14 
L263:   aload 10 
L265:   invokevirtual Method java/util/Random nextFloat ()F 
L268:   fload 11 
L270:   fmul 
L271:   fload 11 
L273:   fconst_2 
L274:   fdiv 
L275:   fsub 
L276:   putfield Field org/lwjgl/util/vector/Vector2f x F 
L279:   aload 14 
L281:   aload 10 
L283:   invokevirtual Method java/util/Random nextFloat ()F 
L286:   fload 11 
L288:   fmul 
L289:   fload 11 
L291:   fconst_2 
L292:   fdiv 
L293:   fsub 
L294:   putfield Field org/lwjgl/util/vector/Vector2f y F 
L297:   goto L418 

        .stack append Object org/lwjgl/util/vector/Vector2f 
L300:   aload 14 
L302:   aload 10 
L304:   invokevirtual Method java/util/Random nextFloat ()F 
L307:   fload 11 
L309:   fload 5 
L311:   fsub 
L312:   fmul 
L313:   fload 5 
L315:   fadd 
L316:   putfield Field org/lwjgl/util/vector/Vector2f x F 
L319:   aload 14 
L321:   aload 10 
L323:   invokevirtual Method java/util/Random nextFloat ()F 
L326:   fload 11 
L328:   fload 5 
L330:   fsub 
L331:   fmul 
L332:   fload 5 
L334:   fadd 
L335:   putfield Field org/lwjgl/util/vector/Vector2f y F 
L338:   aload 14 
L340:   getfield Field org/lwjgl/util/vector/Vector2f x F 
L343:   fload 5 
L345:   fcmpg 
L346:   ifge L356 
L349:   aload 14 
L351:   fload 5 
L353:   putfield Field org/lwjgl/util/vector/Vector2f x F 

        .stack same 
L356:   aload 14 
L358:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L361:   fload 5 
L363:   fcmpg 
L364:   ifge L374 
L367:   aload 14 
L369:   fload 5 
L371:   putfield Field org/lwjgl/util/vector/Vector2f y F 

        .stack same 
L374:   aload 14 
L376:   dup 
L377:   getfield Field org/lwjgl/util/vector/Vector2f x F 
L380:   aload 10 
L382:   invokevirtual Method java/util/Random nextFloat ()F 
L385:   ldc_w +0.5f 
L388:   fsub 
L389:   invokestatic Method java/lang/Math signum (F)F 
L392:   fmul 
L393:   putfield Field org/lwjgl/util/vector/Vector2f x F 
L396:   aload 14 
L398:   dup 
L399:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L402:   aload 10 
L404:   invokevirtual Method java/util/Random nextFloat ()F 
L407:   ldc_w +0.5f 
L410:   fsub 
L411:   invokestatic Method java/lang/Math signum (F)F 
L414:   fmul 
L415:   putfield Field org/lwjgl/util/vector/Vector2f y F 

        .stack same 
L418:   invokestatic Method org/lwjgl/opengl/GL11 glPushMatrix ()V 
L421:   aload 12 
L423:   invokestatic Method com/fs/graphics/util/GLListManager callList (Lcom/fs/graphics/util/GLListManager$GLListToken;)Z 
L426:   istore 15 
L428:   iload 15 
L430:   ifne L530 
L433:   invokestatic Method com/fs/graphics/util/GLListManager beginList ()Lcom/fs/graphics/util/GLListManager$GLListToken; 
L436:   astore 12 
L438:   aload_0 
L439:   aload_2 
L440:   iconst_1 
L441:   fload 7 
L443:   invokevirtual Method com/fs/starfarer/combat/entities/Ship renderSlotCovers (Ljava/awt/Color;ZF)V 
L446:   aload_0 
L447:   getfield Field com/fs/starfarer/combat/entities/Ship modules Ljava/util/List; 
L450:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L455:   astore 17 
L457:   goto L517 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/CombatViewport Object java/awt/Color Float Integer Float Float Float Object java/awt/Color Float Object java/util/Random Float Object com/fs/graphics/util/GLListManager$GLListToken Integer Object org/lwjgl/util/vector/Vector2f Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L460:   aload 17 
L462:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L467:   checkcast com/fs/starfarer/combat/entities/ship/A/OooO 
L470:   astore 16 
L472:   aload 16 
L474:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/A/OooO setAdditiveBlend ()V 1 
L479:   aload 16 
L481:   aload_2 
L482:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/A/OooO setColor (Ljava/awt/Color;)V 2 
L487:   aload 16 
L489:   aload_0 
L490:   getfield Field com/fs/starfarer/combat/entities/Ship layer Lcom/fs/starfarer/api/combat/CombatEngineLayers; 
L493:   aload_1 
L494:   fload 7 
L496:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/A/OooO render (Lcom/fs/starfarer/api/combat/CombatEngineLayers;Lcom/fs/starfarer/combat/CombatViewport;F)V 4 
L501:   aload 16 
L503:   aload 8 
L505:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/A/OooO setColor (Ljava/awt/Color;)V 2 
L510:   aload 16 
L512:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/A/OooO setNormalBlend ()V 1 

        .stack same 
L517:   aload 17 
L519:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L524:   ifne L460 
L527:   invokestatic Method com/fs/graphics/util/GLListManager endList ()V 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/CombatViewport Object java/awt/Color Float Integer Float Float Float Object java/awt/Color Float Object java/util/Random Float Object com/fs/graphics/util/GLListManager$GLListToken Integer Object org/lwjgl/util/vector/Vector2f Integer 
            stack 
        .end stack 
L530:   invokestatic Method org/lwjgl/opengl/GL11 glPopMatrix ()V 
L533:   iinc 13 1 

        .stack chop 2 
L536:   iload 13 
L538:   iload 4 
L540:   if_icmplt L245 

        .stack chop 2 
L543:   aload_0 
L544:   getfield Field com/fs/starfarer/combat/entities/Ship shield Lcom/fs/starfarer/combat/systems/G; 
L547:   ifnull L883 
L550:   aload_0 
L551:   getfield Field com/fs/starfarer/combat/entities/Ship jitterShields Z 
L554:   ifeq L883 
L557:   aload_0 
L558:   getfield Field com/fs/starfarer/combat/entities/Ship doNotRenderShield Z 
L561:   ifne L883 
L564:   iconst_0 
L565:   istore 12 
L567:   goto L877 

        .stack append Integer 
L570:   new org/lwjgl/util/vector/Vector2f 
L573:   dup 
L574:   invokespecial Method org/lwjgl/util/vector/Vector2f <init> ()V 
L577:   astore 13 
L579:   fload 9 
L581:   fconst_0 
L582:   fcmpg 
L583:   ifgt L625 
L586:   aload 13 
L588:   aload 10 
L590:   invokevirtual Method java/util/Random nextFloat ()F 
L593:   fload 11 
L595:   fmul 
L596:   fload 11 
L598:   fconst_2 
L599:   fdiv 
L600:   fsub 
L601:   putfield Field org/lwjgl/util/vector/Vector2f x F 
L604:   aload 13 
L606:   aload 10 
L608:   invokevirtual Method java/util/Random nextFloat ()F 
L611:   fload 11 
L613:   fmul 
L614:   fload 11 
L616:   fconst_2 
L617:   fdiv 
L618:   fsub 
L619:   putfield Field org/lwjgl/util/vector/Vector2f y F 
L622:   goto L743 

        .stack append Object org/lwjgl/util/vector/Vector2f 
L625:   aload 13 
L627:   aload 10 
L629:   invokevirtual Method java/util/Random nextFloat ()F 
L632:   fload 11 
L634:   fload 5 
L636:   fsub 
L637:   fmul 
L638:   fload 5 
L640:   fadd 
L641:   putfield Field org/lwjgl/util/vector/Vector2f x F 
L644:   aload 13 
L646:   aload 10 
L648:   invokevirtual Method java/util/Random nextFloat ()F 
L651:   fload 11 
L653:   fload 5 
L655:   fsub 
L656:   fmul 
L657:   fload 5 
L659:   fadd 
L660:   putfield Field org/lwjgl/util/vector/Vector2f y F 
L663:   aload 13 
L665:   getfield Field org/lwjgl/util/vector/Vector2f x F 
L668:   fload 5 
L670:   fcmpg 
L671:   ifge L681 
L674:   aload 13 
L676:   fload 5 
L678:   putfield Field org/lwjgl/util/vector/Vector2f x F 

        .stack same 
L681:   aload 13 
L683:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L686:   fload 5 
L688:   fcmpg 
L689:   ifge L699 
L692:   aload 13 
L694:   fload 5 
L696:   putfield Field org/lwjgl/util/vector/Vector2f y F 

        .stack same 
L699:   aload 13 
L701:   dup 
L702:   getfield Field org/lwjgl/util/vector/Vector2f x F 
L705:   aload 10 
L707:   invokevirtual Method java/util/Random nextFloat ()F 
L710:   ldc_w +0.5f 
L713:   fsub 
L714:   invokestatic Method java/lang/Math signum (F)F 
L717:   fmul 
L718:   putfield Field org/lwjgl/util/vector/Vector2f x F 
L721:   aload 13 
L723:   dup 
L724:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L727:   aload 10 
L729:   invokevirtual Method java/util/Random nextFloat ()F 
L732:   ldc_w +0.5f 
L735:   fsub 
L736:   invokestatic Method java/lang/Math signum (F)F 
L739:   fmul 
L740:   putfield Field org/lwjgl/util/vector/Vector2f y F 

        .stack same 
L743:   invokestatic Method org/lwjgl/opengl/GL11 glPushMatrix ()V 
L746:   aload 13 
L748:   getfield Field org/lwjgl/util/vector/Vector2f x F 
L751:   aload 13 
L753:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L756:   fconst_0 
L757:   invokestatic Method org/lwjgl/opengl/GL11 glTranslatef (FFF)V 
L760:   aload_0 
L761:   getfield Field com/fs/starfarer/combat/entities/Ship shield Lcom/fs/starfarer/combat/systems/G; 
L764:   ifnull L871 
L767:   invokestatic Method com/fs/starfarer/api/Global getSettings ()Lcom/fs/starfarer/api/SettingsAPI; 
L770:   ldc_w 'renderShieldJitterEffect' 
L773:   invokeinterface InterfaceMethod com/fs/starfarer/api/SettingsAPI getBoolean (Ljava/lang/String;)Z 2 
L778:   ifeq L871 
L781:   aconst_null 
L782:   astore 14 
L784:   aload 14 
L786:   invokestatic Method com/fs/graphics/util/GLListManager callList (Lcom/fs/graphics/util/GLListManager$GLListToken;)Z 
L789:   istore 15 
L791:   iload 15 
L793:   ifne L871 
L796:   invokestatic Method com/fs/graphics/util/GLListManager beginList ()Lcom/fs/graphics/util/GLListManager$GLListToken; 
L799:   astore 14 
L801:   aload_0 
L802:   getfield Field com/fs/starfarer/combat/entities/Ship shield Lcom/fs/starfarer/combat/systems/G; 
L805:   invokevirtual Method com/fs/starfarer/combat/systems/G getInnerColor ()Ljava/awt/Color; 
L808:   astore 16 
L810:   aload_0 
L811:   getfield Field com/fs/starfarer/combat/entities/Ship shield Lcom/fs/starfarer/combat/systems/G; 
L814:   invokevirtual Method com/fs/starfarer/combat/systems/G getRingColor ()Ljava/awt/Color; 
L817:   astore 17 
L819:   aload_0 
L820:   getfield Field com/fs/starfarer/combat/entities/Ship shield Lcom/fs/starfarer/combat/systems/G; 
L823:   aload_2 
L824:   invokevirtual Method com/fs/starfarer/combat/systems/G setInnerColor (Ljava/awt/Color;)V 
L827:   aload_0 
L828:   getfield Field com/fs/starfarer/combat/entities/Ship shield Lcom/fs/starfarer/combat/systems/G; 
L831:   aload_2 
L832:   invokevirtual Method com/fs/starfarer/combat/systems/G setRingColor (Ljava/awt/Color;)V 
L835:   aload_0 
L836:   getfield Field com/fs/starfarer/combat/entities/Ship shield Lcom/fs/starfarer/combat/systems/G; 
L839:   fload 7 
L841:   fload_3 
L842:   fmul 
L843:   ldc_w +0.20000000298023224f 
L846:   fmul 
L847:   invokevirtual Method com/fs/starfarer/combat/systems/G render (F)V 
L850:   aload_0 
L851:   getfield Field com/fs/starfarer/combat/entities/Ship shield Lcom/fs/starfarer/combat/systems/G; 
L854:   aload 16 
L856:   invokevirtual Method com/fs/starfarer/combat/systems/G setInnerColor (Ljava/awt/Color;)V 
L859:   aload_0 
L860:   getfield Field com/fs/starfarer/combat/entities/Ship shield Lcom/fs/starfarer/combat/systems/G; 
L863:   aload 17 
L865:   invokevirtual Method com/fs/starfarer/combat/systems/G setRingColor (Ljava/awt/Color;)V 
L868:   invokestatic Method com/fs/graphics/util/GLListManager endList ()V 

        .stack same_extended 
L871:   invokestatic Method org/lwjgl/opengl/GL11 glPopMatrix ()V 
L874:   iinc 12 1 

        .stack chop 1 
L877:   iload 12 
L879:   iconst_4 
L880:   if_icmplt L570 

        .stack chop 1 
L883:   aload_0 
L884:   getfield Field com/fs/starfarer/combat/entities/Ship shield Lcom/fs/starfarer/combat/systems/G; 
L887:   ifnull L898 
L890:   aload_0 
L891:   getfield Field com/fs/starfarer/combat/entities/Ship shield Lcom/fs/starfarer/combat/systems/G; 
L894:   iconst_0 
L895:   invokevirtual Method com/fs/starfarer/combat/systems/G setRenderAdditive (Z)V 

        .stack same 
L898:   invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L901:   invokestatic Method com/fs/profiler/Profiler o00000 ()V 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/CombatViewport Object java/awt/Color Float Integer Float Float 
            stack 
        .end stack 
L904:   return 
L905:   
    .end code 
.end method 

.method private initSlotCovers : ()V 
    .code stack 4 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship spec Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L4:     invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L7:     invokevirtual Method com/fs/starfarer/loading/specs/g getHullStyle ()Lcom/fs/starfarer/loading/specs/OoOO; 
L10:    astore_1 
L11:    aload_0 
L12:    new com/fs/graphics/Sprite 
L15:    dup 
L16:    aload_1 
L17:    invokevirtual Method com/fs/starfarer/loading/specs/OoOO 'ÒÒ0000' ()Ljava/lang/String; 
L20:    invokespecial Method com/fs/graphics/Sprite <init> (Ljava/lang/String;)V 
L23:    putfield Field com/fs/starfarer/combat/entities/Ship smallT Lcom/fs/graphics/Sprite; 
L26:    aload_0 
L27:    new com/fs/graphics/Sprite 
L30:    dup 
L31:    aload_1 
L32:    invokevirtual Method com/fs/starfarer/loading/specs/OoOO 'Òo0000' ()Ljava/lang/String; 
L35:    invokespecial Method com/fs/graphics/Sprite <init> (Ljava/lang/String;)V 
L38:    putfield Field com/fs/starfarer/combat/entities/Ship smallH Lcom/fs/graphics/Sprite; 
L41:    aload_0 
L42:    new com/fs/graphics/Sprite 
L45:    dup 
L46:    aload_1 
L47:    invokevirtual Method com/fs/starfarer/loading/specs/OoOO 'ø00000' ()Ljava/lang/String; 
L50:    invokespecial Method com/fs/graphics/Sprite <init> (Ljava/lang/String;)V 
L53:    putfield Field com/fs/starfarer/combat/entities/Ship mediumT Lcom/fs/graphics/Sprite; 
L56:    aload_0 
L57:    new com/fs/graphics/Sprite 
L60:    dup 
L61:    aload_1 
L62:    invokevirtual Method com/fs/starfarer/loading/specs/OoOO 'Õ00000' ()Ljava/lang/String; 
L65:    invokespecial Method com/fs/graphics/Sprite <init> (Ljava/lang/String;)V 
L68:    putfield Field com/fs/starfarer/combat/entities/Ship mediumH Lcom/fs/graphics/Sprite; 
L71:    aload_0 
L72:    new com/fs/graphics/Sprite 
L75:    dup 
L76:    aload_1 
L77:    invokevirtual Method com/fs/starfarer/loading/specs/OoOO 'ô00000' ()Ljava/lang/String; 
L80:    invokespecial Method com/fs/graphics/Sprite <init> (Ljava/lang/String;)V 
L83:    putfield Field com/fs/starfarer/combat/entities/Ship largeT Lcom/fs/graphics/Sprite; 
L86:    aload_0 
L87:    new com/fs/graphics/Sprite 
L90:    dup 
L91:    aload_1 
L92:    invokevirtual Method com/fs/starfarer/loading/specs/OoOO 'for.super' ()Ljava/lang/String; 
L95:    invokespecial Method com/fs/graphics/Sprite <init> (Ljava/lang/String;)V 
L98:    putfield Field com/fs/starfarer/combat/entities/Ship largeH Lcom/fs/graphics/Sprite; 
L101:   aload_0 
L102:   getfield Field com/fs/starfarer/combat/entities/Ship smallH Lcom/fs/graphics/Sprite; 
L105:   aload_0 
L106:   getfield Field com/fs/starfarer/combat/entities/Ship smallH Lcom/fs/graphics/Sprite; 
L109:   invokevirtual Method com/fs/graphics/Sprite getWidth ()F 
L112:   fconst_2 
L113:   fdiv 
L114:   aload_0 
L115:   getfield Field com/fs/starfarer/combat/entities/Ship smallH Lcom/fs/graphics/Sprite; 
L118:   invokevirtual Method com/fs/graphics/Sprite getHeight ()F 
L121:   ldc_w +4.0f 
L124:   fdiv 
L125:   invokevirtual Method com/fs/graphics/Sprite setCenter (FF)V 
L128:   aload_0 
L129:   getfield Field com/fs/starfarer/combat/entities/Ship mediumH Lcom/fs/graphics/Sprite; 
L132:   aload_0 
L133:   getfield Field com/fs/starfarer/combat/entities/Ship mediumH Lcom/fs/graphics/Sprite; 
L136:   invokevirtual Method com/fs/graphics/Sprite getWidth ()F 
L139:   fconst_2 
L140:   fdiv 
L141:   aload_0 
L142:   getfield Field com/fs/starfarer/combat/entities/Ship mediumH Lcom/fs/graphics/Sprite; 
L145:   invokevirtual Method com/fs/graphics/Sprite getHeight ()F 
L148:   ldc_w +4.0f 
L151:   fdiv 
L152:   invokevirtual Method com/fs/graphics/Sprite setCenter (FF)V 
L155:   aload_0 
L156:   getfield Field com/fs/starfarer/combat/entities/Ship largeH Lcom/fs/graphics/Sprite; 
L159:   aload_0 
L160:   getfield Field com/fs/starfarer/combat/entities/Ship largeH Lcom/fs/graphics/Sprite; 
L163:   invokevirtual Method com/fs/graphics/Sprite getWidth ()F 
L166:   fconst_2 
L167:   fdiv 
L168:   aload_0 
L169:   getfield Field com/fs/starfarer/combat/entities/Ship largeH Lcom/fs/graphics/Sprite; 
L172:   invokevirtual Method com/fs/graphics/Sprite getHeight ()F 
L175:   ldc_w +4.0f 
L178:   fdiv 
L179:   invokevirtual Method com/fs/graphics/Sprite setCenter (FF)V 
L182:   return 
L183:   
    .end code 
.end method 

.method public isRefitMode : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship refitMode Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public setRefitMode : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship refitMode Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public renderSlotCovers : (Ljava/awt/Color;ZF)V 
    .code stack 3 locals 15 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship refitMode Z 
L4:     ifne L14 
L7:     aload_0 
L8:     invokevirtual Method com/fs/starfarer/combat/entities/Ship isFighter ()Z 
L11:    ifeq L15 

        .stack same 
L14:    return 

        .stack same 
L15:    aload_0 
L16:    getfield Field com/fs/starfarer/combat/entities/Ship spec Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L19:    invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L22:    invokevirtual Method com/fs/starfarer/loading/specs/g getHullStyle ()Lcom/fs/starfarer/loading/specs/OoOO; 
L25:    astore 4 
L27:    aload 4 
L29:    invokevirtual Method com/fs/starfarer/loading/specs/OoOO 'ÒÒ0000' ()Ljava/lang/String; 
L32:    ifnonnull L36 
L35:    return 

        .stack append Object com/fs/starfarer/loading/specs/OoOO 
L36:    aload_1 
L37:    astore 5 
L39:    aload 5 
L41:    ifnonnull L194 
L44:    aload_0 
L45:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L48:    invokevirtual Method com/fs/starfarer/loading/specs/g getCoversColor ()Ljava/awt/Color; 
L51:    ifnull L66 
L54:    aload_0 
L55:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L58:    invokevirtual Method com/fs/starfarer/loading/specs/g getCoversColor ()Ljava/awt/Color; 
L61:    astore 5 
L63:    goto L194 

        .stack append Object java/awt/Color 
L66:    aload 4 
L68:    invokevirtual Method com/fs/starfarer/loading/specs/OoOO 'ôo0000' ()F 
L71:    fconst_0 
L72:    fcmpl 
L73:    ifle L185 
L76:    aload_0 
L77:    getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L80:    invokevirtual Method com/fs/graphics/Sprite getTexture ()Lcom/fs/graphics/Object; 
L83:    invokevirtual Method com/fs/graphics/Object 'ø00000' ()Ljava/awt/Color; 
L86:    astore 6 
L88:    aload 6 
L90:    invokevirtual Method java/awt/Color getRed ()I 
L93:    i2f 
L94:    fstore 7 
L96:    aload 6 
L98:    invokevirtual Method java/awt/Color getGreen ()I 
L101:   i2f 
L102:   fload 7 
L104:   fcmpl 
L105:   ifle L116 
L108:   aload 6 
L110:   invokevirtual Method java/awt/Color getGreen ()I 
L113:   i2f 
L114:   fstore 7 

        .stack append Object java/awt/Color Float 
L116:   aload 6 
L118:   invokevirtual Method java/awt/Color getBlue ()I 
L121:   i2f 
L122:   fload 7 
L124:   fcmpl 
L125:   ifle L136 
L128:   aload 6 
L130:   invokevirtual Method java/awt/Color getBlue ()I 
L133:   i2f 
L134:   fstore 7 

        .stack same 
L136:   ldc_w +255.0f 
L139:   fload 7 
L141:   fdiv 
L142:   fstore 8 
L144:   aload 6 
L146:   fload 8 
L148:   invokestatic Method com/fs/graphics/util/B return (Ljava/awt/Color;F)Ljava/awt/Color; 
L151:   astore 9 
L153:   getstatic Field java/awt/Color white Ljava/awt/Color; 
L156:   aload 9 
L158:   aload 4 
L160:   invokevirtual Method com/fs/starfarer/loading/specs/OoOO 'ôo0000' ()F 
L163:   invokestatic Method com/fs/graphics/util/B o00000 (Ljava/awt/Color;Ljava/awt/Color;F)Ljava/awt/Color; 
L166:   astore 9 
L168:   aload_0 
L169:   getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L172:   invokevirtual Method com/fs/graphics/Sprite getColor ()Ljava/awt/Color; 
L175:   aload 9 
L177:   invokestatic Method com/fs/graphics/util/B o00000 (Ljava/awt/Color;Ljava/awt/Color;)Ljava/awt/Color; 
L180:   astore 5 
L182:   goto L194 

        .stack chop 2 
L185:   aload_0 
L186:   getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L189:   invokevirtual Method com/fs/graphics/Sprite getColor ()Ljava/awt/Color; 
L192:   astore 5 

        .stack same 
L194:   aconst_null 
L195:   astore 6 
L197:   aload_0 
L198:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getVisualBounds ()Lcom/fs/starfarer/combat/E/o0OO; 
L201:   ifnull L259 
L204:   aload_0 
L205:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getExactBounds ()Lcom/fs/starfarer/combat/E/o0OO; 
L208:   invokestatic Method com/fs/starfarer/util/Tesselator o00000 (Lcom/fs/starfarer/combat/E/o0OO;)Ljava/util/List; 
L211:   astore 6 
L213:   aload 6 
L215:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L220:   astore 8 
L222:   goto L249 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object java/awt/Color Integer Float Object com/fs/starfarer/loading/specs/OoOO Object java/awt/Color Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L225:   aload 8 
L227:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L232:   checkcast org/lwjgl/util/vector/Vector2f 
L235:   astore 7 
L237:   aload 7 
L239:   aload_0 
L240:   getfield Field com/fs/starfarer/combat/entities/Ship renderOffset Lorg/lwjgl/util/vector/Vector2f; 
L243:   aload 7 
L245:   invokestatic Method org/lwjgl/util/vector/Vector2f sub (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)Lorg/lwjgl/util/vector/Vector2f; 
L248:   pop 

        .stack same 
L249:   aload 8 
L251:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L256:   ifne L225 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object java/awt/Color Integer Float Object com/fs/starfarer/loading/specs/OoOO Object java/awt/Color Object java/util/List 
            stack 
        .end stack 
L259:   aload_0 
L260:   getfield Field com/fs/starfarer/combat/entities/Ship spec Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L263:   invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L266:   invokevirtual Method com/fs/starfarer/loading/specs/g getAllWeaponSlots ()Ljava/util/List; 
L269:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L274:   astore 8 
L276:   goto L764 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object java/awt/Color Integer Float Object com/fs/starfarer/loading/specs/OoOO Object java/awt/Color Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L279:   aload 8 
L281:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L286:   checkcast com/fs/starfarer/loading/specs/nullsuper 
L289:   astore 7 
L291:   aload 7 
L293:   invokevirtual Method com/fs/starfarer/loading/specs/nullsuper isDecorative ()Z 
L296:   ifeq L302 
L299:   goto L764 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object java/awt/Color Integer Float Object com/fs/starfarer/loading/specs/OoOO Object java/awt/Color Object java/util/List Object com/fs/starfarer/loading/specs/nullsuper Object java/util/Iterator 
            stack 
        .end stack 
L302:   aload 7 
L304:   invokevirtual Method com/fs/starfarer/loading/specs/nullsuper isHidden ()Z 
L307:   ifeq L313 
L310:   goto L764 

        .stack same 
L313:   aload 7 
L315:   invokevirtual Method com/fs/starfarer/loading/specs/nullsuper isBuiltIn ()Z 
L318:   ifeq L324 
L321:   goto L764 

        .stack same 
L324:   aload 7 
L326:   invokevirtual Method com/fs/starfarer/loading/specs/nullsuper isSystemSlot ()Z 
L329:   ifeq L335 
L332:   goto L764 

        .stack same 
L335:   aload 7 
L337:   invokevirtual Method com/fs/starfarer/loading/specs/nullsuper isLaunchBay ()Z 
L340:   ifeq L346 
L343:   goto L764 

        .stack same 
L346:   aload 7 
L348:   invokevirtual Method com/fs/starfarer/loading/specs/nullsuper isWeaponSlot ()Z 
L351:   ifne L357 
L354:   goto L764 

        .stack same 
L357:   aload_0 
L358:   getfield Field com/fs/starfarer/combat/entities/Ship spec Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L361:   aload 7 
L363:   invokevirtual Method com/fs/starfarer/loading/specs/nullsuper getId ()Ljava/lang/String; 
L366:   invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getWeaponId (Ljava/lang/String;)Ljava/lang/String; 
L369:   astore 9 
L371:   aload 9 
L373:   ifnull L379 
L376:   goto L764 

        .stack append Object java/lang/String 
L379:   aload 7 
L381:   invokevirtual Method com/fs/starfarer/loading/specs/nullsuper getSlotType ()Lcom/fs/starfarer/loading/specs/nullsuper$o; 
L384:   astore 10 
L386:   aconst_null 
L387:   astore 11 
L389:   invokestatic Method com/fs/starfarer/combat/entities/Ship $SWITCH_TABLE$com$fs$starfarer$api$combat$WeaponAPI$WeaponSize ()[I 
L392:   aload 7 
L394:   invokevirtual Method com/fs/starfarer/loading/specs/nullsuper getSlotSize ()Lcom/fs/starfarer/api/combat/WeaponAPI$WeaponSize; 
L397:   invokevirtual Method com/fs/starfarer/api/combat/WeaponAPI$WeaponSize ordinal ()I 
L400:   iaload 
L401:   tableswitch 1 
            L496 
            L462 
            L428 
            default : L527 


        .stack append Object com/fs/starfarer/loading/specs/nullsuper$o Object com/fs/graphics/Sprite 
L428:   aload 10 
L430:   getstatic Field com/fs/starfarer/loading/specs/nullsuper$o class Lcom/fs/starfarer/loading/specs/nullsuper$o; 
L433:   if_acmpne L445 
L436:   aload_0 
L437:   getfield Field com/fs/starfarer/combat/entities/Ship largeT Lcom/fs/graphics/Sprite; 
L440:   astore 11 
L442:   goto L527 

        .stack same 
L445:   aload 10 
L447:   getstatic Field com/fs/starfarer/loading/specs/nullsuper$o 'Ó00000' Lcom/fs/starfarer/loading/specs/nullsuper$o; 
L450:   if_acmpne L527 
L453:   aload_0 
L454:   getfield Field com/fs/starfarer/combat/entities/Ship largeH Lcom/fs/graphics/Sprite; 
L457:   astore 11 
L459:   goto L527 

        .stack same 
L462:   aload 10 
L464:   getstatic Field com/fs/starfarer/loading/specs/nullsuper$o class Lcom/fs/starfarer/loading/specs/nullsuper$o; 
L467:   if_acmpne L479 
L470:   aload_0 
L471:   getfield Field com/fs/starfarer/combat/entities/Ship mediumT Lcom/fs/graphics/Sprite; 
L474:   astore 11 
L476:   goto L527 

        .stack same 
L479:   aload 10 
L481:   getstatic Field com/fs/starfarer/loading/specs/nullsuper$o 'Ó00000' Lcom/fs/starfarer/loading/specs/nullsuper$o; 
L484:   if_acmpne L527 
L487:   aload_0 
L488:   getfield Field com/fs/starfarer/combat/entities/Ship mediumH Lcom/fs/graphics/Sprite; 
L491:   astore 11 
L493:   goto L527 

        .stack same 
L496:   aload 10 
L498:   getstatic Field com/fs/starfarer/loading/specs/nullsuper$o class Lcom/fs/starfarer/loading/specs/nullsuper$o; 
L501:   if_acmpne L513 
L504:   aload_0 
L505:   getfield Field com/fs/starfarer/combat/entities/Ship smallT Lcom/fs/graphics/Sprite; 
L508:   astore 11 
L510:   goto L527 

        .stack same 
L513:   aload 10 
L515:   getstatic Field com/fs/starfarer/loading/specs/nullsuper$o 'Ó00000' Lcom/fs/starfarer/loading/specs/nullsuper$o; 
L518:   if_acmpne L527 
L521:   aload_0 
L522:   getfield Field com/fs/starfarer/combat/entities/Ship smallH Lcom/fs/graphics/Sprite; 
L525:   astore 11 

        .stack same 
L527:   aload_0 
L528:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getVisualBounds ()Lcom/fs/starfarer/combat/E/o0OO; 
L531:   ifnull L555 
L534:   aload 7 
L536:   fconst_0 
L537:   invokevirtual Method com/fs/starfarer/loading/specs/nullsuper computeRelativePosition (F)Lorg/lwjgl/util/vector/Vector2f; 
L540:   astore 12 
L542:   aload 12 
L544:   aload 6 
L546:   invokestatic Method com/fs/util/oOOO o00000 (Lorg/lwjgl/util/vector/Vector2f;Ljava/util/List;)Z 
L549:   ifne L555 
L552:   goto L764 

        .stack same 
L555:   aload 11 
L557:   ifnonnull L563 
L560:   goto L764 

        .stack same 
L563:   iload_2 
L564:   ifeq L575 
L567:   aload 11 
L569:   invokevirtual Method com/fs/graphics/Sprite setAdditiveBlend ()V 
L572:   goto L580 

        .stack same 
L575:   aload 11 
L577:   invokevirtual Method com/fs/graphics/Sprite setNormalBlend ()V 

        .stack same 
L580:   aload 5 
L582:   astore 12 
L584:   aload_0 
L585:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L588:   invokevirtual Method com/fs/starfarer/loading/specs/g getCoversColor ()Ljava/awt/Color; 
L591:   ifnonnull L689 
L594:   aload 4 
L596:   invokevirtual Method com/fs/starfarer/loading/specs/OoOO 'public' ()Z 
L599:   ifeq L689 
L602:   aload_0 
L603:   getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L606:   invokevirtual Method com/fs/graphics/Sprite getTexture ()Lcom/fs/graphics/Object; 
L609:   invokevirtual Method com/fs/graphics/Object 'Ò00000' ()Ljava/awt/Color; 
L612:   invokestatic Method com/fs/graphics/util/B Object (Ljava/awt/Color;)F 
L615:   fstore 13 
L617:   aload_0 
L618:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isHulk ()Z 
L621:   ifeq L639 
L624:   fload 13 
L626:   aload_0 
L627:   getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L630:   invokevirtual Method com/fs/graphics/Sprite getColor ()Ljava/awt/Color; 
L633:   invokestatic Method com/fs/graphics/util/B Object (Ljava/awt/Color;)F 
L636:   fmul 
L637:   fstore 13 

        .stack append Object java/awt/Color Float 
L639:   aload 11 
L641:   invokevirtual Method com/fs/graphics/Sprite getTexture ()Lcom/fs/graphics/Object; 
L644:   invokevirtual Method com/fs/graphics/Object 'Ò00000' ()Ljava/awt/Color; 
L647:   invokestatic Method com/fs/graphics/util/B Object (Ljava/awt/Color;)F 
L650:   fstore 14 
L652:   fload 13 
L654:   fload 14 
L656:   fadd 
L657:   fconst_2 
L658:   fdiv 
L659:   fload 14 
L661:   fdiv 
L662:   fconst_1 
L663:   fcmpg 
L664:   ifge L682 
L667:   aload 5 
L669:   fload 13 
L671:   fload 14 
L673:   fdiv 
L674:   invokestatic Method com/fs/graphics/util/B o00000 (Ljava/awt/Color;F)Ljava/awt/Color; 
L677:   astore 12 
L679:   goto L713 

        .stack append Float 
L682:   aload 5 
L684:   astore 12 
L686:   goto L713 

        .stack chop 2 
L689:   aload_0 
L690:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isHulk ()Z 
L693:   ifeq L713 
L696:   aload 12 
L698:   aload_0 
L699:   getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L702:   invokevirtual Method com/fs/graphics/Sprite getColor ()Ljava/awt/Color; 
L705:   ldc_w +0.75f 
L708:   invokestatic Method com/fs/graphics/util/B o00000 (Ljava/awt/Color;Ljava/awt/Color;F)Ljava/awt/Color; 
L711:   astore 12 

        .stack same 
L713:   aload 11 
L715:   aload 12 
L717:   invokevirtual Method com/fs/graphics/Sprite setColor (Ljava/awt/Color;)V 
L720:   aload 11 
L722:   fload_3 
L723:   invokevirtual Method com/fs/graphics/Sprite setAlphaMult (F)V 
L726:   aload 7 
L728:   aload_0 
L729:   invokevirtual Method com/fs/starfarer/loading/specs/nullsuper computeRelativePosition (Lcom/fs/starfarer/api/combat/CombatEntityAPI;)Lorg/lwjgl/util/vector/Vector2f; 
L732:   astore 13 
L734:   aload 11 
L736:   aload 7 
L738:   aload_0 
L739:   invokevirtual Method com/fs/starfarer/loading/specs/nullsuper computeMidArcAngle (Lcom/fs/starfarer/api/combat/ShipAPI;)F 
L742:   ldc_w +90.0f 
L745:   fsub 
L746:   invokevirtual Method com/fs/graphics/Sprite setAngle (F)V 
L749:   aload 11 
L751:   aload 13 
L753:   getfield Field org/lwjgl/util/vector/Vector2f x F 
L756:   aload 13 
L758:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L761:   invokevirtual Method com/fs/graphics/Sprite renderAtCenter (FF)V 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object java/awt/Color Integer Float Object com/fs/starfarer/loading/specs/OoOO Object java/awt/Color Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L764:   aload 8 
L766:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L771:   ifne L279 
L774:   return 
L775:   
    .end code 
.end method 

.method public getImpactVolumeMult : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship impactVolumeMult F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method public setImpactVolumeMult : (F)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     fload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship impactVolumeMult F 
L5:     return 
L6:     
    .end code 
.end method 

.method public isDoNotRenderVentingAnimation : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship doNotRenderVentingAnimation Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public setDoNotRenderVentingAnimation : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship doNotRenderVentingAnimation Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public isDoNotRenderSprite : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship doNotRenderSprite Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public setDoNotRenderSprite : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship doNotRenderSprite Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public isDoNotRenderShield : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship doNotRenderShield Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public setDoNotRenderShield : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship doNotRenderShield Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public isDoNotRenderWeapons : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship doNotRenderWeapons Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public setDoNotRenderWeapons : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship doNotRenderWeapons Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public isNoMuzzleFlash : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship noMuzzleFlash Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public setNoMuzzleFlash : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship noMuzzleFlash Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public isDoNotRender : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship doNotRender Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public setDoNotRender : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship doNotRender Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public render : (Lcom/fs/starfarer/api/combat/CombatEngineLayers;Lcom/fs/starfarer/combat/CombatViewport;Z)V 
    .code stack 7 locals 33 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship doNotRender Z 
L4:     ifeq L8 
L7:     return 

        .stack same 
L8:     aload_0 
L9:     getfield Field com/fs/starfarer/combat/entities/Ship isAnimatedLaunch Z 
L12:    ifeq L51 
L15:    aload_0 
L16:    getfield Field com/fs/starfarer/combat/entities/Ship launchingShip Lcom/fs/starfarer/combat/entities/Ship; 
L19:    ifnull L51 
L22:    aload_2 
L23:    aload_0 
L24:    getfield Field com/fs/starfarer/combat/entities/Ship launchingShip Lcom/fs/starfarer/combat/entities/Ship; 
L27:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L30:    aload_0 
L31:    getfield Field com/fs/starfarer/combat/entities/Ship launchingShip Lcom/fs/starfarer/combat/entities/Ship; 
L34:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getCollisionRadius ()F 
L37:    ldc_w +1.25f 
L40:    fmul 
L41:    invokevirtual Method com/fs/starfarer/combat/CombatViewport isNearViewport (Lorg/lwjgl/util/vector/Vector2f;F)Z 
L44:    ifeq L51 
L47:    iconst_1 
L48:    goto L52 

        .stack same 
L51:    iconst_0 

        .stack stack_1 Integer 
L52:    istore 4 
L54:    fconst_0 
L55:    fstore 5 
L57:    aload_0 
L58:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getSystem ()Lcom/fs/starfarer/combat/systems/F; 
L61:    ifnull L73 
L64:    aload_0 
L65:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getSystem ()Lcom/fs/starfarer/combat/systems/F; 
L68:    invokevirtual Method com/fs/starfarer/combat/systems/F getExtraRenderRange ()F 
L71:    fstore 5 

        .stack append Integer Float 
L73:    aload_0 
L74:    getfield Field com/fs/starfarer/combat/entities/Ship phaseCloak Lcom/fs/starfarer/combat/systems/F; 
L77:    ifnull L94 
L80:    aload_0 
L81:    getfield Field com/fs/starfarer/combat/entities/Ship phaseCloak Lcom/fs/starfarer/combat/systems/F; 
L84:    invokevirtual Method com/fs/starfarer/combat/systems/F getExtraRenderRange ()F 
L87:    fload 5 
L89:    invokestatic Method java/lang/Math max (FF)F 
L92:    fstore 5 

        .stack same 
L94:    aload_0 
L95:    getfield Field com/fs/starfarer/combat/entities/Ship travelDrive Lcom/fs/starfarer/combat/systems/F; 
L98:    ifnull L115 
L101:   aload_0 
L102:   getfield Field com/fs/starfarer/combat/entities/Ship travelDrive Lcom/fs/starfarer/combat/systems/F; 
L105:   invokevirtual Method com/fs/starfarer/combat/systems/F getExtraRenderRange ()F 
L108:   fload 5 
L110:   invokestatic Method java/lang/Math max (FF)F 
L113:   fstore 5 

        .stack same 
L115:   iload 4 
L117:   ifne L147 
L120:   aload_2 
L121:   aload_0 
L122:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L125:   aload_0 
L126:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getCollisionRadius ()F 
L129:   ldc_w +1.25f 
L132:   fmul 
L133:   ldc_w +50.0f 
L136:   fadd 
L137:   fload 5 
L139:   fadd 
L140:   invokevirtual Method com/fs/starfarer/combat/CombatViewport isNearViewport (Lorg/lwjgl/util/vector/Vector2f;F)Z 
L143:   ifne L147 
L146:   return 

        .stack same 
L147:   aload_0 
L148:   iconst_1 
L149:   putfield Field com/fs/starfarer/combat/entities/Ship visible Z 
L152:   aload_1 
L153:   getstatic Field com/fs/starfarer/api/combat/CombatEngineLayers FF_INDICATORS_LAYER Lcom/fs/starfarer/api/combat/CombatEngineLayers; 
L156:   if_acmpeq L181 
L159:   aload_0 
L160:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isFighter ()Z 
L163:   ifeq L175 
L166:   ldc_w 'Fighter rendering' 
L169:   invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L172:   goto L181 

        .stack same 
L175:   ldc_w 'Ship rendering' 
L178:   invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 

        .stack same 
L181:   invokestatic Method org/lwjgl/opengl/GL11 glPushMatrix ()V 
L184:   aload_0 
L185:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L188:   getfield Field org/lwjgl/util/vector/Vector2f x F 
L191:   aload_0 
L192:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L195:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L198:   fconst_0 
L199:   invokestatic Method org/lwjgl/opengl/GL11 glTranslatef (FFF)V 
L202:   aload_1 
L203:   getstatic Field com/fs/starfarer/api/combat/CombatEngineLayers FF_INDICATORS_LAYER Lcom/fs/starfarer/api/combat/CombatEngineLayers; 
L206:   if_acmpne L608 
L209:   invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L212:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getCombatUI ()Lcom/fs/starfarer/combat/K; 
L215:   ifnull L232 
L218:   invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L221:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getCombatUI ()Lcom/fs/starfarer/combat/K; 
L224:   invokeinterface InterfaceMethod com/fs/starfarer/combat/K isHideHud ()Z 1 
L229:   ifne L604 

        .stack same 
L232:   aload_0 
L233:   getfield Field com/fs/starfarer/combat/entities/Ship ffInd Lcom/fs/starfarer/renderers/OOoO; 
L236:   invokevirtual Method com/fs/starfarer/renderers/OOoO new ()Z 
L239:   ifne L604 
L242:   aload_0 
L243:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isAlly ()Z 
L246:   ifne L604 
L249:   aload_0 
L250:   getfield Field com/fs/starfarer/combat/entities/Ship isPiece Z 
L253:   ifne L604 
L256:   aload_0 
L257:   getfield Field com/fs/starfarer/combat/entities/Ship spec Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L260:   invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L263:   invokevirtual Method com/fs/starfarer/loading/specs/g getShieldSpec ()Lcom/fs/starfarer/loading/specs/OOOo; 
L266:   invokevirtual Method com/fs/starfarer/loading/specs/OOOo getRadius ()F 
L269:   ldc_w +0.8999999761581421f 
L272:   fmul 
L273:   ldc_w +25.0f 
L276:   invokestatic Method java/lang/Math max (FF)F 
L279:   fstore 6 
L281:   aload_0 
L282:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getFacing ()F 
L285:   fstore 7 
L287:   aload_0 
L288:   getfield Field com/fs/starfarer/combat/entities/Ship spec Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L291:   invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L294:   invokevirtual Method com/fs/starfarer/loading/specs/g getShieldSpec ()Lcom/fs/starfarer/loading/specs/OOOo; 
L297:   invokevirtual Method com/fs/starfarer/loading/specs/OOOo getCenterX ()F 
L300:   fstore 8 
L302:   aload_0 
L303:   getfield Field com/fs/starfarer/combat/entities/Ship spec Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L306:   invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L309:   invokevirtual Method com/fs/starfarer/loading/specs/g getShieldSpec ()Lcom/fs/starfarer/loading/specs/OOOo; 
L312:   invokevirtual Method com/fs/starfarer/loading/specs/OOOo getCenterY ()F 
L315:   fstore 9 
L317:   aload_0 
L318:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isStationModule ()Z 
L321:   ifeq L358 
L324:   aload_0 
L325:   getfield Field com/fs/starfarer/combat/entities/Ship spec Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L328:   invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L331:   invokevirtual Method com/fs/starfarer/loading/specs/g getSpriteSpec ()Lcom/fs/starfarer/loading/specs/Q; 
L334:   invokevirtual Method com/fs/starfarer/loading/specs/Q 'Ô00000' ()F 
L337:   ldc_w +0.8999999761581421f 
L340:   fmul 
L341:   ldc_w +25.0f 
L344:   invokestatic Method java/lang/Math max (FF)F 
L347:   fstore 6 
L349:   fconst_0 
L350:   fstore 8 
L352:   fconst_0 
L353:   fstore 9 
L355:   goto L425 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/api/combat/CombatEngineLayers Object com/fs/starfarer/combat/CombatViewport Integer Integer Float Float Float Float Float 
            stack 
        .end stack 
L358:   aload_0 
L359:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isStation ()Z 
L362:   ifeq L406 
L365:   aload_0 
L366:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getVisualBounds ()Lcom/fs/starfarer/combat/E/o0OO; 
L369:   ifnonnull L406 
L372:   aload_0 
L373:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getShield ()Lcom/fs/starfarer/combat/systems/G; 
L376:   ifnonnull L395 
L379:   aload_0 
L380:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getCollisionRadius ()F 
L383:   ldc_w +0.8999999761581421f 
L386:   fmul 
L387:   ldc_w +25.0f 
L390:   invokestatic Method java/lang/Math max (FF)F 
L393:   fstore 6 

        .stack same 
L395:   fload 6 
L397:   ldc_w +1.25f 
L400:   fmul 
L401:   fstore 6 
L403:   goto L425 

        .stack same 
L406:   aload_0 
L407:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getVisualBounds ()Lcom/fs/starfarer/combat/E/o0OO; 
L410:   ifnull L425 
L413:   aload_0 
L414:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getCollisionRadius ()F 
L417:   fstore 6 
L419:   fconst_0 
L420:   fstore 8 
L422:   fconst_0 
L423:   fstore 9 

        .stack same 
L425:   aload_0 
L426:   getfield Field com/fs/starfarer/combat/entities/Ship spec Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L429:   invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L432:   ldc_w 'center_diamond_on_hull_center' 
L435:   invokevirtual Method com/fs/starfarer/loading/specs/g hasTag (Ljava/lang/String;)Z 
L438:   ifeq L463 
L441:   fconst_0 
L442:   fstore 8 
L444:   fconst_0 
L445:   fstore 9 
L447:   aload_0 
L448:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getCollisionRadius ()F 
L451:   ldc_w +0.8999999761581421f 
L454:   fmul 
L455:   ldc_w +25.0f 
L458:   invokestatic Method java/lang/Math max (FF)F 
L461:   fstore 6 

        .stack same 
L463:   fload 7 
L465:   f2d 
L466:   invokestatic Method java/lang/Math toRadians (D)D 
L469:   invokestatic Method java/lang/Math cos (D)D 
L472:   d2f 
L473:   fstore 10 
L475:   fload 7 
L477:   f2d 
L478:   invokestatic Method java/lang/Math toRadians (D)D 
L481:   invokestatic Method java/lang/Math sin (D)D 
L484:   d2f 
L485:   fstore 11 
L487:   fload 8 
L489:   fload 10 
L491:   fmul 
L492:   fload 9 
L494:   fload 11 
L496:   fmul 
L497:   fsub 
L498:   fstore 12 
L500:   fload 8 
L502:   fload 11 
L504:   fmul 
L505:   fload 9 
L507:   fload 10 
L509:   fmul 
L510:   fadd 
L511:   fstore 13 
L513:   aload_0 
L514:   getfield Field com/fs/starfarer/combat/entities/Ship spec Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L517:   invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L520:   invokevirtual Method com/fs/starfarer/loading/specs/g getSpriteSpec ()Lcom/fs/starfarer/loading/specs/Q; 
L523:   invokevirtual Method com/fs/starfarer/loading/specs/Q null ()F 
L526:   fstore 14 
L528:   aload_0 
L529:   getfield Field com/fs/starfarer/combat/entities/Ship spec Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L532:   invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L535:   invokevirtual Method com/fs/starfarer/loading/specs/g getSpriteSpec ()Lcom/fs/starfarer/loading/specs/Q; 
L538:   invokevirtual Method com/fs/starfarer/loading/specs/Q o00000 ()F 
L541:   fstore 15 
L543:   fload 6 
L545:   fload 14 
L547:   fload 15 
L549:   fadd 
L550:   ldc_w +0.5f 
L553:   fmul 
L554:   invokestatic Method java/lang/Math min (FF)F 
L557:   fstore 6 
L559:   fload 6 
L561:   ldc_w +25.0f 
L564:   fcmpg 
L565:   ifge L573 
L568:   ldc_w +25.0f 
L571:   fstore 6 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/api/combat/CombatEngineLayers Object com/fs/starfarer/combat/CombatViewport Integer Integer Float Float Float Float Float Float Float Float Float Float Float 
            stack 
        .end stack 
L573:   aload_0 
L574:   getfield Field com/fs/starfarer/combat/entities/Ship ffInd Lcom/fs/starfarer/renderers/OOoO; 
L577:   fload 6 
L579:   invokevirtual Method com/fs/starfarer/renderers/OOoO new (F)V 
L582:   aload_0 
L583:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isForceHideFFOverlay ()Z 
L586:   ifne L604 
L589:   aload_0 
L590:   getfield Field com/fs/starfarer/combat/entities/Ship ffInd Lcom/fs/starfarer/renderers/OOoO; 
L593:   fload 12 
L595:   fload 13 
L597:   aload_0 
L598:   getfield Field com/fs/starfarer/combat/entities/Ship alphaMult F 
L601:   invokevirtual Method com/fs/starfarer/renderers/OOoO 'Ô00000' (FFF)V 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/api/combat/CombatEngineLayers Object com/fs/starfarer/combat/CombatViewport Integer Integer Float 
            stack 
        .end stack 
L604:   invokestatic Method org/lwjgl/opengl/GL11 glPopMatrix ()V 
L607:   return 

        .stack same 
L608:   aload_0 
L609:   getfield Field com/fs/starfarer/combat/entities/Ship layers Ljava/util/EnumSet; 
L612:   getstatic Field com/fs/starfarer/api/combat/CombatEngineLayers STATION_WEAPONS_LAYER Lcom/fs/starfarer/api/combat/CombatEngineLayers; 
L615:   invokevirtual Method java/util/EnumSet contains (Ljava/lang/Object;)Z 
L618:   istore 6 
L620:   aload_1 
L621:   getstatic Field com/fs/starfarer/api/combat/CombatEngineLayers STATION_WEAPONS_LAYER Lcom/fs/starfarer/api/combat/CombatEngineLayers; 
L624:   if_acmpeq L636 
L627:   iload 6 
L629:   ifeq L636 
L632:   iconst_0 
L633:   goto L637 

        .stack append Integer 
L636:   iconst_1 

        .stack stack_1 Integer 
L637:   istore 7 
L639:   aload_1 
L640:   getstatic Field com/fs/starfarer/api/combat/CombatEngineLayers STATION_WEAPONS_LAYER Lcom/fs/starfarer/api/combat/CombatEngineLayers; 
L643:   if_acmpeq L662 
L646:   aload_1 
L647:   getstatic Field com/fs/starfarer/api/combat/CombatEngineLayers ABOVE_SHIPS_AND_MISSILES_LAYER Lcom/fs/starfarer/api/combat/CombatEngineLayers; 
L650:   if_acmpeq L662 
L653:   iload 6 
L655:   ifeq L662 
L658:   iconst_0 
L659:   goto L663 

        .stack append Integer 
L662:   iconst_1 

        .stack stack_1 Integer 
L663:   istore 8 
L665:   aload_1 
L666:   getstatic Field com/fs/starfarer/api/combat/CombatEngineLayers STATION_WEAPONS_LAYER Lcom/fs/starfarer/api/combat/CombatEngineLayers; 
L669:   if_acmpne L681 
L672:   iload 6 
L674:   ifeq L681 
L677:   iconst_0 
L678:   goto L682 

        .stack append Integer 
L681:   iconst_1 

        .stack stack_1 Integer 
L682:   istore 9 
L684:   aload_0 
L685:   getfield Field com/fs/starfarer/combat/entities/Ship spec Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L688:   invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L691:   invokevirtual Method com/fs/starfarer/loading/specs/g getSpriteSpec ()Lcom/fs/starfarer/loading/specs/Q; 
L694:   astore 10 
L696:   aload 10 
L698:   invokevirtual Method com/fs/starfarer/loading/specs/Q null ()F 
L701:   fstore 11 
L703:   aload 10 
L705:   invokevirtual Method com/fs/starfarer/loading/specs/Q o00000 ()F 
L708:   fstore 12 
L710:   aload_0 
L711:   fconst_1 
L712:   aload_0 
L713:   getfield Field com/fs/starfarer/combat/entities/Ship alphaMult F 
L716:   fmul 
L717:   putfield Field com/fs/starfarer/combat/entities/Ship combinedAlphaMult F 
L720:   aload_0 
L721:   getfield Field com/fs/starfarer/combat/entities/Ship isAnimatedLaunch Z 
L724:   ifeq L880 
L727:   aload_0 
L728:   getfield Field com/fs/starfarer/combat/entities/Ship sinceLaunch F 
L731:   fconst_1 
L732:   fcmpg 
L733:   ifge L813 
L736:   aload_0 
L737:   iconst_1 
L738:   putfield Field com/fs/starfarer/combat/entities/Ship isLiftingOffOrLanding Z 
L741:   aload_0 
L742:   getfield Field com/fs/starfarer/combat/entities/Ship sinceLaunch F 
L745:   fconst_1 
L746:   fdiv 
L747:   ldc_w +0.5f 
L750:   fmul 
L751:   ldc_w +0.5f 
L754:   fadd 
L755:   fstore 13 
L757:   fload 13 
L759:   fload 13 
L761:   fconst_0 
L762:   invokestatic Method org/lwjgl/opengl/GL11 glScalef (FFF)V 
L765:   aload_0 
L766:   fload 13 
L768:   ldc_w +0.5f 
L771:   fsub 
L772:   ldc_w +4.0f 
L775:   fmul 
L776:   putfield Field com/fs/starfarer/combat/entities/Ship combinedAlphaMult F 
L779:   aload_0 
L780:   getfield Field com/fs/starfarer/combat/entities/Ship combinedAlphaMult F 
L783:   fconst_1 
L784:   fcmpl 
L785:   ifle L793 
L788:   aload_0 
L789:   fconst_1 
L790:   putfield Field com/fs/starfarer/combat/entities/Ship combinedAlphaMult F 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/api/combat/CombatEngineLayers Object com/fs/starfarer/combat/CombatViewport Integer Integer Float Integer Integer Integer Integer Object com/fs/starfarer/loading/specs/Q Float Float Float 
            stack 
        .end stack 
L793:   iload 9 
L795:   ifeq L880 
L798:   aload_0 
L799:   fload 11 
L801:   fload 12 
L803:   aload_0 
L804:   getfield Field com/fs/starfarer/combat/entities/Ship combinedAlphaMult F 
L807:   invokevirtual Method com/fs/starfarer/combat/entities/Ship renderShadow (FFF)V 
L810:   goto L880 

        .stack chop 1 
L813:   aload_0 
L814:   getfield Field com/fs/starfarer/combat/entities/Ship sinceLaunch F 
L817:   ldc_w +4.0f 
L820:   fcmpg 
L821:   ifge L880 
L824:   aload_0 
L825:   getfield Field com/fs/starfarer/combat/entities/Ship sinceLaunch F 
L828:   ldc +3.0f 
L830:   fcmpg 
L831:   ifge L842 
L834:   aload_0 
L835:   fconst_1 
L836:   putfield Field com/fs/starfarer/combat/entities/Ship combinedAlphaMult F 
L839:   goto L858 

        .stack same 
L842:   aload_0 
L843:   fconst_1 
L844:   aload_0 
L845:   getfield Field com/fs/starfarer/combat/entities/Ship sinceLaunch F 
L848:   fconst_1 
L849:   fsub 
L850:   fconst_2 
L851:   fsub 
L852:   fconst_1 
L853:   fdiv 
L854:   fsub 
L855:   putfield Field com/fs/starfarer/combat/entities/Ship combinedAlphaMult F 

        .stack same 
L858:   iload 9 
L860:   ifeq L875 
L863:   aload_0 
L864:   fload 11 
L866:   fload 12 
L868:   aload_0 
L869:   getfield Field com/fs/starfarer/combat/entities/Ship combinedAlphaMult F 
L872:   invokevirtual Method com/fs/starfarer/combat/entities/Ship renderShadow (FFF)V 

        .stack same 
L875:   aload_0 
L876:   fconst_1 
L877:   putfield Field com/fs/starfarer/combat/entities/Ship combinedAlphaMult F 

        .stack same 
L880:   aload_0 
L881:   getfield Field com/fs/starfarer/combat/entities/Ship isHulk Z 
L884:   ifeq L910 
L887:   aload_0 
L888:   getfield Field com/fs/starfarer/combat/entities/Ship hulkFader Lcom/fs/graphics/util/Fader; 
L891:   ifnull L910 
L894:   aload_0 
L895:   dup 
L896:   getfield Field com/fs/starfarer/combat/entities/Ship combinedAlphaMult F 
L899:   aload_0 
L900:   getfield Field com/fs/starfarer/combat/entities/Ship hulkFader Lcom/fs/graphics/util/Fader; 
L903:   invokevirtual Method com/fs/graphics/util/Fader getBrightness ()F 
L906:   fmul 
L907:   putfield Field com/fs/starfarer/combat/entities/Ship combinedAlphaMult F 

        .stack same 
L910:   aload_0 
L911:   getfield Field com/fs/starfarer/combat/entities/Ship combinedAlphaMult F 
L914:   fstore 13 
L916:   aload_0 
L917:   dup 
L918:   getfield Field com/fs/starfarer/combat/entities/Ship combinedAlphaMult F 
L921:   aload_0 
L922:   getfield Field com/fs/starfarer/combat/entities/Ship extraAlphaMult F 
L925:   fmul 
L926:   putfield Field com/fs/starfarer/combat/entities/Ship combinedAlphaMult F 
L929:   aload_0 
L930:   dup 
L931:   getfield Field com/fs/starfarer/combat/entities/Ship combinedAlphaMult F 
L934:   aload_0 
L935:   getfield Field com/fs/starfarer/combat/entities/Ship extraAlphaMult2 F 
L938:   fmul 
L939:   putfield Field com/fs/starfarer/combat/entities/Ship combinedAlphaMult F 
L942:   aload_0 
L943:   getfield Field com/fs/starfarer/combat/entities/Ship applyExtraAlphaToEngines Z 
L946:   ifeq L958 
L949:   fload 13 
L951:   aload_0 
L952:   getfield Field com/fs/starfarer/combat/entities/Ship extraAlphaMult F 
L955:   fmul 
L956:   fstore 13 

        .stack append Float 
L958:   fload 13 
L960:   aload_0 
L961:   getfield Field com/fs/starfarer/combat/entities/Ship extraAlphaMult2 F 
L964:   fmul 
L965:   fstore 13 
L967:   aload_0 
L968:   getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L971:   invokevirtual Method com/fs/starfarer/combat/entities/ship/D getEMPDisplayMult ()F 
L974:   fstore 14 
L976:   aload_0 
L977:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getSystem ()Lcom/fs/starfarer/combat/systems/F; 
L980:   ifnull L997 
L983:   aload_0 
L984:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getSystem ()Lcom/fs/starfarer/combat/systems/F; 
L987:   invokevirtual Method com/fs/starfarer/combat/systems/F getActiveLayers ()Ljava/util/EnumSet; 
L990:   aload_1 
L991:   invokevirtual Method java/util/EnumSet contains (Ljava/lang/Object;)Z 
L994:   ifne L3233 

        .stack append Float 
L997:   aload_0 
L998:   getfield Field com/fs/starfarer/combat/entities/Ship phaseCloak Lcom/fs/starfarer/combat/systems/F; 
L1001:  ifnull L1018 
L1004:  aload_0 
L1005:  getfield Field com/fs/starfarer/combat/entities/Ship phaseCloak Lcom/fs/starfarer/combat/systems/F; 
L1008:  invokevirtual Method com/fs/starfarer/combat/systems/F getActiveLayers ()Ljava/util/EnumSet; 
L1011:  aload_1 
L1012:  invokevirtual Method java/util/EnumSet contains (Ljava/lang/Object;)Z 
L1015:  ifne L3233 

        .stack same 
L1018:  aload_0 
L1019:  getfield Field com/fs/starfarer/combat/entities/Ship travelDrive Lcom/fs/starfarer/combat/systems/F; 
L1022:  ifnull L1039 
L1025:  aload_0 
L1026:  getfield Field com/fs/starfarer/combat/entities/Ship travelDrive Lcom/fs/starfarer/combat/systems/F; 
L1029:  invokevirtual Method com/fs/starfarer/combat/systems/F getActiveLayers ()Ljava/util/EnumSet; 
L1032:  aload_1 
L1033:  invokevirtual Method java/util/EnumSet contains (Ljava/lang/Object;)Z 
L1036:  ifne L3233 

        .stack same 
L1039:  iload 9 
L1041:  ifeq L1054 
L1044:  aload_0 
L1045:  iconst_0 
L1046:  invokevirtual Method com/fs/starfarer/combat/entities/Ship renderAfterimages (Z)V 
L1049:  aload_0 
L1050:  aload_2 
L1051:  invokevirtual Method com/fs/starfarer/combat/entities/Ship renderJitterUnder (Lcom/fs/starfarer/combat/CombatViewport;)V 

        .stack same 
L1054:  aload_0 
L1055:  getfield Field com/fs/starfarer/combat/entities/Ship isHulk Z 
L1058:  ifne L1098 
L1061:  aload_0 
L1062:  getfield Field com/fs/starfarer/combat/entities/Ship renderEngines Z 
L1065:  ifeq L1098 
L1068:  aload_0 
L1069:  getfield Field com/fs/starfarer/combat/entities/Ship renderEnginesUnder Z 
L1072:  ifeq L1098 
L1075:  ldc_w 'EngineGlow rendering' 
L1078:  invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L1081:  iload 9 
L1083:  ifeq L1095 
L1086:  aload_0 
L1087:  getfield Field com/fs/starfarer/combat/entities/Ship engineController Lcom/fs/starfarer/combat/entities/ship/null; 
L1090:  fload 13 
L1092:  invokevirtual Method com/fs/starfarer/combat/entities/ship/null render (F)V 

        .stack same 
L1095:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 

        .stack same 
L1098:  aload_0 
L1099:  getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L1102:  aload_0 
L1103:  getfield Field com/fs/starfarer/combat/entities/Ship combinedAlphaMult F 
L1106:  invokevirtual Method com/fs/graphics/Sprite setAlphaMult (F)V 
L1109:  aload_0 
L1110:  getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L1113:  fload 11 
L1115:  fload 12 
L1117:  invokevirtual Method com/fs/graphics/Sprite setSize (FF)V 
L1120:  aload_0 
L1121:  getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L1124:  aload_0 
L1125:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getFacing ()F 
L1128:  ldc_w +90.0f 
L1131:  fsub 
L1132:  invokevirtual Method com/fs/graphics/Sprite setAngle (F)V 
L1135:  iload 9 
L1137:  ifeq L1788 
L1140:  aload_0 
L1141:  getfield Field com/fs/starfarer/combat/entities/Ship doNotRenderSprite Z 
L1144:  ifne L1788 
L1147:  iconst_0 
L1148:  istore 15 
L1150:  aload_0 
L1151:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getVisualBounds ()Lcom/fs/starfarer/combat/E/o0OO; 
L1154:  ifnull L1167 
L1157:  iconst_1 
L1158:  istore 15 
L1160:  aload_0 
L1161:  fconst_0 
L1162:  fconst_0 
L1163:  iconst_0 
L1164:  invokevirtual Method com/fs/starfarer/combat/entities/Ship clipToBounds (FFZ)V 

        .stack append Integer 
L1167:  aload_0 
L1168:  getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L1171:  fconst_0 
L1172:  fconst_0 
L1173:  invokevirtual Method com/fs/graphics/Sprite renderAtCenter (FF)V 
L1176:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'OÓ0000' ()Z 
L1179:  ifeq L1187 
L1182:  aload_0 
L1183:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isFighter ()Z 
L1186:  pop 

        .stack same 
L1187:  aload_0 
L1188:  getfield Field com/fs/starfarer/combat/entities/Ship dHullOverlay Lcom/fs/graphics/Sprite; 
L1191:  ifnull L1484 
L1194:  invokestatic Method org/lwjgl/opengl/GL11 glPushMatrix ()V 
L1197:  aload_0 
L1198:  getfield Field com/fs/starfarer/combat/entities/Ship dHullOverlaySize F 
L1201:  aload_0 
L1202:  getfield Field com/fs/starfarer/combat/entities/Ship dHullOverlay Lcom/fs/graphics/Sprite; 
L1205:  invokevirtual Method com/fs/graphics/Sprite getImageWidth ()I 
L1208:  i2f 
L1209:  fdiv 
L1210:  fstore 16 
L1212:  aload_0 
L1213:  getfield Field com/fs/starfarer/combat/entities/Ship dHullOverlay Lcom/fs/graphics/Sprite; 
L1216:  invokevirtual Method com/fs/graphics/Sprite getWidth ()F 
L1219:  aload_0 
L1220:  getfield Field com/fs/starfarer/combat/entities/Ship dHullOverlay Lcom/fs/graphics/Sprite; 
L1223:  invokevirtual Method com/fs/graphics/Sprite getHeight ()F 
L1226:  fadd 
L1227:  fconst_2 
L1228:  fdiv 
L1229:  fload 16 
L1231:  fmul 
L1232:  fstore 17 
L1234:  iload 15 
L1236:  ifne L1251 
L1239:  aload_0 
L1240:  getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L1243:  fconst_0 
L1244:  fconst_0 
L1245:  fload 17 
L1247:  iconst_1 
L1248:  invokestatic Method com/fs/starfarer/renderers/damage/B 'super' (Lcom/fs/graphics/Sprite;FFFI)V 

        .stack append Float Float 
L1251:  aload_0 
L1252:  getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L1255:  invokevirtual Method com/fs/graphics/Sprite getAngle ()F 
L1258:  fconst_0 
L1259:  fconst_0 
L1260:  fconst_1 
L1261:  invokestatic Method org/lwjgl/opengl/GL11 glRotatef (FFFF)V 
L1264:  aload_0 
L1265:  getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L1268:  invokevirtual Method com/fs/graphics/Sprite getCenterX ()F 
L1271:  aload_0 
L1272:  getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L1275:  invokevirtual Method com/fs/graphics/Sprite getWidth ()F 
L1278:  fconst_2 
L1279:  fdiv 
L1280:  fsub 
L1281:  fneg 
L1282:  aload_0 
L1283:  getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L1286:  invokevirtual Method com/fs/graphics/Sprite getCenterY ()F 
L1289:  aload_0 
L1290:  getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L1293:  invokevirtual Method com/fs/graphics/Sprite getHeight ()F 
L1296:  fconst_2 
L1297:  fdiv 
L1298:  fsub 
L1299:  fneg 
L1300:  fconst_0 
L1301:  invokestatic Method org/lwjgl/opengl/GL11 glTranslatef (FFF)V 
L1304:  aload_0 
L1305:  getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L1308:  invokevirtual Method com/fs/graphics/Sprite getAngle ()F 
L1311:  fneg 
L1312:  fconst_0 
L1313:  fconst_0 
L1314:  fconst_1 
L1315:  invokestatic Method org/lwjgl/opengl/GL11 glRotatef (FFFF)V 
L1318:  aload_0 
L1319:  getfield Field com/fs/starfarer/combat/entities/Ship dHullOverlay Lcom/fs/graphics/Sprite; 
L1322:  aload_0 
L1323:  getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L1326:  invokevirtual Method com/fs/graphics/Sprite getAlphaMult ()F 
L1329:  invokevirtual Method com/fs/graphics/Sprite setAlphaMult (F)V 
L1332:  aload_0 
L1333:  getfield Field com/fs/starfarer/combat/entities/Ship dHullOverlay Lcom/fs/graphics/Sprite; 
L1336:  aload_0 
L1337:  getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L1340:  invokevirtual Method com/fs/graphics/Sprite getAngle ()F 
L1343:  aload_0 
L1344:  getfield Field com/fs/starfarer/combat/entities/Ship dHullOverlayAngleOffset F 
L1347:  fadd 
L1348:  invokevirtual Method com/fs/graphics/Sprite setAngle (F)V 
L1351:  fload 16 
L1353:  fneg 
L1354:  fconst_2 
L1355:  fdiv 
L1356:  ldc_w +0.5f 
L1359:  fadd 
L1360:  fstore 18 
L1362:  fload 16 
L1364:  fneg 
L1365:  fconst_2 
L1366:  fdiv 
L1367:  ldc_w +0.5f 
L1370:  fadd 
L1371:  fstore 19 
L1373:  fload 16 
L1375:  fstore 20 
L1377:  fload 16 
L1379:  fstore 21 
L1381:  ldc_w 'dHullOverlayShadowOpacity' 
L1384:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'ö00000' (Ljava/lang/String;)F 
L1387:  fstore 22 
L1389:  fload 22 
L1391:  fconst_0 
L1392:  fcmpl 
L1393:  ifle L1430 
L1396:  aload_0 
L1397:  getfield Field com/fs/starfarer/combat/entities/Ship dHullOverlay Lcom/fs/graphics/Sprite; 
L1400:  getstatic Field java/awt/Color black Ljava/awt/Color; 
L1403:  fload 22 
L1405:  invokestatic Method com/fs/graphics/util/B 'Ô00000' (Ljava/awt/Color;F)Ljava/awt/Color; 
L1408:  invokevirtual Method com/fs/graphics/Sprite setColor (Ljava/awt/Color;)V 
L1411:  aload_0 
L1412:  getfield Field com/fs/starfarer/combat/entities/Ship dHullOverlay Lcom/fs/graphics/Sprite; 
L1415:  fconst_1 
L1416:  ldc_w -1.0f 
L1419:  fload 18 
L1421:  fload 19 
L1423:  fload 20 
L1425:  fload 21 
L1427:  invokevirtual Method com/fs/graphics/Sprite renderRegionAtCenter (FFFFFF)V 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/api/combat/CombatEngineLayers Object com/fs/starfarer/combat/CombatViewport Integer Integer Float Integer Integer Integer Integer Object com/fs/starfarer/loading/specs/Q Float Float Float Float Integer Float Float Float Float Float Float Float 
            stack 
        .end stack 
L1430:  ldc_w 'dHullOverlayMatchHullColor' 
L1433:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings class (Ljava/lang/String;)Z 
L1436:  ifeq L1446 
L1439:  aload_0 
L1440:  invokevirtual Method com/fs/starfarer/combat/entities/Ship updateDHullOverlayColor ()V 
L1443:  goto L1456 

        .stack same 
L1446:  aload_0 
L1447:  getfield Field com/fs/starfarer/combat/entities/Ship dHullOverlay Lcom/fs/graphics/Sprite; 
L1450:  getstatic Field java/awt/Color white Ljava/awt/Color; 
L1453:  invokevirtual Method com/fs/graphics/Sprite setColor (Ljava/awt/Color;)V 

        .stack same 
L1456:  aload_0 
L1457:  getfield Field com/fs/starfarer/combat/entities/Ship dHullOverlay Lcom/fs/graphics/Sprite; 
L1460:  fconst_0 
L1461:  fconst_0 
L1462:  fload 18 
L1464:  fload 19 
L1466:  fload 20 
L1468:  fload 21 
L1470:  invokevirtual Method com/fs/graphics/Sprite renderRegionAtCenter (FFFFFF)V 
L1473:  iload 15 
L1475:  ifne L1481 
L1478:  invokestatic Method com/fs/starfarer/renderers/damage/B 'Ò00000' ()V 

        .stack same 
L1481:  invokestatic Method org/lwjgl/opengl/GL11 glPopMatrix ()V 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/api/combat/CombatEngineLayers Object com/fs/starfarer/combat/CombatViewport Integer Integer Float Integer Integer Integer Integer Object com/fs/starfarer/loading/specs/Q Float Float Float Float Integer 
            stack 
        .end stack 
L1484:  aload_0 
L1485:  getfield Field com/fs/starfarer/combat/entities/Ship extraOverlay Lcom/fs/graphics/Sprite; 
L1488:  ifnull L1777 
L1491:  invokestatic Method org/lwjgl/opengl/GL11 glPushMatrix ()V 
L1494:  aload_0 
L1495:  getfield Field com/fs/starfarer/combat/entities/Ship extraOverlaySize F 
L1498:  aload_0 
L1499:  getfield Field com/fs/starfarer/combat/entities/Ship extraOverlay Lcom/fs/graphics/Sprite; 
L1502:  invokevirtual Method com/fs/graphics/Sprite getImageWidth ()I 
L1505:  i2f 
L1506:  fdiv 
L1507:  fstore 16 
L1509:  aload_0 
L1510:  getfield Field com/fs/starfarer/combat/entities/Ship extraOverlay Lcom/fs/graphics/Sprite; 
L1513:  invokevirtual Method com/fs/graphics/Sprite getWidth ()F 
L1516:  aload_0 
L1517:  getfield Field com/fs/starfarer/combat/entities/Ship extraOverlay Lcom/fs/graphics/Sprite; 
L1520:  invokevirtual Method com/fs/graphics/Sprite getHeight ()F 
L1523:  fadd 
L1524:  fconst_2 
L1525:  fdiv 
L1526:  fload 16 
L1528:  fmul 
L1529:  fstore 17 
L1531:  iload 15 
L1533:  ifne L1548 
L1536:  aload_0 
L1537:  getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L1540:  fconst_0 
L1541:  fconst_0 
L1542:  fload 17 
L1544:  iconst_1 
L1545:  invokestatic Method com/fs/starfarer/renderers/damage/B 'super' (Lcom/fs/graphics/Sprite;FFFI)V 

        .stack append Float Float 
L1548:  aload_0 
L1549:  getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L1552:  invokevirtual Method com/fs/graphics/Sprite getAngle ()F 
L1555:  fconst_0 
L1556:  fconst_0 
L1557:  fconst_1 
L1558:  invokestatic Method org/lwjgl/opengl/GL11 glRotatef (FFFF)V 
L1561:  aload_0 
L1562:  getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L1565:  invokevirtual Method com/fs/graphics/Sprite getCenterX ()F 
L1568:  aload_0 
L1569:  getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L1572:  invokevirtual Method com/fs/graphics/Sprite getWidth ()F 
L1575:  fconst_2 
L1576:  fdiv 
L1577:  fsub 
L1578:  fneg 
L1579:  aload_0 
L1580:  getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L1583:  invokevirtual Method com/fs/graphics/Sprite getCenterY ()F 
L1586:  aload_0 
L1587:  getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L1590:  invokevirtual Method com/fs/graphics/Sprite getHeight ()F 
L1593:  fconst_2 
L1594:  fdiv 
L1595:  fsub 
L1596:  fneg 
L1597:  fconst_0 
L1598:  invokestatic Method org/lwjgl/opengl/GL11 glTranslatef (FFF)V 
L1601:  aload_0 
L1602:  getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L1605:  invokevirtual Method com/fs/graphics/Sprite getAngle ()F 
L1608:  fneg 
L1609:  fconst_0 
L1610:  fconst_0 
L1611:  fconst_1 
L1612:  invokestatic Method org/lwjgl/opengl/GL11 glRotatef (FFFF)V 
L1615:  aload_0 
L1616:  getfield Field com/fs/starfarer/combat/entities/Ship extraOverlay Lcom/fs/graphics/Sprite; 
L1619:  aload_0 
L1620:  getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L1623:  invokevirtual Method com/fs/graphics/Sprite getAlphaMult ()F 
L1626:  invokevirtual Method com/fs/graphics/Sprite setAlphaMult (F)V 
L1629:  aload_0 
L1630:  getfield Field com/fs/starfarer/combat/entities/Ship extraOverlay Lcom/fs/graphics/Sprite; 
L1633:  aload_0 
L1634:  getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L1637:  invokevirtual Method com/fs/graphics/Sprite getAngle ()F 
L1640:  aload_0 
L1641:  getfield Field com/fs/starfarer/combat/entities/Ship extraOverlayAngleOffset F 
L1644:  fadd 
L1645:  invokevirtual Method com/fs/graphics/Sprite setAngle (F)V 
L1648:  fload 16 
L1650:  fneg 
L1651:  fconst_2 
L1652:  fdiv 
L1653:  ldc_w +0.5f 
L1656:  fadd 
L1657:  fstore 18 
L1659:  fload 16 
L1661:  fneg 
L1662:  fconst_2 
L1663:  fdiv 
L1664:  ldc_w +0.5f 
L1667:  fadd 
L1668:  fstore 19 
L1670:  fload 16 
L1672:  fstore 20 
L1674:  fload 16 
L1676:  fstore 21 
L1678:  aload_0 
L1679:  getfield Field com/fs/starfarer/combat/entities/Ship extraOverlayShadowOpacity F 
L1682:  fstore 22 
L1684:  fload 22 
L1686:  fconst_0 
L1687:  fcmpl 
L1688:  ifle L1725 
L1691:  aload_0 
L1692:  getfield Field com/fs/starfarer/combat/entities/Ship extraOverlay Lcom/fs/graphics/Sprite; 
L1695:  getstatic Field java/awt/Color black Ljava/awt/Color; 
L1698:  fload 22 
L1700:  invokestatic Method com/fs/graphics/util/B 'Ô00000' (Ljava/awt/Color;F)Ljava/awt/Color; 
L1703:  invokevirtual Method com/fs/graphics/Sprite setColor (Ljava/awt/Color;)V 
L1706:  aload_0 
L1707:  getfield Field com/fs/starfarer/combat/entities/Ship extraOverlay Lcom/fs/graphics/Sprite; 
L1710:  fconst_1 
L1711:  ldc_w -1.0f 
L1714:  fload 18 
L1716:  fload 19 
L1718:  fload 20 
L1720:  fload 21 
L1722:  invokevirtual Method com/fs/graphics/Sprite renderRegionAtCenter (FFFFFF)V 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/api/combat/CombatEngineLayers Object com/fs/starfarer/combat/CombatViewport Integer Integer Float Integer Integer Integer Integer Object com/fs/starfarer/loading/specs/Q Float Float Float Float Integer Float Float Float Float Float Float Float 
            stack 
        .end stack 
L1725:  aload_0 
L1726:  getfield Field com/fs/starfarer/combat/entities/Ship extraOverlayMatchHullColor Z 
L1729:  ifeq L1739 
L1732:  aload_0 
L1733:  invokevirtual Method com/fs/starfarer/combat/entities/Ship updateExtraOverlayColor ()V 
L1736:  goto L1749 

        .stack same 
L1739:  aload_0 
L1740:  getfield Field com/fs/starfarer/combat/entities/Ship extraOverlay Lcom/fs/graphics/Sprite; 
L1743:  getstatic Field java/awt/Color white Ljava/awt/Color; 
L1746:  invokevirtual Method com/fs/graphics/Sprite setColor (Ljava/awt/Color;)V 

        .stack same 
L1749:  aload_0 
L1750:  getfield Field com/fs/starfarer/combat/entities/Ship extraOverlay Lcom/fs/graphics/Sprite; 
L1753:  fconst_0 
L1754:  fconst_0 
L1755:  fload 18 
L1757:  fload 19 
L1759:  fload 20 
L1761:  fload 21 
L1763:  invokevirtual Method com/fs/graphics/Sprite renderRegionAtCenter (FFFFFF)V 
L1766:  iload 15 
L1768:  ifne L1774 
L1771:  invokestatic Method com/fs/starfarer/renderers/damage/B 'Ò00000' ()V 

        .stack same 
L1774:  invokestatic Method org/lwjgl/opengl/GL11 glPopMatrix ()V 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/api/combat/CombatEngineLayers Object com/fs/starfarer/combat/CombatViewport Integer Integer Float Integer Integer Integer Integer Object com/fs/starfarer/loading/specs/Q Float Float Float Float Integer 
            stack 
        .end stack 
L1777:  aload_0 
L1778:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getVisualBounds ()Lcom/fs/starfarer/combat/E/o0OO; 
L1781:  ifnull L1788 
L1784:  aload_0 
L1785:  invokevirtual Method com/fs/starfarer/combat/entities/Ship unclipToShip ()V 

        .stack chop 1 
L1788:  aload_0 
L1789:  getfield Field com/fs/starfarer/combat/entities/Ship visualBounds Lcom/fs/starfarer/combat/E/o0OO; 
L1792:  ifnull L1825 
L1795:  invokestatic Method org/lwjgl/opengl/GL11 glPushMatrix ()V 
L1798:  aload_0 
L1799:  getfield Field com/fs/starfarer/combat/entities/Ship renderOffset Lorg/lwjgl/util/vector/Vector2f; 
L1802:  aload_0 
L1803:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getFacing ()F 
L1806:  invokestatic Method com/fs/starfarer/prototype/Utils o00000 (Lorg/lwjgl/util/vector/Vector2f;F)Lorg/lwjgl/util/vector/Vector2f; 
L1809:  astore 15 
L1811:  aload 15 
L1813:  getfield Field org/lwjgl/util/vector/Vector2f x F 
L1816:  aload 15 
L1818:  getfield Field org/lwjgl/util/vector/Vector2f y F 
L1821:  fconst_0 
L1822:  invokestatic Method org/lwjgl/opengl/GL11 glTranslatef (FFF)V 

        .stack same 
L1825:  ldc_w 'Module rendering' 
L1828:  invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L1831:  iload 9 
L1833:  ifeq L1853 
L1836:  aload_0 
L1837:  getfield Field com/fs/starfarer/combat/entities/Ship doNotRenderSprite Z 
L1840:  ifne L1853 
L1843:  aload_0 
L1844:  aconst_null 
L1845:  iconst_0 
L1846:  aload_0 
L1847:  getfield Field com/fs/starfarer/combat/entities/Ship combinedAlphaMult F 
L1850:  invokevirtual Method com/fs/starfarer/combat/entities/Ship renderSlotCovers (Ljava/awt/Color;ZF)V 

        .stack same 
L1853:  iload 7 
L1855:  ifeq L1912 
L1858:  aload_0 
L1859:  getfield Field com/fs/starfarer/combat/entities/Ship doNotRenderWeapons Z 
L1862:  ifne L1912 
L1865:  aload_0 
L1866:  getfield Field com/fs/starfarer/combat/entities/Ship modules Ljava/util/List; 
L1869:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L1874:  astore 16 
L1876:  goto L1902 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/api/combat/CombatEngineLayers Object com/fs/starfarer/combat/CombatViewport Integer Integer Float Integer Integer Integer Integer Object com/fs/starfarer/loading/specs/Q Float Float Float Float Top Object java/util/Iterator 
            stack 
        .end stack 
L1879:  aload 16 
L1881:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L1886:  checkcast com/fs/starfarer/combat/entities/ship/A/OooO 
L1889:  astore 15 
L1891:  aload 15 
L1893:  aload_0 
L1894:  getfield Field com/fs/starfarer/combat/entities/Ship combinedAlphaMult F 
L1897:  invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/A/OooO renderUnder (F)V 2 

        .stack same 
L1902:  aload 16 
L1904:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L1909:  ifne L1879 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/api/combat/CombatEngineLayers Object com/fs/starfarer/combat/CombatViewport Integer Integer Float Integer Integer Integer Integer Object com/fs/starfarer/loading/specs/Q Float Float Float Float 
            stack 
        .end stack 
L1912:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L1915:  aload_0 
L1916:  getfield Field com/fs/starfarer/combat/entities/Ship visualBounds Lcom/fs/starfarer/combat/E/o0OO; 
L1919:  ifnull L1925 
L1922:  invokestatic Method org/lwjgl/opengl/GL11 glPopMatrix ()V 

        .stack same 
L1925:  getstatic Field com/fs/graphics/util/GLListManager buildingList Z 
L1928:  ifne L2004 
L1931:  iload 9 
L1933:  ifeq L2004 
L1936:  aload_0 
L1937:  getfield Field com/fs/starfarer/combat/entities/Ship doNotRenderSprite Z 
L1940:  ifne L2004 
L1943:  ldc_w 'Damage decal rendering' 
L1946:  invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L1949:  aload_0 
L1950:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isFighter ()Z 
L1953:  ifeq L1978 
L1956:  aload_0 
L1957:  getfield Field com/fs/starfarer/combat/entities/Ship decalRenderer Lcom/fs/starfarer/renderers/damage/String; 
L1960:  aload_0 
L1961:  getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L1964:  aload_0 
L1965:  getfield Field com/fs/starfarer/combat/entities/Ship combinedAlphaMult F 
L1968:  ldc_w +0.5f 
L1971:  fmul 
L1972:  invokevirtual Method com/fs/starfarer/renderers/damage/String o00000 (Lcom/fs/graphics/Sprite;F)V 
L1975:  goto L1993 

        .stack same 
L1978:  aload_0 
L1979:  getfield Field com/fs/starfarer/combat/entities/Ship decalRenderer Lcom/fs/starfarer/renderers/damage/String; 
L1982:  aload_0 
L1983:  getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L1986:  aload_0 
L1987:  getfield Field com/fs/starfarer/combat/entities/Ship combinedAlphaMult F 
L1990:  invokevirtual Method com/fs/starfarer/renderers/damage/String o00000 (Lcom/fs/graphics/Sprite;F)V 

        .stack same 
L1993:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L1996:  aload_0 
L1997:  aload_0 
L1998:  getfield Field com/fs/starfarer/combat/entities/Ship alphaMult F 
L2001:  invokevirtual Method com/fs/starfarer/combat/entities/Ship renderPieceBounds (F)V 

        .stack same 
L2004:  aload_0 
L2005:  getfield Field com/fs/starfarer/combat/entities/Ship visualBounds Lcom/fs/starfarer/combat/E/o0OO; 
L2008:  ifnull L2041 
L2011:  invokestatic Method org/lwjgl/opengl/GL11 glPushMatrix ()V 
L2014:  aload_0 
L2015:  getfield Field com/fs/starfarer/combat/entities/Ship renderOffset Lorg/lwjgl/util/vector/Vector2f; 
L2018:  aload_0 
L2019:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getFacing ()F 
L2022:  invokestatic Method com/fs/starfarer/prototype/Utils o00000 (Lorg/lwjgl/util/vector/Vector2f;F)Lorg/lwjgl/util/vector/Vector2f; 
L2025:  astore 15 
L2027:  aload 15 
L2029:  getfield Field org/lwjgl/util/vector/Vector2f x F 
L2032:  aload 15 
L2034:  getfield Field org/lwjgl/util/vector/Vector2f y F 
L2037:  fconst_0 
L2038:  invokestatic Method org/lwjgl/opengl/GL11 glTranslatef (FFF)V 

        .stack same 
L2041:  aload_0 
L2042:  getfield Field com/fs/starfarer/combat/entities/Ship isHulk Z 
L2045:  ifne L2085 
L2048:  aload_0 
L2049:  getfield Field com/fs/starfarer/combat/entities/Ship renderEngines Z 
L2052:  ifeq L2085 
L2055:  aload_0 
L2056:  getfield Field com/fs/starfarer/combat/entities/Ship renderEnginesUnder Z 
L2059:  ifne L2085 
L2062:  ldc_w 'EngineGlow rendering' 
L2065:  invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L2068:  iload 9 
L2070:  ifeq L2082 
L2073:  aload_0 
L2074:  getfield Field com/fs/starfarer/combat/entities/Ship engineController Lcom/fs/starfarer/combat/entities/ship/null; 
L2077:  fload 13 
L2079:  invokevirtual Method com/fs/starfarer/combat/entities/ship/null render (F)V 

        .stack same 
L2082:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 

        .stack same 
L2085:  fload 14 
L2087:  fconst_0 
L2088:  fcmpl 
L2089:  ifle L2128 
L2092:  aload_0 
L2093:  getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L2096:  invokevirtual Method com/fs/starfarer/combat/entities/ship/D isVenting ()Z 
L2099:  ifne L2128 
L2102:  iload 9 
L2104:  ifeq L2128 
L2107:  aload_0 
L2108:  getfield Field com/fs/starfarer/combat/entities/Ship doNotRenderSprite Z 
L2111:  ifne L2128 
L2114:  aload_0 
L2115:  getfield Field com/fs/starfarer/combat/entities/Ship empDecal Lcom/fs/starfarer/renderers/damage/I; 
L2118:  aload_0 
L2119:  getfield Field com/fs/starfarer/combat/entities/Ship combinedAlphaMult F 
L2122:  fload 14 
L2124:  fmul 
L2125:  invokevirtual Method com/fs/starfarer/renderers/damage/I 'super' (F)V 

        .stack same 
L2128:  iload_3 
L2129:  ifeq L2202 
L2132:  iload 7 
L2134:  ifeq L2202 
L2137:  aload_0 
L2138:  getfield Field com/fs/starfarer/combat/entities/Ship doNotRenderWeapons Z 
L2141:  ifne L2202 
L2144:  ldc_w 'Module rendering' 
L2147:  invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L2150:  aload_0 
L2151:  getfield Field com/fs/starfarer/combat/entities/Ship modules Ljava/util/List; 
L2154:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L2159:  astore 16 
L2161:  goto L2189 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/api/combat/CombatEngineLayers Object com/fs/starfarer/combat/CombatViewport Integer Integer Float Integer Integer Integer Integer Object com/fs/starfarer/loading/specs/Q Float Float Float Float Top Object java/util/Iterator 
            stack 
        .end stack 
L2164:  aload 16 
L2166:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L2171:  checkcast com/fs/starfarer/combat/entities/ship/A/OooO 
L2174:  astore 15 
L2176:  aload 15 
L2178:  aload_1 
L2179:  aload_2 
L2180:  aload_0 
L2181:  getfield Field com/fs/starfarer/combat/entities/Ship combinedAlphaMult F 
L2184:  invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/A/OooO render (Lcom/fs/starfarer/api/combat/CombatEngineLayers;Lcom/fs/starfarer/combat/CombatViewport;F)V 4 

        .stack same 
L2189:  aload 16 
L2191:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L2196:  ifne L2164 
L2199:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/api/combat/CombatEngineLayers Object com/fs/starfarer/combat/CombatViewport Integer Integer Float Integer Integer Integer Integer Object com/fs/starfarer/loading/specs/Q Float Float Float Float 
            stack 
        .end stack 
L2202:  aload_0 
L2203:  getfield Field com/fs/starfarer/combat/entities/Ship visualBounds Lcom/fs/starfarer/combat/E/o0OO; 
L2206:  ifnull L2212 
L2209:  invokestatic Method org/lwjgl/opengl/GL11 glPopMatrix ()V 

        .stack same 
L2212:  getstatic Field com/fs/graphics/util/GLListManager buildingList Z 
L2215:  ifeq L2247 
L2218:  iload 9 
L2220:  ifeq L2247 
L2223:  ldc_w 'Damage decal rendering - fleet list' 
L2226:  invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L2229:  aload_0 
L2230:  getfield Field com/fs/starfarer/combat/entities/Ship decalRenderer Lcom/fs/starfarer/renderers/damage/String; 
L2233:  aload_0 
L2234:  getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L2237:  aload_0 
L2238:  getfield Field com/fs/starfarer/combat/entities/Ship alphaMult F 
L2241:  invokevirtual Method com/fs/starfarer/renderers/damage/String o00000 (Lcom/fs/graphics/Sprite;F)V 
L2244:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 

        .stack same 
L2247:  iload 9 
L2249:  ifeq L2257 
L2252:  aload_0 
L2253:  iconst_1 
L2254:  invokevirtual Method com/fs/starfarer/combat/entities/Ship renderAfterimages (Z)V 

        .stack same 
L2257:  ldc_w 'Flux vent rendering' 
L2260:  invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L2263:  fload 14 
L2265:  fconst_0 
L2266:  fcmpl 
L2267:  ifle L2306 
L2270:  aload_0 
L2271:  getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L2274:  invokevirtual Method com/fs/starfarer/combat/entities/ship/D isVenting ()Z 
L2277:  ifeq L2306 
L2280:  aload_0 
L2281:  getfield Field com/fs/starfarer/combat/entities/Ship doNotRenderVentingAnimation Z 
L2284:  ifne L2306 
L2287:  iload 9 
L2289:  ifeq L2306 
L2292:  aload_0 
L2293:  getfield Field com/fs/starfarer/combat/entities/Ship ventingAnimation Lcom/fs/starfarer/renderers/oOoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO; 
L2296:  aload_0 
L2297:  getfield Field com/fs/starfarer/combat/entities/Ship combinedAlphaMult F 
L2300:  fload 14 
L2302:  fmul 
L2303:  invokevirtual Method com/fs/starfarer/renderers/oOoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 'Ò00000' (F)V 

        .stack same 
L2306:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L2309:  aload_0 
L2310:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getShield ()Lcom/fs/starfarer/combat/systems/G; 
L2313:  astore 15 
L2315:  aload 15 
L2317:  ifnull L2341 
L2320:  iload 7 
L2322:  ifeq L2341 
L2325:  aload_0 
L2326:  getfield Field com/fs/starfarer/combat/entities/Ship doNotRenderShield Z 
L2329:  ifne L2341 
L2332:  aload 15 
L2334:  aload_0 
L2335:  getfield Field com/fs/starfarer/combat/entities/Ship combinedAlphaMult F 
L2338:  invokevirtual Method com/fs/starfarer/combat/systems/G render (F)V 

        .stack append Object com/fs/starfarer/combat/systems/G 
L2341:  aload_0 
L2342:  getfield Field com/fs/starfarer/combat/entities/Ship jitterEffectColorShifter Lcom/fs/starfarer/util/ColorShifter; 
L2345:  invokevirtual Method com/fs/starfarer/util/ColorShifter getCurr ()Ljava/awt/Color; 
L2348:  astore 16 
L2350:  aload_0 
L2351:  getfield Field com/fs/starfarer/combat/entities/Ship jitterEffectIntensityShifter Lcom/fs/starfarer/util/ValueShifter; 
L2354:  invokevirtual Method com/fs/starfarer/util/ValueShifter getCurr ()F 
L2357:  fstore 17 
L2359:  aload_0 
L2360:  getfield Field com/fs/starfarer/combat/entities/Ship jitterCopiesShifter Lcom/fs/starfarer/util/ValueShifter; 
L2363:  invokevirtual Method com/fs/starfarer/util/ValueShifter getCurr ()F 
L2366:  f2i 
L2367:  istore 18 
L2369:  iload 18 
L2371:  iconst_1 
L2372:  if_icmpge L2388 
L2375:  aload_0 
L2376:  getfield Field com/fs/starfarer/combat/entities/Ship jitterCopiesShifter Lcom/fs/starfarer/util/ValueShifter; 
L2379:  invokevirtual Method com/fs/starfarer/util/ValueShifter isShifted ()Z 
L2382:  ifeq L2388 
L2385:  iconst_1 
L2386:  istore 18 

        .stack append Object java/awt/Color Float Integer 
L2388:  aload_0 
L2389:  getfield Field com/fs/starfarer/combat/entities/Ship jitterMinRangeShifter Lcom/fs/starfarer/util/ValueShifter; 
L2392:  invokevirtual Method com/fs/starfarer/util/ValueShifter getCurr ()F 
L2395:  fstore 19 
L2397:  aload_0 
L2398:  getfield Field com/fs/starfarer/combat/entities/Ship jitterRangeShifter Lcom/fs/starfarer/util/ValueShifter; 
L2401:  invokevirtual Method com/fs/starfarer/util/ValueShifter getCurr ()F 
L2404:  fstore 20 
L2406:  iload 7 
L2408:  ifeq L3233 
L2411:  aload_0 
L2412:  getfield Field com/fs/starfarer/combat/entities/Ship jitterEffectColorShifter Lcom/fs/starfarer/util/ColorShifter; 
L2415:  invokevirtual Method com/fs/starfarer/util/ColorShifter isShifted ()Z 
L2418:  ifeq L3233 
L2421:  fload 17 
L2423:  fconst_0 
L2424:  fcmpl 
L2425:  ifle L3233 
L2428:  aload 16 
L2430:  ifnull L3233 
L2433:  aload_0 
L2434:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isPiece ()Z 
L2437:  ifne L3233 
L2440:  ldc_w 'Jitter rendering' 
L2443:  invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L2446:  aload_0 
L2447:  getfield Field com/fs/starfarer/combat/entities/Ship combinedAlphaMult F 
L2450:  fload 17 
L2452:  fmul 
L2453:  fstore 21 
L2455:  aload_0 
L2456:  getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L2459:  invokevirtual Method com/fs/graphics/Sprite getColor ()Ljava/awt/Color; 
L2462:  astore 22 
L2464:  aload_0 
L2465:  getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L2468:  aload 16 
L2470:  invokevirtual Method com/fs/graphics/Sprite setColor (Ljava/awt/Color;)V 
L2473:  aload_0 
L2474:  getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L2477:  fload 21 
L2479:  invokevirtual Method com/fs/graphics/Sprite setAlphaMult (F)V 
L2482:  aload_0 
L2483:  getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L2486:  invokevirtual Method com/fs/graphics/Sprite setAdditiveBlend ()V 
L2489:  fload 19 
L2491:  fstore 23 
L2493:  aload_0 
L2494:  getfield Field com/fs/starfarer/combat/entities/Ship doNotRenderSprite Z 
L2497:  ifne L2522 
L2500:  aload_0 
L2501:  getfield Field com/fs/starfarer/combat/entities/Ship jitter Lcom/fs/starfarer/renderers/JitterRenderer; 
L2504:  aload_0 
L2505:  getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L2508:  fconst_0 
L2509:  fconst_0 
L2510:  fload 23 
L2512:  fload 20 
L2514:  fload 17 
L2516:  fmul 
L2517:  iload 18 
L2519:  invokevirtual Method com/fs/starfarer/renderers/JitterRenderer render (Lcom/fs/graphics/Sprite;FFFFI)V 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/api/combat/CombatEngineLayers Object com/fs/starfarer/combat/CombatViewport Integer Integer Float Integer Integer Integer Integer Object com/fs/starfarer/loading/specs/Q Float Float Float Float Object com/fs/starfarer/combat/systems/G Object java/awt/Color Float Integer Float Float Float Object java/awt/Color Float 
            stack 
        .end stack 
L2522:  aload_0 
L2523:  getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L2526:  aload 22 
L2528:  invokevirtual Method com/fs/graphics/Sprite setColor (Ljava/awt/Color;)V 
L2531:  aload_0 
L2532:  getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L2535:  invokevirtual Method com/fs/graphics/Sprite setNormalBlend ()V 
L2538:  ldc_w 'Module jitter' 
L2541:  invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L2544:  aconst_null 
L2545:  astore 24 
L2547:  aload_0 
L2548:  getfield Field com/fs/starfarer/combat/entities/Ship jitter Lcom/fs/starfarer/renderers/JitterRenderer; 
L2551:  invokevirtual Method com/fs/starfarer/renderers/JitterRenderer getRandom ()Ljava/util/Random; 
L2554:  astore 25 
L2556:  fload 20 
L2558:  fload 17 
L2560:  fmul 
L2561:  fstore 26 
L2563:  aload 15 
L2565:  ifnull L2574 
L2568:  aload 15 
L2570:  iconst_1 
L2571:  invokevirtual Method com/fs/starfarer/combat/systems/G setRenderAdditive (Z)V 

        .stack append Object com/fs/graphics/util/GLListManager$GLListToken Object java/util/Random Float 
L2574:  aload_0 
L2575:  getfield Field com/fs/starfarer/combat/entities/Ship doNotRenderWeapons Z 
L2578:  ifne L2898 
L2581:  iconst_0 
L2582:  istore 27 
L2584:  goto L2891 

        .stack append Integer 
L2587:  new org/lwjgl/util/vector/Vector2f 
L2590:  dup 
L2591:  invokespecial Method org/lwjgl/util/vector/Vector2f <init> ()V 
L2594:  astore 28 
L2596:  fload 23 
L2598:  fconst_0 
L2599:  fcmpg 
L2600:  ifgt L2642 
L2603:  aload 28 
L2605:  aload 25 
L2607:  invokevirtual Method java/util/Random nextFloat ()F 
L2610:  fload 26 
L2612:  fmul 
L2613:  fload 26 
L2615:  fconst_2 
L2616:  fdiv 
L2617:  fsub 
L2618:  putfield Field org/lwjgl/util/vector/Vector2f x F 
L2621:  aload 28 
L2623:  aload 25 
L2625:  invokevirtual Method java/util/Random nextFloat ()F 
L2628:  fload 26 
L2630:  fmul 
L2631:  fload 26 
L2633:  fconst_2 
L2634:  fdiv 
L2635:  fsub 
L2636:  putfield Field org/lwjgl/util/vector/Vector2f y F 
L2639:  goto L2760 

        .stack append Object org/lwjgl/util/vector/Vector2f 
L2642:  aload 28 
L2644:  aload 25 
L2646:  invokevirtual Method java/util/Random nextFloat ()F 
L2649:  fload 26 
L2651:  fload 23 
L2653:  fsub 
L2654:  fmul 
L2655:  fload 23 
L2657:  fadd 
L2658:  putfield Field org/lwjgl/util/vector/Vector2f x F 
L2661:  aload 28 
L2663:  aload 25 
L2665:  invokevirtual Method java/util/Random nextFloat ()F 
L2668:  fload 26 
L2670:  fload 23 
L2672:  fsub 
L2673:  fmul 
L2674:  fload 23 
L2676:  fadd 
L2677:  putfield Field org/lwjgl/util/vector/Vector2f y F 
L2680:  aload 28 
L2682:  getfield Field org/lwjgl/util/vector/Vector2f x F 
L2685:  fload 23 
L2687:  fcmpg 
L2688:  ifge L2698 
L2691:  aload 28 
L2693:  fload 23 
L2695:  putfield Field org/lwjgl/util/vector/Vector2f x F 

        .stack same 
L2698:  aload 28 
L2700:  getfield Field org/lwjgl/util/vector/Vector2f y F 
L2703:  fload 23 
L2705:  fcmpg 
L2706:  ifge L2716 
L2709:  aload 28 
L2711:  fload 23 
L2713:  putfield Field org/lwjgl/util/vector/Vector2f y F 

        .stack same 
L2716:  aload 28 
L2718:  dup 
L2719:  getfield Field org/lwjgl/util/vector/Vector2f x F 
L2722:  aload 25 
L2724:  invokevirtual Method java/util/Random nextFloat ()F 
L2727:  ldc_w +0.5f 
L2730:  fsub 
L2731:  invokestatic Method java/lang/Math signum (F)F 
L2734:  fmul 
L2735:  putfield Field org/lwjgl/util/vector/Vector2f x F 
L2738:  aload 28 
L2740:  dup 
L2741:  getfield Field org/lwjgl/util/vector/Vector2f y F 
L2744:  aload 25 
L2746:  invokevirtual Method java/util/Random nextFloat ()F 
L2749:  ldc_w +0.5f 
L2752:  fsub 
L2753:  invokestatic Method java/lang/Math signum (F)F 
L2756:  fmul 
L2757:  putfield Field org/lwjgl/util/vector/Vector2f y F 

        .stack same 
L2760:  invokestatic Method org/lwjgl/opengl/GL11 glPushMatrix ()V 
L2763:  aload 28 
L2765:  getfield Field org/lwjgl/util/vector/Vector2f x F 
L2768:  aload 28 
L2770:  getfield Field org/lwjgl/util/vector/Vector2f y F 
L2773:  fconst_0 
L2774:  invokestatic Method org/lwjgl/opengl/GL11 glTranslatef (FFF)V 
L2777:  aload 24 
L2779:  invokestatic Method com/fs/graphics/util/GLListManager callList (Lcom/fs/graphics/util/GLListManager$GLListToken;)Z 
L2782:  istore 29 
L2784:  iload 29 
L2786:  ifne L2885 
L2789:  invokestatic Method com/fs/graphics/util/GLListManager beginList ()Lcom/fs/graphics/util/GLListManager$GLListToken; 
L2792:  astore 24 
L2794:  aload_0 
L2795:  aload 16 
L2797:  iconst_1 
L2798:  fload 21 
L2800:  invokevirtual Method com/fs/starfarer/combat/entities/Ship renderSlotCovers (Ljava/awt/Color;ZF)V 
L2803:  aload_0 
L2804:  getfield Field com/fs/starfarer/combat/entities/Ship modules Ljava/util/List; 
L2807:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L2812:  astore 31 
L2814:  goto L2872 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/api/combat/CombatEngineLayers Object com/fs/starfarer/combat/CombatViewport Integer Integer Float Integer Integer Integer Integer Object com/fs/starfarer/loading/specs/Q Float Float Float Float Object com/fs/starfarer/combat/systems/G Object java/awt/Color Float Integer Float Float Float Object java/awt/Color Float Object com/fs/graphics/util/GLListManager$GLListToken Object java/util/Random Float Integer Object org/lwjgl/util/vector/Vector2f Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L2817:  aload 31 
L2819:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L2824:  checkcast com/fs/starfarer/combat/entities/ship/A/OooO 
L2827:  astore 30 
L2829:  aload 30 
L2831:  invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/A/OooO setAdditiveBlend ()V 1 
L2836:  aload 30 
L2838:  aload 16 
L2840:  invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/A/OooO setColor (Ljava/awt/Color;)V 2 
L2845:  aload 30 
L2847:  aload_1 
L2848:  aload_2 
L2849:  fload 21 
L2851:  invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/A/OooO render (Lcom/fs/starfarer/api/combat/CombatEngineLayers;Lcom/fs/starfarer/combat/CombatViewport;F)V 4 
L2856:  aload 30 
L2858:  aload 22 
L2860:  invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/A/OooO setColor (Ljava/awt/Color;)V 2 
L2865:  aload 30 
L2867:  invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/A/OooO setNormalBlend ()V 1 

        .stack same 
L2872:  aload 31 
L2874:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L2879:  ifne L2817 
L2882:  invokestatic Method com/fs/graphics/util/GLListManager endList ()V 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/api/combat/CombatEngineLayers Object com/fs/starfarer/combat/CombatViewport Integer Integer Float Integer Integer Integer Integer Object com/fs/starfarer/loading/specs/Q Float Float Float Float Object com/fs/starfarer/combat/systems/G Object java/awt/Color Float Integer Float Float Float Object java/awt/Color Float Object com/fs/graphics/util/GLListManager$GLListToken Object java/util/Random Float Integer Object org/lwjgl/util/vector/Vector2f Integer 
            stack 
        .end stack 
L2885:  invokestatic Method org/lwjgl/opengl/GL11 glPopMatrix ()V 
L2888:  iinc 27 1 

        .stack chop 2 
L2891:  iload 27 
L2893:  iload 18 
L2895:  if_icmplt L2587 

        .stack chop 1 
L2898:  aload 15 
L2900:  ifnull L3216 
L2903:  aload_0 
L2904:  getfield Field com/fs/starfarer/combat/entities/Ship jitterShields Z 
L2907:  ifeq L3216 
L2910:  aload_0 
L2911:  getfield Field com/fs/starfarer/combat/entities/Ship doNotRenderShield Z 
L2914:  ifne L3216 
L2917:  iconst_0 
L2918:  istore 27 
L2920:  goto L3210 

        .stack append Integer 
L2923:  new org/lwjgl/util/vector/Vector2f 
L2926:  dup 
L2927:  invokespecial Method org/lwjgl/util/vector/Vector2f <init> ()V 
L2930:  astore 28 
L2932:  fload 23 
L2934:  fconst_0 
L2935:  fcmpg 
L2936:  ifgt L2978 
L2939:  aload 28 
L2941:  aload 25 
L2943:  invokevirtual Method java/util/Random nextFloat ()F 
L2946:  fload 26 
L2948:  fmul 
L2949:  fload 26 
L2951:  fconst_2 
L2952:  fdiv 
L2953:  fsub 
L2954:  putfield Field org/lwjgl/util/vector/Vector2f x F 
L2957:  aload 28 
L2959:  aload 25 
L2961:  invokevirtual Method java/util/Random nextFloat ()F 
L2964:  fload 26 
L2966:  fmul 
L2967:  fload 26 
L2969:  fconst_2 
L2970:  fdiv 
L2971:  fsub 
L2972:  putfield Field org/lwjgl/util/vector/Vector2f y F 
L2975:  goto L3096 

        .stack append Object org/lwjgl/util/vector/Vector2f 
L2978:  aload 28 
L2980:  aload 25 
L2982:  invokevirtual Method java/util/Random nextFloat ()F 
L2985:  fload 26 
L2987:  fload 23 
L2989:  fsub 
L2990:  fmul 
L2991:  fload 23 
L2993:  fadd 
L2994:  putfield Field org/lwjgl/util/vector/Vector2f x F 
L2997:  aload 28 
L2999:  aload 25 
L3001:  invokevirtual Method java/util/Random nextFloat ()F 
L3004:  fload 26 
L3006:  fload 23 
L3008:  fsub 
L3009:  fmul 
L3010:  fload 23 
L3012:  fadd 
L3013:  putfield Field org/lwjgl/util/vector/Vector2f y F 
L3016:  aload 28 
L3018:  getfield Field org/lwjgl/util/vector/Vector2f x F 
L3021:  fload 23 
L3023:  fcmpg 
L3024:  ifge L3034 
L3027:  aload 28 
L3029:  fload 23 
L3031:  putfield Field org/lwjgl/util/vector/Vector2f x F 

        .stack same 
L3034:  aload 28 
L3036:  getfield Field org/lwjgl/util/vector/Vector2f y F 
L3039:  fload 23 
L3041:  fcmpg 
L3042:  ifge L3052 
L3045:  aload 28 
L3047:  fload 23 
L3049:  putfield Field org/lwjgl/util/vector/Vector2f y F 

        .stack same 
L3052:  aload 28 
L3054:  dup 
L3055:  getfield Field org/lwjgl/util/vector/Vector2f x F 
L3058:  aload 25 
L3060:  invokevirtual Method java/util/Random nextFloat ()F 
L3063:  ldc_w +0.5f 
L3066:  fsub 
L3067:  invokestatic Method java/lang/Math signum (F)F 
L3070:  fmul 
L3071:  putfield Field org/lwjgl/util/vector/Vector2f x F 
L3074:  aload 28 
L3076:  dup 
L3077:  getfield Field org/lwjgl/util/vector/Vector2f y F 
L3080:  aload 25 
L3082:  invokevirtual Method java/util/Random nextFloat ()F 
L3085:  ldc_w +0.5f 
L3088:  fsub 
L3089:  invokestatic Method java/lang/Math signum (F)F 
L3092:  fmul 
L3093:  putfield Field org/lwjgl/util/vector/Vector2f y F 

        .stack same 
L3096:  invokestatic Method org/lwjgl/opengl/GL11 glPushMatrix ()V 
L3099:  aload 28 
L3101:  getfield Field org/lwjgl/util/vector/Vector2f x F 
L3104:  aload 28 
L3106:  getfield Field org/lwjgl/util/vector/Vector2f y F 
L3109:  fconst_0 
L3110:  invokestatic Method org/lwjgl/opengl/GL11 glTranslatef (FFF)V 
L3113:  aload 15 
L3115:  ifnull L3204 
L3118:  aload_0 
L3119:  getfield Field com/fs/starfarer/combat/entities/Ship doNotRenderShield Z 
L3122:  ifne L3204 
L3125:  aconst_null 
L3126:  astore 29 
L3128:  aload 29 
L3130:  invokestatic Method com/fs/graphics/util/GLListManager callList (Lcom/fs/graphics/util/GLListManager$GLListToken;)Z 
L3133:  istore 30 
L3135:  iload 30 
L3137:  ifne L3204 
L3140:  invokestatic Method com/fs/graphics/util/GLListManager beginList ()Lcom/fs/graphics/util/GLListManager$GLListToken; 
L3143:  astore 29 
L3145:  aload 15 
L3147:  invokevirtual Method com/fs/starfarer/combat/systems/G getInnerColor ()Ljava/awt/Color; 
L3150:  astore 31 
L3152:  aload 15 
L3154:  invokevirtual Method com/fs/starfarer/combat/systems/G getRingColor ()Ljava/awt/Color; 
L3157:  astore 32 
L3159:  aload 15 
L3161:  aload 16 
L3163:  invokevirtual Method com/fs/starfarer/combat/systems/G setInnerColor (Ljava/awt/Color;)V 
L3166:  aload 15 
L3168:  aload 16 
L3170:  invokevirtual Method com/fs/starfarer/combat/systems/G setRingColor (Ljava/awt/Color;)V 
L3173:  aload 15 
L3175:  fload 21 
L3177:  fload 17 
L3179:  fmul 
L3180:  ldc_w +0.20000000298023224f 
L3183:  fmul 
L3184:  invokevirtual Method com/fs/starfarer/combat/systems/G render (F)V 
L3187:  aload 15 
L3189:  aload 31 
L3191:  invokevirtual Method com/fs/starfarer/combat/systems/G setInnerColor (Ljava/awt/Color;)V 
L3194:  aload 15 
L3196:  aload 32 
L3198:  invokevirtual Method com/fs/starfarer/combat/systems/G setRingColor (Ljava/awt/Color;)V 
L3201:  invokestatic Method com/fs/graphics/util/GLListManager endList ()V 

        .stack same_extended 
L3204:  invokestatic Method org/lwjgl/opengl/GL11 glPopMatrix ()V 
L3207:  iinc 27 1 

        .stack chop 1 
L3210:  iload 27 
L3212:  iconst_4 
L3213:  if_icmplt L2923 

        .stack chop 1 
L3216:  aload 15 
L3218:  ifnull L3227 
L3221:  aload 15 
L3223:  iconst_0 
L3224:  invokevirtual Method com/fs/starfarer/combat/systems/G setRenderAdditive (Z)V 

        .stack same 
L3227:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L3230:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/api/combat/CombatEngineLayers Object com/fs/starfarer/combat/CombatViewport Integer Integer Float Integer Integer Integer Integer Object com/fs/starfarer/loading/specs/Q Float Float Float Float 
            stack 
        .end stack 
L3233:  aload_0 
L3234:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getSystem ()Lcom/fs/starfarer/combat/systems/F; 
L3237:  ifnull L3267 
L3240:  aload_0 
L3241:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getSystem ()Lcom/fs/starfarer/combat/systems/F; 
L3244:  invokevirtual Method com/fs/starfarer/combat/systems/F getActiveLayers ()Ljava/util/EnumSet; 
L3247:  aload_1 
L3248:  invokevirtual Method java/util/EnumSet contains (Ljava/lang/Object;)Z 
L3251:  ifeq L3267 
L3254:  aload_0 
L3255:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getSystem ()Lcom/fs/starfarer/combat/systems/F; 
L3258:  aload_1 
L3259:  aload_2 
L3260:  aload_0 
L3261:  getfield Field com/fs/starfarer/combat/entities/Ship combinedAlphaMult F 
L3264:  invokevirtual Method com/fs/starfarer/combat/systems/F render (Lcom/fs/starfarer/api/combat/CombatEngineLayers;Lcom/fs/starfarer/combat/CombatViewport;F)V 

        .stack same 
L3267:  aload_0 
L3268:  getfield Field com/fs/starfarer/combat/entities/Ship phaseCloak Lcom/fs/starfarer/combat/systems/F; 
L3271:  ifnull L3301 
L3274:  aload_0 
L3275:  getfield Field com/fs/starfarer/combat/entities/Ship phaseCloak Lcom/fs/starfarer/combat/systems/F; 
L3278:  invokevirtual Method com/fs/starfarer/combat/systems/F getActiveLayers ()Ljava/util/EnumSet; 
L3281:  aload_1 
L3282:  invokevirtual Method java/util/EnumSet contains (Ljava/lang/Object;)Z 
L3285:  ifeq L3301 
L3288:  aload_0 
L3289:  getfield Field com/fs/starfarer/combat/entities/Ship phaseCloak Lcom/fs/starfarer/combat/systems/F; 
L3292:  aload_1 
L3293:  aload_2 
L3294:  aload_0 
L3295:  getfield Field com/fs/starfarer/combat/entities/Ship combinedAlphaMult F 
L3298:  invokevirtual Method com/fs/starfarer/combat/systems/F render (Lcom/fs/starfarer/api/combat/CombatEngineLayers;Lcom/fs/starfarer/combat/CombatViewport;F)V 

        .stack same 
L3301:  aload_0 
L3302:  getfield Field com/fs/starfarer/combat/entities/Ship travelDrive Lcom/fs/starfarer/combat/systems/F; 
L3305:  ifnull L3335 
L3308:  aload_0 
L3309:  getfield Field com/fs/starfarer/combat/entities/Ship travelDrive Lcom/fs/starfarer/combat/systems/F; 
L3312:  invokevirtual Method com/fs/starfarer/combat/systems/F getActiveLayers ()Ljava/util/EnumSet; 
L3315:  aload_1 
L3316:  invokevirtual Method java/util/EnumSet contains (Ljava/lang/Object;)Z 
L3319:  ifeq L3335 
L3322:  aload_0 
L3323:  getfield Field com/fs/starfarer/combat/entities/Ship travelDrive Lcom/fs/starfarer/combat/systems/F; 
L3326:  aload_1 
L3327:  aload_2 
L3328:  aload_0 
L3329:  getfield Field com/fs/starfarer/combat/entities/Ship combinedAlphaMult F 
L3332:  invokevirtual Method com/fs/starfarer/combat/systems/F render (Lcom/fs/starfarer/api/combat/CombatEngineLayers;Lcom/fs/starfarer/combat/CombatViewport;F)V 

        .stack same 
L3335:  aload_1 
L3336:  aload_0 
L3337:  getfield Field com/fs/starfarer/combat/entities/Ship layer Lcom/fs/starfarer/api/combat/CombatEngineLayers; 
L3340:  if_acmpne L3364 
L3343:  aload_0 
L3344:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getAI ()Lcom/fs/starfarer/combat/ai/AI; 
L3347:  ifnull L3364 
L3350:  iload 7 
L3352:  ifeq L3364 
L3355:  aload_0 
L3356:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getAI ()Lcom/fs/starfarer/combat/ai/AI; 
L3359:  invokeinterface InterfaceMethod com/fs/starfarer/combat/ai/AI render ()V 1 

        .stack same 
L3364:  invokestatic Method org/lwjgl/opengl/GL11 glPopMatrix ()V 
L3367:  aload_0 
L3368:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getExactBounds ()Lcom/fs/starfarer/combat/E/o0OO; 
L3371:  astore 15 
L3373:  aload 15 
L3375:  ifnull L3605 
L3378:  aload_0 
L3379:  getfield Field com/fs/starfarer/combat/entities/Ship renderBounds Z 
L3382:  ifeq L3605 
L3385:  iload 7 
L3387:  ifeq L3605 
L3390:  aload 15 
L3392:  astore 16 
L3394:  aload_0 
L3395:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getVisualBounds ()Lcom/fs/starfarer/combat/E/o0OO; 
L3398:  ifnull L3407 
L3401:  aload_0 
L3402:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getVisualBounds ()Lcom/fs/starfarer/combat/E/o0OO; 
L3405:  astore 16 

        .stack append Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO 
L3407:  new org/lwjgl/util/vector/Vector2f 
L3410:  dup 
L3411:  aload_0 
L3412:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L3415:  invokespecial Method org/lwjgl/util/vector/Vector2f <init> (Lorg/lwjgl/util/vector/ReadableVector2f;)V 
L3418:  astore 17 
L3420:  aload 16 
L3422:  aload_0 
L3423:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getFacing ()F 
L3426:  aload 17 
L3428:  invokevirtual Method com/fs/starfarer/combat/E/o0OO rotateAndTranslate (FLorg/lwjgl/util/vector/Vector2f;)V 
L3431:  sipush 3553 
L3434:  invokestatic Method org/lwjgl/opengl/GL11 glDisable (I)V 
L3437:  sipush 3042 
L3440:  invokestatic Method org/lwjgl/opengl/GL11 glDisable (I)V 
L3443:  fconst_1 
L3444:  invokestatic Method org/lwjgl/opengl/GL11 glLineWidth (F)V 
L3447:  sipush 2848 
L3450:  invokestatic Method org/lwjgl/opengl/GL11 glEnable (I)V 
L3453:  iconst_1 
L3454:  invokestatic Method org/lwjgl/opengl/GL11 glBegin (I)V 
L3457:  aload 16 
L3459:  getfield Field com/fs/starfarer/combat/E/o0OO segments Ljava/util/List; 
L3462:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L3467:  astore 19 
L3469:  goto L3535 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/api/combat/CombatEngineLayers Object com/fs/starfarer/combat/CombatViewport Integer Integer Float Integer Integer Integer Integer Object com/fs/starfarer/loading/specs/Q Float Float Float Float Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object org/lwjgl/util/vector/Vector2f Top Object java/util/Iterator 
            stack 
        .end stack 
L3472:  aload 19 
L3474:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L3479:  checkcast com/fs/starfarer/combat/E/o0OO$o 
L3482:  astore 18 
L3484:  aload 18 
L3486:  getfield Field com/fs/starfarer/combat/E/o0OO$o isBreakEdge Z 
L3489:  ifeq L3502 
L3492:  fconst_1 
L3493:  fconst_1 
L3494:  fconst_0 
L3495:  fconst_1 
L3496:  invokestatic Method org/lwjgl/opengl/GL11 glColor4f (FFFF)V 
L3499:  goto L3509 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/api/combat/CombatEngineLayers Object com/fs/starfarer/combat/CombatViewport Integer Integer Float Integer Integer Integer Integer Object com/fs/starfarer/loading/specs/Q Float Float Float Float Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/o0OO$o Object java/util/Iterator 
            stack 
        .end stack 
L3502:  fconst_1 
L3503:  fconst_1 
L3504:  fconst_1 
L3505:  fconst_1 
L3506:  invokestatic Method org/lwjgl/opengl/GL11 glColor4f (FFFF)V 

        .stack same 
L3509:  aload 18 
L3511:  getfield Field com/fs/starfarer/combat/E/o0OO$o x1 F 
L3514:  aload 18 
L3516:  getfield Field com/fs/starfarer/combat/E/o0OO$o y1 F 
L3519:  invokestatic Method org/lwjgl/opengl/GL11 glVertex2f (FF)V 
L3522:  aload 18 
L3524:  getfield Field com/fs/starfarer/combat/E/o0OO$o x2 F 
L3527:  aload 18 
L3529:  getfield Field com/fs/starfarer/combat/E/o0OO$o y2 F 
L3532:  invokestatic Method org/lwjgl/opengl/GL11 glVertex2f (FF)V 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/api/combat/CombatEngineLayers Object com/fs/starfarer/combat/CombatViewport Integer Integer Float Integer Integer Integer Integer Object com/fs/starfarer/loading/specs/Q Float Float Float Float Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Object org/lwjgl/util/vector/Vector2f Top Object java/util/Iterator 
            stack 
        .end stack 
L3535:  aload 19 
L3537:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L3542:  ifne L3472 
L3545:  fconst_1 
L3546:  fconst_1 
L3547:  fconst_0 
L3548:  fconst_1 
L3549:  invokestatic Method org/lwjgl/opengl/GL11 glColor4f (FFFF)V 
L3552:  aload_0 
L3553:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L3556:  getfield Field org/lwjgl/util/vector/Vector2f x F 
L3559:  aload_0 
L3560:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L3563:  getfield Field org/lwjgl/util/vector/Vector2f y F 
L3566:  invokestatic Method org/lwjgl/opengl/GL11 glVertex2f (FF)V 
L3569:  aload_0 
L3570:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L3573:  getfield Field org/lwjgl/util/vector/Vector2f x F 
L3576:  aload_0 
L3577:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 
L3580:  getfield Field org/lwjgl/util/vector/Vector2f x F 
L3583:  fadd 
L3584:  aload_0 
L3585:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L3588:  getfield Field org/lwjgl/util/vector/Vector2f y F 
L3591:  aload_0 
L3592:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 
L3595:  getfield Field org/lwjgl/util/vector/Vector2f y F 
L3598:  fadd 
L3599:  invokestatic Method org/lwjgl/opengl/GL11 glVertex2f (FF)V 
L3602:  invokestatic Method org/lwjgl/opengl/GL11 glEnd ()V 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/api/combat/CombatEngineLayers Object com/fs/starfarer/combat/CombatViewport Integer Integer Float Integer Integer Integer Integer Object com/fs/starfarer/loading/specs/Q Float Float Float Float Object com/fs/starfarer/combat/E/o0OO 
            stack 
        .end stack 
L3605:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L3608:  return 
L3609:  
    .end code 
.end method 

.method protected renderPieceBounds : (F)V 
    .code stack 1 locals 3 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getVisualBounds ()Lcom/fs/starfarer/combat/E/o0OO; 
L4:     astore_2 
L5:     return 
L6:     
    .end code 
.end method 

.method public setRenderBounds : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship renderBounds Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public getEnergy : ()F 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L4:     invokevirtual Method com/fs/starfarer/combat/entities/ship/D getMaxFlux ()F 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L11:    invokevirtual Method com/fs/starfarer/combat/entities/ship/D getCurrFlux ()F 
L14:    fsub 
L15:    freturn 
L16:    
    .end code 
.end method 

.method private turnOffEnergyUsingGroups : ()V 
    .code stack 1 locals 3 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship groups Ljava/util/List; 
L4:     invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L9:     astore_2 
L10:    goto L41 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Top Object java/util/Iterator 
            stack 
        .end stack 
L13:    aload_2 
L14:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L19:    checkcast com/fs/starfarer/combat/systems/WeaponGroup 
L22:    astore_1 
L23:    aload_1 
L24:    invokevirtual Method com/fs/starfarer/combat/systems/WeaponGroup isFiringAtWill ()Z 
L27:    ifeq L41 
L30:    aload_1 
L31:    invokevirtual Method com/fs/starfarer/combat/systems/WeaponGroup usesEnergy ()Z 
L34:    ifeq L41 
L37:    aload_1 
L38:    invokevirtual Method com/fs/starfarer/combat/systems/WeaponGroup toggleOff ()V 

        .stack same 
L41:    aload_2 
L42:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L47:    ifne L13 
L50:    return 
L51:    
    .end code 
.end method 

.method private turnOffAllGroups : ()V 
    .code stack 1 locals 3 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship groups Ljava/util/List; 
L4:     invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L9:     astore_2 
L10:    goto L34 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Top Object java/util/Iterator 
            stack 
        .end stack 
L13:    aload_2 
L14:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L19:    checkcast com/fs/starfarer/combat/systems/WeaponGroup 
L22:    astore_1 
L23:    aload_1 
L24:    invokevirtual Method com/fs/starfarer/combat/systems/WeaponGroup isFiringAtWill ()Z 
L27:    ifeq L34 
L30:    aload_1 
L31:    invokevirtual Method com/fs/starfarer/combat/systems/WeaponGroup toggleOff ()V 

        .stack same 
L34:    aload_2 
L35:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L40:    ifne L13 
L43:    return 
L44:    
    .end code 
.end method 

.method public getFluxCapacity : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L4:     invokevirtual Method com/fs/starfarer/combat/entities/ship/D getMaxFlux ()F 
L7:     freturn 
L8:     
    .end code 
.end method 

.method public getFluxAvailable : ()F 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L4:     invokevirtual Method com/fs/starfarer/combat/entities/ship/D getMaxFlux ()F 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L11:    invokevirtual Method com/fs/starfarer/combat/entities/ship/D getCurrFlux ()F 
L14:    fsub 
L15:    freturn 
L16:    
    .end code 
.end method 

.method public getMaxSpeed : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship engineController Lcom/fs/starfarer/combat/entities/ship/null; 
L4:     invokevirtual Method com/fs/starfarer/combat/entities/ship/null getEffectiveMaxSpeed ()F 
L7:     freturn 
L8:     
    .end code 
.end method 

.method public getMaxSpeedWithoutBoost : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship engineController Lcom/fs/starfarer/combat/entities/ship/null; 
L4:     invokevirtual Method com/fs/starfarer/combat/entities/ship/null getMaxSpeedWithoutBoost ()F 
L7:     freturn 
L8:     
    .end code 
.end method 

.method public getAcceleration : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship engineController Lcom/fs/starfarer/combat/entities/ship/null; 
L4:     invokevirtual Method com/fs/starfarer/combat/entities/ship/null getEffectiveAcceleration ()F 
L7:     freturn 
L8:     
    .end code 
.end method 

.method public getDeceleration : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship engineController Lcom/fs/starfarer/combat/entities/ship/null; 
L4:     invokevirtual Method com/fs/starfarer/combat/entities/ship/null getEffectiveDeceleration ()F 
L7:     freturn 
L8:     
    .end code 
.end method 

.method public getMaxTurnRate : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship engineController Lcom/fs/starfarer/combat/entities/ship/null; 
L4:     invokevirtual Method com/fs/starfarer/combat/entities/ship/null getEffectiveMaxTurnRate ()F 
L7:     freturn 
L8:     
    .end code 
.end method 

.method public getTurnAcceleration : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship engineController Lcom/fs/starfarer/combat/entities/ship/null; 
L4:     invokevirtual Method com/fs/starfarer/combat/entities/ship/null getEffectiveTurnAcceleration ()F 
L7:     freturn 
L8:     
    .end code 
.end method 

.method public getTurnDeceleration : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship engineController Lcom/fs/starfarer/combat/entities/ship/null; 
L4:     invokevirtual Method com/fs/starfarer/combat/entities/ship/null getTurnDeceleration ()F 
L7:     freturn 
L8:     
    .end code 
.end method 

.method public setFacing : (F)V 
    .code stack 2 locals 2 
L0:     goto L9 

        .stack same 
L3:     fload_1 
L4:     ldc_w +360.0f 
L7:     fsub 
L8:     fstore_1 

        .stack same 
L9:     fload_1 
L10:    ldc_w +360.0f 
L13:    fcmpl 
L14:    ifgt L3 
L17:    fload_1 
L18:    fconst_0 
L19:    fcmpg 
L20:    ifge L29 
L23:    fload_1 
L24:    ldc_w +360.0f 
L27:    fadd 
L28:    fstore_1 

        .stack same 
L29:    aload_0 
L30:    fload_1 
L31:    invokespecial Method com/fs/starfarer/combat/entities/BaseEntity setFacing (F)V 
L34:    return 
L35:    
    .end code 
.end method 

.method public getGroups : ()Ljava/util/List; 
    .signature ()Ljava/util/List<Lcom/fs/starfarer/combat/systems/WeaponGroup;>; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship groups Ljava/util/List; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public getEngineLocations : ()Ljava/util/List; 
    .signature ()Ljava/util/List<Lcom/fs/starfarer/loading/specs/EngineSlot;>; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship engineLocations Ljava/util/List; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public addGroup : (Lcom/fs/starfarer/combat/systems/WeaponGroup;)V 
    .code stack 2 locals 2 
L0:     aload_1 
L1:     aload_0 
L2:     invokevirtual Method com/fs/starfarer/combat/systems/WeaponGroup setShip (Lcom/fs/starfarer/combat/entities/Ship;)V 
L5:     aload_0 
L6:     getfield Field com/fs/starfarer/combat/entities/Ship groups Ljava/util/List; 
L9:     aload_1 
L10:    invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L15:    pop 
L16:    aload_0 
L17:    getfield Field com/fs/starfarer/combat/entities/Ship selected Lcom/fs/starfarer/combat/systems/WeaponGroup; 
L20:    ifnonnull L35 
L23:    aload_1 
L24:    invokevirtual Method com/fs/starfarer/combat/systems/WeaponGroup isToggle ()Z 
L27:    ifne L35 
L30:    aload_0 
L31:    aload_1 
L32:    putfield Field com/fs/starfarer/combat/entities/Ship selected Lcom/fs/starfarer/combat/systems/WeaponGroup; 

        .stack same 
L35:    return 
L36:    
    .end code 
.end method 

.method public removeWeaponFromGroups : (Lcom/fs/starfarer/api/combat/WeaponAPI;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship weaponsToRemove Ljava/util/List; 
L4:     aload_1 
L5:     invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L10:    pop 
L11:    return 
L12:    
    .end code 
.end method 

.method public removeWeaponFromGroupsReal : (Lcom/fs/starfarer/api/combat/WeaponAPI;)V 
    .code stack 4 locals 5 
L0:     new java/util/ArrayList 
L3:     dup 
L4:     invokespecial Method java/util/ArrayList <init> ()V 
L7:     astore_2 
L8:     aload_0 
L9:     getfield Field com/fs/starfarer/combat/entities/Ship groups Ljava/util/List; 
L12:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L17:    astore 4 
L19:    goto L72 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/api/combat/WeaponAPI Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L22:    aload 4 
L24:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L29:    checkcast com/fs/starfarer/combat/systems/WeaponGroup 
L32:    astore_3 
L33:    aload_0 
L34:    dup 
L35:    getfield Field com/fs/starfarer/combat/entities/Ship needsWeaponGroupUIUpdate Z 
L38:    aload_3 
L39:    invokevirtual Method com/fs/starfarer/combat/systems/WeaponGroup getWeapons ()Ljava/util/List; 
L42:    aload_1 
L43:    invokeinterface InterfaceMethod java/util/List remove (Ljava/lang/Object;)Z 2 
L48:    ior 
L49:    putfield Field com/fs/starfarer/combat/entities/Ship needsWeaponGroupUIUpdate Z 
L52:    aload_3 
L53:    invokevirtual Method com/fs/starfarer/combat/systems/WeaponGroup getWeapons ()Ljava/util/List; 
L56:    invokeinterface InterfaceMethod java/util/List isEmpty ()Z 1 
L61:    ifeq L72 
L64:    aload_2 
L65:    aload_3 
L66:    invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L71:    pop 

        .stack same 
L72:    aload 4 
L74:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L79:    ifne L22 
L82:    aload_0 
L83:    getfield Field com/fs/starfarer/combat/entities/Ship groups Ljava/util/List; 
L86:    aload_2 
L87:    invokeinterface InterfaceMethod java/util/List removeAll (Ljava/util/Collection;)Z 2 
L92:    pop 
L93:    return 
L94:    
    .end code 
.end method 

.method public isNeedsWeaponGroupUIUpdate : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship needsWeaponGroupUIUpdate Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public setNeedsWeaponGroupUIUpdate : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship needsWeaponGroupUIUpdate Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public isFighter : ()Z 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship hullSize Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L4:     getstatic Field com/fs/starfarer/api/combat/ShipAPI$HullSize FIGHTER Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L7:     if_acmpne L12 
L10:    iconst_1 
L11:    ireturn 

        .stack same 
L12:    iconst_0 
L13:    ireturn 
L14:    
    .end code 
.end method 

.method public isFrigate : ()Z 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullSize ()Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L4:     getstatic Field com/fs/starfarer/api/combat/ShipAPI$HullSize FRIGATE Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L7:     if_acmpne L12 
L10:    iconst_1 
L11:    ireturn 

        .stack same 
L12:    iconst_0 
L13:    ireturn 
L14:    
    .end code 
.end method 

.method public isDestroyer : ()Z 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullSize ()Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L4:     getstatic Field com/fs/starfarer/api/combat/ShipAPI$HullSize DESTROYER Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L7:     if_acmpne L12 
L10:    iconst_1 
L11:    ireturn 

        .stack same 
L12:    iconst_0 
L13:    ireturn 
L14:    
    .end code 
.end method 

.method public isCruiser : ()Z 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullSize ()Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L4:     getstatic Field com/fs/starfarer/api/combat/ShipAPI$HullSize CRUISER Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L7:     if_acmpne L12 
L10:    iconst_1 
L11:    ireturn 

        .stack same 
L12:    iconst_0 
L13:    ireturn 
L14:    
    .end code 
.end method 

.method public isCapital : ()Z 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullSize ()Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L4:     getstatic Field com/fs/starfarer/api/combat/ShipAPI$HullSize CAPITAL_SHIP Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L7:     if_acmpne L12 
L10:    iconst_1 
L11:    ireturn 

        .stack same 
L12:    iconst_0 
L13:    ireturn 
L14:    
    .end code 
.end method 

.method public getSprite : ()Lcom/fs/graphics/Sprite; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public setSprite : (Ljava/lang/String;Ljava/lang/String;)V 
    .code stack 3 locals 3 
L0:     aload_0 
L1:     aload_1 
L2:     aload_2 
L3:     invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'Ö00000' (Ljava/lang/String;Ljava/lang/String;)Lcom/fs/graphics/Sprite; 
L6:     putfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L9:     return 
L10:    
    .end code 
.end method 

.method public setSprite : (Lcom/fs/starfarer/api/graphics/SpriteAPI;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     checkcast com/fs/starfarer/settings/OoOO 
L5:     invokevirtual Method com/fs/starfarer/settings/OoOO getSprite ()Lcom/fs/graphics/Sprite; 
L8:     putfield Field com/fs/starfarer/combat/entities/Ship sprite Lcom/fs/graphics/Sprite; 
L11:    return 
L12:    
    .end code 
.end method 

.method public isExpired : ()Z 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship expired Z 
L4:     ifne L44 
L7:     aload_0 
L8:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getHitpoints ()F 
L11:    fconst_0 
L12:    fcmpg 
L13:    ifgt L23 
L16:    aload_0 
L17:    getfield Field com/fs/starfarer/combat/entities/Ship isHulk Z 
L20:    ifeq L44 

        .stack same 
L23:    aload_0 
L24:    getfield Field com/fs/starfarer/combat/entities/Ship isHulk Z 
L27:    ifeq L42 
L30:    aload_0 
L31:    getfield Field com/fs/starfarer/combat/entities/Ship hulkFader Lcom/fs/graphics/util/Fader; 
L34:    invokevirtual Method com/fs/graphics/util/Fader getBrightness ()F 
L37:    fconst_0 
L38:    fcmpg 
L39:    ifle L44 

        .stack same 
L42:    iconst_0 
L43:    ireturn 

        .stack same 
L44:    iconst_1 
L45:    ireturn 
L46:    
    .end code 
.end method 

.method public setHitpoints : (F)V 
    .code stack 2 locals 2 
L0:     fload_1 
L1:     fconst_0 
L2:     fcmpg 
L3:     ifge L8 
L6:     fconst_0 
L7:     fstore_1 

        .stack same 
L8:     aload_0 
L9:     fload_1 
L10:    invokespecial Method com/fs/starfarer/combat/entities/BaseEntity setHitpoints (F)V 
L13:    return 
L14:    
    .end code 
.end method 

.method public setMaxHitpoints : (F)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     fload_1 
L2:     invokespecial Method com/fs/starfarer/combat/entities/BaseEntity setMaxHitpoints (F)V 
L5:     return 
L6:     
    .end code 
.end method 

.method public increaseFlux : (FZZZZ)Z 
    .code stack 6 locals 6 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L4:     fload_1 
L5:     iload_2 
L6:     iload_3 
L7:     iload 4 
L9:     iload 5 
L11:    invokevirtual Method com/fs/starfarer/combat/entities/ship/D increaseFlux (FZZZZ)Z 
L14:    ireturn 
L15:    
    .end code 
.end method 

.method public increaseFlux : (FZZZ)Z 
    .code stack 6 locals 5 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L4:     fload_1 
L5:     iload_2 
L6:     iload_3 
L7:     iload 4 
L9:     iconst_0 
L10:    invokevirtual Method com/fs/starfarer/combat/entities/ship/D increaseFlux (FZZZZ)Z 
L13:    ireturn 
L14:    
    .end code 
.end method 

.method public getWeaponGroup : (I)Lcom/fs/starfarer/combat/systems/WeaponGroup; 
    .code stack 2 locals 3 
L0:     iload_1 
L1:     aload_0 
L2:     getfield Field com/fs/starfarer/combat/entities/Ship groups Ljava/util/List; 
L5:     invokeinterface InterfaceMethod java/util/List size ()I 1 
L10:    if_icmpge L43 
L13:    iload_1 
L14:    iflt L43 
L17:    aload_0 
L18:    getfield Field com/fs/starfarer/combat/entities/Ship groups Ljava/util/List; 
L21:    iload_1 
L22:    invokeinterface InterfaceMethod java/util/List get (I)Ljava/lang/Object; 2 
L27:    checkcast com/fs/starfarer/combat/oOoO 
L30:    astore_2 
L31:    aload_2 
L32:    instanceof com/fs/starfarer/combat/systems/WeaponGroup 
L35:    ifeq L43 
L38:    aload_2 
L39:    checkcast com/fs/starfarer/combat/systems/WeaponGroup 
L42:    areturn 

        .stack same 
L43:    aconst_null 
L44:    areturn 
L45:    
    .end code 
.end method 

.method public getWeaponGroupFor : (Lcom/fs/starfarer/api/combat/WeaponAPI;)Lcom/fs/starfarer/api/combat/WeaponGroupAPI; 
    .code stack 2 locals 4 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship groups Ljava/util/List; 
L4:     invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L9:     astore_3 
L10:    goto L40 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/api/combat/WeaponAPI Top Object java/util/Iterator 
            stack 
        .end stack 
L13:    aload_3 
L14:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L19:    checkcast com/fs/starfarer/api/combat/WeaponGroupAPI 
L22:    astore_2 
L23:    aload_2 
L24:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/WeaponGroupAPI getWeaponsCopy ()Ljava/util/List; 1 
L29:    aload_1 
L30:    invokeinterface InterfaceMethod java/util/List contains (Ljava/lang/Object;)Z 2 
L35:    ifeq L40 
L38:    aload_2 
L39:    areturn 

        .stack same 
L40:    aload_3 
L41:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L46:    ifne L13 
L49:    aconst_null 
L50:    areturn 
L51:    
    .end code 
.end method 

.method public getEngineController : ()Lcom/fs/starfarer/combat/entities/ship/null; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship engineController Lcom/fs/starfarer/combat/entities/ship/null; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public getShield : ()Lcom/fs/starfarer/combat/systems/G; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship shield Lcom/fs/starfarer/combat/systems/G; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public hasNoDefenses : ()Z 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship shield Lcom/fs/starfarer/combat/systems/G; 
L4:     ifnonnull L46 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/entities/Ship phaseCloak Lcom/fs/starfarer/combat/systems/F; 
L11:    ifnonnull L46 
L14:    aload_0 
L15:    getfield Field com/fs/starfarer/combat/entities/Ship system Lcom/fs/starfarer/combat/systems/F; 
L18:    ifnull L44 
L21:    aload_0 
L22:    getfield Field com/fs/starfarer/combat/entities/Ship system Lcom/fs/starfarer/combat/systems/F; 
L25:    invokevirtual Method com/fs/starfarer/combat/systems/F getSpec ()Lcom/fs/starfarer/loading/specs/do; 
L28:    invokevirtual Method com/fs/starfarer/loading/specs/do getId ()Ljava/lang/String; 
L31:    aload_0 
L32:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L35:    invokevirtual Method com/fs/starfarer/loading/specs/g getShipDefenseId ()Ljava/lang/String; 
L38:    invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L41:    ifne L46 

        .stack same 
L44:    iconst_1 
L45:    ireturn 

        .stack same 
L46:    iconst_0 
L47:    ireturn 
L48:    
    .end code 
.end method 

.method public getShieldUpkeep : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship shield Lcom/fs/starfarer/combat/systems/G; 
L4:     ifnonnull L11 
L7:     fconst_0 
L8:     goto L18 

        .stack same 
L11:    aload_0 
L12:    getfield Field com/fs/starfarer/combat/entities/Ship shield Lcom/fs/starfarer/combat/systems/G; 
L15:    invokevirtual Method com/fs/starfarer/combat/systems/G getUpkeep ()F 

        .stack stack_1 Float 
L18:    freturn 
L19:    
    .end code 
.end method 

.method public setShield : (Lcom/fs/starfarer/combat/systems/G;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship shield Lcom/fs/starfarer/combat/systems/G; 
L5:     return 
L6:     
    .end code 
.end method 

.method public setShield : (Lcom/fs/starfarer/api/combat/ShieldAPI$ShieldType;FFF)V 
    .code stack 9 locals 7 
L0:     aload_1 
L1:     getstatic Field com/fs/starfarer/api/combat/ShieldAPI$ShieldType NONE Lcom/fs/starfarer/api/combat/ShieldAPI$ShieldType; 
L4:     if_acmpne L13 
L7:     aload_0 
L8:     aconst_null 
L9:     invokevirtual Method com/fs/starfarer/combat/entities/Ship setShield (Lcom/fs/starfarer/combat/systems/G;)V 
L12:    return 

        .stack same 
L13:    aload_0 
L14:    getfield Field com/fs/starfarer/combat/entities/Ship spec Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L17:    invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L20:    invokevirtual Method com/fs/starfarer/loading/specs/g getShieldSpec ()Lcom/fs/starfarer/loading/specs/OOOo; 
L23:    astore 5 
L25:    aload 5 
L27:    ifnull L147 
L30:    aload 5 
L32:    invokevirtual Method com/fs/starfarer/loading/specs/OOOo clone ()Lcom/fs/starfarer/loading/specs/OOOo; 
L35:    astore 5 
L37:    aload 5 
L39:    fload_2 
L40:    aload_0 
L41:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getSpec [u632] 
L44:    invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L47:    invokevirtual Method com/fs/starfarer/loading/specs/g getReactorSpec ()Lcom/fs/starfarer/loading/specs/L; 
L50:    invokevirtual Method com/fs/starfarer/loading/specs/L o00000 ()F 
L53:    fmul 
L54:    invokevirtual Method com/fs/starfarer/loading/specs/OOOo setUpkeepCost (F)V 
L57:    aload 5 
L59:    fload_3 
L60:    invokevirtual Method com/fs/starfarer/loading/specs/OOOo setFluxPerDamageAbsorbed (F)V 
L63:    aload 5 
L65:    fload 4 
L67:    invokevirtual Method com/fs/starfarer/loading/specs/OOOo setArc (F)V 
L70:    aload 5 
L72:    aload_1 
L73:    invokevirtual Method com/fs/starfarer/loading/specs/OOOo setType (Lcom/fs/starfarer/api/combat/ShieldAPI$ShieldType;)V 
L76:    new com/fs/starfarer/combat/systems/G 
L79:    dup 
L80:    aload 5 
L82:    fload 4 
L84:    aload 5 
L86:    invokevirtual Method com/fs/starfarer/loading/specs/OOOo getRadius ()F 
L89:    aload 5 
L91:    invokevirtual Method com/fs/starfarer/loading/specs/OOOo getUpkeepCost ()F 
L94:    aload 5 
L96:    invokevirtual Method com/fs/starfarer/loading/specs/OOOo getFluxPerDamageAbsorbed ()F 
L99:    aload_1 
L100:   aload_0 
L101:   invokespecial Method com/fs/starfarer/combat/systems/G <init> (Lcom/fs/starfarer/loading/specs/OOOo;FFFFLcom/fs/starfarer/api/combat/ShieldAPI$ShieldType;Lcom/fs/starfarer/combat/entities/Ship;)V 
L104:   astore 6 
L106:   aload 6 
L108:   aload 5 
L110:   invokevirtual Method com/fs/starfarer/loading/specs/OOOo getInnerColor ()Ljava/awt/Color; 
L113:   invokevirtual Method com/fs/starfarer/combat/systems/G setInnerColor (Ljava/awt/Color;)V 
L116:   aload 6 
L118:   aload 5 
L120:   invokevirtual Method com/fs/starfarer/loading/specs/OOOo getRingColor ()Ljava/awt/Color; 
L123:   invokevirtual Method com/fs/starfarer/combat/systems/G setRingColor (Ljava/awt/Color;)V 
L126:   aload 6 
L128:   aload 5 
L130:   invokevirtual Method com/fs/starfarer/loading/specs/OOOo getCenterX ()F 
L133:   aload 5 
L135:   invokevirtual Method com/fs/starfarer/loading/specs/OOOo getCenterY ()F 
L138:   invokevirtual Method com/fs/starfarer/combat/systems/G setCenter (FF)V 
L141:   aload_0 
L142:   aload 6 
L144:   invokevirtual Method com/fs/starfarer/combat/entities/Ship setShield (Lcom/fs/starfarer/combat/systems/G;)V 

        .stack append Object com/fs/starfarer/loading/specs/OOOo 
L147:   return 
L148:   
    .end code 
.end method 

.method public isShieldOn : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship shield Lcom/fs/starfarer/combat/systems/G; 
L4:     ifnull L19 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/entities/Ship shield Lcom/fs/starfarer/combat/systems/G; 
L11:    invokevirtual Method com/fs/starfarer/combat/systems/G isOn ()Z 
L14:    ifeq L19 
L17:    iconst_1 
L18:    ireturn 

        .stack same 
L19:    iconst_0 
L20:    ireturn 
L21:    
    .end code 
.end method 

.method public canBeGivenOrders : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship isStation ()Z 
L4:     ifne L16 
L7:     aload_0 
L8:     invokevirtual Method com/fs/starfarer/combat/entities/Ship isFighter ()Z 
L11:    ifne L16 
L14:    iconst_1 
L15:    ireturn 

        .stack same 
L16:    iconst_0 
L17:    ireturn 
L18:    
    .end code 
.end method 

.method public canBeGivenRetreatOrders : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship isStation ()Z 
L4:     ifne L16 
L7:     aload_0 
L8:     invokevirtual Method com/fs/starfarer/combat/entities/Ship isStationModule ()Z 
L11:    ifne L16 
L14:    iconst_1 
L15:    ireturn 

        .stack same 
L16:    iconst_0 
L17:    ireturn 
L18:    
    .end code 
.end method 

.method public isStation : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship isStation Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public setStation : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship isStation Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public isShipWithModules : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship isShipWithModules Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public setShipWithModules : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship isShipWithModules Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public getChildModules : ()Ljava/util/List; 
    .signature ()Ljava/util/List<Lcom/fs/starfarer/combat/entities/Ship;>; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship childModules Ljava/util/List; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public getChildModulesCopy : ()Ljava/util/List; 
    .signature ()Ljava/util/List<Lcom/fs/starfarer/api/combat/ShipAPI;>; 
    .code stack 3 locals 1 
L0:     new java/util/ArrayList 
L3:     dup 
L4:     aload_0 
L5:     getfield Field com/fs/starfarer/combat/entities/Ship childModules Ljava/util/List; 
L8:     invokespecial Method java/util/ArrayList <init> (Ljava/util/Collection;)V 
L11:    areturn 
L12:    
    .end code 
.end method 

.method public isStationModule : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship station Lcom/fs/starfarer/combat/entities/Ship; 
L4:     ifnull L9 
L7:     iconst_1 
L8:     ireturn 

        .stack same 
L9:     iconst_0 
L10:    ireturn 
L11:    
    .end code 
.end method 

.method public ensureClonedStationSlotSpec : ()V 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship stationSlot Lcom/fs/starfarer/loading/specs/nullsuper; 
L4:     ifnonnull L8 
L7:     return 

        .stack same 
L8:     aload_0 
L9:     getfield Field com/fs/starfarer/combat/entities/Ship cloned Z 
L12:    ifne L31 
L15:    aload_0 
L16:    aload_0 
L17:    getfield Field com/fs/starfarer/combat/entities/Ship stationSlot Lcom/fs/starfarer/loading/specs/nullsuper; 
L20:    invokevirtual Method com/fs/starfarer/loading/specs/nullsuper clone ()Lcom/fs/starfarer/loading/specs/nullsuper; 
L23:    putfield Field com/fs/starfarer/combat/entities/Ship stationSlot Lcom/fs/starfarer/loading/specs/nullsuper; 
L26:    aload_0 
L27:    iconst_1 
L28:    putfield Field com/fs/starfarer/combat/entities/Ship cloned Z 

        .stack same 
L31:    return 
L32:    
    .end code 
.end method 

.method public getStationSlot : ()Lcom/fs/starfarer/loading/specs/nullsuper; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship stationSlot Lcom/fs/starfarer/loading/specs/nullsuper; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public static isActiveModule : (Lcom/fs/starfarer/combat/entities/Ship;)Z 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getVariant [u632] 
L4:     invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L7:     aconst_null 
L8:     invokevirtual Method com/fs/starfarer/loading/specs/g getOrdnancePoints (Lcom/fs/starfarer/api/characters/MutableCharacterStatsAPI;)I 
L11:    ifgt L48 
L14:    aload_0 
L15:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getVariant [u632] 
L18:    invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getWeaponGroups ()Ljava/util/List; 
L21:    invokeinterface InterfaceMethod java/util/List isEmpty ()Z 1 
L26:    ifeq L48 
L29:    aload_0 
L30:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getStats ()Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L33:    invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getNumFighterBays ()Lcom/fs/starfarer/api/combat/MutableStat; 
L36:    invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L39:    fconst_0 
L40:    fcmpg 
L41:    ifgt L48 
L44:    iconst_1 
L45:    goto L49 

        .stack same 
L48:    iconst_0 

        .stack stack_1 Integer 
L49:    istore_1 
L50:    iload_1 
L51:    ifeq L58 
L54:    iconst_0 
L55:    goto L59 

        .stack append Integer 
L58:    iconst_1 

        .stack stack_1 Integer 
L59:    ireturn 
L60:    
    .end code 
.end method 

.method public setStationSlot : (Lcom/fs/starfarer/api/loading/WeaponSlotAPI;)V 
    .code stack 3 locals 10 
L0:     aload_1 
L1:     ifnonnull L22 
L4:     aload_0 
L5:     getfield Field com/fs/starfarer/combat/entities/Ship stationSlot Lcom/fs/starfarer/loading/specs/nullsuper; 
L8:     ifnull L22 
L11:    aload_0 
L12:    getfield Field com/fs/starfarer/combat/entities/Ship station Lcom/fs/starfarer/combat/entities/Ship; 
L15:    ifnull L22 
L18:    iconst_1 
L19:    goto L23 

        .stack same 
L22:    iconst_0 

        .stack stack_1 Integer 
L23:    istore_2 
L24:    aload_0 
L25:    aload_1 
L26:    checkcast com/fs/starfarer/loading/specs/nullsuper 
L29:    putfield Field com/fs/starfarer/combat/entities/Ship stationSlot Lcom/fs/starfarer/loading/specs/nullsuper; 
L32:    iload_2 
L33:    ifeq L288 
L36:    aload_0 
L37:    invokestatic Method com/fs/starfarer/combat/entities/Ship isActiveModule (Lcom/fs/starfarer/combat/entities/Ship;)Z 
L40:    ifeq L288 
L43:    aload_0 
L44:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getExactBounds ()Lcom/fs/starfarer/combat/E/o0OO; 
L47:    ifnull L65 
L50:    aload_0 
L51:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getExactBounds ()Lcom/fs/starfarer/combat/E/o0OO; 
L54:    aload_0 
L55:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getFacing ()F 
L58:    aload_0 
L59:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L62:    invokevirtual Method com/fs/starfarer/combat/E/o0OO rotateAndTranslate (FLorg/lwjgl/util/vector/Vector2f;)V 

        .stack append Integer 
L65:    aload_0 
L66:    getfield Field com/fs/starfarer/combat/entities/Ship station Lcom/fs/starfarer/combat/entities/Ship; 
L69:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getChildModules ()Ljava/util/List; 
L72:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L77:    astore 4 
L79:    goto L278 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/api/loading/WeaponSlotAPI Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L82:    aload 4 
L84:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L89:    checkcast com/fs/starfarer/combat/entities/Ship 
L92:    astore_3 
L93:    aload_3 
L94:    aload_0 
L95:    if_acmpne L101 
L98:    goto L278 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/api/loading/WeaponSlotAPI Integer Object com/fs/starfarer/combat/entities/Ship Object java/util/Iterator 
            stack 
        .end stack 
L101:   aload_3 
L102:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getStationSlot ()Lcom/fs/starfarer/loading/specs/nullsuper; 
L105:   ifnonnull L111 
L108:   goto L278 

        .stack same 
L111:   aload_3 
L112:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getParentStation ()Lcom/fs/starfarer/combat/entities/Ship; 
L115:   ifnull L278 
L118:   aload_3 
L119:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getParentStation ()Lcom/fs/starfarer/combat/entities/Ship; 
L122:   aload_0 
L123:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getParentStation ()Lcom/fs/starfarer/combat/entities/Ship; 
L126:   if_acmpeq L132 
L129:   goto L278 

        .stack same 
L132:   aload_0 
L133:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getExactBounds ()Lcom/fs/starfarer/combat/E/o0OO; 
L136:   ifnull L278 
L139:   aload_3 
L140:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getExactBounds ()Lcom/fs/starfarer/combat/E/o0OO; 
L143:   ifnonnull L149 
L146:   goto L278 

        .stack same 
L149:   aload_3 
L150:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getStats ()Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L153:   invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getDynamic ()Lcom/fs/starfarer/util/DynamicStats; 
L156:   ldc_w 'module_detach_chance_mult' 
L159:   invokevirtual Method com/fs/starfarer/util/DynamicStats getValue (Ljava/lang/String;)F 
L162:   fstore 5 
L164:   fload 5 
L166:   fconst_0 
L167:   fcmpg 
L168:   ifgt L174 
L171:   goto L278 

        .stack append Float 
L174:   aload_3 
L175:   invokestatic Method com/fs/starfarer/combat/entities/Ship isActiveModule (Lcom/fs/starfarer/combat/entities/Ship;)Z 
L178:   istore 6 
L180:   iload 6 
L182:   ifeq L188 
L185:   goto L278 

        .stack append Integer 
L188:   aload_0 
L189:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L192:   aload_3 
L193:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L196:   invokestatic Method com/fs/starfarer/prototype/Utils 'Ø00000' (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)F 
L199:   fstore 7 
L201:   aload_0 
L202:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getCollisionRadius ()F 
L205:   aload_3 
L206:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getCollisionRadius ()F 
L209:   fadd 
L210:   fstore 8 
L212:   fload 7 
L214:   fload 8 
L216:   fcmpl 
L217:   ifle L223 
L220:   goto L278 

        .stack append Float Float 
L223:   aload_3 
L224:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getExactBounds ()Lcom/fs/starfarer/combat/E/o0OO; 
L227:   ifnull L245 
L230:   aload_3 
L231:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getExactBounds ()Lcom/fs/starfarer/combat/E/o0OO; 
L234:   aload_3 
L235:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getFacing ()F 
L238:   aload_3 
L239:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L242:   invokevirtual Method com/fs/starfarer/combat/E/o0OO rotateAndTranslate (FLorg/lwjgl/util/vector/Vector2f;)V 

        .stack same 
L245:   aload_0 
L246:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getExactBounds ()Lcom/fs/starfarer/combat/E/o0OO; 
L249:   aload_3 
L250:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getExactBounds ()Lcom/fs/starfarer/combat/E/o0OO; 
L253:   invokestatic Method com/fs/starfarer/combat/E/oOOO 'super' (Lcom/fs/starfarer/combat/E/o0OO;Lcom/fs/starfarer/combat/E/o0OO;)Lorg/lwjgl/util/vector/Vector2f; 
L256:   astore 9 
L258:   aload 9 
L260:   ifnull L278 
L263:   aload_3 
L264:   iconst_0 
L265:   invokevirtual Method com/fs/starfarer/combat/entities/Ship setSpawnDebris (Z)V 
L268:   aload_3 
L269:   aconst_null 
L270:   invokevirtual Method com/fs/starfarer/combat/entities/Ship setStationSlot (Lcom/fs/starfarer/api/loading/WeaponSlotAPI;)V 
L273:   aload_3 
L274:   aconst_null 
L275:   invokestatic Method com/fs/starfarer/combat/entities/Ship disable (Lcom/fs/starfarer/combat/entities/Ship;Ljava/lang/Object;)V 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/api/loading/WeaponSlotAPI Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L278:   aload 4 
L280:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L285:   ifne L82 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/api/loading/WeaponSlotAPI Integer 
            stack 
        .end stack 
L288:   return 
L289:   
    .end code 
.end method 

.method public getParentStation : ()Lcom/fs/starfarer/combat/entities/Ship; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship station Lcom/fs/starfarer/combat/entities/Ship; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public setParentStation : (Lcom/fs/starfarer/api/combat/ShipAPI;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     checkcast com/fs/starfarer/combat/entities/Ship 
L5:     putfield Field com/fs/starfarer/combat/entities/Ship station Lcom/fs/starfarer/combat/entities/Ship; 
L8:     return 
L9:     
    .end code 
.end method 

.method public isHulk : ()Z 
    .code stack 1 locals 1 
L0:     getstatic Field com/fs/starfarer/combat/entities/Ship ATTACK_HULKS Z 
L3:     ifeq L8 
L6:     iconst_0 
L7:     ireturn 

        .stack same 
L8:     aload_0 
L9:     getfield Field com/fs/starfarer/combat/entities/Ship isHulk Z 
L12:    ireturn 
L13:    
    .end code 
.end method 

.method public getOwner : ()I 
    .code stack 2 locals 1 
L0:     getstatic Field com/fs/starfarer/combat/entities/Ship ATTACK_HULKS Z 
L3:     ifeq L17 
L6:     aload_0 
L7:     invokespecial Method com/fs/starfarer/combat/entities/BaseEntity getOwner ()I 
L10:    bipush 100 
L12:    if_icmpne L17 
L15:    iconst_0 
L16:    ireturn 

        .stack same 
L17:    aload_0 
L18:    invokespecial Method com/fs/starfarer/combat/entities/BaseEntity getOwner ()I 
L21:    ireturn 
L22:    
    .end code 
.end method 

.method public expire : ()V 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     iconst_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship expired Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public isRecentlyShotByPlayer : ()Z 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship sinceDamagedByPlayer F 
L4:     ldc +3.0f 
L6:     fcmpg 
L7:     ifge L12 
L10:    iconst_1 
L11:    ireturn 

        .stack same 
L12:    iconst_0 
L13:    ireturn 
L14:    
    .end code 
.end method 

.method public isRenderEngines : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship renderEngines Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public setRenderEngines : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship renderEngines Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public getStatistics : ()Lcom/fs/starfarer/combat/entities/I; 
    .code stack 4 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship statistics Lcom/fs/starfarer/combat/entities/I; 
L4:     ifnonnull L19 
L7:     aload_0 
L8:     new com/fs/starfarer/combat/entities/I 
L11:    dup 
L12:    aload_0 
L13:    invokespecial Method com/fs/starfarer/combat/entities/I <init> (Lcom/fs/starfarer/combat/entities/Ship;)V 
L16:    putfield Field com/fs/starfarer/combat/entities/Ship statistics Lcom/fs/starfarer/combat/entities/I; 

        .stack same 
L19:    aload_0 
L20:    getfield Field com/fs/starfarer/combat/entities/Ship statistics Lcom/fs/starfarer/combat/entities/I; 
L23:    areturn 
L24:    
    .end code 
.end method 

.method public isSpawnDebris : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship spawnDebris Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public setSpawnDebris : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship spawnDebris Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public getParamAboutToApplyDamage : ()Ljava/lang/Object; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship paramAboutToApplyDamage Ljava/lang/Object; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public setParamAboutToApplyDamage : (Ljava/lang/Object;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship paramAboutToApplyDamage Ljava/lang/Object; 
L5:     return 
L6:     
    .end code 
.end method 

.method public setNextHitHullDamageThresholdMult : (FF)V 
    .code stack 2 locals 3 
L0:     aload_0 
L1:     fload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship hullDamageThreshold F 
L5:     aload_0 
L6:     fload_2 
L7:     putfield Field com/fs/starfarer/combat/entities/Ship hullDamageBeyondThresholdMult F 
L10:    return 
L11:    
    .end code 
.end method 

.method public applyDamage : (Lorg/lwjgl/util/vector/Vector2f;Lcom/fs/starfarer/combat/E/F;ZFLjava/lang/Object;)Lcom/fs/starfarer/combat/entities/ship/G; 
    .code stack 6 locals 13 
L0:     aconst_null 
L1:     astore 6 
L3:     aconst_null 
L4:     astore 7 
L6:     aconst_null 
L7:     astore 8 
L9:     aconst_null 
L10:    astore 9 
L12:    aload_2 
L13:    invokevirtual Method com/fs/starfarer/combat/E/F getMultiplier ()F 
L16:    fconst_0 
L17:    fcmpl 
L18:    ifle L96 
L21:    aload_2 
L22:    invokevirtual Method com/fs/starfarer/combat/E/F getBaseDamage ()F 
L25:    fconst_0 
L26:    fcmpl 
L27:    ifle L96 
L30:    aload_0 
L31:    getfield Field com/fs/starfarer/combat/entities/Ship paramAboutToApplyDamage Ljava/lang/Object; 
L34:    aload_0 
L35:    aload_2 
L36:    aload_1 
L37:    iload_3 
L38:    invokestatic Method com/fs/starfarer/api/combat/listeners/CombatListenerUtil modifyDamageDealt (Ljava/lang/Object;Lcom/fs/starfarer/api/combat/CombatEntityAPI;Lcom/fs/starfarer/api/combat/DamageAPI;Lorg/lwjgl/util/vector/Vector2f;Z)Ljava/util/List; 
L41:    astore 6 
L43:    aload 5 
L45:    instanceof com/fs/starfarer/combat/entities/Ship 
L48:    ifeq L69 
L51:    aload 5 
L53:    checkcast com/fs/starfarer/combat/entities/Ship 
L56:    aload_0 
L57:    getfield Field com/fs/starfarer/combat/entities/Ship paramAboutToApplyDamage Ljava/lang/Object; 
L60:    aload_0 
L61:    aload_2 
L62:    aload_1 
L63:    iload_3 
L64:    invokestatic Method com/fs/starfarer/api/combat/listeners/CombatListenerUtil modifyDamageDealt (Lcom/fs/starfarer/api/combat/ShipAPI;Ljava/lang/Object;Lcom/fs/starfarer/api/combat/CombatEntityAPI;Lcom/fs/starfarer/api/combat/DamageAPI;Lorg/lwjgl/util/vector/Vector2f;Z)Ljava/util/List; 
L67:    astore 7 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/F Integer Float Object java/lang/Object Object java/util/List Object java/util/List Object java/util/List Object java/util/List 
            stack 
        .end stack 
L69:    aload_0 
L70:    getfield Field com/fs/starfarer/combat/entities/Ship paramAboutToApplyDamage Ljava/lang/Object; 
L73:    aload_0 
L74:    aload_2 
L75:    aload_1 
L76:    iload_3 
L77:    invokestatic Method com/fs/starfarer/api/combat/listeners/CombatListenerUtil modifyDamageTaken (Ljava/lang/Object;Lcom/fs/starfarer/api/combat/CombatEntityAPI;Lcom/fs/starfarer/api/combat/DamageAPI;Lorg/lwjgl/util/vector/Vector2f;Z)Ljava/util/List; 
L80:    astore 8 
L82:    aload_0 
L83:    aload_0 
L84:    getfield Field com/fs/starfarer/combat/entities/Ship paramAboutToApplyDamage Ljava/lang/Object; 
L87:    aload_0 
L88:    aload_2 
L89:    aload_1 
L90:    iload_3 
L91:    invokestatic Method com/fs/starfarer/api/combat/listeners/CombatListenerUtil modifyDamageTaken (Lcom/fs/starfarer/api/combat/ShipAPI;Ljava/lang/Object;Lcom/fs/starfarer/api/combat/CombatEntityAPI;Lcom/fs/starfarer/api/combat/DamageAPI;Lorg/lwjgl/util/vector/Vector2f;Z)Ljava/util/List; 
L94:    astore 9 

        .stack same 
L96:    aload_0 
L97:    aload_1 
L98:    aload_2 
L99:    iload_3 
L100:   fload 4 
L102:   aload 5 
L104:   invokevirtual Method com/fs/starfarer/combat/entities/Ship applyDamageInner (Lorg/lwjgl/util/vector/Vector2f;Lcom/fs/starfarer/combat/E/F;ZFLjava/lang/Object;)Lcom/fs/starfarer/combat/entities/ship/G; 
L107:   astore 10 
L109:   aload_0 
L110:   aload 5 
L112:   aload_0 
L113:   aload 10 
L115:   invokestatic Method com/fs/starfarer/api/combat/listeners/CombatListenerUtil reportDamageApplied (Lcom/fs/starfarer/api/combat/ShipAPI;Ljava/lang/Object;Lcom/fs/starfarer/api/combat/CombatEntityAPI;Lcom/fs/starfarer/api/combat/listeners/ApplyDamageResultAPI;)V 
L118:   aload 6 
L120:   ifnull L166 
L123:   aload 6 
L125:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L130:   astore 12 
L132:   goto L156 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/F Integer Float Object java/lang/Object Object java/util/List Object java/util/List Object java/util/List Object java/util/List Object com/fs/starfarer/combat/entities/ship/G Top Object java/util/Iterator 
            stack 
        .end stack 
L135:   aload 12 
L137:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L142:   checkcast java/lang/String 
L145:   astore 11 
L147:   aload_2 
L148:   invokevirtual Method com/fs/starfarer/combat/E/F getModifier ()Lcom/fs/starfarer/api/combat/MutableStat; 
L151:   aload 11 
L153:   invokevirtual Method com/fs/starfarer/api/combat/MutableStat unmodify (Ljava/lang/String;)V 

        .stack same 
L156:   aload 12 
L158:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L163:   ifne L135 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/F Integer Float Object java/lang/Object Object java/util/List Object java/util/List Object java/util/List Object java/util/List Object com/fs/starfarer/combat/entities/ship/G 
            stack 
        .end stack 
L166:   aload 7 
L168:   ifnull L214 
L171:   aload 7 
L173:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L178:   astore 12 
L180:   goto L204 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/F Integer Float Object java/lang/Object Object java/util/List Object java/util/List Object java/util/List Object java/util/List Object com/fs/starfarer/combat/entities/ship/G Top Object java/util/Iterator 
            stack 
        .end stack 
L183:   aload 12 
L185:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L190:   checkcast java/lang/String 
L193:   astore 11 
L195:   aload_2 
L196:   invokevirtual Method com/fs/starfarer/combat/E/F getModifier ()Lcom/fs/starfarer/api/combat/MutableStat; 
L199:   aload 11 
L201:   invokevirtual Method com/fs/starfarer/api/combat/MutableStat unmodify (Ljava/lang/String;)V 

        .stack same 
L204:   aload 12 
L206:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L211:   ifne L183 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/F Integer Float Object java/lang/Object Object java/util/List Object java/util/List Object java/util/List Object java/util/List Object com/fs/starfarer/combat/entities/ship/G 
            stack 
        .end stack 
L214:   aload 8 
L216:   ifnull L262 
L219:   aload 8 
L221:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L226:   astore 12 
L228:   goto L252 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/F Integer Float Object java/lang/Object Object java/util/List Object java/util/List Object java/util/List Object java/util/List Object com/fs/starfarer/combat/entities/ship/G Top Object java/util/Iterator 
            stack 
        .end stack 
L231:   aload 12 
L233:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L238:   checkcast java/lang/String 
L241:   astore 11 
L243:   aload_2 
L244:   invokevirtual Method com/fs/starfarer/combat/E/F getModifier ()Lcom/fs/starfarer/api/combat/MutableStat; 
L247:   aload 11 
L249:   invokevirtual Method com/fs/starfarer/api/combat/MutableStat unmodify (Ljava/lang/String;)V 

        .stack same 
L252:   aload 12 
L254:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L259:   ifne L231 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/F Integer Float Object java/lang/Object Object java/util/List Object java/util/List Object java/util/List Object java/util/List Object com/fs/starfarer/combat/entities/ship/G 
            stack 
        .end stack 
L262:   aload 9 
L264:   ifnull L310 
L267:   aload 9 
L269:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L274:   astore 12 
L276:   goto L300 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/F Integer Float Object java/lang/Object Object java/util/List Object java/util/List Object java/util/List Object java/util/List Object com/fs/starfarer/combat/entities/ship/G Top Object java/util/Iterator 
            stack 
        .end stack 
L279:   aload 12 
L281:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L286:   checkcast java/lang/String 
L289:   astore 11 
L291:   aload_2 
L292:   invokevirtual Method com/fs/starfarer/combat/E/F getModifier ()Lcom/fs/starfarer/api/combat/MutableStat; 
L295:   aload 11 
L297:   invokevirtual Method com/fs/starfarer/api/combat/MutableStat unmodify (Ljava/lang/String;)V 

        .stack same 
L300:   aload 12 
L302:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L307:   ifne L279 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/F Integer Float Object java/lang/Object Object java/util/List Object java/util/List Object java/util/List Object java/util/List Object com/fs/starfarer/combat/entities/ship/G 
            stack 
        .end stack 
L310:   aload_0 
L311:   aconst_null 
L312:   putfield Field com/fs/starfarer/combat/entities/Ship paramAboutToApplyDamage Ljava/lang/Object; 
L315:   aload_0 
L316:   ldc_w -1.0f 
L319:   putfield Field com/fs/starfarer/combat/entities/Ship hullDamageThreshold F 
L322:   aload_0 
L323:   ldc_w -1.0f 
L326:   putfield Field com/fs/starfarer/combat/entities/Ship hullDamageBeyondThresholdMult F 
L329:   aload_0 
L330:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getStatistics ()Lcom/fs/starfarer/combat/entities/I; 
L333:   aload 10 
L335:   invokevirtual Method com/fs/starfarer/combat/entities/I 'Ò00000' (Lcom/fs/starfarer/combat/entities/ship/G;)V 
L338:   aload 5 
L340:   instanceof com/fs/starfarer/combat/entities/Ship 
L343:   ifeq L363 
L346:   aload 5 
L348:   checkcast com/fs/starfarer/combat/entities/Ship 
L351:   astore 11 
L353:   aload 11 
L355:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getStatistics ()Lcom/fs/starfarer/combat/entities/I; 
L358:   aload 10 
L360:   invokevirtual Method com/fs/starfarer/combat/entities/I 'super' (Lcom/fs/starfarer/combat/entities/ship/G;)V 

        .stack same 
L363:   aload 10 
L365:   areturn 
L366:   
    .end code 
.end method 

.method public getHulkChanceOverride : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship hulkChanceOverride F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method public setHulkChanceOverride : (F)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     fload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship hulkChanceOverride F 
L5:     return 
L6:     
    .end code 
.end method 

.method public getExplosionFlashColorOverride : ()Ljava/awt/Color; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship explosionFlashColorOverride Ljava/awt/Color; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public setExplosionFlashColorOverride : (Ljava/awt/Color;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship explosionFlashColorOverride Ljava/awt/Color; 
L5:     return 
L6:     
    .end code 
.end method 

.method public getExplosionScale : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship explosionScale F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method public setExplosionScale : (F)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     fload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship explosionScale F 
L5:     return 
L6:     
    .end code 
.end method 

.method public getExplosionVelocityOverride : ()Lorg/lwjgl/util/vector/Vector2f; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship explosionVelocityOverride Lorg/lwjgl/util/vector/Vector2f; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public setExplosionVelocityOverride : (Lorg/lwjgl/util/vector/Vector2f;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship explosionVelocityOverride Lorg/lwjgl/util/vector/Vector2f; 
L5:     return 
L6:     
    .end code 
.end method 

.method public applyDamageInner : (Lorg/lwjgl/util/vector/Vector2f;Lcom/fs/starfarer/combat/E/F;ZFLjava/lang/Object;)Lcom/fs/starfarer/combat/entities/ship/G; 
    .code stack 7 locals 6 
L0:     aload_0 
L1:     aload_1 
L2:     aload_2 
L3:     iload_3 
L4:     iconst_0 
L5:     fload 4 
L7:     aload 5 
L9:     invokevirtual Method com/fs/starfarer/combat/entities/Ship applyDamageInner (Lorg/lwjgl/util/vector/Vector2f;Lcom/fs/starfarer/combat/E/F;ZZFLjava/lang/Object;)Lcom/fs/starfarer/combat/entities/ship/G; 
L12:    areturn 
L13:    
    .end code 
.end method 

.method public applyDamageInner : (Lorg/lwjgl/util/vector/Vector2f;Lcom/fs/starfarer/combat/E/F;ZZFLjava/lang/Object;)Lcom/fs/starfarer/combat/entities/ship/G; 
    .code stack 8 locals 50 
        .catch [0] from L0 to L22 using L4555 
L0:     ldc_w 'Ship.applyDamage' 
L3:     invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L6:     aload_0 
L7:     invokevirtual Method com/fs/starfarer/combat/entities/Ship isShuttlePod ()Z 
L10:    ifeq L28 
L13:    new com/fs/starfarer/combat/entities/ship/G 
L16:    dup 
L17:    invokespecial Method com/fs/starfarer/combat/entities/ship/G <init> ()V 
L20:    astore 49 
L22:    invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L25:    aload 49 
L27:    areturn 
        .catch [0] from L28 to L855 using L4555 

        .stack same 
L28:    invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L31:    astore 7 
L33:    aload 7 
L35:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L38:    astore 8 
L40:    aload 6 
L42:    aload 8 
L44:    if_acmpne L52 
L47:    aload_0 
L48:    fconst_0 
L49:    putfield Field com/fs/starfarer/combat/entities/Ship sinceDamagedByPlayer F 

        .stack append Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/entities/Ship 
L52:    ldc_w 'godMode' 
L55:    invokestatic Method com/fs/starfarer/settings/StarfarerSettings class (Ljava/lang/String;)Z 
L58:    ifeq L113 
L61:    aload_0 
L62:    aload 8 
L64:    if_acmpeq L74 
L67:    aload_0 
L68:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getOwner ()I 
L71:    ifne L82 

        .stack same 
L74:    aload_2 
L75:    fconst_0 
L76:    invokevirtual Method com/fs/starfarer/combat/E/F setMultiplier (F)V 
L79:    goto L113 

        .stack same 
L82:    aload_0 
L83:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getOwner ()I 
L86:    iconst_1 
L87:    if_icmpeq L99 
L90:    aload_0 
L91:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getOwner ()I 
L94:    bipush 100 
L96:    if_icmpne L113 

        .stack same 
L99:    aload 6 
L101:   aload 8 
L103:   if_acmpne L113 
L106:   aload_2 
L107:   ldc_w +100.0f 
L110:   invokevirtual Method com/fs/starfarer/combat/E/F setMultiplier (F)V 

        .stack same 
L113:   fconst_1 
L114:   fstore 9 
L116:   aload_0 
L117:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getOriginalOwner ()I 
L120:   ifne L155 
L123:   invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L126:   invokevirtual Method com/fs/starfarer/combat/CombatEngine isInCampaign ()Z 
L129:   ifne L141 
L132:   invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L135:   invokevirtual Method com/fs/starfarer/combat/CombatEngine isInCampaignSim ()Z 
L138:   ifeq L191 

        .stack append Float 
L141:   invokestatic Method com/fs/starfarer/api/util/Misc isEasy ()Z 
L144:   ifeq L191 
L147:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'õÒ0000' ()F 
L150:   fstore 9 
L152:   goto L191 

        .stack same 
L155:   aload 6 
L157:   aload 8 
L159:   if_acmpne L191 
L162:   invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L165:   invokevirtual Method com/fs/starfarer/combat/CombatEngine isInCampaign ()Z 
L168:   ifne L180 
L171:   invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L174:   invokevirtual Method com/fs/starfarer/combat/CombatEngine isInCampaignSim ()Z 
L177:   ifeq L191 

        .stack same 
L180:   invokestatic Method com/fs/starfarer/api/util/Misc isEasy ()Z 
L183:   ifeq L191 
L186:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'ÓÔ0000' ()F 
L189:   fstore 9 

        .stack same 
L191:   fconst_1 
L192:   fstore 10 
L194:   aconst_null 
L195:   astore 11 
L197:   aconst_null 
L198:   astore 12 
L200:   aload 6 
L202:   instanceof com/fs/starfarer/combat/entities/Ship 
L205:   ifeq L376 
L208:   aload_2 
L209:   invokevirtual Method com/fs/starfarer/combat/E/F getMultiplier ()F 
L212:   fconst_0 
L213:   fcmpl 
L214:   ifle L376 
L217:   aload_2 
L218:   invokevirtual Method com/fs/starfarer/combat/E/F getBaseDamage ()F 
L221:   fconst_0 
L222:   fcmpl 
L223:   ifle L376 
L226:   aload 6 
L228:   checkcast com/fs/starfarer/combat/entities/Ship 
L231:   astore 13 
L233:   aload_0 
L234:   astore 14 
L236:   aload_0 
L237:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getParentStation ()Lcom/fs/starfarer/combat/entities/Ship; 
L240:   ifnull L249 
L243:   aload_0 
L244:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getParentStation ()Lcom/fs/starfarer/combat/entities/Ship; 
L247:   astore 14 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/F Integer Integer Float Object java/lang/Object Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/entities/Ship Float Float Object java/lang/String Object com/fs/starfarer/api/combat/MutableStat Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship 
            stack 
        .end stack 
L249:   aload 14 
L251:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isFighter ()Z 
L254:   ifeq L275 
L257:   ldc_w 'dmg_vs_ftr' 
L260:   astore 11 
L262:   aload 13 
L264:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getStats ()Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L267:   invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getDamageToFighters ()Lcom/fs/starfarer/api/combat/MutableStat; 
L270:   astore 12 
L272:   goto L376 

        .stack same 
L275:   aload 14 
L277:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isFrigate ()Z 
L280:   ifeq L301 
L283:   ldc_w 'dmg_vs_frig' 
L286:   astore 11 
L288:   aload 13 
L290:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getStats ()Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L293:   invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getDamageToFrigates ()Lcom/fs/starfarer/api/combat/MutableStat; 
L296:   astore 12 
L298:   goto L376 

        .stack same 
L301:   aload 14 
L303:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isDestroyer ()Z 
L306:   ifeq L327 
L309:   ldc_w 'dmg_vs_destr' 
L312:   astore 11 
L314:   aload 13 
L316:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getStats ()Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L319:   invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getDamageToDestroyers ()Lcom/fs/starfarer/api/combat/MutableStat; 
L322:   astore 12 
L324:   goto L376 

        .stack same 
L327:   aload 14 
L329:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isCruiser ()Z 
L332:   ifeq L353 
L335:   ldc_w 'dmg_vs_CA' 
L338:   astore 11 
L340:   aload 13 
L342:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getStats ()Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L345:   invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getDamageToCruisers ()Lcom/fs/starfarer/api/combat/MutableStat; 
L348:   astore 12 
L350:   goto L376 

        .stack same 
L353:   aload 14 
L355:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isCapital ()Z 
L358:   ifeq L376 
L361:   ldc_w 'dmg_vs_capital' 
L364:   astore 11 
L366:   aload 13 
L368:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getStats ()Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L371:   invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getDamageToCapital ()Lcom/fs/starfarer/api/combat/MutableStat; 
L374:   astore 12 

        .stack chop 2 
L376:   aload 11 
L378:   ifnull L394 
L381:   aload 12 
L383:   ifnull L394 
L386:   aload_2 
L387:   aload 11 
L389:   aload 12 
L391:   invokevirtual Method com/fs/starfarer/combat/E/F applyModifiersFromDamageMultStat (Ljava/lang/String;Lcom/fs/starfarer/api/combat/MutableStat;)V 

        .stack same 
L394:   fload 10 
L396:   fconst_1 
L397:   fcmpl 
L398:   ifeq L416 
L401:   aload_2 
L402:   invokevirtual Method com/fs/starfarer/combat/E/F getMultiplier ()F 
L405:   fstore 13 
L407:   aload_2 
L408:   fload 13 
L410:   fload 10 
L412:   fmul 
L413:   invokevirtual Method com/fs/starfarer/combat/E/F setMultiplier (F)V 

        .stack same 
L416:   aload_2 
L417:   fload 5 
L419:   invokevirtual Method com/fs/starfarer/combat/E/F computeDamageDealt (F)F 
L422:   fload 9 
L424:   fmul 
L425:   fstore 13 
L427:   fload 13 
L429:   fstore 14 
L431:   aload_2 
L432:   fload 5 
L434:   invokevirtual Method com/fs/starfarer/combat/E/F computeFluxDealt (F)F 
L437:   aload_0 
L438:   getfield Field com/fs/starfarer/combat/entities/Ship stats Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L441:   invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getEmpDamageTakenMult ()Lcom/fs/starfarer/api/combat/MutableStat; 
L444:   invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L447:   fmul 
L448:   fload 9 
L450:   fmul 
L451:   fstore 15 
L453:   iload_3 
L454:   ifne L647 
L457:   aload_2 
L458:   invokevirtual Method com/fs/starfarer/combat/E/F isDps ()Z 
L461:   ifeq L479 
L464:   fload 13 
L466:   aload_0 
L467:   getfield Field com/fs/starfarer/combat/entities/Ship stats Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L470:   invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getBeamDamageTakenMult ()Lcom/fs/starfarer/api/combat/MutableStat; 
L473:   invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L476:   fmul 
L477:   fstore 13 

        .stack append Float Float Float 
L479:   aload_2 
L480:   invokevirtual Method com/fs/starfarer/combat/E/F isMissile ()Z 
L483:   ifeq L504 
L486:   fload 13 
L488:   aload_0 
L489:   getfield Field com/fs/starfarer/combat/entities/Ship stats Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L492:   invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getMissileDamageTakenMult ()Lcom/fs/starfarer/api/combat/MutableStat; 
L495:   invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L498:   fmul 
L499:   fstore 13 
L501:   goto L526 

        .stack same 
L504:   aload_2 
L505:   invokevirtual Method com/fs/starfarer/combat/E/F isDps ()Z 
L508:   ifne L526 
L511:   fload 13 
L513:   aload_0 
L514:   getfield Field com/fs/starfarer/combat/entities/Ship stats Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L517:   invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getProjectileDamageTakenMult ()Lcom/fs/starfarer/api/combat/MutableStat; 
L520:   invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L523:   fmul 
L524:   fstore 13 

        .stack same 
L526:   invokestatic Method com/fs/starfarer/combat/entities/Ship $SWITCH_TABLE$com$fs$starfarer$api$combat$DamageType ()[I 
L529:   aload_2 
L530:   invokevirtual Method com/fs/starfarer/combat/E/F getType ()Lcom/fs/starfarer/api/combat/DamageType; 
L533:   invokevirtual Method com/fs/starfarer/api/combat/DamageType ordinal ()I 
L536:   iaload 
L537:   tableswitch 1 
            L626 
            L608 
            L590 
            L572 
            L644 
            default : L644 


        .stack same 
L572:   fload 13 
L574:   aload_0 
L575:   getfield Field com/fs/starfarer/combat/entities/Ship stats Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L578:   invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getEnergyDamageTakenMult ()Lcom/fs/starfarer/api/combat/MutableStat; 
L581:   invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L584:   fmul 
L585:   fstore 13 
L587:   goto L832 

        .stack same 
L590:   fload 13 
L592:   aload_0 
L593:   getfield Field com/fs/starfarer/combat/entities/Ship stats Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L596:   invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getFragmentationDamageTakenMult ()Lcom/fs/starfarer/api/combat/MutableStat; 
L599:   invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L602:   fmul 
L603:   fstore 13 
L605:   goto L832 

        .stack same 
L608:   fload 13 
L610:   aload_0 
L611:   getfield Field com/fs/starfarer/combat/entities/Ship stats Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L614:   invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getHighExplosiveDamageTakenMult ()Lcom/fs/starfarer/api/combat/MutableStat; 
L617:   invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L620:   fmul 
L621:   fstore 13 
L623:   goto L832 

        .stack same 
L626:   fload 13 
L628:   aload_0 
L629:   getfield Field com/fs/starfarer/combat/entities/Ship stats Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L632:   invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getKineticDamageTakenMult ()Lcom/fs/starfarer/api/combat/MutableStat; 
L635:   invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L638:   fmul 
L639:   fstore 13 
L641:   goto L832 

        .stack same 
L644:   goto L832 

        .stack same 
L647:   aload_2 
L648:   invokevirtual Method com/fs/starfarer/combat/E/F isDps ()Z 
L651:   ifeq L669 
L654:   fload 13 
L656:   aload_0 
L657:   getfield Field com/fs/starfarer/combat/entities/Ship stats Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L660:   invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getBeamShieldDamageTakenMult ()Lcom/fs/starfarer/api/combat/MutableStat; 
L663:   invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L666:   fmul 
L667:   fstore 13 

        .stack same 
L669:   aload_2 
L670:   invokevirtual Method com/fs/starfarer/combat/E/F isMissile ()Z 
L673:   ifeq L694 
L676:   fload 13 
L678:   aload_0 
L679:   getfield Field com/fs/starfarer/combat/entities/Ship stats Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L682:   invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getMissileShieldDamageTakenMult ()Lcom/fs/starfarer/api/combat/MutableStat; 
L685:   invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L688:   fmul 
L689:   fstore 13 
L691:   goto L716 

        .stack same 
L694:   aload_2 
L695:   invokevirtual Method com/fs/starfarer/combat/E/F isDps ()Z 
L698:   ifne L716 
L701:   fload 13 
L703:   aload_0 
L704:   getfield Field com/fs/starfarer/combat/entities/Ship stats Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L707:   invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getProjectileShieldDamageTakenMult ()Lcom/fs/starfarer/api/combat/MutableStat; 
L710:   invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L713:   fmul 
L714:   fstore 13 

        .stack same 
L716:   invokestatic Method com/fs/starfarer/combat/entities/Ship $SWITCH_TABLE$com$fs$starfarer$api$combat$DamageType ()[I 
L719:   aload_2 
L720:   invokevirtual Method com/fs/starfarer/combat/E/F getType ()Lcom/fs/starfarer/api/combat/DamageType; 
L723:   invokevirtual Method com/fs/starfarer/api/combat/DamageType ordinal ()I 
L726:   iaload 
L727:   tableswitch 1 
            L814 
            L796 
            L778 
            L760 
            L832 
            default : L832 


        .stack same 
L760:   fload 13 
L762:   aload_0 
L763:   getfield Field com/fs/starfarer/combat/entities/Ship stats Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L766:   invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getEnergyShieldDamageTakenMult ()Lcom/fs/starfarer/api/combat/MutableStat; 
L769:   invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L772:   fmul 
L773:   fstore 13 
L775:   goto L832 

        .stack same 
L778:   fload 13 
L780:   aload_0 
L781:   getfield Field com/fs/starfarer/combat/entities/Ship stats Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L784:   invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getFragmentationShieldDamageTakenMult ()Lcom/fs/starfarer/api/combat/MutableStat; 
L787:   invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L790:   fmul 
L791:   fstore 13 
L793:   goto L832 

        .stack same 
L796:   fload 13 
L798:   aload_0 
L799:   getfield Field com/fs/starfarer/combat/entities/Ship stats Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L802:   invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getHighExplosiveShieldDamageTakenMult ()Lcom/fs/starfarer/api/combat/MutableStat; 
L805:   invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L808:   fmul 
L809:   fstore 13 
L811:   goto L832 

        .stack same 
L814:   fload 13 
L816:   aload_0 
L817:   getfield Field com/fs/starfarer/combat/entities/Ship stats Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L820:   invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getKineticShieldDamageTakenMult ()Lcom/fs/starfarer/api/combat/MutableStat; 
L823:   invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L826:   fmul 
L827:   fstore 13 
L829:   goto L832 

        .stack same 
L832:   fload 13 
L834:   fconst_0 
L835:   fcmpg 
L836:   ifgt L861 
L839:   fload 15 
L841:   fconst_0 
L842:   fcmpg 
L843:   ifgt L861 
L846:   new com/fs/starfarer/combat/entities/ship/G 
L849:   dup 
L850:   invokespecial Method com/fs/starfarer/combat/entities/ship/G <init> ()V 
L853:   astore 49 
L855:   invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L858:   aload 49 
L860:   areturn 
        .catch [0] from L861 to L4549 using L4555 

        .stack same 
L861:   fload 13 
L863:   fload 14 
L865:   fdiv 
L866:   fstore 16 
L868:   aload_2 
L869:   invokevirtual Method com/fs/starfarer/combat/E/F getDamage ()F 
L872:   fload 16 
L874:   fmul 
L875:   fstore 17 
L877:   aload_2 
L878:   invokevirtual Method com/fs/starfarer/combat/E/F isDps ()Z 
L881:   ifne L888 
L884:   fload 13 
L886:   fstore 17 

        .stack append Float Float 
L888:   aload 11 
L890:   ifnull L902 
L893:   aload_2 
L894:   invokevirtual Method com/fs/starfarer/combat/E/F getModifier ()Lcom/fs/starfarer/api/combat/MutableStat; 
L897:   aload 11 
L899:   invokevirtual Method com/fs/starfarer/api/combat/MutableStat unmodify (Ljava/lang/String;)V 

        .stack same 
L902:   aload_0 
L903:   fconst_0 
L904:   putfield Field com/fs/starfarer/combat/entities/Ship sinceLastDamageTaken F 
L907:   iload_3 
L908:   ifeq L916 
L911:   aload_0 
L912:   fconst_0 
L913:   putfield Field com/fs/starfarer/combat/entities/Ship sinceLastShieldDamageTaken F 

        .stack same 
L916:   aload 7 
L918:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getViewport ()Lcom/fs/starfarer/combat/CombatViewport; 
L921:   aload_1 
L922:   aload_0 
L923:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getCollisionRadius ()F 
L926:   ldc_w +1.5f 
L929:   fmul 
L930:   invokevirtual Method com/fs/starfarer/combat/CombatViewport isNearViewport (Lorg/lwjgl/util/vector/Vector2f;F)Z 
L933:   istore 18 
L935:   new com/fs/starfarer/combat/entities/ship/G 
L938:   dup 
L939:   invokespecial Method com/fs/starfarer/combat/entities/ship/G <init> ()V 
L942:   astore 19 
L944:   aload 19 
L946:   aload_2 
L947:   invokevirtual Method com/fs/starfarer/combat/E/F isDps ()Z 
L950:   invokevirtual Method com/fs/starfarer/combat/entities/ship/G setDps (Z)V 
L953:   aload 19 
L955:   aload_2 
L956:   invokevirtual Method com/fs/starfarer/combat/E/F getType ()Lcom/fs/starfarer/api/combat/DamageType; 
L959:   invokevirtual Method com/fs/starfarer/combat/entities/ship/G setType (Lcom/fs/starfarer/api/combat/DamageType;)V 
L962:   iconst_0 
L963:   istore 20 
L965:   aload 6 
L967:   instanceof com/fs/starfarer/combat/entities/Ship 
L970:   ifeq L1058 
L973:   aload 6 
L975:   checkcast com/fs/starfarer/combat/entities/Ship 
L978:   astore 21 
L980:   aload 21 
L982:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getWing ()Lcom/fs/starfarer/combat/ai/M; 
L985:   ifnull L1005 
L988:   aload 21 
L990:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getWing ()Lcom/fs/starfarer/combat/ai/M; 
L993:   invokevirtual Method com/fs/starfarer/combat/ai/M getSourceShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L996:   aload 8 
L998:   if_acmpne L1005 
L1001:  iconst_1 
L1002:  goto L1006 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/F Integer Integer Float Object java/lang/Object Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/entities/Ship Float Float Object java/lang/String Object com/fs/starfarer/api/combat/MutableStat Float Float Float Float Float Integer Object com/fs/starfarer/combat/entities/ship/G Integer Object com/fs/starfarer/combat/entities/Ship 
            stack 
        .end stack 
L1005:  iconst_0 

        .stack stack_1 Integer 
L1006:  istore 20 
L1008:  aload 21 
L1010:  ifnull L1058 
L1013:  aload 21 
L1015:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getAIFlags ()Lcom/fs/starfarer/api/combat/ShipwideAIFlags; 
L1018:  ifnull L1058 
L1021:  aload 21 
L1023:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getAIFlags ()Lcom/fs/starfarer/api/combat/ShipwideAIFlags; 
L1026:  getstatic Field com/fs/starfarer/api/combat/ShipwideAIFlags$AIFlags DRONE_MOTHERSHIP Lcom/fs/starfarer/api/combat/ShipwideAIFlags$AIFlags; 
L1029:  invokevirtual Method com/fs/starfarer/api/combat/ShipwideAIFlags getCustom (Lcom/fs/starfarer/api/combat/ShipwideAIFlags$AIFlags;)Ljava/lang/Object; 
L1032:  ifnull L1058 
L1035:  aload 21 
L1037:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getAIFlags ()Lcom/fs/starfarer/api/combat/ShipwideAIFlags; 
L1040:  getstatic Field com/fs/starfarer/api/combat/ShipwideAIFlags$AIFlags DRONE_MOTHERSHIP Lcom/fs/starfarer/api/combat/ShipwideAIFlags$AIFlags; 
L1043:  invokevirtual Method com/fs/starfarer/api/combat/ShipwideAIFlags getCustom (Lcom/fs/starfarer/api/combat/ShipwideAIFlags$AIFlags;)Ljava/lang/Object; 
L1046:  astore 22 
L1048:  aload 22 
L1050:  aload 8 
L1052:  if_acmpne L1058 
L1055:  iconst_1 
L1056:  istore 20 

        .stack chop 1 
L1058:  aload 7 
L1060:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getCombatUI ()Lcom/fs/starfarer/combat/K; 
L1063:  invokeinterface InterfaceMethod com/fs/starfarer/combat/K getEntityToFollow ()Lcom/fs/starfarer/combat/new/OoOO$o; 1 
L1068:  astore 21 
L1070:  aload_0 
L1071:  aload 8 
L1073:  if_acmpeq L1119 
L1076:  aload_0 
L1077:  aload 21 
L1079:  if_acmpeq L1119 
L1082:  aload 6 
L1084:  aload 8 
L1086:  if_acmpeq L1119 
L1089:  iload 20 
L1091:  ifne L1119 
L1094:  aload_0 
L1095:  aload 8 
L1097:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getShipTarget ()Lcom/fs/starfarer/combat/entities/Ship; 
L1100:  if_acmpeq L1119 
L1103:  aload 7 
L1105:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getFloatingTextManager ()Lcom/fs/starfarer/renderers/Q; 
L1108:  aload_0 
L1109:  invokevirtual Method com/fs/starfarer/renderers/Q 'super' (Lcom/fs/starfarer/combat/E/B;)Z 
L1112:  ifne L1119 
L1115:  iconst_0 
L1116:  goto L1120 

        .stack append Object com/fs/starfarer/combat/new/OoOO$o 
L1119:  iconst_1 

        .stack stack_1 Integer 
L1120:  istore 22 
L1122:  iload 22 
L1124:  ifeq L1138 
L1127:  aload_0 
L1128:  getfield Field com/fs/starfarer/combat/entities/Ship suppressFloaties Z 
L1131:  ifne L1138 
L1134:  iconst_1 
L1135:  goto L1139 

        .stack append Integer 
L1138:  iconst_0 

        .stack stack_1 Integer 
L1139:  istore 22 
L1141:  iload 22 
L1143:  ifeq L1157 
L1146:  aload_0 
L1147:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isFighter ()Z 
L1150:  ifne L1157 
L1153:  iconst_1 
L1154:  goto L1158 

        .stack same 
L1157:  iconst_0 

        .stack stack_1 Integer 
L1158:  istore 22 
L1160:  iload 22 
L1162:  ifeq L1175 
L1165:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'ÓÕ0000' ()Z 
L1168:  ifeq L1175 
L1171:  iconst_1 
L1172:  goto L1176 

        .stack same 
L1175:  iconst_0 

        .stack stack_1 Integer 
L1176:  istore 22 
L1178:  iload_3 
L1179:  ifeq L1524 
L1182:  aload_2 
L1183:  invokevirtual Method com/fs/starfarer/combat/E/F getStats ()Lcom/fs/starfarer/api/combat/MutableShipStatsAPI; 
L1186:  ifnull L1206 
L1189:  fload 13 
L1191:  aload_2 
L1192:  invokevirtual Method com/fs/starfarer/combat/E/F getStats ()Lcom/fs/starfarer/api/combat/MutableShipStatsAPI; 
L1195:  invokeinterface InterfaceMethod com/fs/starfarer/api/combat/MutableShipStatsAPI getDamageToTargetShieldsMult ()Lcom/fs/starfarer/api/combat/MutableStat; 1 
L1200:  invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L1203:  fmul 
L1204:  fstore 13 

        .stack same 
L1206:  fload 13 
L1208:  aload_2 
L1209:  invokevirtual Method com/fs/starfarer/combat/E/F getType ()Lcom/fs/starfarer/api/combat/DamageType; 
L1212:  invokevirtual Method com/fs/starfarer/api/combat/DamageType getShieldMult ()F 
L1215:  aload_0 
L1216:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getMutableStats ()Lcom/fs/starfarer/api/combat/MutableShipStatsAPI; 
L1219:  invokeinterface InterfaceMethod com/fs/starfarer/api/combat/MutableShipStatsAPI getShieldDamageTakenMult ()Lcom/fs/starfarer/api/combat/MutableStat; 1 
L1224:  invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L1227:  fmul 
L1228:  fmul 
L1229:  fstore 13 
L1231:  fload 13 
L1233:  aload_0 
L1234:  getfield Field com/fs/starfarer/combat/entities/Ship shield Lcom/fs/starfarer/combat/systems/G; 
L1237:  invokevirtual Method com/fs/starfarer/combat/systems/G getFluxPerPointOfDamage ()F 
L1240:  fmul 
L1241:  fstore 13 
L1243:  aload_0 
L1244:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getShield ()Lcom/fs/starfarer/combat/systems/G; 
L1247:  aload_1 
L1248:  fload 13 
L1250:  aload_2 
L1251:  invokevirtual Method com/fs/starfarer/combat/E/F isDps ()Z 
L1254:  fload 5 
L1256:  invokevirtual Method com/fs/starfarer/combat/systems/G shieldHit (Lorg/lwjgl/util/vector/Vector2f;FZF)V 
L1259:  aload_0 
L1260:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getEnergy ()F 
L1263:  fstore 23 
L1265:  fload 23 
L1267:  fload 13 
L1269:  fsub 
L1270:  fstore 23 
L1272:  fload 23 
L1274:  fconst_0 
L1275:  fcmpg 
L1276:  ifge L1339 
L1279:  aload 19 
L1281:  fload 23 
L1283:  fneg 
L1284:  invokevirtual Method com/fs/starfarer/combat/entities/ship/G setOverMaxDamageToShields (F)V 
L1287:  fload 13 
L1289:  fload 23 
L1291:  aload_0 
L1292:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getShield ()Lcom/fs/starfarer/combat/systems/G; 
L1295:  invokevirtual Method com/fs/starfarer/combat/systems/G getFluxPerPointOfDamage ()F 
L1298:  fdiv 
L1299:  fadd 
L1300:  fstore 13 
L1302:  fload 23 
L1304:  fneg 
L1305:  ldc_w +25.0f 
L1308:  fdiv 
L1309:  fstore 24 
L1311:  fload 24 
L1313:  ldc_w +5.0f 
L1316:  fcmpg 
L1317:  ifge L1325 
L1320:  ldc_w +5.0f 
L1323:  fstore 24 

        .stack append Float Float 
L1325:  fload 24 
L1327:  ldc_w +20.0f 
L1330:  fcmpl 
L1331:  ifle L1339 
L1334:  ldc_w +20.0f 
L1337:  fstore 24 

        .stack chop 1 
L1339:  aload_0 
L1340:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getEnergy ()F 
L1343:  fload 23 
L1345:  fsub 
L1346:  fstore 24 
L1348:  aload_2 
L1349:  invokevirtual Method com/fs/starfarer/combat/E/F isDps ()Z 
L1352:  istore 25 
L1354:  aload_2 
L1355:  invokevirtual Method com/fs/starfarer/combat/E/F isForceHardFlux ()Z 
L1358:  ifeq L1364 
L1361:  iconst_0 
L1362:  istore 25 

        .stack append Float Integer 
L1364:  aload_0 
L1365:  fload 24 
L1367:  iconst_0 
L1368:  iconst_1 
L1369:  aload_2 
L1370:  invokevirtual Method com/fs/starfarer/combat/E/F isSoftFlux ()Z 
L1373:  ifeq L1380 
L1376:  iconst_0 
L1377:  goto L1381 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/F Integer Integer Float Object java/lang/Object Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/entities/Ship Float Float Object java/lang/String Object com/fs/starfarer/api/combat/MutableStat Float Float Float Float Float Integer Object com/fs/starfarer/combat/entities/ship/G Integer Object com/fs/starfarer/combat/new/OoOO$o Integer Float Float Integer 
            stack Object com/fs/starfarer/combat/entities/Ship Float Integer Integer 
        .end stack 
L1380:  iconst_1 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/F Integer Integer Float Object java/lang/Object Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/entities/Ship Float Float Object java/lang/String Object com/fs/starfarer/api/combat/MutableStat Float Float Float Float Float Integer Object com/fs/starfarer/combat/entities/ship/G Integer Object com/fs/starfarer/combat/new/OoOO$o Integer Float Float Integer 
            stack Object com/fs/starfarer/combat/entities/Ship Float Integer Integer Integer 
        .end stack 
L1381:  iload 25 
L1383:  invokevirtual Method com/fs/starfarer/combat/entities/Ship increaseFlux (FZZZZ)Z 
L1386:  pop 
L1387:  aload_2 
L1388:  invokevirtual Method com/fs/starfarer/combat/E/F isForceHardFlux ()Z 
L1391:  ifne L1401 
L1394:  aload_2 
L1395:  invokevirtual Method com/fs/starfarer/combat/E/F isSoftFlux ()Z 
L1398:  ifne L1468 

        .stack same 
L1401:  aload_0 
L1402:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getStats ()Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L1405:  invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getShieldSoftFluxConversion ()Lcom/fs/starfarer/api/combat/MutableStat; 
L1408:  invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L1411:  fstore 26 
L1413:  fload 26 
L1415:  fconst_0 
L1416:  fcmpg 
L1417:  ifge L1423 
L1420:  fconst_0 
L1421:  fstore 26 

        .stack append Float 
L1423:  fload 26 
L1425:  fconst_1 
L1426:  fcmpl 
L1427:  ifle L1433 
L1430:  fconst_1 
L1431:  fstore 26 

        .stack same 
L1433:  fload 26 
L1435:  fconst_0 
L1436:  fcmpl 
L1437:  ifle L1468 
L1440:  fload 24 
L1442:  fload 26 
L1444:  fmul 
L1445:  fstore 27 
L1447:  aload_0 
L1448:  getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L1451:  fconst_0 
L1452:  aload_0 
L1453:  getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L1456:  invokevirtual Method com/fs/starfarer/combat/entities/ship/D getMinFlux ()F 
L1459:  fload 27 
L1461:  fsub 
L1462:  invokestatic Method java/lang/Math max (FF)F 
L1465:  invokevirtual Method com/fs/starfarer/combat/entities/ship/D setMinFlux (F)V 

        .stack chop 1 
L1468:  iload 22 
L1470:  ifeq L1514 
L1473:  fload 13 
L1475:  fconst_0 
L1476:  fcmpl 
L1477:  ifle L1514 
L1480:  aload 6 
L1482:  instanceof com/fs/starfarer/combat/E/B 
L1485:  ifeq L1496 
L1488:  aload 6 
L1490:  checkcast com/fs/starfarer/combat/E/B 
L1493:  goto L1497 

        .stack same 
L1496:  aconst_null 

        .stack stack_1 Object com/fs/starfarer/combat/E/B 
L1497:  astore 26 
L1499:  aload 7 
L1501:  aload_1 
L1502:  fload 13 
L1504:  fconst_0 
L1505:  getstatic Field com/fs/starfarer/O0OO 'ÕÔ0000' Ljava/awt/Color; 
L1508:  aload_0 
L1509:  aload 26 
L1511:  invokevirtual Method com/fs/starfarer/combat/CombatEngine addFloaty (Lorg/lwjgl/util/vector/Vector2f;FFLjava/awt/Color;Lcom/fs/starfarer/combat/E/B;Lcom/fs/starfarer/combat/E/B;)V 

        .stack same 
L1514:  aload 19 
L1516:  fload 13 
L1518:  invokevirtual Method com/fs/starfarer/combat/entities/ship/G setDamageToShields (F)V 
L1521:  goto L4545 

        .stack chop 3 
L1524:  fload 13 
L1526:  fconst_0 
L1527:  fcmpl 
L1528:  ifgt L1538 
L1531:  fload 15 
L1533:  fconst_0 
L1534:  fcmpl 
L1535:  ifle L4545 

        .stack same 
L1538:  aload_1 
L1539:  aload_0 
L1540:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L1543:  new org/lwjgl/util/vector/Vector2f 
L1546:  dup 
L1547:  invokespecial Method org/lwjgl/util/vector/Vector2f <init> ()V 
L1550:  invokestatic Method org/lwjgl/util/vector/Vector2f sub [u576] 
L1553:  astore 23 
L1555:  aconst_null 
L1556:  astore 24 
L1558:  iload 4 
L1560:  ifne L1592 
L1563:  aload_0 
L1564:  getfield Field com/fs/starfarer/combat/entities/Ship armorGrid Lcom/fs/starfarer/combat/entities/ship/new; 
L1567:  fload 13 
L1569:  fload 17 
L1571:  aload_2 
L1572:  fload 5 
L1574:  aload 23 
L1576:  aload_0 
L1577:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getFacing ()F 
L1580:  aload_2 
L1581:  invokevirtual Method com/fs/starfarer/combat/E/F getType ()Lcom/fs/starfarer/api/combat/DamageType; 
L1584:  invokevirtual Method com/fs/starfarer/combat/entities/ship/new applyDamage (FFLcom/fs/starfarer/combat/E/F;FLorg/lwjgl/util/vector/Vector2f;FLcom/fs/starfarer/api/combat/DamageType;)Lcom/fs/starfarer/combat/entities/ship/G; 
L1587:  astore 24 
L1589:  goto L1608 

        .stack append Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/entities/ship/G 
L1592:  new com/fs/starfarer/combat/entities/ship/G 
L1595:  dup 
L1596:  invokespecial Method com/fs/starfarer/combat/entities/ship/G <init> ()V 
L1599:  astore 24 
L1601:  aload 24 
L1603:  fload 13 
L1605:  invokevirtual Method com/fs/starfarer/combat/entities/ship/G setDamageToHull (F)V 

        .stack same 
L1608:  aload_2 
L1609:  invokevirtual Method com/fs/starfarer/combat/E/F getStats ()Lcom/fs/starfarer/api/combat/MutableShipStatsAPI; 
L1612:  ifnull L1646 
L1615:  aload 24 
L1617:  invokevirtual Method com/fs/starfarer/combat/entities/ship/G getDamageToHull ()F 
L1620:  fstore 25 
L1622:  fload 25 
L1624:  aload_2 
L1625:  invokevirtual Method com/fs/starfarer/combat/E/F getStats ()Lcom/fs/starfarer/api/combat/MutableShipStatsAPI; 
L1628:  invokeinterface InterfaceMethod com/fs/starfarer/api/combat/MutableShipStatsAPI getDamageToTargetHullMult ()Lcom/fs/starfarer/api/combat/MutableStat; 1 
L1633:  invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L1636:  fmul 
L1637:  fstore 25 
L1639:  aload 24 
L1641:  fload 25 
L1643:  invokevirtual Method com/fs/starfarer/combat/entities/ship/G setDamageToHull (F)V 

        .stack same 
L1646:  aload 24 
L1648:  invokevirtual Method com/fs/starfarer/combat/entities/ship/G getDamageToHull ()F 
L1651:  fstore 25 
L1653:  aload_0 
L1654:  getfield Field com/fs/starfarer/combat/entities/Ship hullDamageThreshold F 
L1657:  fconst_0 
L1658:  fcmpl 
L1659:  iflt L1722 
L1662:  aload_0 
L1663:  getfield Field com/fs/starfarer/combat/entities/Ship hullDamageBeyondThresholdMult F 
L1666:  fconst_0 
L1667:  fcmpl 
L1668:  iflt L1722 
L1671:  fload 25 
L1673:  aload_0 
L1674:  getfield Field com/fs/starfarer/combat/entities/Ship hullDamageThreshold F 
L1677:  fcmpl 
L1678:  ifle L1722 
L1681:  fload 25 
L1683:  aload_0 
L1684:  getfield Field com/fs/starfarer/combat/entities/Ship hullDamageThreshold F 
L1687:  fsub 
L1688:  fstore 26 
L1690:  fload 26 
L1692:  aload_0 
L1693:  getfield Field com/fs/starfarer/combat/entities/Ship hullDamageBeyondThresholdMult F 
L1696:  fmul 
L1697:  fstore 26 
L1699:  aload_0 
L1700:  getfield Field com/fs/starfarer/combat/entities/Ship hullDamageThreshold F 
L1703:  fload 26 
L1705:  fadd 
L1706:  fstore 25 
L1708:  aload_0 
L1709:  ldc_w -1.0f 
L1712:  putfield Field com/fs/starfarer/combat/entities/Ship hullDamageThreshold F 
L1715:  aload_0 
L1716:  ldc_w -1.0f 
L1719:  putfield Field com/fs/starfarer/combat/entities/Ship hullDamageBeyondThresholdMult F 

        .stack append Float 
L1722:  fconst_0 
L1723:  aload_0 
L1724:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getHitpoints ()F 
L1727:  invokestatic Method java/lang/Math max (FF)F 
L1730:  fload 25 
L1732:  invokestatic Method java/lang/Math min (FF)F 
L1735:  fstore 26 
L1737:  aload_0 
L1738:  aload 6 
L1740:  aload_1 
L1741:  fload 26 
L1743:  invokestatic Method com/fs/starfarer/api/combat/listeners/CombatListenerUtil notifyAboutToTakeHullDamage (Lcom/fs/starfarer/api/combat/ShipAPI;Ljava/lang/Object;Lorg/lwjgl/util/vector/Vector2f;F)Z 
L1746:  istore 27 
L1748:  iload 27 
L1750:  ifeq L1759 
L1753:  fconst_0 
L1754:  fstore 26 
L1756:  fconst_0 
L1757:  fstore 25 

        .stack append Float Integer 
L1759:  fload 26 
L1761:  fconst_0 
L1762:  fcmpl 
L1763:  ifle L1818 
L1766:  aload 6 
L1768:  instanceof com/fs/starfarer/combat/entities/Ship 
L1771:  ifeq L1818 
L1774:  aload 6 
L1776:  checkcast com/fs/starfarer/combat/entities/Ship 
L1779:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getFleetMember ()Lcom/fs/starfarer/api/fleet/FleetMemberAPI; 
L1782:  astore 28 
L1784:  aload_0 
L1785:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getParentStationFleetMemberIfPossible ()Lcom/fs/starfarer/api/fleet/FleetMemberAPI; 
L1788:  astore 29 
L1790:  aload 28 
L1792:  ifnull L1818 
L1795:  aload 29 
L1797:  ifnull L1818 
L1800:  invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L1803:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getDamageData ()Lcom/fs/starfarer/api/campaign/CombatDamageData; 
L1806:  aload 28 
L1808:  invokevirtual Method com/fs/starfarer/api/campaign/CombatDamageData getDealtBy (Lcom/fs/starfarer/api/fleet/FleetMemberAPI;)Lcom/fs/starfarer/api/campaign/CombatDamageData$DealtByFleetMember; 
L1811:  aload 29 
L1813:  fload 26 
L1815:  invokevirtual Method com/fs/starfarer/api/campaign/CombatDamageData$DealtByFleetMember addHullDamage (Lcom/fs/starfarer/api/fleet/FleetMemberAPI;F)V 

        .stack same 
L1818:  aload_0 
L1819:  getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L1822:  invokevirtual Method com/fs/starfarer/combat/entities/ship/D getCurrFlux ()F 
L1825:  aload_0 
L1826:  getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L1829:  invokevirtual Method com/fs/starfarer/combat/entities/ship/D getMaxFlux ()F 
L1832:  fdiv 
L1833:  fstore 28 
L1835:  fconst_1 
L1836:  fload 28 
L1838:  ldc_w +0.5f 
L1841:  fmul 
L1842:  fadd 
L1843:  fstore 29 
L1845:  fload 15 
L1847:  fconst_0 
L1848:  fcmpl 
L1849:  ifle L1859 
L1852:  aload 19 
L1854:  fload 15 
L1856:  invokevirtual Method com/fs/starfarer/combat/entities/ship/G setEmpDamage (F)V 

        .stack append Float Float 
L1859:  aload 24 
L1861:  invokevirtual Method com/fs/starfarer/combat/entities/ship/G getAffectedComponents ()Ljava/util/List; 
L1864:  astore 30 
L1866:  aload 30 
L1868:  ifnull L2131 
L1871:  fload 15 
L1873:  aload 24 
L1875:  invokevirtual Method com/fs/starfarer/combat/entities/ship/G getDamageToHull ()F 
L1878:  fadd 
L1879:  aload 24 
L1881:  invokevirtual Method com/fs/starfarer/combat/entities/ship/G getTotalDamageToArmor ()F 
L1884:  fadd 
L1885:  fstore 31 
L1887:  aload 30 
L1889:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L1894:  astore 33 
L1896:  goto L2121 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/F Integer Integer Float Object java/lang/Object Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/entities/Ship Float Float Object java/lang/String Object com/fs/starfarer/api/combat/MutableStat Float Float Float Float Float Integer Object com/fs/starfarer/combat/entities/ship/G Integer Object com/fs/starfarer/combat/new/OoOO$o Integer Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/entities/ship/G Float Float Integer Float Float Object java/util/List Float Top Object java/util/Iterator 
            stack 
        .end stack 
L1899:  aload 33 
L1901:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L1906:  checkcast com/fs/starfarer/combat/entities/ship/new$o 
L1909:  astore 32 
L1911:  fconst_1 
L1912:  fstore 34 
L1914:  aload 32 
L1916:  invokevirtual Method com/fs/starfarer/combat/entities/ship/new$o 'super' ()I 
L1919:  istore 35 
L1921:  iload 35 
L1923:  ifne L1934 
L1926:  ldc_w +0.5f 
L1929:  fstore 34 
L1931:  goto L1959 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/F Integer Integer Float Object java/lang/Object Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/entities/Ship Float Float Object java/lang/String Object com/fs/starfarer/api/combat/MutableStat Float Float Float Float Float Integer Object com/fs/starfarer/combat/entities/ship/G Integer Object com/fs/starfarer/combat/new/OoOO$o Integer Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/entities/ship/G Float Float Integer Float Float Object java/util/List Float Object com/fs/starfarer/combat/entities/ship/new$o Object java/util/Iterator Float Integer 
            stack 
        .end stack 
L1934:  iload 35 
L1936:  iconst_1 
L1937:  if_icmpne L1948 
L1940:  ldc_w +0.5f 
L1943:  fstore 34 
L1945:  goto L1959 

        .stack same 
L1948:  iload 35 
L1950:  iconst_2 
L1951:  if_icmpne L1959 
L1954:  ldc_w +0.25f 
L1957:  fstore 34 

        .stack same 
L1959:  fload 34 
L1961:  fload 31 
L1963:  fmul 
L1964:  fstore 36 
L1966:  aload 32 
L1968:  invokevirtual Method com/fs/starfarer/combat/entities/ship/new$o 'Ò00000' ()Lcom/fs/starfarer/combat/entities/ship/super$o; 
L1971:  invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/super$o getComponentType ()Lcom/fs/starfarer/combat/entities/ship/super$oo; 1 
L1976:  getstatic Field com/fs/starfarer/combat/entities/ship/super$oo 'Ó00000' Lcom/fs/starfarer/combat/entities/ship/super$oo; 
L1979:  if_acmpne L2000 
L1982:  fload 36 
L1984:  aload_0 
L1985:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getStats ()Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L1988:  invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getWeaponDamageTakenMult ()Lcom/fs/starfarer/api/combat/MutableStat; 
L1991:  invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L1994:  fmul 
L1995:  fstore 36 
L1997:  goto L2031 

        .stack append Float 
L2000:  aload 32 
L2002:  invokevirtual Method com/fs/starfarer/combat/entities/ship/new$o 'Ò00000' ()Lcom/fs/starfarer/combat/entities/ship/super$o; 
L2005:  invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/super$o getComponentType ()Lcom/fs/starfarer/combat/entities/ship/super$oo; 1 
L2010:  getstatic Field com/fs/starfarer/combat/entities/ship/super$oo new Lcom/fs/starfarer/combat/entities/ship/super$oo; 
L2013:  if_acmpne L2031 
L2016:  fload 36 
L2018:  aload_0 
L2019:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getStats ()Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L2022:  invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getEngineDamageTakenMult ()Lcom/fs/starfarer/api/combat/MutableStat; 
L2025:  invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L2028:  fmul 
L2029:  fstore 36 

        .stack same 
L2031:  aload_2 
L2032:  invokevirtual Method com/fs/starfarer/combat/E/F getStats ()Lcom/fs/starfarer/api/combat/MutableShipStatsAPI; 
L2035:  ifnull L2107 
L2038:  aload 32 
L2040:  invokevirtual Method com/fs/starfarer/combat/entities/ship/new$o 'Ò00000' ()Lcom/fs/starfarer/combat/entities/ship/super$o; 
L2043:  invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/super$o getComponentType ()Lcom/fs/starfarer/combat/entities/ship/super$oo; 1 
L2048:  getstatic Field com/fs/starfarer/combat/entities/ship/super$oo 'Ó00000' Lcom/fs/starfarer/combat/entities/ship/super$oo; 
L2051:  if_acmpne L2074 
L2054:  fload 36 
L2056:  aload_2 
L2057:  invokevirtual Method com/fs/starfarer/combat/E/F getStats [u1691] 
L2060:  invokeinterface InterfaceMethod com/fs/starfarer/api/combat/MutableShipStatsAPI getDamageToTargetWeaponsMult ()Lcom/fs/starfarer/api/combat/MutableStat; 1 
L2065:  invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L2068:  fmul 
L2069:  fstore 36 
L2071:  goto L2107 

        .stack same 
L2074:  aload 32 
L2076:  invokevirtual Method com/fs/starfarer/combat/entities/ship/new$o 'Ò00000' ()Lcom/fs/starfarer/combat/entities/ship/super$o; 
L2079:  invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/super$o getComponentType ()Lcom/fs/starfarer/combat/entities/ship/super$oo; 1 
L2084:  getstatic Field com/fs/starfarer/combat/entities/ship/super$oo new Lcom/fs/starfarer/combat/entities/ship/super$oo; 
L2087:  if_acmpne L2107 
L2090:  fload 36 
L2092:  aload_2 
L2093:  invokevirtual Method com/fs/starfarer/combat/E/F getStats [u1691] 
L2096:  invokeinterface InterfaceMethod com/fs/starfarer/api/combat/MutableShipStatsAPI getDamageToTargetEnginesMult ()Lcom/fs/starfarer/api/combat/MutableStat; 1 
L2101:  invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L2104:  fmul 
L2105:  fstore 36 

        .stack same 
L2107:  aload 32 
L2109:  invokevirtual Method com/fs/starfarer/combat/entities/ship/new$o 'Ò00000' ()Lcom/fs/starfarer/combat/entities/ship/super$o; 
L2112:  fload 36 
L2114:  aload 6 
L2116:  invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/super$o applyDamage (FLjava/lang/Object;)V 3 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/F Integer Integer Float Object java/lang/Object Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/entities/Ship Float Float Object java/lang/String Object com/fs/starfarer/api/combat/MutableStat Float Float Float Float Float Integer Object com/fs/starfarer/combat/entities/ship/G Integer Object com/fs/starfarer/combat/new/OoOO$o Integer Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/entities/ship/G Float Float Integer Float Float Object java/util/List Float Top Object java/util/Iterator 
            stack 
        .end stack 
L2121:  aload 33 
L2123:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L2128:  ifne L1899 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/F Integer Integer Float Object java/lang/Object Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/entities/Ship Float Float Object java/lang/String Object com/fs/starfarer/api/combat/MutableStat Float Float Float Float Float Integer Object com/fs/starfarer/combat/entities/ship/G Integer Object com/fs/starfarer/combat/new/OoOO$o Integer Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/entities/ship/G Float Float Integer Float Float Object java/util/List 
            stack 
        .end stack 
L2131:  aload 24 
L2133:  invokevirtual Method com/fs/starfarer/combat/entities/ship/G getTotalDamageToArmor ()F 
L2136:  fstore 31 
L2138:  iload 22 
L2140:  ifeq L2184 
L2143:  fload 31 
L2145:  fconst_0 
L2146:  fcmpl 
L2147:  ifle L2184 
L2150:  aload 6 
L2152:  instanceof com/fs/starfarer/combat/E/B 
L2155:  ifeq L2166 
L2158:  aload 6 
L2160:  checkcast com/fs/starfarer/combat/E/B 
L2163:  goto L2167 

        .stack append Float 
L2166:  aconst_null 

        .stack stack_1 Object com/fs/starfarer/combat/E/B 
L2167:  astore 32 
L2169:  aload 7 
L2171:  aload_1 
L2172:  fload 31 
L2174:  fconst_0 
L2175:  getstatic Field com/fs/starfarer/O0OO 'super.String' Ljava/awt/Color; 
L2178:  aload_0 
L2179:  aload 32 
L2181:  invokevirtual Method com/fs/starfarer/combat/CombatEngine addFloaty (Lorg/lwjgl/util/vector/Vector2f;FFLjava/awt/Color;Lcom/fs/starfarer/combat/E/B;Lcom/fs/starfarer/combat/E/B;)V 

        .stack same 
L2184:  aload_0 
L2185:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getHitpoints ()F 
L2188:  fstore 32 
L2190:  aload 19 
L2192:  fload 25 
L2194:  invokevirtual Method com/fs/starfarer/combat/entities/ship/G setDamageToHull (F)V 
L2197:  aload 19 
L2199:  aload 24 
L2201:  invokevirtual Method com/fs/starfarer/combat/entities/ship/G getDamageToPrimaryArmorCell ()F 
L2204:  invokevirtual Method com/fs/starfarer/combat/entities/ship/G setDamageToPrimaryArmorCell (F)V 
L2207:  aload 19 
L2209:  aload 24 
L2211:  invokevirtual Method com/fs/starfarer/combat/entities/ship/G getTotalDamageToArmor ()F 
L2214:  invokevirtual Method com/fs/starfarer/combat/entities/ship/G setTotalDamageToArmor (F)V 
L2217:  fload 32 
L2219:  fstore 33 
L2221:  fload 32 
L2223:  fload 25 
L2225:  fsub 
L2226:  fstore 32 
L2228:  fconst_0 
L2229:  fstore 34 
L2231:  fload 32 
L2233:  fconst_0 
L2234:  fcmpg 
L2235:  ifge L2257 
L2238:  aload_0 
L2239:  dup 
L2240:  getfield Field com/fs/starfarer/combat/entities/Ship overkill F 
L2243:  fload 32 
L2245:  fsub 
L2246:  putfield Field com/fs/starfarer/combat/entities/Ship overkill F 
L2249:  fload 32 
L2251:  fneg 
L2252:  fstore 34 
L2254:  fconst_0 
L2255:  fstore 32 

        .stack append Float Float Float 
L2257:  aload_0 
L2258:  fload 32 
L2260:  invokevirtual Method com/fs/starfarer/combat/entities/Ship setHitpoints (F)V 
L2263:  aload_0 
L2264:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getSpec [u632] 
L2267:  invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L2270:  invokevirtual Method com/fs/starfarer/loading/specs/g getArmorSpec ()Lcom/fs/starfarer/loading/specs/G; 
L2273:  invokevirtual Method com/fs/starfarer/loading/specs/G 'super' ()F 
L2276:  fstore 35 
L2278:  fload 33 
L2280:  fload 35 
L2282:  ldc_w +0.5f 
L2285:  fmul 
L2286:  fcmpl 
L2287:  ifle L2297 
L2290:  fload 32 
L2292:  fconst_0 
L2293:  fcmpl 
L2294:  ifle L2297 

        .stack append Float 
L2297:  iload 22 
L2299:  ifeq L2405 
L2302:  fload 25 
L2304:  fconst_0 
L2305:  fcmpl 
L2306:  ifle L2405 
L2309:  getstatic Field com/fs/starfarer/O0OO 'øo0000' Ljava/awt/Color; 
L2312:  astore 36 
L2314:  aload 6 
L2316:  instanceof com/fs/starfarer/combat/E/B 
L2319:  ifeq L2330 
L2322:  aload 6 
L2324:  checkcast com/fs/starfarer/combat/E/B 
L2327:  goto L2331 

        .stack append Object java/awt/Color 
L2330:  aconst_null 

        .stack stack_1 Object com/fs/starfarer/combat/E/B 
L2331:  astore 37 
L2333:  new org/lwjgl/util/vector/Vector2f 
L2336:  dup 
L2337:  aload_0 
L2338:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L2341:  getfield Field org/lwjgl/util/vector/Vector2f x F 
L2344:  aload_1 
L2345:  getfield Field org/lwjgl/util/vector/Vector2f x F 
L2348:  aload_0 
L2349:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L2352:  getfield Field org/lwjgl/util/vector/Vector2f x F 
L2355:  fsub 
L2356:  ldc_w +0.6000000238418579f 
L2359:  fmul 
L2360:  fadd 
L2361:  aload_0 
L2362:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L2365:  getfield Field org/lwjgl/util/vector/Vector2f y F 
L2368:  aload_1 
L2369:  getfield Field org/lwjgl/util/vector/Vector2f y F 
L2372:  aload_0 
L2373:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L2376:  getfield Field org/lwjgl/util/vector/Vector2f y F 
L2379:  fsub 
L2380:  ldc_w +0.6000000238418579f 
L2383:  fmul 
L2384:  fadd 
L2385:  invokespecial Method org/lwjgl/util/vector/Vector2f <init> (FF)V 
L2388:  astore 38 
L2390:  aload 7 
L2392:  aload 38 
L2394:  fload 25 
L2396:  fconst_0 
L2397:  aload 36 
L2399:  aload_0 
L2400:  aload 37 
L2402:  invokevirtual Method com/fs/starfarer/combat/CombatEngine addFloaty (Lorg/lwjgl/util/vector/Vector2f;FFLjava/awt/Color;Lcom/fs/starfarer/combat/E/B;Lcom/fs/starfarer/combat/E/B;)V 

        .stack chop 1 
L2405:  aload_0 
L2406:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L2409:  aload_1 
L2410:  invokestatic Method com/fs/starfarer/prototype/Utils 'Ó00000' (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)F 
L2413:  fstore 36 
L2415:  aload_0 
L2416:  getfield Field com/fs/starfarer/combat/entities/Ship spawnDebris Z 
L2419:  ifeq L2458 
L2422:  aload_0 
L2423:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 
L2426:  astore 37 
L2428:  aload_0 
L2429:  getfield Field com/fs/starfarer/combat/entities/Ship explosionVelocityOverride Lorg/lwjgl/util/vector/Vector2f; 
L2432:  ifnull L2441 
L2435:  aload_0 
L2436:  getfield Field com/fs/starfarer/combat/entities/Ship explosionVelocityOverride Lorg/lwjgl/util/vector/Vector2f; 
L2439:  astore 37 

        .stack append Float Object org/lwjgl/util/vector/Vector2f 
L2441:  aload 7 
L2443:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getDebrisSystem ()Lcom/fs/starfarer/renderers/damage/DebrisParticleSystem; 
L2446:  aload_1 
L2447:  aload 37 
L2449:  fload 36 
L2451:  fload 32 
L2453:  fload 25 
L2455:  invokevirtual Method com/fs/starfarer/renderers/damage/DebrisParticleSystem spawnDebris (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;FFF)V 

        .stack chop 1 
L2458:  aload_0 
L2459:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isFighter ()Z 
L2462:  ifne L2479 
L2465:  aload_0 
L2466:  getfield Field com/fs/starfarer/combat/entities/Ship isHulk Z 
L2469:  ifne L2479 
L2472:  aload_0 
L2473:  aload_1 
L2474:  fload 25 
L2476:  invokevirtual Method com/fs/starfarer/combat/entities/Ship spawnDamagedExplosion (Lorg/lwjgl/util/vector/Vector2f;F)V 

        .stack same 
L2479:  aload_0 
L2480:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getHitpoints ()F 
L2483:  fconst_0 
L2484:  fcmpg 
L2485:  ifgt L4159 
L2488:  aload_0 
L2489:  getfield Field com/fs/starfarer/combat/entities/Ship isHulk Z 
L2492:  ifne L4159 
L2495:  aload_0 
L2496:  getfield Field com/fs/starfarer/combat/entities/Ship explosionScale F 
L2499:  fconst_0 
L2500:  fcmpl 
L2501:  ifle L2508 
L2504:  aload_0 
L2505:  invokestatic Method com/fs/starfarer/combat/entities/ship/A/I o00000 (Lcom/fs/starfarer/combat/entities/Ship;)V 

        .stack same 
L2508:  aload_0 
L2509:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isFighter ()Z 
L2512:  ifne L2564 
L2515:  aload_0 
L2516:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isFrigate ()Z 
L2519:  ifne L2564 
L2522:  aload_0 
L2523:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullSize ()Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L2526:  invokevirtual Method com/fs/starfarer/api/combat/ShipAPI$HullSize ordinal ()I 
L2529:  i2f 
L2530:  fstore 37 
L2532:  fload 37 
L2534:  getstatic Field com/fs/starfarer/api/combat/ShipAPI$HullSize CAPITAL_SHIP Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L2537:  invokevirtual Method com/fs/starfarer/api/combat/ShipAPI$HullSize ordinal ()I 
L2540:  i2f 
L2541:  fdiv 
L2542:  fstore 37 
L2544:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'ÓÓ0000' ()Z 
L2547:  ifeq L2564 
L2550:  aload 7 
L2552:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getWhiteout ()Lcom/fs/starfarer/renderers/damage/OooO; 
L2555:  aload_0 
L2556:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L2559:  fload 37 
L2561:  invokevirtual Method com/fs/starfarer/renderers/damage/OooO 'super' (Lorg/lwjgl/util/vector/Vector2f;F)V 

        .stack same 
L2564:  aload_0 
L2565:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isFighter ()Z 
L2568:  ifne L2605 
L2571:  aload_0 
L2572:  invokestatic Method com/fs/starfarer/api/loading/DamagingExplosionSpec explosionSpecForShip (Lcom/fs/starfarer/api/combat/ShipAPI;)Lcom/fs/starfarer/api/loading/DamagingExplosionSpec; 
L2575:  astore 37 
L2577:  aload 37 
L2579:  invokevirtual Method com/fs/starfarer/api/loading/DamagingExplosionSpec getMaxDamage ()F 
L2582:  fconst_0 
L2583:  fcmpl 
L2584:  ifle L2605 
L2587:  aload_0 
L2588:  aconst_null 
L2589:  aload 37 
L2591:  aload_0 
L2592:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L2595:  fconst_0 
L2596:  aload_0 
L2597:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 
L2600:  iconst_0 
L2601:  invokestatic Method com/fs/starfarer/loading/specs/a 'super' (Lcom/fs/starfarer/combat/entities/Ship;Lcom/fs/starfarer/combat/systems/o00O;Lcom/fs/starfarer/api/loading/DamagingExplosionSpec;Lorg/lwjgl/util/vector/Vector2f;FLorg/lwjgl/util/vector/Vector2f;Z)Ljava/lang/Object; 
L2604:  pop 

        .stack same 
L2605:  aload_0 
L2606:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getExplosionScale ()F 
L2609:  fconst_0 
L2610:  fcmpl 
L2611:  ifle L2646 
L2614:  invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L2617:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getCombatUI ()Lcom/fs/starfarer/combat/K; 
L2620:  aload_0 
L2621:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L2624:  aload_0 
L2625:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getCollisionRadius ()F 
L2628:  f2d 
L2629:  invokestatic Method java/lang/Math sqrt (D)D 
L2632:  d2f 
L2633:  ldc_w +15.0f 
L2636:  fmul 
L2637:  ldc_w +4.0f 
L2640:  fmul 
L2641:  invokeinterface InterfaceMethod com/fs/starfarer/combat/K addExplosion (Lorg/lwjgl/util/vector/Vector2f;F)V 3 

        .stack same 
L2646:  iload 18 
L2648:  ifeq L3315 
L2651:  aload_0 
L2652:  getfield Field com/fs/starfarer/combat/entities/Ship explosionScale F 
L2655:  ldc_w +0.004999999888241291f 
L2658:  fcmpl 
L2659:  ifle L3315 
L2662:  ldc_w 'useOldShipExplosions' 
L2665:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings class (Ljava/lang/String;)Z 
L2668:  ifeq L2870 
L2671:  aload_0 
L2672:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 
L2675:  astore 37 
L2677:  aload_0 
L2678:  getfield Field com/fs/starfarer/combat/entities/Ship explosionVelocityOverride Lorg/lwjgl/util/vector/Vector2f; 
L2681:  ifnull L2690 
L2684:  aload_0 
L2685:  getfield Field com/fs/starfarer/combat/entities/Ship explosionVelocityOverride Lorg/lwjgl/util/vector/Vector2f; 
L2688:  astore 37 

        .stack append Object org/lwjgl/util/vector/Vector2f 
L2690:  invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L2693:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getExplosionSystem ()Lcom/fs/starfarer/renderers/damage/ExplosionParticleSystem; 
L2696:  aload_0 
L2697:  aload_0 
L2698:  getfield Field com/fs/starfarer/combat/entities/Ship explosionScale F 
L2701:  aload 37 
L2703:  invokevirtual Method com/fs/starfarer/renderers/damage/ExplosionParticleSystem spawnExplosion (Lcom/fs/starfarer/combat/E/B;FLorg/lwjgl/util/vector/Vector2f;)V 
L2706:  aload_0 
L2707:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getCollisionRadius ()F 
L2710:  f2d 
L2711:  invokestatic Method java/lang/Math sqrt (D)D 
L2714:  d2f 
L2715:  ldc_w +15.0f 
L2718:  fmul 
L2719:  ldc_w +4.0f 
L2722:  fmul 
L2723:  fstore 38 
L2725:  aload_0 
L2726:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isFighter ()Z 
L2729:  ifeq L2740 
L2732:  fload 38 
L2734:  ldc_w +0.5f 
L2737:  fmul 
L2738:  fstore 38 

        .stack append Float 
L2740:  fload 38 
L2742:  aload_0 
L2743:  getfield Field com/fs/starfarer/combat/entities/Ship explosionScale F 
L2746:  fmul 
L2747:  fstore 38 
L2749:  aload_0 
L2750:  getfield Field com/fs/starfarer/combat/entities/Ship spec Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L2753:  invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L2756:  invokevirtual Method com/fs/starfarer/loading/specs/g getHullStyle ()Lcom/fs/starfarer/loading/specs/OoOO; 
L2759:  invokevirtual Method com/fs/starfarer/loading/specs/OoOO 'ÔO0000' ()Ljava/awt/Color; 
L2762:  astore 39 
L2764:  fconst_1 
L2765:  fstore 40 
L2767:  aload_0 
L2768:  getfield Field com/fs/starfarer/combat/entities/Ship explosionFlashColorOverride Ljava/awt/Color; 
L2771:  ifnull L2812 
L2774:  aload_0 
L2775:  getfield Field com/fs/starfarer/combat/entities/Ship explosionFlashColorOverride Ljava/awt/Color; 
L2778:  astore 39 
L2780:  aload 39 
L2782:  invokevirtual Method java/awt/Color getAlpha ()I 
L2785:  i2f 
L2786:  ldc_w +255.0f 
L2789:  fdiv 
L2790:  fstore 40 
L2792:  fload 40 
L2794:  fconst_0 
L2795:  fcmpg 
L2796:  ifge L2802 
L2799:  fconst_0 
L2800:  fstore 40 

        .stack append Object java/awt/Color Float 
L2802:  fload 40 
L2804:  fconst_1 
L2805:  fcmpl 
L2806:  ifle L2812 
L2809:  fconst_1 
L2810:  fstore 40 

        .stack same 
L2812:  aload 7 
L2814:  aload_0 
L2815:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L2818:  aload 37 
L2820:  fload 38 
L2822:  ldc +3.0f 
L2824:  fmul 
L2825:  fload 40 
L2827:  ldc_w +1.5f 
L2830:  aload 39 
L2832:  invokevirtual Method com/fs/starfarer/combat/CombatEngine addHitParticle (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;FFFLjava/awt/Color;)V 
L2835:  aload_0 
L2836:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isFrigate ()Z 
L2839:  ifeq L3315 
L2842:  aload 7 
L2844:  aload_0 
L2845:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L2848:  aload 37 
L2850:  fload 38 
L2852:  ldc_w +0.5f 
L2855:  fmul 
L2856:  fload 40 
L2858:  ldc_w +1.5f 
L2861:  getstatic Field java/awt/Color white Ljava/awt/Color; 
L2864:  invokevirtual Method com/fs/starfarer/combat/CombatEngine addHitParticle (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;FFFLjava/awt/Color;)V 
L2867:  goto L3315 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/F Integer Integer Float Object java/lang/Object Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/entities/Ship Float Float Object java/lang/String Object com/fs/starfarer/api/combat/MutableStat Float Float Float Float Float Integer Object com/fs/starfarer/combat/entities/ship/G Integer Object com/fs/starfarer/combat/new/OoOO$o Integer Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/entities/ship/G Float Float Integer Float Float Object java/util/List Float Float Float Float Float Float 
            stack 
        .end stack 
L2870:  aload_0 
L2871:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 
L2874:  astore 37 
L2876:  aload_0 
L2877:  getfield Field com/fs/starfarer/combat/entities/Ship explosionVelocityOverride Lorg/lwjgl/util/vector/Vector2f; 
L2880:  ifnull L2889 
L2883:  aload_0 
L2884:  getfield Field com/fs/starfarer/combat/entities/Ship explosionVelocityOverride Lorg/lwjgl/util/vector/Vector2f; 
L2887:  astore 37 

        .stack append Object org/lwjgl/util/vector/Vector2f 
L2889:  aload_0 
L2890:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getShieldCenterEvenIfNoShield ()Lorg/lwjgl/util/vector/Vector2f; 
L2893:  astore 38 
L2895:  aload_0 
L2896:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isStationModule ()Z 
L2899:  ifeq L2908 
L2902:  aload_0 
L2903:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L2906:  astore 38 

        .stack append Object org/lwjgl/util/vector/Vector2f 
L2908:  aload_0 
L2909:  getfield Field com/fs/starfarer/combat/entities/Ship explosionScale F 
L2912:  fstore 39 
L2914:  aload_0 
L2915:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isCapital ()Z 
L2918:  ifeq L2932 
L2921:  fload 39 
L2923:  ldc_w +1.7000000476837158f 
L2926:  fmul 
L2927:  fstore 39 
L2929:  goto L2965 

        .stack append Float 
L2932:  aload_0 
L2933:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isCruiser ()Z 
L2936:  ifeq L2950 
L2939:  fload 39 
L2941:  ldc_w +1.5f 
L2944:  fmul 
L2945:  fstore 39 
L2947:  goto L2965 

        .stack same 
L2950:  aload_0 
L2951:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isDestroyer ()Z 
L2954:  ifeq L2965 
L2957:  fload 39 
L2959:  ldc_w +1.5f 
L2962:  fmul 
L2963:  fstore 39 

        .stack same 
L2965:  aload_0 
L2966:  getfield Field com/fs/starfarer/combat/entities/Ship isHulk Z 
L2969:  ifeq L2975 
L2972:  fconst_1 
L2973:  fstore 39 

        .stack same 
L2975:  aload_0 
L2976:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isStation ()Z 
L2979:  ifeq L2990 
L2982:  fload 39 
L2984:  ldc_w +1.5f 
L2987:  fmul 
L2988:  fstore 39 

        .stack same 
L2990:  aload_0 
L2991:  getfield Field com/fs/starfarer/combat/entities/Ship spec Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L2994:  invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L2997:  invokevirtual Method com/fs/starfarer/loading/specs/g getHullStyle ()Lcom/fs/starfarer/loading/specs/OoOO; 
L3000:  invokevirtual Method com/fs/starfarer/loading/specs/OoOO 'ÔO0000' ()Ljava/awt/Color; 
L3003:  astore 40 
L3005:  fconst_1 
L3006:  fstore 41 
L3008:  aload_0 
L3009:  getfield Field com/fs/starfarer/combat/entities/Ship explosionFlashColorOverride Ljava/awt/Color; 
L3012:  ifnull L3053 
L3015:  aload_0 
L3016:  getfield Field com/fs/starfarer/combat/entities/Ship explosionFlashColorOverride Ljava/awt/Color; 
L3019:  astore 40 
L3021:  aload 40 
L3023:  invokevirtual Method java/awt/Color getAlpha ()I 
L3026:  i2f 
L3027:  ldc_w +255.0f 
L3030:  fdiv 
L3031:  fstore 41 
L3033:  fload 41 
L3035:  fconst_0 
L3036:  fcmpg 
L3037:  ifge L3043 
L3040:  fconst_0 
L3041:  fstore 41 

        .stack append Object java/awt/Color Float 
L3043:  fload 41 
L3045:  fconst_1 
L3046:  fcmpl 
L3047:  ifle L3053 
L3050:  fconst_1 
L3051:  fstore 41 

        .stack same 
L3053:  aload_0 
L3054:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L3057:  invokevirtual Method com/fs/starfarer/loading/specs/g getHullStyle ()Lcom/fs/starfarer/loading/specs/OoOO; 
L3060:  invokevirtual Method com/fs/starfarer/loading/specs/OoOO 'ôO0000' ()Ljava/awt/Color; 
L3063:  astore 42 
L3065:  invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L3068:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getExplosionSystem ()Lcom/fs/starfarer/renderers/damage/ExplosionParticleSystem; 
L3071:  aload_0 
L3072:  fload 39 
L3074:  aload 37 
L3076:  aload 38 
L3078:  aload 42 
L3080:  invokevirtual Method com/fs/starfarer/renderers/damage/ExplosionParticleSystem spawnExplosion (Lcom/fs/starfarer/combat/E/B;FLorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;Ljava/awt/Color;)V 
L3083:  aload_0 
L3084:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getCollisionRadius ()F 
L3087:  f2d 
L3088:  invokestatic Method java/lang/Math sqrt (D)D 
L3091:  d2f 
L3092:  ldc_w +15.0f 
L3095:  fmul 
L3096:  ldc_w +4.0f 
L3099:  fmul 
L3100:  fstore 43 
L3102:  aload_0 
L3103:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isFighter ()Z 
L3106:  ifeq L3117 
L3109:  fload 43 
L3111:  ldc_w +0.5f 
L3114:  fmul 
L3115:  fstore 43 

        .stack append Object java/awt/Color Float 
L3117:  fload 43 
L3119:  fload 39 
L3121:  fmul 
L3122:  fstore 43 
L3124:  aload_0 
L3125:  getfield Field com/fs/starfarer/combat/entities/Ship isHulk Z 
L3128:  ifne L3264 
L3131:  aload_0 
L3132:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isStationModule ()Z 
L3135:  ifne L3264 
L3138:  aload_0 
L3139:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isFighter ()Z 
L3142:  ifne L3264 
L3145:  aload_0 
L3146:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isFrigate ()Z 
L3149:  ifne L3264 
L3152:  new com/fs/starfarer/api/impl/combat/ShipExplosionFlareVisual$ShipExplosionFlareParams 
L3155:  dup 
L3156:  invokespecial Method com/fs/starfarer/api/impl/combat/ShipExplosionFlareVisual$ShipExplosionFlareParams <init> ()V 
L3159:  astore 44 
L3161:  invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L3164:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getExplosionSystem ()Lcom/fs/starfarer/renderers/damage/ExplosionParticleSystem; 
L3167:  aload_0 
L3168:  fload 39 
L3170:  invokevirtual Method com/fs/starfarer/renderers/damage/ExplosionParticleSystem getExplosionSizeForCollidable (Lcom/fs/starfarer/combat/E/B;F)F 
L3173:  fstore 45 
L3175:  ldc_w +0.4778672158718109f 
L3178:  fstore 46 
L3180:  fload 45 
L3182:  fload 46 
L3184:  fmul 
L3185:  fstore 45 
L3187:  aload 44 
L3189:  fload 45 
L3191:  ldc_w +4.0f 
L3194:  fmul 
L3195:  fload 39 
L3197:  fmul 
L3198:  putfield Field com/fs/starfarer/api/impl/combat/ShipExplosionFlareVisual$ShipExplosionFlareParams flareWidth F 
L3201:  aload 44 
L3203:  fload 45 
L3205:  ldc_w +1.600000023841858f 
L3208:  fmul 
L3209:  fload 39 
L3211:  fmul 
L3212:  putfield Field com/fs/starfarer/api/impl/combat/ShipExplosionFlareVisual$ShipExplosionFlareParams flareHeight F 
L3215:  aload 44 
L3217:  aload 40 
L3219:  putfield Field com/fs/starfarer/api/impl/combat/ShipExplosionFlareVisual$ShipExplosionFlareParams color Ljava/awt/Color; 
L3222:  aload 7 
L3224:  new com/fs/starfarer/api/impl/combat/ShipExplosionFlareVisual 
L3227:  dup 
L3228:  aload 44 
L3230:  invokespecial Method com/fs/starfarer/api/impl/combat/ShipExplosionFlareVisual <init> (Lcom/fs/starfarer/api/impl/combat/ShipExplosionFlareVisual$ShipExplosionFlareParams;)V 
L3233:  invokevirtual Method com/fs/starfarer/combat/CombatEngine addLayeredRenderingPlugin (Lcom/fs/starfarer/api/combat/CombatLayeredRenderingPlugin;)Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
L3236:  astore 47 
L3238:  aload 47 
L3240:  invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatEntityAPI getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L3245:  aload 38 
L3247:  invokevirtual Method org/lwjgl/util/vector/Vector2f set (Lorg/lwjgl/util/vector/ReadableVector2f;)Lorg/lwjgl/util/vector/Vector2f; 
L3250:  pop 
L3251:  aload 47 
L3253:  invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatEntityAPI getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 1 
L3258:  aload 37 
L3260:  invokevirtual Method org/lwjgl/util/vector/Vector2f set (Lorg/lwjgl/util/vector/ReadableVector2f;)Lorg/lwjgl/util/vector/Vector2f; 
L3263:  pop 

        .stack same_extended 
L3264:  aload 7 
L3266:  aload 38 
L3268:  aload 37 
L3270:  fload 43 
L3272:  ldc +3.0f 
L3274:  fmul 
L3275:  fload 41 
L3277:  ldc_w +1.5f 
L3280:  aload 40 
L3282:  invokevirtual Method com/fs/starfarer/combat/CombatEngine addHitParticle (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;FFFLjava/awt/Color;)V 
L3285:  aload_0 
L3286:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isFrigate ()Z 
L3289:  ifeq L3315 
L3292:  aload 7 
L3294:  aload 38 
L3296:  aload 37 
L3298:  fload 43 
L3300:  ldc_w +0.5f 
L3303:  fmul 
L3304:  fload 41 
L3306:  ldc_w +1.5f 
L3309:  getstatic Field java/awt/Color white Ljava/awt/Color; 
L3312:  invokevirtual Method com/fs/starfarer/combat/CombatEngine addHitParticle (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;FFFLjava/awt/Color;)V 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/F Integer Integer Float Object java/lang/Object Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/entities/Ship Float Float Object java/lang/String Object com/fs/starfarer/api/combat/MutableStat Float Float Float Float Float Integer Object com/fs/starfarer/combat/entities/ship/G Integer Object com/fs/starfarer/combat/new/OoOO$o Integer Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/entities/ship/G Float Float Integer Float Float Object java/util/List Float Float Float Float Float Float 
            stack 
        .end stack 
L3315:  fconst_1 
L3316:  fstore 37 
L3318:  aload_0 
L3319:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isFighter ()Z 
L3322:  ifeq L3330 
L3325:  ldc_w +0.5f 
L3328:  fstore 37 

        .stack append Float 
L3330:  aload_0 
L3331:  getfield Field com/fs/starfarer/combat/entities/Ship hulkChanceOverride F 
L3334:  fconst_0 
L3335:  fcmpl 
L3336:  iflt L3345 
L3339:  aload_0 
L3340:  getfield Field com/fs/starfarer/combat/entities/Ship hulkChanceOverride F 
L3343:  fstore 37 

        .stack same 
L3345:  aload_0 
L3346:  iconst_1 
L3347:  putfield Field com/fs/starfarer/combat/entities/Ship isHulk Z 
L3350:  invokestatic Method java/lang/Math random ()D 
L3353:  d2f 
L3354:  fload 37 
L3356:  fcmpg 
L3357:  ifge L4102 
L3360:  aload_0 
L3361:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isFighter ()Z 
L3364:  ifeq L3374 
L3367:  aload_0 
L3368:  getstatic Field com/fs/starfarer/api/combat/CollisionClass SHIP Lcom/fs/starfarer/api/combat/CollisionClass; 
L3371:  invokevirtual Method com/fs/starfarer/combat/entities/Ship setCollisionClass (Lcom/fs/starfarer/api/combat/CollisionClass;)V 

        .stack same 
L3374:  ldc_w +0.5f 
L3377:  aload_0 
L3378:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getStats ()Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L3381:  invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getDynamic ()Lcom/fs/starfarer/util/DynamicStats; 
L3384:  ldc_w 'module_detach_chance_mult' 
L3387:  invokevirtual Method com/fs/starfarer/util/DynamicStats getValue (Ljava/lang/String;)F 
L3390:  fmul 
L3391:  fstore 38 
L3393:  invokestatic Method java/lang/Math random ()D 
L3396:  d2f 
L3397:  fload 38 
L3399:  fcmpg 
L3400:  ifge L3408 
L3403:  aload_0 
L3404:  aconst_null 
L3405:  invokevirtual Method com/fs/starfarer/combat/entities/Ship setStationSlot (Lcom/fs/starfarer/api/loading/WeaponSlotAPI;)V 

        .stack append Float 
L3408:  iconst_0 
L3409:  istore 39 
L3411:  aload_0 
L3412:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getParentStation ()Lcom/fs/starfarer/combat/entities/Ship; 
L3415:  ifnull L3532 
L3418:  aload_0 
L3419:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getParentStation ()Lcom/fs/starfarer/combat/entities/Ship; 
L3422:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getChildModules ()Ljava/util/List; 
L3425:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L3430:  astore 41 
L3432:  goto L3519 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/F Integer Integer Float Object java/lang/Object Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/entities/Ship Float Float Object java/lang/String Object com/fs/starfarer/api/combat/MutableStat Float Float Float Float Float Integer Object com/fs/starfarer/combat/entities/ship/G Integer Object com/fs/starfarer/combat/new/OoOO$o Integer Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/entities/ship/G Float Float Integer Float Float Object java/util/List Float Float Float Float Float Float Float Float Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L3435:  aload 41 
L3437:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L3442:  checkcast com/fs/starfarer/combat/entities/Ship 
L3445:  astore 40 
L3447:  aload 40 
L3449:  aload_0 
L3450:  if_acmpne L3456 
L3453:  goto L3519 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/F Integer Integer Float Object java/lang/Object Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/entities/Ship Float Float Object java/lang/String Object com/fs/starfarer/api/combat/MutableStat Float Float Float Float Float Integer Object com/fs/starfarer/combat/entities/ship/G Integer Object com/fs/starfarer/combat/new/OoOO$o Integer Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/entities/ship/G Float Float Integer Float Float Object java/util/List Float Float Float Float Float Float Float Float Integer Object com/fs/starfarer/combat/entities/Ship Object java/util/Iterator 
            stack 
        .end stack 
L3456:  aload 40 
L3458:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getParentStation ()Lcom/fs/starfarer/combat/entities/Ship; 
L3461:  ifnull L3510 
L3464:  aload 40 
L3466:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getParentStation ()Lcom/fs/starfarer/combat/entities/Ship; 
L3469:  aload_0 
L3470:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getParentStation ()Lcom/fs/starfarer/combat/entities/Ship; 
L3473:  if_acmpne L3510 
L3476:  aload 40 
L3478:  invokestatic Method com/fs/starfarer/combat/entities/Ship isActiveModule (Lcom/fs/starfarer/combat/entities/Ship;)Z 
L3481:  istore 42 
L3483:  iload 42 
L3485:  ifeq L3519 
L3488:  aload 40 
L3490:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isHulk ()Z 
L3493:  ifne L3519 
L3496:  aload 40 
L3498:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getStationSlot ()Lcom/fs/starfarer/loading/specs/nullsuper; 
L3501:  ifnull L3519 
L3504:  iconst_1 
L3505:  istore 39 
L3507:  goto L3519 

        .stack same 
L3510:  aload 40 
L3512:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getParentStation ()Lcom/fs/starfarer/combat/entities/Ship; 
L3515:  aload_0 
L3516:  if_acmpeq L3519 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/F Integer Integer Float Object java/lang/Object Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/entities/Ship Float Float Object java/lang/String Object com/fs/starfarer/api/combat/MutableStat Float Float Float Float Float Integer Object com/fs/starfarer/combat/entities/ship/G Integer Object com/fs/starfarer/combat/new/OoOO$o Integer Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/entities/ship/G Float Float Integer Float Float Object java/util/List Float Float Float Float Float Float Float Float Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L3519:  aload 41 
L3521:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L3526:  ifne L3435 
L3529:  goto L3587 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/F Integer Integer Float Object java/lang/Object Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/entities/Ship Float Float Object java/lang/String Object com/fs/starfarer/api/combat/MutableStat Float Float Float Float Float Integer Object com/fs/starfarer/combat/entities/ship/G Integer Object com/fs/starfarer/combat/new/OoOO$o Integer Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/entities/ship/G Float Float Integer Float Float Object java/util/List Float Float Float Float Float Float Float Float Integer 
            stack 
        .end stack 
L3532:  aload_0 
L3533:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getChildModules ()Ljava/util/List; 
L3536:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L3541:  astore 41 
L3543:  goto L3577 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/F Integer Integer Float Object java/lang/Object Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/entities/Ship Float Float Object java/lang/String Object com/fs/starfarer/api/combat/MutableStat Float Float Float Float Float Integer Object com/fs/starfarer/combat/entities/ship/G Integer Object com/fs/starfarer/combat/new/OoOO$o Integer Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/entities/ship/G Float Float Integer Float Float Object java/util/List Float Float Float Float Float Float Float Float Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L3546:  aload 41 
L3548:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L3553:  checkcast com/fs/starfarer/api/combat/ShipAPI 
L3556:  astore 40 
L3558:  aload 40 
L3560:  checkcast com/fs/starfarer/combat/entities/Ship 
L3563:  iconst_0 
L3564:  invokevirtual Method com/fs/starfarer/combat/entities/Ship setSpawnDebris (Z)V 
L3567:  aload 40 
L3569:  checkcast com/fs/starfarer/combat/entities/Ship 
L3572:  aload 6 
L3574:  invokestatic Method com/fs/starfarer/combat/entities/Ship disable (Lcom/fs/starfarer/combat/entities/Ship;Ljava/lang/Object;)V 

        .stack same 
L3577:  aload 41 
L3579:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L3584:  ifne L3546 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/F Integer Integer Float Object java/lang/Object Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/entities/Ship Float Float Object java/lang/String Object com/fs/starfarer/api/combat/MutableStat Float Float Float Float Float Integer Object com/fs/starfarer/combat/entities/ship/G Integer Object com/fs/starfarer/combat/new/OoOO$o Integer Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/entities/ship/G Float Float Integer Float Float Object java/util/List Float Float Float Float Float Float Float Float Integer 
            stack 
        .end stack 
L3587:  aload_0 
L3588:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getParentStation ()Lcom/fs/starfarer/combat/entities/Ship; 
L3591:  ifnull L3799 
L3594:  iload 39 
L3596:  ifne L3799 
L3599:  aload_0 
L3600:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getParentStation ()Lcom/fs/starfarer/combat/entities/Ship; 
L3603:  astore 40 
L3605:  aload 40 
L3607:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isHullDamageable ()Z 
L3610:  ifeq L3617 
L3613:  iconst_0 
L3614:  goto L3618 

        .stack append Object com/fs/starfarer/combat/entities/Ship 
L3617:  iconst_1 

        .stack stack_1 Integer 
L3618:  istore 41 
L3620:  iload 41 
L3622:  ifeq L3799 
L3625:  aload_0 
L3626:  getfield Field com/fs/starfarer/combat/entities/Ship destroyable Z 
L3629:  ifeq L3799 
L3632:  aload 40 
L3634:  iconst_0 
L3635:  invokevirtual Method com/fs/starfarer/combat/entities/Ship setSpawnDebris (Z)V 
L3638:  aload 40 
L3640:  aload 6 
L3642:  invokestatic Method com/fs/starfarer/combat/entities/Ship disable (Lcom/fs/starfarer/combat/entities/Ship;Ljava/lang/Object;)V 
L3645:  aload 40 
L3647:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getChildModules ()Ljava/util/List; 
L3650:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L3655:  astore 43 
L3657:  goto L3729 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/F Integer Integer Float Object java/lang/Object Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/entities/Ship Float Float Object java/lang/String Object com/fs/starfarer/api/combat/MutableStat Float Float Float Float Float Integer Object com/fs/starfarer/combat/entities/ship/G Integer Object com/fs/starfarer/combat/new/OoOO$o Integer Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/entities/ship/G Float Float Integer Float Float Object java/util/List Float Float Float Float Float Float Float Float Integer Object com/fs/starfarer/combat/entities/Ship Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L3660:  aload 43 
L3662:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L3667:  checkcast com/fs/starfarer/combat/entities/Ship 
L3670:  astore 42 
L3672:  ldc_w +0.5f 
L3675:  aload 42 
L3677:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getStats ()Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L3680:  invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getDynamic ()Lcom/fs/starfarer/util/DynamicStats; 
L3683:  ldc_w 'module_detach_chance_mult' 
L3686:  invokevirtual Method com/fs/starfarer/util/DynamicStats getValue (Ljava/lang/String;)F 
L3689:  fmul 
L3690:  fstore 44 
L3692:  aload 42 
L3694:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getStationSlot ()Lcom/fs/starfarer/loading/specs/nullsuper; 
L3697:  ifnull L3729 
L3700:  invokestatic Method java/lang/Math random ()D 
L3703:  d2f 
L3704:  fload 44 
L3706:  fcmpg 
L3707:  ifge L3716 
L3710:  aload 42 
L3712:  aconst_null 
L3713:  invokevirtual Method com/fs/starfarer/combat/entities/Ship setStationSlot (Lcom/fs/starfarer/api/loading/WeaponSlotAPI;)V 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/F Integer Integer Float Object java/lang/Object Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/entities/Ship Float Float Object java/lang/String Object com/fs/starfarer/api/combat/MutableStat Float Float Float Float Float Integer Object com/fs/starfarer/combat/entities/ship/G Integer Object com/fs/starfarer/combat/new/OoOO$o Integer Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/entities/ship/G Float Float Integer Float Float Object java/util/List Float Float Float Float Float Float Float Float Integer Object com/fs/starfarer/combat/entities/Ship Integer Object com/fs/starfarer/combat/entities/Ship Object java/util/Iterator Float 
            stack 
        .end stack 
L3716:  aload 42 
L3718:  iconst_0 
L3719:  invokevirtual Method com/fs/starfarer/combat/entities/Ship setSpawnDebris (Z)V 
L3722:  aload 42 
L3724:  aload 6 
L3726:  invokestatic Method com/fs/starfarer/combat/entities/Ship disable (Lcom/fs/starfarer/combat/entities/Ship;Ljava/lang/Object;)V 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/F Integer Integer Float Object java/lang/Object Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/entities/Ship Float Float Object java/lang/String Object com/fs/starfarer/api/combat/MutableStat Float Float Float Float Float Integer Object com/fs/starfarer/combat/entities/ship/G Integer Object com/fs/starfarer/combat/new/OoOO$o Integer Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/entities/ship/G Float Float Integer Float Float Object java/util/List Float Float Float Float Float Float Float Float Integer Object com/fs/starfarer/combat/entities/Ship Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L3729:  aload 43 
L3731:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L3736:  ifne L3660 
L3739:  aload 40 
L3741:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isFighter ()Z 
L3744:  ifne L3799 
L3747:  aload 40 
L3749:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isFrigate ()Z 
L3752:  ifne L3799 
L3755:  aload 40 
L3757:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullSize ()Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L3760:  invokevirtual Method com/fs/starfarer/api/combat/ShipAPI$HullSize ordinal ()I 
L3763:  i2f 
L3764:  fstore 42 
L3766:  fload 42 
L3768:  getstatic Field com/fs/starfarer/api/combat/ShipAPI$HullSize CAPITAL_SHIP Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L3771:  invokevirtual Method com/fs/starfarer/api/combat/ShipAPI$HullSize ordinal ()I 
L3774:  i2f 
L3775:  fdiv 
L3776:  fstore 42 
L3778:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'ÓÓ0000' ()Z 
L3781:  ifeq L3799 
L3784:  aload 7 
L3786:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getWhiteout ()Lcom/fs/starfarer/renderers/damage/OooO; 
L3789:  aload 40 
L3791:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L3794:  fload 42 
L3796:  invokevirtual Method com/fs/starfarer/renderers/damage/OooO 'super' (Lorg/lwjgl/util/vector/Vector2f;F)V 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/F Integer Integer Float Object java/lang/Object Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/entities/Ship Float Float Object java/lang/String Object com/fs/starfarer/api/combat/MutableStat Float Float Float Float Float Integer Object com/fs/starfarer/combat/entities/ship/G Integer Object com/fs/starfarer/combat/new/OoOO$o Integer Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/entities/ship/G Float Float Integer Float Float Object java/util/List Float Float Float Float Float Float Float Float Integer 
            stack 
        .end stack 
L3799:  aload_0 
L3800:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isStationModule ()Z 
L3803:  ifeq L3897 
L3806:  aload_0 
L3807:  invokevirtual Method com/fs/starfarer/combat/entities/Ship showStationModuleDisabledFloaty ()Z 
L3810:  ifeq L3897 
L3813:  new java/lang/StringBuilder 
L3816:  dup 
L3817:  aload_0 
L3818:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L3821:  invokevirtual Method com/fs/starfarer/loading/specs/g getHullName ()Ljava/lang/String; 
L3824:  invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L3827:  invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L3830:  ldc_w ' Disabled!' 
L3833:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L3836:  invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L3839:  astore 40 
L3841:  aload_0 
L3842:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L3845:  astore 41 
L3847:  invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L3850:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getFloatingTextManager ()Lcom/fs/starfarer/renderers/Q; 
L3853:  aload 41 
L3855:  getfield Field org/lwjgl/util/vector/Vector2f x F 
L3858:  aload 41 
L3860:  getfield Field org/lwjgl/util/vector/Vector2f y F 
L3863:  ldc_w +20.0f 
L3866:  fadd 
L3867:  aload 40 
L3869:  aload_0 
L3870:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getFluxTracker ()Lcom/fs/starfarer/combat/entities/ship/D; 
L3873:  invokevirtual Method com/fs/starfarer/combat/entities/ship/D getFloatySize ()F 
L3876:  ldc_w +4.0f 
L3879:  fadd 
L3880:  getstatic Field com/fs/starfarer/O0OO 'Ö00000' Ljava/awt/Color; 
L3883:  aload_0 
L3884:  aconst_null 
L3885:  invokevirtual Method com/fs/starfarer/renderers/Q 'super' (FFLjava/lang/String;FLjava/awt/Color;Lcom/fs/starfarer/combat/E/B;Lcom/fs/starfarer/combat/E/B;)Lcom/fs/starfarer/renderers/O00O; 
L3888:  ldc_w +4.0f 
L3891:  ldc_w +2000.0f 
L3894:  invokevirtual Method com/fs/starfarer/renderers/O00O o00000 (FF)V 

        .stack same_extended 
L3897:  aload_0 
L3898:  iconst_1 
L3899:  putfield Field com/fs/starfarer/combat/entities/Ship isHulk Z 
L3902:  aload_0 
L3903:  new com/fs/starfarer/combat/entities/H 
L3906:  dup 
L3907:  aload_0 
L3908:  iconst_1 
L3909:  iconst_0 
L3910:  invokespecial Method com/fs/starfarer/combat/entities/H <init> (Lcom/fs/starfarer/combat/entities/Ship;ZZ)V 
L3913:  putfield Field com/fs/starfarer/combat/entities/Ship breakingAnimation Lcom/fs/starfarer/combat/entities/H; 
L3916:  getstatic Field com/fs/starfarer/combat/entities/Ship ATTACK_HULKS Z 
L3919:  ifeq L3936 
L3922:  aload_0 
L3923:  new com/fs/starfarer/combat/entities/H 
L3926:  dup 
L3927:  aload_0 
L3928:  iconst_1 
L3929:  iconst_1 
L3930:  invokespecial Method com/fs/starfarer/combat/entities/H <init> (Lcom/fs/starfarer/combat/entities/Ship;ZZ)V 
L3933:  putfield Field com/fs/starfarer/combat/entities/Ship breakingAnimation Lcom/fs/starfarer/combat/entities/H; 

        .stack same 
L3936:  aload_0 
L3937:  ldc_w +0.5f 
L3940:  new java/awt/Color 
L3943:  dup 
L3944:  bipush 120 
L3946:  bipush 120 
L3948:  bipush 120 
L3950:  sipush 255 
L3953:  invokespecial Method java/awt/Color <init> (IIII)V 
L3956:  invokevirtual Method com/fs/starfarer/combat/entities/Ship fadeToColor (FLjava/awt/Color;)V 
L3959:  aload_0 
L3960:  aconst_null 
L3961:  invokevirtual Method com/fs/starfarer/combat/entities/Ship setAI (Lcom/fs/starfarer/combat/ai/AI;)V 
L3964:  aload_0 
L3965:  getfield Field com/fs/starfarer/combat/entities/Ship shield Lcom/fs/starfarer/combat/systems/G; 
L3968:  ifnull L3998 
L3971:  aload_0 
L3972:  getfield Field com/fs/starfarer/combat/entities/Ship shield Lcom/fs/starfarer/combat/systems/G; 
L3975:  invokevirtual Method com/fs/starfarer/combat/systems/G isOn ()Z 
L3978:  ifeq L3998 
L3981:  aload_0 
L3982:  getfield Field com/fs/starfarer/combat/entities/Ship shield Lcom/fs/starfarer/combat/systems/G; 
L3985:  invokevirtual Method com/fs/starfarer/combat/systems/G isToggle ()Z 
L3988:  ifeq L3998 
L3991:  aload_0 
L3992:  getfield Field com/fs/starfarer/combat/entities/Ship shield Lcom/fs/starfarer/combat/systems/G; 
L3995:  invokevirtual Method com/fs/starfarer/combat/systems/G toggleOff ()V 

        .stack same 
L3998:  aload_0 
L3999:  ldc_w -100000000.0f 
L4002:  putfield Field com/fs/starfarer/combat/entities/Ship overkill F 
L4005:  aload_0 
L4006:  getfield Field com/fs/starfarer/combat/entities/Ship hullSize Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L4009:  invokevirtual Method com/fs/starfarer/api/combat/ShipAPI$HullSize ordinal ()I 
L4012:  getstatic Field com/fs/starfarer/api/combat/ShipAPI$HullSize FRIGATE Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L4015:  invokevirtual Method com/fs/starfarer/api/combat/ShipAPI$HullSize ordinal ()I 
L4018:  if_icmple L4094 
L4021:  new org/lwjgl/util/vector/Vector2f 
L4024:  dup 
L4025:  aload_0 
L4026:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L4029:  invokespecial Method org/lwjgl/util/vector/Vector2f <init> (Lorg/lwjgl/util/vector/ReadableVector2f;)V 
L4032:  astore 40 
L4034:  aload_0 
L4035:  iconst_1 
L4036:  putfield Field com/fs/starfarer/combat/entities/Ship suppressFloaties Z 
L4039:  aload_0 
L4040:  aload 40 
L4042:  new com/fs/starfarer/combat/E/F 
L4045:  dup 
L4046:  ldc_w +2000.0f 
L4049:  iconst_0 
L4050:  getstatic Field com/fs/starfarer/api/combat/DamageType HIGH_EXPLOSIVE Lcom/fs/starfarer/api/combat/DamageType; 
L4053:  invokespecial Method com/fs/starfarer/combat/E/F <init> (FZLcom/fs/starfarer/api/combat/DamageType;)V 
L4056:  iconst_0 
L4057:  fload 5 
L4059:  aload 6 
L4061:  invokevirtual Method com/fs/starfarer/combat/entities/Ship applyDamage (Lorg/lwjgl/util/vector/Vector2f;Lcom/fs/starfarer/combat/E/F;ZFLjava/lang/Object;)Lcom/fs/starfarer/combat/entities/ship/G; 
L4064:  pop 
L4065:  iconst_0 
L4066:  istore 41 
L4068:  goto L4082 

        .stack append Object org/lwjgl/util/vector/Vector2f Integer 
L4071:  aload_0 
L4072:  fload 5 
L4074:  aload 6 
L4076:  invokevirtual Method com/fs/starfarer/combat/entities/Ship randomDamage (FLjava/lang/Object;)V 
L4079:  iinc 41 1 

        .stack same 
L4082:  iload 41 
L4084:  bipush 10 
L4086:  if_icmplt L4071 
L4089:  aload_0 
L4090:  iconst_0 
L4091:  putfield Field com/fs/starfarer/combat/entities/Ship suppressFloaties Z 

        .stack chop 2 
L4094:  aload_0 
L4095:  fconst_0 
L4096:  putfield Field com/fs/starfarer/combat/entities/Ship overkill F 
L4099:  goto L4115 

        .stack chop 2 
L4102:  aload 7 
L4104:  aload_0 
L4105:  invokevirtual Method com/fs/starfarer/combat/CombatEngine removeObject (Ljava/lang/Object;)V 
L4108:  invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L4111:  aload_0 
L4112:  invokevirtual Method com/fs/starfarer/combat/CombatEngine reportShipDestroyed (Lcom/fs/starfarer/combat/entities/Ship;)V 

        .stack same 
L4115:  aload_0 
L4116:  bipush 100 
L4118:  invokevirtual Method com/fs/starfarer/combat/entities/Ship setOwner (I)V 
L4121:  aload_0 
L4122:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isFighter ()Z 
L4125:  ifeq L4457 
L4128:  aload_0 
L4129:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getWing ()Lcom/fs/starfarer/combat/ai/M; 
L4132:  ifnull L4457 
L4135:  aload_0 
L4136:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getWing ()Lcom/fs/starfarer/combat/ai/M; 
L4139:  invokevirtual Method com/fs/starfarer/combat/ai/M getSource ()Lcom/fs/starfarer/combat/entities/ship/A/C; 
L4142:  ifnull L4457 
L4145:  aload_0 
L4146:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getWing ()Lcom/fs/starfarer/combat/ai/M; 
L4149:  invokevirtual Method com/fs/starfarer/combat/ai/M getSource ()Lcom/fs/starfarer/combat/entities/ship/A/C; 
L4152:  aload_0 
L4153:  invokevirtual Method com/fs/starfarer/combat/entities/ship/A/C reportFighterDestroyed (Lcom/fs/starfarer/combat/entities/Ship;)V 
L4156:  goto L4457 

        .stack chop 1 
L4159:  aload_0 
L4160:  getfield Field com/fs/starfarer/combat/entities/Ship isHulk Z 
L4163:  ifeq L4457 
L4166:  aload_0 
L4167:  getfield Field com/fs/starfarer/combat/entities/Ship overkill F 
L4170:  aload_0 
L4171:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getMaxHitpoints ()F 
L4174:  ldc +3.0f 
L4176:  fmul 
L4177:  fcmpl 
L4178:  ifle L4457 
L4181:  aload_0 
L4182:  getfield Field com/fs/starfarer/combat/entities/Ship wasDestroyed Z 
L4185:  ifne L4457 
L4188:  aload_0 
L4189:  getfield Field com/fs/starfarer/combat/entities/Ship destroyable Z 
L4192:  ifeq L4457 
L4195:  aload_0 
L4196:  aconst_null 
L4197:  invokevirtual Method com/fs/starfarer/combat/entities/Ship setStationSlot (Lcom/fs/starfarer/api/loading/WeaponSlotAPI;)V 
L4200:  aload_0 
L4201:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getChildModules ()Ljava/util/List; 
L4204:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L4209:  astore 38 
L4211:  goto L4261 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/F Integer Integer Float Object java/lang/Object Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/entities/Ship Float Float Object java/lang/String Object com/fs/starfarer/api/combat/MutableStat Float Float Float Float Float Integer Object com/fs/starfarer/combat/entities/ship/G Integer Object com/fs/starfarer/combat/new/OoOO$o Integer Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/entities/ship/G Float Float Integer Float Float Object java/util/List Float Float Float Float Float Float Top Object java/util/Iterator 
            stack 
        .end stack 
L4214:  aload 38 
L4216:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L4221:  checkcast com/fs/starfarer/combat/entities/Ship 
L4224:  astore 37 
L4226:  aload 37 
L4228:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getStationSlot ()Lcom/fs/starfarer/loading/specs/nullsuper; 
L4231:  ifnull L4261 
L4234:  aload 37 
L4236:  aconst_null 
L4237:  invokevirtual Method com/fs/starfarer/combat/entities/Ship setStationSlot (Lcom/fs/starfarer/api/loading/WeaponSlotAPI;)V 
L4240:  aload 37 
L4242:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isHulk ()Z 
L4245:  ifne L4261 
L4248:  aload 37 
L4250:  iconst_0 
L4251:  invokevirtual Method com/fs/starfarer/combat/entities/Ship setSpawnDebris (Z)V 
L4254:  aload 37 
L4256:  aload 6 
L4258:  invokestatic Method com/fs/starfarer/combat/entities/Ship disable (Lcom/fs/starfarer/combat/entities/Ship;Ljava/lang/Object;)V 

        .stack same 
L4261:  aload 38 
L4263:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L4268:  ifne L4214 
L4271:  getstatic Field com/fs/starfarer/api/combat/ShipAPI$HullSize FRIGATE Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L4274:  astore 37 
L4276:  aload_0 
L4277:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullSize ()Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L4280:  getstatic Field com/fs/starfarer/api/combat/ShipAPI$HullSize FIGHTER Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L4283:  if_acmpne L4291 
L4286:  getstatic Field com/fs/starfarer/api/combat/ShipAPI$HullSize FIGHTER Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L4289:  astore 37 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/F Integer Integer Float Object java/lang/Object Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/entities/Ship Float Float Object java/lang/String Object com/fs/starfarer/api/combat/MutableStat Float Float Float Float Float Integer Object com/fs/starfarer/combat/entities/ship/G Integer Object com/fs/starfarer/combat/new/OoOO$o Integer Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/entities/ship/G Float Float Integer Float Float Object java/util/List Float Float Float Float Float Float Object com/fs/starfarer/api/combat/ShipAPI$HullSize 
            stack 
        .end stack 
L4291:  aload_0 
L4292:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getCollisionRadius ()F 
L4295:  ldc +75.0f 
L4297:  fcmpl 
L4298:  ifgt L4307 
L4301:  getstatic Field com/fs/starfarer/combat/entities/Ship ATTACK_HULKS Z 
L4304:  ifeq L4376 

        .stack same 
L4307:  aload_0 
L4308:  getfield Field com/fs/starfarer/combat/entities/Ship breakingAnimation Lcom/fs/starfarer/combat/entities/H; 
L4311:  ifnonnull L4457 
L4314:  aload_0 
L4315:  getfield Field com/fs/starfarer/combat/entities/Ship explosionScale F 
L4318:  fconst_0 
L4319:  fcmpl 
L4320:  ifle L4344 
L4323:  aload_0 
L4324:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullStyle ()Lcom/fs/starfarer/loading/specs/OoOO; 
L4327:  aload 37 
L4329:  aload_0 
L4330:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L4333:  aload_0 
L4334:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 
L4337:  fconst_1 
L4338:  ldc_w +0.5f 
L4341:  invokestatic Method com/fs/starfarer/combat/entities/ship/A/I o00000 (Lcom/fs/starfarer/loading/specs/OoOO;Lcom/fs/starfarer/api/combat/ShipAPI$HullSize;Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;FF)V 

        .stack same 
L4344:  aload_0 
L4345:  new com/fs/starfarer/combat/entities/H 
L4348:  dup 
L4349:  aload_0 
L4350:  iconst_0 
L4351:  iconst_1 
L4352:  invokespecial Method com/fs/starfarer/combat/entities/H <init> (Lcom/fs/starfarer/combat/entities/Ship;ZZ)V 
L4355:  putfield Field com/fs/starfarer/combat/entities/Ship breakingAnimation Lcom/fs/starfarer/combat/entities/H; 
L4358:  aload_0 
L4359:  getfield Field com/fs/starfarer/combat/entities/Ship breakingAnimation Lcom/fs/starfarer/combat/entities/H; 
L4362:  invokevirtual Method com/fs/starfarer/combat/entities/H o00000 ()Z 
L4365:  ifne L4457 
L4368:  aload_0 
L4369:  fconst_0 
L4370:  putfield Field com/fs/starfarer/combat/entities/Ship overkill F 
L4373:  goto L4457 

        .stack same 
L4376:  aload_0 
L4377:  iconst_1 
L4378:  putfield Field com/fs/starfarer/combat/entities/Ship wasDestroyed Z 
L4381:  iload 18 
L4383:  ifeq L4421 
L4386:  aload_0 
L4387:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 
L4390:  astore 38 
L4392:  aload_0 
L4393:  getfield Field com/fs/starfarer/combat/entities/Ship explosionVelocityOverride Lorg/lwjgl/util/vector/Vector2f; 
L4396:  ifnull L4405 
L4399:  aload_0 
L4400:  getfield Field com/fs/starfarer/combat/entities/Ship explosionVelocityOverride Lorg/lwjgl/util/vector/Vector2f; 
L4403:  astore 38 

        .stack append Object org/lwjgl/util/vector/Vector2f 
L4405:  invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L4408:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getExplosionSystem ()Lcom/fs/starfarer/renderers/damage/ExplosionParticleSystem; 
L4411:  aload_0 
L4412:  aload_0 
L4413:  getfield Field com/fs/starfarer/combat/entities/Ship explosionScale F 
L4416:  aload 38 
L4418:  invokevirtual Method com/fs/starfarer/renderers/damage/ExplosionParticleSystem spawnExplosion (Lcom/fs/starfarer/combat/E/B;FLorg/lwjgl/util/vector/Vector2f;)V 

        .stack chop 1 
L4421:  aload_0 
L4422:  getfield Field com/fs/starfarer/combat/entities/Ship explosionScale F 
L4425:  fconst_0 
L4426:  fcmpl 
L4427:  ifle L4451 
L4430:  aload_0 
L4431:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullStyle ()Lcom/fs/starfarer/loading/specs/OoOO; 
L4434:  aload 37 
L4436:  aload_0 
L4437:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L4440:  aload_0 
L4441:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 
L4444:  fconst_1 
L4445:  ldc_w +0.5f 
L4448:  invokestatic Method com/fs/starfarer/combat/entities/ship/A/I o00000 (Lcom/fs/starfarer/loading/specs/OoOO;Lcom/fs/starfarer/api/combat/ShipAPI$HullSize;Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;FF)V 

        .stack same 
L4451:  aload 7 
L4453:  aload_0 
L4454:  invokevirtual Method com/fs/starfarer/combat/CombatEngine removeObject (Ljava/lang/Object;)V 

        .stack chop 1 
L4457:  iload_3 
L4458:  ifeq L4466 
L4461:  aload_0 
L4462:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L4465:  astore_1 

        .stack same 
L4466:  iload 18 
L4468:  ifeq L4545 
L4471:  aload 24 
L4473:  invokevirtual Method com/fs/starfarer/combat/entities/ship/G getTotalDamageToArmor ()F 
L4476:  fstore 37 
L4478:  fload 37 
L4480:  ldc_w +100.0f 
L4483:  fcmpl 
L4484:  ifle L4492 
L4487:  ldc_w +100.0f 
L4490:  fstore 37 

        .stack append Float 
L4492:  fload 37 
L4494:  ldc_w +10.0f 
L4497:  fcmpg 
L4498:  ifge L4520 
L4501:  invokestatic Method java/lang/Math random ()D 
L4504:  d2f 
L4505:  ldc_w +10.0f 
L4508:  fmul 
L4509:  fload 37 
L4511:  fcmpg 
L4512:  ifge L4520 
L4515:  ldc_w +10.0f 
L4518:  fstore 37 

        .stack same 
L4520:  aload_1 
L4521:  aload 7 
L4523:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getSmoothParticles ()Lcom/fs/graphics/particle/DynamicParticleGroup; 
L4526:  fload 37 
L4528:  ldc_w +10.0f 
L4531:  fdiv 
L4532:  f2i 
L4533:  invokestatic Method com/fs/starfarer/combat/entities/EmitterFactory o00000 (Lorg/lwjgl/util/vector/Vector2f;Lcom/fs/graphics/particle/DynamicParticleGroup;I)Lcom/fs/graphics/particle/BaseParticleEmitter; 
L4536:  astore 38 
L4538:  aload 7 
L4540:  aload 38 
L4542:  invokevirtual Method com/fs/starfarer/combat/CombatEngine addAnimation (Lcom/fs/graphics/anim/Animation;)V 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/F Integer Integer Float Object java/lang/Object Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/entities/Ship Float Float Object java/lang/String Object com/fs/starfarer/api/combat/MutableStat Float Float Float Float Float Integer Object com/fs/starfarer/combat/entities/ship/G Integer Object com/fs/starfarer/combat/new/OoOO$o Integer 
            stack 
        .end stack 
L4545:  aload 19 
L4547:  astore 49 
L4549:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L4552:  aload 49 
L4554:  areturn 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/F Integer Integer Float Object java/lang/Object 
            stack Object java/lang/Throwable 
        .end stack 
L4555:  astore 48 
L4557:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L4560:  aload 48 
L4562:  athrow 
L4563:  
    .end code 
.end method 

.method public static disable : (Lcom/fs/starfarer/combat/entities/Ship;Ljava/lang/Object;)V 
    .code stack 7 locals 6 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getStats ()Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L4:     invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getHullDamageTakenMult ()Lcom/fs/starfarer/api/combat/MutableStat; 
L7:     invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L10:    fconst_0 
L11:    fcmpl 
L12:    ifne L19 
L15:    iconst_1 
L16:    goto L20 

        .stack same 
L19:    iconst_0 

        .stack stack_1 Integer 
L20:    istore_2 
L21:    aload_0 
L22:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getStats ()Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L25:    invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getHullDamageTakenMult ()Lcom/fs/starfarer/api/combat/MutableStat; 
L28:    invokevirtual Method com/fs/starfarer/api/combat/MutableStat unmodify ()V 
L31:    aload_0 
L32:    ldc_w -100000000.0f 
L35:    putfield Field com/fs/starfarer/combat/entities/Ship overkill F 
L38:    new org/lwjgl/util/vector/Vector2f 
L41:    dup 
L42:    aload_0 
L43:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L46:    invokespecial Method org/lwjgl/util/vector/Vector2f <init> (Lorg/lwjgl/util/vector/ReadableVector2f;)V 
L49:    astore_3 
L50:    aload_0 
L51:    iconst_1 
L52:    putfield Field com/fs/starfarer/combat/entities/Ship suppressFloaties Z 
L55:    aload_0 
L56:    iconst_0 
L57:    putfield Field com/fs/starfarer/combat/entities/Ship destroyable Z 
L60:    aload_0 
L61:    aload_3 
L62:    new com/fs/starfarer/combat/E/F 
L65:    dup 
L66:    aload_0 
L67:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getHitpoints ()F 
L70:    ldc_w +1000.0f 
L73:    fmul 
L74:    iconst_0 
L75:    getstatic Field com/fs/starfarer/api/combat/DamageType HIGH_EXPLOSIVE Lcom/fs/starfarer/api/combat/DamageType; 
L78:    invokespecial Method com/fs/starfarer/combat/E/F <init> (FZLcom/fs/starfarer/api/combat/DamageType;)V 
L81:    iconst_0 
L82:    iconst_1 
L83:    ldc_w +0.01600000075995922f 
L86:    aload_1 
L87:    invokevirtual Method com/fs/starfarer/combat/entities/Ship applyDamageInner (Lorg/lwjgl/util/vector/Vector2f;Lcom/fs/starfarer/combat/E/F;ZZFLjava/lang/Object;)Lcom/fs/starfarer/combat/entities/ship/G; 
L90:    pop 
L91:    aload_0 
L92:    aload_3 
L93:    new com/fs/starfarer/combat/E/F 
L96:    dup 
L97:    ldc_w +2000.0f 
L100:   iconst_0 
L101:   getstatic Field com/fs/starfarer/api/combat/DamageType HIGH_EXPLOSIVE Lcom/fs/starfarer/api/combat/DamageType; 
L104:   invokespecial Method com/fs/starfarer/combat/E/F <init> (FZLcom/fs/starfarer/api/combat/DamageType;)V 
L107:   iconst_0 
L108:   ldc_w +0.01600000075995922f 
L111:   aload_1 
L112:   invokevirtual Method com/fs/starfarer/combat/entities/Ship applyDamage (Lorg/lwjgl/util/vector/Vector2f;Lcom/fs/starfarer/combat/E/F;ZFLjava/lang/Object;)Lcom/fs/starfarer/combat/entities/ship/G; 
L115:   pop 
L116:   iconst_0 
L117:   istore 4 
L119:   goto L133 

        .stack append Integer Object org/lwjgl/util/vector/Vector2f Integer 
L122:   aload_0 
L123:   ldc_w +0.01600000075995922f 
L126:   aload_1 
L127:   invokevirtual Method com/fs/starfarer/combat/entities/Ship randomDamage (FLjava/lang/Object;)V 
L130:   iinc 4 1 

        .stack same 
L133:   iload 4 
L135:   iconst_5 
L136:   aload_0 
L137:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullSize ()Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L140:   invokevirtual Method com/fs/starfarer/api/combat/ShipAPI$HullSize ordinal ()I 
L143:   iconst_3 
L144:   imul 
L145:   iadd 
L146:   if_icmplt L122 
L149:   aload_0 
L150:   iconst_0 
L151:   putfield Field com/fs/starfarer/combat/entities/Ship suppressFloaties Z 
L154:   aload_0 
L155:   fconst_0 
L156:   putfield Field com/fs/starfarer/combat/entities/Ship overkill F 
L159:   aload_0 
L160:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isHulk ()Z 
L163:   ifne L257 
L166:   aload_0 
L167:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isFighter ()Z 
L170:   ifne L257 
L173:   aload_0 
L174:   invokestatic Method com/fs/starfarer/api/loading/DamagingExplosionSpec explosionSpecForShip (Lcom/fs/starfarer/api/combat/ShipAPI;)Lcom/fs/starfarer/api/loading/DamagingExplosionSpec; 
L177:   astore 4 
L179:   aload 4 
L181:   invokevirtual Method com/fs/starfarer/api/loading/DamagingExplosionSpec getMaxDamage ()F 
L184:   fconst_0 
L185:   fcmpl 
L186:   ifle L207 
L189:   aload_0 
L190:   aconst_null 
L191:   aload 4 
L193:   aload_0 
L194:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L197:   fconst_0 
L198:   aload_0 
L199:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 
L202:   iconst_0 
L203:   invokestatic Method com/fs/starfarer/loading/specs/a 'super' (Lcom/fs/starfarer/combat/entities/Ship;Lcom/fs/starfarer/combat/systems/o00O;Lcom/fs/starfarer/api/loading/DamagingExplosionSpec;Lorg/lwjgl/util/vector/Vector2f;FLorg/lwjgl/util/vector/Vector2f;Z)Ljava/lang/Object; 
L206:   pop 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object java/lang/Object Integer Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/api/loading/DamagingExplosionSpec 
            stack 
        .end stack 
L207:   aload_0 
L208:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isFrigate ()Z 
L211:   ifne L257 
L214:   aload_0 
L215:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullSize ()Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L218:   invokevirtual Method com/fs/starfarer/api/combat/ShipAPI$HullSize ordinal ()I 
L221:   i2f 
L222:   fstore 5 
L224:   fload 5 
L226:   getstatic Field com/fs/starfarer/api/combat/ShipAPI$HullSize CAPITAL_SHIP Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L229:   invokevirtual Method com/fs/starfarer/api/combat/ShipAPI$HullSize ordinal ()I 
L232:   i2f 
L233:   fdiv 
L234:   fstore 5 
L236:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'ÓÓ0000' ()Z 
L239:   ifeq L257 
L242:   invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L245:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getWhiteout ()Lcom/fs/starfarer/renderers/damage/OooO; 
L248:   aload_0 
L249:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L252:   fload 5 
L254:   invokevirtual Method com/fs/starfarer/renderers/damage/OooO 'super' (Lorg/lwjgl/util/vector/Vector2f;F)V 

        .stack chop 1 
L257:   aload_0 
L258:   getfield Field com/fs/starfarer/combat/entities/Ship isHulk Z 
L261:   ifne L271 
L264:   invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L267:   aload_0 
L268:   invokevirtual Method com/fs/starfarer/combat/CombatEngine reportShipDisabled (Lcom/fs/starfarer/combat/entities/Ship;)V 

        .stack same 
L271:   aload_0 
L272:   iconst_1 
L273:   invokevirtual Method com/fs/starfarer/combat/entities/Ship setHulk (Z)V 
L276:   aload_0 
L277:   invokevirtual Method com/fs/starfarer/combat/entities/Ship makeLookDisabled ()V 
L280:   aload_0 
L281:   aconst_null 
L282:   invokevirtual Method com/fs/starfarer/combat/entities/Ship setAI (Lcom/fs/starfarer/combat/ai/AI;)V 
L285:   aload_0 
L286:   iconst_1 
L287:   putfield Field com/fs/starfarer/combat/entities/Ship destroyable Z 
L290:   iload_2 
L291:   ifeq L308 
L294:   aload_0 
L295:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getStats ()Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L298:   invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getHullDamageTakenMult ()Lcom/fs/starfarer/api/combat/MutableStat; 
L301:   ldc_w 'core_disable' 
L304:   fconst_0 
L305:   invokevirtual Method com/fs/starfarer/api/combat/MutableStat modifyMult (Ljava/lang/String;F)V 

        .stack same 
L308:   return 
L309:   
    .end code 
.end method 

.method public isSelectableInWarroom : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship isStationModule ()Z 
L4:     ifeq L16 
L7:     aload_0 
L8:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getStationSlot ()Lcom/fs/starfarer/loading/specs/nullsuper; 
L11:    ifnull L16 
L14:    iconst_0 
L15:    ireturn 

        .stack same 
L16:    iconst_1 
L17:    ireturn 
L18:    
    .end code 
.end method 

.method public hasWarroomIcon : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship isPiece Z 
L4:     ifeq L9 
L7:     iconst_0 
L8:     ireturn 

        .stack same 
L9:     aload_0 
L10:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getParentStation ()Lcom/fs/starfarer/combat/entities/Ship; 
L13:    ifnull L18 
L16:    iconst_0 
L17:    ireturn 

        .stack same 
L18:    aload_0 
L19:    invokevirtual Method com/fs/starfarer/combat/entities/Ship isFighter ()Z 
L22:    ifeq L27 
L25:    iconst_0 
L26:    ireturn 

        .stack same 
L27:    iconst_1 
L28:    ireturn 
L29:    
    .end code 
.end method 

.method public isHullDamageable : ()Z 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getStats ()Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L4:     invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getHullDamageTakenMult ()Lcom/fs/starfarer/api/combat/MutableStat; 
L7:     invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L10:    fconst_0 
L11:    fcmpg 
L12:    ifgt L17 
L15:    iconst_0 
L16:    ireturn 

        .stack same 
L17:    iconst_1 
L18:    ireturn 
L19:    
    .end code 
.end method 

.method public isTargetable : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship isPiece Z 
L4:     ifeq L15 
L7:     getstatic Field com/fs/starfarer/combat/entities/Ship ATTACK_HULKS Z 
L10:    ifne L15 
L13:    iconst_0 
L14:    ireturn 

        .stack same 
L15:    aload_0 
L16:    invokevirtual Method com/fs/starfarer/combat/entities/Ship isHullDamageable ()Z 
L19:    ifne L24 
L22:    iconst_0 
L23:    ireturn 

        .stack same 
L24:    aload_0 
L25:    invokevirtual Method com/fs/starfarer/combat/entities/Ship isHulk ()Z 
L28:    ifeq L47 
L31:    aload_0 
L32:    invokevirtual Method com/fs/starfarer/combat/entities/Ship isStationModule ()Z 
L35:    ifeq L47 
L38:    aload_0 
L39:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getStationSlot ()Lcom/fs/starfarer/loading/specs/nullsuper; 
L42:    ifnull L47 
L45:    iconst_0 
L46:    ireturn 

        .stack same 
L47:    aload_0 
L48:    invokevirtual Method com/fs/starfarer/combat/entities/Ship isHulk ()Z 
L51:    ifeq L63 
L54:    aload_0 
L55:    invokevirtual Method com/fs/starfarer/combat/entities/Ship isFighter ()Z 
L58:    ifeq L63 
L61:    iconst_0 
L62:    ireturn 

        .stack same 
L63:    iconst_1 
L64:    ireturn 
L65:    
    .end code 
.end method 

.method public hasRadarRibbonIcon : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship isPiece Z 
L4:     ifeq L9 
L7:     iconst_0 
L8:     ireturn 

        .stack same 
L9:     aload_0 
L10:    invokevirtual Method com/fs/starfarer/combat/entities/Ship isStationModule ()Z 
L13:    ifeq L25 
L16:    aload_0 
L17:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getStationSlot ()Lcom/fs/starfarer/loading/specs/nullsuper; 
L20:    ifnull L25 
L23:    iconst_0 
L24:    ireturn 

        .stack same 
L25:    iconst_1 
L26:    ireturn 
L27:    
    .end code 
.end method 

.method public showStationModuleDisabledFloaty : ()Z 
    .code stack 3 locals 5 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship isFighter ()Z 
L4:     ifeq L9 
L7:     iconst_0 
L8:     ireturn 

        .stack same 
L9:     aload_0 
L10:    invokevirtual Method com/fs/starfarer/combat/entities/Ship isHulk ()Z 
L13:    ifeq L18 
L16:    iconst_0 
L17:    ireturn 

        .stack same 
L18:    aload_0 
L19:    getfield Field com/fs/starfarer/combat/entities/Ship suppressFloaties Z 
L22:    ifeq L27 
L25:    iconst_0 
L26:    ireturn 

        .stack same 
L27:    invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L30:    astore_1 
L31:    aload_1 
L32:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L35:    astore_2 
L36:    aload_1 
L37:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getCombatUI ()Lcom/fs/starfarer/combat/K; 
L40:    invokeinterface InterfaceMethod com/fs/starfarer/combat/K getEntityToFollow ()Lcom/fs/starfarer/combat/new/OoOO$o; 1 
L45:    astore_3 
L46:    aload_0 
L47:    aload_2 
L48:    if_acmpeq L86 
L51:    aload_0 
L52:    aload_3 
L53:    if_acmpeq L86 
L56:    aload_0 
L57:    invokevirtual Method com/fs/starfarer/combat/entities/Ship isRecentlyShotByPlayer ()Z 
L60:    ifne L86 
L63:    aload_0 
L64:    aload_2 
L65:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getShipTarget ()Lcom/fs/starfarer/combat/entities/Ship; 
L68:    if_acmpeq L86 
L71:    aload_1 
L72:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getFloatingTextManager ()Lcom/fs/starfarer/renderers/Q; 
L75:    aload_0 
L76:    invokevirtual Method com/fs/starfarer/renderers/Q 'super' (Lcom/fs/starfarer/combat/E/B;)Z 
L79:    ifne L86 
L82:    iconst_0 
L83:    goto L87 

        .stack append Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/new/OoOO$o 
L86:    iconst_1 

        .stack stack_1 Integer 
L87:    istore 4 
L89:    iload 4 
L91:    aload_0 
L92:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getParentStation ()Lcom/fs/starfarer/combat/entities/Ship; 
L95:    aload_2 
L96:    if_acmpne L103 
L99:    iconst_1 
L100:   goto L104 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/new/OoOO$o Integer 
            stack Integer 
        .end stack 
L103:   iconst_0 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/new/OoOO$o Integer 
            stack Integer Integer 
        .end stack 
L104:   ior 
L105:   istore 4 
L107:   iload 4 
L109:   ireturn 
L110:   
    .end code 
.end method 

.method public setOverkill : (F)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     fload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship overkill F 
L5:     return 
L6:     
    .end code 
.end method 

.method public setSuppressFloaties : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship suppressFloaties Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public isNoDamagedExplosions : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship noDamagedExplosions Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public setNoDamagedExplosions : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship noDamagedExplosions Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public isSkipNextDamagedExplosion : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship skipNextDamagedExplosion Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public setSkipNextDamagedExplosion : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship skipNextDamagedExplosion Z 
L5:     return 
L6:     
    .end code 
.end method 

.method private spawnDamagedExplosion : (Lorg/lwjgl/util/vector/Vector2f;F)V 
    .code stack 6 locals 12 
L0:     fload_2 
L1:     fconst_0 
L2:     fcmpl 
L3:     ifeq L13 
L6:     aload_0 
L7:     getfield Field com/fs/starfarer/combat/entities/Ship noDamagedExplosions Z 
L10:    ifeq L14 

        .stack same 
L13:    return 

        .stack same 
L14:    aload_0 
L15:    getfield Field com/fs/starfarer/combat/entities/Ship skipNextDamagedExplosion Z 
L18:    ifeq L27 
L21:    aload_0 
L22:    iconst_0 
L23:    putfield Field com/fs/starfarer/combat/entities/Ship skipNextDamagedExplosion Z 
L26:    return 

        .stack same 
L27:    aload_0 
L28:    dup 
L29:    getfield Field com/fs/starfarer/combat/entities/Ship accumulatedDamageForExplosion F 
L32:    fload_2 
L33:    fadd 
L34:    putfield Field com/fs/starfarer/combat/entities/Ship accumulatedDamageForExplosion F 
L37:    aload_0 
L38:    getfield Field com/fs/starfarer/combat/entities/Ship accumulatedDamageForExplosion F 
L41:    ldc_w +300.0f 
L44:    fcmpg 
L45:    ifge L49 
L48:    return 

        .stack same 
L49:    fconst_0 
L50:    fstore_3 
L51:    fload_2 
L52:    ldc_w +1000.0f 
L55:    fcmpl 
L56:    ifle L69 
L59:    fload_2 
L60:    ldc_w +1000.0f 
L63:    fsub 
L64:    fstore_3 
L65:    ldc_w +1000.0f 
L68:    fstore_2 

        .stack append Float 
L69:    aload_0 
L70:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getHitpoints ()F 
L73:    fstore 4 
L75:    fconst_0 
L76:    fstore 5 
L78:    fconst_0 
L79:    fstore 6 
L81:    fload_2 
L82:    ldc_w +300.0f 
L85:    invokestatic Method java/lang/Math min (FF)F 
L88:    fstore 7 
L90:    fload 7 
L92:    fstore 8 
L94:    goto L264 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object org/lwjgl/util/vector/Vector2f Float Float Float Float Float Float Float 
            stack 
        .end stack 
L97:    fload 4 
L99:    fload 6 
L101:   fadd 
L102:   f2i 
L103:   sipush 600 
L106:   idiv 
L107:   fload 4 
L109:   fload 8 
L111:   fadd 
L112:   f2i 
L113:   sipush 600 
L116:   idiv 
L117:   if_icmpeq L137 
L120:   fload 5 
L122:   ldc_w +25.0f 
L125:   fcmpg 
L126:   ifge L252 
L129:   ldc_w +25.0f 
L132:   fstore 5 
L134:   goto L252 

        .stack same 
L137:   fload 4 
L139:   fload 6 
L141:   fadd 
L142:   f2i 
L143:   sipush 400 
L146:   idiv 
L147:   fload 4 
L149:   fload 8 
L151:   fadd 
L152:   f2i 
L153:   sipush 400 
L156:   idiv 
L157:   if_icmpeq L196 
L160:   fload 5 
L162:   ldc_w +20.0f 
L165:   fcmpg 
L166:   ifge L252 
L169:   fload_2 
L170:   ldc_w +150.0f 
L173:   fcmpl 
L174:   ifgt L188 
L177:   invokestatic Method java/lang/Math random ()D 
L180:   d2f 
L181:   ldc_w +0.33000001311302185f 
L184:   fcmpl 
L185:   ifle L252 

        .stack same 
L188:   ldc_w +20.0f 
L191:   fstore 5 
L193:   goto L252 

        .stack same 
L196:   fload 4 
L198:   fload 6 
L200:   fadd 
L201:   f2i 
L202:   sipush 300 
L205:   idiv 
L206:   fload 4 
L208:   fload 8 
L210:   fadd 
L211:   f2i 
L212:   sipush 300 
L215:   idiv 
L216:   if_icmpeq L252 
L219:   fload 5 
L221:   ldc_w +15.0f 
L224:   fcmpg 
L225:   ifge L252 
L228:   fload_2 
L229:   ldc_w +150.0f 
L232:   fcmpl 
L233:   ifgt L247 
L236:   invokestatic Method java/lang/Math random ()D 
L239:   d2f 
L240:   ldc_w +0.6600000262260437f 
L243:   fcmpl 
L244:   ifle L252 

        .stack same 
L247:   ldc_w +15.0f 
L250:   fstore 5 

        .stack same 
L252:   fload 8 
L254:   fstore 6 
L256:   fload 8 
L258:   ldc_w +300.0f 
L261:   fadd 
L262:   fstore 8 

        .stack same 
L264:   fload 8 
L266:   fload_2 
L267:   fcmpg 
L268:   ifle L97 
L271:   fload 5 
L273:   fconst_0 
L274:   fcmpl 
L275:   ifle L403 
L278:   fload 5 
L280:   ldc_w +6.0f 
L283:   fmul 
L284:   fstore 8 
L286:   invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L289:   astore 9 
L291:   aload 9 
L293:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getCombatUI ()Lcom/fs/starfarer/combat/K; 
L296:   aload_1 
L297:   fload 8 
L299:   fconst_2 
L300:   fmul 
L301:   fload_3 
L302:   ldc_w +10.0f 
L305:   fdiv 
L306:   ldc_w +300.0f 
L309:   invokestatic Method java/lang/Math min (FF)F 
L312:   fadd 
L313:   invokeinterface InterfaceMethod com/fs/starfarer/combat/K addExplosion (Lorg/lwjgl/util/vector/Vector2f;F)V 3 
L318:   aload 9 
L320:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getViewport ()Lcom/fs/starfarer/combat/CombatViewport; 
L323:   aload_1 
L324:   ldc_w +200.0f 
L327:   invokevirtual Method com/fs/starfarer/combat/CombatViewport isNearViewport (Lorg/lwjgl/util/vector/Vector2f;F)Z 
L330:   ifne L334 
L333:   return 

        .stack append Object com/fs/starfarer/combat/CombatEngine 
L334:   invokestatic Method java/lang/Math random ()D 
L337:   d2f 
L338:   ldc_w +0.15000000596046448f 
L341:   fmul 
L342:   ldc_w +0.05000000074505806f 
L345:   fadd 
L346:   fstore 10 
L348:   new com/fs/graphics/anim/BaseAnimation 
L351:   dup 
L352:   invokespecial Method com/fs/graphics/anim/BaseAnimation <init> ()V 
L355:   astore 11 
L357:   aload 11 
L359:   fload 10 
L361:   invokevirtual Method com/fs/graphics/anim/BaseAnimation setDuration (F)V 
L364:   aload 11 
L366:   new com/fs/starfarer/combat/entities/Ship$2 
L369:   dup 
L370:   aload_0 
L371:   aload_1 
L372:   fload 8 
L374:   invokespecial Method com/fs/starfarer/combat/entities/Ship$2 <init> (Lcom/fs/starfarer/combat/entities/Ship;Lorg/lwjgl/util/vector/Vector2f;F)V 
L377:   invokevirtual Method com/fs/graphics/anim/BaseAnimation setAfter (Lcom/fs/graphics/util/GenericTask;)V 
L380:   aload 9 
L382:   aload 11 
L384:   invokevirtual Method com/fs/starfarer/combat/CombatEngine addAnimation (Lcom/fs/graphics/anim/Animation;)V 
L387:   aload_0 
L388:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L391:   aload_0 
L392:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 
L395:   invokestatic Method com/fs/starfarer/combat/entities/ship/A/I o00000 (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)V 
L398:   aload_0 
L399:   fconst_0 
L400:   putfield Field com/fs/starfarer/combat/entities/Ship accumulatedDamageForExplosion F 

        .stack chop 2 
L403:   return 
L404:   
    .end code 
.end method 

.method private reportHeavyDamage : ()V 
    .code stack 5 locals 5 
L0:     invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L3:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerId ()I 
L6:     istore_1 
L7:     invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L10:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getCombatUI ()Lcom/fs/starfarer/combat/K; 
L13:    invokeinterface InterfaceMethod com/fs/starfarer/combat/K getMessageWidget ()Lcom/fs/starfarer/class/C; 1 
L18:    astore_2 
L19:    aload_0 
L20:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getName ()Ljava/lang/String; 
L23:    astore_3 
L24:    iload_1 
L25:    aload_0 
L26:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getOwner ()I 
L29:    if_icmpne L122 
L32:    aload_3 
L33:    ifnull L68 
L36:    ldc_w 'The "%s", a friendly %s-class vessel, has taken heavy damage' 
L39:    iconst_2 
L40:    anewarray java/lang/Object 
L43:    dup 
L44:    iconst_0 
L45:    aload_3 
L46:    aastore 
L47:    dup 
L48:    iconst_1 
L49:    aload_0 
L50:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getSpec [u632] 
L53:    invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L56:    invokevirtual Method com/fs/starfarer/loading/specs/g getHullName ()Ljava/lang/String; 
L59:    aastore 
L60:    invokestatic Method java/lang/String format (Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String; 
L63:    astore 4 
L65:    goto L93 

        .stack append Integer Object com/fs/starfarer/class/C Object java/lang/String 
L68:    ldc_w 'A friendly %s-class vessel has taken heavy damage' 
L71:    iconst_1 
L72:    anewarray java/lang/Object 
L75:    dup 
L76:    iconst_0 
L77:    aload_0 
L78:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getSpec [u632] 
L81:    invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L84:    invokevirtual Method com/fs/starfarer/loading/specs/g getHullName ()Ljava/lang/String; 
L87:    aastore 
L88:    invokestatic Method java/lang/String format (Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String; 
L91:    astore 4 

        .stack append Object java/lang/String 
L93:    aload_2 
L94:    iconst_4 
L95:    anewarray java/lang/Object 
L98:    dup 
L99:    iconst_0 
L100:   aload_3 
L101:   aastore 
L102:   dup 
L103:   iconst_1 
L104:   aload 4 
L106:   aastore 
L107:   dup 
L108:   iconst_2 
L109:   aload_0 
L110:   aastore 
L111:   dup 
L112:   iconst_3 
L113:   iconst_0 
L114:   invokestatic Method java/lang/Boolean valueOf (Z)Ljava/lang/Boolean; 
L117:   aastore 
L118:   invokevirtual Method com/fs/starfarer/class/C o00000 ([Ljava/lang/Object;)Lcom/fs/starfarer/class/O0OO/C; 
L121:   pop 

        .stack chop 1 
L122:   return 
L123:   
    .end code 
.end method 

.method private sendShipDestroyedMessage : (Ljava/lang/Object;)V 
    .code stack 5 locals 6 
L0:     invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L3:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerId ()I 
L6:     istore_2 
L7:     invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L10:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getCombatUI ()Lcom/fs/starfarer/combat/K; 
L13:    invokeinterface InterfaceMethod com/fs/starfarer/combat/K getMessageWidget ()Lcom/fs/starfarer/class/C; 1 
L18:    astore_3 
L19:    aload_0 
L20:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getName ()Ljava/lang/String; 
L23:    astore 4 
L25:    iload_2 
L26:    aload_0 
L27:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getOwner ()I 
L30:    if_icmpne L117 
L33:    aload 4 
L35:    ifnull L71 
L38:    ldc_w 'The %s, a friendly %s-class vessel, has been destroyed' 
L41:    iconst_2 
L42:    anewarray java/lang/Object 
L45:    dup 
L46:    iconst_0 
L47:    aload 4 
L49:    aastore 
L50:    dup 
L51:    iconst_1 
L52:    aload_0 
L53:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getSpec [u632] 
L56:    invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L59:    invokevirtual Method com/fs/starfarer/loading/specs/g getHullName ()Ljava/lang/String; 
L62:    aastore 
L63:    invokestatic Method java/lang/String format (Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String; 
L66:    astore 5 
L68:    goto L96 

        .stack append Integer Object com/fs/starfarer/class/C Object java/lang/String 
L71:    ldc_w 'A friendly %s-class vessel has been destroyed' 
L74:    iconst_1 
L75:    anewarray java/lang/Object 
L78:    dup 
L79:    iconst_0 
L80:    aload_0 
L81:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getSpec [u632] 
L84:    invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L87:    invokevirtual Method com/fs/starfarer/loading/specs/g getHullName ()Ljava/lang/String; 
L90:    aastore 
L91:    invokestatic Method java/lang/String format (Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String; 
L94:    astore 5 

        .stack append Object java/lang/String 
L96:    aload_3 
L97:    iconst_2 
L98:    anewarray java/lang/Object 
L101:   dup 
L102:   iconst_0 
L103:   aload_0 
L104:   aastore 
L105:   dup 
L106:   iconst_1 
L107:   aload 5 
L109:   aastore 
L110:   invokevirtual Method com/fs/starfarer/class/C o00000 ([Ljava/lang/Object;)Lcom/fs/starfarer/class/O0OO/C; 
L113:   pop 
L114:   goto L198 

        .stack chop 1 
L117:   aload 4 
L119:   ifnull L155 
L122:   ldc_w 'The %s, a hostile %s-class vessel, has been destroyed' 
L125:   iconst_2 
L126:   anewarray java/lang/Object 
L129:   dup 
L130:   iconst_0 
L131:   aload 4 
L133:   aastore 
L134:   dup 
L135:   iconst_1 
L136:   aload_0 
L137:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getSpec [u632] 
L140:   invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L143:   invokevirtual Method com/fs/starfarer/loading/specs/g getHullName ()Ljava/lang/String; 
L146:   aastore 
L147:   invokestatic Method java/lang/String format (Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String; 
L150:   astore 5 
L152:   goto L180 

        .stack same 
L155:   ldc_w 'A hostile %s-class vessel has been destroyed' 
L158:   iconst_1 
L159:   anewarray java/lang/Object 
L162:   dup 
L163:   iconst_0 
L164:   aload_0 
L165:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getSpec [u632] 
L168:   invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L171:   invokevirtual Method com/fs/starfarer/loading/specs/g getHullName ()Ljava/lang/String; 
L174:   aastore 
L175:   invokestatic Method java/lang/String format (Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String; 
L178:   astore 5 

        .stack append Object java/lang/String 
L180:   aload_3 
L181:   iconst_2 
L182:   anewarray java/lang/Object 
L185:   dup 
L186:   iconst_0 
L187:   aload_0 
L188:   aastore 
L189:   dup 
L190:   iconst_1 
L191:   aload 5 
L193:   aastore 
L194:   invokevirtual Method com/fs/starfarer/class/C o00000 ([Ljava/lang/Object;)Lcom/fs/starfarer/class/O0OO/C; 
L197:   pop 

        .stack same 
L198:   return 
L199:   
    .end code 
.end method 

.method public randomDamage : (FLjava/lang/Object;)V 
    .code stack 7 locals 9 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullSize ()Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L4:     invokevirtual Method com/fs/starfarer/api/combat/ShipAPI$HullSize ordinal ()I 
L7:     i2f 
L8:     ldc_w +500.0f 
L11:    fmul 
L12:    fstore_3 
L13:    fload_3 
L14:    fconst_2 
L15:    fdiv 
L16:    fload_3 
L17:    fconst_2 
L18:    fdiv 
L19:    invokestatic Method java/lang/Math random ()D 
L22:    d2f 
L23:    fmul 
L24:    fadd 
L25:    fstore 4 
L27:    aload_0 
L28:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getCollisionRadius ()F 
L31:    invokestatic Method java/lang/Math random ()D 
L34:    d2f 
L35:    ldc_w +0.5f 
L38:    fsub 
L39:    fmul 
L40:    fstore 5 
L42:    aload_0 
L43:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getCollisionRadius ()F 
L46:    invokestatic Method java/lang/Math random ()D 
L49:    d2f 
L50:    ldc_w +0.5f 
L53:    fsub 
L54:    fmul 
L55:    fstore 6 
L57:    new org/lwjgl/util/vector/Vector2f 
L60:    dup 
L61:    aload_0 
L62:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L65:    invokespecial Method org/lwjgl/util/vector/Vector2f <init> (Lorg/lwjgl/util/vector/ReadableVector2f;)V 
L68:    astore 7 
L70:    aload 7 
L72:    dup 
L73:    getfield Field org/lwjgl/util/vector/Vector2f x F 
L76:    fload 5 
L78:    fadd 
L79:    putfield Field org/lwjgl/util/vector/Vector2f x F 
L82:    aload 7 
L84:    dup 
L85:    getfield Field org/lwjgl/util/vector/Vector2f y F 
L88:    fload 6 
L90:    fadd 
L91:    putfield Field org/lwjgl/util/vector/Vector2f y F 
L94:    aload_0 
L95:    aload 7 
L97:    new com/fs/starfarer/combat/E/F 
L100:   dup 
L101:   fload 4 
L103:   iconst_0 
L104:   getstatic Field com/fs/starfarer/api/combat/DamageType HIGH_EXPLOSIVE Lcom/fs/starfarer/api/combat/DamageType; 
L107:   invokespecial Method com/fs/starfarer/combat/E/F <init> (FZLcom/fs/starfarer/api/combat/DamageType;)V 
L110:   iconst_0 
L111:   fload_1 
L112:   aload_2 
L113:   invokevirtual Method com/fs/starfarer/combat/entities/Ship applyDamage (Lorg/lwjgl/util/vector/Vector2f;Lcom/fs/starfarer/combat/E/F;ZFLjava/lang/Object;)Lcom/fs/starfarer/combat/entities/ship/G; 
L116:   astore 8 
L118:   return 
L119:   
    .end code 
.end method 

.method public getArmorGrid : ()Lcom/fs/starfarer/combat/entities/ship/new; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship armorGrid Lcom/fs/starfarer/combat/entities/ship/new; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public getSelectedGroupAPI : ()Lcom/fs/starfarer/api/combat/WeaponGroupAPI; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship selected Lcom/fs/starfarer/combat/systems/WeaponGroup; 
L4:     ifnull L22 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/entities/Ship selected Lcom/fs/starfarer/combat/systems/WeaponGroup; 
L11:    instanceof com/fs/starfarer/combat/systems/WeaponGroup 
L14:    ifeq L22 
L17:    aload_0 
L18:    getfield Field com/fs/starfarer/combat/entities/Ship selected Lcom/fs/starfarer/combat/systems/WeaponGroup; 
L21:    areturn 

        .stack same 
L22:    aconst_null 
L23:    areturn 
L24:    
    .end code 
.end method 

.method public resetSelectedGroup : ()V 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     aconst_null 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship selected Lcom/fs/starfarer/combat/systems/WeaponGroup; 
L5:     return 
L6:     
    .end code 
.end method 

.method public getSelectedGroup : ()Lcom/fs/starfarer/combat/systems/WeaponGroup; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship selected Lcom/fs/starfarer/combat/systems/WeaponGroup; 
L4:     ifnull L22 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/entities/Ship selected Lcom/fs/starfarer/combat/systems/WeaponGroup; 
L11:    instanceof com/fs/starfarer/combat/systems/WeaponGroup 
L14:    ifeq L22 
L17:    aload_0 
L18:    getfield Field com/fs/starfarer/combat/entities/Ship selected Lcom/fs/starfarer/combat/systems/WeaponGroup; 
L21:    areturn 

        .stack same 
L22:    aconst_null 
L23:    areturn 
L24:    
    .end code 
.end method 

.method public getCollisionClass : ()Lcom/fs/starfarer/api/combat/CollisionClass; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship isFighter ()Z 
L4:     ifeq L21 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/entities/Ship engineController Lcom/fs/starfarer/combat/entities/ship/null; 
L11:    invokevirtual Method com/fs/starfarer/combat/entities/ship/null isDisabled ()Z 
L14:    ifeq L21 
L17:    getstatic Field com/fs/starfarer/api/combat/CollisionClass SHIP Lcom/fs/starfarer/api/combat/CollisionClass; 
L20:    areturn 

        .stack same 
L21:    aload_0 
L22:    getfield Field com/fs/starfarer/combat/entities/Ship isLiftingOffOrLanding Z 
L25:    ifeq L32 
L28:    getstatic Field com/fs/starfarer/api/combat/CollisionClass NONE Lcom/fs/starfarer/api/combat/CollisionClass; 
L31:    areturn 

        .stack same 
L32:    aload_0 
L33:    invokespecial Method com/fs/starfarer/combat/entities/BaseEntity getCollisionClass ()Lcom/fs/starfarer/api/combat/CollisionClass; 
L36:    areturn 
L37:    
    .end code 
.end method 

.method public getSource : ()Lcom/fs/starfarer/combat/E/B; 
    .code stack 1 locals 1 
L0:     aconst_null 
L1:     areturn 
L2:     
    .end code 
.end method 

.method public isMissile : ()Z 
    .code stack 1 locals 1 
L0:     iconst_0 
L1:     ireturn 
L2:     
    .end code 
.end method 

.method public getName : ()Ljava/lang/String; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getParentStation ()Lcom/fs/starfarer/combat/entities/Ship; 
L4:     ifnull L9 
L7:     aconst_null 
L8:     areturn 

        .stack same 
L9:     aload_0 
L10:    getfield Field com/fs/starfarer/combat/entities/Ship name Ljava/lang/String; 
L13:    areturn 
L14:    
    .end code 
.end method 

.method public setName : (Ljava/lang/String;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship name Ljava/lang/String; 
L5:     return 
L6:     
    .end code 
.end method 

.method public getEmpDecal : ()Lcom/fs/starfarer/renderers/damage/I; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship empDecal Lcom/fs/starfarer/renderers/damage/I; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public isEMPed : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L4:     invokevirtual Method com/fs/starfarer/combat/entities/ship/D isOverloaded ()Z 
L7:     ireturn 
L8:     
    .end code 
.end method 

.method public notifyOverloadStarted : ()V 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship shield Lcom/fs/starfarer/combat/systems/G; 
L4:     ifnull L14 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/entities/Ship shield Lcom/fs/starfarer/combat/systems/G; 
L11:    invokevirtual Method com/fs/starfarer/combat/systems/G toggleOff ()V 

        .stack same 
L14:    return 
L15:    
    .end code 
.end method 

.method public okToHaveShieldOn : ()Z 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L4:     invokevirtual Method com/fs/starfarer/combat/entities/ship/D isOverloaded ()Z 
L7:     ifne L31 
L10:    aload_0 
L11:    getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L14:    invokevirtual Method com/fs/starfarer/combat/entities/ship/D isVenting ()Z 
L17:    ifne L31 
L20:    aload_0 
L21:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getFluxLevel ()F 
L24:    fconst_1 
L25:    fcmpl 
L26:    ifeq L31 
L29:    iconst_1 
L30:    ireturn 

        .stack same 
L31:    iconst_0 
L32:    ireturn 
L33:    
    .end code 
.end method 

.method public isEngineBoostActive : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship isStation ()Z 
L4:     ifeq L9 
L7:     iconst_0 
L8:     ireturn 

        .stack same 
L9:     aload_0 
L10:    getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L13:    invokevirtual Method com/fs/starfarer/combat/entities/ship/D isEngineBoostActive ()Z 
L16:    ireturn 
L17:    
    .end code 
.end method 

.method public isEngineDisabled : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship engineController Lcom/fs/starfarer/combat/entities/ship/null; 
L4:     invokevirtual Method com/fs/starfarer/combat/entities/ship/null isDisabled ()Z 
L7:     ifne L22 
L10:    aload_0 
L11:    getfield Field com/fs/starfarer/combat/entities/Ship engineController Lcom/fs/starfarer/combat/entities/ship/null; 
L14:    invokevirtual Method com/fs/starfarer/combat/entities/ship/null isFlamingOut ()Z 
L17:    ifne L22 
L20:    iconst_0 
L21:    ireturn 

        .stack same 
L22:    iconst_1 
L23:    ireturn 
L24:    
    .end code 
.end method 

.method public getFluxBasedEnergyWeaponDamageMultiplier : ()F 
    .code stack 4 locals 4 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship stats Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L4:     invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getEnergyWeaponFluxBasedBonusDamageMagnitude ()Lcom/fs/starfarer/api/combat/MutableStat; 
L7:     invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L10:    fstore_1 
L11:    fload_1 
L12:    fconst_0 
L13:    fcmpg 
L14:    ifgt L19 
L17:    fconst_1 
L18:    freturn 

        .stack append Float 
L19:    aload_0 
L20:    getfield Field com/fs/starfarer/combat/entities/Ship stats Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L23:    invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getEnergyWeaponFluxBasedBonusDamageMinLevel ()Lcom/fs/starfarer/api/combat/MutableStat; 
L26:    invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L29:    fstore_2 
L30:    aload_0 
L31:    getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L34:    invokevirtual Method com/fs/starfarer/combat/entities/ship/D getFluxLevel ()F 
L37:    fstore_3 
L38:    fload_3 
L39:    fload_2 
L40:    fcmpg 
L41:    ifgt L46 
L44:    fconst_1 
L45:    freturn 

        .stack append Float Float 
L46:    fconst_1 
L47:    fload_1 
L48:    fload_3 
L49:    fload_2 
L50:    fsub 
L51:    fmul 
L52:    fconst_1 
L53:    fload_2 
L54:    fsub 
L55:    fdiv 
L56:    fadd 
L57:    freturn 
L58:    
    .end code 
.end method 

.method public getMinFlux : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L4:     invokevirtual Method com/fs/starfarer/combat/entities/ship/D getMinFlux ()F 
L7:     freturn 
L8:     
    .end code 
.end method 

.method public getMinFluxLevel : ()F 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L4:     invokevirtual Method com/fs/starfarer/combat/entities/ship/D getMinFlux ()F 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L11:    invokevirtual Method com/fs/starfarer/combat/entities/ship/D getMaxFlux ()F 
L14:    fdiv 
L15:    freturn 
L16:    
    .end code 
.end method 

.method public getFluxLevel : ()F 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L4:     invokevirtual Method com/fs/starfarer/combat/entities/ship/D getCurrFlux ()F 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L11:    invokevirtual Method com/fs/starfarer/combat/entities/ship/D getMaxFlux ()F 
L14:    fdiv 
L15:    freturn 
L16:    
    .end code 
.end method 

.method public getCurrFlux : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L4:     invokevirtual Method com/fs/starfarer/combat/entities/ship/D getCurrFlux ()F 
L7:     freturn 
L8:     
    .end code 
.end method 

.method public getMaxFlux : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L4:     invokevirtual Method com/fs/starfarer/combat/entities/ship/D getMaxFlux ()F 
L7:     freturn 
L8:     
    .end code 
.end method 

.method public repairAndRearm : ()V 
    .code stack 2 locals 5 
L0:     aload_0 
L1:     aload_0 
L2:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getMaxHitpoints ()F 
L5:     invokevirtual Method com/fs/starfarer/combat/entities/Ship setHitpoints (F)V 
L8:     aload_0 
L9:     getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L12:    invokevirtual Method com/fs/starfarer/combat/entities/ship/D resetFlux ()V 
L15:    aload_0 
L16:    getfield Field com/fs/starfarer/combat/entities/Ship armorGrid Lcom/fs/starfarer/combat/entities/ship/new; 
L19:    invokevirtual Method com/fs/starfarer/combat/entities/ship/new repair ()V 
L22:    aload_0 
L23:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getShield ()Lcom/fs/starfarer/combat/systems/G; 
L26:    ifnull L36 
L29:    aload_0 
L30:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getShield ()Lcom/fs/starfarer/combat/systems/G; 
L33:    invokevirtual Method com/fs/starfarer/combat/systems/G toggleOff ()V 

        .stack same 
L36:    aload_0 
L37:    getfield Field com/fs/starfarer/combat/entities/Ship groups Ljava/util/List; 
L40:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L45:    astore_2 
L46:    goto L100 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Top Object java/util/Iterator 
            stack 
        .end stack 
L49:    aload_2 
L50:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L55:    checkcast com/fs/starfarer/combat/systems/WeaponGroup 
L58:    astore_1 
L59:    aload_1 
L60:    invokevirtual Method com/fs/starfarer/combat/systems/WeaponGroup getWeapons ()Ljava/util/List; 
L63:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L68:    astore 4 
L70:    goto L90 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/systems/WeaponGroup Object java/util/Iterator Top Object java/util/Iterator 
            stack 
        .end stack 
L73:    aload 4 
L75:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L80:    checkcast com/fs/starfarer/combat/systems/o00O 
L83:    astore_3 
L84:    aload_3 
L85:    invokeinterface InterfaceMethod com/fs/starfarer/combat/systems/o00O resetAmmo ()V 1 

        .stack same 
L90:    aload 4 
L92:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L97:    ifne L73 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Top Object java/util/Iterator 
            stack 
        .end stack 
L100:   aload_2 
L101:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L106:   ifne L49 
L109:   aload_0 
L110:   invokevirtual Method com/fs/starfarer/combat/entities/Ship turnOffAllGroups ()V 
L113:   aload_0 
L114:   getfield Field com/fs/starfarer/combat/entities/Ship decalRenderer Lcom/fs/starfarer/renderers/damage/String; 
L117:   invokevirtual Method com/fs/starfarer/renderers/damage/String 'ø00000' ()V 
L120:   return 
L121:   
    .end code 
.end method 

.method public getHullStyle : ()Lcom/fs/starfarer/loading/specs/OoOO; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship spec Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L4:     invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L7:     invokevirtual Method com/fs/starfarer/loading/specs/g getHullStyle ()Lcom/fs/starfarer/loading/specs/OoOO; 
L10:    areturn 
L11:    
    .end code 
.end method 

.method public getHullStyleId : ()Ljava/lang/String; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship spec Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L4:     invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L7:     invokevirtual Method com/fs/starfarer/loading/specs/g getHullStyle ()Lcom/fs/starfarer/loading/specs/OoOO; 
L10:    invokevirtual Method com/fs/starfarer/loading/specs/OoOO o00000 ()Ljava/lang/String; 
L13:    areturn 
L14:    
    .end code 
.end method 

.method public getFluxTracker : ()Lcom/fs/starfarer/combat/entities/ship/D; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public getHullSize : ()Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship hullSize Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public setHullSize : (Lcom/fs/starfarer/api/combat/ShipAPI$HullSize;)V 
    .code stack 3 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship hullSize Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L5:     invokestatic Method com/fs/starfarer/combat/entities/Ship $SWITCH_TABLE$com$fs$starfarer$api$combat$ShipAPI$HullSize ()[I 
L8:     aload_1 
L9:     invokevirtual Method com/fs/starfarer/api/combat/ShipAPI$HullSize ordinal ()I 
L12:    iaload 
L13:    tableswitch 2 
            L88 
            L78 
            L68 
            L58 
            L48 
            default : L95 


        .stack same 
L48:    aload_0 
L49:    getstatic Field com/fs/starfarer/api/combat/CombatEngineLayers CAPITAL_SHIPS_LAYER Lcom/fs/starfarer/api/combat/CombatEngineLayers; 
L52:    putfield Field com/fs/starfarer/combat/entities/Ship layer Lcom/fs/starfarer/api/combat/CombatEngineLayers; 
L55:    goto L95 

        .stack same 
L58:    aload_0 
L59:    getstatic Field com/fs/starfarer/api/combat/CombatEngineLayers CRUISERS_LAYER Lcom/fs/starfarer/api/combat/CombatEngineLayers; 
L62:    putfield Field com/fs/starfarer/combat/entities/Ship layer Lcom/fs/starfarer/api/combat/CombatEngineLayers; 
L65:    goto L95 

        .stack same 
L68:    aload_0 
L69:    getstatic Field com/fs/starfarer/api/combat/CombatEngineLayers DESTROYERS_LAYER Lcom/fs/starfarer/api/combat/CombatEngineLayers; 
L72:    putfield Field com/fs/starfarer/combat/entities/Ship layer Lcom/fs/starfarer/api/combat/CombatEngineLayers; 
L75:    goto L95 

        .stack same 
L78:    aload_0 
L79:    getstatic Field com/fs/starfarer/api/combat/CombatEngineLayers FRIGATES_LAYER Lcom/fs/starfarer/api/combat/CombatEngineLayers; 
L82:    putfield Field com/fs/starfarer/combat/entities/Ship layer Lcom/fs/starfarer/api/combat/CombatEngineLayers; 
L85:    goto L95 

        .stack same 
L88:    aload_0 
L89:    getstatic Field com/fs/starfarer/api/combat/CombatEngineLayers FIGHTERS_LAYER Lcom/fs/starfarer/api/combat/CombatEngineLayers; 
L92:    putfield Field com/fs/starfarer/combat/entities/Ship layer Lcom/fs/starfarer/api/combat/CombatEngineLayers; 

        .stack same 
L95:    aload_0 
L96:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L99:    invokevirtual Method com/fs/starfarer/loading/specs/g getHints ()Ljava/util/EnumSet; 
L102:   getstatic Field com/fs/starfarer/api/combat/ShipHullSpecAPI$ShipTypeHints UNDER_PARENT Lcom/fs/starfarer/api/combat/ShipHullSpecAPI$ShipTypeHints; 
L105:   invokevirtual Method java/util/EnumSet contains (Ljava/lang/Object;)Z 
L108:   ifeq L118 
L111:   aload_0 
L112:   getstatic Field com/fs/starfarer/api/combat/CombatEngineLayers UNDER_SHIPS_LAYER Lcom/fs/starfarer/api/combat/CombatEngineLayers; 
L115:   putfield Field com/fs/starfarer/combat/entities/Ship layer Lcom/fs/starfarer/api/combat/CombatEngineLayers; 

        .stack same 
L118:   aload_0 
L119:   aload_0 
L120:   getfield Field com/fs/starfarer/combat/entities/Ship layer Lcom/fs/starfarer/api/combat/CombatEngineLayers; 
L123:   getstatic Field com/fs/starfarer/api/combat/CombatEngineLayers FF_INDICATORS_LAYER Lcom/fs/starfarer/api/combat/CombatEngineLayers; 
L126:   invokestatic Method java/util/EnumSet of (Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet; 
L129:   putfield Field com/fs/starfarer/combat/entities/Ship layers Ljava/util/EnumSet; 
L132:   aload_0 
L133:   getfield Field com/fs/starfarer/combat/entities/Ship system Lcom/fs/starfarer/combat/systems/F; 
L136:   ifnull L154 
L139:   aload_0 
L140:   getfield Field com/fs/starfarer/combat/entities/Ship layers Ljava/util/EnumSet; 
L143:   aload_0 
L144:   getfield Field com/fs/starfarer/combat/entities/Ship system Lcom/fs/starfarer/combat/systems/F; 
L147:   invokevirtual Method com/fs/starfarer/combat/systems/F getActiveLayers ()Ljava/util/EnumSet; 
L150:   invokevirtual Method java/util/EnumSet addAll (Ljava/util/Collection;)Z 
L153:   pop 

        .stack same 
L154:   aload_0 
L155:   getfield Field com/fs/starfarer/combat/entities/Ship phaseCloak Lcom/fs/starfarer/combat/systems/F; 
L158:   ifnull L176 
L161:   aload_0 
L162:   getfield Field com/fs/starfarer/combat/entities/Ship layers Ljava/util/EnumSet; 
L165:   aload_0 
L166:   getfield Field com/fs/starfarer/combat/entities/Ship phaseCloak Lcom/fs/starfarer/combat/systems/F; 
L169:   invokevirtual Method com/fs/starfarer/combat/systems/F getActiveLayers ()Ljava/util/EnumSet; 
L172:   invokevirtual Method java/util/EnumSet addAll (Ljava/util/Collection;)Z 
L175:   pop 

        .stack same 
L176:   aload_0 
L177:   getfield Field com/fs/starfarer/combat/entities/Ship travelDrive Lcom/fs/starfarer/combat/systems/F; 
L180:   ifnull L198 
L183:   aload_0 
L184:   getfield Field com/fs/starfarer/combat/entities/Ship layers Ljava/util/EnumSet; 
L187:   aload_0 
L188:   getfield Field com/fs/starfarer/combat/entities/Ship travelDrive Lcom/fs/starfarer/combat/systems/F; 
L191:   invokevirtual Method com/fs/starfarer/combat/systems/F getActiveLayers ()Ljava/util/EnumSet; 
L194:   invokevirtual Method java/util/EnumSet addAll (Ljava/util/Collection;)Z 
L197:   pop 

        .stack same 
L198:   return 
L199:   
    .end code 
.end method 

.method public getActiveLayers : ()Ljava/util/EnumSet; 
    .signature ()Ljava/util/EnumSet<Lcom/fs/starfarer/api/combat/CombatEngineLayers;>; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship layers Ljava/util/EnumSet; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public isPhased : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship phased Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public isUnphasing : ()Z 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getPhaseCloak ()Lcom/fs/starfarer/combat/systems/F; 
L4:     ifnull L25 
L7:     aload_0 
L8:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getPhaseCloak ()Lcom/fs/starfarer/combat/systems/F; 
L11:    invokevirtual Method com/fs/starfarer/combat/systems/F getChargeTracker ()Lcom/fs/starfarer/combat/systems/super; 
L14:    invokevirtual Method com/fs/starfarer/combat/systems/super 'Ó00000' ()Lcom/fs/starfarer/api/combat/ShipSystemAPI$SystemState; 
L17:    getstatic Field com/fs/starfarer/api/combat/ShipSystemAPI$SystemState OUT Lcom/fs/starfarer/api/combat/ShipSystemAPI$SystemState; 
L20:    if_acmpne L25 
L23:    iconst_1 
L24:    ireturn 

        .stack same 
L25:    iconst_0 
L26:    ireturn 
L27:    
    .end code 
.end method 

.method public isPhaseShip : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L4:     invokevirtual Method com/fs/starfarer/loading/specs/g isPhase ()Z 
L7:     ireturn 
L8:     
    .end code 
.end method 

.method public isReallyPhaseShip : ()Z 
    .code stack 3 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship phase Ljava/lang/Boolean; 
L4:     ifnull L15 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/entities/Ship phase Ljava/lang/Boolean; 
L11:    invokevirtual Method java/lang/Boolean booleanValue ()Z 
L14:    ireturn 

        .stack same 
L15:    aload_0 
L16:    aload_0 
L17:    getfield Field com/fs/starfarer/combat/entities/Ship spec Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L20:    invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L23:    invokevirtual Method com/fs/starfarer/loading/specs/g isPhase ()Z 
L26:    ifne L49 
L29:    aload_0 
L30:    getfield Field com/fs/starfarer/combat/entities/Ship spec Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L33:    invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHints ()Ljava/util/EnumSet; 
L36:    getstatic Field com/fs/starfarer/api/combat/ShipHullSpecAPI$ShipTypeHints PHASE Lcom/fs/starfarer/api/combat/ShipHullSpecAPI$ShipTypeHints; 
L39:    invokevirtual Method java/util/EnumSet contains (Ljava/lang/Object;)Z 
L42:    ifne L49 
L45:    iconst_0 
L46:    goto L50 

        .stack stack_1 Object com/fs/starfarer/combat/entities/Ship 
L49:    iconst_1 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship 
            stack Object com/fs/starfarer/combat/entities/Ship Integer 
        .end stack 
L50:    invokestatic Method java/lang/Boolean valueOf (Z)Ljava/lang/Boolean; 
L53:    putfield Field com/fs/starfarer/combat/entities/Ship phase Ljava/lang/Boolean; 
L56:    aload_0 
L57:    getfield Field com/fs/starfarer/combat/entities/Ship phase Ljava/lang/Boolean; 
L60:    invokevirtual Method java/lang/Boolean booleanValue ()Z 
L63:    ireturn 
L64:    
    .end code 
.end method 

.method public setPhased : (Z)V 
    .code stack 3 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship phased Z 
L4:     iload_1 
L5:     if_icmpeq L210 
L8:     aload_0 
L9:     iload_1 
L10:    putfield Field com/fs/starfarer/combat/entities/Ship phased Z 
L13:    iload_1 
L14:    ifeq L106 
L17:    aload_0 
L18:    getstatic Field com/fs/starfarer/api/combat/CombatEngineLayers PHASED_SHIPS_LAYER Lcom/fs/starfarer/api/combat/CombatEngineLayers; 
L21:    getstatic Field com/fs/starfarer/api/combat/CombatEngineLayers FF_INDICATORS_LAYER Lcom/fs/starfarer/api/combat/CombatEngineLayers; 
L24:    invokestatic Method java/util/EnumSet of (Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet; 
L27:    putfield Field com/fs/starfarer/combat/entities/Ship layers Ljava/util/EnumSet; 
L30:    aload_0 
L31:    getfield Field com/fs/starfarer/combat/entities/Ship system Lcom/fs/starfarer/combat/systems/F; 
L34:    ifnull L52 
L37:    aload_0 
L38:    getfield Field com/fs/starfarer/combat/entities/Ship layers Ljava/util/EnumSet; 
L41:    aload_0 
L42:    getfield Field com/fs/starfarer/combat/entities/Ship system Lcom/fs/starfarer/combat/systems/F; 
L45:    invokevirtual Method com/fs/starfarer/combat/systems/F getActiveLayers ()Ljava/util/EnumSet; 
L48:    invokevirtual Method java/util/EnumSet addAll (Ljava/util/Collection;)Z 
L51:    pop 

        .stack same 
L52:    aload_0 
L53:    getfield Field com/fs/starfarer/combat/entities/Ship phaseCloak Lcom/fs/starfarer/combat/systems/F; 
L56:    ifnull L74 
L59:    aload_0 
L60:    getfield Field com/fs/starfarer/combat/entities/Ship layers Ljava/util/EnumSet; 
L63:    aload_0 
L64:    getfield Field com/fs/starfarer/combat/entities/Ship phaseCloak Lcom/fs/starfarer/combat/systems/F; 
L67:    invokevirtual Method com/fs/starfarer/combat/systems/F getActiveLayers ()Ljava/util/EnumSet; 
L70:    invokevirtual Method java/util/EnumSet addAll (Ljava/util/Collection;)Z 
L73:    pop 

        .stack same 
L74:    aload_0 
L75:    getfield Field com/fs/starfarer/combat/entities/Ship travelDrive Lcom/fs/starfarer/combat/systems/F; 
L78:    ifnull L96 
L81:    aload_0 
L82:    getfield Field com/fs/starfarer/combat/entities/Ship layers Ljava/util/EnumSet; 
L85:    aload_0 
L86:    getfield Field com/fs/starfarer/combat/entities/Ship travelDrive Lcom/fs/starfarer/combat/systems/F; 
L89:    invokevirtual Method com/fs/starfarer/combat/systems/F getActiveLayers ()Ljava/util/EnumSet; 
L92:    invokevirtual Method java/util/EnumSet addAll (Ljava/util/Collection;)Z 
L95:    pop 

        .stack same 
L96:    aload_0 
L97:    getstatic Field com/fs/starfarer/api/combat/CollisionClass NONE Lcom/fs/starfarer/api/combat/CollisionClass; 
L100:   invokevirtual Method com/fs/starfarer/combat/entities/Ship setCollisionClass (Lcom/fs/starfarer/api/combat/CollisionClass;)V 
L103:   goto L200 

        .stack same 
L106:   aload_0 
L107:   aload_0 
L108:   getfield Field com/fs/starfarer/combat/entities/Ship layer Lcom/fs/starfarer/api/combat/CombatEngineLayers; 
L111:   getstatic Field com/fs/starfarer/api/combat/CombatEngineLayers FF_INDICATORS_LAYER Lcom/fs/starfarer/api/combat/CombatEngineLayers; 
L114:   invokestatic Method java/util/EnumSet of (Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet; 
L117:   putfield Field com/fs/starfarer/combat/entities/Ship layers Ljava/util/EnumSet; 
L120:   aload_0 
L121:   getfield Field com/fs/starfarer/combat/entities/Ship system Lcom/fs/starfarer/combat/systems/F; 
L124:   ifnull L142 
L127:   aload_0 
L128:   getfield Field com/fs/starfarer/combat/entities/Ship layers Ljava/util/EnumSet; 
L131:   aload_0 
L132:   getfield Field com/fs/starfarer/combat/entities/Ship system Lcom/fs/starfarer/combat/systems/F; 
L135:   invokevirtual Method com/fs/starfarer/combat/systems/F getActiveLayers ()Ljava/util/EnumSet; 
L138:   invokevirtual Method java/util/EnumSet addAll (Ljava/util/Collection;)Z 
L141:   pop 

        .stack same 
L142:   aload_0 
L143:   getfield Field com/fs/starfarer/combat/entities/Ship phaseCloak Lcom/fs/starfarer/combat/systems/F; 
L146:   ifnull L164 
L149:   aload_0 
L150:   getfield Field com/fs/starfarer/combat/entities/Ship layers Ljava/util/EnumSet; 
L153:   aload_0 
L154:   getfield Field com/fs/starfarer/combat/entities/Ship phaseCloak Lcom/fs/starfarer/combat/systems/F; 
L157:   invokevirtual Method com/fs/starfarer/combat/systems/F getActiveLayers ()Ljava/util/EnumSet; 
L160:   invokevirtual Method java/util/EnumSet addAll (Ljava/util/Collection;)Z 
L163:   pop 

        .stack same 
L164:   aload_0 
L165:   getfield Field com/fs/starfarer/combat/entities/Ship travelDrive Lcom/fs/starfarer/combat/systems/F; 
L168:   ifnull L186 
L171:   aload_0 
L172:   getfield Field com/fs/starfarer/combat/entities/Ship layers Ljava/util/EnumSet; 
L175:   aload_0 
L176:   getfield Field com/fs/starfarer/combat/entities/Ship travelDrive Lcom/fs/starfarer/combat/systems/F; 
L179:   invokevirtual Method com/fs/starfarer/combat/systems/F getActiveLayers ()Ljava/util/EnumSet; 
L182:   invokevirtual Method java/util/EnumSet addAll (Ljava/util/Collection;)Z 
L185:   pop 

        .stack same 
L186:   aload_0 
L187:   aload_0 
L188:   getfield Field com/fs/starfarer/combat/entities/Ship spec Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L191:   invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L194:   invokevirtual Method com/fs/starfarer/loading/specs/g getCollisionClass ()Lcom/fs/starfarer/api/combat/CollisionClass; 
L197:   invokevirtual Method com/fs/starfarer/combat/entities/Ship setCollisionClass (Lcom/fs/starfarer/api/combat/CollisionClass;)V 

        .stack same 
L200:   invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L203:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getRenderer ()Lcom/fs/graphics/LayeredRenderer; 
L206:   aload_0 
L207:   invokevirtual Method com/fs/graphics/LayeredRenderer recompile (Lcom/fs/graphics/LayeredRenderable;)V 

        .stack same 
L210:   return 
L211:   
    .end code 
.end method 

.method public isWingLeader : ()Z 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship isFighter ()Z 
L4:     ifeq L27 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/entities/Ship wing Lcom/fs/starfarer/combat/ai/M; 
L11:    ifnull L25 
L14:    aload_0 
L15:    aload_0 
L16:    getfield Field com/fs/starfarer/combat/entities/Ship wing Lcom/fs/starfarer/combat/ai/M; 
L19:    invokevirtual Method com/fs/starfarer/combat/ai/M getLeader ()Lcom/fs/starfarer/combat/entities/Ship; 
L22:    if_acmpne L27 

        .stack same 
L25:    iconst_1 
L26:    ireturn 

        .stack same 
L27:    iconst_0 
L28:    ireturn 
L29:    
    .end code 
.end method 

.method public getWingLeader : ()Lcom/fs/starfarer/api/combat/ShipAPI; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship wing Lcom/fs/starfarer/combat/ai/M; 
L4:     ifnonnull L9 
L7:     aconst_null 
L8:     areturn 

        .stack same 
L9:     aload_0 
L10:    getfield Field com/fs/starfarer/combat/entities/Ship wing Lcom/fs/starfarer/combat/ai/M; 
L13:    invokevirtual Method com/fs/starfarer/combat/ai/M getLeader ()Lcom/fs/starfarer/combat/entities/Ship; 
L16:    areturn 
L17:    
    .end code 
.end method 

.method public getStats : ()Lcom/fs/starfarer/combat/entities/ship/o0OO; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship stats Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public isIgnoresMapBounds : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship ignoresMapBounds Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public setIgnoresMapBounds : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship ignoresMapBounds Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public isAlive : ()Z 
    .code stack 2 locals 1 
L0:     invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L3:     aload_0 
L4:     invokevirtual Method com/fs/starfarer/combat/CombatEngine isShipAlive (Lcom/fs/starfarer/api/combat/ShipAPI;)Z 
L7:     ireturn 
L8:     
    .end code 
.end method 

.method public isRetreating : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship retreating Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public setRetreating : (ZZ)V 
    .code stack 2 locals 3 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship isTravelDriveOn ()Z 
L4:     ifeq L19 
L7:     aload_0 
L8:     invokevirtual Method com/fs/starfarer/combat/entities/Ship isRetreating ()Z 
L11:    ifeq L19 
L14:    iload_1 
L15:    ifne L19 
L18:    return 

        .stack same 
L19:    aload_0 
L20:    iload_1 
L21:    putfield Field com/fs/starfarer/combat/entities/Ship retreating Z 
L24:    aload_0 
L25:    iload_2 
L26:    putfield Field com/fs/starfarer/combat/entities/Ship directRetreat Z 
L29:    return 
L30:    
    .end code 
.end method 

.method public isDirectRetreat : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship directRetreat Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public notifyVentingStarted : ()V 
    .code stack 3 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship ventingAnimation Lcom/fs/starfarer/renderers/oOoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO; 
L4:     invokevirtual Method com/fs/starfarer/renderers/oOoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 'Ó00000' ()V 
L7:     aload_0 
L8:     invokevirtual Method com/fs/starfarer/combat/entities/Ship turnOffTravelDrive ()V 
L11:    aload_0 
L12:    iconst_0 
L13:    iconst_0 
L14:    invokevirtual Method com/fs/starfarer/combat/entities/Ship setRetreating (ZZ)V 
L17:    return 
L18:    
    .end code 
.end method 

.method public setVentCoreColor : (Ljava/awt/Color;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship ventingAnimation Lcom/fs/starfarer/renderers/oOoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO; 
L4:     ifnull L15 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/entities/Ship ventingAnimation Lcom/fs/starfarer/renderers/oOoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO; 
L11:    aload_1 
L12:    invokevirtual Method com/fs/starfarer/renderers/oOoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 'super' (Ljava/awt/Color;)V 

        .stack same 
L15:    return 
L16:    
    .end code 
.end method 

.method public setVentFringeColor : (Ljava/awt/Color;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship ventingAnimation Lcom/fs/starfarer/renderers/oOoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO; 
L4:     ifnull L15 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/entities/Ship ventingAnimation Lcom/fs/starfarer/renderers/oOoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO; 
L11:    aload_1 
L12:    invokevirtual Method com/fs/starfarer/renderers/oOoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 'Ò00000' (Ljava/awt/Color;)V 

        .stack same 
L15:    return 
L16:    
    .end code 
.end method 

.method public getVentCoreColor : ()Ljava/awt/Color; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship ventingAnimation [u997] 
L4:     ifnull L15 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/entities/Ship ventingAnimation [u997] 
L11:    invokevirtual Method com/fs/starfarer/renderers/oOoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 'Ò00000' ()Ljava/awt/Color; 
L14:    areturn 

        .stack same 
L15:    aconst_null 
L16:    areturn 
L17:    
    .end code 
.end method 

.method public getVentFringeColor : ()Ljava/awt/Color; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship ventingAnimation [u997] 
L4:     ifnull L15 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/entities/Ship ventingAnimation [u997] 
L11:    invokevirtual Method [c877] 'super' ()Ljava/awt/Color; 
L14:    areturn 

        .stack same 
L15:    aconst_null 
L16:    areturn 
L17:    
    .end code 
.end method 

.method public setFluxVentTextureSheet : (Ljava/lang/String;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship ventingAnimation [u997] 
L4:     ifnull L15 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/entities/Ship ventingAnimation [u997] 
L11:    aload_1 
L12:    invokevirtual Method [c877] 'super' (Ljava/lang/String;)V 

        .stack same 
L15:    return 
L16:    
    .end code 
.end method 

.method public getFluxVentTextureSheet : ()Ljava/lang/String; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship ventingAnimation [u997] 
L4:     ifnull L15 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/entities/Ship ventingAnimation [u997] 
L11:    invokevirtual Method [c877] String ()Ljava/lang/String; 
L14:    areturn 

        .stack same 
L15:    aconst_null 
L16:    areturn 
L17:    
    .end code 
.end method 

.method public getMutableStats : [u1691] 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship stats Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public getDisplayNameForTask : ()Ljava/lang/String; 
    .code stack 3 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship isFighter ()Z 
L4:     ifeq L12 
L7:     aload_0 
L8:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getFullDesignation ()Ljava/lang/String; 
L11:    areturn 

        .stack same 
L12:    new java/lang/StringBuilder 
L15:    dup 
L16:    aload_0 
L17:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getName ()Ljava/lang/String; 
L20:    invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L23:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L26:    ldc_w ' (' 
L29:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L32:    aload_0 
L33:    getfield Field com/fs/starfarer/combat/entities/Ship spec Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L36:    invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L39:    invokevirtual Method com/fs/starfarer/loading/specs/g getHullName ()Ljava/lang/String; 
L42:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L45:    ldc_w '-class)' 
L48:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L51:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L54:    areturn 
L55:    
    .end code 
.end method 

.method public getAllWeapons : ()Ljava/util/List; 
    .signature ()Ljava/util/List<Lcom/fs/starfarer/api/combat/WeaponAPI;>; 
    .code stack 2 locals 4 
L0:     new java/util/ArrayList 
L3:     dup 
L4:     invokespecial Method java/util/ArrayList <init> ()V 
L7:     astore_1 
L8:     aload_0 
L9:     getfield Field com/fs/starfarer/combat/entities/Ship modules Ljava/util/List; 
L12:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L17:    astore_3 
L18:    goto L49 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L21:    aload_3 
L22:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L27:    checkcast com/fs/starfarer/combat/entities/ship/A/OooO 
L30:    astore_2 
L31:    aload_2 
L32:    instanceof com/fs/starfarer/api/combat/WeaponAPI 
L35:    ifeq L49 
L38:    aload_1 
L39:    aload_2 
L40:    checkcast com/fs/starfarer/api/combat/WeaponAPI 
L43:    invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L48:    pop 

        .stack same 
L49:    aload_3 
L50:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L55:    ifne L21 
L58:    aload_1 
L59:    areturn 
L60:    
    .end code 
.end method 

.method public getUsableWeapons : ()Ljava/util/List; 
    .signature ()Ljava/util/List<Lcom/fs/starfarer/api/combat/WeaponAPI;>; 
    .code stack 2 locals 6 
L0:     new java/util/ArrayList 
L3:     dup 
L4:     invokespecial Method java/util/ArrayList <init> ()V 
L7:     astore_1 
L8:     aload_0 
L9:     getfield Field com/fs/starfarer/combat/entities/Ship groups Ljava/util/List; 
L12:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L17:    astore_3 
L18:    goto L76 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L21:    aload_3 
L22:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L27:    checkcast com/fs/starfarer/combat/systems/WeaponGroup 
L30:    astore_2 
L31:    aload_2 
L32:    invokevirtual Method com/fs/starfarer/combat/systems/WeaponGroup getWeapons ()Ljava/util/List; 
L35:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L40:    astore 5 
L42:    goto L66 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object java/util/List Object com/fs/starfarer/combat/systems/WeaponGroup Object java/util/Iterator Top Object java/util/Iterator 
            stack 
        .end stack 
L45:    aload 5 
L47:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L52:    checkcast com/fs/starfarer/combat/systems/o00O 
L55:    astore 4 
L57:    aload_1 
L58:    aload 4 
L60:    invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L65:    pop 

        .stack same 
L66:    aload 5 
L68:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L73:    ifne L45 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L76:    aload_3 
L77:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L82:    ifne L21 
L85:    aload_1 
L86:    areturn 
L87:    
    .end code 
.end method 

.method public setWeaponGlow : (FLjava/awt/Color;Ljava/util/EnumSet;)V 
    .signature (FLjava/awt/Color;Ljava/util/EnumSet<Lcom/fs/starfarer/api/combat/WeaponAPI$WeaponType;>;)V 
    .code stack 3 locals 7 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship modules Ljava/util/List; 
L4:     invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L9:     astore 5 
L11:    goto L64 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Object java/awt/Color Object java/util/EnumSet Top Object java/util/Iterator 
            stack 
        .end stack 
L14:    aload 5 
L16:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L21:    checkcast com/fs/starfarer/combat/entities/ship/A/OooO 
L24:    astore 4 
L26:    aload 4 
L28:    instanceof com/fs/starfarer/combat/systems/o00O 
L31:    ifeq L64 
L34:    aload 4 
L36:    checkcast com/fs/starfarer/combat/systems/o00O 
L39:    astore 6 
L41:    aload_3 
L42:    aload 6 
L44:    invokeinterface InterfaceMethod com/fs/starfarer/combat/systems/o00O getType ()Lcom/fs/starfarer/api/combat/WeaponAPI$WeaponType; 1 
L49:    invokevirtual Method java/util/EnumSet contains (Ljava/lang/Object;)Z 
L52:    ifeq L64 
L55:    aload 6 
L57:    fload_1 
L58:    aload_2 
L59:    invokeinterface InterfaceMethod com/fs/starfarer/combat/systems/o00O setGlowAmount (FLjava/awt/Color;)V 3 

        .stack same 
L64:    aload 5 
L66:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L71:    ifne L14 
L74:    return 
L75:    
    .end code 
.end method 

.method public isShip : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship isFighter ()Z 
L4:     ifeq L11 
L7:     iconst_0 
L8:     goto L12 

        .stack same 
L11:    iconst_1 

        .stack stack_1 Integer 
L12:    ireturn 
L13:    
    .end code 
.end method 

.method public getDecalRenderer : ()Lcom/fs/starfarer/renderers/damage/String; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship decalRenderer Lcom/fs/starfarer/renderers/damage/String; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public isInsideNebula : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship isInsideNebula Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public setInsideNebula : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship isInsideNebula Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public isAffectedByNebula : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship affectedByNebula Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public setAffectedByNebula : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship affectedByNebula Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public afterCollidingWith : (Lcom/fs/starfarer/combat/E/B;F)V 
    .code stack 3 locals 3 
L0:     aload_0 
L1:     aload_1 
L2:     fload_2 
L3:     invokespecial Method com/fs/starfarer/combat/entities/BaseEntity afterCollidingWith (Lcom/fs/starfarer/combat/E/B;F)V 
L6:     aload_0 
L7:     getfield Field com/fs/starfarer/combat/entities/Ship system Lcom/fs/starfarer/combat/systems/F; 
L10:    ifnull L22 
L13:    aload_0 
L14:    getfield Field com/fs/starfarer/combat/entities/Ship system Lcom/fs/starfarer/combat/systems/F; 
L17:    aload_1 
L18:    fload_2 
L19:    invokevirtual Method com/fs/starfarer/combat/systems/F notifyAfterCollision (Lcom/fs/starfarer/combat/E/B;F)V 

        .stack same 
L22:    aload_0 
L23:    getfield Field com/fs/starfarer/combat/entities/Ship phaseCloak Lcom/fs/starfarer/combat/systems/F; 
L26:    ifnull L38 
L29:    aload_0 
L30:    getfield Field com/fs/starfarer/combat/entities/Ship phaseCloak Lcom/fs/starfarer/combat/systems/F; 
L33:    aload_1 
L34:    fload_2 
L35:    invokevirtual Method com/fs/starfarer/combat/systems/F notifyAfterCollision (Lcom/fs/starfarer/combat/E/B;F)V 

        .stack same 
L38:    aload_0 
L39:    getfield Field com/fs/starfarer/combat/entities/Ship travelDrive Lcom/fs/starfarer/combat/systems/F; 
L42:    ifnull L54 
L45:    aload_0 
L46:    getfield Field com/fs/starfarer/combat/entities/Ship travelDrive Lcom/fs/starfarer/combat/systems/F; 
L49:    aload_1 
L50:    fload_2 
L51:    invokevirtual Method com/fs/starfarer/combat/systems/F notifyAfterCollision (Lcom/fs/starfarer/combat/E/B;F)V 

        .stack same 
L54:    return 
L55:    
    .end code 
.end method 

.method public beforeCollidingWith : (Lcom/fs/starfarer/combat/E/B;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     invokespecial Method com/fs/starfarer/combat/entities/BaseEntity beforeCollidingWith (Lcom/fs/starfarer/combat/E/B;)V 
L5:     aload_0 
L6:     getfield Field com/fs/starfarer/combat/entities/Ship system Lcom/fs/starfarer/combat/systems/F; 
L9:     ifnull L20 
L12:    aload_0 
L13:    getfield Field com/fs/starfarer/combat/entities/Ship system Lcom/fs/starfarer/combat/systems/F; 
L16:    aload_1 
L17:    invokevirtual Method com/fs/starfarer/combat/systems/F notifyBeforeCollision (Lcom/fs/starfarer/combat/E/B;)V 

        .stack same 
L20:    aload_0 
L21:    getfield Field com/fs/starfarer/combat/entities/Ship phaseCloak Lcom/fs/starfarer/combat/systems/F; 
L24:    ifnull L35 
L27:    aload_0 
L28:    getfield Field com/fs/starfarer/combat/entities/Ship phaseCloak Lcom/fs/starfarer/combat/systems/F; 
L31:    aload_1 
L32:    invokevirtual Method com/fs/starfarer/combat/systems/F notifyBeforeCollision (Lcom/fs/starfarer/combat/E/B;)V 

        .stack same 
L35:    aload_0 
L36:    getfield Field com/fs/starfarer/combat/entities/Ship travelDrive Lcom/fs/starfarer/combat/systems/F; 
L39:    ifnull L50 
L42:    aload_0 
L43:    getfield Field com/fs/starfarer/combat/entities/Ship travelDrive Lcom/fs/starfarer/combat/systems/F; 
L46:    aload_1 
L47:    invokevirtual Method com/fs/starfarer/combat/systems/F notifyBeforeCollision (Lcom/fs/starfarer/combat/E/B;)V 

        .stack same 
L50:    return 
L51:    
    .end code 
.end method 

.method public getHardFluxLevel : ()F 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L4:     invokevirtual Method com/fs/starfarer/combat/entities/ship/D getMinFlux ()F 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L11:    invokevirtual Method com/fs/starfarer/combat/entities/ship/D getMaxFlux ()F 
L14:    fdiv 
L15:    freturn 
L16:    
    .end code 
.end method 

.method public getEntity : ()Lcom/fs/starfarer/combat/E/B; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     areturn 
L2:     
    .end code 
.end method 

.method public getHullSpec : ()Lcom/fs/starfarer/loading/specs/g; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getSpec [u632] 
L4:     invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L7:     areturn 
L8:     
    .end code 
.end method 

.method public getVariant : [u632] 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getSpec [u632] 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public cloneVariant : ()V 
    .code stack 4 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship spec Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L4:     ifnull L40 
L7:     aload_0 
L8:     aload_0 
L9:     getfield Field com/fs/starfarer/combat/entities/Ship spec Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L12:    invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec clone [u632] 
L15:    putfield Field com/fs/starfarer/combat/entities/Ship spec Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L18:    aload_0 
L19:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getFleetMember ()Lcom/fs/starfarer/api/fleet/FleetMemberAPI; 
L22:    ifnull L40 
L25:    aload_0 
L26:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getFleetMember ()Lcom/fs/starfarer/api/fleet/FleetMemberAPI; 
L29:    aload_0 
L30:    getfield Field com/fs/starfarer/combat/entities/Ship spec Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L33:    iconst_0 
L34:    iconst_0 
L35:    invokeinterface InterfaceMethod com/fs/starfarer/api/fleet/FleetMemberAPI setVariant (Lcom/fs/starfarer/api/combat/ShipVariantAPI;ZZ)V 4 

        .stack same 
L40:    return 
L41:    
    .end code 
.end method 

.method public setVariantForHullmodCheckOnly : (Lcom/fs/starfarer/api/combat/ShipVariantAPI;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     checkcast com/fs/starfarer/loading/specs/HullVariantSpec 
L5:     putfield Field com/fs/starfarer/combat/entities/Ship spec Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L8:     return 
L9:     
    .end code 
.end method 

.method public useSystem : ()V 
    .code stack 5 locals 1 
L0:     aload_0 
L1:     new com/fs/starfarer/combat/entities/Ship$Oo 
L4:     dup 
L5:     getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'Õ00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L8:     aconst_null 
L9:     invokespecial Method com/fs/starfarer/combat/entities/Ship$Oo <init> (Lcom/fs/starfarer/combat/entities/Ship$oo;Ljava/lang/Object;)V 
L12:    invokevirtual Method com/fs/starfarer/combat/entities/Ship giveCommand (Lcom/fs/starfarer/combat/entities/Ship$Oo;)V 
L15:    return 
L16:    
    .end code 
.end method 

.method public toggleTravelDrive : ()V 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship travelDrive Lcom/fs/starfarer/combat/systems/F; 
L4:     ifnull L28 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/entities/Ship travelDrive Lcom/fs/starfarer/combat/systems/F; 
L11:    invokevirtual Method com/fs/starfarer/combat/systems/F isOn ()Z 
L14:    ifeq L24 
L17:    aload_0 
L18:    invokevirtual Method com/fs/starfarer/combat/entities/Ship turnOffTravelDrive ()V 
L21:    goto L28 

        .stack same 
L24:    aload_0 
L25:    invokevirtual Method com/fs/starfarer/combat/entities/Ship turnOnTravelDrive ()V 

        .stack same 
L28:    return 
L29:    
    .end code 
.end method 

.method public getWingMembers : ()Ljava/util/List; 
    .signature ()Ljava/util/List<Lcom/fs/starfarer/api/combat/ShipAPI;>; 
    .code stack 3 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship wing Lcom/fs/starfarer/combat/ai/M; 
L4:     ifnull L22 
L7:     new java/util/ArrayList 
L10:    dup 
L11:    aload_0 
L12:    getfield Field com/fs/starfarer/combat/entities/Ship wing Lcom/fs/starfarer/combat/ai/M; 
L15:    invokevirtual Method com/fs/starfarer/combat/ai/M getMembers ()Ljava/util/List; 
L18:    invokespecial Method java/util/ArrayList <init> (Ljava/util/Collection;)V 
L21:    areturn 

        .stack same 
L22:    aconst_null 
L23:    areturn 
L24:    
    .end code 
.end method 

.method public getWingToken : ()Ljava/lang/Object; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship wing Lcom/fs/starfarer/combat/ai/M; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public losesCRDuringCombat : ()Z 
    .code stack 2 locals 3 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L4:     astore_1 
L5:     aload_0 
L6:     getfield Field com/fs/starfarer/combat/entities/Ship stats Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L9:     invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getPeakCRDuration ()Lcom/fs/starfarer/api/combat/StatBonus; 
L12:    aload_1 
L13:    invokevirtual Method com/fs/starfarer/loading/specs/g getNoCRLossSeconds ()F 
L16:    invokevirtual Method com/fs/starfarer/api/combat/StatBonus computeEffective (F)F 
L19:    fstore_2 
L20:    fload_2 
L21:    ldc_w +100000.0f 
L24:    fcmpg 
L25:    ifge L30 
L28:    iconst_1 
L29:    ireturn 

        .stack append Object com/fs/starfarer/loading/specs/g Float 
L30:    iconst_0 
L31:    ireturn 
L32:    
    .end code 
.end method 

.method public setControlsLocked : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship controlsLocked Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public controlsLocked : ()Z 
    .code stack 2 locals 3 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship controlsLocked Z 
L4:     ifeq L9 
L7:     iconst_1 
L8:     ireturn 

        .stack same 
L9:     aload_0 
L10:    getfield Field com/fs/starfarer/combat/entities/Ship controlsNotLocked Z 
L13:    ifeq L18 
L16:    iconst_0 
L17:    ireturn 

        .stack same 
L18:    ldc_w 'noDeployCRPercent' 
L21:    invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'ö00000' (Ljava/lang/String;)F 
L24:    ldc_w +0.009999999776482582f 
L27:    fmul 
L28:    fstore_1 
L29:    aload_0 
L30:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getCRAtDeployment ()F 
L33:    fload_1 
L34:    fcmpg 
L35:    ifge L42 
L38:    iconst_1 
L39:    goto L43 

        .stack append Float 
L42:    iconst_0 

        .stack stack_1 Integer 
L43:    istore_2 
L44:    aload_0 
L45:    invokevirtual Method com/fs/starfarer/combat/entities/Ship isFighter ()Z 
L48:    ifeq L76 
L51:    aload_0 
L52:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getWing ()Lcom/fs/starfarer/combat/ai/M; 
L55:    ifnull L76 
L58:    aload_0 
L59:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getWing ()Lcom/fs/starfarer/combat/ai/M; 
L62:    invokevirtual Method com/fs/starfarer/combat/ai/M getLaunchCR ()F 
L65:    fload_1 
L66:    fcmpg 
L67:    ifge L74 
L70:    iconst_1 
L71:    goto L75 

        .stack append Integer 
L74:    iconst_0 

        .stack stack_1 Integer 
L75:    istore_2 

        .stack same 
L76:    invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L79:    invokevirtual Method com/fs/starfarer/combat/CombatEngine isSimulation ()Z 
L82:    ifne L103 
L85:    aload_0 
L86:    iload_2 
L87:    putfield Field com/fs/starfarer/combat/entities/Ship controlsLocked Z 
L90:    aload_0 
L91:    iload_2 
L92:    ifeq L99 
L95:    iconst_0 
L96:    goto L100 

        .stack stack_1 Object com/fs/starfarer/combat/entities/Ship 
L99:    iconst_1 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Integer 
            stack Object com/fs/starfarer/combat/entities/Ship Integer 
        .end stack 
L100:   putfield Field com/fs/starfarer/combat/entities/Ship controlsNotLocked Z 

        .stack same 
L103:   iload_2 
L104:   ifeq L118 
L107:   invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L110:   invokevirtual Method com/fs/starfarer/combat/CombatEngine isSimulation ()Z 
L113:   ifne L118 
L116:   iconst_1 
L117:   ireturn 

        .stack same 
L118:   iconst_0 
L119:   ireturn 
L120:   
    .end code 
.end method 

.method public notifyWeaponDisabled : (Lcom/fs/starfarer/combat/systems/o00O;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship disabledWeapons Ljava/util/Set; 
L4:     aload_1 
L5:     invokeinterface InterfaceMethod java/util/Set add (Ljava/lang/Object;)Z 2 
L10:    pop 
L11:    return 
L12:    
    .end code 
.end method 

.method public getDisabledWeapons : ()Ljava/util/Set; 
    .signature ()Ljava/util/Set<Lcom/fs/starfarer/api/combat/WeaponAPI;>; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship disabledWeapons Ljava/util/Set; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public isDefenseDisabled : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship defenseDisabled Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public setDefenseDisabled : (Z)V 
    .code stack 3 locals 2 
L0:     iload_1 
L1:     ifeq L69 
L4:     aload_0 
L5:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getShield ()Lcom/fs/starfarer/combat/systems/G; 
L8:     ifnull L28 
L11:    aload_0 
L12:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getShield ()Lcom/fs/starfarer/combat/systems/G; 
L15:    invokevirtual Method com/fs/starfarer/combat/systems/G isOn ()Z 
L18:    ifeq L28 
L21:    aload_0 
L22:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getShield ()Lcom/fs/starfarer/combat/systems/G; 
L25:    invokevirtual Method com/fs/starfarer/combat/systems/G toggleOff ()V 

        .stack same 
L28:    aload_0 
L29:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getPhaseCloak ()Lcom/fs/starfarer/combat/systems/F; 
L32:    ifnull L69 
L35:    aload_0 
L36:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getPhaseCloak ()Lcom/fs/starfarer/combat/systems/F; 
L39:    invokevirtual Method com/fs/starfarer/combat/systems/F isOn ()Z 
L42:    ifeq L69 
L45:    aload_0 
L46:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getPhaseCloak ()Lcom/fs/starfarer/combat/systems/F; 
L49:    invokevirtual Method com/fs/starfarer/combat/systems/F getChargeTracker ()Lcom/fs/starfarer/combat/systems/super; 
L52:    iconst_0 
L53:    fconst_0 
L54:    invokevirtual Method com/fs/starfarer/combat/systems/super o00000 (ZF)V 
L57:    aload_0 
L58:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getPhaseCloak ()Lcom/fs/starfarer/combat/systems/F; 
L61:    invokevirtual Method com/fs/starfarer/combat/systems/F getChargeTracker ()Lcom/fs/starfarer/combat/systems/super; 
L64:    iconst_1 
L65:    fconst_0 
L66:    invokevirtual Method com/fs/starfarer/combat/systems/super o00000 (ZF)V 

        .stack same 
L69:    aload_0 
L70:    iload_1 
L71:    putfield Field com/fs/starfarer/combat/entities/Ship defenseDisabled Z 
L74:    return 
L75:    
    .end code 
.end method 

.method public isWeaponsActiveThisFrame : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship weaponActiveThisFrame Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public getNumFlameouts : ()I 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship numFlameouts I 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public notifyFlameout : ()V 
    .code stack 3 locals 1 
L0:     aload_0 
L1:     dup 
L2:     getfield Field com/fs/starfarer/combat/entities/Ship numFlameouts I 
L5:     iconst_1 
L6:     iadd 
L7:     putfield Field com/fs/starfarer/combat/entities/Ship numFlameouts I 
L10:    return 
L11:    
    .end code 
.end method 

.method public setShipSystemDisabled : (Z)V 
    .code stack 2 locals 3 
L0:     iload_1 
L1:     ifeq L50 
L4:     aload_0 
L5:     getfield Field com/fs/starfarer/combat/entities/Ship systemDisabled Z 
L8:     ifne L50 
L11:    aload_0 
L12:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getSystem ()Lcom/fs/starfarer/combat/systems/F; 
L15:    ifnull L50 
L18:    aload_0 
L19:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getSystem ()Lcom/fs/starfarer/combat/systems/F; 
L22:    invokevirtual Method com/fs/starfarer/combat/systems/F getChargeTracker ()Lcom/fs/starfarer/combat/systems/super; 
L25:    invokevirtual Method com/fs/starfarer/combat/systems/super new ()V 
L28:    aload_0 
L29:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getSystem ()Lcom/fs/starfarer/combat/systems/F; 
L32:    instanceof com/fs/starfarer/combat/systems/oO0O 
L35:    ifeq L50 
L38:    aload_0 
L39:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getSystem ()Lcom/fs/starfarer/combat/systems/F; 
L42:    checkcast com/fs/starfarer/combat/systems/oO0O 
L45:    astore_2 
L46:    aload_2 
L47:    invokevirtual Method com/fs/starfarer/combat/systems/oO0O setRecall ()V 

        .stack same 
L50:    aload_0 
L51:    iload_1 
L52:    putfield Field com/fs/starfarer/combat/entities/Ship systemDisabled Z 
L55:    return 
L56:    
    .end code 
.end method 

.method public isShipSystemDisabled : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship systemDisabled Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public giveCommand : (Lcom/fs/starfarer/api/combat/ShipCommand;Ljava/lang/Object;I)V 
    .code stack 5 locals 6 
L0:     aconst_null 
L1:     astore 4 
L3:     invokestatic Method com/fs/starfarer/combat/entities/Ship $SWITCH_TABLE$com$fs$starfarer$api$combat$ShipCommand ()[I 
L6:     aload_1 
L7:     invokevirtual Method com/fs/starfarer/api/combat/ShipCommand ordinal ()I 
L10:    iaload 
L11:    tableswitch 1 
            L176 
            L184 
            L144 
            L152 
            L88 
            L96 
            L104 
            L136 
            L192 
            L160 
            L112 
            L208 
            L168 
            L120 
            L128 
            L200 
            default : L213 


        .stack append Object com/fs/starfarer/combat/entities/Ship$oo 
L88:    getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'this.super' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L91:    astore 4 
L93:    goto L213 

        .stack same 
L96:    getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'ö00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L99:    astore 4 
L101:   goto L213 

        .stack same 
L104:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'Ò00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L107:   astore 4 
L109:   goto L213 

        .stack same 
L112:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'Ø00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L115:   astore 4 
L117:   goto L213 

        .stack same 
L120:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'ÒO0000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L123:   astore 4 
L125:   goto L213 

        .stack same 
L128:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'public' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L131:   astore 4 
L133:   goto L213 

        .stack same 
L136:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'ô00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L139:   astore 4 
L141:   goto L213 

        .stack same 
L144:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'ÕO0000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L147:   astore 4 
L149:   goto L213 

        .stack same 
L152:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo o00000 Lcom/fs/starfarer/combat/entities/Ship$oo; 
L155:   astore 4 
L157:   goto L213 

        .stack same 
L160:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo int Lcom/fs/starfarer/combat/entities/Ship$oo; 
L163:   astore 4 
L165:   goto L213 

        .stack same 
L168:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'ØO0000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L171:   astore 4 
L173:   goto L213 

        .stack same 
L176:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo for Lcom/fs/starfarer/combat/entities/Ship$oo; 
L179:   astore 4 
L181:   goto L213 

        .stack same 
L184:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo return Lcom/fs/starfarer/combat/entities/Ship$oo; 
L187:   astore 4 
L189:   goto L213 

        .stack same 
L192:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo oO0000 Lcom/fs/starfarer/combat/entities/Ship$oo; 
L195:   astore 4 
L197:   goto L213 

        .stack same 
L200:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'Õ00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L203:   astore 4 
L205:   goto L213 

        .stack same 
L208:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'ø00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L211:   astore 4 

        .stack same 
L213:   aload 4 
L215:   ifnonnull L219 
L218:   return 

        .stack same 
L219:   new com/fs/starfarer/combat/entities/Ship$Oo 
L222:   dup 
L223:   aload 4 
L225:   aload_2 
L226:   iload_3 
L227:   invokespecial Method com/fs/starfarer/combat/entities/Ship$Oo <init> (Lcom/fs/starfarer/combat/entities/Ship$oo;Ljava/lang/Object;I)V 
L230:   astore 5 
L232:   aload_0 
L233:   aload 5 
L235:   invokevirtual Method com/fs/starfarer/combat/entities/Ship giveCommand (Lcom/fs/starfarer/combat/entities/Ship$Oo;)V 
L238:   return 
L239:   
    .end code 
.end method 

.method public getDeployCost : ()F 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getStats ()Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L4:     invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getCRPerDeploymentPercent ()Lcom/fs/starfarer/api/combat/StatBonus; 
L7:     aload_0 
L8:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L11:    invokevirtual Method com/fs/starfarer/loading/specs/g getCRToDeploy ()F 
L14:    invokevirtual Method com/fs/starfarer/api/combat/StatBonus computeEffective (F)F 
L17:    ldc_w +100.0f 
L20:    fdiv 
L21:    fstore_1 
L22:    aload_0 
L23:    invokevirtual Method com/fs/starfarer/combat/entities/Ship isFighter ()Z 
L26:    ifeq L50 
L29:    aload_0 
L30:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getWing ()Lcom/fs/starfarer/combat/ai/M; 
L33:    ifnull L50 
L36:    fload_1 
L37:    aload_0 
L38:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getWing ()Lcom/fs/starfarer/combat/ai/M; 
L41:    invokevirtual Method com/fs/starfarer/combat/ai/M getSpec ()Lcom/fs/starfarer/loading/specs/FighterWingSpec; 
L44:    invokevirtual Method com/fs/starfarer/loading/specs/FighterWingSpec getNumFighters ()I 
L47:    i2f 
L48:    fmul 
L49:    fstore_1 

        .stack append Float 
L50:    fload_1 
L51:    freturn 
L52:    
    .end code 
.end method 

.method public resetDefaultAI : ()V 
    .code stack 5 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship isFighter ()Z 
L4:     ifeq L26 
L7:     aload_0 
L8:     new com/fs/starfarer/combat/ai/FighterAI 
L11:    dup 
L12:    aload_0 
L13:    aload_0 
L14:    getfield Field com/fs/starfarer/combat/entities/Ship wing Lcom/fs/starfarer/combat/ai/M; 
L17:    invokespecial Method com/fs/starfarer/combat/ai/FighterAI <init> (Lcom/fs/starfarer/combat/entities/Ship;Lcom/fs/starfarer/combat/ai/M;)V 
L20:    invokevirtual Method com/fs/starfarer/combat/entities/Ship setAI (Lcom/fs/starfarer/combat/ai/AI;)V 
L23:    goto L38 

        .stack same 
L26:    aload_0 
L27:    new com/fs/starfarer/combat/ai/BasicShipAI 
L30:    dup 
L31:    aload_0 
L32:    invokespecial Method com/fs/starfarer/combat/ai/BasicShipAI <init> (Lcom/fs/starfarer/combat/entities/Ship;)V 
L35:    invokevirtual Method com/fs/starfarer/combat/entities/Ship setAI (Lcom/fs/starfarer/combat/ai/AI;)V 

        .stack same 
L38:    return 
L39:    
    .end code 
.end method 

.method public getShipAI : ()Lcom/fs/starfarer/api/combat/ShipAIPlugin; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getAI ()Lcom/fs/starfarer/combat/ai/AI; 
L4:     instanceof com/fs/starfarer/api/combat/ShipAIPlugin 
L7:     ifeq L18 
L10:    aload_0 
L11:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getAI ()Lcom/fs/starfarer/combat/ai/AI; 
L14:    checkcast com/fs/starfarer/api/combat/ShipAIPlugin 
L17:    areturn 

        .stack same 
L18:    aconst_null 
L19:    areturn 
L20:    
    .end code 
.end method 

.method public setShipAI : (Lcom/fs/starfarer/api/combat/ShipAIPlugin;)V 
    .code stack 4 locals 2 
L0:     aload_1 
L1:     instanceof com/fs/starfarer/combat/ai/AI 
L4:     ifeq L18 
L7:     aload_0 
L8:     aload_1 
L9:     checkcast com/fs/starfarer/combat/ai/AI 
L12:    invokevirtual Method com/fs/starfarer/combat/entities/Ship setAI (Lcom/fs/starfarer/combat/ai/AI;)V 
L15:    goto L46 

        .stack same 
L18:    aload_1 
L19:    ifnull L37 
L22:    aload_0 
L23:    new com/fs/starfarer/combat/entities/Ship$ShipAIWrapper 
L26:    dup 
L27:    aload_1 
L28:    invokespecial Method com/fs/starfarer/combat/entities/Ship$ShipAIWrapper <init> (Lcom/fs/starfarer/api/combat/ShipAIPlugin;)V 
L31:    invokevirtual Method com/fs/starfarer/combat/entities/Ship setAI (Lcom/fs/starfarer/combat/ai/AI;)V 
L34:    goto L46 

        .stack same 
L37:    aload_1 
L38:    ifnonnull L46 
L41:    aload_0 
L42:    aconst_null 
L43:    invokevirtual Method com/fs/starfarer/combat/entities/Ship setAI (Lcom/fs/starfarer/combat/ai/AI;)V 

        .stack same 
L46:    return 
L47:    
    .end code 
.end method 

.method public setDefaultAI : (Lcom/fs/starfarer/api/fleet/FleetMemberAPI;)V 
    .code stack 4 locals 2 
L0:     aload_0 
L1:     invokestatic Method com/fs/starfarer/launcher/ModManager getInstance ()Lcom/fs/starfarer/launcher/ModManager; 
L4:     aload_1 
L5:     checkcast com/fs/starfarer/campaign/fleet/FleetMember 
L8:     aload_0 
L9:     invokevirtual Method com/fs/starfarer/launcher/ModManager pickShipAIPlugin (Lcom/fs/starfarer/campaign/fleet/FleetMember;Lcom/fs/starfarer/api/combat/ShipAPI;)Lcom/fs/starfarer/api/combat/ShipAIPlugin; 
L12:    invokevirtual Method com/fs/starfarer/combat/entities/Ship setShipAI (Lcom/fs/starfarer/api/combat/ShipAIPlugin;)V 
L15:    return 
L16:    
    .end code 
.end method 

.method public applyCriticalMalfunction : (Ljava/lang/Object;)V 
    .code stack 3 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     iconst_1 
L3:     invokevirtual Method com/fs/starfarer/combat/entities/Ship applyCriticalMalfunction (Ljava/lang/Object;Z)V 
L6:     return 
L7:     
    .end code 
.end method 

.method public applyCriticalMalfunction : (Ljava/lang/Object;Z)V 
    .code stack 10 locals 5 
L0:     aconst_null 
L1:     astore_3 
L2:     aload_1 
L3:     instanceof com/fs/starfarer/api/combat/WeaponAPI 
L6:     ifeq L66 
L9:     aload_1 
L10:    checkcast com/fs/starfarer/api/combat/WeaponAPI 
L13:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/WeaponAPI getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L18:    astore_3 
L19:    aload_1 
L20:    checkcast com/fs/starfarer/api/combat/WeaponAPI 
L23:    iload_2 
L24:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/WeaponAPI disable (Z)V 2 
L29:    iload_2 
L30:    ifeq L115 
L33:    aload_1 
L34:    checkcast com/fs/starfarer/api/combat/WeaponAPI 
L37:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/WeaponAPI usesAmmo ()Z 1 
L42:    ifeq L55 
L45:    aload_1 
L46:    checkcast com/fs/starfarer/api/combat/WeaponAPI 
L49:    iconst_0 
L50:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/WeaponAPI setAmmo (I)V 2 

        .stack append Object org/lwjgl/util/vector/Vector2f 
L55:    aload_0 
L56:    aload_1 
L57:    checkcast com/fs/starfarer/api/combat/WeaponAPI 
L60:    invokevirtual Method com/fs/starfarer/combat/entities/Ship removeWeaponFromGroups (Lcom/fs/starfarer/api/combat/WeaponAPI;)V 
L63:    goto L115 

        .stack same 
L66:    aload_1 
L67:    instanceof com/fs/starfarer/api/combat/ShipEngineControllerAPI$ShipEngineAPI 
L70:    ifeq L115 
L73:    aload_1 
L74:    checkcast com/fs/starfarer/api/combat/ShipEngineControllerAPI$ShipEngineAPI 
L77:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ShipEngineControllerAPI$ShipEngineAPI getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L82:    astore_3 
L83:    aload_1 
L84:    checkcast com/fs/starfarer/api/combat/ShipEngineControllerAPI$ShipEngineAPI 
L87:    iload_2 
L88:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ShipEngineControllerAPI$ShipEngineAPI disable (Z)V 2 
L93:    iload_2 
L94:    ifeq L115 
L97:    aload_0 
L98:    dup 
L99:    getfield Field com/fs/starfarer/combat/entities/Ship engineFractionPermanentlyDisabled F 
L102:   aload_1 
L103:   checkcast com/fs/starfarer/api/combat/ShipEngineControllerAPI$ShipEngineAPI 
L106:   invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ShipEngineControllerAPI$ShipEngineAPI getContribution ()F 1 
L111:   fadd 
L112:   putfield Field com/fs/starfarer/combat/entities/Ship engineFractionPermanentlyDisabled F 

        .stack same 
L115:   aload_3 
L116:   ifnonnull L120 
L119:   return 

        .stack same 
L120:   aload_0 
L121:   getfield Field com/fs/starfarer/combat/entities/Ship baseCriticalMalfunctionDamage F 
L124:   ldc_w +0.75f 
L127:   invokestatic Method java/lang/Math random ()D 
L130:   d2f 
L131:   ldc_w +0.5f 
L134:   fmul 
L135:   fadd 
L136:   fmul 
L137:   fstore 4 
L139:   aload_0 
L140:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getStats ()Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L143:   invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getCriticalMalfunctionDamageMod ()Lcom/fs/starfarer/api/combat/StatBonus; 
L146:   fload 4 
L148:   invokevirtual Method com/fs/starfarer/api/combat/StatBonus computeEffective (F)F 
L151:   fstore 4 
L153:   aload_0 
L154:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getHitpoints ()F 
L157:   fload 4 
L159:   fcmpg 
L160:   ifgt L190 
L163:   invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L166:   aload_0 
L167:   aload_3 
L168:   aload_0 
L169:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getMaxHitpoints ()F 
L172:   ldc_w +10.0f 
L175:   fmul 
L176:   getstatic Field com/fs/starfarer/api/combat/DamageType ENERGY Lcom/fs/starfarer/api/combat/DamageType; 
L179:   fconst_0 
L180:   iconst_1 
L181:   iconst_0 
L182:   aload_0 
L183:   iconst_0 
L184:   invokevirtual Method com/fs/starfarer/combat/CombatEngine applyDamage (Lcom/fs/starfarer/api/combat/CombatEntityAPI;Lorg/lwjgl/util/vector/Vector2f;FLcom/fs/starfarer/api/combat/DamageType;FZZLjava/lang/Object;Z)V 
L187:   goto L264 

        .stack append Float 
L190:   invokestatic Method java/lang/Math random ()D 
L193:   d2f 
L194:   ldc_w +0.25f 
L197:   fcmpl 
L198:   ifle L246 
L201:   invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L204:   aload_3 
L205:   fload 4 
L207:   new java/awt/Color 
L210:   dup 
L211:   sipush 255 
L214:   bipush 50 
L216:   iconst_0 
L217:   sipush 220 
L220:   invokespecial Method java/awt/Color <init> (IIII)V 
L223:   aload_0 
L224:   aload_0 
L225:   invokevirtual Method com/fs/starfarer/combat/CombatEngine addFloatingDamageText (Lorg/lwjgl/util/vector/Vector2f;FLjava/awt/Color;Lcom/fs/starfarer/api/combat/CombatEntityAPI;Lcom/fs/starfarer/api/combat/CombatEntityAPI;)V 
L228:   aload_0 
L229:   fconst_0 
L230:   aload_0 
L231:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getHitpoints ()F 
L234:   fload 4 
L236:   fsub 
L237:   invokestatic Method java/lang/Math max (FF)F 
L240:   invokevirtual Method com/fs/starfarer/combat/entities/Ship setHitpoints (F)V 
L243:   goto L264 

        .stack same 
L246:   invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L249:   aload_0 
L250:   aload_3 
L251:   fload 4 
L253:   getstatic Field com/fs/starfarer/api/combat/DamageType ENERGY Lcom/fs/starfarer/api/combat/DamageType; 
L256:   fconst_0 
L257:   iconst_1 
L258:   iconst_0 
L259:   aload_0 
L260:   iconst_0 
L261:   invokevirtual Method com/fs/starfarer/combat/CombatEngine applyDamage (Lcom/fs/starfarer/api/combat/CombatEntityAPI;Lorg/lwjgl/util/vector/Vector2f;FLcom/fs/starfarer/api/combat/DamageType;FZZLjava/lang/Object;Z)V 

        .stack same 
L264:   return 
L265:   
    .end code 
.end method 

.method public getBaseCriticalMalfunctionDamage : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship baseCriticalMalfunctionDamage F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method public setBaseCriticalMalfunctionDamage : (F)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     fload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship baseCriticalMalfunctionDamage F 
L5:     return 
L6:     
    .end code 
.end method 

.method public getRemainingCriticalMalfunctionAttempts : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship remainingCriticalMalfunctionAttempts F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method public setRemainingCriticalMalfunctionAttempts : (F)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     fload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship remainingCriticalMalfunctionAttempts F 
L5:     return 
L6:     
    .end code 
.end method 

.method public getEngineFractionPermanentlyDisabled : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship engineFractionPermanentlyDisabled F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method public isNonCombat : (Z)Z 
    .code stack 3 locals 10 
L0:     aload_0 
L1:     invokestatic Method com/fs/starfarer/combat/ai/OO0O 'ÓO0000' (Lcom/fs/starfarer/combat/entities/Ship;)Ljava/lang/String; 
L4:     astore_2 
L5:     iload_1 
L6:     ifeq L223 
L9:     aload_2 
L10:    ldc_w 'aggressive' 
L13:    invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L16:    ifne L29 
L19:    aload_2 
L20:    ldc_w 'reckless' 
L23:    invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L26:    ifeq L223 

        .stack append Object java/lang/String 
L29:    iconst_0 
L30:    istore_3 
L31:    aload_0 
L32:    getfield Field com/fs/starfarer/combat/entities/Ship groups Ljava/util/List; 
L35:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L40:    astore 5 
L42:    goto L144 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Integer Object java/lang/String Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L45:    aload 5 
L47:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L52:    checkcast com/fs/starfarer/combat/systems/WeaponGroup 
L55:    astore 4 
L57:    aload 4 
L59:    invokevirtual Method com/fs/starfarer/combat/systems/WeaponGroup getWeapons ()Ljava/util/List; 
L62:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L67:    astore 7 
L69:    goto L134 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Integer Object java/lang/String Integer Object com/fs/starfarer/combat/systems/WeaponGroup Object java/util/Iterator Top Object java/util/Iterator 
            stack 
        .end stack 
L72:    aload 7 
L74:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L79:    checkcast com/fs/starfarer/combat/systems/o00O 
L82:    astore 6 
L84:    aload 6 
L86:    invokeinterface InterfaceMethod com/fs/starfarer/combat/systems/o00O isDisabled ()Z 1 
L91:    ifne L134 
L94:    aload 6 
L96:    invokeinterface InterfaceMethod com/fs/starfarer/combat/systems/o00O usesAmmo ()Z 1 
L101:   ifeq L129 
L104:   aload 6 
L106:   invokeinterface InterfaceMethod com/fs/starfarer/combat/systems/o00O getAmmo ()I 1 
L111:   ifgt L129 
L114:   aload 6 
L116:   invokeinterface InterfaceMethod com/fs/starfarer/combat/systems/o00O getAmmoTracker [u2698] 1 
L121:   invokevirtual Method [c4863] getAmmoPerSecond ()F 
L124:   fconst_0 
L125:   fcmpl 
L126:   ifle L134 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Integer Object java/lang/String Integer Object com/fs/starfarer/combat/systems/WeaponGroup Object java/util/Iterator Object com/fs/starfarer/combat/systems/o00O Object java/util/Iterator 
            stack 
        .end stack 
L129:   iconst_1 
L130:   istore_3 
L131:   goto L144 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Integer Object java/lang/String Integer Object com/fs/starfarer/combat/systems/WeaponGroup Object java/util/Iterator Top Object java/util/Iterator 
            stack 
        .end stack 
L134:   aload 7 
L136:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L141:   ifne L72 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Integer Object java/lang/String Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L144:   aload 5 
L146:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L151:   ifne L45 
L154:   aload_0 
L155:   getfield Field com/fs/starfarer/combat/entities/Ship spec Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L158:   invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHints ()Ljava/util/EnumSet; 
L161:   getstatic Field com/fs/starfarer/api/combat/ShipHullSpecAPI$ShipTypeHints SHIP_WITH_MODULES Lcom/fs/starfarer/api/combat/ShipHullSpecAPI$ShipTypeHints; 
L164:   invokevirtual Method java/util/EnumSet contains (Ljava/lang/Object;)Z 
L167:   ifeq L172 
L170:   iconst_0 
L171:   ireturn 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Integer Object java/lang/String Integer 
            stack 
        .end stack 
L172:   invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L175:   aload_0 
L176:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getOriginalOwner ()I 
L179:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L182:   astore 4 
L184:   aload 4 
L186:   ifnull L213 
L189:   aload 4 
L191:   aload_0 
L192:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isAlly ()Z 
L195:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getTaskManager (Z)Lcom/fs/starfarer/combat/tasks/CombatTaskManager; 
L198:   invokevirtual Method com/fs/starfarer/combat/tasks/CombatTaskManager isFullAssault ()Z 
L201:   ifeq L213 
L204:   aload_0 
L205:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getOriginalOwner ()I 
L208:   ifeq L213 
L211:   iconst_1 
L212:   istore_3 

        .stack append Object com/fs/starfarer/combat/CombatFleetManager 
L213:   iload_3 
L214:   ifeq L221 
L217:   iconst_0 
L218:   goto L222 

        .stack same 
L221:   iconst_1 

        .stack stack_1 Integer 
L222:   ireturn 

        .stack chop 2 
L223:   iconst_0 
L224:   istore_3 
L225:   iload_1 
L226:   ifeq L380 
L229:   invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L232:   aload_0 
L233:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getOriginalOwner ()I 
L236:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L239:   astore 4 
L241:   aload 4 
L243:   ifnull L351 
L246:   aload 4 
L248:   aload_0 
L249:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getDeployedFleetMember (Lcom/fs/starfarer/combat/entities/Ship;)Lcom/fs/starfarer/combat/CombatFleetManager$O0; 
L252:   astore 5 
L254:   aload 4 
L256:   aload_0 
L257:   getfield Field com/fs/starfarer/combat/entities/Ship isAlly Z 
L260:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getTaskManager (Z)Lcom/fs/starfarer/combat/tasks/CombatTaskManager; 
L263:   astore 6 
L265:   aload 6 
L267:   ifnull L351 
L270:   aload 5 
L272:   ifnull L351 
L275:   aload 6 
L277:   aload 5 
L279:   invokevirtual Method com/fs/starfarer/combat/tasks/CombatTaskManager getOrdersForFleetMember (Lcom/fs/starfarer/combat/CombatFleetManager$O0;)Lcom/fs/starfarer/combat/tasks/Object; 
L282:   astore 7 
L284:   aload 7 
L286:   ifnull L351 
L289:   aload 7 
L291:   invokevirtual Method com/fs/starfarer/combat/tasks/Object o00000 ()Lcom/fs/starfarer/combat/tasks/Object$o; 
L294:   getstatic Field com/fs/starfarer/combat/tasks/Object$o 'Ö00000' Lcom/fs/starfarer/combat/tasks/Object$o; 
L297:   if_acmpne L351 
L300:   aload 7 
L302:   invokevirtual Method com/fs/starfarer/combat/tasks/Object 'Õ00000' ()Lcom/fs/starfarer/combat/tasks/CombatTask; 
L305:   invokevirtual Method com/fs/starfarer/combat/tasks/CombatTask 'ÓO0000' ()Lcom/fs/starfarer/combat/tasks/CombatTask$CombatTaskType; 
L308:   astore 8 
L310:   aload 8 
L312:   getstatic Field com/fs/starfarer/combat/tasks/CombatTask$CombatTaskType ENGAGE Lcom/fs/starfarer/combat/tasks/CombatTask$CombatTaskType; 
L315:   if_acmpeq L349 
L318:   aload 8 
L320:   getstatic Field com/fs/starfarer/combat/tasks/CombatTask$CombatTaskType INTERCEPT Lcom/fs/starfarer/combat/tasks/CombatTask$CombatTaskType; 
L323:   if_acmpeq L349 
L326:   aload 8 
L328:   getstatic Field com/fs/starfarer/combat/tasks/CombatTask$CombatTaskType AVOID Lcom/fs/starfarer/combat/tasks/CombatTask$CombatTaskType; 
L331:   if_acmpeq L349 
L334:   aload 8 
L336:   getstatic Field com/fs/starfarer/combat/tasks/CombatTask$CombatTaskType STRIKE Lcom/fs/starfarer/combat/tasks/CombatTask$CombatTaskType; 
L339:   if_acmpne L351 
L342:   aload_0 
L343:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isCarrier ()Z 
L346:   ifne L351 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Integer Object java/lang/String Integer Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/CombatFleetManager$O0 Object com/fs/starfarer/combat/tasks/CombatTaskManager Object com/fs/starfarer/combat/tasks/Object Object com/fs/starfarer/combat/tasks/CombatTask$CombatTaskType 
            stack 
        .end stack 
L349:   iconst_1 
L350:   istore_3 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Integer Object java/lang/String Integer Object com/fs/starfarer/combat/CombatFleetManager 
            stack 
        .end stack 
L351:   aload 4 
L353:   ifnull L380 
L356:   aload 4 
L358:   aload_0 
L359:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isAlly ()Z 
L362:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getTaskManager (Z)Lcom/fs/starfarer/combat/tasks/CombatTaskManager; 
L365:   invokevirtual Method com/fs/starfarer/combat/tasks/CombatTaskManager isFullAssault ()Z 
L368:   ifeq L380 
L371:   aload_0 
L372:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getOriginalOwner ()I 
L375:   ifeq L380 
L378:   iconst_1 
L379:   istore_3 

        .stack chop 1 
L380:   iload_3 
L381:   aload_0 
L382:   getfield Field com/fs/starfarer/combat/entities/Ship stats Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L385:   invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getDynamic ()Lcom/fs/starfarer/util/DynamicStats; 
L388:   ldc_w 'act_as_combat_ship' 
L391:   invokevirtual Method com/fs/starfarer/util/DynamicStats getMod (Ljava/lang/String;)Lcom/fs/starfarer/api/combat/StatBonus; 
L394:   fconst_0 
L395:   invokevirtual Method com/fs/starfarer/api/combat/StatBonus computeEffective (F)F 
L398:   fconst_0 
L399:   fcmpl 
L400:   ifle L407 
L403:   iconst_1 
L404:   goto L408 

        .stack stack_1 Integer 
L407:   iconst_0 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Integer Object java/lang/String Integer 
            stack Integer Integer 
        .end stack 
L408:   ior 
L409:   istore_3 
L410:   iload_3 
L411:   ifeq L416 
L414:   iconst_0 
L415:   ireturn 

        .stack same 
L416:   iload_1 
L417:   ifeq L457 
L420:   aload_2 
L421:   ldc_w 'timid' 
L424:   invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L427:   ifeq L457 
L430:   invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L433:   aload_0 
L434:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getOriginalOwner ()I 
L437:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L440:   astore 4 
L442:   aload 4 
L444:   ifnull L455 
L447:   aload 4 
L449:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager isOnlyTimidOrNonCombatDeployed ()Z 
L452:   ifne L457 

        .stack append Object com/fs/starfarer/combat/CombatFleetManager 
L455:   iconst_1 
L456:   ireturn 

        .stack chop 1 
L457:   aload_0 
L458:   getfield Field com/fs/starfarer/combat/entities/Ship spec Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L461:   invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec isNonCombat ()Z 
L464:   ifeq L469 
L467:   iconst_1 
L468:   ireturn 

        .stack same 
L469:   aload_0 
L470:   getfield Field com/fs/starfarer/combat/entities/Ship spec Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L473:   invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHints ()Ljava/util/EnumSet; 
L476:   getstatic Field com/fs/starfarer/api/combat/ShipHullSpecAPI$ShipTypeHints SHIP_WITH_MODULES Lcom/fs/starfarer/api/combat/ShipHullSpecAPI$ShipTypeHints; 
L479:   invokevirtual Method java/util/EnumSet contains (Ljava/lang/Object;)Z 
L482:   ifeq L487 
L485:   iconst_0 
L486:   ireturn 

        .stack same 
L487:   iconst_0 
L488:   istore 4 
L490:   iconst_0 
L491:   istore 5 
L493:   aload_0 
L494:   getfield Field com/fs/starfarer/combat/entities/Ship groups Ljava/util/List; 
L497:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L502:   astore 7 
L504:   goto L610 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Integer Object java/lang/String Integer Integer Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L507:   aload 7 
L509:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L514:   checkcast com/fs/starfarer/combat/systems/WeaponGroup 
L517:   astore 6 
L519:   aload 6 
L521:   invokevirtual Method com/fs/starfarer/combat/systems/WeaponGroup getWeapons ()Ljava/util/List; 
L524:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L529:   astore 9 
L531:   goto L600 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Integer Object java/lang/String Integer Integer Integer Object com/fs/starfarer/combat/systems/WeaponGroup Object java/util/Iterator Top Object java/util/Iterator 
            stack 
        .end stack 
L534:   aload 9 
L536:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L541:   checkcast com/fs/starfarer/combat/systems/o00O 
L544:   astore 8 
L546:   iconst_1 
L547:   istore 5 
L549:   aload 8 
L551:   invokeinterface InterfaceMethod com/fs/starfarer/combat/systems/o00O isDisabled ()Z 1 
L556:   ifne L600 
L559:   aload 8 
L561:   invokeinterface InterfaceMethod com/fs/starfarer/combat/systems/o00O usesAmmo ()Z 1 
L566:   ifeq L594 
L569:   aload 8 
L571:   invokeinterface InterfaceMethod com/fs/starfarer/combat/systems/o00O getAmmo ()I 1 
L576:   ifgt L594 
L579:   aload 8 
L581:   invokeinterface InterfaceMethod com/fs/starfarer/combat/systems/o00O getAmmoTracker [u2698] 1 
L586:   invokevirtual Method [c4863] getAmmoPerSecond ()F 
L589:   fconst_0 
L590:   fcmpl 
L591:   ifle L600 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Integer Object java/lang/String Integer Integer Integer Object com/fs/starfarer/combat/systems/WeaponGroup Object java/util/Iterator Object com/fs/starfarer/combat/systems/o00O Object java/util/Iterator 
            stack 
        .end stack 
L594:   iconst_1 
L595:   istore 4 
L597:   goto L620 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Integer Object java/lang/String Integer Integer Integer Object com/fs/starfarer/combat/systems/WeaponGroup Object java/util/Iterator Top Object java/util/Iterator 
            stack 
        .end stack 
L600:   aload 9 
L602:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L607:   ifne L534 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Integer Object java/lang/String Integer Integer Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L610:   aload 7 
L612:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L617:   ifne L507 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Integer Object java/lang/String Integer Integer Integer 
            stack 
        .end stack 
L620:   iload 5 
L622:   ifne L641 
L625:   aload_0 
L626:   getfield Field com/fs/starfarer/combat/entities/Ship spec Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L629:   invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec isCombat ()Z 
L632:   ifeq L639 
L635:   iconst_0 
L636:   goto L640 

        .stack same 
L639:   iconst_1 

        .stack stack_1 Integer 
L640:   ireturn 

        .stack same 
L641:   iload 4 
L643:   ifeq L650 
L646:   iconst_0 
L647:   goto L651 

        .stack same 
L650:   iconst_1 

        .stack stack_1 Integer 
L651:   ireturn 
L652:   
    .end code 
.end method 

.method public getLowestHullLevelReached : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship lowestHullLevelReached F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method public setLowestHullLevelReached : (F)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     fload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship lowestHullLevelReached F 
L5:     return 
L6:     
    .end code 
.end method 

.method public getSmallTurretCover : ()Lcom/fs/starfarer/api/graphics/SpriteAPI; 
    .code stack 3 locals 1 
L0:     new com/fs/starfarer/settings/OoOO 
L3:     dup 
L4:     aload_0 
L5:     getfield Field com/fs/starfarer/combat/entities/Ship smallT Lcom/fs/graphics/Sprite; 
L8:     invokespecial Method com/fs/starfarer/settings/OoOO <init> (Lcom/fs/graphics/Sprite;)V 
L11:    areturn 
L12:    
    .end code 
.end method 

.method public getSmallHardpointCover : ()Lcom/fs/starfarer/api/graphics/SpriteAPI; 
    .code stack 3 locals 1 
L0:     new com/fs/starfarer/settings/OoOO 
L3:     dup 
L4:     aload_0 
L5:     getfield Field com/fs/starfarer/combat/entities/Ship smallH Lcom/fs/graphics/Sprite; 
L8:     invokespecial Method com/fs/starfarer/settings/OoOO <init> (Lcom/fs/graphics/Sprite;)V 
L11:    areturn 
L12:    
    .end code 
.end method 

.method public getMediumTurretCover : ()Lcom/fs/starfarer/api/graphics/SpriteAPI; 
    .code stack 3 locals 1 
L0:     new com/fs/starfarer/settings/OoOO 
L3:     dup 
L4:     aload_0 
L5:     getfield Field com/fs/starfarer/combat/entities/Ship mediumT Lcom/fs/graphics/Sprite; 
L8:     invokespecial Method com/fs/starfarer/settings/OoOO <init> (Lcom/fs/graphics/Sprite;)V 
L11:    areturn 
L12:    
    .end code 
.end method 

.method public getMediumHardpointCover : ()Lcom/fs/starfarer/api/graphics/SpriteAPI; 
    .code stack 3 locals 1 
L0:     new com/fs/starfarer/settings/OoOO 
L3:     dup 
L4:     aload_0 
L5:     getfield Field com/fs/starfarer/combat/entities/Ship mediumH Lcom/fs/graphics/Sprite; 
L8:     invokespecial Method com/fs/starfarer/settings/OoOO <init> (Lcom/fs/graphics/Sprite;)V 
L11:    areturn 
L12:    
    .end code 
.end method 

.method public getLargeTurretCover : ()Lcom/fs/starfarer/api/graphics/SpriteAPI; 
    .code stack 3 locals 1 
L0:     new com/fs/starfarer/settings/OoOO 
L3:     dup 
L4:     aload_0 
L5:     getfield Field com/fs/starfarer/combat/entities/Ship largeT Lcom/fs/graphics/Sprite; 
L8:     invokespecial Method com/fs/starfarer/settings/OoOO <init> (Lcom/fs/graphics/Sprite;)V 
L11:    areturn 
L12:    
    .end code 
.end method 

.method public getLargeHardpointCover : ()Lcom/fs/starfarer/api/graphics/SpriteAPI; 
    .code stack 3 locals 1 
L0:     new com/fs/starfarer/settings/OoOO 
L3:     dup 
L4:     aload_0 
L5:     getfield Field com/fs/starfarer/combat/entities/Ship largeH Lcom/fs/graphics/Sprite; 
L8:     invokespecial Method com/fs/starfarer/settings/OoOO <init> (Lcom/fs/graphics/Sprite;)V 
L11:    areturn 
L12:    
    .end code 
.end method 

.method public getEngineBoostLevel : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship fluxTracker Lcom/fs/starfarer/combat/entities/ship/D; 
L4:     invokevirtual Method com/fs/starfarer/combat/entities/ship/D getEngineBoostLevel ()F 
L7:     freturn 
L8:     
    .end code 
.end method 

.method public getNumFighterBays : ()I 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getStats ()Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L4:     invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getNumFighterBays ()Lcom/fs/starfarer/api/combat/MutableStat; 
L7:     invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L10:    f2i 
L11:    ireturn 
L12:    
    .end code 
.end method 

.method public getFighterTimeBeforeRefit : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship fighterTimeBeforeRefit F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method public setFighterTimeBeforeRefit : (F)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     fload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship fighterTimeBeforeRefit F 
L5:     return 
L6:     
    .end code 
.end method 

.method public getAllWings : ()Ljava/util/List; 
    .signature ()Ljava/util/List<Lcom/fs/starfarer/api/combat/FighterWingAPI;>; 
    .code stack 2 locals 4 
L0:     new java/util/ArrayList 
L3:     dup 
L4:     invokespecial Method java/util/ArrayList <init> ()V 
L7:     astore_1 
L8:     aload_0 
L9:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getLaunchBays ()Ljava/util/List; 
L12:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L17:    astore_3 
L18:    goto L52 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L21:    aload_3 
L22:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L27:    checkcast com/fs/starfarer/combat/entities/ship/A/C 
L30:    astore_2 
L31:    aload_2 
L32:    invokevirtual Method com/fs/starfarer/combat/entities/ship/A/C getWing ()Lcom/fs/starfarer/combat/ai/M; 
L35:    ifnonnull L41 
L38:    goto L52 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object java/util/List Object com/fs/starfarer/combat/entities/ship/A/C Object java/util/Iterator 
            stack 
        .end stack 
L41:    aload_1 
L42:    aload_2 
L43:    invokevirtual Method com/fs/starfarer/combat/entities/ship/A/C getWing ()Lcom/fs/starfarer/combat/ai/M; 
L46:    invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L51:    pop 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L52:    aload_3 
L53:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L58:    ifne L21 
L61:    aload_1 
L62:    areturn 
L63:    
    .end code 
.end method 

.method public getSharedFighterReplacementRate : ()F 
    .code stack 2 locals 7 
L0:     fconst_0 
L1:     fstore_1 
L2:     fconst_0 
L3:     fstore_2 
L4:     aload_0 
L5:     getfield Field com/fs/starfarer/combat/entities/Ship launchBays Ljava/util/List; 
L8:     invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L13:    astore 4 
L15:    goto L50 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Float Top Object java/util/Iterator 
            stack 
        .end stack 
L18:    aload 4 
L20:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L25:    checkcast com/fs/starfarer/combat/entities/ship/A/C 
L28:    astore_3 
L29:    aload_3 
L30:    invokevirtual Method com/fs/starfarer/combat/entities/ship/A/C getWing ()Lcom/fs/starfarer/combat/ai/M; 
L33:    ifnonnull L39 
L36:    goto L50 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Float Object com/fs/starfarer/combat/entities/ship/A/C Object java/util/Iterator 
            stack 
        .end stack 
L39:    fload_1 
L40:    aload_3 
L41:    invokevirtual Method com/fs/starfarer/combat/entities/ship/A/C getCurrRate ()F 
L44:    fadd 
L45:    fstore_1 
L46:    fload_2 
L47:    fconst_1 
L48:    fadd 
L49:    fstore_2 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Float Top Object java/util/Iterator 
            stack 
        .end stack 
L50:    aload 4 
L52:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L57:    ifne L18 
L60:    aload_0 
L61:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getNumFighterBays ()I 
L64:    i2f 
L65:    fstore_3 
L66:    fload_3 
L67:    fload_2 
L68:    fsub 
L69:    fstore 4 
L71:    fload 4 
L73:    fconst_0 
L74:    fcmpl 
L75:    ifle L88 
L78:    fload_2 
L79:    fload 4 
L81:    fadd 
L82:    fstore_2 
L83:    fload_1 
L84:    fload 4 
L86:    fadd 
L87:    fstore_1 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Float Float Float 
            stack 
        .end stack 
L88:    fload_2 
L89:    fconst_0 
L90:    fcmpg 
L91:    ifgt L96 
L94:    fconst_1 
L95:    freturn 

        .stack same 
L96:    invokestatic Method com/fs/starfarer/settings/StarfarerSettings oo0000 ()F 
L99:    fstore 5 
L101:   fload_1 
L102:   fload_2 
L103:   fdiv 
L104:   fstore 6 
L106:   fload 6 
L108:   fload 5 
L110:   fcmpg 
L111:   ifge L118 
L114:   fload 5 
L116:   fstore 6 

        .stack append Float Float 
L118:   fload 6 
L120:   freturn 
L121:   
    .end code 
.end method 

.method public getFighterWaypoint : ()Lorg/lwjgl/util/vector/Vector2f; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship fighterWaypoint Lorg/lwjgl/util/vector/Vector2f; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public setFighterWaypoint : (Lorg/lwjgl/util/vector/Vector2f;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship fighterWaypoint Lorg/lwjgl/util/vector/Vector2f; 
L5:     return 
L6:     
    .end code 
.end method 

.method public getModuleOffset : ()Lorg/lwjgl/util/vector/Vector2f; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship moduleOffset Lorg/lwjgl/util/vector/Vector2f; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public getMassWithModules : ()F 
    .code stack 2 locals 4 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship childModules Ljava/util/List; 
L4:     invokeinterface InterfaceMethod java/util/List isEmpty ()Z 1 
L9:     ifeq L17 
L12:    aload_0 
L13:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getMass ()F 
L16:    freturn 

        .stack same 
L17:    aload_0 
L18:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getMass ()F 
L21:    fstore_1 
L22:    aload_0 
L23:    getfield Field com/fs/starfarer/combat/entities/Ship childModules Ljava/util/List; 
L26:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L31:    astore_3 
L32:    goto L66 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Top Object java/util/Iterator 
            stack 
        .end stack 
L35:    aload_3 
L36:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L41:    checkcast com/fs/starfarer/api/combat/ShipAPI 
L44:    astore_2 
L45:    aload_2 
L46:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ShipAPI getStationSlot ()Lcom/fs/starfarer/api/loading/WeaponSlotAPI; 1 
L51:    ifnonnull L57 
L54:    goto L66 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Object com/fs/starfarer/api/combat/ShipAPI Object java/util/Iterator 
            stack 
        .end stack 
L57:    fload_1 
L58:    aload_2 
L59:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ShipAPI getMass ()F 1 
L64:    fadd 
L65:    fstore_1 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/Ship Float Top Object java/util/Iterator 
            stack 
        .end stack 
L66:    aload_3 
L67:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L72:    ifne L35 
L75:    fload_1 
L76:    freturn 
L77:    
    .end code 
.end method 

.method public isSetModuleFacings : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship setModuleFacings Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public setSetModuleFacings : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship setModuleFacings Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public isWasNudged : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship wasNudged Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public setWasNudged : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship wasNudged Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public clearDamageDecals : ()V 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship decalRenderer Lcom/fs/starfarer/renderers/damage/String; 
L4:     ifnull L14 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/entities/Ship decalRenderer Lcom/fs/starfarer/renderers/damage/String; 
L11:    invokevirtual Method com/fs/starfarer/renderers/damage/String 'ø00000' ()V 

        .stack same 
L14:    return 
L15:    
    .end code 
.end method 

.method public getShieldCenterEvenIfNoShield : ()Lorg/lwjgl/util/vector/Vector2f; 
    .code stack 3 locals 5 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L4:     astore_1 
L5:     aload_0 
L6:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getShield ()Lcom/fs/starfarer/combat/systems/G; 
L9:     ifnull L23 
L12:    aload_0 
L13:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getShield ()Lcom/fs/starfarer/combat/systems/G; 
L16:    invokevirtual Method com/fs/starfarer/combat/systems/G getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L19:    astore_1 
L20:    goto L78 

        .stack append Object org/lwjgl/util/vector/Vector2f 
L23:    aload_0 
L24:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L27:    invokevirtual Method com/fs/starfarer/loading/specs/g getShieldSpec ()Lcom/fs/starfarer/loading/specs/OOOo; 
L30:    ifnull L78 
L33:    aload_0 
L34:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L37:    invokevirtual Method com/fs/starfarer/loading/specs/g getShieldSpec ()Lcom/fs/starfarer/loading/specs/OOOo; 
L40:    invokevirtual Method com/fs/starfarer/loading/specs/OOOo getCenterX ()F 
L43:    fstore_2 
L44:    aload_0 
L45:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L48:    invokevirtual Method com/fs/starfarer/loading/specs/g getShieldSpec ()Lcom/fs/starfarer/loading/specs/OOOo; 
L51:    invokevirtual Method com/fs/starfarer/loading/specs/OOOo getCenterY ()F 
L54:    fstore_3 
L55:    new com/fs/starfarer/combat/systems/OooOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 
L58:    dup 
L59:    invokespecial Method com/fs/starfarer/combat/systems/OooOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO <init> ()V 
L62:    astore 4 
L64:    aload 4 
L66:    fload_2 
L67:    fload_3 
L68:    invokevirtual Method com/fs/starfarer/combat/systems/OooOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO o00000 (FF)V 
L71:    aload 4 
L73:    aload_0 
L74:    invokevirtual Method com/fs/starfarer/combat/systems/OooOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO new (Lcom/fs/starfarer/combat/entities/Ship;)Lorg/lwjgl/util/vector/Vector2f; 
L77:    astore_1 

        .stack same 
L78:    aload_1 
L79:    areturn 
L80:    
    .end code 
.end method 

.method public getShieldRadiusEvenIfNoShield : ()F 
    .code stack 1 locals 2 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getCollisionRadius ()F 
L4:     fstore_1 
L5:     aload_0 
L6:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getShield ()Lcom/fs/starfarer/combat/systems/G; 
L9:     ifnull L23 
L12:    aload_0 
L13:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getShield ()Lcom/fs/starfarer/combat/systems/G; 
L16:    invokevirtual Method com/fs/starfarer/combat/systems/G getRadius ()F 
L19:    fstore_1 
L20:    goto L44 

        .stack append Float 
L23:    aload_0 
L24:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L27:    invokevirtual Method com/fs/starfarer/loading/specs/g getShieldSpec ()Lcom/fs/starfarer/loading/specs/OOOo; 
L30:    ifnull L44 
L33:    aload_0 
L34:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L37:    invokevirtual Method com/fs/starfarer/loading/specs/g getShieldSpec ()Lcom/fs/starfarer/loading/specs/OOOo; 
L40:    invokevirtual Method com/fs/starfarer/loading/specs/OOOo getRadius ()F 
L43:    fstore_1 

        .stack same 
L44:    fload_1 
L45:    freturn 
L46:    
    .end code 
.end method 

.method public getListenerManager : ()Lcom/fs/starfarer/api/combat/listeners/CombatListenerManagerAPI; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship listenerManager Lcom/fs/starfarer/combat/O; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public addListener : (Ljava/lang/Object;)V 
    .code stack 3 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship listenerManager Lcom/fs/starfarer/combat/O; 
L4:     ifnonnull L18 
L7:     aload_0 
L8:     new com/fs/starfarer/combat/O 
L11:    dup 
L12:    invokespecial Method com/fs/starfarer/combat/O <init> ()V 
L15:    putfield Field com/fs/starfarer/combat/entities/Ship listenerManager Lcom/fs/starfarer/combat/O; 

        .stack same 
L18:    aload_0 
L19:    getfield Field com/fs/starfarer/combat/entities/Ship listenerManager Lcom/fs/starfarer/combat/O; 
L22:    aload_1 
L23:    invokevirtual Method com/fs/starfarer/combat/O addListener (Ljava/lang/Object;)V 
L26:    return 
L27:    
    .end code 
.end method 

.method public removeListener : (Ljava/lang/Object;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship listenerManager Lcom/fs/starfarer/combat/O; 
L4:     ifnonnull L8 
L7:     return 

        .stack same 
L8:     aload_0 
L9:     getfield Field com/fs/starfarer/combat/entities/Ship listenerManager Lcom/fs/starfarer/combat/O; 
L12:    aload_1 
L13:    invokevirtual Method com/fs/starfarer/combat/O removeListener (Ljava/lang/Object;)V 
L16:    aload_0 
L17:    getfield Field com/fs/starfarer/combat/entities/Ship listenerManager Lcom/fs/starfarer/combat/O; 
L20:    invokevirtual Method com/fs/starfarer/combat/O isEmpty ()Z 
L23:    ifeq L31 
L26:    aload_0 
L27:    aconst_null 
L28:    putfield Field com/fs/starfarer/combat/entities/Ship listenerManager Lcom/fs/starfarer/combat/O; 

        .stack same 
L31:    return 
L32:    
    .end code 
.end method 

.method public removeListenerOfClass : (Ljava/lang/Class;)V 
    .signature (Ljava/lang/Class<*>;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship listenerManager Lcom/fs/starfarer/combat/O; 
L4:     ifnonnull L8 
L7:     return 

        .stack same 
L8:     aload_0 
L9:     getfield Field com/fs/starfarer/combat/entities/Ship listenerManager Lcom/fs/starfarer/combat/O; 
L12:    aload_1 
L13:    invokevirtual Method com/fs/starfarer/combat/O removeListenerOfClass (Ljava/lang/Class;)V 
L16:    aload_0 
L17:    getfield Field com/fs/starfarer/combat/entities/Ship listenerManager Lcom/fs/starfarer/combat/O; 
L20:    invokevirtual Method com/fs/starfarer/combat/O isEmpty ()Z 
L23:    ifeq L31 
L26:    aload_0 
L27:    aconst_null 
L28:    putfield Field com/fs/starfarer/combat/entities/Ship listenerManager Lcom/fs/starfarer/combat/O; 

        .stack same 
L31:    return 
L32:    
    .end code 
.end method 

.method public hasListener : (Ljava/lang/Object;)Z 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship listenerManager Lcom/fs/starfarer/combat/O; 
L4:     ifnonnull L9 
L7:     iconst_0 
L8:     ireturn 

        .stack same 
L9:     aload_0 
L10:    getfield Field com/fs/starfarer/combat/entities/Ship listenerManager Lcom/fs/starfarer/combat/O; 
L13:    aload_1 
L14:    invokevirtual Method com/fs/starfarer/combat/O hasListener (Ljava/lang/Object;)Z 
L17:    ireturn 
L18:    
    .end code 
.end method 

.method public hasListenerOfClass : (Ljava/lang/Class;)Z 
    .signature (Ljava/lang/Class<*>;)Z 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship listenerManager Lcom/fs/starfarer/combat/O; 
L4:     ifnonnull L9 
L7:     iconst_0 
L8:     ireturn 

        .stack same 
L9:     aload_0 
L10:    getfield Field com/fs/starfarer/combat/entities/Ship listenerManager Lcom/fs/starfarer/combat/O; 
L13:    aload_1 
L14:    invokevirtual Method com/fs/starfarer/combat/O hasListenerOfClass (Ljava/lang/Class;)Z 
L17:    ireturn 
L18:    
    .end code 
.end method 

.method public getListeners : (Ljava/lang/Class;)Ljava/util/List; 
    .signature '<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)Ljava/util/List<TT;>;' 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship listenerManager Lcom/fs/starfarer/combat/O; 
L4:     ifnonnull L15 
L7:     new java/util/ArrayList 
L10:    dup 
L11:    invokespecial Method java/util/ArrayList <init> ()V 
L14:    areturn 

        .stack same 
L15:    aload_0 
L16:    getfield Field com/fs/starfarer/combat/entities/Ship listenerManager Lcom/fs/starfarer/combat/O; 
L19:    aload_1 
L20:    invokevirtual Method com/fs/starfarer/combat/O getListeners (Ljava/lang/Class;)Ljava/util/List; 
L23:    areturn 
L24:    
    .end code 
.end method 

.method public getShipExplosionRadius : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokestatic Method com/fs/starfarer/api/loading/DamagingExplosionSpec getShipExplosionRadius (Lcom/fs/starfarer/api/combat/ShipAPI;)F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method public findBestArmorInArc : (FF)F 
    .code stack 3 locals 3 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship armorEvaluator Lcom/fs/starfarer/combat/ai/super; 
L4:     fload_1 
L5:     fload_2 
L6:     invokevirtual Method com/fs/starfarer/combat/ai/super 'Ò00000' (FF)F 
L9:     freturn 
L10:    
    .end code 
.end method 

.method public getAverageArmorInSlice : (FF)F 
    .code stack 3 locals 3 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship armorEvaluator Lcom/fs/starfarer/combat/ai/super; 
L4:     fload_1 
L5:     fload_2 
L6:     invokevirtual Method com/fs/starfarer/combat/ai/super o00000 (FF)F 
L9:     freturn 
L10:    
    .end code 
.end method 

.method public getLayer : ()Lcom/fs/starfarer/api/combat/CombatEngineLayers; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship layer Lcom/fs/starfarer/api/combat/CombatEngineLayers; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public setLayer : (Lcom/fs/starfarer/api/combat/CombatEngineLayers;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship layer Lcom/fs/starfarer/api/combat/CombatEngineLayers; 
L4:     aload_1 
L5:     if_acmpeq L29 
L8:     aload_0 
L9:     getfield Field com/fs/starfarer/combat/entities/Ship layers Ljava/util/EnumSet; 
L12:    aload_0 
L13:    getfield Field com/fs/starfarer/combat/entities/Ship layer Lcom/fs/starfarer/api/combat/CombatEngineLayers; 
L16:    invokevirtual Method java/util/EnumSet remove (Ljava/lang/Object;)Z 
L19:    pop 
L20:    aload_0 
L21:    getfield Field com/fs/starfarer/combat/entities/Ship layers Ljava/util/EnumSet; 
L24:    aload_1 
L25:    invokevirtual Method java/util/EnumSet add (Ljava/lang/Object;)Z 
L28:    pop 

        .stack same 
L29:    aload_0 
L30:    aload_1 
L31:    putfield Field com/fs/starfarer/combat/entities/Ship layer Lcom/fs/starfarer/api/combat/CombatEngineLayers; 
L34:    return 
L35:    
    .end code 
.end method 

.method public isForceHideFFOverlay : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship forceHideFFOverlay Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public setForceHideFFOverlay : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship forceHideFFOverlay Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public getTags : ()Ljava/util/Set; 
    .signature ()Ljava/util/Set<Ljava/lang/String;>; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship tags Ljava/util/Set; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public addTag : (Ljava/lang/String;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship tags Ljava/util/Set; 
L4:     aload_1 
L5:     invokeinterface InterfaceMethod java/util/Set add (Ljava/lang/Object;)Z 2 
L10:    pop 
L11:    return 
L12:    
    .end code 
.end method 

.method public hasTag : (Ljava/lang/String;)Z 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship tags Ljava/util/Set; 
L4:     aload_1 
L5:     invokeinterface InterfaceMethod java/util/Set contains (Ljava/lang/Object;)Z 2 
L10:    ireturn 
L11:    
    .end code 
.end method 

.method public removeTag : (Ljava/lang/String;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship tags Ljava/util/Set; 
L4:     ifnull L18 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/entities/Ship tags Ljava/util/Set; 
L11:    aload_1 
L12:    invokeinterface InterfaceMethod java/util/Set remove (Ljava/lang/Object;)Z 2 
L17:    pop 

        .stack same 
L18:    return 
L19:    
    .end code 
.end method 

.method public getPeakTimeRemaining : ()F 
    .code stack 3 locals 3 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getMutableStats [u1691] 
L4:     invokeinterface InterfaceMethod com/fs/starfarer/api/combat/MutableShipStatsAPI getPeakCRDuration ()Lcom/fs/starfarer/api/combat/StatBonus; 1 
L9:     aload_0 
L10:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L13:    invokevirtual Method com/fs/starfarer/loading/specs/g getNoCRLossTime ()F 
L16:    invokevirtual Method com/fs/starfarer/api/combat/StatBonus computeEffective (F)F 
L19:    fstore_1 
L20:    fconst_0 
L21:    fload_1 
L22:    aload_0 
L23:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getTimeDeployedForCRReduction ()F 
L26:    fsub 
L27:    invokestatic Method java/lang/Math max (FF)F 
L30:    fstore_2 
L31:    fload_2 
L32:    freturn 
L33:    
    .end code 
.end method 

.method public isDoNotFlareEnginesWhenStrafingOrDecelerating : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship doNotFlareEngines Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public setDoNotFlareEnginesWhenStrafingOrDecelerating : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship doNotFlareEngines Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public checkCollisionVsRay : (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)Lorg/lwjgl/util/vector/Vector2f; 
    .code stack 3 locals 4 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getExactBounds ()Lcom/fs/starfarer/combat/E/o0OO; 
L4:     astore_3 
L5:     aload_3 
L6:     ifnonnull L11 
L9:     aconst_null 
L10:    areturn 

        .stack append Object com/fs/starfarer/combat/E/o0OO 
L11:    aload_3 
L12:    aload_0 
L13:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L16:    aload_0 
L17:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getFacing ()F 
L20:    invokevirtual Method com/fs/starfarer/combat/E/o0OO update (Lorg/lwjgl/util/vector/Vector2f;F)V 
L23:    aload_1 
L24:    aload_2 
L25:    aload_3 
L26:    invokestatic Method com/fs/starfarer/combat/E/oOOO 'super' (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;Lcom/fs/starfarer/combat/E/o0OO;)Lorg/lwjgl/util/vector/Vector2f; 
L29:    areturn 
L30:    
    .end code 
.end method 

.method public getDefaultOverloadColor : ()Ljava/awt/Color; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullStyle ()Lcom/fs/starfarer/loading/specs/OoOO; 
L4:     invokevirtual Method com/fs/starfarer/loading/specs/OoOO 'Ò00000' ()Ljava/awt/Color; 
L7:     areturn 
L8:     
    .end code 
.end method 

.method public getShipCollisionSoundOverride : ()Ljava/lang/String; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship shipCollisionSoundOverride Ljava/lang/String; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public setShipCollisionSoundOverride : (Ljava/lang/String;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship shipCollisionSoundOverride Ljava/lang/String; 
L5:     return 
L6:     
    .end code 
.end method 

.method public getAsteroidCollisionSoundOverride : ()Ljava/lang/String; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship asteroidCollisionSoundOverride Ljava/lang/String; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public setAsteroidCollisionSoundOverride : (Ljava/lang/String;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship asteroidCollisionSoundOverride Ljava/lang/String; 
L5:     return 
L6:     
    .end code 
.end method 

.method public isBeingIgnored : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/Ship beingIgnored Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public setBeingIgnored : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/Ship beingIgnored Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public bridge synthetic getOriginalCaptain : ()Lcom/fs/starfarer/api/characters/PersonAPI; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getOriginalCaptain ()Lcom/fs/starfarer/rpg/Person; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public bridge synthetic getEngineController : ()Lcom/fs/starfarer/api/combat/ShipEngineControllerAPI; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getEngineController ()Lcom/fs/starfarer/combat/entities/ship/null; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public bridge synthetic clone : ()Ljava/lang/Object; 
    .exceptions java/lang/CloneNotSupportedException 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship clone ()Lcom/fs/starfarer/combat/entities/Ship; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public bridge synthetic getVariant : ()Lcom/fs/starfarer/api/combat/ShipVariantAPI; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getVariant [u632] 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public bridge synthetic getShield : ()Lcom/fs/starfarer/api/combat/ShieldAPI; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getShield ()Lcom/fs/starfarer/combat/systems/G; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public bridge synthetic getStationSlot : ()Lcom/fs/starfarer/api/loading/WeaponSlotAPI; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getStationSlot ()Lcom/fs/starfarer/loading/specs/nullsuper; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public bridge synthetic getCaptain : ()Lcom/fs/starfarer/api/characters/PersonAPI; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getCaptain ()Lcom/fs/starfarer/rpg/Person; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public bridge synthetic getWing : ()Lcom/fs/starfarer/api/combat/FighterWingAPI; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getWing ()Lcom/fs/starfarer/combat/ai/M; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public bridge synthetic getFleetCommander : ()Lcom/fs/starfarer/api/characters/PersonAPI; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getFleetCommander ()Lcom/fs/starfarer/rpg/Person; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public bridge synthetic getHullSpec : ()Lcom/fs/starfarer/api/combat/ShipHullSpecAPI; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public bridge synthetic getShipTarget : ()Lcom/fs/starfarer/api/combat/ShipAPI; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getShipTarget ()Lcom/fs/starfarer/combat/entities/Ship; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public bridge synthetic getVisualBounds : ()Lcom/fs/starfarer/api/combat/BoundsAPI; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getVisualBounds ()Lcom/fs/starfarer/combat/E/o0OO; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public bridge synthetic getTravelDrive : ()Lcom/fs/starfarer/api/combat/ShipSystemAPI; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getTravelDrive ()Lcom/fs/starfarer/combat/systems/F; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public bridge synthetic getFluxTracker : ()Lcom/fs/starfarer/api/combat/FluxTrackerAPI; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getFluxTracker ()Lcom/fs/starfarer/combat/entities/ship/D; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public bridge synthetic getPhaseCloak : ()Lcom/fs/starfarer/api/combat/ShipSystemAPI; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getPhaseCloak ()Lcom/fs/starfarer/combat/systems/F; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public bridge synthetic getSystem : ()Lcom/fs/starfarer/api/combat/ShipSystemAPI; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getSystem ()Lcom/fs/starfarer/combat/systems/F; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public bridge synthetic getParentStation : ()Lcom/fs/starfarer/api/combat/ShipAPI; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getParentStation ()Lcom/fs/starfarer/combat/entities/Ship; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public bridge synthetic getArmorGrid : ()Lcom/fs/starfarer/api/combat/ArmorGridAPI; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getArmorGrid ()Lcom/fs/starfarer/combat/entities/ship/new; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method static synthetic $SWITCH_TABLE$com$fs$starfarer$api$combat$ShipCommand : ()[I 
    .code stack 3 locals 1 
L0:     getstatic Field com/fs/starfarer/combat/entities/Ship $SWITCH_TABLE$com$fs$starfarer$api$combat$ShipCommand [I 
L3:     dup 
L4:     ifnull L8 
L7:     areturn 

        .stack stack_1 Object [I 
L8:     pop 
L9:     invokestatic Method com/fs/starfarer/api/combat/ShipCommand values ()[Lcom/fs/starfarer/api/combat/ShipCommand; 
L12:    arraylength 
L13:    newarray int 
L15:    astore_0 
        .catch java/lang/NoSuchFieldError from L16 to L25 using L28 
L16:    aload_0 
L17:    getstatic Field com/fs/starfarer/api/combat/ShipCommand ACCELERATE Lcom/fs/starfarer/api/combat/ShipCommand; 
L20:    invokevirtual Method com/fs/starfarer/api/combat/ShipCommand ordinal ()I 
L23:    iconst_5 
L24:    iastore 
L25:    goto L29 

        .stack full 
            locals Object [I 
            stack Object java/lang/NoSuchFieldError 
        .end stack 
L28:    pop 
        .catch java/lang/NoSuchFieldError from L29 to L39 using L42 

        .stack same 
L29:    aload_0 
L30:    getstatic Field com/fs/starfarer/api/combat/ShipCommand ACCELERATE_BACKWARDS Lcom/fs/starfarer/api/combat/ShipCommand; 
L33:    invokevirtual Method com/fs/starfarer/api/combat/ShipCommand ordinal ()I 
L36:    bipush 6 
L38:    iastore 
L39:    goto L43 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L42:    pop 
        .catch java/lang/NoSuchFieldError from L43 to L53 using L56 

        .stack same 
L43:    aload_0 
L44:    getstatic Field com/fs/starfarer/api/combat/ShipCommand DECELERATE Lcom/fs/starfarer/api/combat/ShipCommand; 
L47:    invokevirtual Method com/fs/starfarer/api/combat/ShipCommand ordinal ()I 
L50:    bipush 7 
L52:    iastore 
L53:    goto L57 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L56:    pop 
        .catch java/lang/NoSuchFieldError from L57 to L67 using L70 

        .stack same 
L57:    aload_0 
L58:    getstatic Field com/fs/starfarer/api/combat/ShipCommand FIRE Lcom/fs/starfarer/api/combat/ShipCommand; 
L61:    invokevirtual Method com/fs/starfarer/api/combat/ShipCommand ordinal ()I 
L64:    bipush 11 
L66:    iastore 
L67:    goto L71 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L70:    pop 
        .catch java/lang/NoSuchFieldError from L71 to L81 using L84 

        .stack same 
L71:    aload_0 
L72:    getstatic Field com/fs/starfarer/api/combat/ShipCommand HOLD_FIRE Lcom/fs/starfarer/api/combat/ShipCommand; 
L75:    invokevirtual Method com/fs/starfarer/api/combat/ShipCommand ordinal ()I 
L78:    bipush 14 
L80:    iastore 
L81:    goto L85 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L84:    pop 
        .catch java/lang/NoSuchFieldError from L85 to L95 using L98 

        .stack same 
L85:    aload_0 
L86:    getstatic Field com/fs/starfarer/api/combat/ShipCommand PULL_BACK_FIGHTERS Lcom/fs/starfarer/api/combat/ShipCommand; 
L89:    invokevirtual Method com/fs/starfarer/api/combat/ShipCommand ordinal ()I 
L92:    bipush 15 
L94:    iastore 
L95:    goto L99 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L98:    pop 
        .catch java/lang/NoSuchFieldError from L99 to L109 using L112 

        .stack same 
L99:    aload_0 
L100:   getstatic Field com/fs/starfarer/api/combat/ShipCommand SELECT_GROUP Lcom/fs/starfarer/api/combat/ShipCommand; 
L103:   invokevirtual Method com/fs/starfarer/api/combat/ShipCommand ordinal ()I 
L106:   bipush 8 
L108:   iastore 
L109:   goto L113 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L112:   pop 
        .catch java/lang/NoSuchFieldError from L113 to L122 using L125 

        .stack same 
L113:   aload_0 
L114:   getstatic Field com/fs/starfarer/api/combat/ShipCommand STRAFE_LEFT Lcom/fs/starfarer/api/combat/ShipCommand; 
L117:   invokevirtual Method com/fs/starfarer/api/combat/ShipCommand ordinal ()I 
L120:   iconst_3 
L121:   iastore 
L122:   goto L126 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L125:   pop 
        .catch java/lang/NoSuchFieldError from L126 to L135 using L138 

        .stack same 
L126:   aload_0 
L127:   getstatic Field com/fs/starfarer/api/combat/ShipCommand STRAFE_RIGHT Lcom/fs/starfarer/api/combat/ShipCommand; 
L130:   invokevirtual Method com/fs/starfarer/api/combat/ShipCommand ordinal ()I 
L133:   iconst_4 
L134:   iastore 
L135:   goto L139 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L138:   pop 
        .catch java/lang/NoSuchFieldError from L139 to L149 using L152 

        .stack same 
L139:   aload_0 
L140:   getstatic Field com/fs/starfarer/api/combat/ShipCommand TOGGLE_AUTOFIRE Lcom/fs/starfarer/api/combat/ShipCommand; 
L143:   invokevirtual Method com/fs/starfarer/api/combat/ShipCommand ordinal ()I 
L146:   bipush 10 
L148:   iastore 
L149:   goto L153 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L152:   pop 
        .catch java/lang/NoSuchFieldError from L153 to L163 using L166 

        .stack same 
L153:   aload_0 
L154:   getstatic Field com/fs/starfarer/api/combat/ShipCommand TOGGLE_SHIELD_OR_PHASE_CLOAK Lcom/fs/starfarer/api/combat/ShipCommand; 
L157:   invokevirtual Method com/fs/starfarer/api/combat/ShipCommand ordinal ()I 
L160:   bipush 13 
L162:   iastore 
L163:   goto L167 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L166:   pop 
        .catch java/lang/NoSuchFieldError from L167 to L176 using L179 

        .stack same 
L167:   aload_0 
L168:   getstatic Field com/fs/starfarer/api/combat/ShipCommand TURN_LEFT Lcom/fs/starfarer/api/combat/ShipCommand; 
L171:   invokevirtual Method com/fs/starfarer/api/combat/ShipCommand ordinal ()I 
L174:   iconst_1 
L175:   iastore 
L176:   goto L180 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L179:   pop 
        .catch java/lang/NoSuchFieldError from L180 to L189 using L192 

        .stack same 
L180:   aload_0 
L181:   getstatic Field com/fs/starfarer/api/combat/ShipCommand TURN_RIGHT Lcom/fs/starfarer/api/combat/ShipCommand; 
L184:   invokevirtual Method com/fs/starfarer/api/combat/ShipCommand ordinal ()I 
L187:   iconst_2 
L188:   iastore 
L189:   goto L193 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L192:   pop 
        .catch java/lang/NoSuchFieldError from L193 to L203 using L206 

        .stack same 
L193:   aload_0 
L194:   getstatic Field com/fs/starfarer/api/combat/ShipCommand USE_SELECTED_GROUP Lcom/fs/starfarer/api/combat/ShipCommand; 
L197:   invokevirtual Method com/fs/starfarer/api/combat/ShipCommand ordinal ()I 
L200:   bipush 9 
L202:   iastore 
L203:   goto L207 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L206:   pop 
        .catch java/lang/NoSuchFieldError from L207 to L217 using L220 

        .stack same 
L207:   aload_0 
L208:   getstatic Field com/fs/starfarer/api/combat/ShipCommand USE_SYSTEM Lcom/fs/starfarer/api/combat/ShipCommand; 
L211:   invokevirtual Method com/fs/starfarer/api/combat/ShipCommand ordinal ()I 
L214:   bipush 16 
L216:   iastore 
L217:   goto L221 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L220:   pop 
        .catch java/lang/NoSuchFieldError from L221 to L231 using L234 

        .stack same 
L221:   aload_0 
L222:   getstatic Field com/fs/starfarer/api/combat/ShipCommand VENT_FLUX Lcom/fs/starfarer/api/combat/ShipCommand; 
L225:   invokevirtual Method com/fs/starfarer/api/combat/ShipCommand ordinal ()I 
L228:   bipush 12 
L230:   iastore 
L231:   goto L235 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L234:   pop 

        .stack same 
L235:   aload_0 
L236:   dup 
L237:   putstatic Field com/fs/starfarer/combat/entities/Ship $SWITCH_TABLE$com$fs$starfarer$api$combat$ShipCommand [I 
L240:   areturn 
L241:   
    .end code 
.end method 

.method static synthetic $SWITCH_TABLE$com$fs$starfarer$combat$entities$Ship$CommandType : ()[I 
    .code stack 3 locals 1 
L0:     getstatic Field com/fs/starfarer/combat/entities/Ship $SWITCH_TABLE$com$fs$starfarer$combat$entities$Ship$CommandType [I 
L3:     dup 
L4:     ifnull L8 
L7:     areturn 

        .stack stack_1 Object [I 
L8:     pop 
L9:     invokestatic Method com/fs/starfarer/combat/entities/Ship$oo values ()[Lcom/fs/starfarer/combat/entities/Ship$oo; 
L12:    arraylength 
L13:    newarray int 
L15:    astore_0 
        .catch java/lang/NoSuchFieldError from L16 to L25 using L28 
L16:    aload_0 
L17:    getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'this.super' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L20:    invokevirtual Method com/fs/starfarer/combat/entities/Ship$oo ordinal ()I 
L23:    iconst_5 
L24:    iastore 
L25:    goto L29 

        .stack full 
            locals Object [I 
            stack Object java/lang/NoSuchFieldError 
        .end stack 
L28:    pop 
        .catch java/lang/NoSuchFieldError from L29 to L39 using L42 

        .stack same 
L29:    aload_0 
L30:    getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'ö00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L33:    invokevirtual Method com/fs/starfarer/combat/entities/Ship$oo ordinal ()I 
L36:    bipush 6 
L38:    iastore 
L39:    goto L43 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L42:    pop 
        .catch java/lang/NoSuchFieldError from L43 to L53 using L56 

        .stack same 
L43:    aload_0 
L44:    getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'Ò00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L47:    invokevirtual Method com/fs/starfarer/combat/entities/Ship$oo ordinal ()I 
L50:    bipush 7 
L52:    iastore 
L53:    goto L57 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L56:    pop 
        .catch java/lang/NoSuchFieldError from L57 to L67 using L70 

        .stack same 
L57:    aload_0 
L58:    getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'Ø00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L61:    invokevirtual Method com/fs/starfarer/combat/entities/Ship$oo ordinal ()I 
L64:    bipush 12 
L66:    iastore 
L67:    goto L71 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L70:    pop 
        .catch java/lang/NoSuchFieldError from L71 to L81 using L84 

        .stack same 
L71:    aload_0 
L72:    getstatic Field com/fs/starfarer/combat/entities/Ship$oo int Lcom/fs/starfarer/combat/entities/Ship$oo; 
L75:    invokevirtual Method com/fs/starfarer/combat/entities/Ship$oo ordinal ()I 
L78:    bipush 11 
L80:    iastore 
L81:    goto L85 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L84:    pop 
        .catch java/lang/NoSuchFieldError from L85 to L95 using L98 

        .stack same 
L85:    aload_0 
L86:    getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'ÒO0000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L89:    invokevirtual Method com/fs/starfarer/combat/entities/Ship$oo ordinal ()I 
L92:    bipush 16 
L94:    iastore 
L95:    goto L99 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L98:    pop 
        .catch java/lang/NoSuchFieldError from L99 to L109 using L112 

        .stack same 
L99:    aload_0 
L100:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'public' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L103:   invokevirtual Method com/fs/starfarer/combat/entities/Ship$oo ordinal ()I 
L106:   bipush 17 
L108:   iastore 
L109:   goto L113 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L112:   pop 
        .catch java/lang/NoSuchFieldError from L113 to L123 using L126 

        .stack same 
L113:   aload_0 
L114:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'ÔO0000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L117:   invokevirtual Method com/fs/starfarer/combat/entities/Ship$oo ordinal ()I 
L120:   bipush 13 
L122:   iastore 
L123:   goto L127 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L126:   pop 
        .catch java/lang/NoSuchFieldError from L127 to L137 using L140 

        .stack same 
L127:   aload_0 
L128:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'ô00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L131:   invokevirtual Method com/fs/starfarer/combat/entities/Ship$oo ordinal ()I 
L134:   bipush 9 
L136:   iastore 
L137:   goto L141 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L140:   pop 
        .catch java/lang/NoSuchFieldError from L141 to L150 using L153 

        .stack same 
L141:   aload_0 
L142:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'ÕO0000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L145:   invokevirtual Method com/fs/starfarer/combat/entities/Ship$oo ordinal ()I 
L148:   iconst_3 
L149:   iastore 
L150:   goto L154 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L153:   pop 
        .catch java/lang/NoSuchFieldError from L154 to L163 using L166 

        .stack same 
L154:   aload_0 
L155:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo o00000 Lcom/fs/starfarer/combat/entities/Ship$oo; 
L158:   invokevirtual Method com/fs/starfarer/combat/entities/Ship$oo ordinal ()I 
L161:   iconst_4 
L162:   iastore 
L163:   goto L167 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L166:   pop 
        .catch java/lang/NoSuchFieldError from L167 to L177 using L180 

        .stack same 
L167:   aload_0 
L168:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'ØO0000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L171:   invokevirtual Method com/fs/starfarer/combat/entities/Ship$oo ordinal ()I 
L174:   bipush 15 
L176:   iastore 
L177:   goto L181 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L180:   pop 
        .catch java/lang/NoSuchFieldError from L181 to L191 using L194 

        .stack same 
L181:   aload_0 
L182:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo Object Lcom/fs/starfarer/combat/entities/Ship$oo; 
L185:   invokevirtual Method com/fs/starfarer/combat/entities/Ship$oo ordinal ()I 
L188:   bipush 8 
L190:   iastore 
L191:   goto L195 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L194:   pop 
        .catch java/lang/NoSuchFieldError from L195 to L204 using L207 

        .stack same 
L195:   aload_0 
L196:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo for Lcom/fs/starfarer/combat/entities/Ship$oo; 
L199:   invokevirtual Method com/fs/starfarer/combat/entities/Ship$oo ordinal ()I 
L202:   iconst_1 
L203:   iastore 
L204:   goto L208 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L207:   pop 
        .catch java/lang/NoSuchFieldError from L208 to L217 using L220 

        .stack same 
L208:   aload_0 
L209:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo return Lcom/fs/starfarer/combat/entities/Ship$oo; 
L212:   invokevirtual Method com/fs/starfarer/combat/entities/Ship$oo ordinal ()I 
L215:   iconst_2 
L216:   iastore 
L217:   goto L221 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L220:   pop 
        .catch java/lang/NoSuchFieldError from L221 to L231 using L234 

        .stack same 
L221:   aload_0 
L222:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo oO0000 Lcom/fs/starfarer/combat/entities/Ship$oo; 
L225:   invokevirtual Method com/fs/starfarer/combat/entities/Ship$oo ordinal ()I 
L228:   bipush 10 
L230:   iastore 
L231:   goto L235 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L234:   pop 
        .catch java/lang/NoSuchFieldError from L235 to L245 using L248 

        .stack same 
L235:   aload_0 
L236:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'Õ00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L239:   invokevirtual Method com/fs/starfarer/combat/entities/Ship$oo ordinal ()I 
L242:   bipush 18 
L244:   iastore 
L245:   goto L249 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L248:   pop 
        .catch java/lang/NoSuchFieldError from L249 to L259 using L262 

        .stack same 
L249:   aload_0 
L250:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'ø00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L253:   invokevirtual Method com/fs/starfarer/combat/entities/Ship$oo ordinal ()I 
L256:   bipush 14 
L258:   iastore 
L259:   goto L263 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L262:   pop 

        .stack same 
L263:   aload_0 
L264:   dup 
L265:   putstatic Field com/fs/starfarer/combat/entities/Ship $SWITCH_TABLE$com$fs$starfarer$combat$entities$Ship$CommandType [I 
L268:   areturn 
L269:   
    .end code 
.end method 

.method static synthetic $SWITCH_TABLE$com$fs$starfarer$api$combat$WeaponAPI$WeaponSize : ()[I 
    .code stack 3 locals 1 
L0:     getstatic Field com/fs/starfarer/combat/entities/Ship $SWITCH_TABLE$com$fs$starfarer$api$combat$WeaponAPI$WeaponSize [I 
L3:     dup 
L4:     ifnull L8 
L7:     areturn 

        .stack stack_1 Object [I 
L8:     pop 
L9:     invokestatic Method com/fs/starfarer/api/combat/WeaponAPI$WeaponSize values ()[Lcom/fs/starfarer/api/combat/WeaponAPI$WeaponSize; 
L12:    arraylength 
L13:    newarray int 
L15:    astore_0 
        .catch java/lang/NoSuchFieldError from L16 to L25 using L28 
L16:    aload_0 
L17:    getstatic Field com/fs/starfarer/api/combat/WeaponAPI$WeaponSize LARGE Lcom/fs/starfarer/api/combat/WeaponAPI$WeaponSize; 
L20:    invokevirtual Method com/fs/starfarer/api/combat/WeaponAPI$WeaponSize ordinal ()I 
L23:    iconst_3 
L24:    iastore 
L25:    goto L29 

        .stack full 
            locals Object [I 
            stack Object java/lang/NoSuchFieldError 
        .end stack 
L28:    pop 
        .catch java/lang/NoSuchFieldError from L29 to L38 using L41 

        .stack same 
L29:    aload_0 
L30:    getstatic Field com/fs/starfarer/api/combat/WeaponAPI$WeaponSize MEDIUM Lcom/fs/starfarer/api/combat/WeaponAPI$WeaponSize; 
L33:    invokevirtual Method com/fs/starfarer/api/combat/WeaponAPI$WeaponSize ordinal ()I 
L36:    iconst_2 
L37:    iastore 
L38:    goto L42 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L41:    pop 
        .catch java/lang/NoSuchFieldError from L42 to L51 using L54 

        .stack same 
L42:    aload_0 
L43:    getstatic Field com/fs/starfarer/api/combat/WeaponAPI$WeaponSize SMALL Lcom/fs/starfarer/api/combat/WeaponAPI$WeaponSize; 
L46:    invokevirtual Method com/fs/starfarer/api/combat/WeaponAPI$WeaponSize ordinal ()I 
L49:    iconst_1 
L50:    iastore 
L51:    goto L55 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L54:    pop 

        .stack same 
L55:    aload_0 
L56:    dup 
L57:    putstatic Field com/fs/starfarer/combat/entities/Ship $SWITCH_TABLE$com$fs$starfarer$api$combat$WeaponAPI$WeaponSize [I 
L60:    areturn 
L61:    
    .end code 
.end method 

.method static synthetic $SWITCH_TABLE$com$fs$starfarer$api$combat$DamageType : ()[I 
    .code stack 3 locals 1 
L0:     getstatic Field com/fs/starfarer/combat/entities/Ship $SWITCH_TABLE$com$fs$starfarer$api$combat$DamageType [I 
L3:     dup 
L4:     ifnull L8 
L7:     areturn 

        .stack stack_1 Object [I 
L8:     pop 
L9:     invokestatic Method com/fs/starfarer/api/combat/DamageType values ()[Lcom/fs/starfarer/api/combat/DamageType; 
L12:    arraylength 
L13:    newarray int 
L15:    astore_0 
        .catch java/lang/NoSuchFieldError from L16 to L25 using L28 
L16:    aload_0 
L17:    getstatic Field com/fs/starfarer/api/combat/DamageType ENERGY Lcom/fs/starfarer/api/combat/DamageType; 
L20:    invokevirtual Method com/fs/starfarer/api/combat/DamageType ordinal ()I 
L23:    iconst_4 
L24:    iastore 
L25:    goto L29 

        .stack full 
            locals Object [I 
            stack Object java/lang/NoSuchFieldError 
        .end stack 
L28:    pop 
        .catch java/lang/NoSuchFieldError from L29 to L38 using L41 

        .stack same 
L29:    aload_0 
L30:    getstatic Field com/fs/starfarer/api/combat/DamageType FRAGMENTATION Lcom/fs/starfarer/api/combat/DamageType; 
L33:    invokevirtual Method com/fs/starfarer/api/combat/DamageType ordinal ()I 
L36:    iconst_3 
L37:    iastore 
L38:    goto L42 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L41:    pop 
        .catch java/lang/NoSuchFieldError from L42 to L51 using L54 

        .stack same 
L42:    aload_0 
L43:    getstatic Field com/fs/starfarer/api/combat/DamageType HIGH_EXPLOSIVE Lcom/fs/starfarer/api/combat/DamageType; 
L46:    invokevirtual Method com/fs/starfarer/api/combat/DamageType ordinal ()I 
L49:    iconst_2 
L50:    iastore 
L51:    goto L55 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L54:    pop 
        .catch java/lang/NoSuchFieldError from L55 to L64 using L67 

        .stack same 
L55:    aload_0 
L56:    getstatic Field com/fs/starfarer/api/combat/DamageType KINETIC Lcom/fs/starfarer/api/combat/DamageType; 
L59:    invokevirtual Method com/fs/starfarer/api/combat/DamageType ordinal ()I 
L62:    iconst_1 
L63:    iastore 
L64:    goto L68 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L67:    pop 
        .catch java/lang/NoSuchFieldError from L68 to L77 using L80 

        .stack same 
L68:    aload_0 
L69:    getstatic Field com/fs/starfarer/api/combat/DamageType OTHER Lcom/fs/starfarer/api/combat/DamageType; 
L72:    invokevirtual Method com/fs/starfarer/api/combat/DamageType ordinal ()I 
L75:    iconst_5 
L76:    iastore 
L77:    goto L81 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L80:    pop 

        .stack same 
L81:    aload_0 
L82:    dup 
L83:    putstatic Field com/fs/starfarer/combat/entities/Ship $SWITCH_TABLE$com$fs$starfarer$api$combat$DamageType [I 
L86:    areturn 
L87:    
    .end code 
.end method 

.method static synthetic $SWITCH_TABLE$com$fs$starfarer$api$combat$ShipAPI$HullSize : ()[I 
    .code stack 3 locals 1 
L0:     getstatic Field com/fs/starfarer/combat/entities/Ship $SWITCH_TABLE$com$fs$starfarer$api$combat$ShipAPI$HullSize [I 
L3:     dup 
L4:     ifnull L8 
L7:     areturn 

        .stack stack_1 Object [I 
L8:     pop 
L9:     invokestatic Method com/fs/starfarer/api/combat/ShipAPI$HullSize values ()[Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L12:    arraylength 
L13:    newarray int 
L15:    astore_0 
        .catch java/lang/NoSuchFieldError from L16 to L26 using L29 
L16:    aload_0 
L17:    getstatic Field com/fs/starfarer/api/combat/ShipAPI$HullSize CAPITAL_SHIP Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L20:    invokevirtual Method com/fs/starfarer/api/combat/ShipAPI$HullSize ordinal ()I 
L23:    bipush 6 
L25:    iastore 
L26:    goto L30 

        .stack full 
            locals Object [I 
            stack Object java/lang/NoSuchFieldError 
        .end stack 
L29:    pop 
        .catch java/lang/NoSuchFieldError from L30 to L39 using L42 

        .stack same 
L30:    aload_0 
L31:    getstatic Field com/fs/starfarer/api/combat/ShipAPI$HullSize CRUISER Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L34:    invokevirtual Method com/fs/starfarer/api/combat/ShipAPI$HullSize ordinal ()I 
L37:    iconst_5 
L38:    iastore 
L39:    goto L43 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L42:    pop 
        .catch java/lang/NoSuchFieldError from L43 to L52 using L55 

        .stack same 
L43:    aload_0 
L44:    getstatic Field com/fs/starfarer/api/combat/ShipAPI$HullSize DEFAULT Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L47:    invokevirtual Method com/fs/starfarer/api/combat/ShipAPI$HullSize ordinal ()I 
L50:    iconst_1 
L51:    iastore 
L52:    goto L56 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L55:    pop 
        .catch java/lang/NoSuchFieldError from L56 to L65 using L68 

        .stack same 
L56:    aload_0 
L57:    getstatic Field com/fs/starfarer/api/combat/ShipAPI$HullSize DESTROYER Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L60:    invokevirtual Method com/fs/starfarer/api/combat/ShipAPI$HullSize ordinal ()I 
L63:    iconst_4 
L64:    iastore 
L65:    goto L69 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L68:    pop 
        .catch java/lang/NoSuchFieldError from L69 to L78 using L81 

        .stack same 
L69:    aload_0 
L70:    getstatic Field com/fs/starfarer/api/combat/ShipAPI$HullSize FIGHTER Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L73:    invokevirtual Method com/fs/starfarer/api/combat/ShipAPI$HullSize ordinal ()I 
L76:    iconst_2 
L77:    iastore 
L78:    goto L82 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L81:    pop 
        .catch java/lang/NoSuchFieldError from L82 to L91 using L94 

        .stack same 
L82:    aload_0 
L83:    getstatic Field com/fs/starfarer/api/combat/ShipAPI$HullSize FRIGATE Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L86:    invokevirtual Method com/fs/starfarer/api/combat/ShipAPI$HullSize ordinal ()I 
L89:    iconst_3 
L90:    iastore 
L91:    goto L95 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L94:    pop 

        .stack same 
L95:    aload_0 
L96:    dup 
L97:    putstatic Field com/fs/starfarer/combat/entities/Ship $SWITCH_TABLE$com$fs$starfarer$api$combat$ShipAPI$HullSize [I 
L100:   areturn 
L101:   
    .end code 
.end method 
.signature [u339] 
.innerclasses 
    com/fs/graphics/util/GLListManager$GLListToken com/fs/graphics/util/GLListManager GLListToken public static 
    com/fs/starfarer/api/campaign/CombatDamageData$DealtByFleetMember com/fs/starfarer/api/campaign/CombatDamageData DealtByFleetMember public static 
    com/fs/starfarer/api/combat/ShieldAPI$ShieldType com/fs/starfarer/api/combat/ShieldAPI ShieldType public static final enum 
    com/fs/starfarer/api/combat/ShipAPI$HullSize com/fs/starfarer/api/combat/ShipAPI HullSize public static final enum 
    com/fs/starfarer/api/combat/ShipEngineControllerAPI$ShipEngineAPI com/fs/starfarer/api/combat/ShipEngineControllerAPI ShipEngineAPI public static interface abstract 
    com/fs/starfarer/api/combat/ShipHullSpecAPI$ShipTypeHints com/fs/starfarer/api/combat/ShipHullSpecAPI ShipTypeHints public static final enum 
    com/fs/starfarer/api/combat/ShipSystemAPI$SystemState com/fs/starfarer/api/combat/ShipSystemAPI SystemState public static final enum 
    com/fs/starfarer/api/combat/ShipwideAIFlags$AIFlags com/fs/starfarer/api/combat/ShipwideAIFlags AIFlags public static final enum 
    com/fs/starfarer/api/combat/WeaponAPI$WeaponSize com/fs/starfarer/api/combat/WeaponAPI WeaponSize public static final enum 
    com/fs/starfarer/api/combat/WeaponAPI$WeaponType com/fs/starfarer/api/combat/WeaponAPI WeaponType public static final enum 
    com/fs/starfarer/api/impl/combat/ShipExplosionFlareVisual$ShipExplosionFlareParams com/fs/starfarer/api/impl/combat/ShipExplosionFlareVisual ShipExplosionFlareParams public static 
    com/fs/starfarer/combat/CombatFleetManager$O0 com/fs/starfarer/combat/CombatFleetManager O0 public static 
    com/fs/starfarer/combat/ai/movement/maneuvers/M$o com/fs/starfarer/combat/ai/movement/maneuvers/M o public static interface abstract 
    com/fs/starfarer/combat/E/o0OO$o com/fs/starfarer/combat/E/o0OO o public static 
    com/fs/starfarer/combat/entities/Ship$1 [0] [0] 
    com/fs/starfarer/combat/entities/Ship$2 [0] [0] 
    com/fs/starfarer/combat/entities/Ship$o com/fs/starfarer/combat/entities/Ship o public static 
    com/fs/starfarer/combat/entities/Ship$Oo com/fs/starfarer/combat/entities/Ship Oo public static 
    com/fs/starfarer/combat/entities/Ship$oo com/fs/starfarer/combat/entities/Ship oo public static final enum 
    com/fs/starfarer/combat/entities/Ship$ShipAIWrapper com/fs/starfarer/combat/entities/Ship ShipAIWrapper public static 
    com/fs/starfarer/combat/entities/ship/new$Oo com/fs/starfarer/combat/entities/ship/new Oo public static interface abstract 
    com/fs/starfarer/combat/entities/ship/new$o com/fs/starfarer/combat/entities/ship/new o public static 
    com/fs/starfarer/combat/entities/ship/null$Oo com/fs/starfarer/combat/entities/ship/null Oo public static interface abstract 
    com/fs/starfarer/combat/entities/ship/D$o com/fs/starfarer/combat/entities/ship/D o public static interface abstract 
    com/fs/starfarer/combat/entities/ship/super$o com/fs/starfarer/combat/entities/ship/super o public static interface abstract 
    com/fs/starfarer/combat/entities/ship/super$oo com/fs/starfarer/combat/entities/ship/super oo public static final enum 
    com/fs/starfarer/combat/systems/oO0O$Oo com/fs/starfarer/combat/systems/oO0O Oo public static 
    com/fs/starfarer/combat/tasks/CombatTask$CombatTaskType com/fs/starfarer/combat/tasks/CombatTask CombatTaskType public static final enum 
    com/fs/starfarer/combat/tasks/Object$o com/fs/starfarer/combat/tasks/Object o public static final enum 
    com/fs/starfarer/combat/new/OoOO$o com/fs/starfarer/combat/new/OoOO o public static interface abstract 
    com/fs/starfarer/loading/specs/nullsuper$o com/fs/starfarer/loading/specs/nullsuper o public static final enum 
    com/fs/starfarer/renderers/damage/I$o com/fs/starfarer/renderers/damage/I o public static interface abstract 
    com/fs/starfarer/util/Tesselator$Oo com/fs/starfarer/util/Tesselator Oo public static 
    com/fs/starfarer/util/Tesselator$oo com/fs/starfarer/util/Tesselator oo public static 
    com/fs/starfarer/util/Tesselator$o com/fs/starfarer/util/Tesselator o public static 
.end innerclasses 
.nestmembers com/fs/starfarer/combat/entities/Ship$1 com/fs/starfarer/combat/entities/Ship$2 com/fs/starfarer/combat/entities/Ship$o com/fs/starfarer/combat/entities/Ship$Oo com/fs/starfarer/combat/entities/Ship$oo com/fs/starfarer/combat/entities/Ship$ShipAIWrapper 
.const [u339] = Utf8 Lcom/fs/starfarer/combat/entities/BaseEntity;Lcom/fs/graphics/LayeredRenderable<Lcom/fs/starfarer/api/combat/CombatEngineLayers;Lcom/fs/starfarer/combat/CombatViewport;>;Lcom/fs/starfarer/combat/entities/ship/null$Oo;Lcom/fs/starfarer/combat/entities/ship/D$o;Lcom/fs/starfarer/renderers/damage/I$o;Lcom/fs/starfarer/combat/ai/o0oO;Lcom/fs/starfarer/api/combat/ShipAPI;Lcom/fs/starfarer/combat/new/OoOO$o;Ljava/lang/Cloneable;Lcom/fs/starfarer/combat/entities/C; 
.const [u576] = Utf8 (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)Lorg/lwjgl/util/vector/Vector2f; 
.const [u632] = Utf8 ()Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
.const [c877] = Class [u878] 
.const [u997] = Utf8 Lcom/fs/starfarer/renderers/oOoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO; 
.const [u1691] = Utf8 ()Lcom/fs/starfarer/api/combat/MutableShipStatsAPI; 
.const [c2434] = Class [u2414] 
.const [u2698] = Utf8 ()Lcom/fs/starfarer/combat/entities/ship/trackers/ooOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO; 
.const [c4863] = Class [u3313] 
.const [u878] = Utf8 com/fs/starfarer/renderers/oOoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 
.const [u2414] = Utf8 com/fs/starfarer/combat/ai/collisions/CollisionAnalysisModule 
.const [u3313] = Utf8 com/fs/starfarer/combat/entities/ship/trackers/ooOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 
.end class 
