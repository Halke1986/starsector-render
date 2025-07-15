.version 61 0 
.class public super com/fs/starfarer/combat/CombatState 
.super java/lang/Object 
.implements com/fs/state/AppState 
.implements com/fs/starfarer/combat/K 
.implements com/fs/starfarer/ui/oo0O$o 
.implements com/fs/starfarer/ooOO 
.implements com/fs/starfarer/combat/A/B$o0 
.field public static AUTO_OMNI_SHIELDS Z 
.field private static log Lorg/apache/log4j/Logger; 
.field public static final STATE_ID Ljava/lang/String; 
.field private engine Lcom/fs/starfarer/combat/CombatEngine; 
.field private playerShip Lcom/fs/starfarer/combat/entities/Ship; 
.field private playerShipShieldAI Lcom/fs/starfarer/combat/ai/OmniShieldControlAI; 
.field private playerShipShieldAIFlags Lcom/fs/starfarer/api/combat/ShipwideAIFlags; 
.field private wantShieldOnForAutoOmni Z 
.field private canAutoOverrideShieldFacing Z 
.field private arcRenderer Lcom/fs/starfarer/renderers/super; 
.field private waypointRenderer Lcom/fs/starfarer/renderers/B; 
.field private targetReticleRenderer Lcom/fs/starfarer/renderers/A/C; 
.field private messageWidget Lcom/fs/starfarer/class/C; 
.field private widgetPanel Lcom/fs/starfarer/ui/interfacenew; 
.field private shipInfo Lcom/fs/starfarer/class/new/return; 
.field private warroom Lcom/fs/starfarer/combat/new/OoOO; 
.field private showWarroom Z 
.field private warroomPinned Z 
.field llx F 
.field lly F 
.field llxBG F 
.field llyBG F 
.field private movingView Z 
.field private viewMoved Z 
.field private altWasDown Z 
.field private autoTurn Z 
.field private shownEnemyFullRetreat Z 
.field private hideHud Z 
.field private takeSS Z 
.field viewOverride Lorg/lwjgl/util/vector/Vector2f; 
.field private viewMouseOffset Lcom/fs/starfarer/combat/L; 
.field private zoomTracker Lcom/fs/starfarer/util/A; 
.field private entityToFollow Lcom/fs/starfarer/combat/new/OoOO$o; 
.field private session Ljava/util/Map; 
.field private cameraMode Lcom/fs/starfarer/combat/CombatState$Oo; 
.field private panX F 
.field private panY F 
.field private ribbon Lcom/fs/starfarer/class/C/C; 
.field private scale F 
.field private lastZoomWasAutoToggled Z 
.field private viewOnTarget Z 
.field private fader Lcom/fs/graphics/util/Fader; 
.field private nextState Ljava/lang/String; 
.field private tutorialOverlay Lcom/fs/starfarer/tutorial/H; 
.field private savedEngineState Ljava/lang/String; 
.field private prevAI Lcom/fs/starfarer/combat/ai/AI; 
.field private lmbWasUp Z 
.field private strafeAutoturnOn Z 
.field private strafeToggledOn Z 
.field private shieldAngleOffset F 
.field private shieldLockOffset F 
.field private disablePlayerShipControlOneFrame Z 
.field private elapsedSinceMessage F 
.field private dimColor Ljava/awt/Color; 
.field private smoothZoom Lcom/fs/graphics/util/Fader; 
.field private dialogType Lcom/fs/starfarer/combat/CombatState$o; 
.field private pauseStatusBeforeDialog Z 
.field private fdd Lcom/fs/starfarer/ui/impl/oO0O; 
.field private claimedVictory Z 
.field private okToShowRetreatDialog Z 
.field private flagshipOutsideFirstTime Z 
.field private showDefeatDialogOnExit Z 
.field private autopilot Z 
.field private showDeploymentDialog Z 
.field private lastMouseDX F 
.field private lastMouseDY F 
.field private codexOverlay Lcom/fs/starfarer/ui/interfacenew; 
.field private showingCodex Z 
.field private wasPausedWhenCodexShown Z 
.field private static volatile synthetic $SWITCH_TABLE$com$fs$starfarer$combat$CombatState$CameraMode [I 
.field private static volatile synthetic $SWITCH_TABLE$com$fs$starfarer$api$fleet$FleetGoal [I 
.field private static volatile synthetic $SWITCH_TABLE$com$fs$starfarer$combat$CombatMenuDialog$CombatMenuMode [I 
.field private static volatile synthetic $SWITCH_TABLE$com$fs$starfarer$combat$CombatState$CurrentDialogType [I 

.method static <clinit> : ()V 
    .code stack 1 locals 0 
L0:     iconst_0 
L1:     putstatic Field com/fs/starfarer/combat/CombatState AUTO_OMNI_SHIELDS Z 
L4:     ldc Class com/fs/starfarer/combat/CombatState 
L6:     invokestatic Method org/apache/log4j/Logger getLogger (Ljava/lang/Class;)Lorg/apache/log4j/Logger; 
L9:     putstatic Field com/fs/starfarer/combat/CombatState log Lorg/apache/log4j/Logger; 
L12:    ldc Class com/fs/starfarer/combat/CombatState 
L14:    invokevirtual Method java/lang/Class getCanonicalName ()Ljava/lang/String; 
L17:    putstatic Field com/fs/starfarer/combat/CombatState STATE_ID Ljava/lang/String; 
L20:    return 
L21:    
    .end code 
.end method 

.method public <init> : ()V 
    .code stack 7 locals 1 
L0:     aload_0 
L1:     invokespecial Method java/lang/Object <init> ()V 
L4:     aload_0 
L5:     aconst_null 
L6:     putfield Field com/fs/starfarer/combat/CombatState playerShipShieldAI Lcom/fs/starfarer/combat/ai/OmniShieldControlAI; 
L9:     aload_0 
L10:    aconst_null 
L11:    putfield Field com/fs/starfarer/combat/CombatState playerShipShieldAIFlags Lcom/fs/starfarer/api/combat/ShipwideAIFlags; 
L14:    aload_0 
L15:    iconst_0 
L16:    putfield Field com/fs/starfarer/combat/CombatState wantShieldOnForAutoOmni Z 
L19:    aload_0 
L20:    iconst_0 
L21:    putfield Field com/fs/starfarer/combat/CombatState canAutoOverrideShieldFacing Z 
L24:    aload_0 
L25:    iconst_0 
L26:    putfield Field com/fs/starfarer/combat/CombatState showWarroom Z 
L29:    aload_0 
L30:    iconst_0 
L31:    putfield Field com/fs/starfarer/combat/CombatState warroomPinned Z 
L34:    aload_0 
L35:    iconst_0 
L36:    putfield Field com/fs/starfarer/combat/CombatState movingView Z 
L39:    aload_0 
L40:    iconst_0 
L41:    putfield Field com/fs/starfarer/combat/CombatState viewMoved Z 
L44:    aload_0 
L45:    iconst_0 
L46:    putfield Field com/fs/starfarer/combat/CombatState altWasDown Z 
L49:    aload_0 
L50:    iconst_0 
L51:    putfield Field com/fs/starfarer/combat/CombatState autoTurn Z 
L54:    aload_0 
L55:    iconst_0 
L56:    putfield Field com/fs/starfarer/combat/CombatState shownEnemyFullRetreat Z 
L59:    aload_0 
L60:    iconst_0 
L61:    putfield Field com/fs/starfarer/combat/CombatState hideHud Z 
L64:    aload_0 
L65:    iconst_0 
L66:    putfield Field com/fs/starfarer/combat/CombatState takeSS Z 
L69:    aload_0 
L70:    new org/lwjgl/util/vector/Vector2f 
L73:    dup 
L74:    invokespecial Method org/lwjgl/util/vector/Vector2f <init> ()V 
L77:    putfield Field com/fs/starfarer/combat/CombatState viewOverride Lorg/lwjgl/util/vector/Vector2f; 
L80:    aload_0 
L81:    aconst_null 
L82:    putfield Field com/fs/starfarer/combat/CombatState entityToFollow Lcom/fs/starfarer/combat/new/OoOO$o; 
L85:    aload_0 
L86:    getstatic Field com/fs/starfarer/combat/CombatState$Oo 'Ô00000' Lcom/fs/starfarer/combat/CombatState$Oo; 
L89:    putfield Field com/fs/starfarer/combat/CombatState cameraMode Lcom/fs/starfarer/combat/CombatState$Oo; 
L92:    aload_0 
L93:    fconst_0 
L94:    putfield Field com/fs/starfarer/combat/CombatState panX F 
L97:    aload_0 
L98:    fconst_0 
L99:    putfield Field com/fs/starfarer/combat/CombatState panY F 
L102:   aload_0 
L103:   fconst_1 
L104:   putfield Field com/fs/starfarer/combat/CombatState scale F 
L107:   aload_0 
L108:   iconst_0 
L109:   putfield Field com/fs/starfarer/combat/CombatState lastZoomWasAutoToggled Z 
L112:   aload_0 
L113:   iconst_0 
L114:   putfield Field com/fs/starfarer/combat/CombatState viewOnTarget Z 
L117:   aload_0 
L118:   new com/fs/graphics/util/Fader 
L121:   dup 
L122:   fconst_0 
L123:   ldc +0.5f 
L125:   ldc +0.5f 
L127:   invokespecial Method com/fs/graphics/util/Fader <init> (FFF)V 
L130:   putfield Field com/fs/starfarer/combat/CombatState fader Lcom/fs/graphics/util/Fader; 
L133:   aload_0 
L134:   aconst_null 
L135:   putfield Field com/fs/starfarer/combat/CombatState nextState Ljava/lang/String; 
L138:   aload_0 
L139:   aconst_null 
L140:   putfield Field com/fs/starfarer/combat/CombatState savedEngineState Ljava/lang/String; 
L143:   aload_0 
L144:   aconst_null 
L145:   putfield Field com/fs/starfarer/combat/CombatState prevAI Lcom/fs/starfarer/combat/ai/AI; 
L148:   aload_0 
L149:   iconst_0 
L150:   putfield Field com/fs/starfarer/combat/CombatState lmbWasUp Z 
L153:   aload_0 
L154:   iconst_0 
L155:   putfield Field com/fs/starfarer/combat/CombatState strafeAutoturnOn Z 
L158:   aload_0 
L159:   iconst_0 
L160:   putfield Field com/fs/starfarer/combat/CombatState strafeToggledOn Z 
L163:   aload_0 
L164:   fconst_0 
L165:   putfield Field com/fs/starfarer/combat/CombatState shieldAngleOffset F 
L168:   aload_0 
L169:   ldc +3.4028234663852886e+38f 
L171:   putfield Field com/fs/starfarer/combat/CombatState shieldLockOffset F 
L174:   aload_0 
L175:   iconst_0 
L176:   putfield Field com/fs/starfarer/combat/CombatState disablePlayerShipControlOneFrame Z 
L179:   aload_0 
L180:   ldc +4.0f 
L182:   putfield Field com/fs/starfarer/combat/CombatState elapsedSinceMessage F 
L185:   aload_0 
L186:   new java/awt/Color 
L189:   dup 
L190:   iconst_0 
L191:   iconst_0 
L192:   iconst_0 
L193:   sipush 255 
L196:   invokespecial Method java/awt/Color <init> (IIII)V 
L199:   putfield Field com/fs/starfarer/combat/CombatState dimColor Ljava/awt/Color; 
L202:   aload_0 
L203:   new com/fs/graphics/util/Fader 
L206:   dup 
L207:   fconst_0 
L208:   ldc +0.5f 
L210:   invokespecial Method com/fs/graphics/util/Fader <init> (FF)V 
L213:   putfield Field com/fs/starfarer/combat/CombatState smoothZoom Lcom/fs/graphics/util/Fader; 
L216:   aload_0 
L217:   aconst_null 
L218:   putfield Field com/fs/starfarer/combat/CombatState dialogType Lcom/fs/starfarer/combat/CombatState$o; 
L221:   aload_0 
L222:   iconst_0 
L223:   putfield Field com/fs/starfarer/combat/CombatState pauseStatusBeforeDialog Z 
L226:   aload_0 
L227:   aconst_null 
L228:   putfield Field com/fs/starfarer/combat/CombatState fdd Lcom/fs/starfarer/ui/impl/oO0O; 
L231:   aload_0 
L232:   iconst_0 
L233:   putfield Field com/fs/starfarer/combat/CombatState claimedVictory Z 
L236:   aload_0 
L237:   iconst_0 
L238:   putfield Field com/fs/starfarer/combat/CombatState okToShowRetreatDialog Z 
L241:   aload_0 
L242:   iconst_1 
L243:   putfield Field com/fs/starfarer/combat/CombatState flagshipOutsideFirstTime Z 
L246:   aload_0 
L247:   iconst_1 
L248:   putfield Field com/fs/starfarer/combat/CombatState showDefeatDialogOnExit Z 
L251:   aload_0 
L252:   iconst_1 
L253:   putfield Field com/fs/starfarer/combat/CombatState showDeploymentDialog Z 
L256:   aload_0 
L257:   iconst_0 
L258:   putfield Field com/fs/starfarer/combat/CombatState showingCodex Z 
L261:   aload_0 
L262:   iconst_0 
L263:   putfield Field com/fs/starfarer/combat/CombatState wasPausedWhenCodexShown Z 
L266:   return 
L267:   
    .end code 
.end method 

.method public getID : ()Ljava/lang/String; 
    .code stack 1 locals 1 
L0:     getstatic Field com/fs/starfarer/combat/CombatState STATE_ID Ljava/lang/String; 
L3:     areturn 
L4:     
    .end code 
.end method 

.method public init : (Ljava/util/Map;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/fs/starfarer/combat/CombatState session Ljava/util/Map; 
L5:     return 
L6:     
    .end code 
.end method 

.method public getViewMouseOffset : ()Lcom/fs/starfarer/combat/L; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatState viewMouseOffset Lcom/fs/starfarer/combat/L; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public isViewOnTarget : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatState viewOnTarget Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public enableTutorialOvelay : ()V 
    .code stack 3 locals 1 
L0:     aload_0 
L1:     new com/fs/starfarer/tutorial/H 
L4:     dup 
L5:     invokespecial Method com/fs/starfarer/tutorial/H <init> ()V 
L8:     putfield Field com/fs/starfarer/combat/CombatState tutorialOverlay Lcom/fs/starfarer/tutorial/H; 
L11:    aload_0 
L12:    getfield Field com/fs/starfarer/combat/CombatState tutorialOverlay Lcom/fs/starfarer/tutorial/H; 
L15:    invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'while.new' ()F 
L18:    invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'öÒ0000' ()F 
L21:    invokevirtual Method com/fs/starfarer/tutorial/H setSize (FF)Lcom/fs/starfarer/ui/OO0O; 
L24:    pop 
L25:    return 
L26:    
    .end code 
.end method 

.method public getTutorialOverlay : ()Lcom/fs/starfarer/tutorial/H; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatState tutorialOverlay Lcom/fs/starfarer/tutorial/H; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public isHideHud : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatState hideHud Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public getShipInfo : ()Lcom/fs/starfarer/class/new/return; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatState shipInfo Lcom/fs/starfarer/class/new/return; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public setShipInfoFanOutBrightness : (F)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatState shipInfo Lcom/fs/starfarer/class/new/return; 
L4:     ifnull L15 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/CombatState shipInfo Lcom/fs/starfarer/class/new/return; 
L11:    fload_1 
L12:    invokevirtual Method com/fs/starfarer/class/new/return setFanOutBrightness (F)V 

        .stack same 
L15:    return 
L16:    
    .end code 
.end method 

.method public reFanOutShipInfo : ()V 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatState shipInfo Lcom/fs/starfarer/class/new/return; 
L4:     ifnull L14 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/CombatState shipInfo Lcom/fs/starfarer/class/new/return; 
L11:    invokevirtual Method com/fs/starfarer/class/new/return reFanOut ()V 

        .stack same 
L14:    return 
L15:    
    .end code 
.end method 

.method public hideShipInfo : ()V 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatState shipInfo Lcom/fs/starfarer/class/new/return; 
L4:     ifnull L14 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/CombatState shipInfo Lcom/fs/starfarer/class/new/return; 
L11:    invokevirtual Method com/fs/starfarer/class/new/return hide ()V 

        .stack same 
L14:    return 
L15:    
    .end code 
.end method 

.method private resetMemberVariables : ()V 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     iconst_0 
L2:     putfield Field com/fs/starfarer/combat/CombatState strafeAutoturnOn Z 
L5:     aload_0 
L6:     iconst_0 
L7:     putfield Field com/fs/starfarer/combat/CombatState strafeToggledOn Z 
L10:    aload_0 
L11:    iconst_0 
L12:    putfield Field com/fs/starfarer/combat/CombatState movingView Z 
L15:    aload_0 
L16:    iconst_0 
L17:    putfield Field com/fs/starfarer/combat/CombatState viewMoved Z 
L20:    aload_0 
L21:    iconst_0 
L22:    putfield Field com/fs/starfarer/combat/CombatState altWasDown Z 
L25:    aload_0 
L26:    iconst_0 
L27:    putfield Field com/fs/starfarer/combat/CombatState autoTurn Z 
L30:    aload_0 
L31:    iconst_0 
L32:    putfield Field com/fs/starfarer/combat/CombatState showWarroom Z 
L35:    aload_0 
L36:    iconst_0 
L37:    putfield Field com/fs/starfarer/combat/CombatState viewOnTarget Z 
L40:    aload_0 
L41:    iconst_0 
L42:    putfield Field com/fs/starfarer/combat/CombatState autopilot Z 
L45:    aload_0 
L46:    iconst_0 
L47:    putfield Field com/fs/starfarer/combat/CombatState shownEnemyFullRetreat Z 
L50:    aload_0 
L51:    iconst_0 
L52:    putfield Field com/fs/starfarer/combat/CombatState pauseStatusBeforeDialog Z 
L55:    aload_0 
L56:    iconst_1 
L57:    putfield Field com/fs/starfarer/combat/CombatState showDefeatDialogOnExit Z 
L60:    aload_0 
L61:    iconst_1 
L62:    putfield Field com/fs/starfarer/combat/CombatState showDeploymentDialog Z 
L65:    aload_0 
L66:    iconst_0 
L67:    putfield Field com/fs/starfarer/combat/CombatState okToShowRetreatDialog Z 
L70:    aload_0 
L71:    iconst_1 
L72:    putfield Field com/fs/starfarer/combat/CombatState flagshipOutsideFirstTime Z 
L75:    aload_0 
L76:    iconst_0 
L77:    putfield Field com/fs/starfarer/combat/CombatState lastZoomWasAutoToggled Z 
L80:    aload_0 
L81:    iconst_0 
L82:    putfield Field com/fs/starfarer/combat/CombatState claimedVictory Z 
L85:    aload_0 
L86:    fconst_0 
L87:    putfield Field com/fs/starfarer/combat/CombatState shieldAngleOffset F 
L90:    aload_0 
L91:    aconst_null 
L92:    putfield Field com/fs/starfarer/combat/CombatState entityToFollow Lcom/fs/starfarer/combat/new/OoOO$o; 
L95:    aload_0 
L96:    aconst_null 
L97:    putfield Field com/fs/starfarer/combat/CombatState nextState Ljava/lang/String; 
L100:   aload_0 
L101:   aconst_null 
L102:   putfield Field com/fs/starfarer/combat/CombatState dialogType Lcom/fs/starfarer/combat/CombatState$o; 
L105:   aload_0 
L106:   iconst_0 
L107:   putfield Field com/fs/starfarer/combat/CombatState hideHud Z 
L110:   aload_0 
L111:   iconst_0 
L112:   putfield Field com/fs/starfarer/combat/CombatState takeSS Z 
L115:   aload_0 
L116:   getstatic Field com/fs/starfarer/combat/CombatState$Oo 'Ô00000' Lcom/fs/starfarer/combat/CombatState$Oo; 
L119:   putfield Field com/fs/starfarer/combat/CombatState cameraMode Lcom/fs/starfarer/combat/CombatState$Oo; 
L122:   aload_0 
L123:   fconst_0 
L124:   putfield Field com/fs/starfarer/combat/CombatState panX F 
L127:   aload_0 
L128:   fconst_0 
L129:   putfield Field com/fs/starfarer/combat/CombatState panY F 
L132:   aload_0 
L133:   fconst_0 
L134:   putfield Field com/fs/starfarer/combat/CombatState lastMouseDX F 
L137:   aload_0 
L138:   fconst_0 
L139:   putfield Field com/fs/starfarer/combat/CombatState lastMouseDY F 
L142:   return 
L143:   
    .end code 
.end method 

.method private reloadAssets : ()V 
    .exceptions java/io/IOException 
    .code stack 3 locals 6 
        .catch org/json/JSONException from L0 to L125 using L128 
L0:     ldc_w Class com/fs/starfarer/loading/specs/O0OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$Oo 
L3:     invokestatic Method com/fs/starfarer/loading/SpecStore 'Ó00000' (Ljava/lang/Class;)V 
L6:     ldc_w Class com/fs/starfarer/loading/specs/OoOO 
L9:     invokestatic Method com/fs/starfarer/loading/SpecStore 'Ó00000' (Ljava/lang/Class;)V 
L12:    aconst_null 
L13:    invokestatic Method com/fs/starfarer/loading/SpecStore new (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
L16:    invokestatic Method com/fs/starfarer/loading/Q 'Ò00000' ()V 
L19:    invokestatic Method com/fs/starfarer/loading/WeaponSpecLoader o00000 ()V 
L22:    invokestatic Method com/fs/starfarer/loading/WeaponSpecLoader 'Ò00000' ()V 
L25:    invokestatic Method com/fs/starfarer/loading/WeaponSpreadsheetLoader 'Ò00000' ()V 
L28:    iconst_1 
L29:    putstatic Field com/fs/starfarer/loading/ShipHullSpecLoader 'Ó00000' Z 
L32:    iconst_1 
L33:    putstatic Field com/fs/starfarer/loading/ShipHullSpreadsheetLoader Object Z 
L36:    invokestatic Method com/fs/starfarer/loading/oO0O 'super' ()V 
L39:    invokestatic Method com/fs/starfarer/loading/B 'Ó00000' ()V 
L42:    invokestatic Method com/fs/starfarer/loading/ShipHullSpecLoader 'Ò00000' ()V 
L45:    invokestatic Method com/fs/starfarer/loading/ShipHullSpreadsheetLoader o00000 ()V 
L48:    invokestatic Method com/fs/starfarer/loading/ShipHullSpecLoader Object ()V 
L51:    invokestatic Method com/fs/starfarer/loading/specs/oo0o 'ÔÓ0000' ()V 
L54:    iconst_0 
L55:    putstatic Field com/fs/starfarer/title/oOOO 'return.super' Z 
L58:    iconst_0 
L59:    putstatic Field com/fs/starfarer/combat/B 'if.do$do' Z 
L62:    invokestatic Method com/fs/starfarer/loading/SpecStore oO0000 ()V 
L65:    invokestatic Method com/fs/starfarer/loading/K o00000 ()V 
L68:    invokestatic Method com/fs/starfarer/loading/FighterWingSpreadsheetLoader o00000 ()V 
L71:    aconst_null 
L72:    invokestatic Method com/fs/starfarer/loading/SpecStore 'new.super' (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
L75:    ldc_w Class com/fs/starfarer/loading/specs/PlanetSpec 
L78:    invokestatic Method com/fs/starfarer/loading/SpecStore 'Ó00000' (Ljava/lang/Class;)V 
L81:    aconst_null 
L82:    invokestatic Method com/fs/starfarer/loading/SpecStore oO0000 (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
L85:    invokestatic Method com/fs/starfarer/launcher/ModManager getInstance ()Lcom/fs/starfarer/launcher/ModManager; 
L88:    invokevirtual Method com/fs/starfarer/launcher/ModManager getEnabledModPlugins ()Ljava/util/List; 
L91:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L96:    astore_2 
L97:    goto L116 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Top Object java/util/Iterator 
            stack 
        .end stack 
L100:   aload_2 
L101:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L106:   checkcast com/fs/starfarer/api/ModPlugin 
L109:   astore_1 
L110:   aload_1 
L111:   invokeinterface InterfaceMethod com/fs/starfarer/api/ModPlugin onDevModeF8Reload ()V 1 

        .stack same 
L116:   aload_2 
L117:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L122:   ifne L100 
L125:   goto L137 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState 
            stack Object org/json/JSONException 
        .end stack 
L128:   astore_1 
L129:   getstatic Field com/fs/starfarer/combat/CombatState log Lorg/apache/log4j/Logger; 
L132:   aload_1 
L133:   aload_1 
L134:   invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;Ljava/lang/Throwable;)V 

        .stack same 
L137:   aload_0 
L138:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L141:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getObjects ()Lcom/fs/util/container/repo/ObjectRepository; 
L144:   ldc_w Class com/fs/starfarer/combat/entities/Ship 
L147:   invokevirtual Method com/fs/util/container/repo/ObjectRepository getList (Ljava/lang/Class;)Ljava/util/List; 
L150:   astore_1 
L151:   aload_1 
L152:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L157:   astore_3 
L158:   goto L319 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L161:   aload_3 
L162:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L167:   checkcast com/fs/starfarer/combat/entities/Ship 
L170:   astore_2 
L171:   aload_2 
L172:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getSpec ()Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L175:   invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullVariantId ()Ljava/lang/String; 
L178:   astore 4 
        .catch java/lang/Exception from L180 to L309 using L312 
L180:   aload 4 
L182:   invokestatic Method com/fs/starfarer/loading/B o00000 (Ljava/lang/String;)Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L185:   aload_2 
L186:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getCaptain ()Lcom/fs/starfarer/rpg/Person; 
L189:   aload_2 
L190:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getFleetCommander ()Lcom/fs/starfarer/rpg/Person; 
L193:   invokestatic Method com/fs/starfarer/loading/specs/_ o00000 (Lcom/fs/starfarer/loading/specs/HullVariantSpec;Lcom/fs/starfarer/rpg/Person;Lcom/fs/starfarer/rpg/Person;)Lcom/fs/starfarer/combat/entities/Ship; 
L196:   astore 5 
L198:   aload 5 
L200:   aload_2 
L201:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getFleetMemberId ()Ljava/lang/String; 
L204:   invokevirtual Method com/fs/starfarer/combat/entities/Ship setFleetMemberId (Ljava/lang/String;)V 
L207:   aload 5 
L209:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L212:   aload_2 
L213:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L216:   invokevirtual Method org/lwjgl/util/vector/Vector2f set (Lorg/lwjgl/util/vector/ReadableVector2f;)Lorg/lwjgl/util/vector/Vector2f; 
L219:   pop 
L220:   aload 5 
L222:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 
L225:   aload_2 
L226:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 
L229:   invokevirtual Method org/lwjgl/util/vector/Vector2f set (Lorg/lwjgl/util/vector/ReadableVector2f;)Lorg/lwjgl/util/vector/Vector2f; 
L232:   pop 
L233:   aload 5 
L235:   aload_2 
L236:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getFacing ()F 
L239:   invokevirtual Method com/fs/starfarer/combat/entities/Ship setFacing (F)V 
L242:   aload 5 
L244:   aload_2 
L245:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getAngularVelocity ()F 
L248:   invokevirtual Method com/fs/starfarer/combat/entities/Ship setAngularVelocity (F)V 
L251:   aload 5 
L253:   aload_2 
L254:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getAI ()Lcom/fs/starfarer/combat/ai/AI; 
L257:   invokevirtual Method com/fs/starfarer/combat/entities/Ship setAI (Lcom/fs/starfarer/combat/ai/AI;)V 
L260:   aload 5 
L262:   aload_2 
L263:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getOwner ()I 
L266:   invokevirtual Method com/fs/starfarer/combat/entities/Ship setOwner (I)V 
L269:   aload 5 
L271:   aload_2 
L272:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getWing ()Lcom/fs/starfarer/combat/ai/M; 
L275:   invokevirtual Method com/fs/starfarer/combat/entities/Ship setWing (Lcom/fs/starfarer/combat/ai/M;)V 
L278:   aload_0 
L279:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L282:   aload_2 
L283:   invokevirtual Method com/fs/starfarer/combat/CombatEngine removeObject (Ljava/lang/Object;)V 
L286:   aload_0 
L287:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L290:   aload 5 
L292:   invokevirtual Method com/fs/starfarer/combat/CombatEngine addObject (Ljava/lang/Object;)V 
L295:   aload_2 
L296:   aload_0 
L297:   getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L300:   if_acmpne L319 
L303:   aload_0 
L304:   aload 5 
L306:   invokevirtual Method com/fs/starfarer/combat/CombatState setPlayerShip (Lcom/fs/starfarer/combat/entities/Ship;)V 
L309:   goto L319 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Object java/util/List Object com/fs/starfarer/combat/entities/Ship Object java/util/Iterator Object java/lang/String 
            stack Object java/lang/Exception 
        .end stack 
L312:   astore 5 
L314:   aload 5 
L316:   invokevirtual Method java/lang/Exception printStackTrace ()V 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L319:   aload_3 
L320:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L325:   ifne L161 
L328:   return 
L329:   
    .end code 
.end method 

.method private resetSomeUIThings : ()V 
    .code stack 9 locals 3 
L0:     invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'while.new' ()F 
L3:     fstore_1 
L4:     invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'öÒ0000' ()F 
L7:     fstore_2 
L8:     aload_0 
L9:     new com/fs/starfarer/combat/O0OO 
L12:    dup 
L13:    invokespecial Method com/fs/starfarer/combat/O0OO <init> ()V 
L16:    putfield Field com/fs/starfarer/combat/CombatState viewMouseOffset Lcom/fs/starfarer/combat/L; 
L19:    invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'OÓ0000' ()Z 
L22:    ifeq L62 
L25:    invokestatic Method com/fs/starfarer/api/Global getSettings ()Lcom/fs/starfarer/api/SettingsAPI; 
L28:    ldc_w 'playtestingMode' 
L31:    invokeinterface InterfaceMethod com/fs/starfarer/api/SettingsAPI getBoolean (Ljava/lang/String;)Z 2 
L36:    ifne L62 
L39:    aload_0 
L40:    new com/fs/starfarer/util/A 
L43:    dup 
L44:    ldc +0.5f 
L46:    ldc +4.0f 
L48:    ldc_w +0.25f 
L51:    ldc +0.5f 
L53:    invokespecial Method com/fs/starfarer/util/A <init> (FFFF)V 
L56:    putfield Field com/fs/starfarer/combat/CombatState zoomTracker Lcom/fs/starfarer/util/A; 
L59:    goto L90 

        .stack append Float Float 
L62:    aload_0 
L63:    new com/fs/starfarer/util/A 
L66:    dup 
L67:    ldc_w 'minCombatZoom' 
L70:    invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'ö00000' (Ljava/lang/String;)F 
L73:    ldc_w 'maxCombatZoom' 
L76:    invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'ö00000' (Ljava/lang/String;)F 
L79:    ldc_w +0.25f 
L82:    ldc +0.5f 
L84:    invokespecial Method com/fs/starfarer/util/A <init> (FFFF)V 
L87:    putfield Field com/fs/starfarer/combat/CombatState zoomTracker Lcom/fs/starfarer/util/A; 

        .stack same 
L90:    aload_0 
L91:    getfield Field com/fs/starfarer/combat/CombatState viewOverride Lorg/lwjgl/util/vector/Vector2f; 
L94:    fconst_0 
L95:    fconst_0 
L96:    invokevirtual Method org/lwjgl/util/vector/Vector2f set (FF)V 
L99:    getstatic Field com/fs/starfarer/prototype/Utils 'ÔO0000' Lorg/lwjgl/util/vector/Vector2f; 
L102:   fconst_0 
L103:   fconst_0 
L104:   invokevirtual Method org/lwjgl/util/vector/Vector2f set (FF)V 
L107:   aload_0 
L108:   invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L111:   putfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L114:   aload_0 
L115:   new com/fs/starfarer/renderers/super 
L118:   dup 
L119:   invokespecial Method com/fs/starfarer/renderers/super <init> ()V 
L122:   putfield Field com/fs/starfarer/combat/CombatState arcRenderer Lcom/fs/starfarer/renderers/super; 
L125:   aload_0 
L126:   new com/fs/starfarer/renderers/B 
L129:   dup 
L130:   invokespecial Method com/fs/starfarer/renderers/B <init> ()V 
L133:   putfield Field com/fs/starfarer/combat/CombatState waypointRenderer Lcom/fs/starfarer/renderers/B; 
L136:   aload_0 
L137:   new com/fs/starfarer/ui/interfacenew 
L140:   dup 
L141:   new com/fs/starfarer/ui/OO0O 
L144:   dup 
L145:   fconst_0 
L146:   fconst_0 
L147:   fload_1 
L148:   fload_2 
L149:   invokespecial Method com/fs/starfarer/ui/OO0O <init> (FFFF)V 
L152:   invokespecial Method com/fs/starfarer/ui/interfacenew <init> (Lcom/fs/starfarer/ui/OO0O;)V 
L155:   putfield Field com/fs/starfarer/combat/CombatState widgetPanel Lcom/fs/starfarer/ui/interfacenew; 
L158:   aload_0 
L159:   new com/fs/starfarer/ui/interfacenew 
L162:   dup 
L163:   new com/fs/starfarer/ui/OO0O 
L166:   dup 
L167:   fconst_0 
L168:   fconst_0 
L169:   fload_1 
L170:   fload_2 
L171:   invokespecial Method com/fs/starfarer/ui/OO0O <init> (FFFF)V 
L174:   invokespecial Method com/fs/starfarer/ui/interfacenew <init> (Lcom/fs/starfarer/ui/OO0O;)V 
L177:   putfield Field com/fs/starfarer/combat/CombatState codexOverlay Lcom/fs/starfarer/ui/interfacenew; 
L180:   aload_0 
L181:   iconst_0 
L182:   putfield Field com/fs/starfarer/combat/CombatState showingCodex Z 
L185:   aload_0 
L186:   new com/fs/starfarer/class/C/C 
L189:   dup 
L190:   fload_1 
L191:   fload_2 
L192:   invokespecial Method com/fs/starfarer/class/C/C <init> (FF)V 
L195:   putfield Field com/fs/starfarer/combat/CombatState ribbon Lcom/fs/starfarer/class/C/C; 
L198:   aload_0 
L199:   new com/fs/starfarer/renderers/A/C 
L202:   dup 
L203:   invokespecial Method com/fs/starfarer/renderers/A/C <init> ()V 
L206:   putfield Field com/fs/starfarer/combat/CombatState targetReticleRenderer Lcom/fs/starfarer/renderers/A/C; 
L209:   aload_0 
L210:   new com/fs/starfarer/class/C 
L213:   dup 
L214:   invokespecial Method com/fs/starfarer/class/C <init> ()V 
L217:   putfield Field com/fs/starfarer/combat/CombatState messageWidget Lcom/fs/starfarer/class/C; 
L220:   aload_0 
L221:   getfield Field com/fs/starfarer/combat/CombatState widgetPanel Lcom/fs/starfarer/ui/interfacenew; 
L224:   aload_0 
L225:   getfield Field com/fs/starfarer/combat/CombatState ribbon Lcom/fs/starfarer/class/C/C; 
L228:   invokevirtual Method com/fs/starfarer/ui/interfacenew add (Lcom/fs/starfarer/ui/c;)Lcom/fs/starfarer/ui/OO0O; 
L231:   fconst_0 
L232:   fconst_0 
L233:   invokevirtual Method com/fs/starfarer/ui/OO0O inBL (FF)Lcom/fs/starfarer/ui/OO0O; 
L236:   pop 
L237:   aload_0 
L238:   new com/fs/starfarer/class/new/return 
L241:   dup 
L242:   invokespecial Method com/fs/starfarer/class/new/return <init> ()V 
L245:   putfield Field com/fs/starfarer/combat/CombatState shipInfo Lcom/fs/starfarer/class/new/return; 
L248:   aload_0 
L249:   getfield Field com/fs/starfarer/combat/CombatState widgetPanel Lcom/fs/starfarer/ui/interfacenew; 
L252:   aload_0 
L253:   getfield Field com/fs/starfarer/combat/CombatState shipInfo Lcom/fs/starfarer/class/new/return; 
L256:   invokevirtual Method com/fs/starfarer/ui/interfacenew add (Lcom/fs/starfarer/ui/c;)Lcom/fs/starfarer/ui/OO0O; 
L259:   ldc_w +800.0f 
L262:   ldc_w +200.0f 
L265:   invokevirtual Method com/fs/starfarer/ui/OO0O setSize (FF)Lcom/fs/starfarer/ui/OO0O; 
L268:   ldc_w +20.0f 
L271:   ldc_w +20.0f 
L274:   invokevirtual Method com/fs/starfarer/ui/OO0O inBL (FF)Lcom/fs/starfarer/ui/OO0O; 
L277:   pop 
L278:   return 
L279:   
    .end code 
.end method 

.method private processInput : ()V 
    .code stack 0 locals 1 
L0:     return 
L1:     
    .end code 
.end method

.method public traverse : ()Ljava/lang/String;
    .code stack 1 locals 1
L0:     aload_0
L1:     invokestatic Method com/genir/renderer/overrides/CombatState traverse (Lcom/fs/starfarer/combat/CombatState;)Ljava/lang/String;
L4:     areturn
L5:
        .linenumbertable
            L0 13
        .end linenumbertable
        .localvariabletable
            0 is this Lcom/fs/starfarer/combat/CombatState; from L0 to L5
        .end localvariabletable
    .end code
    .exceptions java/io/IOException
.end method

.method public traverseImpl : ()Ljava/lang/String;
    .exceptions java/io/IOException 
    .code stack 8 locals 50 
L0:     aload_0 
L1:     aconst_null 
L2:     putfield Field com/fs/starfarer/combat/CombatState tutorialOverlay Lcom/fs/starfarer/tutorial/H; 
L5:     iconst_0 
L6:     istore_1 
L7:     getstatic Field com/fs/starfarer/return/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$o 'Ó00000' Lcom/fs/starfarer/return/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$o; 
L10:    invokestatic Method com/fs/starfarer/return/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO o00000 (Lcom/fs/starfarer/return/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$o;)V 
L13:    invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'while.new' ()F 
L16:    fstore_2 
L17:    invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'öÒ0000' ()F 
L20:    fstore_3 
L21:    aload_0 
L22:    invokevirtual Method com/fs/starfarer/combat/CombatState resetMemberVariables ()V 
L25:    invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L28:    aload_0 
L29:    invokevirtual Method com/fs/starfarer/combat/CombatEngine setCombatUI (Lcom/fs/starfarer/combat/K;)V 
L32:    invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L35:    invokevirtual Method com/fs/starfarer/combat/CombatEngine init ()V 
L38:    aload_0 
L39:    invokevirtual Method com/fs/starfarer/combat/CombatState resetSomeUIThings ()V 
L42:    new com/fs/graphics/Sprite 
L45:    dup 
L46:    ldc_w 'graphics/cursors/cursor_green.png' 
L49:    invokespecial Method com/fs/graphics/Sprite <init> (Ljava/lang/String;)V 
L52:    astore 4 
L54:    invokestatic Method org/lwjgl/opengl/Display update ()V 
L57:    fconst_1 
L58:    invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'oØ0000' ()F 
L61:    fdiv 
L62:    fstore 5 
L64:    fconst_0 
L65:    fstore 5 
L67:    new com/fs/graphics/util/A 
L70:    dup 
L71:    invokespecial Method com/fs/graphics/util/A <init> ()V 
L74:    astore 6 
L76:    sipush 1000 
L79:    istore 7 
L81:    aload_0 
L82:    fconst_1 
L83:    putfield Field com/fs/starfarer/combat/CombatState scale F 
L86:    invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'ÖÖ0000' ()Z 
L89:    ifeq L193 
L92:    invokestatic Method com/fs/starfarer/settings/StarfarerSettings OO0000 ()Z 
L95:    ifne L193 
L98:    invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'oÖ0000' ()Lcom/fs/starfarer/settings/A; 
L101:   astore 10 
L103:   aload 10 
L105:   invokevirtual Method com/fs/starfarer/settings/A class ()F 
L108:   fstore 11 
L110:   fload_2 
L111:   fload_3 
L112:   fdiv 
L113:   fstore 12 
L115:   aload_0 
L116:   ldc_w +1024.0f 
L119:   fload_3 
L120:   fdiv 
L121:   putfield Field com/fs/starfarer/combat/CombatState scale F 
L124:   aload_0 
L125:   getfield Field com/fs/starfarer/combat/CombatState scale F 
L128:   fconst_1 
L129:   fcmpg 
L130:   ifge L138 
L133:   aload_0 
L134:   fconst_1 
L135:   putfield Field com/fs/starfarer/combat/CombatState scale F 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Float Float Object com/fs/graphics/Sprite Float Object com/fs/graphics/util/A Integer Top Top Object com/fs/starfarer/settings/A Float Float 
            stack 
        .end stack 
L138:   fload_2 
L139:   fload 11 
L141:   fmul 
L142:   fload 12 
L144:   fdiv 
L145:   aload_0 
L146:   getfield Field com/fs/starfarer/combat/CombatState scale F 
L149:   fmul 
L150:   f2i 
L151:   istore 8 
L153:   fload_3 
L154:   aload_0 
L155:   getfield Field com/fs/starfarer/combat/CombatState scale F 
L158:   fmul 
L159:   f2i 
L160:   istore 9 
L162:   invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L165:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getViewport ()Lcom/fs/starfarer/combat/CombatViewport; 
L168:   fload_2 
L169:   iload 8 
L171:   i2f 
L172:   fdiv 
L173:   invokevirtual Method com/fs/starfarer/combat/CombatViewport setWorldXtoScreenX (F)V 
L176:   invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L179:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getViewport ()Lcom/fs/starfarer/combat/CombatViewport; 
L182:   fload_3 
L183:   iload 9 
L185:   i2f 
L186:   fdiv 
L187:   invokevirtual Method com/fs/starfarer/combat/CombatViewport setWorldYtoScreenY (F)V 
L190:   goto L241 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Float Float Object com/fs/graphics/Sprite Float Object com/fs/graphics/util/A Integer 
            stack 
        .end stack 
L193:   fload_2 
L194:   aload_0 
L195:   getfield Field com/fs/starfarer/combat/CombatState scale F 
L198:   fmul 
L199:   f2i 
L200:   istore 8 
L202:   fload_3 
L203:   aload_0 
L204:   getfield Field com/fs/starfarer/combat/CombatState scale F 
L207:   fmul 
L208:   f2i 
L209:   istore 9 
L211:   invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L214:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getViewport ()Lcom/fs/starfarer/combat/CombatViewport; 
L217:   fconst_1 
L218:   aload_0 
L219:   getfield Field com/fs/starfarer/combat/CombatState scale F 
L222:   fdiv 
L223:   invokevirtual Method com/fs/starfarer/combat/CombatViewport setWorldXtoScreenX (F)V 
L226:   invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L229:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getViewport ()Lcom/fs/starfarer/combat/CombatViewport; 
L232:   fconst_1 
L233:   aload_0 
L234:   getfield Field com/fs/starfarer/combat/CombatState scale F 
L237:   fdiv 
L238:   invokevirtual Method com/fs/starfarer/combat/CombatViewport setWorldYtoScreenY (F)V 

        .stack append Integer Integer 
L241:   invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L244:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getViewport ()Lcom/fs/starfarer/combat/CombatViewport; 
L247:   aload_0 
L248:   getfield Field com/fs/starfarer/combat/CombatState scale F 
L251:   invokevirtual Method com/fs/starfarer/combat/CombatViewport setScale (F)V 
L254:   aload_0 
L255:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L258:   iconst_0 
L259:   invokevirtual Method com/fs/starfarer/combat/CombatEngine setPaused (Z)V 
L262:   aload_0 
L263:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L266:   invokevirtual Method com/fs/starfarer/combat/CombatEngine hasFleetsSet ()Z 
L269:   istore 10 
L271:   aload_0 
L272:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L275:   invokevirtual Method com/fs/starfarer/combat/CombatEngine preCombat ()V 
L278:   aload_0 
L279:   new com/fs/starfarer/combat/new/OoOO 
L282:   dup 
L283:   aload_0 
L284:   aload_0 
L285:   getfield Field com/fs/starfarer/combat/CombatState widgetPanel Lcom/fs/starfarer/ui/interfacenew; 
L288:   invokespecial Method com/fs/starfarer/combat/new/OoOO <init> (Lcom/fs/starfarer/combat/CombatState;Lcom/fs/starfarer/ui/interfacenew;)V 
L291:   putfield Field com/fs/starfarer/combat/CombatState warroom Lcom/fs/starfarer/combat/new/OoOO; 
L294:   aload_0 
L295:   getfield Field com/fs/starfarer/combat/CombatState widgetPanel Lcom/fs/starfarer/ui/interfacenew; 
L298:   aload_0 
L299:   getfield Field com/fs/starfarer/combat/CombatState warroom Lcom/fs/starfarer/combat/new/OoOO; 
L302:   invokevirtual Method com/fs/starfarer/ui/interfacenew add (Lcom/fs/starfarer/ui/c;)Lcom/fs/starfarer/ui/OO0O; 
L305:   fconst_0 
L306:   fconst_0 
L307:   invokevirtual Method com/fs/starfarer/ui/OO0O inBL (FF)Lcom/fs/starfarer/ui/OO0O; 
L310:   pop 
L311:   iconst_0 
L312:   istore 11 
L314:   iload 10 
L316:   ifeq L1257 
L319:   aload_0 
L320:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L323:   invokevirtual Method com/fs/starfarer/combat/CombatEngine isUsingDummyFleets ()Z 
L326:   ifne L1257 
L329:   aload_0 
L330:   getfield Field com/fs/starfarer/combat/CombatState showDeploymentDialog Z 
L333:   ifeq L1257 
L336:   aload_0 
L337:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L340:   invokevirtual Method com/fs/starfarer/combat/CombatEngine isShowDeploymentDialog ()Z 
L343:   ifeq L1257 
L346:   aload_0 
L347:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L350:   iconst_0 
L351:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L354:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager deployStationAndRelatedIfNeeded ()V 
L357:   aload_0 
L358:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L361:   iconst_1 
L362:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L365:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager deployStationAndRelatedIfNeeded ()V 
L368:   aload_0 
L369:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L372:   iconst_0 
L373:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L376:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager isDeployedStation ()Z 
L379:   istore 12 
L381:   aload_0 
L382:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L385:   iconst_1 
L386:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L389:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager isDeployedStation ()Z 
L392:   istore 13 
L394:   aload_0 
L395:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L398:   invokevirtual Method com/fs/starfarer/combat/CombatEngine isPreDeploy ()Z 
L401:   ifeq L579 
L404:   aload_0 
L405:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L408:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getCombatMap ()Lcom/fs/starfarer/combat/A/B; 
L411:   invokevirtual Method com/fs/starfarer/combat/A/B 'super' ()F 
L414:   fstore 14 
L416:   fload 14 
L418:   aload_0 
L419:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L422:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getStandoffRange ()F 
L425:   fsub 
L426:   ldc +0.5f 
L428:   fmul 
L429:   fstore 15 
L431:   aload_0 
L432:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L435:   iconst_0 
L436:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L439:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getGoal ()Lcom/fs/starfarer/api/fleet/FleetGoal; 
L442:   getstatic Field com/fs/starfarer/api/fleet/FleetGoal ESCAPE Lcom/fs/starfarer/api/fleet/FleetGoal; 
L445:   if_acmpne L488 
L448:   aload_0 
L449:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L452:   iconst_0 
L453:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L456:   fload 15 
L458:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager deployAll (F)V 
L461:   aload_0 
L462:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L465:   iconst_1 
L466:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L469:   fload 15 
L471:   aload_0 
L472:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L475:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getStandoffRange ()F 
L478:   ldc +0.5f 
L480:   fmul 
L481:   fsub 
L482:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager deployAll (F)V 
L485:   goto L571 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Float Float Object com/fs/graphics/Sprite Float Object com/fs/graphics/util/A Integer Integer Integer Integer Integer Integer Integer Float Float 
            stack 
        .end stack 
L488:   aload_0 
L489:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L492:   iconst_1 
L493:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L496:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getGoal ()Lcom/fs/starfarer/api/fleet/FleetGoal; 
L499:   getstatic Field com/fs/starfarer/api/fleet/FleetGoal ESCAPE Lcom/fs/starfarer/api/fleet/FleetGoal; 
L502:   if_acmpne L545 
L505:   aload_0 
L506:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L509:   iconst_0 
L510:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L513:   fload 15 
L515:   aload_0 
L516:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L519:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getStandoffRange ()F 
L522:   ldc +0.5f 
L524:   fmul 
L525:   fsub 
L526:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager deployAll (F)V 
L529:   aload_0 
L530:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L533:   iconst_1 
L534:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L537:   fload 15 
L539:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager deployAll (F)V 
L542:   goto L571 

        .stack same 
L545:   aload_0 
L546:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L549:   iconst_0 
L550:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L553:   fload 15 
L555:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager deployAll (F)V 
L558:   aload_0 
L559:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L562:   iconst_1 
L563:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L566:   fload 15 
L568:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager deployAll (F)V 

        .stack same 
L571:   aload_0 
L572:   iconst_0 
L573:   putfield Field com/fs/starfarer/combat/CombatState flagshipOutsideFirstTime Z 
L576:   goto L1108 

        .stack chop 2 
L579:   iconst_0 
L580:   istore 14 
L582:   iconst_0 
L583:   istore 15 
L585:   iconst_0 
L586:   istore 16 
L588:   aload_0 
L589:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L592:   iconst_0 
L593:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L596:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getGoal ()Lcom/fs/starfarer/api/fleet/FleetGoal; 
L599:   getstatic Field com/fs/starfarer/api/fleet/FleetGoal ESCAPE Lcom/fs/starfarer/api/fleet/FleetGoal; 
L602:   if_acmpne L650 
L605:   aload_0 
L606:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L609:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getInitialEscapeRange ()F 
L612:   aload_0 
L613:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L616:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getContext ()Lcom/fs/starfarer/api/combat/BattleCreationContext; 
L619:   invokevirtual Method com/fs/starfarer/api/combat/BattleCreationContext getPursuitRangeModifier ()F 
L622:   fadd 
L623:   fstore 17 
L625:   aload_0 
L626:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L629:   iconst_0 
L630:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L633:   fload 17 
L635:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager deployAll (F)V 
L638:   iconst_1 
L639:   istore 16 
L641:   iconst_1 
L642:   istore 15 
L644:   iconst_1 
L645:   istore 14 
L647:   goto L703 

        .stack append Integer Integer Integer 
L650:   aload_0 
L651:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L654:   iconst_1 
L655:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L658:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getGoal ()Lcom/fs/starfarer/api/fleet/FleetGoal; 
L661:   getstatic Field com/fs/starfarer/api/fleet/FleetGoal ESCAPE Lcom/fs/starfarer/api/fleet/FleetGoal; 
L664:   if_acmpne L703 
L667:   aload_0 
L668:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L671:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getInitialEscapeRange ()F 
L674:   aload_0 
L675:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L678:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getContext ()Lcom/fs/starfarer/api/combat/BattleCreationContext; 
L681:   invokevirtual Method com/fs/starfarer/api/combat/BattleCreationContext getPursuitRangeModifier ()F 
L684:   fadd 
L685:   fstore 17 
L687:   aload_0 
L688:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L691:   iconst_1 
L692:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L695:   fload 17 
L697:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager deployAll (F)V 
L700:   iconst_1 
L701:   istore 16 

        .stack same 
L703:   aload_0 
L704:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L707:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getStandoffRange ()F 
L710:   fconst_0 
L711:   fcmpg 
L712:   ifgt L739 
L715:   aload_0 
L716:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L719:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getContext ()Lcom/fs/starfarer/api/combat/BattleCreationContext; 
L722:   aload_0 
L723:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L726:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getCombatMap ()Lcom/fs/starfarer/combat/A/B; 
L729:   invokevirtual Method com/fs/starfarer/combat/A/B 'super' ()F 
L732:   ldc_w +4500.0f 
L735:   fsub 
L736:   invokevirtual Method com/fs/starfarer/api/combat/BattleCreationContext setStandoffRange (F)V 

        .stack same 
L739:   iload 16 
L741:   ifeq L771 
L744:   aload_0 
L745:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L748:   iconst_0 
L749:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L752:   iconst_0 
L753:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager setFirstDeployment (Z)V 
L756:   aload_0 
L757:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L760:   iconst_1 
L761:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L764:   iconst_0 
L765:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager setFirstDeployment (Z)V 
L768:   goto L1009 

        .stack same 
L771:   aload_0 
L772:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L775:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getContext ()Lcom/fs/starfarer/api/combat/BattleCreationContext; 
L778:   astore 17 
L780:   iconst_0 
L781:   istore 18 
L783:   aload 17 
L785:   ifnull L805 
L788:   aload 17 
L790:   invokevirtual Method com/fs/starfarer/api/combat/BattleCreationContext getInitialNumSteps ()F 
L793:   fconst_0 
L794:   fcmpl 
L795:   ifle L802 
L798:   iconst_1 
L799:   goto L803 

        .stack append Object com/fs/starfarer/api/combat/BattleCreationContext Integer 
L802:   iconst_0 

        .stack stack_1 Integer 
L803:   istore 18 

        .stack same 
L805:   aload_0 
L806:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L809:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getCombatMap ()Lcom/fs/starfarer/combat/A/B; 
L812:   invokevirtual Method com/fs/starfarer/combat/A/B 'super' ()F 
L815:   fstore 19 
L817:   fload 19 
L819:   aload_0 
L820:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L823:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getStandoffRange ()F 
L826:   fsub 
L827:   ldc +0.5f 
L829:   fmul 
L830:   fstore 20 
L832:   aload_0 
L833:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L836:   iconst_0 
L837:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L840:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getReserves ()Ljava/util/Set; 
L843:   invokeinterface InterfaceMethod java/util/Set size ()I 1 
L848:   iconst_1 
L849:   if_icmpne L915 
L852:   aload_0 
L853:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L856:   invokevirtual Method com/fs/starfarer/combat/CombatEngine isSimulation ()Z 
L859:   ifne L915 
L862:   iload 12 
L864:   ifne L915 
L867:   iload 18 
L869:   ifne L915 
L872:   aload_0 
L873:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L876:   iconst_0 
L877:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L880:   iconst_1 
L881:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager setFirstDeployment (Z)V 
L884:   aload_0 
L885:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L888:   iconst_0 
L889:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L892:   fload 20 
L894:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager deployAll (F)V 
L897:   aload_0 
L898:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L901:   iconst_0 
L902:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L905:   iconst_0 
L906:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager setFirstDeployment (Z)V 
L909:   iconst_1 
L910:   istore 15 
L912:   goto L927 

        .stack append Float Float 
L915:   aload_0 
L916:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L919:   iconst_0 
L920:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L923:   iconst_1 
L924:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager setFirstDeployment (Z)V 

        .stack same 
L927:   aload_0 
L928:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L931:   iconst_1 
L932:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L935:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getReserves ()Ljava/util/Set; 
L938:   invokeinterface InterfaceMethod java/util/Set size ()I 1 
L943:   iconst_1 
L944:   if_icmpne L997 
L947:   iload 13 
L949:   ifne L997 
L952:   iload 18 
L954:   ifne L997 
L957:   aload_0 
L958:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L961:   iconst_1 
L962:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L965:   iconst_1 
L966:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager setFirstDeployment (Z)V 
L969:   aload_0 
L970:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L973:   iconst_1 
L974:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L977:   fload 20 
L979:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager deployAll (F)V 
L982:   aload_0 
L983:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L986:   iconst_1 
L987:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L990:   iconst_0 
L991:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager setFirstDeployment (Z)V 
L994:   goto L1009 

        .stack same_extended 
L997:   aload_0 
L998:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L1001:  iconst_1 
L1002:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L1005:  iconst_1 
L1006:  invokevirtual Method com/fs/starfarer/combat/CombatFleetManager setFirstDeployment (Z)V 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Float Float Object com/fs/graphics/Sprite Float Object com/fs/graphics/util/A Integer Integer Integer Integer Integer Integer Integer Integer Integer Integer 
            stack 
        .end stack 
L1009:  aload_0 
L1010:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L1013:  invokevirtual Method com/fs/starfarer/combat/CombatEngine executeRemoves ()V 
L1016:  aload_0 
L1017:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L1020:  invokevirtual Method com/fs/starfarer/combat/CombatEngine executeAdds ()V 
L1023:  aload_0 
L1024:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L1027:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManagers ()Ljava/util/List; 
L1030:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L1035:  astore 18 
L1037:  goto L1071 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Float Float Object com/fs/graphics/Sprite Float Object com/fs/graphics/util/A Integer Integer Integer Integer Integer Integer Integer Integer Integer Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L1040:  aload 18 
L1042:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L1047:  checkcast com/fs/starfarer/combat/CombatFleetManager 
L1050:  astore 17 
L1052:  aload 17 
L1054:  invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getAdmiralAI ()Lcom/fs/starfarer/api/combat/AdmiralAIPlugin; 
L1057:  astore 19 
L1059:  aload 19 
L1061:  ifnull L1071 
L1064:  aload 19 
L1066:  invokeinterface InterfaceMethod com/fs/starfarer/api/combat/AdmiralAIPlugin preCombat ()V 1 

        .stack same 
L1071:  aload 18 
L1073:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L1078:  ifne L1040 
L1081:  aload_0 
L1082:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L1085:  invokevirtual Method com/fs/starfarer/combat/CombatEngine executeRemoves ()V 
L1088:  aload_0 
L1089:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L1092:  invokevirtual Method com/fs/starfarer/combat/CombatEngine executeAdds ()V 
L1095:  aload_0 
L1096:  iconst_1 
L1097:  putfield Field com/fs/starfarer/combat/CombatState flagshipOutsideFirstTime Z 
L1100:  iload 15 
L1102:  ifne L1108 
L1105:  iconst_1 
L1106:  istore 11 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Float Float Object com/fs/graphics/Sprite Float Object com/fs/graphics/util/A Integer Integer Integer Integer Integer Integer Integer 
            stack 
        .end stack 
L1108:  new java/util/ArrayList 
L1111:  dup 
L1112:  aload_0 
L1113:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L1116:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getObjects ()Lcom/fs/util/container/repo/ObjectRepository; 
L1119:  ldc_w Class com/fs/starfarer/combat/entities/BattleObjective 
L1122:  invokevirtual Method com/fs/util/container/repo/ObjectRepository getList (Ljava/lang/Class;)Ljava/util/List; 
L1125:  invokespecial Method java/util/ArrayList <init> (Ljava/util/Collection;)V 
L1128:  astore 14 
L1130:  aload 14 
L1132:  invokeinterface InterfaceMethod java/util/List isEmpty ()Z 1 
L1137:  ifeq L1198 
L1140:  aload_0 
L1141:  getfield Field com/fs/starfarer/combat/CombatState warroom Lcom/fs/starfarer/combat/new/OoOO; 
L1144:  aload_0 
L1145:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L1148:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getCombatMap ()Lcom/fs/starfarer/combat/A/B; 
L1151:  invokevirtual Method com/fs/starfarer/combat/A/B 'Ò00000' ()F 
L1154:  aload_0 
L1155:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L1158:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getCombatMap ()Lcom/fs/starfarer/combat/A/B; 
L1161:  invokevirtual Method com/fs/starfarer/combat/A/B 'ø00000' ()F 
L1164:  ldc +0.5f 
L1166:  fmul 
L1167:  fadd 
L1168:  aload_0 
L1169:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L1172:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getCombatMap ()Lcom/fs/starfarer/combat/A/B; 
L1175:  invokevirtual Method com/fs/starfarer/combat/A/B 'Õ00000' ()F 
L1178:  aload_0 
L1179:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L1182:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getCombatMap ()Lcom/fs/starfarer/combat/A/B; 
L1185:  invokevirtual Method com/fs/starfarer/combat/A/B 'super' ()F 
L1188:  ldc +0.5f 
L1190:  fmul 
L1191:  fadd 
L1192:  invokevirtual Method com/fs/starfarer/combat/new/OoOO centerOn (FF)V 
L1195:  goto L1281 

        .stack append Object java/util/List 
L1198:  aload_0 
L1199:  getfield Field com/fs/starfarer/combat/CombatState warroom Lcom/fs/starfarer/combat/new/OoOO; 
L1202:  aload_0 
L1203:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L1206:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getCombatMap ()Lcom/fs/starfarer/combat/A/B; 
L1209:  invokevirtual Method com/fs/starfarer/combat/A/B 'Ò00000' ()F 
L1212:  aload_0 
L1213:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L1216:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getCombatMap ()Lcom/fs/starfarer/combat/A/B; 
L1219:  invokevirtual Method com/fs/starfarer/combat/A/B 'ø00000' ()F 
L1222:  ldc +0.5f 
L1224:  fmul 
L1225:  fadd 
L1226:  aload_0 
L1227:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L1230:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getCombatMap ()Lcom/fs/starfarer/combat/A/B; 
L1233:  invokevirtual Method com/fs/starfarer/combat/A/B 'Õ00000' ()F 
L1236:  aload_0 
L1237:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L1240:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getCombatMap ()Lcom/fs/starfarer/combat/A/B; 
L1243:  invokevirtual Method com/fs/starfarer/combat/A/B 'super' ()F 
L1246:  ldc_w +0.25f 
L1249:  fmul 
L1250:  fadd 
L1251:  invokevirtual Method com/fs/starfarer/combat/new/OoOO centerOn (FF)V 
L1254:  goto L1281 

        .stack chop 3 
L1257:  aload_0 
L1258:  iconst_1 
L1259:  putfield Field com/fs/starfarer/combat/CombatState flagshipOutsideFirstTime Z 
L1262:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'oÖ0000' ()Lcom/fs/starfarer/settings/A; 
L1265:  invokevirtual Method com/fs/starfarer/settings/A new ()I 
L1268:  iconst_2 
L1269:  idiv 
L1270:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'oÖ0000' ()Lcom/fs/starfarer/settings/A; 
L1273:  invokevirtual Method com/fs/starfarer/settings/A 'Ô00000' ()I 
L1276:  iconst_2 
L1277:  idiv 
L1278:  invokestatic Method org/lwjgl/input/Mouse setCursorPosition (II)V 

        .stack same 
L1281:  aload_0 
L1282:  aload_0 
L1283:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L1286:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L1289:  invokevirtual Method com/fs/starfarer/combat/CombatState setPlayerShip (Lcom/fs/starfarer/combat/entities/Ship;)V 
L1292:  aload_0 
L1293:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L1296:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getCombatMap ()Lcom/fs/starfarer/combat/A/B; 
L1299:  aload_0 
L1300:  invokevirtual Method com/fs/starfarer/combat/A/B 'super' (Lcom/fs/starfarer/combat/A/B$o0;)V 
L1303:  ldc_w 'ui' 
L1306:  ldc_w 'scanline_large' 
L1309:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'Ö00000' (Ljava/lang/String;Ljava/lang/String;)Lcom/fs/graphics/Sprite; 
L1312:  astore 12 
L1314:  aload 12 
L1316:  new java/awt/Color 
L1319:  dup 
L1320:  bipush 10 
L1322:  bipush 38 
L1324:  bipush 44 
L1326:  sipush 255 
L1329:  invokespecial Method java/awt/Color <init> (IIII)V 
L1332:  invokevirtual Method com/fs/graphics/Sprite setColor (Ljava/awt/Color;)V 
L1335:  aload_0 
L1336:  new com/fs/graphics/util/Fader 
L1339:  dup 
L1340:  fconst_0 
L1341:  ldc +0.5f 
L1343:  ldc +0.5f 
L1345:  invokespecial Method com/fs/graphics/util/Fader <init> (FFF)V 
L1348:  putfield Field com/fs/starfarer/combat/CombatState fader Lcom/fs/graphics/util/Fader; 
L1351:  aload_0 
L1352:  getfield Field com/fs/starfarer/combat/CombatState fader Lcom/fs/graphics/util/Fader; 
L1355:  invokevirtual Method com/fs/graphics/util/Fader fadeIn ()V 
L1358:  aload_0 
L1359:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L1362:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getContext ()Lcom/fs/starfarer/api/combat/BattleCreationContext; 
L1365:  astore 13 
L1367:  aload 13 
L1369:  ifnull L1464 
L1372:  aload_0 
L1373:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L1376:  invokevirtual Method com/fs/starfarer/combat/CombatEngine isPaused ()Z 
L1379:  istore 14 
L1381:  aload_0 
L1382:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L1385:  iconst_0 
L1386:  invokevirtual Method com/fs/starfarer/combat/CombatEngine setPaused (Z)V 
L1389:  iconst_0 
L1390:  istore 15 
L1392:  goto L1443 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Float Float Object com/fs/graphics/Sprite Float Object com/fs/graphics/util/A Integer Integer Integer Integer Integer Object com/fs/graphics/Sprite Object com/fs/starfarer/api/combat/BattleCreationContext Integer Integer 
            stack 
        .end stack 
L1395:  ldc_w 'CEanim' 
L1398:  invokestatic Method com/fs/graphics/anim/AnimationManager getInstance (Ljava/lang/String;)Lcom/fs/graphics/anim/AnimationManager; 
L1401:  aload 13 
L1403:  invokevirtual Method com/fs/starfarer/api/combat/BattleCreationContext getInitialStepSize ()F 
L1406:  invokevirtual Method com/fs/graphics/anim/AnimationManager advanceAll (F)V 
L1409:  aload_0 
L1410:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L1413:  aload 13 
L1415:  invokevirtual Method com/fs/starfarer/api/combat/BattleCreationContext getInitialStepSize ()F 
L1418:  new com/fs/starfarer/util/A/new 
L1421:  dup 
L1422:  invokespecial Method com/fs/starfarer/util/A/new <init> ()V 
L1425:  invokevirtual Method com/fs/starfarer/combat/CombatEngine advance (FLcom/fs/starfarer/util/A/new;)V 
L1428:  aload_0 
L1429:  getfield Field com/fs/starfarer/combat/CombatState messageWidget Lcom/fs/starfarer/class/C; 
L1432:  aload 13 
L1434:  invokevirtual Method com/fs/starfarer/api/combat/BattleCreationContext getInitialStepSize ()F 
L1437:  invokevirtual Method com/fs/starfarer/class/C Oo0000 (F)V 
L1440:  iinc 15 1 

        .stack same 
L1443:  iload 15 
L1445:  i2f 
L1446:  aload 13 
L1448:  invokevirtual Method com/fs/starfarer/api/combat/BattleCreationContext getInitialNumSteps ()F 
L1451:  fcmpg 
L1452:  iflt L1395 
L1455:  aload_0 
L1456:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L1459:  iload 14 
L1461:  invokevirtual Method com/fs/starfarer/combat/CombatEngine setPaused (Z)V 

        .stack chop 2 
L1464:  iload 11 
L1466:  ifeq L1484 
L1469:  aload_0 
L1470:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L1473:  invokevirtual Method com/fs/starfarer/combat/CombatEngine computeFleetStrengths ()V 
L1476:  aload_0 
L1477:  invokevirtual Method com/fs/starfarer/combat/CombatState showWarroom ()V 
L1480:  aload_0 
L1481:  invokevirtual Method com/fs/starfarer/combat/CombatState showDeployDialog ()V 

        .stack same 
L1484:  invokestatic Method com/fs/starfarer/D/return 'public' ()V 

        .stack same 
L1487:  invokestatic Method com/fs/starfarer/api/Global getSettings ()Lcom/fs/starfarer/api/SettingsAPI; 
L1490:  invokeinterface InterfaceMethod com/fs/starfarer/api/SettingsAPI isInCampaignState ()Z 1 
L1495:  ifeq L1508 
L1498:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'class.class' ()Z 
L1501:  ifne L1508 
L1504:  iconst_0 
L1505:  goto L1509 

        .stack same 
L1508:  iconst_1 

        .stack stack_1 Integer 
L1509:  istore 14 
L1511:  iload 14 
L1513:  ifeq L1530 
L1516:  invokestatic Method org/lwjgl/opengl/Display isCloseRequested ()Z 
L1519:  ifeq L1530 
L1522:  new com/fs/starfarer/super 
L1525:  dup 
L1526:  invokespecial Method com/fs/starfarer/super <init> ()V 
L1529:  athrow 

        .stack append Integer 
L1530:  ldc_w 'idleWhileWindowNotVisible' 
L1533:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings class (Ljava/lang/String;)Z 
L1536:  ifeq L1607 
L1539:  aload_0 
L1540:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L1543:  invokevirtual Method com/fs/starfarer/combat/CombatEngine isPaused ()Z 
L1546:  istore 15 
L1548:  getstatic Field com/fs/starfarer/settings/StarfarerSettings oO0000 Z 
L1551:  ifeq L1566 
L1554:  ldc_w 'doNotIdleWhenUndecoratedFullcreen' 
L1557:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings class (Ljava/lang/String;)Z 
L1560:  ifeq L1566 
L1563:  iconst_0 
L1564:  istore 15 

        .stack append Integer 
L1566:  iload 15 
L1568:  ifeq L1607 
L1571:  invokestatic Method org/lwjgl/opengl/Display isActive ()Z 
L1574:  ifne L1607 
        .catch java/lang/Exception from L1577 to L1583 using L1586 
L1577:  ldc2_w 50L 
L1580:  invokestatic Method java/lang/Thread sleep (J)V 
L1583:  goto L1588 

        .stack stack_1 Object java/lang/Exception 
L1586:  astore 16 

        .stack same 
L1588:  invokestatic Method org/lwjgl/opengl/Display processMessages ()V 
L1591:  ldc_w +0.01600000075995922f 
L1594:  fconst_0 
L1595:  fconst_0 
L1596:  fconst_0 
L1597:  fconst_0 
L1598:  sipush 1800 
L1601:  invokestatic Method com/fs/starfarer/D/M o00000 (FFFFFI)V 
L1604:  goto L1487 

        .stack chop 1 
L1607:  aload_0 
L1608:  getfield Field com/fs/starfarer/combat/CombatState shownEnemyFullRetreat Z 
L1611:  ifne L1657 
L1614:  aload_0 
L1615:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L1618:  invokevirtual Method com/fs/starfarer/combat/CombatEngine isEnemyInFullRetreat ()Z 
L1621:  ifeq L1657 
L1624:  aload_0 
L1625:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L1628:  invokevirtual Method com/fs/starfarer/combat/CombatEngine isSimulation ()Z 
L1631:  ifne L1657 
L1634:  aload_0 
L1635:  invokevirtual Method com/fs/starfarer/combat/CombatState getMessageWidget ()Lcom/fs/starfarer/class/C; 
L1638:  iconst_1 
L1639:  anewarray java/lang/Object 
L1642:  dup 
L1643:  iconst_0 
L1644:  ldc_w 'The enemy fleet is defeated. Press ESCAPE to end the battle at any time.' 
L1647:  aastore 
L1648:  invokevirtual Method com/fs/starfarer/class/C o00000 ([Ljava/lang/Object;)Lcom/fs/starfarer/class/O0OO/C; 
L1651:  pop 
L1652:  aload_0 
L1653:  iconst_1 
L1654:  putfield Field com/fs/starfarer/combat/CombatState shownEnemyFullRetreat Z 

        .stack same 
L1657:  iconst_0 
L1658:  istore 15 
L1660:  aload_0 
L1661:  getfield Field com/fs/starfarer/combat/CombatState showWarroom Z 
L1664:  ifne L1677 
L1667:  aload_0 
L1668:  getfield Field com/fs/starfarer/combat/CombatState warroom Lcom/fs/starfarer/combat/new/OoOO; 
L1671:  invokevirtual Method com/fs/starfarer/combat/new/OoOO isFadingOut ()Z 
L1674:  ifeq L1689 

        .stack append Integer 
L1677:  iconst_1 
L1678:  istore 15 
L1680:  ldc_w 'CombatState main loop (C2)' 
L1683:  invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L1686:  goto L1695 

        .stack same 
L1689:  ldc_w 'CombatState main loop (combat)' 
L1692:  invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 

        .stack same 
L1695:  invokestatic Method com/fs/graphics/util/B 'Ô00000' ()J 
L1698:  lstore 16 
L1700:  ldc_w 'GLListManager.nextFrame' 
L1703:  invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L1706:  invokestatic Method com/fs/graphics/util/GLListManager nextFrame ()V 
L1709:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L1712:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'OÓ0000' ()Z 
L1715:  ifeq L1740 
L1718:  bipush 65 
L1720:  invokestatic Method org/lwjgl/input/Keyboard isKeyDown (I)Z 
L1723:  ifeq L1740 
        .catch org/json/JSONException from L1726 to L1729 using L1732 
L1726:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'öÔ0000' ()V 
L1729:  goto L1734 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Float Float Object com/fs/graphics/Sprite Float Object com/fs/graphics/util/A Integer Integer Integer Integer Integer Object com/fs/graphics/Sprite Object com/fs/starfarer/api/combat/BattleCreationContext Integer Integer Long 
            stack Object org/json/JSONException 
        .end stack 
L1732:  astore 18 

        .stack same 
L1734:  ldc_w 'graphics/damage' 
L1737:  invokestatic Method com/fs/graphics/oOoO 'super' (Ljava/lang/String;)V 

        .stack same 
L1740:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'OÓ0000' ()Z 
L1743:  ifeq L1758 
L1746:  bipush 66 
L1748:  invokestatic Method org/lwjgl/input/Keyboard isKeyDown (I)Z 
L1751:  ifeq L1758 
L1754:  aload_0 
L1755:  invokevirtual Method com/fs/starfarer/combat/CombatState reloadAssets ()V 

        .stack same 
L1758:  aload_0 
L1759:  getfield Field com/fs/starfarer/combat/CombatState viewMouseOffset Lcom/fs/starfarer/combat/L; 
L1762:  aload_0 
L1763:  getfield Field com/fs/starfarer/combat/CombatState viewOnTarget Z 
L1766:  invokeinterface InterfaceMethod com/fs/starfarer/combat/L 'super' (Z)V 2 
L1771:  aload_0 
L1772:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L1775:  ifnonnull L1786 
L1778:  aload_0 
L1779:  iconst_0 
L1780:  putfield Field com/fs/starfarer/combat/CombatState viewOnTarget Z 
L1783:  goto L2205 

        .stack same 
L1786:  aload_0 
L1787:  getfield Field com/fs/starfarer/combat/CombatState viewOnTarget Z 
L1790:  ifeq L2156 
L1793:  aload_0 
L1794:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L1797:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getShipTarget ()Lcom/fs/starfarer/combat/entities/Ship; 
L1800:  ifnull L2156 
L1803:  aload_0 
L1804:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L1807:  aload_0 
L1808:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L1811:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getOriginalOwner ()I 
L1814:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getFogOfWar (I)Lcom/fs/starfarer/combat/new/T; 
L1817:  astore 18 
L1819:  aload 18 
L1821:  ifnull L1889 
L1824:  aload 18 
L1826:  aload_0 
L1827:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L1830:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getShipTarget ()Lcom/fs/starfarer/combat/entities/Ship; 
L1833:  invokevirtual Method com/fs/starfarer/combat/new/T isVisible (Lcom/fs/starfarer/api/combat/CombatEntityAPI;)Z 
L1836:  ifne L1889 
L1839:  aload_0 
L1840:  getfield Field com/fs/starfarer/combat/CombatState viewOnTarget Z 
L1843:  ifeq L1868 
L1846:  aload_0 
L1847:  getfield Field com/fs/starfarer/combat/CombatState viewMouseOffset Lcom/fs/starfarer/combat/L; 
L1850:  fconst_0 
L1851:  fconst_0 
L1852:  invokeinterface InterfaceMethod com/fs/starfarer/combat/L 'Ó00000' (FF)V 3 
L1857:  aload_0 
L1858:  getfield Field com/fs/starfarer/combat/CombatState viewMouseOffset Lcom/fs/starfarer/combat/L; 
L1861:  fconst_0 
L1862:  fconst_0 
L1863:  invokeinterface InterfaceMethod com/fs/starfarer/combat/L 'super' (FF)V 3 

        .stack append Object com/fs/starfarer/combat/new/T 
L1868:  aload_0 
L1869:  iconst_0 
L1870:  putfield Field com/fs/starfarer/combat/CombatState viewOnTarget Z 
L1873:  aload_0 
L1874:  aconst_null 
L1875:  invokevirtual Method com/fs/starfarer/combat/CombatState setVideoFeedSource (Lcom/fs/starfarer/combat/new/OoOO$o;)V 
L1878:  aload_0 
L1879:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L1882:  aconst_null 
L1883:  invokevirtual Method com/fs/starfarer/combat/entities/Ship setShipTarget (Lcom/fs/starfarer/api/combat/ShipAPI;)V 
L1886:  goto L2205 

        .stack same 
L1889:  aload_0 
L1890:  aload_0 
L1891:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L1894:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getShipTarget ()Lcom/fs/starfarer/combat/entities/Ship; 
L1897:  invokevirtual Method com/fs/starfarer/combat/CombatState setVideoFeedSource (Lcom/fs/starfarer/combat/new/OoOO$o;)V 
L1900:  aload_0 
L1901:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L1904:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L1907:  aload_0 
L1908:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L1911:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getShipTarget ()Lcom/fs/starfarer/combat/entities/Ship; 
L1914:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L1917:  new org/lwjgl/util/vector/Vector2f 
L1920:  dup 
L1921:  invokespecial Method org/lwjgl/util/vector/Vector2f <init> ()V 
L1924:  invokestatic Method org/lwjgl/util/vector/Vector2f sub (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)Lorg/lwjgl/util/vector/Vector2f; 
L1927:  astore 19 
L1929:  aload 19 
L1931:  invokestatic Method com/fs/starfarer/prototype/Utils o00000 (Lorg/lwjgl/util/vector/Vector2f;)Lorg/lwjgl/util/vector/Vector2f; 
L1934:  pop 
L1935:  aload_0 
L1936:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L1939:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getShipTarget ()Lcom/fs/starfarer/combat/entities/Ship; 
L1942:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L1945:  aload_0 
L1946:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L1949:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L1952:  invokestatic Method com/fs/starfarer/prototype/Utils 'Ø00000' (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)F 
L1955:  fstore 20 
L1957:  new org/lwjgl/util/vector/Vector2f 
L1960:  dup 
L1961:  invokestatic Method com/fs/starfarer/util/A/C getMouseX ()I 
L1964:  i2f 
L1965:  fload_2 
L1966:  fconst_2 
L1967:  fdiv 
L1968:  fsub 
L1969:  invokestatic Method com/fs/starfarer/util/A/C getMouseY ()I 
L1972:  i2f 
L1973:  fload_3 
L1974:  fconst_2 
L1975:  fdiv 
L1976:  fsub 
L1977:  invokespecial Method org/lwjgl/util/vector/Vector2f <init> (FF)V 
L1980:  astore 21 
L1982:  aload 21 
L1984:  invokevirtual Method org/lwjgl/util/vector/Vector2f length ()F 
L1987:  fstore 22 
L1989:  aload 21 
L1991:  invokestatic Method com/fs/starfarer/prototype/Utils o00000 (Lorg/lwjgl/util/vector/Vector2f;)Lorg/lwjgl/util/vector/Vector2f; 
L1994:  pop 
L1995:  aload 19 
L1997:  aload 21 
L1999:  invokestatic Method org/lwjgl/util/vector/Vector2f dot (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)F 
L2002:  fload 22 
L2004:  fmul 
L2005:  fstore 23 
L2007:  fload_3 
L2008:  ldc +4.0f 
L2010:  fdiv 
L2011:  fconst_0 
L2012:  fload 20 
L2014:  ldc_w +2000.0f 
L2017:  fsub 
L2018:  ldc_w +10.0f 
L2021:  fdiv 
L2022:  invokestatic Method java/lang/Math max (FF)F 
L2025:  fadd 
L2026:  fstore 24 
L2028:  fload 24 
L2030:  fload_3 
L2031:  fconst_2 
L2032:  fdiv 
L2033:  fcmpl 
L2034:  ifle L2042 
L2037:  fload_3 
L2038:  fconst_2 
L2039:  fdiv 
L2040:  fstore 24 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Float Float Object com/fs/graphics/Sprite Float Object com/fs/graphics/util/A Integer Integer Integer Integer Integer Object com/fs/graphics/Sprite Object com/fs/starfarer/api/combat/BattleCreationContext Integer Integer Long Object com/fs/starfarer/combat/new/T Object org/lwjgl/util/vector/Vector2f Float Object org/lwjgl/util/vector/Vector2f Float Float Float 
            stack 
        .end stack 
L2042:  fconst_1 
L2043:  fload 23 
L2045:  fload 24 
L2047:  fdiv 
L2048:  invokestatic Method java/lang/Math min (FF)F 
L2051:  fstore 25 
L2053:  fload 25 
L2055:  fconst_0 
L2056:  fcmpg 
L2057:  ifge L2065 
L2060:  ldc_w -0.0f 
L2063:  fstore 25 

        .stack append Float 
L2065:  fload 25 
L2067:  f2d 
L2068:  ldc2_w +1.5 
L2071:  invokestatic Method java/lang/Math pow (DD)D 
L2074:  d2f 
L2075:  fstore 25 
L2077:  aload 21 
L2079:  fload 20 
L2081:  fload 25 
L2083:  fmul 
L2084:  invokevirtual Method org/lwjgl/util/vector/Vector2f scale (F)Lorg/lwjgl/util/vector/Vector; 
L2087:  pop 
L2088:  aload 21 
L2090:  fconst_1 
L2091:  aload_0 
L2092:  getfield Field com/fs/starfarer/combat/CombatState viewMouseOffset Lcom/fs/starfarer/combat/L; 
L2095:  invokeinterface InterfaceMethod com/fs/starfarer/combat/L 'super' ()F 1 
L2100:  fdiv 
L2101:  invokevirtual Method org/lwjgl/util/vector/Vector2f scale (F)Lorg/lwjgl/util/vector/Vector; 
L2104:  pop 
L2105:  aload_0 
L2106:  getfield Field com/fs/starfarer/combat/CombatState tutorialOverlay Lcom/fs/starfarer/tutorial/H; 
L2109:  ifnull L2134 
L2112:  aload_0 
L2113:  getfield Field com/fs/starfarer/combat/CombatState tutorialOverlay Lcom/fs/starfarer/tutorial/H; 
L2116:  invokevirtual Method com/fs/starfarer/tutorial/H shouldTurnOffMousePan ()Z 
L2119:  ifeq L2134 
L2122:  aload_0 
L2123:  getfield Field com/fs/starfarer/combat/CombatState viewMouseOffset Lcom/fs/starfarer/combat/L; 
L2126:  invokeinterface InterfaceMethod com/fs/starfarer/combat/L 'Ó00000' ()V 1 
L2131:  goto L2205 

        .stack same_extended 
L2134:  aload_0 
L2135:  getfield Field com/fs/starfarer/combat/CombatState viewMouseOffset Lcom/fs/starfarer/combat/L; 
L2138:  aload 21 
L2140:  getfield Field org/lwjgl/util/vector/Vector2f x F 
L2143:  aload 21 
L2145:  getfield Field org/lwjgl/util/vector/Vector2f y F 
L2148:  invokeinterface InterfaceMethod com/fs/starfarer/combat/L 'Ó00000' (FF)V 3 
L2153:  goto L2205 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Float Float Object com/fs/graphics/Sprite Float Object com/fs/graphics/util/A Integer Integer Integer Integer Integer Object com/fs/graphics/Sprite Object com/fs/starfarer/api/combat/BattleCreationContext Integer Integer Long 
            stack 
        .end stack 
L2156:  aload_0 
L2157:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L2160:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getShipTarget ()Lcom/fs/starfarer/combat/entities/Ship; 
L2163:  ifnonnull L2205 
L2166:  aload_0 
L2167:  getfield Field com/fs/starfarer/combat/CombatState viewOnTarget Z 
L2170:  ifeq L2205 
L2173:  aload_0 
L2174:  iconst_0 
L2175:  putfield Field com/fs/starfarer/combat/CombatState viewOnTarget Z 
L2178:  aload_0 
L2179:  getfield Field com/fs/starfarer/combat/CombatState viewMouseOffset Lcom/fs/starfarer/combat/L; 
L2182:  fconst_0 
L2183:  fconst_0 
L2184:  invokeinterface InterfaceMethod com/fs/starfarer/combat/L 'Ó00000' (FF)V 3 
L2189:  aload_0 
L2190:  getfield Field com/fs/starfarer/combat/CombatState viewMouseOffset Lcom/fs/starfarer/combat/L; 
L2193:  fconst_0 
L2194:  fconst_0 
L2195:  invokeinterface InterfaceMethod com/fs/starfarer/combat/L 'super' (FF)V 3 
L2200:  aload_0 
L2201:  aconst_null 
L2202:  invokevirtual Method com/fs/starfarer/combat/CombatState setVideoFeedSource (Lcom/fs/starfarer/combat/new/OoOO$o;)V 

        .stack same 
L2205:  aload_0 
L2206:  getfield Field com/fs/starfarer/combat/CombatState cameraMode Lcom/fs/starfarer/combat/CombatState$Oo; 
L2209:  getstatic Field com/fs/starfarer/combat/CombatState$Oo 'Ó00000' Lcom/fs/starfarer/combat/CombatState$Oo; 
L2212:  if_acmpne L2240 
L2215:  aload_0 
L2216:  getfield Field com/fs/starfarer/combat/CombatState viewMouseOffset Lcom/fs/starfarer/combat/L; 
L2219:  fconst_0 
L2220:  fconst_0 
L2221:  invokeinterface InterfaceMethod com/fs/starfarer/combat/L 'Ó00000' (FF)V 3 
L2226:  aload_0 
L2227:  getfield Field com/fs/starfarer/combat/CombatState viewMouseOffset Lcom/fs/starfarer/combat/L; 
L2230:  fconst_0 
L2231:  fconst_0 
L2232:  invokeinterface InterfaceMethod com/fs/starfarer/combat/L 'super' (FF)V 3 
L2237:  goto L2284 

        .stack same 
L2240:  aload_0 
L2241:  getfield Field com/fs/starfarer/combat/CombatState cameraMode Lcom/fs/starfarer/combat/CombatState$Oo; 
L2244:  getstatic Field com/fs/starfarer/combat/CombatState$Oo new Lcom/fs/starfarer/combat/CombatState$Oo; 
L2247:  if_acmpne L2284 
L2250:  aload_0 
L2251:  getfield Field com/fs/starfarer/combat/CombatState viewMouseOffset Lcom/fs/starfarer/combat/L; 
L2254:  aload_0 
L2255:  getfield Field com/fs/starfarer/combat/CombatState panX F 
L2258:  aload_0 
L2259:  getfield Field com/fs/starfarer/combat/CombatState panY F 
L2262:  invokeinterface InterfaceMethod com/fs/starfarer/combat/L 'Ó00000' (FF)V 3 
L2267:  aload_0 
L2268:  getfield Field com/fs/starfarer/combat/CombatState viewMouseOffset Lcom/fs/starfarer/combat/L; 
L2271:  aload_0 
L2272:  getfield Field com/fs/starfarer/combat/CombatState panX F 
L2275:  aload_0 
L2276:  getfield Field com/fs/starfarer/combat/CombatState panY F 
L2279:  invokeinterface InterfaceMethod com/fs/starfarer/combat/L 'super' (FF)V 3 

        .stack same 
L2284:  iload 8 
L2286:  i2f 
L2287:  aload_0 
L2288:  invokevirtual Method com/fs/starfarer/combat/CombatState getZoomFactor ()F 
L2291:  fmul 
L2292:  fstore 18 
L2294:  iload 9 
L2296:  i2f 
L2297:  aload_0 
L2298:  invokevirtual Method com/fs/starfarer/combat/CombatState getZoomFactor ()F 
L2301:  fmul 
L2302:  fstore 19 
L2304:  fconst_1 
L2305:  invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L2308:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getViewport ()Lcom/fs/starfarer/combat/CombatViewport; 
L2311:  invokevirtual Method com/fs/starfarer/combat/CombatViewport getWorldXtoScreenX ()F 
L2314:  fdiv 
L2315:  invokestatic Method com/fs/starfarer/util/A/C getMouseX ()I 
L2318:  i2f 
L2319:  fload_2 
L2320:  fconst_2 
L2321:  fdiv 
L2322:  fsub 
L2323:  fmul 
L2324:  aload_0 
L2325:  invokevirtual Method com/fs/starfarer/combat/CombatState getZoomFactor ()F 
L2328:  fmul 
L2329:  fstore 20 
L2331:  fconst_1 
L2332:  invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L2335:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getViewport ()Lcom/fs/starfarer/combat/CombatViewport; 
L2338:  invokevirtual Method com/fs/starfarer/combat/CombatViewport getWorldYtoScreenY ()F 
L2341:  fdiv 
L2342:  invokestatic Method com/fs/starfarer/util/A/C getMouseY ()I 
L2345:  i2f 
L2346:  fload_3 
L2347:  fconst_2 
L2348:  fdiv 
L2349:  fsub 
L2350:  fmul 
L2351:  aload_0 
L2352:  invokevirtual Method com/fs/starfarer/combat/CombatState getZoomFactor ()F 
L2355:  fmul 
L2356:  fstore 21 
L2358:  aload_0 
L2359:  getfield Field com/fs/starfarer/combat/CombatState tutorialOverlay Lcom/fs/starfarer/tutorial/H; 
L2362:  ifnull L2387 
L2365:  aload_0 
L2366:  getfield Field com/fs/starfarer/combat/CombatState tutorialOverlay Lcom/fs/starfarer/tutorial/H; 
L2369:  invokevirtual Method com/fs/starfarer/tutorial/H shouldTurnOffMousePan ()Z 
L2372:  ifeq L2387 
L2375:  aload_0 
L2376:  getfield Field com/fs/starfarer/combat/CombatState viewMouseOffset Lcom/fs/starfarer/combat/L; 
L2379:  invokeinterface InterfaceMethod com/fs/starfarer/combat/L 'Ó00000' ()V 1 
L2384:  goto L2407 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Float Float Object com/fs/graphics/Sprite Float Object com/fs/graphics/util/A Integer Integer Integer Integer Integer Object com/fs/graphics/Sprite Object com/fs/starfarer/api/combat/BattleCreationContext Integer Integer Long Float Float Float Float 
            stack 
        .end stack 
L2387:  aload_0 
L2388:  getfield Field com/fs/starfarer/combat/CombatState viewOnTarget Z 
L2391:  ifne L2407 
L2394:  aload_0 
L2395:  getfield Field com/fs/starfarer/combat/CombatState viewMouseOffset Lcom/fs/starfarer/combat/L; 
L2398:  fload 20 
L2400:  fload 21 
L2402:  invokeinterface InterfaceMethod com/fs/starfarer/combat/L 'Ó00000' (FF)V 3 

        .stack same 
L2407:  aload_0 
L2408:  getfield Field com/fs/starfarer/combat/CombatState entityToFollow Lcom/fs/starfarer/combat/new/OoOO$o; 
L2411:  ifnull L2435 
L2414:  new org/lwjgl/util/vector/Vector2f 
L2417:  dup 
L2418:  aload_0 
L2419:  getfield Field com/fs/starfarer/combat/CombatState entityToFollow Lcom/fs/starfarer/combat/new/OoOO$o; 
L2422:  invokeinterface InterfaceMethod com/fs/starfarer/combat/new/OoOO$o getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L2427:  invokespecial Method org/lwjgl/util/vector/Vector2f <init> (Lorg/lwjgl/util/vector/ReadableVector2f;)V 
L2430:  astore 22 
L2432:  goto L2482 

        .stack same 
L2435:  aload_0 
L2436:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L2439:  ifnull L2471 
L2442:  aload_0 
L2443:  getfield Field com/fs/starfarer/combat/CombatState cameraMode Lcom/fs/starfarer/combat/CombatState$Oo; 
L2446:  getstatic Field com/fs/starfarer/combat/CombatState$Oo new Lcom/fs/starfarer/combat/CombatState$Oo; 
L2449:  if_acmpeq L2471 
L2452:  new org/lwjgl/util/vector/Vector2f 
L2455:  dup 
L2456:  aload_0 
L2457:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L2460:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L2463:  invokespecial Method org/lwjgl/util/vector/Vector2f <init> (Lorg/lwjgl/util/vector/ReadableVector2f;)V 
L2466:  astore 22 
L2468:  goto L2482 

        .stack same 
L2471:  new org/lwjgl/util/vector/Vector2f 
L2474:  dup 
L2475:  fconst_0 
L2476:  fconst_0 
L2477:  invokespecial Method org/lwjgl/util/vector/Vector2f <init> (FF)V 
L2480:  astore 22 

        .stack append Object org/lwjgl/util/vector/Vector2f 
L2482:  aload 22 
L2484:  dup 
L2485:  getfield Field org/lwjgl/util/vector/Vector2f x F 
L2488:  aload_0 
L2489:  getfield Field com/fs/starfarer/combat/CombatState viewMouseOffset Lcom/fs/starfarer/combat/L; 
L2492:  invokeinterface InterfaceMethod com/fs/starfarer/combat/L 'Ò00000' ()F 1 
L2497:  fadd 
L2498:  putfield Field org/lwjgl/util/vector/Vector2f x F 
L2501:  aload 22 
L2503:  dup 
L2504:  getfield Field org/lwjgl/util/vector/Vector2f y F 
L2507:  aload_0 
L2508:  getfield Field com/fs/starfarer/combat/CombatState viewMouseOffset Lcom/fs/starfarer/combat/L; 
L2511:  invokeinterface InterfaceMethod com/fs/starfarer/combat/L String ()F 1 
L2516:  fadd 
L2517:  putfield Field org/lwjgl/util/vector/Vector2f y F 
L2520:  aload_0 
L2521:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L2524:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getViewport ()Lcom/fs/starfarer/combat/CombatViewport; 
L2527:  invokevirtual Method com/fs/starfarer/combat/CombatViewport isExternalControl ()Z 
L2530:  ifeq L2552 
L2533:  new org/lwjgl/util/vector/Vector2f 
L2536:  dup 
L2537:  aload_0 
L2538:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L2541:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getViewport ()Lcom/fs/starfarer/combat/CombatViewport; 
L2544:  invokevirtual Method com/fs/starfarer/combat/CombatViewport getCenter ()Lorg/lwjgl/util/vector/Vector2f; 
L2547:  invokespecial Method org/lwjgl/util/vector/Vector2f <init> (Lorg/lwjgl/util/vector/ReadableVector2f;)V 
L2550:  astore 22 

        .stack same_extended 
L2552:  invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L2555:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getCombatMap ()Lcom/fs/starfarer/combat/A/B; 
L2558:  ifnull L2576 
L2561:  invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L2564:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getCombatMap ()Lcom/fs/starfarer/combat/A/B; 
L2567:  aload 22 
L2569:  fload 18 
L2571:  fload 19 
L2573:  invokevirtual Method com/fs/starfarer/combat/A/B 'super' (Lorg/lwjgl/util/vector/Vector2f;FF)V 

        .stack same 
L2576:  aload_0 
L2577:  aload 22 
L2579:  getfield Field org/lwjgl/util/vector/Vector2f x F 
L2582:  fload_2 
L2583:  fconst_2 
L2584:  fdiv 
L2585:  fsub 
L2586:  putfield Field com/fs/starfarer/combat/CombatState llxBG F 
L2589:  aload_0 
L2590:  aload 22 
L2592:  getfield Field org/lwjgl/util/vector/Vector2f y F 
L2595:  fload_3 
L2596:  fconst_2 
L2597:  fdiv 
L2598:  fsub 
L2599:  putfield Field com/fs/starfarer/combat/CombatState llyBG F 
L2602:  aload_0 
L2603:  aload 22 
L2605:  getfield Field org/lwjgl/util/vector/Vector2f x F 
L2608:  fload 18 
L2610:  fconst_2 
L2611:  fdiv 
L2612:  fsub 
L2613:  putfield Field com/fs/starfarer/combat/CombatState llx F 
L2616:  aload_0 
L2617:  aload 22 
L2619:  getfield Field org/lwjgl/util/vector/Vector2f y F 
L2622:  fload 19 
L2624:  fconst_2 
L2625:  fdiv 
L2626:  fsub 
L2627:  putfield Field com/fs/starfarer/combat/CombatState lly F 
L2630:  iconst_0 
L2631:  istore 23 
L2633:  aload_0 
L2634:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L2637:  invokevirtual Method com/fs/starfarer/combat/CombatEngine isPaused ()Z 
L2640:  ifeq L2646 
L2643:  iconst_0 
L2644:  istore 23 

        .stack append Integer 
L2646:  iload 23 
L2648:  ifeq L3030 
L2651:  bipush 56 
L2653:  invokestatic Method org/lwjgl/input/Keyboard isKeyDown (I)Z 
L2656:  ifeq L2820 
L2659:  aload_0 
L2660:  getfield Field com/fs/starfarer/combat/CombatState viewMoved Z 
L2663:  ifeq L2820 
L2666:  aload_0 
L2667:  getfield Field com/fs/starfarer/combat/CombatState altWasDown Z 
L2670:  ifne L2820 
L2673:  getstatic Field com/fs/starfarer/prototype/Utils 'ÔO0000' Lorg/lwjgl/util/vector/Vector2f; 
L2676:  aload_0 
L2677:  getfield Field com/fs/starfarer/combat/CombatState viewOverride Lorg/lwjgl/util/vector/Vector2f; 
L2680:  getfield Field org/lwjgl/util/vector/Vector2f x F 
L2683:  aload_0 
L2684:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L2687:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L2690:  getfield Field org/lwjgl/util/vector/Vector2f x F 
L2693:  fsub 
L2694:  fload 18 
L2696:  fconst_2 
L2697:  fdiv 
L2698:  fadd 
L2699:  aload_0 
L2700:  getfield Field com/fs/starfarer/combat/CombatState viewOverride Lorg/lwjgl/util/vector/Vector2f; 
L2703:  getfield Field org/lwjgl/util/vector/Vector2f y F 
L2706:  aload_0 
L2707:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L2710:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L2713:  getfield Field org/lwjgl/util/vector/Vector2f y F 
L2716:  fsub 
L2717:  fload 19 
L2719:  fconst_2 
L2720:  fdiv 
L2721:  fadd 
L2722:  invokevirtual Method org/lwjgl/util/vector/Vector2f set (FF)V 
L2725:  aload_0 
L2726:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L2729:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L2732:  aload_0 
L2733:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L2736:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 
L2739:  aload_0 
L2740:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L2743:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getFacing ()F 
L2746:  aload_0 
L2747:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L2750:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getMaxSpeed ()F 
L2753:  fload 19 
L2755:  fload 5 
L2757:  aload_0 
L2758:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L2761:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getMaxViewOffset ()F 
L2764:  aload_0 
L2765:  invokevirtual Method com/fs/starfarer/combat/CombatState getZoomFactor ()F 
L2768:  fmul 
L2769:  invokestatic Method com/fs/starfarer/prototype/Utils o00000 (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;FFFFF)Lorg/lwjgl/util/vector/Vector2f; 
L2772:  astore 22 
L2774:  aload_0 
L2775:  aload 22 
L2777:  getfield Field org/lwjgl/util/vector/Vector2f x F 
L2780:  fload 18 
L2782:  fconst_2 
L2783:  fdiv 
L2784:  fsub 
L2785:  putfield Field com/fs/starfarer/combat/CombatState llx F 
L2788:  aload_0 
L2789:  aload 22 
L2791:  getfield Field org/lwjgl/util/vector/Vector2f y F 
L2794:  fload 19 
L2796:  fconst_2 
L2797:  fdiv 
L2798:  fsub 
L2799:  putfield Field com/fs/starfarer/combat/CombatState lly F 
L2802:  aload_0 
L2803:  iconst_0 
L2804:  putfield Field com/fs/starfarer/combat/CombatState viewMoved Z 
L2807:  aload_0 
L2808:  iconst_0 
L2809:  putfield Field com/fs/starfarer/combat/CombatState movingView Z 
L2812:  aload_0 
L2813:  iconst_1 
L2814:  putfield Field com/fs/starfarer/combat/CombatState altWasDown Z 
L2817:  goto L2910 

        .stack same_extended 
L2820:  bipush 56 
L2822:  invokestatic Method org/lwjgl/input/Keyboard isKeyDown (I)Z 
L2825:  ifeq L2848 
L2828:  aload_0 
L2829:  getfield Field com/fs/starfarer/combat/CombatState altWasDown Z 
L2832:  ifne L2848 
L2835:  aload_0 
L2836:  iconst_1 
L2837:  putfield Field com/fs/starfarer/combat/CombatState movingView Z 
L2840:  aload_0 
L2841:  iconst_1 
L2842:  putfield Field com/fs/starfarer/combat/CombatState altWasDown Z 
L2845:  goto L2910 

        .stack same 
L2848:  bipush 56 
L2850:  invokestatic Method org/lwjgl/input/Keyboard isKeyDown (I)Z 
L2853:  ifne L2910 
L2856:  aload_0 
L2857:  iconst_0 
L2858:  putfield Field com/fs/starfarer/combat/CombatState altWasDown Z 
L2861:  aload_0 
L2862:  getfield Field com/fs/starfarer/combat/CombatState movingView Z 
L2865:  ifeq L2881 
L2868:  aload_0 
L2869:  iconst_1 
L2870:  putfield Field com/fs/starfarer/combat/CombatState viewMoved Z 
L2873:  aload_0 
L2874:  iconst_0 
L2875:  putfield Field com/fs/starfarer/combat/CombatState movingView Z 
L2878:  goto L2910 

        .stack same 
L2881:  aload_0 
L2882:  getfield Field com/fs/starfarer/combat/CombatState viewMoved Z 
L2885:  ifne L2910 
L2888:  aload_0 
L2889:  getfield Field com/fs/starfarer/combat/CombatState viewOverride Lorg/lwjgl/util/vector/Vector2f; 
L2892:  aload_0 
L2893:  getfield Field com/fs/starfarer/combat/CombatState llx F 
L2896:  putfield Field org/lwjgl/util/vector/Vector2f x F 
L2899:  aload_0 
L2900:  getfield Field com/fs/starfarer/combat/CombatState viewOverride Lorg/lwjgl/util/vector/Vector2f; 
L2903:  aload_0 
L2904:  getfield Field com/fs/starfarer/combat/CombatState lly F 
L2907:  putfield Field org/lwjgl/util/vector/Vector2f y F 

        .stack same 
L2910:  aload_0 
L2911:  getfield Field com/fs/starfarer/combat/CombatState movingView Z 
L2914:  ifne L2924 
L2917:  aload_0 
L2918:  getfield Field com/fs/starfarer/combat/CombatState viewMoved Z 
L2921:  ifeq L3042 

        .stack same 
L2924:  aload_0 
L2925:  getfield Field com/fs/starfarer/combat/CombatState movingView Z 
L2928:  ifeq L2971 
L2931:  aload_0 
L2932:  getfield Field com/fs/starfarer/combat/CombatState viewOverride Lorg/lwjgl/util/vector/Vector2f; 
L2935:  dup 
L2936:  getfield Field org/lwjgl/util/vector/Vector2f x F 
L2939:  invokestatic Method org/lwjgl/input/Mouse getDX ()I 
L2942:  i2f 
L2943:  ldc_w +5.0f 
L2946:  fmul 
L2947:  fadd 
L2948:  putfield Field org/lwjgl/util/vector/Vector2f x F 
L2951:  aload_0 
L2952:  getfield Field com/fs/starfarer/combat/CombatState viewOverride Lorg/lwjgl/util/vector/Vector2f; 
L2955:  dup 
L2956:  getfield Field org/lwjgl/util/vector/Vector2f y F 
L2959:  invokestatic Method org/lwjgl/input/Mouse getDY ()I 
L2962:  i2f 
L2963:  ldc_w +5.0f 
L2966:  fmul 
L2967:  fadd 
L2968:  putfield Field org/lwjgl/util/vector/Vector2f y F 

        .stack same 
L2971:  aload_0 
L2972:  aload_0 
L2973:  getfield Field com/fs/starfarer/combat/CombatState viewOverride Lorg/lwjgl/util/vector/Vector2f; 
L2976:  getfield Field org/lwjgl/util/vector/Vector2f x F 
L2979:  putfield Field com/fs/starfarer/combat/CombatState llx F 
L2982:  aload_0 
L2983:  aload_0 
L2984:  getfield Field com/fs/starfarer/combat/CombatState viewOverride Lorg/lwjgl/util/vector/Vector2f; 
L2987:  getfield Field org/lwjgl/util/vector/Vector2f y F 
L2990:  putfield Field com/fs/starfarer/combat/CombatState lly F 
L2993:  aload_0 
L2994:  aload_0 
L2995:  getfield Field com/fs/starfarer/combat/CombatState llx F 
L2998:  fload 18 
L3000:  fconst_2 
L3001:  fdiv 
L3002:  fadd 
L3003:  fload_2 
L3004:  fconst_2 
L3005:  fdiv 
L3006:  fsub 
L3007:  putfield Field com/fs/starfarer/combat/CombatState llxBG F 
L3010:  aload_0 
L3011:  aload_0 
L3012:  getfield Field com/fs/starfarer/combat/CombatState lly F 
L3015:  fload 19 
L3017:  fconst_2 
L3018:  fdiv 
L3019:  fadd 
L3020:  fload_3 
L3021:  fconst_2 
L3022:  fdiv 
L3023:  fsub 
L3024:  putfield Field com/fs/starfarer/combat/CombatState llyBG F 
L3027:  goto L3042 

        .stack same 
L3030:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'OÓ0000' ()Z 
L3033:  ifeq L3042 
L3036:  bipush 56 
L3038:  invokestatic Method org/lwjgl/input/Keyboard isKeyDown (I)Z 
L3041:  pop 

        .stack same 
L3042:  ldc_w 'CombatState rendering' 
L3045:  invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L3048:  invokestatic Method com/fs/graphics/util/B return ()V 
L3051:  aload_0 
L3052:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L3055:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getViewport ()Lcom/fs/starfarer/combat/CombatViewport; 
L3058:  astore 24 
L3060:  aload 24 
L3062:  invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ViewportAPI isExternalControl ()Z 1 
L3067:  ifne L3089 
L3070:  aload_0 
L3071:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L3074:  aload_0 
L3075:  getfield Field com/fs/starfarer/combat/CombatState llx F 
L3078:  aload_0 
L3079:  getfield Field com/fs/starfarer/combat/CombatState lly F 
L3082:  fload 18 
L3084:  fload 19 
L3086:  invokevirtual Method com/fs/starfarer/combat/CombatEngine setViewport (FFFF)V 

        .stack append Object com/fs/starfarer/api/combat/ViewportAPI 
L3089:  ldc_w 'Rendering starfield' 
L3092:  invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L3095:  aload_0 
L3096:  getfield Field com/fs/starfarer/combat/CombatState llxBG F 
L3099:  fconst_0 
L3100:  fadd 
L3101:  aload_0 
L3102:  getfield Field com/fs/starfarer/combat/CombatState llxBG F 
L3105:  fload_2 
L3106:  fconst_1 
L3107:  fmul 
L3108:  fadd 
L3109:  aload_0 
L3110:  getfield Field com/fs/starfarer/combat/CombatState llyBG F 
L3113:  fconst_0 
L3114:  fadd 
L3115:  aload_0 
L3116:  getfield Field com/fs/starfarer/combat/CombatState llyBG F 
L3119:  fload_3 
L3120:  fconst_1 
L3121:  fmul 
L3122:  fadd 
L3123:  ldc_w +1000.0f 
L3126:  invokestatic Method com/fs/graphics/util/B o00000 (FFFFF)V 
L3129:  aload_0 
L3130:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L3133:  aload_0 
L3134:  getfield Field com/fs/starfarer/combat/CombatState llxBG F 
L3137:  aload_0 
L3138:  getfield Field com/fs/starfarer/combat/CombatState llyBG F 
L3141:  fload_2 
L3142:  fload_3 
L3143:  invokevirtual Method com/fs/starfarer/combat/CombatEngine updateStarfield (FFFF)V 
L3146:  aload_0 
L3147:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L3150:  aload_0 
L3151:  getfield Field com/fs/starfarer/combat/CombatState llxBG F 
L3154:  aload_0 
L3155:  getfield Field com/fs/starfarer/combat/CombatState llyBG F 
L3158:  invokevirtual Method com/fs/starfarer/combat/CombatEngine renderBG (FF)V 
L3161:  invokestatic Method com/fs/graphics/util/B 'Õ00000' ()V 
L3164:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L3167:  ldc_w 'Rendering engine contents' 
L3170:  invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L3173:  aload_0 
L3174:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L3177:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getViewport ()Lcom/fs/starfarer/combat/CombatViewport; 
L3180:  invokevirtual Method com/fs/starfarer/combat/CombatViewport isExternalControl ()Z 
L3183:  ifeq L3239 
L3186:  aload 24 
L3188:  invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ViewportAPI getLLX ()F 1 
L3193:  aload 24 
L3195:  invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ViewportAPI getLLX ()F 1 
L3200:  aload 24 
L3202:  invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ViewportAPI getVisibleWidth ()F 1 
L3207:  fadd 
L3208:  aload 24 
L3210:  invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ViewportAPI getLLY ()F 1 
L3215:  aload 24 
L3217:  invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ViewportAPI getLLY ()F 1 
L3222:  aload 24 
L3224:  invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ViewportAPI getVisibleHeight ()F 1 
L3229:  fadd 
L3230:  ldc_w +1000.0f 
L3233:  invokestatic Method com/fs/graphics/util/B o00000 (FFFFF)V 
L3236:  goto L3271 

        .stack same_extended 
L3239:  aload_0 
L3240:  getfield Field com/fs/starfarer/combat/CombatState llx F 
L3243:  fconst_0 
L3244:  fadd 
L3245:  aload_0 
L3246:  getfield Field com/fs/starfarer/combat/CombatState llx F 
L3249:  fload 18 
L3251:  fadd 
L3252:  aload_0 
L3253:  getfield Field com/fs/starfarer/combat/CombatState lly F 
L3256:  fconst_0 
L3257:  fadd 
L3258:  aload_0 
L3259:  getfield Field com/fs/starfarer/combat/CombatState lly F 
L3262:  fload 19 
L3264:  fadd 
L3265:  ldc_w +1000.0f 
L3268:  invokestatic Method com/fs/graphics/util/B o00000 (FFFFF)V 

        .stack same 
L3271:  aload_0 
L3272:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L3275:  aload_0 
L3276:  getfield Field com/fs/starfarer/combat/CombatState hideHud Z 
L3279:  ifeq L3286 
L3282:  iconst_0 
L3283:  goto L3287 

        .stack stack_1 Object com/fs/starfarer/combat/CombatEngine 
L3286:  iconst_1 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Float Float Object com/fs/graphics/Sprite Float Object com/fs/graphics/util/A Integer Integer Integer Integer Integer Object com/fs/graphics/Sprite Object com/fs/starfarer/api/combat/BattleCreationContext Integer Integer Long Float Float Float Float Object org/lwjgl/util/vector/Vector2f Integer Object com/fs/starfarer/api/combat/ViewportAPI 
            stack Object com/fs/starfarer/combat/CombatEngine Integer 
        .end stack 
L3287:  invokevirtual Method com/fs/starfarer/combat/CombatEngine render (Z)V 
L3290:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'OÓ0000' ()Z 
L3293:  ifeq L3299 
L3296:  invokestatic Method com/fs/starfarer/combat/H 'Ò00000' ()V 

        .stack same 
L3299:  aload_0 
L3300:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L3303:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getCombatMap ()Lcom/fs/starfarer/combat/A/B; 
L3306:  ifnull L3326 
L3309:  aload_0 
L3310:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L3313:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getCombatMap ()Lcom/fs/starfarer/combat/A/B; 
L3316:  aload_0 
L3317:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L3320:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getViewport ()Lcom/fs/starfarer/combat/CombatViewport; 
L3323:  invokevirtual Method com/fs/starfarer/combat/A/B 'Ò00000' (Lcom/fs/starfarer/combat/CombatViewport;)V 

        .stack same 
L3326:  aload_0 
L3327:  getfield Field com/fs/starfarer/combat/CombatState warroom Lcom/fs/starfarer/combat/new/OoOO; 
L3330:  invokevirtual Method com/fs/starfarer/combat/new/OoOO isShowingVideoFeed ()Z 
L3333:  ifne L3374 
L3336:  aload_0 
L3337:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L3340:  ifnull L3374 
L3343:  aload_0 
L3344:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L3347:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isHulk ()Z 
L3350:  ifne L3374 
L3353:  aload_0 
L3354:  getfield Field com/fs/starfarer/combat/CombatState arcRenderer Lcom/fs/starfarer/renderers/super; 
L3357:  invokevirtual Method com/fs/starfarer/renderers/super 'Ô00000' ()V 
L3360:  aload_0 
L3361:  getfield Field com/fs/starfarer/combat/CombatState waypointRenderer Lcom/fs/starfarer/renderers/B; 
L3364:  aload 24 
L3366:  invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ViewportAPI getAlphaMult ()F 1 
L3371:  invokevirtual Method com/fs/starfarer/renderers/B 'Ò00000' (F)V 

        .stack same 
L3374:  invokestatic Method com/fs/graphics/util/B 'Õ00000' ()V 
L3377:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L3380:  aload_0 
L3381:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L3384:  astore 25 
L3386:  aload_0 
L3387:  getfield Field com/fs/starfarer/combat/CombatState entityToFollow Lcom/fs/starfarer/combat/new/OoOO$o; 
L3390:  ifnull L3399 
L3393:  aload_0 
L3394:  getfield Field com/fs/starfarer/combat/CombatState entityToFollow Lcom/fs/starfarer/combat/new/OoOO$o; 
L3397:  astore 25 

        .stack append Object com/fs/starfarer/combat/new/OoOO$o 
L3399:  invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L3402:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getViewport ()Lcom/fs/starfarer/combat/CombatViewport; 
L3405:  invokestatic Method com/fs/starfarer/util/A/C getMouseX ()I 
L3408:  i2f 
L3409:  invokevirtual Method com/fs/starfarer/combat/CombatViewport convertScreenXToWorldX (F)F 
L3412:  fstore 26 
L3414:  invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L3417:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getViewport ()Lcom/fs/starfarer/combat/CombatViewport; 
L3420:  invokestatic Method com/fs/starfarer/util/A/C getMouseY ()I 
L3423:  i2f 
L3424:  invokevirtual Method com/fs/starfarer/combat/CombatViewport convertScreenYToWorldY (F)F 
L3427:  fstore 27 
L3429:  new org/lwjgl/util/vector/Vector2f 
L3432:  dup 
L3433:  fload 26 
L3435:  fload 27 
L3437:  invokespecial Method org/lwjgl/util/vector/Vector2f <init> (FF)V 
L3440:  astore 28 
L3442:  aload 25 
L3444:  iconst_1 
L3445:  aload 28 
L3447:  iconst_3 
L3448:  anewarray com/fs/starfarer/api/combat/CollisionClass 
L3451:  dup 
L3452:  iconst_0 
L3453:  getstatic Field com/fs/starfarer/api/combat/CollisionClass NONE Lcom/fs/starfarer/api/combat/CollisionClass; 
L3456:  aastore 
L3457:  dup 
L3458:  iconst_1 
L3459:  getstatic Field com/fs/starfarer/api/combat/CollisionClass SHIP Lcom/fs/starfarer/api/combat/CollisionClass; 
L3462:  aastore 
L3463:  dup 
L3464:  iconst_2 
L3465:  getstatic Field com/fs/starfarer/api/combat/CollisionClass FIGHTER Lcom/fs/starfarer/api/combat/CollisionClass; 
L3468:  aastore 
L3469:  invokestatic Method com/fs/starfarer/combat/ai/OO0O 'super' (Ljava/lang/Object;ZLorg/lwjgl/util/vector/Vector2f;[Lcom/fs/starfarer/api/combat/CollisionClass;)Lcom/fs/starfarer/combat/E/B; 
L3472:  astore 29 
L3474:  aconst_null 
L3475:  astore 30 
L3477:  aload 29 
L3479:  ifnull L3543 
L3482:  aload 29 
L3484:  instanceof com/fs/starfarer/combat/entities/Ship 
L3487:  ifeq L3543 
L3490:  aload 29 
L3492:  checkcast com/fs/starfarer/combat/entities/Ship 
L3495:  astore 30 
L3497:  aload 28 
L3499:  aload 30 
L3501:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L3504:  invokestatic Method com/fs/starfarer/prototype/Utils 'Ø00000' (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)F 
L3507:  fstore 31 
L3509:  fload 31 
L3511:  aload 30 
L3513:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getCollisionRadius ()F 
L3516:  ldc_w +120.0f 
L3519:  fadd 
L3520:  fcmpl 
L3521:  ifle L3527 
L3524:  aconst_null 
L3525:  astore 30 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Float Float Object com/fs/graphics/Sprite Float Object com/fs/graphics/util/A Integer Integer Integer Integer Integer Object com/fs/graphics/Sprite Object com/fs/starfarer/api/combat/BattleCreationContext Integer Integer Long Float Float Float Float Object org/lwjgl/util/vector/Vector2f Integer Object com/fs/starfarer/api/combat/ViewportAPI Object com/fs/starfarer/combat/new/OoOO$o Float Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/B Object com/fs/starfarer/combat/entities/Ship Float 
            stack 
        .end stack 
L3527:  aload 30 
L3529:  ifnull L3543 
L3532:  aload 30 
L3534:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isTargetable ()Z 
L3537:  ifne L3543 
L3540:  aconst_null 
L3541:  astore 30 

        .stack chop 1 
L3543:  aload 30 
L3545:  ifnull L3636 
L3548:  aload 30 
L3550:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isTargetable ()Z 
L3553:  ifne L3636 
L3556:  ldc +3.4028234663852886e+38f 
L3558:  fstore 31 
L3560:  aload 30 
L3562:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getChildModules ()Ljava/util/List; 
L3565:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L3570:  astore 33 
L3572:  goto L3626 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Float Float Object com/fs/graphics/Sprite Float Object com/fs/graphics/util/A Integer Integer Integer Integer Integer Object com/fs/graphics/Sprite Object com/fs/starfarer/api/combat/BattleCreationContext Integer Integer Long Float Float Float Float Object org/lwjgl/util/vector/Vector2f Integer Object com/fs/starfarer/api/combat/ViewportAPI Object com/fs/starfarer/combat/new/OoOO$o Float Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/B Object com/fs/starfarer/combat/entities/Ship Float Top Object java/util/Iterator 
            stack 
        .end stack 
L3575:  aload 33 
L3577:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L3582:  checkcast com/fs/starfarer/combat/entities/Ship 
L3585:  astore 32 
L3587:  aload 32 
L3589:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isTargetable ()Z 
L3592:  ifne L3598 
L3595:  goto L3626 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Float Float Object com/fs/graphics/Sprite Float Object com/fs/graphics/util/A Integer Integer Integer Integer Integer Object com/fs/graphics/Sprite Object com/fs/starfarer/api/combat/BattleCreationContext Integer Integer Long Float Float Float Float Object org/lwjgl/util/vector/Vector2f Integer Object com/fs/starfarer/api/combat/ViewportAPI Object com/fs/starfarer/combat/new/OoOO$o Float Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/B Object com/fs/starfarer/combat/entities/Ship Float Object com/fs/starfarer/combat/entities/Ship Object java/util/Iterator 
            stack 
        .end stack 
L3598:  aload 28 
L3600:  aload 32 
L3602:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L3605:  invokestatic Method com/fs/starfarer/api/util/Misc getDistance (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)F 
L3608:  fstore 34 
L3610:  fload 34 
L3612:  fload 31 
L3614:  fcmpg 
L3615:  ifge L3626 
L3618:  fload 34 
L3620:  fstore 31 
L3622:  aload 32 
L3624:  astore 30 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Float Float Object com/fs/graphics/Sprite Float Object com/fs/graphics/util/A Integer Integer Integer Integer Integer Object com/fs/graphics/Sprite Object com/fs/starfarer/api/combat/BattleCreationContext Integer Integer Long Float Float Float Float Object org/lwjgl/util/vector/Vector2f Integer Object com/fs/starfarer/api/combat/ViewportAPI Object com/fs/starfarer/combat/new/OoOO$o Float Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/B Object com/fs/starfarer/combat/entities/Ship Float Top Object java/util/Iterator 
            stack 
        .end stack 
L3626:  aload 33 
L3628:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L3633:  ifne L3575 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Float Float Object com/fs/graphics/Sprite Float Object com/fs/graphics/util/A Integer Integer Integer Integer Integer Object com/fs/graphics/Sprite Object com/fs/starfarer/api/combat/BattleCreationContext Integer Integer Long Float Float Float Float Object org/lwjgl/util/vector/Vector2f Integer Object com/fs/starfarer/api/combat/ViewportAPI Object com/fs/starfarer/combat/new/OoOO$o Float Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/B Object com/fs/starfarer/combat/entities/Ship 
            stack 
        .end stack 
L3636:  aload 25 
L3638:  iconst_1 
L3639:  aload 28 
L3641:  invokestatic Method com/fs/starfarer/combat/ai/OO0O 'super' (Ljava/lang/Object;ZLorg/lwjgl/util/vector/Vector2f;)Lcom/fs/starfarer/api/combat/ShipAPI; 
L3644:  checkcast com/fs/starfarer/combat/entities/Ship 
L3647:  astore 31 
L3649:  aload 31 
L3651:  ifnull L3696 
L3654:  aload 28 
L3656:  aload 31 
L3658:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L3661:  invokestatic Method com/fs/starfarer/prototype/Utils 'Ø00000' (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)F 
L3664:  fstore 32 
L3666:  fload 32 
L3668:  aload 31 
L3670:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getCollisionRadius ()F 
L3673:  fcmpl 
L3674:  ifle L3680 
L3677:  aconst_null 
L3678:  astore 31 

        .stack append Object com/fs/starfarer/combat/entities/Ship Float 
L3680:  aload 31 
L3682:  ifnull L3696 
L3685:  aload 31 
L3687:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isTargetable ()Z 
L3690:  ifne L3696 
L3693:  aconst_null 
L3694:  astore 31 

        .stack chop 1 
L3696:  aload 31 
L3698:  ifnull L3789 
L3701:  aload 31 
L3703:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isTargetable ()Z 
L3706:  ifne L3789 
L3709:  ldc +3.4028234663852886e+38f 
L3711:  fstore 32 
L3713:  aload 31 
L3715:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getChildModules ()Ljava/util/List; 
L3718:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L3723:  astore 34 
L3725:  goto L3779 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Float Float Object com/fs/graphics/Sprite Float Object com/fs/graphics/util/A Integer Integer Integer Integer Integer Object com/fs/graphics/Sprite Object com/fs/starfarer/api/combat/BattleCreationContext Integer Integer Long Float Float Float Float Object org/lwjgl/util/vector/Vector2f Integer Object com/fs/starfarer/api/combat/ViewportAPI Object com/fs/starfarer/combat/new/OoOO$o Float Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/B Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Float Top Object java/util/Iterator 
            stack 
        .end stack 
L3728:  aload 34 
L3730:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L3735:  checkcast com/fs/starfarer/combat/entities/Ship 
L3738:  astore 33 
L3740:  aload 33 
L3742:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isTargetable ()Z 
L3745:  ifne L3751 
L3748:  goto L3779 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Float Float Object com/fs/graphics/Sprite Float Object com/fs/graphics/util/A Integer Integer Integer Integer Integer Object com/fs/graphics/Sprite Object com/fs/starfarer/api/combat/BattleCreationContext Integer Integer Long Float Float Float Float Object org/lwjgl/util/vector/Vector2f Integer Object com/fs/starfarer/api/combat/ViewportAPI Object com/fs/starfarer/combat/new/OoOO$o Float Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/B Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Float Object com/fs/starfarer/combat/entities/Ship Object java/util/Iterator 
            stack 
        .end stack 
L3751:  aload 28 
L3753:  aload 33 
L3755:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L3758:  invokestatic Method com/fs/starfarer/api/util/Misc getDistance (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)F 
L3761:  fstore 35 
L3763:  fload 35 
L3765:  fload 32 
L3767:  fcmpg 
L3768:  ifge L3779 
L3771:  fload 35 
L3773:  fstore 32 
L3775:  aload 33 
L3777:  astore 31 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Float Float Object com/fs/graphics/Sprite Float Object com/fs/graphics/util/A Integer Integer Integer Integer Integer Object com/fs/graphics/Sprite Object com/fs/starfarer/api/combat/BattleCreationContext Integer Integer Long Float Float Float Float Object org/lwjgl/util/vector/Vector2f Integer Object com/fs/starfarer/api/combat/ViewportAPI Object com/fs/starfarer/combat/new/OoOO$o Float Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/B Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Float Top Object java/util/Iterator 
            stack 
        .end stack 
L3779:  aload 34 
L3781:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L3786:  ifne L3728 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Float Float Object com/fs/graphics/Sprite Float Object com/fs/graphics/util/A Integer Integer Integer Integer Integer Object com/fs/graphics/Sprite Object com/fs/starfarer/api/combat/BattleCreationContext Integer Integer Long Float Float Float Float Object org/lwjgl/util/vector/Vector2f Integer Object com/fs/starfarer/api/combat/ViewportAPI Object com/fs/starfarer/combat/new/OoOO$o Float Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/B Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship 
            stack 
        .end stack 
L3789:  aconst_null 
L3790:  astore 32 
L3792:  aload_0 
L3793:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L3796:  ifnull L3808 
L3799:  aload_0 
L3800:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L3803:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getShipTarget ()Lcom/fs/starfarer/combat/entities/Ship; 
L3806:  astore 32 

        .stack append Object com/fs/starfarer/combat/entities/Ship 
L3808:  aload_0 
L3809:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L3812:  aload 32 
L3814:  invokevirtual Method com/fs/starfarer/combat/CombatEngine isInPlay (Ljava/lang/Object;)Z 
L3817:  ifne L3828 
L3820:  aload_0 
L3821:  aconst_null 
L3822:  invokevirtual Method com/fs/starfarer/combat/CombatState setTargetShip (Lcom/fs/starfarer/combat/entities/Ship;)V 
L3825:  aconst_null 
L3826:  astore 32 

        .stack same 
L3828:  aload 32 
L3830:  ifnull L3874 
L3833:  aload_0 
L3834:  getfield Field com/fs/starfarer/combat/CombatState showWarroom Z 
L3837:  ifeq L3850 
L3840:  aload_0 
L3841:  getfield Field com/fs/starfarer/combat/CombatState warroom Lcom/fs/starfarer/combat/new/OoOO; 
L3844:  invokevirtual Method com/fs/starfarer/combat/new/OoOO isShowingVideoFeed ()Z 
L3847:  ifne L3874 

        .stack same 
L3850:  invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L3853:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerPOVFog ()Lcom/fs/starfarer/combat/new/T; 
L3856:  aload 32 
L3858:  invokevirtual Method com/fs/starfarer/combat/new/T isVisible (Lcom/fs/starfarer/api/combat/CombatEntityAPI;)Z 
L3861:  ifeq L3874 
L3864:  aload_0 
L3865:  getfield Field com/fs/starfarer/combat/CombatState targetReticleRenderer Lcom/fs/starfarer/renderers/A/C; 
L3868:  aload 32 
L3870:  fconst_1 
L3871:  invokevirtual Method com/fs/starfarer/renderers/A/C 'super' (Lcom/fs/starfarer/combat/entities/Ship;F)V 

        .stack same 
L3874:  aload_0 
L3875:  invokevirtual Method com/fs/starfarer/combat/CombatState getZoomFactor ()F 
L3878:  fstore 33 
L3880:  aload 30 
L3882:  ifnull L4060 
L3885:  aload_0 
L3886:  getfield Field com/fs/starfarer/combat/CombatState dialogType Lcom/fs/starfarer/combat/CombatState$o; 
L3889:  ifnonnull L4060 
L3892:  aload_0 
L3893:  getfield Field com/fs/starfarer/combat/CombatState showingCodex Z 
L3896:  ifne L4060 
L3899:  aload 28 
L3901:  aload 30 
L3903:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L3906:  invokestatic Method com/fs/starfarer/prototype/Utils 'Ø00000' (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)F 
L3909:  fstore 34 
L3911:  fload 34 
L3913:  fload 33 
L3915:  fdiv 
L3916:  fstore 34 
L3918:  fload 34 
L3920:  ldc_w +50.0f 
L3923:  aload 30 
L3925:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getCollisionRadius ()F 
L3928:  fadd 
L3929:  fcmpg 
L3930:  ifge L4051 
L3933:  aload 30 
L3935:  aload 32 
L3937:  if_acmpne L3947 
L3940:  aload_0 
L3941:  getfield Field com/fs/starfarer/combat/CombatState showWarroom Z 
L3944:  ifeq L3981 

        .stack append Float Float 
L3947:  aload 30 
L3949:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isTargetable ()Z 
L3952:  ifeq L3981 
L3955:  invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L3958:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerPOVFog ()Lcom/fs/starfarer/combat/new/T; 
L3961:  aload 30 
L3963:  invokevirtual Method com/fs/starfarer/combat/new/T isVisible (Lcom/fs/starfarer/api/combat/CombatEntityAPI;)Z 
L3966:  ifeq L3981 
L3969:  aload_0 
L3970:  getfield Field com/fs/starfarer/combat/CombatState targetReticleRenderer Lcom/fs/starfarer/renderers/A/C; 
L3973:  aload 30 
L3975:  ldc_w +0.75f 
L3978:  invokevirtual Method com/fs/starfarer/renderers/A/C 'super' (Lcom/fs/starfarer/combat/entities/Ship;F)V 

        .stack same 
L3981:  aload_0 
L3982:  getfield Field com/fs/starfarer/combat/CombatState showWarroom Z 
L3985:  ifeq L3998 
L3988:  aload_0 
L3989:  getfield Field com/fs/starfarer/combat/CombatState warroom Lcom/fs/starfarer/combat/new/OoOO; 
L3992:  invokevirtual Method com/fs/starfarer/combat/new/OoOO isShowingVideoFeed ()Z 
L3995:  ifeq L4042 

        .stack same 
L3998:  aload 30 
L4000:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getOwner ()I 
L4003:  aload_0 
L4004:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L4007:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerId ()I 
L4010:  if_icmpne L4033 
L4013:  fload 34 
L4015:  aload 30 
L4017:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getCollisionRadius ()F 
L4020:  fcmpg 
L4021:  ifge L4033 
L4024:  getstatic Field com/fs/starfarer/return/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$o new Lcom/fs/starfarer/return/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$o; 
L4027:  invokestatic Method com/fs/starfarer/return/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO o00000 (Lcom/fs/starfarer/return/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$o;)V 
L4030:  goto L4066 

        .stack same 
L4033:  getstatic Field com/fs/starfarer/return/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$o 'Ó00000' Lcom/fs/starfarer/return/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$o; 
L4036:  invokestatic Method com/fs/starfarer/return/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO o00000 (Lcom/fs/starfarer/return/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$o;)V 
L4039:  goto L4066 

        .stack same 
L4042:  getstatic Field com/fs/starfarer/return/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$o 'Ó00000' Lcom/fs/starfarer/return/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$o; 
L4045:  invokestatic Method com/fs/starfarer/return/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO o00000 (Lcom/fs/starfarer/return/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$o;)V 
L4048:  goto L4066 

        .stack same 
L4051:  getstatic Field com/fs/starfarer/return/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$o 'Ó00000' Lcom/fs/starfarer/return/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$o; 
L4054:  invokestatic Method com/fs/starfarer/return/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO o00000 (Lcom/fs/starfarer/return/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$o;)V 
L4057:  goto L4066 

        .stack chop 1 
L4060:  getstatic Field com/fs/starfarer/return/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$o 'Ó00000' Lcom/fs/starfarer/return/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$o; 
L4063:  invokestatic Method com/fs/starfarer/return/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO o00000 (Lcom/fs/starfarer/return/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$o;)V 

        .stack same 
L4066:  aload_0 
L4067:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L4070:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getObjects ()Lcom/fs/util/container/repo/ObjectRepository; 
L4073:  ldc_w Class com/fs/starfarer/combat/entities/Ship 
L4076:  invokevirtual Method com/fs/util/container/repo/ObjectRepository getList (Ljava/lang/Class;)Ljava/util/List; 
L4079:  astore 34 
L4081:  aload 34 
L4083:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L4088:  astore 36 
L4090:  goto L4212 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Float Float Object com/fs/graphics/Sprite Float Object com/fs/graphics/util/A Integer Integer Integer Integer Integer Object com/fs/graphics/Sprite Object com/fs/starfarer/api/combat/BattleCreationContext Integer Integer Long Float Float Float Float Object org/lwjgl/util/vector/Vector2f Integer Object com/fs/starfarer/api/combat/ViewportAPI Object com/fs/starfarer/combat/new/OoOO$o Float Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/B Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Float Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L4093:  aload 36 
L4095:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L4100:  checkcast com/fs/starfarer/combat/entities/Ship 
L4103:  astore 35 
L4105:  aload 35 
L4107:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isFighter ()Z 
L4110:  ifeq L4116 
L4113:  goto L4212 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Float Float Object com/fs/graphics/Sprite Float Object com/fs/graphics/util/A Integer Integer Integer Integer Integer Object com/fs/graphics/Sprite Object com/fs/starfarer/api/combat/BattleCreationContext Integer Integer Long Float Float Float Float Object org/lwjgl/util/vector/Vector2f Integer Object com/fs/starfarer/api/combat/ViewportAPI Object com/fs/starfarer/combat/new/OoOO$o Float Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/B Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Float Object java/util/List Object com/fs/starfarer/combat/entities/Ship Object java/util/Iterator 
            stack 
        .end stack 
L4116:  aload 35 
L4118:  aload 32 
L4120:  if_acmpne L4126 
L4123:  goto L4212 

        .stack same 
L4126:  aload 35 
L4128:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isStation ()Z 
L4131:  ifne L4212 
L4134:  aload 35 
L4136:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isStationModule ()Z 
L4139:  ifeq L4145 
L4142:  goto L4212 

        .stack same 
L4145:  aload 35 
L4147:  aload_0 
L4148:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L4151:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L4154:  if_acmpeq L4200 
L4157:  aload 35 
L4159:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getOwner ()I 
L4162:  aload_0 
L4163:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L4166:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerId ()I 
L4169:  if_icmpne L4212 
L4172:  aload_0 
L4173:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L4176:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getViewport ()Lcom/fs/starfarer/combat/CombatViewport; 
L4179:  aload 35 
L4181:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L4184:  aload 35 
L4186:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getCollisionRadius ()F 
L4189:  ldc_w +1.25f 
L4192:  fmul 
L4193:  fneg 
L4194:  invokevirtual Method com/fs/starfarer/combat/CombatViewport isNearViewport (Lorg/lwjgl/util/vector/Vector2f;F)Z 
L4197:  ifeq L4212 

        .stack same 
L4200:  aload_0 
L4201:  getfield Field com/fs/starfarer/combat/CombatState targetReticleRenderer Lcom/fs/starfarer/renderers/A/C; 
L4204:  aload 35 
L4206:  ldc_w +0.75f 
L4209:  invokevirtual Method com/fs/starfarer/renderers/A/C 'super' (Lcom/fs/starfarer/combat/entities/Ship;F)V 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Float Float Object com/fs/graphics/Sprite Float Object com/fs/graphics/util/A Integer Integer Integer Integer Integer Object com/fs/graphics/Sprite Object com/fs/starfarer/api/combat/BattleCreationContext Integer Integer Long Float Float Float Float Object org/lwjgl/util/vector/Vector2f Integer Object com/fs/starfarer/api/combat/ViewportAPI Object com/fs/starfarer/combat/new/OoOO$o Float Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/B Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Float Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L4212:  aload 36 
L4214:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L4219:  ifne L4093 
L4222:  ldc_w 'Rendering UI widgets etc' 
L4225:  invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L4228:  fload_2 
L4229:  fload_3 
L4230:  ldc_w +1000.0f 
L4233:  invokestatic Method com/fs/graphics/util/B o00000 (FFF)V 
L4236:  aload_0 
L4237:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L4240:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getCombatMap ()Lcom/fs/starfarer/combat/A/B; 
L4243:  ifnull L4263 
L4246:  aload_0 
L4247:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L4250:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getCombatMap ()Lcom/fs/starfarer/combat/A/B; 
L4253:  aload_0 
L4254:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L4257:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getViewport ()Lcom/fs/starfarer/combat/CombatViewport; 
L4260:  invokevirtual Method com/fs/starfarer/combat/A/B 'super' (Lcom/fs/starfarer/combat/CombatViewport;)V 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Float Float Object com/fs/graphics/Sprite Float Object com/fs/graphics/util/A Integer Integer Integer Integer Integer Object com/fs/graphics/Sprite Object com/fs/starfarer/api/combat/BattleCreationContext Integer Integer Long Float Float Float Float Object org/lwjgl/util/vector/Vector2f Integer Object com/fs/starfarer/api/combat/ViewportAPI Object com/fs/starfarer/combat/new/OoOO$o Float Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/B Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Float Object java/util/List 
            stack 
        .end stack 
L4263:  aload_0 
L4264:  getfield Field com/fs/starfarer/combat/CombatState dialogType Lcom/fs/starfarer/combat/CombatState$o; 
L4267:  ifnonnull L4277 
L4270:  aload_0 
L4271:  invokevirtual Method com/fs/starfarer/combat/CombatState isShowingCommandUI ()Z 
L4274:  ifeq L4284 

        .stack same 
L4277:  aload_0 
L4278:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L4281:  invokevirtual Method com/fs/starfarer/combat/CombatEngine renderAboveWidgetsInUICoords ()V 

        .stack same 
L4284:  aload_0 
L4285:  getfield Field com/fs/starfarer/combat/CombatState showWarroom Z 
L4288:  ifne L4301 
L4291:  aload_0 
L4292:  getfield Field com/fs/starfarer/combat/CombatState warroom Lcom/fs/starfarer/combat/new/OoOO; 
L4295:  invokevirtual Method com/fs/starfarer/combat/new/OoOO isFadingOut ()Z 
L4298:  ifeq L4317 

        .stack same 
L4301:  ldc_w 'Rendering warroom (below)' 
L4304:  invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L4307:  aload_0 
L4308:  getfield Field com/fs/starfarer/combat/CombatState warroom Lcom/fs/starfarer/combat/new/OoOO; 
L4311:  invokevirtual Method com/fs/starfarer/combat/new/OoOO renderBelowCombatWidgets ()V 
L4314:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 

        .stack same 
L4317:  aload_0 
L4318:  getfield Field com/fs/starfarer/combat/CombatState hideHud Z 
L4321:  ifeq L4331 
L4324:  aload_0 
L4325:  getfield Field com/fs/starfarer/combat/CombatState dialogType Lcom/fs/starfarer/combat/CombatState$o; 
L4328:  ifnull L4682 

        .stack same 
L4331:  ldc_w 'Messages' 
L4334:  invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L4337:  aload_0 
L4338:  getfield Field com/fs/starfarer/combat/CombatState messageWidget Lcom/fs/starfarer/class/C; 
L4341:  ldc_w +20.0f 
L4344:  fload_3 
L4345:  ldc_w +20.0f 
L4348:  fsub 
L4349:  fconst_1 
L4350:  invokevirtual Method com/fs/starfarer/class/C class (FFF)V 
L4353:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L4356:  aload_0 
L4357:  getfield Field com/fs/starfarer/combat/CombatState showWarroom Z 
L4360:  ifne L4373 
L4363:  aload_0 
L4364:  getfield Field com/fs/starfarer/combat/CombatState warroom Lcom/fs/starfarer/combat/new/OoOO; 
L4367:  invokevirtual Method com/fs/starfarer/combat/new/OoOO isFadingOut ()Z 
L4370:  ifeq L4389 

        .stack same 
L4373:  ldc_w 'Rendering warroom (above)' 
L4376:  invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L4379:  aload_0 
L4380:  getfield Field com/fs/starfarer/combat/CombatState warroom Lcom/fs/starfarer/combat/new/OoOO; 
L4383:  invokevirtual Method com/fs/starfarer/combat/new/OoOO renderAboveCombatWidgets ()V 
L4386:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 

        .stack same 
L4389:  aload_0 
L4390:  getfield Field com/fs/starfarer/combat/CombatState showWarroom Z 
L4393:  ifne L4407 
L4396:  aload_0 
L4397:  getfield Field com/fs/starfarer/combat/CombatState warroom Lcom/fs/starfarer/combat/new/OoOO; 
L4400:  invokevirtual Method com/fs/starfarer/combat/new/OoOO getObjectiveWidget ()Lcom/fs/starfarer/ui/impl/O; 
L4403:  fconst_1 
L4404:  invokevirtual Method com/fs/starfarer/ui/impl/O renderJustFP (F)V 

        .stack same 
L4407:  ldc_w 'FPS & Version' 
L4410:  invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L4413:  ldc_w 'renderVersionAndIdle' 
L4416:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings class (Ljava/lang/String;)Z 
L4419:  ifeq L4446 
L4422:  aload 6 
L4424:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'while.new' ()F 
L4427:  fconst_2 
L4428:  fdiv 
L4429:  aload 6 
L4431:  invokevirtual Method com/fs/graphics/util/A 'Ò00000' ()F 
L4434:  fconst_2 
L4435:  fdiv 
L4436:  fsub 
L4437:  ldc_w +20.0f 
L4440:  invokevirtual Method com/fs/graphics/util/A 'super' (FF)V 
L4443:  invokestatic Method com/fs/starfarer/Version render ()V 

        .stack same 
L4446:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L4449:  aload_0 
L4450:  getfield Field com/fs/starfarer/combat/CombatState targetReticleRenderer Lcom/fs/starfarer/renderers/A/C; 
L4453:  invokevirtual Method com/fs/starfarer/renderers/A/C 'super' ()Lcom/fs/starfarer/renderers/A/null; 
L4456:  astore 35 
L4458:  aload 35 
L4460:  ifnull L4527 
L4463:  aload 35 
L4465:  invokevirtual Method com/fs/starfarer/renderers/A/null 'ô00000' ()Lorg/lwjgl/util/vector/Vector2f; 
L4468:  ifnull L4527 
L4471:  aload 35 
L4473:  invokevirtual Method com/fs/starfarer/renderers/A/null 'ô00000' ()Lorg/lwjgl/util/vector/Vector2f; 
L4476:  invokevirtual Method org/lwjgl/util/vector/Vector2f length ()F 
L4479:  fstore 36 
L4481:  fload 36 
L4483:  ldc_w +600.0f 
L4486:  fcmpg 
L4487:  ifge L4516 
L4490:  aload_0 
L4491:  getfield Field com/fs/starfarer/combat/CombatState shipInfo Lcom/fs/starfarer/class/new/return; 
L4494:  ldc_w +0.25f 
L4497:  fload 36 
L4499:  ldc_w +200.0f 
L4502:  fsub 
L4503:  ldc_w +400.0f 
L4506:  fdiv 
L4507:  invokestatic Method java/lang/Math max (FF)F 
L4510:  invokevirtual Method com/fs/starfarer/class/new/return setBrightness (F)V 
L4513:  goto L4535 

        .stack append Object com/fs/starfarer/renderers/A/null Float 
L4516:  aload_0 
L4517:  getfield Field com/fs/starfarer/combat/CombatState shipInfo Lcom/fs/starfarer/class/new/return; 
L4520:  fconst_1 
L4521:  invokevirtual Method com/fs/starfarer/class/new/return setBrightness (F)V 
L4524:  goto L4535 

        .stack chop 1 
L4527:  aload_0 
L4528:  getfield Field com/fs/starfarer/combat/CombatState shipInfo Lcom/fs/starfarer/class/new/return; 
L4531:  fconst_1 
L4532:  invokevirtual Method com/fs/starfarer/class/new/return setBrightness (F)V 

        .stack same 
L4535:  ldc_w 'Widget panel' 
L4538:  invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L4541:  aload_0 
L4542:  getfield Field com/fs/starfarer/combat/CombatState widgetPanel Lcom/fs/starfarer/ui/interfacenew; 
L4545:  fconst_1 
L4546:  invokevirtual Method com/fs/starfarer/ui/interfacenew render (F)V 
L4549:  aload_0 
L4550:  getfield Field com/fs/starfarer/combat/CombatState codexOverlay Lcom/fs/starfarer/ui/interfacenew; 
L4553:  fconst_1 
L4554:  invokevirtual Method com/fs/starfarer/ui/interfacenew render (F)V 
L4557:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L4560:  aload_0 
L4561:  getfield Field com/fs/starfarer/combat/CombatState dialogType Lcom/fs/starfarer/combat/CombatState$o; 
L4564:  ifnonnull L4667 
L4567:  aload_0 
L4568:  getfield Field com/fs/starfarer/combat/CombatState showingCodex Z 
L4571:  ifne L4667 
L4574:  aload_0 
L4575:  getfield Field com/fs/starfarer/combat/CombatState showWarroom Z 
L4578:  ifeq L4591 
L4581:  aload_0 
L4582:  getfield Field com/fs/starfarer/combat/CombatState warroom Lcom/fs/starfarer/combat/new/OoOO; 
L4585:  invokevirtual Method com/fs/starfarer/combat/new/OoOO isShowingVideoFeed ()Z 
L4588:  ifeq L4667 

        .stack same 
L4591:  ldc_w 'Target reticles' 
L4594:  invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L4597:  aload 35 
L4599:  ifnull L4653 
L4602:  aload_0 
L4603:  getfield Field com/fs/starfarer/combat/CombatState ribbon Lcom/fs/starfarer/class/C/C; 
L4606:  aload 35 
L4608:  invokevirtual Method com/fs/starfarer/renderers/A/null int ()Lcom/fs/starfarer/combat/entities/Ship; 
L4611:  invokevirtual Method com/fs/starfarer/class/C/C getIconFor (Ljava/lang/Object;)Lcom/fs/starfarer/class/C/oOoO; 
L4614:  astore 36 
L4616:  aload 36 
L4618:  ifnull L4639 
L4621:  aload_0 
L4622:  getfield Field com/fs/starfarer/combat/CombatState targetReticleRenderer Lcom/fs/starfarer/renderers/A/C; 
L4625:  fload 33 
L4627:  fconst_1 
L4628:  aload 36 
L4630:  invokevirtual Method com/fs/starfarer/class/C/oOoO o00000 ()Lorg/lwjgl/util/vector/Vector2f; 
L4633:  invokevirtual Method com/fs/starfarer/renderers/A/C 'super' (FFLorg/lwjgl/util/vector/Vector2f;)V 
L4636:  goto L4664 

        .stack append Object com/fs/starfarer/class/C/oOoO 
L4639:  aload_0 
L4640:  getfield Field com/fs/starfarer/combat/CombatState targetReticleRenderer Lcom/fs/starfarer/renderers/A/C; 
L4643:  fload 33 
L4645:  fconst_1 
L4646:  aconst_null 
L4647:  invokevirtual Method com/fs/starfarer/renderers/A/C 'super' (FFLorg/lwjgl/util/vector/Vector2f;)V 
L4650:  goto L4664 

        .stack chop 1 
L4653:  aload_0 
L4654:  getfield Field com/fs/starfarer/combat/CombatState targetReticleRenderer Lcom/fs/starfarer/renderers/A/C; 
L4657:  fload 33 
L4659:  fconst_1 
L4660:  aconst_null 
L4661:  invokevirtual Method com/fs/starfarer/renderers/A/C 'super' (FFLorg/lwjgl/util/vector/Vector2f;)V 

        .stack same 
L4664:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 

        .stack same 
L4667:  aload_0 
L4668:  getfield Field com/fs/starfarer/combat/CombatState tutorialOverlay Lcom/fs/starfarer/tutorial/H; 
L4671:  ifnull L4682 
L4674:  aload_0 
L4675:  getfield Field com/fs/starfarer/combat/CombatState tutorialOverlay Lcom/fs/starfarer/tutorial/H; 
L4678:  fconst_1 
L4679:  invokevirtual Method com/fs/starfarer/tutorial/H render (F)V 

        .stack chop 1 
L4682:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L4685:  aload_0 
L4686:  getfield Field com/fs/starfarer/combat/CombatState dialogType Lcom/fs/starfarer/combat/CombatState$o; 
L4689:  ifnonnull L4713 
L4692:  aload_0 
L4693:  invokevirtual Method com/fs/starfarer/combat/CombatState isShowingCommandUI ()Z 
L4696:  ifne L4713 
L4699:  aload_0 
L4700:  getfield Field com/fs/starfarer/combat/CombatState showingCodex Z 
L4703:  ifne L4713 
L4706:  aload_0 
L4707:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L4710:  invokevirtual Method com/fs/starfarer/combat/CombatEngine renderAboveWidgetsInUICoords ()V 

        .stack same 
L4713:  invokestatic Method com/fs/graphics/util/B 'Õ00000' ()V 
L4716:  aload_0 
L4717:  getfield Field com/fs/starfarer/combat/CombatState llx F 
L4720:  fconst_0 
L4721:  fadd 
L4722:  aload_0 
L4723:  getfield Field com/fs/starfarer/combat/CombatState llx F 
L4726:  fload 18 
L4728:  fadd 
L4729:  aload_0 
L4730:  getfield Field com/fs/starfarer/combat/CombatState lly F 
L4733:  fconst_0 
L4734:  fadd 
L4735:  aload_0 
L4736:  getfield Field com/fs/starfarer/combat/CombatState lly F 
L4739:  fload 19 
L4741:  fadd 
L4742:  ldc_w +1000.0f 
L4745:  invokestatic Method com/fs/graphics/util/B o00000 (FFFFF)V 
L4748:  aload_0 
L4749:  getfield Field com/fs/starfarer/combat/CombatState showingCodex Z 
L4752:  ifne L4762 
L4755:  aload_0 
L4756:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L4759:  invokevirtual Method com/fs/starfarer/combat/CombatEngine renderAboveWidgetsInEngineCoords ()V 

        .stack same 
L4762:  invokestatic Method com/fs/graphics/util/B 'Õ00000' ()V 
L4765:  fconst_1 
L4766:  aload_0 
L4767:  getfield Field com/fs/starfarer/combat/CombatState fader Lcom/fs/graphics/util/Fader; 
L4770:  invokevirtual Method com/fs/graphics/util/Fader getBrightness ()F 
L4773:  fsub 
L4774:  fstore 35 
L4776:  fload 35 
L4778:  fconst_0 
L4779:  fcmpl 
L4780:  ifle L4802 
L4783:  fload_2 
L4784:  fload_3 
L4785:  ldc_w +1000.0f 
L4788:  invokestatic Method com/fs/graphics/util/B o00000 (FFF)V 
L4791:  aload_0 
L4792:  fload_2 
L4793:  fload_3 
L4794:  fload 35 
L4796:  invokevirtual Method com/fs/starfarer/combat/CombatState dimScreen (FFF)V 
L4799:  invokestatic Method com/fs/graphics/util/B 'Õ00000' ()V 

        .stack append Float 
L4802:  ldc_w 'useSoftwareMouseCursor' 
L4805:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings class (Ljava/lang/String;)Z 
L4808:  ifeq L4825 
L4811:  fload_2 
L4812:  fload_3 
L4813:  ldc_w +1000.0f 
L4816:  invokestatic Method com/fs/graphics/util/B o00000 (FFF)V 
L4819:  invokestatic Method com/fs/starfarer/return/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 'Ô00000' ()V 
L4822:  invokestatic Method com/fs/graphics/util/B 'Õ00000' ()V 

        .stack same 
L4825:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L4828:  ldc_w 'Generating events' 
L4831:  invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L4834:  invokestatic Method com/fs/starfarer/util/A/A Object ()Lcom/fs/starfarer/util/A/new; 
L4837:  astore 36 
L4839:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L4842:  aload 36 
L4844:  invokevirtual Method com/fs/starfarer/util/A/new iterator ()Ljava/util/Iterator; 
L4847:  astore 38 
L4849:  goto L4891 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Float Float Object com/fs/graphics/Sprite Float Object com/fs/graphics/util/A Integer Integer Integer Integer Integer Object com/fs/graphics/Sprite Object com/fs/starfarer/api/combat/BattleCreationContext Integer Integer Long Float Float Float Float Object org/lwjgl/util/vector/Vector2f Integer Object com/fs/starfarer/api/combat/ViewportAPI Object com/fs/starfarer/combat/new/OoOO$o Float Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/B Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Float Object java/util/List Float Object com/fs/starfarer/util/A/new Top Object java/util/Iterator 
            stack 
        .end stack 
L4852:  aload 38 
L4854:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L4859:  checkcast com/fs/starfarer/util/A/C 
L4862:  astore 37 
L4864:  aload 37 
L4866:  getstatic Field [c1459] 'Ô00000' [u1019] 
L4869:  getstatic Field [c1465] 'Òõ0000' [u1030] 
L4872:  invokestatic Method [c1471] o00000 [u1039] 
L4875:  ifeq L4891 
L4878:  aload_0 
L4879:  iconst_1 
L4880:  putfield Field com/fs/starfarer/combat/CombatState takeSS Z 
L4883:  aload 37 
L4885:  invokevirtual Method com/fs/starfarer/util/A/C consume ()V 
L4888:  goto L4901 

        .stack same 
L4891:  aload 38 
L4893:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L4898:  ifne L4852 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Float Float Object com/fs/graphics/Sprite Float Object com/fs/graphics/util/A Integer Integer Integer Integer Integer Object com/fs/graphics/Sprite Object com/fs/starfarer/api/combat/BattleCreationContext Integer Integer Long Float Float Float Float Object org/lwjgl/util/vector/Vector2f Integer Object com/fs/starfarer/api/combat/ViewportAPI Object com/fs/starfarer/combat/new/OoOO$o Float Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/B Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Float Object java/util/List Float Object com/fs/starfarer/util/A/new 
            stack 
        .end stack 
L4901:  aload_0 
L4902:  getfield Field com/fs/starfarer/combat/CombatState fader Lcom/fs/graphics/util/Fader; 
L4905:  invokevirtual Method com/fs/graphics/util/Fader isFadingOut ()Z 
L4908:  ifeq L4948 
L4911:  aload 36 
L4913:  invokevirtual Method com/fs/starfarer/util/A/new iterator ()Ljava/util/Iterator; 
L4916:  astore 38 
L4918:  goto L4938 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Float Float Object com/fs/graphics/Sprite Float Object com/fs/graphics/util/A Integer Integer Integer Integer Integer Object com/fs/graphics/Sprite Object com/fs/starfarer/api/combat/BattleCreationContext Integer Integer Long Float Float Float Float Object org/lwjgl/util/vector/Vector2f Integer Object com/fs/starfarer/api/combat/ViewportAPI Object com/fs/starfarer/combat/new/OoOO$o Float Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/B Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Float Object java/util/List Float Object com/fs/starfarer/util/A/new Top Object java/util/Iterator 
            stack 
        .end stack 
L4921:  aload 38 
L4923:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L4928:  checkcast com/fs/starfarer/util/A/C 
L4931:  astore 37 
L4933:  aload 37 
L4935:  invokevirtual Method com/fs/starfarer/util/A/C consume ()V 

        .stack same 
L4938:  aload 38 
L4940:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L4945:  ifne L4921 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Float Float Object com/fs/graphics/Sprite Float Object com/fs/graphics/util/A Integer Integer Integer Integer Integer Object com/fs/graphics/Sprite Object com/fs/starfarer/api/combat/BattleCreationContext Integer Integer Long Float Float Float Float Object org/lwjgl/util/vector/Vector2f Integer Object com/fs/starfarer/api/combat/ViewportAPI Object com/fs/starfarer/combat/new/OoOO$o Float Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/B Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Float Object java/util/List Float Object com/fs/starfarer/util/A/new 
            stack 
        .end stack 
L4948:  aload 36 
L4950:  invokevirtual Method com/fs/starfarer/util/A/new 'super' ()V 
L4953:  aload_0 
L4954:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L4957:  ifnull L5062 
L4960:  aload_0 
L4961:  getfield Field com/fs/starfarer/combat/CombatState arcRenderer Lcom/fs/starfarer/renderers/super; 
L4964:  ifnull L5062 
L4967:  aload_0 
L4968:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L4971:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getSelectedGroup ()Lcom/fs/starfarer/combat/systems/WeaponGroup; 
L4974:  astore 37 
L4976:  iconst_m1 
L4977:  istore 38 
L4979:  aload 37 
L4981:  ifnull L5062 
L4984:  aload_0 
L4985:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L4988:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getGroups ()Ljava/util/List; 
L4991:  aload 37 
L4993:  invokeinterface InterfaceMethod java/util/List indexOf (Ljava/lang/Object;)I 2 
L4998:  istore 38 
L5000:  aload_0 
L5001:  getfield Field com/fs/starfarer/combat/CombatState arcRenderer Lcom/fs/starfarer/renderers/super; 
L5004:  invokevirtual Method com/fs/starfarer/renderers/super return ()Lcom/fs/starfarer/combat/systems/WeaponGroup; 
L5007:  astore 39 
L5009:  aload 39 
L5011:  ifnonnull L5023 
L5014:  aload_0 
L5015:  getfield Field com/fs/starfarer/combat/CombatState arcRenderer Lcom/fs/starfarer/renderers/super; 
L5018:  invokevirtual Method com/fs/starfarer/renderers/super 'Ò00000' ()Lcom/fs/starfarer/combat/systems/WeaponGroup; 
L5021:  astore 39 

        .stack append Object com/fs/starfarer/combat/systems/WeaponGroup Integer Object com/fs/starfarer/combat/systems/WeaponGroup 
L5023:  aload_0 
L5024:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L5027:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getGroups ()Ljava/util/List; 
L5030:  aload 39 
L5032:  invokeinterface InterfaceMethod java/util/List indexOf (Ljava/lang/Object;)I 2 
L5037:  istore 40 
L5039:  iload 38 
L5041:  iflt L5062 
L5044:  iload 40 
L5046:  iflt L5062 
L5049:  iload 38 
L5051:  iload 40 
L5053:  if_icmpeq L5062 
L5056:  aload_0 
L5057:  iload 38 
L5059:  invokevirtual Method com/fs/starfarer/combat/CombatState renderArc (I)V 

        .stack chop 3 
L5062:  aload 36 
L5064:  invokestatic Method com/fs/starfarer/ui/W o00000 (Lcom/fs/starfarer/util/A/new;)V 
L5067:  aload_0 
L5068:  getfield Field com/fs/starfarer/combat/CombatState tutorialOverlay Lcom/fs/starfarer/tutorial/H; 
L5071:  ifnull L5083 
L5074:  aload_0 
L5075:  getfield Field com/fs/starfarer/combat/CombatState tutorialOverlay Lcom/fs/starfarer/tutorial/H; 
L5078:  aload 36 
L5080:  invokevirtual Method com/fs/starfarer/tutorial/H processInput (Lcom/fs/starfarer/util/A/new;)V 

        .stack same 
L5083:  fload 5 
L5085:  fconst_0 
L5086:  fcmpl 
L5087:  ifeq L5724 
L5090:  fload 5 
L5092:  getstatic Field com/fs/starfarer/combat/CombatEngine MAX_STEP F 
L5095:  fcmpl 
L5096:  ifle L5104 
L5099:  getstatic Field com/fs/starfarer/combat/CombatEngine MAX_STEP F 
L5102:  fstore 5 

        .stack same 
L5104:  aload_0 
L5105:  getfield Field com/fs/starfarer/combat/CombatState arcRenderer Lcom/fs/starfarer/renderers/super; 
L5108:  ifnull L5120 
L5111:  aload_0 
L5112:  getfield Field com/fs/starfarer/combat/CombatState arcRenderer Lcom/fs/starfarer/renderers/super; 
L5115:  fload 5 
L5117:  invokevirtual Method com/fs/starfarer/renderers/super o00000 (F)V 

        .stack same 
L5120:  aload_0 
L5121:  getfield Field com/fs/starfarer/combat/CombatState waypointRenderer Lcom/fs/starfarer/renderers/B; 
L5124:  ifnull L5136 
L5127:  aload_0 
L5128:  getfield Field com/fs/starfarer/combat/CombatState waypointRenderer Lcom/fs/starfarer/renderers/B; 
L5131:  fload 5 
L5133:  invokevirtual Method com/fs/starfarer/renderers/B o00000 (F)V 

        .stack same 
L5136:  aload_0 
L5137:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L5140:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getCombatMap ()Lcom/fs/starfarer/combat/A/B; 
L5143:  ifnull L5160 
L5146:  aload_0 
L5147:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L5150:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getCombatMap ()Lcom/fs/starfarer/combat/A/B; 
L5153:  fload 5 
L5155:  aload 36 
L5157:  invokevirtual Method com/fs/starfarer/combat/A/B 'Ò00000' (FLcom/fs/starfarer/util/A/new;)V 

        .stack same 
L5160:  aload_0 
L5161:  getfield Field com/fs/starfarer/combat/CombatState showingCodex Z 
L5164:  ifeq L5244 
L5167:  aload_0 
L5168:  getfield Field com/fs/starfarer/combat/CombatState codexOverlay Lcom/fs/starfarer/ui/interfacenew; 
L5171:  aload 36 
L5173:  invokevirtual Method com/fs/starfarer/ui/interfacenew processInput (Lcom/fs/starfarer/util/A/new;)V 
L5176:  aload_0 
L5177:  getfield Field com/fs/starfarer/combat/CombatState codexOverlay Lcom/fs/starfarer/ui/interfacenew; 
L5180:  fload 5 
L5182:  invokevirtual Method com/fs/starfarer/ui/interfacenew advance (F)V 
L5185:  new com/fs/starfarer/util/A/new 
L5188:  dup 
L5189:  invokespecial Method com/fs/starfarer/util/A/new <init> ()V 
L5192:  astore 37 
L5194:  invokestatic Method com/fs/starfarer/util/A/A 'Ò00000' ()Lcom/fs/starfarer/util/A/C; 
L5197:  astore 38 
L5199:  aload 38 
L5201:  ldc_w 1000000 
L5204:  invokevirtual Method com/fs/starfarer/util/A/C setX (I)V 
L5207:  aload 38 
L5209:  ldc_w 1000000 
L5212:  invokevirtual Method com/fs/starfarer/util/A/C setY (I)V 
L5215:  aload 37 
L5217:  aload 38 
L5219:  invokevirtual Method com/fs/starfarer/util/A/new add (Ljava/lang/Object;)Z 
L5222:  pop 
L5223:  aload_0 
L5224:  getfield Field com/fs/starfarer/combat/CombatState widgetPanel Lcom/fs/starfarer/ui/interfacenew; 
L5227:  aload 37 
L5229:  invokevirtual Method com/fs/starfarer/ui/interfacenew processInput (Lcom/fs/starfarer/util/A/new;)V 
L5232:  aload_0 
L5233:  getfield Field com/fs/starfarer/combat/CombatState widgetPanel Lcom/fs/starfarer/ui/interfacenew; 
L5236:  fload 5 
L5238:  invokevirtual Method com/fs/starfarer/ui/interfacenew advance (F)V 
L5241:  goto L5271 

        .stack same_extended 
L5244:  aload_0 
L5245:  getfield Field com/fs/starfarer/combat/CombatState widgetPanel Lcom/fs/starfarer/ui/interfacenew; 
L5248:  aload 36 
L5250:  invokevirtual Method com/fs/starfarer/ui/interfacenew processInput (Lcom/fs/starfarer/util/A/new;)V 
L5253:  aload_0 
L5254:  getfield Field com/fs/starfarer/combat/CombatState widgetPanel Lcom/fs/starfarer/ui/interfacenew; 
L5257:  fload 5 
L5259:  invokevirtual Method com/fs/starfarer/ui/interfacenew advance (F)V 
L5262:  aload_0 
L5263:  getfield Field com/fs/starfarer/combat/CombatState codexOverlay Lcom/fs/starfarer/ui/interfacenew; 
L5266:  fload 5 
L5268:  invokevirtual Method com/fs/starfarer/ui/interfacenew advance (F)V 

        .stack same 
L5271:  aload_0 
L5272:  getfield Field com/fs/starfarer/combat/CombatState targetReticleRenderer Lcom/fs/starfarer/renderers/A/C; 
L5275:  fload 5 
L5277:  invokevirtual Method com/fs/starfarer/renderers/A/C 'super' (F)V 
L5280:  ldc_w 'CombatState advancing engine' 
L5283:  invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L5286:  ldc_w 'Non-pausable animations' 
L5289:  invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L5292:  ldc_w 'CENonPauseanim' 
L5295:  invokestatic Method com/fs/graphics/anim/AnimationManager getInstance (Ljava/lang/String;)Lcom/fs/graphics/anim/AnimationManager; 
L5298:  fload 5 
L5300:  invokevirtual Method com/fs/graphics/anim/AnimationManager advanceAll (F)V 
L5303:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L5306:  ldc_w 'Warroom' 
L5309:  invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L5312:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L5315:  aload_0 
L5316:  getfield Field com/fs/starfarer/combat/CombatState messageWidget Lcom/fs/starfarer/class/C; 
L5319:  fload 5 
L5321:  invokevirtual Method com/fs/starfarer/class/C Oo0000 (F)V 
L5324:  aload_0 
L5325:  getfield Field com/fs/starfarer/combat/CombatState zoomTracker Lcom/fs/starfarer/util/A; 
L5328:  fload 5 
L5330:  invokevirtual Method com/fs/starfarer/util/A o00000 (F)V 
L5333:  aload_0 
L5334:  getfield Field com/fs/starfarer/combat/CombatState smoothZoom Lcom/fs/graphics/util/Fader; 
L5337:  fload 5 
L5339:  invokevirtual Method com/fs/graphics/util/Fader advance (F)V 
L5342:  aload_0 
L5343:  getfield Field com/fs/starfarer/combat/CombatState showWarroom Z 
L5346:  ifeq L5359 
L5349:  aload_0 
L5350:  getfield Field com/fs/starfarer/combat/CombatState warroom Lcom/fs/starfarer/combat/new/OoOO; 
L5353:  invokevirtual Method com/fs/starfarer/combat/new/OoOO isShowingVideoFeed ()Z 
L5356:  ifeq L5396 

        .stack same_extended 
L5359:  aload_0 
L5360:  getfield Field com/fs/starfarer/combat/CombatState showingCodex Z 
L5363:  ifne L5396 
L5366:  aload_0 
L5367:  getfield Field com/fs/starfarer/combat/CombatState dialogType Lcom/fs/starfarer/combat/CombatState$o; 
L5370:  ifnonnull L5396 
L5373:  aload_0 
L5374:  getfield Field com/fs/starfarer/combat/CombatState fader Lcom/fs/graphics/util/Fader; 
L5377:  invokevirtual Method com/fs/graphics/util/Fader isFadingOut ()Z 
L5380:  ifne L5396 
L5383:  aload_0 
L5384:  getfield Field com/fs/starfarer/combat/CombatState viewMouseOffset Lcom/fs/starfarer/combat/L; 
L5387:  fload 5 
L5389:  fload 33 
L5391:  invokeinterface InterfaceMethod com/fs/starfarer/combat/L 'Ò00000' (FF)V 3 

        .stack same 
L5396:  ldc_w 'Playing sounds' 
L5399:  invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L5402:  invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L5405:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getViewport ()Lcom/fs/starfarer/combat/CombatViewport; 
L5408:  astore 37 
L5410:  aload 37 
L5412:  invokevirtual Method com/fs/starfarer/combat/CombatViewport getCenter ()Lorg/lwjgl/util/vector/Vector2f; 
L5415:  astore 38 
L5417:  aload_0 
L5418:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L5421:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 
L5424:  astore 39 
L5426:  aload_0 
L5427:  getfield Field com/fs/starfarer/combat/CombatState entityToFollow Lcom/fs/starfarer/combat/new/OoOO$o; 
L5430:  ifnull L5444 
L5433:  aload_0 
L5434:  getfield Field com/fs/starfarer/combat/CombatState entityToFollow Lcom/fs/starfarer/combat/new/OoOO$o; 
L5437:  invokeinterface InterfaceMethod com/fs/starfarer/combat/new/OoOO$o getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 1 
L5442:  astore 39 

        .stack append Object com/fs/starfarer/combat/CombatViewport Object org/lwjgl/util/vector/Vector2f Object org/lwjgl/util/vector/Vector2f 
L5444:  fload 5 
L5446:  aload 38 
L5448:  getfield Field org/lwjgl/util/vector/Vector2f x F 
L5451:  aload 38 
L5453:  getfield Field org/lwjgl/util/vector/Vector2f y F 
L5456:  aload 39 
L5458:  getfield Field org/lwjgl/util/vector/Vector2f x F 
L5461:  aload 39 
L5463:  getfield Field org/lwjgl/util/vector/Vector2f y F 
L5466:  sipush 1800 
L5469:  invokestatic Method com/fs/starfarer/D/M o00000 (FFFFFI)V 
L5472:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L5475:  aload_0 
L5476:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L5479:  invokevirtual Method com/fs/starfarer/combat/CombatEngine isPaused ()Z 
L5482:  ifne L5538 
L5485:  fconst_1 
L5486:  fstore 40 
L5488:  iload_1 
L5489:  ifeq L5497 
L5492:  ldc_w +5.0f 
L5495:  fstore 40 

        .stack append Float 
L5497:  ldc_w 'Pausable animations' 
L5500:  invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L5503:  aload_0 
L5504:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L5507:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getTimeMult ()Lcom/fs/starfarer/api/combat/MutableStat; 
L5510:  invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L5513:  fstore 41 
L5515:  ldc_w 'CEanim' 
L5518:  invokestatic Method com/fs/graphics/anim/AnimationManager getInstance (Ljava/lang/String;)Lcom/fs/graphics/anim/AnimationManager; 
L5521:  fload 5 
L5523:  fload 41 
L5525:  fmul 
L5526:  fload 40 
L5528:  fmul 
L5529:  invokevirtual Method com/fs/graphics/anim/AnimationManager advanceAll (F)V 
L5532:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L5535:  goto L5557 

        .stack chop 1 
L5538:  ldc_w 'Pausable animations' 
L5541:  invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L5544:  ldc_w 'CEanim' 
L5547:  invokestatic Method com/fs/graphics/anim/AnimationManager getInstance (Ljava/lang/String;)Lcom/fs/graphics/anim/AnimationManager; 
L5550:  fconst_0 
L5551:  invokevirtual Method com/fs/graphics/anim/AnimationManager advanceAll (F)V 
L5554:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 

        .stack same 
L5557:  aload_0 
L5558:  getfield Field com/fs/starfarer/combat/CombatState tutorialOverlay Lcom/fs/starfarer/tutorial/H; 
L5561:  ifnull L5573 
L5564:  aload_0 
L5565:  getfield Field com/fs/starfarer/combat/CombatState tutorialOverlay Lcom/fs/starfarer/tutorial/H; 
L5568:  fload 5 
L5570:  invokevirtual Method com/fs/starfarer/tutorial/H advance (F)V 

        .stack same 
L5573:  ldc_w 'CombatState processing ship and warroom input' 
L5576:  invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L5579:  aload_0 
L5580:  getfield Field com/fs/starfarer/combat/CombatState showWarroom Z 
L5583:  ifne L5606 
L5586:  aload_0 
L5587:  getfield Field com/fs/starfarer/combat/CombatState zoomTracker Lcom/fs/starfarer/util/A; 
L5590:  aload 36 
L5592:  invokevirtual Method com/fs/starfarer/util/A o00000 (Lcom/fs/starfarer/util/A/new;)V 
L5595:  aload_0 
L5596:  aload 36 
L5598:  fload 5 
L5600:  invokevirtual Method com/fs/starfarer/combat/CombatState controlPlayerShip (Lcom/fs/starfarer/util/A/new;F)V 
L5603:  goto L5625 

        .stack same 
L5606:  aload_0 
L5607:  getfield Field com/fs/starfarer/combat/CombatState warroom Lcom/fs/starfarer/combat/new/OoOO; 
L5610:  invokevirtual Method com/fs/starfarer/combat/new/OoOO isShowingVideoFeed ()Z 
L5613:  ifeq L5625 
L5616:  aload_0 
L5617:  getfield Field com/fs/starfarer/combat/CombatState zoomTracker Lcom/fs/starfarer/util/A; 
L5620:  aload 36 
L5622:  invokevirtual Method com/fs/starfarer/util/A o00000 (Lcom/fs/starfarer/util/A/new;)V 

        .stack same 
L5625:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L5628:  iconst_1 
L5629:  istore 40 
L5631:  ldc_w 'combatStepsPerFrame' 
L5634:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'ö00000' (Ljava/lang/String;)F 
L5637:  invokestatic Method java/lang/Math round (F)I 
L5640:  istore 40 
L5642:  iconst_0 
L5643:  istore_1 
L5644:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'OÓ0000' ()Z 
L5647:  ifeq L5672 
L5650:  bipush 37 
L5652:  invokestatic Method org/lwjgl/input/Keyboard isKeyDown (I)Z 
L5655:  ifeq L5672 
L5658:  sipush 184 
L5661:  invokestatic Method org/lwjgl/input/Keyboard isKeyDown (I)Z 
L5664:  ifeq L5672 
L5667:  iconst_5 
L5668:  istore 40 
L5670:  iconst_1 
L5671:  istore_1 

        .stack append Integer 
L5672:  iconst_0 
L5673:  istore 41 
L5675:  goto L5714 

        .stack append Integer 
L5678:  iload 41 
L5680:  ifeq L5691 
L5683:  aload_0 
L5684:  aload 36 
L5686:  fload 5 
L5688:  invokevirtual Method com/fs/starfarer/combat/CombatState controlPlayerShip (Lcom/fs/starfarer/util/A/new;F)V 

        .stack same 
L5691:  aload_0 
L5692:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L5695:  fload 5 
L5697:  aload 36 
L5699:  invokevirtual Method com/fs/starfarer/combat/CombatEngine advance (FLcom/fs/starfarer/util/A/new;)V 
L5702:  aload_0 
L5703:  getfield Field com/fs/starfarer/combat/CombatState fader Lcom/fs/graphics/util/Fader; 
L5706:  fload 5 
L5708:  invokevirtual Method com/fs/graphics/util/Fader advance (F)V 
L5711:  iinc 41 1 

        .stack same 
L5714:  iload 41 
L5716:  iload 40 
L5718:  if_icmplt L5678 
L5721:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Float Float Object com/fs/graphics/Sprite Float Object com/fs/graphics/util/A Integer Integer Integer Integer Integer Object com/fs/graphics/Sprite Object com/fs/starfarer/api/combat/BattleCreationContext Integer Integer Long Float Float Float Float Object org/lwjgl/util/vector/Vector2f Integer Object com/fs/starfarer/api/combat/ViewportAPI Object com/fs/starfarer/combat/new/OoOO$o Float Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/B Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Float Object java/util/List Float Object com/fs/starfarer/util/A/new 
            stack 
        .end stack 
L5724:  aload_0 
L5725:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L5728:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getWhiteout ()Lcom/fs/starfarer/renderers/damage/OooO; 
L5731:  invokevirtual Method com/fs/starfarer/renderers/damage/OooO 'Ò00000' ()Z 
L5734:  ifeq L5769 
L5737:  aload_0 
L5738:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L5741:  invokevirtual Method com/fs/starfarer/combat/CombatEngine isCombatOver ()Z 
L5744:  ifeq L5769 
L5747:  aload_0 
L5748:  getfield Field com/fs/starfarer/combat/CombatState dialogType Lcom/fs/starfarer/combat/CombatState$o; 
L5751:  ifnonnull L5769 
L5754:  aload_0 
L5755:  getfield Field com/fs/starfarer/combat/CombatState fader Lcom/fs/graphics/util/Fader; 
L5758:  invokevirtual Method com/fs/graphics/util/Fader isFadingOut ()Z 
L5761:  ifne L5769 
L5764:  aload_0 
L5765:  aconst_null 
L5766:  invokevirtual Method com/fs/starfarer/combat/CombatState endCombatAndShowDialogIfMission (Lcom/fs/starfarer/ui/oo0O;)V 

        .stack same 
L5769:  aload_0 
L5770:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L5773:  ifnull L5807 
L5776:  aload_0 
L5777:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L5780:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isRetreating ()Z 
L5783:  ifne L5807 
L5786:  invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L5789:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getCombatMap ()Lcom/fs/starfarer/combat/A/B; 
L5792:  aload_0 
L5793:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L5796:  invokevirtual Method com/fs/starfarer/combat/A/B 'super' (Lcom/fs/starfarer/combat/E/B;)Z 
L5799:  ifeq L5807 
L5802:  aload_0 
L5803:  iconst_1 
L5804:  putfield Field com/fs/starfarer/combat/CombatState okToShowRetreatDialog Z 

        .stack same 
L5807:  ldc_w 'Misc. input processing' 
L5810:  invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L5813:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'OÓ0000' ()Z 
L5816:  istore 37 
L5818:  iload 37 
L5820:  ifeq L5839 
L5823:  aload_0 
L5824:  getfield Field com/fs/starfarer/combat/CombatState cameraMode Lcom/fs/starfarer/combat/CombatState$Oo; 
L5827:  getstatic Field com/fs/starfarer/combat/CombatState$Oo new Lcom/fs/starfarer/combat/CombatState$Oo; 
L5830:  if_acmpne L5839 
L5833:  aload_0 
L5834:  fload 5 
L5836:  invokevirtual Method com/fs/starfarer/combat/CombatState handleScrollControls (F)V 

        .stack append Integer 
L5839:  aload 36 
L5841:  invokevirtual Method com/fs/starfarer/util/A/new iterator ()Ljava/util/Iterator; 
L5844:  astore 39 
L5846:  goto L7876 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Float Float Object com/fs/graphics/Sprite Float Object com/fs/graphics/util/A Integer Integer Integer Integer Integer Object com/fs/graphics/Sprite Object com/fs/starfarer/api/combat/BattleCreationContext Integer Integer Long Float Float Float Float Object org/lwjgl/util/vector/Vector2f Integer Object com/fs/starfarer/api/combat/ViewportAPI Object com/fs/starfarer/combat/new/OoOO$o Float Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/B Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Float Object java/util/List Float Object com/fs/starfarer/util/A/new Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L5849:  aload 39 
L5851:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L5856:  checkcast com/fs/starfarer/util/A/C 
L5859:  astore 38 
L5861:  aload 38 
L5863:  invokevirtual Method com/fs/starfarer/util/A/C isConsumed ()Z 
L5866:  ifeq L5872 
L5869:  goto L7876 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Float Float Object com/fs/graphics/Sprite Float Object com/fs/graphics/util/A Integer Integer Integer Integer Integer Object com/fs/graphics/Sprite Object com/fs/starfarer/api/combat/BattleCreationContext Integer Integer Long Float Float Float Float Object org/lwjgl/util/vector/Vector2f Integer Object com/fs/starfarer/api/combat/ViewportAPI Object com/fs/starfarer/combat/new/OoOO$o Float Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/B Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Float Object java/util/List Float Object com/fs/starfarer/util/A/new Integer Object com/fs/starfarer/util/A/C Object java/util/Iterator 
            stack 
        .end stack 
L5872:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'OÓ0000' ()Z 
L5875:  ifeq L6050 
L5878:  aload 38 
L5880:  invokevirtual Method com/fs/starfarer/util/A/C isKeyDownEvent ()Z 
L5883:  ifeq L6050 
L5886:  aload 38 
L5888:  invokevirtual Method com/fs/starfarer/util/A/C getEventValue ()I 
L5891:  bipush 68 
L5893:  if_icmpne L6050 
L5896:  invokestatic Method com/fs/starfarer/combat/CombatState $SWITCH_TABLE$com$fs$starfarer$combat$CombatState$CameraMode ()[I 
L5899:  aload_0 
L5900:  getfield Field com/fs/starfarer/combat/CombatState cameraMode Lcom/fs/starfarer/combat/CombatState$Oo; 
L5903:  invokevirtual Method com/fs/starfarer/combat/CombatState$Oo ordinal ()I 
L5906:  iaload 
L5907:  tableswitch 1 
            L6022 
            L5963 
            L5932 
            default : L6050 


        .stack same 
L5932:  aload_0 
L5933:  getstatic Field com/fs/starfarer/combat/CombatState$Oo 'Ô00000' Lcom/fs/starfarer/combat/CombatState$Oo; 
L5936:  putfield Field com/fs/starfarer/combat/CombatState cameraMode Lcom/fs/starfarer/combat/CombatState$Oo; 
L5939:  aload_0 
L5940:  invokevirtual Method com/fs/starfarer/combat/CombatState getMessageWidget ()Lcom/fs/starfarer/class/C; 
L5943:  iconst_1 
L5944:  anewarray java/lang/Object 
L5947:  dup 
L5948:  iconst_0 
L5949:  ldc_w 'Camera: standard' 
L5952:  aastore 
L5953:  invokevirtual Method com/fs/starfarer/class/C o00000 ([Ljava/lang/Object;)Lcom/fs/starfarer/class/O0OO/C; 
L5956:  fconst_1 
L5957:  invokevirtual Method com/fs/starfarer/class/O0OO/C 'new.new' (F)V 
L5960:  goto L6050 

        .stack same 
L5963:  aload_0 
L5964:  getstatic Field com/fs/starfarer/combat/CombatState$Oo new Lcom/fs/starfarer/combat/CombatState$Oo; 
L5967:  putfield Field com/fs/starfarer/combat/CombatState cameraMode Lcom/fs/starfarer/combat/CombatState$Oo; 
L5970:  aload_0 
L5971:  aload 24 
L5973:  invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ViewportAPI getCenter ()Lorg/lwjgl/util/vector/Vector2f; 1 
L5978:  getfield Field org/lwjgl/util/vector/Vector2f x F 
L5981:  putfield Field com/fs/starfarer/combat/CombatState panX F 
L5984:  aload_0 
L5985:  aload 24 
L5987:  invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ViewportAPI getCenter ()Lorg/lwjgl/util/vector/Vector2f; 1 
L5992:  getfield Field org/lwjgl/util/vector/Vector2f y F 
L5995:  putfield Field com/fs/starfarer/combat/CombatState panY F 
L5998:  aload_0 
L5999:  invokevirtual Method com/fs/starfarer/combat/CombatState getMessageWidget ()Lcom/fs/starfarer/class/C; 
L6002:  iconst_1 
L6003:  anewarray java/lang/Object 
L6006:  dup 
L6007:  iconst_0 
L6008:  ldc_w 'Camera: free pan' 
L6011:  aastore 
L6012:  invokevirtual Method com/fs/starfarer/class/C o00000 ([Ljava/lang/Object;)Lcom/fs/starfarer/class/O0OO/C; 
L6015:  fconst_1 
L6016:  invokevirtual Method com/fs/starfarer/class/O0OO/C 'new.new' (F)V 
L6019:  goto L6050 

        .stack same 
L6022:  aload_0 
L6023:  getstatic Field com/fs/starfarer/combat/CombatState$Oo 'Ó00000' Lcom/fs/starfarer/combat/CombatState$Oo; 
L6026:  putfield Field com/fs/starfarer/combat/CombatState cameraMode Lcom/fs/starfarer/combat/CombatState$Oo; 
L6029:  aload_0 
L6030:  invokevirtual Method com/fs/starfarer/combat/CombatState getMessageWidget ()Lcom/fs/starfarer/class/C; 
L6033:  iconst_1 
L6034:  anewarray java/lang/Object 
L6037:  dup 
L6038:  iconst_0 
L6039:  ldc_w 'Camera: locked on ship' 
L6042:  aastore 
L6043:  invokevirtual Method com/fs/starfarer/class/C o00000 ([Ljava/lang/Object;)Lcom/fs/starfarer/class/O0OO/C; 
L6046:  fconst_1 
L6047:  invokevirtual Method com/fs/starfarer/class/O0OO/C 'new.new' (F)V 

        .stack same 
L6050:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'OÓ0000' ()Z 
L6053:  ifeq L6341 
L6056:  aload 38 
L6058:  invokevirtual Method com/fs/starfarer/util/A/C getEventValue ()I 
L6061:  bipush 88 
L6063:  if_icmpne L6341 
L6066:  aload_0 
L6067:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L6070:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getObjects ()Lcom/fs/util/container/repo/ObjectRepository; 
L6073:  ldc_w Class com/fs/starfarer/combat/entities/Ship 
L6076:  invokevirtual Method com/fs/util/container/repo/ObjectRepository getList (Ljava/lang/Class;)Ljava/util/List; 
L6079:  astore 40 
L6081:  aload_0 
L6082:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L6085:  ifnull L6122 
L6088:  aload_0 
L6089:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L6092:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getShipTarget ()Lcom/fs/starfarer/combat/entities/Ship; 
L6095:  ifnull L6122 
L6098:  new java/util/ArrayList 
L6101:  dup 
L6102:  invokespecial Method java/util/ArrayList <init> ()V 
L6105:  astore 40 
L6107:  aload 40 
L6109:  aload_0 
L6110:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L6113:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getShipTarget ()Lcom/fs/starfarer/combat/entities/Ship; 
L6116:  invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L6121:  pop 

        .stack append Object java/util/List 
L6122:  iconst_0 
L6123:  istore 41 
L6125:  goto L6298 

        .stack append Integer 
L6128:  aload 40 
L6130:  aload 40 
L6132:  invokeinterface InterfaceMethod java/util/List size ()I 1 
L6137:  i2d 
L6138:  invokestatic Method java/lang/Math random ()D 
L6141:  dmul 
L6142:  d2i 
L6143:  invokeinterface InterfaceMethod java/util/List get (I)Ljava/lang/Object; 2 
L6148:  checkcast com/fs/starfarer/combat/entities/Ship 
L6151:  astore 42 
L6153:  aload 42 
L6155:  iconst_0 
L6156:  invokevirtual Method com/fs/starfarer/combat/entities/Ship setSpawnDebris (Z)V 
L6159:  sipush 157 
L6162:  invokestatic Method org/lwjgl/input/Keyboard isKeyDown (I)Z 
L6165:  ifeq L6230 
L6168:  aload 42 
L6170:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getOwner ()I 
L6173:  aload_0 
L6174:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L6177:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerFleetManager ()Lcom/fs/starfarer/combat/CombatFleetManager; 
L6180:  invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getOwner ()I 
L6183:  if_icmpne L6289 
L6186:  aload 42 
L6188:  new org/lwjgl/util/vector/Vector2f 
L6191:  dup 
L6192:  aload 42 
L6194:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L6197:  invokespecial Method org/lwjgl/util/vector/Vector2f <init> (Lorg/lwjgl/util/vector/ReadableVector2f;)V 
L6200:  new com/fs/starfarer/combat/E/F 
L6203:  dup 
L6204:  ldc_w +1000.0f 
L6207:  iconst_0 
L6208:  getstatic Field com/fs/starfarer/api/combat/DamageType ENERGY Lcom/fs/starfarer/api/combat/DamageType; 
L6211:  invokespecial Method com/fs/starfarer/combat/E/F <init> (FZLcom/fs/starfarer/api/combat/DamageType;)V 
L6214:  iconst_0 
L6215:  fconst_1 
L6216:  aload_0 
L6217:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L6220:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L6223:  invokevirtual Method com/fs/starfarer/combat/entities/Ship applyDamage (Lorg/lwjgl/util/vector/Vector2f;Lcom/fs/starfarer/combat/E/F;ZFLjava/lang/Object;)Lcom/fs/starfarer/combat/entities/ship/G; 
L6226:  pop 
L6227:  goto L6289 

        .stack append Object com/fs/starfarer/combat/entities/Ship 
L6230:  aload 42 
L6232:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getOwner ()I 
L6235:  aload_0 
L6236:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L6239:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getEnemyFleetManager ()Lcom/fs/starfarer/combat/CombatFleetManager; 
L6242:  invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getOwner ()I 
L6245:  if_icmpne L6289 
L6248:  aload 42 
L6250:  new org/lwjgl/util/vector/Vector2f 
L6253:  dup 
L6254:  aload 42 
L6256:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L6259:  invokespecial Method org/lwjgl/util/vector/Vector2f <init> (Lorg/lwjgl/util/vector/ReadableVector2f;)V 
L6262:  new com/fs/starfarer/combat/E/F 
L6265:  dup 
L6266:  ldc_w +1000.0f 
L6269:  iconst_0 
L6270:  getstatic Field com/fs/starfarer/api/combat/DamageType ENERGY Lcom/fs/starfarer/api/combat/DamageType; 
L6273:  invokespecial Method com/fs/starfarer/combat/E/F <init> (FZLcom/fs/starfarer/api/combat/DamageType;)V 
L6276:  iconst_0 
L6277:  fconst_1 
L6278:  aload_0 
L6279:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L6282:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L6285:  invokevirtual Method com/fs/starfarer/combat/entities/Ship applyDamage (Lorg/lwjgl/util/vector/Vector2f;Lcom/fs/starfarer/combat/E/F;ZFLjava/lang/Object;)Lcom/fs/starfarer/combat/entities/ship/G; 
L6288:  pop 

        .stack same 
L6289:  aload 42 
L6291:  iconst_1 
L6292:  invokevirtual Method com/fs/starfarer/combat/entities/Ship setSpawnDebris (Z)V 
L6295:  iinc 41 1 

        .stack chop 1 
L6298:  iload 41 
L6300:  bipush 20 
L6302:  if_icmpge L6315 
L6305:  aload 40 
L6307:  invokeinterface InterfaceMethod java/util/List size ()I 1 
L6312:  ifgt L6128 

        .stack chop 1 
L6315:  aload_0 
L6316:  invokevirtual Method com/fs/starfarer/combat/CombatState getMessageWidget ()Lcom/fs/starfarer/class/C; 
L6319:  iconst_1 
L6320:  anewarray java/lang/Object 
L6323:  dup 
L6324:  iconst_0 
L6325:  ldc_w 'Applying random damage to enemy ships' 
L6328:  aastore 
L6329:  invokevirtual Method com/fs/starfarer/class/C o00000 ([Ljava/lang/Object;)Lcom/fs/starfarer/class/O0OO/C; 
L6332:  pop 
L6333:  aload 38 
L6335:  invokevirtual Method com/fs/starfarer/util/A/C consume ()V 
L6338:  goto L7876 

        .stack chop 1 
L6341:  aload_0 
L6342:  getfield Field com/fs/starfarer/combat/CombatState showWarroom Z 
L6345:  ifeq L6358 
L6348:  aload_0 
L6349:  getfield Field com/fs/starfarer/combat/CombatState warroom Lcom/fs/starfarer/combat/new/OoOO; 
L6352:  invokevirtual Method com/fs/starfarer/combat/new/OoOO isShowingVideoFeed ()Z 
L6355:  ifeq L7043 

        .stack same 
L6358:  aload 38 
L6360:  getstatic Field [c1459] 'Ô00000' [u1019] 
L6363:  getstatic Field [c1465] 'private' [u1030] 
L6366:  invokestatic Method [c1471] o00000 [u1039] 
L6369:  ifeq L6387 
L6372:  aload_0 
L6373:  getfield Field com/fs/starfarer/combat/CombatState arcRenderer Lcom/fs/starfarer/renderers/super; 
L6376:  invokevirtual Method com/fs/starfarer/renderers/super 'Õ00000' ()V 
L6379:  aload 38 
L6381:  invokevirtual Method com/fs/starfarer/util/A/C consume ()V 
L6384:  goto L7876 

        .stack same 
L6387:  aload 38 
L6389:  getstatic Field [c1459] 'Ô00000' [u1019] 
L6392:  getstatic Field [c1465] 'Öô0000' [u1030] 
L6395:  invokestatic Method [c1471] o00000 [u1039] 
L6398:  ifeq L6451 
L6401:  aload_0 
L6402:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L6405:  invokevirtual Method com/fs/starfarer/combat/entities/Ship controlsLocked ()Z 
L6408:  ifne L6451 
L6411:  aload_0 
L6412:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L6415:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getCombatUI ()Lcom/fs/starfarer/combat/K; 
L6418:  aload_0 
L6419:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L6422:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getCombatUI ()Lcom/fs/starfarer/combat/K; 
L6425:  invokeinterface InterfaceMethod com/fs/starfarer/combat/K isAutopilotOn ()Z 1 
L6430:  ifeq L6437 
L6433:  iconst_0 
L6434:  goto L6438 

        .stack stack_1 Object com/fs/starfarer/combat/K 
L6437:  iconst_1 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Float Float Object com/fs/graphics/Sprite Float Object com/fs/graphics/util/A Integer Integer Integer Integer Integer Object com/fs/graphics/Sprite Object com/fs/starfarer/api/combat/BattleCreationContext Integer Integer Long Float Float Float Float Object org/lwjgl/util/vector/Vector2f Integer Object com/fs/starfarer/api/combat/ViewportAPI Object com/fs/starfarer/combat/new/OoOO$o Float Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/B Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Float Object java/util/List Float Object com/fs/starfarer/util/A/new Integer Object com/fs/starfarer/util/A/C Object java/util/Iterator 
            stack Object com/fs/starfarer/combat/K Integer 
        .end stack 
L6438:  invokeinterface InterfaceMethod com/fs/starfarer/combat/K setAutopilot (Z)V 2 
L6443:  aload 38 
L6445:  invokevirtual Method com/fs/starfarer/util/A/C consume ()V 
L6448:  goto L7876 

        .stack same 
L6451:  aload 38 
L6453:  getstatic Field [c1459] 'Ô00000' [u1019] 
L6456:  getstatic Field [c1465] 'Ö0O000' [u1030] 
L6459:  invokestatic Method [c1471] o00000 [u1039] 
L6462:  ifeq L6500 
L6465:  aload_0 
L6466:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L6469:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerTaskManager ()Lcom/fs/starfarer/combat/tasks/CombatTaskManager; 
L6472:  ifnull L6488 
L6475:  aload_0 
L6476:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L6479:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerTaskManager ()Lcom/fs/starfarer/combat/tasks/CombatTaskManager; 
L6482:  invokevirtual Method com/fs/starfarer/combat/tasks/CombatTaskManager isInFullRetreat ()Z 
L6485:  ifne L6500 

        .stack same 
L6488:  aload_0 
L6489:  invokevirtual Method com/fs/starfarer/combat/CombatState showDeployDialog ()V 
L6492:  aload 38 
L6494:  invokevirtual Method com/fs/starfarer/util/A/C consume ()V 
L6497:  goto L7876 

        .stack same 
L6500:  aload 38 
L6502:  getstatic Field [c1459] 'Ô00000' [u1019] 
L6505:  getstatic Field [c1465] 'do.return' [u1030] 
L6508:  invokestatic Method [c1471] o00000 [u1039] 
L6511:  ifeq L6693 
L6514:  aload 31 
L6516:  ifnull L6535 
L6519:  aload 32 
L6521:  ifnull L6531 
L6524:  aload 32 
L6526:  aload 31 
L6528:  if_acmpeq L6535 

        .stack same 
L6531:  aload 31 
L6533:  astore 30 

        .stack same 
L6535:  aload 30 
L6537:  ifnull L6561 
L6540:  aload 30 
L6542:  aload_0 
L6543:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L6546:  if_acmpeq L6561 
L6549:  aload 30 
L6551:  aload 32 
L6553:  if_acmpne L6642 
L6556:  aload 32 
L6558:  ifnull L6642 

        .stack same 
L6561:  aload 38 
L6563:  invokevirtual Method com/fs/starfarer/util/A/C consume ()V 
L6566:  ldc_w 'ui_target_reticle' 
L6569:  fconst_1 
L6570:  fconst_1 
L6571:  invokestatic Method com/fs/starfarer/D/M o00000 (Ljava/lang/String;FF)Lsound/Sound; 
L6574:  pop 
L6575:  aload_0 
L6576:  getfield Field com/fs/starfarer/combat/CombatState entityToFollow Lcom/fs/starfarer/combat/new/OoOO$o; 
L6579:  ifnonnull L6624 
L6582:  aload_0 
L6583:  aconst_null 
L6584:  invokevirtual Method com/fs/starfarer/combat/CombatState setTargetShip (Lcom/fs/starfarer/combat/entities/Ship;)V 
L6587:  aload_0 
L6588:  getfield Field com/fs/starfarer/combat/CombatState viewOnTarget Z 
L6591:  ifeq L6616 
L6594:  aload_0 
L6595:  getfield Field com/fs/starfarer/combat/CombatState viewMouseOffset Lcom/fs/starfarer/combat/L; 
L6598:  fconst_0 
L6599:  fconst_0 
L6600:  invokeinterface InterfaceMethod com/fs/starfarer/combat/L 'Ó00000' (FF)V 3 
L6605:  aload_0 
L6606:  getfield Field com/fs/starfarer/combat/CombatState viewMouseOffset Lcom/fs/starfarer/combat/L; 
L6609:  fconst_0 
L6610:  fconst_0 
L6611:  invokeinterface InterfaceMethod com/fs/starfarer/combat/L 'super' (FF)V 3 

        .stack same 
L6616:  aload_0 
L6617:  iconst_0 
L6618:  putfield Field com/fs/starfarer/combat/CombatState viewOnTarget Z 
L6621:  goto L7876 

        .stack same 
L6624:  aload_0 
L6625:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L6628:  ifnull L7876 
L6631:  aload_0 
L6632:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L6635:  aconst_null 
L6636:  invokevirtual Method com/fs/starfarer/combat/entities/Ship setShipTarget (Lcom/fs/starfarer/api/combat/ShipAPI;)V 
L6639:  goto L7876 

        .stack same 
L6642:  aload 30 
L6644:  ifnull L6693 
L6647:  aload 30 
L6649:  aload_0 
L6650:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L6653:  if_acmpeq L6693 
L6656:  aload_0 
L6657:  aload 30 
L6659:  invokevirtual Method com/fs/starfarer/combat/CombatState setTargetShip (Lcom/fs/starfarer/combat/entities/Ship;)V 
L6662:  aload_0 
L6663:  getfield Field com/fs/starfarer/combat/CombatState targetReticleRenderer Lcom/fs/starfarer/renderers/A/C; 
L6666:  aload 30 
L6668:  invokevirtual Method com/fs/starfarer/renderers/A/C 'super' (Lcom/fs/starfarer/combat/entities/Ship;)V 
L6671:  aload 38 
L6673:  invokevirtual Method com/fs/starfarer/util/A/C consume ()V 
L6676:  ldc_w 'ui_target_reticle' 
L6679:  fconst_1 
L6680:  fconst_1 
L6681:  invokestatic Method com/fs/starfarer/D/M o00000 (Ljava/lang/String;FF)Lsound/Sound; 
L6684:  pop 
L6685:  aload_0 
L6686:  iconst_0 
L6687:  putfield Field com/fs/starfarer/combat/CombatState viewOnTarget Z 
L6690:  goto L7876 

        .stack same 
L6693:  iconst_0 
L6694:  istore 40 
L6696:  aload_0 
L6697:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L6700:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getSelectedGroup ()Lcom/fs/starfarer/combat/systems/WeaponGroup; 
L6703:  ifnull L6774 
L6706:  aload_0 
L6707:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L6710:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getSelectedGroup ()Lcom/fs/starfarer/combat/systems/WeaponGroup; 
L6713:  invokevirtual Method com/fs/starfarer/combat/systems/WeaponGroup getWeapons ()Ljava/util/List; 
L6716:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L6721:  astore 42 
L6723:  goto L6764 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Float Float Object com/fs/graphics/Sprite Float Object com/fs/graphics/util/A Integer Integer Integer Integer Integer Object com/fs/graphics/Sprite Object com/fs/starfarer/api/combat/BattleCreationContext Integer Integer Long Float Float Float Float Object org/lwjgl/util/vector/Vector2f Integer Object com/fs/starfarer/api/combat/ViewportAPI Object com/fs/starfarer/combat/new/OoOO$o Float Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/B Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Float Object java/util/List Float Object com/fs/starfarer/util/A/new Integer Object com/fs/starfarer/util/A/C Object java/util/Iterator Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L6726:  aload 42 
L6728:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L6733:  checkcast com/fs/starfarer/api/combat/WeaponAPI 
L6736:  astore 41 
L6738:  aload 41 
L6740:  getstatic Field com/fs/starfarer/api/combat/WeaponAPI$AIHints AUTOZOOM Lcom/fs/starfarer/api/combat/WeaponAPI$AIHints; 
L6743:  invokeinterface InterfaceMethod com/fs/starfarer/api/combat/WeaponAPI hasAIHint (Lcom/fs/starfarer/api/combat/WeaponAPI$AIHints;)Z 2 
L6748:  ifeq L6764 
L6751:  aload_0 
L6752:  invokevirtual Method com/fs/starfarer/combat/CombatState isAutopilotOn ()Z 
L6755:  ifne L6764 
L6758:  iconst_1 
L6759:  istore 40 
L6761:  goto L6774 

        .stack same 
L6764:  aload 42 
L6766:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L6771:  ifne L6726 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Float Float Object com/fs/graphics/Sprite Float Object com/fs/graphics/util/A Integer Integer Integer Integer Integer Object com/fs/graphics/Sprite Object com/fs/starfarer/api/combat/BattleCreationContext Integer Integer Long Float Float Float Float Object org/lwjgl/util/vector/Vector2f Integer Object com/fs/starfarer/api/combat/ViewportAPI Object com/fs/starfarer/combat/new/OoOO$o Float Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/B Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Float Object java/util/List Float Object com/fs/starfarer/util/A/new Integer Object com/fs/starfarer/util/A/C Object java/util/Iterator Integer 
            stack 
        .end stack 
L6774:  iload 40 
L6776:  ifeq L6796 
L6779:  aload_0 
L6780:  getfield Field com/fs/starfarer/combat/CombatState viewOnTarget Z 
L6783:  ifne L6796 
L6786:  aload_0 
L6787:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L6790:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getShipTarget ()Lcom/fs/starfarer/combat/entities/Ship; 
L6793:  ifnonnull L6834 

        .stack same 
L6796:  iload 40 
L6798:  ifne L6815 
L6801:  aload_0 
L6802:  getfield Field com/fs/starfarer/combat/CombatState viewOnTarget Z 
L6805:  ifeq L6815 
L6808:  aload_0 
L6809:  getfield Field com/fs/starfarer/combat/CombatState lastZoomWasAutoToggled Z 
L6812:  ifne L6834 

        .stack same 
L6815:  aload 38 
L6817:  getstatic Field [c1459] 'Ô00000' [u1019] 
L6820:  getstatic Field [c1465] 'do.void' [u1030] 
L6823:  invokestatic Method [c1471] o00000 [u1039] 
L6826:  ifeq L7043 
L6829:  iload 40 
L6831:  ifne L7043 

        .stack same 
L6834:  aload_0 
L6835:  aload_0 
L6836:  getfield Field com/fs/starfarer/combat/CombatState viewOnTarget Z 
L6839:  ifeq L6846 
L6842:  iconst_0 
L6843:  goto L6847 

        .stack stack_1 Object com/fs/starfarer/combat/CombatState 
L6846:  iconst_1 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Float Float Object com/fs/graphics/Sprite Float Object com/fs/graphics/util/A Integer Integer Integer Integer Integer Object com/fs/graphics/Sprite Object com/fs/starfarer/api/combat/BattleCreationContext Integer Integer Long Float Float Float Float Object org/lwjgl/util/vector/Vector2f Integer Object com/fs/starfarer/api/combat/ViewportAPI Object com/fs/starfarer/combat/new/OoOO$o Float Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/B Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Float Object java/util/List Float Object com/fs/starfarer/util/A/new Integer Object com/fs/starfarer/util/A/C Object java/util/Iterator Integer 
            stack Object com/fs/starfarer/combat/CombatState Integer 
        .end stack 
L6847:  putfield Field com/fs/starfarer/combat/CombatState viewOnTarget Z 
L6850:  aload_0 
L6851:  getfield Field com/fs/starfarer/combat/CombatState viewOnTarget Z 
L6854:  ifeq L6945 
L6857:  aload_0 
L6858:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L6861:  ifnull L6874 
L6864:  aload_0 
L6865:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L6868:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getShipTarget ()Lcom/fs/starfarer/combat/entities/Ship; 
L6871:  ifnonnull L6879 

        .stack same 
L6874:  aload_0 
L6875:  iconst_0 
L6876:  putfield Field com/fs/starfarer/combat/CombatState viewOnTarget Z 

        .stack same 
L6879:  aload_0 
L6880:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L6883:  ifnull L6979 
L6886:  aload_0 
L6887:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L6890:  aload_0 
L6891:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L6894:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getOriginalOwner ()I 
L6897:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getFogOfWar (I)Lcom/fs/starfarer/combat/new/T; 
L6900:  astore 41 
L6902:  aload 41 
L6904:  ifnull L6979 
L6907:  aload_0 
L6908:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L6911:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getShipTarget ()Lcom/fs/starfarer/combat/entities/Ship; 
L6914:  ifnull L6979 
L6917:  aload 41 
L6919:  aload_0 
L6920:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L6923:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getShipTarget ()Lcom/fs/starfarer/combat/entities/Ship; 
L6926:  invokevirtual Method com/fs/starfarer/combat/new/T isVisible (Lcom/fs/starfarer/api/combat/CombatEntityAPI;)Z 
L6929:  ifne L6979 
L6932:  aload_0 
L6933:  iconst_0 
L6934:  putfield Field com/fs/starfarer/combat/CombatState viewOnTarget Z 
L6937:  aload_0 
L6938:  aconst_null 
L6939:  invokevirtual Method com/fs/starfarer/combat/CombatState setVideoFeedSource (Lcom/fs/starfarer/combat/new/OoOO$o;)V 
L6942:  goto L6979 

        .stack same_extended 
L6945:  aload_0 
L6946:  getfield Field com/fs/starfarer/combat/CombatState viewOnTarget Z 
L6949:  ifne L6979 
L6952:  aload_0 
L6953:  getfield Field com/fs/starfarer/combat/CombatState viewMouseOffset Lcom/fs/starfarer/combat/L; 
L6956:  fconst_0 
L6957:  fconst_0 
L6958:  invokeinterface InterfaceMethod com/fs/starfarer/combat/L 'Ó00000' (FF)V 3 
L6963:  aload_0 
L6964:  getfield Field com/fs/starfarer/combat/CombatState viewMouseOffset Lcom/fs/starfarer/combat/L; 
L6967:  fconst_0 
L6968:  fconst_0 
L6969:  invokeinterface InterfaceMethod com/fs/starfarer/combat/L 'super' (FF)V 3 
L6974:  aload_0 
L6975:  aconst_null 
L6976:  invokevirtual Method com/fs/starfarer/combat/CombatState setVideoFeedSource (Lcom/fs/starfarer/combat/new/OoOO$o;)V 

        .stack same 
L6979:  aload 38 
L6981:  getstatic Field [c1459] 'Ô00000' [u1019] 
L6984:  getstatic Field [c1465] 'do.void' [u1030] 
L6987:  invokestatic Method [c1471] o00000 [u1039] 
L6990:  ifeq L7006 
L6993:  aload_0 
L6994:  iconst_0 
L6995:  putfield Field com/fs/starfarer/combat/CombatState lastZoomWasAutoToggled Z 
L6998:  aload 38 
L7000:  invokevirtual Method com/fs/starfarer/util/A/C consume ()V 
L7003:  goto L7018 

        .stack same 
L7006:  aload_0 
L7007:  getfield Field com/fs/starfarer/combat/CombatState viewOnTarget Z 
L7010:  ifeq L7018 
L7013:  aload_0 
L7014:  iconst_1 
L7015:  putfield Field com/fs/starfarer/combat/CombatState lastZoomWasAutoToggled Z 

        .stack same 
L7018:  aload_0 
L7019:  getfield Field com/fs/starfarer/combat/CombatState viewMouseOffset Lcom/fs/starfarer/combat/L; 
L7022:  fconst_0 
L7023:  fconst_0 
L7024:  invokeinterface InterfaceMethod com/fs/starfarer/combat/L 'Ó00000' (FF)V 3 
L7029:  aload_0 
L7030:  getfield Field com/fs/starfarer/combat/CombatState viewMouseOffset Lcom/fs/starfarer/combat/L; 
L7033:  fconst_0 
L7034:  fconst_0 
L7035:  invokeinterface InterfaceMethod com/fs/starfarer/combat/L 'super' (FF)V 3 
L7040:  goto L7876 

        .stack chop 1 
L7043:  aload 38 
L7045:  getstatic Field [c1459] 'Ô00000' [u1019] 
L7048:  getstatic Field [c1465] 'OÓ0000' [u1030] 
L7051:  invokestatic Method [c1471] o00000 [u1039] 
L7054:  ifeq L7103 
L7057:  aload_0 
L7058:  getfield Field com/fs/starfarer/combat/CombatState warroom Lcom/fs/starfarer/combat/new/OoOO; 
L7061:  invokevirtual Method com/fs/starfarer/combat/new/OoOO isShowingVideoFeed ()Z 
L7064:  ifne L7103 
L7067:  aload_0 
L7068:  getfield Field com/fs/starfarer/combat/CombatState showWarroom Z 
L7071:  ifne L7086 
L7074:  aload_0 
L7075:  invokevirtual Method com/fs/starfarer/combat/CombatState showWarroom ()V 
L7078:  aload_0 
L7079:  iconst_1 
L7080:  putfield Field com/fs/starfarer/combat/CombatState warroomPinned Z 
L7083:  goto L7095 

        .stack same 
L7086:  aload_0 
L7087:  iconst_0 
L7088:  putfield Field com/fs/starfarer/combat/CombatState warroomPinned Z 
L7091:  aload_0 
L7092:  invokevirtual Method com/fs/starfarer/combat/CombatState hideWarroom ()V 

        .stack same 
L7095:  aload 38 
L7097:  invokevirtual Method com/fs/starfarer/util/A/C consume ()V 
L7100:  goto L7876 

        .stack same 
L7103:  aload 38 
L7105:  getstatic Field [c1459] 'Ô00000' [u1019] 
L7108:  getstatic Field [c1465] 'Ó0O000' [u1030] 
L7111:  invokestatic Method [c1471] o00000 [u1039] 
L7114:  ifeq L7141 
L7117:  aload_0 
L7118:  aload_0 
L7119:  getfield Field com/fs/starfarer/combat/CombatState hideHud Z 
L7122:  ifeq L7129 
L7125:  iconst_0 
L7126:  goto L7130 

        .stack stack_1 Object com/fs/starfarer/combat/CombatState 
L7129:  iconst_1 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Float Float Object com/fs/graphics/Sprite Float Object com/fs/graphics/util/A Integer Integer Integer Integer Integer Object com/fs/graphics/Sprite Object com/fs/starfarer/api/combat/BattleCreationContext Integer Integer Long Float Float Float Float Object org/lwjgl/util/vector/Vector2f Integer Object com/fs/starfarer/api/combat/ViewportAPI Object com/fs/starfarer/combat/new/OoOO$o Float Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/B Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Float Object java/util/List Float Object com/fs/starfarer/util/A/new Integer Object com/fs/starfarer/util/A/C Object java/util/Iterator 
            stack Object com/fs/starfarer/combat/CombatState Integer 
        .end stack 
L7130:  putfield Field com/fs/starfarer/combat/CombatState hideHud Z 
L7133:  aload 38 
L7135:  invokevirtual Method com/fs/starfarer/util/A/C consume ()V 
L7138:  goto L7876 

        .stack same 
L7141:  aload 38 
L7143:  getstatic Field [c1459] 'Ô00000' [u1019] 
L7146:  getstatic Field [c1465] 'super.new' [u1030] 
L7149:  invokestatic Method [c1471] o00000 [u1039] 
L7152:  ifeq L7274 
L7155:  aload_0 
L7156:  getfield Field com/fs/starfarer/combat/CombatState dialogType Lcom/fs/starfarer/combat/CombatState$o; 
L7159:  ifnonnull L7274 
L7162:  aload_0 
L7163:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L7166:  invokevirtual Method com/fs/starfarer/combat/CombatEngine isPaused ()Z 
L7169:  ifne L7231 
L7172:  aload_0 
L7173:  invokevirtual Method com/fs/starfarer/combat/CombatState getMessageWidget ()Lcom/fs/starfarer/class/C; 
L7176:  iconst_1 
L7177:  anewarray java/lang/Object 
L7180:  dup 
L7181:  iconst_0 
L7182:  new java/lang/StringBuilder 
L7185:  dup 
L7186:  ldc_w 'Paused. Press ' 
L7189:  invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L7192:  getstatic Field [c1465] 'super.new' [u1030] 
L7195:  invokestatic Method [c1471] 'Ô00000' [u1182] 
L7198:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L7201:  ldc_w ' again to unpause.' 
L7204:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L7207:  invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L7210:  aastore 
L7211:  invokevirtual Method com/fs/starfarer/class/C o00000 ([Ljava/lang/Object;)Lcom/fs/starfarer/class/O0OO/C; 
L7214:  pop 
L7215:  aload_0 
L7216:  getfield Field com/fs/starfarer/combat/CombatState warroom Lcom/fs/starfarer/combat/new/OoOO; 
L7219:  invokevirtual Method com/fs/starfarer/combat/new/OoOO getPausePlayWidget ()Lcom/fs/starfarer/combat/new/int; 
L7222:  invokevirtual Method com/fs/starfarer/combat/new/int getPauseButton ()Lcom/fs/starfarer/ui/Ooo0OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO; 
L7225:  invokevirtual Method com/fs/starfarer/ui/Ooo0OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO flash ()V 
L7228:  goto L7244 

        .stack same_extended 
L7231:  aload_0 
L7232:  getfield Field com/fs/starfarer/combat/CombatState warroom Lcom/fs/starfarer/combat/new/OoOO; 
L7235:  invokevirtual Method com/fs/starfarer/combat/new/OoOO getPausePlayWidget ()Lcom/fs/starfarer/combat/new/int; 
L7238:  invokevirtual Method com/fs/starfarer/combat/new/int getPlayButton ()Lcom/fs/starfarer/ui/Ooo0OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO; 
L7241:  invokevirtual Method com/fs/starfarer/ui/Ooo0OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO flash ()V 

        .stack same 
L7244:  aload_0 
L7245:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L7248:  aload_0 
L7249:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L7252:  invokevirtual Method com/fs/starfarer/combat/CombatEngine isPaused ()Z 
L7255:  ifeq L7262 
L7258:  iconst_0 
L7259:  goto L7263 

        .stack stack_1 Object com/fs/starfarer/combat/CombatEngine 
L7262:  iconst_1 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Float Float Object com/fs/graphics/Sprite Float Object com/fs/graphics/util/A Integer Integer Integer Integer Integer Object com/fs/graphics/Sprite Object com/fs/starfarer/api/combat/BattleCreationContext Integer Integer Long Float Float Float Float Object org/lwjgl/util/vector/Vector2f Integer Object com/fs/starfarer/api/combat/ViewportAPI Object com/fs/starfarer/combat/new/OoOO$o Float Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/B Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Float Object java/util/List Float Object com/fs/starfarer/util/A/new Integer Object com/fs/starfarer/util/A/C Object java/util/Iterator 
            stack Object com/fs/starfarer/combat/CombatEngine Integer 
        .end stack 
L7263:  invokevirtual Method com/fs/starfarer/combat/CombatEngine setPaused (Z)V 
L7266:  aload 38 
L7268:  invokevirtual Method com/fs/starfarer/util/A/C consume ()V 
L7271:  goto L7876 

        .stack same 
L7274:  aload 38 
L7276:  invokevirtual Method com/fs/starfarer/util/A/C isKeyDownEvent ()Z 
L7279:  ifeq L7646 
L7282:  aload 38 
L7284:  invokevirtual Method com/fs/starfarer/util/A/C getEventValue ()I 
L7287:  istore 40 
L7289:  iload 40 
L7291:  iconst_1 
L7292:  if_icmpne L7333 
L7295:  aload_0 
L7296:  getfield Field com/fs/starfarer/combat/CombatState dialogType Lcom/fs/starfarer/combat/CombatState$o; 
L7299:  ifnonnull L7333 
L7302:  aload_0 
L7303:  getfield Field com/fs/starfarer/combat/CombatState fader Lcom/fs/graphics/util/Fader; 
L7306:  invokevirtual Method com/fs/graphics/util/Fader isFadingOut ()Z 
L7309:  ifne L7333 
L7312:  aload_0 
L7313:  getfield Field com/fs/starfarer/combat/CombatState showWarroom Z 
L7316:  ifeq L7326 
L7319:  aload_0 
L7320:  invokevirtual Method com/fs/starfarer/combat/CombatState hideWarroom ()V 
L7323:  goto L7646 

        .stack append Integer 
L7326:  aload_0 
L7327:  invokevirtual Method com/fs/starfarer/combat/CombatState showBackToMSelDialog ()V 
L7330:  goto L7646 

        .stack same 
L7333:  iload 40 
L7335:  bipush 14 
L7337:  if_icmpne L7378 
L7340:  aload_0 
L7341:  getfield Field com/fs/starfarer/combat/CombatState dialogType Lcom/fs/starfarer/combat/CombatState$o; 
L7344:  ifnonnull L7378 
L7347:  aload_0 
L7348:  getfield Field com/fs/starfarer/combat/CombatState fader Lcom/fs/graphics/util/Fader; 
L7351:  invokevirtual Method com/fs/graphics/util/Fader isFadingOut ()Z 
L7354:  ifne L7378 
L7357:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'OÓ0000' ()Z 
L7360:  ifeq L7378 
L7363:  invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L7366:  iconst_0 
L7367:  invokevirtual Method com/fs/starfarer/combat/CombatEngine setSideWithShipsDeployed (I)V 
L7370:  aload_0 
L7371:  aconst_null 
L7372:  invokevirtual Method com/fs/starfarer/combat/CombatState endCombatAndShowDialogIfMission (Lcom/fs/starfarer/ui/oo0O;)V 
L7375:  goto L7646 

        .stack same 
L7378:  iload 40 
L7380:  bipush 49 
L7382:  if_icmpne L7554 
L7385:  iload 37 
L7387:  ifeq L7554 
L7390:  invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L7393:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getObjects ()Lcom/fs/util/container/repo/ObjectRepository; 
L7396:  ldc_w Class com/fs/starfarer/combat/entities/Ship 
L7399:  invokevirtual Method com/fs/util/container/repo/ObjectRepository getList (Ljava/lang/Class;)Ljava/util/List; 
L7402:  astore 41 
L7404:  aconst_null 
L7405:  astore 42 
L7407:  iconst_0 
L7408:  istore 43 
L7410:  iconst_0 
L7411:  istore 44 
L7413:  aload 41 
L7415:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L7420:  astore 46 
L7422:  goto L7499 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Float Float Object com/fs/graphics/Sprite Float Object com/fs/graphics/util/A Integer Integer Integer Integer Integer Object com/fs/graphics/Sprite Object com/fs/starfarer/api/combat/BattleCreationContext Integer Integer Long Float Float Float Float Object org/lwjgl/util/vector/Vector2f Integer Object com/fs/starfarer/api/combat/ViewportAPI Object com/fs/starfarer/combat/new/OoOO$o Float Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/B Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Float Object java/util/List Float Object com/fs/starfarer/util/A/new Integer Object com/fs/starfarer/util/A/C Object java/util/Iterator Integer Object java/util/List Object com/fs/starfarer/combat/entities/Ship Integer Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L7425:  aload 46 
L7427:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L7432:  checkcast com/fs/starfarer/combat/entities/Ship 
L7435:  astore 45 
L7437:  aload 45 
L7439:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getOwner ()I 
L7442:  aload_0 
L7443:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L7446:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getOwner ()I 
L7449:  if_icmpne L7487 
L7452:  aload 42 
L7454:  ifnonnull L7461 
L7457:  aload 45 
L7459:  astore 42 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Float Float Object com/fs/graphics/Sprite Float Object com/fs/graphics/util/A Integer Integer Integer Integer Integer Object com/fs/graphics/Sprite Object com/fs/starfarer/api/combat/BattleCreationContext Integer Integer Long Float Float Float Float Object org/lwjgl/util/vector/Vector2f Integer Object com/fs/starfarer/api/combat/ViewportAPI Object com/fs/starfarer/combat/new/OoOO$o Float Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/B Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Float Object java/util/List Float Object com/fs/starfarer/util/A/new Integer Object com/fs/starfarer/util/A/C Object java/util/Iterator Integer Object java/util/List Object com/fs/starfarer/combat/entities/Ship Integer Integer Object com/fs/starfarer/combat/entities/Ship Object java/util/Iterator 
            stack 
        .end stack 
L7461:  iload 43 
L7463:  ifeq L7487 
L7466:  aload 45 
L7468:  aload_0 
L7469:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L7472:  if_acmpeq L7487 
L7475:  aload_0 
L7476:  aload 45 
L7478:  invokevirtual Method com/fs/starfarer/combat/CombatState setPlayerShip (Lcom/fs/starfarer/combat/entities/Ship;)V 
L7481:  iconst_1 
L7482:  istore 44 
L7484:  goto L7509 

        .stack same 
L7487:  aload 45 
L7489:  aload_0 
L7490:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L7493:  if_acmpne L7499 
L7496:  iconst_1 
L7497:  istore 43 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Float Float Object com/fs/graphics/Sprite Float Object com/fs/graphics/util/A Integer Integer Integer Integer Integer Object com/fs/graphics/Sprite Object com/fs/starfarer/api/combat/BattleCreationContext Integer Integer Long Float Float Float Float Object org/lwjgl/util/vector/Vector2f Integer Object com/fs/starfarer/api/combat/ViewportAPI Object com/fs/starfarer/combat/new/OoOO$o Float Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/B Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Float Object java/util/List Float Object com/fs/starfarer/util/A/new Integer Object com/fs/starfarer/util/A/C Object java/util/Iterator Integer Object java/util/List Object com/fs/starfarer/combat/entities/Ship Integer Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L7499:  aload 46 
L7501:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L7506:  ifne L7425 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Float Float Object com/fs/graphics/Sprite Float Object com/fs/graphics/util/A Integer Integer Integer Integer Integer Object com/fs/graphics/Sprite Object com/fs/starfarer/api/combat/BattleCreationContext Integer Integer Long Float Float Float Float Object org/lwjgl/util/vector/Vector2f Integer Object com/fs/starfarer/api/combat/ViewportAPI Object com/fs/starfarer/combat/new/OoOO$o Float Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/B Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Float Object java/util/List Float Object com/fs/starfarer/util/A/new Integer Object com/fs/starfarer/util/A/C Object java/util/Iterator Integer Object java/util/List Object com/fs/starfarer/combat/entities/Ship Integer Integer 
            stack 
        .end stack 
L7509:  iload 44 
L7511:  ifne L7525 
L7514:  aload 42 
L7516:  ifnull L7525 
L7519:  aload_0 
L7520:  aload 42 
L7522:  invokevirtual Method com/fs/starfarer/combat/CombatState setPlayerShip (Lcom/fs/starfarer/combat/entities/Ship;)V 

        .stack same 
L7525:  aload_0 
L7526:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L7529:  aload_0 
L7530:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L7533:  invokevirtual Method com/fs/starfarer/combat/CombatEngine setPlayerShip (Lcom/fs/starfarer/combat/entities/Ship;)V 
L7536:  aload_0 
L7537:  getfield Field com/fs/starfarer/combat/CombatState arcRenderer Lcom/fs/starfarer/renderers/super; 
L7540:  aload_0 
L7541:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L7544:  iconst_0 
L7545:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getWeaponGroup (I)Lcom/fs/starfarer/combat/systems/WeaponGroup; 
L7548:  invokevirtual Method com/fs/starfarer/renderers/super 'Ò00000' (Lcom/fs/starfarer/combat/systems/WeaponGroup;)V 
L7551:  goto L7646 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Float Float Object com/fs/graphics/Sprite Float Object com/fs/graphics/util/A Integer Integer Integer Integer Integer Object com/fs/graphics/Sprite Object com/fs/starfarer/api/combat/BattleCreationContext Integer Integer Long Float Float Float Float Object org/lwjgl/util/vector/Vector2f Integer Object com/fs/starfarer/api/combat/ViewportAPI Object com/fs/starfarer/combat/new/OoOO$o Float Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/B Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Float Object java/util/List Float Object com/fs/starfarer/util/A/new Integer Object com/fs/starfarer/util/A/C Object java/util/Iterator Integer 
            stack 
        .end stack 
L7554:  iload 40 
L7556:  bipush 33 
L7558:  if_icmpne L7569 
L7561:  aload 38 
L7563:  invokevirtual Method com/fs/starfarer/util/A/C isCtrlDown ()Z 
L7566:  ifne L7576 

        .stack same 
L7569:  iload 40 
L7571:  bipush 62 
L7573:  if_icmpne L7609 

        .stack same 
L7576:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'OÓ0000' ()Z 
L7579:  ifeq L7609 
L7582:  ldc_w 'fogOfWar' 
L7585:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings class (Ljava/lang/String;)Z 
L7588:  istore 41 
L7590:  ldc_w 'fogOfWar' 
L7593:  iload 41 
L7595:  ifeq L7602 
L7598:  iconst_0 
L7599:  goto L7603 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Float Float Object com/fs/graphics/Sprite Float Object com/fs/graphics/util/A Integer Integer Integer Integer Integer Object com/fs/graphics/Sprite Object com/fs/starfarer/api/combat/BattleCreationContext Integer Integer Long Float Float Float Float Object org/lwjgl/util/vector/Vector2f Integer Object com/fs/starfarer/api/combat/ViewportAPI Object com/fs/starfarer/combat/new/OoOO$o Float Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/B Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Float Object java/util/List Float Object com/fs/starfarer/util/A/new Integer Object com/fs/starfarer/util/A/C Object java/util/Iterator Integer Integer 
            stack Object java/lang/String 
        .end stack 
L7602:  iconst_1 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Float Float Object com/fs/graphics/Sprite Float Object com/fs/graphics/util/A Integer Integer Integer Integer Integer Object com/fs/graphics/Sprite Object com/fs/starfarer/api/combat/BattleCreationContext Integer Integer Long Float Float Float Float Object org/lwjgl/util/vector/Vector2f Integer Object com/fs/starfarer/api/combat/ViewportAPI Object com/fs/starfarer/combat/new/OoOO$o Float Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/B Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Float Object java/util/List Float Object com/fs/starfarer/util/A/new Integer Object com/fs/starfarer/util/A/C Object java/util/Iterator Integer Integer 
            stack Object java/lang/String Integer 
        .end stack 
L7603:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings new (Ljava/lang/String;Z)V 
L7606:  goto L7646 

        .stack chop 1 
L7609:  aload 38 
L7611:  getstatic Field [c1459] 'Ô00000' [u1019] 
L7614:  getstatic Field [c1465] 'Òõ0000' [u1030] 
L7617:  invokestatic Method [c1471] o00000 [u1039] 
L7620:  ifeq L7631 
L7623:  aload_0 
L7624:  iconst_1 
L7625:  putfield Field com/fs/starfarer/combat/CombatState takeSS Z 
L7628:  goto L7646 

        .stack same 
L7631:  iload 40 
L7633:  bipush 24 
L7635:  if_icmpne L7646 
L7638:  iload 37 
L7640:  ifeq L7646 
L7643:  invokestatic Method com/fs/profiler/Profiler return ()V 

        .stack chop 1 
L7646:  aload 38 
L7648:  getstatic Field [c1459] 'Ô00000' [u1019] 
L7651:  getstatic Field [c1465] 'Oõ0000' [u1030] 
L7654:  invokestatic Method [c1471] o00000 [u1039] 
L7657:  ifeq L7876 
L7660:  aconst_null 
L7661:  astore 40 
L7663:  aconst_null 
L7664:  astore 41 
L7666:  aload_0 
L7667:  invokevirtual Method com/fs/starfarer/combat/CombatState getTargetReticleRenderer ()Lcom/fs/starfarer/renderers/A/C; 
L7670:  ifnull L7853 
L7673:  aload_0 
L7674:  invokevirtual Method com/fs/starfarer/combat/CombatState getTargetReticleRenderer ()Lcom/fs/starfarer/renderers/A/C; 
L7677:  invokevirtual Method com/fs/starfarer/renderers/A/C 'super' ()Lcom/fs/starfarer/renderers/A/null; 
L7680:  ifnull L7853 
L7683:  aload_0 
L7684:  invokevirtual Method com/fs/starfarer/combat/CombatState getTargetReticleRenderer ()Lcom/fs/starfarer/renderers/A/C; 
L7687:  invokevirtual Method com/fs/starfarer/renderers/A/C 'super' ()Lcom/fs/starfarer/renderers/A/null; 
L7690:  invokevirtual Method com/fs/starfarer/renderers/A/null int ()Lcom/fs/starfarer/combat/entities/Ship; 
L7693:  ifnull L7853 
L7696:  aload_0 
L7697:  invokevirtual Method com/fs/starfarer/combat/CombatState getTargetReticleRenderer ()Lcom/fs/starfarer/renderers/A/C; 
L7700:  invokevirtual Method com/fs/starfarer/renderers/A/C 'super' ()Lcom/fs/starfarer/renderers/A/null; 
L7703:  invokevirtual Method com/fs/starfarer/renderers/A/null int ()Lcom/fs/starfarer/combat/entities/Ship; 
L7706:  astore 42 
L7708:  aload 42 
L7710:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isFighter ()Z 
L7713:  ifeq L7790 
L7716:  aload 42 
L7718:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L7721:  ldc_w 'show_in_codex_as_ship' 
L7724:  invokevirtual Method com/fs/starfarer/loading/specs/g hasTag (Ljava/lang/String;)Z 
L7727:  ifne L7790 
L7730:  aload 42 
L7732:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getWing ()Lcom/fs/starfarer/combat/ai/M; 
L7735:  ifnull L7790 
L7738:  aload 42 
L7740:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getWing ()Lcom/fs/starfarer/combat/ai/M; 
L7743:  invokevirtual Method com/fs/starfarer/combat/ai/M getWingId ()Ljava/lang/String; 
L7746:  invokestatic Method com/fs/starfarer/api/impl/codex/CodexDataV2 getFighterEntryId (Ljava/lang/String;)Ljava/lang/String; 
L7749:  astore 40 
L7751:  aload 42 
L7753:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getWing ()Lcom/fs/starfarer/combat/ai/M; 
L7756:  invokevirtual Method com/fs/starfarer/combat/ai/M getSpec ()Lcom/fs/starfarer/loading/specs/FighterWingSpec; 
L7759:  ldc_w 'codex_unlockable' 
L7762:  invokevirtual Method com/fs/starfarer/loading/specs/FighterWingSpec hasTag (Ljava/lang/String;)Z 
L7765:  ifeq L7853 
L7768:  invokestatic Method com/fs/starfarer/api/impl/SharedUnlockData get ()Lcom/fs/starfarer/api/impl/SharedUnlockData; 
L7771:  aload 42 
L7773:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getWing ()Lcom/fs/starfarer/combat/ai/M; 
L7776:  invokevirtual Method com/fs/starfarer/combat/ai/M getSpec ()Lcom/fs/starfarer/loading/specs/FighterWingSpec; 
L7779:  invokevirtual Method com/fs/starfarer/loading/specs/FighterWingSpec getId ()Ljava/lang/String; 
L7782:  iconst_1 
L7783:  invokevirtual Method com/fs/starfarer/api/impl/SharedUnlockData reportPlayerAwareOfFighter (Ljava/lang/String;Z)Z 
L7786:  pop 
L7787:  goto L7853 

        .stack append Object java/lang/String Object com/fs/starfarer/campaign/fleet/FleetMember Object com/fs/starfarer/combat/entities/Ship 
L7790:  aload 42 
L7792:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getFleetMember ()Lcom/fs/starfarer/api/fleet/FleetMemberAPI; 
L7795:  checkcast com/fs/starfarer/campaign/fleet/FleetMember 
L7798:  astore 41 
L7800:  aload 41 
L7802:  ifnonnull L7823 
L7805:  new com/fs/starfarer/campaign/fleet/FleetMember 
L7808:  dup 
L7809:  iconst_0 
L7810:  aload 42 
L7812:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getVariant ()Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L7815:  getstatic Field com/fs/starfarer/api/fleet/FleetMemberType SHIP Lcom/fs/starfarer/api/fleet/FleetMemberType; 
L7818:  invokespecial Method com/fs/starfarer/campaign/fleet/FleetMember <init> (ILcom/fs/starfarer/loading/specs/HullVariantSpec;Lcom/fs/starfarer/api/fleet/FleetMemberType;)V 
L7821:  astore 41 

        .stack same 
L7823:  aload 42 
L7825:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L7828:  ldc_w 'codex_unlockable' 
L7831:  invokevirtual Method com/fs/starfarer/loading/specs/g hasTag (Ljava/lang/String;)Z 
L7834:  ifeq L7853 
L7837:  invokestatic Method com/fs/starfarer/api/impl/SharedUnlockData get ()Lcom/fs/starfarer/api/impl/SharedUnlockData; 
L7840:  aload 42 
L7842:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L7845:  invokevirtual Method com/fs/starfarer/loading/specs/g getHullId ()Ljava/lang/String; 
L7848:  iconst_1 
L7849:  invokevirtual Method com/fs/starfarer/api/impl/SharedUnlockData reportPlayerAwareOfShip (Ljava/lang/String;Z)Z 
L7852:  pop 

        .stack chop 1 
L7853:  aload 41 
L7855:  ifnull L7866 
L7858:  aload 41 
L7860:  invokestatic Method com/fs/starfarer/codex2/CodexDialog showTemp (Lcom/fs/starfarer/api/fleet/FleetMemberAPI;)V 
L7863:  goto L7871 

        .stack same 
L7866:  aload 40 
L7868:  invokestatic Method com/fs/starfarer/codex2/CodexDialog show (Ljava/lang/String;)V 

        .stack same 
L7871:  aload 38 
L7873:  invokevirtual Method com/fs/starfarer/util/A/C consume ()V 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Float Float Object com/fs/graphics/Sprite Float Object com/fs/graphics/util/A Integer Integer Integer Integer Integer Object com/fs/graphics/Sprite Object com/fs/starfarer/api/combat/BattleCreationContext Integer Integer Long Float Float Float Float Object org/lwjgl/util/vector/Vector2f Integer Object com/fs/starfarer/api/combat/ViewportAPI Object com/fs/starfarer/combat/new/OoOO$o Float Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/B Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Float Object java/util/List Float Object com/fs/starfarer/util/A/new Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L7876:  aload 39 
L7878:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L7883:  ifne L5849 
L7886:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L7889:  aload_0 
L7890:  getfield Field com/fs/starfarer/combat/CombatState nextState Ljava/lang/String; 
L7893:  ifnull L8037 
L7896:  aload_0 
L7897:  getfield Field com/fs/starfarer/combat/CombatState fader Lcom/fs/graphics/util/Fader; 
L7900:  invokevirtual Method com/fs/graphics/util/Fader getBrightness ()F 
L7903:  fconst_0 
L7904:  fcmpl 
L7905:  ifne L8037 
L7908:  aload_0 
L7909:  getfield Field com/fs/starfarer/combat/CombatState nextState Ljava/lang/String; 
L7912:  astore 38 
L7914:  aload_0 
L7915:  aconst_null 
L7916:  putfield Field com/fs/starfarer/combat/CombatState nextState Ljava/lang/String; 
L7919:  aload_0 
L7920:  aconst_null 
L7921:  putfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L7924:  aload_0 
L7925:  aconst_null 
L7926:  putfield Field com/fs/starfarer/combat/CombatState prevAI Lcom/fs/starfarer/combat/ai/AI; 
L7929:  aload_0 
L7930:  aconst_null 
L7931:  putfield Field com/fs/starfarer/combat/CombatState tutorialOverlay Lcom/fs/starfarer/tutorial/H; 
L7934:  aload_0 
L7935:  aconst_null 
L7936:  putfield Field com/fs/starfarer/combat/CombatState entityToFollow Lcom/fs/starfarer/combat/new/OoOO$o; 
L7939:  aload_0 
L7940:  aconst_null 
L7941:  putfield Field com/fs/starfarer/combat/CombatState dialogType Lcom/fs/starfarer/combat/CombatState$o; 
L7944:  aload_0 
L7945:  aconst_null 
L7946:  putfield Field com/fs/starfarer/combat/CombatState viewMouseOffset Lcom/fs/starfarer/combat/L; 
L7949:  aload_0 
L7950:  aconst_null 
L7951:  putfield Field com/fs/starfarer/combat/CombatState zoomTracker Lcom/fs/starfarer/util/A; 
L7954:  aload_0 
L7955:  aconst_null 
L7956:  putfield Field com/fs/starfarer/combat/CombatState arcRenderer Lcom/fs/starfarer/renderers/super; 
L7959:  aload_0 
L7960:  aconst_null 
L7961:  putfield Field com/fs/starfarer/combat/CombatState waypointRenderer Lcom/fs/starfarer/renderers/B; 
L7964:  aload_0 
L7965:  aconst_null 
L7966:  putfield Field com/fs/starfarer/combat/CombatState widgetPanel Lcom/fs/starfarer/ui/interfacenew; 
L7969:  aload_0 
L7970:  iconst_0 
L7971:  putfield Field com/fs/starfarer/combat/CombatState showingCodex Z 
L7974:  aload_0 
L7975:  aconst_null 
L7976:  putfield Field com/fs/starfarer/combat/CombatState codexOverlay Lcom/fs/starfarer/ui/interfacenew; 
L7979:  aload_0 
L7980:  aconst_null 
L7981:  putfield Field com/fs/starfarer/combat/CombatState ribbon Lcom/fs/starfarer/class/C/C; 
L7984:  aload_0 
L7985:  aconst_null 
L7986:  putfield Field com/fs/starfarer/combat/CombatState targetReticleRenderer Lcom/fs/starfarer/renderers/A/C; 
L7989:  aload_0 
L7990:  aconst_null 
L7991:  putfield Field com/fs/starfarer/combat/CombatState messageWidget Lcom/fs/starfarer/class/C; 
L7994:  aload_0 
L7995:  aconst_null 
L7996:  putfield Field com/fs/starfarer/combat/CombatState shipInfo Lcom/fs/starfarer/class/new/return; 
L7999:  aload_0 
L8000:  aconst_null 
L8001:  putfield Field com/fs/starfarer/combat/CombatState warroom Lcom/fs/starfarer/combat/new/OoOO; 
L8004:  aload_0 
L8005:  aconst_null 
L8006:  putfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L8009:  aload_0 
L8010:  aconst_null 
L8011:  putfield Field com/fs/starfarer/combat/CombatState playerShipShieldAI Lcom/fs/starfarer/combat/ai/OmniShieldControlAI; 
L8014:  aload_0 
L8015:  aconst_null 
L8016:  putfield Field com/fs/starfarer/combat/CombatState playerShipShieldAIFlags Lcom/fs/starfarer/api/combat/ShipwideAIFlags; 
L8019:  aload_0 
L8020:  iconst_0 
L8021:  putfield Field com/fs/starfarer/combat/CombatState wantShieldOnForAutoOmni Z 
L8024:  invokestatic Method com/fs/starfarer/ui/W new ()V 
L8027:  aload 38 
L8029:  astore 49 
L8031:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L8034:  aload 49 
L8036:  areturn 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Float Float Object com/fs/graphics/Sprite Float Object com/fs/graphics/util/A Integer Integer Integer Integer Integer Object com/fs/graphics/Sprite Object com/fs/starfarer/api/combat/BattleCreationContext Integer Integer Long Float Float Float Float Object org/lwjgl/util/vector/Vector2f Integer Object com/fs/starfarer/api/combat/ViewportAPI Object com/fs/starfarer/combat/new/OoOO$o Float Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/B Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Float Object java/util/List Float Object com/fs/starfarer/util/A/new Integer 
            stack 
        .end stack 
L8037:  invokestatic Method com/fs/graphics/util/B 'Ô00000' ()J 
L8040:  lload 16 
L8042:  lsub 
L8043:  l2f 
L8044:  ldc_w +1000.0f 
L8047:  fdiv 
L8048:  fstore 38 
L8050:  fconst_1 
L8051:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'oØ0000' ()F 
L8054:  fdiv 
L8055:  fload 38 
L8057:  fsub 
L8058:  fconst_0 
L8059:  invokestatic Method java/lang/Math max (FF)F 
L8062:  fstore 39 
L8064:  ldc_w 'Updating display (incl. vsync)' 
L8067:  invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L8070:  fconst_0 
L8071:  fstore 40 
L8073:  invokestatic Method com/fs/graphics/util/B 'Ô00000' ()J 
L8076:  lstore 41 
L8078:  ldc_w 'useGLFlush' 
L8081:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings class (Ljava/lang/String;)Z 
L8084:  ifeq L8090 
L8087:  invokestatic Method com/genir/renderer/bridge/GL11 glFlush ()V 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Float Float Object com/fs/graphics/Sprite Float Object com/fs/graphics/util/A Integer Integer Integer Integer Integer Object com/fs/graphics/Sprite Object com/fs/starfarer/api/combat/BattleCreationContext Integer Integer Long Float Float Float Float Object org/lwjgl/util/vector/Vector2f Integer Object com/fs/starfarer/api/combat/ViewportAPI Object com/fs/starfarer/combat/new/OoOO$o Float Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/B Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Float Object java/util/List Float Object com/fs/starfarer/util/A/new Integer Float Float Float Long 
            stack 
        .end stack 
L8090:  ldc_w 'useGLFinish' 
L8093:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings class (Ljava/lang/String;)Z 
L8096:  ifeq L8102 
L8099:  invokestatic Method com/genir/renderer/bridge/GL11 glFinish ()V 

        .stack same 
L8102:  iconst_1 
L8103:  invokestatic Method org/lwjgl/opengl/Display update (Z)V 
L8106:  invokestatic Method com/fs/graphics/util/B 'Ô00000' ()J 
L8109:  lstore 43 
L8111:  lload 43 
L8113:  lload 41 
L8115:  lsub 
L8116:  lstore 45 
L8118:  lload 45 
L8120:  l2f 
L8121:  ldc_w +1000.0f 
L8124:  fdiv 
L8125:  fstore 40 
L8127:  aload_0 
L8128:  getfield Field com/fs/starfarer/combat/CombatState takeSS Z 
L8131:  ifeq L8142 
L8134:  invokestatic Method com/fs/starfarer/util/return o00000 ()V 
L8137:  aload_0 
L8138:  iconst_0 
L8139:  putfield Field com/fs/starfarer/combat/CombatState takeSS Z 

        .stack chop 1 
L8142:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L8145:  ldc_w 'CombatState sleeping' 
L8148:  invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L8151:  invokestatic Method com/fs/graphics/util/B 'Ô00000' ()J 
L8154:  lstore 41 
L8156:  lload 41 
L8158:  lload 16 
L8160:  lsub 
L8161:  l2f 
L8162:  ldc_w +1000.0f 
L8165:  fdiv 
L8166:  fstore 43 
L8168:  fconst_1 
L8169:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'oØ0000' ()F 
L8172:  fdiv 
L8173:  fload 43 
L8175:  fsub 
L8176:  fconst_0 
L8177:  invokestatic Method java/lang/Math max (FF)F 
L8180:  fstore 44 
L8182:  invokestatic Method com/fs/graphics/util/B 'Ô00000' ()J 
L8185:  lstore 45 
        .catch java/lang/Exception from L8187 to L8288 using L8291 
        .catch [0] from L1657 to L8031 using L8326 
        .catch [0] from L8037 to L8326 using L8326 
L8187:  fload 44 
L8189:  ldc_w +1000.0f 
L8192:  fmul 
L8193:  f2i 
L8194:  istore 47 
L8196:  iload 47 
L8198:  iload 7 
L8200:  if_icmpge L8207 
L8203:  iload 47 
L8205:  istore 7 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Float Float Object com/fs/graphics/Sprite Float Object com/fs/graphics/util/A Integer Integer Integer Integer Integer Object com/fs/graphics/Sprite Object com/fs/starfarer/api/combat/BattleCreationContext Integer Integer Long Float Float Float Float Object org/lwjgl/util/vector/Vector2f Integer Object com/fs/starfarer/api/combat/ViewportAPI Object com/fs/starfarer/combat/new/OoOO$o Float Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/B Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Float Object java/util/List Float Object com/fs/starfarer/util/A/new Integer Float Float Float Long Float Float Long Integer 
            stack 
        .end stack 
L8207:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'OÓ0000' ()Z 
L8210:  ifeq L8248 
L8213:  iload_1 
L8214:  ifne L8248 
L8217:  bipush 24 
L8219:  invokestatic Method org/lwjgl/input/Keyboard isKeyDown (I)Z 
L8222:  ifne L8277 
L8225:  iload 15 
L8227:  ifeq L8239 
L8230:  ldc_w 'CombatState main loop (C2)' 
L8233:  invokestatic Method com/fs/profiler/Profiler o00000 (Ljava/lang/String;)V 
L8236:  goto L8277 

        .stack same 
L8239:  ldc_w 'CombatState main loop (combat)' 
L8242:  invokestatic Method com/fs/profiler/Profiler o00000 (Ljava/lang/String;)V 
L8245:  goto L8277 

        .stack same 
L8248:  iload 47 
L8250:  ifgt L8257 
L8253:  iload_1 
L8254:  ifeq L8277 

        .stack same 
L8257:  iload 15 
L8259:  ifeq L8271 
L8262:  ldc_w 'CombatState main loop (C2)' 
L8265:  invokestatic Method com/fs/profiler/Profiler o00000 (Ljava/lang/String;)V 
L8268:  goto L8277 

        .stack same 
L8271:  ldc_w 'CombatState main loop (combat)' 
L8274:  invokestatic Method com/fs/profiler/Profiler o00000 (Ljava/lang/String;)V 

        .stack same 
L8277:  iload 47 
L8279:  ifle L8303 
L8282:  iload 47 
L8284:  i2l 
L8285:  invokestatic Method java/lang/Thread sleep (J)V 
L8288:  goto L8303 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Float Float Object com/fs/graphics/Sprite Float Object com/fs/graphics/util/A Integer Integer Integer Integer Integer Object com/fs/graphics/Sprite Object com/fs/starfarer/api/combat/BattleCreationContext Integer Integer Long Float Float Float Float Object org/lwjgl/util/vector/Vector2f Integer Object com/fs/starfarer/api/combat/ViewportAPI Object com/fs/starfarer/combat/new/OoOO$o Float Float Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/combat/E/B Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Float Object java/util/List Float Object com/fs/starfarer/util/A/new Integer Float Float Float Long Float Float Long 
            stack Object java/lang/Exception 
        .end stack 
L8291:  astore 47 
L8293:  getstatic Field com/fs/starfarer/combat/CombatState log Lorg/apache/log4j/Logger; 
L8296:  aload 47 
L8298:  aload 47 
L8300:  invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;Ljava/lang/Throwable;)V 

        .stack same 
L8303:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L8306:  fload 43 
L8308:  fload 44 
L8310:  fadd 
L8311:  fstore 5 
L8313:  aload 6 
L8315:  fload 44 
L8317:  fload 40 
L8319:  fadd 
L8320:  invokevirtual Method com/fs/graphics/util/A 'super' (F)V 
L8323:  goto L8334 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Float Float Object com/fs/graphics/Sprite Float Object com/fs/graphics/util/A Integer Integer Integer Integer Integer Object com/fs/graphics/Sprite Object com/fs/starfarer/api/combat/BattleCreationContext Integer 
            stack Object java/lang/Throwable 
        .end stack 
L8326:  astore 48 
L8328:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L8331:  aload 48 
L8333:  athrow 

        .stack same 
L8334:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L8337:  goto L1487 
L8340:  
    .end code 
.end method 

.method public getRibbon : ()Lcom/fs/starfarer/class/C/C; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatState ribbon Lcom/fs/starfarer/class/C/C; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public showWarroom : ()V 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatState showWarroom Z 
L4:     ifne L29 
L7:     aload_0 
L8:     iconst_1 
L9:     putfield Field com/fs/starfarer/combat/CombatState showWarroom Z 
L12:    aload_0 
L13:    getfield Field com/fs/starfarer/combat/CombatState warroom Lcom/fs/starfarer/combat/new/OoOO; 
L16:    invokevirtual Method com/fs/starfarer/combat/new/OoOO show ()V 
L19:    aload_0 
L20:    getfield Field com/fs/starfarer/combat/CombatState shipInfo Lcom/fs/starfarer/class/new/return; 
L23:    invokevirtual Method com/fs/starfarer/class/new/return getFader ()Lcom/fs/graphics/util/Fader; 
L26:    invokevirtual Method com/fs/graphics/util/Fader fadeOut ()V 

        .stack same 
L29:    return 
L30:    
    .end code 
.end method 

.method public isShowingCommandUI : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatState showWarroom Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public getCommandUIOpacity : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatState warroom Lcom/fs/starfarer/combat/new/OoOO; 
L4:     ifnonnull L9 
L7:     fconst_0 
L8:     freturn 

        .stack same 
L9:     aload_0 
L10:    getfield Field com/fs/starfarer/combat/CombatState warroom Lcom/fs/starfarer/combat/new/OoOO; 
L13:    invokevirtual Method com/fs/starfarer/combat/new/OoOO getFader ()Lcom/fs/graphics/util/Fader; 
L16:    invokevirtual Method com/fs/graphics/util/Fader getBrightness ()F 
L19:    freturn 
L20:    
    .end code 
.end method 

.method public hideWarroom : ()V 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatState showWarroom Z 
L4:     ifeq L29 
L7:     aload_0 
L8:     iconst_0 
L9:     putfield Field com/fs/starfarer/combat/CombatState showWarroom Z 
L12:    aload_0 
L13:    getfield Field com/fs/starfarer/combat/CombatState warroom Lcom/fs/starfarer/combat/new/OoOO; 
L16:    invokevirtual Method com/fs/starfarer/combat/new/OoOO hide ()V 
L19:    aload_0 
L20:    getfield Field com/fs/starfarer/combat/CombatState shipInfo Lcom/fs/starfarer/class/new/return; 
L23:    invokevirtual Method com/fs/starfarer/class/new/return getFader ()Lcom/fs/graphics/util/Fader; 
L26:    invokevirtual Method com/fs/graphics/util/Fader fadeIn ()V 

        .stack same 
L29:    return 
L30:    
    .end code 
.end method 

.method public setPlayerShip : (Lcom/fs/starfarer/combat/entities/Ship;)V 
    .code stack 5 locals 3 
L0:     aload_1 
L1:     aload_0 
L2:     getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L5:     if_acmpne L9 
L8:     return 

        .stack same 
L9:     aload_0 
L10:    getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L13:    ifnull L129 
L16:    aload_0 
L17:    getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L20:    invokevirtual Method com/fs/starfarer/combat/entities/Ship isShuttlePod ()Z 
L23:    ifne L129 
L26:    invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L29:    invokevirtual Method com/fs/starfarer/combat/CombatEngine doNotEndCombat ()Z 
L32:    ifeq L44 
L35:    invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L38:    invokevirtual Method com/fs/starfarer/combat/CombatEngine isSimulation ()Z 
L41:    ifeq L129 

        .stack same 
L44:    aload_0 
L45:    getfield Field com/fs/starfarer/combat/CombatState prevAI Lcom/fs/starfarer/combat/ai/AI; 
L48:    ifnull L75 
L51:    aload_0 
L52:    getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L55:    invokevirtual Method com/fs/starfarer/combat/entities/Ship isHulk ()Z 
L58:    ifne L75 
L61:    aload_0 
L62:    getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L65:    aload_0 
L66:    getfield Field com/fs/starfarer/combat/CombatState prevAI Lcom/fs/starfarer/combat/ai/AI; 
L69:    invokevirtual Method com/fs/starfarer/combat/entities/Ship setAI (Lcom/fs/starfarer/combat/ai/AI;)V 
L72:    goto L129 

        .stack same 
L75:    aload_0 
L76:    getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L79:    invokevirtual Method com/fs/starfarer/combat/entities/Ship isHulk ()Z 
L82:    ifne L129 
L85:    aload_0 
L86:    getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L89:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerFleetManager ()Lcom/fs/starfarer/combat/CombatFleetManager; 
L92:    aload_0 
L93:    getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L96:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getDeployedFleetMember (Lcom/fs/starfarer/combat/entities/Ship;)Lcom/fs/starfarer/combat/CombatFleetManager$O0; 
L99:    astore_2 
L100:   aload_0 
L101:   getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L104:   invokestatic Method com/fs/starfarer/launcher/ModManager getInstance ()Lcom/fs/starfarer/launcher/ModManager; 
L107:   aload_2 
L108:   ifnonnull L115 
L111:   aconst_null 
L112:   goto L119 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/CombatFleetManager$O0 
            stack Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/launcher/ModManager 
        .end stack 
L115:   aload_2 
L116:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getMember ()Lcom/fs/starfarer/campaign/fleet/FleetMember; 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/CombatFleetManager$O0 
            stack Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/launcher/ModManager Object com/fs/starfarer/campaign/fleet/FleetMember 
        .end stack 
L119:   aload_0 
L120:   getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L123:   invokevirtual Method com/fs/starfarer/launcher/ModManager pickShipAIPlugin (Lcom/fs/starfarer/campaign/fleet/FleetMember;Lcom/fs/starfarer/api/combat/ShipAPI;)Lcom/fs/starfarer/api/combat/ShipAIPlugin; 
L126:   invokevirtual Method com/fs/starfarer/combat/entities/Ship setShipAI (Lcom/fs/starfarer/api/combat/ShipAIPlugin;)V 

        .stack chop 1 
L129:   aload_1 
L130:   ifnull L153 
L133:   aload_1 
L134:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isShuttlePod ()Z 
L137:   ifne L153 
L140:   aload_0 
L141:   aload_1 
L142:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getAI ()Lcom/fs/starfarer/combat/ai/AI; 
L145:   putfield Field com/fs/starfarer/combat/CombatState prevAI Lcom/fs/starfarer/combat/ai/AI; 
L148:   aload_1 
L149:   aconst_null 
L150:   invokevirtual Method com/fs/starfarer/combat/entities/Ship setAI (Lcom/fs/starfarer/combat/ai/AI;)V 

        .stack same 
L153:   aload_0 
L154:   aload_1 
L155:   putfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L158:   aload_0 
L159:   iconst_0 
L160:   putfield Field com/fs/starfarer/combat/CombatState wantShieldOnForAutoOmni Z 
L163:   aload_0 
L164:   iconst_0 
L165:   putfield Field com/fs/starfarer/combat/CombatState canAutoOverrideShieldFacing Z 
L168:   aload_0 
L169:   getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L172:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getShield ()Lcom/fs/starfarer/combat/systems/G; 
L175:   ifnull L224 
L178:   aload_0 
L179:   getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L182:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getShield ()Lcom/fs/starfarer/combat/systems/G; 
L185:   invokevirtual Method com/fs/starfarer/combat/systems/G isOmni ()Z 
L188:   ifeq L224 
L191:   aload_0 
L192:   new com/fs/starfarer/api/combat/ShipwideAIFlags 
L195:   dup 
L196:   invokespecial Method com/fs/starfarer/api/combat/ShipwideAIFlags <init> ()V 
L199:   putfield Field com/fs/starfarer/combat/CombatState playerShipShieldAIFlags Lcom/fs/starfarer/api/combat/ShipwideAIFlags; 
L202:   aload_0 
L203:   new com/fs/starfarer/combat/ai/OmniShieldControlAI 
L206:   dup 
L207:   aload_0 
L208:   getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L211:   aload_0 
L212:   getfield Field com/fs/starfarer/combat/CombatState playerShipShieldAIFlags Lcom/fs/starfarer/api/combat/ShipwideAIFlags; 
L215:   invokespecial Method com/fs/starfarer/combat/ai/OmniShieldControlAI <init> (Lcom/fs/starfarer/combat/entities/Ship;Lcom/fs/starfarer/api/combat/ShipwideAIFlags;)V 
L218:   putfield Field com/fs/starfarer/combat/CombatState playerShipShieldAI Lcom/fs/starfarer/combat/ai/OmniShieldControlAI; 
L221:   goto L234 

        .stack same_extended 
L224:   aload_0 
L225:   aconst_null 
L226:   putfield Field com/fs/starfarer/combat/CombatState playerShipShieldAI Lcom/fs/starfarer/combat/ai/OmniShieldControlAI; 
L229:   aload_0 
L230:   aconst_null 
L231:   putfield Field com/fs/starfarer/combat/CombatState playerShipShieldAIFlags Lcom/fs/starfarer/api/combat/ShipwideAIFlags; 

        .stack same 
L234:   aload_0 
L235:   getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L238:   ifnull L263 
L241:   aload_0 
L242:   getfield Field com/fs/starfarer/combat/CombatState arcRenderer Lcom/fs/starfarer/renderers/super; 
L245:   aload_0 
L246:   getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L249:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getSelectedGroup ()Lcom/fs/starfarer/combat/systems/WeaponGroup; 
L252:   invokevirtual Method com/fs/starfarer/renderers/super 'Ò00000' (Lcom/fs/starfarer/combat/systems/WeaponGroup;)V 
L255:   aload_0 
L256:   aload_0 
L257:   getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L260:   invokevirtual Method com/fs/starfarer/combat/CombatState setSelectedShip (Lcom/fs/starfarer/combat/entities/Ship;)V 

        .stack same 
L263:   aload_0 
L264:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L267:   aload_0 
L268:   getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L271:   invokevirtual Method com/fs/starfarer/combat/CombatEngine setPlayerShip (Lcom/fs/starfarer/combat/entities/Ship;)V 
L274:   aload_0 
L275:   getfield Field com/fs/starfarer/combat/CombatState viewMouseOffset Lcom/fs/starfarer/combat/L; 
L278:   fconst_0 
L279:   fconst_0 
L280:   invokeinterface InterfaceMethod com/fs/starfarer/combat/L 'super' (FF)V 3 
L285:   aload_0 
L286:   getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L289:   invokevirtual Method com/fs/starfarer/combat/entities/Ship controlsLocked ()Z 
L292:   ifeq L339 
L295:   aload_0 
L296:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L299:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerFleetManager ()Lcom/fs/starfarer/combat/CombatFleetManager; 
L302:   aload_0 
L303:   getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L306:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getDeployedFleetMember (Lcom/fs/starfarer/combat/entities/Ship;)Lcom/fs/starfarer/combat/CombatFleetManager$O0; 
L309:   astore_2 
L310:   aload_0 
L311:   getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L314:   invokestatic Method com/fs/starfarer/launcher/ModManager getInstance ()Lcom/fs/starfarer/launcher/ModManager; 
L317:   aload_2 
L318:   ifnonnull L325 
L321:   aconst_null 
L322:   goto L329 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/CombatFleetManager$O0 
            stack Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/launcher/ModManager 
        .end stack 
L325:   aload_2 
L326:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getMember ()Lcom/fs/starfarer/campaign/fleet/FleetMember; 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/CombatFleetManager$O0 
            stack Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/launcher/ModManager Object com/fs/starfarer/campaign/fleet/FleetMember 
        .end stack 
L329:   aload_0 
L330:   getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L333:   invokevirtual Method com/fs/starfarer/launcher/ModManager pickShipAIPlugin (Lcom/fs/starfarer/campaign/fleet/FleetMember;Lcom/fs/starfarer/api/combat/ShipAPI;)Lcom/fs/starfarer/api/combat/ShipAIPlugin; 
L336:   invokevirtual Method com/fs/starfarer/combat/entities/Ship setShipAI (Lcom/fs/starfarer/api/combat/ShipAIPlugin;)V 

        .stack chop 1 
L339:   return 
L340:   
    .end code 
.end method 

.method public setTargetShip : (Lcom/fs/starfarer/combat/entities/Ship;)V 
    .code stack 2 locals 2 
L0:     aload_1 
L1:     ifnonnull L9 
L4:     aload_0 
L5:     aconst_null 
L6:     invokevirtual Method com/fs/starfarer/combat/CombatState setVideoFeedSource (Lcom/fs/starfarer/combat/new/OoOO$o;)V 

        .stack same 
L9:     aload_0 
L10:    getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L13:    aload_1 
L14:    invokevirtual Method com/fs/starfarer/combat/entities/Ship setShipTarget (Lcom/fs/starfarer/api/combat/ShipAPI;)V 
L17:    return 
L18:    
    .end code 
.end method 

.method private updateShieldOffset : ()V 
    .code stack 3 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L4:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L11:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getMouseTarget ()Lorg/lwjgl/util/vector/Vector2f; 
L14:    invokestatic Method com/fs/starfarer/prototype/Utils 'Ó00000' (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)F 
L17:    fstore_1 
L18:    aload_0 
L19:    fload_1 
L20:    aload_0 
L21:    getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L24:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getFacing ()F 
L27:    fsub 
L28:    putfield Field com/fs/starfarer/combat/CombatState shieldAngleOffset F 
L31:    return 
L32:    
    .end code 
.end method 

.method public isDisablePlayerShipControlOneFrame : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatState disablePlayerShipControlOneFrame Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public setDisablePlayerShipControlOneFrame : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/CombatState disablePlayerShipControlOneFrame Z 
L5:     return 
L6:     
    .end code 
.end method 

.method private controlPlayerShip : (Lcom/fs/starfarer/util/A/new;F)V 
    .code stack 8 locals 21 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatState showingCodex Z 
L4:     ifeq L8 
L7:     return 

        .stack same 
L8:     aload_0 
L9:     dup 
L10:    getfield Field com/fs/starfarer/combat/CombatState elapsedSinceMessage F 
L13:    fload_2 
L14:    fadd 
L15:    putfield Field com/fs/starfarer/combat/CombatState elapsedSinceMessage F 
L18:    aload_0 
L19:    getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L22:    invokevirtual Method com/fs/starfarer/combat/CombatEngine isPaused ()Z 
L25:    ifeq L44 
L28:    invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'OÓ0000' ()Z 
L31:    ifne L44 
L34:    ldc_w 'allowShipControlWhilePaused' 
L37:    invokestatic Method com/fs/starfarer/settings/StarfarerSettings class (Ljava/lang/String;)Z 
L40:    ifne L44 
L43:    return 

        .stack same 
L44:    aload_0 
L45:    getfield Field com/fs/starfarer/combat/CombatState disablePlayerShipControlOneFrame Z 
L48:    ifeq L57 
L51:    aload_0 
L52:    iconst_0 
L53:    putfield Field com/fs/starfarer/combat/CombatState disablePlayerShipControlOneFrame Z 
L56:    return 

        .stack same 
L57:    aload_0 
L58:    getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L61:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getShield ()Lcom/fs/starfarer/combat/systems/G; 
L64:    ifnull L80 
L67:    aload_0 
L68:    getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L71:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getShield ()Lcom/fs/starfarer/combat/systems/G; 
L74:    invokevirtual Method com/fs/starfarer/combat/systems/G isOff ()Z 
L77:    ifeq L86 

        .stack same 
L80:    aload_0 
L81:    ldc +3.4028234663852886e+38f 
L83:    putfield Field com/fs/starfarer/combat/CombatState shieldLockOffset F 

        .stack same 
L86:    aload_1 
L87:    invokevirtual Method com/fs/starfarer/util/A/new iterator ()Ljava/util/Iterator; 
L90:    astore 4 
L92:    goto L279 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Object com/fs/starfarer/util/A/new Float Top Object java/util/Iterator 
            stack 
        .end stack 
L95:    aload 4 
L97:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L102:   checkcast com/fs/starfarer/util/A/C 
L105:   astore_3 
L106:   aload_3 
L107:   invokevirtual Method com/fs/starfarer/util/A/C isConsumed ()Z 
L110:   ifeq L116 
L113:   goto L279 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Object com/fs/starfarer/util/A/new Float Object com/fs/starfarer/util/A/C Object java/util/Iterator 
            stack 
        .end stack 
L116:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'OÓ0000' ()Z 
L119:   ifeq L279 
L122:   aload_3 
L123:   invokevirtual Method com/fs/starfarer/util/A/C isKeyDownEvent ()Z 
L126:   ifeq L279 
L129:   aload_3 
L130:   invokevirtual Method com/fs/starfarer/util/A/C getEventValue ()I 
L133:   bipush 24 
L135:   if_icmpne L279 
L138:   new com/fs/starfarer/api/impl/combat/NegativeExplosionVisual$NEParams 
L141:   dup 
L142:   invokespecial Method com/fs/starfarer/api/impl/combat/NegativeExplosionVisual$NEParams <init> ()V 
L145:   astore 5 
L147:   aload 5 
L149:   ldc_w +50.0f 
L152:   putfield Field com/fs/starfarer/api/impl/combat/NegativeExplosionVisual$NEParams radius F 
L155:   aload 5 
L157:   ldc_w +0.75f 
L160:   putfield Field com/fs/starfarer/api/impl/combat/NegativeExplosionVisual$NEParams hitGlowSizeMult F 
L163:   aload 5 
L165:   fconst_1 
L166:   putfield Field com/fs/starfarer/api/impl/combat/NegativeExplosionVisual$NEParams noiseMag F 
L169:   aload 5 
L171:   fconst_0 
L172:   putfield Field com/fs/starfarer/api/impl/combat/NegativeExplosionVisual$NEParams spawnHitGlowAt F 
L175:   aload_0 
L176:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L179:   new com/fs/starfarer/api/impl/combat/NegativeExplosionVisual 
L182:   dup 
L183:   aload 5 
L185:   invokespecial Method com/fs/starfarer/api/impl/combat/NegativeExplosionVisual <init> (Lcom/fs/starfarer/api/impl/combat/NegativeExplosionVisual$NEParams;)V 
L188:   invokevirtual Method com/fs/starfarer/combat/CombatEngine addLayeredRenderingPlugin (Lcom/fs/starfarer/api/combat/CombatLayeredRenderingPlugin;)Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
L191:   astore 6 
L193:   new org/lwjgl/util/vector/Vector2f 
L196:   dup 
L197:   aload_0 
L198:   getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L201:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getMouseTarget ()Lorg/lwjgl/util/vector/Vector2f; 
L204:   invokespecial Method org/lwjgl/util/vector/Vector2f <init> (Lorg/lwjgl/util/vector/ReadableVector2f;)V 
L207:   astore 7 
L209:   aload 6 
L211:   invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatEntityAPI getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L216:   aload 7 
L218:   invokevirtual Method org/lwjgl/util/vector/Vector2f set (Lorg/lwjgl/util/vector/ReadableVector2f;)Lorg/lwjgl/util/vector/Vector2f; 
L221:   pop 
L222:   iconst_0 
L223:   istore 8 
L225:   goto L274 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Object com/fs/starfarer/util/A/new Float Object com/fs/starfarer/util/A/C Object java/util/Iterator Object com/fs/starfarer/api/impl/combat/NegativeExplosionVisual$NEParams Object com/fs/starfarer/api/combat/CombatEntityAPI Object org/lwjgl/util/vector/Vector2f Integer 
            stack 
        .end stack 
L228:   aload 7 
L230:   dup 
L231:   getfield Field org/lwjgl/util/vector/Vector2f x F 
L234:   ldc_w +200.0f 
L237:   fadd 
L238:   putfield Field org/lwjgl/util/vector/Vector2f x F 
L241:   aload_0 
L242:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L245:   new com/fs/starfarer/api/impl/combat/NegativeExplosionVisual 
L248:   dup 
L249:   aconst_null 
L250:   invokespecial Method com/fs/starfarer/api/impl/combat/NegativeExplosionVisual <init> (Lcom/fs/starfarer/api/impl/combat/NegativeExplosionVisual$NEParams;)V 
L253:   invokevirtual Method com/fs/starfarer/combat/CombatEngine addLayeredRenderingPlugin (Lcom/fs/starfarer/api/combat/CombatLayeredRenderingPlugin;)Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
L256:   astore 6 
L258:   aload 6 
L260:   invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatEntityAPI getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L265:   aload 7 
L267:   invokevirtual Method org/lwjgl/util/vector/Vector2f set (Lorg/lwjgl/util/vector/ReadableVector2f;)Lorg/lwjgl/util/vector/Vector2f; 
L270:   pop 
L271:   iinc 8 1 

        .stack same 
L274:   iload 8 
L276:   iflt L228 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Object com/fs/starfarer/util/A/new Float Top Object java/util/Iterator 
            stack 
        .end stack 
L279:   aload 4 
L281:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L286:   ifne L95 
L289:   invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L292:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getViewport ()Lcom/fs/starfarer/combat/CombatViewport; 
L295:   invokestatic Method com/fs/starfarer/util/A/C getMouseX ()I 
L298:   i2f 
L299:   invokevirtual Method com/fs/starfarer/combat/CombatViewport convertScreenXToWorldX (F)F 
L302:   fstore_3 
L303:   invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L306:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getViewport ()Lcom/fs/starfarer/combat/CombatViewport; 
L309:   invokestatic Method com/fs/starfarer/util/A/C getMouseY ()I 
L312:   i2f 
L313:   invokevirtual Method com/fs/starfarer/combat/CombatViewport convertScreenYToWorldY (F)F 
L316:   fstore 4 
L318:   aload_0 
L319:   invokevirtual Method com/fs/starfarer/combat/CombatState isAutopilotOn ()Z 
L322:   ifne L338 
L325:   aload_0 
L326:   getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L329:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getMouseTarget ()Lorg/lwjgl/util/vector/Vector2f; 
L332:   fload_3 
L333:   fload 4 
L335:   invokevirtual Method org/lwjgl/util/vector/Vector2f set (FF)V 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Object com/fs/starfarer/util/A/new Float Float Float 
            stack 
        .end stack 
L338:   aload_0 
L339:   getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L342:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isShuttlePod ()Z 
L345:   ifeq L349 
L348:   return 

        .stack same 
L349:   invokestatic Method com/fs/starfarer/util/A/A 'Õ00000' ()Z 
L352:   istore 5 
L354:   invokestatic Method com/fs/starfarer/util/A/A 'Ô00000' ()Z 
L357:   istore 6 
L359:   ldc_w 'cardinalMode' 
L362:   iconst_0 
L363:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings o00000 (Ljava/lang/String;Z)Z 
L366:   istore 7 
L368:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'ÔÒ0000' ()Z 
L371:   istore 8 
L373:   iload 8 
L375:   ifne L383 
L378:   aload_0 
L379:   iconst_0 
L380:   putfield Field com/fs/starfarer/combat/CombatState strafeToggledOn Z 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Object com/fs/starfarer/util/A/new Float Float Float Integer Integer Integer Integer 
            stack 
        .end stack 
L383:   iload 5 
L385:   ifne L393 
L388:   iload 6 
L390:   ifeq L490 

        .stack same 
L393:   iconst_0 
L394:   invokestatic Method org/lwjgl/input/Mouse isButtonDown (I)Z 
L397:   ifeq L490 
L400:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'OÓ0000' ()Z 
L403:   ifeq L490 
L406:   aload_0 
L407:   getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L410:   iconst_1 
L411:   aload_0 
L412:   getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L415:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getMouseTarget ()Lorg/lwjgl/util/vector/Vector2f; 
L418:   iconst_2 
L419:   anewarray com/fs/starfarer/api/combat/CollisionClass 
L422:   dup 
L423:   iconst_0 
L424:   getstatic Field com/fs/starfarer/api/combat/CollisionClass SHIP Lcom/fs/starfarer/api/combat/CollisionClass; 
L427:   aastore 
L428:   dup 
L429:   iconst_1 
L430:   getstatic Field com/fs/starfarer/api/combat/CollisionClass FIGHTER Lcom/fs/starfarer/api/combat/CollisionClass; 
L433:   aastore 
L434:   invokestatic Method com/fs/starfarer/combat/ai/OO0O 'super' (Ljava/lang/Object;ZLorg/lwjgl/util/vector/Vector2f;[Lcom/fs/starfarer/api/combat/CollisionClass;)Lcom/fs/starfarer/combat/E/B; 
L437:   astore 9 
L439:   aload 9 
L441:   ifnull L482 
L444:   aload 9 
L446:   instanceof com/fs/starfarer/combat/entities/Ship 
L449:   ifeq L482 
L452:   iload 5 
L454:   ifeq L482 
L457:   aload_0 
L458:   getfield Field com/fs/starfarer/combat/CombatState lmbWasUp Z 
L461:   ifeq L482 
L464:   aload 9 
L466:   aload_0 
L467:   getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L470:   if_acmpeq L482 
L473:   aload_0 
L474:   aload 9 
L476:   checkcast com/fs/starfarer/combat/entities/Ship 
L479:   invokevirtual Method com/fs/starfarer/combat/CombatState setPlayerShip (Lcom/fs/starfarer/combat/entities/Ship;)V 

        .stack append Object com/fs/starfarer/combat/E/B 
L482:   aload_0 
L483:   iconst_0 
L484:   putfield Field com/fs/starfarer/combat/CombatState lmbWasUp Z 
L487:   goto L502 

        .stack chop 1 
L490:   iconst_0 
L491:   invokestatic Method org/lwjgl/input/Mouse isButtonDown (I)Z 
L494:   ifne L502 
L497:   aload_0 
L498:   iconst_1 
L499:   putfield Field com/fs/starfarer/combat/CombatState lmbWasUp Z 

        .stack same 
L502:   aload_0 
L503:   getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L506:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isStation ()Z 
L509:   ifeq L528 
L512:   aload_0 
L513:   getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L516:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getAI ()Lcom/fs/starfarer/combat/ai/AI; 
L519:   ifnonnull L527 
L522:   aload_0 
L523:   iconst_1 
L524:   invokevirtual Method com/fs/starfarer/combat/CombatState setAutopilot (Z)V 

        .stack same 
L527:   return 

        .stack same 
L528:   iconst_0 
L529:   istore 9 
L531:   iconst_0 
L532:   istore 10 
L534:   aload_0 
L535:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L538:   invokevirtual Method com/fs/starfarer/combat/CombatEngine isPaused ()Z 
L541:   ifne L1152 
L544:   getstatic Field [c1465] 'õø0000' [u1030] 
L547:   invokestatic Method [c1471] 'Ø00000' [u1328] 
L550:   ifeq L589 
L553:   iload 7 
L555:   ifeq L574 
L558:   aload_0 
L559:   getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L562:   ldc_w +90.0f 
L565:   ldc_w +1000.0f 
L568:   invokestatic Method com/fs/starfarer/combat/ai/OO0O 'Ò00000' (Lcom/fs/starfarer/combat/ai/o0oO;FF)V 
L571:   goto L589 

        .stack append Integer Integer 
L574:   aload_0 
L575:   new com/fs/starfarer/combat/entities/Ship$Oo 
L578:   dup 
L579:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'this.super' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L582:   aconst_null 
L583:   invokespecial Method com/fs/starfarer/combat/entities/Ship$Oo <init> (Lcom/fs/starfarer/combat/entities/Ship$oo;Ljava/lang/Object;)V 
L586:   invokevirtual Method com/fs/starfarer/combat/CombatState giveCommand (Lcom/fs/starfarer/combat/entities/Ship$Oo;)V 

        .stack same 
L589:   getstatic Field [c1465] 'ÖÒ0000' [u1030] 
L592:   invokestatic Method [c1471] 'Ø00000' [u1328] 
L595:   ifeq L634 
L598:   iload 7 
L600:   ifeq L619 
L603:   aload_0 
L604:   getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L607:   ldc_w +270.0f 
L610:   ldc_w +1000.0f 
L613:   invokestatic Method com/fs/starfarer/combat/ai/OO0O 'Ò00000' (Lcom/fs/starfarer/combat/ai/o0oO;FF)V 
L616:   goto L634 

        .stack same 
L619:   aload_0 
L620:   new com/fs/starfarer/combat/entities/Ship$Oo 
L623:   dup 
L624:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'ö00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L627:   aconst_null 
L628:   invokespecial Method com/fs/starfarer/combat/entities/Ship$Oo <init> (Lcom/fs/starfarer/combat/entities/Ship$oo;Ljava/lang/Object;)V 
L631:   invokevirtual Method com/fs/starfarer/combat/CombatState giveCommand (Lcom/fs/starfarer/combat/entities/Ship$Oo;)V 

        .stack same 
L634:   getstatic Field [c1465] 'Õø0000' [u1030] 
L637:   invokestatic Method [c1471] 'Ø00000' [u1328] 
L640:   ifeq L658 
L643:   aload_0 
L644:   new com/fs/starfarer/combat/entities/Ship$Oo 
L647:   dup 
L648:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'Ò00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L651:   aconst_null 
L652:   invokespecial Method com/fs/starfarer/combat/entities/Ship$Oo <init> (Lcom/fs/starfarer/combat/entities/Ship$oo;Ljava/lang/Object;)V 
L655:   invokevirtual Method com/fs/starfarer/combat/CombatState giveCommand (Lcom/fs/starfarer/combat/entities/Ship$Oo;)V 

        .stack same 
L658:   getstatic Field [c1465] 'super' [u1030] 
L661:   invokestatic Method [c1471] 'Ø00000' [u1328] 
L664:   ifeq L688 
L667:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'OÓ0000' ()Z 
L670:   ifeq L688 
L673:   aload_0 
L674:   new com/fs/starfarer/combat/entities/Ship$Oo 
L677:   dup 
L678:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'ÔO0000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L681:   aconst_null 
L682:   invokespecial Method com/fs/starfarer/combat/entities/Ship$Oo <init> (Lcom/fs/starfarer/combat/entities/Ship$oo;Ljava/lang/Object;)V 
L685:   invokevirtual Method com/fs/starfarer/combat/CombatState giveCommand (Lcom/fs/starfarer/combat/entities/Ship$Oo;)V 

        .stack same 
L688:   getstatic Field [c1465] 'Õ00000' [u1030] 
L691:   invokestatic Method [c1471] 'Ø00000' [u1328] 
L694:   ifeq L721 
L697:   aload_0 
L698:   new com/fs/starfarer/combat/entities/Ship$Oo 
L701:   dup 
L702:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'Õ00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L705:   new org/lwjgl/util/vector/Vector2f 
L708:   dup 
L709:   fload_3 
L710:   fload 4 
L712:   invokespecial Method org/lwjgl/util/vector/Vector2f <init> (FF)V 
L715:   invokespecial Method com/fs/starfarer/combat/entities/Ship$Oo <init> (Lcom/fs/starfarer/combat/entities/Ship$oo;Ljava/lang/Object;)V 
L718:   invokevirtual Method com/fs/starfarer/combat/CombatState giveCommand (Lcom/fs/starfarer/combat/entities/Ship$Oo;)V 

        .stack same 
L721:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'new.String' ()Z 
L724:   istore 11 
L726:   iload 11 
L728:   ifeq L752 
L731:   aload_0 
L732:   getstatic Field [c1465] 'private.super' [u1030] 
L735:   invokestatic Method [c1471] 'Ø00000' [u1328] 
L738:   ifeq L745 
L741:   iconst_0 
L742:   goto L746 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Object com/fs/starfarer/util/A/new Float Float Float Integer Integer Integer Integer Integer Integer Integer 
            stack Object com/fs/starfarer/combat/CombatState 
        .end stack 
L745:   iconst_1 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Object com/fs/starfarer/util/A/new Float Float Float Integer Integer Integer Integer Integer Integer Integer 
            stack Object com/fs/starfarer/combat/CombatState Integer 
        .end stack 
L746:   putfield Field com/fs/starfarer/combat/CombatState strafeAutoturnOn Z 
L749:   goto L762 

        .stack same 
L752:   aload_0 
L753:   getstatic Field [c1465] 'private.super' [u1030] 
L756:   invokestatic Method [c1471] 'Ø00000' [u1328] 
L759:   putfield Field com/fs/starfarer/combat/CombatState strafeAutoturnOn Z 

        .stack same 
L762:   iload 8 
L764:   ifeq L782 
L767:   aload_0 
L768:   getfield Field com/fs/starfarer/combat/CombatState strafeToggledOn Z 
L771:   ifne L782 
L774:   aload_0 
L775:   iconst_0 
L776:   putfield Field com/fs/starfarer/combat/CombatState strafeAutoturnOn Z 
L779:   goto L794 

        .stack same 
L782:   aload_0 
L783:   getfield Field com/fs/starfarer/combat/CombatState strafeToggledOn Z 
L786:   ifeq L794 
L789:   aload_0 
L790:   iconst_1 
L791:   putfield Field com/fs/starfarer/combat/CombatState strafeAutoturnOn Z 

        .stack same 
L794:   iload 7 
L796:   ifeq L892 
L799:   getstatic Field [c1465] 'ÓO0000' [u1030] 
L802:   invokestatic Method [c1471] 'Ø00000' [u1328] 
L805:   ifeq L821 
L808:   aload_0 
L809:   getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L812:   ldc_w +180.0f 
L815:   ldc_w +1000.0f 
L818:   invokestatic Method com/fs/starfarer/combat/ai/OO0O 'Ò00000' (Lcom/fs/starfarer/combat/ai/o0oO;FF)V 

        .stack same 
L821:   getstatic Field [c1465] 'ôo0000' [u1030] 
L824:   invokestatic Method [c1471] 'Ø00000' [u1328] 
L827:   ifeq L841 
L830:   aload_0 
L831:   getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L834:   fconst_0 
L835:   ldc_w +1000.0f 
L838:   invokestatic Method com/fs/starfarer/combat/ai/OO0O 'Ò00000' (Lcom/fs/starfarer/combat/ai/o0oO;FF)V 

        .stack same 
L841:   getstatic Field [c1465] O0O000 [u1030] 
L844:   invokestatic Method [c1471] 'Ø00000' [u1328] 
L847:   ifeq L865 
L850:   aload_0 
L851:   new com/fs/starfarer/combat/entities/Ship$Oo 
L854:   dup 
L855:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'ÕO0000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L858:   aconst_null 
L859:   invokespecial Method com/fs/starfarer/combat/entities/Ship$Oo <init> (Lcom/fs/starfarer/combat/entities/Ship$oo;Ljava/lang/Object;)V 
L862:   invokevirtual Method com/fs/starfarer/combat/CombatState giveCommand (Lcom/fs/starfarer/combat/entities/Ship$Oo;)V 

        .stack same 
L865:   getstatic Field [c1465] 'ÖÓ0000' [u1030] 
L868:   invokestatic Method [c1471] 'Ø00000' [u1328] 
L871:   ifeq L1094 
L874:   aload_0 
L875:   new com/fs/starfarer/combat/entities/Ship$Oo 
L878:   dup 
L879:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo o00000 Lcom/fs/starfarer/combat/entities/Ship$oo; 
L882:   aconst_null 
L883:   invokespecial Method com/fs/starfarer/combat/entities/Ship$Oo <init> (Lcom/fs/starfarer/combat/entities/Ship$oo;Ljava/lang/Object;)V 
L886:   invokevirtual Method com/fs/starfarer/combat/CombatState giveCommand (Lcom/fs/starfarer/combat/entities/Ship$Oo;)V 
L889:   goto L1094 

        .stack same 
L892:   aload_0 
L893:   getfield Field com/fs/starfarer/combat/CombatState strafeAutoturnOn Z 
L896:   ifeq L998 
L899:   getstatic Field [c1465] 'ÓO0000' [u1030] 
L902:   invokestatic Method [c1471] 'Ø00000' [u1328] 
L905:   ifeq L923 
L908:   aload_0 
L909:   new com/fs/starfarer/combat/entities/Ship$Oo 
L912:   dup 
L913:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'ÕO0000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L916:   aconst_null 
L917:   invokespecial Method com/fs/starfarer/combat/entities/Ship$Oo <init> (Lcom/fs/starfarer/combat/entities/Ship$oo;Ljava/lang/Object;)V 
L920:   invokevirtual Method com/fs/starfarer/combat/CombatState giveCommand (Lcom/fs/starfarer/combat/entities/Ship$Oo;)V 

        .stack same 
L923:   getstatic Field [c1465] 'ôo0000' [u1030] 
L926:   invokestatic Method [c1471] 'Ø00000' [u1328] 
L929:   ifeq L947 
L932:   aload_0 
L933:   new com/fs/starfarer/combat/entities/Ship$Oo 
L936:   dup 
L937:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo o00000 Lcom/fs/starfarer/combat/entities/Ship$oo; 
L940:   aconst_null 
L941:   invokespecial Method com/fs/starfarer/combat/entities/Ship$Oo <init> (Lcom/fs/starfarer/combat/entities/Ship$oo;Ljava/lang/Object;)V 
L944:   invokevirtual Method com/fs/starfarer/combat/CombatState giveCommand (Lcom/fs/starfarer/combat/entities/Ship$Oo;)V 

        .stack same 
L947:   getstatic Field [c1465] O0O000 [u1030] 
L950:   invokestatic Method [c1471] 'Ø00000' [u1328] 
L953:   ifeq L971 
L956:   aload_0 
L957:   new com/fs/starfarer/combat/entities/Ship$Oo 
L960:   dup 
L961:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'ÕO0000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L964:   aconst_null 
L965:   invokespecial Method com/fs/starfarer/combat/entities/Ship$Oo <init> (Lcom/fs/starfarer/combat/entities/Ship$oo;Ljava/lang/Object;)V 
L968:   invokevirtual Method com/fs/starfarer/combat/CombatState giveCommand (Lcom/fs/starfarer/combat/entities/Ship$Oo;)V 

        .stack same 
L971:   getstatic Field [c1465] 'ÖÓ0000' [u1030] 
L974:   invokestatic Method [c1471] 'Ø00000' [u1328] 
L977:   ifeq L1094 
L980:   aload_0 
L981:   new com/fs/starfarer/combat/entities/Ship$Oo 
L984:   dup 
L985:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo o00000 Lcom/fs/starfarer/combat/entities/Ship$oo; 
L988:   aconst_null 
L989:   invokespecial Method com/fs/starfarer/combat/entities/Ship$Oo <init> [u1381] 
L992:   invokevirtual Method com/fs/starfarer/combat/CombatState giveCommand (Lcom/fs/starfarer/combat/entities/Ship$Oo;)V 
L995:   goto L1094 

        .stack same 
L998:   getstatic Field [c1465] 'ÓO0000' [u1030] 
L1001:  invokestatic Method [c1471] 'Ø00000' [u1328] 
L1004:  ifeq L1022 
L1007:  aload_0 
L1008:  new com/fs/starfarer/combat/entities/Ship$Oo 
L1011:  dup 
L1012:  getstatic Field com/fs/starfarer/combat/entities/Ship$oo for Lcom/fs/starfarer/combat/entities/Ship$oo; 
L1015:  aconst_null 
L1016:  invokespecial Method com/fs/starfarer/combat/entities/Ship$Oo <init> [u1381] 
L1019:  invokevirtual Method com/fs/starfarer/combat/CombatState giveCommand (Lcom/fs/starfarer/combat/entities/Ship$Oo;)V 

        .stack same 
L1022:  getstatic Field [c1465] 'ôo0000' [u1030] 
L1025:  invokestatic Method [c1471] 'Ø00000' [u1328] 
L1028:  ifeq L1046 
L1031:  aload_0 
L1032:  new com/fs/starfarer/combat/entities/Ship$Oo 
L1035:  dup 
L1036:  getstatic Field com/fs/starfarer/combat/entities/Ship$oo return Lcom/fs/starfarer/combat/entities/Ship$oo; 
L1039:  aconst_null 
L1040:  invokespecial Method com/fs/starfarer/combat/entities/Ship$Oo <init> [u1381] 
L1043:  invokevirtual Method com/fs/starfarer/combat/CombatState giveCommand (Lcom/fs/starfarer/combat/entities/Ship$Oo;)V 

        .stack same 
L1046:  getstatic Field [c1465] O0O000 [u1030] 
L1049:  invokestatic Method [c1471] 'Ø00000' [u1328] 
L1052:  ifeq L1070 
L1055:  aload_0 
L1056:  new com/fs/starfarer/combat/entities/Ship$Oo 
L1059:  dup 
L1060:  getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'ÕO0000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L1063:  aconst_null 
L1064:  invokespecial Method com/fs/starfarer/combat/entities/Ship$Oo <init> [u1381] 
L1067:  invokevirtual Method com/fs/starfarer/combat/CombatState giveCommand (Lcom/fs/starfarer/combat/entities/Ship$Oo;)V 

        .stack same 
L1070:  getstatic Field [c1465] 'ÖÓ0000' [u1030] 
L1073:  invokestatic Method [c1471] 'Ø00000' [u1328] 
L1076:  ifeq L1094 
L1079:  aload_0 
L1080:  new com/fs/starfarer/combat/entities/Ship$Oo 
L1083:  dup 
L1084:  getstatic Field com/fs/starfarer/combat/entities/Ship$oo o00000 Lcom/fs/starfarer/combat/entities/Ship$oo; 
L1087:  aconst_null 
L1088:  invokespecial Method com/fs/starfarer/combat/entities/Ship$Oo <init> [u1381] 
L1091:  invokevirtual Method com/fs/starfarer/combat/CombatState giveCommand (Lcom/fs/starfarer/combat/entities/Ship$Oo;)V 

        .stack same 
L1094:  aload_0 
L1095:  getfield Field com/fs/starfarer/combat/CombatState strafeAutoturnOn Z 
L1098:  ifeq L1123 
L1101:  aload_0 
L1102:  invokevirtual Method com/fs/starfarer/combat/CombatState isAutopilotOn ()Z 
L1105:  ifne L1123 
L1108:  aload_0 
L1109:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L1112:  aload_0 
L1113:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L1116:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getMouseTarget ()Lorg/lwjgl/util/vector/Vector2f; 
L1119:  invokestatic Method com/fs/starfarer/combat/ai/OO0O 'super' (Lcom/fs/starfarer/combat/ai/o0oO;Lorg/lwjgl/util/vector/Vector2f;)Z 
L1122:  pop 

        .stack same 
L1123:  aload_0 
L1124:  getfield Field com/fs/starfarer/combat/CombatState tutorialOverlay Lcom/fs/starfarer/tutorial/H; 
L1127:  ifnull L1140 
L1130:  aload_0 
L1131:  getfield Field com/fs/starfarer/combat/CombatState tutorialOverlay Lcom/fs/starfarer/tutorial/H; 
L1134:  invokevirtual Method com/fs/starfarer/tutorial/H shouldTurnOffMousePan ()Z 
L1137:  ifne L1152 

        .stack same 
L1140:  getstatic Field [c1465] 'ôO0000' [u1030] 
L1143:  invokestatic Method [c1471] 'Ø00000' [u1328] 
L1146:  ifeq L1152 
L1149:  iconst_1 
L1150:  istore 10 

        .stack chop 1 
L1152:  aload_1 
L1153:  invokevirtual Method com/fs/starfarer/util/A/new iterator ()Ljava/util/Iterator; 
L1156:  astore 12 
L1158:  goto L2652 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Object com/fs/starfarer/util/A/new Float Float Float Integer Integer Integer Integer Integer Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L1161:  aload 12 
L1163:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L1168:  checkcast com/fs/starfarer/util/A/C 
L1171:  astore 11 
L1173:  aload 11 
L1175:  invokevirtual Method com/fs/starfarer/util/A/C isConsumed ()Z 
L1178:  ifeq L1184 
L1181:  goto L2652 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Object com/fs/starfarer/util/A/new Float Float Float Integer Integer Integer Integer Integer Integer Object com/fs/starfarer/util/A/C Object java/util/Iterator 
            stack 
        .end stack 
L1184:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'OÓ0000' ()Z 
L1187:  ifeq L1215 
L1190:  aload 11 
L1192:  invokevirtual Method com/fs/starfarer/util/A/C isKeyDownEvent ()Z 
L1195:  ifeq L1215 
L1198:  aload 11 
L1200:  invokevirtual Method com/fs/starfarer/util/A/C getEventValue ()I 
L1203:  bipush 25 
L1205:  if_icmpne L1215 
L1208:  aload_0 
L1209:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L1212:  invokevirtual Method com/fs/starfarer/combat/entities/Ship toggleTravelDrive ()V 

        .stack same 
L1215:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'OÓ0000' ()Z 
L1218:  ifeq L1610 
L1221:  aload 11 
L1223:  invokevirtual Method com/fs/starfarer/util/A/C isKeyDownEvent ()Z 
L1226:  ifeq L1610 
L1229:  aload 11 
L1231:  invokevirtual Method com/fs/starfarer/util/A/C getEventValue ()I 
L1234:  bipush 23 
L1236:  if_icmpne L1610 
L1239:  aload_0 
L1240:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L1243:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 
L1246:  astore 13 
L1248:  fconst_1 
L1249:  fstore 14 
L1251:  aload_0 
L1252:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L1255:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isCapital ()Z 
L1258:  ifeq L1272 
L1261:  fload 14 
L1263:  ldc_w +1.7000000476837158f 
L1266:  fmul 
L1267:  fstore 14 
L1269:  goto L1311 

        .stack append Object org/lwjgl/util/vector/Vector2f Float 
L1272:  aload_0 
L1273:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L1276:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isCruiser ()Z 
L1279:  ifeq L1293 
L1282:  fload 14 
L1284:  ldc_w +1.5f 
L1287:  fmul 
L1288:  fstore 14 
L1290:  goto L1311 

        .stack same 
L1293:  aload_0 
L1294:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L1297:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isDestroyer ()Z 
L1300:  ifeq L1311 
L1303:  fload 14 
L1305:  ldc_w +1.5f 
L1308:  fmul 
L1309:  fstore 14 

        .stack same 
L1311:  aload_0 
L1312:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L1315:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isHulk ()Z 
L1318:  ifeq L1324 
L1321:  fconst_1 
L1322:  fstore 14 

        .stack same 
L1324:  aload_0 
L1325:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L1328:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L1331:  invokevirtual Method com/fs/starfarer/loading/specs/g getHullStyle ()Lcom/fs/starfarer/loading/specs/OoOO; 
L1334:  invokevirtual Method com/fs/starfarer/loading/specs/OoOO 'ÔO0000' ()Ljava/awt/Color; 
L1337:  astore 15 
L1339:  aload_0 
L1340:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L1343:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L1346:  invokevirtual Method com/fs/starfarer/loading/specs/g getHullStyle ()Lcom/fs/starfarer/loading/specs/OoOO; 
L1349:  invokevirtual Method com/fs/starfarer/loading/specs/OoOO 'ôO0000' ()Ljava/awt/Color; 
L1352:  astore 16 
L1354:  invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L1357:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getExplosionSystem ()Lcom/fs/starfarer/renderers/damage/ExplosionParticleSystem; 
L1360:  aload_0 
L1361:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L1364:  fload 14 
L1366:  aload 13 
L1368:  aload_0 
L1369:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L1372:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getShieldCenterEvenIfNoShield ()Lorg/lwjgl/util/vector/Vector2f; 
L1375:  aload 16 
L1377:  invokevirtual Method com/fs/starfarer/renderers/damage/ExplosionParticleSystem spawnExplosion (Lcom/fs/starfarer/combat/E/B;FLorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;Ljava/awt/Color;)V 
L1380:  aload_0 
L1381:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L1384:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isHulk ()Z 
L1387:  ifne L1511 
L1390:  new com/fs/starfarer/api/impl/combat/ShipExplosionFlareVisual$ShipExplosionFlareParams 
L1393:  dup 
L1394:  invokespecial Method com/fs/starfarer/api/impl/combat/ShipExplosionFlareVisual$ShipExplosionFlareParams <init> ()V 
L1397:  astore 17 
L1399:  invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L1402:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getExplosionSystem ()Lcom/fs/starfarer/renderers/damage/ExplosionParticleSystem; 
L1405:  aload_0 
L1406:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L1409:  fload 14 
L1411:  invokevirtual Method com/fs/starfarer/renderers/damage/ExplosionParticleSystem getExplosionSizeForCollidable (Lcom/fs/starfarer/combat/E/B;F)F 
L1414:  fstore 18 
L1416:  ldc_w +0.4778672158718109f 
L1419:  fstore 19 
L1421:  fload 18 
L1423:  fload 19 
L1425:  fmul 
L1426:  fstore 18 
L1428:  aload 17 
L1430:  fload 18 
L1432:  ldc +4.0f 
L1434:  fmul 
L1435:  fload 14 
L1437:  fmul 
L1438:  putfield Field com/fs/starfarer/api/impl/combat/ShipExplosionFlareVisual$ShipExplosionFlareParams flareWidth F 
L1441:  aload 17 
L1443:  fload 18 
L1445:  ldc_w +1.600000023841858f 
L1448:  fmul 
L1449:  fload 14 
L1451:  fmul 
L1452:  putfield Field com/fs/starfarer/api/impl/combat/ShipExplosionFlareVisual$ShipExplosionFlareParams flareHeight F 
L1455:  aload 17 
L1457:  aload 15 
L1459:  putfield Field com/fs/starfarer/api/impl/combat/ShipExplosionFlareVisual$ShipExplosionFlareParams color Ljava/awt/Color; 
L1462:  aload_0 
L1463:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L1466:  new com/fs/starfarer/api/impl/combat/ShipExplosionFlareVisual 
L1469:  dup 
L1470:  aload 17 
L1472:  invokespecial Method com/fs/starfarer/api/impl/combat/ShipExplosionFlareVisual <init> (Lcom/fs/starfarer/api/impl/combat/ShipExplosionFlareVisual$ShipExplosionFlareParams;)V 
L1475:  invokevirtual Method com/fs/starfarer/combat/CombatEngine addLayeredRenderingPlugin (Lcom/fs/starfarer/api/combat/CombatLayeredRenderingPlugin;)Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
L1478:  astore 20 
L1480:  aload 20 
L1482:  invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatEntityAPI getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L1487:  aload_0 
L1488:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L1491:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L1494:  invokevirtual Method org/lwjgl/util/vector/Vector2f set (Lorg/lwjgl/util/vector/ReadableVector2f;)Lorg/lwjgl/util/vector/Vector2f; 
L1497:  pop 
L1498:  aload 20 
L1500:  invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatEntityAPI getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 1 
L1505:  aload 13 
L1507:  invokevirtual Method org/lwjgl/util/vector/Vector2f set (Lorg/lwjgl/util/vector/ReadableVector2f;)Lorg/lwjgl/util/vector/Vector2f; 
L1510:  pop 

        .stack append Object java/awt/Color Object java/awt/Color 
L1511:  aload_0 
L1512:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L1515:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getCollisionRadius ()F 
L1518:  f2d 
L1519:  invokestatic Method java/lang/Math sqrt (D)D 
L1522:  d2f 
L1523:  ldc_w +15.0f 
L1526:  fmul 
L1527:  ldc +4.0f 
L1529:  fmul 
L1530:  fstore 17 
L1532:  fload 17 
L1534:  fload 14 
L1536:  fmul 
L1537:  fstore 17 
L1539:  fconst_1 
L1540:  fstore 18 
L1542:  aload_0 
L1543:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L1546:  aload_0 
L1547:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L1550:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getShieldCenterEvenIfNoShield ()Lorg/lwjgl/util/vector/Vector2f; 
L1553:  aload 13 
L1555:  fload 17 
L1557:  ldc_w +3.0f 
L1560:  fmul 
L1561:  fload 18 
L1563:  ldc_w +1.5f 
L1566:  aload 15 
L1568:  invokevirtual Method com/fs/starfarer/combat/CombatEngine addHitParticle (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;FFFLjava/awt/Color;)V 
L1571:  aload_0 
L1572:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L1575:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isFrigate ()Z 
L1578:  ifeq L1610 
L1581:  aload_0 
L1582:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L1585:  aload_0 
L1586:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L1589:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getShieldCenterEvenIfNoShield ()Lorg/lwjgl/util/vector/Vector2f; 
L1592:  aload 13 
L1594:  fload 17 
L1596:  ldc +0.5f 
L1598:  fmul 
L1599:  fload 18 
L1601:  ldc_w +1.5f 
L1604:  getstatic Field java/awt/Color white Ljava/awt/Color; 
L1607:  invokevirtual Method com/fs/starfarer/combat/CombatEngine addHitParticle (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;FFFLjava/awt/Color;)V 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Object com/fs/starfarer/util/A/new Float Float Float Integer Integer Integer Integer Integer Integer Object com/fs/starfarer/util/A/C Object java/util/Iterator 
            stack 
        .end stack 
L1610:  iload 8 
L1612:  ifeq L1681 
L1615:  aload 11 
L1617:  getstatic Field [c1459] 'Ô00000' [u1019] 
L1620:  getstatic Field [c1465] 'private.super' [u1030] 
L1623:  invokestatic Method [c1471] o00000 [u1039] 
L1626:  ifeq L1681 
L1629:  aload_0 
L1630:  getfield Field com/fs/starfarer/combat/CombatState strafeToggledOn Z 
L1633:  ifeq L1648 
L1636:  ldc_w 'ui_strafe_lock_off' 
L1639:  fconst_1 
L1640:  fconst_1 
L1641:  invokestatic Method com/fs/starfarer/D/M o00000 (Ljava/lang/String;FF)Lsound/Sound; 
L1644:  pop 
L1645:  goto L1657 

        .stack same 
L1648:  ldc_w 'ui_strafe_lock_on' 
L1651:  fconst_1 
L1652:  fconst_1 
L1653:  invokestatic Method com/fs/starfarer/D/M o00000 (Ljava/lang/String;FF)Lsound/Sound; 
L1656:  pop 

        .stack same 
L1657:  aload_0 
L1658:  aload_0 
L1659:  getfield Field com/fs/starfarer/combat/CombatState strafeToggledOn Z 
L1662:  ifeq L1669 
L1665:  iconst_0 
L1666:  goto L1670 

        .stack stack_1 Object com/fs/starfarer/combat/CombatState 
L1669:  iconst_1 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Object com/fs/starfarer/util/A/new Float Float Float Integer Integer Integer Integer Integer Integer Object com/fs/starfarer/util/A/C Object java/util/Iterator 
            stack Object com/fs/starfarer/combat/CombatState Integer 
        .end stack 
L1670:  putfield Field com/fs/starfarer/combat/CombatState strafeToggledOn Z 
L1673:  aload 11 
L1675:  invokevirtual Method com/fs/starfarer/util/A/C consume ()V 
L1678:  goto L2652 

        .stack same 
L1681:  aload 11 
L1683:  getstatic Field [c1459] 'Ô00000' [u1019] 
L1686:  getstatic Field [c1465] 'super.return' [u1030] 
L1689:  invokestatic Method [c1471] o00000 [u1039] 
L1692:  ifeq L1749 
L1695:  aload_0 
L1696:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L1699:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isHoldFire ()Z 
L1702:  ifeq L1717 
L1705:  ldc_w 'ui_hold_fire_off' 
L1708:  fconst_1 
L1709:  fconst_1 
L1710:  invokestatic Method com/fs/starfarer/D/M o00000 (Ljava/lang/String;FF)Lsound/Sound; 
L1713:  pop 
L1714:  goto L1726 

        .stack same 
L1717:  ldc_w 'ui_hold_fire_on' 
L1720:  fconst_1 
L1721:  fconst_1 
L1722:  invokestatic Method com/fs/starfarer/D/M o00000 (Ljava/lang/String;FF)Lsound/Sound; 
L1725:  pop 

        .stack same 
L1726:  aload_0 
L1727:  new com/fs/starfarer/combat/entities/Ship$Oo 
L1730:  dup 
L1731:  getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'ÒO0000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L1734:  aconst_null 
L1735:  invokespecial Method com/fs/starfarer/combat/entities/Ship$Oo <init> [u1381] 
L1738:  invokevirtual Method com/fs/starfarer/combat/CombatState giveCommand (Lcom/fs/starfarer/combat/entities/Ship$Oo;)V 
L1741:  aload 11 
L1743:  invokevirtual Method com/fs/starfarer/util/A/C consume ()V 
L1746:  goto L2652 

        .stack same 
L1749:  aload 11 
L1751:  getstatic Field [c1459] 'Ô00000' [u1019] 
L1754:  getstatic Field [c1465] 'ÓÖ0000' [u1030] 
L1757:  invokestatic Method [c1471] o00000 [u1039] 
L1760:  ifeq L1832 
L1763:  aload_0 
L1764:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L1767:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getLaunchBays ()Ljava/util/List; 
L1770:  invokeinterface InterfaceMethod java/util/List isEmpty ()Z 1 
L1775:  ifne L1809 
L1778:  aload_0 
L1779:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L1782:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isPullBackFighters ()Z 
L1785:  ifeq L1800 
L1788:  ldc_w 'ui_pull_back_fighters_off' 
L1791:  fconst_1 
L1792:  fconst_1 
L1793:  invokestatic Method com/fs/starfarer/D/M o00000 (Ljava/lang/String;FF)Lsound/Sound; 
L1796:  pop 
L1797:  goto L1809 

        .stack same 
L1800:  ldc_w 'ui_pull_back_fighters_on' 
L1803:  fconst_1 
L1804:  fconst_1 
L1805:  invokestatic Method com/fs/starfarer/D/M o00000 (Ljava/lang/String;FF)Lsound/Sound; 
L1808:  pop 

        .stack same 
L1809:  aload_0 
L1810:  new com/fs/starfarer/combat/entities/Ship$Oo 
L1813:  dup 
L1814:  getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'public' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L1817:  aconst_null 
L1818:  invokespecial Method com/fs/starfarer/combat/entities/Ship$Oo <init> [u1381] 
L1821:  invokevirtual Method com/fs/starfarer/combat/CombatState giveCommand (Lcom/fs/starfarer/combat/entities/Ship$Oo;)V 
L1824:  aload 11 
L1826:  invokevirtual Method com/fs/starfarer/util/A/C consume ()V 
L1829:  goto L2652 

        .stack same 
L1832:  aload 11 
L1834:  getstatic Field [c1459] 'Ô00000' [u1019] 
L1837:  getstatic Field [c1465] 'Ò00000' [u1030] 
L1840:  invokestatic Method [c1471] o00000 [u1039] 
L1843:  ifeq L1884 
L1846:  aload_0 
L1847:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L1850:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isShieldOn ()Z 
L1853:  pop 
L1854:  aload_0 
L1855:  new com/fs/starfarer/combat/entities/Ship$Oo 
L1858:  dup 
L1859:  getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'ØO0000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L1862:  new org/lwjgl/util/vector/Vector2f 
L1865:  dup 
L1866:  fload_3 
L1867:  fload 4 
L1869:  invokespecial Method org/lwjgl/util/vector/Vector2f <init> (FF)V 
L1872:  invokespecial Method com/fs/starfarer/combat/entities/Ship$Oo <init> [u1381] 
L1875:  invokevirtual Method com/fs/starfarer/combat/CombatState giveCommand (Lcom/fs/starfarer/combat/entities/Ship$Oo;)V 
L1878:  iconst_1 
L1879:  istore 9 
L1881:  goto L2652 

        .stack same 
L1884:  aload 11 
L1886:  getstatic Field [c1459] 'Ô00000' [u1019] 
L1889:  getstatic Field [c1465] 'ÒÕ0000' [u1030] 
L1892:  invokestatic Method [c1471] o00000 [u1039] 
L1895:  ifeq L1930 
L1898:  aload_0 
L1899:  new com/fs/starfarer/combat/entities/Ship$Oo 
L1902:  dup 
L1903:  getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'ô00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L1906:  aconst_null 
L1907:  iconst_0 
L1908:  invokespecial Method com/fs/starfarer/combat/entities/Ship$Oo <init> (Lcom/fs/starfarer/combat/entities/Ship$oo;Ljava/lang/Object;I)V 
L1911:  invokevirtual Method com/fs/starfarer/combat/CombatState giveCommand (Lcom/fs/starfarer/combat/entities/Ship$Oo;)V 
L1914:  aload_0 
L1915:  iconst_0 
L1916:  invokevirtual Method com/fs/starfarer/combat/CombatState renderArc (I)V 
L1919:  aload 11 
L1921:  invokevirtual Method com/fs/starfarer/util/A/C consume ()V 
L1924:  iconst_0 
L1925:  istore 10 
L1927:  goto L2652 

        .stack same 
L1930:  aload 11 
L1932:  getstatic Field [c1459] 'Ô00000' [u1019] 
L1935:  getstatic Field [c1465] 'super.String' [u1030] 
L1938:  invokestatic Method [c1471] o00000 [u1039] 
L1941:  ifeq L1976 
L1944:  aload_0 
L1945:  new com/fs/starfarer/combat/entities/Ship$Oo 
L1948:  dup 
L1949:  getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'ô00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L1952:  aconst_null 
L1953:  iconst_1 
L1954:  invokespecial Method com/fs/starfarer/combat/entities/Ship$Oo <init> (Lcom/fs/starfarer/combat/entities/Ship$oo;Ljava/lang/Object;I)V 
L1957:  invokevirtual Method com/fs/starfarer/combat/CombatState giveCommand (Lcom/fs/starfarer/combat/entities/Ship$Oo;)V 
L1960:  aload_0 
L1961:  iconst_1 
L1962:  invokevirtual Method com/fs/starfarer/combat/CombatState renderArc (I)V 
L1965:  aload 11 
L1967:  invokevirtual Method com/fs/starfarer/util/A/C consume ()V 
L1970:  iconst_0 
L1971:  istore 10 
L1973:  goto L2652 

        .stack same 
L1976:  aload 11 
L1978:  getstatic Field [c1459] 'Ô00000' [u1019] 
L1981:  getstatic Field [c1465] 'OÕ0000' [u1030] 
L1984:  invokestatic Method [c1471] o00000 [u1039] 
L1987:  ifeq L2022 
L1990:  aload_0 
L1991:  new com/fs/starfarer/combat/entities/Ship$Oo 
L1994:  dup 
L1995:  getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'ô00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L1998:  aconst_null 
L1999:  iconst_2 
L2000:  invokespecial Method com/fs/starfarer/combat/entities/Ship$Oo <init> (Lcom/fs/starfarer/combat/entities/Ship$oo;Ljava/lang/Object;I)V 
L2003:  invokevirtual Method com/fs/starfarer/combat/CombatState giveCommand (Lcom/fs/starfarer/combat/entities/Ship$Oo;)V 
L2006:  aload_0 
L2007:  iconst_2 
L2008:  invokevirtual Method com/fs/starfarer/combat/CombatState renderArc (I)V 
L2011:  aload 11 
L2013:  invokevirtual Method com/fs/starfarer/util/A/C consume ()V 
L2016:  iconst_0 
L2017:  istore 10 
L2019:  goto L2652 

        .stack same 
L2022:  aload 11 
L2024:  getstatic Field [c1459] 'Ô00000' [u1019] 
L2027:  getstatic Field [c1465] 'private.Object' [u1030] 
L2030:  invokestatic Method [c1471] o00000 [u1039] 
L2033:  ifeq L2068 
L2036:  aload_0 
L2037:  new com/fs/starfarer/combat/entities/Ship$Oo 
L2040:  dup 
L2041:  getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'ô00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L2044:  aconst_null 
L2045:  iconst_3 
L2046:  invokespecial Method com/fs/starfarer/combat/entities/Ship$Oo <init> (Lcom/fs/starfarer/combat/entities/Ship$oo;Ljava/lang/Object;I)V 
L2049:  invokevirtual Method com/fs/starfarer/combat/CombatState giveCommand (Lcom/fs/starfarer/combat/entities/Ship$Oo;)V 
L2052:  aload_0 
L2053:  iconst_3 
L2054:  invokevirtual Method com/fs/starfarer/combat/CombatState renderArc (I)V 
L2057:  aload 11 
L2059:  invokevirtual Method com/fs/starfarer/util/A/C consume ()V 
L2062:  iconst_0 
L2063:  istore 10 
L2065:  goto L2652 

        .stack same 
L2068:  aload 11 
L2070:  getstatic Field [c1459] 'Ô00000' [u1019] 
L2073:  getstatic Field [c1465] 'õÔ0000' [u1030] 
L2076:  invokestatic Method [c1471] o00000 [u1039] 
L2079:  ifeq L2114 
L2082:  aload_0 
L2083:  new com/fs/starfarer/combat/entities/Ship$Oo 
L2086:  dup 
L2087:  getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'ô00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L2090:  aconst_null 
L2091:  iconst_4 
L2092:  invokespecial Method com/fs/starfarer/combat/entities/Ship$Oo <init> (Lcom/fs/starfarer/combat/entities/Ship$oo;Ljava/lang/Object;I)V 
L2095:  invokevirtual Method com/fs/starfarer/combat/CombatState giveCommand (Lcom/fs/starfarer/combat/entities/Ship$Oo;)V 
L2098:  aload_0 
L2099:  iconst_4 
L2100:  invokevirtual Method com/fs/starfarer/combat/CombatState renderArc (I)V 
L2103:  aload 11 
L2105:  invokevirtual Method com/fs/starfarer/util/A/C consume ()V 
L2108:  iconst_0 
L2109:  istore 10 
L2111:  goto L2652 

        .stack same 
L2114:  aload 11 
L2116:  getstatic Field [c1459] 'Ô00000' [u1019] 
L2119:  getstatic Field [c1465] 'do.Object' [u1030] 
L2122:  invokestatic Method [c1471] o00000 [u1039] 
L2125:  ifeq L2160 
L2128:  aload_0 
L2129:  new com/fs/starfarer/combat/entities/Ship$Oo 
L2132:  dup 
L2133:  getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'ô00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L2136:  aconst_null 
L2137:  iconst_5 
L2138:  invokespecial Method com/fs/starfarer/combat/entities/Ship$Oo <init> (Lcom/fs/starfarer/combat/entities/Ship$oo;Ljava/lang/Object;I)V 
L2141:  invokevirtual Method com/fs/starfarer/combat/CombatState giveCommand (Lcom/fs/starfarer/combat/entities/Ship$Oo;)V 
L2144:  aload_0 
L2145:  iconst_5 
L2146:  invokevirtual Method com/fs/starfarer/combat/CombatState renderArc (I)V 
L2149:  aload 11 
L2151:  invokevirtual Method com/fs/starfarer/util/A/C consume ()V 
L2154:  iconst_0 
L2155:  istore 10 
L2157:  goto L2652 

        .stack same 
L2160:  aload 11 
L2162:  getstatic Field [c1459] 'Ô00000' [u1019] 
L2165:  getstatic Field [c1465] 'ÖÔ0000' [u1030] 
L2168:  invokestatic Method [c1471] o00000 [u1039] 
L2171:  ifeq L2208 
L2174:  aload_0 
L2175:  new com/fs/starfarer/combat/entities/Ship$Oo 
L2178:  dup 
L2179:  getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'ô00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L2182:  aconst_null 
L2183:  bipush 6 
L2185:  invokespecial Method com/fs/starfarer/combat/entities/Ship$Oo <init> (Lcom/fs/starfarer/combat/entities/Ship$oo;Ljava/lang/Object;I)V 
L2188:  invokevirtual Method com/fs/starfarer/combat/CombatState giveCommand (Lcom/fs/starfarer/combat/entities/Ship$Oo;)V 
L2191:  aload_0 
L2192:  bipush 6 
L2194:  invokevirtual Method com/fs/starfarer/combat/CombatState renderArc (I)V 
L2197:  aload 11 
L2199:  invokevirtual Method com/fs/starfarer/util/A/C consume ()V 
L2202:  iconst_0 
L2203:  istore 10 
L2205:  goto L2652 

        .stack same 
L2208:  aload 11 
L2210:  getstatic Field [c1459] 'Ô00000' [u1019] 
L2213:  getstatic Field [c1465] 'do.super' [u1030] 
L2216:  invokestatic Method [c1471] o00000 [u1039] 
L2219:  ifeq L2249 
L2222:  aload_0 
L2223:  new com/fs/starfarer/combat/entities/Ship$Oo 
L2226:  dup 
L2227:  getstatic Field com/fs/starfarer/combat/entities/Ship$oo int Lcom/fs/starfarer/combat/entities/Ship$oo; 
L2230:  aconst_null 
L2231:  iconst_0 
L2232:  invokespecial Method com/fs/starfarer/combat/entities/Ship$Oo <init> (Lcom/fs/starfarer/combat/entities/Ship$oo;Ljava/lang/Object;I)V 
L2235:  invokevirtual Method com/fs/starfarer/combat/CombatState giveCommand (Lcom/fs/starfarer/combat/entities/Ship$Oo;)V 
L2238:  aload 11 
L2240:  invokevirtual Method com/fs/starfarer/util/A/C consume ()V 
L2243:  iconst_0 
L2244:  istore 10 
L2246:  goto L2652 

        .stack same 
L2249:  aload 11 
L2251:  getstatic Field [c1459] 'Ô00000' [u1019] 
L2254:  getstatic Field [c1465] 'Öo0000' [u1030] 
L2257:  invokestatic Method [c1471] o00000 [u1039] 
L2260:  ifeq L2290 
L2263:  aload_0 
L2264:  new com/fs/starfarer/combat/entities/Ship$Oo 
L2267:  dup 
L2268:  getstatic Field com/fs/starfarer/combat/entities/Ship$oo int Lcom/fs/starfarer/combat/entities/Ship$oo; 
L2271:  aconst_null 
L2272:  iconst_1 
L2273:  invokespecial Method com/fs/starfarer/combat/entities/Ship$Oo <init> (Lcom/fs/starfarer/combat/entities/Ship$oo;Ljava/lang/Object;I)V 
L2276:  invokevirtual Method com/fs/starfarer/combat/CombatState giveCommand (Lcom/fs/starfarer/combat/entities/Ship$Oo;)V 
L2279:  aload 11 
L2281:  invokevirtual Method com/fs/starfarer/util/A/C consume ()V 
L2284:  iconst_0 
L2285:  istore 10 
L2287:  goto L2652 

        .stack same 
L2290:  aload 11 
L2292:  getstatic Field [c1459] 'Ô00000' [u1019] 
L2295:  getstatic Field [c1465] 'Õo0000' [u1030] 
L2298:  invokestatic Method [c1471] o00000 [u1039] 
L2301:  ifeq L2331 
L2304:  aload_0 
L2305:  new com/fs/starfarer/combat/entities/Ship$Oo 
L2308:  dup 
L2309:  getstatic Field com/fs/starfarer/combat/entities/Ship$oo int Lcom/fs/starfarer/combat/entities/Ship$oo; 
L2312:  aconst_null 
L2313:  iconst_2 
L2314:  invokespecial Method com/fs/starfarer/combat/entities/Ship$Oo <init> (Lcom/fs/starfarer/combat/entities/Ship$oo;Ljava/lang/Object;I)V 
L2317:  invokevirtual Method com/fs/starfarer/combat/CombatState giveCommand (Lcom/fs/starfarer/combat/entities/Ship$Oo;)V 
L2320:  aload 11 
L2322:  invokevirtual Method com/fs/starfarer/util/A/C consume ()V 
L2325:  iconst_0 
L2326:  istore 10 
L2328:  goto L2652 

        .stack same 
L2331:  aload 11 
L2333:  getstatic Field [c1459] 'Ô00000' [u1019] 
L2336:  getstatic Field [c1465] 'void.super' [u1030] 
L2339:  invokestatic Method [c1471] o00000 [u1039] 
L2342:  ifeq L2372 
L2345:  aload_0 
L2346:  new com/fs/starfarer/combat/entities/Ship$Oo 
L2349:  dup 
L2350:  getstatic Field com/fs/starfarer/combat/entities/Ship$oo int Lcom/fs/starfarer/combat/entities/Ship$oo; 
L2353:  aconst_null 
L2354:  iconst_3 
L2355:  invokespecial Method com/fs/starfarer/combat/entities/Ship$Oo <init> [u1521] 
L2358:  invokevirtual Method com/fs/starfarer/combat/CombatState giveCommand (Lcom/fs/starfarer/combat/entities/Ship$Oo;)V 
L2361:  aload 11 
L2363:  invokevirtual Method com/fs/starfarer/util/A/C consume ()V 
L2366:  iconst_0 
L2367:  istore 10 
L2369:  goto L2652 

        .stack same 
L2372:  aload 11 
L2374:  getstatic Field [c1459] 'Ô00000' [u1019] 
L2377:  getstatic Field [c1465] Oo0000 [u1030] 
L2380:  invokestatic Method [c1471] o00000 [u1039] 
L2383:  ifeq L2413 
L2386:  aload_0 
L2387:  new com/fs/starfarer/combat/entities/Ship$Oo 
L2390:  dup 
L2391:  getstatic Field com/fs/starfarer/combat/entities/Ship$oo int Lcom/fs/starfarer/combat/entities/Ship$oo; 
L2394:  aconst_null 
L2395:  iconst_4 
L2396:  invokespecial Method com/fs/starfarer/combat/entities/Ship$Oo <init> [u1521] 
L2399:  invokevirtual Method com/fs/starfarer/combat/CombatState giveCommand (Lcom/fs/starfarer/combat/entities/Ship$Oo;)V 
L2402:  aload 11 
L2404:  invokevirtual Method com/fs/starfarer/util/A/C consume ()V 
L2407:  iconst_0 
L2408:  istore 10 
L2410:  goto L2652 

        .stack same 
L2413:  aload 11 
L2415:  getstatic Field [c1459] 'Ô00000' [u1019] 
L2418:  getstatic Field [c1465] 'String.super' [u1030] 
L2421:  invokestatic Method [c1471] o00000 [u1039] 
L2424:  ifeq L2454 
L2427:  aload_0 
L2428:  new com/fs/starfarer/combat/entities/Ship$Oo 
L2431:  dup 
L2432:  getstatic Field com/fs/starfarer/combat/entities/Ship$oo int Lcom/fs/starfarer/combat/entities/Ship$oo; 
L2435:  aconst_null 
L2436:  iconst_5 
L2437:  invokespecial Method com/fs/starfarer/combat/entities/Ship$Oo <init> [u1521] 
L2440:  invokevirtual Method com/fs/starfarer/combat/CombatState giveCommand (Lcom/fs/starfarer/combat/entities/Ship$Oo;)V 
L2443:  aload 11 
L2445:  invokevirtual Method com/fs/starfarer/util/A/C consume ()V 
L2448:  iconst_0 
L2449:  istore 10 
L2451:  goto L2652 

        .stack same 
L2454:  aload 11 
L2456:  getstatic Field [c1459] 'Ô00000' [u1019] 
L2459:  getstatic Field [c1465] 'õO0000' [u1030] 
L2462:  invokestatic Method [c1471] o00000 [u1039] 
L2465:  ifeq L2496 
L2468:  aload_0 
L2469:  new com/fs/starfarer/combat/entities/Ship$Oo 
L2472:  dup 
L2473:  getstatic Field com/fs/starfarer/combat/entities/Ship$oo int Lcom/fs/starfarer/combat/entities/Ship$oo; 
L2476:  aconst_null 
L2477:  bipush 6 
L2479:  invokespecial Method com/fs/starfarer/combat/entities/Ship$Oo <init> [u1521] 
L2482:  invokevirtual Method com/fs/starfarer/combat/CombatState giveCommand (Lcom/fs/starfarer/combat/entities/Ship$Oo;)V 
L2485:  aload 11 
L2487:  invokevirtual Method com/fs/starfarer/util/A/C consume ()V 
L2490:  iconst_0 
L2491:  istore 10 
L2493:  goto L2652 

        .stack same 
L2496:  aload_0 
L2497:  getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L2500:  invokevirtual Method com/fs/starfarer/combat/CombatEngine isPaused ()Z 
L2503:  ifne L2652 
L2506:  aload 11 
L2508:  getstatic Field [c1459] 'Ô00000' [u1019] 
L2511:  getstatic Field [c1465] 'String.null' [u1030] 
L2514:  invokestatic Method [c1471] o00000 [u1039] 
L2517:  ifeq L2618 
L2520:  aload_0 
L2521:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L2524:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getOriginalOwner ()I 
L2527:  invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L2530:  aload_0 
L2531:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L2534:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getOriginalOwner ()I 
L2537:  invokevirtual Method com/fs/starfarer/combat/CombatEngine getFleetManager (I)Lcom/fs/starfarer/combat/CombatFleetManager; 
L2540:  invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getGoal ()Lcom/fs/starfarer/api/fleet/FleetGoal; 
L2543:  invokestatic Method com/fs/starfarer/combat/ai/movement/maneuvers/RetreatManeuver o00000 (ILcom/fs/starfarer/api/fleet/FleetGoal;)Lcom/fs/starfarer/combat/A/B$Oo; 
L2546:  astore 13 
L2548:  aload_0 
L2549:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L2552:  aload 13 
L2554:  iconst_1 
L2555:  invokestatic Method com/fs/starfarer/combat/ai/movement/maneuvers/RetreatManeuver o00000 (Lcom/fs/starfarer/combat/entities/Ship;Lcom/fs/starfarer/combat/A/B$Oo;Z)Z 
L2558:  istore 14 
L2560:  iload 14 
L2562:  ifeq L2610 
L2565:  aload_0 
L2566:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L2569:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getTravelDrive ()Lcom/fs/starfarer/combat/systems/F; 
L2572:  ifnull L2610 
L2575:  aload_0 
L2576:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L2579:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getTravelDrive ()Lcom/fs/starfarer/combat/systems/F; 
L2582:  invokevirtual Method com/fs/starfarer/combat/systems/F isOn ()Z 
L2585:  ifne L2610 
L2588:  aload_0 
L2589:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L2592:  iconst_0 
L2593:  invokestatic Method com/fs/starfarer/combat/ai/movement/maneuvers/RetreatManeuver o00000 (Lcom/fs/starfarer/combat/entities/Ship;Z)V 
L2596:  aload_0 
L2597:  iconst_0 
L2598:  putfield Field com/fs/starfarer/combat/CombatState flagshipOutsideFirstTime Z 
L2601:  aload_0 
L2602:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L2605:  iconst_1 
L2606:  iconst_0 
L2607:  invokevirtual Method com/fs/starfarer/combat/entities/Ship setRetreating (ZZ)V 

        .stack append Object com/fs/starfarer/combat/A/B$Oo Integer 
L2610:  aload 11 
L2612:  invokevirtual Method com/fs/starfarer/util/A/C consume ()V 
L2615:  goto L2652 

        .stack chop 2 
L2618:  aload 11 
L2620:  getstatic Field [c1459] 'Ô00000' [u1019] 
L2623:  getstatic Field [c1465] 'ÕÔ0000' [u1030] 
L2626:  invokestatic Method [c1471] o00000 [u1039] 
L2629:  ifeq L2652 
L2632:  aload_0 
L2633:  new com/fs/starfarer/combat/entities/Ship$Oo 
L2636:  dup 
L2637:  getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'ø00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L2640:  aconst_null 
L2641:  invokespecial Method com/fs/starfarer/combat/entities/Ship$Oo <init> [u1381] 
L2644:  invokevirtual Method com/fs/starfarer/combat/CombatState giveCommand (Lcom/fs/starfarer/combat/entities/Ship$Oo;)V 
L2647:  aload 11 
L2649:  invokevirtual Method com/fs/starfarer/util/A/C consume ()V 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Object com/fs/starfarer/util/A/new Float Float Float Integer Integer Integer Integer Integer Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L2652:  aload 12 
L2654:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L2659:  ifne L1161 
L2662:  aload_0 
L2663:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L2666:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getSystem ()Lcom/fs/starfarer/combat/systems/F; 
L2669:  ifnull L2704 
L2672:  aload_0 
L2673:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L2676:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getSystem ()Lcom/fs/starfarer/combat/systems/F; 
L2679:  invokevirtual Method com/fs/starfarer/combat/systems/F shouldBlockCommands ()Z 
L2682:  ifeq L2704 
L2685:  aload_0 
L2686:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L2689:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getSystem ()Lcom/fs/starfarer/combat/systems/F; 
L2692:  invokevirtual Method com/fs/starfarer/combat/systems/F getSpec ()Lcom/fs/starfarer/loading/specs/do; 
L2695:  invokevirtual Method com/fs/starfarer/loading/specs/do isFiringAllowed ()Z 
L2698:  ifne L2704 
L2701:  iconst_0 
L2702:  istore 10 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Object com/fs/starfarer/util/A/new Float Float Float Integer Integer Integer Integer Integer Integer 
            stack 
        .end stack 
L2704:  aload_0 
L2705:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L2708:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getTravelDrive ()Lcom/fs/starfarer/combat/systems/F; 
L2711:  ifnull L2746 
L2714:  aload_0 
L2715:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L2718:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getTravelDrive ()Lcom/fs/starfarer/combat/systems/F; 
L2721:  invokevirtual Method com/fs/starfarer/combat/systems/F shouldBlockCommands ()Z 
L2724:  ifeq L2746 
L2727:  aload_0 
L2728:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L2731:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getTravelDrive ()Lcom/fs/starfarer/combat/systems/F; 
L2734:  invokevirtual Method com/fs/starfarer/combat/systems/F getSpec ()Lcom/fs/starfarer/loading/specs/do; 
L2737:  invokevirtual Method com/fs/starfarer/loading/specs/do isFiringAllowed ()Z 
L2740:  ifne L2746 
L2743:  iconst_0 
L2744:  istore 10 

        .stack same 
L2746:  aload_0 
L2747:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L2750:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getPhaseCloak ()Lcom/fs/starfarer/combat/systems/F; 
L2753:  ifnull L2788 
L2756:  aload_0 
L2757:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L2760:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getPhaseCloak ()Lcom/fs/starfarer/combat/systems/F; 
L2763:  invokevirtual Method com/fs/starfarer/combat/systems/F shouldBlockCommands ()Z 
L2766:  ifeq L2788 
L2769:  aload_0 
L2770:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L2773:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getPhaseCloak ()Lcom/fs/starfarer/combat/systems/F; 
L2776:  invokevirtual Method com/fs/starfarer/combat/systems/F getSpec ()Lcom/fs/starfarer/loading/specs/do; 
L2779:  invokevirtual Method com/fs/starfarer/loading/specs/do isFiringAllowed ()Z 
L2782:  ifne L2788 
L2785:  iconst_0 
L2786:  istore 10 

        .stack same 
L2788:  iload 10 
L2790:  ifeq L2817 
L2793:  aload_0 
L2794:  new com/fs/starfarer/combat/entities/Ship$Oo 
L2797:  dup 
L2798:  getstatic Field com/fs/starfarer/combat/entities/Ship$oo oO0000 Lcom/fs/starfarer/combat/entities/Ship$oo; 
L2801:  new org/lwjgl/util/vector/Vector2f 
L2804:  dup 
L2805:  fload_3 
L2806:  fload 4 
L2808:  invokespecial Method org/lwjgl/util/vector/Vector2f <init> (FF)V 
L2811:  invokespecial Method com/fs/starfarer/combat/entities/Ship$Oo <init> [u1381] 
L2814:  invokevirtual Method com/fs/starfarer/combat/CombatState giveCommand (Lcom/fs/starfarer/combat/entities/Ship$Oo;)V 

        .stack same 
L2817:  getstatic Field com/fs/starfarer/combat/CombatState AUTO_OMNI_SHIELDS Z 
L2820:  ifeq L2948 
L2823:  aload_0 
L2824:  invokevirtual Method com/fs/starfarer/combat/CombatState isAutopilotOn ()Z 
L2827:  ifne L2948 
L2830:  aload_0 
L2831:  getfield Field com/fs/starfarer/combat/CombatState playerShipShieldAI Lcom/fs/starfarer/combat/ai/OmniShieldControlAI; 
L2834:  ifnull L2958 
L2837:  iload 9 
L2839:  ifne L2958 
L2842:  aload_0 
L2843:  getfield Field com/fs/starfarer/combat/CombatState playerShipShieldAI Lcom/fs/starfarer/combat/ai/OmniShieldControlAI; 
L2846:  fload_2 
L2847:  invokevirtual Method com/fs/starfarer/combat/ai/OmniShieldControlAI advance (F)V 
L2850:  aload_0 
L2851:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L2854:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getMouseTarget ()Lorg/lwjgl/util/vector/Vector2f; 
L2857:  ifnull L2940 
L2860:  aload_0 
L2861:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L2864:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getMouseTarget ()Lorg/lwjgl/util/vector/Vector2f; 
L2867:  astore 11 
L2869:  aload_0 
L2870:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L2873:  aload 11 
L2875:  getfield Field org/lwjgl/util/vector/Vector2f x F 
L2878:  aload 11 
L2880:  getfield Field org/lwjgl/util/vector/Vector2f y F 
L2883:  invokevirtual Method com/fs/starfarer/combat/entities/Ship setShieldTargetOverride (FF)V 
L2886:  aload_0 
L2887:  getfield Field com/fs/starfarer/combat/CombatState canAutoOverrideShieldFacing Z 
L2890:  ifeq L2927 
L2893:  aload_0 
L2894:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L2897:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getShield ()Lcom/fs/starfarer/combat/systems/G; 
L2900:  invokevirtual Method com/fs/starfarer/combat/systems/G getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L2903:  aload_0 
L2904:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L2907:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getShieldTarget ()Lorg/lwjgl/util/vector/Vector2f; 
L2910:  invokestatic Method com/fs/starfarer/api/util/Misc getAngleInDegrees (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)F 
L2913:  fstore 12 
L2915:  aload_0 
L2916:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L2919:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getShield ()Lcom/fs/starfarer/combat/systems/G; 
L2922:  fload 12 
L2924:  invokevirtual Method com/fs/starfarer/combat/systems/G forceFacing (F)V 

        .stack append Object org/lwjgl/util/vector/Vector2f 
L2927:  aload_0 
L2928:  getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L2931:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getMouseTarget ()Lorg/lwjgl/util/vector/Vector2f; 
L2934:  fload_3 
L2935:  fload 4 
L2937:  invokevirtual Method org/lwjgl/util/vector/Vector2f set (FF)V 

        .stack chop 1 
L2940:  aload_0 
L2941:  iconst_0 
L2942:  putfield Field com/fs/starfarer/combat/CombatState canAutoOverrideShieldFacing Z 
L2945:  goto L2958 

        .stack same 
L2948:  aload_0 
L2949:  iconst_0 
L2950:  putfield Field com/fs/starfarer/combat/CombatState wantShieldOnForAutoOmni Z 
L2953:  aload_0 
L2954:  iconst_0 
L2955:  putfield Field com/fs/starfarer/combat/CombatState canAutoOverrideShieldFacing Z 

        .stack same 
L2958:  return 
L2959:  
    .end code 
.end method 

.method private giveCommand : (Lcom/fs/starfarer/combat/entities/Ship$Oo;)V 
    .code stack 5 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L4:     ifnull L58 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L11:    invokevirtual Method com/fs/starfarer/combat/entities/Ship controlsLocked ()Z 
L14:    ifeq L58 
L17:    aload_0 
L18:    getfield Field com/fs/starfarer/combat/CombatState elapsedSinceMessage F 
L21:    ldc_w +3.0f 
L24:    fcmpl 
L25:    ifle L57 
L28:    aload_0 
L29:    fconst_0 
L30:    putfield Field com/fs/starfarer/combat/CombatState elapsedSinceMessage F 
L33:    aload_0 
L34:    invokevirtual Method com/fs/starfarer/combat/CombatState getMessageWidget ()Lcom/fs/starfarer/class/C; 
L37:    iconst_2 
L38:    anewarray java/lang/Object 
L41:    dup 
L42:    iconst_0 
L43:    getstatic Field com/fs/starfarer/O0OO 'ÒÓ0000' Ljava/awt/Color; 
L46:    aastore 
L47:    dup 
L48:    iconst_1 
L49:    ldc_w 'Ship is not combat-ready, controls are locked.' 
L52:    aastore 
L53:    invokevirtual Method com/fs/starfarer/class/C o00000 ([Ljava/lang/Object;)Lcom/fs/starfarer/class/O0OO/C; 
L56:    pop 

        .stack same 
L57:    return 

        .stack same 
L58:    aload_0 
L59:    getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L62:    ifnull L268 
L65:    aload_0 
L66:    getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L69:    invokevirtual Method com/fs/starfarer/combat/entities/Ship isShuttlePod ()Z 
L72:    ifne L268 
L75:    aload_0 
L76:    invokevirtual Method com/fs/starfarer/combat/CombatState isAutopilotOn ()Z 
L79:    ifne L92 
L82:    aload_0 
L83:    getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L86:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getAI ()Lcom/fs/starfarer/combat/ai/AI; 
L89:    ifnull L119 

        .stack same 
L92:    aload_0 
L93:    invokevirtual Method com/fs/starfarer/combat/CombatState isAutopilotOn ()Z 
L96:    ifeq L114 
L99:    invokestatic Method com/fs/starfarer/api/Global getSettings ()Lcom/fs/starfarer/api/SettingsAPI; 
L102:   ldc_w 'shipControlsTurnOffAutopilot' 
L105:   invokeinterface InterfaceMethod com/fs/starfarer/api/SettingsAPI getBoolean (Ljava/lang/String;)Z 2 
L110:   ifne L114 
L113:   return 

        .stack same 
L114:   aload_0 
L115:   iconst_0 
L116:   invokevirtual Method com/fs/starfarer/combat/CombatState setAutopilot (Z)V 

        .stack same 
L119:   getstatic Field com/fs/starfarer/combat/CombatState AUTO_OMNI_SHIELDS Z 
L122:   ifeq L260 
L125:   aload_0 
L126:   getfield Field com/fs/starfarer/combat/CombatState playerShipShieldAI Lcom/fs/starfarer/combat/ai/OmniShieldControlAI; 
L129:   ifnull L260 
L132:   aload_1 
L133:   ifnull L260 
L136:   aload_1 
L137:   getfield Field com/fs/starfarer/combat/entities/Ship$Oo 'Ò00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L140:   getstatic Field com/fs/starfarer/combat/entities/Ship$oo 'ØO0000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L143:   if_acmpne L260 
L146:   aload_0 
L147:   iconst_0 
L148:   putfield Field com/fs/starfarer/combat/CombatState wantShieldOnForAutoOmni Z 
L151:   aload_0 
L152:   iconst_0 
L153:   putfield Field com/fs/starfarer/combat/CombatState canAutoOverrideShieldFacing Z 
L156:   aload_0 
L157:   getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L160:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isShieldOn ()Z 
L163:   ifne L209 
L166:   aload_0 
L167:   getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L170:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getShield ()Lcom/fs/starfarer/combat/systems/G; 
L173:   ifnull L209 
L176:   aload_0 
L177:   getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L180:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getFluxTracker ()Lcom/fs/starfarer/combat/entities/ship/D; 
L183:   invokevirtual Method com/fs/starfarer/combat/entities/ship/D canUseShields ()Z 
L186:   ifeq L209 
L189:   aload_0 
L190:   getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L193:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isHulk ()Z 
L196:   ifne L209 
L199:   aload_0 
L200:   iconst_1 
L201:   putfield Field com/fs/starfarer/combat/CombatState wantShieldOnForAutoOmni Z 
L204:   aload_0 
L205:   iconst_1 
L206:   putfield Field com/fs/starfarer/combat/CombatState canAutoOverrideShieldFacing Z 

        .stack same_extended 
L209:   aload_0 
L210:   getfield Field com/fs/starfarer/combat/CombatState playerShipShieldAIFlags Lcom/fs/starfarer/api/combat/ShipwideAIFlags; 
L213:   ifnull L259 
L216:   aload_0 
L217:   getfield Field com/fs/starfarer/combat/CombatState wantShieldOnForAutoOmni Z 
L220:   ifeq L236 
L223:   aload_0 
L224:   getfield Field com/fs/starfarer/combat/CombatState playerShipShieldAIFlags Lcom/fs/starfarer/api/combat/ShipwideAIFlags; 
L227:   getstatic Field com/fs/starfarer/api/combat/ShipwideAIFlags$AIFlags DO_NOT_USE_SHIELDS Lcom/fs/starfarer/api/combat/ShipwideAIFlags$AIFlags; 
L230:   invokevirtual Method com/fs/starfarer/api/combat/ShipwideAIFlags unsetFlag (Lcom/fs/starfarer/api/combat/ShipwideAIFlags$AIFlags;)V 
L233:   goto L259 

        .stack same 
L236:   aload_0 
L237:   getfield Field com/fs/starfarer/combat/CombatState playerShipShieldAIFlags Lcom/fs/starfarer/api/combat/ShipwideAIFlags; 
L240:   getstatic Field com/fs/starfarer/api/combat/ShipwideAIFlags$AIFlags DO_NOT_USE_SHIELDS Lcom/fs/starfarer/api/combat/ShipwideAIFlags$AIFlags; 
L243:   ldc_w +100000.0f 
L246:   invokevirtual Method com/fs/starfarer/api/combat/ShipwideAIFlags setFlag (Lcom/fs/starfarer/api/combat/ShipwideAIFlags$AIFlags;F)V 
L249:   aload_0 
L250:   getfield Field com/fs/starfarer/combat/CombatState playerShipShieldAIFlags Lcom/fs/starfarer/api/combat/ShipwideAIFlags; 
L253:   getstatic Field com/fs/starfarer/api/combat/ShipwideAIFlags$AIFlags KEEP_SHIELDS_ON Lcom/fs/starfarer/api/combat/ShipwideAIFlags$AIFlags; 
L256:   invokevirtual Method com/fs/starfarer/api/combat/ShipwideAIFlags unsetFlag (Lcom/fs/starfarer/api/combat/ShipwideAIFlags$AIFlags;)V 

        .stack same 
L259:   return 

        .stack same 
L260:   aload_0 
L261:   getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L264:   aload_1 
L265:   invokevirtual Method com/fs/starfarer/combat/entities/Ship giveCommand (Lcom/fs/starfarer/combat/entities/Ship$Oo;)V 

        .stack same 
L268:   return 
L269:   
    .end code 
.end method 

.method private renderArc : (I)V 
    .code stack 3 locals 2 
L0:     iload_1 
L1:     iflt L20 
L4:     iload_1 
L5:     aload_0 
L6:     getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L9:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getGroups ()Ljava/util/List; 
L12:    invokeinterface InterfaceMethod java/util/List size ()I 1 
L17:    if_icmplt L31 

        .stack same 
L20:    aload_0 
L21:    getfield Field com/fs/starfarer/combat/CombatState arcRenderer Lcom/fs/starfarer/renderers/super; 
L24:    aconst_null 
L25:    invokevirtual Method com/fs/starfarer/renderers/super 'Ò00000' (Lcom/fs/starfarer/combat/systems/WeaponGroup;)V 
L28:    goto L46 

        .stack same 
L31:    aload_0 
L32:    getfield Field com/fs/starfarer/combat/CombatState arcRenderer Lcom/fs/starfarer/renderers/super; 
L35:    aload_0 
L36:    getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L39:    iload_1 
L40:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getWeaponGroup (I)Lcom/fs/starfarer/combat/systems/WeaponGroup; 
L43:    invokevirtual Method com/fs/starfarer/renderers/super 'Ò00000' (Lcom/fs/starfarer/combat/systems/WeaponGroup;)V 

        .stack same 
L46:    return 
L47:    
    .end code 
.end method 

.method public getMessageWidget : ()Lcom/fs/starfarer/class/C; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatState messageWidget Lcom/fs/starfarer/class/C; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public setSelectedShip : (Lcom/fs/starfarer/combat/entities/Ship;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatState shipInfo Lcom/fs/starfarer/class/new/return; 
L4:     aload_1 
L5:     invokevirtual Method com/fs/starfarer/class/new/return setShip (Lcom/fs/starfarer/combat/entities/Ship;)V 
L8:     return 
L9:     
    .end code 
.end method 

.method public setShipPreviewInRightHolo : (Lcom/fs/starfarer/combat/entities/Ship;)V 
    .code stack 0 locals 2 
L0:     return 
L1:     
    .end code 
.end method 

.method public getWarroom : ()Lcom/fs/starfarer/combat/new/OoOO; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatState warroom Lcom/fs/starfarer/combat/new/OoOO; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public getWidgetPanel : ()Lcom/fs/starfarer/ui/interfacenew; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatState widgetPanel Lcom/fs/starfarer/ui/interfacenew; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public setVideoFeedSource : (Lcom/fs/starfarer/combat/new/OoOO$o;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/fs/starfarer/combat/CombatState entityToFollow Lcom/fs/starfarer/combat/new/OoOO$o; 
L5:     return 
L6:     
    .end code 
.end method 

.method public getEntityToFollow : ()Lcom/fs/starfarer/combat/new/OoOO$o; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatState entityToFollow Lcom/fs/starfarer/combat/new/OoOO$o; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public getEntityToFollowV2 : ()Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatState entityToFollow Lcom/fs/starfarer/combat/new/OoOO$o; 
L4:     instanceof com/fs/starfarer/api/combat/CombatEntityAPI 
L7:     ifeq L18 
L10:    aload_0 
L11:    getfield Field com/fs/starfarer/combat/CombatState entityToFollow Lcom/fs/starfarer/combat/new/OoOO$o; 
L14:    checkcast com/fs/starfarer/api/combat/CombatEntityAPI 
L17:    areturn 

        .stack same 
L18:    aconst_null 
L19:    areturn 
L20:    
    .end code 
.end method 

.method public getTargetReticleRenderer : ()Lcom/fs/starfarer/renderers/A/C; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatState targetReticleRenderer Lcom/fs/starfarer/renderers/A/C; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method private dimScreen : (FFF)V 
    .code stack 6 locals 4 
L0:     fconst_0 
L1:     fconst_0 
L2:     fload_1 
L3:     fload_2 
L4:     aload_0 
L5:     getfield Field com/fs/starfarer/combat/CombatState dimColor Ljava/awt/Color; 
L8:     fload_3 
L9:     invokestatic Method com/fs/starfarer/renderers/O 'Ó00000' (FFFFLjava/awt/Color;F)V 
L12:    return 
L13:    
    .end code 
.end method 

.method public static sleepTest : ()V 
    .code stack 4 locals 6 
L0:     iconst_0 
L1:     istore_0 
L2:     goto L76 

        .stack append Integer 
L5:     invokestatic Method com/fs/graphics/util/B 'Ô00000' ()J 
L8:     lstore_1 
        .catch java/lang/Exception from L9 to L13 using L16 
L9:     lconst_1 
L10:    invokestatic Method java/lang/Thread sleep (J)V 
L13:    goto L21 

        .stack full 
            locals Integer Long 
            stack Object java/lang/Exception 
        .end stack 
L16:    astore_3 
L17:    aload_3 
L18:    invokevirtual Method java/lang/Exception printStackTrace ()V 

        .stack same 
L21:    invokestatic Method com/fs/graphics/util/B 'Ô00000' ()J 
L24:    lstore_3 
L25:    lload_3 
L26:    lload_1 
L27:    lsub 
L28:    l2f 
L29:    ldc_w +1000.0f 
L32:    fdiv 
L33:    fstore 5 
L35:    getstatic Field java/lang/System out Ljava/io/PrintStream; 
L38:    new java/lang/StringBuilder 
L41:    dup 
L42:    ldc_w 'Tail time: ' 
L45:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L48:    fload 5 
L50:    ldc_w +1000.0f 
L53:    fmul 
L54:    invokevirtual Method java/lang/StringBuilder append (F)Ljava/lang/StringBuilder; 
L57:    ldc_w ', Sleep time: ' 
L60:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L63:    iconst_1 
L64:    invokevirtual Method java/lang/StringBuilder append (I)Ljava/lang/StringBuilder; 
L67:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L70:    invokevirtual Method java/io/PrintStream println (Ljava/lang/String;)V 
L73:    iinc 0 1 

        .stack chop 1 
L76:    iload_0 
L77:    sipush 1000 
L80:    if_icmplt L5 
L83:    return 
L84:    
    .end code 
.end method 

.method public static main : ([Ljava/lang/String;)V 
    .exceptions java/lang/InterruptedException org/lwjgl/LWJGLException 
    .code stack 0 locals 1 
L0:     invokestatic Method com/fs/starfarer/combat/CombatState sleepTest ()V 
L3:     return 
L4:     
    .end code 
.end method 

.method public addExplosion : (Lorg/lwjgl/util/vector/Vector2f;F)V 
    .code stack 3 locals 3 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatState warroom Lcom/fs/starfarer/combat/new/OoOO; 
L4:     aload_1 
L5:     fload_2 
L6:     invokevirtual Method com/fs/starfarer/combat/new/OoOO addExplosion (Lorg/lwjgl/util/vector/Vector2f;F)V 
L9:     return 
L10:    
    .end code 
.end method 

.method public getZoomFactor : ()F 
    .code stack 3 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatState zoomTracker Lcom/fs/starfarer/util/A; 
L4:     invokevirtual Method com/fs/starfarer/util/A 'Ô00000' ()F 
L7:     fstore_1 
L8:     aload_0 
L9:     getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L12:    ifnull L44 
L15:    aload_0 
L16:    getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L19:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getHullSize ()Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L22:    invokevirtual Method com/fs/starfarer/api/combat/ShipAPI$HullSize ordinal ()I 
L25:    getstatic Field com/fs/starfarer/api/combat/ShipAPI$HullSize CRUISER Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L28:    invokevirtual Method com/fs/starfarer/api/combat/ShipAPI$HullSize ordinal ()I 
L31:    if_icmplt L44 
L34:    aload_0 
L35:    getfield Field com/fs/starfarer/combat/CombatState smoothZoom Lcom/fs/graphics/util/Fader; 
L38:    invokevirtual Method com/fs/graphics/util/Fader fadeIn ()V 
L41:    goto L51 

        .stack append Float 
L44:    aload_0 
L45:    getfield Field com/fs/starfarer/combat/CombatState smoothZoom Lcom/fs/graphics/util/Fader; 
L48:    invokevirtual Method com/fs/graphics/util/Fader fadeOut ()V 

        .stack same 
L51:    fload_1 
L52:    ldc_w +0.25f 
L55:    aload_0 
L56:    getfield Field com/fs/starfarer/combat/CombatState smoothZoom Lcom/fs/graphics/util/Fader; 
L59:    invokevirtual Method com/fs/graphics/util/Fader getBrightness ()F 
L62:    fmul 
L63:    fadd 
L64:    fstore_1 
L65:    fload_1 
L66:    freturn 
L67:    
    .end code 
.end method 

.method public showDeployDialog : ()V 
    .code stack 5 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L4:     invokevirtual Method com/fs/starfarer/combat/CombatEngine isDeployEnemy ()Z 
L7:     ifeq L27 
L10:    new com/fs/starfarer/ui/impl/oO0O 
L13:    dup 
L14:    aload_0 
L15:    getfield Field com/fs/starfarer/combat/CombatState widgetPanel Lcom/fs/starfarer/ui/interfacenew; 
L18:    aload_0 
L19:    iconst_1 
L20:    invokespecial Method com/fs/starfarer/ui/impl/oO0O <init> (Lcom/fs/starfarer/ui/interfacenew;Lcom/fs/starfarer/ui/oo0O$o;I)V 
L23:    astore_1 
L24:    goto L40 

        .stack same 
L27:    new com/fs/starfarer/ui/impl/oO0O 
L30:    dup 
L31:    aload_0 
L32:    getfield Field com/fs/starfarer/combat/CombatState widgetPanel Lcom/fs/starfarer/ui/interfacenew; 
L35:    aload_0 
L36:    invokespecial Method com/fs/starfarer/ui/impl/oO0O <init> (Lcom/fs/starfarer/ui/interfacenew;Lcom/fs/starfarer/ui/oo0O$o;)V 
L39:    astore_1 

        .stack append Object com/fs/starfarer/ui/impl/o0OO 
L40:    aload_1 
L41:    ldc_w +0.30000001192092896f 
L44:    ldc_w +0.75f 
L47:    invokevirtual Method com/fs/starfarer/ui/impl/o0OO show (FF)V 
L50:    aload_0 
L51:    aload_1 
L52:    checkcast com/fs/starfarer/ui/impl/oO0O 
L55:    putfield Field com/fs/starfarer/combat/CombatState fdd Lcom/fs/starfarer/ui/impl/oO0O; 
L58:    aload_0 
L59:    getstatic Field com/fs/starfarer/combat/CombatState$o float Lcom/fs/starfarer/combat/CombatState$o; 
L62:    putfield Field com/fs/starfarer/combat/CombatState dialogType Lcom/fs/starfarer/combat/CombatState$o; 
L65:    aload_0 
L66:    aload_0 
L67:    getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L70:    invokevirtual Method com/fs/starfarer/combat/CombatEngine isPaused ()Z 
L73:    putfield Field com/fs/starfarer/combat/CombatState pauseStatusBeforeDialog Z 
L76:    aload_0 
L77:    getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L80:    iconst_1 
L81:    invokevirtual Method com/fs/starfarer/combat/CombatEngine setPaused (Z)V 
L84:    return 
L85:    
    .end code 
.end method 

.method public getCurrentlySelectedInFleetDeploymentDialog : ()Ljava/util/List; 
    .signature ()Ljava/util/List<Lcom/fs/starfarer/api/fleet/FleetMemberAPI;>; 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatState fdd Lcom/fs/starfarer/ui/impl/oO0O; 
L4:     ifnonnull L15 
L7:     new java/util/ArrayList 
L10:    dup 
L11:    invokespecial Method java/util/ArrayList <init> ()V 
L14:    areturn 

        .stack same 
L15:    aload_0 
L16:    getfield Field com/fs/starfarer/combat/CombatState fdd Lcom/fs/starfarer/ui/impl/oO0O; 
L19:    invokevirtual Method com/fs/starfarer/ui/impl/oO0O getSelected ()Ljava/util/List; 
L22:    areturn 
L23:    
    .end code 
.end method 

.method public isShowingDeploymentDialog : ()Z 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatState dialogType Lcom/fs/starfarer/combat/CombatState$o; 
L4:     getstatic Field com/fs/starfarer/combat/CombatState$o float Lcom/fs/starfarer/combat/CombatState$o; 
L7:     if_acmpne L12 
L10:    iconst_1 
L11:    ireturn 

        .stack same 
L12:    iconst_0 
L13:    ireturn 
L14:    
    .end code 
.end method 

.method public getDialogType : ()Lcom/fs/starfarer/combat/CombatState$o; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatState dialogType Lcom/fs/starfarer/combat/CombatState$o; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public showInfoDialog : (Ljava/lang/String;)V 
    .code stack 11 locals 3 
L0:     new com/fs/starfarer/ui/impl/o0OO 
L3:     dup 
L4:     ldc_w +500.0f 
L7:     ldc_w +425.0f 
L10:    aload_0 
L11:    getfield Field com/fs/starfarer/combat/CombatState widgetPanel Lcom/fs/starfarer/ui/interfacenew; 
L14:    aload_0 
L15:    aload_1 
L16:    iconst_1 
L17:    anewarray java/lang/String 
L20:    dup 
L21:    iconst_0 
L22:    ldc_w 'Ok' 
L25:    aastore 
L26:    invokespecial Method com/fs/starfarer/ui/impl/o0OO <init> (FFLcom/fs/starfarer/ui/interfacenew;Lcom/fs/starfarer/ui/oo0O$o;Ljava/lang/String;[Ljava/lang/String;)V 
L29:    astore_2 
L30:    aload_2 
L31:    ldc_w +0.30000001192092896f 
L34:    ldc_w +0.20000000298023224f 
L37:    invokevirtual Method com/fs/starfarer/ui/impl/o0OO show (FF)V 
L40:    aload_0 
L41:    getstatic Field com/fs/starfarer/combat/CombatState$o new Lcom/fs/starfarer/combat/CombatState$o; 
L44:    putfield Field com/fs/starfarer/combat/CombatState dialogType Lcom/fs/starfarer/combat/CombatState$o; 
L47:    aload_0 
L48:    aload_0 
L49:    getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L52:    invokevirtual Method com/fs/starfarer/combat/CombatEngine isPaused ()Z 
L55:    putfield Field com/fs/starfarer/combat/CombatState pauseStatusBeforeDialog Z 
L58:    aload_0 
L59:    getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L62:    iconst_1 
L63:    invokevirtual Method com/fs/starfarer/combat/CombatEngine setPaused (Z)V 
L66:    return 
L67:    
    .end code 
.end method 

.method public showCodexDialog : (Ljava/lang/Object;)V 
    .code stack 3 locals 3 
L0:     aload_1 
L1:     instanceof com/fs/starfarer/combat/CombatFleetManager$O0 
L4:     ifeq L50 
L7:     aload_1 
L8:     checkcast com/fs/starfarer/combat/CombatFleetManager$O0 
L11:    astore_2 
L12:    aload_0 
L13:    getfield Field com/fs/starfarer/combat/CombatState widgetPanel Lcom/fs/starfarer/ui/interfacenew; 
L16:    aload_0 
L17:    aload_2 
L18:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getMember ()Lcom/fs/starfarer/campaign/fleet/FleetMember; 
L21:    invokestatic Method com/fs/starfarer/codex2/CodexDialog showTemp (Lcom/fs/starfarer/ui/interfacenew;Lcom/fs/starfarer/ui/oo0O$o;Lcom/fs/starfarer/api/fleet/FleetMemberAPI;)V 
L24:    aload_0 
L25:    getstatic Field com/fs/starfarer/combat/CombatState$o 'Ø00000' Lcom/fs/starfarer/combat/CombatState$o; 
L28:    putfield Field com/fs/starfarer/combat/CombatState dialogType Lcom/fs/starfarer/combat/CombatState$o; 
L31:    aload_0 
L32:    aload_0 
L33:    getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L36:    invokevirtual Method com/fs/starfarer/combat/CombatEngine isPaused ()Z 
L39:    putfield Field com/fs/starfarer/combat/CombatState pauseStatusBeforeDialog Z 
L42:    aload_0 
L43:    getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L46:    iconst_1 
L47:    invokevirtual Method com/fs/starfarer/combat/CombatEngine setPaused (Z)V 

        .stack same 
L50:    return 
L51:    
    .end code 
.end method 

.method private showBackToMSelDialog : ()V 
    .code stack 8 locals 4 
L0:     aconst_null 
L1:     astore_1 
L2:     aload_0 
L3:     getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L6:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getStateToReturnTo ()Ljava/lang/String; 
L9:     ldc_w 'Campaign State' 
L12:    if_acmpne L85 
L15:    aload_0 
L16:    getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L19:    invokevirtual Method com/fs/starfarer/combat/CombatEngine isSimulation ()Z 
L22:    ifeq L32 
L25:    getstatic Field com/fs/starfarer/combat/E$Oo 'Ö00000' Lcom/fs/starfarer/combat/E$Oo; 
L28:    astore_1 
L29:    goto L123 

        .stack append Object com/fs/starfarer/combat/E$Oo 
L32:    aload_0 
L33:    getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L36:    invokevirtual Method com/fs/starfarer/combat/CombatEngine isEnemyInFullRetreat ()Z 
L39:    ifeq L49 
L42:    getstatic Field com/fs/starfarer/combat/E$Oo 'ö00000' Lcom/fs/starfarer/combat/E$Oo; 
L45:    astore_1 
L46:    goto L123 

        .stack same 
L49:    invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'OÓ0000' ()Z 
L52:    ifeq L62 
L55:    getstatic Field com/fs/starfarer/combat/E$Oo 'Ó00000' Lcom/fs/starfarer/combat/E$Oo; 
L58:    astore_1 
L59:    goto L123 

        .stack same 
L62:    invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L65:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine isIronMode ()Z 
L68:    ifeq L78 
L71:    getstatic Field com/fs/starfarer/combat/E$Oo o00000 Lcom/fs/starfarer/combat/E$Oo; 
L74:    astore_1 
L75:    goto L123 

        .stack same 
L78:    getstatic Field com/fs/starfarer/combat/E$Oo null Lcom/fs/starfarer/combat/E$Oo; 
L81:    astore_1 
L82:    goto L123 

        .stack same 
L85:    aload_0 
L86:    getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L89:    invokevirtual Method com/fs/starfarer/combat/CombatEngine isSimulation ()Z 
L92:    ifeq L102 
L95:    getstatic Field com/fs/starfarer/combat/E$Oo 'Ö00000' Lcom/fs/starfarer/combat/E$Oo; 
L98:    astore_1 
L99:    goto L123 

        .stack same 
L102:   aload_0 
L103:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L106:   invokevirtual Method com/fs/starfarer/combat/CombatEngine isEnemyInFullRetreat ()Z 
L109:   ifeq L119 
L112:   getstatic Field com/fs/starfarer/combat/E$Oo 'Ô00000' Lcom/fs/starfarer/combat/E$Oo; 
L115:   astore_1 
L116:   goto L123 

        .stack same 
L119:   getstatic Field com/fs/starfarer/combat/E$Oo 'Ø00000' Lcom/fs/starfarer/combat/E$Oo; 
L122:   astore_1 

        .stack same 
L123:   aload_0 
L124:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L127:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getCustomExitButtonTitle ()Ljava/lang/String; 
L130:   ifnull L137 
L133:   getstatic Field com/fs/starfarer/combat/E$Oo class Lcom/fs/starfarer/combat/E$Oo; 
L136:   astore_1 

        .stack same 
L137:   aload_0 
L138:   getstatic Field com/fs/starfarer/combat/CombatState$o 'Ô00000' Lcom/fs/starfarer/combat/CombatState$o; 
L141:   putfield Field com/fs/starfarer/combat/CombatState dialogType Lcom/fs/starfarer/combat/CombatState$o; 
L144:   new com/fs/starfarer/combat/E 
L147:   dup 
L148:   aload_0 
L149:   getfield Field com/fs/starfarer/combat/CombatState widgetPanel Lcom/fs/starfarer/ui/interfacenew; 
L152:   aload_0 
L153:   aload_1 
L154:   new com/fs/starfarer/combat/CombatState$1 
L157:   dup 
L158:   aload_0 
L159:   invokespecial Method com/fs/starfarer/combat/CombatState$1 <init> (Lcom/fs/starfarer/combat/CombatState;)V 
L162:   invokespecial Method com/fs/starfarer/combat/E <init> (Lcom/fs/starfarer/ui/interfacenew;Lcom/fs/starfarer/ui/oo0O$o;Lcom/fs/starfarer/combat/E$Oo;Lcom/fs/starfarer/combat/E$o;)V 
L165:   astore_3 
L166:   aload_3 
L167:   ldc_w +0.30000001192092896f 
L170:   ldc_w +0.20000000298023224f 
L173:   invokevirtual Method com/fs/starfarer/combat/E show (FF)V 
L176:   aload_3 
L177:   iconst_0 
L178:   invokevirtual Method com/fs/starfarer/combat/E makeOptionInstant (I)V 
L181:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'OÓ0000' ()Z 
L184:   ifne L192 
L187:   aload_3 
L188:   iconst_m1 
L189:   invokevirtual Method com/fs/starfarer/combat/E setOptionOnKeyboardConfirm (I)V 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Object com/fs/starfarer/combat/E$Oo Top Object com/fs/starfarer/combat/E 
            stack 
        .end stack 
L192:   aload_0 
L193:   aload_0 
L194:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L197:   invokevirtual Method com/fs/starfarer/combat/CombatEngine isPaused ()Z 
L200:   putfield Field com/fs/starfarer/combat/CombatState pauseStatusBeforeDialog Z 
L203:   aload_0 
L204:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L207:   iconst_1 
L208:   invokevirtual Method com/fs/starfarer/combat/CombatEngine setPaused (Z)V 
L211:   return 
L212:   
    .end code 
.end method 

.method private showRetreatDialog : ()V 
    .code stack 9 locals 2 
L0:     new com/fs/starfarer/ui/impl/o0OO 
L3:     dup 
L4:     aload_0 
L5:     getfield Field com/fs/starfarer/combat/CombatState widgetPanel Lcom/fs/starfarer/ui/interfacenew; 
L8:     aload_0 
L9:     ldc_w 'Order your flagship to retreat? You will be able to transfer command to another ship.' 
L12:    iconst_2 
L13:    anewarray java/lang/String 
L16:    dup 
L17:    iconst_0 
L18:    ldc_w 'Yes' 
L21:    aastore 
L22:    dup 
L23:    iconst_1 
L24:    ldc_w 'No' 
L27:    aastore 
L28:    invokespecial Method com/fs/starfarer/ui/impl/o0OO <init> (Lcom/fs/starfarer/ui/interfacenew;Lcom/fs/starfarer/ui/oo0O$o;Ljava/lang/String;[Ljava/lang/String;)V 
L31:    astore_1 
L32:    aload_1 
L33:    iconst_0 
L34:    invokevirtual Method com/fs/starfarer/ui/impl/o0OO setKeyboardShortcutsToAcceptEnabled (Z)V 
L37:    aload_1 
L38:    ldc_w +0.30000001192092896f 
L41:    ldc_w +0.20000000298023224f 
L44:    invokevirtual Method com/fs/starfarer/ui/impl/o0OO show (FF)V 
L47:    aload_0 
L48:    getstatic Field com/fs/starfarer/combat/CombatState$o 'õ00000' Lcom/fs/starfarer/combat/CombatState$o; 
L51:    putfield Field com/fs/starfarer/combat/CombatState dialogType Lcom/fs/starfarer/combat/CombatState$o; 
L54:    aload_0 
L55:    aload_0 
L56:    getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L59:    invokevirtual Method com/fs/starfarer/combat/CombatEngine isPaused ()Z 
L62:    putfield Field com/fs/starfarer/combat/CombatState pauseStatusBeforeDialog Z 
L65:    aload_0 
L66:    getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L69:    iconst_1 
L70:    invokevirtual Method com/fs/starfarer/combat/CombatEngine setPaused (Z)V 
L73:    return 
L74:    
    .end code 
.end method 

.method public showSNDDialog : ()V 
    .code stack 11 locals 3 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L4:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerTaskManager ()Lcom/fs/starfarer/combat/tasks/CombatTaskManager; 
L7:     astore_1 
L8:     aload_1 
L9:     invokevirtual Method com/fs/starfarer/combat/tasks/CombatTaskManager isFullAssault ()Z 
L12:    ifeq L29 
L15:    aload_1 
L16:    invokevirtual Method com/fs/starfarer/combat/tasks/CombatTaskManager spendCP ()V 
L19:    aload_1 
L20:    invokevirtual Method com/fs/starfarer/combat/tasks/CombatTaskManager openCommChannel ()V 
L23:    aload_1 
L24:    iconst_0 
L25:    invokevirtual Method com/fs/starfarer/combat/tasks/CombatTaskManager setFullAssault (Z)V 
L28:    return 

        .stack append Object com/fs/starfarer/combat/tasks/CombatTaskManager 
L29:    new com/fs/starfarer/ui/impl/o0OO 
L32:    dup 
L33:    ldc_w +600.0f 
L36:    ldc_w +270.0f 
L39:    aload_0 
L40:    getfield Field com/fs/starfarer/combat/CombatState widgetPanel Lcom/fs/starfarer/ui/interfacenew; 
L43:    aload_0 
L44:    ldc_w [s2769] 
L47:    iconst_2 
L48:    anewarray java/lang/String 
L51:    dup 
L52:    iconst_0 
L53:    ldc_w 'Yes' 
L56:    aastore 
L57:    dup 
L58:    iconst_1 
L59:    ldc_w 'No' 
L62:    aastore 
L63:    invokespecial Method com/fs/starfarer/ui/impl/o0OO <init> (FFLcom/fs/starfarer/ui/interfacenew;Lcom/fs/starfarer/ui/oo0O$o;Ljava/lang/String;[Ljava/lang/String;)V 
L66:    astore_2 
L67:    aload_2 
L68:    ldc_w +0.30000001192092896f 
L71:    ldc_w +0.20000000298023224f 
L74:    invokevirtual Method com/fs/starfarer/ui/impl/o0OO show (FF)V 
L77:    aload_0 
L78:    getstatic Field com/fs/starfarer/combat/CombatState$o class Lcom/fs/starfarer/combat/CombatState$o; 
L81:    putfield Field com/fs/starfarer/combat/CombatState dialogType Lcom/fs/starfarer/combat/CombatState$o; 
L84:    aload_0 
L85:    aload_0 
L86:    getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L89:    invokevirtual Method com/fs/starfarer/combat/CombatEngine isPaused ()Z 
L92:    putfield Field com/fs/starfarer/combat/CombatState pauseStatusBeforeDialog Z 
L95:    aload_0 
L96:    getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L99:    iconst_1 
L100:   invokevirtual Method com/fs/starfarer/combat/CombatEngine setPaused (Z)V 
L103:   return 
L104:   
    .end code 
.end method 

.method public showFullRetreatDialog : ()V 
    .code stack 11 locals 3 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L4:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerFleetManager ()Lcom/fs/starfarer/combat/CombatFleetManager; 
L7:     invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getGoal ()Lcom/fs/starfarer/api/fleet/FleetGoal; 
L10:    astore_1 
L11:    aconst_null 
L12:    astore_2 
L13:    invokestatic Method com/fs/starfarer/combat/CombatState $SWITCH_TABLE$com$fs$starfarer$api$fleet$FleetGoal ()[I 
L16:    aload_1 
L17:    invokevirtual Method com/fs/starfarer/api/fleet/FleetGoal ordinal ()I 
L20:    iaload 
L21:    tableswitch 1 
            L44 
            L136 
            default : L174 


        .stack append Object com/fs/starfarer/api/fleet/FleetGoal Object com/fs/starfarer/ui/impl/o0OO 
L44:    aload_0 
L45:    getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L48:    invokevirtual Method com/fs/starfarer/combat/CombatEngine isInCampaign ()Z 
L51:    ifeq L95 
L54:    new com/fs/starfarer/ui/impl/o0OO 
L57:    dup 
L58:    ldc_w +600.0f 
L61:    ldc_w +270.0f 
L64:    aload_0 
L65:    getfield Field com/fs/starfarer/combat/CombatState widgetPanel Lcom/fs/starfarer/ui/interfacenew; 
L68:    aload_0 
L69:    ldc_w 'Order a full retreat?\n\nAll ships not already retreating will be issued a "Retreat" order. You will not be able to deploy reinforcements or give any more orders.\n\nYour flagship can retreat from the battlefield by reaching the bottom edge of the map.' 
L72:    iconst_2 
L73:    anewarray java/lang/String 
L76:    dup 
L77:    iconst_0 
L78:    ldc_w 'Retreat!' 
L81:    aastore 
L82:    dup 
L83:    iconst_1 
L84:    ldc_w 'Cancel' 
L87:    aastore 
L88:    invokespecial Method com/fs/starfarer/ui/impl/o0OO <init> (FFLcom/fs/starfarer/ui/interfacenew;Lcom/fs/starfarer/ui/oo0O$o;Ljava/lang/String;[Ljava/lang/String;)V 
L91:    astore_2 
L92:    goto L174 

        .stack same 
L95:    new com/fs/starfarer/ui/impl/o0OO 
L98:    dup 
L99:    ldc_w +600.0f 
L102:   ldc_w +270.0f 
L105:   aload_0 
L106:   getfield Field com/fs/starfarer/combat/CombatState widgetPanel Lcom/fs/starfarer/ui/interfacenew; 
L109:   aload_0 
L110:   ldc_w 'Order a full retreat?\n\nAll ships not already retreating will be issued a "Retreat" order. You will not be able to deploy reinforcements or give any more orders.\n\nYour flagship can retreat from the battlefield by reaching the bottom edge of the map.' 
L113:   iconst_2 
L114:   anewarray java/lang/String 
L117:   dup 
L118:   iconst_0 
L119:   ldc_w 'Retreat!' 
L122:   aastore 
L123:   dup 
L124:   iconst_1 
L125:   ldc_w 'Cancel' 
L128:   aastore 
L129:   invokespecial Method com/fs/starfarer/ui/impl/o0OO <init> (FFLcom/fs/starfarer/ui/interfacenew;Lcom/fs/starfarer/ui/oo0O$o;Ljava/lang/String;[Ljava/lang/String;)V 
L132:   astore_2 
L133:   goto L174 

        .stack same 
L136:   new com/fs/starfarer/ui/impl/o0OO 
L139:   dup 
L140:   ldc_w +600.0f 
L143:   ldc_w +270.0f 
L146:   aload_0 
L147:   getfield Field com/fs/starfarer/combat/CombatState widgetPanel Lcom/fs/starfarer/ui/interfacenew; 
L150:   aload_0 
L151:   ldc_w 'Order a full retreat?\n\nAll ships not already retreating will be issued a "Retreat" order. You will not be able to deploy reinforcements or give any more orders.\n\nYour flagship can retreat from the battlefield by reaching the top edge of the map.' 
L154:   iconst_2 
L155:   anewarray java/lang/String 
L158:   dup 
L159:   iconst_0 
L160:   ldc_w 'Retreat!' 
L163:   aastore 
L164:   dup 
L165:   iconst_1 
L166:   ldc_w 'Cancel' 
L169:   aastore 
L170:   invokespecial Method com/fs/starfarer/ui/impl/o0OO <init> (FFLcom/fs/starfarer/ui/interfacenew;Lcom/fs/starfarer/ui/oo0O$o;Ljava/lang/String;[Ljava/lang/String;)V 
L173:   astore_2 

        .stack same 
L174:   aload_2 
L175:   ldc_w +0.30000001192092896f 
L178:   ldc_w +0.20000000298023224f 
L181:   invokevirtual Method com/fs/starfarer/ui/impl/o0OO show (FF)V 
L184:   aload_0 
L185:   getstatic Field com/fs/starfarer/combat/CombatState$o null Lcom/fs/starfarer/combat/CombatState$o; 
L188:   putfield Field com/fs/starfarer/combat/CombatState dialogType Lcom/fs/starfarer/combat/CombatState$o; 
L191:   aload_0 
L192:   aload_0 
L193:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L196:   invokevirtual Method com/fs/starfarer/combat/CombatEngine isPaused ()Z 
L199:   putfield Field com/fs/starfarer/combat/CombatState pauseStatusBeforeDialog Z 
L202:   aload_0 
L203:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L206:   iconst_1 
L207:   invokevirtual Method com/fs/starfarer/combat/CombatEngine setPaused (Z)V 
L210:   return 
L211:   
    .end code 
.end method 

.method public showStandingOrdersDialog : ()V 
    .code stack 4 locals 2 
L0:     new com/fs/starfarer/ui/impl/oooO 
L3:     dup 
L4:     aload_0 
L5:     getfield Field com/fs/starfarer/combat/CombatState widgetPanel Lcom/fs/starfarer/ui/interfacenew; 
L8:     aload_0 
L9:     invokespecial Method com/fs/starfarer/ui/impl/oooO <init> (Lcom/fs/starfarer/ui/interfacenew;Lcom/fs/starfarer/ui/oo0O$o;)V 
L12:    astore_1 
L13:    aload_1 
L14:    ldc_w +0.30000001192092896f 
L17:    ldc_w +0.20000000298023224f 
L20:    invokevirtual Method com/fs/starfarer/ui/impl/o0OO show (FF)V 
L23:    aload_0 
L24:    getstatic Field com/fs/starfarer/combat/CombatState$o o00000 Lcom/fs/starfarer/combat/CombatState$o; 
L27:    putfield Field com/fs/starfarer/combat/CombatState dialogType Lcom/fs/starfarer/combat/CombatState$o; 
L30:    aload_0 
L31:    aload_0 
L32:    getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L35:    invokevirtual Method com/fs/starfarer/combat/CombatEngine isPaused ()Z 
L38:    putfield Field com/fs/starfarer/combat/CombatState pauseStatusBeforeDialog Z 
L41:    aload_0 
L42:    getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L45:    iconst_1 
L46:    invokevirtual Method com/fs/starfarer/combat/CombatEngine setPaused (Z)V 
L49:    return 
L50:    
    .end code 
.end method 

.method private endCombatAndShowDialogIfMission : (Lcom/fs/starfarer/ui/oo0O;)V 
    .code stack 6 locals 3 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L4:     invokevirtual Method com/fs/starfarer/combat/CombatEngine doEndOfCombatProcessing ()V 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L11:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getStateToReturnTo ()Ljava/lang/String; 
L14:    ldc_w 'Campaign State' 
L17:    if_acmpne L70 
L20:    aload_1 
L21:    ifnull L37 
L24:    aload_0 
L25:    getfield Field com/fs/starfarer/combat/CombatState fader Lcom/fs/graphics/util/Fader; 
L28:    fconst_1 
L29:    aload_1 
L30:    invokevirtual Method com/fs/starfarer/ui/oo0O getBackgroundDimAmount ()F 
L33:    fsub 
L34:    invokevirtual Method com/fs/graphics/util/Fader setBrightness (F)V 

        .stack same 
L37:    aload_0 
L38:    aload_0 
L39:    getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L42:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getStateToReturnTo ()Ljava/lang/String; 
L45:    invokevirtual Method com/fs/starfarer/combat/CombatState goToState (Ljava/lang/String;)V 
L48:    aload_0 
L49:    getfield Field com/fs/starfarer/combat/CombatState session Ljava/util/Map; 
L52:    ldc_w 'campaign battle result' 
L55:    invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L58:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getResults ()Lcom/fs/starfarer/combat/Object/String; 
L61:    invokeinterface InterfaceMethod java/util/Map put (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 3 
L66:    pop 
L67:    goto L149 

        .stack same 
L70:    aload_0 
L71:    getfield Field com/fs/starfarer/combat/CombatState tutorialOverlay Lcom/fs/starfarer/tutorial/H; 
L74:    ifnull L91 
L77:    aload_0 
L78:    aload_0 
L79:    getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L82:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getStateToReturnTo ()Ljava/lang/String; 
L85:    invokevirtual Method com/fs/starfarer/combat/CombatState goToState (Ljava/lang/String;)V 
L88:    goto L149 

        .stack same 
L91:    new com/fs/starfarer/combat/Object/oOOO 
L94:    dup 
L95:    aload_0 
L96:    getfield Field com/fs/starfarer/combat/CombatState widgetPanel Lcom/fs/starfarer/ui/interfacenew; 
L99:    aload_0 
L100:   aload_0 
L101:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L104:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getResults ()Lcom/fs/starfarer/combat/Object/String; 
L107:   aload_0 
L108:   getfield Field com/fs/starfarer/combat/CombatState session Ljava/util/Map; 
L111:   invokespecial Method com/fs/starfarer/combat/Object/oOOO <init> (Lcom/fs/starfarer/ui/interfacenew;Lcom/fs/starfarer/ui/oo0O$o;Lcom/fs/starfarer/combat/Object/String;Ljava/util/Map;)V 
L114:   astore_2 
L115:   aload_2 
L116:   ldc +0.5f 
L118:   ldc +0.5f 
L120:   invokevirtual Method com/fs/starfarer/combat/Object/oOOO show (FF)V 
L123:   aload_0 
L124:   getstatic Field com/fs/starfarer/combat/CombatState$o 'Ó00000' Lcom/fs/starfarer/combat/CombatState$o; 
L127:   putfield Field com/fs/starfarer/combat/CombatState dialogType Lcom/fs/starfarer/combat/CombatState$o; 
L130:   aload_0 
L131:   aload_0 
L132:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L135:   invokevirtual Method com/fs/starfarer/combat/CombatEngine isPaused ()Z 
L138:   putfield Field com/fs/starfarer/combat/CombatState pauseStatusBeforeDialog Z 
L141:   aload_0 
L142:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L145:   iconst_1 
L146:   invokevirtual Method com/fs/starfarer/combat/CombatEngine setPaused (Z)V 

        .stack same 
L149:   return 
L150:   
    .end code 
.end method 

.method public isClaimedVictory : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatState claimedVictory Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public goToState : (Ljava/lang/String;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatState fader Lcom/fs/graphics/util/Fader; 
L4:     invokevirtual Method com/fs/graphics/util/Fader fadeOut ()V 
L7:     aload_0 
L8:     aload_1 
L9:     putfield Field com/fs/starfarer/combat/CombatState nextState Ljava/lang/String; 
L12:    return 
L13:    
    .end code 
.end method 

.method public dialogDismissed : (Lcom/fs/starfarer/ui/oo0O;I)V 
    .code stack 6 locals 7 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatState dialogType Lcom/fs/starfarer/combat/CombatState$o; 
L4:     ifnonnull L24 
L7:     getstatic Field com/fs/starfarer/combat/CombatState log Lorg/apache/log4j/Logger; 
L10:    ldc_w 'dialogType should not be null here' 
L13:    new java/lang/RuntimeException 
L16:    dup 
L17:    invokespecial Method java/lang/RuntimeException <init> ()V 
L20:    invokevirtual Method org/apache/log4j/Logger warn (Ljava/lang/Object;Ljava/lang/Throwable;)V 
L23:    return 

        .stack same 
L24:    aload_0 
L25:    aconst_null 
L26:    putfield Field com/fs/starfarer/combat/CombatState fdd Lcom/fs/starfarer/ui/impl/oO0O; 
L29:    iconst_1 
L30:    istore_3 
L31:    invokestatic Method com/fs/starfarer/combat/CombatState $SWITCH_TABLE$com$fs$starfarer$combat$CombatState$CurrentDialogType ()[I 
L34:    aload_0 
L35:    getfield Field com/fs/starfarer/combat/CombatState dialogType Lcom/fs/starfarer/combat/CombatState$o; 
L38:    invokevirtual Method com/fs/starfarer/combat/CombatState$o ordinal ()I 
L41:    iaload 
L42:    tableswitch 1 
            L96 
            L548 
            L581 
            L584 
            L703 
            L750 
            L747 
            L720 
            L753 
            L756 
            default : L756 


        .stack append Integer 
L96:    aload_1 
L97:    checkcast com/fs/starfarer/combat/E 
L100:   astore 4 
L102:   aload 4 
L104:   invokevirtual Method com/fs/starfarer/combat/E getMode ()Lcom/fs/starfarer/combat/E$Oo; 
L107:   astore 5 
L109:   invokestatic Method com/fs/starfarer/combat/CombatState $SWITCH_TABLE$com$fs$starfarer$combat$CombatMenuDialog$CombatMenuMode ()[I 
L112:   aload 5 
L114:   invokevirtual Method com/fs/starfarer/combat/E$Oo ordinal ()I 
L117:   iaload 
L118:   tableswitch 1 
            L318 
            L414 
            L243 
            L349 
            L361 
            L441 
            L526 
            L472 
            L168 
            default : L545 


        .stack append Object com/fs/starfarer/combat/E Object com/fs/starfarer/combat/E$Oo 
L168:   iload_2 
L169:   ifne L756 
L172:   aload_0 
L173:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L176:   iconst_0 
L177:   invokevirtual Method com/fs/starfarer/combat/CombatEngine setSideWithShipsDeployed (I)V 
L180:   aload_0 
L181:   iconst_1 
L182:   putfield Field com/fs/starfarer/combat/CombatState claimedVictory Z 
L185:   aload_0 
L186:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L189:   invokevirtual Method com/fs/starfarer/combat/CombatEngine doEndOfCombatProcessing ()V 
L192:   aload_0 
L193:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L196:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getResults ()Lcom/fs/starfarer/combat/Object/String; 
L199:   astore 6 
L201:   aload_0 
L202:   getfield Field com/fs/starfarer/combat/CombatState session Ljava/util/Map; 
L205:   ldc_w 'campaign battle result' 
L208:   aload 6 
L210:   invokeinterface InterfaceMethod java/util/Map put (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 3 
L215:   pop 
L216:   aload_0 
L217:   getfield Field com/fs/starfarer/combat/CombatState fader Lcom/fs/graphics/util/Fader; 
L220:   fconst_1 
L221:   aload_1 
L222:   invokevirtual Method com/fs/starfarer/ui/oo0O getBackgroundDimAmount ()F 
L225:   fsub 
L226:   invokevirtual Method com/fs/graphics/util/Fader setBrightness (F)V 
L229:   aload_0 
L230:   aload_0 
L231:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L234:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getStateToReturnTo ()Ljava/lang/String; 
L237:   invokevirtual Method com/fs/starfarer/combat/CombatState goToState (Ljava/lang/String;)V 
L240:   goto L756 

        .stack same_extended 
L243:   iload_2 
L244:   ifne L756 
L247:   aload_0 
L248:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L251:   iconst_0 
L252:   invokevirtual Method com/fs/starfarer/combat/CombatEngine setSideWithShipsDeployed (I)V 
L255:   aload_0 
L256:   iconst_1 
L257:   putfield Field com/fs/starfarer/combat/CombatState claimedVictory Z 
L260:   aload_0 
L261:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L264:   invokevirtual Method com/fs/starfarer/combat/CombatEngine doEndOfCombatProcessing ()V 
L267:   aload_0 
L268:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L271:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getResults ()Lcom/fs/starfarer/combat/Object/String; 
L274:   astore 6 
L276:   aload_0 
L277:   getfield Field com/fs/starfarer/combat/CombatState session Ljava/util/Map; 
L280:   ldc_w 'campaign battle result' 
L283:   aload 6 
L285:   invokeinterface InterfaceMethod java/util/Map put (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 3 
L290:   pop 
L291:   aload_0 
L292:   getfield Field com/fs/starfarer/combat/CombatState fader Lcom/fs/graphics/util/Fader; 
L295:   fconst_1 
L296:   aload_1 
L297:   invokevirtual Method com/fs/starfarer/ui/oo0O getBackgroundDimAmount ()F 
L300:   fsub 
L301:   invokevirtual Method com/fs/graphics/util/Fader setBrightness (F)V 
L304:   aload_0 
L305:   aload_0 
L306:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L309:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getStateToReturnTo ()Ljava/lang/String; 
L312:   invokevirtual Method com/fs/starfarer/combat/CombatState goToState (Ljava/lang/String;)V 
L315:   goto L756 

        .stack same_extended 
L318:   iload_2 
L319:   ifne L756 
L322:   aload_0 
L323:   getfield Field com/fs/starfarer/combat/CombatState fader Lcom/fs/graphics/util/Fader; 
L326:   fconst_1 
L327:   aload_1 
L328:   invokevirtual Method com/fs/starfarer/ui/oo0O getBackgroundDimAmount ()F 
L331:   fsub 
L332:   invokevirtual Method com/fs/graphics/util/Fader setBrightness (F)V 
L335:   aload_0 
L336:   aload_0 
L337:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L340:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getStateToReturnTo ()Ljava/lang/String; 
L343:   invokevirtual Method com/fs/starfarer/combat/CombatState goToState (Ljava/lang/String;)V 
L346:   goto L756 

        .stack same 
L349:   iload_2 
L350:   ifne L756 
L353:   new com/fs/starfarer/super 
L356:   dup 
L357:   invokespecial Method com/fs/starfarer/super <init> ()V 
L360:   athrow 

        .stack same 
L361:   iload_2 
L362:   ifne L756 
L365:   aload_0 
L366:   getfield Field com/fs/starfarer/combat/CombatState fader Lcom/fs/graphics/util/Fader; 
L369:   fconst_1 
L370:   aload_1 
L371:   invokevirtual Method com/fs/starfarer/ui/oo0O getBackgroundDimAmount ()F 
L374:   fsub 
L375:   invokevirtual Method com/fs/graphics/util/Fader setBrightness (F)V 
L378:   invokestatic Method com/fs/state/AppDriver getInstance ()Lcom/fs/state/AppDriver; 
L381:   ldc_w 'Campaign State' 
L384:   invokevirtual Method com/fs/state/AppDriver getState (Ljava/lang/String;)Lcom/fs/state/AppState; 
L387:   checkcast com/fs/starfarer/campaign/CampaignState 
L390:   astore 6 
L392:   aload 6 
L394:   aconst_null 
L395:   invokevirtual Method com/fs/starfarer/campaign/CampaignState setDialogType (Lcom/fs/starfarer/campaign/CampaignState$o;)V 
L398:   aload 6 
L400:   aconst_null 
L401:   invokevirtual Method com/fs/starfarer/campaign/CampaignState setEncounterDialog (Lcom/fs/starfarer/ui/newui/o0Oo;)V 
L404:   aload_0 
L405:   ldc_w 'Title Screen State' 
L408:   invokevirtual Method com/fs/starfarer/combat/CombatState goToState (Ljava/lang/String;)V 
L411:   goto L756 

        .stack same 
L414:   iload_2 
L415:   ifne L756 
L418:   aload_0 
L419:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L422:   iconst_0 
L423:   invokevirtual Method com/fs/starfarer/combat/CombatEngine setSideWithShipsDeployed (I)V 
L426:   aload_0 
L427:   iconst_1 
L428:   putfield Field com/fs/starfarer/combat/CombatState claimedVictory Z 
L431:   aload_0 
L432:   aload_1 
L433:   invokevirtual Method com/fs/starfarer/combat/CombatState endCombatAndShowDialogIfMission (Lcom/fs/starfarer/ui/oo0O;)V 
L436:   iconst_0 
L437:   istore_3 
L438:   goto L756 

        .stack same 
L441:   iload_2 
L442:   ifne L756 
L445:   aload_0 
L446:   getfield Field com/fs/starfarer/combat/CombatState fader Lcom/fs/graphics/util/Fader; 
L449:   fconst_1 
L450:   aload_1 
L451:   invokevirtual Method com/fs/starfarer/ui/oo0O getBackgroundDimAmount ()F 
L454:   fsub 
L455:   invokevirtual Method com/fs/graphics/util/Fader setBrightness (F)V 
L458:   aload_0 
L459:   aload_0 
L460:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L463:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getStateToReturnTo ()Ljava/lang/String; 
L466:   invokevirtual Method com/fs/starfarer/combat/CombatState goToState (Ljava/lang/String;)V 
L469:   goto L756 

        .stack same 
L472:   iload_2 
L473:   ifne L756 
L476:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'OÓ0000' ()Z 
L479:   ifne L489 
L482:   aload_0 
L483:   getfield Field com/fs/starfarer/combat/CombatState showDefeatDialogOnExit Z 
L486:   ifne L516 

        .stack same 
L489:   aload_0 
L490:   getfield Field com/fs/starfarer/combat/CombatState fader Lcom/fs/graphics/util/Fader; 
L493:   fconst_1 
L494:   aload_1 
L495:   invokevirtual Method com/fs/starfarer/ui/oo0O getBackgroundDimAmount ()F 
L498:   fsub 
L499:   invokevirtual Method com/fs/graphics/util/Fader setBrightness (F)V 
L502:   aload_0 
L503:   aload_0 
L504:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L507:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getStateToReturnTo ()Ljava/lang/String; 
L510:   invokevirtual Method com/fs/starfarer/combat/CombatState goToState (Ljava/lang/String;)V 
L513:   goto L756 

        .stack same 
L516:   aload_0 
L517:   aload_1 
L518:   invokevirtual Method com/fs/starfarer/combat/CombatState endCombatAndShowDialogIfMission (Lcom/fs/starfarer/ui/oo0O;)V 
L521:   iconst_0 
L522:   istore_3 
L523:   goto L756 

        .stack same 
L526:   iload_2 
L527:   ifne L756 
L530:   aload_0 
L531:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L534:   iconst_0 
L535:   invokevirtual Method com/fs/starfarer/combat/CombatEngine setSideWithShipsDeployed (I)V 
L538:   aload_0 
L539:   aload_1 
L540:   invokevirtual Method com/fs/starfarer/combat/CombatState endCombatAndShowDialogIfMission (Lcom/fs/starfarer/ui/oo0O;)V 
L543:   iconst_0 
L544:   istore_3 

        .stack same 
L545:   goto L756 

        .stack chop 2 
L548:   aload_0 
L549:   aload_0 
L550:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L553:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getStateToReturnTo ()Ljava/lang/String; 
L556:   invokevirtual Method com/fs/starfarer/combat/CombatState goToState (Ljava/lang/String;)V 
L559:   aload_0 
L560:   getfield Field com/fs/starfarer/combat/CombatState session Ljava/util/Map; 
L563:   ldc_w 'missionResults' 
L566:   invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L569:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getResults ()Lcom/fs/starfarer/combat/Object/String; 
L572:   invokeinterface InterfaceMethod java/util/Map put (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 3 
L577:   pop 
L578:   goto L756 

        .stack same 
L581:   goto L756 

        .stack same 
L584:   iload_2 
L585:   ifne L756 
L588:   aload_0 
L589:   getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L592:   ifnull L756 
L595:   aload_0 
L596:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L599:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerFleetManager ()Lcom/fs/starfarer/combat/CombatFleetManager; 
L602:   aload_0 
L603:   getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L606:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getDeployedFleetMember (Lcom/fs/starfarer/combat/entities/Ship;)Lcom/fs/starfarer/combat/CombatFleetManager$O0; 
L609:   astore 6 
L611:   aload_0 
L612:   getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L615:   invokestatic Method com/fs/starfarer/launcher/ModManager getInstance ()Lcom/fs/starfarer/launcher/ModManager; 
L618:   aload 6 
L620:   ifnonnull L627 
L623:   aconst_null 
L624:   goto L632 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Object com/fs/starfarer/ui/oo0O Integer Integer Top Top Object com/fs/starfarer/combat/CombatFleetManager$O0 
            stack Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/launcher/ModManager 
        .end stack 
L627:   aload 6 
L629:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getMember ()Lcom/fs/starfarer/campaign/fleet/FleetMember; 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Object com/fs/starfarer/ui/oo0O Integer Integer Top Top Object com/fs/starfarer/combat/CombatFleetManager$O0 
            stack Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/launcher/ModManager Object com/fs/starfarer/campaign/fleet/FleetMember 
        .end stack 
L632:   aload_0 
L633:   getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L636:   invokevirtual Method com/fs/starfarer/launcher/ModManager pickShipAIPlugin (Lcom/fs/starfarer/campaign/fleet/FleetMember;Lcom/fs/starfarer/api/combat/ShipAPI;)Lcom/fs/starfarer/api/combat/ShipAIPlugin; 
L639:   invokevirtual Method com/fs/starfarer/combat/entities/Ship setShipAI (Lcom/fs/starfarer/api/combat/ShipAIPlugin;)V 
L642:   aload 6 
L644:   ifnull L659 
L647:   aload_0 
L648:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L651:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerTaskManager ()Lcom/fs/starfarer/combat/tasks/CombatTaskManager; 
L654:   aload 6 
L656:   invokevirtual Method com/fs/starfarer/combat/tasks/CombatTaskManager clearAssignedOrders (Lcom/fs/starfarer/combat/CombatFleetManager$O0;)V 

        .stack same 
L659:   aload_0 
L660:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L663:   aload_0 
L664:   getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L667:   new com/fs/starfarer/combat/tasks/Object 
L670:   dup 
L671:   getstatic Field com/fs/starfarer/combat/tasks/Object$o String Lcom/fs/starfarer/combat/tasks/Object$o; 
L674:   iconst_0 
L675:   invokespecial Method com/fs/starfarer/combat/tasks/Object <init> (Lcom/fs/starfarer/combat/tasks/Object$o;Z)V 
L678:   invokevirtual Method com/fs/starfarer/combat/CombatEngine giveDirectOrder (Lcom/fs/starfarer/combat/entities/Ship;Lcom/fs/starfarer/combat/tasks/Object;)V 
L681:   aload_0 
L682:   getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L685:   iconst_1 
L686:   iconst_0 
L687:   invokevirtual Method com/fs/starfarer/combat/entities/Ship setRetreating (ZZ)V 
L690:   aload_0 
L691:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L694:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerTaskManager ()Lcom/fs/starfarer/combat/tasks/CombatTaskManager; 
L697:   invokevirtual Method com/fs/starfarer/combat/tasks/CombatTaskManager reassignPlayerShipsOnly ()V 
L700:   goto L756 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Object com/fs/starfarer/ui/oo0O Integer Integer 
            stack 
        .end stack 
L703:   iload_2 
L704:   ifne L756 
L707:   aload_0 
L708:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L711:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerTaskManager ()Lcom/fs/starfarer/combat/tasks/CombatTaskManager; 
L714:   invokevirtual Method com/fs/starfarer/combat/tasks/CombatTaskManager orderFullRetreat ()V 
L717:   goto L756 

        .stack same 
L720:   iload_2 
L721:   ifne L756 
L724:   aload_0 
L725:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L728:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerTaskManager ()Lcom/fs/starfarer/combat/tasks/CombatTaskManager; 
L731:   invokevirtual Method com/fs/starfarer/combat/tasks/CombatTaskManager orderSearchAndDestroy ()V 
L734:   aload_0 
L735:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L738:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerTaskManager ()Lcom/fs/starfarer/combat/tasks/CombatTaskManager; 
L741:   invokevirtual Method com/fs/starfarer/combat/tasks/CombatTaskManager reassignPlayerShipsOnly ()V 
L744:   goto L756 

        .stack same 
L747:   goto L756 

        .stack same 
L750:   goto L756 

        .stack same 
L753:   goto L756 

        .stack same 
L756:   iload_3 
L757:   ifeq L776 
L760:   aload_0 
L761:   aconst_null 
L762:   putfield Field com/fs/starfarer/combat/CombatState dialogType Lcom/fs/starfarer/combat/CombatState$o; 
L765:   aload_0 
L766:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L769:   aload_0 
L770:   getfield Field com/fs/starfarer/combat/CombatState pauseStatusBeforeDialog Z 
L773:   invokevirtual Method com/fs/starfarer/combat/CombatEngine setPaused (Z)V 

        .stack same 
L776:   return 
L777:   
    .end code 
.end method 

.method public shipReachedMapBounds : (Lcom/fs/starfarer/combat/entities/Ship;)V 
    .code stack 0 locals 2 
L0:     return 
L1:     
    .end code 
.end method 

.method public isShowingDialog : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatState dialogType Lcom/fs/starfarer/combat/CombatState$o; 
L4:     ifnull L9 
L7:     iconst_1 
L8:     ireturn 

        .stack same 
L9:     iconst_0 
L10:    ireturn 
L11:    
    .end code 
.end method 

.method public setShowDefeatDialogOnExit : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/CombatState showDefeatDialogOnExit Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public isAutopilotOn : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatState autopilot Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public setAutopilot : (Z)V 
    .code stack 5 locals 5 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L4:     invokevirtual Method com/fs/starfarer/combat/entities/Ship isStation ()Z 
L7:     ifeq L15 
L10:    iload_1 
L11:    ifne L15 
L14:    return 

        .stack same 
L15:    aload_0 
L16:    getfield Field com/fs/starfarer/combat/CombatState autopilot Z 
L19:    istore_2 
L20:    aload_0 
L21:    iload_1 
L22:    putfield Field com/fs/starfarer/combat/CombatState autopilot Z 
L25:    aload_0 
L26:    getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L29:    ifnull L332 
L32:    aload_0 
L33:    getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L36:    invokevirtual Method com/fs/starfarer/combat/entities/Ship isShuttlePod ()Z 
L39:    ifeq L43 
L42:    return 

        .stack append Integer 
L43:    iload_1 
L44:    ifeq L297 
L47:    aload_0 
L48:    getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L51:    invokevirtual Method com/fs/starfarer/combat/entities/Ship isStation ()Z 
L54:    ifeq L78 
L57:    aload_0 
L58:    invokevirtual Method com/fs/starfarer/combat/CombatState getMessageWidget ()Lcom/fs/starfarer/class/C; 
L61:    iconst_1 
L62:    anewarray java/lang/Object 
L65:    dup 
L66:    iconst_0 
L67:    ldc_w 'Station autopilot enabled and may not be disengaged.' 
L70:    aastore 
L71:    invokevirtual Method com/fs/starfarer/class/C o00000 ([Ljava/lang/Object;)Lcom/fs/starfarer/class/O0OO/C; 
L74:    pop 
L75:    goto L100 

        .stack same 
L78:    iload_2 
L79:    ifne L100 
L82:    aload_0 
L83:    invokevirtual Method com/fs/starfarer/combat/CombatState getMessageWidget ()Lcom/fs/starfarer/class/C; 
L86:    iconst_1 
L87:    anewarray java/lang/Object 
L90:    dup 
L91:    iconst_0 
L92:    ldc_w 'Autopilot enabled. Any attempt at manual ship control will disable it.' 
L95:    aastore 
L96:    invokevirtual Method com/fs/starfarer/class/C o00000 ([Ljava/lang/Object;)Lcom/fs/starfarer/class/O0OO/C; 
L99:    pop 

        .stack same 
L100:   aload_0 
L101:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L104:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerFleetManager ()Lcom/fs/starfarer/combat/CombatFleetManager; 
L107:   aload_0 
L108:   getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L111:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getDeployedFleetMember (Lcom/fs/starfarer/combat/entities/Ship;)Lcom/fs/starfarer/combat/CombatFleetManager$O0; 
L114:   astore_3 
L115:   aload_0 
L116:   getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L119:   invokestatic Method com/fs/starfarer/launcher/ModManager getInstance ()Lcom/fs/starfarer/launcher/ModManager; 
L122:   aload_3 
L123:   ifnonnull L130 
L126:   aconst_null 
L127:   goto L134 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Integer Object com/fs/starfarer/combat/CombatFleetManager$O0 
            stack Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/launcher/ModManager 
        .end stack 
L130:   aload_3 
L131:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getMember ()Lcom/fs/starfarer/campaign/fleet/FleetMember; 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Integer Integer Object com/fs/starfarer/combat/CombatFleetManager$O0 
            stack Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/launcher/ModManager Object com/fs/starfarer/campaign/fleet/FleetMember 
        .end stack 
L134:   aload_0 
L135:   getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L138:   invokevirtual Method com/fs/starfarer/launcher/ModManager pickShipAIPlugin (Lcom/fs/starfarer/campaign/fleet/FleetMember;Lcom/fs/starfarer/api/combat/ShipAPI;)Lcom/fs/starfarer/api/combat/ShipAIPlugin; 
L141:   invokevirtual Method com/fs/starfarer/combat/entities/Ship setShipAI (Lcom/fs/starfarer/api/combat/ShipAIPlugin;)V 
L144:   aload_0 
L145:   getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L148:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getAI ()Lcom/fs/starfarer/combat/ai/AI; 
L151:   instanceof com/fs/starfarer/combat/ai/BasicShipAI 
L154:   ifeq L268 
L157:   aload_0 
L158:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L161:   invokevirtual Method com/fs/starfarer/combat/CombatEngine isInCampaign ()Z 
L164:   ifne L177 
L167:   aload_0 
L168:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L171:   invokevirtual Method com/fs/starfarer/combat/CombatEngine isInCampaignSim ()Z 
L174:   ifeq L252 

        .stack same 
L177:   aload_0 
L178:   getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L181:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getCaptain ()Lcom/fs/starfarer/rpg/Person; 
L184:   ifnull L252 
L187:   aload_0 
L188:   getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L191:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getCaptain ()Lcom/fs/starfarer/rpg/Person; 
L194:   invokevirtual Method com/fs/starfarer/rpg/Person isPlayer ()Z 
L197:   ifne L213 
L200:   aload_0 
L201:   getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L204:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getCaptain ()Lcom/fs/starfarer/rpg/Person; 
L207:   invokevirtual Method com/fs/starfarer/rpg/Person isDefault ()Z 
L210:   ifeq L252 

        .stack same 
L213:   aload_0 
L214:   getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L217:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getAI ()Lcom/fs/starfarer/combat/ai/AI; 
L220:   checkcast com/fs/starfarer/combat/ai/BasicShipAI 
L223:   astore 4 
L225:   aload 4 
L227:   invokevirtual Method com/fs/starfarer/combat/ai/BasicShipAI getConfig ()Lcom/fs/starfarer/api/combat/ShipAIConfig; 
L230:   invokestatic Method com/fs/starfarer/api/Global getSector ()Lcom/fs/starfarer/api/campaign/SectorAPI; 
L233:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorAPI getPlayerFaction ()Lcom/fs/starfarer/api/campaign/FactionAPI; 1 
L238:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/FactionAPI getPersonalityPicker ()Lcom/fs/starfarer/api/util/WeightedRandomPicker; 1 
L243:   invokevirtual Method com/fs/starfarer/api/util/WeightedRandomPicker pick ()Ljava/lang/Object; 
L246:   checkcast java/lang/String 
L249:   putfield Field com/fs/starfarer/api/combat/ShipAIConfig personalityOverride Ljava/lang/String; 

        .stack same 
L252:   aload_0 
L253:   getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L256:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getAI ()Lcom/fs/starfarer/combat/ai/AI; 
L259:   checkcast com/fs/starfarer/combat/ai/BasicShipAI 
L262:   invokevirtual Method com/fs/starfarer/combat/ai/BasicShipAI forceCircumstanceEvaluation ()V 
L265:   goto L323 

        .stack same 
L268:   aload_0 
L269:   getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L272:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getAI ()Lcom/fs/starfarer/combat/ai/AI; 
L275:   instanceof com/fs/starfarer/combat/entities/Ship$ShipAIWrapper 
L278:   ifeq L323 
L281:   aload_0 
L282:   getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L285:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getAI ()Lcom/fs/starfarer/combat/ai/AI; 
L288:   checkcast com/fs/starfarer/combat/entities/Ship$ShipAIWrapper 
L291:   invokevirtual Method com/fs/starfarer/combat/entities/Ship$ShipAIWrapper forceCircumstanceEvaluation ()V 
L294:   goto L323 

        .stack chop 1 
L297:   aload_0 
L298:   invokevirtual Method com/fs/starfarer/combat/CombatState getMessageWidget ()Lcom/fs/starfarer/class/C; 
L301:   iconst_1 
L302:   anewarray java/lang/Object 
L305:   dup 
L306:   iconst_0 
L307:   ldc_w 'Autopilot disabled.' 
L310:   aastore 
L311:   invokevirtual Method com/fs/starfarer/class/C o00000 ([Ljava/lang/Object;)Lcom/fs/starfarer/class/O0OO/C; 
L314:   pop 
L315:   aload_0 
L316:   getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L319:   aconst_null 
L320:   invokevirtual Method com/fs/starfarer/combat/entities/Ship setAI (Lcom/fs/starfarer/combat/ai/AI;)V 

        .stack same 
L323:   invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L326:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerTaskManager ()Lcom/fs/starfarer/combat/tasks/CombatTaskManager; 
L329:   invokevirtual Method com/fs/starfarer/combat/tasks/CombatTaskManager reassignPlayerShipsOnly ()V 

        .stack same 
L332:   return 
L333:   
    .end code 
.end method 

.method public setShowDeploymentDialogOnStart : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/CombatState showDeploymentDialog Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public getWhiteout : ()Lcom/fs/starfarer/renderers/damage/OooO; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L4:     invokevirtual Method com/fs/starfarer/combat/CombatEngine getWhiteout ()Lcom/fs/starfarer/renderers/damage/OooO; 
L7:     areturn 
L8:     
    .end code 
.end method 

.method public getScreenPanel : ()Lcom/fs/starfarer/ui/interfacenew; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatState widgetPanel Lcom/fs/starfarer/ui/interfacenew; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public handleScrollControls : (F)V 
    .code stack 4 locals 19 
L0:     ldc_w +1000.0f 
L3:     fstore_2 
L4:     invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'while.new' ()F 
L7:     fstore_3 
L8:     invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'öÒ0000' ()F 
L11:    fstore 4 
L13:    invokestatic Method com/fs/starfarer/util/A/C getMouseX ()I 
L16:    i2f 
L17:    fstore 5 
L19:    invokestatic Method com/fs/starfarer/util/A/C getMouseY ()I 
L22:    i2f 
L23:    fstore 6 
L25:    ldc_w +50.0f 
L28:    fstore 7 
L30:    iconst_1 
L31:    istore 8 
L33:    iconst_1 
L34:    invokestatic Method org/lwjgl/input/Mouse isButtonDown (I)Z 
L37:    ifeq L48 
L40:    ldc_w -1000.0f 
L43:    fstore 7 
L45:    iconst_0 
L46:    istore 8 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Float Float Float Float Float Float Float Integer 
            stack 
        .end stack 
L48:    iload 8 
L50:    invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'OÓ0000' ()Z 
L53:    ifeq L66 
L56:    invokestatic Method org/lwjgl/opengl/Display isFullscreen ()Z 
L59:    ifne L66 
L62:    iconst_0 
L63:    goto L67 

        .stack stack_1 Integer 
L66:    iconst_1 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Float Float Float Float Float Float Float Integer 
            stack Integer Integer 
        .end stack 
L67:    iand 
L68:    istore 8 
L70:    fload 6 
L72:    fload 4 
L74:    fload 7 
L76:    fsub 
L77:    fcmpl 
L78:    iflt L85 
L81:    iconst_1 
L82:    goto L86 

        .stack same 
L85:    iconst_0 

        .stack stack_1 Integer 
L86:    istore 9 
L88:    fload 6 
L90:    fload 7 
L92:    fcmpg 
L93:    ifge L100 
L96:    iconst_1 
L97:    goto L101 

        .stack append Integer 
L100:   iconst_0 

        .stack stack_1 Integer 
L101:   istore 10 
L103:   fload 5 
L105:   fload 7 
L107:   fcmpg 
L108:   ifge L115 
L111:   iconst_1 
L112:   goto L116 

        .stack append Integer 
L115:   iconst_0 

        .stack stack_1 Integer 
L116:   istore 11 
L118:   fload 5 
L120:   fload_3 
L121:   fload 7 
L123:   fsub 
L124:   fcmpl 
L125:   iflt L132 
L128:   iconst_1 
L129:   goto L133 

        .stack append Integer 
L132:   iconst_0 

        .stack stack_1 Integer 
L133:   istore 12 
L135:   invokestatic Method org/lwjgl/input/Mouse isInsideWindow ()Z 
L138:   ifeq L203 
L141:   invokestatic Method org/lwjgl/opengl/Display isActive ()Z 
L144:   ifeq L203 
L147:   invokestatic Method org/lwjgl/opengl/Display isVisible ()Z 
L150:   ifeq L203 
L153:   invokestatic Method com/fs/starfarer/util/A/A 'Ò00000' ()Lcom/fs/starfarer/util/A/C; 
L156:   astore 13 
L158:   aload_0 
L159:   aload_0 
L160:   getfield Field com/fs/starfarer/combat/CombatState lastMouseDX F 
L163:   ldc +0.5f 
L165:   fmul 
L166:   ldc +0.5f 
L168:   aload 13 
L170:   invokevirtual Method com/fs/starfarer/util/A/C getDX ()I 
L173:   i2f 
L174:   fmul 
L175:   fadd 
L176:   putfield Field com/fs/starfarer/combat/CombatState lastMouseDX F 
L179:   aload_0 
L180:   aload_0 
L181:   getfield Field com/fs/starfarer/combat/CombatState lastMouseDY F 
L184:   ldc +0.5f 
L186:   fmul 
L187:   ldc +0.5f 
L189:   aload 13 
L191:   invokevirtual Method com/fs/starfarer/util/A/C getDY ()I 
L194:   i2f 
L195:   fmul 
L196:   fadd 
L197:   putfield Field com/fs/starfarer/combat/CombatState lastMouseDY F 
L200:   goto L331 

        .stack append Integer 
L203:   iload 8 
L205:   ifeq L331 
L208:   invokestatic Method org/lwjgl/opengl/Display isActive ()Z 
L211:   ifeq L331 
L214:   invokestatic Method org/lwjgl/opengl/Display isVisible ()Z 
L217:   ifeq L331 
L220:   aload_0 
L221:   getfield Field com/fs/starfarer/combat/CombatState lastMouseDX F 
L224:   fload 7 
L226:   ldc_w +0.25f 
L229:   fmul 
L230:   fcmpl 
L231:   ifle L248 
L234:   fload 5 
L236:   fload_3 
L237:   ldc_w +100.0f 
L240:   fsub 
L241:   fcmpl 
L242:   ifle L248 
L245:   iconst_1 
L246:   istore 12 

        .stack same 
L248:   aload_0 
L249:   getfield Field com/fs/starfarer/combat/CombatState lastMouseDX F 
L252:   fload 7 
L254:   fneg 
L255:   ldc_w +0.25f 
L258:   fmul 
L259:   fcmpg 
L260:   ifge L275 
L263:   fload 5 
L265:   ldc_w +100.0f 
L268:   fcmpg 
L269:   ifge L275 
L272:   iconst_1 
L273:   istore 11 

        .stack same 
L275:   aload_0 
L276:   getfield Field com/fs/starfarer/combat/CombatState lastMouseDY F 
L279:   fload 7 
L281:   ldc_w +0.25f 
L284:   fmul 
L285:   fcmpl 
L286:   ifle L304 
L289:   fload 6 
L291:   fload 4 
L293:   ldc_w +100.0f 
L296:   fsub 
L297:   fcmpl 
L298:   ifle L304 
L301:   iconst_1 
L302:   istore 9 

        .stack same 
L304:   aload_0 
L305:   getfield Field com/fs/starfarer/combat/CombatState lastMouseDY F 
L308:   fload 7 
L310:   fneg 
L311:   ldc_w +0.25f 
L314:   fmul 
L315:   fcmpg 
L316:   ifge L331 
L319:   fload 6 
L321:   ldc_w +100.0f 
L324:   fcmpg 
L325:   ifge L331 
L328:   iconst_1 
L329:   istore 10 

        .stack same 
L331:   aload_0 
L332:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L335:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getCombatMap ()Lcom/fs/starfarer/combat/A/B; 
L338:   astore 13 
L340:   aload 13 
L342:   invokevirtual Method com/fs/starfarer/combat/A/B 'ø00000' ()F 
L345:   fstore 14 
L347:   aload 13 
L349:   invokevirtual Method com/fs/starfarer/combat/A/B 'super' ()F 
L352:   fstore 15 
L354:   aload 13 
L356:   invokevirtual Method com/fs/starfarer/combat/A/B 'Ò00000' ()F 
L359:   fstore 16 
L361:   aload 13 
L363:   invokevirtual Method com/fs/starfarer/combat/A/B 'Õ00000' ()F 
L366:   fstore 17 
L368:   aload_0 
L369:   invokevirtual Method com/fs/starfarer/combat/CombatState getZoomFactor ()F 
L372:   fstore 18 
L374:   getstatic Field [c1465] 'øÔ0000' [u1030] 
L377:   invokestatic Method [c1471] 'Ø00000' [u1328] 
L380:   ifne L388 
L383:   iload 11 
L385:   ifeq L430 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Float Float Float Float Float Float Float Integer Integer Integer Integer Integer Object com/fs/starfarer/combat/A/B Float Float Float Float Float 
            stack 
        .end stack 
L388:   aload_0 
L389:   dup 
L390:   getfield Field com/fs/starfarer/combat/CombatState panX F 
L393:   fload_1 
L394:   fload_2 
L395:   fmul 
L396:   fsub 
L397:   putfield Field com/fs/starfarer/combat/CombatState panX F 
L400:   aload_0 
L401:   getfield Field com/fs/starfarer/combat/CombatState panX F 
L404:   fload 16 
L406:   fload_3 
L407:   fconst_2 
L408:   fdiv 
L409:   fload 18 
L411:   fmul 
L412:   fadd 
L413:   fcmpg 
L414:   ifge L430 
L417:   aload_0 
L418:   fload 16 
L420:   fload_3 
L421:   fconst_2 
L422:   fdiv 
L423:   fload 18 
L425:   fmul 
L426:   fadd 
L427:   putfield Field com/fs/starfarer/combat/CombatState panX F 

        .stack same 
L430:   getstatic Field [c1465] 'private.return' [u1030] 
L433:   invokestatic Method [c1471] 'Ø00000' [u1328] 
L436:   ifne L444 
L439:   iload 12 
L441:   ifeq L492 

        .stack same 
L444:   aload_0 
L445:   dup 
L446:   getfield Field com/fs/starfarer/combat/CombatState panX F 
L449:   fload_1 
L450:   fload_2 
L451:   fmul 
L452:   fadd 
L453:   putfield Field com/fs/starfarer/combat/CombatState panX F 
L456:   aload_0 
L457:   getfield Field com/fs/starfarer/combat/CombatState panX F 
L460:   fload 16 
L462:   fload 14 
L464:   fadd 
L465:   fload_3 
L466:   fconst_2 
L467:   fdiv 
L468:   fload 18 
L470:   fmul 
L471:   fsub 
L472:   fcmpl 
L473:   ifle L492 
L476:   aload_0 
L477:   fload 16 
L479:   fload 14 
L481:   fadd 
L482:   fload_3 
L483:   fconst_2 
L484:   fdiv 
L485:   fload 18 
L487:   fmul 
L488:   fsub 
L489:   putfield Field com/fs/starfarer/combat/CombatState panX F 

        .stack same 
L492:   getstatic Field [c1465] 'String.new' [u1030] 
L495:   invokestatic Method [c1471] 'Ø00000' [u1328] 
L498:   ifne L506 
L501:   iload 10 
L503:   ifeq L550 

        .stack same 
L506:   aload_0 
L507:   dup 
L508:   getfield Field com/fs/starfarer/combat/CombatState panY F 
L511:   fload_1 
L512:   fload_2 
L513:   fmul 
L514:   fsub 
L515:   putfield Field com/fs/starfarer/combat/CombatState panY F 
L518:   aload_0 
L519:   getfield Field com/fs/starfarer/combat/CombatState panY F 
L522:   fload 17 
L524:   fload 4 
L526:   fconst_2 
L527:   fdiv 
L528:   fload 18 
L530:   fmul 
L531:   fadd 
L532:   fcmpg 
L533:   ifge L550 
L536:   aload_0 
L537:   fload 17 
L539:   fload 4 
L541:   fconst_2 
L542:   fdiv 
L543:   fload 18 
L545:   fmul 
L546:   fadd 
L547:   putfield Field com/fs/starfarer/combat/CombatState panY F 

        .stack same 
L550:   getstatic Field [c1465] 'ÕÕ0000' [u1030] 
L553:   invokestatic Method [c1471] 'Ø00000' [u1328] 
L556:   ifne L564 
L559:   iload 9 
L561:   ifeq L614 

        .stack same 
L564:   aload_0 
L565:   dup 
L566:   getfield Field com/fs/starfarer/combat/CombatState panY F 
L569:   fload_1 
L570:   fload_2 
L571:   fmul 
L572:   fadd 
L573:   putfield Field com/fs/starfarer/combat/CombatState panY F 
L576:   aload_0 
L577:   getfield Field com/fs/starfarer/combat/CombatState panY F 
L580:   fload 17 
L582:   fload 15 
L584:   fadd 
L585:   fload 4 
L587:   fconst_2 
L588:   fdiv 
L589:   fload 18 
L591:   fmul 
L592:   fsub 
L593:   fcmpl 
L594:   ifle L614 
L597:   aload_0 
L598:   fload 17 
L600:   fload 15 
L602:   fadd 
L603:   fload 4 
L605:   fconst_2 
L606:   fdiv 
L607:   fload 18 
L609:   fmul 
L610:   fsub 
L611:   putfield Field com/fs/starfarer/combat/CombatState panY F 

        .stack same 
L614:   return 
L615:   
    .end code 
.end method 

.method public varargs addMessage : (I[Ljava/lang/Object;)V 
    .code stack 3 locals 3 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/CombatState getMessageWidget ()Lcom/fs/starfarer/class/C; 
L4:     iload_1 
L5:     aload_2 
L6:     invokevirtual Method com/fs/starfarer/class/C o00000 (I[Ljava/lang/Object;)Lcom/fs/starfarer/class/O0OO/C; 
L9:     pop 
L10:    return 
L11:    
    .end code 
.end method 

.method protected replacePlayerShip : ()V 
    .code stack 6 locals 8 
L0:     new java/util/ArrayList 
L3:     dup 
L4:     invokespecial Method java/util/ArrayList <init> ()V 
L7:     astore_1 
L8:     aload_1 
L9:     ldc_w 'wolf_Assault' 
L12:    invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L17:    pop 
L18:    aload_1 
L19:    ldc_w 'apogee_Balanced' 
L22:    invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L27:    pop 
L28:    aload_0 
L29:    getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L32:    ifnull L295 
L35:    aload_0 
L36:    getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L39:    astore_2 
L40:    new com/fs/starfarer/api/plugins/impl/CoreAutofitPlugin 
L43:    dup 
L44:    aconst_null 
L45:    invokespecial Method com/fs/starfarer/api/plugins/impl/CoreAutofitPlugin <init> (Lcom/fs/starfarer/api/characters/PersonAPI;)V 
L48:    astore_3 
L49:    aload_3 
L50:    new java/util/Random 
L53:    dup 
L54:    invokespecial Method java/util/Random <init> ()V 
L57:    invokevirtual Method com/fs/starfarer/api/plugins/impl/CoreAutofitPlugin setRandom (Ljava/util/Random;)V 
L60:    aload_3 
L61:    getstatic Field com/fs/starfarer/api/plugins/impl/CoreAutofitPlugin UPGRADE Ljava/lang/String; 
L64:    iconst_1 
L65:    invokevirtual Method com/fs/starfarer/api/plugins/impl/CoreAutofitPlugin setChecked (Ljava/lang/String;Z)V 
L68:    aload_3 
L69:    getstatic Field com/fs/starfarer/api/plugins/impl/CoreAutofitPlugin RANDOMIZE Ljava/lang/String; 
L72:    iconst_1 
L73:    invokevirtual Method com/fs/starfarer/api/plugins/impl/CoreAutofitPlugin setChecked (Ljava/lang/String;Z)V 
L76:    aload_2 
L77:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getVariant ()Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L80:    astore 4 
L82:    aload 4 
L84:    invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullVariantId ()Ljava/lang/String; 
L87:    astore 5 
L89:    aload 4 
L91:    invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getOriginalVariant ()Ljava/lang/String; 
L94:    ifnull L104 
L97:    aload 4 
L99:    invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getOriginalVariant ()Ljava/lang/String; 
L102:   astore 5 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Object java/util/List Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/api/plugins/impl/CoreAutofitPlugin Object com/fs/starfarer/loading/specs/HullVariantSpec Object java/lang/String 
            stack 
        .end stack 
L104:   aload_1 
L105:   new java/util/Random 
L108:   dup 
L109:   invokespecial Method java/util/Random <init> ()V 
L112:   aload_1 
L113:   invokeinterface InterfaceMethod java/util/List size ()I 1 
L118:   invokevirtual Method java/util/Random nextInt (I)I 
L121:   invokeinterface InterfaceMethod java/util/List get (I)Ljava/lang/Object; 2 
L126:   checkcast java/lang/String 
L129:   astore 5 
L131:   aload 5 
L133:   invokestatic Method com/fs/starfarer/loading/B o00000 (Ljava/lang/String;)Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L136:   astore 6 
L138:   aload 4 
L140:   invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec clear ()V 
L143:   aload 4 
L145:   aload 6 
L147:   invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L150:   invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec setHullSpec (Lcom/fs/starfarer/loading/specs/g;)V 
L153:   aload_3 
L154:   aload 4 
L156:   aload 6 
L158:   iconst_0 
L159:   new com/fs/starfarer/coreui/refit/auto/OOoO 
L162:   dup 
L163:   invokespecial Method com/fs/starfarer/coreui/refit/auto/OOoO <init> ()V 
L166:   invokevirtual Method com/fs/starfarer/api/plugins/impl/CoreAutofitPlugin doFit (Lcom/fs/starfarer/api/combat/ShipVariantAPI;Lcom/fs/starfarer/api/combat/ShipVariantAPI;ILcom/fs/starfarer/api/plugins/AutofitPlugin$AutofitPluginDelegate;)V 
L169:   aload 4 
L171:   aload_2 
L172:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getCaptain ()Lcom/fs/starfarer/rpg/Person; 
L175:   aload_2 
L176:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getFleetCommander ()Lcom/fs/starfarer/rpg/Person; 
L179:   invokestatic Method com/fs/starfarer/loading/specs/_ o00000 (Lcom/fs/starfarer/loading/specs/HullVariantSpec;Lcom/fs/starfarer/rpg/Person;Lcom/fs/starfarer/rpg/Person;)Lcom/fs/starfarer/combat/entities/Ship; 
L182:   astore 7 
L184:   aload 7 
L186:   aload_2 
L187:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getFleetMemberId ()Ljava/lang/String; 
L190:   invokevirtual Method com/fs/starfarer/combat/entities/Ship setFleetMemberId (Ljava/lang/String;)V 
L193:   aload 7 
L195:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L198:   aload_2 
L199:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L202:   invokevirtual Method org/lwjgl/util/vector/Vector2f set (Lorg/lwjgl/util/vector/ReadableVector2f;)Lorg/lwjgl/util/vector/Vector2f; 
L205:   pop 
L206:   aload 7 
L208:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 
L211:   aload_2 
L212:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 
L215:   invokevirtual Method org/lwjgl/util/vector/Vector2f set (Lorg/lwjgl/util/vector/ReadableVector2f;)Lorg/lwjgl/util/vector/Vector2f; 
L218:   pop 
L219:   aload 7 
L221:   aload_2 
L222:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getFacing ()F 
L225:   invokevirtual Method com/fs/starfarer/combat/entities/Ship setFacing (F)V 
L228:   aload 7 
L230:   aload_2 
L231:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getAngularVelocity ()F 
L234:   invokevirtual Method com/fs/starfarer/combat/entities/Ship setAngularVelocity (F)V 
L237:   aload 7 
L239:   aload_2 
L240:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getAI ()Lcom/fs/starfarer/combat/ai/AI; 
L243:   invokevirtual Method com/fs/starfarer/combat/entities/Ship setAI (Lcom/fs/starfarer/combat/ai/AI;)V 
L246:   aload 7 
L248:   aload_2 
L249:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getOwner ()I 
L252:   invokevirtual Method com/fs/starfarer/combat/entities/Ship setOwner (I)V 
L255:   aload 7 
L257:   aload_2 
L258:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getWing ()Lcom/fs/starfarer/combat/ai/M; 
L261:   invokevirtual Method com/fs/starfarer/combat/entities/Ship setWing (Lcom/fs/starfarer/combat/ai/M;)V 
L264:   aload_0 
L265:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L268:   aload_2 
L269:   invokevirtual Method com/fs/starfarer/combat/CombatEngine removeObject (Ljava/lang/Object;)V 
L272:   aload_0 
L273:   getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L276:   aload 7 
L278:   invokevirtual Method com/fs/starfarer/combat/CombatEngine addObject (Ljava/lang/Object;)V 
L281:   aload_2 
L282:   aload_0 
L283:   getfield Field com/fs/starfarer/combat/CombatState playerShip Lcom/fs/starfarer/combat/entities/Ship; 
L286:   if_acmpne L295 
L289:   aload_0 
L290:   aload 7 
L292:   invokevirtual Method com/fs/starfarer/combat/CombatState setPlayerShip (Lcom/fs/starfarer/combat/entities/Ship;)V 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Object java/util/List 
            stack 
        .end stack 
L295:   return 
L296:   
    .end code 
.end method 

.method public areWeaponArcsOn : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatState arcRenderer Lcom/fs/starfarer/renderers/super; 
L4:     ifnull L19 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/CombatState arcRenderer Lcom/fs/starfarer/renderers/super; 
L11:    invokevirtual Method com/fs/starfarer/renderers/super o00000 ()Z 
L14:    ifeq L19 
L17:    iconst_1 
L18:    ireturn 

        .stack same 
L19:    iconst_0 
L20:    ireturn 
L21:    
    .end code 
.end method 

.method public getAllTargetReticleTargets : ()Ljava/util/List; 
    .signature ()Ljava/util/List<Lcom/fs/starfarer/api/combat/ShipAPI;>; 
    .code stack 2 locals 4 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatState targetReticleRenderer Lcom/fs/starfarer/renderers/A/C; 
L4:     ifnonnull L9 
L7:     aconst_null 
L8:     areturn 

        .stack same 
L9:     new java/util/ArrayList 
L12:    dup 
L13:    invokespecial Method java/util/ArrayList <init> ()V 
L16:    astore_1 
L17:    aload_0 
L18:    getfield Field com/fs/starfarer/combat/CombatState targetReticleRenderer Lcom/fs/starfarer/renderers/A/C; 
L21:    invokevirtual Method com/fs/starfarer/renderers/A/C 'Ò00000' ()Ljava/util/List; 
L24:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L29:    astore_3 
L30:    goto L54 

        .stack full 
            locals Object com/fs/starfarer/combat/CombatState Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L33:    aload_3 
L34:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L39:    checkcast com/fs/starfarer/renderers/A/null 
L42:    astore_2 
L43:    aload_1 
L44:    aload_2 
L45:    invokevirtual Method com/fs/starfarer/renderers/A/null int ()Lcom/fs/starfarer/combat/entities/Ship; 
L48:    invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L53:    pop 

        .stack same 
L54:    aload_3 
L55:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L60:    ifne L33 
L63:    aload_1 
L64:    areturn 
L65:    
    .end code 
.end method 

.method public getMainTargetReticleTarget : ()Lcom/fs/starfarer/api/combat/ShipAPI; 
    .code stack 1 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatState targetReticleRenderer Lcom/fs/starfarer/renderers/A/C; 
L4:     ifnonnull L9 
L7:     aconst_null 
L8:     areturn 

        .stack same 
L9:     aload_0 
L10:    getfield Field com/fs/starfarer/combat/CombatState targetReticleRenderer Lcom/fs/starfarer/renderers/A/C; 
L13:    invokevirtual Method com/fs/starfarer/renderers/A/C 'super' ()Lcom/fs/starfarer/renderers/A/null; 
L16:    astore_1 
L17:    aload_1 
L18:    ifnonnull L23 
L21:    aconst_null 
L22:    areturn 

        .stack append Object com/fs/starfarer/renderers/A/null 
L23:    aload_1 
L24:    invokevirtual Method com/fs/starfarer/renderers/A/null int ()Lcom/fs/starfarer/combat/entities/Ship; 
L27:    areturn 
L28:    
    .end code 
.end method 

.method public isStrafeToggledOn : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatState strafeToggledOn Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public setStrafeToggledOn : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/CombatState strafeToggledOn Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public getOverlayPanelForCodex : ()Lcom/fs/starfarer/ui/interfacenew; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatState codexOverlay Lcom/fs/starfarer/ui/interfacenew; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public setShowingCodex : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/CombatState showingCodex Z 
L5:     iload_1 
L6:     ifeq L31 
L9:     aload_0 
L10:    aload_0 
L11:    getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L14:    invokevirtual Method com/fs/starfarer/combat/CombatEngine isPaused ()Z 
L17:    putfield Field com/fs/starfarer/combat/CombatState wasPausedWhenCodexShown Z 
L20:    aload_0 
L21:    getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L24:    iconst_1 
L25:    invokevirtual Method com/fs/starfarer/combat/CombatEngine setPaused (Z)V 
L28:    goto L42 

        .stack same 
L31:    aload_0 
L32:    getfield Field com/fs/starfarer/combat/CombatState engine Lcom/fs/starfarer/combat/CombatEngine; 
L35:    aload_0 
L36:    getfield Field com/fs/starfarer/combat/CombatState wasPausedWhenCodexShown Z 
L39:    invokevirtual Method com/fs/starfarer/combat/CombatEngine setPaused (Z)V 

        .stack same 
L42:    return 
L43:    
    .end code 
.end method 

.method public isShowingCodex : ()Z 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/CombatState showingCodex Z 
L4:     ifne L19 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/CombatState dialogType Lcom/fs/starfarer/combat/CombatState$o; 
L11:    getstatic Field com/fs/starfarer/combat/CombatState$o 'Ø00000' Lcom/fs/starfarer/combat/CombatState$o; 
L14:    if_acmpeq L19 
L17:    iconst_0 
L18:    ireturn 

        .stack same 
L19:    iconst_1 
L20:    ireturn 
L21:    
    .end code 
.end method 

.method static synthetic $SWITCH_TABLE$com$fs$starfarer$combat$CombatState$CameraMode : ()[I 
    .code stack 3 locals 1 
L0:     getstatic Field com/fs/starfarer/combat/CombatState $SWITCH_TABLE$com$fs$starfarer$combat$CombatState$CameraMode [I 
L3:     dup 
L4:     ifnull L8 
L7:     areturn 

        .stack stack_1 Object [I 
L8:     pop 
L9:     invokestatic Method com/fs/starfarer/combat/CombatState$Oo values ()[Lcom/fs/starfarer/combat/CombatState$Oo; 
L12:    arraylength 
L13:    newarray int 
L15:    astore_0 
        .catch java/lang/NoSuchFieldError from L16 to L25 using L28 
L16:    aload_0 
L17:    getstatic Field com/fs/starfarer/combat/CombatState$Oo new Lcom/fs/starfarer/combat/CombatState$Oo; 
L20:    invokevirtual Method com/fs/starfarer/combat/CombatState$Oo ordinal ()I 
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
L30:    getstatic Field com/fs/starfarer/combat/CombatState$Oo 'Ó00000' Lcom/fs/starfarer/combat/CombatState$Oo; 
L33:    invokevirtual Method com/fs/starfarer/combat/CombatState$Oo ordinal ()I 
L36:    iconst_2 
L37:    iastore 
L38:    goto L42 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L41:    pop 
        .catch java/lang/NoSuchFieldError from L42 to L51 using L54 

        .stack same 
L42:    aload_0 
L43:    getstatic Field com/fs/starfarer/combat/CombatState$Oo 'Ô00000' Lcom/fs/starfarer/combat/CombatState$Oo; 
L46:    invokevirtual Method com/fs/starfarer/combat/CombatState$Oo ordinal ()I 
L49:    iconst_1 
L50:    iastore 
L51:    goto L55 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L54:    pop 

        .stack same 
L55:    aload_0 
L56:    dup 
L57:    putstatic Field com/fs/starfarer/combat/CombatState $SWITCH_TABLE$com$fs$starfarer$combat$CombatState$CameraMode [I 
L60:    areturn 
L61:    
    .end code 
.end method 

.method static synthetic $SWITCH_TABLE$com$fs$starfarer$api$fleet$FleetGoal : ()[I 
    .code stack 3 locals 1 
L0:     getstatic Field com/fs/starfarer/combat/CombatState $SWITCH_TABLE$com$fs$starfarer$api$fleet$FleetGoal [I 
L3:     dup 
L4:     ifnull L8 
L7:     areturn 

        .stack stack_1 Object [I 
L8:     pop 
L9:     invokestatic Method com/fs/starfarer/api/fleet/FleetGoal values ()[Lcom/fs/starfarer/api/fleet/FleetGoal; 
L12:    arraylength 
L13:    newarray int 
L15:    astore_0 
        .catch java/lang/NoSuchFieldError from L16 to L25 using L28 
L16:    aload_0 
L17:    getstatic Field com/fs/starfarer/api/fleet/FleetGoal ATTACK Lcom/fs/starfarer/api/fleet/FleetGoal; 
L20:    invokevirtual Method com/fs/starfarer/api/fleet/FleetGoal ordinal ()I 
L23:    iconst_1 
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
L30:    getstatic Field com/fs/starfarer/api/fleet/FleetGoal ESCAPE Lcom/fs/starfarer/api/fleet/FleetGoal; 
L33:    invokevirtual Method com/fs/starfarer/api/fleet/FleetGoal ordinal ()I 
L36:    iconst_2 
L37:    iastore 
L38:    goto L42 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L41:    pop 

        .stack same 
L42:    aload_0 
L43:    dup 
L44:    putstatic Field com/fs/starfarer/combat/CombatState $SWITCH_TABLE$com$fs$starfarer$api$fleet$FleetGoal [I 
L47:    areturn 
L48:    
    .end code 
.end method 

.method static synthetic $SWITCH_TABLE$com$fs$starfarer$combat$CombatMenuDialog$CombatMenuMode : ()[I 
    .code stack 3 locals 1 
L0:     getstatic Field com/fs/starfarer/combat/CombatState $SWITCH_TABLE$com$fs$starfarer$combat$CombatMenuDialog$CombatMenuMode [I 
L3:     dup 
L4:     ifnull L8 
L7:     areturn 

        .stack stack_1 Object [I 
L8:     pop 
L9:     invokestatic Method com/fs/starfarer/combat/E$Oo values ()[Lcom/fs/starfarer/combat/E$Oo; 
L12:    arraylength 
L13:    newarray int 
L15:    astore_0 
        .catch java/lang/NoSuchFieldError from L16 to L25 using L28 
L16:    aload_0 
L17:    getstatic Field com/fs/starfarer/combat/E$Oo 'Ó00000' Lcom/fs/starfarer/combat/E$Oo; 
L20:    invokevirtual Method com/fs/starfarer/combat/E$Oo ordinal ()I 
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
L30:    getstatic Field com/fs/starfarer/combat/E$Oo 'Ö00000' Lcom/fs/starfarer/combat/E$Oo; 
L33:    invokevirtual Method com/fs/starfarer/combat/E$Oo ordinal ()I 
L36:    iconst_1 
L37:    iastore 
L38:    goto L42 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L41:    pop 
        .catch java/lang/NoSuchFieldError from L42 to L51 using L54 

        .stack same 
L42:    aload_0 
L43:    getstatic Field com/fs/starfarer/combat/E$Oo o00000 Lcom/fs/starfarer/combat/E$Oo; 
L46:    invokevirtual Method com/fs/starfarer/combat/E$Oo ordinal ()I 
L49:    iconst_4 
L50:    iastore 
L51:    goto L55 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L54:    pop 
        .catch java/lang/NoSuchFieldError from L55 to L64 using L67 

        .stack same 
L55:    aload_0 
L56:    getstatic Field com/fs/starfarer/combat/E$Oo null Lcom/fs/starfarer/combat/E$Oo; 
L59:    invokevirtual Method com/fs/starfarer/combat/E$Oo ordinal ()I 
L62:    iconst_5 
L63:    iastore 
L64:    goto L68 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L67:    pop 
        .catch java/lang/NoSuchFieldError from L68 to L77 using L80 

        .stack same 
L68:    aload_0 
L69:    getstatic Field com/fs/starfarer/combat/E$Oo 'ö00000' Lcom/fs/starfarer/combat/E$Oo; 
L72:    invokevirtual Method com/fs/starfarer/combat/E$Oo ordinal ()I 
L75:    iconst_2 
L76:    iastore 
L77:    goto L81 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L80:    pop 
        .catch java/lang/NoSuchFieldError from L81 to L91 using L94 

        .stack same 
L81:    aload_0 
L82:    getstatic Field com/fs/starfarer/combat/E$Oo class Lcom/fs/starfarer/combat/E$Oo; 
L85:    invokevirtual Method com/fs/starfarer/combat/E$Oo ordinal ()I 
L88:    bipush 9 
L90:    iastore 
L91:    goto L95 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L94:    pop 
        .catch java/lang/NoSuchFieldError from L95 to L105 using L108 

        .stack same 
L95:    aload_0 
L96:    getstatic Field com/fs/starfarer/combat/E$Oo 'õ00000' Lcom/fs/starfarer/combat/E$Oo; 
L99:    invokevirtual Method com/fs/starfarer/combat/E$Oo ordinal ()I 
L102:   bipush 6 
L104:   iastore 
L105:   goto L109 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L108:   pop 
        .catch java/lang/NoSuchFieldError from L109 to L119 using L122 

        .stack same 
L109:   aload_0 
L110:   getstatic Field com/fs/starfarer/combat/E$Oo 'Ø00000' Lcom/fs/starfarer/combat/E$Oo; 
L113:   invokevirtual Method com/fs/starfarer/combat/E$Oo ordinal ()I 
L116:   bipush 8 
L118:   iastore 
L119:   goto L123 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L122:   pop 
        .catch java/lang/NoSuchFieldError from L123 to L133 using L136 

        .stack same 
L123:   aload_0 
L124:   getstatic Field com/fs/starfarer/combat/E$Oo 'Ô00000' Lcom/fs/starfarer/combat/E$Oo; 
L127:   invokevirtual Method com/fs/starfarer/combat/E$Oo ordinal ()I 
L130:   bipush 7 
L132:   iastore 
L133:   goto L137 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L136:   pop 

        .stack same 
L137:   aload_0 
L138:   dup 
L139:   putstatic Field com/fs/starfarer/combat/CombatState $SWITCH_TABLE$com$fs$starfarer$combat$CombatMenuDialog$CombatMenuMode [I 
L142:   areturn 
L143:   
    .end code 
.end method 

.method static synthetic $SWITCH_TABLE$com$fs$starfarer$combat$CombatState$CurrentDialogType : ()[I 
    .code stack 3 locals 1 
L0:     getstatic Field com/fs/starfarer/combat/CombatState $SWITCH_TABLE$com$fs$starfarer$combat$CombatState$CurrentDialogType [I 
L3:     dup 
L4:     ifnull L8 
L7:     areturn 

        .stack stack_1 Object [I 
L8:     pop 
L9:     invokestatic Method com/fs/starfarer/combat/CombatState$o values ()[Lcom/fs/starfarer/combat/CombatState$o; 
L12:    arraylength 
L13:    newarray int 
L15:    astore_0 
        .catch java/lang/NoSuchFieldError from L16 to L26 using L29 
L16:    aload_0 
L17:    getstatic Field com/fs/starfarer/combat/CombatState$o 'Ø00000' Lcom/fs/starfarer/combat/CombatState$o; 
L20:    invokevirtual Method com/fs/starfarer/combat/CombatState$o ordinal ()I 
L23:    bipush 9 
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
L31:    getstatic Field com/fs/starfarer/combat/CombatState$o 'Ô00000' Lcom/fs/starfarer/combat/CombatState$o; 
L34:    invokevirtual Method com/fs/starfarer/combat/CombatState$o ordinal ()I 
L37:    iconst_1 
L38:    iastore 
L39:    goto L43 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L42:    pop 
        .catch java/lang/NoSuchFieldError from L43 to L52 using L55 

        .stack same 
L43:    aload_0 
L44:    getstatic Field com/fs/starfarer/combat/CombatState$o 'Ó00000' Lcom/fs/starfarer/combat/CombatState$o; 
L47:    invokevirtual Method com/fs/starfarer/combat/CombatState$o ordinal ()I 
L50:    iconst_2 
L51:    iastore 
L52:    goto L56 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L55:    pop 
        .catch java/lang/NoSuchFieldError from L56 to L65 using L68 

        .stack same 
L56:    aload_0 
L57:    getstatic Field com/fs/starfarer/combat/CombatState$o float Lcom/fs/starfarer/combat/CombatState$o; 
L60:    invokevirtual Method com/fs/starfarer/combat/CombatState$o ordinal ()I 
L63:    iconst_3 
L64:    iastore 
L65:    goto L69 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L68:    pop 
        .catch java/lang/NoSuchFieldError from L69 to L78 using L81 

        .stack same 
L69:    aload_0 
L70:    getstatic Field com/fs/starfarer/combat/CombatState$o null Lcom/fs/starfarer/combat/CombatState$o; 
L73:    invokevirtual Method com/fs/starfarer/combat/CombatState$o ordinal ()I 
L76:    iconst_5 
L77:    iastore 
L78:    goto L82 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L81:    pop 
        .catch java/lang/NoSuchFieldError from L82 to L92 using L95 

        .stack same 
L82:    aload_0 
L83:    getstatic Field com/fs/starfarer/combat/CombatState$o new Lcom/fs/starfarer/combat/CombatState$o; 
L86:    invokevirtual Method com/fs/starfarer/combat/CombatState$o ordinal ()I 
L89:    bipush 6 
L91:    iastore 
L92:    goto L96 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L95:    pop 
        .catch java/lang/NoSuchFieldError from L96 to L105 using L108 

        .stack same 
L96:    aload_0 
L97:    getstatic Field com/fs/starfarer/combat/CombatState$o 'õ00000' Lcom/fs/starfarer/combat/CombatState$o; 
L100:   invokevirtual Method com/fs/starfarer/combat/CombatState$o ordinal ()I 
L103:   iconst_4 
L104:   iastore 
L105:   goto L109 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L108:   pop 
        .catch java/lang/NoSuchFieldError from L109 to L119 using L122 

        .stack same 
L109:   aload_0 
L110:   getstatic Field com/fs/starfarer/combat/CombatState$o class Lcom/fs/starfarer/combat/CombatState$o; 
L113:   invokevirtual Method com/fs/starfarer/combat/CombatState$o ordinal ()I 
L116:   bipush 8 
L118:   iastore 
L119:   goto L123 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L122:   pop 
        .catch java/lang/NoSuchFieldError from L123 to L133 using L136 

        .stack same 
L123:   aload_0 
L124:   getstatic Field com/fs/starfarer/combat/CombatState$o 'ö00000' Lcom/fs/starfarer/combat/CombatState$o; 
L127:   invokevirtual Method com/fs/starfarer/combat/CombatState$o ordinal ()I 
L130:   bipush 10 
L132:   iastore 
L133:   goto L137 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L136:   pop 
        .catch java/lang/NoSuchFieldError from L137 to L147 using L150 

        .stack same 
L137:   aload_0 
L138:   getstatic Field com/fs/starfarer/combat/CombatState$o o00000 Lcom/fs/starfarer/combat/CombatState$o; 
L141:   invokevirtual Method com/fs/starfarer/combat/CombatState$o ordinal ()I 
L144:   bipush 7 
L146:   iastore 
L147:   goto L151 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L150:   pop 

        .stack same 
L151:   aload_0 
L152:   dup 
L153:   putstatic Field com/fs/starfarer/combat/CombatState $SWITCH_TABLE$com$fs$starfarer$combat$CombatState$CurrentDialogType [I 
L156:   areturn 
L157:   
    .end code 
.end method 
.innerclasses 
    com/fs/starfarer/api/combat/ShipAPI$HullSize com/fs/starfarer/api/combat/ShipAPI HullSize public static final enum 
    com/fs/starfarer/api/combat/ShipwideAIFlags$AIFlags com/fs/starfarer/api/combat/ShipwideAIFlags AIFlags public static final enum 
    com/fs/starfarer/api/combat/WeaponAPI$AIHints com/fs/starfarer/api/combat/WeaponAPI AIHints public static final enum 
    com/fs/starfarer/api/impl/combat/NegativeExplosionVisual$NEParams com/fs/starfarer/api/impl/combat/NegativeExplosionVisual NEParams public static 
    com/fs/starfarer/api/impl/combat/ShipExplosionFlareVisual$ShipExplosionFlareParams com/fs/starfarer/api/impl/combat/ShipExplosionFlareVisual ShipExplosionFlareParams public static 
    com/fs/starfarer/api/plugins/AutofitPlugin$AutofitPluginDelegate com/fs/starfarer/api/plugins/AutofitPlugin AutofitPluginDelegate public static interface abstract 
    com/fs/starfarer/campaign/CampaignState$o com/fs/starfarer/campaign/CampaignState o public static final enum 
    com/fs/starfarer/combat/CombatFleetManager$O0 com/fs/starfarer/combat/CombatFleetManager O0 public static 
    com/fs/starfarer/combat/E$o com/fs/starfarer/combat/E o public static interface abstract 
    com/fs/starfarer/combat/E$Oo com/fs/starfarer/combat/E Oo public static final enum 
    com/fs/starfarer/combat/CombatState$1 [0] [0] 
    com/fs/starfarer/combat/CombatState$Oo com/fs/starfarer/combat/CombatState Oo public static final enum 
    com/fs/starfarer/combat/CombatState$o com/fs/starfarer/combat/CombatState o public static final enum 
    com/fs/starfarer/combat/entities/Ship$Oo com/fs/starfarer/combat/entities/Ship Oo public static 
    com/fs/starfarer/combat/entities/Ship$oo com/fs/starfarer/combat/entities/Ship oo public static final enum 
    com/fs/starfarer/combat/entities/Ship$ShipAIWrapper com/fs/starfarer/combat/entities/Ship ShipAIWrapper public static 
    com/fs/starfarer/combat/A/B$Oo com/fs/starfarer/combat/A/B Oo public static final enum 
    com/fs/starfarer/combat/A/B$o0 com/fs/starfarer/combat/A/B o0 public static interface abstract 
    com/fs/starfarer/combat/tasks/Object$o com/fs/starfarer/combat/tasks/Object o public static final enum 
    com/fs/starfarer/combat/new/OoOO$o com/fs/starfarer/combat/new/OoOO o public static interface abstract 
    com/fs/starfarer/return/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$o com/fs/starfarer/return/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO o public static final enum 
    com/fs/starfarer/loading/specs/O0OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$Oo com/fs/starfarer/loading/specs/O0OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO Oo public static 
    [c1465] [c1471] oo public static final enum 
    [c1459] [c1471] o public static final enum 
    com/fs/starfarer/ui/oo0O$o com/fs/starfarer/ui/oo0O o public static interface abstract 
.end innerclasses 
.nestmembers com/fs/starfarer/combat/CombatState$1 com/fs/starfarer/combat/CombatState$Oo com/fs/starfarer/combat/CombatState$o 
.const [u1019] = Utf8 Lcom/fs/starfarer/title/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$o; 
.const [u1030] = Utf8 Lcom/fs/starfarer/title/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$oo; 
.const [u1039] = Utf8 (Lcom/fs/starfarer/util/A/C;Lcom/fs/starfarer/title/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$o;Lcom/fs/starfarer/title/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$oo;)Z 
.const [u1182] = Utf8 (Lcom/fs/starfarer/title/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$oo;)Ljava/lang/String; 
.const [u1328] = Utf8 (Lcom/fs/starfarer/title/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$oo;)Z 
.const [u1381] = Utf8 (Lcom/fs/starfarer/combat/entities/Ship$oo;Ljava/lang/Object;)V 
.const [c1459] = Class [u1453] 
.const [c1465] = Class [u1460] 
.const [c1471] = Class [u1466] 
.const [u1521] = Utf8 (Lcom/fs/starfarer/combat/entities/Ship$oo;Ljava/lang/Object;I)V 
.const [s2769] = String [u2770] 
.const [u1453] = Utf8 com/fs/starfarer/title/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$o 
.const [u1460] = Utf8 com/fs/starfarer/title/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$oo 
.const [u1466] = Utf8 com/fs/starfarer/title/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 
.const [u2770] = Utf8 'Are you sure?\n\nOrdering a full assault will cancel all existing assignments and make your ships engage the enemy forces more aggressively, potentially exposing them to greater danger.\n\nCreating a new assignment (other than "Eliminate" or "Fighter Strike") will cancel this order; toggling it off directly uses a command point.' 
.end class 
