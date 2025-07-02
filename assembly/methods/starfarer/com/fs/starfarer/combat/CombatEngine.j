.version 61 0 
.class public super com/fs/starfarer/combat/CombatEngine 
.super java/lang/Object 
.implements com/fs/starfarer/api/combat/CombatEngineAPI 
.field public static log Lorg/apache/log4j/Logger; 
.field public static MAX_STEP F 
.field public static final ANIMATION_GROUP Ljava/lang/String; = 'CEanim' 
.field public static final ANIMATION_GROUP_NONPAUSABLE Ljava/lang/String; = 'CENonPauseanim' 
.field private OO0000 Lcom/fs/starfarer/combat/entities/Ship; 
.field private 'Ó00000' Lcom/fs/starfarer/combat/A/B; 
.field private 'ØO0000' Ljava/util/List; .fieldattributes 
    .signature Ljava/util/List<Ljava/lang/Object;>; 
.end fieldattributes 
.field private 'while.Object' Ljava/util/List; .fieldattributes 
    .signature Ljava/util/List<Ljava/lang/Object;>; 
.end fieldattributes 
.field private 'ÖÓ0000' Lcom/fs/util/container/repo/ObjectRepository; 
.field private 'null.String' Ljava/util/List; .fieldattributes 
    .signature Ljava/util/List<Lcom/fs/starfarer/combat/entities/Ship;>; 
.end fieldattributes 
.field private 'new.Object' Lcom/fs/graphics/LayeredRenderer; .fieldattributes 
    .signature Lcom/fs/graphics/LayeredRenderer<Lcom/fs/starfarer/api/combat/CombatEngineLayers;Lcom/fs/starfarer/combat/CombatViewport;>; 
.end fieldattributes 
.field private 'öÔ0000' Lcom/fs/graphics/particle/DynamicParticleGroup; 
.field private 'float.new' Lcom/fs/graphics/particle/DynamicParticleGroup; 
.field private 'oÔ0000' Lcom/fs/graphics/particle/DynamicParticleGroup; 
.field private 'null.Object' Lcom/fs/graphics/particle/DynamicParticleGroup; 
.field private 'class.Object' Lcom/fs/graphics/particle/DynamicParticleGroup; 
.field private 'float.super' Lcom/fs/graphics/particle/DynamicParticleGroup; 
.field private 'ØÓ0000' Lcom/fs/graphics/particle/DynamicParticleGroup; 
.field private 'ÔÒ0000' Lcom/fs/graphics/particle/DynamicParticleGroup; 
.field private 'ÔO0000' Lcom/fs/graphics/particle/DynamicParticleGroup; 
.field private 'OÔ0000' Lcom/fs/graphics/particle/DynamicParticleGroup; 
.field private 'ÔÕ0000' Lcom/fs/graphics/particle/DynamicParticleGroup; 
.field private 'oØ0000' Lcom/fs/graphics/particle/DynamicParticleGroup; 
.field private 'ÓÓ0000' Lcom/fs/graphics/particle/DynamicParticleGroup; 
.field private 'ÔÔ0000' Lcom/fs/starfarer/combat/E/oOOO; 
.field private 'class.class' Lcom/fs/starfarer/renderers/Q; 
.field private 'Ø00000' Lcom/fs/starfarer/combat/entities/ContrailEngine; 
.field private 'OÕ0000' Lcom/fs/starfarer/combat/OOOo; 
.field private 'ØÖ0000' Lcom/fs/starfarer/combat/OOOo; 
.field private 'ÖÖ0000' Lcom/fs/starfarer/combat/OOOo; 
.field private static 'õÒ0000' Lorg/lwjgl/util/vector/Vector2f; 
.field private static 'class.String' Lcom/fs/graphics/Sprite; 
.field private 'ÔÓ0000' Lcom/fs/starfarer/campaign/WarpingSpriteRenderer; 
.field private 'ö00000' Lcom/fs/starfarer/renderers/damage/DebrisParticleSystem; 
.field private float Lcom/fs/starfarer/renderers/damage/ExplosionParticleSystem; 
.field private 'oÓ0000' Lcom/fs/starfarer/combat/entities/terrain/A; 
.field private 'null.class' Lcom/fs/starfarer/renderers/damage/OooO; 
.field private o00000 Lcom/fs/starfarer/combat/CombatViewport; 
.field private 'ÓÔ0000' Lcom/fs/starfarer/combat/K; 
.field private 'while.new' Ljava/util/Map; .fieldattributes 
    .signature Ljava/util/Map<Ljava/lang/Integer;Lcom/fs/starfarer/combat/new/T;>; 
.end fieldattributes 
.field private 'interface.new' Ljava/util/List; .fieldattributes 
    .signature Ljava/util/List<Lcom/fs/starfarer/combat/CombatFleetManager;>; 
.end fieldattributes 
.field private 'õÔ0000' Z 
.field private static 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
.field private 'interface.Object' Ljava/util/List; .fieldattributes 
    .signature Ljava/util/List<Lcom/fs/starfarer/combat/oooO;>; 
.end fieldattributes 
.field private 'float.String' Lcom/fs/starfarer/util/IntervalTracker; 
.field private 'class.super' Ljava/util/List; .fieldattributes 
    .signature Ljava/util/List<Lcom/fs/starfarer/combat/String/B;>; 
.end fieldattributes 
.field private 'õÖ0000' Lcom/fs/graphics/util/Fader; 
.field private 'new.super' Z 
.field private 'OØ0000' Ljava/lang/String; 
.field private class Lcom/fs/starfarer/combat/E/G; 
.field private 'õO0000' Lcom/fs/starfarer/combat/E/G; 
.field private 'ÖÒ0000' Lcom/fs/starfarer/combat/E/G; 
.field private 'new.new' Lcom/fs/starfarer/combat/E/G; 
.field private 'interface.String' Z 
.field private 'ØÔ0000' Lcom/fs/starfarer/api/combat/BattleCreationContext; 
.field private 'Ôo0000' F 
.field private 'öÖ0000' F 
.field public static MIN_REPORT_INTERVAL F 
.field private 'new.String' F 
.field private Oo0000 Lcom/fs/starfarer/api/mission/FleetSide; 
.field private 'öÓ0000' Ljava/awt/Color; 
.field private 'ÓO0000' Z 
.field protected renderStarfield Z 
.field private 'Óo0000' Ljava/awt/Color; 
.field private 'öo0000' Lcom/fs/starfarer/api/campaign/CombatDamageData; 
.field private 'ØÒ0000' Ljava/lang/String; 
.field private 'õÓ0000' Ljava/lang/String; 
.field private 'ÖÕ0000' Z 
.field private 'interface.super' Z 
.field private 'OÒ0000' Z 
.field private 'new.class' F 
.field private 'ÓÖ0000' F 
.field private 'float.Object' F 
.field private 'öÒ0000' F 
.field private 'Ö00000' Z 
.field private 'OÓ0000' Lcom/fs/starfarer/api/combat/MutableStat; 
.field protected spawnedTestShip Z 
.field private 'õo0000' Z 
.field private 'OÖ0000' Z 
.field protected combatNotOverFor F 
.field private 'oÒ0000' I 
.field private 'Ô00000' Z 
.field private new Lcom/fs/starfarer/combat/Object/String; 
.field private 'ÖÔ0000' Lcom/fs/starfarer/combat/entities/Ship; 
.field private 'öO0000' Z 
.field private while Ljava/awt/Color; 
.field private 'Øo0000' Z 
.field private 'ÔÖ0000' Z 
.field private 'oÕ0000' F 
.field private 'õ00000' F 
.field private null I 
.field private 'ÓÒ0000' I 
.field private 'öÕ0000' I 
.field private 'ÖO0000' I 
.field private 'ØÕ0000' Z 
.field private 'interface' Z 
.field private 'ÓÕ0000' Ljava/lang/String; 
.field private 'while.super' Ljava/util/Map; .fieldattributes 
    .signature Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>; 
.end fieldattributes 
.field private 'null.super' Lcom/fs/starfarer/api/util/TimeoutTracker; .fieldattributes 
    .signature Lcom/fs/starfarer/api/util/TimeoutTracker<Lcom/fs/starfarer/combat/entities/Ship;>; 
.end fieldattributes 
.field private oO0000 Lcom/fs/starfarer/api/util/TimeoutTracker; .fieldattributes 
    .signature Lcom/fs/starfarer/api/util/TimeoutTracker<Lcom/fs/starfarer/combat/entities/Ship;>; 
.end fieldattributes 
.field private 'Öo0000' Lcom/fs/starfarer/api/util/TimeoutTrackerMap; .fieldattributes 
    .signature Lcom/fs/starfarer/api/util/TimeoutTrackerMap<Ljava/lang/Object;Ljava/lang/Object;>; 
.end fieldattributes 
.field private oo0000 Lcom/fs/starfarer/api/util/IntervalUtil; 
.field private 'class.new' Lcom/fs/starfarer/combat/O; 
.field private 'null.new' Ljava/util/Set; .fieldattributes 
    .signature Ljava/util/Set<Lcom/fs/starfarer/title/Object/do;>; 
.end fieldattributes 
.field private 'õÕ0000' Ljava/util/Set; .fieldattributes 
    .signature Ljava/util/Set<Lcom/fs/starfarer/title/Object/do;>; 
.end fieldattributes 
.field private static volatile synthetic 'oÖ0000' [I 

.method static <clinit> : ()V 
    .code stack 2 locals 0 
L0:     ldc Class com/fs/starfarer/combat/CombatEngine 
L2:     invokestatic Method org/apache/log4j/Logger getLogger (Ljava/lang/Class;)Lorg/apache/log4j/Logger; 
L5:     putstatic Field com/fs/starfarer/combat/CombatEngine log Lorg/apache/log4j/Logger; 
L8:     ldc +0.03333333507180214f 
L10:    putstatic Field com/fs/starfarer/combat/CombatEngine MAX_STEP F 
L13:    new org/lwjgl/util/vector/Vector2f 
L16:    dup 
L17:    invokespecial Method org/lwjgl/util/vector/Vector2f <init> ()V 
L20:    putstatic Field com/fs/starfarer/combat/CombatEngine 'õÒ0000' Lorg/lwjgl/util/vector/Vector2f; 
L23:    aconst_null 
L24:    putstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L27:    ldc +5.0f 
L29:    putstatic Field com/fs/starfarer/combat/CombatEngine MIN_REPORT_INTERVAL F 
L32:    return 
L33:    
    .end code 
.end method 

.method public setCustomExit : (Ljava/lang/String;Ljava/lang/String;)V 
    .code stack 2 locals 3 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/fs/starfarer/combat/CombatEngine 'ØÒ0000' Ljava/lang/String; 
L5:     aload_0 
L6:     aload_2 
L7:     putfield Field com/fs/starfarer/combat/CombatEngine 'õÓ0000' Ljava/lang/String; 
L10:    return 
L11:    
    .end code 
.end method 

.method public getCustomExitButtonTitle : ()Ljava/lang/String; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'ØÒ0000' Ljava/lang/String; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public getCustomExitButtonConfirmString : ()Ljava/lang/String; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'õÓ0000' Ljava/lang/String; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public static hasInstance : ()Z 
    .code stack 1 locals 0 
L0:     getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L3:     ifnull L8 
L6:     iconst_1 
L7:     ireturn 

        .stack same 
L8:     iconst_0 
L9:     ireturn 
L10:    
    .end code 
.end method 

.method public static getInstance : ()Lcom/fs/starfarer/combat/CombatEngine; 
    .code stack 3 locals 0 
L0:     getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L3:     ifnonnull L38 
L6:     new com/fs/starfarer/combat/CombatEngine 
L9:     dup 
L10:    invokespecial Method com/fs/starfarer/combat/CombatEngine <init> ()V 
L13:    putstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L16:    getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L19:    getfield Field com/fs/starfarer/combat/CombatEngine 'new.Object' Lcom/fs/graphics/LayeredRenderer; 
L22:    new com/fs/starfarer/combat/CombatEngine$1 
L25:    dup 
L26:    invokespecial Method com/fs/starfarer/combat/CombatEngine$1 <init> ()V 
L29:    invokevirtual Method com/fs/graphics/LayeredRenderer add (Lcom/fs/graphics/LayeredRenderable;)V 
L32:    getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L35:    invokestatic Method com/fs/starfarer/api/Global setCombatEngine (Lcom/fs/starfarer/api/combat/CombatEngineAPI;)V 

        .stack same 
L38:    getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L41:    areturn 
L42:    
    .end code 
.end method 

.method public getNebula : ()Lcom/fs/starfarer/api/combat/CombatNebulaAPI; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'oÓ0000' Lcom/fs/starfarer/combat/entities/terrain/A; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public getCollisionChecker : ()Lcom/fs/starfarer/combat/E/oOOO; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'ÔÔ0000' Lcom/fs/starfarer/combat/E/oOOO; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public getDamageData : ()Lcom/fs/starfarer/api/campaign/CombatDamageData; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'öo0000' Lcom/fs/starfarer/api/campaign/CombatDamageData; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public getBackgroundGlowColor : ()Ljava/awt/Color; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'öÓ0000' Ljava/awt/Color; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public setBackgroundGlowColor : (Ljava/awt/Color;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/fs/starfarer/combat/CombatEngine 'öÓ0000' Ljava/awt/Color; 
L5:     return 
L6:     
    .end code 
.end method 

.method public isBackgroundGlowColorNonAdditive : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'ÓO0000' Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public setBackgroundGlowColorNonAdditive : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/CombatEngine 'ÓO0000' Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public isRenderStarfield : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine renderStarfield Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public setRenderStarfield : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/CombatEngine renderStarfield Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public getBackgroundColor : ()Ljava/awt/Color; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'Óo0000' Ljava/awt/Color; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public setBackgroundColor : (Ljava/awt/Color;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/fs/starfarer/combat/CombatEngine 'Óo0000' Ljava/awt/Color; 
L5:     return 
L6:     
    .end code 
.end method 

.method public getSideDeploymentOverrideSide : ()Lcom/fs/starfarer/api/mission/FleetSide; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine Oo0000 Lcom/fs/starfarer/api/mission/FleetSide; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public maintainStatusForPlayerShip : (Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V 
    .code stack 7 locals 6 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'ÓÔ0000' Lcom/fs/starfarer/combat/K; 
L4:     instanceof com/fs/starfarer/combat/CombatState 
L7:     ifeq L47 
L10:    aload_0 
L11:    getfield Field com/fs/starfarer/combat/CombatEngine 'ÓÔ0000' Lcom/fs/starfarer/combat/K; 
L14:    checkcast com/fs/starfarer/combat/CombatState 
L17:    invokevirtual Method com/fs/starfarer/combat/CombatState getShipInfo ()Lcom/fs/starfarer/class/new/return; 
L20:    ifnull L47 
L23:    aload_0 
L24:    getfield Field com/fs/starfarer/combat/CombatEngine 'ÓÔ0000' Lcom/fs/starfarer/combat/K; 
L27:    checkcast com/fs/starfarer/combat/CombatState 
L30:    invokevirtual Method com/fs/starfarer/combat/CombatState getShipInfo ()Lcom/fs/starfarer/class/new/return; 
L33:    invokevirtual Method com/fs/starfarer/class/new/return getStatusList ()Lcom/fs/starfarer/class/new/C; 
L36:    aload_1 
L37:    aload_2 
L38:    aload_3 
L39:    aload 4 
L41:    iload 5 
L43:    iconst_0 
L44:    invokevirtual Method com/fs/starfarer/class/new/C maintainStatusFor (Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V 

        .stack same 
L47:    return 
L48:    
    .end code 
.end method 

.method public setSideDeploymentOverrideSide : (Lcom/fs/starfarer/api/mission/FleetSide;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/fs/starfarer/combat/CombatEngine Oo0000 Lcom/fs/starfarer/api/mission/FleetSide; 
L5:     return 
L6:     
    .end code 
.end method 

.method public getCombatUI : ()Lcom/fs/starfarer/combat/K; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'ÓÔ0000' Lcom/fs/starfarer/combat/K; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public setHyperspaceMode : ()V 
    .code stack 5 locals 1 
L0:     aload_0 
L1:     new com/fs/starfarer/campaign/WarpingSpriteRenderer 
L4:     dup 
L5:     bipush 16 
L7:     bipush 16 
L9:     invokespecial Method com/fs/starfarer/campaign/WarpingSpriteRenderer <init> (II)V 
L12:    putfield Field com/fs/starfarer/combat/CombatEngine 'ÔÓ0000' Lcom/fs/starfarer/campaign/WarpingSpriteRenderer; 
L15:    return 
L16:    
    .end code 
.end method 

.method public isEnemyInFullRetreat : ()Z 
    .code stack 2 locals 8 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine combatNotOverFor F 
L4:     fconst_0 
L5:     fcmpl 
L6:     ifle L11 
L9:     iconst_0 
L10:    ireturn 

        .stack same 
L11:    aload_0 
L12:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getEnemyFleetManager ()Lcom/fs/starfarer/combat/CombatFleetManager; 
L15:    astore_1 
L16:    aload_1 
L17:    ifnonnull L22 
L20:    iconst_0 
L21:    ireturn 

        .stack append Object com/fs/starfarer/combat/CombatFleetManager 
L22:    aload_0 
L23:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getEnemyTaskManager ()Lcom/fs/starfarer/combat/tasks/CombatTaskManager; 
L26:    astore_2 
L27:    aload_2 
L28:    ifnonnull L33 
L31:    iconst_0 
L32:    ireturn 

        .stack append Object com/fs/starfarer/combat/tasks/CombatTaskManager 
L33:    iconst_1 
L34:    istore_3 
L35:    aload_1 
L36:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getDeployed ()Ljava/util/Set; 
L39:    invokeinterface InterfaceMethod java/util/Set iterator ()Ljava/util/Iterator; 1 
L44:    astore 5 
L46:    goto L135 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/tasks/CombatTaskManager Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L49:    aload 5 
L51:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L56:    checkcast com/fs/starfarer/combat/CombatFleetManager$O0 
L59:    astore 4 
L61:    aload 4 
L63:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 isFighterWing ()Z 
L66:    ifeq L98 
L69:    aload 4 
L71:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getWingIfFighter ()Lcom/fs/starfarer/combat/ai/M; 
L74:    ifnull L98 
L77:    aload 4 
L79:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getWingIfFighter ()Lcom/fs/starfarer/combat/ai/M; 
L82:    invokevirtual Method com/fs/starfarer/combat/ai/M getSpec ()Lcom/fs/starfarer/loading/specs/FighterWingSpec; 
L85:    ldc_w 'independent_of_carrier' 
L88:    invokevirtual Method com/fs/starfarer/loading/specs/FighterWingSpec hasTag (Ljava/lang/String;)Z 
L91:    ifne L98 
L94:    iconst_1 
L95:    goto L99 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/tasks/CombatTaskManager Integer Object com/fs/starfarer/combat/CombatFleetManager$O0 Object java/util/Iterator 
            stack 
        .end stack 
L98:    iconst_0 

        .stack stack_1 Integer 
L99:    istore 6 
L101:   iload 6 
L103:   ifeq L109 
L106:   goto L135 

        .stack append Integer 
L109:   aload_2 
L110:   aload 4 
L112:   invokevirtual Method com/fs/starfarer/combat/tasks/CombatTaskManager getOrdersForFleetMember (Lcom/fs/starfarer/combat/CombatFleetManager$O0;)Lcom/fs/starfarer/combat/tasks/Object; 
L115:   astore 7 
L117:   aload 7 
L119:   ifnull L133 
L122:   aload 7 
L124:   invokevirtual Method com/fs/starfarer/combat/tasks/Object o00000 ()Lcom/fs/starfarer/combat/tasks/Object$o; 
L127:   getstatic Field com/fs/starfarer/combat/tasks/Object$o String Lcom/fs/starfarer/combat/tasks/Object$o; 
L130:   if_acmpeq L135 

        .stack append Object com/fs/starfarer/combat/tasks/Object 
L133:   iconst_0 
L134:   istore_3 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/tasks/CombatTaskManager Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L135:   aload 5 
L137:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L142:   ifne L49 
L145:   iload_3 
L146:   ifne L151 
L149:   iconst_0 
L150:   ireturn 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/tasks/CombatTaskManager Integer 
            stack 
        .end stack 
L151:   aload_0 
L152:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerFleetManager ()Lcom/fs/starfarer/combat/CombatFleetManager; 
L155:   astore_1 
L156:   aload_1 
L157:   ifnonnull L162 
L160:   iconst_0 
L161:   ireturn 

        .stack same 
L162:   aload_1 
L163:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getReserves ()Ljava/util/Set; 
L166:   invokeinterface InterfaceMethod java/util/Set isEmpty ()Z 1 
L171:   ifeq L188 
L174:   aload_1 
L175:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getDeployed ()Ljava/util/Set; 
L178:   invokeinterface InterfaceMethod java/util/Set isEmpty ()Z 1 
L183:   ifeq L188 
L186:   iconst_0 
L187:   ireturn 

        .stack same 
L188:   aload_0 
L189:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getEnemyFleetManager ()Lcom/fs/starfarer/combat/CombatFleetManager; 
L192:   astore_1 
L193:   aload_1 
L194:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getReserves ()Ljava/util/Set; 
L197:   invokeinterface InterfaceMethod java/util/Set isEmpty ()Z 1 
L202:   ifne L214 
L205:   aload_2 
L206:   invokevirtual Method com/fs/starfarer/combat/tasks/CombatTaskManager isInFullRetreat ()Z 
L209:   ifne L214 
L212:   iconst_0 
L213:   ireturn 

        .stack same 
L214:   iconst_1 
L215:   ireturn 
L216:   
    .end code 
.end method 

.method public getTimeSinceLastReport : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'new.String' F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method public setTimeSinceLastReport : (F)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     fload_1 
L2:     putfield Field com/fs/starfarer/combat/CombatEngine 'new.String' F 
L5:     return 
L6:     
    .end code 
.end method 

.method public getPlanetBgWidth : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'Ôo0000' F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method public setPlanetBgWidth : (F)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     fload_1 
L2:     putfield Field com/fs/starfarer/combat/CombatEngine 'Ôo0000' F 
L5:     return 
L6:     
    .end code 
.end method 

.method public getPlanetBgHeight : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'öÖ0000' F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method public setPlanetBgHeight : (F)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     fload_1 
L2:     putfield Field com/fs/starfarer/combat/CombatEngine 'öÖ0000' F 
L5:     return 
L6:     
    .end code 
.end method 

.method public getContext : ()Lcom/fs/starfarer/api/combat/BattleCreationContext; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'ØÔ0000' Lcom/fs/starfarer/api/combat/BattleCreationContext; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public setContext : (Lcom/fs/starfarer/api/combat/BattleCreationContext;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/fs/starfarer/combat/CombatEngine 'ØÔ0000' Lcom/fs/starfarer/api/combat/BattleCreationContext; 
L5:     return 
L6:     
    .end code 
.end method 

.method public setObjects : (Lcom/fs/util/container/repo/ObjectRepository;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/fs/starfarer/combat/CombatEngine 'ÖÓ0000' Lcom/fs/util/container/repo/ObjectRepository; 
L5:     return 
L6:     
    .end code 
.end method 

.method public setFleetManagers : (Ljava/util/List;)V 
    .signature (Ljava/util/List<Lcom/fs/starfarer/combat/CombatFleetManager;>;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/fs/starfarer/combat/CombatEngine 'interface.new' Ljava/util/List; 
L5:     return 
L6:     
    .end code 
.end method 

.method public getFleetManagers : ()Ljava/util/List; 
    .signature ()Ljava/util/List<Lcom/fs/starfarer/combat/CombatFleetManager;>; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'interface.new' Ljava/util/List; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public isShowDeploymentDialog : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'interface.String' Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public setShowDeploymentDialog : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/CombatEngine 'interface.String' Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public setCombatUI : (Lcom/fs/starfarer/combat/K;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/fs/starfarer/combat/CombatEngine 'ÓÔ0000' Lcom/fs/starfarer/combat/K; 
L5:     return 
L6:     
    .end code 
.end method 

.method public getWhiteout : ()Lcom/fs/starfarer/renderers/damage/OooO; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'null.class' Lcom/fs/starfarer/renderers/damage/OooO; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public getCombatMap : ()Lcom/fs/starfarer/combat/A/B; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'Ó00000' Lcom/fs/starfarer/combat/A/B; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public addTrigger : (Lcom/fs/starfarer/combat/String/B;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'class.super' Ljava/util/List; 
L4:     aload_1 
L5:     invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L10:    pop 
L11:    aload_0 
L12:    aload_1 
L13:    invokevirtual Method com/fs/starfarer/combat/CombatEngine addListener (Lcom/fs/starfarer/combat/oooO;)V 
L16:    return 
L17:    
    .end code 
.end method 

.method public setCombatMap : (Lcom/fs/starfarer/combat/A/B;)V 
    .code stack 6 locals 5 
L0:     aload_0 
L1:     new com/fs/starfarer/combat/entities/terrain/A 
L4:     dup 
L5:     aload_1 
L6:     invokespecial Method com/fs/starfarer/combat/entities/terrain/A <init> (Lcom/fs/starfarer/combat/A/B;)V 
L9:     putfield Field com/fs/starfarer/combat/CombatEngine 'oÓ0000' Lcom/fs/starfarer/combat/entities/terrain/A; 
L12:    aload_0 
L13:    getfield Field com/fs/starfarer/combat/CombatEngine 'while.new' Ljava/util/Map; 
L16:    iconst_0 
L17:    invokestatic Method java/lang/Integer valueOf (I)Ljava/lang/Integer; 
L20:    new com/fs/starfarer/combat/new/T 
L23:    dup 
L24:    aload_1 
L25:    iconst_0 
L26:    invokespecial Method com/fs/starfarer/combat/new/T <init> (Lcom/fs/starfarer/combat/A/B;I)V 
L29:    invokeinterface InterfaceMethod java/util/Map put (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 3 
L34:    pop 
L35:    aload_0 
L36:    getfield Field com/fs/starfarer/combat/CombatEngine 'while.new' Ljava/util/Map; 
L39:    iconst_1 
L40:    invokestatic Method java/lang/Integer valueOf (I)Ljava/lang/Integer; 
L43:    new com/fs/starfarer/combat/new/T 
L46:    dup 
L47:    aload_1 
L48:    iconst_1 
L49:    invokespecial Method com/fs/starfarer/combat/new/T <init> (Lcom/fs/starfarer/combat/A/B;I)V 
L52:    invokeinterface InterfaceMethod java/util/Map put (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 3 
L57:    pop 
L58:    aload_0 
L59:    aload_1 
L60:    putfield Field com/fs/starfarer/combat/CombatEngine 'Ó00000' Lcom/fs/starfarer/combat/A/B; 
L63:    ldc_w Class com/fs/starfarer/api/combat/EveryFrameCombatPlugin 
L66:    invokestatic Method com/fs/starfarer/loading/scripts/ScriptStore 'Ô00000' (Ljava/lang/Class;)Ljava/util/List; 
L69:    astore_2 
L70:    aload_2 
L71:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L76:    astore 4 
L78:    goto L104 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/A/B Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L81:    aload 4 
L83:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L88:    checkcast com/fs/starfarer/api/combat/EveryFrameCombatPlugin 
L91:    astore_3 
L92:    aload_1 
L93:    new com/fs/starfarer/title/Object/L$Oo 
L96:    dup 
L97:    aload_3 
L98:    invokespecial Method com/fs/starfarer/title/Object/L$Oo <init> (Lcom/fs/starfarer/api/combat/EveryFrameCombatPlugin;)V 
L101:   invokevirtual Method com/fs/starfarer/combat/A/B 'super' (Lcom/fs/starfarer/combat/A/oOoO;)V 

        .stack same 
L104:   aload 4 
L106:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L111:   ifne L81 
L114:   return 
L115:   
    .end code 
.end method 

.method public addPlugin : (Lcom/fs/starfarer/api/combat/EveryFrameCombatPlugin;)V 
    .code stack 4 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'Ó00000' Lcom/fs/starfarer/combat/A/B; 
L4:     new com/fs/starfarer/title/Object/L$Oo 
L7:     dup 
L8:     aload_1 
L9:     invokespecial Method com/fs/starfarer/title/Object/L$Oo <init> (Lcom/fs/starfarer/api/combat/EveryFrameCombatPlugin;)V 
L12:    invokevirtual Method com/fs/starfarer/combat/A/B 'super' (Lcom/fs/starfarer/combat/A/oOoO;)V 
L15:    aload_1 
L16:    aload_0 
L17:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/EveryFrameCombatPlugin init (Lcom/fs/starfarer/api/combat/CombatEngineAPI;)V 2 
L22:    return 
L23:    
    .end code 
.end method 

.method public removePlugin : (Lcom/fs/starfarer/api/combat/EveryFrameCombatPlugin;)V 
    .code stack 2 locals 5 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'Ó00000' Lcom/fs/starfarer/combat/A/B; 
L4:     ifnonnull L8 
L7:     return 

        .stack same 
L8:     aload_0 
L9:     getfield Field com/fs/starfarer/combat/CombatEngine 'Ó00000' Lcom/fs/starfarer/combat/A/B; 
L12:    invokevirtual Method com/fs/starfarer/combat/A/B String ()Ljava/util/List; 
L15:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L20:    astore_3 
L21:    goto L72 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/api/combat/EveryFrameCombatPlugin Top Object java/util/Iterator 
            stack 
        .end stack 
L24:    aload_3 
L25:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L30:    checkcast com/fs/starfarer/combat/A/oOoO 
L33:    astore_2 
L34:    aload_2 
L35:    instanceof com/fs/starfarer/title/Object/L$Oo 
L38:    ifeq L72 
L41:    aload_2 
L42:    checkcast com/fs/starfarer/title/Object/L$Oo 
L45:    astore 4 
L47:    aload 4 
L49:    invokevirtual Method com/fs/starfarer/title/Object/L$Oo 'Ô00000' ()Lcom/fs/starfarer/api/combat/EveryFrameCombatPlugin; 
L52:    aload_1 
L53:    if_acmpne L72 
L56:    aload_0 
L57:    getfield Field com/fs/starfarer/combat/CombatEngine 'Ó00000' Lcom/fs/starfarer/combat/A/B; 
L60:    invokevirtual Method com/fs/starfarer/combat/A/B String ()Ljava/util/List; 
L63:    aload 4 
L65:    invokeinterface InterfaceMethod java/util/List remove (Ljava/lang/Object;)Z 2 
L70:    pop 
L71:    return 

        .stack same 
L72:    aload_3 
L73:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L78:    ifne L24 
L81:    return 
L82:    
    .end code 
.end method 

.method public hasPluginOfClass : (Ljava/lang/Class;)Z 
    .code stack 2 locals 5 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'Ó00000' Lcom/fs/starfarer/combat/A/B; 
L4:     ifnonnull L9 
L7:     iconst_0 
L8:     ireturn 

        .stack same 
L9:     aload_0 
L10:    getfield Field com/fs/starfarer/combat/CombatEngine 'Ó00000' Lcom/fs/starfarer/combat/A/B; 
L13:    invokevirtual Method com/fs/starfarer/combat/A/B String ()Ljava/util/List; 
L16:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L21:    astore_3 
L22:    goto L62 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object java/lang/Class Top Object java/util/Iterator 
            stack 
        .end stack 
L25:    aload_3 
L26:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L31:    checkcast com/fs/starfarer/combat/A/oOoO 
L34:    astore_2 
L35:    aload_2 
L36:    instanceof com/fs/starfarer/title/Object/L$Oo 
L39:    ifeq L62 
L42:    aload_2 
L43:    checkcast com/fs/starfarer/title/Object/L$Oo 
L46:    astore 4 
L48:    aload_1 
L49:    aload 4 
L51:    invokevirtual Method com/fs/starfarer/title/Object/L$Oo 'Ô00000' ()Lcom/fs/starfarer/api/combat/EveryFrameCombatPlugin; 
L54:    invokevirtual Method java/lang/Class isInstance (Ljava/lang/Object;)Z 
L57:    ifeq L62 
L60:    iconst_1 
L61:    ireturn 

        .stack same 
L62:    aload_3 
L63:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L68:    ifne L25 
L71:    iconst_0 
L72:    ireturn 
L73:    
    .end code 
.end method 

.method public getRenderer : ()Lcom/fs/graphics/LayeredRenderer; 
    .signature ()Lcom/fs/graphics/LayeredRenderer<Lcom/fs/starfarer/api/combat/CombatEngineLayers;Lcom/fs/starfarer/combat/CombatViewport;>; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'new.Object' Lcom/fs/graphics/LayeredRenderer; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public isPreDeploy : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'new.super' Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public setPreDeploy : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/CombatEngine 'new.super' Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public getInitialEscapeRange : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getContext ()Lcom/fs/starfarer/api/combat/BattleCreationContext; 
L4:     invokevirtual Method com/fs/starfarer/api/combat/BattleCreationContext getInitialEscapeRange ()F 
L7:     freturn 
L8:     
    .end code 
.end method 

.method public getStandoffRange : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getContext ()Lcom/fs/starfarer/api/combat/BattleCreationContext; 
L4:     invokevirtual Method com/fs/starfarer/api/combat/BattleCreationContext getStandoffRange ()F 
L7:     freturn 
L8:     
    .end code 
.end method 

.method public getStateToReturnTo : ()Ljava/lang/String; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'OØ0000' Ljava/lang/String; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public setStateToReturnTo : (Ljava/lang/String;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/fs/starfarer/combat/CombatEngine 'OØ0000' Ljava/lang/String; 
L5:     return 
L6:     
    .end code 
.end method 

.method public init : ()V 
    .code stack 2 locals 4 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'ÖÕ0000' Z 
L4:     ifeq L8 
L7:     return 

        .stack same 
L8:     aload_0 
L9:     iconst_1 
L10:    putfield Field com/fs/starfarer/combat/CombatEngine 'ÖÕ0000' Z 
L13:    aload_0 
L14:    getfield Field com/fs/starfarer/combat/CombatEngine 'Ó00000' Lcom/fs/starfarer/combat/A/B; 
L17:    invokevirtual Method com/fs/starfarer/combat/A/B 'õ00000' ()V 
L20:    ldc_w Class com/fs/starfarer/api/combat/CombatEnginePlugin 
L23:    invokestatic Method com/fs/starfarer/loading/scripts/ScriptStore 'Ô00000' (Ljava/lang/Class;)Ljava/util/List; 
L26:    astore_1 
L27:    aload_1 
L28:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L33:    astore_3 
L34:    goto L61 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L37:    aload_3 
L38:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L43:    checkcast com/fs/starfarer/api/combat/CombatEnginePlugin 
L46:    astore_2 
L47:    aload_2 
L48:    instanceof com/fs/starfarer/api/combat/EveryFrameCombatPlugin 
L51:    ifne L61 
L54:    aload_2 
L55:    aload_0 
L56:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatEnginePlugin init (Lcom/fs/starfarer/api/combat/CombatEngineAPI;)V 2 

        .stack same 
L61:    aload_3 
L62:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L67:    ifne L37 
L70:    return 
L71:    
    .end code 
.end method 

.method public hasFleetsSet : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'interface.new' Ljava/util/List; 
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

.method public getPlayerPOVFog : ()Lcom/fs/starfarer/combat/new/T; 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L4:     ifnull L59 
L7:     aload_0 
L8:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L11:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getOwner ()I 
L14:    bipush 100 
L16:    if_icmpne L36 
L19:    aload_0 
L20:    getfield Field com/fs/starfarer/combat/CombatEngine 'while.new' Ljava/util/Map; 
L23:    iconst_0 
L24:    invokestatic Method java/lang/Integer valueOf (I)Ljava/lang/Integer; 
L27:    invokeinterface InterfaceMethod java/util/Map get (Ljava/lang/Object;)Ljava/lang/Object; 2 
L32:    checkcast com/fs/starfarer/combat/new/T 
L35:    areturn 

        .stack same 
L36:    aload_0 
L37:    getfield Field com/fs/starfarer/combat/CombatEngine 'while.new' Ljava/util/Map; 
L40:    aload_0 
L41:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L44:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getOwner ()I 
L47:    invokestatic Method java/lang/Integer valueOf (I)Ljava/lang/Integer; 
L50:    invokeinterface InterfaceMethod java/util/Map get (Ljava/lang/Object;)Ljava/lang/Object; 2 
L55:    checkcast com/fs/starfarer/combat/new/T 
L58:    areturn 

        .stack same 
L59:    aload_0 
L60:    getfield Field com/fs/starfarer/combat/CombatEngine 'while.new' Ljava/util/Map; 
L63:    iconst_0 
L64:    invokestatic Method java/lang/Integer valueOf (I)Ljava/lang/Integer; 
L67:    invokeinterface InterfaceMethod java/util/Map get (Ljava/lang/Object;)Ljava/lang/Object; 2 
L72:    checkcast com/fs/starfarer/combat/new/T 
L75:    areturn 
L76:    
    .end code 
.end method 

.method public getFogOfWar : (I)Lcom/fs/starfarer/combat/new/T; 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'while.new' Ljava/util/Map; 
L4:     iload_1 
L5:     invokestatic Method java/lang/Integer valueOf (I)Ljava/lang/Integer; 
L8:     invokeinterface InterfaceMethod java/util/Map get (Ljava/lang/Object;)Ljava/lang/Object; 2 
L13:    checkcast com/fs/starfarer/combat/new/T 
L16:    areturn 
L17:    
    .end code 
.end method 

.method public isDestroyed : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'interface.super' Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public static destroyInstance : ()V 
    .code stack 3 locals 0 
L0:     getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L3:     ifnull L403 
L6:     ldc 'CEanim' 
L8:     invokestatic Method com/fs/graphics/anim/AnimationManager getInstance (Ljava/lang/String;)Lcom/fs/graphics/anim/AnimationManager; 
L11:    invokevirtual Method com/fs/graphics/anim/AnimationManager clear ()V 
L14:    ldc 'CENonPauseanim' 
L16:    invokestatic Method com/fs/graphics/anim/AnimationManager getInstance (Ljava/lang/String;)Lcom/fs/graphics/anim/AnimationManager; 
L19:    invokevirtual Method com/fs/graphics/anim/AnimationManager clear ()V 
L22:    getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L25:    getfield Field com/fs/starfarer/combat/CombatEngine 'ØÓ0000' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L28:    invokevirtual Method com/fs/graphics/particle/DynamicParticleGroup stop ()V 
L31:    getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L34:    getfield Field com/fs/starfarer/combat/CombatEngine 'null.Object' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L37:    invokevirtual Method com/fs/graphics/particle/DynamicParticleGroup stop ()V 
L40:    getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L43:    getfield Field com/fs/starfarer/combat/CombatEngine 'float.super' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L46:    invokevirtual Method com/fs/graphics/particle/DynamicParticleGroup stop ()V 
L49:    getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L52:    getfield Field com/fs/starfarer/combat/CombatEngine 'class.Object' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L55:    invokevirtual Method com/fs/graphics/particle/DynamicParticleGroup stop ()V 
L58:    getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L61:    getfield Field com/fs/starfarer/combat/CombatEngine 'oÔ0000' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L64:    invokevirtual Method com/fs/graphics/particle/DynamicParticleGroup stop ()V 
L67:    getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L70:    getfield Field com/fs/starfarer/combat/CombatEngine 'öÔ0000' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L73:    invokevirtual Method com/fs/graphics/particle/DynamicParticleGroup stop ()V 
L76:    getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L79:    getfield Field com/fs/starfarer/combat/CombatEngine 'float.new' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L82:    invokevirtual Method com/fs/graphics/particle/DynamicParticleGroup stop ()V 
L85:    getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L88:    getfield Field com/fs/starfarer/combat/CombatEngine 'ÔÒ0000' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L91:    invokevirtual Method com/fs/graphics/particle/DynamicParticleGroup stop ()V 
L94:    getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L97:    getfield Field com/fs/starfarer/combat/CombatEngine 'ÔO0000' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L100:   invokevirtual Method com/fs/graphics/particle/DynamicParticleGroup stop ()V 
L103:   getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L106:   getfield Field com/fs/starfarer/combat/CombatEngine 'OÔ0000' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L109:   invokevirtual Method com/fs/graphics/particle/DynamicParticleGroup stop ()V 
L112:   getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L115:   getfield Field com/fs/starfarer/combat/CombatEngine 'ÔÕ0000' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L118:   invokevirtual Method com/fs/graphics/particle/DynamicParticleGroup stop ()V 
L121:   getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L124:   getfield Field com/fs/starfarer/combat/CombatEngine 'ÓÓ0000' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L127:   invokevirtual Method com/fs/graphics/particle/DynamicParticleGroup stop ()V 
L130:   getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L133:   getfield Field com/fs/starfarer/combat/CombatEngine 'oØ0000' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L136:   invokevirtual Method com/fs/graphics/particle/DynamicParticleGroup stop ()V 
L139:   getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L142:   getfield Field com/fs/starfarer/combat/CombatEngine 'ö00000' Lcom/fs/starfarer/renderers/damage/DebrisParticleSystem; 
L145:   invokevirtual Method com/fs/starfarer/renderers/damage/DebrisParticleSystem stop ()V 
L148:   getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L151:   getfield Field com/fs/starfarer/combat/CombatEngine float Lcom/fs/starfarer/renderers/damage/ExplosionParticleSystem; 
L154:   invokevirtual Method com/fs/starfarer/renderers/damage/ExplosionParticleSystem stop ()V 
L157:   getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L160:   aconst_null 
L161:   putfield Field com/fs/starfarer/combat/CombatEngine 'ØÔ0000' Lcom/fs/starfarer/api/combat/BattleCreationContext; 
L164:   getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L167:   aconst_null 
L168:   putfield Field com/fs/starfarer/combat/CombatEngine 'ÓÔ0000' Lcom/fs/starfarer/combat/K; 
L171:   getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L174:   aconst_null 
L175:   putfield Field com/fs/starfarer/combat/CombatEngine 'Ø00000' Lcom/fs/starfarer/combat/entities/ContrailEngine; 
L178:   getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L181:   aconst_null 
L182:   putfield Field com/fs/starfarer/combat/CombatEngine new Lcom/fs/starfarer/combat/Object/String; 
L185:   getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L188:   aconst_null 
L189:   putfield Field com/fs/starfarer/combat/CombatEngine 'interface.Object' Ljava/util/List; 
L192:   getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L195:   aconst_null 
L196:   putfield Field com/fs/starfarer/combat/CombatEngine 'interface.new' Ljava/util/List; 
L199:   getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L202:   getfield Field com/fs/starfarer/combat/CombatEngine 'ÖÓ0000' Lcom/fs/util/container/repo/ObjectRepository; 
L205:   invokevirtual Method com/fs/util/container/repo/ObjectRepository clear ()V 
L208:   getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L211:   invokevirtual Method com/fs/starfarer/combat/CombatEngine resetAiGrids ()V 
L214:   getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L217:   aconst_null 
L218:   putfield Field com/fs/starfarer/combat/CombatEngine 'ØO0000' Ljava/util/List; 
L221:   getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L224:   aconst_null 
L225:   putfield Field com/fs/starfarer/combat/CombatEngine 'oÓ0000' Lcom/fs/starfarer/combat/entities/terrain/A; 
L228:   getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L231:   aconst_null 
L232:   putfield Field com/fs/starfarer/combat/CombatEngine 'ÔÔ0000' Lcom/fs/starfarer/combat/E/oOOO; 
L235:   getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L238:   aconst_null 
L239:   putfield Field com/fs/starfarer/combat/CombatEngine 'Ó00000' Lcom/fs/starfarer/combat/A/B; 
L242:   getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L245:   aconst_null 
L246:   putfield Field com/fs/starfarer/combat/CombatEngine 'ö00000' Lcom/fs/starfarer/renderers/damage/DebrisParticleSystem; 
L249:   getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L252:   aconst_null 
L253:   putfield Field com/fs/starfarer/combat/CombatEngine 'class.super' Ljava/util/List; 
L256:   getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L259:   aconst_null 
L260:   putfield Field com/fs/starfarer/combat/CombatEngine float Lcom/fs/starfarer/renderers/damage/ExplosionParticleSystem; 
L263:   getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L266:   aconst_null 
L267:   putfield Field com/fs/starfarer/combat/CombatEngine 'class.class' Lcom/fs/starfarer/renderers/Q; 
L270:   getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L273:   aconst_null 
L274:   putfield Field com/fs/starfarer/combat/CombatEngine 'while.new' Ljava/util/Map; 
L277:   getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L280:   aconst_null 
L281:   putfield Field com/fs/starfarer/combat/CombatEngine 'null.String' Ljava/util/List; 
L284:   getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L287:   aconst_null 
L288:   putfield Field com/fs/starfarer/combat/CombatEngine 'while.Object' Ljava/util/List; 
L291:   getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L294:   aconst_null 
L295:   putfield Field com/fs/starfarer/combat/CombatEngine OO0000 Lcom/fs/starfarer/combat/entities/Ship; 
L298:   getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L301:   aconst_null 
L302:   putfield Field com/fs/starfarer/combat/CombatEngine o00000 Lcom/fs/starfarer/combat/CombatViewport; 
L305:   getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L308:   aconst_null 
L309:   putfield Field com/fs/starfarer/combat/CombatEngine 'ÖÔ0000' Lcom/fs/starfarer/combat/entities/Ship; 
L312:   getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L315:   aconst_null 
L316:   putfield Field com/fs/starfarer/combat/CombatEngine 'new.Object' Lcom/fs/graphics/LayeredRenderer; 
L319:   getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L322:   aconst_null 
L323:   putfield Field com/fs/starfarer/combat/CombatEngine 'öo0000' Lcom/fs/starfarer/api/campaign/CombatDamageData; 
L326:   getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L329:   iconst_1 
L330:   putfield Field com/fs/starfarer/combat/CombatEngine 'interface.super' Z 
L333:   getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L336:   new java/util/HashMap 
L339:   dup 
L340:   invokespecial Method java/util/HashMap <init> ()V 
L343:   putfield Field com/fs/starfarer/combat/CombatEngine 'while.super' Ljava/util/Map; 
L346:   getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L349:   aconst_null 
L350:   putfield Field com/fs/starfarer/combat/CombatEngine 'null.new' Ljava/util/Set; 
L353:   getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L356:   aconst_null 
L357:   putfield Field com/fs/starfarer/combat/CombatEngine 'õÕ0000' Ljava/util/Set; 
L360:   getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L363:   aconst_null 
L364:   putfield Field com/fs/starfarer/combat/CombatEngine 'Óo0000' Ljava/awt/Color; 
L367:   getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L370:   aconst_null 
L371:   putfield Field com/fs/starfarer/combat/CombatEngine 'öÓ0000' Ljava/awt/Color; 
L374:   getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L377:   iconst_0 
L378:   putfield Field com/fs/starfarer/combat/CombatEngine 'ÓO0000' Z 
L381:   getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L384:   iconst_1 
L385:   putfield Field com/fs/starfarer/combat/CombatEngine renderStarfield Z 
L388:   getstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L391:   iconst_0 
L392:   putfield Field com/fs/starfarer/combat/CombatEngine 'interface' Z 
L395:   aconst_null 
L396:   putstatic Field com/fs/starfarer/combat/CombatEngine 'while.String' Lcom/fs/starfarer/combat/CombatEngine; 
L399:   aconst_null 
L400:   invokestatic Method com/fs/starfarer/api/Global setCombatEngine (Lcom/fs/starfarer/api/combat/CombatEngineAPI;)V 

        .stack same_extended 
L403:   return 
L404:   
    .end code 
.end method 

.method private <init> : ()V 
    .code stack 8 locals 3 
L0:     aload_0 
L1:     invokespecial Method java/lang/Object <init> ()V 
L4:     aload_0 
L5:     new java/util/ArrayList 
L8:     dup 
L9:     invokespecial Method java/util/ArrayList <init> ()V 
L12:    putfield Field com/fs/starfarer/combat/CombatEngine 'ØO0000' Ljava/util/List; 
L15:    aload_0 
L16:    new java/util/ArrayList 
L19:    dup 
L20:    invokespecial Method java/util/ArrayList <init> ()V 
L23:    putfield Field com/fs/starfarer/combat/CombatEngine 'while.Object' Ljava/util/List; 
L26:    aload_0 
L27:    new com/fs/util/container/repo/ObjectRepository 
L30:    dup 
L31:    invokespecial Method com/fs/util/container/repo/ObjectRepository <init> ()V 
L34:    putfield Field com/fs/starfarer/combat/CombatEngine 'ÖÓ0000' Lcom/fs/util/container/repo/ObjectRepository; 
L37:    aload_0 
L38:    new java/util/LinkedList 
L41:    dup 
L42:    invokespecial Method java/util/LinkedList <init> ()V 
L45:    putfield Field com/fs/starfarer/combat/CombatEngine 'null.String' Ljava/util/List; 
L48:    aload_0 
L49:    new com/fs/graphics/LayeredRenderer 
L52:    dup 
L53:    ldc_w Class com/fs/starfarer/api/combat/CombatEngineLayers 
L56:    invokespecial Method com/fs/graphics/LayeredRenderer <init> (Ljava/lang/Class;)V 
L59:    putfield Field com/fs/starfarer/combat/CombatEngine 'new.Object' Lcom/fs/graphics/LayeredRenderer; 
L62:    aload_0 
L63:    new com/fs/graphics/particle/DynamicParticleGroup 
L66:    dup 
L67:    sipush 2500 
L70:    invokespecial Method com/fs/graphics/particle/DynamicParticleGroup <init> (I)V 
L73:    putfield Field com/fs/starfarer/combat/CombatEngine 'öÔ0000' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L76:    aload_0 
L77:    new com/fs/graphics/particle/DynamicParticleGroup 
L80:    dup 
L81:    sipush 2500 
L84:    invokespecial Method com/fs/graphics/particle/DynamicParticleGroup <init> (I)V 
L87:    putfield Field com/fs/starfarer/combat/CombatEngine 'float.new' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L90:    aload_0 
L91:    new com/fs/graphics/particle/DynamicParticleGroup 
L94:    dup 
L95:    sipush 2500 
L98:    invokespecial Method com/fs/graphics/particle/DynamicParticleGroup <init> (I)V 
L101:   putfield Field com/fs/starfarer/combat/CombatEngine 'oÔ0000' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L104:   aload_0 
L105:   new com/fs/graphics/particle/DynamicParticleGroup 
L108:   dup 
L109:   sipush 2500 
L112:   invokespecial Method com/fs/graphics/particle/DynamicParticleGroup <init> (I)V 
L115:   putfield Field com/fs/starfarer/combat/CombatEngine 'null.Object' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L118:   aload_0 
L119:   new com/fs/graphics/particle/DynamicParticleGroup 
L122:   dup 
L123:   sipush 2500 
L126:   invokespecial Method com/fs/graphics/particle/DynamicParticleGroup <init> (I)V 
L129:   putfield Field com/fs/starfarer/combat/CombatEngine 'class.Object' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L132:   aload_0 
L133:   new com/fs/graphics/particle/DynamicParticleGroup 
L136:   dup 
L137:   sipush 5000 
L140:   invokespecial Method com/fs/graphics/particle/DynamicParticleGroup <init> (I)V 
L143:   putfield Field com/fs/starfarer/combat/CombatEngine 'float.super' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L146:   aload_0 
L147:   new com/fs/graphics/particle/DynamicParticleGroup 
L150:   dup 
L151:   sipush 1500 
L154:   invokespecial Method com/fs/graphics/particle/DynamicParticleGroup <init> (I)V 
L157:   putfield Field com/fs/starfarer/combat/CombatEngine 'ØÓ0000' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L160:   aload_0 
L161:   new com/fs/graphics/particle/DynamicParticleGroup 
L164:   dup 
L165:   sipush 1500 
L168:   invokespecial Method com/fs/graphics/particle/DynamicParticleGroup <init> (I)V 
L171:   putfield Field com/fs/starfarer/combat/CombatEngine 'ÔÒ0000' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L174:   aload_0 
L175:   new com/fs/graphics/particle/DynamicParticleGroup 
L178:   dup 
L179:   sipush 1000 
L182:   invokespecial Method com/fs/graphics/particle/DynamicParticleGroup <init> (I)V 
L185:   putfield Field com/fs/starfarer/combat/CombatEngine 'ÔO0000' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L188:   aload_0 
L189:   new com/fs/graphics/particle/DynamicParticleGroup 
L192:   dup 
L193:   sipush 1000 
L196:   invokespecial Method com/fs/graphics/particle/DynamicParticleGroup <init> (I)V 
L199:   putfield Field com/fs/starfarer/combat/CombatEngine 'OÔ0000' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L202:   aload_0 
L203:   new com/fs/graphics/particle/DynamicParticleGroup 
L206:   dup 
L207:   sipush 1000 
L210:   invokespecial Method com/fs/graphics/particle/DynamicParticleGroup <init> (I)V 
L213:   putfield Field com/fs/starfarer/combat/CombatEngine 'ÔÕ0000' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L216:   aload_0 
L217:   new com/fs/graphics/particle/DynamicParticleGroup 
L220:   dup 
L221:   sipush 1000 
L224:   invokespecial Method com/fs/graphics/particle/DynamicParticleGroup <init> (I)V 
L227:   putfield Field com/fs/starfarer/combat/CombatEngine 'oØ0000' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L230:   aload_0 
L231:   new com/fs/graphics/particle/DynamicParticleGroup 
L234:   dup 
L235:   sipush 500 
L238:   invokespecial Method com/fs/graphics/particle/DynamicParticleGroup <init> (I)V 
L241:   putfield Field com/fs/starfarer/combat/CombatEngine 'ÓÓ0000' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L244:   aload_0 
L245:   new com/fs/starfarer/combat/E/oOOO 
L248:   dup 
L249:   invokespecial Method com/fs/starfarer/combat/E/oOOO <init> ()V 
L252:   putfield Field com/fs/starfarer/combat/CombatEngine 'ÔÔ0000' Lcom/fs/starfarer/combat/E/oOOO; 
L255:   aload_0 
L256:   new com/fs/starfarer/renderers/Q 
L259:   dup 
L260:   invokespecial Method com/fs/starfarer/renderers/Q <init> ()V 
L263:   putfield Field com/fs/starfarer/combat/CombatEngine 'class.class' Lcom/fs/starfarer/renderers/Q; 
L266:   aload_0 
L267:   new com/fs/starfarer/combat/entities/ContrailEngine 
L270:   dup 
L271:   invokespecial Method com/fs/starfarer/combat/entities/ContrailEngine <init> ()V 
L274:   putfield Field com/fs/starfarer/combat/CombatEngine 'Ø00000' Lcom/fs/starfarer/combat/entities/ContrailEngine; 
L277:   aload_0 
L278:   aconst_null 
L279:   putfield Field com/fs/starfarer/combat/CombatEngine 'ÔÓ0000' Lcom/fs/starfarer/campaign/WarpingSpriteRenderer; 
L282:   aload_0 
L283:   new com/fs/starfarer/combat/CombatViewport 
L286:   dup 
L287:   fconst_0 
L288:   fconst_0 
L289:   ldc_w +1000.0f 
L292:   ldc_w +1000.0f 
L295:   invokespecial Method com/fs/starfarer/combat/CombatViewport <init> (FFFF)V 
L298:   putfield Field com/fs/starfarer/combat/CombatEngine o00000 Lcom/fs/starfarer/combat/CombatViewport; 
L301:   aload_0 
L302:   new java/util/HashMap 
L305:   dup 
L306:   invokespecial Method java/util/HashMap <init> ()V 
L309:   putfield Field com/fs/starfarer/combat/CombatEngine 'while.new' Ljava/util/Map; 
L312:   aload_0 
L313:   new java/util/ArrayList 
L316:   dup 
L317:   invokespecial Method java/util/ArrayList <init> ()V 
L320:   putfield Field com/fs/starfarer/combat/CombatEngine 'interface.new' Ljava/util/List; 
L323:   aload_0 
L324:   iconst_1 
L325:   putfield Field com/fs/starfarer/combat/CombatEngine 'õÔ0000' Z 
L328:   aload_0 
L329:   new java/util/ArrayList 
L332:   dup 
L333:   invokespecial Method java/util/ArrayList <init> ()V 
L336:   putfield Field com/fs/starfarer/combat/CombatEngine 'interface.Object' Ljava/util/List; 
L339:   aload_0 
L340:   new com/fs/starfarer/util/IntervalTracker 
L343:   dup 
L344:   fconst_1 
L345:   fconst_2 
L346:   invokespecial Method com/fs/starfarer/util/IntervalTracker <init> (FF)V 
L349:   putfield Field com/fs/starfarer/combat/CombatEngine 'float.String' Lcom/fs/starfarer/util/IntervalTracker; 
L352:   aload_0 
L353:   new java/util/ArrayList 
L356:   dup 
L357:   invokespecial Method java/util/ArrayList <init> ()V 
L360:   putfield Field com/fs/starfarer/combat/CombatEngine 'class.super' Ljava/util/List; 
L363:   aload_0 
L364:   new com/fs/graphics/util/Fader 
L367:   dup 
L368:   fconst_0 
L369:   ldc +5.0f 
L371:   invokespecial Method com/fs/graphics/util/Fader <init> (FF)V 
L374:   putfield Field com/fs/starfarer/combat/CombatEngine 'õÖ0000' Lcom/fs/graphics/util/Fader; 
L377:   aload_0 
L378:   iconst_0 
L379:   putfield Field com/fs/starfarer/combat/CombatEngine 'new.super' Z 
L382:   aload_0 
L383:   ldc_w 'Title Screen State' 
L386:   putfield Field com/fs/starfarer/combat/CombatEngine 'OØ0000' Ljava/lang/String; 
L389:   aload_0 
L390:   aconst_null 
L391:   putfield Field com/fs/starfarer/combat/CombatEngine class Lcom/fs/starfarer/combat/E/G; 
L394:   aload_0 
L395:   aconst_null 
L396:   putfield Field com/fs/starfarer/combat/CombatEngine 'õO0000' Lcom/fs/starfarer/combat/E/G; 
L399:   aload_0 
L400:   aconst_null 
L401:   putfield Field com/fs/starfarer/combat/CombatEngine 'ÖÒ0000' Lcom/fs/starfarer/combat/E/G; 
L404:   aload_0 
L405:   aconst_null 
L406:   putfield Field com/fs/starfarer/combat/CombatEngine 'new.new' Lcom/fs/starfarer/combat/E/G; 
L409:   aload_0 
L410:   iconst_1 
L411:   putfield Field com/fs/starfarer/combat/CombatEngine 'interface.String' Z 
L414:   aload_0 
L415:   new com/fs/starfarer/api/combat/BattleCreationContext 
L418:   dup 
L419:   aconst_null 
L420:   aconst_null 
L421:   aconst_null 
L422:   aconst_null 
L423:   invokespecial Method com/fs/starfarer/api/combat/BattleCreationContext <init> (Lcom/fs/starfarer/api/campaign/CampaignFleetAPI;Lcom/fs/starfarer/api/fleet/FleetGoal;Lcom/fs/starfarer/api/campaign/CampaignFleetAPI;Lcom/fs/starfarer/api/fleet/FleetGoal;)V 
L426:   putfield Field com/fs/starfarer/combat/CombatEngine 'ØÔ0000' Lcom/fs/starfarer/api/combat/BattleCreationContext; 
L429:   aload_0 
L430:   ldc_w +2048.0f 
L433:   putfield Field com/fs/starfarer/combat/CombatEngine 'Ôo0000' F 
L436:   aload_0 
L437:   ldc_w +2048.0f 
L440:   putfield Field com/fs/starfarer/combat/CombatEngine 'öÖ0000' F 
L443:   aload_0 
L444:   getstatic Field com/fs/starfarer/combat/CombatEngine MIN_REPORT_INTERVAL F 
L447:   putfield Field com/fs/starfarer/combat/CombatEngine 'new.String' F 
L450:   aload_0 
L451:   aconst_null 
L452:   putfield Field com/fs/starfarer/combat/CombatEngine Oo0000 Lcom/fs/starfarer/api/mission/FleetSide; 
L455:   aload_0 
L456:   iconst_0 
L457:   putfield Field com/fs/starfarer/combat/CombatEngine 'ÓO0000' Z 
L460:   aload_0 
L461:   iconst_1 
L462:   putfield Field com/fs/starfarer/combat/CombatEngine renderStarfield Z 
L465:   aload_0 
L466:   new com/fs/starfarer/api/campaign/CombatDamageData 
L469:   dup 
L470:   invokespecial Method com/fs/starfarer/api/campaign/CombatDamageData <init> ()V 
L473:   putfield Field com/fs/starfarer/combat/CombatEngine 'öo0000' Lcom/fs/starfarer/api/campaign/CombatDamageData; 
L476:   aload_0 
L477:   aconst_null 
L478:   putfield Field com/fs/starfarer/combat/CombatEngine 'ØÒ0000' Ljava/lang/String; 
L481:   aload_0 
L482:   aconst_null 
L483:   putfield Field com/fs/starfarer/combat/CombatEngine 'õÓ0000' Ljava/lang/String; 
L486:   aload_0 
L487:   iconst_0 
L488:   putfield Field com/fs/starfarer/combat/CombatEngine 'ÖÕ0000' Z 
L491:   aload_0 
L492:   iconst_0 
L493:   putfield Field com/fs/starfarer/combat/CombatEngine 'interface.super' Z 
L496:   aload_0 
L497:   iconst_0 
L498:   putfield Field com/fs/starfarer/combat/CombatEngine 'OÒ0000' Z 
L501:   aload_0 
L502:   fconst_0 
L503:   putfield Field com/fs/starfarer/combat/CombatEngine 'new.class' F 
L506:   aload_0 
L507:   fconst_0 
L508:   putfield Field com/fs/starfarer/combat/CombatEngine 'ÓÖ0000' F 
L511:   aload_0 
L512:   fconst_0 
L513:   putfield Field com/fs/starfarer/combat/CombatEngine 'float.Object' F 
L516:   aload_0 
L517:   fconst_0 
L518:   putfield Field com/fs/starfarer/combat/CombatEngine 'öÒ0000' F 
L521:   aload_0 
L522:   iconst_0 
L523:   putfield Field com/fs/starfarer/combat/CombatEngine 'Ö00000' Z 
L526:   aload_0 
L527:   new com/fs/starfarer/api/combat/MutableStat 
L530:   dup 
L531:   fconst_1 
L532:   invokespecial Method com/fs/starfarer/api/combat/MutableStat <init> (F)V 
L535:   putfield Field com/fs/starfarer/combat/CombatEngine 'OÓ0000' Lcom/fs/starfarer/api/combat/MutableStat; 
L538:   aload_0 
L539:   iconst_0 
L540:   putfield Field com/fs/starfarer/combat/CombatEngine spawnedTestShip Z 
L543:   aload_0 
L544:   iconst_0 
L545:   putfield Field com/fs/starfarer/combat/CombatEngine 'õo0000' Z 
L548:   aload_0 
L549:   iconst_0 
L550:   putfield Field com/fs/starfarer/combat/CombatEngine 'OÖ0000' Z 
L553:   aload_0 
L554:   fconst_0 
L555:   putfield Field com/fs/starfarer/combat/CombatEngine combatNotOverFor F 
L558:   aload_0 
L559:   iconst_m1 
L560:   putfield Field com/fs/starfarer/combat/CombatEngine 'oÒ0000' I 
L563:   aload_0 
L564:   iconst_0 
L565:   putfield Field com/fs/starfarer/combat/CombatEngine 'Ô00000' Z 
L568:   aload_0 
L569:   aconst_null 
L570:   putfield Field com/fs/starfarer/combat/CombatEngine new Lcom/fs/starfarer/combat/Object/String; 
L573:   aload_0 
L574:   aconst_null 
L575:   putfield Field com/fs/starfarer/combat/CombatEngine 'ÖÔ0000' Lcom/fs/starfarer/combat/entities/Ship; 
L578:   aload_0 
L579:   iconst_0 
L580:   putfield Field com/fs/starfarer/combat/CombatEngine 'öO0000' Z 
L583:   aload_0 
L584:   new java/awt/Color 
L587:   dup 
L588:   sipush 255 
L591:   sipush 255 
L594:   sipush 255 
L597:   sipush 255 
L600:   invokespecial Method java/awt/Color <init> (IIII)V 
L603:   putfield Field com/fs/starfarer/combat/CombatEngine while Ljava/awt/Color; 
L606:   aload_0 
L607:   iconst_0 
L608:   putfield Field com/fs/starfarer/combat/CombatEngine 'Øo0000' Z 
L611:   aload_0 
L612:   iconst_0 
L613:   putfield Field com/fs/starfarer/combat/CombatEngine 'ÔÖ0000' Z 
L616:   aload_0 
L617:   fconst_0 
L618:   putfield Field com/fs/starfarer/combat/CombatEngine 'oÕ0000' F 
L621:   aload_0 
L622:   fconst_0 
L623:   putfield Field com/fs/starfarer/combat/CombatEngine 'õ00000' F 
L626:   aload_0 
L627:   iconst_0 
L628:   putfield Field com/fs/starfarer/combat/CombatEngine null I 
L631:   aload_0 
L632:   iconst_0 
L633:   putfield Field com/fs/starfarer/combat/CombatEngine 'ÓÒ0000' I 
L636:   aload_0 
L637:   iconst_0 
L638:   putfield Field com/fs/starfarer/combat/CombatEngine 'öÕ0000' I 
L641:   aload_0 
L642:   iconst_0 
L643:   putfield Field com/fs/starfarer/combat/CombatEngine 'ÖO0000' I 
L646:   aload_0 
L647:   iconst_0 
L648:   putfield Field com/fs/starfarer/combat/CombatEngine 'ØÕ0000' Z 
L651:   aload_0 
L652:   iconst_0 
L653:   putfield Field com/fs/starfarer/combat/CombatEngine 'interface' Z 
L656:   aload_0 
L657:   aconst_null 
L658:   putfield Field com/fs/starfarer/combat/CombatEngine 'ÓÕ0000' Ljava/lang/String; 
L661:   aload_0 
L662:   new java/util/HashMap 
L665:   dup 
L666:   invokespecial Method java/util/HashMap <init> ()V 
L669:   putfield Field com/fs/starfarer/combat/CombatEngine 'while.super' Ljava/util/Map; 
L672:   aload_0 
L673:   new com/fs/starfarer/api/util/TimeoutTracker 
L676:   dup 
L677:   invokespecial Method com/fs/starfarer/api/util/TimeoutTracker <init> ()V 
L680:   putfield Field com/fs/starfarer/combat/CombatEngine 'null.super' Lcom/fs/starfarer/api/util/TimeoutTracker; 
L683:   aload_0 
L684:   new com/fs/starfarer/api/util/TimeoutTracker 
L687:   dup 
L688:   invokespecial Method com/fs/starfarer/api/util/TimeoutTracker <init> ()V 
L691:   putfield Field com/fs/starfarer/combat/CombatEngine oO0000 Lcom/fs/starfarer/api/util/TimeoutTracker; 
L694:   aload_0 
L695:   new com/fs/starfarer/api/util/TimeoutTrackerMap 
L698:   dup 
L699:   invokespecial Method com/fs/starfarer/api/util/TimeoutTrackerMap <init> ()V 
L702:   putfield Field com/fs/starfarer/combat/CombatEngine 'Öo0000' Lcom/fs/starfarer/api/util/TimeoutTrackerMap; 
L705:   aload_0 
L706:   new com/fs/starfarer/api/util/IntervalUtil 
L709:   dup 
L710:   ldc_w +0.5f 
L713:   ldc_w +0.8999999761581421f 
L716:   invokespecial Method com/fs/starfarer/api/util/IntervalUtil <init> (FF)V 
L719:   putfield Field com/fs/starfarer/combat/CombatEngine oo0000 Lcom/fs/starfarer/api/util/IntervalUtil; 
L722:   aload_0 
L723:   new com/fs/starfarer/combat/O 
L726:   dup 
L727:   invokespecial Method com/fs/starfarer/combat/O <init> ()V 
L730:   putfield Field com/fs/starfarer/combat/CombatEngine 'class.new' Lcom/fs/starfarer/combat/O; 
L733:   aload_0 
L734:   new java/util/LinkedHashSet 
L737:   dup 
L738:   invokespecial Method java/util/LinkedHashSet <init> ()V 
L741:   putfield Field com/fs/starfarer/combat/CombatEngine 'null.new' Ljava/util/Set; 
L744:   aload_0 
L745:   new java/util/LinkedHashSet 
L748:   dup 
L749:   invokespecial Method java/util/LinkedHashSet <init> ()V 
L752:   putfield Field com/fs/starfarer/combat/CombatEngine 'õÕ0000' Ljava/util/Set; 
L755:   invokestatic Method com/fs/starfarer/util/B 'super' ()V 
L758:   aload_0 
L759:   aload_0 
L760:   getfield Field com/fs/starfarer/combat/CombatEngine 'ÔÕ0000' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L763:   invokevirtual Method com/fs/starfarer/combat/CombatEngine addAnimation (Lcom/fs/graphics/anim/Animation;)V 
L766:   aload_0 
L767:   aload_0 
L768:   getfield Field com/fs/starfarer/combat/CombatEngine 'ØÓ0000' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L771:   invokevirtual Method com/fs/starfarer/combat/CombatEngine addAnimation (Lcom/fs/graphics/anim/Animation;)V 
L774:   aload_0 
L775:   aload_0 
L776:   getfield Field com/fs/starfarer/combat/CombatEngine 'float.super' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L779:   invokevirtual Method com/fs/starfarer/combat/CombatEngine addAnimation (Lcom/fs/graphics/anim/Animation;)V 
L782:   aload_0 
L783:   aload_0 
L784:   getfield Field com/fs/starfarer/combat/CombatEngine 'class.Object' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L787:   invokevirtual Method com/fs/starfarer/combat/CombatEngine addAnimation (Lcom/fs/graphics/anim/Animation;)V 
L790:   aload_0 
L791:   aload_0 
L792:   getfield Field com/fs/starfarer/combat/CombatEngine 'oÔ0000' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L795:   invokevirtual Method com/fs/starfarer/combat/CombatEngine addAnimation (Lcom/fs/graphics/anim/Animation;)V 
L798:   aload_0 
L799:   aload_0 
L800:   getfield Field com/fs/starfarer/combat/CombatEngine 'null.Object' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L803:   invokevirtual Method com/fs/starfarer/combat/CombatEngine addAnimation (Lcom/fs/graphics/anim/Animation;)V 
L806:   aload_0 
L807:   aload_0 
L808:   getfield Field com/fs/starfarer/combat/CombatEngine 'öÔ0000' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L811:   invokevirtual Method com/fs/starfarer/combat/CombatEngine addAnimation (Lcom/fs/graphics/anim/Animation;)V 
L814:   aload_0 
L815:   aload_0 
L816:   getfield Field com/fs/starfarer/combat/CombatEngine 'float.new' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L819:   invokevirtual Method com/fs/starfarer/combat/CombatEngine addAnimation (Lcom/fs/graphics/anim/Animation;)V 
L822:   aload_0 
L823:   aload_0 
L824:   getfield Field com/fs/starfarer/combat/CombatEngine 'ÔÒ0000' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L827:   invokevirtual Method com/fs/starfarer/combat/CombatEngine addAnimation (Lcom/fs/graphics/anim/Animation;)V 
L830:   aload_0 
L831:   aload_0 
L832:   getfield Field com/fs/starfarer/combat/CombatEngine 'ÔO0000' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L835:   invokevirtual Method com/fs/starfarer/combat/CombatEngine addAnimation (Lcom/fs/graphics/anim/Animation;)V 
L838:   aload_0 
L839:   aload_0 
L840:   getfield Field com/fs/starfarer/combat/CombatEngine 'OÔ0000' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L843:   invokevirtual Method com/fs/starfarer/combat/CombatEngine addAnimation (Lcom/fs/graphics/anim/Animation;)V 
L846:   aload_0 
L847:   aload_0 
L848:   getfield Field com/fs/starfarer/combat/CombatEngine 'ÓÓ0000' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L851:   invokevirtual Method com/fs/starfarer/combat/CombatEngine addAnimation (Lcom/fs/graphics/anim/Animation;)V 
L854:   aload_0 
L855:   aload_0 
L856:   getfield Field com/fs/starfarer/combat/CombatEngine 'oØ0000' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L859:   invokevirtual Method com/fs/starfarer/combat/CombatEngine addAnimation (Lcom/fs/graphics/anim/Animation;)V 
L862:   aload_0 
L863:   new com/fs/starfarer/renderers/damage/DebrisParticleSystem 
L866:   dup 
L867:   invokespecial Method com/fs/starfarer/renderers/damage/DebrisParticleSystem <init> ()V 
L870:   putfield Field com/fs/starfarer/combat/CombatEngine 'ö00000' Lcom/fs/starfarer/renderers/damage/DebrisParticleSystem; 
L873:   aload_0 
L874:   aload_0 
L875:   getfield Field com/fs/starfarer/combat/CombatEngine 'ö00000' Lcom/fs/starfarer/renderers/damage/DebrisParticleSystem; 
L878:   invokevirtual Method com/fs/starfarer/combat/CombatEngine addAnimation (Lcom/fs/graphics/anim/Animation;)V 
L881:   aload_0 
L882:   new com/fs/starfarer/renderers/damage/ExplosionParticleSystem 
L885:   dup 
L886:   invokespecial Method com/fs/starfarer/renderers/damage/ExplosionParticleSystem <init> ()V 
L889:   putfield Field com/fs/starfarer/combat/CombatEngine float Lcom/fs/starfarer/renderers/damage/ExplosionParticleSystem; 
L892:   aload_0 
L893:   aload_0 
L894:   getfield Field com/fs/starfarer/combat/CombatEngine float Lcom/fs/starfarer/renderers/damage/ExplosionParticleSystem; 
L897:   invokevirtual Method com/fs/starfarer/combat/CombatEngine addAnimation (Lcom/fs/graphics/anim/Animation;)V 
L900:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'while.new' ()F 
L903:   fstore_1 
L904:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'öÒ0000' ()F 
L907:   fstore_2 
L908:   aload_0 
L909:   new com/fs/starfarer/combat/OOOo 
L912:   dup 
L913:   fconst_0 
L914:   fconst_0 
L915:   fload_1 
L916:   fload_2 
L917:   ldc_w +0.25f 
L920:   invokespecial Method com/fs/starfarer/combat/OOOo <init> (FFFFF)V 
L923:   putfield Field com/fs/starfarer/combat/CombatEngine 'OÕ0000' Lcom/fs/starfarer/combat/OOOo; 
L926:   aload_0 
L927:   new com/fs/starfarer/combat/OOOo 
L930:   dup 
L931:   fconst_0 
L932:   fconst_0 
L933:   fload_1 
L934:   fload_2 
L935:   ldc_w +0.25f 
L938:   invokespecial Method com/fs/starfarer/combat/OOOo <init> (FFFFF)V 
L941:   putfield Field com/fs/starfarer/combat/CombatEngine 'ØÖ0000' Lcom/fs/starfarer/combat/OOOo; 
L944:   aload_0 
L945:   new com/fs/starfarer/combat/OOOo 
L948:   dup 
L949:   fconst_0 
L950:   fconst_0 
L951:   fload_1 
L952:   fload_2 
L953:   ldc_w +0.25f 
L956:   invokespecial Method com/fs/starfarer/combat/OOOo <init> (FFFFF)V 
L959:   putfield Field com/fs/starfarer/combat/CombatEngine 'ÖÖ0000' Lcom/fs/starfarer/combat/OOOo; 
L962:   getstatic Field com/fs/starfarer/combat/CombatEngine 'class.String' Lcom/fs/graphics/Sprite; 
L965:   ifnonnull L972 
L968:   iconst_0 
L969:   invokestatic Method com/fs/starfarer/combat/CombatEngine setDefaultBackground (Z)V 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Float 
            stack 
        .end stack 
L972:   aload_0 
L973:   new com/fs/starfarer/renderers/damage/OooO 
L976:   dup 
L977:   invokespecial Method com/fs/starfarer/renderers/damage/OooO <init> ()V 
L980:   putfield Field com/fs/starfarer/combat/CombatEngine 'null.class' Lcom/fs/starfarer/renderers/damage/OooO; 
L983:   aload_0 
L984:   getfield Field com/fs/starfarer/combat/CombatEngine 'new.Object' Lcom/fs/graphics/LayeredRenderer; 
L987:   new com/fs/starfarer/combat/CombatEngine$2 
L990:   dup 
L991:   aload_0 
L992:   invokespecial Method com/fs/starfarer/combat/CombatEngine$2 <init> (Lcom/fs/starfarer/combat/CombatEngine;)V 
L995:   invokevirtual Method com/fs/graphics/LayeredRenderer add (Lcom/fs/graphics/LayeredRenderable;)V 
L998:   aload_0 
L999:   getfield Field com/fs/starfarer/combat/CombatEngine 'new.Object' Lcom/fs/graphics/LayeredRenderer; 
L1002:  new com/fs/starfarer/combat/CombatEngine$3 
L1005:  dup 
L1006:  aload_0 
L1007:  invokespecial Method com/fs/starfarer/combat/CombatEngine$3 <init> (Lcom/fs/starfarer/combat/CombatEngine;)V 
L1010:  invokevirtual Method com/fs/graphics/LayeredRenderer add (Lcom/fs/graphics/LayeredRenderable;)V 
L1013:  aload_0 
L1014:  new com/fs/starfarer/combat/A/B 
L1017:  dup 
L1018:  invokespecial Method com/fs/starfarer/combat/A/B <init> ()V 
L1021:  invokevirtual Method com/fs/starfarer/combat/CombatEngine setCombatMap (Lcom/fs/starfarer/combat/A/B;)V 
L1024:  return 
L1025:  
    .end code 
.end method 

.method public static setDefaultBackground : (Z)V 
    .code stack 2 locals 1 
L0:     ldc_w 'backgrounds' 
L3:     ldc_w 'defaultSpaceBackground' 
L6:     invokestatic Method com/fs/starfarer/settings/StarfarerSettings new (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 
L9:     iload_0 
L10:    invokestatic Method com/fs/starfarer/combat/CombatEngine replaceBackground (Ljava/lang/String;Z)V 
L13:    return 
L14:    
    .end code 
.end method 

.method public static replaceBackground : (Ljava/lang/String;Z)V 
    .code stack 4 locals 7 
L0:     invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'OÓ0000' ()Z 
L3:     pop 
L4:     aload_0 
L5:     ifnonnull L15 
L8:     iload_1 
L9:     invokestatic Method com/fs/starfarer/combat/CombatEngine setDefaultBackground (Z)V 
L12:    goto L156 

        .stack same 
L15:    getstatic Field com/fs/starfarer/combat/CombatEngine 'class.String' Lcom/fs/graphics/Sprite; 
L18:    ifnull L30 
L21:    getstatic Field com/fs/starfarer/combat/CombatEngine 'class.String' Lcom/fs/graphics/Sprite; 
L24:    invokevirtual Method com/fs/graphics/Sprite getTexture ()Lcom/fs/graphics/Object; 
L27:    ifnonnull L65 
        .catch java/io/IOException from L30 to L46 using L49 

        .stack same 
L30:    aload_0 
L31:    aload_0 
L32:    invokestatic Method com/fs/graphics/oOoO 'super' (Ljava/lang/String;Ljava/lang/String;)V 
L35:    new com/fs/graphics/Sprite 
L38:    dup 
L39:    aload_0 
L40:    invokespecial Method com/fs/graphics/Sprite <init> (Ljava/lang/String;)V 
L43:    putstatic Field com/fs/starfarer/combat/CombatEngine 'class.String' Lcom/fs/graphics/Sprite; 
L46:    goto L156 

        .stack stack_1 Object java/io/IOException 
L49:    astore_2 
L50:    ldc_w 'backgrounds' 
L53:    ldc_w 'defaultSpaceBackground' 
L56:    invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'Ö00000' (Ljava/lang/String;Ljava/lang/String;)Lcom/fs/graphics/Sprite; 
L59:    putstatic Field com/fs/starfarer/combat/CombatEngine 'class.String' Lcom/fs/graphics/Sprite; 
L62:    goto L156 
        .catch java/io/IOException from L65 to L140 using L143 

        .stack same 
L65:    aload_0 
L66:    getstatic Field com/fs/starfarer/combat/CombatEngine 'class.String' Lcom/fs/graphics/Sprite; 
L69:    invokevirtual Method com/fs/graphics/Sprite getTexture ()Lcom/fs/graphics/Object; 
L72:    invokevirtual Method com/fs/graphics/Object 'Õ00000' ()Ljava/lang/String; 
L75:    invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L78:    ifne L156 
L81:    aload_0 
L82:    ldc_w '' 
L85:    invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L88:    ifeq L101 
L91:    getstatic Field com/fs/starfarer/combat/CombatEngine 'class.String' Lcom/fs/graphics/Sprite; 
L94:    aconst_null 
L95:    invokevirtual Method com/fs/graphics/Sprite setTexture (Lcom/fs/graphics/Object;)V 
L98:    goto L156 

        .stack same 
L101:   invokestatic Method com/fs/graphics/oOoO String ()Lcom/fs/graphics/TextureLoader; 
L104:   getstatic Field com/fs/starfarer/combat/CombatEngine 'class.String' Lcom/fs/graphics/Sprite; 
L107:   invokevirtual Method com/fs/graphics/Sprite getTexture ()Lcom/fs/graphics/Object; 
L110:   aload_0 
L111:   invokevirtual Method com/fs/graphics/TextureLoader o00000 (Lcom/fs/graphics/Object;Ljava/lang/String;)V 
L114:   getstatic Field com/fs/starfarer/combat/CombatEngine 'class.String' Lcom/fs/graphics/Sprite; 
L117:   getstatic Field com/fs/starfarer/combat/CombatEngine 'class.String' Lcom/fs/graphics/Sprite; 
L120:   invokevirtual Method com/fs/graphics/Sprite getTexture ()Lcom/fs/graphics/Object; 
L123:   invokevirtual Method com/fs/graphics/Object Object ()I 
L126:   i2f 
L127:   getstatic Field com/fs/starfarer/combat/CombatEngine 'class.String' Lcom/fs/graphics/Sprite; 
L130:   invokevirtual Method com/fs/graphics/Sprite getTexture ()Lcom/fs/graphics/Object; 
L133:   invokevirtual Method com/fs/graphics/Object 'Ô00000' ()I 
L136:   i2f 
L137:   invokevirtual Method com/fs/graphics/Sprite setSize (FF)V 
L140:   goto L156 

        .stack stack_1 Object java/io/IOException 
L143:   astore_2 
L144:   ldc_w 'backgrounds' 
L147:   ldc_w 'defaultSpaceBackground' 
L150:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'Ö00000' (Ljava/lang/String;Ljava/lang/String;)Lcom/fs/graphics/Sprite; 
L153:   putstatic Field com/fs/starfarer/combat/CombatEngine 'class.String' Lcom/fs/graphics/Sprite; 

        .stack same 
L156:   getstatic Field com/fs/starfarer/settings/StarfarerSettings 'öÖ0000' F 
L159:   fstore_2 
L160:   getstatic Field com/fs/starfarer/combat/CombatEngine 'class.String' Lcom/fs/graphics/Sprite; 
L163:   getstatic Field com/fs/starfarer/combat/CombatEngine 'class.String' Lcom/fs/graphics/Sprite; 
L166:   invokevirtual Method com/fs/graphics/Sprite getWidth ()F 
L169:   fload_2 
L170:   fdiv 
L171:   getstatic Field com/fs/starfarer/combat/CombatEngine 'class.String' Lcom/fs/graphics/Sprite; 
L174:   invokevirtual Method com/fs/graphics/Sprite getHeight ()F 
L177:   fload_2 
L178:   fdiv 
L179:   invokevirtual Method com/fs/graphics/Sprite setSize (FF)V 
L182:   getstatic Field com/fs/starfarer/combat/CombatEngine 'class.String' Lcom/fs/graphics/Sprite; 
L185:   invokevirtual Method com/fs/graphics/Sprite getWidth ()F 
L188:   fstore_3 
L189:   getstatic Field com/fs/starfarer/combat/CombatEngine 'class.String' Lcom/fs/graphics/Sprite; 
L192:   invokevirtual Method com/fs/graphics/Sprite getHeight ()F 
L195:   fstore 4 
L197:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'while.new' ()F 
L200:   fstore 5 
L202:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'öÒ0000' ()F 
L205:   fstore 6 
L207:   fload 5 
L209:   fload_3 
L210:   fcmpl 
L211:   ifle L235 
L214:   getstatic Field com/fs/starfarer/combat/CombatEngine 'class.String' Lcom/fs/graphics/Sprite; 
L217:   fload 5 
L219:   invokevirtual Method com/fs/graphics/Sprite setWidth (F)V 
L222:   getstatic Field com/fs/starfarer/combat/CombatEngine 'class.String' Lcom/fs/graphics/Sprite; 
L225:   fload 4 
L227:   fload 5 
L229:   fmul 
L230:   fload_3 
L231:   fdiv 
L232:   invokevirtual Method com/fs/graphics/Sprite setHeight (F)V 

        .stack full 
            locals Object java/lang/String Integer Float Float Float Float Float 
            stack 
        .end stack 
L235:   getstatic Field com/fs/starfarer/combat/CombatEngine 'class.String' Lcom/fs/graphics/Sprite; 
L238:   invokevirtual Method com/fs/graphics/Sprite getWidth ()F 
L241:   fstore_3 
L242:   getstatic Field com/fs/starfarer/combat/CombatEngine 'class.String' Lcom/fs/graphics/Sprite; 
L245:   invokevirtual Method com/fs/graphics/Sprite getHeight ()F 
L248:   fstore 4 
L250:   fload 6 
L252:   fload 4 
L254:   fcmpl 
L255:   ifle L279 
L258:   getstatic Field com/fs/starfarer/combat/CombatEngine 'class.String' Lcom/fs/graphics/Sprite; 
L261:   fload 6 
L263:   invokevirtual Method com/fs/graphics/Sprite setHeight (F)V 
L266:   getstatic Field com/fs/starfarer/combat/CombatEngine 'class.String' Lcom/fs/graphics/Sprite; 
L269:   fload_3 
L270:   fload 6 
L272:   fmul 
L273:   fload 4 
L275:   fdiv 
L276:   invokevirtual Method com/fs/graphics/Sprite setWidth (F)V 

        .stack same 
L279:   getstatic Field com/fs/starfarer/combat/CombatEngine 'õÒ0000' Lorg/lwjgl/util/vector/Vector2f; 
L282:   invokestatic Method java/lang/Math random ()D 
L285:   d2f 
L286:   getstatic Field com/fs/starfarer/combat/CombatEngine 'class.String' Lcom/fs/graphics/Sprite; 
L289:   invokevirtual Method com/fs/graphics/Sprite getWidth ()F 
L292:   fload 5 
L294:   fsub 
L295:   fmul 
L296:   putfield Field org/lwjgl/util/vector/Vector2f x F 
L299:   getstatic Field com/fs/starfarer/combat/CombatEngine 'õÒ0000' Lorg/lwjgl/util/vector/Vector2f; 
L302:   invokestatic Method java/lang/Math random ()D 
L305:   d2f 
L306:   getstatic Field com/fs/starfarer/combat/CombatEngine 'class.String' Lcom/fs/graphics/Sprite; 
L309:   invokevirtual Method com/fs/graphics/Sprite getHeight ()F 
L312:   fload 6 
L314:   fsub 
L315:   fmul 
L316:   putfield Field org/lwjgl/util/vector/Vector2f y F 
L319:   return 
L320:   
    .end code 
.end method 

.method public static getBackground : ()Lcom/fs/graphics/Sprite; 
    .code stack 1 locals 0 
L0:     getstatic Field com/fs/starfarer/combat/CombatEngine 'class.String' Lcom/fs/graphics/Sprite; 
L3:     areturn 
L4:     
    .end code 
.end method 

.method public getBackgroundSpriteName : ()Ljava/lang/String; 
    .code stack 1 locals 1 
L0:     getstatic Field com/fs/starfarer/combat/CombatEngine 'class.String' Lcom/fs/graphics/Sprite; 
L3:     ifnull L25 
L6:     getstatic Field com/fs/starfarer/combat/CombatEngine 'class.String' Lcom/fs/graphics/Sprite; 
L9:     invokevirtual Method com/fs/graphics/Sprite getTexture ()Lcom/fs/graphics/Object; 
L12:    ifnull L25 
L15:    getstatic Field com/fs/starfarer/combat/CombatEngine 'class.String' Lcom/fs/graphics/Sprite; 
L18:    invokevirtual Method com/fs/graphics/Sprite getTexture ()Lcom/fs/graphics/Object; 
L21:    invokevirtual Method com/fs/graphics/Object 'Õ00000' ()Ljava/lang/String; 
L24:    areturn 

        .stack same 
L25:    aconst_null 
L26:    areturn 
L27:    
    .end code 
.end method 

.method public isInPlay : (Ljava/lang/Object;)Z 
    .code stack 2 locals 6 
L0:     aload_1 
L1:     instanceof com/fs/starfarer/combat/ai/M 
L4:     ifeq L135 
L7:     aload_1 
L8:     checkcast com/fs/starfarer/combat/ai/M 
L11:    astore_2 
L12:    aload_2 
L13:    ifnull L173 
L16:    aload_2 
L17:    invokevirtual Method com/fs/starfarer/combat/ai/M getMembers ()Ljava/util/List; 
L20:    invokeinterface InterfaceMethod java/util/List size ()I 1 
L25:    ifne L30 
L28:    iconst_0 
L29:    ireturn 

        .stack append Object com/fs/starfarer/combat/ai/M 
L30:    aload_2 
L31:    invokevirtual Method com/fs/starfarer/combat/ai/M getMembers ()Ljava/util/List; 
L34:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L39:    astore 4 
L41:    goto L123 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object java/lang/Object Object com/fs/starfarer/combat/ai/M Top Object java/util/Iterator 
            stack 
        .end stack 
L44:    aload 4 
L46:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L51:    checkcast com/fs/starfarer/combat/entities/Ship 
L54:    astore_3 
L55:    aload_0 
L56:    getfield Field com/fs/starfarer/combat/CombatEngine 'ÖÓ0000' Lcom/fs/util/container/repo/ObjectRepository; 
L59:    aload_3 
L60:    invokevirtual Method com/fs/util/container/repo/ObjectRepository contains (Ljava/lang/Object;)Z 
L63:    ifeq L79 
L66:    aload_0 
L67:    getfield Field com/fs/starfarer/combat/CombatEngine 'while.Object' Ljava/util/List; 
L70:    aload_3 
L71:    invokeinterface InterfaceMethod java/util/List contains (Ljava/lang/Object;)Z 2 
L76:    ifeq L96 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object java/lang/Object Object com/fs/starfarer/combat/ai/M Object com/fs/starfarer/combat/entities/Ship Object java/util/Iterator 
            stack 
        .end stack 
L79:    aload_0 
L80:    getfield Field com/fs/starfarer/combat/CombatEngine 'ØO0000' Ljava/util/List; 
L83:    aload_3 
L84:    invokeinterface InterfaceMethod java/util/List contains (Ljava/lang/Object;)Z 2 
L89:    ifne L96 
L92:    iconst_0 
L93:    goto L97 

        .stack same 
L96:    iconst_1 

        .stack stack_1 Integer 
L97:    istore 5 
L99:    iload 5 
L101:   aload_3 
L102:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isHulk ()Z 
L105:   ifeq L112 
L108:   iconst_0 
L109:   goto L113 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object java/lang/Object Object com/fs/starfarer/combat/ai/M Object com/fs/starfarer/combat/entities/Ship Object java/util/Iterator Integer 
            stack Integer 
        .end stack 
L112:   iconst_1 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object java/lang/Object Object com/fs/starfarer/combat/ai/M Object com/fs/starfarer/combat/entities/Ship Object java/util/Iterator Integer 
            stack Integer Integer 
        .end stack 
L113:   iand 
L114:   istore 5 
L116:   iload 5 
L118:   ifne L123 
L121:   iconst_0 
L122:   ireturn 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object java/lang/Object Object com/fs/starfarer/combat/ai/M Top Object java/util/Iterator 
            stack 
        .end stack 
L123:   aload 4 
L125:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L130:   ifne L44 
L133:   iconst_1 
L134:   ireturn 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object java/lang/Object 
            stack 
        .end stack 
L135:   aload_1 
L136:   instanceof com/fs/starfarer/combat/CombatFleetManager$O0 
L139:   ifeq L173 
L142:   aload_1 
L143:   checkcast com/fs/starfarer/combat/CombatFleetManager$O0 
L146:   astore_2 
L147:   aload_0 
L148:   aload_2 
L149:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getOwner ()I 
L152:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L155:   astore_3 
L156:   aload_3 
L157:   ifnonnull L162 
L160:   iconst_0 
L161:   ireturn 

        .stack append Object com/fs/starfarer/combat/CombatFleetManager$O0 Object com/fs/starfarer/combat/CombatFleetManager 
L162:   aload_3 
L163:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getDeployed ()Ljava/util/Set; 
L166:   aload_2 
L167:   invokeinterface InterfaceMethod java/util/Set contains (Ljava/lang/Object;)Z 2 
L172:   ireturn 

        .stack chop 2 
L173:   aload_0 
L174:   getfield Field com/fs/starfarer/combat/CombatEngine 'ÖÓ0000' Lcom/fs/util/container/repo/ObjectRepository; 
L177:   aload_1 
L178:   invokevirtual Method com/fs/util/container/repo/ObjectRepository contains (Ljava/lang/Object;)Z 
L181:   ifeq L197 
L184:   aload_0 
L185:   getfield Field com/fs/starfarer/combat/CombatEngine 'while.Object' Ljava/util/List; 
L188:   aload_1 
L189:   invokeinterface InterfaceMethod java/util/List contains (Ljava/lang/Object;)Z 2 
L194:   ifeq L212 

        .stack same 
L197:   aload_0 
L198:   getfield Field com/fs/starfarer/combat/CombatEngine 'ØO0000' Ljava/util/List; 
L201:   aload_1 
L202:   invokeinterface InterfaceMethod java/util/List contains (Ljava/lang/Object;)Z 2 
L207:   ifne L212 
L210:   iconst_0 
L211:   ireturn 

        .stack same 
L212:   iconst_1 
L213:   ireturn 
L214:   
    .end code 
.end method 

.method public areFriendly : (Lcom/fs/starfarer/combat/E/B;Lcom/fs/starfarer/combat/E/B;)Z 
    .code stack 2 locals 3 
L0:     aload_1 
L1:     ifnull L8 
L4:     aload_2 
L5:     ifnonnull L10 

        .stack same 
L8:     iconst_0 
L9:     ireturn 

        .stack same 
L10:    aload_1 
L11:    invokeinterface InterfaceMethod com/fs/starfarer/combat/E/B getOwner ()I 1 
L16:    aload_2 
L17:    invokeinterface InterfaceMethod com/fs/starfarer/combat/E/B getOwner ()I 1 
L22:    if_icmpne L27 
L25:    iconst_1 
L26:    ireturn 

        .stack same 
L27:    iconst_0 
L28:    ireturn 
L29:    
    .end code 
.end method 

.method public areFriendly : (Lcom/fs/starfarer/combat/entities/if;Lcom/fs/starfarer/combat/E/B;)Z 
    .code stack 2 locals 3 
L0:     aload_1 
L1:     ifnull L8 
L4:     aload_2 
L5:     ifnonnull L10 

        .stack same 
L8:     iconst_0 
L9:     ireturn 

        .stack same 
L10:    aload_1 
L11:    invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/if getOwner ()I 1 
L16:    aload_2 
L17:    invokeinterface InterfaceMethod com/fs/starfarer/combat/E/B getOwner ()I 1 
L22:    if_icmpne L27 
L25:    iconst_1 
L26:    ireturn 

        .stack same 
L27:    iconst_0 
L28:    ireturn 
L29:    
    .end code 
.end method 

.method public setViewport : (FFFF)V 
    .code stack 5 locals 5 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine o00000 Lcom/fs/starfarer/combat/CombatViewport; 
L4:     fload_1 
L5:     fload_2 
L6:     fload_3 
L7:     fload 4 
L9:     invokevirtual Method com/fs/starfarer/combat/CombatViewport set (FFFF)V 
L12:    return 
L13:    
    .end code 
.end method 

.method public getViewport : ()Lcom/fs/starfarer/combat/CombatViewport; 
    .code stack 6 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'interface.super' Z 
L4:     ifeq L30 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/CombatEngine o00000 Lcom/fs/starfarer/combat/CombatViewport; 
L11:    ifnonnull L30 
L14:    new com/fs/starfarer/combat/CombatViewport 
L17:    dup 
L18:    fconst_0 
L19:    fconst_0 
L20:    ldc_w +100.0f 
L23:    ldc_w +100.0f 
L26:    invokespecial Method com/fs/starfarer/combat/CombatViewport <init> (FFFF)V 
L29:    areturn 

        .stack same 
L30:    aload_0 
L31:    getfield Field com/fs/starfarer/combat/CombatEngine o00000 Lcom/fs/starfarer/combat/CombatViewport; 
L34:    areturn 
L35:    
    .end code 
.end method 

.method public addGhost : (Lcom/fs/starfarer/combat/entities/oO0OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO;)V 
    .code stack 2 locals 2 
L0:     aload_1 
L1:     iconst_1 
L2:     invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/oO0OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO setGhost (Z)V 2 
L7:     aload_0 
L8:     aload_1 
L9:     invokevirtual Method com/fs/starfarer/combat/CombatEngine addObject (Ljava/lang/Object;)V 
L12:    return 
L13:    
    .end code 
.end method 

.method public addAnimation : (Lcom/fs/graphics/anim/Animation;)V 
    .code stack 2 locals 2 
L0:     ldc 'CEanim' 
L2:     invokestatic Method com/fs/graphics/anim/AnimationManager getInstance (Ljava/lang/String;)Lcom/fs/graphics/anim/AnimationManager; 
L5:     aload_1 
L6:     invokevirtual Method com/fs/graphics/anim/AnimationManager addAnimation (Lcom/fs/graphics/anim/Animation;)V 
L9:     return 
L10:    
    .end code 
.end method 

.method public removeAnimation : (Lcom/fs/graphics/anim/Animation;)V 
    .code stack 2 locals 2 
L0:     ldc 'CEanim' 
L2:     invokestatic Method com/fs/graphics/anim/AnimationManager getInstance (Ljava/lang/String;)Lcom/fs/graphics/anim/AnimationManager; 
L5:     aload_1 
L6:     invokevirtual Method com/fs/graphics/anim/AnimationManager removeAnimation (Lcom/fs/graphics/anim/Animation;)V 
L9:     return 
L10:    
    .end code 
.end method 

.method public addNonPausableAnimation : (Lcom/fs/graphics/anim/Animation;)V 
    .code stack 2 locals 2 
L0:     ldc 'CENonPauseanim' 
L2:     invokestatic Method com/fs/graphics/anim/AnimationManager getInstance (Ljava/lang/String;)Lcom/fs/graphics/anim/AnimationManager; 
L5:     aload_1 
L6:     invokevirtual Method com/fs/graphics/anim/AnimationManager addAnimation (Lcom/fs/graphics/anim/Animation;)V 
L9:     return 
L10:    
    .end code 
.end method 

.method public addEntity : (Lcom/fs/starfarer/api/combat/CombatEntityAPI;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     invokevirtual Method com/fs/starfarer/combat/CombatEngine addObject (Ljava/lang/Object;)V 
L5:     return 
L6:     
    .end code 
.end method 

.method public addObject : (Ljava/lang/Object;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'ØO0000' Ljava/util/List; 
L4:     aload_1 
L5:     invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L10:    pop 
L11:    return 
L12:    
    .end code 
.end method 

.method private 'Ò00000' : (Ljava/lang/Object;)V 
    .code stack 2 locals 3 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'ÖÓ0000' Lcom/fs/util/container/repo/ObjectRepository; 
L4:     aload_1 
L5:     invokevirtual Method com/fs/util/container/repo/ObjectRepository add (Ljava/lang/Object;)Z 
L8:     pop 
L9:     aload_1 
L10:    instanceof com/fs/starfarer/combat/entities/oO0OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 
L13:    ifeq L25 
L16:    aload_1 
L17:    checkcast com/fs/starfarer/combat/entities/oO0OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 
L20:    invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/oO0OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO init ()V 1 

        .stack same 
L25:    aload_1 
L26:    instanceof com/fs/graphics/LayeredRenderable 
L29:    ifeq L43 
L32:    aload_0 
L33:    getfield Field com/fs/starfarer/combat/CombatEngine 'new.Object' Lcom/fs/graphics/LayeredRenderer; 
L36:    aload_1 
L37:    checkcast com/fs/graphics/LayeredRenderable 
L40:    invokevirtual Method com/fs/graphics/LayeredRenderer add (Lcom/fs/graphics/LayeredRenderable;)V 

        .stack same 
L43:    aload_1 
L44:    instanceof com/fs/starfarer/combat/entities/Ship 
L47:    ifeq L78 
L50:    aload_1 
L51:    checkcast com/fs/starfarer/combat/entities/Ship 
L54:    astore_2 
L55:    aload_2 
L56:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getWing ()Lcom/fs/starfarer/combat/ai/M; 
L59:    ifnull L74 
L62:    aload_0 
L63:    getfield Field com/fs/starfarer/combat/CombatEngine 'ÖÓ0000' Lcom/fs/util/container/repo/ObjectRepository; 
L66:    aload_2 
L67:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getWing ()Lcom/fs/starfarer/combat/ai/M; 
L70:    invokevirtual Method com/fs/util/container/repo/ObjectRepository add (Ljava/lang/Object;)Z 
L73:    pop 

        .stack append Object com/fs/starfarer/combat/entities/Ship 
L74:    aload_2 
L75:    invokevirtual Method com/fs/starfarer/combat/entities/Ship applyEffectsAfterShipAddedToCombatEngine ()V 

        .stack chop 1 
L78:    aload_1 
L79:    instanceof com/fs/starfarer/combat/E/B 
L82:    ifeq L95 
L85:    aload_1 
L86:    checkcast com/fs/starfarer/combat/E/B 
L89:    iconst_0 
L90:    invokeinterface InterfaceMethod com/fs/starfarer/combat/E/B setWasRemoved (Z)V 2 

        .stack same 
L95:    return 
L96:    
    .end code 
.end method 

.method public removeObject : (Ljava/lang/Object;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'ØO0000' Ljava/util/List; 
L4:     aload_1 
L5:     invokeinterface InterfaceMethod java/util/List remove (Ljava/lang/Object;)Z 2 
L10:    pop 
L11:    aload_0 
L12:    getfield Field com/fs/starfarer/combat/CombatEngine 'while.Object' Ljava/util/List; 
L15:    aload_1 
L16:    invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L21:    pop 
L22:    return 
L23:    
    .end code 
.end method 

.method public addLayeredRenderingPlugin : (Lcom/fs/starfarer/api/combat/CombatLayeredRenderingPlugin;)Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
    .code stack 3 locals 3 
L0:     new com/fs/starfarer/combat/entities/CustomCombatEntity 
L3:     dup 
L4:     aload_1 
L5:     invokespecial Method com/fs/starfarer/combat/entities/CustomCombatEntity <init> (Lcom/fs/starfarer/api/combat/CombatLayeredRenderingPlugin;)V 
L8:     astore_2 
L9:     aload_0 
L10:    aload_2 
L11:    invokevirtual Method com/fs/starfarer/combat/CombatEngine addObject (Ljava/lang/Object;)V 
L14:    aload_2 
L15:    areturn 
L16:    
    .end code 
.end method 

.method private o00000 : (Ljava/lang/Object;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'ÖÓ0000' Lcom/fs/util/container/repo/ObjectRepository; 
L4:     aload_1 
L5:     invokevirtual Method com/fs/util/container/repo/ObjectRepository remove (Ljava/lang/Object;)Z 
L8:     pop 
L9:     aload_1 
L10:    instanceof com/fs/graphics/LayeredRenderable 
L13:    ifeq L27 
L16:    aload_0 
L17:    getfield Field com/fs/starfarer/combat/CombatEngine 'new.Object' Lcom/fs/graphics/LayeredRenderer; 
L20:    aload_1 
L21:    checkcast com/fs/graphics/LayeredRenderable 
L24:    invokevirtual Method com/fs/graphics/LayeredRenderer remove (Lcom/fs/graphics/LayeredRenderable;)V 

        .stack same 
L27:    aload_1 
L28:    instanceof com/fs/starfarer/combat/entities/oO0OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 
L31:    ifeq L43 
L34:    aload_1 
L35:    checkcast com/fs/starfarer/combat/entities/oO0OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 
L38:    invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/oO0OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO cleanup ()V 1 

        .stack same 
L43:    aload_1 
L44:    instanceof com/fs/starfarer/combat/E/B 
L47:    ifeq L60 
L50:    aload_1 
L51:    checkcast com/fs/starfarer/combat/E/B 
L54:    iconst_1 
L55:    invokeinterface InterfaceMethod com/fs/starfarer/combat/E/B setWasRemoved (Z)V 2 

        .stack same 
L60:    return 
L61:    
    .end code 
.end method 

.method public getBgOffset : ()Lorg/lwjgl/util/vector/Vector2f; 
    .code stack 1 locals 1 
L0:     getstatic Field com/fs/starfarer/combat/CombatEngine 'õÒ0000' Lorg/lwjgl/util/vector/Vector2f; 
L3:     areturn 
L4:     
    .end code 
.end method 

.method public updateStarfield : (FFFF)V 
    .code stack 5 locals 5 
L0:     ldc_w 'CombatState updating starfield' 
L3:     invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L6:     aload_0 
L7:     getfield Field com/fs/starfarer/combat/CombatEngine 'OÕ0000' Lcom/fs/starfarer/combat/OOOo; 
L10:    fload_1 
L11:    fload_2 
L12:    fload_3 
L13:    fload 4 
L15:    invokevirtual Method com/fs/starfarer/combat/OOOo o00000 (FFFF)V 
L18:    aload_0 
L19:    getfield Field com/fs/starfarer/combat/CombatEngine 'ØÖ0000' Lcom/fs/starfarer/combat/OOOo; 
L22:    fload_1 
L23:    fconst_2 
L24:    fdiv 
L25:    fload_2 
L26:    fconst_2 
L27:    fdiv 
L28:    fload_3 
L29:    fload 4 
L31:    invokevirtual Method com/fs/starfarer/combat/OOOo o00000 (FFFF)V 
L34:    aload_0 
L35:    getfield Field com/fs/starfarer/combat/CombatEngine 'ÖÖ0000' Lcom/fs/starfarer/combat/OOOo; 
L38:    fload_1 
L39:    ldc_w +4.0f 
L42:    fdiv 
L43:    fload_2 
L44:    ldc_w +4.0f 
L47:    fdiv 
L48:    fload_3 
L49:    fload 4 
L51:    invokevirtual Method com/fs/starfarer/combat/OOOo o00000 (FFFF)V 
L54:    invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L57:    return 
L58:    
    .end code 
.end method 

.method public renderBG : (FF)V 
    .code stack 5 locals 14 
L0:     ldc_w 'CombatEngine rendering bg and stars' 
L3:     invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L6:     aload_0 
L7:     getfield Field com/fs/starfarer/combat/CombatEngine 'Óo0000' Ljava/awt/Color; 
L10:    ifnull L26 
L13:    getstatic Field com/fs/starfarer/combat/CombatEngine 'class.String' Lcom/fs/graphics/Sprite; 
L16:    aload_0 
L17:    getfield Field com/fs/starfarer/combat/CombatEngine 'Óo0000' Ljava/awt/Color; 
L20:    invokevirtual Method com/fs/graphics/Sprite setColor (Ljava/awt/Color;)V 
L23:    goto L35 

        .stack same 
L26:    getstatic Field com/fs/starfarer/combat/CombatEngine 'class.String' Lcom/fs/graphics/Sprite; 
L29:    getstatic Field java/awt/Color white Ljava/awt/Color; 
L32:    invokevirtual Method com/fs/graphics/Sprite setColor (Ljava/awt/Color;)V 

        .stack same 
L35:    aload_0 
L36:    getfield Field com/fs/starfarer/combat/CombatEngine 'ÔÓ0000' Lcom/fs/starfarer/campaign/WarpingSpriteRenderer; 
L39:    ifnull L71 
L42:    aload_0 
L43:    getfield Field com/fs/starfarer/combat/CombatEngine 'ÔÓ0000' Lcom/fs/starfarer/campaign/WarpingSpriteRenderer; 
L46:    getstatic Field com/fs/starfarer/combat/CombatEngine 'class.String' Lcom/fs/graphics/Sprite; 
L49:    fload_1 
L50:    getstatic Field com/fs/starfarer/combat/CombatEngine 'õÒ0000' Lorg/lwjgl/util/vector/Vector2f; 
L53:    getfield Field org/lwjgl/util/vector/Vector2f x F 
L56:    fsub 
L57:    fload_2 
L58:    getstatic Field com/fs/starfarer/combat/CombatEngine 'õÒ0000' Lorg/lwjgl/util/vector/Vector2f; 
L61:    getfield Field org/lwjgl/util/vector/Vector2f y F 
L64:    fsub 
L65:    invokevirtual Method com/fs/starfarer/campaign/WarpingSpriteRenderer renderNoBlendOrRotate (Lcom/fs/graphics/Sprite;FF)V 
L68:    goto L93 

        .stack same 
L71:    getstatic Field com/fs/starfarer/combat/CombatEngine 'class.String' Lcom/fs/graphics/Sprite; 
L74:    fload_1 
L75:    getstatic Field com/fs/starfarer/combat/CombatEngine 'õÒ0000' Lorg/lwjgl/util/vector/Vector2f; 
L78:    getfield Field org/lwjgl/util/vector/Vector2f x F 
L81:    fsub 
L82:    fload_2 
L83:    getstatic Field com/fs/starfarer/combat/CombatEngine 'õÒ0000' Lorg/lwjgl/util/vector/Vector2f; 
L86:    getfield Field org/lwjgl/util/vector/Vector2f y F 
L89:    fsub 
L90:    invokevirtual Method com/fs/graphics/Sprite renderNoBlendOrRotate (FF)V 

        .stack same 
L93:    aload_0 
L94:    getfield Field com/fs/starfarer/combat/CombatEngine 'ÖÓ0000' Lcom/fs/util/container/repo/ObjectRepository; 
L97:    ldc_w Class com/fs/starfarer/combat/entities/terrain/Planet 
L100:   invokevirtual Method com/fs/util/container/repo/ObjectRepository getList (Ljava/lang/Class;)Ljava/util/List; 
L103:   astore_3 
L104:   aload_0 
L105:   getfield Field com/fs/starfarer/combat/CombatEngine o00000 Lcom/fs/starfarer/combat/CombatViewport; 
L108:   invokevirtual Method com/fs/starfarer/combat/CombatViewport getLLX ()F 
L111:   fstore 4 
L113:   aload_0 
L114:   getfield Field com/fs/starfarer/combat/CombatEngine o00000 Lcom/fs/starfarer/combat/CombatViewport; 
L117:   invokevirtual Method com/fs/starfarer/combat/CombatViewport getLLY ()F 
L120:   fstore 5 
L122:   aload_0 
L123:   getfield Field com/fs/starfarer/combat/CombatEngine o00000 Lcom/fs/starfarer/combat/CombatViewport; 
L126:   invokevirtual Method com/fs/starfarer/combat/CombatViewport getVisibleWidth ()F 
L129:   fstore 6 
L131:   aload_0 
L132:   getfield Field com/fs/starfarer/combat/CombatEngine o00000 Lcom/fs/starfarer/combat/CombatViewport; 
L135:   invokevirtual Method com/fs/starfarer/combat/CombatViewport getVisibleHeight ()F 
L138:   fstore 7 
L140:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'while.new' ()F 
L143:   fstore 8 
L145:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'öÒ0000' ()F 
L148:   fstore 9 
L150:   aload_0 
L151:   getfield Field com/fs/starfarer/combat/CombatEngine o00000 Lcom/fs/starfarer/combat/CombatViewport; 
L154:   invokevirtual Method com/fs/starfarer/combat/CombatViewport getCenter ()Lorg/lwjgl/util/vector/Vector2f; 
L157:   getfield Field org/lwjgl/util/vector/Vector2f x F 
L160:   aload_0 
L161:   getfield Field com/fs/starfarer/combat/CombatEngine 'Ó00000' Lcom/fs/starfarer/combat/A/B; 
L164:   invokevirtual Method com/fs/starfarer/combat/A/B 'Ò00000' ()F 
L167:   fsub 
L168:   aload_0 
L169:   getfield Field com/fs/starfarer/combat/CombatEngine 'Ó00000' Lcom/fs/starfarer/combat/A/B; 
L172:   invokevirtual Method com/fs/starfarer/combat/A/B 'Ö00000' ()F 
L175:   aload_0 
L176:   getfield Field com/fs/starfarer/combat/CombatEngine 'Ó00000' Lcom/fs/starfarer/combat/A/B; 
L179:   invokevirtual Method com/fs/starfarer/combat/A/B 'Ò00000' ()F 
L182:   fsub 
L183:   fdiv 
L184:   fstore 10 
L186:   aload_0 
L187:   getfield Field com/fs/starfarer/combat/CombatEngine o00000 Lcom/fs/starfarer/combat/CombatViewport; 
L190:   invokevirtual Method com/fs/starfarer/combat/CombatViewport getCenter ()Lorg/lwjgl/util/vector/Vector2f; 
L193:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L196:   aload_0 
L197:   getfield Field com/fs/starfarer/combat/CombatEngine 'Ó00000' Lcom/fs/starfarer/combat/A/B; 
L200:   invokevirtual Method com/fs/starfarer/combat/A/B 'Õ00000' ()F 
L203:   fsub 
L204:   aload_0 
L205:   getfield Field com/fs/starfarer/combat/CombatEngine 'Ó00000' Lcom/fs/starfarer/combat/A/B; 
L208:   invokevirtual Method com/fs/starfarer/combat/A/B void ()F 
L211:   aload_0 
L212:   getfield Field com/fs/starfarer/combat/CombatEngine 'Ó00000' Lcom/fs/starfarer/combat/A/B; 
L215:   invokevirtual Method com/fs/starfarer/combat/A/B 'Õ00000' ()F 
L218:   fsub 
L219:   fdiv 
L220:   fstore 11 
L222:   fload 10 
L224:   ldc_w +0.5f 
L227:   fsub 
L228:   fconst_2 
L229:   fmul 
L230:   fstore 10 
L232:   fload 11 
L234:   ldc_w +0.5f 
L237:   fsub 
L238:   fconst_2 
L239:   fmul 
L240:   fstore 11 
L242:   aload_0 
L243:   getfield Field com/fs/starfarer/combat/CombatEngine o00000 Lcom/fs/starfarer/combat/CombatViewport; 
L246:   fload_1 
L247:   fload 10 
L249:   aload_0 
L250:   getfield Field com/fs/starfarer/combat/CombatEngine 'Ôo0000' F 
L253:   fmul 
L254:   fconst_2 
L255:   fdiv 
L256:   fsub 
L257:   fload_2 
L258:   fload 11 
L260:   aload_0 
L261:   getfield Field com/fs/starfarer/combat/CombatEngine 'öÖ0000' F 
L264:   fmul 
L265:   fconst_2 
L266:   fdiv 
L267:   fsub 
L268:   fload 8 
L270:   fload 9 
L272:   invokevirtual Method com/fs/starfarer/combat/CombatViewport set (FFFF)V 
L275:   aload_3 
L276:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L281:   astore 13 
L283:   goto L342 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Float Object java/util/List Float Float Float Float Float Float Float Float Top Object java/util/Iterator 
            stack 
        .end stack 
L286:   aload 13 
L288:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L293:   checkcast com/fs/starfarer/combat/entities/terrain/Planet 
L296:   astore 12 
L298:   aload 12 
L300:   invokevirtual Method com/fs/starfarer/combat/entities/terrain/Planet isBackgroundPlanet ()Z 
L303:   ifeq L342 
L306:   aload 12 
L308:   iconst_1 
L309:   invokevirtual Method com/fs/starfarer/combat/entities/terrain/Planet setRenderingBackground (Z)V 
L312:   aload 12 
L314:   getstatic Field com/fs/starfarer/api/combat/CombatEngineLayers PLANET_LAYER Lcom/fs/starfarer/api/combat/CombatEngineLayers; 
L317:   aload_0 
L318:   getfield Field com/fs/starfarer/combat/CombatEngine o00000 Lcom/fs/starfarer/combat/CombatViewport; 
L321:   invokevirtual Method com/fs/starfarer/combat/entities/terrain/Planet render (Lcom/fs/starfarer/api/combat/CombatEngineLayers;Lcom/fs/starfarer/combat/CombatViewport;)V 
L324:   aload 12 
L326:   getstatic Field com/fs/starfarer/api/combat/CombatEngineLayers ABOVE_SHIPS_LAYER Lcom/fs/starfarer/api/combat/CombatEngineLayers; 
L329:   aload_0 
L330:   getfield Field com/fs/starfarer/combat/CombatEngine o00000 Lcom/fs/starfarer/combat/CombatViewport; 
L333:   invokevirtual Method com/fs/starfarer/combat/entities/terrain/Planet render (Lcom/fs/starfarer/api/combat/CombatEngineLayers;Lcom/fs/starfarer/combat/CombatViewport;)V 
L336:   aload 12 
L338:   iconst_0 
L339:   invokevirtual Method com/fs/starfarer/combat/entities/terrain/Planet setRenderingBackground (Z)V 

        .stack same 
L342:   aload 13 
L344:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L349:   ifne L286 
L352:   aload_0 
L353:   getfield Field com/fs/starfarer/combat/CombatEngine o00000 Lcom/fs/starfarer/combat/CombatViewport; 
L356:   fload 4 
L358:   fload 5 
L360:   fload 6 
L362:   fload 7 
L364:   invokevirtual Method com/fs/starfarer/combat/CombatViewport set (FFFF)V 
L367:   aload_0 
L368:   getfield Field com/fs/starfarer/combat/CombatEngine renderStarfield Z 
L371:   ifeq L413 
L374:   aload_0 
L375:   getfield Field com/fs/starfarer/combat/CombatEngine 'OÕ0000' Lcom/fs/starfarer/combat/OOOo; 
L378:   fconst_0 
L379:   fconst_0 
L380:   invokevirtual Method com/fs/starfarer/combat/OOOo o00000 (FF)V 
L383:   aload_0 
L384:   getfield Field com/fs/starfarer/combat/CombatEngine 'ØÖ0000' Lcom/fs/starfarer/combat/OOOo; 
L387:   fload_1 
L388:   fconst_2 
L389:   fdiv 
L390:   fload_2 
L391:   fconst_2 
L392:   fdiv 
L393:   invokevirtual Method com/fs/starfarer/combat/OOOo o00000 (FF)V 
L396:   aload_0 
L397:   getfield Field com/fs/starfarer/combat/CombatEngine 'ÖÖ0000' Lcom/fs/starfarer/combat/OOOo; 
L400:   fload_1 
L401:   ldc_w +0.75f 
L404:   fmul 
L405:   fload_2 
L406:   ldc_w +0.75f 
L409:   fmul 
L410:   invokevirtual Method com/fs/starfarer/combat/OOOo o00000 (FF)V 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Float Object java/util/List Float Float Float Float Float Float Float Float 
            stack 
        .end stack 
L413:   invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L416:   return 
L417:   
    .end code 
.end method 

.method public getHitParticlesGroup : ()Lcom/fs/graphics/particle/DynamicParticleGroup;
    .code stack 1 locals 1
L0:     aload_0
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'OÔ0000' Lcom/fs/graphics/particle/DynamicParticleGroup;
L4:     areturn
L5:
        .linenumbertable
            L0 89
        .end linenumbertable
        .localvariabletable
            0 is this Lcom/fs/starfarer/combat/CombatEngine; from L0 to L5
        .end localvariabletable
    .end code
.end method

.method public renderFloatingTextManager : ()V
    .code stack 2 locals 1
L0:     aload_0
L1:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getFloatingTextManager ()Lcom/fs/starfarer/renderers/Q;
L4:     fconst_1
L5:     invokevirtual Method com/fs/starfarer/renderers/Q super (F)V
L8:     return
L9:
        .linenumbertable
            L0 94
            L8 95
        .end linenumbertable
        .localvariabletable
            0 is this Lcom/fs/starfarer/combat/CombatEngine; from L0 to L9
        .end localvariabletable
    .end code
.end method

.method public render : (Z)V
    .code stack 2 locals 2
L0:     iload_1
L1:     aload_0
L2:     invokestatic Method com/genir/graphics/CombatRenderer render (ZLcom/fs/starfarer/combat/CombatEngine;)V
L5:     return
L6:
        .linenumbertable
            L0 99
            L5 100
        .end linenumbertable
        .localvariabletable
            0 is this Lcom/fs/starfarer/combat/CombatEngine; from L0 to L6
            1 is var1 Z from L0 to L6
        .end localvariabletable
    .end code 
.end method 

.method public renderAboveWidgetsInEngineCoords : ()V 
    .code stack 3 locals 4 
L0:     ldc_w 'Rendering sun glows' 
L3:     invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L6:     aload_0 
L7:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getObjects ()Lcom/fs/util/container/repo/ObjectRepository; 
L10:    ldc_w Class com/fs/starfarer/combat/entities/terrain/Planet 
L13:    invokevirtual Method com/fs/util/container/repo/ObjectRepository getList (Ljava/lang/Class;)Ljava/util/List; 
L16:    astore_1 
L17:    aload_1 
L18:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L23:    astore_3 
L24:    goto L48 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L27:    aload_3 
L28:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L33:    checkcast com/fs/starfarer/combat/entities/terrain/Planet 
L36:    astore_2 
L37:    aload_2 
L38:    getstatic Field com/fs/starfarer/api/combat/CombatEngineLayers ABOVE_SHIPS_LAYER Lcom/fs/starfarer/api/combat/CombatEngineLayers; 
L41:    aload_0 
L42:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getViewport ()Lcom/fs/starfarer/combat/CombatViewport; 
L45:    invokevirtual Method com/fs/starfarer/combat/entities/terrain/Planet render (Lcom/fs/starfarer/api/combat/CombatEngineLayers;Lcom/fs/starfarer/combat/CombatViewport;)V 

        .stack same 
L48:    aload_3 
L49:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L54:    ifne L27 
L57:    invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L60:    return 
L61:    
    .end code 
.end method 

.method public renderAboveWidgetsInUICoords : ()V 
    .code stack 1 locals 1 
L0:     ldc_w 'Rendering whiteout' 
L3:     invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L6:     aload_0 
L7:     getfield Field com/fs/starfarer/combat/CombatEngine 'null.class' Lcom/fs/starfarer/renderers/damage/OooO; 
L10:    invokevirtual Method com/fs/starfarer/renderers/damage/OooO 'super' ()V 
L13:    invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L16:    return 
L17:    
    .end code 
.end method 

.method public addFloatingDamageText : (Lorg/lwjgl/util/vector/Vector2f;FFLjava/awt/Color;Lcom/fs/starfarer/api/combat/CombatEntityAPI;Lcom/fs/starfarer/api/combat/CombatEntityAPI;)V 
    .code stack 7 locals 7 
L0:     aload_0 
L1:     aload_1 
L2:     fload_2 
L3:     fload_3 
L4:     aload 4 
L6:     aload 5 
L8:     checkcast com/fs/starfarer/combat/E/B 
L11:    aload 6 
L13:    checkcast com/fs/starfarer/combat/E/B 
L16:    invokevirtual Method com/fs/starfarer/combat/CombatEngine addFloaty (Lorg/lwjgl/util/vector/Vector2f;FFLjava/awt/Color;Lcom/fs/starfarer/combat/E/B;Lcom/fs/starfarer/combat/E/B;)V 
L19:    return 
L20:    
    .end code 
.end method 

.method public addFloaty : (Lorg/lwjgl/util/vector/Vector2f;FFLjava/awt/Color;Lcom/fs/starfarer/combat/E/B;Lcom/fs/starfarer/combat/E/B;)V 
    .code stack 8 locals 7 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine o00000 Lcom/fs/starfarer/combat/CombatViewport; 
L4:     aload_1 
L5:     ldc_w +200.0f 
L8:     invokevirtual Method com/fs/starfarer/combat/CombatViewport isNearViewport (Lorg/lwjgl/util/vector/Vector2f;F)Z 
L11:    ifne L15 
L14:    return 

        .stack same 
L15:    aload_0 
L16:    getfield Field com/fs/starfarer/combat/CombatEngine 'class.class' Lcom/fs/starfarer/renderers/Q; 
L19:    aload_1 
L20:    getfield Field org/lwjgl/util/vector/Vector2f x F 
L23:    aload_1 
L24:    getfield Field org/lwjgl/util/vector/Vector2f y F 
L27:    fload_2 
L28:    fload_3 
L29:    aload 4 
L31:    aload 5 
L33:    aload 6 
L35:    invokevirtual Method com/fs/starfarer/renderers/Q 'super' (FFFFLjava/awt/Color;Lcom/fs/starfarer/combat/E/B;Lcom/fs/starfarer/combat/E/B;)V 
L38:    return 
L39:    
    .end code 
.end method 

.method public addFloatingText : (Lorg/lwjgl/util/vector/Vector2f;Ljava/lang/String;FLjava/awt/Color;Lcom/fs/starfarer/api/combat/CombatEntityAPI;FF)V 
    .code stack 8 locals 11 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getViewport ()Lcom/fs/starfarer/combat/CombatViewport; 
L4:     aload_1 
L5:     aload 5 
L7:     ifnonnull L16 
L10:    ldc_w +200.0f 
L13:    goto L27 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object org/lwjgl/util/vector/Vector2f Object java/lang/String Float Object java/awt/Color Object com/fs/starfarer/api/combat/CombatEntityAPI Float Float 
            stack Object com/fs/starfarer/combat/CombatViewport Object org/lwjgl/util/vector/Vector2f 
        .end stack 
L16:    aload 5 
L18:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatEntityAPI getCollisionRadius ()F 1 
L23:    ldc_w +1.5f 
L26:    fmul 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object org/lwjgl/util/vector/Vector2f Object java/lang/String Float Object java/awt/Color Object com/fs/starfarer/api/combat/CombatEntityAPI Float Float 
            stack Object com/fs/starfarer/combat/CombatViewport Object org/lwjgl/util/vector/Vector2f Float 
        .end stack 
L27:    invokevirtual Method com/fs/starfarer/combat/CombatViewport isNearViewport (Lorg/lwjgl/util/vector/Vector2f;F)Z 
L30:    ifeq L43 
L33:    invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'õÖ0000' ()Z 
L36:    ifeq L43 
L39:    iconst_1 
L40:    goto L44 

        .stack same 
L43:    iconst_0 

        .stack stack_1 Integer 
L44:    istore 8 
L46:    iload 8 
L48:    ifne L52 
L51:    return 

        .stack append Integer 
L52:    aconst_null 
L53:    astore 9 
L55:    aload 5 
L57:    instanceof com/fs/starfarer/combat/E/B 
L60:    ifeq L70 
L63:    aload 5 
L65:    checkcast com/fs/starfarer/combat/E/B 
L68:    astore 9 

        .stack append Object com/fs/starfarer/combat/E/B 
L70:    aload_0 
L71:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getFloatingTextManager ()Lcom/fs/starfarer/renderers/Q; 
L74:    aload_1 
L75:    getfield Field org/lwjgl/util/vector/Vector2f x F 
L78:    aload_1 
L79:    getfield Field org/lwjgl/util/vector/Vector2f y F 
L82:    aload_2 
L83:    fload_3 
L84:    aload 4 
L86:    aload 9 
L88:    aconst_null 
L89:    invokevirtual Method com/fs/starfarer/renderers/Q 'super' (FFLjava/lang/String;FLjava/awt/Color;Lcom/fs/starfarer/combat/E/B;Lcom/fs/starfarer/combat/E/B;)Lcom/fs/starfarer/renderers/O00O; 
L92:    astore 10 
L94:    fload 7 
L96:    fconst_0 
L97:    fcmpl 
L98:    ifle L110 
L101:   aload 10 
L103:   fload 6 
L105:   fload 7 
L107:   invokevirtual Method com/fs/starfarer/renderers/O00O o00000 (FF)V 

        .stack append Object com/fs/starfarer/renderers/O00O 
L110:   return 
L111:   
    .end code 
.end method 

.method public addFloatingTextAlways : (Lorg/lwjgl/util/vector/Vector2f;Ljava/lang/String;FLjava/awt/Color;Lcom/fs/starfarer/api/combat/CombatEntityAPI;FFFFFF)V 
    .code stack 8 locals 14 
L0:     aconst_null 
L1:     astore 12 
L3:     aload 5 
L5:     instanceof com/fs/starfarer/combat/E/B 
L8:     ifeq L18 
L11:    aload 5 
L13:    checkcast com/fs/starfarer/combat/E/B 
L16:    astore 12 

        .stack append Object com/fs/starfarer/combat/E/B 
L18:    aload_0 
L19:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getFloatingTextManager ()Lcom/fs/starfarer/renderers/Q; 
L22:    aload_1 
L23:    getfield Field org/lwjgl/util/vector/Vector2f x F 
L26:    aload_1 
L27:    getfield Field org/lwjgl/util/vector/Vector2f y F 
L30:    aload_2 
L31:    fload_3 
L32:    aload 4 
L34:    aload 12 
L36:    aconst_null 
L37:    invokevirtual Method com/fs/starfarer/renderers/Q 'super' (FFLjava/lang/String;FLjava/awt/Color;Lcom/fs/starfarer/combat/E/B;Lcom/fs/starfarer/combat/E/B;)Lcom/fs/starfarer/renderers/O00O; 
L40:    astore 13 
L42:    fload 7 
L44:    fconst_0 
L45:    fcmpl 
L46:    ifle L58 
L49:    aload 13 
L51:    fload 6 
L53:    fload 7 
L55:    invokevirtual Method com/fs/starfarer/renderers/O00O o00000 (FF)V 

        .stack append Object com/fs/starfarer/renderers/O00O 
L58:    aload 13 
L60:    fload 11 
L62:    invokevirtual Method com/fs/starfarer/renderers/O00O return (F)V 
L65:    aload 13 
L67:    fload 8 
L69:    invokevirtual Method com/fs/starfarer/renderers/O00O 'Õ00000' (F)V 
L72:    aload 13 
L74:    fload 9 
L76:    invokevirtual Method com/fs/starfarer/renderers/O00O 'Ø00000' (F)V 
L79:    aload 13 
L81:    fload 10 
L83:    invokevirtual Method com/fs/starfarer/renderers/O00O 'Ò00000' (F)V 
L86:    return 
L87:    
    .end code 
.end method 

.method public addFloatingDamageText : (Lorg/lwjgl/util/vector/Vector2f;FLjava/awt/Color;Lcom/fs/starfarer/api/combat/CombatEntityAPI;Lcom/fs/starfarer/api/combat/CombatEntityAPI;)V 
    .code stack 8 locals 8 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getViewport ()Lcom/fs/starfarer/combat/CombatViewport; 
L4:     aload_1 
L5:     aload 4 
L7:     ifnonnull L16 
L10:    ldc_w +200.0f 
L13:    goto L27 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object org/lwjgl/util/vector/Vector2f Float Object java/awt/Color Object com/fs/starfarer/api/combat/CombatEntityAPI Object com/fs/starfarer/api/combat/CombatEntityAPI 
            stack Object com/fs/starfarer/combat/CombatViewport Object org/lwjgl/util/vector/Vector2f 
        .end stack 
L16:    aload 4 
L18:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatEntityAPI getCollisionRadius ()F 1 
L23:    ldc_w +1.5f 
L26:    fmul 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object org/lwjgl/util/vector/Vector2f Float Object java/awt/Color Object com/fs/starfarer/api/combat/CombatEntityAPI Object com/fs/starfarer/api/combat/CombatEntityAPI 
            stack Object com/fs/starfarer/combat/CombatViewport Object org/lwjgl/util/vector/Vector2f Float 
        .end stack 
L27:    invokevirtual Method com/fs/starfarer/combat/CombatViewport isNearViewport (Lorg/lwjgl/util/vector/Vector2f;F)Z 
L30:    ifeq L43 
L33:    invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'ÓÕ0000' ()Z 
L36:    ifeq L43 
L39:    iconst_1 
L40:    goto L44 

        .stack same 
L43:    iconst_0 

        .stack stack_1 Integer 
L44:    istore 6 
L46:    iload 6 
L48:    ifne L52 
L51:    return 

        .stack append Integer 
L52:    aconst_null 
L53:    astore 7 
L55:    aload 4 
L57:    instanceof com/fs/starfarer/combat/E/B 
L60:    ifeq L70 
L63:    aload 4 
L65:    checkcast com/fs/starfarer/combat/E/B 
L68:    astore 7 

        .stack append Object com/fs/starfarer/combat/E/B 
L70:    aload_0 
L71:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getFloatingTextManager ()Lcom/fs/starfarer/renderers/Q; 
L74:    aload_1 
L75:    getfield Field org/lwjgl/util/vector/Vector2f x F 
L78:    aload_1 
L79:    getfield Field org/lwjgl/util/vector/Vector2f y F 
L82:    fload_2 
L83:    fconst_0 
L84:    aload_3 
L85:    aload 7 
L87:    aconst_null 
L88:    invokevirtual Method com/fs/starfarer/renderers/Q 'super' (FFFFLjava/awt/Color;Lcom/fs/starfarer/combat/E/B;Lcom/fs/starfarer/combat/E/B;)V 
L91:    return 
L92:    
    .end code 
.end method 

.method public getFloatingTextManager : ()Lcom/fs/starfarer/renderers/Q; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'class.class' Lcom/fs/starfarer/renderers/Q; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method private o00000 : ()V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'ÖÓ0000' Lcom/fs/util/container/repo/ObjectRepository; 
L4:     ldc_w Class com/fs/starfarer/combat/entities/Ship 
L7:     invokevirtual Method com/fs/util/container/repo/ObjectRepository getList (Ljava/lang/Class;)Ljava/util/List; 
L10:    astore_1 
L11:    return 
L12:    
    .end code 
.end method 

.method public preCombat : ()V 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/CombatEngine createDummyFleetsIfNeeded ()V 
L4:     return 
L5:     
    .end code 
.end method 

.method public isUsingDummyFleets : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'OÒ0000' Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public createProximityFuseAI : (Lcom/fs/starfarer/api/combat/MissileAPI;)Lcom/fs/starfarer/api/combat/MissileAIPlugin; 
    .code stack 4 locals 2 
L0:     new com/fs/starfarer/combat/ai/ProximityFuseAI 
L3:     dup 
L4:     aload_1 
L5:     checkcast com/fs/starfarer/combat/entities/Missile 
L8:     aload_1 
L9:     invokeinterface InterfaceMethod com/fs/starfarer/api/combat/MissileAPI getSpec ()Lcom/fs/starfarer/api/loading/MissileSpecAPI; 1 
L14:    invokeinterface InterfaceMethod com/fs/starfarer/api/loading/MissileSpecAPI getBehaviorSpec ()Lcom/fs/starfarer/api/loading/ShotBehaviorSpecAPI; 1 
L19:    checkcast com/fs/starfarer/loading/specs/OOO0 
L22:    invokespecial Method com/fs/starfarer/combat/ai/ProximityFuseAI <init> (Lcom/fs/starfarer/combat/ai/ProximityFuseAI$o;Lcom/fs/starfarer/loading/specs/OOO0;)V 
L25:    areturn 
L26:    
    .end code 
.end method 

.method public createDummyFleetsIfNeeded : ()V 
    .code stack 4 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/CombatEngine hasFleetsSet ()Z 
L4:     ifne L42 
L7:     aload_0 
L8:     iconst_1 
L9:     putfield Field com/fs/starfarer/combat/CombatEngine 'OÒ0000' Z 
L12:    aload_0 
L13:    new com/fs/starfarer/combat/oOOO 
L16:    dup 
L17:    iconst_0 
L18:    invokespecial Method com/fs/starfarer/combat/oOOO <init> (I)V 
L21:    getstatic Field com/fs/starfarer/api/fleet/FleetGoal ATTACK Lcom/fs/starfarer/api/fleet/FleetGoal; 
L24:    invokevirtual Method com/fs/starfarer/combat/CombatEngine addFleet (Lcom/fs/starfarer/combat/oOOO;Lcom/fs/starfarer/api/fleet/FleetGoal;)V 
L27:    aload_0 
L28:    new com/fs/starfarer/combat/oOOO 
L31:    dup 
L32:    iconst_1 
L33:    invokespecial Method com/fs/starfarer/combat/oOOO <init> (I)V 
L36:    getstatic Field com/fs/starfarer/api/fleet/FleetGoal ATTACK Lcom/fs/starfarer/api/fleet/FleetGoal; 
L39:    invokevirtual Method com/fs/starfarer/combat/CombatEngine addFleet (Lcom/fs/starfarer/combat/oOOO;Lcom/fs/starfarer/api/fleet/FleetGoal;)V 

        .stack same 
L42:    return 
L43:    
    .end code 
.end method 

.method public getAiGrid : ()Lcom/fs/starfarer/combat/E/G; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/CombatEngine recreateAiGridsIfNeeded ()V 
L4:     aload_0 
L5:     getfield Field com/fs/starfarer/combat/CombatEngine class Lcom/fs/starfarer/combat/E/G; 
L8:     areturn 
L9:     
    .end code 
.end method 

.method public getAiGridShips : ()Lcom/fs/starfarer/combat/E/G; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/CombatEngine recreateAiGridsIfNeeded ()V 
L4:     aload_0 
L5:     getfield Field com/fs/starfarer/combat/CombatEngine 'õO0000' Lcom/fs/starfarer/combat/E/G; 
L8:     areturn 
L9:     
    .end code 
.end method 

.method public getAiGridMissiles : ()Lcom/fs/starfarer/combat/E/G; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/CombatEngine recreateAiGridsIfNeeded ()V 
L4:     aload_0 
L5:     getfield Field com/fs/starfarer/combat/CombatEngine 'ÖÒ0000' Lcom/fs/starfarer/combat/E/G; 
L8:     areturn 
L9:     
    .end code 
.end method 

.method public getAiGridAsteroids : ()Lcom/fs/starfarer/combat/E/G; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/CombatEngine recreateAiGridsIfNeeded ()V 
L4:     aload_0 
L5:     getfield Field com/fs/starfarer/combat/CombatEngine 'new.new' Lcom/fs/starfarer/combat/E/G; 
L8:     areturn 
L9:     
    .end code 
.end method 

.method public getAllObjectGrid : ()Lcom/fs/starfarer/combat/E/G; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/CombatEngine recreateAiGridsIfNeeded ()V 
L4:     aload_0 
L5:     getfield Field com/fs/starfarer/combat/CombatEngine class Lcom/fs/starfarer/combat/E/G; 
L8:     areturn 
L9:     
    .end code 
.end method 

.method public getShipGrid : ()Lcom/fs/starfarer/combat/E/G; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/CombatEngine recreateAiGridsIfNeeded ()V 
L4:     aload_0 
L5:     getfield Field com/fs/starfarer/combat/CombatEngine 'õO0000' Lcom/fs/starfarer/combat/E/G; 
L8:     areturn 
L9:     
    .end code 
.end method 

.method public getMissileGrid : ()Lcom/fs/starfarer/combat/E/G; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/CombatEngine recreateAiGridsIfNeeded ()V 
L4:     aload_0 
L5:     getfield Field com/fs/starfarer/combat/CombatEngine 'ÖÒ0000' Lcom/fs/starfarer/combat/E/G; 
L8:     areturn 
L9:     
    .end code 
.end method 

.method public getAsteroidGrid : ()Lcom/fs/starfarer/combat/E/G; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/CombatEngine recreateAiGridsIfNeeded ()V 
L4:     aload_0 
L5:     getfield Field com/fs/starfarer/combat/CombatEngine 'new.new' Lcom/fs/starfarer/combat/E/G; 
L8:     areturn 
L9:     
    .end code 
.end method 

.method protected resetAiGrids : ()V 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     aconst_null 
L2:     putfield Field com/fs/starfarer/combat/CombatEngine class Lcom/fs/starfarer/combat/E/G; 
L5:     aload_0 
L6:     aconst_null 
L7:     putfield Field com/fs/starfarer/combat/CombatEngine 'õO0000' Lcom/fs/starfarer/combat/E/G; 
L10:    aload_0 
L11:    aconst_null 
L12:    putfield Field com/fs/starfarer/combat/CombatEngine 'ÖÒ0000' Lcom/fs/starfarer/combat/E/G; 
L15:    aload_0 
L16:    aconst_null 
L17:    putfield Field com/fs/starfarer/combat/CombatEngine 'new.new' Lcom/fs/starfarer/combat/E/G; 
L20:    return 
L21:    
    .end code 
.end method 

.method protected recreateAiGridsIfNeeded : ()V 
    .code stack 8 locals 12 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine class Lcom/fs/starfarer/combat/E/G; 
L4:     ifnull L8 
L7:     return 

        .stack same 
L8:     aload_0 
L9:     getfield Field com/fs/starfarer/combat/CombatEngine 'ÖÓ0000' Lcom/fs/util/container/repo/ObjectRepository; 
L12:    ldc_w Class com/fs/starfarer/combat/E/B 
L15:    invokevirtual Method com/fs/util/container/repo/ObjectRepository getList (Ljava/lang/Class;)Ljava/util/List; 
L18:    astore_1 
L19:    aload_0 
L20:    getfield Field com/fs/starfarer/combat/CombatEngine 'Ó00000' Lcom/fs/starfarer/combat/A/B; 
L23:    invokevirtual Method com/fs/starfarer/combat/A/B 'Ò00000' ()F 
L26:    ldc_w +1000.0f 
L29:    fsub 
L30:    fstore_2 
L31:    aload_0 
L32:    getfield Field com/fs/starfarer/combat/CombatEngine 'Ó00000' Lcom/fs/starfarer/combat/A/B; 
L35:    invokevirtual Method com/fs/starfarer/combat/A/B 'Ö00000' ()F 
L38:    ldc_w +1000.0f 
L41:    fadd 
L42:    fstore_3 
L43:    aload_0 
L44:    getfield Field com/fs/starfarer/combat/CombatEngine 'Ó00000' Lcom/fs/starfarer/combat/A/B; 
L47:    invokevirtual Method com/fs/starfarer/combat/A/B 'Õ00000' ()F 
L50:    ldc_w +1000.0f 
L53:    fsub 
L54:    fstore 4 
L56:    aload_0 
L57:    getfield Field com/fs/starfarer/combat/CombatEngine 'Ó00000' Lcom/fs/starfarer/combat/A/B; 
L60:    invokevirtual Method com/fs/starfarer/combat/A/B void ()F 
L63:    ldc_w +1000.0f 
L66:    fadd 
L67:    fstore 5 
L69:    aload_0 
L70:    new com/fs/starfarer/combat/E/G 
L73:    dup 
L74:    fload_2 
L75:    fload_3 
L76:    fload 4 
L78:    fload 5 
L80:    ldc_w +300.0f 
L83:    invokespecial Method com/fs/starfarer/combat/E/G <init> (FFFFF)V 
L86:    putfield Field com/fs/starfarer/combat/CombatEngine class Lcom/fs/starfarer/combat/E/G; 
L89:    aload_0 
L90:    new com/fs/starfarer/combat/E/G 
L93:    dup 
L94:    fload_2 
L95:    fload_3 
L96:    fload 4 
L98:    fload 5 
L100:   ldc_w +300.0f 
L103:   invokespecial Method com/fs/starfarer/combat/E/G <init> (FFFFF)V 
L106:   putfield Field com/fs/starfarer/combat/CombatEngine 'õO0000' Lcom/fs/starfarer/combat/E/G; 
L109:   aload_0 
L110:   new com/fs/starfarer/combat/E/G 
L113:   dup 
L114:   fload_2 
L115:   fload_3 
L116:   fload 4 
L118:   fload 5 
L120:   ldc_w +300.0f 
L123:   invokespecial Method com/fs/starfarer/combat/E/G <init> (FFFFF)V 
L126:   putfield Field com/fs/starfarer/combat/CombatEngine 'ÖÒ0000' Lcom/fs/starfarer/combat/E/G; 
L129:   aload_0 
L130:   new com/fs/starfarer/combat/E/G 
L133:   dup 
L134:   fload_2 
L135:   fload_3 
L136:   fload 4 
L138:   fload 5 
L140:   ldc_w +300.0f 
L143:   invokespecial Method com/fs/starfarer/combat/E/G <init> (FFFFF)V 
L146:   putfield Field com/fs/starfarer/combat/CombatEngine 'new.new' Lcom/fs/starfarer/combat/E/G; 
L149:   aload_1 
L150:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L155:   astore 7 
L157:   goto L304 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object java/util/List Float Float Float Float Top Object java/util/Iterator 
            stack 
        .end stack 
L160:   aload 7 
L162:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L167:   checkcast com/fs/starfarer/combat/E/B 
L170:   astore 6 
L172:   aload 6 
L174:   instanceof com/fs/starfarer/combat/entities/CustomCombatEntity 
L177:   ifeq L183 
L180:   goto L304 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object java/util/List Float Float Float Float Object com/fs/starfarer/combat/E/B Object java/util/Iterator 
            stack 
        .end stack 
L183:   aload 6 
L185:   invokeinterface InterfaceMethod com/fs/starfarer/combat/E/B getCollisionRadius ()F 1 
L190:   fconst_2 
L191:   fmul 
L192:   fstore 8 
L194:   aload_0 
L195:   getfield Field com/fs/starfarer/combat/CombatEngine class Lcom/fs/starfarer/combat/E/G; 
L198:   aload 6 
L200:   aload 6 
L202:   invokeinterface InterfaceMethod com/fs/starfarer/combat/E/B getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L207:   fload 8 
L209:   fload 8 
L211:   invokevirtual Method com/fs/starfarer/combat/E/G addObject (Ljava/lang/Object;Lorg/lwjgl/util/vector/Vector2f;FF)V 
L214:   aload 6 
L216:   instanceof com/fs/starfarer/combat/entities/Ship 
L219:   ifeq L245 
L222:   aload_0 
L223:   getfield Field com/fs/starfarer/combat/CombatEngine 'õO0000' Lcom/fs/starfarer/combat/E/G; 
L226:   aload 6 
L228:   aload 6 
L230:   invokeinterface InterfaceMethod com/fs/starfarer/combat/E/B getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L235:   fload 8 
L237:   fload 8 
L239:   invokevirtual Method com/fs/starfarer/combat/E/G addObject (Ljava/lang/Object;Lorg/lwjgl/util/vector/Vector2f;FF)V 
L242:   goto L304 

        .stack append Float 
L245:   aload 6 
L247:   instanceof com/fs/starfarer/combat/entities/Missile 
L250:   ifeq L276 
L253:   aload_0 
L254:   getfield Field com/fs/starfarer/combat/CombatEngine 'ÖÒ0000' Lcom/fs/starfarer/combat/E/G; 
L257:   aload 6 
L259:   aload 6 
L261:   invokeinterface InterfaceMethod com/fs/starfarer/combat/E/B getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L266:   fload 8 
L268:   fload 8 
L270:   invokevirtual Method com/fs/starfarer/combat/E/G addObject (Ljava/lang/Object;Lorg/lwjgl/util/vector/Vector2f;FF)V 
L273:   goto L304 

        .stack same 
L276:   aload 6 
L278:   instanceof com/fs/starfarer/combat/entities/terrain/Asteroid 
L281:   ifeq L304 
L284:   aload_0 
L285:   getfield Field com/fs/starfarer/combat/CombatEngine 'new.new' Lcom/fs/starfarer/combat/E/G; 
L288:   aload 6 
L290:   aload 6 
L292:   invokeinterface InterfaceMethod com/fs/starfarer/combat/E/B getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L297:   fload 8 
L299:   fload 8 
L301:   invokevirtual Method com/fs/starfarer/combat/E/G addObject (Ljava/lang/Object;Lorg/lwjgl/util/vector/Vector2f;FF)V 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object java/util/List Float Float Float Float Top Object java/util/Iterator 
            stack 
        .end stack 
L304:   aload 7 
L306:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L311:   ifne L160 
L314:   aload_0 
L315:   getfield Field com/fs/starfarer/combat/CombatEngine 'ÖÓ0000' Lcom/fs/util/container/repo/ObjectRepository; 
L318:   ldc_w Class com/fs/starfarer/combat/entities/MovingRay 
L321:   invokevirtual Method com/fs/util/container/repo/ObjectRepository getList (Ljava/lang/Class;)Ljava/util/List; 
L324:   astore 6 
L326:   aload 6 
L328:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L333:   astore 8 
L335:   goto L440 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object java/util/List Float Float Float Float Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L338:   aload 8 
L340:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L345:   checkcast com/fs/starfarer/combat/entities/MovingRay 
L348:   astore 7 
L350:   aload 7 
L352:   invokevirtual Method com/fs/starfarer/combat/entities/MovingRay getFrom ()Lorg/lwjgl/util/vector/Vector2f; 
L355:   aload 7 
L357:   invokevirtual Method com/fs/starfarer/combat/entities/MovingRay getTo ()Lorg/lwjgl/util/vector/Vector2f; 
L360:   new org/lwjgl/util/vector/Vector2f 
L363:   dup 
L364:   invokespecial Method org/lwjgl/util/vector/Vector2f <init> ()V 
L367:   invokestatic Method org/lwjgl/util/vector/Vector2f add (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)Lorg/lwjgl/util/vector/Vector2f; 
L370:   astore 9 
L372:   aload 9 
L374:   ldc_w +0.5f 
L377:   invokevirtual Method org/lwjgl/util/vector/Vector2f scale (F)Lorg/lwjgl/util/vector/Vector; 
L380:   pop 
L381:   aload 7 
L383:   invokevirtual Method com/fs/starfarer/combat/entities/MovingRay getFrom ()Lorg/lwjgl/util/vector/Vector2f; 
L386:   getfield Field org/lwjgl/util/vector/Vector2f x F 
L389:   aload 7 
L391:   invokevirtual Method com/fs/starfarer/combat/entities/MovingRay getTo ()Lorg/lwjgl/util/vector/Vector2f; 
L394:   getfield Field org/lwjgl/util/vector/Vector2f x F 
L397:   fsub 
L398:   invokestatic Method java/lang/Math abs (F)F 
L401:   fstore 10 
L403:   aload 7 
L405:   invokevirtual Method com/fs/starfarer/combat/entities/MovingRay getFrom ()Lorg/lwjgl/util/vector/Vector2f; 
L408:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L411:   aload 7 
L413:   invokevirtual Method com/fs/starfarer/combat/entities/MovingRay getTo ()Lorg/lwjgl/util/vector/Vector2f; 
L416:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L419:   fsub 
L420:   invokestatic Method java/lang/Math abs (F)F 
L423:   fstore 11 
L425:   aload_0 
L426:   getfield Field com/fs/starfarer/combat/CombatEngine class Lcom/fs/starfarer/combat/E/G; 
L429:   aload 7 
L431:   aload 9 
L433:   fload 10 
L435:   fload 11 
L437:   invokevirtual Method com/fs/starfarer/combat/E/G addObject (Ljava/lang/Object;Lorg/lwjgl/util/vector/Vector2f;FF)V 

        .stack same_extended 
L440:   aload 8 
L442:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L447:   ifne L338 
L450:   return 
L451:   
    .end code 
.end method 

.method public getTotalElapsedTime : (Z)F 
    .code stack 1 locals 2 
L0:     iload_1 
L1:     ifeq L9 
L4:     aload_0 
L5:     getfield Field com/fs/starfarer/combat/CombatEngine 'float.Object' F 
L8:     freturn 

        .stack same 
L9:     aload_0 
L10:    getfield Field com/fs/starfarer/combat/CombatEngine 'ÓÖ0000' F 
L13:    freturn 
L14:    
    .end code 
.end method 

.method public getElapsedInLastFrame : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'new.class' F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method public getElapsedInContactWithEnemy : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'öÒ0000' F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method public isFleetsInContact : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'Ö00000' Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public getTimeMult : ()Lcom/fs/starfarer/api/combat/MutableStat; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'OÓ0000' Lcom/fs/starfarer/api/combat/MutableStat; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public advance : (FLcom/fs/starfarer/util/A/new;)V 
    .code stack 7 locals 7 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'interface.super' Z 
L4:     ifeq L8 
L7:     return 

        .stack same 
L8:     invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'OÓ0000' ()Z 
L11:    ifeq L219 
L14:    bipush 50 
L16:    invokestatic Method org/lwjgl/input/Keyboard isKeyDown (I)Z 
L19:    ifeq L85 
L22:    aload_0 
L23:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L26:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getLaunchBaysCopy ()Ljava/util/List; 
L29:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L34:    astore 4 
L36:    goto L75 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object com/fs/starfarer/util/A/new Top Object java/util/Iterator 
            stack 
        .end stack 
L39:    aload 4 
L41:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L46:    checkcast com/fs/starfarer/api/combat/FighterLaunchBayAPI 
L49:    astore_3 
L50:    aload_3 
L51:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/FighterLaunchBayAPI getWing ()Lcom/fs/starfarer/api/combat/FighterWingAPI; 1 
L56:    ifnonnull L62 
L59:    goto L75 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object com/fs/starfarer/util/A/new Object com/fs/starfarer/api/combat/FighterLaunchBayAPI Object java/util/Iterator 
            stack 
        .end stack 
L62:    getstatic Field com/fs/starfarer/api/impl/hullmods/BDeck REPLACEMENT_RATE_THRESHOLD F 
L65:    fstore 5 
L67:    aload_3 
L68:    fload 5 
L70:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/FighterLaunchBayAPI setCurrRate (F)V 2 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object com/fs/starfarer/util/A/new Top Object java/util/Iterator 
            stack 
        .end stack 
L75:    aload 4 
L77:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L82:    ifne L39 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object com/fs/starfarer/util/A/new 
            stack 
        .end stack 
L85:    bipush 23 
L87:    invokestatic Method org/lwjgl/input/Keyboard isKeyDown (I)Z 
L90:    ifeq L219 
L93:    aload_0 
L94:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L97:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getLaunchBaysCopy ()Ljava/util/List; 
L100:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L105:   astore 4 
L107:   goto L209 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object com/fs/starfarer/util/A/new Top Object java/util/Iterator 
            stack 
        .end stack 
L110:   aload 4 
L112:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L117:   checkcast com/fs/starfarer/api/combat/FighterLaunchBayAPI 
L120:   astore_3 
L121:   aload_3 
L122:   invokeinterface InterfaceMethod com/fs/starfarer/api/combat/FighterLaunchBayAPI getWing ()Lcom/fs/starfarer/api/combat/FighterWingAPI; 1 
L127:   ifnonnull L133 
L130:   goto L209 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object com/fs/starfarer/util/A/new Object com/fs/starfarer/api/combat/FighterLaunchBayAPI Object java/util/Iterator 
            stack 
        .end stack 
L133:   aload_3 
L134:   invokeinterface InterfaceMethod com/fs/starfarer/api/combat/FighterLaunchBayAPI getWing ()Lcom/fs/starfarer/api/combat/FighterWingAPI; 1 
L139:   invokeinterface InterfaceMethod com/fs/starfarer/api/combat/FighterWingAPI getWingMembers ()Ljava/util/List; 1 
L144:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L149:   astore 6 
L151:   goto L199 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object com/fs/starfarer/util/A/new Object com/fs/starfarer/api/combat/FighterLaunchBayAPI Object java/util/Iterator Top Object java/util/Iterator 
            stack 
        .end stack 
L154:   aload 6 
L156:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L161:   checkcast com/fs/starfarer/api/combat/ShipAPI 
L164:   astore 5 
L166:   aload 5 
L168:   checkcast com/fs/starfarer/combat/entities/Ship 
L171:   aload 5 
L173:   invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ShipAPI getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L178:   new com/fs/starfarer/combat/E/F 
L181:   dup 
L182:   ldc_w +100000.0f 
L185:   iconst_0 
L186:   getstatic Field com/fs/starfarer/api/combat/DamageType ENERGY Lcom/fs/starfarer/api/combat/DamageType; 
L189:   invokespecial Method com/fs/starfarer/combat/E/F <init> (FZLcom/fs/starfarer/api/combat/DamageType;)V 
L192:   iconst_0 
L193:   fload_1 
L194:   aconst_null 
L195:   invokevirtual Method com/fs/starfarer/combat/entities/Ship applyDamage (Lorg/lwjgl/util/vector/Vector2f;Lcom/fs/starfarer/combat/E/F;ZFLjava/lang/Object;)Lcom/fs/starfarer/combat/entities/ship/G; 
L198:   pop 

        .stack same 
L199:   aload 6 
L201:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L206:   ifne L154 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object com/fs/starfarer/util/A/new Top Object java/util/Iterator 
            stack 
        .end stack 
L209:   aload 4 
L211:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L216:   ifne L110 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object com/fs/starfarer/util/A/new 
            stack 
        .end stack 
L219:   aload_0 
L220:   getfield Field com/fs/starfarer/combat/CombatEngine spawnedTestShip Z 
L223:   ifne L241 
L226:   aload_0 
L227:   invokevirtual Method com/fs/starfarer/combat/CombatEngine isSimulation ()Z 
L230:   ifeq L241 
L233:   aload_0 
L234:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L237:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isShuttlePod ()Z 
L240:   pop 

        .stack same 
L241:   bipush 50 
L243:   invokestatic Method org/lwjgl/input/Keyboard isKeyDown (I)Z 
L246:   pop 
L247:   invokestatic Method com/fs/starfarer/combat/ai/OO0O 'Ò00000' ()V 
L250:   aload_0 
L251:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getTimeMult ()Lcom/fs/starfarer/api/combat/MutableStat; 
L254:   invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L257:   fstore_3 
L258:   fload_3 
L259:   ldc_w 'combatSpeedMult' 
L262:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'ö00000' (Ljava/lang/String;)F 
L265:   fmul 
L266:   fstore_3 
L267:   aload_0 
L268:   fload_1 
L269:   fload_3 
L270:   fmul 
L271:   aload_2 
L272:   invokevirtual Method com/fs/starfarer/combat/CombatEngine advanceInner (FLcom/fs/starfarer/util/A/new;)V 
L275:   invokestatic Method com/fs/starfarer/combat/ai/OO0O 'super' ()V 
L278:   aload_0 
L279:   invokevirtual Method com/fs/starfarer/combat/CombatEngine cleanUpShipsInHolo ()V 
L282:   return 
L283:   
    .end code 
.end method 

.method public cleanUpShipsInHolo : ()V 
    .code stack 2 locals 3 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'null.new' Ljava/util/Set; 
L4:     invokeinterface InterfaceMethod java/util/Set iterator ()Ljava/util/Iterator; 1 
L9:     astore_1 
L10:    goto L46 

        .stack append Object java/util/Iterator 
L13:    aload_1 
L14:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L19:    checkcast com/fs/starfarer/title/Object/do 
L22:    astore_2 
L23:    aload_0 
L24:    getfield Field com/fs/starfarer/combat/CombatEngine 'õÕ0000' Ljava/util/Set; 
L27:    aload_2 
L28:    invokeinterface InterfaceMethod java/util/Set contains (Ljava/lang/Object;)Z 2 
L33:    ifne L46 
L36:    aload_2 
L37:    invokevirtual Method com/fs/starfarer/title/Object/do cleanup ()V 
L40:    aload_1 
L41:    invokeinterface InterfaceMethod java/util/Iterator remove ()V 1 

        .stack same 
L46:    aload_1 
L47:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L52:    ifne L13 
L55:    aload_0 
L56:    getfield Field com/fs/starfarer/combat/CombatEngine 'õÕ0000' Ljava/util/Set; 
L59:    invokeinterface InterfaceMethod java/util/Set clear ()V 1 
L64:    return 
L65:    
    .end code 
.end method 

.method public advanceInner : (FLcom/fs/starfarer/util/A/new;)V 
    .code stack 6 locals 29 
L0:     aload_0 
L1:     dup 
L2:     getfield Field com/fs/starfarer/combat/CombatEngine 'float.Object' F 
L5:     fload_1 
L6:     fadd 
L7:     putfield Field com/fs/starfarer/combat/CombatEngine 'float.Object' F 
L10:    aload_0 
L11:    invokevirtual Method com/fs/starfarer/combat/CombatEngine isPaused ()Z 
L14:    ifeq L100 
L17:    aload_0 
L18:    fload_1 
L19:    putfield Field com/fs/starfarer/combat/CombatEngine 'new.class' F 
L22:    aload_0 
L23:    fload_1 
L24:    invokevirtual Method com/fs/starfarer/combat/CombatEngine 'Ò00000' (F)V 
L27:    aload_0 
L28:    invokevirtual Method com/fs/starfarer/combat/CombatEngine executeRemoves ()V 
L31:    aload_0 
L32:    invokevirtual Method com/fs/starfarer/combat/CombatEngine executeAdds ()V 
L35:    aload_0 
L36:    getfield Field com/fs/starfarer/combat/CombatEngine 'float.String' Lcom/fs/starfarer/util/IntervalTracker; 
L39:    fload_1 
L40:    invokevirtual Method com/fs/starfarer/util/IntervalTracker advance (F)V 
L43:    aload_0 
L44:    getfield Field com/fs/starfarer/combat/CombatEngine 'õÖ0000' Lcom/fs/graphics/util/Fader; 
L47:    fload_1 
L48:    invokevirtual Method com/fs/graphics/util/Fader advance (F)V 
L51:    aload_0 
L52:    getfield Field com/fs/starfarer/combat/CombatEngine 'float.String' Lcom/fs/starfarer/util/IntervalTracker; 
L55:    invokevirtual Method com/fs/starfarer/util/IntervalTracker intervalElapsed ()Z 
L58:    ifeq L65 
L61:    aload_0 
L62:    invokevirtual Method com/fs/starfarer/combat/CombatEngine 'Ô00000' ()V 

        .stack same_extended 
L65:    aload_0 
L66:    getfield Field com/fs/starfarer/combat/CombatEngine OO0000 Lcom/fs/starfarer/combat/entities/Ship; 
L69:    ifnull L90 
L72:    aload_0 
L73:    getfield Field com/fs/starfarer/combat/CombatEngine OO0000 Lcom/fs/starfarer/combat/entities/Ship; 
L76:    invokevirtual Method com/fs/starfarer/combat/entities/Ship isHulk ()Z 
L79:    ifne L90 
L82:    aload_0 
L83:    getfield Field com/fs/starfarer/combat/CombatEngine OO0000 Lcom/fs/starfarer/combat/entities/Ship; 
L86:    fconst_0 
L87:    invokevirtual Method com/fs/starfarer/combat/entities/Ship advance (F)V 

        .stack same 
L90:    aload_0 
L91:    getfield Field com/fs/starfarer/combat/CombatEngine 'Ó00000' Lcom/fs/starfarer/combat/A/B; 
L94:    fload_1 
L95:    aload_2 
L96:    invokevirtual Method com/fs/starfarer/combat/A/B 'super' (FLcom/fs/starfarer/util/A/new;)V 
L99:    return 

        .stack same 
L100:   aload_0 
L101:   fload_1 
L102:   putfield Field com/fs/starfarer/combat/CombatEngine 'new.class' F 
L105:   aload_0 
L106:   dup 
L107:   getfield Field com/fs/starfarer/combat/CombatEngine 'ÓÖ0000' F 
L110:   fload_1 
L111:   fadd 
L112:   putfield Field com/fs/starfarer/combat/CombatEngine 'ÓÖ0000' F 
L115:   ldc_w 'CombatEngine.advance()' 
L118:   invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L121:   aload_0 
L122:   dup 
L123:   getfield Field com/fs/starfarer/combat/CombatEngine combatNotOverFor F 
L126:   fload_1 
L127:   fsub 
L128:   putfield Field com/fs/starfarer/combat/CombatEngine combatNotOverFor F 
L131:   aload_0 
L132:   getfield Field com/fs/starfarer/combat/CombatEngine combatNotOverFor F 
L135:   fconst_0 
L136:   fcmpg 
L137:   ifge L145 
L140:   aload_0 
L141:   fconst_0 
L142:   putfield Field com/fs/starfarer/combat/CombatEngine combatNotOverFor F 

        .stack same 
L145:   iconst_0 
L146:   istore_3 
L147:   iconst_0 
L148:   istore 4 
L150:   aload_0 
L151:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getObjects ()Lcom/fs/util/container/repo/ObjectRepository; 
L154:   ldc_w Class com/fs/starfarer/combat/entities/Ship 
L157:   invokevirtual Method com/fs/util/container/repo/ObjectRepository getList (Ljava/lang/Class;)Ljava/util/List; 
L160:   astore 5 
L162:   aload_0 
L163:   iconst_0 
L164:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getFogOfWar (I)Lcom/fs/starfarer/combat/new/T; 
L167:   astore 6 
L169:   aload_0 
L170:   iconst_1 
L171:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getFogOfWar (I)Lcom/fs/starfarer/combat/new/T; 
L174:   astore 7 
L176:   aload 5 
L178:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L183:   astore 9 
L185:   goto L290 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object com/fs/starfarer/util/A/new Integer Integer Object java/util/List Object com/fs/starfarer/combat/new/T Object com/fs/starfarer/combat/new/T Top Object java/util/Iterator 
            stack 
        .end stack 
L188:   aload 9 
L190:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L195:   checkcast com/fs/starfarer/combat/entities/Ship 
L198:   astore 8 
L200:   aload 8 
L202:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isShuttlePod ()Z 
L205:   ifeq L211 
L208:   goto L290 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object com/fs/starfarer/util/A/new Integer Integer Object java/util/List Object com/fs/starfarer/combat/new/T Object com/fs/starfarer/combat/new/T Object com/fs/starfarer/combat/entities/Ship Object java/util/Iterator 
            stack 
        .end stack 
L211:   aload 8 
L213:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isHulk ()Z 
L216:   ifeq L222 
L219:   goto L290 

        .stack same 
L222:   aload 8 
L224:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isDrone ()Z 
L227:   ifeq L233 
L230:   goto L290 

        .stack same 
L233:   aload 8 
L235:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getOwner ()I 
L238:   ifne L257 
L241:   aload 7 
L243:   aload 8 
L245:   invokevirtual Method com/fs/starfarer/combat/new/T isVisible (Lcom/fs/starfarer/api/combat/CombatEntityAPI;)Z 
L248:   ifeq L257 
L251:   iconst_1 
L252:   istore 4 
L254:   goto L278 

        .stack same 
L257:   aload 8 
L259:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getOwner ()I 
L262:   iconst_1 
L263:   if_icmpne L278 
L266:   aload 6 
L268:   aload 8 
L270:   invokevirtual Method com/fs/starfarer/combat/new/T isVisible (Lcom/fs/starfarer/api/combat/CombatEntityAPI;)Z 
L273:   ifeq L278 
L276:   iconst_1 
L277:   istore_3 

        .stack same 
L278:   iload_3 
L279:   ifeq L290 
L282:   iload 4 
L284:   ifeq L290 
L287:   goto L300 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object com/fs/starfarer/util/A/new Integer Integer Object java/util/List Object com/fs/starfarer/combat/new/T Object com/fs/starfarer/combat/new/T Top Object java/util/Iterator 
            stack 
        .end stack 
L290:   aload 9 
L292:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L297:   ifne L188 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object com/fs/starfarer/util/A/new Integer Integer Object java/util/List Object com/fs/starfarer/combat/new/T Object com/fs/starfarer/combat/new/T 
            stack 
        .end stack 
L300:   aload_0 
L301:   iload_3 
L302:   ifeq L314 
L305:   iload 4 
L307:   ifeq L314 
L310:   iconst_1 
L311:   goto L315 

        .stack stack_1 Object com/fs/starfarer/combat/CombatEngine 
L314:   iconst_0 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object com/fs/starfarer/util/A/new Integer Integer Object java/util/List Object com/fs/starfarer/combat/new/T Object com/fs/starfarer/combat/new/T 
            stack Object com/fs/starfarer/combat/CombatEngine Integer 
        .end stack 
L315:   putfield Field com/fs/starfarer/combat/CombatEngine 'Ö00000' Z 
L318:   aload_0 
L319:   getfield Field com/fs/starfarer/combat/CombatEngine 'Ö00000' Z 
L322:   ifeq L335 
L325:   aload_0 
L326:   dup 
L327:   getfield Field com/fs/starfarer/combat/CombatEngine 'öÒ0000' F 
L330:   fload_1 
L331:   fadd 
L332:   putfield Field com/fs/starfarer/combat/CombatEngine 'öÒ0000' F 

        .stack same 
L335:   aload_0 
L336:   dup 
L337:   getfield Field com/fs/starfarer/combat/CombatEngine 'new.String' F 
L340:   fload_1 
L341:   fadd 
L342:   putfield Field com/fs/starfarer/combat/CombatEngine 'new.String' F 
L345:   aload_0 
L346:   getfield Field com/fs/starfarer/combat/CombatEngine 'ÔÓ0000' Lcom/fs/starfarer/campaign/WarpingSpriteRenderer; 
L349:   ifnull L360 
L352:   aload_0 
L353:   getfield Field com/fs/starfarer/combat/CombatEngine 'ÔÓ0000' Lcom/fs/starfarer/campaign/WarpingSpriteRenderer; 
L356:   fload_1 
L357:   invokevirtual Method com/fs/starfarer/campaign/WarpingSpriteRenderer advance (F)V 

        .stack same 
L360:   aload_0 
L361:   getfield Field com/fs/starfarer/combat/CombatEngine 'float.String' Lcom/fs/starfarer/util/IntervalTracker; 
L364:   fload_1 
L365:   invokevirtual Method com/fs/starfarer/util/IntervalTracker advance (F)V 
L368:   aload_0 
L369:   getfield Field com/fs/starfarer/combat/CombatEngine 'õÖ0000' Lcom/fs/graphics/util/Fader; 
L372:   fload_1 
L373:   invokevirtual Method com/fs/graphics/util/Fader advance (F)V 
L376:   aload_0 
L377:   getfield Field com/fs/starfarer/combat/CombatEngine 'float.String' Lcom/fs/starfarer/util/IntervalTracker; 
L380:   invokevirtual Method com/fs/starfarer/util/IntervalTracker intervalElapsed ()Z 
L383:   ifeq L390 
L386:   aload_0 
L387:   invokevirtual Method com/fs/starfarer/combat/CombatEngine 'Ô00000' ()V 

        .stack same 
L390:   aload_0 
L391:   getfield Field com/fs/starfarer/combat/CombatEngine 'ØÕ0000' Z 
L394:   ifne L401 
L397:   aload_0 
L398:   invokevirtual Method com/fs/starfarer/combat/CombatEngine computeFleetStrengths ()V 

        .stack same 
L401:   aload_0 
L402:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getTimeMult ()Lcom/fs/starfarer/api/combat/MutableStat; 
L405:   invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L408:   fstore 8 
L410:   aload_0 
L411:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L414:   ifnull L446 
L417:   aload_0 
L418:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L421:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getStats ()Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L424:   invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getTimeMult ()Lcom/fs/starfarer/api/combat/MutableStat; 
L427:   invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L430:   fstore 9 
L432:   fload 9 
L434:   fconst_1 
L435:   fcmpg 
L436:   ifge L446 
L439:   fload 8 
L441:   fload 9 
L443:   fmul 
L444:   fstore 8 

        .stack append Float 
L446:   fload 8 
L448:   fconst_0 
L449:   fcmpl 
L450:   ifle L467 
L453:   aload_0 
L454:   getfield Field com/fs/starfarer/combat/CombatEngine 'null.class' Lcom/fs/starfarer/renderers/damage/OooO; 
L457:   fload_1 
L458:   fload 8 
L460:   fdiv 
L461:   invokevirtual Method com/fs/starfarer/renderers/damage/OooO 'super' (F)V 
L464:   goto L475 

        .stack same 
L467:   aload_0 
L468:   getfield Field com/fs/starfarer/combat/CombatEngine 'null.class' Lcom/fs/starfarer/renderers/damage/OooO; 
L471:   fload_1 
L472:   invokevirtual Method com/fs/starfarer/renderers/damage/OooO 'super' (F)V 

        .stack same 
L475:   ldc_w 'Movement' 
L478:   invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L481:   aload_0 
L482:   fload_1 
L483:   invokevirtual Method com/fs/starfarer/combat/CombatEngine o00000 (F)V 
L486:   invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L489:   ldc_w 'Contrails' 
L492:   invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L495:   aload_0 
L496:   getfield Field com/fs/starfarer/combat/CombatEngine 'Ø00000' Lcom/fs/starfarer/combat/entities/ContrailEngine; 
L499:   fload_1 
L500:   invokevirtual Method com/fs/starfarer/combat/entities/ContrailEngine o00000 (F)V 
L503:   invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L506:   ldc_w 'Floating damage numbers' 
L509:   invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L512:   aload_0 
L513:   getfield Field com/fs/starfarer/combat/CombatEngine 'class.class' Lcom/fs/starfarer/renderers/Q; 
L516:   fload_1 
L517:   invokevirtual Method com/fs/starfarer/renderers/Q 'Ò00000' (F)V 
L520:   invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L523:   new java/util/ArrayList 
L526:   dup 
L527:   invokespecial Method java/util/ArrayList <init> ()V 
L530:   astore 9 
L532:   ldc_w 'CombatState AI' 
L535:   invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L538:   ldc_w 'CombatFleetManager.advance()' 
L541:   invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L544:   aload_0 
L545:   getfield Field com/fs/starfarer/combat/CombatEngine 'interface.new' Ljava/util/List; 
L548:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L553:   astore 11 
L555:   goto L576 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object com/fs/starfarer/util/A/new Integer Integer Object java/util/List Object com/fs/starfarer/combat/new/T Object com/fs/starfarer/combat/new/T Float Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L558:   aload 11 
L560:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L565:   checkcast com/fs/starfarer/combat/CombatFleetManager 
L568:   astore 10 
L570:   aload 10 
L572:   fload_1 
L573:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager advance (F)V 

        .stack same 
L576:   aload 11 
L578:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L583:   ifne L558 
L586:   aload_0 
L587:   fload_1 
L588:   invokevirtual Method com/fs/starfarer/combat/CombatEngine checkCornerCheese (F)V 
L591:   invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L594:   ldc_w 'Binning collidables' 
L597:   invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L600:   aload_0 
L601:   invokevirtual Method com/fs/starfarer/combat/CombatEngine resetAiGrids ()V 
L604:   aload_0 
L605:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getAiGrid ()Lcom/fs/starfarer/combat/E/G; 
L608:   pop 
L609:   invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L612:   fconst_0 
L613:   fstore 10 
L615:   new java/util/ArrayList 
L618:   dup 
L619:   invokespecial Method java/util/ArrayList <init> ()V 
L622:   astore 11 
L624:   ldc_w 'Advancing entity AI' 
L627:   invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L630:   aload_0 
L631:   getfield Field com/fs/starfarer/combat/CombatEngine 'ÖÓ0000' Lcom/fs/util/container/repo/ObjectRepository; 
L634:   ldc_w Class com/fs/starfarer/combat/entities/oO0OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 
L637:   invokevirtual Method com/fs/util/container/repo/ObjectRepository getList (Ljava/lang/Class;)Ljava/util/List; 
L640:   astore 12 
L642:   aload 12 
L644:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L649:   astore 14 
L651:   goto L753 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object com/fs/starfarer/util/A/new Integer Integer Object java/util/List Object com/fs/starfarer/combat/new/T Object com/fs/starfarer/combat/new/T Float Object java/util/List Float Object java/util/List Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L654:   aload 14 
L656:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L661:   checkcast com/fs/starfarer/combat/entities/oO0OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 
L664:   astore 13 
L666:   fconst_1 
L667:   fstore 15 
L669:   aload 13 
L671:   instanceof com/fs/starfarer/combat/entities/Ship 
L674:   ifeq L728 
L677:   aload 13 
L679:   checkcast com/fs/starfarer/combat/entities/Ship 
L682:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getStats ()Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L685:   invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getTimeMult ()Lcom/fs/starfarer/api/combat/MutableStat; 
L688:   invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L691:   fstore 15 
L693:   fload 15 
L695:   fconst_1 
L696:   fcmpl 
L697:   ifle L728 
L700:   aload 11 
L702:   aload 13 
L704:   checkcast com/fs/starfarer/combat/entities/Ship 
L707:   invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L712:   pop 
L713:   fload 15 
L715:   fload 10 
L717:   fcmpl 
L718:   ifle L725 
L721:   fload 15 
L723:   fstore 10 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object com/fs/starfarer/util/A/new Integer Integer Object java/util/List Object com/fs/starfarer/combat/new/T Object com/fs/starfarer/combat/new/T Float Object java/util/List Float Object java/util/List Object java/util/List Object com/fs/starfarer/combat/entities/oO0OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO Object java/util/Iterator Float 
            stack 
        .end stack 
L725:   fconst_1 
L726:   fstore 15 

        .stack same 
L728:   aload 13 
L730:   invokeinterface InterfaceMethod [c1047] getAI ()Lcom/fs/starfarer/combat/ai/AI; 1 
L735:   astore 16 
L737:   aload 16 
L739:   ifnull L753 
L742:   aload 16 
L744:   fload_1 
L745:   fload 15 
L747:   fmul 
L748:   invokeinterface InterfaceMethod com/fs/starfarer/combat/ai/AI advance (F)V 2 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object com/fs/starfarer/util/A/new Integer Integer Object java/util/List Object com/fs/starfarer/combat/new/T Object com/fs/starfarer/combat/new/T Float Object java/util/List Float Object java/util/List Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L753:   aload 14 
L755:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L760:   ifne L654 
L763:   invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L766:   invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L769:   ldc_w 'Advancing entities' 
L772:   invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L775:   aload_0 
L776:   getfield Field com/fs/starfarer/combat/CombatEngine 'ÖÓ0000' Lcom/fs/util/container/repo/ObjectRepository; 
L779:   ldc_w Class com/fs/starfarer/combat/ai/M 
L782:   invokevirtual Method com/fs/util/container/repo/ObjectRepository getList (Ljava/lang/Class;)Ljava/util/List; 
L785:   astore 13 
L787:   aconst_null 
L788:   astore 14 
L790:   aconst_null 
L791:   astore 15 
L793:   aload 12 
L795:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L800:   astore 17 
L802:   goto L1079 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object com/fs/starfarer/util/A/new Integer Integer Object java/util/List Object com/fs/starfarer/combat/new/T Object com/fs/starfarer/combat/new/T Float Object java/util/List Float Object java/util/List Object java/util/List Object java/util/List Object java/util/EnumSet Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L805:   aload 17 
L807:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L812:   checkcast [c1047] 
L815:   astore 16 
L817:   aload 16 
L819:   aload_0 
L820:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L823:   if_acmpne L1011 
L826:   aload 16 
L828:   invokeinterface InterfaceMethod [c1047] getAI ()Lcom/fs/starfarer/combat/ai/AI; 1 
L833:   ifnonnull L1011 
L836:   aload_0 
L837:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L840:   astore 18 
L842:   aload 18 
L844:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getBlockedCommands ()Ljava/util/EnumSet; 
L847:   invokestatic Method java/util/EnumSet copyOf (Ljava/util/EnumSet;)Ljava/util/EnumSet; 
L850:   astore 14 
L852:   new java/util/ArrayList 
L855:   dup 
L856:   invokespecial Method java/util/ArrayList <init> ()V 
L859:   astore 15 
L861:   aload 18 
L863:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getCommands ()Ljava/util/List; 
L866:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L871:   astore 20 
L873:   goto L1001 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object com/fs/starfarer/util/A/new Integer Integer Object java/util/List Object com/fs/starfarer/combat/new/T Object com/fs/starfarer/combat/new/T Float Object java/util/List Float Object java/util/List Object java/util/List Object java/util/List Object java/util/EnumSet Object java/util/List Object [c1047] Object java/util/Iterator Object com/fs/starfarer/combat/entities/Ship Top Object java/util/Iterator 
            stack 
        .end stack 
L876:   aload 20 
L878:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L883:   checkcast com/fs/starfarer/combat/entities/Ship$Oo 
L886:   astore 19 
L888:   invokestatic Method com/fs/starfarer/combat/CombatEngine $SWITCH_TABLE$com$fs$starfarer$combat$entities$Ship$CommandType ()[I 
L891:   aload 19 
L893:   getfield Field com/fs/starfarer/combat/entities/Ship$Oo 'Ò00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L896:   invokevirtual Method com/fs/starfarer/combat/entities/Ship$oo ordinal ()I 
L899:   iaload 
L900:   tableswitch 1 
            L988 
            L988 
            L988 
            L988 
            L988 
            L988 
            L988 
            L988 
            L988 
            L988 
            L988 
            L988 
            L988 
            L988 
            L1001 
            L1001 
            L1001 
            L988 
            default : L1001 


        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object com/fs/starfarer/util/A/new Integer Integer Object java/util/List Object com/fs/starfarer/combat/new/T Object com/fs/starfarer/combat/new/T Float Object java/util/List Float Object java/util/List Object java/util/List Object java/util/List Object java/util/EnumSet Object java/util/List Object [c1047] Object java/util/Iterator Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship$Oo Object java/util/Iterator 
            stack 
        .end stack 
L988:   aload 15 
L990:   aload 19 
L992:   invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L997:   pop 
L998:   goto L1001 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object com/fs/starfarer/util/A/new Integer Integer Object java/util/List Object com/fs/starfarer/combat/new/T Object com/fs/starfarer/combat/new/T Float Object java/util/List Float Object java/util/List Object java/util/List Object java/util/List Object java/util/EnumSet Object java/util/List Object [c1047] Object java/util/Iterator Object com/fs/starfarer/combat/entities/Ship Top Object java/util/Iterator 
            stack 
        .end stack 
L1001:  aload 20 
L1003:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L1008:  ifne L876 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object com/fs/starfarer/util/A/new Integer Integer Object java/util/List Object com/fs/starfarer/combat/new/T Object com/fs/starfarer/combat/new/T Float Object java/util/List Float Object java/util/List Object java/util/List Object java/util/List Object java/util/EnumSet Object java/util/List Object [c1047] Object java/util/Iterator 
            stack 
        .end stack 
L1011:  fconst_1 
L1012:  fstore 18 
L1014:  aload 16 
L1016:  instanceof com/fs/starfarer/combat/entities/Ship 
L1019:  ifeq L1048 
L1022:  aload 16 
L1024:  checkcast com/fs/starfarer/combat/entities/Ship 
L1027:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getStats ()Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L1030:  invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getTimeMult ()Lcom/fs/starfarer/api/combat/MutableStat; 
L1033:  invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L1036:  fstore 18 
L1038:  fload 18 
L1040:  fconst_1 
L1041:  fcmpl 
L1042:  ifle L1048 
L1045:  fconst_1 
L1046:  fstore 18 

        .stack append Float 
L1048:  aload 16 
L1050:  fload_1 
L1051:  fload 18 
L1053:  fmul 
L1054:  invokeinterface InterfaceMethod [c1047] advance (F)V 2 
L1059:  aload 16 
L1061:  invokeinterface InterfaceMethod [c1047] isExpired ()Z 1 
L1066:  ifeq L1079 
L1069:  aload 9 
L1071:  aload 16 
L1073:  invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L1078:  pop 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object com/fs/starfarer/util/A/new Integer Integer Object java/util/List Object com/fs/starfarer/combat/new/T Object com/fs/starfarer/combat/new/T Float Object java/util/List Float Object java/util/List Object java/util/List Object java/util/List Object java/util/EnumSet Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L1079:  aload 17 
L1081:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L1086:  ifne L805 
L1089:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L1092:  ldc_w 'Advancing fast-time ships' 
L1095:  invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L1098:  aload_0 
L1099:  iconst_1 
L1100:  invokevirtual Method com/fs/starfarer/combat/CombatEngine setInFastTimeAdvance (Z)V 
L1103:  fconst_1 
L1104:  fstore 16 
L1106:  goto L1785 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object com/fs/starfarer/util/A/new Integer Integer Object java/util/List Object com/fs/starfarer/combat/new/T Object com/fs/starfarer/combat/new/T Float Object java/util/List Float Object java/util/List Object java/util/List Object java/util/List Object java/util/EnumSet Object java/util/List Float 
            stack 
        .end stack 
L1109:  new java/util/ArrayList 
L1112:  dup 
L1113:  aload 11 
L1115:  invokespecial Method java/util/ArrayList <init> (Ljava/util/Collection;)V 
L1118:  invokevirtual Method java/util/ArrayList iterator ()Ljava/util/Iterator; 
L1121:  astore 18 
L1123:  goto L1769 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object com/fs/starfarer/util/A/new Integer Integer Object java/util/List Object com/fs/starfarer/combat/new/T Object com/fs/starfarer/combat/new/T Float Object java/util/List Float Object java/util/List Object java/util/List Object java/util/List Object java/util/EnumSet Object java/util/List Float Top Object java/util/Iterator 
            stack 
        .end stack 
L1126:  aload 18 
L1128:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L1133:  checkcast com/fs/starfarer/combat/entities/Ship 
L1136:  astore 17 
L1138:  aload 17 
L1140:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getCollisionRadius ()F 
L1143:  fconst_2 
L1144:  fmul 
L1145:  fstore 19 
L1147:  aload_0 
L1148:  getfield Field com/fs/starfarer/combat/CombatEngine class Lcom/fs/starfarer/combat/E/G; 
L1151:  aload 17 
L1153:  aload 17 
L1155:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L1158:  fload 19 
L1160:  fconst_2 
L1161:  fmul 
L1162:  fload 19 
L1164:  fconst_2 
L1165:  fmul 
L1166:  invokevirtual Method com/fs/starfarer/combat/E/G removeObject (Ljava/lang/Object;Lorg/lwjgl/util/vector/Vector2f;FF)V 
L1169:  aload_0 
L1170:  getfield Field com/fs/starfarer/combat/CombatEngine class Lcom/fs/starfarer/combat/E/G; 
L1173:  aload 17 
L1175:  aload 17 
L1177:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L1180:  fload 19 
L1182:  fload 19 
L1184:  invokevirtual Method com/fs/starfarer/combat/E/G addObject (Ljava/lang/Object;Lorg/lwjgl/util/vector/Vector2f;FF)V 
L1187:  aload_0 
L1188:  getfield Field com/fs/starfarer/combat/CombatEngine 'õO0000' Lcom/fs/starfarer/combat/E/G; 
L1191:  aload 17 
L1193:  aload 17 
L1195:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L1198:  fload 19 
L1200:  fconst_2 
L1201:  fmul 
L1202:  fload 19 
L1204:  fconst_2 
L1205:  fmul 
L1206:  invokevirtual Method com/fs/starfarer/combat/E/G removeObject (Ljava/lang/Object;Lorg/lwjgl/util/vector/Vector2f;FF)V 
L1209:  aload_0 
L1210:  getfield Field com/fs/starfarer/combat/CombatEngine 'õO0000' Lcom/fs/starfarer/combat/E/G; 
L1213:  aload 17 
L1215:  aload 17 
L1217:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L1220:  fload 19 
L1222:  fload 19 
L1224:  invokevirtual Method com/fs/starfarer/combat/E/G addObject (Ljava/lang/Object;Lorg/lwjgl/util/vector/Vector2f;FF)V 
L1227:  aload 17 
L1229:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getShipTarget ()Lcom/fs/starfarer/combat/entities/Ship; 
L1232:  ifnull L1331 
L1235:  aload 17 
L1237:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getShipTarget ()Lcom/fs/starfarer/combat/entities/Ship; 
L1240:  astore 20 
L1242:  aload 20 
L1244:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getCollisionRadius ()F 
L1247:  fconst_2 
L1248:  fmul 
L1249:  fstore 19 
L1251:  aload_0 
L1252:  getfield Field com/fs/starfarer/combat/CombatEngine class Lcom/fs/starfarer/combat/E/G; 
L1255:  aload 20 
L1257:  aload 20 
L1259:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L1262:  fload 19 
L1264:  fconst_2 
L1265:  fmul 
L1266:  fload 19 
L1268:  fconst_2 
L1269:  fmul 
L1270:  invokevirtual Method com/fs/starfarer/combat/E/G removeObject (Ljava/lang/Object;Lorg/lwjgl/util/vector/Vector2f;FF)V 
L1273:  aload_0 
L1274:  getfield Field com/fs/starfarer/combat/CombatEngine class Lcom/fs/starfarer/combat/E/G; 
L1277:  aload 20 
L1279:  aload 20 
L1281:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L1284:  fload 19 
L1286:  fload 19 
L1288:  invokevirtual Method com/fs/starfarer/combat/E/G addObject [u1383] 
L1291:  aload_0 
L1292:  getfield Field com/fs/starfarer/combat/CombatEngine 'õO0000' Lcom/fs/starfarer/combat/E/G; 
L1295:  aload 20 
L1297:  aload 20 
L1299:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L1302:  fload 19 
L1304:  fconst_2 
L1305:  fmul 
L1306:  fload 19 
L1308:  fconst_2 
L1309:  fmul 
L1310:  invokevirtual Method com/fs/starfarer/combat/E/G removeObject [u1383] 
L1313:  aload_0 
L1314:  getfield Field com/fs/starfarer/combat/CombatEngine 'õO0000' Lcom/fs/starfarer/combat/E/G; 
L1317:  aload 20 
L1319:  aload 20 
L1321:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L1324:  fload 19 
L1326:  fload 19 
L1328:  invokevirtual Method com/fs/starfarer/combat/E/G addObject [u1383] 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object com/fs/starfarer/util/A/new Integer Integer Object java/util/List Object com/fs/starfarer/combat/new/T Object com/fs/starfarer/combat/new/T Float Object java/util/List Float Object java/util/List Object java/util/List Object java/util/List Object java/util/EnumSet Object java/util/List Float Object com/fs/starfarer/combat/entities/Ship Object java/util/Iterator Float 
            stack 
        .end stack 
L1331:  aload 17 
L1333:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getStats ()Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L1336:  invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getTimeMult ()Lcom/fs/starfarer/api/combat/MutableStat; 
L1339:  invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L1342:  fload 16 
L1344:  fsub 
L1345:  fstore 20 
L1347:  fload 20 
L1349:  fconst_0 
L1350:  fcmpg 
L1351:  ifgt L1367 
L1354:  aload 11 
L1356:  aload 17 
L1358:  invokeinterface InterfaceMethod java/util/List remove (Ljava/lang/Object;)Z 2 
L1363:  pop 
L1364:  goto L1769 

        .stack append Float 
L1367:  fload 20 
L1369:  fconst_1 
L1370:  fcmpl 
L1371:  ifle L1377 
L1374:  fconst_1 
L1375:  fstore 20 

        .stack same 
L1377:  aload_0 
L1378:  getfield Field com/fs/starfarer/combat/CombatEngine 'ÔÔ0000' Lcom/fs/starfarer/combat/E/oOOO; 
L1381:  invokevirtual Method com/fs/starfarer/combat/E/oOOO 'super' ()Lcom/fs/starfarer/combat/E/A/ooOO; 
L1384:  aload 17 
L1386:  invokevirtual Method com/fs/starfarer/combat/E/A/ooOO 'Ö00000' (Lcom/fs/starfarer/combat/E/B;)Z 
L1389:  istore 21 
L1391:  iload 21 
L1393:  ifeq L1412 
L1396:  aload_0 
L1397:  getfield Field com/fs/starfarer/combat/CombatEngine 'ÔÔ0000' Lcom/fs/starfarer/combat/E/oOOO; 
L1400:  invokevirtual Method com/fs/starfarer/combat/E/oOOO 'super' ()Lcom/fs/starfarer/combat/E/A/ooOO; 
L1403:  aload 17 
L1405:  fload_1 
L1406:  fload 20 
L1408:  fmul 
L1409:  invokevirtual Method com/fs/starfarer/combat/E/A/ooOO 'Ó00000' (Lcom/fs/starfarer/combat/E/B;F)V 

        .stack append Integer 
L1412:  aload 17 
L1414:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 
L1417:  astore 22 
L1419:  aload 17 
L1421:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getStationSlot ()Lcom/fs/starfarer/loading/specs/nullsuper; 
L1424:  ifnull L1434 
L1427:  aload 22 
L1429:  fconst_0 
L1430:  fconst_0 
L1431:  invokevirtual Method org/lwjgl/util/vector/Vector2f set (FF)V 

        .stack append Object org/lwjgl/util/vector/Vector2f 
L1434:  aload 22 
L1436:  invokevirtual Method org/lwjgl/util/vector/Vector2f length ()F 
L1439:  fstore 23 
L1441:  fload 23 
L1443:  ldc_w +600.0f 
L1446:  fcmpl 
L1447:  iflt L1462 
L1450:  aload 22 
L1452:  ldc_w +600.0f 
L1455:  fload 23 
L1457:  fdiv 
L1458:  invokevirtual Method org/lwjgl/util/vector/Vector2f scale (F)Lorg/lwjgl/util/vector/Vector; 
L1461:  pop 

        .stack append Float 
L1462:  aload 17 
L1464:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L1467:  astore 24 
L1469:  aload 24 
L1471:  dup 
L1472:  getfield Field org/lwjgl/util/vector/Vector2f x F 
L1475:  aload 22 
L1477:  getfield Field org/lwjgl/util/vector/Vector2f x F 
L1480:  fload_1 
L1481:  fmul 
L1482:  fload 20 
L1484:  fmul 
L1485:  fadd 
L1486:  putfield Field org/lwjgl/util/vector/Vector2f x F 
L1489:  aload 24 
L1491:  dup 
L1492:  getfield Field org/lwjgl/util/vector/Vector2f y F 
L1495:  aload 22 
L1497:  getfield Field org/lwjgl/util/vector/Vector2f y F 
L1500:  fload_1 
L1501:  fmul 
L1502:  fload 20 
L1504:  fmul 
L1505:  fadd 
L1506:  putfield Field org/lwjgl/util/vector/Vector2f y F 
L1509:  aload 17 
L1511:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getAngularVelocity ()F 
L1514:  fload_1 
L1515:  fmul 
L1516:  fload 20 
L1518:  fmul 
L1519:  fstore 25 
L1521:  aload 17 
L1523:  aload 17 
L1525:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getFacing ()F 
L1528:  fload 25 
L1530:  fadd 
L1531:  invokevirtual Method com/fs/starfarer/combat/entities/Ship setFacing (F)V 
L1534:  aload 17 
L1536:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isStation ()Z 
L1539:  ifne L1563 
L1542:  aload 17 
L1544:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isShipWithModules ()Z 
L1547:  ifne L1563 
L1550:  aload 17 
L1552:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getChildModules ()Ljava/util/List; 
L1555:  invokeinterface InterfaceMethod java/util/List isEmpty ()Z 1 
L1560:  ifne L1569 

        .stack append Object org/lwjgl/util/vector/Vector2f Float 
L1563:  aload_0 
L1564:  aload 17 
L1566:  invokevirtual Method com/fs/starfarer/combat/CombatEngine updateStationModuleLocations (Lcom/fs/starfarer/api/combat/ShipAPI;)V 

        .stack same 
L1569:  aload 17 
L1571:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getAI ()Lcom/fs/starfarer/combat/ai/AI; 
L1574:  astore 26 
L1576:  aload 26 
L1578:  ifnull L1595 
L1581:  aload 26 
L1583:  fload_1 
L1584:  fload 20 
L1586:  fmul 
L1587:  invokeinterface InterfaceMethod com/fs/starfarer/combat/ai/AI advance (F)V 2 
L1592:  goto L1732 

        .stack append Object com/fs/starfarer/combat/ai/AI 
L1595:  aload 17 
L1597:  aload_0 
L1598:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L1601:  if_acmpne L1732 
L1604:  aload 14 
L1606:  ifnull L1665 
L1609:  aload 14 
L1611:  invokevirtual Method java/util/EnumSet iterator ()Ljava/util/Iterator; 
L1614:  astore 28 
L1616:  goto L1655 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object com/fs/starfarer/util/A/new Integer Integer Object java/util/List Object com/fs/starfarer/combat/new/T Object com/fs/starfarer/combat/new/T Float Object java/util/List Float Object java/util/List Object java/util/List Object java/util/List Object java/util/EnumSet Object java/util/List Float Object com/fs/starfarer/combat/entities/Ship Object java/util/Iterator Float Float Integer Object org/lwjgl/util/vector/Vector2f Float Object org/lwjgl/util/vector/Vector2f Float Object com/fs/starfarer/combat/ai/AI Top Object java/util/Iterator 
            stack 
        .end stack 
L1619:  aload 28 
L1621:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L1626:  checkcast com/fs/starfarer/combat/entities/Ship$oo 
L1629:  astore 27 
L1631:  aload 17 
L1633:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getBlockedCommands ()Ljava/util/EnumSet; 
L1636:  aload 27 
L1638:  invokevirtual Method java/util/EnumSet contains (Ljava/lang/Object;)Z 
L1641:  ifne L1655 
L1644:  aload 17 
L1646:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getBlockedCommands ()Ljava/util/EnumSet; 
L1649:  aload 27 
L1651:  invokevirtual Method java/util/EnumSet add (Ljava/lang/Object;)Z 
L1654:  pop 

        .stack same 
L1655:  aload 28 
L1657:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L1662:  ifne L1619 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object com/fs/starfarer/util/A/new Integer Integer Object java/util/List Object com/fs/starfarer/combat/new/T Object com/fs/starfarer/combat/new/T Float Object java/util/List Float Object java/util/List Object java/util/List Object java/util/List Object java/util/EnumSet Object java/util/List Float Object com/fs/starfarer/combat/entities/Ship Object java/util/Iterator Float Float Integer Object org/lwjgl/util/vector/Vector2f Float Object org/lwjgl/util/vector/Vector2f Float Object com/fs/starfarer/combat/ai/AI 
            stack 
        .end stack 
L1665:  aload 15 
L1667:  ifnull L1732 
L1670:  aload 15 
L1672:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L1677:  astore 28 
L1679:  goto L1722 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object com/fs/starfarer/util/A/new Integer Integer Object java/util/List Object com/fs/starfarer/combat/new/T Object com/fs/starfarer/combat/new/T Float Object java/util/List Float Object java/util/List Object java/util/List Object java/util/List Object java/util/EnumSet Object java/util/List Float Object com/fs/starfarer/combat/entities/Ship Object java/util/Iterator Float Float Integer Object org/lwjgl/util/vector/Vector2f Float Object org/lwjgl/util/vector/Vector2f Float Object com/fs/starfarer/combat/ai/AI Top Object java/util/Iterator 
            stack 
        .end stack 
L1682:  aload 28 
L1684:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L1689:  checkcast com/fs/starfarer/combat/entities/Ship$Oo 
L1692:  astore 27 
L1694:  aload 17 
L1696:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getCommands ()Ljava/util/List; 
L1699:  aload 27 
L1701:  invokeinterface InterfaceMethod java/util/List contains (Ljava/lang/Object;)Z 2 
L1706:  ifne L1722 
L1709:  aload 17 
L1711:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getCommands ()Ljava/util/List; 
L1714:  aload 27 
L1716:  invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L1721:  pop 

        .stack same 
L1722:  aload 28 
L1724:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L1729:  ifne L1682 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object com/fs/starfarer/util/A/new Integer Integer Object java/util/List Object com/fs/starfarer/combat/new/T Object com/fs/starfarer/combat/new/T Float Object java/util/List Float Object java/util/List Object java/util/List Object java/util/List Object java/util/EnumSet Object java/util/List Float Object com/fs/starfarer/combat/entities/Ship Object java/util/Iterator Float Float Integer Object org/lwjgl/util/vector/Vector2f Float Object org/lwjgl/util/vector/Vector2f Float Object com/fs/starfarer/combat/ai/AI 
            stack 
        .end stack 
L1732:  aload 17 
L1734:  fload_1 
L1735:  fload 20 
L1737:  fmul 
L1738:  invokevirtual Method com/fs/starfarer/combat/entities/Ship advance (F)V 
L1741:  aload 17 
L1743:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isExpired ()Z 
L1746:  ifeq L1769 
L1749:  aload 9 
L1751:  aload 17 
L1753:  invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L1758:  pop 
L1759:  aload 11 
L1761:  aload 17 
L1763:  invokeinterface InterfaceMethod java/util/List remove (Ljava/lang/Object;)Z 2 
L1768:  pop 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object com/fs/starfarer/util/A/new Integer Integer Object java/util/List Object com/fs/starfarer/combat/new/T Object com/fs/starfarer/combat/new/T Float Object java/util/List Float Object java/util/List Object java/util/List Object java/util/List Object java/util/EnumSet Object java/util/List Float Top Object java/util/Iterator 
            stack 
        .end stack 
L1769:  aload 18 
L1771:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L1776:  ifne L1126 
L1779:  fload 16 
L1781:  fconst_1 
L1782:  fadd 
L1783:  fstore 16 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object com/fs/starfarer/util/A/new Integer Integer Object java/util/List Object com/fs/starfarer/combat/new/T Object com/fs/starfarer/combat/new/T Float Object java/util/List Float Object java/util/List Object java/util/List Object java/util/List Object java/util/EnumSet Object java/util/List Float 
            stack 
        .end stack 
L1785:  fload 16 
L1787:  fload 10 
L1789:  fcmpg 
L1790:  iflt L1109 
L1793:  aload_0 
L1794:  iconst_0 
L1795:  invokevirtual Method com/fs/starfarer/combat/CombatEngine setInFastTimeAdvance (Z)V 
L1798:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L1801:  ldc_w 'Advancing fighter wings' 
L1804:  invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L1807:  aload 13 
L1809:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L1814:  astore 17 
L1816:  goto L1865 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object com/fs/starfarer/util/A/new Integer Integer Object java/util/List Object com/fs/starfarer/combat/new/T Object com/fs/starfarer/combat/new/T Float Object java/util/List Float Object java/util/List Object java/util/List Object java/util/List Object java/util/EnumSet Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L1819:  aload 17 
L1821:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L1826:  checkcast com/fs/starfarer/combat/ai/M 
L1829:  astore 16 
L1831:  aload 16 
L1833:  fload_1 
L1834:  invokevirtual Method com/fs/starfarer/combat/ai/M advance (F)V 
L1837:  aload 16 
L1839:  invokevirtual Method com/fs/starfarer/combat/ai/M isDestroyed ()Z 
L1842:  ifeq L1865 
L1845:  aload 16 
L1847:  invokevirtual Method com/fs/starfarer/combat/ai/M isRetreated ()Z 
L1850:  ifne L1859 
L1853:  aload_0 
L1854:  aload 16 
L1856:  invokevirtual Method com/fs/starfarer/combat/CombatEngine reportFighterWingDestroyed (Lcom/fs/starfarer/combat/ai/M;)V 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object com/fs/starfarer/util/A/new Integer Integer Object java/util/List Object com/fs/starfarer/combat/new/T Object com/fs/starfarer/combat/new/T Float Object java/util/List Float Object java/util/List Object java/util/List Object java/util/List Object java/util/EnumSet Object java/util/List Object com/fs/starfarer/combat/ai/M Object java/util/Iterator 
            stack 
        .end stack 
L1859:  aload_0 
L1860:  aload 16 
L1862:  invokevirtual Method com/fs/starfarer/combat/CombatEngine removeObject (Ljava/lang/Object;)V 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object com/fs/starfarer/util/A/new Integer Integer Object java/util/List Object com/fs/starfarer/combat/new/T Object com/fs/starfarer/combat/new/T Float Object java/util/List Float Object java/util/List Object java/util/List Object java/util/List Object java/util/EnumSet Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L1865:  aload 17 
L1867:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L1872:  ifne L1819 
L1875:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L1878:  aload 9 
L1880:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L1885:  astore 17 
L1887:  goto L1908 

        .stack same 
L1890:  aload 17 
L1892:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L1897:  checkcast [c1047] 
L1900:  astore 16 
L1902:  aload_0 
L1903:  aload 16 
L1905:  invokevirtual Method com/fs/starfarer/combat/CombatEngine removeObject (Ljava/lang/Object;)V 

        .stack same 
L1908:  aload 17 
L1910:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L1915:  ifne L1890 
L1918:  aload 9 
L1920:  invokeinterface InterfaceMethod java/util/List clear ()V 1 
L1925:  aload_0 
L1926:  invokevirtual Method com/fs/starfarer/combat/CombatEngine executeRemoves ()V 
L1929:  aload_0 
L1930:  invokevirtual Method com/fs/starfarer/combat/CombatEngine executeAdds ()V 
L1933:  ldc_w 'Advancing clouds' 
L1936:  invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L1939:  aload_0 
L1940:  getfield Field com/fs/starfarer/combat/CombatEngine 'oÓ0000' Lcom/fs/starfarer/combat/entities/terrain/A; 
L1943:  fload_1 
L1944:  invokevirtual Method com/fs/starfarer/combat/entities/terrain/A advance (F)V 
L1947:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L1950:  aload_0 
L1951:  fload_1 
L1952:  invokevirtual Method com/fs/starfarer/combat/CombatEngine 'Ò00000' (F)V 
L1955:  aload_0 
L1956:  getfield Field com/fs/starfarer/combat/CombatEngine 'Ó00000' Lcom/fs/starfarer/combat/A/B; 
L1959:  ifnull L1971 
L1962:  aload_0 
L1963:  getfield Field com/fs/starfarer/combat/CombatEngine 'Ó00000' Lcom/fs/starfarer/combat/A/B; 
L1966:  fload_1 
L1967:  aload_2 
L1968:  invokevirtual Method com/fs/starfarer/combat/A/B 'super' (FLcom/fs/starfarer/util/A/new;)V 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object com/fs/starfarer/util/A/new Integer Integer Object java/util/List Object com/fs/starfarer/combat/new/T Object com/fs/starfarer/combat/new/T Float Object java/util/List Float Object java/util/List Object java/util/List Object java/util/List Object java/util/EnumSet Object java/util/List 
            stack 
        .end stack 
L1971:  ldc_w 'CombatEngine collision checking' 
L1974:  invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L1977:  aload_0 
L1978:  getfield Field com/fs/starfarer/combat/CombatEngine 'ÔÔ0000' Lcom/fs/starfarer/combat/E/oOOO; 
L1981:  aload_0 
L1982:  getfield Field com/fs/starfarer/combat/CombatEngine 'ÖÓ0000' Lcom/fs/util/container/repo/ObjectRepository; 
L1985:  fload_1 
L1986:  invokevirtual Method com/fs/starfarer/combat/E/oOOO 'super' (Lcom/fs/util/container/repo/ObjectRepository;F)V 
L1989:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L1992:  aload_0 
L1993:  invokevirtual Method com/fs/starfarer/combat/CombatEngine executeRemoves ()V 
L1996:  aload_0 
L1997:  invokevirtual Method com/fs/starfarer/combat/CombatEngine executeAdds ()V 
L2000:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L2003:  return 
L2004:  
    .end code 
.end method 

.method public isInFastTimeAdvance : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'õo0000' Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public setInFastTimeAdvance : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/CombatEngine 'õo0000' Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public setDoNotEndCombat : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/CombatEngine 'OÖ0000' Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public doNotEndCombat : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'OÖ0000' Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public playerHasNonAllyReserves : ()Z 
    .code stack 2 locals 4 
L0:     aload_0 
L1:     iconst_0 
L2:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L5:     astore_1 
L6:     aload_1 
L7:     invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getReserves ()Ljava/util/Set; 
L10:    invokeinterface InterfaceMethod java/util/Set iterator ()Ljava/util/Iterator; 1 
L15:    astore_3 
L16:    goto L38 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager Top Object java/util/Iterator 
            stack 
        .end stack 
L19:    aload_3 
L20:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L25:    checkcast com/fs/starfarer/campaign/fleet/FleetMember 
L28:    astore_2 
L29:    aload_2 
L30:    invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember isAlly ()Z 
L33:    ifne L38 
L36:    iconst_1 
L37:    ireturn 

        .stack same 
L38:    aload_3 
L39:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L44:    ifne L19 
L47:    iconst_0 
L48:    ireturn 
L49:    
    .end code 
.end method 

.method public playerHasAllyReserves : ()Z 
    .code stack 2 locals 4 
L0:     aload_0 
L1:     iconst_0 
L2:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L5:     astore_1 
L6:     aload_1 
L7:     invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getReserves ()Ljava/util/Set; 
L10:    invokeinterface InterfaceMethod java/util/Set iterator ()Ljava/util/Iterator; 1 
L15:    astore_3 
L16:    goto L38 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager Top Object java/util/Iterator 
            stack 
        .end stack 
L19:    aload_3 
L20:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L25:    checkcast com/fs/starfarer/campaign/fleet/FleetMember 
L28:    astore_2 
L29:    aload_2 
L30:    invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember isAlly ()Z 
L33:    ifeq L38 
L36:    iconst_1 
L37:    ireturn 

        .stack same 
L38:    aload_3 
L39:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L44:    ifne L19 
L47:    iconst_0 
L48:    ireturn 
L49:    
    .end code 
.end method 

.method public setCombatNotOverForAtLeast : (F)V 
    .code stack 3 locals 2 
L0:     aload_0 
L1:     fload_1 
L2:     aload_0 
L3:     getfield Field com/fs/starfarer/combat/CombatEngine combatNotOverFor F 
L6:     invokestatic Method java/lang/Math max (FF)F 
L9:     invokevirtual Method com/fs/starfarer/combat/CombatEngine setCombatNotOverFor (F)V 
L12:    return 
L13:    
    .end code 
.end method 

.method public setCombatNotOverFor : (F)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     fload_1 
L2:     putfield Field com/fs/starfarer/combat/CombatEngine combatNotOverFor F 
L5:     return 
L6:     
    .end code 
.end method 

.method public getCombatNotOverFor : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine combatNotOverFor F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method private 'Ô00000' : ()V 
    .code stack 3 locals 12 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'Ô00000' Z 
L4:     ifne L14 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/CombatEngine 'OÖ0000' Z 
L11:    ifeq L15 

        .stack same 
L14:    return 

        .stack same 
L15:    aload_0 
L16:    iconst_0 
L17:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L20:    astore_1 
L21:    aload_0 
L22:    iconst_1 
L23:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L26:    astore_2 
L27:    aload_0 
L28:    iconst_0 
L29:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L32:    ifnull L43 
L35:    aload_0 
L36:    iconst_1 
L37:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L40:    ifnonnull L44 

        .stack append Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/CombatFleetManager 
L43:    return 

        .stack same 
L44:    aload_0 
L45:    iconst_0 
L46:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L49:    iconst_0 
L50:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getTaskManager (Z)Lcom/fs/starfarer/combat/tasks/CombatTaskManager; 
L53:    invokevirtual Method com/fs/starfarer/combat/tasks/CombatTaskManager isInFullRetreat ()Z 
L56:    istore_3 
L57:    aload_0 
L58:    iconst_1 
L59:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L62:    iconst_0 
L63:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getTaskManager (Z)Lcom/fs/starfarer/combat/tasks/CombatTaskManager; 
L66:    invokevirtual Method com/fs/starfarer/combat/tasks/CombatTaskManager isInFullRetreat ()Z 
L69:    istore 4 
L71:    iconst_0 
L72:    istore 5 
L74:    iconst_0 
L75:    istore 6 
L77:    aload_0 
L78:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerFleetManager ()Lcom/fs/starfarer/combat/CombatFleetManager; 
L81:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getDeployed ()Ljava/util/Set; 
L84:    invokeinterface InterfaceMethod java/util/Set iterator ()Ljava/util/Iterator; 1 
L89:    astore 8 
L91:    goto L170 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/CombatFleetManager Integer Integer Integer Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L94:    aload 8 
L96:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L101:   checkcast com/fs/starfarer/combat/CombatFleetManager$O0 
L104:   astore 7 
L106:   aload 7 
L108:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 isFighterWing ()Z 
L111:   ifeq L117 
L114:   goto L170 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/CombatFleetManager Integer Integer Integer Integer Object com/fs/starfarer/combat/CombatFleetManager$O0 Object java/util/Iterator 
            stack 
        .end stack 
L117:   aload 7 
L119:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L122:   ifnull L170 
L125:   aload 7 
L127:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L130:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isAlive ()Z 
L133:   ifne L139 
L136:   goto L170 

        .stack same 
L139:   aload 7 
L141:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L144:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isShuttlePod ()Z 
L147:   ifeq L153 
L150:   goto L170 

        .stack same 
L153:   aload 7 
L155:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 isAlly ()Z 
L158:   ifeq L167 
L161:   iconst_1 
L162:   istore 5 
L164:   goto L170 

        .stack same 
L167:   iconst_1 
L168:   istore 6 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/CombatFleetManager Integer Integer Integer Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L170:   aload 8 
L172:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L177:   ifne L94 
L180:   iload 5 
L182:   aload_0 
L183:   invokevirtual Method com/fs/starfarer/combat/CombatEngine playerHasAllyReserves ()Z 
L186:   ifeq L204 
L189:   aload_1 
L190:   iconst_1 
L191:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getTaskManager (Z)Lcom/fs/starfarer/combat/tasks/CombatTaskManager; 
L194:   invokevirtual Method com/fs/starfarer/combat/tasks/CombatTaskManager isInFullRetreat ()Z 
L197:   ifne L204 
L200:   iconst_1 
L201:   goto L205 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/CombatFleetManager Integer Integer Integer Integer 
            stack Integer 
        .end stack 
L204:   iconst_0 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/CombatFleetManager Integer Integer Integer Integer 
            stack Integer Integer 
        .end stack 
L205:   ior 
L206:   istore 5 
L208:   aload_0 
L209:   invokevirtual Method com/fs/starfarer/combat/CombatEngine playerHasNonAllyReserves ()Z 
L212:   istore 7 
L214:   iload 5 
L216:   ifeq L258 
L219:   iload 6 
L221:   ifne L258 
L224:   iload 7 
L226:   ifeq L240 
L229:   aload_1 
L230:   iconst_0 
L231:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getTaskManager (Z)Lcom/fs/starfarer/combat/tasks/CombatTaskManager; 
L234:   invokevirtual Method com/fs/starfarer/combat/tasks/CombatTaskManager isInFullRetreat ()Z 
L237:   ifeq L258 

        .stack append Integer 
L240:   aload_0 
L241:   iconst_1 
L242:   putfield Field com/fs/starfarer/combat/CombatEngine 'Ô00000' Z 
L245:   aload_0 
L246:   iconst_2 
L247:   putfield Field com/fs/starfarer/combat/CombatEngine 'oÒ0000' I 
L250:   aload_0 
L251:   getfield Field com/fs/starfarer/combat/CombatEngine 'õÖ0000' Lcom/fs/graphics/util/Fader; 
L254:   invokevirtual Method com/fs/graphics/util/Fader fadeIn ()V 
L257:   return 

        .stack same 
L258:   aload_0 
L259:   aload_1 
L260:   invokevirtual Method com/fs/starfarer/combat/CombatEngine o00000 (Lcom/fs/starfarer/combat/CombatFleetManager;)Z 
L263:   istore 8 
L265:   aload_0 
L266:   aload_2 
L267:   invokevirtual Method com/fs/starfarer/combat/CombatEngine o00000 (Lcom/fs/starfarer/combat/CombatFleetManager;)Z 
L270:   istore 9 
L272:   aload_0 
L273:   getfield Field com/fs/starfarer/combat/CombatEngine combatNotOverFor F 
L276:   fconst_0 
L277:   fcmpl 
L278:   ifle L287 
L281:   iconst_0 
L282:   istore 9 
L284:   iconst_0 
L285:   istore 4 

        .stack append Integer Integer 
L287:   iload 8 
L289:   ifeq L303 
L292:   aload_0 
L293:   getfield Field com/fs/starfarer/combat/CombatEngine 'ÓÖ0000' F 
L296:   ldc_w +30.0f 
L299:   fcmpl 
L300:   ifgt L315 

        .stack same 
L303:   aload_1 
L304:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getDeployed ()Ljava/util/Set; 
L307:   invokeinterface InterfaceMethod java/util/Set isEmpty ()Z 1 
L312:   ifeq L394 

        .stack same 
L315:   iload_3 
L316:   ifne L324 
L319:   iload 7 
L321:   ifne L394 

        .stack same 
L324:   new java/util/ArrayList 
L327:   dup 
L328:   aload_1 
L329:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getDeployed ()Ljava/util/Set; 
L332:   invokespecial Method java/util/ArrayList <init> (Ljava/util/Collection;)V 
L335:   invokevirtual Method java/util/ArrayList iterator ()Ljava/util/Iterator; 
L338:   astore 11 
L340:   goto L364 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/CombatFleetManager Integer Integer Integer Integer Integer Integer Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L343:   aload 11 
L345:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L350:   checkcast com/fs/starfarer/combat/CombatFleetManager$O0 
L353:   astore 10 
L355:   aload_1 
L356:   aload 10 
L358:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L361:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager retreat (Lcom/fs/starfarer/combat/entities/Ship;)V 

        .stack same 
L364:   aload 11 
L366:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L371:   ifne L343 
L374:   aload_0 
L375:   iconst_1 
L376:   putfield Field com/fs/starfarer/combat/CombatEngine 'Ô00000' Z 
L379:   aload_0 
L380:   aload_2 
L381:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getOwner ()I 
L384:   putfield Field com/fs/starfarer/combat/CombatEngine 'oÒ0000' I 
L387:   aload_0 
L388:   getfield Field com/fs/starfarer/combat/CombatEngine 'õÖ0000' Lcom/fs/graphics/util/Fader; 
L391:   invokevirtual Method com/fs/graphics/util/Fader fadeIn ()V 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/CombatFleetManager Integer Integer Integer Integer Integer Integer Integer 
            stack 
        .end stack 
L394:   iload 9 
L396:   ifeq L410 
L399:   aload_0 
L400:   getfield Field com/fs/starfarer/combat/CombatEngine 'ÓÖ0000' F 
L403:   ldc_w +30.0f 
L406:   fcmpl 
L407:   ifgt L431 

        .stack same 
L410:   aload_2 
L411:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getDeployed ()Ljava/util/Set; 
L414:   invokeinterface InterfaceMethod java/util/Set isEmpty ()Z 1 
L419:   ifeq L518 
L422:   aload_0 
L423:   getfield Field com/fs/starfarer/combat/CombatEngine combatNotOverFor F 
L426:   fconst_0 
L427:   fcmpg 
L428:   ifgt L518 

        .stack same 
L431:   iload 4 
L433:   ifne L448 
L436:   aload_2 
L437:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getReserves ()Ljava/util/Set; 
L440:   invokeinterface InterfaceMethod java/util/Set isEmpty ()Z 1 
L445:   ifeq L518 

        .stack same 
L448:   new java/util/ArrayList 
L451:   dup 
L452:   aload_2 
L453:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getDeployed ()Ljava/util/Set; 
L456:   invokespecial Method java/util/ArrayList <init> (Ljava/util/Collection;)V 
L459:   invokevirtual Method java/util/ArrayList iterator ()Ljava/util/Iterator; 
L462:   astore 11 
L464:   goto L488 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/CombatFleetManager Integer Integer Integer Integer Integer Integer Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L467:   aload 11 
L469:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L474:   checkcast com/fs/starfarer/combat/CombatFleetManager$O0 
L477:   astore 10 
L479:   aload_2 
L480:   aload 10 
L482:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L485:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager retreat (Lcom/fs/starfarer/combat/entities/Ship;)V 

        .stack same 
L488:   aload 11 
L490:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L495:   ifne L467 
L498:   aload_0 
L499:   iconst_1 
L500:   putfield Field com/fs/starfarer/combat/CombatEngine 'Ô00000' Z 
L503:   aload_0 
L504:   aload_1 
L505:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getOwner ()I 
L508:   putfield Field com/fs/starfarer/combat/CombatEngine 'oÒ0000' I 
L511:   aload_0 
L512:   getfield Field com/fs/starfarer/combat/CombatEngine 'õÖ0000' Lcom/fs/graphics/util/Fader; 
L515:   invokevirtual Method com/fs/graphics/util/Fader fadeIn ()V 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/CombatFleetManager Integer Integer Integer Integer Integer Integer Integer 
            stack 
        .end stack 
L518:   aload_0 
L519:   getfield Field com/fs/starfarer/combat/CombatEngine 'class.super' Ljava/util/List; 
L522:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L527:   astore 11 
L529:   goto L580 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/CombatFleetManager Integer Integer Integer Integer Integer Integer Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L532:   aload 11 
L534:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L539:   checkcast com/fs/starfarer/combat/String/B 
L542:   astore 10 
L544:   aload 10 
L546:   invokeinterface InterfaceMethod com/fs/starfarer/combat/String/B 'õÖO000' ()Z 1 
L551:   ifeq L580 
L554:   aload_0 
L555:   iconst_1 
L556:   putfield Field com/fs/starfarer/combat/CombatEngine 'Ô00000' Z 
L559:   aload_0 
L560:   aload 10 
L562:   invokeinterface InterfaceMethod com/fs/starfarer/combat/String/B 'while.do' ()I 1 
L567:   putfield Field com/fs/starfarer/combat/CombatEngine 'oÒ0000' I 
L570:   aload_0 
L571:   getfield Field com/fs/starfarer/combat/CombatEngine 'õÖ0000' Lcom/fs/graphics/util/Fader; 
L574:   invokevirtual Method com/fs/graphics/util/Fader fadeIn ()V 
L577:   goto L590 

        .stack same 
L580:   aload 11 
L582:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L587:   ifne L532 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/CombatFleetManager Integer Integer Integer Integer Integer Integer Integer 
            stack 
        .end stack 
L590:   return 
L591:   
    .end code 
.end method 

.method private o00000 : (Lcom/fs/starfarer/combat/CombatFleetManager;)Z 
    .code stack 6 locals 11 
L0:     iconst_1 
L1:     istore_2 
L2:     aload_1 
L3:     invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getDeployed ()Ljava/util/Set; 
L6:     invokeinterface InterfaceMethod java/util/Set iterator ()Ljava/util/Iterator; 1 
L11:    astore 4 
L13:    goto L204 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L16:    aload 4 
L18:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L23:    checkcast com/fs/starfarer/combat/CombatFleetManager$O0 
L26:    astore_3 
L27:    aload_3 
L28:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L31:    astore 5 
L33:    aload 5 
L35:    ifnull L204 
L38:    aload 5 
L40:    invokevirtual Method com/fs/starfarer/combat/entities/Ship isFighter ()Z 
L43:    ifeq L75 
L46:    aload 5 
L48:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getWing ()Lcom/fs/starfarer/combat/ai/M; 
L51:    ifnull L75 
L54:    aload 5 
L56:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getWing ()Lcom/fs/starfarer/combat/ai/M; 
L59:    invokevirtual Method com/fs/starfarer/combat/ai/M getSpec ()Lcom/fs/starfarer/loading/specs/FighterWingSpec; 
L62:    ldc_w 'independent_of_carrier' 
L65:    invokevirtual Method com/fs/starfarer/loading/specs/FighterWingSpec hasTag (Ljava/lang/String;)Z 
L68:    ifne L75 
L71:    iconst_1 
L72:    goto L76 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager Integer Object com/fs/starfarer/combat/CombatFleetManager$O0 Object java/util/Iterator Object com/fs/starfarer/combat/entities/Ship 
            stack 
        .end stack 
L75:    iconst_0 

        .stack stack_1 Integer 
L76:    istore 6 
L78:    iload 6 
L80:    ifeq L86 
L83:    goto L204 

        .stack append Integer 
L86:    aload 5 
L88:    invokevirtual Method com/fs/starfarer/combat/entities/Ship isAlive ()Z 
L91:    ifeq L204 
L94:    aload_0 
L95:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getShips ()Ljava/util/List; 
L98:    aload 5 
L100:   invokeinterface InterfaceMethod java/util/List contains (Ljava/lang/Object;)Z 2 
L105:   ifne L111 
L108:   goto L204 

        .stack same 
L111:   aload 5 
L113:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isRetreating ()Z 
L116:   ifne L124 
L119:   iconst_0 
L120:   istore_2 
L121:   goto L214 

        .stack same 
L124:   ldc_w +4000.0f 
L127:   fstore 7 
L129:   aload 5 
L131:   fload 7 
L133:   invokestatic Method com/fs/starfarer/combat/ai/OO0O 'Ö00000' (Lcom/fs/starfarer/combat/entities/Ship;F)Lcom/fs/starfarer/combat/entities/Ship; 
L136:   astore 8 
L138:   aload 8 
L140:   ifnull L148 
L143:   iconst_0 
L144:   istore_2 
L145:   goto L214 

        .stack append Float Object com/fs/starfarer/combat/entities/Ship 
L148:   new org/lwjgl/util/vector/Vector2f 
L151:   dup 
L152:   aload 5 
L154:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L157:   invokespecial Method org/lwjgl/util/vector/Vector2f <init> (Lorg/lwjgl/util/vector/ReadableVector2f;)V 
L160:   astore 9 
L162:   aload 9 
L164:   dup 
L165:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L168:   ldc_w +20000.0f 
L171:   fadd 
L172:   putfield Field org/lwjgl/util/vector/Vector2f y F 
L175:   aload 5 
L177:   aload 9 
L179:   ldc_w +120.0f 
L182:   ldc_w +100000.0f 
L185:   getstatic Field com/fs/starfarer/api/combat/ShipAPI$HullSize FIGHTER Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L188:   aconst_null 
L189:   invokestatic Method com/fs/starfarer/combat/ai/OO0O 'super' (Lcom/fs/starfarer/combat/entities/Ship;Lorg/lwjgl/util/vector/Vector2f;FFLcom/fs/starfarer/api/combat/ShipAPI$HullSize;Lcom/fs/starfarer/combat/E/B;)I 
L192:   istore 10 
L194:   iload 10 
L196:   ifle L204 
L199:   iconst_0 
L200:   istore_2 
L201:   goto L214 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L204:   aload 4 
L206:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L211:   ifne L16 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager Integer 
            stack 
        .end stack 
L214:   iload_2 
L215:   ireturn 
L216:   
    .end code 
.end method 

.method public getEndTriggers : ()Ljava/util/List; 
    .signature ()Ljava/util/List<Lcom/fs/starfarer/combat/String/B;>; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'class.super' Ljava/util/List; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public getWinningSideId : ()I 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getSideWithShipsDeployed ()I 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public getSideWithShipsDeployed : ()I 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'oÒ0000' I 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public isCombatOver : ()Z 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'Ô00000' Z 
L4:     ifeq L21 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/CombatEngine 'õÖ0000' Lcom/fs/graphics/util/Fader; 
L11:    invokevirtual Method com/fs/graphics/util/Fader getBrightness ()F 
L14:    fconst_1 
L15:    fcmpl 
L16:    ifne L21 
L19:    iconst_1 
L20:    ireturn 

        .stack same 
L21:    iconst_0 
L22:    ireturn 
L23:    
    .end code 
.end method 

.method public doEndOfCombatProcessing : ()V 
    .code stack 2 locals 9 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManagers ()Ljava/util/List; 
L4:     invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L9:     astore_2 
L10:    goto L206 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Top Object java/util/Iterator 
            stack 
        .end stack 
L13:    aload_2 
L14:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L19:    checkcast com/fs/starfarer/combat/CombatFleetManager 
L22:    astore_1 
L23:    aload_1 
L24:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getShardToOriginalShipMap ()Ljava/util/Map; 
L27:    astore_3 
L28:    new java/util/LinkedHashSet 
L31:    dup 
L32:    invokespecial Method java/util/LinkedHashSet <init> ()V 
L35:    astore 4 
L37:    aload_3 
L38:    invokeinterface InterfaceMethod java/util/Map keySet ()Ljava/util/Set; 1 
L43:    invokeinterface InterfaceMethod java/util/Set iterator ()Ljava/util/Iterator; 1 
L48:    astore 6 
L50:    goto L196 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager Object java/util/Iterator Object java/util/Map Object java/util/Set Top Object java/util/Iterator 
            stack 
        .end stack 
L53:    aload 6 
L55:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L60:    checkcast com/fs/starfarer/api/combat/DeployedFleetMemberAPI 
L63:    astore 5 
L65:    aload_3 
L66:    aload 5 
L68:    invokeinterface InterfaceMethod java/util/Map get (Ljava/lang/Object;)Ljava/lang/Object; 2 
L73:    checkcast com/fs/starfarer/api/combat/DeployedFleetMemberAPI 
L76:    astore 7 
L78:    aload 7 
L80:    ifnull L196 
L83:    aload 4 
L85:    aload 7 
L87:    invokeinterface InterfaceMethod java/util/Set contains (Ljava/lang/Object;)Z 2 
L92:    ifeq L98 
L95:    goto L196 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager Object java/util/Iterator Object java/util/Map Object java/util/Set Object com/fs/starfarer/api/combat/DeployedFleetMemberAPI Object java/util/Iterator Object com/fs/starfarer/api/combat/DeployedFleetMemberAPI 
            stack 
        .end stack 
L98:    aload_1 
L99:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getDeployed ()Ljava/util/Set; 
L102:   aload 5 
L104:   invokeinterface InterfaceMethod java/util/Set contains (Ljava/lang/Object;)Z 2 
L109:   istore 8 
L111:   iload 8 
L113:   ifeq L196 
L116:   aload_1 
L117:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getDestroyed ()Ljava/util/Set; 
L120:   aload 7 
L122:   invokeinterface InterfaceMethod com/fs/starfarer/api/combat/DeployedFleetMemberAPI getMember ()Lcom/fs/starfarer/api/fleet/FleetMemberAPI; 1 
L127:   invokeinterface InterfaceMethod java/util/Set contains (Ljava/lang/Object;)Z 2 
L132:   ifeq L155 
L135:   aload_1 
L136:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getDestroyed ()Ljava/util/Set; 
L139:   aload 7 
L141:   invokeinterface InterfaceMethod com/fs/starfarer/api/combat/DeployedFleetMemberAPI getMember ()Lcom/fs/starfarer/api/fleet/FleetMemberAPI; 1 
L146:   invokeinterface InterfaceMethod java/util/Set remove (Ljava/lang/Object;)Z 2 
L151:   pop 
L152:   goto L181 

        .stack append Integer 
L155:   aload_1 
L156:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getDisabled ()Ljava/util/Set; 
L159:   aload 7 
L161:   invokeinterface InterfaceMethod java/util/Set contains (Ljava/lang/Object;)Z 2 
L166:   ifeq L181 
L169:   aload_1 
L170:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getDisabled ()Ljava/util/Set; 
L173:   aload 7 
L175:   invokeinterface InterfaceMethod java/util/Set remove (Ljava/lang/Object;)Z 2 
L180:   pop 

        .stack same 
L181:   aload_1 
L182:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getDeployed ()Ljava/util/Set; 
L185:   aload 7 
L187:   checkcast com/fs/starfarer/combat/CombatFleetManager$O0 
L190:   invokeinterface InterfaceMethod java/util/Set add (Ljava/lang/Object;)Z 2 
L195:   pop 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager Object java/util/Iterator Object java/util/Map Object java/util/Set Top Object java/util/Iterator 
            stack 
        .end stack 
L196:   aload 6 
L198:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L203:   ifne L53 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Top Object java/util/Iterator 
            stack 
        .end stack 
L206:   aload_2 
L207:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L212:   ifne L13 
L215:   return 
L216:   
    .end code 
.end method 

.method public endCombat : (F)V 
    .code stack 3 locals 2 
L0:     aload_0 
L1:     fload_1 
L2:     getstatic Field com/fs/starfarer/api/mission/FleetSide PLAYER Lcom/fs/starfarer/api/mission/FleetSide; 
L5:     invokevirtual Method com/fs/starfarer/combat/CombatEngine endCombat (FLcom/fs/starfarer/api/mission/FleetSide;)V 
L8:     return 
L9:     
    .end code 
.end method 

.method public endCombat : (FLcom/fs/starfarer/api/mission/FleetSide;)V 
    .code stack 3 locals 3 
L0:     aload_2 
L1:     getstatic Field com/fs/starfarer/api/mission/FleetSide PLAYER Lcom/fs/starfarer/api/mission/FleetSide; 
L4:     if_acmpne L15 
L7:     aload_0 
L8:     iconst_0 
L9:     invokevirtual Method com/fs/starfarer/combat/CombatEngine setSideWithShipsDeployed (I)V 
L12:    goto L27 

        .stack same 
L15:    aload_2 
L16:    getstatic Field com/fs/starfarer/api/mission/FleetSide ENEMY Lcom/fs/starfarer/api/mission/FleetSide; 
L19:    if_acmpne L27 
L22:    aload_0 
L23:    iconst_1 
L24:    invokevirtual Method com/fs/starfarer/combat/CombatEngine setSideWithShipsDeployed (I)V 

        .stack same 
L27:    aload_0 
L28:    iconst_0 
L29:    putfield Field com/fs/starfarer/combat/CombatEngine 'OÖ0000' Z 
L32:    aload_0 
L33:    iconst_1 
L34:    putfield Field com/fs/starfarer/combat/CombatEngine 'Ô00000' Z 
L37:    aload_0 
L38:    getfield Field com/fs/starfarer/combat/CombatEngine 'õÖ0000' Lcom/fs/graphics/util/Fader; 
L41:    fload_1 
L42:    fconst_0 
L43:    invokevirtual Method com/fs/graphics/util/Fader setDuration (FF)Lcom/fs/graphics/util/Fader; 
L46:    pop 
L47:    aload_0 
L48:    getfield Field com/fs/starfarer/combat/CombatEngine 'õÖ0000' Lcom/fs/graphics/util/Fader; 
L51:    invokevirtual Method com/fs/graphics/util/Fader fadeIn ()V 
L54:    return 
L55:    
    .end code 
.end method 

.method public getResults : ()Lcom/fs/starfarer/combat/Object/String; 
    .code stack 4 locals 5 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine new Lcom/fs/starfarer/combat/Object/String; 
L4:     ifnonnull L209 
L7:     iconst_0 
L8:     istore_1 
L9:     iconst_0 
L10:    istore_2 
L11:    aload_0 
L12:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerFleetManager ()Lcom/fs/starfarer/combat/CombatFleetManager; 
L15:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getDeployed ()Ljava/util/Set; 
L18:    invokeinterface InterfaceMethod java/util/Set iterator ()Ljava/util/Iterator; 1 
L23:    astore 4 
L25:    goto L63 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Integer Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L28:    aload 4 
L30:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L35:    checkcast com/fs/starfarer/combat/CombatFleetManager$O0 
L38:    astore_3 
L39:    aload_3 
L40:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 isFighterWing ()Z 
L43:    ifeq L49 
L46:    goto L63 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Integer Integer Object com/fs/starfarer/combat/CombatFleetManager$O0 Object java/util/Iterator 
            stack 
        .end stack 
L49:    aload_3 
L50:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 isAlly ()Z 
L53:    ifeq L61 
L56:    iconst_1 
L57:    istore_1 
L58:    goto L63 

        .stack same 
L61:    iconst_1 
L62:    istore_2 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Integer Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L63:    aload 4 
L65:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L70:    ifne L28 
L73:    iload_1 
L74:    aload_0 
L75:    invokevirtual Method com/fs/starfarer/combat/CombatEngine playerHasAllyReserves ()Z 
L78:    ifeq L99 
L81:    aload_0 
L82:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerFleetManager ()Lcom/fs/starfarer/combat/CombatFleetManager; 
L85:    iconst_1 
L86:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getTaskManager (Z)Lcom/fs/starfarer/combat/tasks/CombatTaskManager; 
L89:    invokevirtual Method com/fs/starfarer/combat/tasks/CombatTaskManager isInFullRetreat ()Z 
L92:    ifne L99 
L95:    iconst_1 
L96:    goto L100 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Integer Integer 
            stack Integer 
        .end stack 
L99:    iconst_0 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Integer Integer 
            stack Integer Integer 
        .end stack 
L100:   ior 
L101:   istore_1 
L102:   aload_0 
L103:   getfield Field com/fs/starfarer/combat/CombatEngine 'oÒ0000' I 
L106:   iconst_2 
L107:   if_icmpne L130 
L110:   iload_1 
L111:   ifeq L125 
L114:   aload_0 
L115:   aload_0 
L116:   invokevirtual Method com/fs/starfarer/combat/CombatEngine 'Ò00000' ()I 
L119:   putfield Field com/fs/starfarer/combat/CombatEngine 'oÒ0000' I 
L122:   goto L130 

        .stack same 
L125:   aload_0 
L126:   iconst_1 
L127:   putfield Field com/fs/starfarer/combat/CombatEngine 'oÒ0000' I 

        .stack same 
L130:   aload_0 
L131:   getfield Field com/fs/starfarer/combat/CombatEngine 'ÓÔ0000' Lcom/fs/starfarer/combat/K; 
L134:   ifnull L153 
L137:   aload_0 
L138:   getfield Field com/fs/starfarer/combat/CombatEngine 'ÓÔ0000' Lcom/fs/starfarer/combat/K; 
L141:   invokeinterface InterfaceMethod com/fs/starfarer/combat/K isClaimedVictory ()Z 1 
L146:   ifeq L153 
L149:   iconst_1 
L150:   goto L154 

        .stack same 
L153:   iconst_0 

        .stack stack_1 Integer 
L154:   istore_3 
L155:   aload_0 
L156:   new com/fs/starfarer/combat/Object/String 
L159:   dup 
L160:   aload_0 
L161:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getSideWithShipsDeployed ()I 
L164:   invokespecial Method com/fs/starfarer/combat/Object/String <init> (I)V 
L167:   putfield Field com/fs/starfarer/combat/CombatEngine new Lcom/fs/starfarer/combat/Object/String; 
L170:   aload_0 
L171:   getfield Field com/fs/starfarer/combat/CombatEngine new Lcom/fs/starfarer/combat/Object/String; 
L174:   iload_3 
L175:   ifne L205 
L178:   iload_1 
L179:   ifeq L205 
L182:   iload_2 
L183:   ifne L205 
L186:   aload_0 
L187:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getEnemyFleetManager ()Lcom/fs/starfarer/combat/CombatFleetManager; 
L190:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getDeployed ()Ljava/util/Set; 
L193:   invokeinterface InterfaceMethod java/util/Set isEmpty ()Z 1 
L198:   ifne L205 
L201:   iconst_1 
L202:   goto L206 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Integer Integer Integer 
            stack Object com/fs/starfarer/combat/Object/String 
        .end stack 
L205:   iconst_0 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Integer Integer Integer 
            stack Object com/fs/starfarer/combat/Object/String Integer 
        .end stack 
L206:   invokevirtual Method com/fs/starfarer/combat/Object/String 'super' (Z)V 

        .stack chop 3 
L209:   aload_0 
L210:   getfield Field com/fs/starfarer/combat/CombatEngine new Lcom/fs/starfarer/combat/Object/String; 
L213:   areturn 
L214:   
    .end code 
.end method 

.method private 'Ò00000' : ()I 
    .code stack 2 locals 6 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerFleetManager ()Lcom/fs/starfarer/combat/CombatFleetManager; 
L4:     astore_1 
L5:     fconst_0 
L6:     fstore_2 
L7:     aload_1 
L8:     invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getDeployed ()Ljava/util/Set; 
L11:    invokeinterface InterfaceMethod java/util/Set iterator ()Ljava/util/Iterator; 1 
L16:    astore 4 
L18:    goto L46 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager Float Top Object java/util/Iterator 
            stack 
        .end stack 
L21:    aload 4 
L23:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L28:    checkcast com/fs/starfarer/combat/CombatFleetManager$O0 
L31:    astore_3 
L32:    aload_3 
L33:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 isAlly ()Z 
L36:    ifeq L46 
L39:    fload_2 
L40:    aload_3 
L41:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getMemberStrengthIncludingCaptain ()F 
L44:    fadd 
L45:    fstore_2 

        .stack same 
L46:    aload 4 
L48:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L53:    ifne L21 
L56:    aload_0 
L57:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getEnemyFleetManager ()Lcom/fs/starfarer/combat/CombatFleetManager; 
L60:    astore_1 
L61:    fconst_0 
L62:    fstore_3 
L63:    aload_1 
L64:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getDeployed ()Ljava/util/Set; 
L67:    invokeinterface InterfaceMethod java/util/Set iterator ()Ljava/util/Iterator; 1 
L72:    astore 5 
L74:    goto L97 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager Float Float Top Object java/util/Iterator 
            stack 
        .end stack 
L77:    aload 5 
L79:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L84:    checkcast com/fs/starfarer/combat/CombatFleetManager$O0 
L87:    astore 4 
L89:    fload_3 
L90:    aload 4 
L92:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getMemberStrengthIncludingCaptain ()F 
L95:    fadd 
L96:    fstore_3 

        .stack same 
L97:    aload 5 
L99:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L104:   ifne L77 
L107:   fload_2 
L108:   fload_3 
L109:   fcmpl 
L110:   ifle L115 
L113:   iconst_0 
L114:   ireturn 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager Float Float 
            stack 
        .end stack 
L115:   iconst_1 
L116:   ireturn 
L117:   
    .end code 
.end method 

.method public setSideWithShipsDeployed : (I)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/CombatEngine 'oÒ0000' I 
L5:     return 
L6:     
    .end code 
.end method 

.method private 'Ò00000' : (F)V 
    .code stack 2 locals 5 
L0:     ldc_w 'Fog of war: updating visibility' 
L3:     invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L6:     aload_0 
L7:     getfield Field com/fs/starfarer/combat/CombatEngine 'while.new' Ljava/util/Map; 
L10:    invokeinterface InterfaceMethod java/util/Map values ()Ljava/util/Collection; 1 
L15:    invokeinterface InterfaceMethod java/util/Collection iterator ()Ljava/util/Iterator; 1 
L20:    astore_3 
L21:    goto L38 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Top Object java/util/Iterator 
            stack 
        .end stack 
L24:    aload_3 
L25:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L30:    checkcast com/fs/starfarer/combat/new/T 
L33:    astore_2 
L34:    aload_2 
L35:    invokevirtual Method com/fs/starfarer/combat/new/T updateVisibility ()V 

        .stack same 
L38:    aload_3 
L39:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L44:    ifne L24 
L47:    aload_0 
L48:    getfield Field com/fs/starfarer/combat/CombatEngine 'ÖÓ0000' Lcom/fs/util/container/repo/ObjectRepository; 
L51:    ldc_w Class com/fs/starfarer/combat/entities/BattleObjective 
L54:    invokevirtual Method com/fs/util/container/repo/ObjectRepository getList (Ljava/lang/Class;)Ljava/util/List; 
L57:    astore_2 
L58:    aload_2 
L59:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L64:    astore 4 
L66:    goto L85 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L69:    aload 4 
L71:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L76:    checkcast com/fs/starfarer/combat/entities/BattleObjective 
L79:    astore_3 
L80:    aload_3 
L81:    fload_1 
L82:    invokevirtual Method com/fs/starfarer/combat/entities/BattleObjective advanceEffect (F)V 

        .stack same 
L85:    aload 4 
L87:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L92:    ifne L69 
L95:    invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L98:    return 
L99:    
    .end code 
.end method 

.method private o00000 : (F)V 
    .code stack 4 locals 10 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'ÖÓ0000' Lcom/fs/util/container/repo/ObjectRepository; 
L4:     ldc_w Class com/fs/starfarer/combat/E/B 
L7:     invokevirtual Method com/fs/util/container/repo/ObjectRepository getList (Ljava/lang/Class;)Ljava/util/List; 
L10:    astore_2 
L11:    aload_2 
L12:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L17:    astore 4 
L19:    goto L350 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L22:    aload 4 
L24:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L29:    checkcast com/fs/starfarer/combat/E/B 
L32:    astore_3 
L33:    aload_3 
L34:    invokeinterface InterfaceMethod com/fs/starfarer/combat/E/B getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 1 
L39:    astore 5 
L41:    aload 5 
L43:    invokevirtual Method org/lwjgl/util/vector/Vector2f length ()F 
L46:    fstore 6 
L48:    fload 6 
L50:    ldc_w +600.0f 
L53:    fcmpl 
L54:    iflt L165 
L57:    aload_3 
L58:    invokeinterface InterfaceMethod com/fs/starfarer/combat/E/B getCollisionClass ()Lcom/fs/starfarer/api/combat/CollisionClass; 1 
L63:    getstatic Field com/fs/starfarer/api/combat/CollisionClass NONE Lcom/fs/starfarer/api/combat/CollisionClass; 
L66:    if_acmpeq L165 
L69:    aload_3 
L70:    invokeinterface InterfaceMethod com/fs/starfarer/combat/E/B getCollisionClass ()Lcom/fs/starfarer/api/combat/CollisionClass; 1 
L75:    getstatic Field com/fs/starfarer/api/combat/CollisionClass RAY Lcom/fs/starfarer/api/combat/CollisionClass; 
L78:    if_acmpeq L165 
L81:    aload_3 
L82:    invokeinterface InterfaceMethod com/fs/starfarer/combat/E/B getCollisionClass ()Lcom/fs/starfarer/api/combat/CollisionClass; 1 
L87:    getstatic Field com/fs/starfarer/api/combat/CollisionClass RAY_FIGHTER Lcom/fs/starfarer/api/combat/CollisionClass; 
L90:    if_acmpeq L165 
L93:    aload_3 
L94:    invokeinterface InterfaceMethod com/fs/starfarer/combat/E/B getCollisionClass ()Lcom/fs/starfarer/api/combat/CollisionClass; 1 
L99:    getstatic Field com/fs/starfarer/api/combat/CollisionClass MISSILE_FF Lcom/fs/starfarer/api/combat/CollisionClass; 
L102:   if_acmpeq L165 
L105:   aload_3 
L106:   invokeinterface InterfaceMethod com/fs/starfarer/combat/E/B getCollisionClass ()Lcom/fs/starfarer/api/combat/CollisionClass; 1 
L111:   getstatic Field com/fs/starfarer/api/combat/CollisionClass MISSILE_NO_FF Lcom/fs/starfarer/api/combat/CollisionClass; 
L114:   if_acmpeq L165 
L117:   aload_3 
L118:   invokeinterface InterfaceMethod com/fs/starfarer/combat/E/B getCollisionClass ()Lcom/fs/starfarer/api/combat/CollisionClass; 1 
L123:   getstatic Field com/fs/starfarer/api/combat/CollisionClass PROJECTILE_FF Lcom/fs/starfarer/api/combat/CollisionClass; 
L126:   if_acmpeq L165 
L129:   aload_3 
L130:   invokeinterface InterfaceMethod com/fs/starfarer/combat/E/B getCollisionClass ()Lcom/fs/starfarer/api/combat/CollisionClass; 1 
L135:   getstatic Field com/fs/starfarer/api/combat/CollisionClass PROJECTILE_NO_FF Lcom/fs/starfarer/api/combat/CollisionClass; 
L138:   if_acmpeq L165 
L141:   aload_3 
L142:   invokeinterface InterfaceMethod com/fs/starfarer/combat/E/B getCollisionClass ()Lcom/fs/starfarer/api/combat/CollisionClass; 1 
L147:   getstatic Field com/fs/starfarer/api/combat/CollisionClass PROJECTILE_FIGHTER Lcom/fs/starfarer/api/combat/CollisionClass; 
L150:   if_acmpeq L165 
L153:   aload 5 
L155:   ldc_w +600.0f 
L158:   fload 6 
L160:   fdiv 
L161:   invokevirtual Method org/lwjgl/util/vector/Vector2f scale (F)Lorg/lwjgl/util/vector/Vector; 
L164:   pop 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object java/util/List Object com/fs/starfarer/combat/E/B Object java/util/Iterator Object org/lwjgl/util/vector/Vector2f Float 
            stack 
        .end stack 
L165:   aload_3 
L166:   instanceof com/fs/starfarer/combat/entities/Ship 
L169:   ifeq L189 
L172:   aload_3 
L173:   checkcast com/fs/starfarer/combat/entities/Ship 
L176:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getStationSlot ()Lcom/fs/starfarer/loading/specs/nullsuper; 
L179:   ifnull L189 
L182:   aload 5 
L184:   fconst_0 
L185:   fconst_0 
L186:   invokevirtual Method org/lwjgl/util/vector/Vector2f set (FF)V 

        .stack same 
L189:   aload_3 
L190:   invokeinterface InterfaceMethod com/fs/starfarer/combat/E/B getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L195:   astore 7 
L197:   fconst_1 
L198:   fstore 8 
L200:   aload_3 
L201:   instanceof com/fs/starfarer/combat/entities/Ship 
L204:   ifeq L232 
L207:   aload_3 
L208:   checkcast com/fs/starfarer/combat/entities/Ship 
L211:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getStats ()Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L214:   invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getTimeMult ()Lcom/fs/starfarer/api/combat/MutableStat; 
L217:   invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L220:   fstore 8 
L222:   fload 8 
L224:   fconst_1 
L225:   fcmpl 
L226:   ifle L232 
L229:   fconst_1 
L230:   fstore 8 

        .stack append Object org/lwjgl/util/vector/Vector2f Float 
L232:   aload 7 
L234:   dup 
L235:   getfield Field org/lwjgl/util/vector/Vector2f x F 
L238:   aload 5 
L240:   getfield Field org/lwjgl/util/vector/Vector2f x F 
L243:   fload_1 
L244:   fmul 
L245:   fload 8 
L247:   fmul 
L248:   fadd 
L249:   putfield Field org/lwjgl/util/vector/Vector2f x F 
L252:   aload 7 
L254:   dup 
L255:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L258:   aload 5 
L260:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L263:   fload_1 
L264:   fmul 
L265:   fload 8 
L267:   fmul 
L268:   fadd 
L269:   putfield Field org/lwjgl/util/vector/Vector2f y F 
L272:   aload_3 
L273:   invokeinterface InterfaceMethod com/fs/starfarer/combat/E/B getAngularVelocity ()F 1 
L278:   fload_1 
L279:   fmul 
L280:   fload 8 
L282:   fmul 
L283:   fstore 9 
L285:   aload_3 
L286:   aload_3 
L287:   invokeinterface InterfaceMethod com/fs/starfarer/combat/E/B getFacing ()F 1 
L292:   fload 9 
L294:   fadd 
L295:   invokeinterface InterfaceMethod com/fs/starfarer/combat/E/B setFacing (F)V 2 
L300:   aload_3 
L301:   instanceof com/fs/starfarer/combat/entities/Ship 
L304:   ifeq L350 
L307:   aload_3 
L308:   checkcast com/fs/starfarer/combat/entities/Ship 
L311:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isStation ()Z 
L314:   ifne L342 
L317:   aload_3 
L318:   checkcast com/fs/starfarer/combat/entities/Ship 
L321:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isShipWithModules ()Z 
L324:   ifne L342 
L327:   aload_3 
L328:   checkcast com/fs/starfarer/combat/entities/Ship 
L331:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getChildModules ()Ljava/util/List; 
L334:   invokeinterface InterfaceMethod java/util/List isEmpty ()Z 1 
L339:   ifne L350 

        .stack append Float 
L342:   aload_0 
L343:   aload_3 
L344:   checkcast com/fs/starfarer/combat/entities/Ship 
L347:   invokevirtual Method com/fs/starfarer/combat/CombatEngine updateStationModuleLocations (Lcom/fs/starfarer/api/combat/ShipAPI;)V 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L350:   aload 4 
L352:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L357:   ifne L22 
L360:   return 
L361:   
    .end code 
.end method 

.method public updateStationModuleLocations : (Lcom/fs/starfarer/api/combat/ShipAPI;)V 
    .code stack 4 locals 7 
L0:     aload_1 
L1:     invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ShipAPI getChildModulesCopy ()Ljava/util/List; 1 
L6:     invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L11:    astore_3 
L12:    goto L144 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/api/combat/ShipAPI Top Object java/util/Iterator 
            stack 
        .end stack 
L15:    aload_3 
L16:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L21:    checkcast com/fs/starfarer/api/combat/ShipAPI 
L24:    astore_2 
L25:    aload_2 
L26:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ShipAPI getParentStation ()Lcom/fs/starfarer/api/combat/ShipAPI; 1 
L31:    aload_1 
L32:    if_acmpeq L38 
L35:    goto L144 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/api/combat/ShipAPI Object com/fs/starfarer/api/combat/ShipAPI Object java/util/Iterator 
            stack 
        .end stack 
L38:    aload_2 
L39:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ShipAPI getStationSlot ()Lcom/fs/starfarer/api/loading/WeaponSlotAPI; 1 
L44:    ifnonnull L50 
L47:    goto L144 

        .stack same 
L50:    aload_2 
L51:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ShipAPI getStationSlot ()Lcom/fs/starfarer/api/loading/WeaponSlotAPI; 1 
L56:    checkcast com/fs/starfarer/loading/specs/nullsuper 
L59:    astore 4 
L61:    aload_2 
L62:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ShipAPI getModuleOffset ()Lorg/lwjgl/util/vector/Vector2f; 1 
L67:    astore 5 
L69:    aload_2 
L70:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ShipAPI getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L75:    aload 4 
L77:    aload_1 
L78:    aload 5 
L80:    invokevirtual Method com/fs/starfarer/loading/specs/nullsuper computePosition (Lcom/fs/starfarer/api/combat/CombatEntityAPI;Lorg/lwjgl/util/vector/Vector2f;)Lorg/lwjgl/util/vector/Vector2f; 
L83:    invokevirtual Method org/lwjgl/util/vector/Vector2f set (Lorg/lwjgl/util/vector/ReadableVector2f;)Lorg/lwjgl/util/vector/Vector2f; 
L86:    pop 
L87:    aload_1 
L88:    checkcast com/fs/starfarer/combat/entities/Ship 
L91:    invokevirtual Method com/fs/starfarer/combat/entities/Ship isSetModuleFacings ()Z 
L94:    istore 6 
L96:    aload_2 
L97:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ShipAPI getHullSpec ()Lcom/fs/starfarer/api/combat/ShipHullSpecAPI; 1 
L102:   invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ShipHullSpecAPI getHints ()Ljava/util/EnumSet; 1 
L107:   getstatic Field com/fs/starfarer/api/combat/ShipHullSpecAPI$ShipTypeHints INDEPENDENT_ROTATION Lcom/fs/starfarer/api/combat/ShipHullSpecAPI$ShipTypeHints; 
L110:   invokevirtual Method java/util/EnumSet contains (Ljava/lang/Object;)Z 
L113:   ifeq L121 
L116:   iload 6 
L118:   ifne L144 

        .stack append Object com/fs/starfarer/loading/specs/nullsuper Object org/lwjgl/util/vector/Vector2f Integer 
L121:   aload_2 
L122:   aload 4 
L124:   aload_1 
L125:   checkcast com/fs/starfarer/combat/entities/Ship 
L128:   invokevirtual Method com/fs/starfarer/loading/specs/nullsuper computeMidArcAngle (Lcom/fs/starfarer/api/combat/ShipAPI;)F 
L131:   invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ShipAPI setFacing (F)V 2 
L136:   aload_1 
L137:   checkcast com/fs/starfarer/combat/entities/Ship 
L140:   iconst_1 
L141:   invokevirtual Method com/fs/starfarer/combat/entities/Ship setSetModuleFacings (Z)V 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/api/combat/ShipAPI Top Object java/util/Iterator 
            stack 
        .end stack 
L144:   aload_3 
L145:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L150:   ifne L15 
L153:   return 
L154:   
    .end code 
.end method 

.method public executeAdds : ()V 
    .code stack 3 locals 4 
L0:     goto L55 

        .stack same 
L3:     new java/util/ArrayList 
L6:     dup 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/CombatEngine 'ØO0000' Ljava/util/List; 
L11:    invokespecial Method java/util/ArrayList <init> (Ljava/util/Collection;)V 
L14:    astore_1 
L15:    aload_0 
L16:    getfield Field com/fs/starfarer/combat/CombatEngine 'ØO0000' Ljava/util/List; 
L19:    invokeinterface InterfaceMethod java/util/List clear ()V 1 
L24:    aload_1 
L25:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L30:    astore_3 
L31:    goto L46 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L34:    aload_3 
L35:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L40:    astore_2 
L41:    aload_0 
L42:    aload_2 
L43:    invokevirtual Method com/fs/starfarer/combat/CombatEngine 'Ò00000' (Ljava/lang/Object;)V 

        .stack same 
L46:    aload_3 
L47:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L52:    ifne L34 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine 
            stack 
        .end stack 
L55:    aload_0 
L56:    getfield Field com/fs/starfarer/combat/CombatEngine 'ØO0000' Ljava/util/List; 
L59:    invokeinterface InterfaceMethod java/util/List isEmpty ()Z 1 
L64:    ifeq L3 
L67:    return 
L68:    
    .end code 
.end method 

.method public executeRemoves : ()V 
    .code stack 3 locals 4 
L0:     goto L55 

        .stack same 
L3:     new java/util/ArrayList 
L6:     dup 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/CombatEngine 'while.Object' Ljava/util/List; 
L11:    invokespecial Method java/util/ArrayList <init> (Ljava/util/Collection;)V 
L14:    astore_1 
L15:    aload_0 
L16:    getfield Field com/fs/starfarer/combat/CombatEngine 'while.Object' Ljava/util/List; 
L19:    invokeinterface InterfaceMethod java/util/List clear ()V 1 
L24:    aload_1 
L25:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L30:    astore_3 
L31:    goto L46 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L34:    aload_3 
L35:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L40:    astore_2 
L41:    aload_0 
L42:    aload_2 
L43:    invokevirtual Method com/fs/starfarer/combat/CombatEngine o00000 (Ljava/lang/Object;)V 

        .stack same 
L46:    aload_3 
L47:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L52:    ifne L34 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine 
            stack 
        .end stack 
L55:    aload_0 
L56:    getfield Field com/fs/starfarer/combat/CombatEngine 'while.Object' Ljava/util/List; 
L59:    invokeinterface InterfaceMethod java/util/List isEmpty ()Z 1 
L64:    ifeq L3 
L67:    return 
L68:    
    .end code 
.end method 

.method public getSmoothParticles : ()Lcom/fs/graphics/particle/DynamicParticleGroup; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'ØÓ0000' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public getSwirlyNebulaParticles : ()Lcom/fs/graphics/particle/DynamicParticleGroup; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'oÔ0000' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public getNegativeSwirlyNebulaParticles : ()Lcom/fs/graphics/particle/DynamicParticleGroup; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'class.Object' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public getNebulaSmoothParticles : ()Lcom/fs/graphics/particle/DynamicParticleGroup; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'float.new' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public getNebulaParticles : ()Lcom/fs/graphics/particle/DynamicParticleGroup; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'öÔ0000' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public getNegativeNebulaParticles : ()Lcom/fs/graphics/particle/DynamicParticleGroup; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'float.super' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public getNebulaSmokeParticles : ()Lcom/fs/graphics/particle/DynamicParticleGroup; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'null.Object' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public getNegativeParticles : ()Lcom/fs/graphics/particle/DynamicParticleGroup; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'ÔÒ0000' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public getExplosionParticles : ()Lcom/fs/graphics/particle/DynamicParticleGroup; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'ÔO0000' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public getSmokeParticles : ()Lcom/fs/graphics/particle/DynamicParticleGroup; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'ÔÕ0000' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public getGlowyContrailParticles : ()Lcom/fs/graphics/particle/DynamicParticleGroup; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'ÓÓ0000' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public getSmokyContrailParticles : ()Lcom/fs/graphics/particle/DynamicParticleGroup; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'oØ0000' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public getObjects : ()Lcom/fs/util/container/repo/ObjectRepository; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'ÖÓ0000' Lcom/fs/util/container/repo/ObjectRepository; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public getPlayerShip : ()Lcom/fs/starfarer/combat/entities/Ship; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine OO0000 Lcom/fs/starfarer/combat/entities/Ship; 
L4:     ifnonnull L16 
L7:     aload_0 
L8:     invokevirtual Method com/fs/starfarer/combat/CombatEngine Object ()V 
L11:    aload_0 
L12:    getfield Field com/fs/starfarer/combat/CombatEngine 'ÖÔ0000' Lcom/fs/starfarer/combat/entities/Ship; 
L15:    areturn 

        .stack same 
L16:    aload_0 
L17:    getfield Field com/fs/starfarer/combat/CombatEngine OO0000 Lcom/fs/starfarer/combat/entities/Ship; 
L20:    areturn 
L21:    
    .end code 
.end method 

.method private Object : ()V 
    .code stack 7 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'ÖÔ0000' Lcom/fs/starfarer/combat/entities/Ship; 
L4:     ifnonnull L103 
L7:     aload_0 
L8:     ldc_w Class com/fs/starfarer/loading/specs/HullVariantSpec 
L11:    ldc_w 'shuttlepod_xfer' 
L14:    invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object; 
L17:    checkcast com/fs/starfarer/loading/specs/HullVariantSpec 
L20:    ldc_w 'Command Shuttle' 
L23:    aconst_null 
L24:    aconst_null 
L25:    aconst_null 
L26:    aconst_null 
L27:    invokestatic Method com/fs/starfarer/loading/specs/_ o00000 (Lcom/fs/starfarer/loading/specs/HullVariantSpec;Ljava/lang/String;Ljava/lang/String;Lcom/fs/starfarer/rpg/Person;Lcom/fs/starfarer/rpg/Person;Lcom/fs/starfarer/campaign/fleet/FleetMember;)Lcom/fs/starfarer/combat/entities/Ship; 
L30:    putfield Field com/fs/starfarer/combat/CombatEngine 'ÖÔ0000' Lcom/fs/starfarer/combat/entities/Ship; 
L33:    aload_0 
L34:    getfield Field com/fs/starfarer/combat/CombatEngine 'ÖÔ0000' Lcom/fs/starfarer/combat/entities/Ship; 
L37:    iconst_0 
L38:    invokevirtual Method com/fs/starfarer/combat/entities/Ship setOwner (I)V 
L41:    aload_0 
L42:    getfield Field com/fs/starfarer/combat/CombatEngine 'ÖÔ0000' Lcom/fs/starfarer/combat/entities/Ship; 
L45:    invokevirtual Method com/fs/starfarer/combat/entities/Ship init ()V 
L48:    aload_0 
L49:    getfield Field com/fs/starfarer/combat/CombatEngine 'ÖÔ0000' Lcom/fs/starfarer/combat/entities/Ship; 
L52:    ldc_w +90.0f 
L55:    invokevirtual Method com/fs/starfarer/combat/entities/Ship setFacing (F)V 
L58:    aload_0 
L59:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getCombatMap ()Lcom/fs/starfarer/combat/A/B; 
L62:    astore_1 
L63:    aload_1 
L64:    ifnull L91 
L67:    aload_0 
L68:    getfield Field com/fs/starfarer/combat/CombatEngine 'ÖÔ0000' Lcom/fs/starfarer/combat/entities/Ship; 
L71:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L74:    fconst_0 
L75:    aload_1 
L76:    invokevirtual Method com/fs/starfarer/combat/A/B 'Õ00000' ()F 
L79:    invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'öÒ0000' ()F 
L82:    fconst_2 
L83:    fdiv 
L84:    fadd 
L85:    invokevirtual Method org/lwjgl/util/vector/Vector2f set (FF)V 
L88:    goto L103 

        .stack append Object com/fs/starfarer/combat/A/B 
L91:    aload_0 
L92:    getfield Field com/fs/starfarer/combat/CombatEngine 'ÖÔ0000' Lcom/fs/starfarer/combat/entities/Ship; 
L95:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L98:    fconst_0 
L99:    fconst_0 
L100:   invokevirtual Method org/lwjgl/util/vector/Vector2f set (FF)V 

        .stack chop 1 
L103:   return 
L104:   
    .end code 
.end method 

.method public getFakePlayerShip : ()Lcom/fs/starfarer/combat/entities/Ship; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/CombatEngine Object ()V 
L4:     aload_0 
L5:     getfield Field com/fs/starfarer/combat/CombatEngine 'ÖÔ0000' Lcom/fs/starfarer/combat/entities/Ship; 
L8:     areturn 
L9:     
    .end code 
.end method 

.method public hasPlayerActuallyControlledARealShip : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'öO0000' Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public setPlayerHasControlledShip : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/CombatEngine 'öO0000' Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public setPlayerShip : (Lcom/fs/starfarer/combat/entities/Ship;)V 
    .code stack 2 locals 2 
L0:     aload_1 
L1:     ifnull L16 
L4:     aload_1 
L5:     invokevirtual Method com/fs/starfarer/combat/entities/Ship isShuttlePod ()Z 
L8:     ifne L16 
L11:    aload_0 
L12:    iconst_1 
L13:    putfield Field com/fs/starfarer/combat/CombatEngine 'öO0000' Z 

        .stack same 
L16:    aload_0 
L17:    aload_1 
L18:    putfield Field com/fs/starfarer/combat/CombatEngine OO0000 Lcom/fs/starfarer/combat/entities/Ship; 
L21:    return 
L22:    
    .end code 
.end method 

.method public setPlayerShipExternal : (Lcom/fs/starfarer/api/combat/ShipAPI;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'ÓÔ0000' Lcom/fs/starfarer/combat/K; 
L4:     ifnonnull L8 
L7:     return 

        .stack same 
L8:     aload_0 
L9:     getfield Field com/fs/starfarer/combat/CombatEngine 'ÓÔ0000' Lcom/fs/starfarer/combat/K; 
L12:    aload_1 
L13:    checkcast com/fs/starfarer/combat/entities/Ship 
L16:    invokeinterface InterfaceMethod com/fs/starfarer/combat/K setPlayerShip (Lcom/fs/starfarer/combat/entities/Ship;)V 2 
L21:    return 
L22:    
    .end code 
.end method 

.method public isUIShowingDialog : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'ÓÔ0000' Lcom/fs/starfarer/combat/K; 
L4:     ifnonnull L9 
L7:     iconst_0 
L8:     ireturn 

        .stack same 
L9:     aload_0 
L10:    getfield Field com/fs/starfarer/combat/CombatEngine 'ÓÔ0000' Lcom/fs/starfarer/combat/K; 
L13:    invokeinterface InterfaceMethod com/fs/starfarer/combat/K isShowingDialog ()Z 1 
L18:    ireturn 
L19:    
    .end code 
.end method 

.method public isUIShowingHUD : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'ÓÔ0000' Lcom/fs/starfarer/combat/K; 
L4:     ifnonnull L9 
L7:     iconst_0 
L8:     ireturn 

        .stack same 
L9:     aload_0 
L10:    getfield Field com/fs/starfarer/combat/CombatEngine 'ÓÔ0000' Lcom/fs/starfarer/combat/K; 
L13:    invokeinterface InterfaceMethod com/fs/starfarer/combat/K isHideHud ()Z 1 
L18:    ifeq L25 
L21:    iconst_0 
L22:    goto L26 

        .stack same 
L25:    iconst_1 

        .stack stack_1 Integer 
L26:    ireturn 
L27:    
    .end code 
.end method 

.method public isUIAutopilotOn : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'ÓÔ0000' Lcom/fs/starfarer/combat/K; 
L4:     ifnonnull L9 
L7:     iconst_0 
L8:     ireturn 

        .stack same 
L9:     aload_0 
L10:    getfield Field com/fs/starfarer/combat/CombatEngine 'ÓÔ0000' Lcom/fs/starfarer/combat/K; 
L13:    invokeinterface InterfaceMethod com/fs/starfarer/combat/K isAutopilotOn ()Z 1 
L18:    ifeq L25 
L21:    iconst_0 
L22:    goto L26 

        .stack same 
L25:    iconst_1 

        .stack stack_1 Integer 
L26:    ireturn 
L27:    
    .end code 
.end method 

.method public getContrailEngine : ()Lcom/fs/starfarer/combat/entities/ContrailEngine; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'Ø00000' Lcom/fs/starfarer/combat/entities/ContrailEngine; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public getDebrisSystem : ()Lcom/fs/starfarer/renderers/damage/DebrisParticleSystem; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'ö00000' Lcom/fs/starfarer/renderers/damage/DebrisParticleSystem; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public spawnDebrisSmall : (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;IFFFFF)V 
    .code stack 10 locals 9 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getDebrisSystem ()Lcom/fs/starfarer/renderers/damage/DebrisParticleSystem; 
L4:     aload_1 
L5:     aload_2 
L6:     getstatic Field com/fs/starfarer/renderers/damage/DebrisParticleSystem$o 'Ö00000' Lcom/fs/starfarer/renderers/damage/DebrisParticleSystem$o; 
L9:     iload_3 
L10:    fload 4 
L12:    fload 5 
L14:    fload 6 
L16:    fload 7 
L18:    fload 8 
L20:    invokevirtual Method com/fs/starfarer/renderers/damage/DebrisParticleSystem spawnDebris (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;Lcom/fs/starfarer/renderers/damage/DebrisParticleSystem$o;IFFFFF)V 
L23:    return 
L24:    
    .end code 
.end method 

.method public spawnDebrisMedium : (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;IFFFFF)V 
    .code stack 10 locals 9 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getDebrisSystem ()Lcom/fs/starfarer/renderers/damage/DebrisParticleSystem; 
L4:     aload_1 
L5:     aload_2 
L6:     getstatic Field com/fs/starfarer/renderers/damage/DebrisParticleSystem$o new Lcom/fs/starfarer/renderers/damage/DebrisParticleSystem$o; 
L9:     iload_3 
L10:    fload 4 
L12:    fload 5 
L14:    fload 6 
L16:    fload 7 
L18:    fload 8 
L20:    invokevirtual Method com/fs/starfarer/renderers/damage/DebrisParticleSystem spawnDebris (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;Lcom/fs/starfarer/renderers/damage/DebrisParticleSystem$o;IFFFFF)V 
L23:    return 
L24:    
    .end code 
.end method 

.method public spawnDebrisLarge : (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;IFFFFF)V 
    .code stack 10 locals 9 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getDebrisSystem ()Lcom/fs/starfarer/renderers/damage/DebrisParticleSystem; 
L4:     aload_1 
L5:     aload_2 
L6:     getstatic Field com/fs/starfarer/renderers/damage/DebrisParticleSystem$o class Lcom/fs/starfarer/renderers/damage/DebrisParticleSystem$o; 
L9:     iload_3 
L10:    fload 4 
L12:    fload 5 
L14:    fload 6 
L16:    fload 7 
L18:    fload 8 
L20:    invokevirtual Method com/fs/starfarer/renderers/damage/DebrisParticleSystem spawnDebris (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;Lcom/fs/starfarer/renderers/damage/DebrisParticleSystem$o;IFFFFF)V 
L23:    return 
L24:    
    .end code 
.end method 

.method public getExplosionSystem : ()Lcom/fs/starfarer/renderers/damage/ExplosionParticleSystem; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine float Lcom/fs/starfarer/renderers/damage/ExplosionParticleSystem; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public spawnExplosion : (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;Ljava/awt/Color;FF)V 
    .code stack 6 locals 6 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine float Lcom/fs/starfarer/renderers/damage/ExplosionParticleSystem; 
L4:     aload_1 
L5:     aload_2 
L6:     aload_3 
L7:     fload 4 
L9:     fload 5 
L11:    invokevirtual Method com/fs/starfarer/renderers/damage/ExplosionParticleSystem spawnExplosion (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;Ljava/awt/Color;FF)V 
L14:    return 
L15:    
    .end code 
.end method 

.method public addHitParticle : (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;FF)V 
    .code stack 6 locals 5 
L0:     aload_0 
L1:     aload_1 
L2:     aload_2 
L3:     fload_3 
L4:     fload 4 
L6:     aload_0 
L7:     getfield Field com/fs/starfarer/combat/CombatEngine while Ljava/awt/Color; 
L10:    invokevirtual Method com/fs/starfarer/combat/CombatEngine addHitParticle (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;FFLjava/awt/Color;)V 
L13:    return 
L14:    
    .end code 
.end method 

.method public addHitParticle : (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;FFLjava/awt/Color;)V 
    .code stack 7 locals 7 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine o00000 Lcom/fs/starfarer/combat/CombatViewport; 
L4:     aload_1 
L5:     fload_3 
L6:     ldc_w +4.0f 
L9:     fmul 
L10:    invokevirtual Method com/fs/starfarer/combat/CombatViewport isNearViewport (Lorg/lwjgl/util/vector/Vector2f;F)Z 
L13:    ifeq L22 
L16:    fload_3 
L17:    fconst_0 
L18:    fcmpg 
L19:    ifgt L23 

        .stack same 
L22:    return 

        .stack same 
L23:    ldc_w +0.5f 
L26:    fstore 6 
L28:    fload_3 
L29:    ldc_w +50.0f 
L32:    fcmpg 
L33:    ifge L46 
L36:    fload_3 
L37:    ldc_w +0.009999999776482582f 
L40:    fmul 
L41:    fstore 6 
L43:    goto L69 

        .stack append Float 
L46:    fload_3 
L47:    ldc_w +100.0f 
L50:    fcmpl 
L51:    ifle L69 
L54:    ldc_w +0.5f 
L57:    fload_3 
L58:    ldc_w +100.0f 
L61:    fsub 
L62:    ldc_w +0.009999999776482582f 
L65:    fmul 
L66:    fadd 
L67:    fstore 6 

        .stack same 
L69:    fload 6 
L71:    fconst_2 
L72:    fcmpl 
L73:    ifle L79 
L76:    fconst_2 
L77:    fstore 6 

        .stack same 
L79:    aload_0 
L80:    aload_1 
L81:    aload_2 
L82:    fload_3 
L83:    fload 4 
L85:    fload 6 
L87:    aload 5 
L89:    invokevirtual Method com/fs/starfarer/combat/CombatEngine addHitParticle (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;FFFLjava/awt/Color;)V 
L92:    return 
L93:    
    .end code 
.end method 

.method public addHitParticle : (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;FFFLjava/awt/Color;)V 
    .code stack 7 locals 8 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine o00000 Lcom/fs/starfarer/combat/CombatViewport; 
L4:     aload_1 
L5:     fload_3 
L6:     ldc_w +4.0f 
L9:     fmul 
L10:    invokevirtual Method com/fs/starfarer/combat/CombatViewport isNearViewport (Lorg/lwjgl/util/vector/Vector2f;F)Z 
L13:    ifeq L22 
L16:    fload_3 
L17:    fconst_0 
L18:    fcmpg 
L19:    ifgt L23 

        .stack same 
L22:    return 

        .stack same 
L23:    new com/fs/graphics/particle/GenericTextureParticle 
L26:    dup 
L27:    ldc_w 'graphics/fx/hit_glow.png' 
L30:    aload 6 
L32:    ldc_w +255.0f 
L35:    fload 4 
L37:    fmul 
L38:    f2i 
L39:    invokestatic Method com/fs/graphics/util/B 'Ò00000' (Ljava/awt/Color;I)Ljava/awt/Color; 
L42:    fload_3 
L43:    fload_3 
L44:    fconst_0 
L45:    invokespecial Method com/fs/graphics/particle/GenericTextureParticle <init> (Ljava/lang/String;Ljava/awt/Color;FFF)V 
L48:    astore 7 
L50:    aload 7 
L52:    sipush 770 
L55:    iconst_1 
L56:    invokevirtual Method com/fs/graphics/particle/GenericTextureParticle setBlendFunc (II)V 
L59:    aload 7 
L61:    aload_1 
L62:    getfield Field org/lwjgl/util/vector/Vector2f x F 
L65:    aload_1 
L66:    getfield Field org/lwjgl/util/vector/Vector2f y F 
L69:    invokevirtual Method com/fs/graphics/particle/GenericTextureParticle setPos (FF)V 
L72:    aload 7 
L74:    aload_2 
L75:    getfield Field org/lwjgl/util/vector/Vector2f x F 
L78:    aload_2 
L79:    getfield Field org/lwjgl/util/vector/Vector2f y F 
L82:    invokevirtual Method com/fs/graphics/particle/GenericTextureParticle setVel (FF)V 
L85:    aload 7 
L87:    fload 5 
L89:    invokevirtual Method com/fs/graphics/particle/GenericTextureParticle setMaxAge (F)V 
L92:    aload_0 
L93:    getfield Field com/fs/starfarer/combat/CombatEngine 'OÔ0000' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L96:    aload 7 
L98:    invokevirtual Method com/fs/graphics/particle/DynamicParticleGroup add (Lcom/fs/graphics/particle/BaseParticle;)V 
L101:   return 
L102:   
    .end code 
.end method 

.method public addHitParticle : (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;FFFFLjava/awt/Color;)V 
    .code stack 7 locals 9 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine o00000 Lcom/fs/starfarer/combat/CombatViewport; 
L4:     aload_1 
L5:     fload_3 
L6:     ldc_w +4.0f 
L9:     fmul 
L10:    invokevirtual Method com/fs/starfarer/combat/CombatViewport isNearViewport (Lorg/lwjgl/util/vector/Vector2f;F)Z 
L13:    ifeq L22 
L16:    fload_3 
L17:    fconst_0 
L18:    fcmpg 
L19:    ifgt L23 

        .stack same 
L22:    return 

        .stack same 
L23:    new com/fs/graphics/particle/GenericTextureParticle 
L26:    dup 
L27:    ldc_w 'graphics/fx/hit_glow.png' 
L30:    aload 7 
L32:    ldc_w +255.0f 
L35:    fload 4 
L37:    fmul 
L38:    f2i 
L39:    invokestatic Method com/fs/graphics/util/B 'Ò00000' (Ljava/awt/Color;I)Ljava/awt/Color; 
L42:    fload_3 
L43:    fload_3 
L44:    fconst_0 
L45:    invokespecial Method com/fs/graphics/particle/GenericTextureParticle <init> (Ljava/lang/String;Ljava/awt/Color;FFF)V 
L48:    astore 8 
L50:    aload 8 
L52:    sipush 770 
L55:    iconst_1 
L56:    invokevirtual Method com/fs/graphics/particle/GenericTextureParticle setBlendFunc (II)V 
L59:    aload 8 
L61:    aload_1 
L62:    getfield Field org/lwjgl/util/vector/Vector2f x F 
L65:    aload_1 
L66:    getfield Field org/lwjgl/util/vector/Vector2f y F 
L69:    invokevirtual Method com/fs/graphics/particle/GenericTextureParticle setPos (FF)V 
L72:    aload 8 
L74:    aload_2 
L75:    getfield Field org/lwjgl/util/vector/Vector2f x F 
L78:    aload_2 
L79:    getfield Field org/lwjgl/util/vector/Vector2f y F 
L82:    invokevirtual Method com/fs/graphics/particle/GenericTextureParticle setVel (FF)V 
L85:    aload 8 
L87:    fload 6 
L89:    invokevirtual Method com/fs/graphics/particle/GenericTextureParticle setMaxAge (F)V 
L92:    aload 8 
L94:    fload 5 
L96:    invokevirtual Method com/fs/graphics/particle/GenericTextureParticle setRampUpPeriod (F)V 
L99:    aload_0 
L100:   getfield Field com/fs/starfarer/combat/CombatEngine 'OÔ0000' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L103:   aload 8 
L105:   invokevirtual Method com/fs/graphics/particle/DynamicParticleGroup add (Lcom/fs/graphics/particle/BaseParticle;)V 
L108:   return 
L109:   
    .end code 
.end method 

.method public addSparks : (FFFFLorg/lwjgl/util/vector/Vector2f;FFFFILjava/awt/Color;)V 
    .code stack 5 locals 21 
L0:     fload 4 
L2:     f2d 
L3:     invokestatic Method java/lang/Math toRadians (D)D 
L6:     d2f 
L7:     fstore 4 
L9:     fload_3 
L10:    f2d 
L11:    invokestatic Method java/lang/Math toRadians (D)D 
L14:    d2f 
L15:    fstore_3 
L16:    iconst_0 
L17:    istore 12 
L19:    goto L174 

        .stack append Integer 
L22:    new com/fs/graphics/particle/SmoothParticle 
L25:    dup 
L26:    aload 11 
L28:    invokestatic Method java/lang/Math random ()D 
L31:    d2f 
L32:    fload_1 
L33:    fmul 
L34:    fload_2 
L35:    fadd 
L36:    f2i 
L37:    i2f 
L38:    invokespecial Method com/fs/graphics/particle/SmoothParticle <init> (Ljava/awt/Color;F)V 
L41:    astore 13 
L43:    aload 13 
L45:    fconst_1 
L46:    invokevirtual Method com/fs/graphics/particle/SmoothParticle setMaxAge (F)V 
L49:    fload_3 
L50:    invokestatic Method java/lang/Math random ()D 
L53:    d2f 
L54:    fload 4 
L56:    fmul 
L57:    fadd 
L58:    fload 4 
L60:    fconst_2 
L61:    fdiv 
L62:    fsub 
L63:    fstore 14 
L65:    invokestatic Method java/lang/Math random ()D 
L68:    fload_1 
L69:    fload_2 
L70:    fadd 
L71:    f2d 
L72:    dmul 
L73:    d2f 
L74:    fstore 15 
L76:    fload 14 
L78:    f2d 
L79:    invokestatic Method java/lang/Math sin (D)D 
L82:    d2f 
L83:    fstore 16 
L85:    fload 14 
L87:    f2d 
L88:    invokestatic Method java/lang/Math cos (D)D 
L91:    d2f 
L92:    fstore 17 
L94:    fload 8 
L96:    fload 17 
L98:    fload 15 
L100:   fmul 
L101:   fadd 
L102:   fstore 18 
L104:   fload 9 
L106:   fload 16 
L108:   fload 15 
L110:   fmul 
L111:   fadd 
L112:   fstore 19 
L114:   aload 13 
L116:   fload 18 
L118:   fload 19 
L120:   invokevirtual Method com/fs/graphics/particle/SmoothParticle setPos (FF)V 
L123:   fload 6 
L125:   fload 7 
L127:   invokestatic Method java/lang/Math random ()D 
L130:   d2f 
L131:   fmul 
L132:   fadd 
L133:   fstore 20 
L135:   aload 13 
L137:   aload 5 
L139:   getfield Field org/lwjgl/util/vector/Vector2f x F 
L142:   fload 17 
L144:   fload 20 
L146:   fmul 
L147:   fadd 
L148:   aload 5 
L150:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L153:   fload 16 
L155:   fload 20 
L157:   fmul 
L158:   fadd 
L159:   invokevirtual Method com/fs/graphics/particle/SmoothParticle setVel (FF)V 
L162:   aload_0 
L163:   getfield Field com/fs/starfarer/combat/CombatEngine 'ØÓ0000' Lcom/fs/graphics/particle/DynamicParticleGroup; 
L166:   aload 13 
L168:   invokevirtual Method com/fs/graphics/particle/DynamicParticleGroup add (Lcom/fs/graphics/particle/BaseParticle;)V 
L171:   iinc 12 1 

        .stack same_extended 
L174:   iload 12 
L176:   iload 10 
L178:   if_icmplt L22 
L181:   return 
L182:   
    .end code 
.end method 

.method public getCloudSystem : ()Lcom/fs/starfarer/combat/entities/terrain/A; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'oÓ0000' Lcom/fs/starfarer/combat/entities/terrain/A; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public addFleet : (Lcom/fs/starfarer/combat/oOOO;Lcom/fs/starfarer/api/fleet/FleetGoal;)V 
    .code stack 4 locals 4 
L0:     new com/fs/starfarer/combat/CombatFleetManager 
L3:     dup 
L4:     aload_1 
L5:     aload_2 
L6:     invokespecial Method com/fs/starfarer/combat/CombatFleetManager <init> (Lcom/fs/starfarer/combat/oOOO;Lcom/fs/starfarer/api/fleet/FleetGoal;)V 
L9:     astore_3 
L10:    aload_0 
L11:    aload_3 
L12:    invokevirtual Method com/fs/starfarer/combat/CombatEngine addListener (Lcom/fs/starfarer/combat/oooO;)V 
L15:    aload_0 
L16:    getfield Field com/fs/starfarer/combat/CombatEngine 'interface.new' Ljava/util/List; 
L19:    aload_3 
L20:    invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L25:    pop 
L26:    return 
L27:    
    .end code 
.end method 

.method public getFleetManager : (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
    .code stack 3 locals 4 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'interface.new' Ljava/util/List; 
L4:     ifnonnull L16 
L7:     new com/fs/starfarer/combat/CombatFleetManager 
L10:    dup 
L11:    iload_1 
L12:    invokespecial Method com/fs/starfarer/combat/CombatFleetManager <init> (I)V 
L15:    areturn 

        .stack same 
L16:    aload_0 
L17:    getfield Field com/fs/starfarer/combat/CombatEngine 'interface.new' Ljava/util/List; 
L20:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L25:    astore_3 
L26:    goto L49 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L29:    aload_3 
L30:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L35:    checkcast com/fs/starfarer/combat/CombatFleetManager 
L38:    astore_2 
L39:    aload_2 
L40:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getOwner ()I 
L43:    iload_1 
L44:    if_icmpne L49 
L47:    aload_2 
L48:    areturn 

        .stack same 
L49:    aload_3 
L50:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L55:    ifne L29 
L58:    new com/fs/starfarer/combat/CombatFleetManager 
L61:    dup 
L62:    iload_1 
L63:    invokespecial Method com/fs/starfarer/combat/CombatFleetManager <init> (I)V 
L66:    areturn 
L67:    
    .end code 
.end method 

.method public getEnemyFleetManager : (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
    .code stack 2 locals 2 
L0:     iload_1 
L1:     ifne L10 
L4:     aload_0 
L5:     iconst_1 
L6:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L9:     areturn 

        .stack same 
L10:    aload_0 
L11:    iconst_0 
L12:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L15:    areturn 
L16:    
    .end code 
.end method 

.method public getPlayerFleetManager : ()Lcom/fs/starfarer/combat/CombatFleetManager; 
    .code stack 3 locals 3 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'interface.new' Ljava/util/List; 
L4:     ifnonnull L16 
L7:     new com/fs/starfarer/combat/CombatFleetManager 
L10:    dup 
L11:    iconst_0 
L12:    invokespecial Method com/fs/starfarer/combat/CombatFleetManager <init> (I)V 
L15:    areturn 

        .stack same 
L16:    aload_0 
L17:    getfield Field com/fs/starfarer/combat/CombatEngine 'interface.new' Ljava/util/List; 
L20:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L25:    astore_2 
L26:    goto L52 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Top Object java/util/Iterator 
            stack 
        .end stack 
L29:    aload_2 
L30:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L35:    checkcast com/fs/starfarer/combat/CombatFleetManager 
L38:    astore_1 
L39:    aload_1 
L40:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getOwner ()I 
L43:    aload_0 
L44:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerId ()I 
L47:    if_icmpne L52 
L50:    aload_1 
L51:    areturn 

        .stack same 
L52:    aload_2 
L53:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L58:    ifne L29 
L61:    new com/fs/starfarer/combat/CombatFleetManager 
L64:    dup 
L65:    iconst_0 
L66:    invokespecial Method com/fs/starfarer/combat/CombatFleetManager <init> (I)V 
L69:    areturn 
L70:    
    .end code 
.end method 

.method public getEnemyFleetManager : ()Lcom/fs/starfarer/combat/CombatFleetManager; 
    .code stack 3 locals 3 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'interface.new' Ljava/util/List; 
L4:     ifnonnull L16 
L7:     new com/fs/starfarer/combat/CombatFleetManager 
L10:    dup 
L11:    iconst_1 
L12:    invokespecial Method com/fs/starfarer/combat/CombatFleetManager <init> (I)V 
L15:    areturn 

        .stack same 
L16:    aload_0 
L17:    getfield Field com/fs/starfarer/combat/CombatEngine 'interface.new' Ljava/util/List; 
L20:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L25:    astore_2 
L26:    goto L52 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Top Object java/util/Iterator 
            stack 
        .end stack 
L29:    aload_2 
L30:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L35:    checkcast com/fs/starfarer/combat/CombatFleetManager 
L38:    astore_1 
L39:    aload_1 
L40:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getOwner ()I 
L43:    aload_0 
L44:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerId ()I 
L47:    if_icmpeq L52 
L50:    aload_1 
L51:    areturn 

        .stack same 
L52:    aload_2 
L53:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L58:    ifne L29 
L61:    new com/fs/starfarer/combat/CombatFleetManager 
L64:    dup 
L65:    iconst_1 
L66:    invokespecial Method com/fs/starfarer/combat/CombatFleetManager <init> (I)V 
L69:    areturn 
L70:    
    .end code 
.end method 

.method public getPlayerTaskManager : ()Lcom/fs/starfarer/combat/tasks/CombatTaskManager; 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerFleetManager ()Lcom/fs/starfarer/combat/CombatFleetManager; 
L4:     astore_1 
L5:     aload_1 
L6:     ifnull L15 
L9:     aload_1 
L10:    iconst_0 
L11:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getTaskManager (Z)Lcom/fs/starfarer/combat/tasks/CombatTaskManager; 
L14:    areturn 

        .stack append Object com/fs/starfarer/combat/CombatFleetManager 
L15:    aconst_null 
L16:    areturn 
L17:    
    .end code 
.end method 

.method public getTaskManager : (IZ)Lcom/fs/starfarer/combat/tasks/CombatTaskManager; 
    .code stack 2 locals 4 
L0:     aload_0 
L1:     iload_1 
L2:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L5:     astore_3 
L6:     aload_3 
L7:     ifnull L16 
L10:    aload_3 
L11:    iload_2 
L12:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getTaskManager (Z)Lcom/fs/starfarer/combat/tasks/CombatTaskManager; 
L15:    areturn 

        .stack append Object com/fs/starfarer/combat/CombatFleetManager 
L16:    aconst_null 
L17:    areturn 
L18:    
    .end code 
.end method 

.method public getEnemyTaskManager : ()Lcom/fs/starfarer/combat/tasks/CombatTaskManager; 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getEnemyFleetManager ()Lcom/fs/starfarer/combat/CombatFleetManager; 
L4:     astore_1 
L5:     aload_1 
L6:     ifnull L15 
L9:     aload_1 
L10:    iconst_0 
L11:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getTaskManager (Z)Lcom/fs/starfarer/combat/tasks/CombatTaskManager; 
L14:    areturn 

        .stack append Object com/fs/starfarer/combat/CombatFleetManager 
L15:    aconst_null 
L16:    areturn 
L17:    
    .end code 
.end method 

.method public computeFleetStrengths : ()V 
    .code stack 5 locals 23 
L0:     aload_0 
L1:     iconst_0 
L2:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L5:     astore_1 
L6:     aload_0 
L7:     iconst_1 
L8:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L11:    astore_2 
L12:    aload_1 
L13:    ifnull L20 
L16:    aload_2 
L17:    ifnonnull L21 

        .stack append Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/CombatFleetManager 
L20:    return 

        .stack same 
L21:    aload_0 
L22:    getfield Field com/fs/starfarer/combat/CombatEngine 'oÕ0000' F 
L25:    fstore_3 
L26:    aload_0 
L27:    getfield Field com/fs/starfarer/combat/CombatEngine 'õ00000' F 
L30:    fstore 4 
L32:    getstatic Field com/fs/starfarer/api/impl/combat/CRPluginImpl MALFUNCTION_START F 
L35:    fstore 5 
L37:    fload 5 
L39:    ldc_w +0.10000000149011612f 
L42:    fcmpg 
L43:    ifge L51 
L46:    ldc_w +0.10000000149011612f 
L49:    fstore 5 

        .stack append Float Float Float 
L51:    aload_0 
L52:    getfield Field com/fs/starfarer/combat/CombatEngine 'ÔÖ0000' Z 
L55:    ifne L991 
L58:    ldc_w +50.0f 
L61:    fstore 6 
L63:    ldc_w +15.0f 
L66:    fstore 7 
L68:    fconst_0 
L69:    fstore_3 
L70:    ldc_w +0.20000000298023224f 
L73:    fstore 8 
L75:    aload_1 
L76:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getReserves ()Ljava/util/Set; 
L79:    invokeinterface InterfaceMethod java/util/Set iterator ()Ljava/util/Iterator; 1 
L84:    astore 10 
L86:    goto L240 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/CombatFleetManager Float Float Float Float Float Float Top Object java/util/Iterator 
            stack 
        .end stack 
L89:    aload 10 
L91:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L96:    checkcast com/fs/starfarer/campaign/fleet/FleetMember 
L99:    astore 9 
L101:   aload 9 
L103:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getFleetCommanderForStats ()Lcom/fs/starfarer/api/characters/PersonAPI; 
L106:   astore 11 
L108:   aload 11 
L110:   ifnonnull L120 
L113:   aload 9 
L115:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getFleetCommander ()Lcom/fs/starfarer/rpg/Person; 
L118:   astore 11 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/CombatFleetManager Float Float Float Float Float Float Object com/fs/starfarer/campaign/fleet/FleetMember Object java/util/Iterator Object com/fs/starfarer/api/characters/PersonAPI 
            stack 
        .end stack 
L120:   aload 11 
L122:   ifnull L139 
L125:   aload 11 
L127:   invokeinterface InterfaceMethod com/fs/starfarer/api/characters/PersonAPI isAICore ()Z 1 
L132:   ifeq L139 
L135:   iconst_1 
L136:   goto L140 

        .stack same 
L139:   iconst_0 

        .stack stack_1 Integer 
L140:   istore 12 
L142:   aload 9 
L144:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getCaptain ()Lcom/fs/starfarer/rpg/Person; 
L147:   invokevirtual Method com/fs/starfarer/rpg/Person isAICore ()Z 
L150:   ifeq L161 
L153:   iload 12 
L155:   ifne L161 
L158:   goto L240 

        .stack append Integer 
L161:   fload 8 
L163:   fstore 13 
L165:   fconst_1 
L166:   aload 9 
L168:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getCR ()F 
L171:   fload 5 
L173:   fdiv 
L174:   invokestatic Method java/lang/Math min (FF)F 
L177:   fstore 14 
L179:   aload 9 
L181:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getCaptain ()Lcom/fs/starfarer/rpg/Person; 
L184:   ifnull L226 
L187:   aload 9 
L189:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getCaptain ()Lcom/fs/starfarer/rpg/Person; 
L192:   invokevirtual Method com/fs/starfarer/rpg/Person isDefault ()Z 
L195:   ifne L226 
L198:   fload_3 
L199:   fload 6 
L201:   fload 7 
L203:   fconst_1 
L204:   aload 9 
L206:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getCaptain ()Lcom/fs/starfarer/rpg/Person; 
L209:   invokevirtual Method com/fs/starfarer/rpg/Person getStats ()Lcom/fs/starfarer/campaign/CharacterStats; 
L212:   invokevirtual Method com/fs/starfarer/campaign/CharacterStats getLevel ()I 
L215:   i2f 
L216:   invokestatic Method java/lang/Math max (FF)F 
L219:   fmul 
L220:   fadd 
L221:   fload 14 
L223:   fmul 
L224:   fadd 
L225:   fstore_3 

        .stack append Float Float 
L226:   fload_3 
L227:   aload 9 
L229:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getUnmodifiedDeploymentPointsCost ()F 
L232:   fload 13 
L234:   fmul 
L235:   fload 14 
L237:   fmul 
L238:   fadd 
L239:   fstore_3 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/CombatFleetManager Float Float Float Float Float Float Top Object java/util/Iterator 
            stack 
        .end stack 
L240:   aload 10 
L242:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L247:   ifne L89 
L250:   aload_1 
L251:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getDeployed ()Ljava/util/Set; 
L254:   invokeinterface InterfaceMethod java/util/Set iterator ()Ljava/util/Iterator; 1 
L259:   astore 10 
L261:   goto L458 

        .stack same 
L264:   aload 10 
L266:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L271:   checkcast com/fs/starfarer/combat/CombatFleetManager$O0 
L274:   astore 9 
L276:   aload 9 
L278:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getMember ()Lcom/fs/starfarer/campaign/fleet/FleetMember; 
L281:   ifnull L353 
L284:   aload 9 
L286:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getMember ()Lcom/fs/starfarer/campaign/fleet/FleetMember; 
L289:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getFleetCommanderForStats ()Lcom/fs/starfarer/api/characters/PersonAPI; 
L292:   astore 11 
L294:   aload 11 
L296:   ifnonnull L309 
L299:   aload 9 
L301:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getMember ()Lcom/fs/starfarer/campaign/fleet/FleetMember; 
L304:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getFleetCommander ()Lcom/fs/starfarer/rpg/Person; 
L307:   astore 11 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/CombatFleetManager Float Float Float Float Float Float Object com/fs/starfarer/combat/CombatFleetManager$O0 Object java/util/Iterator Object com/fs/starfarer/api/characters/PersonAPI 
            stack 
        .end stack 
L309:   aload 11 
L311:   ifnull L328 
L314:   aload 11 
L316:   invokeinterface InterfaceMethod com/fs/starfarer/api/characters/PersonAPI isAICore ()Z 1 
L321:   ifeq L328 
L324:   iconst_1 
L325:   goto L329 

        .stack same 
L328:   iconst_0 

        .stack stack_1 Integer 
L329:   istore 12 
L331:   aload 9 
L333:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getMember ()Lcom/fs/starfarer/campaign/fleet/FleetMember; 
L336:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getCaptain ()Lcom/fs/starfarer/rpg/Person; 
L339:   invokevirtual Method com/fs/starfarer/rpg/Person isAICore ()Z 
L342:   ifeq L353 
L345:   iload 12 
L347:   ifne L353 
L350:   goto L458 

        .stack chop 1 
L353:   aload 9 
L355:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 isFighterWing ()Z 
L358:   ifeq L364 
L361:   goto L458 

        .stack same 
L364:   fload 8 
L366:   fstore 11 
L368:   fconst_1 
L369:   aload 9 
L371:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getMember ()Lcom/fs/starfarer/campaign/fleet/FleetMember; 
L374:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getCR ()F 
L377:   fload 5 
L379:   fdiv 
L380:   invokestatic Method java/lang/Math min (FF)F 
L383:   fstore 12 
L385:   aload 9 
L387:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getMember ()Lcom/fs/starfarer/campaign/fleet/FleetMember; 
L390:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getCaptain ()Lcom/fs/starfarer/rpg/Person; 
L393:   ifnull L441 
L396:   aload 9 
L398:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getMember ()Lcom/fs/starfarer/campaign/fleet/FleetMember; 
L401:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getCaptain ()Lcom/fs/starfarer/rpg/Person; 
L404:   invokevirtual Method com/fs/starfarer/rpg/Person isDefault ()Z 
L407:   ifne L441 
L410:   fload_3 
L411:   fload 6 
L413:   fload 7 
L415:   fconst_1 
L416:   aload 9 
L418:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getMember ()Lcom/fs/starfarer/campaign/fleet/FleetMember; 
L421:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getCaptain ()Lcom/fs/starfarer/rpg/Person; 
L424:   invokevirtual Method com/fs/starfarer/rpg/Person getStats ()Lcom/fs/starfarer/campaign/CharacterStats; 
L427:   invokevirtual Method com/fs/starfarer/campaign/CharacterStats getLevel ()I 
L430:   i2f 
L431:   invokestatic Method java/lang/Math max (FF)F 
L434:   fmul 
L435:   fadd 
L436:   fload 12 
L438:   fmul 
L439:   fadd 
L440:   fstore_3 

        .stack append Float Float 
L441:   fload_3 
L442:   aload 9 
L444:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getMember ()Lcom/fs/starfarer/campaign/fleet/FleetMember; 
L447:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getUnmodifiedDeploymentPointsCost ()F 
L450:   fload 11 
L452:   fmul 
L453:   fload 12 
L455:   fmul 
L456:   fadd 
L457:   fstore_3 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/CombatFleetManager Float Float Float Float Float Float Top Object java/util/Iterator 
            stack 
        .end stack 
L458:   aload 10 
L460:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L465:   ifne L264 
L468:   fconst_0 
L469:   fstore 4 
L471:   aload_2 
L472:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getReserves ()Ljava/util/Set; 
L475:   invokeinterface InterfaceMethod java/util/Set iterator ()Ljava/util/Iterator; 1 
L480:   astore 10 
L482:   goto L640 

        .stack same 
L485:   aload 10 
L487:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L492:   checkcast com/fs/starfarer/campaign/fleet/FleetMember 
L495:   astore 9 
L497:   aload 9 
L499:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getFleetCommanderForStats ()Lcom/fs/starfarer/api/characters/PersonAPI; 
L502:   astore 11 
L504:   aload 11 
L506:   ifnonnull L516 
L509:   aload 9 
L511:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getFleetCommander ()Lcom/fs/starfarer/rpg/Person; 
L514:   astore 11 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/CombatFleetManager Float Float Float Float Float Float Object com/fs/starfarer/campaign/fleet/FleetMember Object java/util/Iterator Object com/fs/starfarer/api/characters/PersonAPI 
            stack 
        .end stack 
L516:   aload 11 
L518:   ifnull L535 
L521:   aload 11 
L523:   invokeinterface InterfaceMethod com/fs/starfarer/api/characters/PersonAPI isAICore ()Z 1 
L528:   ifeq L535 
L531:   iconst_1 
L532:   goto L536 

        .stack same 
L535:   iconst_0 

        .stack stack_1 Integer 
L536:   istore 12 
L538:   aload 9 
L540:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getCaptain ()Lcom/fs/starfarer/rpg/Person; 
L543:   invokevirtual Method com/fs/starfarer/rpg/Person isAICore ()Z 
L546:   ifeq L557 
L549:   iload 12 
L551:   ifne L557 
L554:   goto L640 

        .stack append Integer 
L557:   fload 8 
L559:   fstore 13 
L561:   fconst_1 
L562:   aload 9 
L564:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getCR ()F 
L567:   fload 5 
L569:   fdiv 
L570:   invokestatic Method java/lang/Math min (FF)F 
L573:   fstore 14 
L575:   aload 9 
L577:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getCaptain ()Lcom/fs/starfarer/rpg/Person; 
L580:   ifnull L624 
L583:   aload 9 
L585:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getCaptain ()Lcom/fs/starfarer/rpg/Person; 
L588:   invokevirtual Method com/fs/starfarer/rpg/Person isDefault ()Z 
L591:   ifne L624 
L594:   fload 4 
L596:   fload 6 
L598:   fload 7 
L600:   fconst_1 
L601:   aload 9 
L603:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getCaptain ()Lcom/fs/starfarer/rpg/Person; 
L606:   invokevirtual Method com/fs/starfarer/rpg/Person getStats ()Lcom/fs/starfarer/campaign/CharacterStats; 
L609:   invokevirtual Method com/fs/starfarer/campaign/CharacterStats getLevel ()I 
L612:   i2f 
L613:   invokestatic Method java/lang/Math max (FF)F 
L616:   fmul 
L617:   fadd 
L618:   fload 14 
L620:   fmul 
L621:   fadd 
L622:   fstore 4 

        .stack append Float Float 
L624:   fload 4 
L626:   aload 9 
L628:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getUnmodifiedDeploymentPointsCost ()F 
L631:   fload 13 
L633:   fmul 
L634:   fload 14 
L636:   fmul 
L637:   fadd 
L638:   fstore 4 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/CombatFleetManager Float Float Float Float Float Float Top Object java/util/Iterator 
            stack 
        .end stack 
L640:   aload 10 
L642:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L647:   ifne L485 
L650:   aload_2 
L651:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getDeployed ()Ljava/util/Set; 
L654:   invokeinterface InterfaceMethod java/util/Set iterator ()Ljava/util/Iterator; 1 
L659:   astore 10 
L661:   goto L862 

        .stack same 
L664:   aload 10 
L666:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L671:   checkcast com/fs/starfarer/combat/CombatFleetManager$O0 
L674:   astore 9 
L676:   aload 9 
L678:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getMember ()Lcom/fs/starfarer/campaign/fleet/FleetMember; 
L681:   ifnull L753 
L684:   aload 9 
L686:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getMember ()Lcom/fs/starfarer/campaign/fleet/FleetMember; 
L689:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getFleetCommanderForStats ()Lcom/fs/starfarer/api/characters/PersonAPI; 
L692:   astore 11 
L694:   aload 11 
L696:   ifnonnull L709 
L699:   aload 9 
L701:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getMember ()Lcom/fs/starfarer/campaign/fleet/FleetMember; 
L704:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getFleetCommander ()Lcom/fs/starfarer/rpg/Person; 
L707:   astore 11 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/CombatFleetManager Float Float Float Float Float Float Object com/fs/starfarer/combat/CombatFleetManager$O0 Object java/util/Iterator Object com/fs/starfarer/api/characters/PersonAPI 
            stack 
        .end stack 
L709:   aload 11 
L711:   ifnull L728 
L714:   aload 11 
L716:   invokeinterface InterfaceMethod com/fs/starfarer/api/characters/PersonAPI isAICore ()Z 1 
L721:   ifeq L728 
L724:   iconst_1 
L725:   goto L729 

        .stack same 
L728:   iconst_0 

        .stack stack_1 Integer 
L729:   istore 12 
L731:   aload 9 
L733:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getMember ()Lcom/fs/starfarer/campaign/fleet/FleetMember; 
L736:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getCaptain ()Lcom/fs/starfarer/rpg/Person; 
L739:   invokevirtual Method com/fs/starfarer/rpg/Person isAICore ()Z 
L742:   ifeq L753 
L745:   iload 12 
L747:   ifne L753 
L750:   goto L862 

        .stack chop 1 
L753:   aload 9 
L755:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 isFighterWing ()Z 
L758:   ifeq L764 
L761:   goto L862 

        .stack same 
L764:   fload 8 
L766:   fstore 11 
L768:   fconst_1 
L769:   aload 9 
L771:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getMember ()Lcom/fs/starfarer/campaign/fleet/FleetMember; 
L774:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getCR ()F 
L777:   fload 5 
L779:   fdiv 
L780:   invokestatic Method java/lang/Math min (FF)F 
L783:   fstore 12 
L785:   aload 9 
L787:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getMember ()Lcom/fs/starfarer/campaign/fleet/FleetMember; 
L790:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getCaptain ()Lcom/fs/starfarer/rpg/Person; 
L793:   ifnull L843 
L796:   aload 9 
L798:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getMember ()Lcom/fs/starfarer/campaign/fleet/FleetMember; 
L801:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getCaptain ()Lcom/fs/starfarer/rpg/Person; 
L804:   invokevirtual Method com/fs/starfarer/rpg/Person isDefault ()Z 
L807:   ifne L843 
L810:   fload 4 
L812:   fload 6 
L814:   fload 7 
L816:   fconst_1 
L817:   aload 9 
L819:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getMember ()Lcom/fs/starfarer/campaign/fleet/FleetMember; 
L822:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getCaptain ()Lcom/fs/starfarer/rpg/Person; 
L825:   invokevirtual Method com/fs/starfarer/rpg/Person getStats ()Lcom/fs/starfarer/campaign/CharacterStats; 
L828:   invokevirtual Method com/fs/starfarer/campaign/CharacterStats getLevel ()I 
L831:   i2f 
L832:   invokestatic Method java/lang/Math max (FF)F 
L835:   fmul 
L836:   fadd 
L837:   fload 12 
L839:   fmul 
L840:   fadd 
L841:   fstore 4 

        .stack append Float Float 
L843:   fload 4 
L845:   aload 9 
L847:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getMember ()Lcom/fs/starfarer/campaign/fleet/FleetMember; 
L850:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getUnmodifiedDeploymentPointsCost ()F 
L853:   fload 11 
L855:   fmul 
L856:   fload 12 
L858:   fmul 
L859:   fadd 
L860:   fstore 4 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/CombatFleetManager Float Float Float Float Float Float Top Object java/util/Iterator 
            stack 
        .end stack 
L862:   aload 10 
L864:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L869:   ifne L664 
L872:   fload_3 
L873:   fconst_1 
L874:   fcmpg 
L875:   ifge L880 
L878:   fconst_1 
L879:   fstore_3 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/CombatFleetManager Float Float Float Float Float Float 
            stack 
        .end stack 
L880:   fload 4 
L882:   fconst_1 
L883:   fcmpg 
L884:   ifge L890 
L887:   fconst_1 
L888:   fstore 4 

        .stack same 
L890:   aload_0 
L891:   fload_3 
L892:   putfield Field com/fs/starfarer/combat/CombatEngine 'oÕ0000' F 
L895:   aload_0 
L896:   fload 4 
L898:   putfield Field com/fs/starfarer/combat/CombatEngine 'õ00000' F 
L901:   aload_1 
L902:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getBiggestStationDeployedOrNot ()Lcom/fs/starfarer/api/fleet/FleetMemberAPI; 
L905:   astore 9 
L907:   aload_2 
L908:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getBiggestStationDeployedOrNot ()Lcom/fs/starfarer/api/fleet/FleetMemberAPI; 
L911:   astore 10 
L913:   invokestatic Method com/fs/starfarer/api/Global getSettings ()Lcom/fs/starfarer/api/SettingsAPI; 
L916:   ldc_w 'stationDeploymentBonusMult' 
L919:   invokeinterface InterfaceMethod com/fs/starfarer/api/SettingsAPI getFloat (Ljava/lang/String;)F 2 
L924:   fstore 11 
L926:   aload 9 
L928:   ifnull L948 
L931:   aload_0 
L932:   aload 9 
L934:   invokeinterface InterfaceMethod com/fs/starfarer/api/fleet/FleetMemberAPI getUnmodifiedDeploymentPointsCost ()F 1 
L939:   fload 11 
L941:   fmul 
L942:   invokestatic Method java/lang/Math round (F)I 
L945:   putfield Field com/fs/starfarer/combat/CombatEngine null I 

        .stack append Object com/fs/starfarer/api/fleet/FleetMemberAPI Object com/fs/starfarer/api/fleet/FleetMemberAPI Float 
L948:   aload 10 
L950:   ifnull L970 
L953:   aload_0 
L954:   aload 10 
L956:   invokeinterface InterfaceMethod com/fs/starfarer/api/fleet/FleetMemberAPI getUnmodifiedDeploymentPointsCost ()F 1 
L961:   fload 11 
L963:   fmul 
L964:   invokestatic Method java/lang/Math round (F)I 
L967:   putfield Field com/fs/starfarer/combat/CombatEngine 'ÓÒ0000' I 

        .stack same 
L970:   aload_0 
L971:   aload_1 
L972:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getFlagshipCost ()I 
L975:   putfield Field com/fs/starfarer/combat/CombatEngine 'öÕ0000' I 
L978:   aload_0 
L979:   aload_2 
L980:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getFlagshipCost ()I 
L983:   putfield Field com/fs/starfarer/combat/CombatEngine 'ÖO0000' I 
L986:   aload_0 
L987:   iconst_1 
L988:   putfield Field com/fs/starfarer/combat/CombatEngine 'ÔÖ0000' Z 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/CombatFleetManager Float Float Float 
            stack 
        .end stack 
L991:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'oÒ0000' ()I 
L994:   i2f 
L995:   fstore 6 
L997:   fload 6 
L999:   aload_0 
L1000:  getfield Field com/fs/starfarer/combat/CombatEngine null I 
L1003:  i2f 
L1004:  fadd 
L1005:  fstore 6 
L1007:  fload 6 
L1009:  aload_0 
L1010:  getfield Field com/fs/starfarer/combat/CombatEngine 'ÓÒ0000' I 
L1013:  i2f 
L1014:  fadd 
L1015:  fstore 6 
L1017:  fload_3 
L1018:  fload_3 
L1019:  fload 4 
L1021:  fadd 
L1022:  fdiv 
L1023:  fstore 7 
L1025:  fload 4 
L1027:  fload_3 
L1028:  fload 4 
L1030:  fadd 
L1031:  fdiv 
L1032:  fstore 8 
L1034:  invokestatic Method com/fs/starfarer/api/Global getSettings ()Lcom/fs/starfarer/api/SettingsAPI; 
L1037:  ldc_w 'minFractionOfBattleSizeForSmallerSide' 
L1040:  invokeinterface InterfaceMethod com/fs/starfarer/api/SettingsAPI getFloat (Ljava/lang/String;)F 2 
L1045:  fstore 9 
L1047:  fload 6 
L1049:  fconst_1 
L1050:  fload 9 
L1052:  fsub 
L1053:  fmul 
L1054:  invokestatic Method java/lang/Math round (F)I 
L1057:  istore 10 
L1059:  fload 7 
L1061:  fload 9 
L1063:  fcmpg 
L1064:  ifge L1080 
L1067:  fload 9 
L1069:  fstore 7 
L1071:  fconst_1 
L1072:  fload 9 
L1074:  fsub 
L1075:  fstore 8 
L1077:  goto L1098 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/CombatFleetManager Float Float Float Float Float Float Float Integer 
            stack 
        .end stack 
L1080:  fload 8 
L1082:  fload 9 
L1084:  fcmpg 
L1085:  ifge L1098 
L1088:  fload 9 
L1090:  fstore 8 
L1092:  fconst_1 
L1093:  fload 9 
L1095:  fsub 
L1096:  fstore 7 

        .stack same 
L1098:  fload 6 
L1100:  fload 7 
L1102:  fmul 
L1103:  f2d 
L1104:  invokestatic Method java/lang/Math ceil (D)D 
L1107:  d2i 
L1108:  istore 11 
L1110:  fload 6 
L1112:  fload 8 
L1114:  fmul 
L1115:  f2d 
L1116:  invokestatic Method java/lang/Math floor (D)D 
L1119:  d2i 
L1120:  istore 12 
L1122:  aload_0 
L1123:  getfield Field com/fs/starfarer/combat/CombatEngine 'öÕ0000' I 
L1126:  istore 13 
L1128:  aload_0 
L1129:  getfield Field com/fs/starfarer/combat/CombatEngine 'ÖO0000' I 
L1132:  istore 14 
L1134:  iload 13 
L1136:  iload 11 
L1138:  if_icmple L1166 
L1141:  iload 13 
L1143:  i2f 
L1144:  fload 6 
L1146:  ldc_w +0.5f 
L1149:  fmul 
L1150:  fcmpg 
L1151:  ifgt L1166 
L1154:  iload 13 
L1156:  istore 11 
L1158:  fload 6 
L1160:  f2i 
L1161:  iload 11 
L1163:  isub 
L1164:  istore 12 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/CombatFleetManager Float Float Float Float Float Float Float Integer Integer Integer Integer Integer 
            stack 
        .end stack 
L1166:  iload 14 
L1168:  iload 12 
L1170:  if_icmple L1198 
L1173:  iload 14 
L1175:  i2f 
L1176:  fload 6 
L1178:  ldc_w +0.5f 
L1181:  fmul 
L1182:  fcmpg 
L1183:  ifgt L1198 
L1186:  iload 14 
L1188:  istore 12 
L1190:  fload 6 
L1192:  f2i 
L1193:  iload 12 
L1195:  isub 
L1196:  istore 11 

        .stack same 
L1198:  fconst_0 
L1199:  fstore 15 
L1201:  aload_0 
L1202:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getObjectives ()Ljava/util/List; 
L1205:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L1210:  astore 17 
L1212:  goto L1264 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/CombatFleetManager Float Float Float Float Float Float Float Integer Integer Integer Integer Integer Float Top Object java/util/Iterator 
            stack 
        .end stack 
L1215:  aload 17 
L1217:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L1222:  checkcast com/fs/starfarer/api/combat/BattleObjectiveAPI 
L1225:  astore 16 
L1227:  aload 16 
L1229:  checkcast com/fs/starfarer/combat/entities/BattleObjective 
L1232:  astore 18 
L1234:  aload 16 
L1236:  invokeinterface InterfaceMethod com/fs/starfarer/api/combat/BattleObjectiveAPI getOwner ()I 1 
L1241:  aload_1 
L1242:  invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getOwner ()I 
L1245:  if_icmpne L1264 
L1248:  fload 15 
L1250:  aload 18 
L1252:  invokevirtual Method com/fs/starfarer/combat/entities/BattleObjective getEffect ()Lcom/fs/starfarer/api/combat/BattleObjectiveEffect; 
L1255:  invokeinterface InterfaceMethod com/fs/starfarer/api/combat/BattleObjectiveEffect getBonusDeploymentPoints ()I 1 
L1260:  i2f 
L1261:  fadd 
L1262:  fstore 15 

        .stack same 
L1264:  aload 17 
L1266:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L1271:  ifne L1215 
L1274:  fconst_0 
L1275:  fstore 16 
L1277:  aload_0 
L1278:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getObjectives ()Ljava/util/List; 
L1281:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L1286:  astore 18 
L1288:  goto L1340 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/CombatFleetManager Float Float Float Float Float Float Float Integer Integer Integer Integer Integer Float Float Top Object java/util/Iterator 
            stack 
        .end stack 
L1291:  aload 18 
L1293:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L1298:  checkcast com/fs/starfarer/api/combat/BattleObjectiveAPI 
L1301:  astore 17 
L1303:  aload 17 
L1305:  checkcast com/fs/starfarer/combat/entities/BattleObjective 
L1308:  astore 19 
L1310:  aload 17 
L1312:  invokeinterface InterfaceMethod com/fs/starfarer/api/combat/BattleObjectiveAPI getOwner ()I 1 
L1317:  aload_2 
L1318:  invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getOwner ()I 
L1321:  if_icmpne L1340 
L1324:  fload 16 
L1326:  aload 19 
L1328:  invokevirtual Method com/fs/starfarer/combat/entities/BattleObjective getEffect ()Lcom/fs/starfarer/api/combat/BattleObjectiveEffect; 
L1331:  invokeinterface InterfaceMethod com/fs/starfarer/api/combat/BattleObjectiveEffect getBonusDeploymentPoints ()I 1 
L1336:  i2f 
L1337:  fadd 
L1338:  fstore 16 

        .stack same 
L1340:  aload 18 
L1342:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L1347:  ifne L1291 
L1350:  aload_1 
L1351:  invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getFleetCommanderPreferPlayer ()Lcom/fs/starfarer/api/characters/PersonAPI; 
L1354:  astore 17 
L1356:  aload_2 
L1357:  invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getFleetCommanderPreferPlayer ()Lcom/fs/starfarer/api/characters/PersonAPI; 
L1360:  astore 18 
L1362:  aload 17 
L1364:  ifnull L1469 
L1367:  aload 17 
L1369:  invokeinterface InterfaceMethod com/fs/starfarer/api/characters/PersonAPI getStats ()Lcom/fs/starfarer/api/characters/MutableCharacterStatsAPI; 1 
L1374:  invokeinterface InterfaceMethod com/fs/starfarer/api/characters/MutableCharacterStatsAPI getDynamic ()Lcom/fs/starfarer/api/util/DynamicStatsAPI; 1 
L1379:  ldc_w 'deployment_points_fraction_of_battle_size_bonus_mod' 
L1382:  invokeinterface InterfaceMethod com/fs/starfarer/api/util/DynamicStatsAPI getMod (Ljava/lang/String;)Lcom/fs/starfarer/api/combat/StatBonus; 2 
L1387:  fconst_0 
L1388:  invokevirtual Method com/fs/starfarer/api/combat/StatBonus computeEffective (F)F 
L1391:  fstore 19 
L1393:  invokestatic Method com/fs/starfarer/api/Global getSettings ()Lcom/fs/starfarer/api/SettingsAPI; 
L1396:  invokeinterface InterfaceMethod com/fs/starfarer/api/SettingsAPI getBattleSize ()I 1 
L1401:  istore 20 
L1403:  iload 20 
L1405:  i2f 
L1406:  fload 19 
L1408:  fmul 
L1409:  invokestatic Method java/lang/Math round (F)I 
L1412:  i2f 
L1413:  fstore 19 
L1415:  fload 15 
L1417:  fload 19 
L1419:  fadd 
L1420:  fstore 15 
L1422:  aload 17 
L1424:  invokeinterface InterfaceMethod com/fs/starfarer/api/characters/PersonAPI getStats ()Lcom/fs/starfarer/api/characters/MutableCharacterStatsAPI; 1 
L1429:  invokeinterface InterfaceMethod com/fs/starfarer/api/characters/MutableCharacterStatsAPI getDynamic ()Lcom/fs/starfarer/api/util/DynamicStatsAPI; 1 
L1434:  ldc_w 'deployment_points_min_fraction_of_battle_size_bonus_mod' 
L1437:  invokeinterface InterfaceMethod com/fs/starfarer/api/util/DynamicStatsAPI getMod (Ljava/lang/String;)Lcom/fs/starfarer/api/combat/StatBonus; 2 
L1442:  fconst_0 
L1443:  invokevirtual Method com/fs/starfarer/api/combat/StatBonus computeEffective (F)F 
L1446:  fstore 21 
L1448:  iload 20 
L1450:  i2f 
L1451:  fload 21 
L1453:  fmul 
L1454:  invokestatic Method java/lang/Math round (F)I 
L1457:  i2f 
L1458:  fstore 21 
L1460:  fload 15 
L1462:  fload 21 
L1464:  invokestatic Method java/lang/Math max (FF)F 
L1467:  fstore 15 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/CombatFleetManager Float Float Float Float Float Float Float Integer Integer Integer Integer Integer Float Float Object com/fs/starfarer/api/characters/PersonAPI Object com/fs/starfarer/api/characters/PersonAPI 
            stack 
        .end stack 
L1469:  aload 18 
L1471:  ifnull L1576 
L1474:  aload 18 
L1476:  invokeinterface InterfaceMethod com/fs/starfarer/api/characters/PersonAPI getStats ()Lcom/fs/starfarer/api/characters/MutableCharacterStatsAPI; 1 
L1481:  invokeinterface InterfaceMethod com/fs/starfarer/api/characters/MutableCharacterStatsAPI getDynamic ()Lcom/fs/starfarer/api/util/DynamicStatsAPI; 1 
L1486:  ldc_w 'deployment_points_fraction_of_battle_size_bonus_mod' 
L1489:  invokeinterface InterfaceMethod com/fs/starfarer/api/util/DynamicStatsAPI getMod (Ljava/lang/String;)Lcom/fs/starfarer/api/combat/StatBonus; 2 
L1494:  fconst_0 
L1495:  invokevirtual Method com/fs/starfarer/api/combat/StatBonus computeEffective (F)F 
L1498:  fstore 19 
L1500:  invokestatic Method com/fs/starfarer/api/Global getSettings ()Lcom/fs/starfarer/api/SettingsAPI; 
L1503:  invokeinterface InterfaceMethod com/fs/starfarer/api/SettingsAPI getBattleSize ()I 1 
L1508:  istore 20 
L1510:  iload 20 
L1512:  i2f 
L1513:  fload 19 
L1515:  fmul 
L1516:  invokestatic Method java/lang/Math round (F)I 
L1519:  i2f 
L1520:  fstore 19 
L1522:  fload 16 
L1524:  fload 19 
L1526:  fadd 
L1527:  fstore 16 
L1529:  aload 17 
L1531:  invokeinterface InterfaceMethod com/fs/starfarer/api/characters/PersonAPI getStats ()Lcom/fs/starfarer/api/characters/MutableCharacterStatsAPI; 1 
L1536:  invokeinterface InterfaceMethod com/fs/starfarer/api/characters/MutableCharacterStatsAPI getDynamic ()Lcom/fs/starfarer/api/util/DynamicStatsAPI; 1 
L1541:  ldc_w 'deployment_points_min_fraction_of_battle_size_bonus_mod' 
L1544:  invokeinterface InterfaceMethod com/fs/starfarer/api/util/DynamicStatsAPI getMod (Ljava/lang/String;)Lcom/fs/starfarer/api/combat/StatBonus; 2 
L1549:  fconst_0 
L1550:  invokevirtual Method com/fs/starfarer/api/combat/StatBonus computeEffective (F)F 
L1553:  fstore 21 
L1555:  iload 20 
L1557:  i2f 
L1558:  fload 21 
L1560:  fmul 
L1561:  invokestatic Method java/lang/Math round (F)I 
L1564:  i2f 
L1565:  fstore 21 
L1567:  fload 16 
L1569:  fload 21 
L1571:  invokestatic Method java/lang/Math max (FF)F 
L1574:  fstore 16 

        .stack same_extended 
L1576:  iload 10 
L1578:  i2f 
L1579:  fstore 19 
L1581:  fload 19 
L1583:  iload 11 
L1585:  i2f 
L1586:  fload 15 
L1588:  fadd 
L1589:  invokestatic Method java/lang/Math min (FF)F 
L1592:  invokestatic Method java/lang/Math round (F)I 
L1595:  istore 11 
L1597:  fload 19 
L1599:  iload 12 
L1601:  i2f 
L1602:  fload 16 
L1604:  fadd 
L1605:  invokestatic Method java/lang/Math min (FF)F 
L1608:  invokestatic Method java/lang/Math round (F)I 
L1611:  istore 12 
L1613:  aload_0 
L1614:  invokevirtual Method com/fs/starfarer/combat/CombatEngine isSimulation ()Z 
L1617:  ifeq L1654 
L1620:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'oÒ0000' ()I 
L1623:  i2f 
L1624:  fstore 20 
L1626:  ldc_w 'minFractionOfBattleSizeForSmallerSide' 
L1629:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'ö00000' (Ljava/lang/String;)F 
L1632:  fstore 21 
L1634:  fload 20 
L1636:  fconst_1 
L1637:  fload 21 
L1639:  fsub 
L1640:  fmul 
L1641:  invokestatic Method java/lang/Math round (F)I 
L1644:  istore 22 
L1646:  iload 22 
L1648:  istore 11 
L1650:  iload 22 
L1652:  istore 12 

        .stack append Float 
L1654:  aload_1 
L1655:  iload 11 
L1657:  invokevirtual Method com/fs/starfarer/combat/CombatFleetManager setMaxStrength (I)V 
L1660:  aload_2 
L1661:  iload 12 
L1663:  invokevirtual Method com/fs/starfarer/combat/CombatFleetManager setMaxStrength (I)V 
L1666:  return 
L1667:  
    .end code 
.end method 

.method public setMaxFleetPoints : (Lcom/fs/starfarer/api/mission/FleetSide;I)V 
    .code stack 2 locals 4 
L0:     aload_0 
L1:     aload_1 
L2:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (Lcom/fs/starfarer/api/mission/FleetSide;)Lcom/fs/starfarer/api/combat/CombatFleetManagerAPI; 
L5:     checkcast com/fs/starfarer/combat/CombatFleetManager 
L8:     astore_3 
L9:     aload_3 
L10:    ifnull L23 
L13:    aload_3 
L14:    iload_2 
L15:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager setMaxStrength (I)V 
L18:    aload_0 
L19:    iconst_1 
L20:    putfield Field com/fs/starfarer/combat/CombatEngine 'ØÕ0000' Z 

        .stack append Object com/fs/starfarer/combat/CombatFleetManager 
L23:    return 
L24:    
    .end code 
.end method 

.method public reportShipDisabled : (Lcom/fs/starfarer/combat/entities/Ship;)V 
    .code stack 2 locals 4 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'interface.Object' Ljava/util/List; 
L4:     invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L9:     astore_3 
L10:    goto L30 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/entities/Ship Top Object java/util/Iterator 
            stack 
        .end stack 
L13:    aload_3 
L14:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L19:    checkcast com/fs/starfarer/combat/oooO 
L22:    astore_2 
L23:    aload_2 
L24:    aload_1 
L25:    invokeinterface InterfaceMethod com/fs/starfarer/combat/oooO shipDisabled (Lcom/fs/starfarer/combat/entities/Ship;)V 2 

        .stack same 
L30:    aload_3 
L31:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L36:    ifne L13 
L39:    return 
L40:    
    .end code 
.end method 

.method public reportFleetMemberCaptured : (Lcom/fs/starfarer/campaign/fleet/FleetMember;)V 
    .code stack 2 locals 4 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'interface.Object' Ljava/util/List; 
L4:     invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L9:     astore_3 
L10:    goto L30 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/campaign/fleet/FleetMember Top Object java/util/Iterator 
            stack 
        .end stack 
L13:    aload_3 
L14:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L19:    checkcast com/fs/starfarer/combat/oooO 
L22:    astore_2 
L23:    aload_2 
L24:    aload_1 
L25:    invokeinterface InterfaceMethod com/fs/starfarer/combat/oooO fleetMemberCaptured (Lcom/fs/starfarer/campaign/fleet/FleetMember;)V 2 

        .stack same 
L30:    aload_3 
L31:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L36:    ifne L13 
L39:    return 
L40:    
    .end code 
.end method 

.method public reportShipDestroyed : (Lcom/fs/starfarer/combat/entities/Ship;)V 
    .code stack 2 locals 4 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'interface.Object' Ljava/util/List; 
L4:     invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L9:     astore_3 
L10:    goto L30 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/entities/Ship Top Object java/util/Iterator 
            stack 
        .end stack 
L13:    aload_3 
L14:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L19:    checkcast com/fs/starfarer/combat/oooO 
L22:    astore_2 
L23:    aload_2 
L24:    aload_1 
L25:    invokeinterface InterfaceMethod com/fs/starfarer/combat/oooO shipDestroyed (Lcom/fs/starfarer/combat/entities/Ship;)V 2 

        .stack same 
L30:    aload_3 
L31:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L36:    ifne L13 
L39:    return 
L40:    
    .end code 
.end method 

.method public reportFighterWingDestroyed : (Lcom/fs/starfarer/combat/ai/M;)V 
    .code stack 2 locals 4 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'interface.Object' Ljava/util/List; 
L4:     invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L9:     astore_3 
L10:    goto L30 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/ai/M Top Object java/util/Iterator 
            stack 
        .end stack 
L13:    aload_3 
L14:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L19:    checkcast com/fs/starfarer/combat/oooO 
L22:    astore_2 
L23:    aload_2 
L24:    aload_1 
L25:    invokeinterface InterfaceMethod com/fs/starfarer/combat/oooO fighterWingDestroyed (Lcom/fs/starfarer/combat/ai/M;)V 2 

        .stack same 
L30:    aload_3 
L31:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L36:    ifne L13 
L39:    return 
L40:    
    .end code 
.end method 

.method public reportObjectiveChangedOwner : (ILcom/fs/starfarer/api/combat/BattleObjectiveAPI;)V 
    .code stack 3 locals 5 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'interface.Object' Ljava/util/List; 
L4:     invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L9:     astore 4 
L11:    goto L33 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Integer Object com/fs/starfarer/api/combat/BattleObjectiveAPI Top Object java/util/Iterator 
            stack 
        .end stack 
L14:    aload 4 
L16:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L21:    checkcast com/fs/starfarer/combat/oooO 
L24:    astore_3 
L25:    aload_3 
L26:    iload_1 
L27:    aload_2 
L28:    invokeinterface InterfaceMethod com/fs/starfarer/combat/oooO objectiveChangedOwner (ILcom/fs/starfarer/api/combat/BattleObjectiveAPI;)V 3 

        .stack same 
L33:    aload 4 
L35:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L40:    ifne L14 
L43:    return 
L44:    
    .end code 
.end method 

.method public reportFleetMemberDeployed : (Lcom/fs/starfarer/combat/CombatFleetManager$O0;)V 
    .code stack 2 locals 4 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'interface.Object' Ljava/util/List; 
L4:     invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L9:     astore_3 
L10:    goto L30 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager$O0 Top Object java/util/Iterator 
            stack 
        .end stack 
L13:    aload_3 
L14:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L19:    checkcast com/fs/starfarer/combat/oooO 
L22:    astore_2 
L23:    aload_2 
L24:    aload_1 
L25:    invokeinterface InterfaceMethod com/fs/starfarer/combat/oooO fleetMemberDeployed (Lcom/fs/starfarer/combat/CombatFleetManager$O0;)V 2 

        .stack same 
L30:    aload_3 
L31:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L36:    ifne L13 
L39:    aload_1 
L40:    invokestatic Method com/fs/starfarer/api/combat/listeners/CombatListenerUtil reportFleetMemberDeployed (Lcom/fs/starfarer/api/combat/DeployedFleetMemberAPI;)V 
L43:    return 
L44:    
    .end code 
.end method 

.method public reportFleetMemberRetreated : (Lcom/fs/starfarer/combat/CombatFleetManager$O0;)V 
    .code stack 2 locals 4 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'interface.Object' Ljava/util/List; 
L4:     invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L9:     astore_3 
L10:    goto L30 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager$O0 Top Object java/util/Iterator 
            stack 
        .end stack 
L13:    aload_3 
L14:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L19:    checkcast com/fs/starfarer/combat/oooO 
L22:    astore_2 
L23:    aload_2 
L24:    aload_1 
L25:    invokeinterface InterfaceMethod com/fs/starfarer/combat/oooO fleetMemberRetreated (Lcom/fs/starfarer/combat/CombatFleetManager$O0;)V 2 

        .stack same 
L30:    aload_3 
L31:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L36:    ifne L13 
L39:    return 
L40:    
    .end code 
.end method 

.method public addListener : (Lcom/fs/starfarer/combat/oooO;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'interface.Object' Ljava/util/List; 
L4:     aload_1 
L5:     invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L10:    pop 
L11:    return 
L12:    
    .end code 
.end method 

.method public removeListener : (Lcom/fs/starfarer/combat/oooO;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'interface.Object' Ljava/util/List; 
L4:     aload_1 
L5:     invokeinterface InterfaceMethod java/util/List remove (Ljava/lang/Object;)Z 2 
L10:    pop 
L11:    return 
L12:    
    .end code 
.end method 

.method public notifyFighterEnteredLaunchBay : (Lcom/fs/starfarer/combat/entities/Ship;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'null.String' Ljava/util/List; 
L4:     aload_1 
L5:     invokeinterface InterfaceMethod java/util/List contains (Ljava/lang/Object;)Z 2 
L10:    ifne L24 
L13:    aload_0 
L14:    getfield Field com/fs/starfarer/combat/CombatEngine 'null.String' Ljava/util/List; 
L17:    aload_1 
L18:    invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L23:    pop 

        .stack same 
L24:    return 
L25:    
    .end code 
.end method 

.method public notifyFighterLeftLaunchBay : (Lcom/fs/starfarer/combat/entities/Ship;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'null.String' Ljava/util/List; 
L4:     aload_1 
L5:     invokeinterface InterfaceMethod java/util/List remove (Ljava/lang/Object;)Z 2 
L10:    pop 
L11:    return 
L12:    
    .end code 
.end method 

.method public isShipAlive : (Lcom/fs/starfarer/api/combat/ShipAPI;)Z 
    .code stack 2 locals 2 
L0:     aload_1 
L1:     ifnull L75 
L4:     aload_1 
L5:     invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ShipAPI isHulk ()Z 1 
L10:    ifne L75 
L13:    aload_1 
L14:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ShipAPI getHitpoints ()F 1 
L19:    fconst_0 
L20:    fcmpl 
L21:    ifle L75 
L24:    aload_1 
L25:    checkcast com/fs/starfarer/combat/entities/Ship 
L28:    invokevirtual Method com/fs/starfarer/combat/entities/Ship wasRemoved ()Z 
L31:    ifeq L47 
L34:    aload_0 
L35:    getfield Field com/fs/starfarer/combat/CombatEngine 'ØO0000' Ljava/util/List; 
L38:    aload_1 
L39:    invokeinterface InterfaceMethod java/util/List contains (Ljava/lang/Object;)Z 2 
L44:    ifeq L60 

        .stack same 
L47:    aload_0 
L48:    getfield Field com/fs/starfarer/combat/CombatEngine 'while.Object' Ljava/util/List; 
L51:    aload_1 
L52:    invokeinterface InterfaceMethod java/util/List contains (Ljava/lang/Object;)Z 2 
L57:    ifeq L73 

        .stack same 
L60:    aload_0 
L61:    getfield Field com/fs/starfarer/combat/CombatEngine 'null.String' Ljava/util/List; 
L64:    aload_1 
L65:    invokeinterface InterfaceMethod java/util/List contains (Ljava/lang/Object;)Z 2 
L70:    ifeq L75 

        .stack same 
L73:    iconst_1 
L74:    ireturn 

        .stack same 
L75:    iconst_0 
L76:    ireturn 
L77:    
    .end code 
.end method 

.method public isInEngine : (Lcom/fs/starfarer/api/combat/ShipAPI;)Z 
    .code stack 2 locals 2 
L0:     aload_1 
L1:     ifnull L55 
L4:     aload_1 
L5:     checkcast com/fs/starfarer/combat/entities/Ship 
L8:     invokevirtual Method com/fs/starfarer/combat/entities/Ship wasRemoved ()Z 
L11:    ifeq L27 
L14:    aload_0 
L15:    getfield Field com/fs/starfarer/combat/CombatEngine 'ØO0000' Ljava/util/List; 
L18:    aload_1 
L19:    invokeinterface InterfaceMethod java/util/List contains (Ljava/lang/Object;)Z 2 
L24:    ifeq L40 

        .stack same 
L27:    aload_0 
L28:    getfield Field com/fs/starfarer/combat/CombatEngine 'while.Object' Ljava/util/List; 
L31:    aload_1 
L32:    invokeinterface InterfaceMethod java/util/List contains (Ljava/lang/Object;)Z 2 
L37:    ifeq L53 

        .stack same 
L40:    aload_0 
L41:    getfield Field com/fs/starfarer/combat/CombatEngine 'null.String' Ljava/util/List; 
L44:    aload_1 
L45:    invokeinterface InterfaceMethod java/util/List contains (Ljava/lang/Object;)Z 2 
L50:    ifeq L55 

        .stack same 
L53:    iconst_1 
L54:    ireturn 

        .stack same 
L55:    iconst_0 
L56:    ireturn 
L57:    
    .end code 
.end method 

.method public isMissileAlive : (Lcom/fs/starfarer/api/combat/MissileAPI;)Z 
    .code stack 2 locals 2 
L0:     aload_1 
L1:     ifnull L53 
L4:     aload_1 
L5:     invokeinterface InterfaceMethod com/fs/starfarer/api/combat/MissileAPI getHitpoints ()F 1 
L10:    fconst_0 
L11:    fcmpl 
L12:    ifle L53 
L15:    aload_1 
L16:    checkcast com/fs/starfarer/combat/entities/Missile 
L19:    invokevirtual Method com/fs/starfarer/combat/entities/Missile wasRemoved ()Z 
L22:    ifeq L38 
L25:    aload_0 
L26:    getfield Field com/fs/starfarer/combat/CombatEngine 'ØO0000' Ljava/util/List; 
L29:    aload_1 
L30:    invokeinterface InterfaceMethod java/util/List contains (Ljava/lang/Object;)Z 2 
L35:    ifeq L53 

        .stack same 
L38:    aload_0 
L39:    getfield Field com/fs/starfarer/combat/CombatEngine 'while.Object' Ljava/util/List; 
L42:    aload_1 
L43:    invokeinterface InterfaceMethod java/util/List contains (Ljava/lang/Object;)Z 2 
L48:    ifne L53 
L51:    iconst_1 
L52:    ireturn 

        .stack same 
L53:    iconst_0 
L54:    ireturn 
L55:    
    .end code 
.end method 

.method public getFightersInLaunchBays : ()Ljava/util/List; 
    .signature ()Ljava/util/List<Lcom/fs/starfarer/combat/entities/Ship;>; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'null.String' Ljava/util/List; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public isPaused : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'õÔ0000' Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public setPaused : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/CombatEngine 'õÔ0000' Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public getActiveFighterWings : ()Ljava/util/Set; 
    .signature ()Ljava/util/Set<Lcom/fs/starfarer/combat/ai/M;>; 
    .code stack 2 locals 5 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getObjects ()Lcom/fs/util/container/repo/ObjectRepository; 
L4:     ldc_w Class com/fs/starfarer/combat/entities/Ship 
L7:     invokevirtual Method com/fs/util/container/repo/ObjectRepository getList (Ljava/lang/Class;)Ljava/util/List; 
L10:    astore_1 
L11:    new java/util/HashSet 
L14:    dup 
L15:    invokespecial Method java/util/HashSet <init> ()V 
L18:    astore_2 
L19:    aload_1 
L20:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L25:    astore 4 
L27:    goto L69 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object java/util/List Object java/util/Set Top Object java/util/Iterator 
            stack 
        .end stack 
L30:    aload 4 
L32:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L37:    checkcast com/fs/starfarer/combat/entities/Ship 
L40:    astore_3 
L41:    aload_3 
L42:    invokevirtual Method com/fs/starfarer/combat/entities/Ship isHulk ()Z 
L45:    ifeq L51 
L48:    goto L69 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object java/util/List Object java/util/Set Object com/fs/starfarer/combat/entities/Ship Object java/util/Iterator 
            stack 
        .end stack 
L51:    aload_3 
L52:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getWing ()Lcom/fs/starfarer/combat/ai/M; 
L55:    ifnull L69 
L58:    aload_2 
L59:    aload_3 
L60:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getWing ()Lcom/fs/starfarer/combat/ai/M; 
L63:    invokeinterface InterfaceMethod java/util/Set add (Ljava/lang/Object;)Z 2 
L68:    pop 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object java/util/List Object java/util/Set Top Object java/util/Iterator 
            stack 
        .end stack 
L69:    aload 4 
L71:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L76:    ifne L30 
L79:    aload_2 
L80:    areturn 
L81:    
    .end code 
.end method 

.method public isWingInPlay : (Lcom/fs/starfarer/combat/ai/M;)Z 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getActiveFighterWings ()Ljava/util/Set; 
L4:     aload_1 
L5:     invokeinterface InterfaceMethod java/util/Set contains (Ljava/lang/Object;)Z 2 
L10:    ireturn 
L11:    
    .end code 
.end method 

.method public getGroupOrder : (Lcom/fs/starfarer/combat/entities/Ship;)Lcom/fs/starfarer/combat/private; 
    .code stack 2 locals 3 
L0:     aload_0 
L1:     aload_1 
L2:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getBattleGroup (Lcom/fs/starfarer/combat/entities/Ship;)Lcom/fs/starfarer/combat/Q; 
L5:     astore_2 
L6:     aload_2 
L7:     ifnonnull L12 
L10:    aconst_null 
L11:    areturn 

        .stack append Object com/fs/starfarer/combat/Q 
L12:    aload_2 
L13:    invokevirtual Method com/fs/starfarer/combat/Q do ()Lcom/fs/starfarer/combat/private; 
L16:    areturn 
L17:    
    .end code 
.end method 

.method public getBattleGroup : (Lcom/fs/starfarer/combat/entities/Ship;)Lcom/fs/starfarer/combat/Q; 
    .code stack 2 locals 6 
L0:     aload_1 
L1:     ifnonnull L6 
L4:     aconst_null 
L5:     areturn 

        .stack same 
L6:     aload_1 
L7:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getOwner ()I 
L10:    istore_2 
L11:    aload_0 
L12:    iload_2 
L13:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L16:    astore_3 
L17:    aload_3 
L18:    ifnonnull L23 
L21:    aconst_null 
L22:    areturn 

        .stack append Integer Object com/fs/starfarer/combat/CombatFleetManager 
L23:    aload_3 
L24:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getGroupManager ()Lcom/fs/starfarer/combat/OOoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO; 
L27:    astore 4 
L29:    aload 4 
L31:    aload_1 
L32:    invokevirtual Method com/fs/starfarer/combat/OOoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO o00000 (Lcom/fs/starfarer/combat/entities/Ship;)Lcom/fs/starfarer/combat/Q; 
L35:    astore 5 
L37:    aload 5 
L39:    areturn 
L40:    
    .end code 
.end method 

.method public getBattleGroupOrder : (Lcom/fs/starfarer/combat/entities/Ship;)Lcom/fs/starfarer/combat/private; 
    .code stack 2 locals 3 
L0:     aload_0 
L1:     aload_1 
L2:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getBattleGroup (Lcom/fs/starfarer/combat/entities/Ship;)Lcom/fs/starfarer/combat/Q; 
L5:     astore_2 
L6:     aload_2 
L7:     ifnonnull L12 
L10:    aconst_null 
L11:    areturn 

        .stack append Object com/fs/starfarer/combat/Q 
L12:    aload_2 
L13:    invokevirtual Method com/fs/starfarer/combat/Q do ()Lcom/fs/starfarer/combat/private; 
L16:    areturn 
L17:    
    .end code 
.end method 

.method public getPlayerId : ()I 
    .code stack 1 locals 1 
L0:     iconst_0 
L1:     ireturn 
L2:     
    .end code 
.end method 

.method public reportOrderGiven : (ILcom/fs/starfarer/combat/private;)V 
    .code stack 3 locals 5 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'interface.Object' Ljava/util/List; 
L4:     invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L9:     astore 4 
L11:    goto L33 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Integer Object com/fs/starfarer/combat/private Top Object java/util/Iterator 
            stack 
        .end stack 
L14:    aload 4 
L16:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L21:    checkcast com/fs/starfarer/combat/oooO 
L24:    astore_3 
L25:    aload_3 
L26:    iload_1 
L27:    aload_2 
L28:    invokeinterface InterfaceMethod com/fs/starfarer/combat/oooO orderGiven (ILcom/fs/starfarer/combat/private;)V 3 

        .stack same 
L33:    aload 4 
L35:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L40:    ifne L14 
L43:    return 
L44:    
    .end code 
.end method 

.method public getAllShips : ()Ljava/util/List; 
    .signature ()Ljava/util/List<Lcom/fs/starfarer/api/combat/ShipAPI;>; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getShips ()Ljava/util/List; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public getShips : ()Ljava/util/List; 
    .signature ()Ljava/util/List<Lcom/fs/starfarer/api/combat/ShipAPI;>; 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'ÖÓ0000' Lcom/fs/util/container/repo/ObjectRepository; 
L4:     ldc_w Class com/fs/starfarer/api/combat/ShipAPI 
L7:     invokevirtual Method com/fs/util/container/repo/ObjectRepository getList (Ljava/lang/Class;)Ljava/util/List; 
L10:    areturn 
L11:    
    .end code 
.end method 

.method public getBeams : ()Ljava/util/List; 
    .signature ()Ljava/util/List<Lcom/fs/starfarer/api/combat/BeamAPI;>; 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'ÖÓ0000' Lcom/fs/util/container/repo/ObjectRepository; 
L4:     ldc_w Class com/fs/starfarer/api/combat/BeamAPI 
L7:     invokevirtual Method com/fs/util/container/repo/ObjectRepository getList (Ljava/lang/Class;)Ljava/util/List; 
L10:    areturn 
L11:    
    .end code 
.end method 

.method public getMissiles : ()Ljava/util/List; 
    .signature ()Ljava/util/List<Lcom/fs/starfarer/api/combat/MissileAPI;>; 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'ÖÓ0000' Lcom/fs/util/container/repo/ObjectRepository; 
L4:     ldc_w Class com/fs/starfarer/api/combat/MissileAPI 
L7:     invokevirtual Method com/fs/util/container/repo/ObjectRepository getList (Ljava/lang/Class;)Ljava/util/List; 
L10:    areturn 
L11:    
    .end code 
.end method 

.method public getProjectiles : ()Ljava/util/List; 
    .signature ()Ljava/util/List<Lcom/fs/starfarer/api/combat/DamagingProjectileAPI;>; 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'ÖÓ0000' Lcom/fs/util/container/repo/ObjectRepository; 
L4:     ldc_w Class com/fs/starfarer/api/combat/DamagingProjectileAPI 
L7:     invokevirtual Method com/fs/util/container/repo/ObjectRepository getList (Ljava/lang/Class;)Ljava/util/List; 
L10:    areturn 
L11:    
    .end code 
.end method 

.method public getEntities : ()Ljava/util/List; 
    .signature ()Ljava/util/List<Lcom/fs/starfarer/api/combat/CombatEntityAPI;>; 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'ÖÓ0000' Lcom/fs/util/container/repo/ObjectRepository; 
L4:     ldc_w Class com/fs/starfarer/api/combat/CombatEntityAPI 
L7:     invokevirtual Method com/fs/util/container/repo/ObjectRepository getList (Ljava/lang/Class;)Ljava/util/List; 
L10:    areturn 
L11:    
    .end code 
.end method 

.method public isEntityInPlay : (Lcom/fs/starfarer/api/combat/CombatEntityAPI;)Z 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'ÖÓ0000' Lcom/fs/util/container/repo/ObjectRepository; 
L4:     aload_1 
L5:     invokevirtual Method com/fs/util/container/repo/ObjectRepository contains (Ljava/lang/Object;)Z 
L8:     ifeq L24 
L11:    aload_0 
L12:    getfield Field com/fs/starfarer/combat/CombatEngine 'while.Object' Ljava/util/List; 
L15:    aload_1 
L16:    invokeinterface InterfaceMethod java/util/List contains (Ljava/lang/Object;)Z 2 
L21:    ifeq L39 

        .stack same 
L24:    aload_0 
L25:    getfield Field com/fs/starfarer/combat/CombatEngine 'ØO0000' Ljava/util/List; 
L28:    aload_1 
L29:    invokeinterface InterfaceMethod java/util/List contains (Ljava/lang/Object;)Z 2 
L34:    ifne L39 
L37:    iconst_0 
L38:    ireturn 

        .stack same 
L39:    iconst_1 
L40:    ireturn 
L41:    
    .end code 
.end method 

.method public removeEntity : (Lcom/fs/starfarer/api/combat/CombatEntityAPI;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     invokevirtual Method com/fs/starfarer/combat/CombatEngine removeObject (Ljava/lang/Object;)V 
L5:     return 
L6:     
    .end code 
.end method 

.method public getAsteroids : ()Ljava/util/List; 
    .signature ()Ljava/util/List<Lcom/fs/starfarer/api/combat/CombatEntityAPI;>; 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'ÖÓ0000' Lcom/fs/util/container/repo/ObjectRepository; 
L4:     ldc_w Class com/fs/starfarer/combat/entities/terrain/Asteroid 
L7:     invokevirtual Method com/fs/util/container/repo/ObjectRepository getList (Ljava/lang/Class;)Ljava/util/List; 
L10:    areturn 
L11:    
    .end code 
.end method 

.method public getAllObjectives : ()Ljava/util/List; 
    .signature ()Ljava/util/List<Lcom/fs/starfarer/api/combat/BattleObjectiveAPI;>; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getObjectives ()Ljava/util/List; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public getObjectives : ()Ljava/util/List; 
    .signature ()Ljava/util/List<Lcom/fs/starfarer/api/combat/BattleObjectiveAPI;>; 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'ÖÓ0000' Lcom/fs/util/container/repo/ObjectRepository; 
L4:     ldc_w Class com/fs/starfarer/api/combat/BattleObjectiveAPI 
L7:     invokevirtual Method com/fs/util/container/repo/ObjectRepository getList (Ljava/lang/Class;)Ljava/util/List; 
L10:    areturn 
L11:    
    .end code 
.end method 

.method public getOwnerOfAllObjectives : ()I 
    .code stack 2 locals 6 
L0:     invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L3:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getAllObjectives ()Ljava/util/List; 
L6:     astore_1 
L7:     aload_1 
L8:     invokeinterface InterfaceMethod java/util/List isEmpty ()Z 1 
L13:    ifeq L18 
L16:    iconst_m1 
L17:    ireturn 

        .stack append Object java/util/List 
L18:    iconst_m1 
L19:    istore_2 
L20:    aload_1 
L21:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L26:    astore 4 
L28:    goto L60 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object java/util/List Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L31:    aload 4 
L33:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L38:    checkcast com/fs/starfarer/api/combat/BattleObjectiveAPI 
L41:    astore_3 
L42:    aload_3 
L43:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/BattleObjectiveAPI getOwner ()I 1 
L48:    bipush 100 
L50:    if_icmpeq L60 
L53:    aload_3 
L54:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/BattleObjectiveAPI getOwner ()I 1 
L59:    istore_2 

        .stack same 
L60:    aload 4 
L62:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L67:    ifne L31 
L70:    iload_2 
L71:    iconst_m1 
L72:    if_icmpne L77 
L75:    iconst_m1 
L76:    ireturn 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object java/util/List Integer 
            stack 
        .end stack 
L77:    iconst_1 
L78:    istore_3 
L79:    aload_1 
L80:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L85:    astore 5 
L87:    goto L118 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object java/util/List Integer Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L90:    aload 5 
L92:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L97:    checkcast com/fs/starfarer/api/combat/BattleObjectiveAPI 
L100:   astore 4 
L102:   aload 4 
L104:   invokeinterface InterfaceMethod com/fs/starfarer/api/combat/BattleObjectiveAPI getOwner ()I 1 
L109:   iload_2 
L110:   if_icmpeq L118 
L113:   iconst_0 
L114:   istore_3 
L115:   goto L128 

        .stack same 
L118:   aload 5 
L120:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L125:   ifne L90 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object java/util/List Integer Integer 
            stack 
        .end stack 
L128:   iload_3 
L129:   ifeq L134 
L132:   iload_2 
L133:   ireturn 

        .stack same 
L134:   iconst_m1 
L135:   ireturn 
L136:   
    .end code 
.end method 

.method public giveDirectOrder : (Lcom/fs/starfarer/combat/entities/Ship;Lcom/fs/starfarer/combat/tasks/Object;)V 
    .code stack 3 locals 6 
L0:     aload_0 
L1:     aload_1 
L2:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getOwner ()I 
L5:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L8:     astore_3 
L9:     aload_3 
L10:    aload_1 
L11:    invokevirtual Method com/fs/starfarer/combat/entities/Ship isAlly ()Z 
L14:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getTaskManager (Z)Lcom/fs/starfarer/combat/tasks/CombatTaskManager; 
L17:    astore 4 
L19:    aload_3 
L20:    aload_1 
L21:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getDeployedFleetMember (Lcom/fs/starfarer/combat/entities/Ship;)Lcom/fs/starfarer/combat/CombatFleetManager$O0; 
L24:    astore 5 
L26:    aload 4 
L28:    aload 5 
L30:    aload_2 
L31:    invokevirtual Method com/fs/starfarer/combat/tasks/CombatTaskManager giveDirectOrder (Lcom/fs/starfarer/combat/CombatFleetManager$O0;Lcom/fs/starfarer/combat/tasks/Object;)V 
L34:    return 
L35:    
    .end code 
.end method 

.method public getFleetManager : (Lcom/fs/starfarer/api/mission/FleetSide;)Lcom/fs/starfarer/api/combat/CombatFleetManagerAPI; 
    .code stack 2 locals 2 
L0:     aload_1 
L1:     getstatic Field com/fs/starfarer/api/mission/FleetSide PLAYER Lcom/fs/starfarer/api/mission/FleetSide; 
L4:     if_acmpne L13 
L7:     aload_0 
L8:     iconst_0 
L9:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L12:    areturn 

        .stack same 
L13:    aload_0 
L14:    iconst_1 
L15:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L18:    areturn 
L19:    
    .end code 
.end method 

.method public setShowEnemyDeploymentDialog : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/CombatEngine 'Øo0000' Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public isDeployEnemy : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'Øo0000' Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public applyDamage : (Lcom/fs/starfarer/api/combat/CombatEntityAPI;Lorg/lwjgl/util/vector/Vector2f;FLcom/fs/starfarer/api/combat/DamageType;FZZLjava/lang/Object;)V 
    .code stack 10 locals 9 
L0:     aload_0 
L1:     aload_1 
L2:     aload_2 
L3:     fload_3 
L4:     aload 4 
L6:     fload 5 
L8:     iload 6 
L10:    iload 7 
L12:    aload 8 
L14:    iconst_0 
L15:    invokevirtual Method com/fs/starfarer/combat/CombatEngine applyDamage (Lcom/fs/starfarer/api/combat/CombatEntityAPI;Lorg/lwjgl/util/vector/Vector2f;FLcom/fs/starfarer/api/combat/DamageType;FZZLjava/lang/Object;Z)V 
L18:    return 
L19:    
    .end code 
.end method 

.method public applyDamage : (Lcom/fs/starfarer/api/combat/CombatEntityAPI;Lorg/lwjgl/util/vector/Vector2f;FLcom/fs/starfarer/api/combat/DamageType;FZZLjava/lang/Object;Z)V 
    .code stack 11 locals 10 
L0:     aload_0 
L1:     aconst_null 
L2:     aload_1 
L3:     aload_2 
L4:     fload_3 
L5:     aload 4 
L7:     fload 5 
L9:     iload 6 
L11:    iload 7 
L13:    aload 8 
L15:    iload 9 
L17:    invokevirtual Method com/fs/starfarer/combat/CombatEngine applyDamage (Ljava/lang/Object;Lcom/fs/starfarer/api/combat/CombatEntityAPI;Lorg/lwjgl/util/vector/Vector2f;FLcom/fs/starfarer/api/combat/DamageType;FZZLjava/lang/Object;Z)V 
L20:    return 
L21:    
    .end code 
.end method 

.method public applyDamage : (Ljava/lang/Object;Lcom/fs/starfarer/api/combat/CombatEntityAPI;Lorg/lwjgl/util/vector/Vector2f;FLcom/fs/starfarer/api/combat/DamageType;FZZLjava/lang/Object;Z)V 
    .code stack 6 locals 17 
L0:     aload_2 
L1:     instanceof com/fs/starfarer/combat/entities/BaseEntity 
L4:     ifne L8 
L7:     return 

        .stack same 
L8:     aload_2 
L9:     instanceof com/fs/starfarer/combat/entities/C 
L12:    ifeq L29 
L15:    aload_2 
L16:    checkcast com/fs/starfarer/combat/entities/C 
L19:    astore 11 
L21:    aload 11 
L23:    aload_1 
L24:    invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/C setParamAboutToApplyDamage (Ljava/lang/Object;)V 2 

        .stack same 
L29:    iconst_0 
L30:    istore 11 
L32:    iload 7 
L34:    ifne L98 
L37:    aload_2 
L38:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatEntityAPI getShield ()Lcom/fs/starfarer/api/combat/ShieldAPI; 1 
L43:    ifnull L98 
L46:    aload_2 
L47:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatEntityAPI getShield ()Lcom/fs/starfarer/api/combat/ShieldAPI; 1 
L52:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ShieldAPI isOn ()Z 1 
L57:    ifeq L98 
L60:    aload_2 
L61:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatEntityAPI getShield ()Lcom/fs/starfarer/api/combat/ShieldAPI; 1 
L66:    astore 12 
L68:    aload 12 
L70:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ShieldAPI getFacing ()F 1 
L75:    aload 12 
L77:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ShieldAPI getActiveArc ()F 1 
L82:    aload 12 
L84:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ShieldAPI getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L89:    aload_3 
L90:    invokestatic Method com/fs/starfarer/prototype/Utils 'Ó00000' (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)F 
L93:    invokestatic Method com/fs/starfarer/prototype/Utils 'Ô00000' (FFF)Z 
L96:    istore 11 

        .stack append Integer 
L98:    aload_2 
L99:    checkcast com/fs/starfarer/combat/entities/BaseEntity 
L102:   astore 12 
L104:   new com/fs/starfarer/combat/E/F 
L107:   dup 
L108:   fload 4 
L110:   iconst_0 
L111:   aload 5 
L113:   invokespecial Method com/fs/starfarer/combat/E/F <init> (FZLcom/fs/starfarer/api/combat/DamageType;)V 
L116:   astore 13 
L118:   aload 13 
L120:   fload 6 
L122:   invokevirtual Method com/fs/starfarer/combat/E/F setFluxComponent (F)V 
L125:   aload 12 
L127:   aload_3 
L128:   aload 13 
L130:   iload 11 
L132:   fconst_1 
L133:   aload 9 
L135:   invokevirtual Method com/fs/starfarer/combat/entities/BaseEntity applyDamage (Lorg/lwjgl/util/vector/Vector2f;Lcom/fs/starfarer/combat/E/F;ZFLjava/lang/Object;)Lcom/fs/starfarer/combat/entities/ship/G; 
L138:   astore 14 
L140:   iload 10 
L142:   ifeq L158 
L145:   aload 14 
L147:   aload_3 
L148:   aload_2 
L149:   invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatEntityAPI getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 1 
L154:   aload_2 
L155:   invokestatic Method com/fs/starfarer/combat/entities/ship/A/I o00000 (Lcom/fs/starfarer/combat/entities/ship/G;Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;Lcom/fs/starfarer/api/combat/CombatEntityAPI;)V 

        .stack append Object com/fs/starfarer/combat/entities/BaseEntity Object com/fs/starfarer/combat/E/F Object com/fs/starfarer/combat/entities/ship/G 
L158:   aload_2 
L159:   instanceof com/fs/starfarer/combat/entities/Ship 
L162:   ifeq L235 
L165:   iload 8 
L167:   ifeq L235 
L170:   iload 11 
L172:   ifeq L235 
L175:   aload_2 
L176:   checkcast com/fs/starfarer/combat/entities/Ship 
L179:   astore 15 
L181:   aload 15 
L183:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getShield ()Lcom/fs/starfarer/combat/systems/G; 
L186:   invokevirtual Method com/fs/starfarer/combat/systems/G getFluxPerPointOfDamage ()F 
L189:   aload 15 
L191:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getStats ()Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L194:   invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getShieldDamageTakenMult ()Lcom/fs/starfarer/api/combat/MutableStat; 
L197:   invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L200:   fmul 
L201:   fload 4 
L203:   fmul 
L204:   aload 5 
L206:   invokevirtual Method com/fs/starfarer/api/combat/DamageType getShieldMult ()F 
L209:   fmul 
L210:   fstore 16 
L212:   aload 15 
L214:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getFluxTracker ()Lcom/fs/starfarer/combat/entities/ship/D; 
L217:   fconst_0 
L218:   aload 15 
L220:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getFluxTracker ()Lcom/fs/starfarer/combat/entities/ship/D; 
L223:   invokevirtual Method com/fs/starfarer/combat/entities/ship/D getMinFlux ()F 
L226:   fload 16 
L228:   fsub 
L229:   invokestatic Method java/lang/Math max (FF)F 
L232:   invokevirtual Method com/fs/starfarer/combat/entities/ship/D setMinFlux (F)V 

        .stack same_extended 
L235:   return 
L236:   
    .end code 
.end method 

.method public spawnAsteroid : (IFFFF)Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
    .code stack 7 locals 6 
L0:     aload_0 
L1:     iload_1 
L2:     fload_2 
L3:     fload_3 
L4:     fload 4 
L6:     fload 5 
L8:     iconst_0 
L9:     invokevirtual Method com/fs/starfarer/combat/CombatEngine spawnAsteroid (IFFFFZ)Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
L12:    areturn 
L13:    
    .end code 
.end method 

.method public spawnAsteroid : (IFFFFZ)Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
    .code stack 6 locals 8 
L0:     iload_1 
L1:     sipush 1000 
L4:     fconst_0 
L5:     fconst_0 
L6:     fconst_0 
L7:     iload 6 
L9:     invokestatic Method com/fs/starfarer/combat/A/E 'super' (IIFFFZ)Lcom/fs/starfarer/combat/entities/terrain/Asteroid; 
L12:    astore 7 
L14:    aload 7 
L16:    invokevirtual Method com/fs/starfarer/combat/entities/terrain/Asteroid getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L19:    fload_2 
L20:    fload_3 
L21:    invokevirtual Method org/lwjgl/util/vector/Vector2f set (FF)V 
L24:    aload 7 
L26:    invokevirtual Method com/fs/starfarer/combat/entities/terrain/Asteroid getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 
L29:    fload 4 
L31:    fload 5 
L33:    invokevirtual Method org/lwjgl/util/vector/Vector2f set (FF)V 
L36:    aload_0 
L37:    aload 7 
L39:    invokevirtual Method com/fs/starfarer/combat/CombatEngine addObject (Ljava/lang/Object;)V 
L42:    aload 7 
L44:    areturn 
L45:    
    .end code 
.end method 

.method public spawnAsteroid : (Ljava/lang/String;FFFFZ)Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
    .code stack 6 locals 8 
L0:     iconst_0 
L1:     sipush 1000 
L4:     fconst_0 
L5:     fconst_0 
L6:     fconst_0 
L7:     iload 6 
L9:     invokestatic Method com/fs/starfarer/combat/A/E 'super' (IIFFFZ)Lcom/fs/starfarer/combat/entities/terrain/Asteroid; 
L12:    astore 7 
L14:    aload 7 
L16:    invokevirtual Method com/fs/starfarer/combat/entities/terrain/Asteroid getSprite ()Lcom/fs/graphics/Sprite; 
L19:    aload_1 
L20:    invokestatic Method com/fs/graphics/oOoO 'Ò00000' (Ljava/lang/String;)Lcom/fs/graphics/Object; 
L23:    invokevirtual Method com/fs/graphics/Sprite setTexture (Lcom/fs/graphics/Object;)V 
L26:    aload 7 
L28:    invokevirtual Method com/fs/starfarer/combat/entities/terrain/Asteroid getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L31:    fload_2 
L32:    fload_3 
L33:    invokevirtual Method org/lwjgl/util/vector/Vector2f set (FF)V 
L36:    aload 7 
L38:    invokevirtual Method com/fs/starfarer/combat/entities/terrain/Asteroid getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 
L41:    fload 4 
L43:    fload 5 
L45:    invokevirtual Method org/lwjgl/util/vector/Vector2f set (FF)V 
L48:    aload_0 
L49:    aload 7 
L51:    invokevirtual Method com/fs/starfarer/combat/CombatEngine addObject (Ljava/lang/Object;)V 
L54:    aload 7 
L56:    areturn 
L57:    
    .end code 
.end method 

.method public spawnProjectile : (Lcom/fs/starfarer/api/combat/ShipAPI;Lcom/fs/starfarer/api/combat/WeaponAPI;Ljava/lang/String;Lorg/lwjgl/util/vector/Vector2f;FLorg/lwjgl/util/vector/Vector2f;)Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
    .code stack 8 locals 7 
L0:     aload_0 
L1:     aload_1 
L2:     aload_2 
L3:     aload_3 
L4:     aconst_null 
L5:     aload 4 
L7:     fload 5 
L9:     aload 6 
L11:    invokevirtual Method com/fs/starfarer/combat/CombatEngine spawnProjectile (Lcom/fs/starfarer/api/combat/ShipAPI;Lcom/fs/starfarer/api/combat/WeaponAPI;Ljava/lang/String;Ljava/lang/String;Lorg/lwjgl/util/vector/Vector2f;FLorg/lwjgl/util/vector/Vector2f;)Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
L14:    areturn 
L15:    
    .end code 
.end method 

.method public spawnProjectile : (Lcom/fs/starfarer/api/combat/ShipAPI;Lcom/fs/starfarer/api/combat/WeaponAPI;Ljava/lang/String;Ljava/lang/String;Lorg/lwjgl/util/vector/Vector2f;FLorg/lwjgl/util/vector/Vector2f;)Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
    .code stack 8 locals 12 
L0:     aconst_null 
L1:     astore 8 
L3:     aload_3 
L4:     ifnull L13 
L7:     aload_3 
L8:     invokestatic Method com/fs/starfarer/loading/Q 'Ò00000' (Ljava/lang/String;)Lcom/fs/starfarer/loading/specs/Oo0O; 
L11:    astore 8 

        .stack append Object com/fs/starfarer/loading/specs/Oo0O 
L13:    aload 8 
L15:    ifnonnull L29 
L18:    aload_2 
L19:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/WeaponAPI getSpec ()Lcom/fs/starfarer/api/loading/WeaponSpecAPI; 1 
L24:    checkcast com/fs/starfarer/loading/specs/Oo0O 
L27:    astore 8 

        .stack same 
L29:    aload 8 
L31:    invokevirtual Method com/fs/starfarer/loading/specs/Oo0O getProjectileSpec ()Ljava/lang/Object; 
L34:    astore 9 
L36:    aload 4 
L38:    ifnull L48 
L41:    aload 4 
L43:    invokestatic Method com/fs/starfarer/loading/Q 'Õ00000' (Ljava/lang/String;)Ljava/lang/Object; 
L46:    astore 9 

        .stack append Object java/lang/Object 
L48:    aload 7 
L50:    ifnonnull L62 
L53:    new org/lwjgl/util/vector/Vector2f 
L56:    dup 
L57:    invokespecial Method org/lwjgl/util/vector/Vector2f <init> ()V 
L60:    astore 7 

        .stack same 
L62:    aload_1 
L63:    ifnonnull L82 
L66:    new com/fs/starfarer/combat/entities/Ship 
L69:    dup 
L70:    aconst_null 
L71:    invokestatic Method com/fs/starfarer/combat/B 'class.while' ()Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L74:    iconst_0 
L75:    aconst_null 
L76:    aconst_null 
L77:    aconst_null 
L78:    invokespecial Method com/fs/starfarer/combat/entities/Ship <init> (Lcom/fs/starfarer/combat/entities/ship/o0OO;Lcom/fs/starfarer/loading/specs/HullVariantSpec;ZLcom/fs/starfarer/rpg/Person;Ljava/lang/String;Lcom/fs/starfarer/api/fleet/FleetMemberAPI;)V 
L81:    astore_1 

        .stack same 
L82:    aconst_null 
L83:    astore 10 
L85:    aload_2 
L86:    instanceof com/fs/starfarer/combat/systems/o00O 
L89:    ifeq L98 
L92:    aload_2 
L93:    checkcast com/fs/starfarer/combat/systems/o00O 
L96:    astore 10 

        .stack append Object com/fs/starfarer/combat/systems/o00O 
L98:    aload_1 
L99:    checkcast com/fs/starfarer/combat/entities/Ship 
L102:   aload 10 
L104:   aload 9 
L106:   aload 5 
L108:   fload 6 
L110:   aload 7 
L112:   invokestatic Method com/fs/starfarer/loading/specs/a 'super' (Lcom/fs/starfarer/combat/entities/Ship;Lcom/fs/starfarer/combat/systems/o00O;Ljava/lang/Object;Lorg/lwjgl/util/vector/Vector2f;FLorg/lwjgl/util/vector/Vector2f;)Ljava/lang/Object; 
L115:   astore 11 
L117:   aload 11 
L119:   instanceof com/fs/starfarer/api/combat/CombatEntityAPI 
L122:   ifeq L131 
L125:   aload 11 
L127:   checkcast com/fs/starfarer/api/combat/CombatEntityAPI 
L130:   areturn 

        .stack append Object java/lang/Object 
L131:   aconst_null 
L132:   areturn 
L133:   
    .end code 
.end method 

.method public applyDamageModifiersToSpawnedProjectileWithNullWeapon : (Lcom/fs/starfarer/api/combat/ShipAPI;Lcom/fs/starfarer/api/combat/WeaponAPI$WeaponType;ZLcom/fs/starfarer/api/combat/DamageAPI;)V 
    .code stack 4 locals 6 
L0:     aload_1 
L1:     checkcast com/fs/starfarer/combat/entities/Ship 
L4:     aload_2 
L5:     iload_3 
L6:     invokestatic Method com/fs/starfarer/combat/entities/ship/o0OO computeExtraDamageComponents (Lcom/fs/starfarer/combat/entities/Ship;Lcom/fs/starfarer/api/combat/WeaponAPI$WeaponType;Z)[F 
L9:     astore 5 
L11:    aload 5 
L13:    ifnull L67 
L16:    aload 4 
L18:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/DamageAPI getModifier ()Lcom/fs/starfarer/api/combat/MutableStat; 1 
L23:    ldc_w 'core_edc_0' 
L26:    aload 5 
L28:    iconst_0 
L29:    faload 
L30:    invokevirtual Method com/fs/starfarer/api/combat/MutableStat modifyPercent (Ljava/lang/String;F)V 
L33:    aload 4 
L35:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/DamageAPI getModifier ()Lcom/fs/starfarer/api/combat/MutableStat; 1 
L40:    ldc_w 'core_edc_1' 
L43:    aload 5 
L45:    iconst_1 
L46:    faload 
L47:    invokevirtual Method com/fs/starfarer/api/combat/MutableStat modifyFlat (Ljava/lang/String;F)V 
L50:    aload 4 
L52:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/DamageAPI getModifier ()Lcom/fs/starfarer/api/combat/MutableStat; 1 
L57:    ldc_w 'core_edc_2' 
L60:    aload 5 
L62:    iconst_2 
L63:    faload 
L64:    invokevirtual Method com/fs/starfarer/api/combat/MutableStat modifyMult (Ljava/lang/String;F)V 

        .stack append Object [F 
L67:    return 
L68:    
    .end code 
.end method 

.method public addSmoothParticle : (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;FFFFLjava/awt/Color;)V 
    .code stack 4 locals 10 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine o00000 Lcom/fs/starfarer/combat/CombatViewport; 
L4:     aload_1 
L5:     fload_3 
L6:     ldc_w +4.0f 
L9:     fmul 
L10:    invokevirtual Method com/fs/starfarer/combat/CombatViewport isNearViewport (Lorg/lwjgl/util/vector/Vector2f;F)Z 
L13:    ifne L17 
L16:    return 

        .stack same 
L17:    aload_0 
L18:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getSmoothParticles ()Lcom/fs/graphics/particle/DynamicParticleGroup; 
L21:    astore 8 
L23:    new com/fs/graphics/particle/SmoothParticle 
L26:    dup 
L27:    aload 7 
L29:    fload_3 
L30:    invokespecial Method com/fs/graphics/particle/SmoothParticle <init> (Ljava/awt/Color;F)V 
L33:    astore 9 
L35:    aload 9 
L37:    fload 5 
L39:    invokevirtual Method com/fs/graphics/particle/SmoothParticle setRampUpPeriod (F)V 
L42:    aload 9 
L44:    fload 6 
L46:    invokevirtual Method com/fs/graphics/particle/SmoothParticle setMaxAge (F)V 
L49:    aload 9 
L51:    aload_1 
L52:    getfield Field org/lwjgl/util/vector/Vector2f x F 
L55:    aload_1 
L56:    getfield Field org/lwjgl/util/vector/Vector2f y F 
L59:    invokevirtual Method com/fs/graphics/particle/SmoothParticle setPos (FF)V 
L62:    aload 9 
L64:    aload_2 
L65:    getfield Field org/lwjgl/util/vector/Vector2f x F 
L68:    aload_2 
L69:    getfield Field org/lwjgl/util/vector/Vector2f y F 
L72:    invokevirtual Method com/fs/graphics/particle/SmoothParticle setVel (FF)V 
L75:    aload 8 
L77:    aload 9 
L79:    invokevirtual Method com/fs/graphics/particle/DynamicParticleGroup add (Lcom/fs/graphics/particle/BaseParticle;)V 
L82:    return 
L83:    
    .end code 
.end method 

.method public addNegativeParticle : (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;FFFLjava/awt/Color;)V 
    .code stack 4 locals 9 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getNegativeParticles ()Lcom/fs/graphics/particle/DynamicParticleGroup; 
L4:     astore 7 
L6:     new com/fs/graphics/particle/NegativeParticle 
L9:     dup 
L10:    aload 6 
L12:    fload_3 
L13:    invokespecial Method com/fs/graphics/particle/NegativeParticle <init> (Ljava/awt/Color;F)V 
L16:    astore 8 
L18:    aload 8 
L20:    fload 4 
L22:    invokevirtual Method com/fs/graphics/particle/NegativeParticle setRampUpPeriod (F)V 
L25:    aload 8 
L27:    fload 5 
L29:    invokevirtual Method com/fs/graphics/particle/NegativeParticle setMaxAge (F)V 
L32:    aload 8 
L34:    aload_1 
L35:    getfield Field org/lwjgl/util/vector/Vector2f x F 
L38:    aload_1 
L39:    getfield Field org/lwjgl/util/vector/Vector2f y F 
L42:    invokevirtual Method com/fs/graphics/particle/NegativeParticle setPos (FF)V 
L45:    aload 8 
L47:    aload_2 
L48:    getfield Field org/lwjgl/util/vector/Vector2f x F 
L51:    aload_2 
L52:    getfield Field org/lwjgl/util/vector/Vector2f y F 
L55:    invokevirtual Method com/fs/graphics/particle/NegativeParticle setVel (FF)V 
L58:    aload 7 
L60:    aload 8 
L62:    invokevirtual Method com/fs/graphics/particle/DynamicParticleGroup add (Lcom/fs/graphics/particle/BaseParticle;)V 
L65:    return 
L66:    
    .end code 
.end method 

.method public addNebulaParticle : (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;FFFFFLjava/awt/Color;)V 
    .code stack 10 locals 9 
L0:     aload_0 
L1:     aload_1 
L2:     aload_2 
L3:     fload_3 
L4:     fload 4 
L6:     fload 5 
L8:     fload 6 
L10:    fload 7 
L12:    aload 8 
L14:    iconst_0 
L15:    invokevirtual Method com/fs/starfarer/combat/CombatEngine addNebulaParticle (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;FFFFFLjava/awt/Color;Z)V 
L18:    return 
L19:    
    .end code 
.end method 

.method public addNebulaParticle : (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;FFFFFLjava/awt/Color;Z)V 
    .code stack 9 locals 12 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine o00000 Lcom/fs/starfarer/combat/CombatViewport; 
L4:     aload_1 
L5:     fload_3 
L6:     ldc_w +4.0f 
L9:     fmul 
L10:    invokevirtual Method com/fs/starfarer/combat/CombatViewport isNearViewport (Lorg/lwjgl/util/vector/Vector2f;F)Z 
L13:    ifne L17 
L16:    return 

        .stack same 
L17:    aload_0 
L18:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getNebulaParticles ()Lcom/fs/graphics/particle/DynamicParticleGroup; 
L21:    astore 10 
L23:    new com/fs/graphics/particle/NebulaParticle 
L26:    dup 
L27:    ldc_w 'misc' 
L30:    ldc_w 'nebula_particles' 
L33:    invokestatic Method com/fs/starfarer/settings/StarfarerSettings new (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 
L36:    aload 8 
L38:    fload_3 
L39:    fload_3 
L40:    fload 4 
L42:    fmul 
L43:    fload 6 
L45:    iconst_0 
L46:    iload 9 
L48:    invokespecial Method com/fs/graphics/particle/NebulaParticle <init> (Ljava/lang/String;Ljava/awt/Color;FFFZZ)V 
L51:    astore 11 
L53:    aload 11 
L55:    sipush 770 
L58:    iconst_1 
L59:    invokevirtual Method com/fs/graphics/particle/NebulaParticle setBlendFunc (II)V 
L62:    aload 11 
L64:    fload 5 
L66:    invokevirtual Method com/fs/graphics/particle/NebulaParticle setRampUpPeriod (F)V 
L69:    aload 11 
L71:    fload 7 
L73:    invokevirtual Method com/fs/graphics/particle/NebulaParticle setMaxAge (F)V 
L76:    aload 11 
L78:    aload_1 
L79:    getfield Field org/lwjgl/util/vector/Vector2f x F 
L82:    aload_1 
L83:    getfield Field org/lwjgl/util/vector/Vector2f y F 
L86:    invokevirtual Method com/fs/graphics/particle/NebulaParticle setPos (FF)V 
L89:    aload 11 
L91:    aload_2 
L92:    getfield Field org/lwjgl/util/vector/Vector2f x F 
L95:    aload_2 
L96:    getfield Field org/lwjgl/util/vector/Vector2f y F 
L99:    invokevirtual Method com/fs/graphics/particle/NebulaParticle setVel (FF)V 
L102:   aload 10 
L104:   aload 11 
L106:   invokevirtual Method com/fs/graphics/particle/DynamicParticleGroup add (Lcom/fs/graphics/particle/BaseParticle;)V 
L109:   return 
L110:   
    .end code 
.end method 

.method public addNebulaSmoothParticle : (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;FFFFFLjava/awt/Color;)V 
    .code stack 10 locals 9 
L0:     aload_0 
L1:     aload_1 
L2:     aload_2 
L3:     fload_3 
L4:     fload 4 
L6:     fload 5 
L8:     fload 6 
L10:    fload 7 
L12:    aload 8 
L14:    iconst_0 
L15:    invokevirtual Method com/fs/starfarer/combat/CombatEngine addNebulaSmoothParticle (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;FFFFFLjava/awt/Color;Z)V 
L18:    return 
L19:    
    .end code 
.end method 

.method public addNebulaSmoothParticle : (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;FFFFFLjava/awt/Color;Z)V 
    .code stack 9 locals 12 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine o00000 Lcom/fs/starfarer/combat/CombatViewport; 
L4:     aload_1 
L5:     fload_3 
L6:     ldc_w +4.0f 
L9:     fmul 
L10:    invokevirtual Method com/fs/starfarer/combat/CombatViewport isNearViewport (Lorg/lwjgl/util/vector/Vector2f;F)Z 
L13:    ifne L17 
L16:    return 

        .stack same 
L17:    aload_0 
L18:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getNebulaSmoothParticles ()Lcom/fs/graphics/particle/DynamicParticleGroup; 
L21:    astore 10 
L23:    new com/fs/graphics/particle/NebulaParticle 
L26:    dup 
L27:    ldc_w 'misc' 
L30:    ldc_w 'nebula_particles2' 
L33:    invokestatic Method com/fs/starfarer/settings/StarfarerSettings new (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 
L36:    aload 8 
L38:    fload_3 
L39:    fload_3 
L40:    fload 4 
L42:    fmul 
L43:    fload 6 
L45:    iconst_0 
L46:    iload 9 
L48:    invokespecial Method com/fs/graphics/particle/NebulaParticle <init> (Ljava/lang/String;Ljava/awt/Color;FFFZZ)V 
L51:    astore 11 
L53:    aload 11 
L55:    iconst_2 
L56:    iconst_2 
L57:    invokevirtual Method com/fs/graphics/particle/NebulaParticle rerollTile (II)V 
L60:    aload 11 
L62:    sipush 770 
L65:    iconst_1 
L66:    invokevirtual Method com/fs/graphics/particle/NebulaParticle setBlendFunc (II)V 
L69:    aload 11 
L71:    fload 5 
L73:    invokevirtual Method com/fs/graphics/particle/NebulaParticle setRampUpPeriod (F)V 
L76:    aload 11 
L78:    fload 7 
L80:    invokevirtual Method com/fs/graphics/particle/NebulaParticle setMaxAge (F)V 
L83:    aload 11 
L85:    aload_1 
L86:    getfield Field org/lwjgl/util/vector/Vector2f x F 
L89:    aload_1 
L90:    getfield Field org/lwjgl/util/vector/Vector2f y F 
L93:    invokevirtual Method com/fs/graphics/particle/NebulaParticle setPos (FF)V 
L96:    aload 11 
L98:    aload_2 
L99:    getfield Field org/lwjgl/util/vector/Vector2f x F 
L102:   aload_2 
L103:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L106:   invokevirtual Method com/fs/graphics/particle/NebulaParticle setVel (FF)V 
L109:   aload 10 
L111:   aload 11 
L113:   invokevirtual Method com/fs/graphics/particle/DynamicParticleGroup add (Lcom/fs/graphics/particle/BaseParticle;)V 
L116:   return 
L117:   
    .end code 
.end method 

.method public addSwirlyNebulaParticle : (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;FFFFFLjava/awt/Color;Z)V 
    .code stack 9 locals 12 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine o00000 Lcom/fs/starfarer/combat/CombatViewport; 
L4:     aload_1 
L5:     fload_3 
L6:     ldc_w +4.0f 
L9:     fmul 
L10:    invokevirtual Method com/fs/starfarer/combat/CombatViewport isNearViewport (Lorg/lwjgl/util/vector/Vector2f;F)Z 
L13:    ifne L17 
L16:    return 

        .stack same 
L17:    aload_0 
L18:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getSwirlyNebulaParticles ()Lcom/fs/graphics/particle/DynamicParticleGroup; 
L21:    astore 10 
L23:    new com/fs/graphics/particle/NebulaParticle 
L26:    dup 
L27:    ldc_w 'misc' 
L30:    ldc_w 'fx_particles2' 
L33:    invokestatic Method com/fs/starfarer/settings/StarfarerSettings new (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 
L36:    aload 8 
L38:    fload_3 
L39:    fload_3 
L40:    fload 4 
L42:    fmul 
L43:    fload 6 
L45:    iconst_0 
L46:    iload 9 
L48:    invokespecial Method com/fs/graphics/particle/NebulaParticle <init> (Ljava/lang/String;Ljava/awt/Color;FFFZZ)V 
L51:    astore 11 
L53:    aload 11 
L55:    sipush 770 
L58:    iconst_1 
L59:    invokevirtual Method com/fs/graphics/particle/NebulaParticle setBlendFunc (II)V 
L62:    aload 11 
L64:    fload 5 
L66:    invokevirtual Method com/fs/graphics/particle/NebulaParticle setRampUpPeriod (F)V 
L69:    aload 11 
L71:    fload 7 
L73:    invokevirtual Method com/fs/graphics/particle/NebulaParticle setMaxAge (F)V 
L76:    aload 11 
L78:    aload_1 
L79:    getfield Field org/lwjgl/util/vector/Vector2f x F 
L82:    aload_1 
L83:    getfield Field org/lwjgl/util/vector/Vector2f y F 
L86:    invokevirtual Method com/fs/graphics/particle/NebulaParticle setPos (FF)V 
L89:    aload 11 
L91:    aload_2 
L92:    getfield Field org/lwjgl/util/vector/Vector2f x F 
L95:    aload_2 
L96:    getfield Field org/lwjgl/util/vector/Vector2f y F 
L99:    invokevirtual Method com/fs/graphics/particle/NebulaParticle setVel (FF)V 
L102:   aload 10 
L104:   aload 11 
L106:   invokevirtual Method com/fs/graphics/particle/DynamicParticleGroup add (Lcom/fs/graphics/particle/BaseParticle;)V 
L109:   return 
L110:   
    .end code 
.end method 

.method public addNebulaSmokeParticle : (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;FFFFFLjava/awt/Color;)V 
    .code stack 9 locals 11 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine o00000 Lcom/fs/starfarer/combat/CombatViewport; 
L4:     aload_1 
L5:     fload_3 
L6:     ldc_w +4.0f 
L9:     fmul 
L10:    invokevirtual Method com/fs/starfarer/combat/CombatViewport isNearViewport (Lorg/lwjgl/util/vector/Vector2f;F)Z 
L13:    ifne L17 
L16:    return 

        .stack same 
L17:    aload_0 
L18:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getNebulaSmokeParticles ()Lcom/fs/graphics/particle/DynamicParticleGroup; 
L21:    astore 9 
L23:    new com/fs/graphics/particle/NebulaParticle 
L26:    dup 
L27:    ldc_w 'misc' 
L30:    ldc_w 'nebula_particles' 
L33:    invokestatic Method com/fs/starfarer/settings/StarfarerSettings new (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 
L36:    aload 8 
L38:    fload_3 
L39:    fload_3 
L40:    fload 4 
L42:    fmul 
L43:    fload 6 
L45:    iconst_0 
L46:    iconst_0 
L47:    invokespecial Method com/fs/graphics/particle/NebulaParticle <init> (Ljava/lang/String;Ljava/awt/Color;FFFZZ)V 
L50:    astore 10 
L52:    aload 10 
L54:    sipush 770 
L57:    sipush 771 
L60:    invokevirtual Method com/fs/graphics/particle/NebulaParticle setBlendFunc (II)V 
L63:    aload 10 
L65:    fload 5 
L67:    invokevirtual Method com/fs/graphics/particle/NebulaParticle setRampUpPeriod (F)V 
L70:    aload 10 
L72:    fload 7 
L74:    invokevirtual Method com/fs/graphics/particle/NebulaParticle setMaxAge (F)V 
L77:    aload 10 
L79:    aload_1 
L80:    getfield Field org/lwjgl/util/vector/Vector2f x F 
L83:    aload_1 
L84:    getfield Field org/lwjgl/util/vector/Vector2f y F 
L87:    invokevirtual Method com/fs/graphics/particle/NebulaParticle setPos (FF)V 
L90:    aload 10 
L92:    aload_2 
L93:    getfield Field org/lwjgl/util/vector/Vector2f x F 
L96:    aload_2 
L97:    getfield Field org/lwjgl/util/vector/Vector2f y F 
L100:   invokevirtual Method com/fs/graphics/particle/NebulaParticle setVel (FF)V 
L103:   aload 9 
L105:   aload 10 
L107:   invokevirtual Method com/fs/graphics/particle/DynamicParticleGroup add (Lcom/fs/graphics/particle/BaseParticle;)V 
L110:   return 
L111:   
    .end code 
.end method 

.method public addNegativeNebulaParticle : (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;FFFFFLjava/awt/Color;)V 
    .code stack 9 locals 11 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine o00000 Lcom/fs/starfarer/combat/CombatViewport; 
L4:     aload_1 
L5:     fload_3 
L6:     ldc_w +4.0f 
L9:     fmul 
L10:    invokevirtual Method com/fs/starfarer/combat/CombatViewport isNearViewport (Lorg/lwjgl/util/vector/Vector2f;F)Z 
L13:    ifne L17 
L16:    return 

        .stack same 
L17:    aload_0 
L18:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getNegativeNebulaParticles ()Lcom/fs/graphics/particle/DynamicParticleGroup; 
L21:    astore 9 
L23:    new com/fs/graphics/particle/NebulaParticle 
L26:    dup 
L27:    ldc_w 'misc' 
L30:    ldc_w 'nebula_particles' 
L33:    invokestatic Method com/fs/starfarer/settings/StarfarerSettings new (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 
L36:    aload 8 
L38:    fload_3 
L39:    fload_3 
L40:    fload 4 
L42:    fmul 
L43:    fload 6 
L45:    iconst_1 
L46:    iconst_0 
L47:    invokespecial Method com/fs/graphics/particle/NebulaParticle <init> (Ljava/lang/String;Ljava/awt/Color;FFFZZ)V 
L50:    astore 10 
L52:    aload 10 
L54:    sipush 770 
L57:    iconst_1 
L58:    invokevirtual Method com/fs/graphics/particle/NebulaParticle setBlendFunc (II)V 
L61:    aload 10 
L63:    fload 5 
L65:    invokevirtual Method com/fs/graphics/particle/NebulaParticle setRampUpPeriod (F)V 
L68:    aload 10 
L70:    fload 7 
L72:    invokevirtual Method com/fs/graphics/particle/NebulaParticle setMaxAge (F)V 
L75:    aload 10 
L77:    aload_1 
L78:    getfield Field org/lwjgl/util/vector/Vector2f x F 
L81:    aload_1 
L82:    getfield Field org/lwjgl/util/vector/Vector2f y F 
L85:    invokevirtual Method com/fs/graphics/particle/NebulaParticle setPos (FF)V 
L88:    aload 10 
L90:    aload_2 
L91:    getfield Field org/lwjgl/util/vector/Vector2f x F 
L94:    aload_2 
L95:    getfield Field org/lwjgl/util/vector/Vector2f y F 
L98:    invokevirtual Method com/fs/graphics/particle/NebulaParticle setVel (FF)V 
L101:   aload 9 
L103:   aload 10 
L105:   invokevirtual Method com/fs/graphics/particle/DynamicParticleGroup add (Lcom/fs/graphics/particle/BaseParticle;)V 
L108:   return 
L109:   
    .end code 
.end method 

.method public addNegativeSwirlyNebulaParticle : (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;FFFFFLjava/awt/Color;)V 
    .code stack 9 locals 11 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine o00000 Lcom/fs/starfarer/combat/CombatViewport; 
L4:     aload_1 
L5:     fload_3 
L6:     ldc_w +4.0f 
L9:     fmul 
L10:    invokevirtual Method com/fs/starfarer/combat/CombatViewport isNearViewport (Lorg/lwjgl/util/vector/Vector2f;F)Z 
L13:    ifne L17 
L16:    return 

        .stack same 
L17:    aload_0 
L18:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getNegativeSwirlyNebulaParticles ()Lcom/fs/graphics/particle/DynamicParticleGroup; 
L21:    astore 9 
L23:    new com/fs/graphics/particle/NebulaParticle 
L26:    dup 
L27:    ldc_w 'misc' 
L30:    ldc_w 'fx_particles2' 
L33:    invokestatic Method com/fs/starfarer/settings/StarfarerSettings new (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 
L36:    aload 8 
L38:    fload_3 
L39:    fload_3 
L40:    fload 4 
L42:    fmul 
L43:    fload 6 
L45:    iconst_1 
L46:    iconst_0 
L47:    invokespecial Method com/fs/graphics/particle/NebulaParticle <init> (Ljava/lang/String;Ljava/awt/Color;FFFZZ)V 
L50:    astore 10 
L52:    aload 10 
L54:    sipush 770 
L57:    iconst_1 
L58:    invokevirtual Method com/fs/graphics/particle/NebulaParticle setBlendFunc (II)V 
L61:    aload 10 
L63:    fload 5 
L65:    invokevirtual Method com/fs/graphics/particle/NebulaParticle setRampUpPeriod (F)V 
L68:    aload 10 
L70:    fload 7 
L72:    invokevirtual Method com/fs/graphics/particle/NebulaParticle setMaxAge (F)V 
L75:    aload 10 
L77:    aload_1 
L78:    getfield Field org/lwjgl/util/vector/Vector2f x F 
L81:    aload_1 
L82:    getfield Field org/lwjgl/util/vector/Vector2f y F 
L85:    invokevirtual Method com/fs/graphics/particle/NebulaParticle setPos (FF)V 
L88:    aload 10 
L90:    aload_2 
L91:    getfield Field org/lwjgl/util/vector/Vector2f x F 
L94:    aload_2 
L95:    getfield Field org/lwjgl/util/vector/Vector2f y F 
L98:    invokevirtual Method com/fs/graphics/particle/NebulaParticle setVel (FF)V 
L101:   aload 9 
L103:   aload 10 
L105:   invokevirtual Method com/fs/graphics/particle/DynamicParticleGroup add (Lcom/fs/graphics/particle/BaseParticle;)V 
L108:   return 
L109:   
    .end code 
.end method 

.method public addSmoothParticle : (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;FFFLjava/awt/Color;)V 
    .code stack 4 locals 9 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine o00000 Lcom/fs/starfarer/combat/CombatViewport; 
L4:     aload_1 
L5:     fload_3 
L6:     ldc_w +4.0f 
L9:     fmul 
L10:    invokevirtual Method com/fs/starfarer/combat/CombatViewport isNearViewport (Lorg/lwjgl/util/vector/Vector2f;F)Z 
L13:    ifne L17 
L16:    return 

        .stack same 
L17:    aload_0 
L18:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getSmoothParticles ()Lcom/fs/graphics/particle/DynamicParticleGroup; 
L21:    astore 7 
L23:    new com/fs/graphics/particle/SmoothParticle 
L26:    dup 
L27:    aload 6 
L29:    fload_3 
L30:    invokespecial Method com/fs/graphics/particle/SmoothParticle <init> (Ljava/awt/Color;F)V 
L33:    astore 8 
L35:    aload 8 
L37:    fload 5 
L39:    invokevirtual Method com/fs/graphics/particle/SmoothParticle setMaxAge (F)V 
L42:    aload 8 
L44:    aload_1 
L45:    getfield Field org/lwjgl/util/vector/Vector2f x F 
L48:    aload_1 
L49:    getfield Field org/lwjgl/util/vector/Vector2f y F 
L52:    invokevirtual Method com/fs/graphics/particle/SmoothParticle setPos (FF)V 
L55:    aload 8 
L57:    aload_2 
L58:    getfield Field org/lwjgl/util/vector/Vector2f x F 
L61:    aload_2 
L62:    getfield Field org/lwjgl/util/vector/Vector2f y F 
L65:    invokevirtual Method com/fs/graphics/particle/SmoothParticle setVel (FF)V 
L68:    aload 7 
L70:    aload 8 
L72:    invokevirtual Method com/fs/graphics/particle/DynamicParticleGroup add (Lcom/fs/graphics/particle/BaseParticle;)V 
L75:    return 
L76:    
    .end code 
.end method 

.method public addSmokeParticle : (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;FFFLjava/awt/Color;)V 
    .code stack 6 locals 9 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine o00000 Lcom/fs/starfarer/combat/CombatViewport; 
L4:     aload_1 
L5:     fload_3 
L6:     ldc_w +4.0f 
L9:     fmul 
L10:    invokevirtual Method com/fs/starfarer/combat/CombatViewport isNearViewport (Lorg/lwjgl/util/vector/Vector2f;F)Z 
L13:    ifne L17 
L16:    return 

        .stack same 
L17:    aload_0 
L18:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getSmokeParticles ()Lcom/fs/graphics/particle/DynamicParticleGroup; 
L21:    astore 7 
L23:    new com/fs/starfarer/renderers/fx/DetailedSmokeParticle 
L26:    dup 
L27:    aload 6 
L29:    fload_3 
L30:    fload_3 
L31:    ldc_w +1.25f 
L34:    fmul 
L35:    invokespecial Method com/fs/starfarer/renderers/fx/DetailedSmokeParticle <init> (Ljava/awt/Color;FF)V 
L38:    astore 8 
L40:    aload 8 
L42:    invokestatic Method java/lang/Math random ()D 
L45:    d2f 
L46:    ldc_w +360.0f 
L49:    fmul 
L50:    invokevirtual Method com/fs/starfarer/renderers/fx/DetailedSmokeParticle setAngle (F)V 
L53:    aload 8 
L55:    invokestatic Method java/lang/Math random ()D 
L58:    d2f 
L59:    ldc_w +140.0f 
L62:    fmul 
L63:    ldc_w +70.0f 
L66:    fsub 
L67:    invokevirtual Method com/fs/starfarer/renderers/fx/DetailedSmokeParticle setRotationSpeed (F)V 
L70:    aload 8 
L72:    fload 5 
L74:    invokevirtual Method com/fs/starfarer/renderers/fx/DetailedSmokeParticle setMaxAge (F)V 
L77:    aload 8 
L79:    aload_1 
L80:    getfield Field org/lwjgl/util/vector/Vector2f x F 
L83:    aload_1 
L84:    getfield Field org/lwjgl/util/vector/Vector2f y F 
L87:    invokevirtual Method com/fs/starfarer/renderers/fx/DetailedSmokeParticle setPos (FF)V 
L90:    aload 8 
L92:    aload_2 
L93:    getfield Field org/lwjgl/util/vector/Vector2f x F 
L96:    aload_2 
L97:    getfield Field org/lwjgl/util/vector/Vector2f y F 
L100:   invokevirtual Method com/fs/starfarer/renderers/fx/DetailedSmokeParticle setVel (FF)V 
L103:   aload 8 
L105:   ldc_w +0.5f 
L108:   invokestatic Method java/lang/Math random ()D 
L111:   d2f 
L112:   fmul 
L113:   invokevirtual Method com/fs/starfarer/renderers/fx/DetailedSmokeParticle setRampUpPeriod (F)V 
L116:   aload 7 
L118:   aload 8 
L120:   invokevirtual Method com/fs/graphics/particle/DynamicParticleGroup add (Lcom/fs/graphics/particle/BaseParticle;)V 
L123:   return 
L124:   
    .end code 
.end method 

.method public isInCampaign : ()Z 
    .code stack 2 locals 2 
L0:     invokestatic Method com/fs/state/AppDriver getInstance ()Lcom/fs/state/AppDriver; 
L3:     invokevirtual Method com/fs/state/AppDriver getSession ()Ljava/util/Map; 
L6:     ldc_w 'run combat simulator' 
L9:     invokeinterface InterfaceMethod java/util/Map containsKey (Ljava/lang/Object;)Z 2 
L14:    istore_1 
L15:    ldc_w 'Campaign State' 
L18:    aload_0 
L19:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getStateToReturnTo ()Ljava/lang/String; 
L22:    invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L25:    ifeq L34 
L28:    iload_1 
L29:    ifne L34 
L32:    iconst_1 
L33:    ireturn 

        .stack append Integer 
L34:    iconst_0 
L35:    ireturn 
L36:    
    .end code 
.end method 

.method public isInCampaignSim : ()Z 
    .code stack 2 locals 2 
L0:     invokestatic Method com/fs/state/AppDriver getInstance ()Lcom/fs/state/AppDriver; 
L3:     invokevirtual Method com/fs/state/AppDriver getSession ()Ljava/util/Map; 
L6:     ldc_w 'run combat simulator' 
L9:     invokeinterface InterfaceMethod java/util/Map containsKey (Ljava/lang/Object;)Z 2 
L14:    istore_1 
L15:    ldc_w 'Campaign State' 
L18:    aload_0 
L19:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getStateToReturnTo ()Ljava/lang/String; 
L22:    invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L25:    ifeq L34 
L28:    iload_1 
L29:    ifeq L34 
L32:    iconst_1 
L33:    ireturn 

        .stack append Integer 
L34:    iconst_0 
L35:    ireturn 
L36:    
    .end code 
.end method 

.method public isInMissionSim : ()Z 
    .code stack 2 locals 2 
L0:     invokestatic Method com/fs/state/AppDriver getInstance ()Lcom/fs/state/AppDriver; 
L3:     invokevirtual Method com/fs/state/AppDriver getSession ()Ljava/util/Map; 
L6:     ldc_w 'run combat simulator' 
L9:     invokeinterface InterfaceMethod java/util/Map containsKey (Ljava/lang/Object;)Z 2 
L14:    istore_1 
L15:    aload_0 
L16:    getfield Field com/fs/starfarer/combat/CombatEngine 'interface' Z 
L19:    ifeq L28 
L22:    iload_1 
L23:    ifeq L28 
L26:    iconst_1 
L27:    ireturn 

        .stack append Integer 
L28:    iconst_0 
L29:    ireturn 
L30:    
    .end code 
.end method 

.method public isMissionSim : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'interface' Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public setMissionSim : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/CombatEngine 'interface' Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public isSimulation : ()Z 
    .code stack 2 locals 2 
L0:     invokestatic Method com/fs/state/AppDriver getInstance ()Lcom/fs/state/AppDriver; 
L3:     invokevirtual Method com/fs/state/AppDriver getSession ()Ljava/util/Map; 
L6:     ldc_w 'run combat simulator' 
L9:     invokeinterface InterfaceMethod java/util/Map containsKey (Ljava/lang/Object;)Z 2 
L14:    istore_1 
L15:    iload_1 
L16:    ireturn 
L17:    
    .end code 
.end method 

.method public isMission : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'ÓÕ0000' Ljava/lang/String; 
L4:     ifnonnull L23 
L7:     aload_0 
L8:     invokevirtual Method com/fs/starfarer/combat/CombatEngine isSimulation ()Z 
L11:    ifne L21 
L14:    aload_0 
L15:    invokevirtual Method com/fs/starfarer/combat/CombatEngine isInCampaign ()Z 
L18:    ifeq L23 

        .stack same 
L21:    iconst_0 
L22:    ireturn 

        .stack same 
L23:    iconst_1 
L24:    ireturn 
L25:    
    .end code 
.end method 

.method public getMissionId : ()Ljava/lang/String; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'ÓÕ0000' Ljava/lang/String; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public setMissionId : (Ljava/lang/String;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/fs/starfarer/combat/CombatEngine 'ÓÕ0000' Ljava/lang/String; 
L5:     return 
L6:     
    .end code 
.end method 

.method public getMapHeight : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'Ó00000' Lcom/fs/starfarer/combat/A/B; 
L4:     invokevirtual Method com/fs/starfarer/combat/A/B 'super' ()F 
L7:     freturn 
L8:     
    .end code 
.end method 

.method public getMapWidth : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'Ó00000' Lcom/fs/starfarer/combat/A/B; 
L4:     invokevirtual Method com/fs/starfarer/combat/A/B 'ø00000' ()F 
L7:     freturn 
L8:     
    .end code 
.end method 

.method public getCustomData : ()Ljava/util/Map; 
    .signature ()Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'while.super' Ljava/util/Map; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public spawnEmpArcVisual : (Lorg/lwjgl/util/vector/Vector2f;Lcom/fs/starfarer/api/combat/CombatEntityAPI;Lorg/lwjgl/util/vector/Vector2f;Lcom/fs/starfarer/api/combat/CombatEntityAPI;FLjava/awt/Color;Ljava/awt/Color;)Lcom/fs/starfarer/api/combat/EmpArcEntityAPI; 
    .code stack 10 locals 9 
L0:     new com/fs/starfarer/combat/systems/EmpArcVisual 
L3:     dup 
L4:     aload_1 
L5:     aload_2 
L6:     aload_3 
L7:     aload 4 
L9:     fload 5 
L11:    aload 6 
L13:    aload 7 
L15:    aconst_null 
L16:    invokespecial Method com/fs/starfarer/combat/systems/EmpArcVisual <init> (Lorg/lwjgl/util/vector/Vector2f;Lcom/fs/starfarer/api/combat/CombatEntityAPI;Lorg/lwjgl/util/vector/Vector2f;Lcom/fs/starfarer/api/combat/CombatEntityAPI;FLjava/awt/Color;Ljava/awt/Color;Lcom/fs/starfarer/api/combat/EmpArcEntityAPI$EmpArcParams;)V 
L19:    astore 8 
L21:    aload_0 
L22:    aload 8 
L24:    invokevirtual Method com/fs/starfarer/combat/CombatEngine addObject (Ljava/lang/Object;)V 
L27:    aload 8 
L29:    areturn 
L30:    
    .end code 
.end method 

.method public spawnEmpArcVisual : (Lorg/lwjgl/util/vector/Vector2f;Lcom/fs/starfarer/api/combat/CombatEntityAPI;Lorg/lwjgl/util/vector/Vector2f;Lcom/fs/starfarer/api/combat/CombatEntityAPI;FLjava/awt/Color;Ljava/awt/Color;Lcom/fs/starfarer/api/combat/EmpArcEntityAPI$EmpArcParams;)Lcom/fs/starfarer/api/combat/EmpArcEntityAPI; 
    .code stack 10 locals 10 
L0:     new com/fs/starfarer/combat/systems/EmpArcVisual 
L3:     dup 
L4:     aload_1 
L5:     aload_2 
L6:     aload_3 
L7:     aload 4 
L9:     fload 5 
L11:    aload 6 
L13:    aload 7 
L15:    aload 8 
L17:    invokespecial Method com/fs/starfarer/combat/systems/EmpArcVisual <init> (Lorg/lwjgl/util/vector/Vector2f;Lcom/fs/starfarer/api/combat/CombatEntityAPI;Lorg/lwjgl/util/vector/Vector2f;Lcom/fs/starfarer/api/combat/CombatEntityAPI;FLjava/awt/Color;Ljava/awt/Color;Lcom/fs/starfarer/api/combat/EmpArcEntityAPI$EmpArcParams;)V 
L20:    astore 9 
L22:    aload_0 
L23:    aload 9 
L25:    invokevirtual Method com/fs/starfarer/combat/CombatEngine addObject (Ljava/lang/Object;)V 
L28:    aload 9 
L30:    areturn 
L31:    
    .end code 
.end method 

.method public spawnEmpArc : [u2906] 
    .code stack 14 locals 13 
L0:     aload_0 
L1:     aload_1 
L2:     aload_2 
L3:     aload_3 
L4:     aload 4 
L6:     aload 5 
L8:     fload 6 
L10:    fload 7 
L12:    fload 8 
L14:    aload 9 
L16:    fload 10 
L18:    aload 11 
L20:    aload 12 
L22:    aconst_null 
L23:    invokevirtual Method com/fs/starfarer/combat/CombatEngine spawnEmpArc [u2909] 
L26:    areturn 
L27:    
    .end code 
.end method 

.method public spawnEmpArc : [u2909] 
    .code stack 16 locals 15 
L0:     new com/fs/starfarer/combat/systems/EmpArcEntity 
L3:     dup 
L4:     aload_1 
L5:     checkcast com/fs/starfarer/combat/entities/Ship 
L8:     aload_2 
L9:     aload_3 
L10:    aload 4 
L12:    aload 5 
L14:    fload 6 
L16:    fload 7 
L18:    fload 8 
L20:    aload 9 
L22:    fload 10 
L24:    aload 11 
L26:    aload 12 
L28:    iconst_0 
L29:    aload 13 
L31:    invokespecial Method com/fs/starfarer/combat/systems/EmpArcEntity <init> [u2920] 
L34:    astore 14 
L36:    aload_0 
L37:    aload 14 
L39:    invokevirtual Method com/fs/starfarer/combat/CombatEngine addObject (Ljava/lang/Object;)V 
L42:    aload 14 
L44:    areturn 
L45:    
    .end code 
.end method 

.method public spawnEmpArcPierceShields : [u2906] 
    .code stack 14 locals 13 
L0:     aload_0 
L1:     aload_1 
L2:     aload_2 
L3:     aload_3 
L4:     aload 4 
L6:     aload 5 
L8:     fload 6 
L10:    fload 7 
L12:    fload 8 
L14:    aload 9 
L16:    fload 10 
L18:    aload 11 
L20:    aload 12 
L22:    aconst_null 
L23:    invokevirtual Method com/fs/starfarer/combat/CombatEngine spawnEmpArcPierceShields [u2909] 
L26:    areturn 
L27:    
    .end code 
.end method 

.method public spawnEmpArcPierceShields : [u2909] 
    .code stack 16 locals 15 
L0:     new com/fs/starfarer/combat/systems/EmpArcEntity 
L3:     dup 
L4:     aload_1 
L5:     checkcast com/fs/starfarer/combat/entities/Ship 
L8:     aload_2 
L9:     aload_3 
L10:    aload 4 
L12:    aload 5 
L14:    fload 6 
L16:    fload 7 
L18:    fload 8 
L20:    aload 9 
L22:    fload 10 
L24:    aload 11 
L26:    aload 12 
L28:    iconst_1 
L29:    aload 13 
L31:    invokespecial Method com/fs/starfarer/combat/systems/EmpArcEntity <init> [u2920] 
L34:    astore 14 
L36:    aload_0 
L37:    aload 14 
L39:    invokevirtual Method com/fs/starfarer/combat/CombatEngine addObject (Ljava/lang/Object;)V 
L42:    aload 14 
L44:    areturn 
L45:    
    .end code 
.end method 

.method public getCustomDataWithTimeout : ()Lcom/fs/starfarer/api/util/TimeoutTrackerMap; 
    .signature ()Lcom/fs/starfarer/api/util/TimeoutTrackerMap<Ljava/lang/Object;Ljava/lang/Object;>; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'Öo0000' Lcom/fs/starfarer/api/util/TimeoutTrackerMap; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public getRecentCornerCheeseTargets : ()Lcom/fs/starfarer/api/util/TimeoutTracker; 
    .signature ()Lcom/fs/starfarer/api/util/TimeoutTracker<Lcom/fs/starfarer/combat/entities/Ship;>; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'null.super' Lcom/fs/starfarer/api/util/TimeoutTracker; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public getVeryRecentCornerCheeseTargets : ()Lcom/fs/starfarer/api/util/TimeoutTracker; 
    .signature ()Lcom/fs/starfarer/api/util/TimeoutTracker<Lcom/fs/starfarer/combat/entities/Ship;>; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine oO0000 Lcom/fs/starfarer/api/util/TimeoutTracker; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method protected checkCornerCheese : (F)V 
    .code stack 4 locals 20 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'null.super' Lcom/fs/starfarer/api/util/TimeoutTracker; 
L4:     fload_1 
L5:     invokevirtual Method com/fs/starfarer/api/util/TimeoutTracker advance (F)V 
L8:     aload_0 
L9:     getfield Field com/fs/starfarer/combat/CombatEngine oO0000 Lcom/fs/starfarer/api/util/TimeoutTracker; 
L12:    fload_1 
L13:    invokevirtual Method com/fs/starfarer/api/util/TimeoutTracker advance (F)V 
L16:    aload_0 
L17:    getfield Field com/fs/starfarer/combat/CombatEngine 'Öo0000' Lcom/fs/starfarer/api/util/TimeoutTrackerMap; 
L20:    fload_1 
L21:    invokevirtual Method com/fs/starfarer/api/util/TimeoutTrackerMap advance (F)V 
L24:    aload_0 
L25:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getEnemyFleetManager ()Lcom/fs/starfarer/combat/CombatFleetManager; 
L28:    astore_2 
L29:    aload_2 
L30:    iconst_0 
L31:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getTaskManager (Z)Lcom/fs/starfarer/combat/tasks/CombatTaskManager; 
L34:    astore_3 
L35:    aload_0 
L36:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerFleetManager ()Lcom/fs/starfarer/combat/CombatFleetManager; 
L39:    astore 4 
L41:    aload_3 
L42:    invokevirtual Method com/fs/starfarer/combat/tasks/CombatTaskManager isInFullRetreat ()Z 
L45:    ifeq L49 
L48:    return 

        .stack append Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/tasks/CombatTaskManager Object com/fs/starfarer/combat/CombatFleetManager 
L49:    aload_0 
L50:    getfield Field com/fs/starfarer/combat/CombatEngine oo0000 Lcom/fs/starfarer/api/util/IntervalUtil; 
L53:    fload_1 
L54:    invokevirtual Method com/fs/starfarer/api/util/IntervalUtil advance (F)V 
L57:    aload_0 
L58:    getfield Field com/fs/starfarer/combat/CombatEngine oo0000 Lcom/fs/starfarer/api/util/IntervalUtil; 
L61:    invokevirtual Method com/fs/starfarer/api/util/IntervalUtil intervalElapsed ()Z 
L64:    ifne L68 
L67:    return 

        .stack same 
L68:    iconst_0 
L69:    istore 5 
L71:    aload_2 
L72:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getDeployed ()Ljava/util/Set; 
L75:    invokeinterface InterfaceMethod java/util/Set iterator ()Ljava/util/Iterator; 1 
L80:    astore 7 
L82:    goto L139 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/tasks/CombatTaskManager Object com/fs/starfarer/combat/CombatFleetManager Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L85:    aload 7 
L87:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L92:    checkcast com/fs/starfarer/combat/CombatFleetManager$O0 
L95:    astore 6 
L97:    aload 6 
L99:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 isFighterWing ()Z 
L102:   ifeq L108 
L105:   goto L139 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/tasks/CombatTaskManager Object com/fs/starfarer/combat/CombatFleetManager Integer Object com/fs/starfarer/combat/CombatFleetManager$O0 Object java/util/Iterator 
            stack 
        .end stack 
L108:   aload 6 
L110:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L113:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isRetreating ()Z 
L116:   ifeq L122 
L119:   goto L139 

        .stack same 
L122:   aload 6 
L124:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L127:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isStationModule ()Z 
L130:   ifeq L136 
L133:   goto L139 

        .stack same 
L136:   iinc 5 1 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/tasks/CombatTaskManager Object com/fs/starfarer/combat/CombatFleetManager Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L139:   aload 7 
L141:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L146:   ifne L85 
L149:   iconst_0 
L150:   istore 6 
L152:   aload 4 
L154:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getDeployed ()Ljava/util/Set; 
L157:   invokeinterface InterfaceMethod java/util/Set iterator ()Ljava/util/Iterator; 1 
L162:   astore 8 
L164:   goto L221 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/tasks/CombatTaskManager Object com/fs/starfarer/combat/CombatFleetManager Integer Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L167:   aload 8 
L169:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L174:   checkcast com/fs/starfarer/combat/CombatFleetManager$O0 
L177:   astore 7 
L179:   aload 7 
L181:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 isFighterWing ()Z 
L184:   ifeq L190 
L187:   goto L221 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/tasks/CombatTaskManager Object com/fs/starfarer/combat/CombatFleetManager Integer Integer Object com/fs/starfarer/combat/CombatFleetManager$O0 Object java/util/Iterator 
            stack 
        .end stack 
L190:   aload 7 
L192:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L195:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isRetreating ()Z 
L198:   ifeq L204 
L201:   goto L221 

        .stack same 
L204:   aload 7 
L206:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L209:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isStationModule ()Z 
L212:   ifeq L218 
L215:   goto L221 

        .stack same 
L218:   iinc 6 1 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/tasks/CombatTaskManager Object com/fs/starfarer/combat/CombatFleetManager Integer Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L221:   aload 8 
L223:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L228:   ifne L167 
L231:   iconst_0 
L232:   istore 7 
L234:   iload 6 
L236:   iload 5 
L238:   if_icmplt L244 
L241:   iconst_1 
L242:   istore 7 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/tasks/CombatTaskManager Object com/fs/starfarer/combat/CombatFleetManager Integer Integer Integer 
            stack 
        .end stack 
L244:   iload 5 
L246:   iconst_3 
L247:   if_icmpgt L253 
L250:   iconst_1 
L251:   istore 7 

        .stack same 
L253:   aload 4 
L255:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getDeployed ()Ljava/util/Set; 
L258:   invokeinterface InterfaceMethod java/util/Set iterator ()Ljava/util/Iterator; 1 
L263:   astore 9 
L265:   goto L649 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/tasks/CombatTaskManager Object com/fs/starfarer/combat/CombatFleetManager Integer Integer Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L268:   aload 9 
L270:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L275:   checkcast com/fs/starfarer/combat/CombatFleetManager$O0 
L278:   astore 8 
L280:   aload 8 
L282:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 isFighterWing ()Z 
L285:   ifeq L291 
L288:   goto L649 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/tasks/CombatTaskManager Object com/fs/starfarer/combat/CombatFleetManager Integer Integer Integer Object com/fs/starfarer/combat/CombatFleetManager$O0 Object java/util/Iterator 
            stack 
        .end stack 
L291:   aload 8 
L293:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L296:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isFrigate ()Z 
L299:   ifeq L305 
L302:   goto L649 

        .stack same 
L305:   aload 8 
L307:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L310:   iconst_0 
L311:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isNonCombat (Z)Z 
L314:   ifeq L320 
L317:   goto L649 

        .stack same 
L320:   aload 8 
L322:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L325:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getVariant ()Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L328:   invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec isCarrier ()Z 
L331:   ifeq L337 
L334:   goto L649 

        .stack same 
L337:   aload 8 
L339:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L342:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isStationModule ()Z 
L345:   ifeq L351 
L348:   goto L649 

        .stack same 
L351:   aload_3 
L352:   aload 8 
L354:   invokevirtual Method com/fs/starfarer/combat/tasks/CombatTaskManager getTaskForTarget (Lcom/fs/starfarer/combat/tasks/CombatTask$Oo;)Lcom/fs/starfarer/combat/tasks/CombatTask; 
L357:   astore 10 
L359:   aload 8 
L361:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L364:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isRetreating ()Z 
L367:   istore 11 
L369:   aload_0 
L370:   aload 8 
L372:   invokevirtual Method com/fs/starfarer/combat/CombatEngine isSurrounded (Lcom/fs/starfarer/combat/CombatFleetManager$O0;)Z 
L375:   istore 12 
L377:   aload_0 
L378:   aload 8 
L380:   invokevirtual Method com/fs/starfarer/combat/CombatEngine couldPotentiallySurround (Lcom/fs/starfarer/combat/CombatFleetManager$O0;)Z 
L383:   istore 13 
L385:   aload 10 
L387:   ifnull L405 
L390:   aload 10 
L392:   invokevirtual Method com/fs/starfarer/combat/tasks/CombatTask 'ÓO0000' ()Lcom/fs/starfarer/combat/tasks/CombatTask$CombatTaskType; 
L395:   getstatic Field com/fs/starfarer/combat/tasks/CombatTask$CombatTaskType AVOID Lcom/fs/starfarer/combat/tasks/CombatTask$CombatTaskType; 
L398:   if_acmpne L405 
L401:   iconst_1 
L402:   goto L406 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/tasks/CombatTaskManager Object com/fs/starfarer/combat/CombatFleetManager Integer Integer Integer Object com/fs/starfarer/combat/CombatFleetManager$O0 Object java/util/Iterator Object com/fs/starfarer/combat/tasks/CombatTask Integer Integer Integer 
            stack 
        .end stack 
L405:   iconst_0 

        .stack stack_1 Integer 
L406:   istore 14 
L408:   ldc_w +1000.0f 
L411:   fstore 15 
L413:   ldc_w +1500.0f 
L416:   fstore 16 
L418:   aload 8 
L420:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L423:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isCapital ()Z 
L426:   ifeq L434 
L429:   ldc_w +2500.0f 
L432:   fstore 15 

        .stack append Integer Float Float 
L434:   aload 8 
L436:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L439:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isCruiser ()Z 
L442:   ifeq L450 
L445:   ldc_w +2000.0f 
L448:   fstore 15 

        .stack same 
L450:   aload 8 
L452:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L455:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isDestroyer ()Z 
L458:   ifne L472 
L461:   aload 8 
L463:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L466:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isFrigate ()Z 
L469:   ifeq L482 

        .stack same 
L472:   ldc_w +1750.0f 
L475:   fstore 15 
L477:   ldc_w +1500.0f 
L480:   fstore 16 

        .stack same 
L482:   iload 14 
L484:   ifne L620 
L487:   iload 7 
L489:   ifne L620 
L492:   aload_0 
L493:   aload 8 
L495:   fload 15 
L497:   invokevirtual Method com/fs/starfarer/combat/CombatEngine isInCorner (Lcom/fs/starfarer/combat/CombatFleetManager$O0;F)Z 
L500:   ifeq L620 
L503:   iload 11 
L505:   ifne L620 
L508:   iload 12 
L510:   ifne L620 
L513:   iload 13 
L515:   ifeq L620 
L518:   aload_0 
L519:   getfield Field com/fs/starfarer/combat/CombatEngine 'null.super' Lcom/fs/starfarer/api/util/TimeoutTracker; 
L522:   aload 8 
L524:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L527:   ldc_w +100.0f 
L530:   invokevirtual Method com/fs/starfarer/api/util/TimeoutTracker set (Ljava/lang/Object;F)V 
L533:   fconst_1 
L534:   invokestatic Method java/lang/Math random ()D 
L537:   d2f 
L538:   fconst_1 
L539:   fmul 
L540:   fadd 
L541:   fstore 17 
L543:   aload_0 
L544:   getfield Field com/fs/starfarer/combat/CombatEngine oO0000 Lcom/fs/starfarer/api/util/TimeoutTracker; 
L547:   aload 8 
L549:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L552:   fload 17 
L554:   invokevirtual Method com/fs/starfarer/api/util/TimeoutTracker set (Ljava/lang/Object;F)V 
L557:   aload 8 
L559:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L562:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getChildModules ()Ljava/util/List; 
L565:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L570:   astore 19 
L572:   goto L610 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/tasks/CombatTaskManager Object com/fs/starfarer/combat/CombatFleetManager Integer Integer Integer Object com/fs/starfarer/combat/CombatFleetManager$O0 Object java/util/Iterator Object com/fs/starfarer/combat/tasks/CombatTask Integer Integer Integer Integer Float Float Float Top Object java/util/Iterator 
            stack 
        .end stack 
L575:   aload 19 
L577:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L582:   checkcast com/fs/starfarer/combat/entities/Ship 
L585:   astore 18 
L587:   aload_0 
L588:   getfield Field com/fs/starfarer/combat/CombatEngine 'null.super' Lcom/fs/starfarer/api/util/TimeoutTracker; 
L591:   aload 18 
L593:   ldc_w +100.0f 
L596:   invokevirtual Method com/fs/starfarer/api/util/TimeoutTracker set (Ljava/lang/Object;F)V 
L599:   aload_0 
L600:   getfield Field com/fs/starfarer/combat/CombatEngine oO0000 Lcom/fs/starfarer/api/util/TimeoutTracker; 
L603:   aload 18 
L605:   fload 17 
L607:   invokevirtual Method com/fs/starfarer/api/util/TimeoutTracker set (Ljava/lang/Object;F)V 

        .stack same 
L610:   aload 19 
L612:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L617:   ifne L575 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/tasks/CombatTaskManager Object com/fs/starfarer/combat/CombatFleetManager Integer Integer Integer Object com/fs/starfarer/combat/CombatFleetManager$O0 Object java/util/Iterator Object com/fs/starfarer/combat/tasks/CombatTask Integer Integer Integer Integer Float Float 
            stack 
        .end stack 
L620:   iload 14 
L622:   ifeq L649 
L625:   iload 7 
L627:   ifne L649 
L630:   aload_0 
L631:   aload 8 
L633:   fload 15 
L635:   fload 16 
L637:   fadd 
L638:   invokevirtual Method com/fs/starfarer/combat/CombatEngine isInCorner (Lcom/fs/starfarer/combat/CombatFleetManager$O0;F)Z 
L641:   ifeq L649 
L644:   iload 11 
L646:   ifne L649 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Float Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/tasks/CombatTaskManager Object com/fs/starfarer/combat/CombatFleetManager Integer Integer Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L649:   aload 9 
L651:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L656:   ifne L268 
L659:   return 
L660:   
    .end code 
.end method 

.method protected couldPotentiallySurround : (Lcom/fs/starfarer/combat/CombatFleetManager$O0;)Z 
    .code stack 3 locals 10 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getEnemyFleetManager ()Lcom/fs/starfarer/combat/CombatFleetManager; 
L4:     astore_2 
L5:     aload_0 
L6:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerFleetManager ()Lcom/fs/starfarer/combat/CombatFleetManager; 
L9:     astore_3 
L10:    iconst_0 
L11:    istore 4 
L13:    iconst_0 
L14:    istore 5 
L16:    iconst_0 
L17:    istore 6 
L19:    aload_2 
L20:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getDeployed ()Ljava/util/Set; 
L23:    invokeinterface InterfaceMethod java/util/Set iterator ()Ljava/util/Iterator; 1 
L28:    astore 8 
L30:    goto L166 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager$O0 Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/CombatFleetManager Integer Integer Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L33:    aload 8 
L35:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L40:    checkcast com/fs/starfarer/combat/CombatFleetManager$O0 
L43:    astore 7 
L45:    aload 7 
L47:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 isFighterWing ()Z 
L50:    ifeq L56 
L53:    goto L166 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager$O0 Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/CombatFleetManager Integer Integer Integer Object com/fs/starfarer/combat/CombatFleetManager$O0 Object java/util/Iterator 
            stack 
        .end stack 
L56:    aload 7 
L58:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L61:    iconst_1 
L62:    invokevirtual Method com/fs/starfarer/combat/entities/Ship isNonCombat (Z)Z 
L65:    ifeq L71 
L68:    goto L166 

        .stack same 
L71:    aload 7 
L73:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L76:    invokevirtual Method com/fs/starfarer/combat/entities/Ship isRetreating ()Z 
L79:    ifeq L85 
L82:    goto L166 

        .stack same 
L85:    aload 7 
L87:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L90:    invokevirtual Method com/fs/starfarer/combat/entities/Ship isStationModule ()Z 
L93:    ifeq L99 
L96:    goto L166 

        .stack same 
L99:    aload_1 
L100:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L103:   aload 7 
L105:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L108:   invokestatic Method com/fs/starfarer/prototype/Utils 'Ø00000' (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)F 
L111:   fstore 9 
L113:   fload 9 
L115:   ldc_w +7500.0f 
L118:   fcmpg 
L119:   ifge L166 
L122:   iinc 4 1 
L125:   aload 7 
L127:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L130:   iconst_0 
L131:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isNonCombat (Z)Z 
L134:   ifne L166 
L137:   aload 7 
L139:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L142:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullSize ()Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L145:   invokevirtual Method com/fs/starfarer/api/combat/ShipAPI$HullSize ordinal ()I 
L148:   aload_1 
L149:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L152:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullSize ()Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L155:   invokevirtual Method com/fs/starfarer/api/combat/ShipAPI$HullSize ordinal ()I 
L158:   if_icmple L166 
L161:   iconst_1 
L162:   istore 6 
L164:   iconst_1 
L165:   ireturn 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager$O0 Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/CombatFleetManager Integer Integer Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L166:   aload 8 
L168:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L173:   ifne L33 
L176:   aload_3 
L177:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getDeployed ()Ljava/util/Set; 
L180:   invokeinterface InterfaceMethod java/util/Set iterator ()Ljava/util/Iterator; 1 
L185:   astore 8 
L187:   goto L291 

        .stack same 
L190:   aload 8 
L192:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L197:   checkcast com/fs/starfarer/combat/CombatFleetManager$O0 
L200:   astore 7 
L202:   aload 7 
L204:   aload_1 
L205:   if_acmpne L211 
L208:   goto L291 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager$O0 Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/CombatFleetManager Integer Integer Integer Object com/fs/starfarer/combat/CombatFleetManager$O0 Object java/util/Iterator 
            stack 
        .end stack 
L211:   aload 7 
L213:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 isFighterWing ()Z 
L216:   ifeq L222 
L219:   goto L291 

        .stack same 
L222:   aload 7 
L224:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L227:   iconst_1 
L228:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isNonCombat (Z)Z 
L231:   ifeq L237 
L234:   goto L291 

        .stack same 
L237:   aload 7 
L239:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L242:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isRetreating ()Z 
L245:   ifeq L251 
L248:   goto L291 

        .stack same 
L251:   aload 7 
L253:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L256:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isStationModule ()Z 
L259:   ifeq L265 
L262:   goto L291 

        .stack same 
L265:   aload_1 
L266:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L269:   aload 7 
L271:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L274:   invokestatic Method com/fs/starfarer/prototype/Utils 'Ø00000' (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)F 
L277:   fstore 9 
L279:   fload 9 
L281:   ldc_w +7500.0f 
L284:   fcmpg 
L285:   ifge L291 
L288:   iinc 5 1 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager$O0 Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/CombatFleetManager Integer Integer Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L291:   aload 8 
L293:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L298:   ifne L190 
L301:   iload 4 
L303:   i2f 
L304:   iload 5 
L306:   i2f 
L307:   ldc_w +3.0f 
L310:   fadd 
L311:   fcmpl 
L312:   iflt L317 
L315:   iconst_1 
L316:   ireturn 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager$O0 Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/CombatFleetManager Integer Integer Integer 
            stack 
        .end stack 
L317:   iconst_0 
L318:   ireturn 
L319:   
    .end code 
.end method 

.method protected isSurrounded : (Lcom/fs/starfarer/combat/CombatFleetManager$O0;)Z 
    .code stack 4 locals 10 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getEnemyFleetManager ()Lcom/fs/starfarer/combat/CombatFleetManager; 
L4:     astore_2 
L5:     new java/util/ArrayList 
L8:     dup 
L9:     invokespecial Method java/util/ArrayList <init> ()V 
L12:    astore_3 
L13:    aload_2 
L14:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getDeployed ()Ljava/util/Set; 
L17:    invokeinterface InterfaceMethod java/util/Set iterator ()Ljava/util/Iterator; 1 
L22:    astore 5 
L24:    goto L135 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager$O0 Object com/fs/starfarer/combat/CombatFleetManager Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L27:    aload 5 
L29:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L34:    checkcast com/fs/starfarer/combat/CombatFleetManager$O0 
L37:    astore 4 
L39:    aload 4 
L41:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 isFighterWing ()Z 
L44:    ifeq L50 
L47:    goto L135 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager$O0 Object com/fs/starfarer/combat/CombatFleetManager Object java/util/List Object com/fs/starfarer/combat/CombatFleetManager$O0 Object java/util/Iterator 
            stack 
        .end stack 
L50:    aload 4 
L52:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L55:    iconst_1 
L56:    invokevirtual Method com/fs/starfarer/combat/entities/Ship isNonCombat (Z)Z 
L59:    ifeq L65 
L62:    goto L135 

        .stack same 
L65:    aload 4 
L67:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L70:    invokevirtual Method com/fs/starfarer/combat/entities/Ship isRetreating ()Z 
L73:    ifeq L79 
L76:    goto L135 

        .stack same 
L79:    aload_1 
L80:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L83:    aload 4 
L85:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L88:    invokestatic Method com/fs/starfarer/prototype/Utils 'Ø00000' (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)F 
L91:    fstore 6 
L93:    fload 6 
L95:    ldc_w +2500.0f 
L98:    fcmpl 
L99:    ifle L105 
L102:   goto L135 

        .stack append Float 
L105:   aload_1 
L106:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L109:   aload 4 
L111:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L114:   invokestatic Method com/fs/starfarer/prototype/Utils 'Ó00000' (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)F 
L117:   fstore 7 
L119:   aload_3 
L120:   new java/lang/Float 
L123:   dup 
L124:   fload 7 
L126:   invokespecial Method java/lang/Float <init> (F)V 
L129:   invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L134:   pop 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager$O0 Object com/fs/starfarer/combat/CombatFleetManager Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L135:   aload 5 
L137:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L142:   ifne L27 
L145:   fconst_0 
L146:   fstore 4 
L148:   aload_3 
L149:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L154:   astore 6 
L156:   goto L247 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager$O0 Object com/fs/starfarer/combat/CombatFleetManager Object java/util/List Float Top Object java/util/Iterator 
            stack 
        .end stack 
L159:   aload 6 
L161:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L166:   checkcast java/lang/Float 
L169:   astore 5 
L171:   aload 5 
L173:   ifnonnull L179 
L176:   goto L247 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager$O0 Object com/fs/starfarer/combat/CombatFleetManager Object java/util/List Float Object java/lang/Float Object java/util/Iterator 
            stack 
        .end stack 
L179:   aload_3 
L180:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L185:   astore 8 
L187:   goto L237 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager$O0 Object com/fs/starfarer/combat/CombatFleetManager Object java/util/List Float Object java/lang/Float Object java/util/Iterator Top Object java/util/Iterator 
            stack 
        .end stack 
L190:   aload 8 
L192:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L197:   checkcast java/lang/Float 
L200:   astore 7 
L202:   aload 7 
L204:   ifnonnull L210 
L207:   goto L237 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager$O0 Object com/fs/starfarer/combat/CombatFleetManager Object java/util/List Float Object java/lang/Float Object java/util/Iterator Object java/lang/Float Object java/util/Iterator 
            stack 
        .end stack 
L210:   aload 5 
L212:   invokevirtual Method java/lang/Float floatValue ()F 
L215:   aload 7 
L217:   invokevirtual Method java/lang/Float floatValue ()F 
L220:   invokestatic Method com/fs/starfarer/prototype/Utils o00000 (FF)F 
L223:   fstore 9 
L225:   fload 9 
L227:   fload 4 
L229:   fcmpl 
L230:   ifle L237 
L233:   fload 9 
L235:   fstore 4 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager$O0 Object com/fs/starfarer/combat/CombatFleetManager Object java/util/List Float Object java/lang/Float Object java/util/Iterator Top Object java/util/Iterator 
            stack 
        .end stack 
L237:   aload 8 
L239:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L244:   ifne L190 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager$O0 Object com/fs/starfarer/combat/CombatFleetManager Object java/util/List Float Top Object java/util/Iterator 
            stack 
        .end stack 
L247:   aload 6 
L249:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L254:   ifne L159 
L257:   fload 4 
L259:   ldc_w +140.0f 
L262:   fcmpl 
L263:   ifle L268 
L266:   iconst_1 
L267:   ireturn 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager$O0 Object com/fs/starfarer/combat/CombatFleetManager Object java/util/List Float 
            stack 
        .end stack 
L268:   iconst_0 
L269:   ireturn 
L270:   
    .end code 
.end method 

.method protected isInCorner : (Lcom/fs/starfarer/combat/CombatFleetManager$O0;F)Z 
    .code stack 3 locals 11 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getCombatMap ()Lcom/fs/starfarer/combat/A/B; 
L4:     astore_3 
L5:     aload_1 
L6:     invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L9:     getfield Field org/lwjgl/util/vector/Vector2f x F 
L12:    fstore 4 
L14:    aload_1 
L15:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L18:    getfield Field org/lwjgl/util/vector/Vector2f y F 
L21:    fstore 5 
L23:    fload 4 
L25:    aload_3 
L26:    invokevirtual Method com/fs/starfarer/combat/A/B 'Ò00000' ()F 
L29:    fsub 
L30:    fload 5 
L32:    aload_3 
L33:    invokevirtual Method com/fs/starfarer/combat/A/B 'Õ00000' ()F 
L36:    fsub 
L37:    fadd 
L38:    fstore 6 
L40:    aload_3 
L41:    invokevirtual Method com/fs/starfarer/combat/A/B 'Ö00000' ()F 
L44:    fload 4 
L46:    fsub 
L47:    fload 5 
L49:    aload_3 
L50:    invokevirtual Method com/fs/starfarer/combat/A/B 'Õ00000' ()F 
L53:    fsub 
L54:    fadd 
L55:    fstore 7 
L57:    fload 4 
L59:    aload_3 
L60:    invokevirtual Method com/fs/starfarer/combat/A/B 'Ò00000' ()F 
L63:    fsub 
L64:    aload_3 
L65:    invokevirtual Method com/fs/starfarer/combat/A/B void ()F 
L68:    fload 5 
L70:    fsub 
L71:    fadd 
L72:    fstore 8 
L74:    aload_3 
L75:    invokevirtual Method com/fs/starfarer/combat/A/B 'Ö00000' ()F 
L78:    fload 4 
L80:    fsub 
L81:    aload_3 
L82:    invokevirtual Method com/fs/starfarer/combat/A/B void ()F 
L85:    fload 5 
L87:    fsub 
L88:    fadd 
L89:    fstore 9 
L91:    fload_2 
L92:    fconst_2 
L93:    fmul 
L94:    fstore 10 
L96:    fload 6 
L98:    fload 10 
L100:   fcmpg 
L101:   ifge L106 
L104:   iconst_1 
L105:   ireturn 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/CombatFleetManager$O0 Float Object com/fs/starfarer/combat/A/B Float Float Float Float Float Float Float 
            stack 
        .end stack 
L106:   fload 7 
L108:   fload 10 
L110:   fcmpg 
L111:   ifge L116 
L114:   iconst_1 
L115:   ireturn 

        .stack same 
L116:   fload 8 
L118:   fload 10 
L120:   fcmpg 
L121:   ifge L126 
L124:   iconst_1 
L125:   ireturn 

        .stack same 
L126:   fload 9 
L128:   fload 10 
L130:   fcmpg 
L131:   ifge L136 
L134:   iconst_1 
L135:   ireturn 

        .stack same 
L136:   ldc_w +1000.0f 
L139:   fstore_2 
L140:   fload 4 
L142:   aload_3 
L143:   invokevirtual Method com/fs/starfarer/combat/A/B 'Ò00000' ()F 
L146:   fload_2 
L147:   fadd 
L148:   fcmpg 
L149:   ifge L154 
L152:   iconst_1 
L153:   ireturn 

        .stack same 
L154:   fload 4 
L156:   aload_3 
L157:   invokevirtual Method com/fs/starfarer/combat/A/B 'Ö00000' ()F 
L160:   fload_2 
L161:   fsub 
L162:   fcmpl 
L163:   ifle L168 
L166:   iconst_1 
L167:   ireturn 

        .stack same 
L168:   fload 5 
L170:   aload_3 
L171:   invokevirtual Method com/fs/starfarer/combat/A/B 'Õ00000' ()F 
L174:   fload_2 
L175:   fadd 
L176:   fcmpg 
L177:   ifge L182 
L180:   iconst_1 
L181:   ireturn 

        .stack same 
L182:   fload 5 
L184:   aload_3 
L185:   invokevirtual Method com/fs/starfarer/combat/A/B void ()F 
L188:   fload_2 
L189:   fsub 
L190:   fcmpl 
L191:   ifle L196 
L194:   iconst_1 
L195:   ireturn 

        .stack same 
L196:   iconst_0 
L197:   ireturn 
L198:   
    .end code 
.end method 

.method public spawnDamagingExplosion : (Lcom/fs/starfarer/api/loading/DamagingExplosionSpec;Lcom/fs/starfarer/api/combat/ShipAPI;Lorg/lwjgl/util/vector/Vector2f;)Lcom/fs/starfarer/api/combat/DamagingProjectileAPI; 
    .code stack 5 locals 4 
L0:     aload_0 
L1:     aload_1 
L2:     aload_2 
L3:     aload_3 
L4:     iconst_0 
L5:     invokevirtual Method com/fs/starfarer/combat/CombatEngine spawnDamagingExplosion (Lcom/fs/starfarer/api/loading/DamagingExplosionSpec;Lcom/fs/starfarer/api/combat/ShipAPI;Lorg/lwjgl/util/vector/Vector2f;Z)Lcom/fs/starfarer/api/combat/DamagingProjectileAPI; 
L8:     areturn 
L9:     
    .end code 
.end method 

.method public spawnDamagingExplosion : (Lcom/fs/starfarer/api/loading/DamagingExplosionSpec;Lcom/fs/starfarer/api/combat/ShipAPI;Lorg/lwjgl/util/vector/Vector2f;Z)Lcom/fs/starfarer/api/combat/DamagingProjectileAPI; 
    .code stack 7 locals 6 
L0:     aload_1 
L1:     ifnonnull L6 
L4:     aconst_null 
L5:     areturn 

        .stack same 
L6:     aload_2 
L7:     checkcast com/fs/starfarer/combat/entities/Ship 
L10:    aconst_null 
L11:    aload_1 
L12:    aload_3 
L13:    fconst_0 
L14:    new org/lwjgl/util/vector/Vector2f 
L17:    dup 
L18:    invokespecial Method org/lwjgl/util/vector/Vector2f <init> ()V 
L21:    invokestatic Method com/fs/starfarer/loading/specs/a 'super' (Lcom/fs/starfarer/combat/entities/Ship;Lcom/fs/starfarer/combat/systems/o00O;Ljava/lang/Object;Lorg/lwjgl/util/vector/Vector2f;FLorg/lwjgl/util/vector/Vector2f;)Ljava/lang/Object; 
L24:    checkcast com/fs/starfarer/combat/entities/DamagingExplosion 
L27:    astore 5 
L29:    iload 4 
L31:    ifeq L40 
L34:    aload 5 
L36:    aload_2 
L37:    invokevirtual Method com/fs/starfarer/combat/entities/DamagingExplosion removeDamagedAlready (Lcom/fs/starfarer/api/combat/CombatEntityAPI;)V 

        .stack append Object com/fs/starfarer/combat/entities/DamagingExplosion 
L40:    aload 5 
L42:    areturn 
L43:    
    .end code 
.end method 

.method public spawnMuzzleFlashOrSmoke : (Lcom/fs/starfarer/api/combat/ShipAPI;Lcom/fs/starfarer/api/loading/WeaponSlotAPI;Lcom/fs/starfarer/api/loading/WeaponSpecAPI;IF)V 
    .code stack 5 locals 14 
L0:     aload_1 
L1:     ifnull L14 
L4:     aload_1 
L5:     invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ShipAPI isNoMuzzleFlash ()Z 1 
L10:    ifeq L14 
L13:    return 

        .stack same 
L14:    aload_2 
L15:    checkcast com/fs/starfarer/loading/specs/nullsuper 
L18:    aload_3 
L19:    checkcast com/fs/starfarer/loading/specs/BaseWeaponSpec 
L22:    iload 4 
L24:    invokestatic Method com/fs/starfarer/combat/entities/ship/A/OoOO 'Ò00000' (Lcom/fs/starfarer/loading/specs/nullsuper;Lcom/fs/starfarer/loading/specs/BaseWeaponSpec;I)Lorg/lwjgl/util/vector/Vector2f; 
L27:    astore 6 
L29:    aload_2 
L30:    aload_1 
L31:    invokeinterface InterfaceMethod com/fs/starfarer/api/loading/WeaponSlotAPI computePosition (Lcom/fs/starfarer/api/combat/CombatEntityAPI;)Lorg/lwjgl/util/vector/Vector2f; 2 
L36:    astore 7 
L38:    aload_2 
L39:    invokeinterface InterfaceMethod com/fs/starfarer/api/loading/WeaponSlotAPI getAngle ()F 1 
L44:    aload_1 
L45:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ShipAPI getFacing ()F 1 
L50:    fadd 
L51:    fstore 8 
L53:    fload 8 
L55:    f2d 
L56:    invokestatic Method java/lang/Math toRadians (D)D 
L59:    invokestatic Method java/lang/Math cos (D)D 
L62:    d2f 
L63:    fstore 9 
L65:    fload 8 
L67:    f2d 
L68:    invokestatic Method java/lang/Math toRadians (D)D 
L71:    invokestatic Method java/lang/Math sin (D)D 
L74:    d2f 
L75:    fstore 10 
L77:    new org/lwjgl/util/vector/Vector2f 
L80:    dup 
L81:    aload 7 
L83:    invokespecial Method org/lwjgl/util/vector/Vector2f <init> (Lorg/lwjgl/util/vector/ReadableVector2f;)V 
L86:    astore 11 
L88:    aload 11 
L90:    dup 
L91:    getfield Field org/lwjgl/util/vector/Vector2f x F 
L94:    aload 6 
L96:    getfield Field org/lwjgl/util/vector/Vector2f x F 
L99:    fload 9 
L101:   fmul 
L102:   aload 6 
L104:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L107:   fload 10 
L109:   fmul 
L110:   fsub 
L111:   fadd 
L112:   putfield Field org/lwjgl/util/vector/Vector2f x F 
L115:   aload 11 
L117:   dup 
L118:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L121:   aload 6 
L123:   getfield Field org/lwjgl/util/vector/Vector2f x F 
L126:   fload 10 
L128:   fmul 
L129:   aload 6 
L131:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L134:   fload 9 
L136:   fmul 
L137:   fadd 
L138:   fadd 
L139:   putfield Field org/lwjgl/util/vector/Vector2f y F 
L142:   aload_3 
L143:   instanceof com/fs/starfarer/loading/specs/Oo0O 
L146:   ifeq L162 
L149:   aload_3 
L150:   checkcast com/fs/starfarer/loading/specs/Oo0O 
L153:   invokevirtual Method com/fs/starfarer/loading/specs/Oo0O getAnimationType ()Lcom/fs/starfarer/loading/specs/Oo0O$Oo; 
L156:   getstatic Field com/fs/starfarer/loading/specs/Oo0O$Oo 'Ô00000' Lcom/fs/starfarer/loading/specs/Oo0O$Oo; 
L159:   if_acmpeq L179 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/api/combat/ShipAPI Object com/fs/starfarer/api/loading/WeaponSlotAPI Object com/fs/starfarer/api/loading/WeaponSpecAPI Integer Float Object org/lwjgl/util/vector/Vector2f Object org/lwjgl/util/vector/Vector2f Float Float Float Object org/lwjgl/util/vector/Vector2f 
            stack 
        .end stack 
L162:   aload_3 
L163:   checkcast com/fs/starfarer/loading/specs/Oo0O 
L166:   invokevirtual Method com/fs/starfarer/loading/specs/Oo0O getAnimationType ()Lcom/fs/starfarer/loading/specs/Oo0O$Oo; 
L169:   getstatic Field com/fs/starfarer/loading/specs/Oo0O$Oo o00000 Lcom/fs/starfarer/loading/specs/Oo0O$Oo; 
L172:   if_acmpeq L179 
L175:   iconst_0 
L176:   goto L180 

        .stack same 
L179:   iconst_1 

        .stack stack_1 Integer 
L180:   istore 12 
L182:   aload_3 
L183:   instanceof com/fs/starfarer/loading/specs/Oo0O 
L186:   ifeq L206 
L189:   aload_3 
L190:   checkcast com/fs/starfarer/loading/specs/Oo0O 
L193:   invokevirtual Method com/fs/starfarer/loading/specs/Oo0O getAnimationType ()Lcom/fs/starfarer/loading/specs/Oo0O$Oo; 
L196:   getstatic Field com/fs/starfarer/loading/specs/Oo0O$Oo class Lcom/fs/starfarer/loading/specs/Oo0O$Oo; 
L199:   if_acmpne L206 
L202:   iconst_1 
L203:   goto L207 

        .stack append Integer 
L206:   iconst_0 

        .stack stack_1 Integer 
L207:   istore 13 
L209:   invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L212:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getViewport ()Lcom/fs/starfarer/combat/CombatViewport; 
L215:   aload 11 
L217:   ldc_w +100.0f 
L220:   invokevirtual Method com/fs/starfarer/combat/CombatViewport isNearViewport (Lorg/lwjgl/util/vector/Vector2f;F)Z 
L223:   ifeq L279 
L226:   iload 12 
L228:   ifeq L254 
L231:   aload_3 
L232:   checkcast com/fs/starfarer/loading/specs/Oo0O 
L235:   invokevirtual Method com/fs/starfarer/loading/specs/Oo0O getMuzzleFlashSpec ()Lcom/fs/starfarer/api/loading/MuzzleFlashSpec; 
L238:   aload 11 
L240:   fload 5 
L242:   aload_1 
L243:   invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ShipAPI getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 1 
L248:   invokestatic Method com/fs/starfarer/combat/entities/ship/A/class o00000 (Lcom/fs/starfarer/api/loading/MuzzleFlashSpec;Lorg/lwjgl/util/vector/Vector2f;FLorg/lwjgl/util/vector/Vector2f;)V 
L251:   goto L279 

        .stack append Integer 
L254:   iload 13 
L256:   ifeq L279 
L259:   aload_3 
L260:   checkcast com/fs/starfarer/loading/specs/Oo0O 
L263:   invokevirtual Method com/fs/starfarer/loading/specs/Oo0O getSmokeSpec ()Lcom/fs/starfarer/loading/specs/oO0o; 
L266:   aload 11 
L268:   fload 5 
L270:   aload_1 
L271:   invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ShipAPI getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 1 
L276:   invokestatic Method com/fs/starfarer/combat/entities/ship/A/class o00000 (Lcom/fs/starfarer/loading/specs/oO0o;Lorg/lwjgl/util/vector/Vector2f;FLorg/lwjgl/util/vector/Vector2f;)V 

        .stack same 
L279:   return 
L280:   
    .end code 
.end method 

.method public spawnMuzzleFlashOrSmoke : (Lcom/fs/starfarer/api/combat/ShipAPI;Lorg/lwjgl/util/vector/Vector2f;Lcom/fs/starfarer/api/loading/WeaponSpecAPI;F)V 
    .code stack 4 locals 7 
L0:     aload_1 
L1:     ifnull L14 
L4:     aload_1 
L5:     invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ShipAPI isNoMuzzleFlash ()Z 1 
L10:    ifeq L14 
L13:    return 

        .stack same 
L14:    aload_3 
L15:    instanceof com/fs/starfarer/loading/specs/Oo0O 
L18:    ifeq L34 
L21:    aload_3 
L22:    checkcast com/fs/starfarer/loading/specs/Oo0O 
L25:    invokevirtual Method com/fs/starfarer/loading/specs/Oo0O getAnimationType ()Lcom/fs/starfarer/loading/specs/Oo0O$Oo; 
L28:    getstatic Field com/fs/starfarer/loading/specs/Oo0O$Oo 'Ô00000' Lcom/fs/starfarer/loading/specs/Oo0O$Oo; 
L31:    if_acmpeq L51 

        .stack same 
L34:    aload_3 
L35:    checkcast com/fs/starfarer/loading/specs/Oo0O 
L38:    invokevirtual Method com/fs/starfarer/loading/specs/Oo0O getAnimationType ()Lcom/fs/starfarer/loading/specs/Oo0O$Oo; 
L41:    getstatic Field com/fs/starfarer/loading/specs/Oo0O$Oo o00000 Lcom/fs/starfarer/loading/specs/Oo0O$Oo; 
L44:    if_acmpeq L51 
L47:    iconst_0 
L48:    goto L52 

        .stack same 
L51:    iconst_1 

        .stack stack_1 Integer 
L52:    istore 5 
L54:    aload_3 
L55:    instanceof com/fs/starfarer/loading/specs/Oo0O 
L58:    ifeq L78 
L61:    aload_3 
L62:    checkcast com/fs/starfarer/loading/specs/Oo0O 
L65:    invokevirtual Method com/fs/starfarer/loading/specs/Oo0O getAnimationType ()Lcom/fs/starfarer/loading/specs/Oo0O$Oo; 
L68:    getstatic Field com/fs/starfarer/loading/specs/Oo0O$Oo class Lcom/fs/starfarer/loading/specs/Oo0O$Oo; 
L71:    if_acmpne L78 
L74:    iconst_1 
L75:    goto L79 

        .stack append Integer 
L78:    iconst_0 

        .stack stack_1 Integer 
L79:    istore 6 
L81:    invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L84:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getViewport ()Lcom/fs/starfarer/combat/CombatViewport; 
L87:    aload_2 
L88:    ldc_w +100.0f 
L91:    invokevirtual Method com/fs/starfarer/combat/CombatViewport isNearViewport (Lorg/lwjgl/util/vector/Vector2f;F)Z 
L94:    ifeq L148 
L97:    iload 5 
L99:    ifeq L124 
L102:   aload_3 
L103:   checkcast com/fs/starfarer/loading/specs/Oo0O 
L106:   invokevirtual Method com/fs/starfarer/loading/specs/Oo0O getMuzzleFlashSpec ()Lcom/fs/starfarer/api/loading/MuzzleFlashSpec; 
L109:   aload_2 
L110:   fload 4 
L112:   aload_1 
L113:   invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ShipAPI getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 1 
L118:   invokestatic Method com/fs/starfarer/combat/entities/ship/A/class o00000 (Lcom/fs/starfarer/api/loading/MuzzleFlashSpec;Lorg/lwjgl/util/vector/Vector2f;FLorg/lwjgl/util/vector/Vector2f;)V 
L121:   goto L148 

        .stack append Integer 
L124:   iload 6 
L126:   ifeq L148 
L129:   aload_3 
L130:   checkcast com/fs/starfarer/loading/specs/Oo0O 
L133:   invokevirtual Method com/fs/starfarer/loading/specs/Oo0O getSmokeSpec ()Lcom/fs/starfarer/loading/specs/oO0o; 
L136:   aload_2 
L137:   fload 4 
L139:   aload_1 
L140:   invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ShipAPI getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 1 
L145:   invokestatic Method com/fs/starfarer/combat/entities/ship/A/class o00000 (Lcom/fs/starfarer/loading/specs/oO0o;Lorg/lwjgl/util/vector/Vector2f;FLorg/lwjgl/util/vector/Vector2f;)V 

        .stack same 
L148:   return 
L149:   
    .end code 
.end method 

.method public isAwareOf : (ILcom/fs/starfarer/api/combat/CombatEntityAPI;)Z 
    .code stack 2 locals 3 
L0:     aload_2 
L1:     instanceof com/fs/starfarer/combat/E/B 
L4:     ifeq L16 
L7:     iload_1 
L8:     aload_2 
L9:     checkcast com/fs/starfarer/combat/E/B 
L12:    invokestatic Method com/fs/starfarer/combat/ai/OO0O 'super' (ILcom/fs/starfarer/combat/E/B;)Z 
L15:    ireturn 

        .stack same 
L16:    iconst_0 
L17:    ireturn 
L18:    
    .end code 
.end method 

.method public headInDirectionWithoutTurning : (Lcom/fs/starfarer/api/combat/MissileAPI;FF)V 
    .code stack 3 locals 4 
L0:     aload_1 
L1:     checkcast com/fs/starfarer/combat/ai/o0oO 
L4:     fload_2 
L5:     fload_3 
L6:     invokestatic Method com/fs/starfarer/combat/ai/OO0O 'Ò00000' (Lcom/fs/starfarer/combat/ai/o0oO;FF)V 
L9:     return 
L10:    
    .end code 
.end method 

.method public headInDirectionWithoutTurning : (Lcom/fs/starfarer/api/combat/ShipAPI;FF)V 
    .code stack 3 locals 4 
L0:     aload_1 
L1:     checkcast com/fs/starfarer/combat/ai/o0oO 
L4:     fload_2 
L5:     fload_3 
L6:     invokestatic Method com/fs/starfarer/combat/ai/OO0O 'Ò00000' (Lcom/fs/starfarer/combat/ai/o0oO;FF)V 
L9:     return 
L10:    
    .end code 
.end method 

.method public getAimPointWithLeadForAutofire : (Lcom/fs/starfarer/api/combat/CombatEntityAPI;FLcom/fs/starfarer/api/combat/CombatEntityAPI;F)Lorg/lwjgl/util/vector/Vector2f; 
    .code stack 4 locals 5 
L0:     aload_3 
L1:     instanceof com/fs/starfarer/combat/E/B 
L4:     ifeq L29 
L7:     aload_1 
L8:     instanceof com/fs/starfarer/combat/E/B 
L11:    ifeq L29 
L14:    aload_1 
L15:    checkcast com/fs/starfarer/combat/E/B 
L18:    fload_2 
L19:    aload_3 
L20:    checkcast com/fs/starfarer/combat/E/B 
L23:    fload 4 
L25:    invokestatic Method com/fs/starfarer/combat/ai/OO0O 'super' (Lcom/fs/starfarer/combat/E/B;FLcom/fs/starfarer/combat/E/B;F)Lorg/lwjgl/util/vector/Vector2f; 
L28:    areturn 

        .stack same 
L29:    aload_3 
L30:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatEntityAPI getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L35:    areturn 
L36:    
    .end code 
.end method 

.method public getListenerManager : ()Lcom/fs/starfarer/api/combat/listeners/CombatListenerManagerAPI; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'class.new' Lcom/fs/starfarer/combat/O; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public addNeedsCleanup : (Lcom/fs/starfarer/title/Object/do;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'null.new' Ljava/util/Set; 
L4:     aload_1 
L5:     invokeinterface InterfaceMethod java/util/Set add (Ljava/lang/Object;)Z 2 
L10:    pop 
L11:    return 
L12:    
    .end code 
.end method 

.method public doNotCleanupThisFrame : (Lcom/fs/starfarer/title/Object/do;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatEngine 'õÕ0000' Ljava/util/Set; 
L4:     aload_1 
L5:     invokeinterface InterfaceMethod java/util/Set add (Ljava/lang/Object;)Z 2 
L10:    pop 
L11:    return 
L12:    
    .end code 
.end method 

.method public hasAttachedFloaty : (Lcom/fs/starfarer/api/combat/CombatEntityAPI;)Z 
    .code stack 2 locals 2 
L0:     aload_1 
L1:     instanceof com/fs/starfarer/combat/E/B 
L4:     ifeq L19 
L7:     aload_0 
L8:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getFloatingTextManager ()Lcom/fs/starfarer/renderers/Q; 
L11:    aload_1 
L12:    checkcast com/fs/starfarer/combat/E/B 
L15:    invokevirtual Method com/fs/starfarer/renderers/Q 'super' (Lcom/fs/starfarer/combat/E/B;)Z 
L18:    ireturn 

        .stack same 
L19:    iconst_0 
L20:    ireturn 
L21:    
    .end code 
.end method 

.method public createFakeWeapon : (Lcom/fs/starfarer/api/combat/ShipAPI;Ljava/lang/String;)Lcom/fs/starfarer/api/combat/WeaponAPI; 
    .code stack 12 locals 6 
L0:     aload_2 
L1:     invokestatic Method com/fs/starfarer/loading/Q String (Ljava/lang/String;)Lcom/fs/starfarer/loading/specs/BaseWeaponSpec; 
L4:     astore_3 
L5:     new com/fs/starfarer/loading/specs/nullsuper 
L8:     dup 
L9:     ldc_w 'blah' 
L12:    aload_3 
L13:    invokevirtual Method com/fs/starfarer/loading/specs/BaseWeaponSpec getType ()Lcom/fs/starfarer/api/combat/WeaponAPI$WeaponType; 
L16:    aload_3 
L17:    invokevirtual Method com/fs/starfarer/loading/specs/BaseWeaponSpec getSize ()Lcom/fs/starfarer/api/combat/WeaponAPI$WeaponSize; 
L20:    getstatic Field com/fs/starfarer/loading/specs/nullsuper$o class Lcom/fs/starfarer/loading/specs/nullsuper$o; 
L23:    new org/lwjgl/util/vector/Vector2f 
L26:    dup 
L27:    invokespecial Method org/lwjgl/util/vector/Vector2f <init> ()V 
L30:    new com/fs/starfarer/loading/specs/W 
L33:    dup 
L34:    ldc_w 'blah' 
L37:    new org/lwjgl/util/vector/Vector2f 
L40:    dup 
L41:    invokespecial Method org/lwjgl/util/vector/Vector2f <init> ()V 
L44:    invokespecial Method com/fs/starfarer/loading/specs/W <init> (Ljava/lang/String;Lorg/lwjgl/util/vector/Vector2f;)V 
L47:    fconst_0 
L48:    ldc_w +90.0f 
L51:    invokespecial Method com/fs/starfarer/loading/specs/nullsuper <init> (Ljava/lang/String;Lcom/fs/starfarer/api/combat/WeaponAPI$WeaponType;Lcom/fs/starfarer/api/combat/WeaponAPI$WeaponSize;Lcom/fs/starfarer/loading/specs/nullsuper$o;Lorg/lwjgl/util/vector/Vector2f;Lcom/fs/starfarer/loading/specs/W;FF)V 
L54:    astore 4 
L56:    aload_3 
L57:    aload 4 
L59:    aload_1 
L60:    checkcast com/fs/starfarer/combat/entities/Ship 
L63:    invokestatic Method com/fs/starfarer/loading/specs/_ o00000 (Lcom/fs/starfarer/loading/specs/BaseWeaponSpec;Lcom/fs/starfarer/loading/specs/nullsuper;Lcom/fs/starfarer/combat/entities/Ship;)Lcom/fs/starfarer/combat/entities/ship/A/OooO; 
L66:    astore 5 
L68:    aload 5 
L70:    checkcast com/fs/starfarer/api/combat/WeaponAPI 
L73:    areturn 
L74:    
    .end code 
.end method 

.method public getShipPlayerIsTransferringCommandFrom : ()Lcom/fs/starfarer/api/combat/ShipAPI; 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerFleetManager ()Lcom/fs/starfarer/combat/CombatFleetManager; 
L4:     invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getTransferManager ()Lcom/fs/starfarer/combat/B; 
L7:     astore_1 
L8:     aload_1 
L9:     ifnull L22 
L12:    aload_1 
L13:    invokevirtual Method com/fs/starfarer/combat/B 'ÖØO000' ()Lcom/fs/starfarer/combat/B$o; 
L16:    getstatic Field com/fs/starfarer/combat/B$o 'Ó00000' Lcom/fs/starfarer/combat/B$o; 
L19:    if_acmpne L24 

        .stack append Object com/fs/starfarer/combat/B 
L22:    aconst_null 
L23:    areturn 

        .stack same 
L24:    aload_1 
L25:    invokevirtual Method com/fs/starfarer/combat/B 'öØO000' ()Lcom/fs/starfarer/combat/entities/Ship; 
L28:    areturn 
L29:    
    .end code 
.end method 

.method public getShipPlayerIsTransferringCommandTo : ()Lcom/fs/starfarer/api/combat/ShipAPI; 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerFleetManager ()Lcom/fs/starfarer/combat/CombatFleetManager; 
L4:     invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getTransferManager ()Lcom/fs/starfarer/combat/B; 
L7:     astore_1 
L8:     aload_1 
L9:     ifnull L22 
L12:    aload_1 
L13:    invokevirtual Method com/fs/starfarer/combat/B 'ÖØO000' ()Lcom/fs/starfarer/combat/B$o; 
L16:    getstatic Field com/fs/starfarer/combat/B$o 'Ó00000' Lcom/fs/starfarer/combat/B$o; 
L19:    if_acmpne L24 

        .stack append Object com/fs/starfarer/combat/B 
L22:    aconst_null 
L23:    areturn 

        .stack same 
L24:    aload_1 
L25:    invokevirtual Method com/fs/starfarer/combat/B 'öØO000' ()Lcom/fs/starfarer/combat/entities/Ship; 
L28:    areturn 
L29:    
    .end code 
.end method 

.method public getShipPlayerLastTransferredCommandTo : ()Lcom/fs/starfarer/api/combat/ShipAPI; 
    .code stack 1 locals 2 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerFleetManager ()Lcom/fs/starfarer/combat/CombatFleetManager; 
L4:     invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getTransferManager ()Lcom/fs/starfarer/combat/B; 
L7:     astore_1 
L8:     aload_1 
L9:     ifnonnull L17 
L12:    aload_0 
L13:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L16:    areturn 

        .stack append Object com/fs/starfarer/combat/B 
L17:    aload_1 
L18:    invokevirtual Method com/fs/starfarer/combat/B 'õØO000' ()Lcom/fs/starfarer/api/combat/ShipAPI; 
L21:    areturn 
L22:    
    .end code 
.end method 

.method public setShipPlayerLastTransferredCommandTo : (Lcom/fs/starfarer/api/combat/ShipAPI;)V 
    .code stack 2 locals 3 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerFleetManager ()Lcom/fs/starfarer/combat/CombatFleetManager; 
L4:     invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getTransferManager ()Lcom/fs/starfarer/combat/B; 
L7:     astore_2 
L8:     aload_2 
L9:     ifnonnull L13 
L12:    return 

        .stack append Object com/fs/starfarer/combat/B 
L13:    aload_2 
L14:    aload_1 
L15:    invokevirtual Method com/fs/starfarer/combat/B o00000 (Lcom/fs/starfarer/api/combat/ShipAPI;)V 
L18:    return 
L19:    
    .end code 
.end method 

.method public createFXDrone : (Lcom/fs/starfarer/api/combat/ShipVariantAPI;)Lcom/fs/starfarer/api/combat/ShipAPI; 
    .code stack 3 locals 3 
L0:     aload_1 
L1:     ldc_w 'fx_drone' 
L4:     invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ShipVariantAPI addTag (Ljava/lang/String;)V 2 
L9:     aload_1 
L10:    checkcast com/fs/starfarer/loading/specs/HullVariantSpec 
L13:    aconst_null 
L14:    aconst_null 
L15:    invokestatic Method com/fs/starfarer/loading/specs/_ o00000 (Lcom/fs/starfarer/loading/specs/HullVariantSpec;Lcom/fs/starfarer/rpg/Person;Lcom/fs/starfarer/rpg/Person;)Lcom/fs/starfarer/combat/entities/Ship; 
L18:    astore_2 
L19:    aload_2 
L20:    areturn 
L21:    
    .end code 
.end method 

.method public applyImpact : (Lorg/lwjgl/util/vector/Vector2f;FLcom/fs/starfarer/api/combat/CombatEntityAPI;Lorg/lwjgl/util/vector/Vector2f;)V 
    .code stack 6 locals 8 
L0:     aload_3 
L1:     instanceof com/fs/starfarer/combat/E/B 
L4:     ifne L8 
L7:     return 

        .stack same 
L8:     new org/lwjgl/util/vector/Vector2f 
L11:    dup 
L12:    aload_1 
L13:    invokespecial Method org/lwjgl/util/vector/Vector2f <init> (Lorg/lwjgl/util/vector/ReadableVector2f;)V 
L16:    invokestatic Method com/fs/starfarer/prototype/Utils o00000 (Lorg/lwjgl/util/vector/Vector2f;)Lorg/lwjgl/util/vector/Vector2f; 
L19:    astore 5 
L21:    aload 4 
L23:    aload 5 
L25:    new org/lwjgl/util/vector/Vector2f 
L28:    dup 
L29:    invokespecial Method org/lwjgl/util/vector/Vector2f <init> ()V 
L32:    invokestatic Method org/lwjgl/util/vector/Vector2f sub (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)Lorg/lwjgl/util/vector/Vector2f; 
L35:    astore 6 
L37:    new com/fs/starfarer/combat/E/A/ooOO$Oo 
L40:    dup 
L41:    aload 6 
L43:    new org/lwjgl/util/vector/Vector2f 
L46:    dup 
L47:    aload_1 
L48:    invokespecial Method org/lwjgl/util/vector/Vector2f <init> (Lorg/lwjgl/util/vector/ReadableVector2f;)V 
L51:    fload_2 
L52:    invokespecial Method com/fs/starfarer/combat/E/A/ooOO$Oo <init> (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;F)V 
L55:    astore 7 
L57:    aload 7 
L59:    aload_3 
L60:    checkcast com/fs/starfarer/combat/E/B 
L63:    aload 4 
L65:    iconst_1 
L66:    invokestatic Method com/fs/starfarer/combat/E/A/ooOO o00000 (Lcom/fs/starfarer/combat/E/B;Lcom/fs/starfarer/combat/E/B;Lorg/lwjgl/util/vector/Vector2f;Z)F 
L69:    pop 
L70:    return 
L71:    
    .end code 
.end method 

.method public playShipExplosionSound : (Lcom/fs/starfarer/api/combat/ShipAPI;)V 
    .code stack 6 locals 2 
L0:     aload_1 
L1:     checkcast com/fs/starfarer/combat/entities/Ship 
L4:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullStyle ()Lcom/fs/starfarer/loading/specs/OoOO; 
L7:     aload_1 
L8:     invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ShipAPI getHullSize ()Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 1 
L13:    aload_1 
L14:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ShipAPI getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L19:    aload_1 
L20:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ShipAPI getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 1 
L25:    fconst_1 
L26:    ldc_w +0.5f 
L29:    invokestatic Method com/fs/starfarer/combat/entities/ship/A/I o00000 (Lcom/fs/starfarer/loading/specs/OoOO;Lcom/fs/starfarer/api/combat/ShipAPI$HullSize;Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;FF)V 
L32:    return 
L33:    
    .end code 
.end method 

.method public bridge synthetic getAsteroidGrid : ()Lcom/fs/starfarer/api/combat/CollisionGridAPI; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getAsteroidGrid ()Lcom/fs/starfarer/combat/E/G; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public bridge synthetic getAiGridShips : ()Lcom/fs/starfarer/api/combat/CollisionGridAPI; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getAiGridShips ()Lcom/fs/starfarer/combat/E/G; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public bridge synthetic getPlayerShip : ()Lcom/fs/starfarer/api/combat/ShipAPI; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public bridge synthetic getCombatUI : ()Lcom/fs/starfarer/api/combat/CombatUIAPI; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getCombatUI ()Lcom/fs/starfarer/combat/K; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public bridge synthetic getFleetManager : (I)Lcom/fs/starfarer/api/combat/CombatFleetManagerAPI; 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L5:     areturn 
L6:     
    .end code 
.end method 

.method public bridge synthetic getViewport : ()Lcom/fs/starfarer/api/combat/ViewportAPI; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getViewport ()Lcom/fs/starfarer/combat/CombatViewport; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public bridge synthetic getAllObjectGrid : ()Lcom/fs/starfarer/api/combat/CollisionGridAPI; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getAllObjectGrid ()Lcom/fs/starfarer/combat/E/G; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public bridge synthetic getAiGridAsteroids : ()Lcom/fs/starfarer/api/combat/CollisionGridAPI; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getAiGridAsteroids ()Lcom/fs/starfarer/combat/E/G; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public bridge synthetic getAiGridMissiles : ()Lcom/fs/starfarer/api/combat/CollisionGridAPI; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getAiGridMissiles ()Lcom/fs/starfarer/combat/E/G; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public bridge synthetic getMissileGrid : ()Lcom/fs/starfarer/api/combat/CollisionGridAPI; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getMissileGrid ()Lcom/fs/starfarer/combat/E/G; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public bridge synthetic getFogOfWar : (I)Lcom/fs/starfarer/api/combat/FogOfWarAPI; 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getFogOfWar (I)Lcom/fs/starfarer/combat/new/T; 
L5:     areturn 
L6:     
    .end code 
.end method 

.method public bridge synthetic getShipGrid : ()Lcom/fs/starfarer/api/combat/CollisionGridAPI; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getShipGrid ()Lcom/fs/starfarer/combat/E/G; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method static synthetic $SWITCH_TABLE$com$fs$starfarer$combat$entities$Ship$CommandType : ()[I 
    .code stack 3 locals 1 
L0:     getstatic Field com/fs/starfarer/combat/CombatEngine 'oÖ0000' [I 
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
L265:   putstatic Field com/fs/starfarer/combat/CombatEngine 'oÖ0000' [I 
L268:   areturn 
L269:   
    .end code 
.end method 
.innerclasses 
    com/fs/starfarer/api/combat/EmpArcEntityAPI$EmpArcParams com/fs/starfarer/api/combat/EmpArcEntityAPI EmpArcParams public static 
    com/fs/starfarer/api/combat/ShipAPI$HullSize com/fs/starfarer/api/combat/ShipAPI HullSize public static final enum 
    com/fs/starfarer/api/combat/ShipHullSpecAPI$ShipTypeHints com/fs/starfarer/api/combat/ShipHullSpecAPI ShipTypeHints public static final enum 
    com/fs/starfarer/api/combat/WeaponAPI$WeaponSize com/fs/starfarer/api/combat/WeaponAPI WeaponSize public static final enum 
    com/fs/starfarer/api/combat/WeaponAPI$WeaponType com/fs/starfarer/api/combat/WeaponAPI WeaponType public static final enum 
    com/fs/starfarer/combat/CombatEngine$1 [0] [0] 
    com/fs/starfarer/combat/CombatEngine$2 [0] [0] 
    com/fs/starfarer/combat/CombatEngine$3 [0] [0] 
    com/fs/starfarer/combat/CombatFleetManager$O0 com/fs/starfarer/combat/CombatFleetManager O0 public static 
    com/fs/starfarer/combat/B$o com/fs/starfarer/combat/B o public static final enum 
    com/fs/starfarer/combat/ai/ProximityFuseAI$o com/fs/starfarer/combat/ai/ProximityFuseAI o public static interface abstract 
    com/fs/starfarer/combat/E/A/ooOO$Oo com/fs/starfarer/combat/E/A/ooOO Oo public static 
    com/fs/starfarer/combat/entities/Ship$Oo com/fs/starfarer/combat/entities/Ship Oo public static 
    com/fs/starfarer/combat/entities/Ship$oo com/fs/starfarer/combat/entities/Ship oo public static final enum 
    com/fs/starfarer/combat/tasks/CombatTask$Oo com/fs/starfarer/combat/tasks/CombatTask Oo public static interface abstract 
    com/fs/starfarer/combat/tasks/CombatTask$CombatTaskType com/fs/starfarer/combat/tasks/CombatTask CombatTaskType public static final enum 
    com/fs/starfarer/combat/tasks/Object$o com/fs/starfarer/combat/tasks/Object o public static final enum 
    com/fs/starfarer/loading/specs/Oo0O$Oo com/fs/starfarer/loading/specs/Oo0O Oo public static final enum 
    com/fs/starfarer/loading/specs/nullsuper$o com/fs/starfarer/loading/specs/nullsuper o public static final enum 
    com/fs/starfarer/renderers/damage/DebrisParticleSystem$o com/fs/starfarer/renderers/damage/DebrisParticleSystem o public static final enum 
    com/fs/starfarer/title/Object/L$Oo com/fs/starfarer/title/Object/L Oo public static 
.end innerclasses 
.nestmembers com/fs/starfarer/combat/CombatEngine$1 com/fs/starfarer/combat/CombatEngine$2 com/fs/starfarer/combat/CombatEngine$3 
.const [c1047] = Class [u827] 
.const [u1383] = Utf8 (Ljava/lang/Object;Lorg/lwjgl/util/vector/Vector2f;FF)V 
.const [u2906] = Utf8 (Lcom/fs/starfarer/api/combat/ShipAPI;Lorg/lwjgl/util/vector/Vector2f;Lcom/fs/starfarer/api/combat/CombatEntityAPI;Lcom/fs/starfarer/api/combat/CombatEntityAPI;Lcom/fs/starfarer/api/combat/DamageType;FFFLjava/lang/String;FLjava/awt/Color;Ljava/awt/Color;)Lcom/fs/starfarer/api/combat/EmpArcEntityAPI; 
.const [u2909] = Utf8 (Lcom/fs/starfarer/api/combat/ShipAPI;Lorg/lwjgl/util/vector/Vector2f;Lcom/fs/starfarer/api/combat/CombatEntityAPI;Lcom/fs/starfarer/api/combat/CombatEntityAPI;Lcom/fs/starfarer/api/combat/DamageType;FFFLjava/lang/String;FLjava/awt/Color;Ljava/awt/Color;Lcom/fs/starfarer/api/combat/EmpArcEntityAPI$EmpArcParams;)Lcom/fs/starfarer/api/combat/EmpArcEntityAPI; 
.const [u2920] = Utf8 (Lcom/fs/starfarer/combat/entities/Ship;Lorg/lwjgl/util/vector/Vector2f;Lcom/fs/starfarer/api/combat/CombatEntityAPI;Lcom/fs/starfarer/api/combat/CombatEntityAPI;Lcom/fs/starfarer/api/combat/DamageType;FFFLjava/lang/String;FLjava/awt/Color;Ljava/awt/Color;ZLcom/fs/starfarer/api/combat/EmpArcEntityAPI$EmpArcParams;)V 
.const [u827] = Utf8 com/fs/starfarer/combat/entities/oO0OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 
.end class 
