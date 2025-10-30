.version 61 0 
.class public super com/fs/starfarer/campaign/CampaignState 
.super com/fs/starfarer/BaseGameState 
.implements com/fs/starfarer/ui/oo0O$o 
.implements com/fs/starfarer/campaign/void 
.implements com/fs/starfarer/coreui/OO0o 
.implements com/fs/starfarer/campaign/save/O0OO$o 
.implements com/fs/starfarer/ui/U 
.implements com/fs/starfarer/ooOO 
.implements com/fs/starfarer/campaign/CampaignEngine$o 
.field public static final STATE_ID Ljava/lang/String; = 'Campaign State' 
.field public static final CAMPAIGN_BATTLE_RESULT Ljava/lang/String; = 'campaign battle result' 
.field public static final RUN_SIMULATOR_TOKEN Ljava/lang/String; = 'run combat simulator' 
.field private static log Lorg/apache/log4j/Logger; 
.field private session Ljava/util/Map; 
.field private screenPanel Lcom/fs/starfarer/ui/interfacenew; 
.field private messageListV3 Lcom/fs/starfarer/campaign/comms/super; 
.field private messageDisplay Lcom/fs/starfarer/campaign/ui/O00O; 
.field private dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
.field private messageFont Ljava/lang/String; 
.field private buttons Lcom/fs/starfarer/campaign/OooO; 
.field private stuff Lcom/fs/starfarer/util/IntervalTracker; 
.field private core Lcom/fs/starfarer/ui/newui/L; 
.field private belowTooltips Lcom/fs/starfarer/ui/interfacenew; 
.field private noise Lcom/fs/starfarer/class/G; 
.field private maxNoiseLevel F 
.field private hideUI Z 
.field private sharedFader Lcom/fs/starfarer/api/util/FaderUtil; 
.field private viewOffset Lcom/fs/starfarer/campaign/int; 
.field public static frame J 
.field private engine Lcom/fs/starfarer/campaign/CampaignEngine; 
.field private worldCoordsScreenWidthAtZoomOne F 
.field private worldCoordsScreenHeightAtZoomOne F 
.field private zoomTracker Lcom/fs/starfarer/util/A; 
.field private static inited Z 
.field public static lastModified J 
.field public static lastModifiedPings J 
.field public static rules Ljava/io/File; 
.field public static pings Ljava/io/File; 
.field protected leakChecker Lcom/fs/starfarer/api/util/IntervalUtil; 
.field protected sinceGCCountdown F 
.field protected showWhenNumIsOne Z 
.field protected showedWarningDialog Z 
.field protected showedNeverMindWarning Z 
.field protected calledGC Z 
.field protected calledInsteadOfShowingWarning Z 
.field public static MEMORY_CHECK_INTERVAL F 
.field protected sinceMemoryCheck F 
.field private stickyTrackedByPatrol Ljava/lang/String; 
.field private currDevBattle Lcom/fs/starfarer/campaign/fleet/Battle; 
.field private fastForward Z 
.field private followMouse Z 
.field private holdTimeout F 
.field private disallowInteractionOneFrame Z 
.field private followingDirectCommand Z 
.field private maxIntelMapIcons I 
.field private suppressFuelRangeRenderingOneFrame Z 
.field private extraAlphaMult F 
.field private actionOk Lcom/fs/starfarer/api/Script; 
.field private actionCancel Lcom/fs/starfarer/api/Script; 
.field private static autosaveSlots Ljava/util/List; .fieldattributes 
    .signature Ljava/util/List<Lcom/fs/starfarer/campaign/save/SaveGameData;>; 
.end fieldattributes 
.field private elapsedSinceLocChange F 
.field private elapsedSinceGenericAutosavePreventer F 
.field private elapsedSinceBattleUnpaused F 
.field private highBurnDelay F 
.field private elapsedPausedDoingNothing F 
.field private wasPaused Z 
.field private encounterDialog Lcom/fs/starfarer/ui/newui/o0Oo; 
.field private playerFleetForBattle Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
.field private enemyFleetForBattle Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
.field private codexOverlay Lcom/fs/starfarer/ui/interfacenew; 
.field private showingCodex Z 
.field private wasPausedWhenCodexShown Z 
.field private static volatile synthetic $SWITCH_TABLE$com$fs$starfarer$campaign$CampaignState$CurrentDialogType [I 

.method static <clinit> : ()V 
    .code stack 2 locals 0 
L0:     ldc Class com/fs/starfarer/campaign/CampaignState 
L2:     invokestatic Method org/apache/log4j/Logger getLogger (Ljava/lang/Class;)Lorg/apache/log4j/Logger; 
L5:     putstatic Field com/fs/starfarer/campaign/CampaignState log Lorg/apache/log4j/Logger; 
L8:     lconst_0 
L9:     putstatic Field com/fs/starfarer/campaign/CampaignState frame J 
L12:    iconst_0 
L13:    putstatic Field com/fs/starfarer/campaign/CampaignState inited Z 
L16:    lconst_0 
L17:    putstatic Field com/fs/starfarer/campaign/CampaignState lastModified J 
L20:    lconst_0 
L21:    putstatic Field com/fs/starfarer/campaign/CampaignState lastModifiedPings J 
L24:    aconst_null 
L25:    putstatic Field com/fs/starfarer/campaign/CampaignState rules Ljava/io/File; 
L28:    aconst_null 
L29:    putstatic Field com/fs/starfarer/campaign/CampaignState pings Ljava/io/File; 
L32:    ldc +60.0f 
L34:    putstatic Field com/fs/starfarer/campaign/CampaignState MEMORY_CHECK_INTERVAL F 
L37:    aconst_null 
L38:    putstatic Field com/fs/starfarer/campaign/CampaignState autosaveSlots Ljava/util/List; 
L41:    return 
L42:    
    .end code 
.end method 

.method public <init> : ()V 
    .code stack 8 locals 1 
L0:     aload_0 
L1:     invokespecial Method com/fs/starfarer/BaseGameState <init> ()V 
L4:     aload_0 
L5:     new com/fs/starfarer/campaign/comms/super 
L8:     dup 
L9:     invokespecial Method com/fs/starfarer/campaign/comms/super <init> ()V 
L12:    putfield Field com/fs/starfarer/campaign/CampaignState messageListV3 Lcom/fs/starfarer/campaign/comms/super; 
L15:    aload_0 
L16:    new com/fs/starfarer/campaign/ui/O00O 
L19:    dup 
L20:    invokespecial Method com/fs/starfarer/campaign/ui/O00O <init> ()V 
L23:    putfield Field com/fs/starfarer/campaign/CampaignState messageDisplay Lcom/fs/starfarer/campaign/ui/O00O; 
L26:    aload_0 
L27:    aconst_null 
L28:    putfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L31:    aload_0 
L32:    ldc 'graphics/fonts/insignia21LTaa.fnt' 
L34:    putfield Field com/fs/starfarer/campaign/CampaignState messageFont Ljava/lang/String; 
L37:    aload_0 
L38:    new com/fs/starfarer/util/IntervalTracker 
L41:    dup 
L42:    ldc +360.0f 
L44:    ldc +600.0f 
L46:    invokespecial Method com/fs/starfarer/util/IntervalTracker <init> (FF)V 
L49:    putfield Field com/fs/starfarer/campaign/CampaignState stuff Lcom/fs/starfarer/util/IntervalTracker; 
L52:    aload_0 
L53:    iconst_0 
L54:    putfield Field com/fs/starfarer/campaign/CampaignState hideUI Z 
L57:    aload_0 
L58:    new com/fs/starfarer/api/util/FaderUtil 
L61:    dup 
L62:    fconst_0 
L63:    ldc +0.5f 
L65:    ldc +0.5f 
L67:    iconst_1 
L68:    iconst_1 
L69:    invokespecial Method com/fs/starfarer/api/util/FaderUtil <init> (FFFZZ)V 
L72:    putfield Field com/fs/starfarer/campaign/CampaignState sharedFader Lcom/fs/starfarer/api/util/FaderUtil; 
L75:    aload_0 
L76:    new com/fs/starfarer/campaign/int 
L79:    dup 
L80:    invokespecial Method com/fs/starfarer/campaign/int <init> ()V 
L83:    putfield Field com/fs/starfarer/campaign/CampaignState viewOffset Lcom/fs/starfarer/campaign/int; 
L86:    aload_0 
L87:    new com/fs/starfarer/api/util/IntervalUtil 
L90:    dup 
L91:    ldc +5.0f 
L93:    ldc +5.0f 
L95:    invokespecial Method com/fs/starfarer/api/util/IntervalUtil <init> (FF)V 
L98:    putfield Field com/fs/starfarer/campaign/CampaignState leakChecker Lcom/fs/starfarer/api/util/IntervalUtil; 
L101:   aload_0 
L102:   fconst_0 
L103:   putfield Field com/fs/starfarer/campaign/CampaignState sinceGCCountdown F 
L106:   aload_0 
L107:   iconst_0 
L108:   putfield Field com/fs/starfarer/campaign/CampaignState showWhenNumIsOne Z 
L111:   aload_0 
L112:   iconst_0 
L113:   putfield Field com/fs/starfarer/campaign/CampaignState showedWarningDialog Z 
L116:   aload_0 
L117:   iconst_0 
L118:   putfield Field com/fs/starfarer/campaign/CampaignState showedNeverMindWarning Z 
L121:   aload_0 
L122:   iconst_0 
L123:   putfield Field com/fs/starfarer/campaign/CampaignState calledGC Z 
L126:   aload_0 
L127:   iconst_0 
L128:   putfield Field com/fs/starfarer/campaign/CampaignState calledInsteadOfShowingWarning Z 
L131:   aload_0 
L132:   getstatic Field com/fs/starfarer/campaign/CampaignState MEMORY_CHECK_INTERVAL F 
L135:   putfield Field com/fs/starfarer/campaign/CampaignState sinceMemoryCheck F 
L138:   aload_0 
L139:   aconst_null 
L140:   putfield Field com/fs/starfarer/campaign/CampaignState stickyTrackedByPatrol Ljava/lang/String; 
L143:   aload_0 
L144:   aconst_null 
L145:   putfield Field com/fs/starfarer/campaign/CampaignState currDevBattle Lcom/fs/starfarer/campaign/fleet/Battle; 
L148:   aload_0 
L149:   iconst_0 
L150:   putfield Field com/fs/starfarer/campaign/CampaignState fastForward Z 
L153:   aload_0 
L154:   iconst_0 
L155:   putfield Field com/fs/starfarer/campaign/CampaignState followMouse Z 
L158:   aload_0 
L159:   fconst_0 
L160:   putfield Field com/fs/starfarer/campaign/CampaignState holdTimeout F 
L163:   aload_0 
L164:   iconst_0 
L165:   putfield Field com/fs/starfarer/campaign/CampaignState disallowInteractionOneFrame Z 
L168:   aload_0 
L169:   iconst_0 
L170:   putfield Field com/fs/starfarer/campaign/CampaignState followingDirectCommand Z 
L173:   aload_0 
L174:   bipush 100 
L176:   putfield Field com/fs/starfarer/campaign/CampaignState maxIntelMapIcons I 
L179:   aload_0 
L180:   iconst_0 
L181:   putfield Field com/fs/starfarer/campaign/CampaignState suppressFuelRangeRenderingOneFrame Z 
L184:   aload_0 
L185:   fconst_1 
L186:   putfield Field com/fs/starfarer/campaign/CampaignState extraAlphaMult F 
L189:   aload_0 
L190:   aconst_null 
L191:   putfield Field com/fs/starfarer/campaign/CampaignState actionOk Lcom/fs/starfarer/api/Script; 
L194:   aload_0 
L195:   aconst_null 
L196:   putfield Field com/fs/starfarer/campaign/CampaignState actionCancel Lcom/fs/starfarer/api/Script; 
L199:   aload_0 
L200:   ldc +1000.0f 
L202:   putfield Field com/fs/starfarer/campaign/CampaignState elapsedSinceLocChange F 
L205:   aload_0 
L206:   ldc +1000.0f 
L208:   putfield Field com/fs/starfarer/campaign/CampaignState elapsedSinceGenericAutosavePreventer F 
L211:   aload_0 
L212:   ldc +1000.0f 
L214:   putfield Field com/fs/starfarer/campaign/CampaignState elapsedSinceBattleUnpaused F 
L217:   aload_0 
L218:   fconst_0 
L219:   putfield Field com/fs/starfarer/campaign/CampaignState highBurnDelay F 
L222:   aload_0 
L223:   fconst_0 
L224:   putfield Field com/fs/starfarer/campaign/CampaignState elapsedPausedDoingNothing F 
L227:   aload_0 
L228:   iconst_0 
L229:   putfield Field com/fs/starfarer/campaign/CampaignState wasPaused Z 
L232:   aload_0 
L233:   iconst_0 
L234:   putfield Field com/fs/starfarer/campaign/CampaignState showingCodex Z 
L237:   aload_0 
L238:   iconst_0 
L239:   putfield Field com/fs/starfarer/campaign/CampaignState wasPausedWhenCodexShown Z 
L242:   return 
L243:   
    .end code 
.end method 

.method public getID : ()Ljava/lang/String; 
    .code stack 1 locals 1 
L0:     ldc 'Campaign State' 
L2:     areturn 
L3:     
    .end code 
.end method 

.method public init : (Ljava/util/Map;)V 
    .exceptions java/lang/Exception 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/fs/starfarer/campaign/CampaignState session Ljava/util/Map; 
L5:     aload_0 
L6:     invokevirtual Method com/fs/starfarer/campaign/CampaignState resetLeakChecker ()V 
L9:     return 
L10:    
    .end code 
.end method 

.method public getSession : ()Ljava/util/Map; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState session Ljava/util/Map; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method private renderInUICoordsAboveUIBelowTooltips : ()V 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L4:     ifnull L17 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L11:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getViewport ()Lcom/fs/starfarer/combat/CombatViewport; 
L14:    invokestatic Method com/fs/starfarer/api/campaign/listeners/ListenerUtil renderInUICoordsAboveUIBelowTooltips (Lcom/fs/starfarer/api/combat/ViewportAPI;)V 

        .stack same 
L17:    return 
L18:    
    .end code 
.end method 

.method private createUI : ()V 
    .code stack 10 locals 3 
L0:     aload_0 
L1:     new com/fs/starfarer/campaign/int 
L4:     dup 
L5:     invokespecial Method com/fs/starfarer/campaign/int <init> ()V 
L8:     putfield Field com/fs/starfarer/campaign/CampaignState viewOffset Lcom/fs/starfarer/campaign/int; 
L11:    aload_0 
L12:    getfield Field com/fs/starfarer/campaign/CampaignState sharedFader Lcom/fs/starfarer/api/util/FaderUtil; 
L15:    invokevirtual Method com/fs/starfarer/api/util/FaderUtil fadeIn ()V 
L18:    invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'oÖ0000' ()Lcom/fs/starfarer/settings/A; 
L21:    invokevirtual Method com/fs/starfarer/settings/A new ()I 
L24:    i2f 
L25:    fstore_1 
L26:    invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'oÖ0000' ()Lcom/fs/starfarer/settings/A; 
L29:    invokevirtual Method com/fs/starfarer/settings/A 'Ô00000' ()I 
L32:    i2f 
L33:    fstore_2 
L34:    invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'oÖ0000' ()Lcom/fs/starfarer/settings/A; 
L37:    invokevirtual Method com/fs/starfarer/settings/A o00000 ()F 
L40:    fstore_1 
L41:    invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'oÖ0000' ()Lcom/fs/starfarer/settings/A; 
L44:    invokevirtual Method com/fs/starfarer/settings/A 'Ó00000' ()F 
L47:    fstore_2 
L48:    aload_0 
L49:    new com/fs/starfarer/ui/interfacenew 
L52:    dup 
L53:    new com/fs/starfarer/ui/OO0O 
L56:    dup 
L57:    fconst_0 
L58:    fconst_0 
L59:    fload_1 
L60:    fload_2 
L61:    invokespecial Method com/fs/starfarer/ui/OO0O <init> (FFFF)V 
L64:    invokespecial Method com/fs/starfarer/ui/interfacenew <init> (Lcom/fs/starfarer/ui/OO0O;)V 
L67:    putfield Field com/fs/starfarer/campaign/CampaignState screenPanel Lcom/fs/starfarer/ui/interfacenew; 
L70:    aload_0 
L71:    new com/fs/starfarer/ui/interfacenew 
L74:    dup 
L75:    new com/fs/starfarer/ui/OO0O 
L78:    dup 
L79:    fconst_0 
L80:    fconst_0 
L81:    fload_1 
L82:    fload_2 
L83:    invokespecial Method com/fs/starfarer/ui/OO0O <init> (FFFF)V 
L86:    invokespecial Method com/fs/starfarer/ui/interfacenew <init> (Lcom/fs/starfarer/ui/OO0O;)V 
L89:    putfield Field com/fs/starfarer/campaign/CampaignState codexOverlay Lcom/fs/starfarer/ui/interfacenew; 
L92:    aload_0 
L93:    iconst_0 
L94:    putfield Field com/fs/starfarer/campaign/CampaignState showingCodex Z 
L97:    aload_0 
L98:    new com/fs/starfarer/class/G 
L101:   dup 
L102:   ldc_w 'ui' 
L105:   ldc_w 'noise' 
L108:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'Ó00000' (Ljava/lang/String;Ljava/lang/String;)Lcom/fs/graphics/Object; 
L111:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'while.new' ()F 
L114:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'öÒ0000' ()F 
L117:   invokespecial Method com/fs/starfarer/class/G <init> (Lcom/fs/graphics/Object;FF)V 
L120:   putfield Field com/fs/starfarer/campaign/CampaignState noise Lcom/fs/starfarer/class/G; 
L123:   aload_0 
L124:   getfield Field com/fs/starfarer/campaign/CampaignState noise Lcom/fs/starfarer/class/G; 
L127:   invokevirtual Method com/fs/starfarer/class/G 'Ô00000' ()Lcom/fs/graphics/util/Fader; 
L130:   ldc +0.5f 
L132:   fconst_2 
L133:   invokevirtual Method com/fs/graphics/util/Fader setDuration (FF)Lcom/fs/graphics/util/Fader; 
L136:   pop 
L137:   aload_0 
L138:   getfield Field com/fs/starfarer/campaign/CampaignState noise Lcom/fs/starfarer/class/G; 
L141:   invokevirtual Method com/fs/starfarer/class/G 'Ô00000' ()Lcom/fs/graphics/util/Fader; 
L144:   iconst_1 
L145:   invokevirtual Method com/fs/graphics/util/Fader setBounceDown (Z)V 
L148:   aload_0 
L149:   getfield Field com/fs/starfarer/campaign/CampaignState noise Lcom/fs/starfarer/class/G; 
L152:   invokevirtual Method com/fs/starfarer/class/G 'Ô00000' ()Lcom/fs/graphics/util/Fader; 
L155:   invokevirtual Method com/fs/graphics/util/Fader forceOut ()V 
L158:   aload_0 
L159:   new com/fs/starfarer/campaign/OooO 
L162:   dup 
L163:   aload_0 
L164:   invokespecial Method com/fs/starfarer/campaign/OooO <init> (Lcom/fs/starfarer/ui/U;)V 
L167:   putfield Field com/fs/starfarer/campaign/CampaignState buttons Lcom/fs/starfarer/campaign/OooO; 
L170:   aload_0 
L171:   new com/fs/starfarer/ui/newui/L 
L174:   dup 
L175:   aload_0 
L176:   aconst_null 
L177:   iconst_0 
L178:   aload_0 
L179:   getfield Field com/fs/starfarer/campaign/CampaignState screenPanel Lcom/fs/starfarer/ui/interfacenew; 
L182:   invokespecial Method com/fs/starfarer/ui/newui/L <init> (Lcom/fs/starfarer/coreui/OO0o;Lcom/fs/starfarer/api/campaign/SectorEntityToken;ZLcom/fs/starfarer/ui/interfacenew;)V 
L185:   putfield Field com/fs/starfarer/campaign/CampaignState core Lcom/fs/starfarer/ui/newui/L; 
L188:   aload_0 
L189:   getfield Field com/fs/starfarer/campaign/CampaignState screenPanel Lcom/fs/starfarer/ui/interfacenew; 
L192:   aload_0 
L193:   getfield Field com/fs/starfarer/campaign/CampaignState core Lcom/fs/starfarer/ui/newui/L; 
L196:   invokevirtual Method com/fs/starfarer/ui/interfacenew add (Lcom/fs/starfarer/ui/c;)Lcom/fs/starfarer/ui/OO0O; 
L199:   fconst_0 
L200:   fconst_0 
L201:   invokevirtual Method com/fs/starfarer/ui/OO0O inBL (FF)Lcom/fs/starfarer/ui/OO0O; 
L204:   pop 
L205:   aload_0 
L206:   new com/fs/starfarer/campaign/comms/super 
L209:   dup 
L210:   invokespecial Method com/fs/starfarer/campaign/comms/super <init> ()V 
L213:   putfield Field com/fs/starfarer/campaign/CampaignState messageListV3 Lcom/fs/starfarer/campaign/comms/super; 
L216:   aload_0 
L217:   getfield Field com/fs/starfarer/campaign/CampaignState screenPanel Lcom/fs/starfarer/ui/interfacenew; 
L220:   aload_0 
L221:   getfield Field com/fs/starfarer/campaign/CampaignState messageListV3 Lcom/fs/starfarer/campaign/comms/super; 
L224:   invokevirtual Method com/fs/starfarer/ui/interfacenew add (Lcom/fs/starfarer/ui/c;)Lcom/fs/starfarer/ui/OO0O; 
L227:   ldc_w +1024.0f 
L230:   ldc_w +400.0f 
L233:   invokevirtual Method com/fs/starfarer/ui/OO0O setSize (FF)Lcom/fs/starfarer/ui/OO0O; 
L236:   ldc_w +10.0f 
L239:   ldc_w +287.0f 
L242:   invokevirtual Method com/fs/starfarer/ui/OO0O inBL (FF)Lcom/fs/starfarer/ui/OO0O; 
L245:   pop 
L246:   aload_0 
L247:   getfield Field com/fs/starfarer/campaign/CampaignState screenPanel Lcom/fs/starfarer/ui/interfacenew; 
L250:   aload_0 
L251:   getfield Field com/fs/starfarer/campaign/CampaignState messageDisplay Lcom/fs/starfarer/campaign/ui/O00O; 
L254:   invokevirtual Method com/fs/starfarer/ui/interfacenew add (Lcom/fs/starfarer/ui/c;)Lcom/fs/starfarer/ui/OO0O; 
L257:   fload_1 
L258:   ldc_w +20.0f 
L261:   invokevirtual Method com/fs/starfarer/ui/OO0O setSize (FF)Lcom/fs/starfarer/ui/OO0O; 
L264:   ldc +5.0f 
L266:   invokevirtual Method com/fs/starfarer/ui/OO0O inTMid (F)Lcom/fs/starfarer/ui/OO0O; 
L269:   pop 
L270:   aload_0 
L271:   new com/fs/starfarer/campaign/CampaignState$1 
L274:   dup 
L275:   aload_0 
L276:   new com/fs/starfarer/ui/OO0O 
L279:   dup 
L280:   fconst_0 
L281:   fconst_0 
L282:   fload_1 
L283:   fload_2 
L284:   invokespecial Method com/fs/starfarer/ui/OO0O <init> (FFFF)V 
L287:   invokespecial Method com/fs/starfarer/campaign/CampaignState$1 <init> (Lcom/fs/starfarer/campaign/CampaignState;Lcom/fs/starfarer/ui/OO0O;)V 
L290:   putfield Field com/fs/starfarer/campaign/CampaignState belowTooltips Lcom/fs/starfarer/ui/interfacenew; 
L293:   aload_0 
L294:   getfield Field com/fs/starfarer/campaign/CampaignState screenPanel Lcom/fs/starfarer/ui/interfacenew; 
L297:   aload_0 
L298:   getfield Field com/fs/starfarer/campaign/CampaignState belowTooltips Lcom/fs/starfarer/ui/interfacenew; 
L301:   invokevirtual Method com/fs/starfarer/ui/interfacenew add (Lcom/fs/starfarer/ui/c;)Lcom/fs/starfarer/ui/OO0O; 
L304:   fconst_0 
L305:   fconst_0 
L306:   invokevirtual Method com/fs/starfarer/ui/OO0O inTL (FF)Lcom/fs/starfarer/ui/OO0O; 
L309:   pop 
L310:   aload_0 
L311:   getfield Field com/fs/starfarer/campaign/CampaignState screenPanel Lcom/fs/starfarer/ui/interfacenew; 
L314:   invokevirtual Method com/fs/starfarer/ui/interfacenew pack ()V 
L317:   aload_0 
L318:   getfield Field com/fs/starfarer/campaign/CampaignState screenPanel Lcom/fs/starfarer/ui/interfacenew; 
L321:   aload_0 
L322:   getfield Field com/fs/starfarer/campaign/CampaignState belowTooltips Lcom/fs/starfarer/ui/interfacenew; 
L325:   invokevirtual Method com/fs/starfarer/ui/interfacenew bringToTop (Lcom/fs/starfarer/ui/c;)V 
L328:   aload_0 
L329:   aconst_null 
L330:   putfield Field com/fs/starfarer/campaign/CampaignState playerFleetForBattle Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L333:   aload_0 
L334:   aconst_null 
L335:   putfield Field com/fs/starfarer/campaign/CampaignState enemyFleetForBattle Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L338:   aload_0 
L339:   aconst_null 
L340:   putfield Field com/fs/starfarer/campaign/CampaignState stickyTrackedByPatrol Ljava/lang/String; 
L343:   aload_0 
L344:   aconst_null 
L345:   putfield Field com/fs/starfarer/campaign/CampaignState currDevBattle Lcom/fs/starfarer/campaign/fleet/Battle; 
L348:   return 
L349:   
    .end code 
.end method 

.method public getZoomFactor : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState zoomTracker Lcom/fs/starfarer/util/A; 
L4:     ifnonnull L9 
L7:     fconst_1 
L8:     freturn 

        .stack same 
L9:     aload_0 
L10:    getfield Field com/fs/starfarer/campaign/CampaignState zoomTracker Lcom/fs/starfarer/util/A; 
L13:    invokevirtual Method com/fs/starfarer/util/A 'Ô00000' ()F 
L16:    freturn 
L17:    
    .end code 
.end method 

.method public setZoomFactor : (F)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState zoomTracker Lcom/fs/starfarer/util/A; 
L4:     ifnonnull L8 
L7:     return 

        .stack same 
L8:     aload_0 
L9:     getfield Field com/fs/starfarer/campaign/CampaignState zoomTracker Lcom/fs/starfarer/util/A; 
L12:    fload_1 
L13:    invokevirtual Method com/fs/starfarer/util/A new (F)V 
L16:    return 
L17:    
    .end code 
.end method 

.method public getMinZoomFactor : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState zoomTracker Lcom/fs/starfarer/util/A; 
L4:     ifnonnull L9 
L7:     fconst_1 
L8:     freturn 

        .stack same 
L9:     aload_0 
L10:    getfield Field com/fs/starfarer/campaign/CampaignState zoomTracker Lcom/fs/starfarer/util/A; 
L13:    invokevirtual Method com/fs/starfarer/util/A 'Ó00000' ()F 
L16:    freturn 
L17:    
    .end code 
.end method 

.method public getMaxZoomFactor : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState zoomTracker Lcom/fs/starfarer/util/A; 
L4:     ifnonnull L9 
L7:     fconst_1 
L8:     freturn 

        .stack same 
L9:     aload_0 
L10:    getfield Field com/fs/starfarer/campaign/CampaignState zoomTracker Lcom/fs/starfarer/util/A; 
L13:    invokevirtual Method com/fs/starfarer/util/A 'Ö00000' ()F 
L16:    freturn 
L17:    
    .end code 
.end method 

.method public setMinZoomFactor : (F)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState zoomTracker Lcom/fs/starfarer/util/A; 
L4:     ifnonnull L8 
L7:     return 

        .stack same 
L8:     aload_0 
L9:     getfield Field com/fs/starfarer/campaign/CampaignState zoomTracker Lcom/fs/starfarer/util/A; 
L12:    fload_1 
L13:    invokevirtual Method com/fs/starfarer/util/A 'Ó00000' (F)V 
L16:    return 
L17:    
    .end code 
.end method 

.method public setMaxZoomFactor : (F)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState zoomTracker Lcom/fs/starfarer/util/A; 
L4:     ifnonnull L8 
L7:     return 

        .stack same 
L8:     aload_0 
L9:     getfield Field com/fs/starfarer/campaign/CampaignState zoomTracker Lcom/fs/starfarer/util/A; 
L12:    fload_1 
L13:    invokevirtual Method com/fs/starfarer/util/A 'Ô00000' (F)V 
L16:    return 
L17:    
    .end code 
.end method 

.method public getMessageDisplay : ()Lcom/fs/starfarer/campaign/ui/O00O; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState messageDisplay Lcom/fs/starfarer/campaign/ui/O00O; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public getCourseWidget : ()Lcom/fs/starfarer/coreui/A/O0Oo; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState core Lcom/fs/starfarer/ui/newui/L; 
L4:     ifnonnull L9 
L7:     aconst_null 
L8:     areturn 

        .stack same 
L9:     aload_0 
L10:    getfield Field com/fs/starfarer/campaign/CampaignState core Lcom/fs/starfarer/ui/newui/L; 
L13:    invokevirtual Method com/fs/starfarer/ui/newui/L getCourse ()Lcom/fs/starfarer/coreui/A/O0Oo; 
L16:    areturn 
L17:    
    .end code 
.end method 

.method public clearLaidInCourse : ()V 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState core Lcom/fs/starfarer/ui/newui/L; 
L4:     ifnonnull L8 
L7:     return 

        .stack same 
L8:     aload_0 
L9:     getfield Field com/fs/starfarer/campaign/CampaignState core Lcom/fs/starfarer/ui/newui/L; 
L12:    invokevirtual Method com/fs/starfarer/ui/newui/L getCourse ()Lcom/fs/starfarer/coreui/A/O0Oo; 
L15:    invokevirtual Method com/fs/starfarer/coreui/A/O0Oo abort ()V 
L18:    return 
L19:    
    .end code 
.end method 

.method public getUltimateCourseTarget : ()Lcom/fs/starfarer/api/campaign/SectorEntityToken; 
    .code stack 1 locals 1 
L0:     invokestatic Method com/fs/starfarer/api/Global getSector ()Lcom/fs/starfarer/api/campaign/SectorAPI; 
L3:     invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorAPI getUIData ()Lcom/fs/starfarer/api/campaign/PersistentUIDataAPI; 1 
L8:     invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/PersistentUIDataAPI getCourseTarget ()Lcom/fs/starfarer/api/campaign/SectorEntityToken; 1 
L13:    areturn 
L14:    
    .end code 
.end method 

.method public getCurrentCourseTarget : ()Lcom/fs/starfarer/api/campaign/SectorEntityToken; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState core Lcom/fs/starfarer/ui/newui/L; 
L4:     ifnonnull L9 
L7:     aconst_null 
L8:     areturn 

        .stack same 
L9:     aload_0 
L10:    getfield Field com/fs/starfarer/campaign/CampaignState core Lcom/fs/starfarer/ui/newui/L; 
L13:    invokevirtual Method com/fs/starfarer/ui/newui/L getCourse ()Lcom/fs/starfarer/coreui/A/O0Oo; 
L16:    invokevirtual Method com/fs/starfarer/coreui/A/O0Oo getCurrentTarget ()Lcom/fs/starfarer/api/campaign/SectorEntityToken; 
L19:    areturn 
L20:    
    .end code 
.end method 

.method public getNextStepForCourse : (Lcom/fs/starfarer/api/campaign/SectorEntityToken;)Lcom/fs/starfarer/api/campaign/SectorEntityToken; 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState core Lcom/fs/starfarer/ui/newui/L; 
L4:     ifnonnull L9 
L7:     aconst_null 
L8:     areturn 

        .stack same 
L9:     aload_0 
L10:    getfield Field com/fs/starfarer/campaign/CampaignState core Lcom/fs/starfarer/ui/newui/L; 
L13:    invokevirtual Method com/fs/starfarer/ui/newui/L getCourse ()Lcom/fs/starfarer/coreui/A/O0Oo; 
L16:    aload_1 
L17:    invokevirtual Method com/fs/starfarer/coreui/A/O0Oo getNextStep (Lcom/fs/starfarer/api/campaign/SectorEntityToken;)Lcom/fs/starfarer/api/campaign/SectorEntityToken; 
L20:    areturn 
L21:    
    .end code 
.end method 

.method public layInCourseForNextStep : (Lcom/fs/starfarer/api/campaign/SectorEntityToken;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState core Lcom/fs/starfarer/ui/newui/L; 
L4:     ifnonnull L8 
L7:     return 

        .stack same 
L8:     aload_0 
L9:     getfield Field com/fs/starfarer/campaign/CampaignState core Lcom/fs/starfarer/ui/newui/L; 
L12:    invokevirtual Method com/fs/starfarer/ui/newui/L getCourse ()Lcom/fs/starfarer/coreui/A/O0Oo; 
L15:    aload_1 
L16:    invokevirtual Method com/fs/starfarer/coreui/A/O0Oo layInCourseForNextStep (Lcom/fs/starfarer/api/campaign/SectorEntityToken;)V 
L19:    return 
L20:    
    .end code 
.end method 

.method public getNameForCourseTarget : (Lcom/fs/starfarer/api/campaign/SectorEntityToken;Z)Ljava/lang/String; 
    .code stack 2 locals 3 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState core Lcom/fs/starfarer/ui/newui/L; 
L4:     ifnonnull L9 
L7:     aconst_null 
L8:     areturn 

        .stack same 
L9:     aload_1 
L10:    iload_2 
L11:    invokestatic Method com/fs/starfarer/coreui/A/O0Oo getNameForSource (Lcom/fs/starfarer/api/campaign/SectorEntityToken;Z)Ljava/lang/String; 
L14:    areturn 
L15:    
    .end code 
.end method 

.method public getLastLegDistance : (Lcom/fs/starfarer/api/campaign/SectorEntityToken;)F 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState core Lcom/fs/starfarer/ui/newui/L; 
L4:     ifnonnull L9 
L7:     fconst_0 
L8:     freturn 

        .stack same 
L9:     aload_0 
L10:    getfield Field com/fs/starfarer/campaign/CampaignState core Lcom/fs/starfarer/ui/newui/L; 
L13:    invokevirtual Method com/fs/starfarer/ui/newui/L getCourse ()Lcom/fs/starfarer/coreui/A/O0Oo; 
L16:    aload_1 
L17:    invokevirtual Method com/fs/starfarer/coreui/A/O0Oo getLastLegDistance (Lcom/fs/starfarer/api/campaign/SectorEntityToken;)F 
L20:    freturn 
L21:    
    .end code 
.end method 

.method public showNoise : (FFF)V 
    .code stack 3 locals 4 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState noise Lcom/fs/starfarer/class/G; 
L4:     invokevirtual Method com/fs/starfarer/class/G 'Ô00000' ()Lcom/fs/graphics/util/Fader; 
L7:     fload_1 
L8:     fload_2 
L9:     invokevirtual Method com/fs/graphics/util/Fader setDuration (FF)Lcom/fs/graphics/util/Fader; 
L12:    pop 
L13:    aload_0 
L14:    fload_3 
L15:    putfield Field com/fs/starfarer/campaign/CampaignState maxNoiseLevel F 
L18:    aload_0 
L19:    getfield Field com/fs/starfarer/campaign/CampaignState noise Lcom/fs/starfarer/class/G; 
L22:    invokevirtual Method com/fs/starfarer/class/G 'Ô00000' ()Lcom/fs/graphics/util/Fader; 
L25:    invokevirtual Method com/fs/graphics/util/Fader fadeIn ()V 
L28:    return 
L29:    
    .end code 
.end method 

.method public getMessageList : ()Lcom/fs/starfarer/campaign/comms/super; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState messageListV3 Lcom/fs/starfarer/campaign/comms/super; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public getHintPanel : ()Lcom/fs/starfarer/api/ui/HintPanelAPI; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState core Lcom/fs/starfarer/ui/newui/L; 
L4:     ifnonnull L9 
L7:     aconst_null 
L8:     areturn 

        .stack same 
L9:     aload_0 
L10:    getfield Field com/fs/starfarer/campaign/CampaignState core Lcom/fs/starfarer/ui/newui/L; 
L13:    invokevirtual Method com/fs/starfarer/ui/newui/L getHintPanel ()Lcom/fs/starfarer/api/ui/HintPanelAPI; 
L16:    areturn 
L17:    
    .end code 
.end method 

.method private addMessageInternal : (Ljava/lang/String;Ljava/awt/Color;)V 
    .code stack 4 locals 4 
L0:     new com/fs/starfarer/api/impl/campaign/intel/MessageIntel 
L3:     dup 
L4:     aload_1 
L5:     aload_2 
L6:     invokespecial Method com/fs/starfarer/api/impl/campaign/intel/MessageIntel <init> (Ljava/lang/String;Ljava/awt/Color;)V 
L9:     astore_3 
L10:    invokestatic Method com/fs/starfarer/api/Global getSector ()Lcom/fs/starfarer/api/campaign/SectorAPI; 
L13:    invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorAPI getCampaignUI ()Lcom/fs/starfarer/api/campaign/CampaignUIAPI; 1 
L18:    aload_3 
L19:    invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignUIAPI addMessage (Lcom/fs/starfarer/api/campaign/comm/IntelInfoPlugin;)V 2 
L24:    return 
L25:    
    .end code 
.end method 

.method public addMessage : (Ljava/lang/String;)V 
    .code stack 3 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     getstatic Field com/fs/starfarer/O0OO String Ljava/awt/Color; 
L5:     invokevirtual Method com/fs/starfarer/campaign/CampaignState addMessage (Ljava/lang/String;Ljava/awt/Color;)V 
L8:     return 
L9:     
    .end code 
.end method 

.method public addMessage : (Ljava/lang/String;Ljava/awt/Color;)V 
    .code stack 3 locals 3 
L0:     aload_0 
L1:     aload_1 
L2:     aload_2 
L3:     invokevirtual Method com/fs/starfarer/campaign/CampaignState addMessageInternal (Ljava/lang/String;Ljava/awt/Color;)V 
L6:     return 
L7:     
    .end code 
.end method 

.method public addMessage : (Lcom/fs/starfarer/api/campaign/comm/IntelInfoPlugin;)V 
    .code stack 4 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     aconst_null 
L3:     aconst_null 
L4:     invokevirtual Method com/fs/starfarer/campaign/CampaignState addMessage (Lcom/fs/starfarer/api/campaign/comm/IntelInfoPlugin;Lcom/fs/starfarer/api/campaign/comm/CommMessageAPI$MessageClickAction;Ljava/lang/Object;)V 
L7:     return 
L8:     
    .end code 
.end method 

.method public addMessage : (Lcom/fs/starfarer/api/campaign/comm/IntelInfoPlugin;Lcom/fs/starfarer/api/campaign/comm/CommMessageAPI$MessageClickAction;)V 
    .code stack 4 locals 3 
L0:     aload_0 
L1:     aload_1 
L2:     aload_2 
L3:     aconst_null 
L4:     invokevirtual Method com/fs/starfarer/campaign/CampaignState addMessage (Lcom/fs/starfarer/api/campaign/comm/IntelInfoPlugin;Lcom/fs/starfarer/api/campaign/comm/CommMessageAPI$MessageClickAction;Ljava/lang/Object;)V 
L7:     return 
L8:     
    .end code 
.end method 

.method public addMessage : (Lcom/fs/starfarer/api/campaign/comm/IntelInfoPlugin;Lcom/fs/starfarer/api/campaign/comm/CommMessageAPI$MessageClickAction;Ljava/lang/Object;)V 
    .code stack 4 locals 4 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState messageListV3 Lcom/fs/starfarer/campaign/comms/super; 
L4:     aload_1 
L5:     aload_2 
L6:     aload_3 
L7:     invokevirtual Method com/fs/starfarer/campaign/comms/super addMessage (Lcom/fs/starfarer/api/campaign/comm/IntelInfoPlugin;Lcom/fs/starfarer/api/campaign/comm/CommMessageAPI$MessageClickAction;Ljava/lang/Object;)Lcom/fs/starfarer/campaign/comms/C; 
L10:    pop 
L11:    return 
L12:    
    .end code 
.end method 

.method public addMessage : (Ljava/lang/String;Ljava/awt/Color;Ljava/lang/String;Ljava/lang/String;Ljava/awt/Color;Ljava/awt/Color;)V 
    .code stack 9 locals 8 
L0:     new com/fs/starfarer/api/impl/campaign/intel/MessageIntel 
L3:     dup 
L4:     aload_1 
L5:     aload_2 
L6:     iconst_2 
L7:     anewarray java/lang/String 
L10:    dup 
L11:    iconst_0 
L12:    aload_3 
L13:    aastore 
L14:    dup 
L15:    iconst_1 
L16:    aload 4 
L18:    aastore 
L19:    iconst_2 
L20:    anewarray java/awt/Color 
L23:    dup 
L24:    iconst_0 
L25:    aload 5 
L27:    aastore 
L28:    dup 
L29:    iconst_1 
L30:    aload 6 
L32:    aastore 
L33:    invokespecial Method com/fs/starfarer/api/impl/campaign/intel/MessageIntel <init> (Ljava/lang/String;Ljava/awt/Color;[Ljava/lang/String;[Ljava/awt/Color;)V 
L36:    astore 7 
L38:    aload_0 
L39:    getfield Field com/fs/starfarer/campaign/CampaignState messageListV3 Lcom/fs/starfarer/campaign/comms/super; 
L42:    aload 7 
L44:    invokevirtual Method com/fs/starfarer/campaign/comms/super addMessage (Lcom/fs/starfarer/api/campaign/comm/IntelInfoPlugin;)Lcom/fs/starfarer/campaign/comms/C; 
L47:    pop 
L48:    return 
L49:    
    .end code 
.end method 

.method public getEncounterDialog : ()Lcom/fs/starfarer/ui/newui/o0Oo; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState encounterDialog Lcom/fs/starfarer/ui/newui/o0Oo; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public setEncounterDialog : (Lcom/fs/starfarer/ui/newui/o0Oo;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/fs/starfarer/campaign/CampaignState encounterDialog Lcom/fs/starfarer/ui/newui/o0Oo; 
L5:     return 
L6:     
    .end code 
.end method 

.method protected prepare : ()V 
    .code stack 7 locals 6 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState session Ljava/util/Map; 
L4:     ldc 'run combat simulator' 
L6:     invokeinterface InterfaceMethod java/util/Map containsKey (Ljava/lang/Object;)Z 2 
L11:    istore_1 
L12:    aload_0 
L13:    getfield Field com/fs/starfarer/campaign/CampaignState encounterDialog Lcom/fs/starfarer/ui/newui/o0Oo; 
L16:    ifnull L79 
L19:    iload_1 
L20:    ifeq L79 
L23:    aload_0 
L24:    getfield Field com/fs/starfarer/campaign/CampaignState encounterDialog Lcom/fs/starfarer/ui/newui/o0Oo; 
L27:    invokevirtual Method com/fs/starfarer/ui/newui/o0Oo getInteractionTarget ()Lcom/fs/starfarer/api/campaign/SectorEntityToken; 
L30:    astore_2 
L31:    aload_2 
L32:    ifnull L79 
L35:    aload_2 
L36:    invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorEntityToken getMarket ()Lcom/fs/starfarer/api/campaign/econ/MarketAPI; 1 
L41:    ifnull L79 
L44:    aload_2 
L45:    invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorEntityToken getMarket ()Lcom/fs/starfarer/api/campaign/econ/MarketAPI; 1 
L50:    invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/econ/MarketAPI isPlanetConditionMarketOnly ()Z 1 
L55:    ifne L70 
L58:    aload_2 
L59:    invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorEntityToken getMarket ()Lcom/fs/starfarer/api/campaign/econ/MarketAPI; 1 
L64:    invokestatic Method com/fs/starfarer/D/return o00000 (Ljava/lang/Object;)V 
L67:    goto L79 

        .stack append Integer Object com/fs/starfarer/api/campaign/SectorEntityToken 
L70:    aload_2 
L71:    invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorEntityToken getMarket ()Lcom/fs/starfarer/api/campaign/econ/MarketAPI; 1 
L76:    invokestatic Method com/fs/starfarer/D/return Object (Ljava/lang/Object;)V 

        .stack chop 1 
L79:    aload_0 
L80:    getfield Field com/fs/starfarer/campaign/CampaignState session Ljava/util/Map; 
L83:    ldc 'campaign battle result' 
L85:    invokeinterface InterfaceMethod java/util/Map containsKey (Ljava/lang/Object;)Z 2 
L90:    ifne L108 
L93:    aload_0 
L94:    getfield Field com/fs/starfarer/campaign/CampaignState encounterDialog Lcom/fs/starfarer/ui/newui/o0Oo; 
L97:    ifnonnull L228 
L100:   aload_0 
L101:   aconst_null 
L102:   putfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L105:   goto L228 

        .stack same 
L108:   aload_0 
L109:   getfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L112:   ifnull L228 
L115:   invokestatic Method com/fs/starfarer/combat/CombatEngine destroyInstance ()V 
L118:   invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L121:   pop 
L122:   aload_0 
L123:   getfield Field com/fs/starfarer/campaign/CampaignState session Ljava/util/Map; 
L126:   ldc 'campaign battle result' 
L128:   invokeinterface InterfaceMethod java/util/Map get (Ljava/lang/Object;)Ljava/lang/Object; 2 
L133:   checkcast com/fs/starfarer/combat/Object/String 
L136:   astore_2 
L137:   aload_0 
L138:   getfield Field com/fs/starfarer/campaign/CampaignState session Ljava/util/Map; 
L141:   ldc 'campaign battle result' 
L143:   invokeinterface InterfaceMethod java/util/Map remove (Ljava/lang/Object;)Ljava/lang/Object; 2 
L148:   pop 
L149:   aload_2 
L150:   aload_0 
L151:   getfield Field com/fs/starfarer/campaign/CampaignState playerFleetForBattle Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L154:   aload_0 
L155:   getfield Field com/fs/starfarer/campaign/CampaignState enemyFleetForBattle Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L158:   iconst_0 
L159:   invokevirtual Method com/fs/starfarer/combat/Object/String 'super' (Lcom/fs/starfarer/campaign/fleet/CampaignFleet;Lcom/fs/starfarer/campaign/fleet/CampaignFleet;Z)Lcom/fs/starfarer/campaign/B/D; 
L162:   astore_3 
L163:   aload_0 
L164:   getfield Field com/fs/starfarer/campaign/CampaignState encounterDialog Lcom/fs/starfarer/ui/newui/o0Oo; 
L167:   invokevirtual Method com/fs/starfarer/ui/newui/o0Oo getPlugin ()Lcom/fs/starfarer/api/campaign/InteractionDialogPlugin; 
L170:   aload_3 
L171:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/InteractionDialogPlugin backFromEngagement (Lcom/fs/starfarer/api/combat/EngagementResultAPI;)V 2 
L176:   aload_0 
L177:   getfield Field com/fs/starfarer/campaign/CampaignState enemyFleetForBattle Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L180:   ifnull L190 
L183:   aload_0 
L184:   getfield Field com/fs/starfarer/campaign/CampaignState enemyFleetForBattle Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L187:   invokestatic Method com/fs/starfarer/D/return 'Ò00000' (Ljava/lang/Object;)V 

        .stack append Object com/fs/starfarer/combat/Object/String Object com/fs/starfarer/campaign/B/D 
L190:   aload_0 
L191:   aconst_null 
L192:   putfield Field com/fs/starfarer/campaign/CampaignState playerFleetForBattle Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L195:   aload_0 
L196:   aconst_null 
L197:   putfield Field com/fs/starfarer/campaign/CampaignState enemyFleetForBattle Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L200:   aload_0 
L201:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L204:   aload_0 
L205:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L208:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getClock ()Lcom/fs/starfarer/campaign/CampaignClock; 
L211:   invokevirtual Method com/fs/starfarer/campaign/CampaignClock getTimestamp ()J 
L214:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setLastPlayerBattleTimestamp (J)V 
L217:   aload_0 
L218:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L221:   aload_3 
L222:   invokevirtual Method com/fs/starfarer/campaign/B/D didPlayerWin ()Z 
L225:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setLastPlayerBattleWon (Z)V 

        .stack chop 2 
L228:   iload_1 
L229:   ifeq L323 
L232:   aload_0 
L233:   getfield Field com/fs/starfarer/campaign/CampaignState session Ljava/util/Map; 
L236:   ldc 'run combat simulator' 
L238:   invokeinterface InterfaceMethod java/util/Map remove (Ljava/lang/Object;)Ljava/lang/Object; 2 
L243:   pop 
L244:   iconst_0 
L245:   invokestatic Method org/lwjgl/input/Mouse setGrabbed (Z)V 
L248:   getstatic Field com/fs/starfarer/return/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$o 'Ó00000' Lcom/fs/starfarer/return/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$o; 
L251:   invokestatic Method com/fs/starfarer/return/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO o00000 (Lcom/fs/starfarer/return/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$o;)V 
L254:   aload_0 
L255:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L258:   putfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L261:   aload_0 
L262:   invokevirtual Method com/fs/starfarer/campaign/CampaignState resetLeakChecker ()V 
L265:   aload_0 
L266:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L269:   iconst_1 
L270:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setPaused (Z)V 
L273:   aload_0 
L274:   getfield Field com/fs/starfarer/campaign/CampaignState encounterDialog Lcom/fs/starfarer/ui/newui/o0Oo; 
L277:   ifnull L315 
L280:   aload_0 
L281:   getfield Field com/fs/starfarer/campaign/CampaignState encounterDialog Lcom/fs/starfarer/ui/newui/o0Oo; 
L284:   invokevirtual Method com/fs/starfarer/ui/newui/o0Oo getInteractionTarget ()Lcom/fs/starfarer/api/campaign/SectorEntityToken; 
L287:   ifnull L315 
L290:   aload_0 
L291:   getfield Field com/fs/starfarer/campaign/CampaignState encounterDialog Lcom/fs/starfarer/ui/newui/o0Oo; 
L294:   invokevirtual Method com/fs/starfarer/ui/newui/o0Oo getInteractionTarget ()Lcom/fs/starfarer/api/campaign/SectorEntityToken; 
L297:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorEntityToken getMarket ()Lcom/fs/starfarer/api/campaign/econ/MarketAPI; 1 
L302:   ifnull L315 
L305:   aload_0 
L306:   getstatic Field com/fs/starfarer/campaign/CampaignState$o 'õ00000' Lcom/fs/starfarer/campaign/CampaignState$o; 
L309:   putfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L312:   goto L322 

        .stack same_extended 
L315:   aload_0 
L316:   getstatic Field com/fs/starfarer/campaign/CampaignState$o 'ô00000' Lcom/fs/starfarer/campaign/CampaignState$o; 
L319:   putfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 

        .stack same 
L322:   return 

        .stack same 
L323:   getstatic Field com/fs/starfarer/campaign/CampaignState inited Z 
L326:   ifeq L329 

        .stack same 
L329:   aload_0 
L330:   getfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L333:   ifnonnull L516 
L336:   aload_0 
L337:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L340:   putfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L343:   aload_0 
L344:   invokevirtual Method com/fs/starfarer/campaign/CampaignState resetLeakChecker ()V 
L347:   aload_0 
L348:   aconst_null 
L349:   putfield Field com/fs/starfarer/campaign/CampaignState encounterDialog Lcom/fs/starfarer/ui/newui/o0Oo; 
L352:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'oÖ0000' ()Lcom/fs/starfarer/settings/A; 
L355:   invokevirtual Method com/fs/starfarer/settings/A new ()I 
L358:   i2f 
L359:   fstore_2 
L360:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'oÖ0000' ()Lcom/fs/starfarer/settings/A; 
L363:   invokevirtual Method com/fs/starfarer/settings/A 'Ô00000' ()I 
L366:   i2f 
L367:   fstore_3 
L368:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'oÖ0000' ()Lcom/fs/starfarer/settings/A; 
L371:   invokevirtual Method com/fs/starfarer/settings/A o00000 ()F 
L374:   fstore_2 
L375:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'oÖ0000' ()Lcom/fs/starfarer/settings/A; 
L378:   invokevirtual Method com/fs/starfarer/settings/A 'Ó00000' ()F 
L381:   fstore_3 
L382:   aload_0 
L383:   invokevirtual Method com/fs/starfarer/campaign/CampaignState createUI ()V 
L386:   aload_0 
L387:   fload_2 
L388:   f2i 
L389:   i2f 
L390:   putfield Field com/fs/starfarer/campaign/CampaignState worldCoordsScreenWidthAtZoomOne F 
L393:   aload_0 
L394:   fload_3 
L395:   f2i 
L396:   i2f 
L397:   putfield Field com/fs/starfarer/campaign/CampaignState worldCoordsScreenHeightAtZoomOne F 
L400:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'OÓ0000' ()Z 
L403:   ifeq L444 
L406:   invokestatic Method com/fs/starfarer/api/Global getSettings ()Lcom/fs/starfarer/api/SettingsAPI; 
L409:   ldc_w 'playtestingMode' 
L412:   invokeinterface InterfaceMethod com/fs/starfarer/api/SettingsAPI getBoolean (Ljava/lang/String;)Z 2 
L417:   ifne L444 
L420:   aload_0 
L421:   new com/fs/starfarer/util/A 
L424:   dup 
L425:   ldc +0.5f 
L427:   ldc_w +20.0f 
L430:   ldc_w +0.25f 
L433:   ldc +0.5f 
L435:   invokespecial Method com/fs/starfarer/util/A <init> (FFFF)V 
L438:   putfield Field com/fs/starfarer/campaign/CampaignState zoomTracker Lcom/fs/starfarer/util/A; 
L441:   goto L490 

        .stack append Float Float 
L444:   invokestatic Method com/fs/starfarer/api/Global getSettings ()Lcom/fs/starfarer/api/SettingsAPI; 
L447:   ldc_w 'minCampaignZoom' 
L450:   invokeinterface InterfaceMethod com/fs/starfarer/api/SettingsAPI getFloat (Ljava/lang/String;)F 2 
L455:   fstore 4 
L457:   invokestatic Method com/fs/starfarer/api/Global getSettings ()Lcom/fs/starfarer/api/SettingsAPI; 
L460:   ldc_w 'maxCampaignZoom' 
L463:   invokeinterface InterfaceMethod com/fs/starfarer/api/SettingsAPI getFloat (Ljava/lang/String;)F 2 
L468:   fstore 5 
L470:   aload_0 
L471:   new com/fs/starfarer/util/A 
L474:   dup 
L475:   fload 4 
L477:   fload 5 
L479:   ldc_w +0.25f 
L482:   ldc +0.5f 
L484:   invokespecial Method com/fs/starfarer/util/A <init> (FFFF)V 
L487:   putfield Field com/fs/starfarer/campaign/CampaignState zoomTracker Lcom/fs/starfarer/util/A; 

        .stack same 
L490:   aload_0 
L491:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L494:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getViewport ()Lcom/fs/starfarer/combat/CombatViewport; 
L497:   fconst_1 
L498:   invokevirtual Method com/fs/starfarer/combat/CombatViewport setWorldXtoScreenX (F)V 
L501:   aload_0 
L502:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L505:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getViewport ()Lcom/fs/starfarer/combat/CombatViewport; 
L508:   fconst_1 
L509:   invokevirtual Method com/fs/starfarer/combat/CombatViewport setWorldYtoScreenY (F)V 
L512:   iconst_1 
L513:   putstatic Field com/fs/starfarer/campaign/CampaignState inited Z 

        .stack chop 2 
L516:   aload_0 
L517:   getfield Field com/fs/starfarer/campaign/CampaignState zoomTracker Lcom/fs/starfarer/util/A; 
L520:   aload_0 
L521:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L524:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getUIData ()Lcom/fs/starfarer/campaign/CampaignUIPersistentData; 
L527:   invokevirtual Method com/fs/starfarer/campaign/CampaignUIPersistentData getCampaignZoom ()F 
L530:   invokevirtual Method com/fs/starfarer/util/A new (F)V 
L533:   iconst_0 
L534:   invokestatic Method org/lwjgl/input/Mouse setGrabbed (Z)V 
L537:   getstatic Field com/fs/starfarer/return/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$o 'Ó00000' Lcom/fs/starfarer/return/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$o; 
L540:   invokestatic Method com/fs/starfarer/return/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO o00000 (Lcom/fs/starfarer/return/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$o;)V 
L543:   return 
L544:   
    .end code 
.end method 

.method public getSharedFader : ()Lcom/fs/starfarer/api/util/FaderUtil; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState sharedFader Lcom/fs/starfarer/api/util/FaderUtil; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method protected resetLeakChecker : ()V 
    .code stack 3 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState leakChecker Lcom/fs/starfarer/api/util/IntervalUtil; 
L4:     aload_0 
L5:     getfield Field com/fs/starfarer/campaign/CampaignState leakChecker Lcom/fs/starfarer/api/util/IntervalUtil; 
L8:     invokevirtual Method com/fs/starfarer/api/util/IntervalUtil getMaxInterval ()F 
L11:    ldc +0.5f 
L13:    fsub 
L14:    invokevirtual Method com/fs/starfarer/api/util/IntervalUtil setElapsed (F)V 
L17:    aload_0 
L18:    fconst_0 
L19:    putfield Field com/fs/starfarer/campaign/CampaignState sinceGCCountdown F 
L22:    aload_0 
L23:    iconst_0 
L24:    putfield Field com/fs/starfarer/campaign/CampaignState showWhenNumIsOne Z 
L27:    aload_0 
L28:    iconst_0 
L29:    putfield Field com/fs/starfarer/campaign/CampaignState showedWarningDialog Z 
L32:    aload_0 
L33:    iconst_0 
L34:    putfield Field com/fs/starfarer/campaign/CampaignState showedNeverMindWarning Z 
L37:    aload_0 
L38:    iconst_0 
L39:    putfield Field com/fs/starfarer/campaign/CampaignState calledGC Z 
L42:    aload_0 
L43:    iconst_0 
L44:    putfield Field com/fs/starfarer/campaign/CampaignState calledInsteadOfShowingWarning Z 
L47:    aload_0 
L48:    getstatic Field com/fs/starfarer/campaign/CampaignState MEMORY_CHECK_INTERVAL F 
L51:    putfield Field com/fs/starfarer/campaign/CampaignState sinceMemoryCheck F 
L54:    aload_0 
L55:    aconst_null 
L56:    putfield Field com/fs/starfarer/campaign/CampaignState stickyTrackedByPatrol Ljava/lang/String; 
L59:    return 
L60:    
    .end code 
.end method 

.method public advance : (FLcom/fs/starfarer/util/A/new;)V
    .code stack 3 locals 3
L0:     aload_0
L1:     fload_1
L2:     aload_2
L3:     invokestatic Method com/genir/renderer/overrides/CampaignState advance (Lcom/fs/starfarer/campaign/CampaignState;FLjava/lang/Object;)V
L6:     return
L7:
        .linenumbertable
            L0 7
            L6 8
        .end linenumbertable
        .localvariabletable
            0 is this Lcom/fs/starfarer/campaign/CampaignState; from L0 to L7
            1 is var1 F from L0 to L7
            2 is var2 Lcom/fs/starfarer/util/A/new; from L0 to L7
        .end localvariabletable 
    .end code 
.end method 

.method public advanceImplCall : (FLjava/lang/Object;)V 
    .code stack 3 locals 3 
L0:     aload_0 
L1:     fload_1 
L2:     aload_2 
L3:     checkcast com/fs/starfarer/util/A/new 
L6:     invokevirtual Method com/fs/starfarer/campaign/CampaignState advanceImpl (FLcom/fs/starfarer/util/A/new;)V 
L9:     return 
L10:    
        .linenumbertable 
            L0 15 
            L9 16 
        .end linenumbertable 
        .localvariabletable 
            0 is this Lcom/fs/starfarer/campaign/CampaignState; from L0 to L10 
            1 is var1 F from L0 to L10 
            2 is var2 Ljava/lang/Object; from L0 to L10 
        .end localvariabletable 
    .end code 
.end method 

.method public advanceImpl : (FLcom/fs/starfarer/util/A/new;)V 
    .code stack 7 locals 15
L0:     fload_1
L1:     ldc_w +0.03333333507180214f 
L4:     fcmpl 
L5:     ifle L12 
L8:     ldc_w +0.03333333507180214f 
L11:    fstore_1 

        .stack same 
L12:    getstatic Field com/fs/starfarer/campaign/CampaignState frame J 
L15:    lconst_1 
L16:    ladd 
L17:    putstatic Field com/fs/starfarer/campaign/CampaignState frame J 
L20:    ldc_w 'Campaign advance()' 
L23:    invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L26:    ldc_w 'doRAMandVRAMChecksWhenRunningWithMods' 
L29:    invokestatic Method com/fs/starfarer/settings/StarfarerSettings class (Ljava/lang/String;)Z 
L32:    ifeq L156 
L35:    aload_0 
L36:    dup 
L37:    getfield Field com/fs/starfarer/campaign/CampaignState sinceMemoryCheck F 
L40:    fload_1 
L41:    fadd 
L42:    putfield Field com/fs/starfarer/campaign/CampaignState sinceMemoryCheck F 
L45:    aload_0 
L46:    getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L49:    ifnull L156 
L52:    aload_0 
L53:    getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L56:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine isPaused ()Z 
L59:    ifeq L156 
L62:    aload_0 
L63:    getfield Field com/fs/starfarer/campaign/CampaignState sinceMemoryCheck F 
L66:    getstatic Field com/fs/starfarer/campaign/CampaignState MEMORY_CHECK_INTERVAL F 
L69:    fcmpl 
L70:    iflt L156 
L73:    aload_0 
L74:    invokevirtual Method com/fs/starfarer/campaign/CampaignState isShowingDialog ()Z 
L77:    ifne L156 
L80:    invokestatic Method com/fs/starfarer/launcher/ModManager getInstance ()Lcom/fs/starfarer/launcher/ModManager; 
L83:    invokevirtual Method com/fs/starfarer/launcher/ModManager getEnabledMods ()Ljava/util/List; 
L86:    astore_3 
L87:    aload_3 
L88:    ifnull L156 
L91:    aload_3 
L92:    invokeinterface InterfaceMethod java/util/List isEmpty ()Z 1 
L97:    ifne L156 
L100:   ldc_w 'memoryCheckVerbose' 
L103:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings class (Ljava/lang/String;)Z 
L106:   istore 4 
L108:   aload_0 
L109:   fconst_0 
L110:   putfield Field com/fs/starfarer/campaign/CampaignState sinceMemoryCheck F 
L113:   invokestatic Method com/fs/starfarer/D/M o00000 ()Z 
L116:   ifeq L123 
L119:   iconst_0 
L120:   goto L124 

        .stack append Object java/util/List Integer 
L123:   iconst_1 

        .stack stack_1 Integer 
L124:   istore 5 
L126:   iload 5 
L128:   ifeq L135 
L131:   iconst_1 
L132:   invokestatic Method com/fs/starfarer/D/M new (Z)V 

        .stack append Integer 
L135:   aload_0 
L136:   iload 4 
L138:   invokestatic Method com/fs/starfarer/campaign/String 'super' (Lcom/fs/starfarer/campaign/CampaignState;Z)V 
L141:   aload_0 
L142:   iload 4 
L144:   invokestatic Method com/fs/starfarer/campaign/ooOO o00000 (Lcom/fs/starfarer/campaign/CampaignState;Z)V 
L147:   iload 5 
L149:   ifeq L156 
L152:   iconst_0 
L153:   invokestatic Method com/fs/starfarer/D/M new (Z)V 

        .stack chop 3 
L156:   ldc_w 'enableMemoryLeakChecking' 
L159:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings class (Ljava/lang/String;)Z 
L162:   ifeq L529 
L165:   ldc_w 'enableMemoryLeakCheckingDevModeOnly' 
L168:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings class (Ljava/lang/String;)Z 
L171:   ifeq L180 
L174:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'OÓ0000' ()Z 
L177:   ifeq L529 

        .stack same 
L180:   aload_0 
L181:   getfield Field com/fs/starfarer/campaign/CampaignState leakChecker Lcom/fs/starfarer/api/util/IntervalUtil; 
L184:   fload_1 
L185:   invokevirtual Method com/fs/starfarer/api/util/IntervalUtil advance (F)V 
L188:   aload_0 
L189:   getfield Field com/fs/starfarer/campaign/CampaignState leakChecker Lcom/fs/starfarer/api/util/IntervalUtil; 
L192:   invokevirtual Method com/fs/starfarer/api/util/IntervalUtil intervalElapsed ()Z 
L195:   ifeq L411 
L198:   aload_0 
L199:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L202:   ifnull L411 
L205:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine getAllInstances ()Ljava/util/WeakHashMap; 
L208:   invokevirtual Method java/util/WeakHashMap size ()I 
L211:   istore_3 
L212:   iload_3 
L213:   iconst_1 
L214:   if_icmpgt L224 
L217:   aload_0 
L218:   getfield Field com/fs/starfarer/campaign/CampaignState showWhenNumIsOne Z 
L221:   ifeq L318 

        .stack append Integer 
L224:   invokestatic Method com/fs/starfarer/api/Global getSettings ()Lcom/fs/starfarer/api/SettingsAPI; 
L227:   invokeinterface InterfaceMethod com/fs/starfarer/api/SettingsAPI isDevMode ()Z 1 
L232:   ifeq L318 
L235:   invokestatic Method com/fs/starfarer/api/util/Misc getNegativeHighlightColor ()Ljava/awt/Color; 
L238:   astore 4 
L240:   iload_3 
L241:   iconst_1 
L242:   if_icmpne L250 
L245:   invokestatic Method com/fs/starfarer/api/util/Misc getPositiveHighlightColor ()Ljava/awt/Color; 
L248:   astore 4 

        .stack append Object java/awt/Color 
L250:   invokestatic Method com/fs/starfarer/D/M o00000 ()Z 
L253:   ifeq L260 
L256:   iconst_0 
L257:   goto L261 

        .stack same 
L260:   iconst_1 

        .stack stack_1 Integer 
L261:   istore 5 
L263:   iload 5 
L265:   ifeq L272 
L268:   iconst_1 
L269:   invokestatic Method com/fs/starfarer/D/M new (Z)V 

        .stack append Integer 
L272:   aload_0 
L273:   new java/lang/StringBuilder 
L276:   dup 
L277:   ldc_w 'Copies of campaign data in memory: ' 
L280:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L283:   iload_3 
L284:   invokevirtual Method java/lang/StringBuilder append (I)Ljava/lang/StringBuilder; 
L287:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L290:   aload 4 
L292:   invokevirtual Method com/fs/starfarer/campaign/CampaignState addMessage (Ljava/lang/String;Ljava/awt/Color;)V 
L295:   iload 5 
L297:   ifeq L304 
L300:   iconst_0 
L301:   invokestatic Method com/fs/starfarer/D/M new (Z)V 

        .stack same 
L304:   aload_0 
L305:   iload_3 
L306:   iconst_1 
L307:   if_icmple L314 
L310:   iconst_1 
L311:   goto L315 

        .stack stack_1 Object com/fs/starfarer/campaign/CampaignState 
L314:   iconst_0 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Float Object com/fs/starfarer/util/A/new Integer Object java/awt/Color Integer 
            stack Object com/fs/starfarer/campaign/CampaignState Integer 
        .end stack 
L315:   putfield Field com/fs/starfarer/campaign/CampaignState showWhenNumIsOne Z 

        .stack chop 2 
L318:   aload_0 
L319:   getfield Field com/fs/starfarer/campaign/CampaignState calledGC Z 
L322:   ifne L411 
L325:   iload_3 
L326:   iconst_1 
L327:   if_icmple L377 
L330:   aload_0 
L331:   getfield Field com/fs/starfarer/campaign/CampaignState sinceGCCountdown F 
L334:   fconst_0 
L335:   fcmpg 
L336:   ifgt L411 
L339:   aload_0 
L340:   ldc +60.0f 
L342:   putfield Field com/fs/starfarer/campaign/CampaignState sinceGCCountdown F 
L345:   invokestatic Method com/fs/starfarer/api/Global getSettings ()Lcom/fs/starfarer/api/SettingsAPI; 
L348:   invokeinterface InterfaceMethod com/fs/starfarer/api/SettingsAPI isDevMode ()Z 1 
L353:   ifeq L366 
L356:   aload_0 
L357:   ldc_w 'Forcing garbage collection' 
L360:   invokestatic Method com/fs/starfarer/api/util/Misc getNegativeHighlightColor ()Ljava/awt/Color; 
L363:   invokevirtual Method com/fs/starfarer/campaign/CampaignState addMessage (Ljava/lang/String;Ljava/awt/Color;)V 

        .stack same 
L366:   invokestatic Method java/lang/System gc ()V 
L369:   aload_0 
L370:   iconst_1 
L371:   putfield Field com/fs/starfarer/campaign/CampaignState calledGC Z 
L374:   goto L411 

        .stack same 
L377:   aload_0 
L378:   getfield Field com/fs/starfarer/campaign/CampaignState showedWarningDialog Z 
L381:   ifeq L406 
L384:   aload_0 
L385:   getfield Field com/fs/starfarer/campaign/CampaignState showedNeverMindWarning Z 
L388:   ifne L406 
L391:   aload_0 
L392:   ldc_w 'The previous memory leak warning was a false alarm' 
L395:   invokestatic Method com/fs/starfarer/api/util/Misc getPositiveHighlightColor ()Ljava/awt/Color; 
L398:   invokevirtual Method com/fs/starfarer/campaign/CampaignState addMessage (Ljava/lang/String;Ljava/awt/Color;)V 
L401:   aload_0 
L402:   iconst_1 
L403:   putfield Field com/fs/starfarer/campaign/CampaignState showedNeverMindWarning Z 

        .stack same 
L406:   aload_0 
L407:   fconst_0 
L408:   putfield Field com/fs/starfarer/campaign/CampaignState sinceGCCountdown F 

        .stack chop 1 
L411:   aload_0 
L412:   getfield Field com/fs/starfarer/campaign/CampaignState sinceGCCountdown F 
L415:   fconst_0 
L416:   fcmpl 
L417:   ifle L529 
L420:   aload_0 
L421:   getfield Field com/fs/starfarer/campaign/CampaignState showedWarningDialog Z 
L424:   ifne L529 
L427:   aload_0 
L428:   dup 
L429:   getfield Field com/fs/starfarer/campaign/CampaignState sinceGCCountdown F 
L432:   fload_1 
L433:   fsub 
L434:   putfield Field com/fs/starfarer/campaign/CampaignState sinceGCCountdown F 
L437:   aload_0 
L438:   getfield Field com/fs/starfarer/campaign/CampaignState sinceGCCountdown F 
L441:   fconst_0 
L442:   fcmpg 
L443:   ifgt L529 
L446:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine getAllInstances ()Ljava/util/WeakHashMap; 
L449:   invokevirtual Method java/util/WeakHashMap size ()I 
L452:   istore_3 
L453:   iload_3 
L454:   iconst_1 
L455:   if_icmple L529 
L458:   aload_0 
L459:   getfield Field com/fs/starfarer/campaign/CampaignState calledInsteadOfShowingWarning Z 
L462:   ifne L489 
L465:   invokestatic Method java/lang/System gc ()V 
L468:   invokestatic Method java/lang/System gc ()V 
L471:   invokestatic Method java/lang/System gc ()V 
L474:   aload_0 
L475:   iconst_1 
L476:   putfield Field com/fs/starfarer/campaign/CampaignState calledInsteadOfShowingWarning Z 
L479:   aload_0 
L480:   ldc_w +120.0f 
L483:   putfield Field com/fs/starfarer/campaign/CampaignState sinceGCCountdown F 
L486:   goto L529 

        .stack append Integer 
L489:   aload_0 
L490:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L493:   iconst_1 
L494:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setPaused (Z)V 
L497:   aload_0 
L498:   new java/lang/StringBuilder 
L501:   dup 
L502:   ldc_w 'Memory leak detected!\n\nPlease use "Save Copy" to make a copy of your current save and restart the game application. Otherwise there is a risk of a crash when trying to save.\n\n(Copies of campaign data in memory: ' 
L505:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L508:   iload_3 
L509:   invokevirtual Method java/lang/StringBuilder append (I)Ljava/lang/StringBuilder; 
L512:   ldc_w ')' 
L515:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L518:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L521:   invokevirtual Method com/fs/starfarer/campaign/CampaignState showMessageDialog (Ljava/lang/String;)V 
L524:   aload_0 
L525:   iconst_1 
L526:   putfield Field com/fs/starfarer/campaign/CampaignState showedWarningDialog Z 

        .stack chop 1 
L529:   aload_0 
L530:   getfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L533:   ifnonnull L633 
L536:   invokestatic Method com/fs/starfarer/api/util/Misc getMusicPlayerPlugin ()Lcom/fs/starfarer/api/MusicPlayerPlugin; 
L539:   astore_3 
L540:   invokestatic Method com/fs/starfarer/D/return 'ÒO0000' ()Ljava/lang/Object; 
L543:   astore 4 
L545:   aload_3 
L546:   invokeinterface InterfaceMethod com/fs/starfarer/api/MusicPlayerPlugin getStateTokenForCampaignLocation ()Ljava/lang/Object; 1 
L551:   astore 5 
L553:   fconst_1 
L554:   fstore 6 
L556:   aload_3 
L557:   instanceof com/fs/starfarer/api/MusicPlayerPluginWithVolumeControl 
L560:   ifeq L606 
L563:   aload 4 
L565:   ifnull L606 
L568:   aload_3 
L569:   checkcast com/fs/starfarer/api/MusicPlayerPluginWithVolumeControl 
L572:   astore 7 
L574:   aload 7 
L576:   aload 4 
L578:   aconst_null 
L579:   invokeinterface InterfaceMethod com/fs/starfarer/api/MusicPlayerPluginWithVolumeControl getMusicSetVolumeForCampaignStateToken (Ljava/lang/Object;Ljava/lang/Object;)F 3 
L584:   fstore 6 
L586:   invokestatic Method com/fs/starfarer/D/return 'Ô00000' ()Lcom/fs/starfarer/D/D; 
L589:   instanceof com/fs/starfarer/D/oOoO 
L592:   ifeq L606 
L595:   invokestatic Method com/fs/starfarer/D/return 'Ô00000' ()Lcom/fs/starfarer/D/D; 
L598:   checkcast com/fs/starfarer/D/oOoO 
L601:   fload 6 
L603:   invokevirtual Method com/fs/starfarer/D/oOoO o00000 (F)V 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Float Object com/fs/starfarer/util/A/new Object com/fs/starfarer/api/MusicPlayerPlugin Object java/lang/Object Object java/lang/Object Float 
            stack 
        .end stack 
L606:   aload 4 
L608:   aload 5 
L610:   if_acmpeq L633 
L613:   aload 5 
L615:   invokestatic Method com/fs/starfarer/D/return 'Ô00000' (Ljava/lang/Object;)Z 
L618:   ifne L627 
L621:   aload 5 
L623:   aconst_null 
L624:   invokestatic Method com/fs/starfarer/D/return o00000 (Ljava/lang/Object;Ljava/lang/String;)V 

        .stack same 
L627:   aload 5 
L629:   aconst_null 
L630:   invokestatic Method com/fs/starfarer/D/return o00000 (Ljava/lang/Object;Ljava/lang/Object;)V 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Float Object com/fs/starfarer/util/A/new 
            stack 
        .end stack 
L633:   aload_0 
L634:   getfield Field com/fs/starfarer/campaign/CampaignState sharedFader Lcom/fs/starfarer/api/util/FaderUtil; 
L637:   fload_1 
L638:   invokevirtual Method com/fs/starfarer/api/util/FaderUtil advance (F)V 
L641:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'OÓ0000' ()Z 
L644:   ifeq L767 
        .catch java/lang/Exception from L647 to L755 using L758 
L647:   getstatic Field com/fs/starfarer/campaign/CampaignState rules Ljava/io/File; 
L650:   ifnonnull L675 
L653:   invokestatic Method com/fs/util/C 'Ó00000' ()Lcom/fs/util/C; 
L656:   ldc_w 'data/campaign/rules.csv' 
L659:   iconst_0 
L660:   invokevirtual Method com/fs/util/C o00000 (Ljava/lang/String;Z)Ljava/io/File; 
L663:   putstatic Field com/fs/starfarer/campaign/CampaignState rules Ljava/io/File; 
L666:   getstatic Field com/fs/starfarer/campaign/CampaignState rules Ljava/io/File; 
L669:   invokevirtual Method java/io/File lastModified ()J 
L672:   putstatic Field com/fs/starfarer/campaign/CampaignState lastModified J 

        .stack same 
L675:   getstatic Field com/fs/starfarer/campaign/CampaignState rules Ljava/io/File; 
L678:   invokevirtual Method java/io/File lastModified ()J 
L681:   lstore_3 
L682:   lload_3 
L683:   getstatic Field com/fs/starfarer/campaign/CampaignState lastModified J 
L686:   lcmp 
L687:   ifeq L698 
L690:   lload_3 
L691:   putstatic Field com/fs/starfarer/campaign/CampaignState lastModified J 
L694:   aconst_null 
L695:   invokestatic Method com/fs/starfarer/campaign/rules/Rules o00000 (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 

        .stack append Long 
L698:   getstatic Field com/fs/starfarer/campaign/CampaignState pings Ljava/io/File; 
L701:   ifnonnull L726 
L704:   invokestatic Method com/fs/util/C 'Ó00000' ()Lcom/fs/util/C; 
L707:   ldc_w 'data/campaign/pings.json' 
L710:   iconst_0 
L711:   invokevirtual Method com/fs/util/C o00000 (Ljava/lang/String;Z)Ljava/io/File; 
L714:   putstatic Field com/fs/starfarer/campaign/CampaignState pings Ljava/io/File; 
L717:   getstatic Field com/fs/starfarer/campaign/CampaignState pings Ljava/io/File; 
L720:   invokevirtual Method java/io/File lastModified ()J 
L723:   putstatic Field com/fs/starfarer/campaign/CampaignState lastModifiedPings J 

        .stack same 
L726:   getstatic Field com/fs/starfarer/campaign/CampaignState pings Ljava/io/File; 
L729:   invokevirtual Method java/io/File lastModified ()J 
L732:   lstore_3 
L733:   lload_3 
L734:   getstatic Field com/fs/starfarer/campaign/CampaignState lastModifiedPings J 
L737:   lcmp 
L738:   ifeq L767 
L741:   lload_3 
L742:   putstatic Field com/fs/starfarer/campaign/CampaignState lastModifiedPings J 
L745:   ldc_w Class com/fs/starfarer/api/loading/CampaignPingSpec 
L748:   invokestatic Method com/fs/starfarer/loading/SpecStore 'Ó00000' (Ljava/lang/Class;)V 
L751:   aconst_null 
L752:   invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
L755:   goto L767 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Float Object com/fs/starfarer/util/A/new 
            stack Object java/lang/Exception 
        .end stack 
L758:   astore_3 
L759:   getstatic Field com/fs/starfarer/campaign/CampaignState log Lorg/apache/log4j/Logger; 
L762:   aload_3 
L763:   aload_3 
L764:   invokevirtual Method org/apache/log4j/Logger warn (Ljava/lang/Object;Ljava/lang/Throwable;)V 

        .stack same 
L767:   aload_0 
L768:   fload_1 
L769:   invokevirtual Method com/fs/starfarer/campaign/CampaignState addMessages (F)V 
L772:   aload_0 
L773:   getfield Field com/fs/starfarer/campaign/CampaignState screenPanel Lcom/fs/starfarer/ui/interfacenew; 
L776:   fload_1 
L777:   invokevirtual Method com/fs/starfarer/ui/interfacenew advance (F)V 
L780:   aload_0 
L781:   getfield Field com/fs/starfarer/campaign/CampaignState codexOverlay Lcom/fs/starfarer/ui/interfacenew; 
L784:   fload_1 
L785:   invokevirtual Method com/fs/starfarer/ui/interfacenew advance (F)V 
L788:   aload_0 
L789:   getfield Field com/fs/starfarer/campaign/CampaignState zoomTracker Lcom/fs/starfarer/util/A; 
L792:   fload_1 
L793:   invokevirtual Method com/fs/starfarer/util/A o00000 (F)V 
L796:   aload_0 
L797:   getfield Field com/fs/starfarer/campaign/CampaignState viewOffset Lcom/fs/starfarer/campaign/int; 
L800:   fload_1 
L801:   invokevirtual Method com/fs/starfarer/campaign/int advance (F)V 
L804:   aload_0 
L805:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L808:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getUIData ()Lcom/fs/starfarer/campaign/CampaignUIPersistentData; 
L811:   aload_0 
L812:   getfield Field com/fs/starfarer/campaign/CampaignState zoomTracker Lcom/fs/starfarer/util/A; 
L815:   invokevirtual Method com/fs/starfarer/util/A class ()F 
L818:   invokevirtual Method com/fs/starfarer/campaign/CampaignUIPersistentData setCampaignZoom (F)V 
L821:   aload_0 
L822:   getfield Field com/fs/starfarer/campaign/CampaignState core Lcom/fs/starfarer/ui/newui/L; 
L825:   invokevirtual Method com/fs/starfarer/ui/newui/L getLogistics ()Lcom/fs/starfarer/coreui/Objectnew; 
L828:   invokevirtual Method com/fs/starfarer/coreui/Objectnew getFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L831:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L834:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L837:   if_acmpeq L961 
L840:   aload_0 
L841:   getfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L844:   ifnonnull L961 
L847:   aload_0 
L848:   getfield Field com/fs/starfarer/campaign/CampaignState screenPanel Lcom/fs/starfarer/ui/interfacenew; 
L851:   invokevirtual Method com/fs/starfarer/ui/interfacenew getChildrenCopy ()Ljava/util/List; 
L854:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L859:   astore 4 
L861:   goto L905 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Float Object com/fs/starfarer/util/A/new Top Object java/util/Iterator 
            stack 
        .end stack 
L864:   aload 4 
L866:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L871:   checkcast com/fs/starfarer/ui/c 
L874:   astore_3 
L875:   aload_3 
L876:   aload_0 
L877:   getfield Field com/fs/starfarer/campaign/CampaignState messageDisplay Lcom/fs/starfarer/campaign/ui/O00O; 
L880:   if_acmpne L886 
L883:   goto L905 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Float Object com/fs/starfarer/util/A/new Object com/fs/starfarer/ui/c Object java/util/Iterator 
            stack 
        .end stack 
L886:   aload_3 
L887:   aload_0 
L888:   getfield Field com/fs/starfarer/campaign/CampaignState messageListV3 Lcom/fs/starfarer/campaign/comms/super; 
L891:   if_acmpne L897 
L894:   goto L905 

        .stack same 
L897:   aload_0 
L898:   getfield Field com/fs/starfarer/campaign/CampaignState screenPanel Lcom/fs/starfarer/ui/interfacenew; 
L901:   aload_3 
L902:   invokevirtual Method com/fs/starfarer/ui/interfacenew remove (Lcom/fs/starfarer/ui/c;)V 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Float Object com/fs/starfarer/util/A/new Top Object java/util/Iterator 
            stack 
        .end stack 
L905:   aload 4 
L907:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L912:   ifne L864 
L915:   aload_0 
L916:   new com/fs/starfarer/ui/newui/L 
L919:   dup 
L920:   aload_0 
L921:   aconst_null 
L922:   iconst_0 
L923:   aload_0 
L924:   getfield Field com/fs/starfarer/campaign/CampaignState screenPanel Lcom/fs/starfarer/ui/interfacenew; 
L927:   invokespecial Method com/fs/starfarer/ui/newui/L <init> (Lcom/fs/starfarer/coreui/OO0o;Lcom/fs/starfarer/api/campaign/SectorEntityToken;ZLcom/fs/starfarer/ui/interfacenew;)V 
L930:   putfield Field com/fs/starfarer/campaign/CampaignState core Lcom/fs/starfarer/ui/newui/L; 
L933:   aload_0 
L934:   getfield Field com/fs/starfarer/campaign/CampaignState screenPanel Lcom/fs/starfarer/ui/interfacenew; 
L937:   aload_0 
L938:   getfield Field com/fs/starfarer/campaign/CampaignState core Lcom/fs/starfarer/ui/newui/L; 
L941:   invokevirtual Method com/fs/starfarer/ui/interfacenew add (Lcom/fs/starfarer/ui/c;)Lcom/fs/starfarer/ui/OO0O; 
L944:   fconst_0 
L945:   fconst_0 
L946:   invokevirtual Method com/fs/starfarer/ui/OO0O inBL (FF)Lcom/fs/starfarer/ui/OO0O; 
L949:   pop 
L950:   aload_0 
L951:   getfield Field com/fs/starfarer/campaign/CampaignState screenPanel Lcom/fs/starfarer/ui/interfacenew; 
L954:   aload_0 
L955:   getfield Field com/fs/starfarer/campaign/CampaignState belowTooltips Lcom/fs/starfarer/ui/interfacenew; 
L958:   invokevirtual Method com/fs/starfarer/ui/interfacenew bringToTop (Lcom/fs/starfarer/ui/c;)V 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Float Object com/fs/starfarer/util/A/new 
            stack 
        .end stack 
L961:   fload_1 
L962:   fconst_0 
L963:   fcmpl 
L964:   ifeq L1549 
L967:   aload_0 
L968:   getfield Field com/fs/starfarer/campaign/CampaignState noise Lcom/fs/starfarer/class/G; 
L971:   fload_1 
L972:   invokevirtual Method com/fs/starfarer/class/G 'Ò00000' (F)V 
L975:   ldc_w 'Animation advanceAll()' 
L978:   invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L981:   ldc_w 'CENonPauseanim' 
L984:   invokestatic Method com/fs/graphics/anim/AnimationManager getInstance (Ljava/lang/String;)Lcom/fs/graphics/anim/AnimationManager; 
L987:   fload_1 
L988:   invokevirtual Method com/fs/graphics/anim/AnimationManager advanceAll (F)V 
L991:   ldc_w 'CEanim' 
L994:   invokestatic Method com/fs/graphics/anim/AnimationManager getInstance (Ljava/lang/String;)Lcom/fs/graphics/anim/AnimationManager; 
L997:   fload_1 
L998:   invokevirtual Method com/fs/graphics/anim/AnimationManager advanceAll (F)V 
L1001:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L1004:  invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L1007:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getViewport ()Lcom/fs/starfarer/combat/CombatViewport; 
L1010:  astore_3 
L1011:  aload_3 
L1012:  invokevirtual Method com/fs/starfarer/combat/CombatViewport getCenter ()Lorg/lwjgl/util/vector/Vector2f; 
L1015:  astore 4 
L1017:  new org/lwjgl/util/vector/Vector2f 
L1020:  dup 
L1021:  invokespecial Method org/lwjgl/util/vector/Vector2f <init> ()V 
L1024:  astore 5 
L1026:  invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L1029:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getUIData ()Lcom/fs/starfarer/campaign/CampaignUIPersistentData; 
L1032:  invokevirtual Method com/fs/starfarer/campaign/CampaignUIPersistentData getMusicSuppressor ()Lcom/fs/starfarer/campaign/MusicSuppressor; 
L1035:  invokevirtual Method com/fs/starfarer/campaign/MusicSuppressor getLevel ()F 
L1038:  fstore 6 
L1040:  invokestatic Method com/fs/starfarer/api/util/Misc getAbyssalDepthOfPlayer ()F 
L1043:  fstore 7 
L1045:  fconst_0 
L1046:  fstore 7 
L1048:  fload 6 
L1050:  fconst_0 
L1051:  fcmpl 
L1052:  ifgt L1062 
L1055:  fload 7 
L1057:  fconst_0 
L1058:  fcmpl 
L1059:  ifle L1156 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Float Object com/fs/starfarer/util/A/new Object com/fs/starfarer/combat/CombatViewport Object org/lwjgl/util/vector/Vector2f Object org/lwjgl/util/vector/Vector2f Float Float 
            stack 
        .end stack 
L1062:  invokestatic Method com/fs/starfarer/api/Global getSettings ()Lcom/fs/starfarer/api/SettingsAPI; 
L1065:  ldc_w 'campaignMusicFilterGain' 
L1068:  invokeinterface InterfaceMethod com/fs/starfarer/api/SettingsAPI getFloat (Ljava/lang/String;)F 2 
L1073:  fstore 8 
L1075:  invokestatic Method com/fs/starfarer/api/Global getSettings ()Lcom/fs/starfarer/api/SettingsAPI; 
L1078:  ldc_w 'campaignMusicFilterGainHF' 
L1081:  invokeinterface InterfaceMethod com/fs/starfarer/api/SettingsAPI getFloat (Ljava/lang/String;)F 2 
L1086:  fstore 9 
L1088:  invokestatic Method com/fs/starfarer/api/Global getSettings ()Lcom/fs/starfarer/api/SettingsAPI; 
L1091:  ldc_w 'campaignMusicVolumeMult' 
L1094:  invokeinterface InterfaceMethod com/fs/starfarer/api/SettingsAPI getFloat (Ljava/lang/String;)F 2 
L1099:  fstore 10 
L1101:  fconst_1 
L1102:  fconst_1 
L1103:  fload 8 
L1105:  fsub 
L1106:  fload 6 
L1108:  fmul 
L1109:  fsub 
L1110:  fconst_1 
L1111:  fconst_1 
L1112:  fload 9 
L1114:  fsub 
L1115:  fload 6 
L1117:  fmul 
L1118:  fsub 
L1119:  invokestatic Method com/fs/starfarer/D/I 'Õ00000' (FF)V 
L1122:  fconst_1 
L1123:  fconst_1 
L1124:  fload 10 
L1126:  fsub 
L1127:  fload 6 
L1129:  fmul 
L1130:  fsub 
L1131:  fstore 11 
L1133:  fload 11 
L1135:  fconst_1 
L1136:  getstatic Field com/fs/starfarer/api/impl/campaign/terrain/HyperspaceTerrainPlugin ABYSS_MUSIC_SUPPRESSION F 
L1139:  fload 7 
L1141:  fmul 
L1142:  fsub 
L1143:  invokestatic Method java/lang/Math min (FF)F 
L1146:  fstore 11 
L1148:  invokestatic Method sound/H 'Ò00000' ()Lsound/H; 
L1151:  fload 11 
L1153:  invokevirtual Method sound/H o00000 (F)V 

        .stack same_extended 
L1156:  ldc_w 'SoundPlayer.playAll()' 
L1159:  invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L1162:  fload_1 
L1163:  aload 4 
L1165:  getfield Field org/lwjgl/util/vector/Vector2f x F 
L1168:  aload 4 
L1170:  getfield Field org/lwjgl/util/vector/Vector2f y F 
L1173:  aload 5 
L1175:  getfield Field org/lwjgl/util/vector/Vector2f x F 
L1178:  aload 5 
L1180:  getfield Field org/lwjgl/util/vector/Vector2f y F 
L1183:  sipush 2500 
L1186:  invokestatic Method com/fs/starfarer/D/M o00000 (FFFFFI)V 
L1189:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L1192:  aload_0 
L1193:  getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L1196:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine isPaused ()Z 
L1199:  ifeq L1230 
L1202:  aload_0 
L1203:  getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L1206:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L1209:  invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet isValidPlayerFleet ()Z 
L1212:  ifne L1230 
L1215:  aload_0 
L1216:  getfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L1219:  ifnonnull L1230 
L1222:  aload_0 
L1223:  getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L1226:  iconst_0 
L1227:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setPaused (Z)V 

        .stack same_extended 
L1230:  aload_0 
L1231:  getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L1234:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine isPaused ()Z 
L1237:  ifne L1264 
L1240:  aload_0 
L1241:  getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L1244:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L1247:  invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet isValidPlayerFleet ()Z 
L1250:  ifne L1264 
L1253:  aload_0 
L1254:  getfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L1257:  ifnonnull L1264 
L1260:  aload_0 
L1261:  invokevirtual Method com/fs/starfarer/campaign/CampaignState showShuttleDialog ()V 

        .stack same 
L1264:  iconst_1 
L1265:  istore 8 
L1267:  aload_0 
L1268:  getfield Field com/fs/starfarer/campaign/CampaignState buttons Lcom/fs/starfarer/campaign/OooO; 
L1271:  invokevirtual Method com/fs/starfarer/campaign/OooO getPosition ()Lcom/fs/starfarer/ui/OO0O; 
L1274:  invokevirtual Method com/fs/starfarer/ui/OO0O containsMouse ()Z 
L1277:  pop 
L1278:  iconst_0 
L1279:  invokestatic Method org/lwjgl/input/Mouse isButtonDown (I)Z 
L1282:  ifne L1292 
L1285:  iconst_1 
L1286:  invokestatic Method org/lwjgl/input/Mouse isButtonDown (I)Z 
L1289:  ifeq L1295 

        .stack append Integer 
L1292:  iconst_0 
L1293:  istore 8 

        .stack same 
L1295:  aload_0 
L1296:  invokevirtual Method com/fs/starfarer/campaign/CampaignState getNextState ()Ljava/lang/String; 
L1299:  ifnull L1305 
L1302:  iconst_0 
L1303:  istore 8 

        .stack same 
L1305:  iconst_1 
L1306:  istore 9 
L1308:  aload_0 
L1309:  getfield Field com/fs/starfarer/campaign/CampaignState fastForward Z 
L1312:  ifeq L1326 
L1315:  ldc_w 'campaignSpeedupMult' 
L1318:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'ö00000' (Ljava/lang/String;)F 
L1321:  invokestatic Method java/lang/Math round (F)I 
L1324:  istore 9 

        .stack append Integer 
L1326:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'OÓ0000' ()Z 
L1329:  ifeq L1368 
L1332:  bipush 37 
L1334:  invokestatic Method org/lwjgl/input/Keyboard isKeyDown (I)Z 
L1337:  ifeq L1368 
L1340:  sipush 184 
L1343:  invokestatic Method org/lwjgl/input/Keyboard isKeyDown (I)Z 
L1346:  ifeq L1368 
L1349:  bipush 10 
L1351:  istore 9 
L1353:  aload_0 
L1354:  getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L1357:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L1360:  ldc +0.5f 
L1362:  invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet setNoEngaging (F)V 
L1365:  goto L1407 

        .stack same 
L1368:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'OÓ0000' ()Z 
L1371:  ifeq L1407 
L1374:  bipush 36 
L1376:  invokestatic Method org/lwjgl/input/Keyboard isKeyDown (I)Z 
L1379:  ifeq L1407 
L1382:  sipush 184 
L1385:  invokestatic Method org/lwjgl/input/Keyboard isKeyDown (I)Z 
L1388:  ifeq L1407 
L1391:  bipush 100 
L1393:  istore 9 
L1395:  aload_0 
L1396:  getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L1399:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L1402:  ldc +5.0f 
L1404:  invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet setNoEngaging (F)V 

        .stack same 
L1407:  aload_0 
L1408:  invokevirtual Method com/fs/starfarer/campaign/CampaignState isTransitioningToNextState ()Z 
L1411:  ifeq L1422 
L1414:  aload_0 
L1415:  getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L1418:  iconst_1 
L1419:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setPaused (Z)V 

        .stack same 
L1422:  aload_0 
L1423:  getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L1426:  iconst_0 
L1427:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setFastForwardIteration (Z)V 
L1430:  invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L1433:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L1436:  astore 10 
L1438:  aload 10 
L1440:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getGoSlowOneFrame ()Z 1 
L1445:  istore 11 
L1447:  aload 10 
L1449:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getGoSlowStop ()Z 1 
L1454:  istore 12 
L1456:  iconst_0 
L1457:  istore 13 
L1459:  goto L1534 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Float Object com/fs/starfarer/util/A/new Object com/fs/starfarer/combat/CombatViewport Object org/lwjgl/util/vector/Vector2f Object org/lwjgl/util/vector/Vector2f Float Float Integer Integer Object com/fs/starfarer/api/campaign/CampaignFleetAPI Integer Integer Integer 
            stack 
        .end stack 
L1462:  fconst_1 
L1463:  fstore 14 
L1465:  iload 9 
L1467:  iconst_1 
L1468:  if_icmple L1474 
L1471:  fconst_1 
L1472:  fstore 14 

        .stack append Float 
L1474:  aload_0 
L1475:  getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L1478:  fload_1 
L1479:  fload 14 
L1481:  fmul 
L1482:  iload 8 
L1484:  ifeq L1496 
L1487:  iload 13 
L1489:  ifne L1496 
L1492:  aload_2 
L1493:  goto L1497 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Float Object com/fs/starfarer/util/A/new Object com/fs/starfarer/combat/CombatViewport Object org/lwjgl/util/vector/Vector2f Object org/lwjgl/util/vector/Vector2f Float Float Integer Integer Object com/fs/starfarer/api/campaign/CampaignFleetAPI Integer Integer Integer Float 
            stack Object com/fs/starfarer/campaign/CampaignEngine Float 
        .end stack 
L1496:  aconst_null 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Float Object com/fs/starfarer/util/A/new Object com/fs/starfarer/combat/CombatViewport Object org/lwjgl/util/vector/Vector2f Object org/lwjgl/util/vector/Vector2f Float Float Integer Integer Object com/fs/starfarer/api/campaign/CampaignFleetAPI Integer Integer Integer Float 
            stack Object com/fs/starfarer/campaign/CampaignEngine Float Object com/fs/starfarer/util/A/new 
        .end stack 
L1497:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine advance (FLcom/fs/starfarer/util/A/new;)V 
L1500:  aload_0 
L1501:  getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L1504:  iconst_1 
L1505:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setFastForwardIteration (Z)V 
L1508:  iload 11 
L1510:  ifeq L1531 
L1513:  iload 13 
L1515:  iload 9 
L1517:  iconst_1 
L1518:  isub 
L1519:  if_icmpge L1531 
L1522:  aload 10 
L1524:  iload 12 
L1526:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI goSlowOneFrame (Z)V 2 

        .stack chop 1 
L1531:  iinc 13 1 

        .stack same 
L1534:  iload 13 
L1536:  iload 9 
L1538:  if_icmplt L1462 
L1541:  aload_0 
L1542:  getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L1545:  iconst_0 
L1546:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setFastForwardIteration (Z)V 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Float Object com/fs/starfarer/util/A/new 
            stack 
        .end stack 
L1549:  invokestatic Method com/fs/starfarer/combat/CombatEngine hasInstance ()Z 
L1552:  ifeq L1561 
L1555:  invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L1558:  invokevirtual Method com/fs/starfarer/combat/CombatEngine cleanUpShipsInHolo ()V 

        .stack same 
L1561:  aload_0 
L1562:  fload_1 
L1563:  invokevirtual Method com/fs/starfarer/campaign/CampaignState advanceAutosave (F)V 
L1566:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L1569:  return 
L1570:  
    .end code 
.end method 

.method public updateTrackedByPatrolMessage : ()V 
    .code stack 5 locals 7 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L4:     invokevirtual Method com/fs/starfarer/campaign/CampaignEngine isPaused ()Z 
L7:     ifeq L11 
L10:    return 

        .stack same 
L11:    invokestatic Method com/fs/starfarer/api/Global getSector ()Lcom/fs/starfarer/api/campaign/SectorAPI; 
L14:    invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorAPI getPlayerFleet ()Lcom/fs/starfarer/api/campaign/CampaignFleetAPI; 1 
L19:    astore_1 
L20:    aconst_null 
L21:    astore_2 
L22:    ldc_w +3.4028234663852886e+38f 
L25:    fstore_3 
L26:    aload_1 
L27:    invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getContainingLocation ()Lcom/fs/starfarer/api/campaign/LocationAPI; 1 
L32:    invokestatic Method com/fs/starfarer/api/util/Misc getMarketsInLocation (Lcom/fs/starfarer/api/campaign/LocationAPI;)Ljava/util/List; 
L35:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L40:    astore 5 
L42:    goto L83 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Object com/fs/starfarer/api/campaign/CampaignFleetAPI Object com/fs/starfarer/api/campaign/econ/MarketAPI Float Top Object java/util/Iterator 
            stack 
        .end stack 
L45:    aload 5 
L47:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L52:    checkcast com/fs/starfarer/api/campaign/econ/MarketAPI 
L55:    astore 4 
L57:    aload 4 
L59:    invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/econ/MarketAPI getPrimaryEntity ()Lcom/fs/starfarer/api/campaign/SectorEntityToken; 1 
L64:    aload_1 
L65:    invokestatic Method com/fs/starfarer/api/util/Misc getDistance (Lcom/fs/starfarer/api/campaign/SectorEntityToken;Lcom/fs/starfarer/api/campaign/SectorEntityToken;)F 
L68:    fstore 6 
L70:    fload 6 
L72:    fload_3 
L73:    fcmpg 
L74:    ifge L83 
L77:    fload 6 
L79:    fstore_3 
L80:    aload 4 
L82:    astore_2 

        .stack same 
L83:    aload 5 
L85:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L90:    ifne L45 
L93:    aload_2 
L94:    ifnull L224 
L97:    fload_3 
L98:    ldc_w +3000.0f 
L101:   fcmpg 
L102:   ifge L224 
L105:   aload_2 
L106:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/econ/MarketAPI getFactionId ()Ljava/lang/String; 1 
L111:   invokestatic Method com/fs/starfarer/api/impl/campaign/rulecmd/IsSoughtByPatrols areFactionPatrolsSeekingPlayer (Ljava/lang/String;)Z 
L114:   ifeq L209 
L117:   aload_0 
L118:   new java/lang/StringBuilder 
L121:   dup 
L122:   ldc_w 'In ' 
L125:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L128:   aload_2 
L129:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/econ/MarketAPI getName ()Ljava/lang/String; 1 
L134:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L137:   ldc_w ' local volume, being tracked by nearby ' 
L140:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L143:   aload_2 
L144:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/econ/MarketAPI getFaction ()Lcom/fs/starfarer/api/campaign/FactionAPI; 1 
L149:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/FactionAPI getEntityNamePrefix ()Ljava/lang/String; 1 
L154:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L157:   ldc_w ' patrol' 
L160:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L163:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L166:   putfield Field com/fs/starfarer/campaign/CampaignState stickyTrackedByPatrol Ljava/lang/String; 
L169:   aload_0 
L170:   getfield Field com/fs/starfarer/campaign/CampaignState messageDisplay Lcom/fs/starfarer/campaign/ui/O00O; 
L173:   aload_0 
L174:   getfield Field com/fs/starfarer/campaign/CampaignState stickyTrackedByPatrol Ljava/lang/String; 
L177:   invokevirtual Method com/fs/starfarer/campaign/ui/O00O isSticky (Ljava/lang/String;)Z 
L180:   ifne L236 
L183:   aload_0 
L184:   getfield Field com/fs/starfarer/campaign/CampaignState messageDisplay Lcom/fs/starfarer/campaign/ui/O00O; 
L187:   invokevirtual Method com/fs/starfarer/campaign/ui/O00O clearSticky ()V 
L190:   aload_0 
L191:   getfield Field com/fs/starfarer/campaign/CampaignState messageDisplay Lcom/fs/starfarer/campaign/ui/O00O; 
L194:   aload_0 
L195:   getfield Field com/fs/starfarer/campaign/CampaignState stickyTrackedByPatrol Ljava/lang/String; 
L198:   invokestatic Method com/fs/starfarer/api/util/Misc getNegativeHighlightColor ()Ljava/awt/Color; 
L201:   aconst_null 
L202:   aconst_null 
L203:   invokevirtual Method com/fs/starfarer/campaign/ui/O00O setSticky (Ljava/lang/String;Ljava/awt/Color;Ljava/lang/String;Ljava/awt/Color;)V 
L206:   goto L236 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Object com/fs/starfarer/api/campaign/CampaignFleetAPI Object com/fs/starfarer/api/campaign/econ/MarketAPI Float 
            stack 
        .end stack 
L209:   aload_0 
L210:   getfield Field com/fs/starfarer/campaign/CampaignState messageDisplay Lcom/fs/starfarer/campaign/ui/O00O; 
L213:   invokevirtual Method com/fs/starfarer/campaign/ui/O00O clearSticky ()V 
L216:   aload_0 
L217:   aconst_null 
L218:   putfield Field com/fs/starfarer/campaign/CampaignState stickyTrackedByPatrol Ljava/lang/String; 
L221:   goto L236 

        .stack same 
L224:   aload_0 
L225:   getfield Field com/fs/starfarer/campaign/CampaignState messageDisplay Lcom/fs/starfarer/campaign/ui/O00O; 
L228:   invokevirtual Method com/fs/starfarer/campaign/ui/O00O clearSticky ()V 
L231:   aload_0 
L232:   aconst_null 
L233:   putfield Field com/fs/starfarer/campaign/CampaignState stickyTrackedByPatrol Ljava/lang/String; 

        .stack same 
L236:   return 
L237:   
    .end code 
.end method 

.method public suppressMusic : (F)V 
    .code stack 2 locals 2 
L0:     invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L3:     invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getUIData ()Lcom/fs/starfarer/campaign/CampaignUIPersistentData; 
L6:     invokevirtual Method com/fs/starfarer/campaign/CampaignUIPersistentData getMusicSuppressor ()Lcom/fs/starfarer/campaign/MusicSuppressor; 
L9:     fload_1 
L10:    invokevirtual Method com/fs/starfarer/campaign/MusicSuppressor suppress (F)V 
L13:    return 
L14:    
    .end code 
.end method 

.method protected processInput : (Lcom/fs/starfarer/util/A/new;F)V 
    .code stack 13 locals 19 
L0:     new java/util/ArrayList 
L3:     dup 
L4:     invokespecial Method java/util/ArrayList <init> ()V 
L7:     astore_3 
L8:     aload_3 
L9:     aload_1 
L10:    invokeinterface InterfaceMethod java/util/List addAll (Ljava/util/Collection;)Z 2 
L15:    pop 
L16:    aload_3 
L17:    invokestatic Method com/fs/starfarer/api/campaign/listeners/ListenerUtil processCampaignInputPreCore (Ljava/util/List;)V 
L20:    aload_1 
L21:    invokevirtual Method com/fs/starfarer/util/A/new 'super' ()V 
L24:    aload_0 
L25:    getfield Field com/fs/starfarer/campaign/CampaignState showingCodex Z 
L28:    ifeq L89 
L31:    aload_0 
L32:    getfield Field com/fs/starfarer/campaign/CampaignState codexOverlay Lcom/fs/starfarer/ui/interfacenew; 
L35:    aload_1 
L36:    invokevirtual Method com/fs/starfarer/ui/interfacenew processInput (Lcom/fs/starfarer/util/A/new;)V 
L39:    new com/fs/starfarer/util/A/new 
L42:    dup 
L43:    invokespecial Method com/fs/starfarer/util/A/new <init> ()V 
L46:    astore 4 
L48:    invokestatic Method com/fs/starfarer/util/A/A 'Ò00000' ()Lcom/fs/starfarer/util/A/C; 
L51:    astore 5 
L53:    aload 5 
L55:    ldc_w 1000000 
L58:    invokevirtual Method com/fs/starfarer/util/A/C setX (I)V 
L61:    aload 5 
L63:    ldc_w 1000000 
L66:    invokevirtual Method com/fs/starfarer/util/A/C setY (I)V 
L69:    aload 4 
L71:    aload 5 
L73:    invokevirtual Method com/fs/starfarer/util/A/new add (Ljava/lang/Object;)Z 
L76:    pop 
L77:    aload_0 
L78:    getfield Field com/fs/starfarer/campaign/CampaignState screenPanel Lcom/fs/starfarer/ui/interfacenew; 
L81:    aload 4 
L83:    invokevirtual Method com/fs/starfarer/ui/interfacenew processInput (Lcom/fs/starfarer/util/A/new;)V 
L86:    goto L111 

        .stack append Object java/util/List 
L89:    aload_0 
L90:    getfield Field com/fs/starfarer/campaign/CampaignState hideUI Z 
L93:    ifeq L103 
L96:    aload_0 
L97:    getfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L100:   ifnull L111 

        .stack same 
L103:   aload_0 
L104:   getfield Field com/fs/starfarer/campaign/CampaignState screenPanel Lcom/fs/starfarer/ui/interfacenew; 
L107:   aload_1 
L108:   invokevirtual Method com/fs/starfarer/ui/interfacenew processInput (Lcom/fs/starfarer/util/A/new;)V 

        .stack same 
L111:   aload_0 
L112:   getfield Field com/fs/starfarer/campaign/CampaignState zoomTracker Lcom/fs/starfarer/util/A; 
L115:   aload_1 
L116:   invokevirtual Method com/fs/starfarer/util/A o00000 (Lcom/fs/starfarer/util/A/new;)V 
L119:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings Oo0000 ()Z 
L122:   ifne L164 
L125:   aload_0 
L126:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L129:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine isPaused ()Z 
L132:   ifne L159 
L135:   aload_0 
L136:   getfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L139:   ifnonnull L159 
L142:   getstatic Field [c1295] 'Oô0000' [u882] 
L145:   invokestatic Method [c1301] 'Ø00000' [u898] 
L148:   ifeq L159 
L151:   aload_0 
L152:   iconst_1 
L153:   putfield Field com/fs/starfarer/campaign/CampaignState fastForward Z 
L156:   goto L164 

        .stack same 
L159:   aload_0 
L160:   iconst_0 
L161:   putfield Field com/fs/starfarer/campaign/CampaignState fastForward Z 

        .stack same 
L164:   aload_0 
L165:   invokevirtual Method com/fs/starfarer/campaign/CampaignState isShowingDialog ()Z 
L168:   ifne L261 
L171:   aload_0 
L172:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L175:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine isPaused ()Z 
L178:   ifeq L214 
L181:   aload_0 
L182:   getfield Field com/fs/starfarer/campaign/CampaignState messageDisplay Lcom/fs/starfarer/campaign/ui/O00O; 
L185:   ldc_w 'Game paused' 
L188:   invokevirtual Method com/fs/starfarer/campaign/ui/O00O isSticky (Ljava/lang/String;)Z 
L191:   ifne L268 
L194:   aload_0 
L195:   getfield Field com/fs/starfarer/campaign/CampaignState messageDisplay Lcom/fs/starfarer/campaign/ui/O00O; 
L198:   invokevirtual Method com/fs/starfarer/campaign/ui/O00O clearSticky ()V 
L201:   aload_0 
L202:   getfield Field com/fs/starfarer/campaign/CampaignState messageDisplay Lcom/fs/starfarer/campaign/ui/O00O; 
L205:   ldc_w 'Game paused' 
L208:   invokevirtual Method com/fs/starfarer/campaign/ui/O00O setSticky (Ljava/lang/String;)V 
L211:   goto L268 

        .stack same 
L214:   aload_0 
L215:   getfield Field com/fs/starfarer/campaign/CampaignState fastForward Z 
L218:   ifeq L254 
L221:   aload_0 
L222:   getfield Field com/fs/starfarer/campaign/CampaignState messageDisplay Lcom/fs/starfarer/campaign/ui/O00O; 
L225:   ldc_w 'Speeding up time' 
L228:   invokevirtual Method com/fs/starfarer/campaign/ui/O00O isSticky (Ljava/lang/String;)Z 
L231:   ifne L268 
L234:   aload_0 
L235:   getfield Field com/fs/starfarer/campaign/CampaignState messageDisplay Lcom/fs/starfarer/campaign/ui/O00O; 
L238:   invokevirtual Method com/fs/starfarer/campaign/ui/O00O clearSticky ()V 
L241:   aload_0 
L242:   getfield Field com/fs/starfarer/campaign/CampaignState messageDisplay Lcom/fs/starfarer/campaign/ui/O00O; 
L245:   ldc_w 'Speeding up time' 
L248:   invokevirtual Method com/fs/starfarer/campaign/ui/O00O setSticky (Ljava/lang/String;)V 
L251:   goto L268 

        .stack same 
L254:   aload_0 
L255:   invokevirtual Method com/fs/starfarer/campaign/CampaignState updateTrackedByPatrolMessage ()V 
L258:   goto L268 

        .stack same 
L261:   aload_0 
L262:   getfield Field com/fs/starfarer/campaign/CampaignState messageDisplay Lcom/fs/starfarer/campaign/ui/O00O; 
L265:   invokevirtual Method com/fs/starfarer/campaign/ui/O00O clearSticky ()V 

        .stack same 
L268:   aload_1 
L269:   invokevirtual Method com/fs/starfarer/util/A/new iterator ()Ljava/util/Iterator; 
L272:   astore 5 
L274:   goto L4307 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Object com/fs/starfarer/util/A/new Float Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L277:   aload 5 
L279:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L284:   checkcast com/fs/starfarer/util/A/C 
L287:   astore 4 
L289:   aload 4 
L291:   invokevirtual Method com/fs/starfarer/util/A/C isConsumed ()Z 
L294:   ifeq L300 
L297:   goto L4307 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Object com/fs/starfarer/util/A/new Float Object java/util/List Object com/fs/starfarer/util/A/C Object java/util/Iterator 
            stack 
        .end stack 
L300:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings Oo0000 ()Z 
L303:   ifeq L344 
L306:   aload 4 
L308:   getstatic Field [c1319] 'Ô00000' [u903] 
L311:   getstatic Field [c1295] 'Oô0000' [u882] 
L314:   invokestatic Method [c1301] o00000 [u906] 
L317:   ifeq L344 
L320:   aload_0 
L321:   aload_0 
L322:   getfield Field com/fs/starfarer/campaign/CampaignState fastForward Z 
L325:   ifeq L332 
L328:   iconst_0 
L329:   goto L333 

        .stack stack_1 Object com/fs/starfarer/campaign/CampaignState 
L332:   iconst_1 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Object com/fs/starfarer/util/A/new Float Object java/util/List Object com/fs/starfarer/util/A/C Object java/util/Iterator 
            stack Object com/fs/starfarer/campaign/CampaignState Integer 
        .end stack 
L333:   putfield Field com/fs/starfarer/campaign/CampaignState fastForward Z 
L336:   aload 4 
L338:   invokevirtual Method com/fs/starfarer/util/A/C consume ()V 
L341:   goto L4307 

        .stack same 
L344:   aload 4 
L346:   getstatic Field [c1319] 'Ô00000' [u903] 
L349:   getstatic Field [c1295] 'Ó0O000' [u882] 
L352:   invokestatic Method [c1301] o00000 [u906] 
L355:   ifeq L382 
L358:   aload_0 
L359:   aload_0 
L360:   getfield Field com/fs/starfarer/campaign/CampaignState hideUI Z 
L363:   ifeq L370 
L366:   iconst_0 
L367:   goto L371 

        .stack stack_1 Object com/fs/starfarer/campaign/CampaignState 
L370:   iconst_1 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Object com/fs/starfarer/util/A/new Float Object java/util/List Object com/fs/starfarer/util/A/C Object java/util/Iterator 
            stack Object com/fs/starfarer/campaign/CampaignState Integer 
        .end stack 
L371:   putfield Field com/fs/starfarer/campaign/CampaignState hideUI Z 
L374:   aload 4 
L376:   invokevirtual Method com/fs/starfarer/util/A/C consume ()V 
L379:   goto L4307 

        .stack same 
L382:   aload 4 
L384:   getstatic Field [c1319] 'Ô00000' [u903] 
L387:   getstatic Field [c1295] 'super.new' [u882] 
L390:   invokestatic Method [c1301] o00000 [u906] 
L393:   ifeq L453 
L396:   aload_0 
L397:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L400:   aload_0 
L401:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L404:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine isPaused ()Z 
L407:   ifeq L414 
L410:   iconst_0 
L411:   goto L415 

        .stack stack_1 Object com/fs/starfarer/campaign/CampaignEngine 
L414:   iconst_1 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Object com/fs/starfarer/util/A/new Float Object java/util/List Object com/fs/starfarer/util/A/C Object java/util/Iterator 
            stack Object com/fs/starfarer/campaign/CampaignEngine Integer 
        .end stack 
L415:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setPaused (Z)V 
L418:   aload_0 
L419:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L422:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine isPaused ()Z 
L425:   ifne L445 
L428:   aload_0 
L429:   getfield Field com/fs/starfarer/campaign/CampaignState messageDisplay Lcom/fs/starfarer/campaign/ui/O00O; 
L432:   invokevirtual Method com/fs/starfarer/campaign/ui/O00O clearSticky ()V 
L435:   aload_0 
L436:   getfield Field com/fs/starfarer/campaign/CampaignState messageDisplay Lcom/fs/starfarer/campaign/ui/O00O; 
L439:   ldc_w 'Game resumed' 
L442:   invokevirtual Method com/fs/starfarer/campaign/ui/O00O addMessage (Ljava/lang/String;)V 

        .stack same 
L445:   aload 4 
L447:   invokevirtual Method com/fs/starfarer/util/A/C consume ()V 
L450:   goto L4307 

        .stack same 
L453:   aload 4 
L455:   invokevirtual Method com/fs/starfarer/util/A/C getEventType ()Lcom/fs/starfarer/api/input/InputEventType; 
L458:   getstatic Field com/fs/starfarer/api/input/InputEventType KEY_DOWN Lcom/fs/starfarer/api/input/InputEventType; 
L461:   if_acmpne L530 
L464:   aload 4 
L466:   invokevirtual Method com/fs/starfarer/util/A/C getEventValue ()I 
L469:   bipush 44 
L471:   if_icmpne L530 
L474:   aload 4 
L476:   invokevirtual Method com/fs/starfarer/util/A/C isCtrlDown ()Z 
L479:   ifeq L530 
L482:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'OÓ0000' ()Z 
L485:   ifeq L530 
L488:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'while.super' ()Z 
L491:   ifeq L498 
L494:   iconst_0 
L495:   goto L499 

        .stack same 
L498:   iconst_1 

        .stack stack_1 Integer 
L499:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'interface' (Z)V 
L502:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L505:   new java/lang/StringBuilder 
L508:   dup 
L509:   ldc_w 'Sensors: ' 
L512:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L515:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'while.super' ()Z 
L518:   invokevirtual Method java/lang/StringBuilder append (Z)Ljava/lang/StringBuilder; 
L521:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L524:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine addMessage (Ljava/lang/String;)V 
L527:   goto L4307 

        .stack same 
L530:   aload 4 
L532:   invokevirtual Method com/fs/starfarer/util/A/C getEventType ()Lcom/fs/starfarer/api/input/InputEventType; 
L535:   getstatic Field com/fs/starfarer/api/input/InputEventType KEY_DOWN Lcom/fs/starfarer/api/input/InputEventType; 
L538:   if_acmpne L604 
L541:   aload 4 
L543:   invokevirtual Method com/fs/starfarer/util/A/C getEventValue ()I 
L546:   bipush 34 
L548:   if_icmpne L604 
L551:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'OÓ0000' ()Z 
L554:   ifeq L604 
L557:   aload_0 
L558:   getfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L561:   ifnonnull L4307 
L564:   aload 4 
L566:   invokevirtual Method com/fs/starfarer/util/A/C isShiftDown ()Z 
L569:   ifeq L588 
L572:   aload_0 
L573:   new com/fs/starfarer/api/impl/campaign/procgen/PlayerFleetGenPluginImpl 
L576:   dup 
L577:   invokespecial Method com/fs/starfarer/api/impl/campaign/procgen/PlayerFleetGenPluginImpl <init> ()V 
L580:   aconst_null 
L581:   invokevirtual Method com/fs/starfarer/campaign/CampaignState showInteractionDialog (Lcom/fs/starfarer/api/campaign/InteractionDialogPlugin;Lcom/fs/starfarer/api/campaign/SectorEntityToken;)Z 
L584:   pop 
L585:   goto L4307 

        .stack same 
L588:   aload_0 
L589:   new com/fs/starfarer/api/impl/campaign/procgen/EventTestPluginImpl 
L592:   dup 
L593:   invokespecial Method com/fs/starfarer/api/impl/campaign/procgen/EventTestPluginImpl <init> ()V 
L596:   aconst_null 
L597:   invokevirtual Method com/fs/starfarer/campaign/CampaignState showInteractionDialog (Lcom/fs/starfarer/api/campaign/InteractionDialogPlugin;Lcom/fs/starfarer/api/campaign/SectorEntityToken;)Z 
L600:   pop 
L601:   goto L4307 

        .stack same 
L604:   aload 4 
L606:   invokevirtual Method com/fs/starfarer/util/A/C isKeyDownEvent ()Z 
L609:   ifeq L1926 
L612:   aload 4 
L614:   invokevirtual Method com/fs/starfarer/util/A/C getEventValue ()I 
L617:   bipush 50 
L619:   if_icmpne L1926 
L622:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'OÓ0000' ()Z 
L625:   ifeq L1926 
L628:   aload_0 
L629:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L632:   ldc_w 'Corvus' 
L635:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getStarSystem (Ljava/lang/String;)Lcom/fs/starfarer/api/campaign/StarSystemAPI; 
L638:   ldc_w 'jangala' 
L641:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/StarSystemAPI getEntityById (Ljava/lang/String;)Lcom/fs/starfarer/api/campaign/SectorEntityToken; 2 
L646:   astore 6 
L648:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L651:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L654:   astore 7 
L656:   iconst_0 
L657:   istore 8 
L659:   goto L1917 

        .stack append Object com/fs/starfarer/api/campaign/SectorEntityToken Object com/fs/starfarer/campaign/fleet/CampaignFleet Integer 
L662:   ldc_w 'tritachyon' 
L665:   getstatic Field com/fs/starfarer/api/impl/campaign/DerelictShipEntityPlugin$DerelictType LARGE Lcom/fs/starfarer/api/impl/campaign/DerelictShipEntityPlugin$DerelictType; 
L668:   aconst_null 
L669:   fconst_1 
L670:   invokestatic Method com/fs/starfarer/api/impl/campaign/DerelictShipEntityPlugin createRandom (Ljava/lang/String;Lcom/fs/starfarer/api/impl/campaign/DerelictShipEntityPlugin$DerelictType;Ljava/util/Random;F)Lcom/fs/starfarer/api/impl/campaign/DerelictShipEntityPlugin$DerelictShipData; 
L673:   astore 9 
L675:   aload 9 
L677:   ifnull L1244 
L680:   aload 7 
L682:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getContainingLocation ()Lcom/fs/starfarer/campaign/BaseLocation; 
L685:   ldc_w 'wreck' 
L688:   ldc_w 'neutral' 
L691:   aload 9 
L693:   invokestatic Method com/fs/starfarer/api/impl/campaign/procgen/themes/BaseThemeGenerator addSalvageEntity (Lcom/fs/starfarer/api/campaign/LocationAPI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/fs/starfarer/api/campaign/SectorEntityToken; 
L696:   checkcast com/fs/starfarer/api/campaign/CustomCampaignEntityAPI 
L699:   astore 10 
L701:   aload 10 
L703:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CustomCampaignEntityAPI getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L708:   aload 7 
L710:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L713:   getfield Field org/lwjgl/util/vector/Vector2f x F 
L716:   ldc_w +100.0f 
L719:   invokestatic Method java/lang/Math random ()D 
L722:   d2f 
L723:   ldc_w +200.0f 
L726:   fmul 
L727:   fsub 
L728:   fadd 
L729:   putfield Field org/lwjgl/util/vector/Vector2f x F 
L732:   aload 10 
L734:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CustomCampaignEntityAPI getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L739:   aload 7 
L741:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L744:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L747:   ldc_w +100.0f 
L750:   invokestatic Method java/lang/Math random ()D 
L753:   d2f 
L754:   ldc_w +200.0f 
L757:   fmul 
L758:   fsub 
L759:   fadd 
L760:   putfield Field org/lwjgl/util/vector/Vector2f y F 
L763:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L766:   ldc_w 'salvageable' 
L769:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getEntitiesWithTag (Ljava/lang/String;)Ljava/util/List; 
L772:   astore 11 
L774:   aload 11 
L776:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L781:   astore 12 
L783:   goto L814 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Object com/fs/starfarer/util/A/new Float Object java/util/List Object com/fs/starfarer/util/A/C Object java/util/Iterator Object com/fs/starfarer/api/campaign/SectorEntityToken Object com/fs/starfarer/campaign/fleet/CampaignFleet Integer Object com/fs/starfarer/api/impl/campaign/DerelictShipEntityPlugin$DerelictShipData Object com/fs/starfarer/api/campaign/CustomCampaignEntityAPI Object java/util/List Object java/util/Iterator 
            stack 
        .end stack 
L786:   aload 12 
L788:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L793:   checkcast com/fs/starfarer/api/campaign/SectorEntityToken 
L796:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorEntityToken getCustomPlugin ()Lcom/fs/starfarer/api/campaign/CustomCampaignEntityPlugin; 1 
L801:   instanceof com/fs/starfarer/api/impl/campaign/DerelictShipEntityPlugin 
L804:   ifne L814 
L807:   aload 12 
L809:   invokeinterface InterfaceMethod java/util/Iterator remove ()V 1 

        .stack same 
L814:   aload 12 
L816:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L821:   ifne L786 
L824:   new com/fs/starfarer/api/impl/campaign/procgen/SalvageEntityGenDataSpec$DropData 
L827:   dup 
L828:   invokespecial Method com/fs/starfarer/api/impl/campaign/procgen/SalvageEntityGenDataSpec$DropData <init> ()V 
L831:   astore 13 
L833:   aload 13 
L835:   iconst_1 
L836:   putfield Field com/fs/starfarer/api/impl/campaign/procgen/SalvageEntityGenDataSpec$DropData chances I 
L839:   aload 13 
L841:   ldc_w 'item_ship_bp:afflictor_d_pirates' 
L844:   fconst_1 
L845:   invokevirtual Method com/fs/starfarer/api/impl/campaign/procgen/SalvageEntityGenDataSpec$DropData addCustom (Ljava/lang/String;F)V 
L848:   aload 10 
L850:   aload 13 
L852:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CustomCampaignEntityAPI addDropRandom (Lcom/fs/starfarer/api/impl/campaign/procgen/SalvageEntityGenDataSpec$DropData;)V 2 
L857:   new com/fs/starfarer/api/impl/campaign/procgen/SalvageEntityGenDataSpec$DropData 
L860:   dup 
L861:   invokespecial Method com/fs/starfarer/api/impl/campaign/procgen/SalvageEntityGenDataSpec$DropData <init> ()V 
L864:   astore 13 
L866:   aload 13 
L868:   sipush 1000 
L871:   putfield Field com/fs/starfarer/api/impl/campaign/procgen/SalvageEntityGenDataSpec$DropData chances I 
L874:   aload 13 
L876:   ldc_w 'ai_cores3' 
L879:   putfield Field com/fs/starfarer/api/impl/campaign/procgen/SalvageEntityGenDataSpec$DropData group Ljava/lang/String; 
L882:   aload 10 
L884:   aload 13 
L886:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CustomCampaignEntityAPI addDropRandom (Lcom/fs/starfarer/api/impl/campaign/procgen/SalvageEntityGenDataSpec$DropData;)V 2 
L891:   new com/fs/starfarer/api/impl/campaign/procgen/SalvageEntityGenDataSpec$DropData 
L894:   dup 
L895:   invokespecial Method com/fs/starfarer/api/impl/campaign/procgen/SalvageEntityGenDataSpec$DropData <init> ()V 
L898:   astore 13 
L900:   aload 13 
L902:   sipush 1000 
L905:   putfield Field [c1450] chances I 
L908:   aload 13 
L910:   ldc_w 'blueprints' 
L913:   putfield Field [c1450] group Ljava/lang/String; 
L916:   aload 10 
L918:   aload 13 
L920:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CustomCampaignEntityAPI addDropRandom (Lcom/fs/starfarer/api/impl/campaign/procgen/SalvageEntityGenDataSpec$DropData;)V 2 
L925:   new [c1450] 
L928:   dup 
L929:   invokespecial Method [c1450] <init> ()V 
L932:   astore 13 
L934:   aload 13 
L936:   iconst_1 
L937:   putfield Field [c1450] chances I 
L940:   aload 13 
L942:   ldc_w 'item_industry_bp:planetaryshield' 
L945:   fconst_1 
L946:   invokevirtual Method [c1450] addCustom (Ljava/lang/String;F)V 
L949:   aload 10 
L951:   aload 13 
L953:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CustomCampaignEntityAPI addDropRandom (Lcom/fs/starfarer/api/impl/campaign/procgen/SalvageEntityGenDataSpec$DropData;)V 2 
L958:   new [c1450] 
L961:   dup 
L962:   invokespecial Method [c1450] <init> ()V 
L965:   astore 13 
L967:   aload 13 
L969:   bipush 100 
L971:   putfield Field [c1450] chances I 
L974:   aload 13 
L976:   ldc_w 'rare_tech_low' 
L979:   putfield Field [c1450] group Ljava/lang/String; 
L982:   bipush 14 
L984:   anewarray java/lang/String 
L987:   dup 
L988:   iconst_0 
L989:   ldc_w 'corrupted_nanoforge' 
L992:   aastore 
L993:   dup 
L994:   iconst_1 
L995:   ldc_w 'pristine_nanoforge' 
L998:   aastore 
L999:   dup 
L1000:  iconst_2 
L1001:  ldc_w 'synchrotron' 
L1004:  aastore 
L1005:  dup 
L1006:  iconst_3 
L1007:  ldc_w 'orbital_fusion_lamp' 
L1010:  aastore 
L1011:  dup 
L1012:  iconst_4 
L1013:  ldc_w 'mantle_bore' 
L1016:  aastore 
L1017:  dup 
L1018:  iconst_5 
L1019:  ldc_w 'catalytic_core' 
L1022:  aastore 
L1023:  dup 
L1024:  bipush 6 
L1026:  ldc_w 'soil_nanites' 
L1029:  aastore 
L1030:  dup 
L1031:  bipush 7 
L1033:  ldc_w 'biofactory_embryo' 
L1036:  aastore 
L1037:  dup 
L1038:  bipush 8 
L1040:  ldc_w 'fullerene_spool' 
L1043:  aastore 
L1044:  dup 
L1045:  bipush 9 
L1047:  ldc_w 'plasma_dynamo' 
L1050:  aastore 
L1051:  dup 
L1052:  bipush 10 
L1054:  ldc_w 'cryoarithmetic_engine' 
L1057:  aastore 
L1058:  dup 
L1059:  bipush 11 
L1061:  ldc_w 'drone_replicator' 
L1064:  aastore 
L1065:  dup 
L1066:  bipush 12 
L1068:  ldc_w 'dealmaker_holosuite' 
L1071:  aastore 
L1072:  dup 
L1073:  bipush 13 
L1075:  ldc_w 'coronal_portal' 
L1078:  aastore 
L1079:  astore 14 
L1081:  aload 14 
L1083:  dup 
L1084:  astore 18 
L1086:  arraylength 
L1087:  istore 17 
L1089:  iconst_0 
L1090:  istore 16 
L1092:  goto L1153 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Object com/fs/starfarer/util/A/new Float Object java/util/List Object com/fs/starfarer/util/A/C Object java/util/Iterator Object com/fs/starfarer/api/campaign/SectorEntityToken Object com/fs/starfarer/campaign/fleet/CampaignFleet Integer Object com/fs/starfarer/api/impl/campaign/DerelictShipEntityPlugin$DerelictShipData Object com/fs/starfarer/api/campaign/CustomCampaignEntityAPI Object java/util/List Object java/util/Iterator Object [c1450] Object [Ljava/lang/String; Top Integer Integer Object [Ljava/lang/String; 
            stack 
        .end stack 
L1095:  aload 18 
L1097:  iload 16 
L1099:  aaload 
L1100:  astore 15 
L1102:  new [c1450] 
L1105:  dup 
L1106:  invokespecial Method [c1450] <init> ()V 
L1109:  astore 13 
L1111:  aload 13 
L1113:  iconst_1 
L1114:  putfield Field [c1450] value I 
L1117:  aload 13 
L1119:  new java/lang/StringBuilder 
L1122:  dup 
L1123:  ldc_w 'item_' 
L1126:  invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L1129:  aload 15 
L1131:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L1134:  invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L1137:  fconst_1 
L1138:  invokevirtual Method [c1450] addCustom (Ljava/lang/String;F)V 
L1141:  aload 10 
L1143:  aload 13 
L1145:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CustomCampaignEntityAPI addDropValue (Lcom/fs/starfarer/api/impl/campaign/procgen/SalvageEntityGenDataSpec$DropData;)V 2 
L1150:  iinc 16 1 

        .stack same 
L1153:  iload 16 
L1155:  iload 17 
L1157:  if_icmplt L1095 
L1160:  new [c1450] 
L1163:  dup 
L1164:  invokespecial Method [c1450] <init> ()V 
L1167:  astore 13 
L1169:  aload 13 
L1171:  bipush 10 
L1173:  putfield Field [c1450] chances I 
L1176:  aload 13 
L1178:  ldc_w 'item_:{tags:[nanoforge]}, p:{}}' 
L1181:  fconst_1 
L1182:  invokevirtual Method [c1450] addCustom (Ljava/lang/String;F)V 
L1185:  new [c1450] 
L1188:  dup 
L1189:  invokespecial Method [c1450] <init> ()V 
L1192:  astore 13 
L1194:  aload 13 
L1196:  bipush 10 
L1198:  putfield Field [c1450] chances I 
L1201:  aload 13 
L1203:  ldc_w 'item_:{tags:[package_bp]}, p:{}}' 
L1206:  fconst_1 
L1207:  invokevirtual Method [c1450] addCustom (Ljava/lang/String;F)V 
L1210:  new [c1450] 
L1213:  dup 
L1214:  invokespecial Method [c1450] <init> ()V 
L1217:  astore 13 
L1219:  aload 13 
L1221:  bipush 100 
L1223:  putfield Field [c1450] chances I 
L1226:  aload 13 
L1228:  ldc_w 'item_modspec:{tags:[]}, p:{}}' 
L1231:  fconst_1 
L1232:  invokevirtual Method [c1450] addCustom (Ljava/lang/String;F)V 
L1235:  aload 10 
L1237:  aload 13 
L1239:  invokeinterface InterfaceMethod [c1426] addDropRandom (Lcom/fs/starfarer/api/impl/campaign/procgen/SalvageEntityGenDataSpec$DropData;)V 2 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Object com/fs/starfarer/util/A/new Float Object java/util/List Object com/fs/starfarer/util/A/C Object java/util/Iterator Object com/fs/starfarer/api/campaign/SectorEntityToken Object com/fs/starfarer/campaign/fleet/CampaignFleet Integer Object com/fs/starfarer/api/impl/campaign/DerelictShipEntityPlugin$DerelictShipData 
            stack 
        .end stack 
L1244:  invokestatic Method com/fs/starfarer/api/Global getSector ()Lcom/fs/starfarer/api/campaign/SectorAPI; 
L1247:  ldc_w 'pirates' 
L1250:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorAPI getFaction (Ljava/lang/String;)Lcom/fs/starfarer/api/campaign/FactionAPI; 2 
L1255:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/FactionAPI createRandomPerson ()Lcom/fs/starfarer/api/characters/PersonAPI; 1 
L1260:  astore 10 
L1262:  aload 10 
L1264:  getstatic Field com/fs/starfarer/api/impl/campaign/ids/Ranks POST_SMUGGLER Ljava/lang/String; 
L1267:  invokeinterface InterfaceMethod com/fs/starfarer/api/characters/PersonAPI setPostId (Ljava/lang/String;)V 2 
L1272:  aload 10 
L1274:  getstatic Field com/fs/starfarer/api/campaign/PersonImportance LOW Lcom/fs/starfarer/api/campaign/PersonImportance; 
L1277:  invokeinterface InterfaceMethod com/fs/starfarer/api/characters/PersonAPI setImportance (Lcom/fs/starfarer/api/campaign/PersonImportance;)V 2 
L1282:  aload 10 
L1284:  ldc_w 'underworld' 
L1287:  invokeinterface InterfaceMethod com/fs/starfarer/api/characters/PersonAPI addTag (Ljava/lang/String;)V 2 
L1292:  new com/fs/starfarer/api/impl/campaign/intel/contacts/ContactIntel 
L1295:  dup 
L1296:  aload 10 
L1298:  invokestatic Method com/fs/starfarer/api/Global getSector ()Lcom/fs/starfarer/api/campaign/SectorAPI; 
L1301:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorAPI getEconomy ()Lcom/fs/starfarer/api/campaign/econ/EconomyAPI; 1 
L1306:  ldc_w 'asharu' 
L1309:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/econ/EconomyAPI getMarket (Ljava/lang/String;)Lcom/fs/starfarer/api/campaign/econ/MarketAPI; 2 
L1314:  invokespecial Method com/fs/starfarer/api/impl/campaign/intel/contacts/ContactIntel <init> (Lcom/fs/starfarer/api/characters/PersonAPI;Lcom/fs/starfarer/api/campaign/econ/MarketAPI;)V 
L1317:  astore 11 
L1319:  invokestatic Method com/fs/starfarer/api/Global getSector ()Lcom/fs/starfarer/api/campaign/SectorAPI; 
L1322:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorAPI getIntelManager ()Lcom/fs/starfarer/api/campaign/comm/IntelManagerAPI; 1 
L1327:  aload 11 
L1329:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/comm/IntelManagerAPI addIntel (Lcom/fs/starfarer/api/campaign/comm/IntelInfoPlugin;)V 2 
L1334:  invokestatic Method com/fs/starfarer/api/Global getSector ()Lcom/fs/starfarer/api/campaign/SectorAPI; 
L1337:  ldc_w 'hegemony' 
L1340:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorAPI getFaction (Ljava/lang/String;)Lcom/fs/starfarer/api/campaign/FactionAPI; 2 
L1345:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/FactionAPI createRandomPerson ()Lcom/fs/starfarer/api/characters/PersonAPI; 1 
L1350:  astore 10 
L1352:  aload 10 
L1354:  getstatic Field com/fs/starfarer/api/impl/campaign/ids/Ranks POST_AGENT Ljava/lang/String; 
L1357:  invokeinterface InterfaceMethod com/fs/starfarer/api/characters/PersonAPI setPostId (Ljava/lang/String;)V 2 
L1362:  aload 10 
L1364:  getstatic Field com/fs/starfarer/api/impl/campaign/ids/Ranks GROUND_CAPTAIN Ljava/lang/String; 
L1367:  invokeinterface InterfaceMethod com/fs/starfarer/api/characters/PersonAPI setRankId (Ljava/lang/String;)V 2 
L1372:  aload 10 
L1374:  getstatic Field com/fs/starfarer/api/campaign/PersonImportance MEDIUM Lcom/fs/starfarer/api/campaign/PersonImportance; 
L1377:  invokeinterface InterfaceMethod com/fs/starfarer/api/characters/PersonAPI setImportance (Lcom/fs/starfarer/api/campaign/PersonImportance;)V 2 
L1382:  aload 10 
L1384:  ldc_w 'military' 
L1387:  invokeinterface InterfaceMethod com/fs/starfarer/api/characters/PersonAPI addTag (Ljava/lang/String;)V 2 
L1392:  new com/fs/starfarer/api/impl/campaign/intel/contacts/ContactIntel 
L1395:  dup 
L1396:  aload 10 
L1398:  invokestatic Method com/fs/starfarer/api/Global getSector ()Lcom/fs/starfarer/api/campaign/SectorAPI; 
L1401:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorAPI getEconomy ()Lcom/fs/starfarer/api/campaign/econ/EconomyAPI; 1 
L1406:  ldc_w 'jangala' 
L1409:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/econ/EconomyAPI getMarket (Ljava/lang/String;)Lcom/fs/starfarer/api/campaign/econ/MarketAPI; 2 
L1414:  invokespecial Method com/fs/starfarer/api/impl/campaign/intel/contacts/ContactIntel <init> (Lcom/fs/starfarer/api/characters/PersonAPI;Lcom/fs/starfarer/api/campaign/econ/MarketAPI;)V 
L1417:  astore 11 
L1419:  invokestatic Method com/fs/starfarer/api/Global getSector ()Lcom/fs/starfarer/api/campaign/SectorAPI; 
L1422:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorAPI getIntelManager ()Lcom/fs/starfarer/api/campaign/comm/IntelManagerAPI; 1 
L1427:  aload 11 
L1429:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/comm/IntelManagerAPI addIntel (Lcom/fs/starfarer/api/campaign/comm/IntelInfoPlugin;)V 2 
L1434:  invokestatic Method com/fs/starfarer/api/Global getSector ()Lcom/fs/starfarer/api/campaign/SectorAPI; 
L1437:  ldc_w 'pirates' 
L1440:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorAPI getFaction (Ljava/lang/String;)Lcom/fs/starfarer/api/campaign/FactionAPI; 2 
L1445:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/FactionAPI createRandomPerson ()Lcom/fs/starfarer/api/characters/PersonAPI; 1 
L1450:  astore 10 
L1452:  aload 10 
L1454:  getstatic Field com/fs/starfarer/api/impl/campaign/ids/Ranks POST_SMUGGLER Ljava/lang/String; 
L1457:  invokeinterface InterfaceMethod com/fs/starfarer/api/characters/PersonAPI setPostId (Ljava/lang/String;)V 2 
L1462:  aload 10 
L1464:  getstatic Field com/fs/starfarer/api/impl/campaign/ids/Ranks CITIZEN Ljava/lang/String; 
L1467:  invokeinterface InterfaceMethod com/fs/starfarer/api/characters/PersonAPI setRankId (Ljava/lang/String;)V 2 
L1472:  aload 10 
L1474:  getstatic Field com/fs/starfarer/api/campaign/PersonImportance MEDIUM Lcom/fs/starfarer/api/campaign/PersonImportance; 
L1477:  invokeinterface InterfaceMethod com/fs/starfarer/api/characters/PersonAPI setImportance (Lcom/fs/starfarer/api/campaign/PersonImportance;)V 2 
L1482:  aload 10 
L1484:  ldc_w 'underworld' 
L1487:  invokeinterface InterfaceMethod com/fs/starfarer/api/characters/PersonAPI addTag (Ljava/lang/String;)V 2 
L1492:  new com/fs/starfarer/api/impl/campaign/intel/contacts/ContactIntel 
L1495:  dup 
L1496:  aload 10 
L1498:  invokestatic Method com/fs/starfarer/api/Global getSector ()Lcom/fs/starfarer/api/campaign/SectorAPI; 
L1501:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorAPI getEconomy ()Lcom/fs/starfarer/api/campaign/econ/EconomyAPI; 1 
L1506:  ldc_w 'jangala' 
L1509:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/econ/EconomyAPI getMarket (Ljava/lang/String;)Lcom/fs/starfarer/api/campaign/econ/MarketAPI; 2 
L1514:  invokespecial Method com/fs/starfarer/api/impl/campaign/intel/contacts/ContactIntel <init> (Lcom/fs/starfarer/api/characters/PersonAPI;Lcom/fs/starfarer/api/campaign/econ/MarketAPI;)V 
L1517:  astore 11 
L1519:  invokestatic Method com/fs/starfarer/api/Global getSector ()Lcom/fs/starfarer/api/campaign/SectorAPI; 
L1522:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorAPI getIntelManager ()Lcom/fs/starfarer/api/campaign/comm/IntelManagerAPI; 1 
L1527:  aload 11 
L1529:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/comm/IntelManagerAPI addIntel (Lcom/fs/starfarer/api/campaign/comm/IntelInfoPlugin;)V 2 
L1534:  invokestatic Method com/fs/starfarer/api/Global getSector ()Lcom/fs/starfarer/api/campaign/SectorAPI; 
L1537:  ldc_w 'tritachyon' 
L1540:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorAPI getFaction (Ljava/lang/String;)Lcom/fs/starfarer/api/campaign/FactionAPI; 2 
L1545:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/FactionAPI createRandomPerson ()Lcom/fs/starfarer/api/characters/PersonAPI; 1 
L1550:  astore 10 
L1552:  aload 10 
L1554:  getstatic Field com/fs/starfarer/api/impl/campaign/ids/Ranks SPACE_ADMIRAL Ljava/lang/String; 
L1557:  invokeinterface InterfaceMethod com/fs/starfarer/api/characters/PersonAPI setRankId (Ljava/lang/String;)V 2 
L1562:  aload 10 
L1564:  getstatic Field com/fs/starfarer/api/impl/campaign/ids/Ranks POST_SENIOR_EXECUTIVE Ljava/lang/String; 
L1567:  invokeinterface InterfaceMethod com/fs/starfarer/api/characters/PersonAPI setPostId (Ljava/lang/String;)V 2 
L1572:  aload 10 
L1574:  getstatic Field com/fs/starfarer/api/campaign/PersonImportance VERY_HIGH Lcom/fs/starfarer/api/campaign/PersonImportance; 
L1577:  invokeinterface InterfaceMethod com/fs/starfarer/api/characters/PersonAPI setImportance (Lcom/fs/starfarer/api/campaign/PersonImportance;)V 2 
L1582:  aload 10 
L1584:  ldc_w 'military' 
L1587:  invokeinterface InterfaceMethod com/fs/starfarer/api/characters/PersonAPI addTag (Ljava/lang/String;)V 2 
L1592:  new com/fs/starfarer/api/impl/campaign/intel/contacts/ContactIntel 
L1595:  dup 
L1596:  aload 10 
L1598:  invokestatic Method com/fs/starfarer/api/Global getSector ()Lcom/fs/starfarer/api/campaign/SectorAPI; 
L1601:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorAPI getEconomy ()Lcom/fs/starfarer/api/campaign/econ/EconomyAPI; 1 
L1606:  ldc_w 'coatl' 
L1609:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/econ/EconomyAPI getMarket (Ljava/lang/String;)Lcom/fs/starfarer/api/campaign/econ/MarketAPI; 2 
L1614:  invokespecial Method com/fs/starfarer/api/impl/campaign/intel/contacts/ContactIntel <init> (Lcom/fs/starfarer/api/characters/PersonAPI;Lcom/fs/starfarer/api/campaign/econ/MarketAPI;)V 
L1617:  astore 11 
L1619:  invokestatic Method com/fs/starfarer/api/Global getSector ()Lcom/fs/starfarer/api/campaign/SectorAPI; 
L1622:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorAPI getIntelManager ()Lcom/fs/starfarer/api/campaign/comm/IntelManagerAPI; 1 
L1627:  aload 11 
L1629:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/comm/IntelManagerAPI addIntel (Lcom/fs/starfarer/api/campaign/comm/IntelInfoPlugin;)V 2 
L1634:  invokestatic Method com/fs/starfarer/api/Global getSector ()Lcom/fs/starfarer/api/campaign/SectorAPI; 
L1637:  ldc_w 'hegemony' 
L1640:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorAPI getFaction (Ljava/lang/String;)Lcom/fs/starfarer/api/campaign/FactionAPI; 2 
L1645:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/FactionAPI createRandomPerson ()Lcom/fs/starfarer/api/characters/PersonAPI; 1 
L1650:  astore 10 
L1652:  aload 10 
L1654:  getstatic Field com/fs/starfarer/api/impl/campaign/ids/Ranks CITIZEN Ljava/lang/String; 
L1657:  invokeinterface InterfaceMethod com/fs/starfarer/api/characters/PersonAPI setRankId (Ljava/lang/String;)V 2 
L1662:  aload 10 
L1664:  getstatic Field com/fs/starfarer/api/impl/campaign/ids/Ranks POST_MERCHANT Ljava/lang/String; 
L1667:  invokeinterface InterfaceMethod com/fs/starfarer/api/characters/PersonAPI setPostId (Ljava/lang/String;)V 2 
L1672:  aload 10 
L1674:  getstatic Field com/fs/starfarer/api/campaign/PersonImportance MEDIUM Lcom/fs/starfarer/api/campaign/PersonImportance; 
L1677:  invokeinterface InterfaceMethod com/fs/starfarer/api/characters/PersonAPI setImportance (Lcom/fs/starfarer/api/campaign/PersonImportance;)V 2 
L1682:  aload 10 
L1684:  ldc_w 'trade' 
L1687:  invokeinterface InterfaceMethod com/fs/starfarer/api/characters/PersonAPI addTag (Ljava/lang/String;)V 2 
L1692:  new com/fs/starfarer/api/impl/campaign/intel/contacts/ContactIntel 
L1695:  dup 
L1696:  aload 10 
L1698:  invokestatic Method com/fs/starfarer/api/Global getSector ()Lcom/fs/starfarer/api/campaign/SectorAPI; 
L1701:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorAPI getEconomy ()Lcom/fs/starfarer/api/campaign/econ/EconomyAPI; 1 
L1706:  ldc_w 'jangala' 
L1709:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/econ/EconomyAPI getMarket (Ljava/lang/String;)Lcom/fs/starfarer/api/campaign/econ/MarketAPI; 2 
L1714:  invokespecial Method com/fs/starfarer/api/impl/campaign/intel/contacts/ContactIntel <init> (Lcom/fs/starfarer/api/characters/PersonAPI;Lcom/fs/starfarer/api/campaign/econ/MarketAPI;)V 
L1717:  astore 11 
L1719:  invokestatic Method com/fs/starfarer/api/Global getSector ()Lcom/fs/starfarer/api/campaign/SectorAPI; 
L1722:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorAPI getIntelManager ()Lcom/fs/starfarer/api/campaign/comm/IntelManagerAPI; 1 
L1727:  aload 11 
L1729:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/comm/IntelManagerAPI addIntel (Lcom/fs/starfarer/api/campaign/comm/IntelInfoPlugin;)V 2 
L1734:  invokestatic Method com/fs/starfarer/api/Global getSector ()Lcom/fs/starfarer/api/campaign/SectorAPI; 
L1737:  ldc_w 'independent' 
L1740:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorAPI getFaction (Ljava/lang/String;)Lcom/fs/starfarer/api/campaign/FactionAPI; 2 
L1745:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/FactionAPI createRandomPerson ()Lcom/fs/starfarer/api/characters/PersonAPI; 1 
L1750:  astore 10 
L1752:  aload 10 
L1754:  getstatic Field com/fs/starfarer/api/impl/campaign/ids/Ranks POST_TRADER Ljava/lang/String; 
L1757:  invokeinterface InterfaceMethod com/fs/starfarer/api/characters/PersonAPI setPostId (Ljava/lang/String;)V 2 
L1762:  aload 10 
L1764:  getstatic Field com/fs/starfarer/api/campaign/PersonImportance HIGH Lcom/fs/starfarer/api/campaign/PersonImportance; 
L1767:  invokeinterface InterfaceMethod com/fs/starfarer/api/characters/PersonAPI setImportance (Lcom/fs/starfarer/api/campaign/PersonImportance;)V 2 
L1772:  aload 10 
L1774:  ldc_w 'trade' 
L1777:  invokeinterface InterfaceMethod com/fs/starfarer/api/characters/PersonAPI addTag (Ljava/lang/String;)V 2 
L1782:  new [c1553] 
L1785:  dup 
L1786:  aload 10 
L1788:  invokestatic Method com/fs/starfarer/api/Global getSector ()Lcom/fs/starfarer/api/campaign/SectorAPI; 
L1791:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorAPI getEconomy ()Lcom/fs/starfarer/api/campaign/econ/EconomyAPI; 1 
L1796:  ldc_w 'nortia' 
L1799:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/econ/EconomyAPI getMarket (Ljava/lang/String;)Lcom/fs/starfarer/api/campaign/econ/MarketAPI; 2 
L1804:  invokespecial Method [c1553] <init> (Lcom/fs/starfarer/api/characters/PersonAPI;Lcom/fs/starfarer/api/campaign/econ/MarketAPI;)V 
L1807:  astore 11 
L1809:  invokestatic Method com/fs/starfarer/api/Global getSector ()Lcom/fs/starfarer/api/campaign/SectorAPI; 
L1812:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorAPI getIntelManager ()Lcom/fs/starfarer/api/campaign/comm/IntelManagerAPI; 1 
L1817:  aload 11 
L1819:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/comm/IntelManagerAPI addIntel (Lcom/fs/starfarer/api/campaign/comm/IntelInfoPlugin;)V 2 
L1824:  invokestatic Method com/fs/starfarer/api/Global getSector ()Lcom/fs/starfarer/api/campaign/SectorAPI; 
L1827:  ldc_w 'pirates' 
L1830:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorAPI getFaction (Ljava/lang/String;)Lcom/fs/starfarer/api/campaign/FactionAPI; 2 
L1835:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/FactionAPI createRandomPerson ()Lcom/fs/starfarer/api/characters/PersonAPI; 1 
L1840:  astore 10 
L1842:  aload 10 
L1844:  getstatic Field com/fs/starfarer/api/impl/campaign/ids/Ranks POST_ARMS_DEALER Ljava/lang/String; 
L1847:  invokeinterface InterfaceMethod com/fs/starfarer/api/characters/PersonAPI setPostId (Ljava/lang/String;)V 2 
L1852:  aload 10 
L1854:  getstatic Field com/fs/starfarer/api/campaign/PersonImportance HIGH Lcom/fs/starfarer/api/campaign/PersonImportance; 
L1857:  invokeinterface InterfaceMethod com/fs/starfarer/api/characters/PersonAPI setImportance (Lcom/fs/starfarer/api/campaign/PersonImportance;)V 2 
L1862:  aload 10 
L1864:  ldc_w 'underworld' 
L1867:  invokeinterface InterfaceMethod com/fs/starfarer/api/characters/PersonAPI addTag (Ljava/lang/String;)V 2 
L1872:  new [c1553] 
L1875:  dup 
L1876:  aload 10 
L1878:  invokestatic Method com/fs/starfarer/api/Global getSector ()Lcom/fs/starfarer/api/campaign/SectorAPI; 
L1881:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorAPI getEconomy ()Lcom/fs/starfarer/api/campaign/econ/EconomyAPI; 1 
L1886:  ldc_w 'umbra' 
L1889:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/econ/EconomyAPI getMarket (Ljava/lang/String;)Lcom/fs/starfarer/api/campaign/econ/MarketAPI; 2 
L1894:  invokespecial Method [c1553] <init> (Lcom/fs/starfarer/api/characters/PersonAPI;Lcom/fs/starfarer/api/campaign/econ/MarketAPI;)V 
L1897:  astore 11 
L1899:  invokestatic Method com/fs/starfarer/api/Global getSector ()Lcom/fs/starfarer/api/campaign/SectorAPI; 
L1902:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorAPI getIntelManager ()Lcom/fs/starfarer/api/campaign/comm/IntelManagerAPI; 1 
L1907:  aload 11 
L1909:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/comm/IntelManagerAPI addIntel (Lcom/fs/starfarer/api/campaign/comm/IntelInfoPlugin;)V 2 
L1914:  iinc 8 1 

        .stack chop 1 
L1917:  iload 8 
L1919:  iconst_1 
L1920:  if_icmplt L662 
L1923:  goto L4307 

        .stack chop 3 
L1926:  aload 4 
L1928:  invokevirtual Method com/fs/starfarer/util/A/C isKeyDownEvent ()Z 
L1931:  ifeq L3607 
L1934:  aload 4 
L1936:  invokevirtual Method com/fs/starfarer/util/A/C getEventValue ()I 
L1939:  bipush 49 
L1941:  if_icmpne L3607 
L1944:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'OÓ0000' ()Z 
L1947:  ifeq L3607 
L1950:  aload 4 
L1952:  invokevirtual Method com/fs/starfarer/util/A/C isAltDown ()Z 
L1955:  ifeq L2483 
L1958:  invokestatic Method com/fs/starfarer/api/Global getFactory ()Lcom/fs/starfarer/api/FactoryAPI; 
L1961:  ldc_w 'dweller' 
L1964:  ldc_w 'Manifestation' 
L1967:  iconst_1 
L1968:  invokeinterface InterfaceMethod com/fs/starfarer/api/FactoryAPI createEmptyFleet (Ljava/lang/String;Ljava/lang/String;Z)Lcom/fs/starfarer/api/campaign/CampaignFleetAPI; 4 
L1973:  astore 6 
L1975:  aload_0 
L1976:  getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L1979:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getCurrentLocation ()Lcom/fs/starfarer/campaign/BaseLocation; 
L1982:  aload_0 
L1983:  getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L1986:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L1989:  ldc_w +200.0f 
L1992:  invokestatic Method java/lang/Math random ()D 
L1995:  d2f 
L1996:  ldc +0.5f 
L1998:  fsub 
L1999:  fmul 
L2000:  ldc_w +200.0f 
L2003:  invokestatic Method java/lang/Math random ()D 
L2006:  d2f 
L2007:  ldc +0.5f 
L2009:  fsub 
L2010:  fmul 
L2011:  aload 6 
L2013:  invokevirtual Method com/fs/starfarer/campaign/BaseLocation spawnFleet (Lcom/fs/starfarer/api/campaign/SectorEntityToken;FFLcom/fs/starfarer/api/campaign/CampaignFleetAPI;)V 
L2016:  aload 6 
L2018:  aconst_null 
L2019:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI setInflater (Lcom/fs/starfarer/api/campaign/FleetInflater;)V 2 
L2024:  iconst_0 
L2025:  istore 7 
L2027:  goto L2049 

        .stack append Object com/fs/starfarer/api/campaign/CampaignFleetAPI Integer 
L2030:  aload 6 
L2032:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getFleetData ()Lcom/fs/starfarer/api/campaign/FleetDataAPI; 1 
L2037:  ldc_w 'shrouded_maw_Ravenous' 
L2040:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/FleetDataAPI addFleetMember (Ljava/lang/String;)Lcom/fs/starfarer/api/fleet/FleetMemberAPI; 2 
L2045:  pop 
L2046:  iinc 7 1 

        .stack same 
L2049:  iload 7 
L2051:  iconst_1 
L2052:  if_icmplt L2030 
L2055:  iconst_0 
L2056:  istore 7 
L2058:  goto L2272 

        .stack same 
L2061:  aload 6 
L2063:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getFleetData ()Lcom/fs/starfarer/api/campaign/FleetDataAPI; 1 
L2068:  ldc_w 'shrouded_eye_Darkened' 
L2071:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/FleetDataAPI addFleetMember (Ljava/lang/String;)Lcom/fs/starfarer/api/fleet/FleetMemberAPI; 2 
L2076:  pop 
L2077:  aload 6 
L2079:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getFleetData ()Lcom/fs/starfarer/api/campaign/FleetDataAPI; 1 
L2084:  ldc_w 'shrouded_maelstrom_Menacing' 
L2087:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/FleetDataAPI addFleetMember (Ljava/lang/String;)Lcom/fs/starfarer/api/fleet/FleetMemberAPI; 2 
L2092:  pop 
L2093:  aload 6 
L2095:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getFleetData ()Lcom/fs/starfarer/api/campaign/FleetDataAPI; 1 
L2100:  ldc_w 'shrouded_maelstrom_Menacing' 
L2103:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/FleetDataAPI addFleetMember (Ljava/lang/String;)Lcom/fs/starfarer/api/fleet/FleetMemberAPI; 2 
L2108:  pop 
L2109:  aload 6 
L2111:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getFleetData ()Lcom/fs/starfarer/api/campaign/FleetDataAPI; 1 
L2116:  ldc_w 'shrouded_tendril_Roiling' 
L2119:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/FleetDataAPI addFleetMember (Ljava/lang/String;)Lcom/fs/starfarer/api/fleet/FleetMemberAPI; 2 
L2124:  pop 
L2125:  aload 6 
L2127:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getFleetData ()Lcom/fs/starfarer/api/campaign/FleetDataAPI; 1 
L2132:  ldc_w 'shrouded_tendril_Roiling' 
L2135:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/FleetDataAPI addFleetMember (Ljava/lang/String;)Lcom/fs/starfarer/api/fleet/FleetMemberAPI; 2 
L2140:  pop 
L2141:  aload 6 
L2143:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getFleetData ()Lcom/fs/starfarer/api/campaign/FleetDataAPI; 1 
L2148:  ldc_w 'shrouded_tendril_Roiling' 
L2151:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/FleetDataAPI addFleetMember (Ljava/lang/String;)Lcom/fs/starfarer/api/fleet/FleetMemberAPI; 2 
L2156:  pop 
L2157:  aload 6 
L2159:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getFleetData ()Lcom/fs/starfarer/api/campaign/FleetDataAPI; 1 
L2164:  ldc_w 'shrouded_tendril_Roiling' 
L2167:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/FleetDataAPI addFleetMember (Ljava/lang/String;)Lcom/fs/starfarer/api/fleet/FleetMemberAPI; 2 
L2172:  pop 
L2173:  aload 6 
L2175:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getFleetData ()Lcom/fs/starfarer/api/campaign/FleetDataAPI; 1 
L2180:  ldc_w 'shrouded_tendril_Roiling' 
L2183:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/FleetDataAPI addFleetMember (Ljava/lang/String;)Lcom/fs/starfarer/api/fleet/FleetMemberAPI; 2 
L2188:  pop 
L2189:  aload 6 
L2191:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getFleetData ()Lcom/fs/starfarer/api/campaign/FleetDataAPI; 1 
L2196:  ldc_w 'shrouded_tendril_Roiling' 
L2199:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/FleetDataAPI addFleetMember (Ljava/lang/String;)Lcom/fs/starfarer/api/fleet/FleetMemberAPI; 2 
L2204:  pop 
L2205:  aload 6 
L2207:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getFleetData ()Lcom/fs/starfarer/api/campaign/FleetDataAPI; 1 
L2212:  ldc_w 'shrouded_tendril_Roiling' 
L2215:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/FleetDataAPI addFleetMember [u1669] 2 
L2220:  pop 
L2221:  aload 6 
L2223:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getFleetData ()Lcom/fs/starfarer/api/campaign/FleetDataAPI; 1 
L2228:  ldc_w 'shrouded_tendril_Roiling' 
L2231:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/FleetDataAPI addFleetMember [u1669] 2 
L2236:  pop 
L2237:  aload 6 
L2239:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getFleetData ()Lcom/fs/starfarer/api/campaign/FleetDataAPI; 1 
L2244:  ldc_w 'shrouded_tendril_Roiling' 
L2247:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/FleetDataAPI addFleetMember [u1669] 2 
L2252:  pop 
L2253:  aload 6 
L2255:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getFleetData ()Lcom/fs/starfarer/api/campaign/FleetDataAPI; 1 
L2260:  ldc_w 'shrouded_tendril_Roiling' 
L2263:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/FleetDataAPI addFleetMember [u1669] 2 
L2268:  pop 
L2269:  iinc 7 1 

        .stack same_extended 
L2272:  iload 7 
L2274:  iconst_1 
L2275:  if_icmplt L2061 
L2278:  aload 6 
L2280:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getFleetData ()Lcom/fs/starfarer/api/campaign/FleetDataAPI; 1 
L2285:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/FleetDataAPI setSyncNeeded ()V 1 
L2290:  aload 6 
L2292:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getFleetData ()Lcom/fs/starfarer/api/campaign/FleetDataAPI; 1 
L2297:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/FleetDataAPI syncIfNeeded ()V 1 
L2302:  aload 6 
L2304:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getFleetData ()Lcom/fs/starfarer/api/campaign/FleetDataAPI; 1 
L2309:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/FleetDataAPI sort ()V 1 
L2314:  aload 6 
L2316:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getFleetData ()Lcom/fs/starfarer/api/campaign/FleetDataAPI; 1 
L2321:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/FleetDataAPI getMembersListCopy ()Ljava/util/List; 1 
L2326:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L2331:  astore 8 
L2333:  goto L2372 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Object com/fs/starfarer/util/A/new Float Object java/util/List Object com/fs/starfarer/util/A/C Object java/util/Iterator Object com/fs/starfarer/api/campaign/CampaignFleetAPI Top Object java/util/Iterator 
            stack 
        .end stack 
L2336:  aload 8 
L2338:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L2343:  checkcast com/fs/starfarer/api/fleet/FleetMemberAPI 
L2346:  astore 7 
L2348:  aload 7 
L2350:  invokeinterface InterfaceMethod com/fs/starfarer/api/fleet/FleetMemberAPI getRepairTracker ()Lcom/fs/starfarer/api/fleet/RepairTrackerAPI; 1 
L2355:  aload 7 
L2357:  invokeinterface InterfaceMethod com/fs/starfarer/api/fleet/FleetMemberAPI getRepairTracker ()Lcom/fs/starfarer/api/fleet/RepairTrackerAPI; 1 
L2362:  invokeinterface InterfaceMethod com/fs/starfarer/api/fleet/RepairTrackerAPI getMaxCR ()F 1 
L2367:  invokeinterface InterfaceMethod com/fs/starfarer/api/fleet/RepairTrackerAPI setCR (F)V 2 

        .stack same 
L2372:  aload 8 
L2374:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L2379:  ifne L2336 
L2382:  aload 6 
L2384:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getMemoryWithoutUpdate ()Lcom/fs/starfarer/api/campaign/rules/MemoryAPI; 1 
L2389:  ldc_w '$fidConifgGen' 
L2392:  new com/fs/starfarer/api/impl/combat/dweller/DwellerFIDConfig 
L2395:  dup 
L2396:  invokespecial Method com/fs/starfarer/api/impl/combat/dweller/DwellerFIDConfig <init> ()V 
L2399:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/rules/MemoryAPI set (Ljava/lang/String;Ljava/lang/Object;)V 3 
L2404:  aload 6 
L2406:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getMemoryWithoutUpdate ()Lcom/fs/starfarer/api/campaign/rules/MemoryAPI; 1 
L2411:  ldc_w '$cfai_makeAggressive' 
L2414:  iconst_1 
L2415:  invokestatic Method java/lang/Boolean valueOf (Z)Ljava/lang/Boolean; 
L2418:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/rules/MemoryAPI set (Ljava/lang/String;Ljava/lang/Object;)V 3 
L2423:  aload 6 
L2425:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getMemoryWithoutUpdate ()Lcom/fs/starfarer/api/campaign/rules/MemoryAPI; 1 
L2430:  ldc_w '$cfai_makeHostile' 
L2433:  iconst_1 
L2434:  invokestatic Method java/lang/Boolean valueOf (Z)Ljava/lang/Boolean; 
L2437:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/rules/MemoryAPI set (Ljava/lang/String;Ljava/lang/Object;)V 3 
L2442:  aload 6 
L2444:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getMemoryWithoutUpdate ()Lcom/fs/starfarer/api/campaign/rules/MemoryAPI; 1 
L2449:  ldc_w '$cfai_longPursuit' 
L2452:  iconst_1 
L2453:  invokestatic Method java/lang/Boolean valueOf (Z)Ljava/lang/Boolean; 
L2456:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/rules/MemoryAPI set (Ljava/lang/String;Ljava/lang/Object;)V 3 
L2461:  aload 6 
L2463:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getMemoryWithoutUpdate ()Lcom/fs/starfarer/api/campaign/rules/MemoryAPI; 1 
L2468:  ldc_w '$mayGoIntoAbyss' 
L2471:  iconst_1 
L2472:  invokestatic Method java/lang/Boolean valueOf (Z)Ljava/lang/Boolean; 
L2475:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/rules/MemoryAPI set (Ljava/lang/String;Ljava/lang/Object;)V 3 
L2480:  goto L4307 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Object com/fs/starfarer/util/A/new Float Object java/util/List Object com/fs/starfarer/util/A/C Object java/util/Iterator 
            stack 
        .end stack 
L2483:  aload 4 
L2485:  invokevirtual Method com/fs/starfarer/util/A/C isCtrlDown ()Z 
L2488:  ifeq L3033 
        .catch java/lang/Exception from L2491 to L3015 using L3018 
L2491:  new java/util/ArrayList 
L2494:  dup 
L2495:  invokespecial Method java/util/ArrayList <init> ()V 
L2498:  astore 6 
L2500:  aload 6 
L2502:  ldc_w 'hegemony' 
L2505:  invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L2510:  pop 
L2511:  fconst_0 
L2512:  fstore 7 
L2514:  aload 6 
L2516:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L2521:  astore 9 
L2523:  goto L3005 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Object com/fs/starfarer/util/A/new Float Object java/util/List Object com/fs/starfarer/util/A/C Object java/util/Iterator Object java/util/List Float Top Object java/util/Iterator 
            stack 
        .end stack 
L2526:  aload 9 
L2528:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L2533:  checkcast java/lang/String 
L2536:  astore 8 
L2538:  invokestatic Method com/fs/starfarer/api/Global getSector ()Lcom/fs/starfarer/api/campaign/SectorAPI; 
L2541:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorAPI getEconomy ()Lcom/fs/starfarer/api/campaign/econ/EconomyAPI; 1 
L2546:  ldc_w 'jangala' 
L2549:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/econ/EconomyAPI getMarket (Ljava/lang/String;)Lcom/fs/starfarer/api/campaign/econ/MarketAPI; 2 
L2554:  astore 10 
L2556:  new com/fs/starfarer/api/impl/campaign/missions/cb/MilitaryCustomBounty 
L2559:  dup 
L2560:  invokespecial Method com/fs/starfarer/api/impl/campaign/missions/cb/MilitaryCustomBounty <init> ()V 
L2563:  astore 11 
L2565:  aload 11 
L2567:  getstatic Field com/fs/starfarer/api/util/Misc random Ljava/util/Random; 
L2570:  invokevirtual Method com/fs/starfarer/api/impl/campaign/missions/cb/MilitaryCustomBounty setGenRandom (Ljava/util/Random;)V 
L2573:  invokestatic Method com/fs/starfarer/api/Global getSector ()Lcom/fs/starfarer/api/campaign/SectorAPI; 
L2576:  aload 8 
L2578:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorAPI getFaction (Ljava/lang/String;)Lcom/fs/starfarer/api/campaign/FactionAPI; 2 
L2583:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/FactionAPI createRandomPerson ()Lcom/fs/starfarer/api/characters/PersonAPI; 1 
L2588:  astore 12 
L2590:  aload 12 
L2592:  ldc_w 'tritachyon' 
L2595:  invokeinterface InterfaceMethod com/fs/starfarer/api/characters/PersonAPI setFaction (Ljava/lang/String;)V 2 
L2600:  aload 12 
L2602:  ldc_w 'hegemony' 
L2605:  invokeinterface InterfaceMethod com/fs/starfarer/api/characters/PersonAPI setFaction (Ljava/lang/String;)V 2 
L2610:  aload 11 
L2612:  aload 12 
L2614:  invokevirtual Method com/fs/starfarer/api/impl/campaign/missions/cb/MilitaryCustomBounty setPersonOverride (Lcom/fs/starfarer/api/characters/PersonAPI;)V 
L2617:  new com/fs/starfarer/api/impl/campaign/missions/cb/CBDerelict 
L2620:  dup 
L2621:  invokespecial Method com/fs/starfarer/api/impl/campaign/missions/cb/CBDerelict <init> ()V 
L2624:  astore 13 
L2626:  new com/fs/starfarer/api/impl/campaign/missions/cb/CBMerc 
L2629:  dup 
L2630:  invokespecial Method com/fs/starfarer/api/impl/campaign/missions/cb/CBMerc <init> ()V 
L2633:  astore 13 
L2635:  new com/fs/starfarer/api/impl/campaign/missions/cb/CBPather 
L2638:  dup 
L2639:  invokespecial Method com/fs/starfarer/api/impl/campaign/missions/cb/CBPather <init> ()V 
L2642:  astore 13 
L2644:  new com/fs/starfarer/api/impl/campaign/missions/cb/CBMercUW 
L2647:  dup 
L2648:  invokespecial Method com/fs/starfarer/api/impl/campaign/missions/cb/CBMercUW <init> ()V 
L2651:  astore 13 
L2653:  new com/fs/starfarer/api/impl/campaign/missions/cb/CBDeserter 
L2656:  dup 
L2657:  invokespecial Method com/fs/starfarer/api/impl/campaign/missions/cb/CBDeserter <init> ()V 
L2660:  astore 13 
L2662:  new com/fs/starfarer/api/impl/campaign/missions/cb/CBPirate 
L2665:  dup 
L2666:  invokespecial Method com/fs/starfarer/api/impl/campaign/missions/cb/CBPirate <init> ()V 
L2669:  astore 13 
L2671:  new com/fs/starfarer/api/impl/campaign/missions/cb/CBRemnant 
L2674:  dup 
L2675:  invokespecial Method com/fs/starfarer/api/impl/campaign/missions/cb/CBRemnant <init> ()V 
L2678:  astore 13 
L2680:  new com/fs/starfarer/api/impl/campaign/missions/cb/CBRemnantPlus 
L2683:  dup 
L2684:  invokespecial Method com/fs/starfarer/api/impl/campaign/missions/cb/CBRemnantPlus <init> ()V 
L2687:  astore 13 
L2689:  aload 13 
L2691:  invokevirtual Method com/fs/starfarer/api/impl/campaign/missions/cb/BaseCustomBountyCreator getMinDifficulty ()I 
L2694:  istore 14 
L2696:  aload 13 
L2698:  invokevirtual Method com/fs/starfarer/api/impl/campaign/missions/cb/BaseCustomBountyCreator getMaxDifficulty ()I 
L2701:  istore 15 
L2703:  bipush 8 
L2705:  dup 
L2706:  istore 15 
L2708:  istore 14 
L2710:  bipush 10 
L2712:  dup 
L2713:  istore 15 
L2715:  istore 14 
L2717:  bipush 10 
L2719:  dup 
L2720:  istore 15 
L2722:  istore 14 
L2724:  iload 14 
L2726:  istore 16 
L2728:  goto L2990 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Object com/fs/starfarer/util/A/new Float Object java/util/List Object com/fs/starfarer/util/A/C Object java/util/Iterator Object java/util/List Float Object java/lang/String Object java/util/Iterator Object com/fs/starfarer/api/campaign/econ/MarketAPI Object com/fs/starfarer/api/impl/campaign/missions/cb/MilitaryCustomBounty Object com/fs/starfarer/api/characters/PersonAPI Object com/fs/starfarer/api/impl/campaign/missions/cb/BaseCustomBountyCreator Integer Integer Integer 
            stack 
        .end stack 
L2731:  iload 16 
L2733:  istore 17 
L2735:  aload 13 
L2737:  aload 10 
L2739:  aload 11 
L2741:  iload 17 
L2743:  getstatic Field com/fs/starfarer/api/impl/campaign/missions/cb/BaseCustomBounty$Stage BOUNTY Lcom/fs/starfarer/api/impl/campaign/missions/cb/BaseCustomBounty$Stage; 
L2746:  invokevirtual Method com/fs/starfarer/api/impl/campaign/missions/cb/BaseCustomBountyCreator createBounty (Lcom/fs/starfarer/api/campaign/econ/MarketAPI;Lcom/fs/starfarer/api/impl/campaign/missions/hub/HubMissionWithBarEvent;ILjava/lang/Object;)Lcom/fs/starfarer/api/impl/campaign/missions/cb/CustomBountyCreator$CustomBountyData; 
L2749:  astore 18 
L2751:  aload 18 
L2753:  getfield Field com/fs/starfarer/api/impl/campaign/missions/cb/CustomBountyCreator$CustomBountyData fleet Lcom/fs/starfarer/api/campaign/CampaignFleetAPI; 
L2756:  ldc_w Class com/fs/starfarer/api/impl/campaign/missions/hub/TriggerFleetAssignmentAI 
L2759:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI removeScriptsOfClass (Ljava/lang/Class;)V 2 
L2764:  aload 18 
L2766:  getfield Field com/fs/starfarer/api/impl/campaign/missions/cb/CustomBountyCreator$CustomBountyData fleet Lcom/fs/starfarer/api/campaign/CampaignFleetAPI; 
L2769:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI clearAssignments ()V 1 
L2774:  aload 18 
L2776:  getfield Field com/fs/starfarer/api/impl/campaign/missions/cb/CustomBountyCreator$CustomBountyData fleet Lcom/fs/starfarer/api/campaign/CampaignFleetAPI; 
L2779:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getContainingLocation ()Lcom/fs/starfarer/api/campaign/LocationAPI; 1 
L2784:  aload 18 
L2786:  getfield Field com/fs/starfarer/api/impl/campaign/missions/cb/CustomBountyCreator$CustomBountyData fleet Lcom/fs/starfarer/api/campaign/CampaignFleetAPI; 
L2789:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/LocationAPI removeEntity (Lcom/fs/starfarer/api/campaign/SectorEntityToken;)V 2 
L2794:  invokestatic Method com/fs/starfarer/api/Global getSector ()Lcom/fs/starfarer/api/campaign/SectorAPI; 
L2797:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorAPI getCurrentLocation ()Lcom/fs/starfarer/api/campaign/LocationAPI; 1 
L2802:  aload 18 
L2804:  getfield Field com/fs/starfarer/api/impl/campaign/missions/cb/CustomBountyCreator$CustomBountyData fleet Lcom/fs/starfarer/api/campaign/CampaignFleetAPI; 
L2807:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/LocationAPI addEntity (Lcom/fs/starfarer/api/campaign/SectorEntityToken;)V 2 
L2812:  aload 18 
L2814:  getfield Field com/fs/starfarer/api/impl/campaign/missions/cb/CustomBountyCreator$CustomBountyData fleet Lcom/fs/starfarer/api/campaign/CampaignFleetAPI; 
L2817:  invokestatic Method com/fs/starfarer/api/Global getSector ()Lcom/fs/starfarer/api/campaign/SectorAPI; 
L2820:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorAPI getPlayerFleet ()Lcom/fs/starfarer/api/campaign/CampaignFleetAPI; 1 
L2825:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L2830:  getfield Field org/lwjgl/util/vector/Vector2f x F 
L2833:  ldc_w +200.0f 
L2836:  fadd 
L2837:  bipush 25 
L2839:  iload 16 
L2841:  imul 
L2842:  i2f 
L2843:  fsub 
L2844:  fload 7 
L2846:  fadd 
L2847:  invokestatic Method com/fs/starfarer/api/Global getSector ()Lcom/fs/starfarer/api/campaign/SectorAPI; 
L2850:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorAPI getPlayerFleet ()Lcom/fs/starfarer/api/campaign/CampaignFleetAPI; 1 
L2855:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L2860:  getfield Field org/lwjgl/util/vector/Vector2f y F 
L2863:  ldc_w +350.0f 
L2866:  fadd 
L2867:  ldc_w +50.0f 
L2870:  iload 16 
L2872:  i2f 
L2873:  fmul 
L2874:  fsub 
L2875:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI setLocation (FF)V 3 
L2880:  aload 18 
L2882:  getfield Field com/fs/starfarer/api/impl/campaign/missions/cb/CustomBountyCreator$CustomBountyData fleet Lcom/fs/starfarer/api/campaign/CampaignFleetAPI; 
L2885:  new java/lang/StringBuilder 
L2888:  dup 
L2889:  aload 18 
L2891:  getfield Field com/fs/starfarer/api/impl/campaign/missions/cb/CustomBountyCreator$CustomBountyData fleet Lcom/fs/starfarer/api/campaign/CampaignFleetAPI; 
L2894:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getName ()Ljava/lang/String; 1 
L2899:  invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L2902:  invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L2905:  ldc_w ' [' 
L2908:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L2911:  iload 16 
L2913:  invokevirtual Method java/lang/StringBuilder append (I)Ljava/lang/StringBuilder; 
L2916:  ldc_w ']' 
L2919:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L2922:  invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L2925:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI setName (Ljava/lang/String;)V 2 
L2930:  aload 18 
L2932:  getfield Field com/fs/starfarer/api/impl/campaign/missions/cb/CustomBountyCreator$CustomBountyData fleet Lcom/fs/starfarer/api/campaign/CampaignFleetAPI; 
L2935:  checkcast com/fs/starfarer/campaign/fleet/CampaignFleet 
L2938:  invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getSensorContactFader ()Lcom/fs/graphics/util/Fader; 
L2941:  invokevirtual Method com/fs/graphics/util/Fader forceIn ()V 
L2944:  getstatic Field java/lang/System out Ljava/io/PrintStream; 
L2947:  new java/lang/StringBuilder 
L2950:  dup 
L2951:  aload 18 
L2953:  getfield Field com/fs/starfarer/api/impl/campaign/missions/cb/CustomBountyCreator$CustomBountyData fleet Lcom/fs/starfarer/api/campaign/CampaignFleetAPI; 
L2956:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getName ()Ljava/lang/String; 1 
L2961:  invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L2964:  invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L2967:  ldc_w ' bounty: ' 
L2970:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L2973:  aload 18 
L2975:  getfield Field [c1792] baseReward I 
L2978:  invokevirtual Method java/lang/StringBuilder append (I)Ljava/lang/StringBuilder; 
L2981:  invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L2984:  invokevirtual Method java/io/PrintStream println (Ljava/lang/String;)V 
L2987:  iinc 16 1 

        .stack same_extended 
L2990:  iload 16 
L2992:  iload 15 
L2994:  if_icmple L2731 
L2997:  fload 7 
L2999:  ldc_w +200.0f 
L3002:  fadd 
L3003:  fstore 7 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Object com/fs/starfarer/util/A/new Float Object java/util/List Object com/fs/starfarer/util/A/C Object java/util/Iterator Object java/util/List Float Top Object java/util/Iterator 
            stack 
        .end stack 
L3005:  aload 9 
L3007:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L3012:  ifne L2526 
L3015:  goto L4307 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Object com/fs/starfarer/util/A/new Float Object java/util/List Object com/fs/starfarer/util/A/C Object java/util/Iterator 
            stack Object java/lang/Exception 
        .end stack 
L3018:  astore 6 
L3020:  getstatic Field com/fs/starfarer/campaign/CampaignState log Lorg/apache/log4j/Logger; 
L3023:  aload 6 
L3025:  invokevirtual Method java/lang/Exception getMessage ()Ljava/lang/String; 
L3028:  aload 6 
L3030:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;Ljava/lang/Throwable;)V 

        .stack same 
L3033:  ldc_w 'independent' 
L3036:  astore 6 
L3038:  invokestatic Method java/lang/Math random ()D 
L3041:  pop2 
L3042:  ldc_w 'pirates' 
L3045:  astore 6 
L3047:  new org/lwjgl/util/vector/Vector2f 
L3050:  dup 
L3051:  aload_0 
L3052:  getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L3055:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L3058:  invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L3061:  getfield Field org/lwjgl/util/vector/Vector2f x F 
L3064:  ldc_w +200.0f 
L3067:  invokestatic Method java/lang/Math random ()D 
L3070:  d2f 
L3071:  ldc +0.5f 
L3073:  fsub 
L3074:  fmul 
L3075:  fadd 
L3076:  aload_0 
L3077:  getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L3080:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L3083:  invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L3086:  getfield Field org/lwjgl/util/vector/Vector2f y F 
L3089:  ldc_w +200.0f 
L3092:  invokestatic Method java/lang/Math random ()D 
L3095:  d2f 
L3096:  ldc +0.5f 
L3098:  fsub 
L3099:  fmul 
L3100:  fadd 
L3101:  invokespecial Method org/lwjgl/util/vector/Vector2f <init> (FF)V 
L3104:  astore 7 
L3106:  ldc_w 'omega' 
L3109:  astore 6 
L3111:  ldc_w 'player' 
L3114:  astore 6 
L3116:  ldc_w 'sindrian_diktat' 
L3119:  astore 6 
L3121:  ldc_w 'mercenary' 
L3124:  astore 6 
L3126:  ldc_w 'luddic_path' 
L3129:  astore 6 
L3131:  ldc_w 'lions_guard' 
L3134:  astore 6 
L3136:  ldc_w 'remnant' 
L3139:  astore 6 
L3141:  ldc_w 'independent' 
L3144:  astore 6 
L3146:  ldc_w 'derelict' 
L3149:  astore 6 
L3151:  ldc_w 'hegemony' 
L3154:  astore 6 
L3156:  ldc_w 'luddic_church' 
L3159:  astore 6 
L3161:  ldc_w 'persean' 
L3164:  astore 6 
L3166:  ldc_w 'tritachyon' 
L3169:  astore 6 
L3171:  ldc_w 'pirates' 
L3174:  astore 6 
L3176:  invokestatic Method com/fs/starfarer/api/Global getSector ()Lcom/fs/starfarer/api/campaign/SectorAPI; 
L3179:  aload 6 
L3181:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorAPI getFaction (Ljava/lang/String;)Lcom/fs/starfarer/api/campaign/FactionAPI; 2 
L3186:  astore 8 
L3188:  iconst_0 
L3189:  istore 9 
L3191:  goto L3598 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Object com/fs/starfarer/util/A/new Float Object java/util/List Object com/fs/starfarer/util/A/C Object java/util/Iterator Object java/lang/String Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/api/campaign/FactionAPI Integer 
            stack 
        .end stack 
L3194:  ldc_w +750.0f 
L3197:  fstore 10 
L3199:  ldc_w +50.0f 
L3202:  fstore 10 
L3204:  aload 8 
L3206:  getstatic Field com/fs/starfarer/api/campaign/FactionAPI$ShipPickMode PRIORITY_THEN_ALL Lcom/fs/starfarer/api/campaign/FactionAPI$ShipPickMode; 
L3209:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/FactionAPI getApproximateMaxFPPerFleet (Lcom/fs/starfarer/api/campaign/FactionAPI$ShipPickMode;)F 2 
L3214:  fstore 10 
L3216:  fload 10 
L3218:  ldc_w +0.20000000298023224f 
L3221:  fmul 
L3222:  fstore 11 
L3224:  ldc_w +317.0f 
L3227:  fstore 10 
L3229:  fconst_0 
L3230:  fstore 11 
L3232:  ldc_w +20.0f 
L3235:  fstore 11 
L3237:  ldc_w +300.0f 
L3240:  fstore 10 
L3242:  ldc_w +300.0f 
L3245:  fstore 10 
L3247:  fconst_0 
L3248:  fstore 11 
L3250:  new com/fs/starfarer/api/impl/campaign/fleets/FleetParamsV3 
L3253:  dup 
L3254:  invokestatic Method com/fs/starfarer/api/Global getSector ()Lcom/fs/starfarer/api/campaign/SectorAPI; 
L3257:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorAPI getPlayerFleet ()Lcom/fs/starfarer/api/campaign/CampaignFleetAPI; 1 
L3262:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getLocationInHyperspace ()Lorg/lwjgl/util/vector/Vector2f; 1 
L3267:  aload 6 
L3269:  aconst_null 
L3270:  ldc_w 'patrolLarge' 
L3273:  fload 10 
L3275:  fload 11 
L3277:  fload 11 
L3279:  ldc +0.5f 
L3281:  fmul 
L3282:  fload 11 
L3284:  ldc +0.5f 
L3286:  fmul 
L3287:  fconst_0 
L3288:  fconst_0 
L3289:  fconst_1 
L3290:  invokespecial Method com/fs/starfarer/api/impl/campaign/fleets/FleetParamsV3 <init> (Lorg/lwjgl/util/vector/Vector2f;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;FFFFFFF)V 
L3293:  astore 12 
L3295:  aload 12 
L3297:  iconst_1 
L3298:  invokestatic Method java/lang/Boolean valueOf (Z)Ljava/lang/Boolean; 
L3301:  putfield Field com/fs/starfarer/api/impl/campaign/fleets/FleetParamsV3 ignoreMarketFleetSizeMult Ljava/lang/Boolean; 
L3304:  aload 12 
L3306:  getstatic Field com/fs/starfarer/api/campaign/FactionAPI$ShipPickMode PRIORITY_THEN_ALL Lcom/fs/starfarer/api/campaign/FactionAPI$ShipPickMode; 
L3309:  putfield Field com/fs/starfarer/api/impl/campaign/fleets/FleetParamsV3 modeOverride Lcom/fs/starfarer/api/campaign/FactionAPI$ShipPickMode; 
L3312:  aload 12 
L3314:  invokestatic Method com/fs/starfarer/api/impl/campaign/fleets/FleetFactoryV3 createFleet (Lcom/fs/starfarer/api/impl/campaign/fleets/FleetParamsV3;)Lcom/fs/starfarer/api/campaign/CampaignFleetAPI; 
L3317:  astore 13 
L3319:  aload 13 
L3321:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getMemoryWithoutUpdate ()Lcom/fs/starfarer/api/campaign/rules/MemoryAPI; 1 
L3326:  ldc_w '$isPirate' 
L3329:  iconst_1 
L3330:  invokestatic Method java/lang/Boolean valueOf (Z)Ljava/lang/Boolean; 
L3333:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/rules/MemoryAPI set (Ljava/lang/String;Ljava/lang/Object;)V 3 
L3338:  aload 13 
L3340:  ifnull L3595 
L3343:  aload_0 
L3344:  getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L3347:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getCurrentLocation ()Lcom/fs/starfarer/campaign/BaseLocation; 
L3350:  aload_0 
L3351:  getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L3354:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L3357:  ldc_w +200.0f 
L3360:  invokestatic Method java/lang/Math random ()D 
L3363:  d2f 
L3364:  ldc +0.5f 
L3366:  fsub 
L3367:  fmul 
L3368:  ldc_w +200.0f 
L3371:  invokestatic Method java/lang/Math random ()D 
L3374:  d2f 
L3375:  ldc +0.5f 
L3377:  fsub 
L3378:  fmul 
L3379:  aload 13 
L3381:  invokevirtual Method com/fs/starfarer/campaign/BaseLocation spawnFleet (Lcom/fs/starfarer/api/campaign/SectorEntityToken;FFLcom/fs/starfarer/api/campaign/CampaignFleetAPI;)V 
L3384:  getstatic Field java/lang/System out Ljava/io/PrintStream; 
L3387:  invokevirtual Method java/io/PrintStream println ()V 
L3390:  getstatic Field java/lang/System out Ljava/io/PrintStream; 
L3393:  new java/lang/StringBuilder 
L3396:  dup 
L3397:  aload 8 
L3399:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/FactionAPI getDisplayName ()Ljava/lang/String; 1 
L3404:  invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L3407:  invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L3410:  ldc_w ' max FP (imported): ' 
L3413:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L3416:  aload 8 
L3418:  getstatic Field com/fs/starfarer/api/campaign/FactionAPI$ShipPickMode IMPORTED Lcom/fs/starfarer/api/campaign/FactionAPI$ShipPickMode; 
L3421:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/FactionAPI getApproximateMaxFPPerFleet (Lcom/fs/starfarer/api/campaign/FactionAPI$ShipPickMode;)F 2 
L3426:  invokevirtual Method java/lang/StringBuilder append (F)Ljava/lang/StringBuilder; 
L3429:  invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L3432:  invokevirtual Method java/io/PrintStream println (Ljava/lang/String;)V 
L3435:  getstatic Field java/lang/System out Ljava/io/PrintStream; 
L3438:  new java/lang/StringBuilder 
L3441:  dup 
L3442:  aload 8 
L3444:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/FactionAPI getDisplayName ()Ljava/lang/String; 1 
L3449:  invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L3452:  invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L3455:  ldc_w ' max FP (produced): ' 
L3458:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L3461:  aload 8 
L3463:  getstatic Field com/fs/starfarer/api/campaign/FactionAPI$ShipPickMode PRIORITY_THEN_ALL Lcom/fs/starfarer/api/campaign/FactionAPI$ShipPickMode; 
L3466:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/FactionAPI getApproximateMaxFPPerFleet (Lcom/fs/starfarer/api/campaign/FactionAPI$ShipPickMode;)F 2 
L3471:  invokevirtual Method java/lang/StringBuilder append (F)Ljava/lang/StringBuilder; 
L3474:  invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L3477:  invokevirtual Method java/io/PrintStream println (Ljava/lang/String;)V 
L3480:  getstatic Field java/lang/System out Ljava/io/PrintStream; 
L3483:  new java/lang/StringBuilder 
L3486:  dup 
L3487:  ldc_w 'Doctrine ship size: ' 
L3490:  invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L3493:  aload 8 
L3495:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/FactionAPI getDoctrine ()Lcom/fs/starfarer/api/campaign/FactionDoctrineAPI; 1 
L3500:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/FactionDoctrineAPI getShipSize ()I 1 
L3505:  invokevirtual Method java/lang/StringBuilder append (I)Ljava/lang/StringBuilder; 
L3508:  invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L3511:  invokevirtual Method java/io/PrintStream println (Ljava/lang/String;)V 
L3514:  getstatic Field java/lang/System out Ljava/io/PrintStream; 
L3517:  new java/lang/StringBuilder 
L3520:  dup 
L3521:  ldc_w 'Spawned FP: ' 
L3524:  invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L3527:  aload 13 
L3529:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getFleetPoints ()I 1 
L3534:  invokevirtual Method java/lang/StringBuilder append (I)Ljava/lang/StringBuilder; 
L3537:  ldc_w ', goal was ' 
L3540:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L3543:  fload 10 
L3545:  fload 11 
L3547:  fconst_2 
L3548:  fmul 
L3549:  fadd 
L3550:  invokevirtual Method java/lang/StringBuilder append (F)Ljava/lang/StringBuilder; 
L3553:  invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L3556:  invokevirtual Method java/io/PrintStream println (Ljava/lang/String;)V 
L3559:  aload 13 
L3561:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getFleetData ()Lcom/fs/starfarer/api/campaign/FleetDataAPI; 1 
L3566:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/FleetDataAPI setSyncNeeded ()V 1 
L3571:  aload 13 
L3573:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getFleetData ()Lcom/fs/starfarer/api/campaign/FleetDataAPI; 1 
L3578:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/FleetDataAPI syncIfNeeded ()V 1 
L3583:  aload 13 
L3585:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getFleetData ()Lcom/fs/starfarer/api/campaign/FleetDataAPI; 1 
L3590:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/FleetDataAPI sort ()V 1 

        .stack same_extended 
L3595:  iinc 9 1 

        .stack same 
L3598:  iload 9 
L3600:  iconst_1 
L3601:  if_icmplt L3194 
L3604:  goto L4307 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Object com/fs/starfarer/util/A/new Float Object java/util/List Object com/fs/starfarer/util/A/C Object java/util/Iterator 
            stack 
        .end stack 
L3607:  aload 4 
L3609:  invokevirtual Method com/fs/starfarer/util/A/C isKeyDownEvent ()Z 
L3612:  ifeq L3706 
L3615:  aload 4 
L3617:  invokevirtual Method com/fs/starfarer/util/A/C getEventValue ()I 
L3620:  bipush 37 
L3622:  if_icmpne L3706 
L3625:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'OÓ0000' ()Z 
L3628:  ifeq L3706 
L3631:  sipush 184 
L3634:  invokestatic Method org/lwjgl/input/Keyboard isKeyDown (I)Z 
L3637:  ifne L3706 
L3640:  aload_0 
L3641:  getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L3644:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L3647:  invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getCargo ()Lcom/fs/starfarer/campaign/fleet/CargoData; 
L3650:  invokevirtual Method com/fs/starfarer/campaign/fleet/CargoData getCredits ()Lcom/fs/starfarer/api/util/MutableValue; 
L3653:  ldc_w +25000.0f 
L3656:  invokevirtual Method com/fs/starfarer/api/util/MutableValue add (F)V 
L3659:  aload_0 
L3660:  ldc_w 'Gained 25000 credits' 
L3663:  invokevirtual Method com/fs/starfarer/campaign/CampaignState addMessage (Ljava/lang/String;)V 
L3666:  getstatic Field com/fs/starfarer/api/impl/campaign/DebugFlags FORCE_REGEN_AUTOMATED_DEFENSES Z 
L3669:  ifeq L3676 
L3672:  iconst_0 
L3673:  goto L3677 

        .stack same_extended 
L3676:  iconst_1 

        .stack stack_1 Integer 
L3677:  putstatic Field com/fs/starfarer/api/impl/campaign/DebugFlags FORCE_REGEN_AUTOMATED_DEFENSES Z 
L3680:  aload_0 
L3681:  new java/lang/StringBuilder 
L3684:  dup 
L3685:  ldc_w 'FORCE_REGEN_AUTOMATED_DEFENSES: ' 
L3688:  invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L3691:  getstatic Field com/fs/starfarer/api/impl/campaign/DebugFlags FORCE_REGEN_AUTOMATED_DEFENSES Z 
L3694:  invokevirtual Method java/lang/StringBuilder append (Z)Ljava/lang/StringBuilder; 
L3697:  invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L3700:  invokevirtual Method com/fs/starfarer/campaign/CampaignState addMessage (Ljava/lang/String;)V 
L3703:  goto L4307 

        .stack same 
L3706:  aload 4 
L3708:  invokevirtual Method com/fs/starfarer/util/A/C isKeyDownEvent ()Z 
L3711:  ifeq L3866 
L3714:  aload 4 
L3716:  invokevirtual Method com/fs/starfarer/util/A/C getEventValue ()I 
L3719:  bipush 38 
L3721:  if_icmpne L3866 
L3724:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'OÓ0000' ()Z 
L3727:  ifeq L3866 
L3730:  iconst_1 
L3731:  istore 6 
L3733:  aload 4 
L3735:  invokevirtual Method com/fs/starfarer/util/A/C isShiftDown ()Z 
L3738:  ifeq L3745 
L3741:  bipush 10 
L3743:  istore 6 

        .stack append Integer 
L3745:  iconst_0 
L3746:  istore 7 
L3748:  goto L3767 

        .stack append Integer 
L3751:  aload_0 
L3752:  getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L3755:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerStats ()Lcom/fs/starfarer/campaign/CharacterStats; 
L3758:  ldc2_w 50000L 
L3761:  invokevirtual Method com/fs/starfarer/campaign/CharacterStats addXP (J)V 
L3764:  iinc 7 1 

        .stack same 
L3767:  iload 7 
L3769:  iload 6 
L3771:  if_icmplt L3751 
L3774:  iconst_0 
L3775:  istore 7 
L3777:  goto L3846 

        .stack same 
L3780:  aload_0 
L3781:  getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L3784:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L3787:  invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getFleetData ()Lcom/fs/starfarer/campaign/fleet/FleetData; 
L3790:  invokevirtual Method com/fs/starfarer/campaign/fleet/FleetData getOfficers ()Ljava/util/List; 
L3793:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L3798:  astore 9 
L3800:  goto L3833 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Object com/fs/starfarer/util/A/new Float Object java/util/List Object com/fs/starfarer/util/A/C Object java/util/Iterator Integer Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L3803:  aload 9 
L3805:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L3810:  checkcast com/fs/starfarer/rpg/OfficerData 
L3813:  astore 8 
L3815:  aload 8 
L3817:  ldc_w +10000.0f 
L3820:  ldc_w +10000.0f 
L3823:  invokestatic Method java/lang/Math random ()D 
L3826:  d2f 
L3827:  fmul 
L3828:  fadd 
L3829:  f2l 
L3830:  invokevirtual Method com/fs/starfarer/rpg/OfficerData addXP (J)V 

        .stack same 
L3833:  aload 9 
L3835:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L3840:  ifne L3803 
L3843:  iinc 7 1 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Object com/fs/starfarer/util/A/new Float Object java/util/List Object com/fs/starfarer/util/A/C Object java/util/Iterator Integer Integer 
            stack 
        .end stack 
L3846:  iload 7 
L3848:  iload 6 
L3850:  if_icmplt L3780 
L3853:  aload_0 
L3854:  getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L3857:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerStats ()Lcom/fs/starfarer/campaign/CharacterStats; 
L3860:  invokevirtual Method com/fs/starfarer/campaign/CharacterStats levelUpIfNeeded ()V 
L3863:  goto L4307 

        .stack chop 2 
L3866:  aload 4 
L3868:  invokevirtual Method com/fs/starfarer/util/A/C isKeyDownEvent ()Z 
L3871:  ifeq L3895 
L3874:  aload 4 
L3876:  invokevirtual Method com/fs/starfarer/util/A/C getEventValue ()I 
L3879:  iconst_1 
L3880:  if_icmpne L3895 
L3883:  aload_0 
L3884:  invokevirtual Method com/fs/starfarer/campaign/CampaignState showMenu ()V 
L3887:  aload 4 
L3889:  invokevirtual Method com/fs/starfarer/util/A/C consume ()V 
L3892:  goto L4307 

        .stack same 
L3895:  aload 4 
L3897:  getstatic Field [c1319] 'Ô00000' [u903] 
L3900:  getstatic Field [c1295] 'ôÔ0000' [u882] 
L3903:  invokestatic Method [c1301] o00000 [u906] 
L3906:  ifeq L3990 
L3909:  aload_0 
L3910:  invokevirtual Method com/fs/starfarer/campaign/CampaignState doubleRender ()V 
L3913:  invokestatic Method com/fs/graphics/util/B 'Ô00000' ()J 
L3916:  lstore 6 
L3918:  aload_0 
L3919:  invokestatic Method com/fs/starfarer/campaign/save/CampaignGameManager o00000 (Lcom/fs/starfarer/campaign/CampaignEngine$o;)Ljava/lang/String; 
L3922:  astore 8 
L3924:  invokestatic Method com/fs/graphics/util/B 'Ô00000' ()J 
L3927:  lstore 9 
L3929:  getstatic Field java/lang/System out Ljava/io/PrintStream; 
L3932:  new java/lang/StringBuilder 
L3935:  dup 
L3936:  ldc_w 'Time quicksaving: ' 
L3939:  invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L3942:  lload 6 
L3944:  lload 9 
L3946:  lsub 
L3947:  l2f 
L3948:  invokestatic Method com/fs/starfarer/api/util/Misc getWithDGS (F)Ljava/lang/String; 
L3951:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L3954:  ldc_w ' ms' 
L3957:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L3960:  invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L3963:  invokevirtual Method java/io/PrintStream println (Ljava/lang/String;)V 
L3966:  aload 8 
L3968:  ifnull L3982 
L3971:  aload_0 
L3972:  aload 8 
L3974:  invokevirtual Method com/fs/starfarer/campaign/CampaignState showMessageDialog (Ljava/lang/String;)V 
L3977:  aload_0 
L3978:  iconst_1 
L3979:  putfield Field com/fs/starfarer/campaign/CampaignState wasPaused Z 

        .stack append Long Object java/lang/String Long 
L3982:  aload 4 
L3984:  invokevirtual Method com/fs/starfarer/util/A/C consume ()V 
L3987:  goto L4307 

        .stack chop 3 
L3990:  aload 4 
L3992:  getstatic Field [c1319] 'Ô00000' [u903] 
L3995:  getstatic Field [c1295] 'õÕ0000' [u882] 
L3998:  invokestatic Method [c1301] o00000 [u906] 
L4001:  ifeq L4093 
L4004:  aload_0 
L4005:  getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L4008:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine isIronMode ()Z 
L4011:  ifeq L4036 
L4014:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'OÓ0000' ()Z 
L4017:  ifne L4036 
L4020:  aload_0 
L4021:  invokevirtual Method com/fs/starfarer/campaign/CampaignState getMessageDisplay ()Lcom/fs/starfarer/campaign/ui/O00O; 
L4024:  ldc_w 'Quickload disabled in iron mode' 
L4027:  getstatic Field com/fs/starfarer/O0OO 'ÒÓ0000' Ljava/awt/Color; 
L4030:  invokevirtual Method com/fs/starfarer/campaign/ui/O00O addMessage (Ljava/lang/String;Ljava/awt/Color;)V 
L4033:  goto L4087 

        .stack same 
L4036:  invokestatic Method com/fs/graphics/util/B 'Ô00000' ()J 
L4039:  lstore 6 
L4041:  aload_0 
L4042:  invokevirtual Method com/fs/starfarer/campaign/CampaignState quickLoad ()V 
L4045:  invokestatic Method com/fs/graphics/util/B 'Ô00000' ()J 
L4048:  lstore 8 
L4050:  getstatic Field java/lang/System out Ljava/io/PrintStream; 
L4053:  new java/lang/StringBuilder 
L4056:  dup 
L4057:  ldc_w 'Time quickloading: ' 
L4060:  invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L4063:  lload 6 
L4065:  lload 8 
L4067:  lsub 
L4068:  l2f 
L4069:  invokestatic Method com/fs/starfarer/api/util/Misc getWithDGS (F)Ljava/lang/String; 
L4072:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L4075:  ldc_w ' ms' 
L4078:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L4081:  invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L4084:  invokevirtual Method java/io/PrintStream println (Ljava/lang/String;)V 

        .stack same 
L4087:  aload 4 
L4089:  invokevirtual Method com/fs/starfarer/util/A/C consume ()V 
L4092:  return 

        .stack same 
L4093:  aload 4 
L4095:  getstatic Field [c1319] 'Ô00000' [u903] 
L4098:  getstatic Field [c1295] 'Oõ0000' [u882] 
L4101:  invokestatic Method [c1301] o00000 [u906] 
L4104:  ifeq L4307 
L4107:  aconst_null 
L4108:  astore 6 
L4110:  aload_0 
L4111:  getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L4114:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getTooltipManager ()Lcom/fs/starfarer/campaign/OOoO; 
L4117:  astore 7 
L4119:  aload 7 
L4121:  ifnull L4297 
L4124:  aload 7 
L4126:  invokevirtual Method com/fs/starfarer/campaign/OOoO 'Ò00000' ()Lcom/fs/starfarer/campaign/CampaignEntity; 
L4129:  instanceof com/fs/starfarer/campaign/CustomCampaignEntity 
L4132:  ifeq L4253 
L4135:  aload 7 
L4137:  invokevirtual Method com/fs/starfarer/campaign/OOoO 'Ò00000' ()Lcom/fs/starfarer/campaign/CampaignEntity; 
L4140:  checkcast com/fs/starfarer/campaign/CustomCampaignEntity 
L4143:  astore 8 
L4145:  aload 8 
L4147:  invokevirtual Method com/fs/starfarer/campaign/CustomCampaignEntity getCustomPlugin ()Lcom/fs/starfarer/api/campaign/CustomCampaignEntityPlugin; 
L4150:  instanceof com/fs/starfarer/api/impl/campaign/DerelictShipEntityPlugin 
L4153:  ifeq L4297 
L4156:  aload 8 
L4158:  invokevirtual Method com/fs/starfarer/campaign/CustomCampaignEntity getCustomPlugin ()Lcom/fs/starfarer/api/campaign/CustomCampaignEntityPlugin; 
L4161:  checkcast com/fs/starfarer/api/impl/campaign/DerelictShipEntityPlugin 
L4164:  astore 9 
L4166:  aload 9 
L4168:  invokevirtual Method com/fs/starfarer/api/impl/campaign/DerelictShipEntityPlugin getData ()Lcom/fs/starfarer/api/impl/campaign/DerelictShipEntityPlugin$DerelictShipData; 
L4171:  getfield Field com/fs/starfarer/api/impl/campaign/DerelictShipEntityPlugin$DerelictShipData ship Lcom/fs/starfarer/api/impl/campaign/rulecmd/salvage/special/ShipRecoverySpecial$PerShipData; 
L4174:  getfield Field com/fs/starfarer/api/impl/campaign/rulecmd/salvage/special/ShipRecoverySpecial$PerShipData variant Lcom/fs/starfarer/api/combat/ShipVariantAPI; 
L4177:  astore 10 
L4179:  aload 10 
L4181:  ifnonnull L4219 
L4184:  aload 9 
L4186:  invokevirtual Method com/fs/starfarer/api/impl/campaign/DerelictShipEntityPlugin getData ()Lcom/fs/starfarer/api/impl/campaign/DerelictShipEntityPlugin$DerelictShipData; 
L4189:  getfield Field com/fs/starfarer/api/impl/campaign/DerelictShipEntityPlugin$DerelictShipData ship Lcom/fs/starfarer/api/impl/campaign/rulecmd/salvage/special/ShipRecoverySpecial$PerShipData; 
L4192:  getfield Field com/fs/starfarer/api/impl/campaign/rulecmd/salvage/special/ShipRecoverySpecial$PerShipData variantId Ljava/lang/String; 
L4195:  ifnull L4219 
L4198:  invokestatic Method com/fs/starfarer/api/Global getSettings ()Lcom/fs/starfarer/api/SettingsAPI; 
L4201:  aload 9 
L4203:  invokevirtual Method com/fs/starfarer/api/impl/campaign/DerelictShipEntityPlugin getData ()Lcom/fs/starfarer/api/impl/campaign/DerelictShipEntityPlugin$DerelictShipData; 
L4206:  getfield Field com/fs/starfarer/api/impl/campaign/DerelictShipEntityPlugin$DerelictShipData ship Lcom/fs/starfarer/api/impl/campaign/rulecmd/salvage/special/ShipRecoverySpecial$PerShipData; 
L4209:  getfield Field com/fs/starfarer/api/impl/campaign/rulecmd/salvage/special/ShipRecoverySpecial$PerShipData variantId Ljava/lang/String; 
L4212:  invokeinterface InterfaceMethod com/fs/starfarer/api/SettingsAPI getVariant (Ljava/lang/String;)Lcom/fs/starfarer/api/combat/ShipVariantAPI; 2 
L4217:  astore 10 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Object com/fs/starfarer/util/A/new Float Object java/util/List Object com/fs/starfarer/util/A/C Object java/util/Iterator Object java/lang/String Object com/fs/starfarer/campaign/OOoO Object com/fs/starfarer/campaign/CustomCampaignEntity Object com/fs/starfarer/api/impl/campaign/DerelictShipEntityPlugin Object com/fs/starfarer/api/combat/ShipVariantAPI 
            stack 
        .end stack 
L4219:  aload 10 
L4221:  ifnull L4297 
L4224:  aload 10 
L4226:  invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ShipVariantAPI getHullSpec ()Lcom/fs/starfarer/api/combat/ShipHullSpecAPI; 1 
L4231:  invokestatic Method com/fs/starfarer/api/impl/codex/CodexDataV2 getBaseHullId (Lcom/fs/starfarer/api/combat/ShipHullSpecAPI;)Ljava/lang/String; 
L4234:  invokestatic Method com/fs/starfarer/api/impl/codex/CodexDataV2 getShipEntryId (Ljava/lang/String;)Ljava/lang/String; 
L4237:  astore 6 
L4239:  aload 6 
L4241:  invokestatic Method com/fs/starfarer/api/impl/codex/CodexDataV2 hasUnlockedEntry (Ljava/lang/String;)Z 
L4244:  ifne L4297 
L4247:  aconst_null 
L4248:  astore 6 
L4250:  goto L4297 

        .stack chop 3 
L4253:  aload 7 
L4255:  invokevirtual Method com/fs/starfarer/campaign/OOoO 'Ò00000' ()Lcom/fs/starfarer/campaign/CampaignEntity; 
L4258:  instanceof com/fs/starfarer/api/campaign/PlanetAPI 
L4261:  ifeq L4297 
L4264:  aload 7 
L4266:  invokevirtual Method com/fs/starfarer/campaign/OOoO 'Ò00000' ()Lcom/fs/starfarer/campaign/CampaignEntity; 
L4269:  checkcast com/fs/starfarer/api/campaign/PlanetAPI 
L4272:  astore 8 
L4274:  aload 8 
L4276:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/PlanetAPI getTypeId ()Ljava/lang/String; 1 
L4281:  invokestatic Method com/fs/starfarer/api/impl/codex/CodexDataV2 getPlanetEntryId (Ljava/lang/String;)Ljava/lang/String; 
L4284:  astore 6 
L4286:  aload 6 
L4288:  invokestatic Method com/fs/starfarer/api/impl/codex/CodexDataV2 hasUnlockedEntry (Ljava/lang/String;)Z 
L4291:  ifne L4297 
L4294:  aconst_null 
L4295:  astore 6 

        .stack same 
L4297:  aload 6 
L4299:  invokestatic Method com/fs/starfarer/codex2/CodexDialog show (Ljava/lang/String;)V 
L4302:  aload 4 
L4304:  invokevirtual Method com/fs/starfarer/util/A/C consume ()V 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Object com/fs/starfarer/util/A/new Float Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L4307:  aload 5 
L4309:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L4314:  ifne L277 
L4317:  aload_1 
L4318:  invokevirtual Method com/fs/starfarer/util/A/new 'super' ()V 
L4321:  new java/util/ArrayList 
L4324:  dup 
L4325:  invokespecial Method java/util/ArrayList <init> ()V 
L4328:  astore_3 
L4329:  aload_3 
L4330:  aload_1 
L4331:  invokeinterface InterfaceMethod java/util/List addAll (Ljava/util/Collection;)Z 2 
L4336:  pop 
L4337:  aload_3 
L4338:  invokestatic Method com/fs/starfarer/api/campaign/listeners/ListenerUtil processCampaignInputPreFleetControl (Ljava/util/List;)V 
L4341:  aload_0 
L4342:  getfield Field com/fs/starfarer/campaign/CampaignState viewOffset Lcom/fs/starfarer/campaign/int; 
L4345:  ifnull L4366 
L4348:  invokestatic Method com/fs/starfarer/ui/W 'Ó00000' ()Lcom/fs/starfarer/ui/supersuper; 
L4351:  aload_0 
L4352:  getfield Field com/fs/starfarer/campaign/CampaignState viewOffset Lcom/fs/starfarer/campaign/int; 
L4355:  if_acmpeq L4366 
L4358:  aload_0 
L4359:  getfield Field com/fs/starfarer/campaign/CampaignState viewOffset Lcom/fs/starfarer/campaign/int; 
L4362:  aload_1 
L4363:  invokevirtual Method com/fs/starfarer/campaign/int processInput (Lcom/fs/starfarer/util/A/new;)V 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Object com/fs/starfarer/util/A/new Float Object java/util/List 
            stack 
        .end stack 
L4366:  aload_0 
L4367:  aload_1 
L4368:  fload_2 
L4369:  invokevirtual Method com/fs/starfarer/campaign/CampaignState controlPlayerFleet (Lcom/fs/starfarer/util/A/new;F)V 
L4372:  return 
L4373:  
    .end code 
.end method 

.method public quickLoad : ()V 
    .code stack 4 locals 2 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/campaign/CampaignState clearMessages ()V 
L4:     aload_0 
L5:     invokevirtual Method com/fs/starfarer/campaign/CampaignState doubleRender ()V 
L8:     aload_0 
L9:     aload_0 
L10:    iconst_0 
L11:    invokestatic Method com/fs/starfarer/campaign/save/CampaignGameManager o00000 (Lcom/fs/starfarer/campaign/void;Lcom/fs/starfarer/campaign/CampaignEngine$o;Z)Ljava/lang/String; 
L14:    astore_1 
L15:    aload_1 
L16:    ifnonnull L50 
L19:    aload_0 
L20:    invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L23:    putfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L26:    aload_0 
L27:    invokevirtual Method com/fs/starfarer/campaign/CampaignState resetLeakChecker ()V 
L30:    aload_0 
L31:    getfield Field com/fs/starfarer/campaign/CampaignState zoomTracker Lcom/fs/starfarer/util/A; 
L34:    aload_0 
L35:    getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L38:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getUIData ()Lcom/fs/starfarer/campaign/CampaignUIPersistentData; 
L41:    invokevirtual Method com/fs/starfarer/campaign/CampaignUIPersistentData getCampaignZoom ()F 
L44:    invokevirtual Method com/fs/starfarer/util/A new (F)V 
L47:    goto L90 

        .stack append Object java/lang/String 
L50:    aload_0 
L51:    new java/lang/StringBuilder 
L54:    dup 
L55:    ldc_w 'Error loading saved game:\n' 
L58:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L61:    aload_1 
L62:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L65:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L68:    invokevirtual Method com/fs/starfarer/campaign/CampaignState showMessageDialog (Ljava/lang/String;)V 
L71:    aload_0 
L72:    iconst_1 
L73:    putfield Field com/fs/starfarer/campaign/CampaignState wasPaused Z 
L76:    aload_0 
L77:    getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L80:    invokestatic Method com/fs/starfarer/campaign/CampaignEngine setInstance (Lcom/fs/starfarer/campaign/CampaignEngine;)V 
L83:    invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L86:    iconst_1 
L87:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setPaused (Z)V 

        .stack same 
L90:    aload_0 
L91:    aconst_null 
L92:    putfield Field com/fs/starfarer/campaign/CampaignState currDevBattle Lcom/fs/starfarer/campaign/fleet/Battle; 
L95:    return 
L96:    
    .end code 
.end method 

.method private getViewCenter : ()Lorg/lwjgl/util/vector/Vector2f; 
    .code stack 3 locals 3 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L4:     invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L7:     astore_1 
L8:     aload_1 
L9:     ifnull L65 
L12:    new org/lwjgl/util/vector/Vector2f 
L15:    dup 
L16:    aload_1 
L17:    invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L20:    invokespecial Method org/lwjgl/util/vector/Vector2f <init> (Lorg/lwjgl/util/vector/ReadableVector2f;)V 
L23:    astore_2 
L24:    aload_0 
L25:    getfield Field com/fs/starfarer/campaign/CampaignState viewOffset Lcom/fs/starfarer/campaign/int; 
L28:    ifnull L63 
L31:    aload_2 
L32:    dup 
L33:    getfield Field org/lwjgl/util/vector/Vector2f x F 
L36:    aload_0 
L37:    getfield Field com/fs/starfarer/campaign/CampaignState viewOffset Lcom/fs/starfarer/campaign/int; 
L40:    invokevirtual Method com/fs/starfarer/campaign/int getXOff ()F 
L43:    fadd 
L44:    putfield Field org/lwjgl/util/vector/Vector2f x F 
L47:    aload_2 
L48:    dup 
L49:    getfield Field org/lwjgl/util/vector/Vector2f y F 
L52:    aload_0 
L53:    getfield Field com/fs/starfarer/campaign/CampaignState viewOffset Lcom/fs/starfarer/campaign/int; 
L56:    invokevirtual Method com/fs/starfarer/campaign/int getYOff ()F 
L59:    fadd 
L60:    putfield Field org/lwjgl/util/vector/Vector2f y F 

        .stack append Object com/fs/starfarer/campaign/fleet/CampaignFleet Object org/lwjgl/util/vector/Vector2f 
L63:    aload_2 
L64:    areturn 

        .stack chop 1 
L65:    new org/lwjgl/util/vector/Vector2f 
L68:    dup 
L69:    invokespecial Method org/lwjgl/util/vector/Vector2f <init> ()V 
L72:    areturn 
L73:    
    .end code 
.end method 

.method public isPlayerFleetFollowingMouse : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState followMouse Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method private controlPlayerFleet : (Lcom/fs/starfarer/util/A/new;F)V 
    .code stack 5 locals 23 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L4:     invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L7:     astore_3 
L8:     aload_3 
L9:     invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getMovementModule ()Lcom/fs/starfarer/campaign/fleet/SmoothMovementModule; 
L12:    ldc_w -1.0f 
L15:    invokevirtual Method com/fs/starfarer/campaign/fleet/SmoothMovementModule setHardSpeedLimit (F)V 
L18:    aload_0 
L19:    getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L22:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine isPaused ()Z 
L25:    ifne L114 
L28:    aload_0 
L29:    getfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L32:    ifnonnull L114 
L35:    getstatic Field [c1295] 'Óô0000' [u882] 
L38:    invokestatic Method [c1301] 'Ø00000' [u898] 
L41:    ifeq L114 
L44:    aload_0 
L45:    getfield Field com/fs/starfarer/campaign/CampaignState followMouse Z 
L48:    ifeq L62 
L51:    iconst_0 
L52:    invokestatic Method org/lwjgl/input/Mouse isButtonDown (I)Z 
L55:    ifeq L62 
L58:    iconst_0 
L59:    goto L63 

        .stack append Object com/fs/starfarer/campaign/fleet/CampaignFleet 
L62:    iconst_1 

        .stack stack_1 Integer 
L63:    istore 4 
L65:    aload_3 
L66:    invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getInteractionTarget ()Lcom/fs/starfarer/api/campaign/SectorEntityToken; 
L69:    ifnull L75 
L72:    iconst_0 
L73:    istore 4 

        .stack append Integer 
L75:    invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L78:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getCampaignUI ()Lcom/fs/starfarer/campaign/CampaignEngine$o; 
L81:    invokeinterface InterfaceMethod com/fs/starfarer/campaign/CampaignEngine$o isFollowingDirectCommand ()Z 1 
L86:    istore 5 
L88:    iload 5 
L90:    ifne L108 
L93:    invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L96:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getUIData ()Lcom/fs/starfarer/campaign/CampaignUIPersistentData; 
L99:    invokevirtual Method com/fs/starfarer/campaign/CampaignUIPersistentData getCourseTarget ()Lcom/fs/starfarer/api/campaign/SectorEntityToken; 
L102:   ifnull L108 
L105:   iconst_0 
L106:   istore 4 

        .stack append Integer 
L108:   aload_3 
L109:   iload 4 
L111:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet goSlowOneFrame (Z)V 

        .stack chop 2 
L114:   aload_0 
L115:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L118:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getViewport ()Lcom/fs/starfarer/combat/CombatViewport; 
L121:   invokestatic Method com/fs/starfarer/util/A/C getMouseX ()I 
L124:   i2f 
L125:   invokevirtual Method com/fs/starfarer/combat/CombatViewport convertScreenXToWorldX (F)F 
L128:   fstore 4 
L130:   aload_0 
L131:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L134:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getViewport ()Lcom/fs/starfarer/combat/CombatViewport; 
L137:   invokestatic Method com/fs/starfarer/util/A/C getMouseY ()I 
L140:   i2f 
L141:   invokevirtual Method com/fs/starfarer/combat/CombatViewport convertScreenYToWorldY (F)F 
L144:   fstore 5 
L146:   aload_0 
L147:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L150:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine isPaused ()Z 
L153:   ifne L480 
L156:   aload_0 
L157:   getfield Field com/fs/starfarer/campaign/CampaignState followMouse Z 
L160:   ifeq L285 
L163:   iconst_0 
L164:   invokestatic Method org/lwjgl/input/Mouse isButtonDown (I)Z 
L167:   ifeq L285 
L170:   aload_0 
L171:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L174:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L177:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L180:   new org/lwjgl/util/vector/Vector2f 
L183:   dup 
L184:   fload 4 
L186:   fload 5 
L188:   invokespecial Method org/lwjgl/util/vector/Vector2f <init> (FF)V 
L191:   invokestatic Method com/fs/starfarer/prototype/Utils class (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)F 
L194:   fstore 6 
L196:   fload 6 
L198:   invokestatic Method com/fs/starfarer/prototype/Utils 'Ó00000' (F)Lorg/lwjgl/util/vector/Vector2f; 
L201:   astore 7 
L203:   aload 7 
L205:   ldc_w +750.0f 
L208:   invokevirtual Method org/lwjgl/util/vector/Vector2f scale (F)Lorg/lwjgl/util/vector/Vector; 
L211:   pop 
L212:   aload 7 
L214:   aload_0 
L215:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L218:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L221:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L224:   aload 7 
L226:   invokestatic Method org/lwjgl/util/vector/Vector2f add (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)Lorg/lwjgl/util/vector/Vector2f; 
L229:   pop 
L230:   aload_0 
L231:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L234:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L237:   aload 7 
L239:   getfield Field org/lwjgl/util/vector/Vector2f x F 
L242:   aload 7 
L244:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L247:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet setMoveDestination (FF)V 
L250:   aload_0 
L251:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L254:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L257:   aload_0 
L258:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L261:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getCurrentLocation ()Lcom/fs/starfarer/campaign/BaseLocation; 
L264:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet setMoveDestinationSetWhileInLocation (Lcom/fs/starfarer/campaign/BaseLocation;)V 
L267:   aload_0 
L268:   getfield Field com/fs/starfarer/campaign/CampaignState viewOffset Lcom/fs/starfarer/campaign/int; 
L271:   ifnull L480 
L274:   aload_0 
L275:   getfield Field com/fs/starfarer/campaign/CampaignState viewOffset Lcom/fs/starfarer/campaign/int; 
L278:   iconst_1 
L279:   invokevirtual Method com/fs/starfarer/campaign/int setAutoReset (Z)V 
L282:   goto L480 

        .stack append Float Float 
L285:   aload_0 
L286:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L289:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L292:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getInteractionTarget [u458] 
L295:   ifnull L480 
L298:   aload_0 
L299:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L302:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L305:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getInteractionTarget [u458] 
L308:   astore 6 
L310:   aload 6 
L312:   instanceof com/fs/starfarer/campaign/fleet/CampaignFleet 
L315:   ifeq L433 
L318:   new org/lwjgl/util/vector/Vector2f 
L321:   dup 
L322:   aload_0 
L323:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L326:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L329:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getInteractionTarget [u458] 
L332:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorEntityToken getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L337:   invokespecial Method org/lwjgl/util/vector/Vector2f <init> (Lorg/lwjgl/util/vector/ReadableVector2f;)V 
L340:   astore 7 
L342:   aload_0 
L343:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L346:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L349:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L352:   aload 7 
L354:   invokestatic Method com/fs/starfarer/prototype/Utils class (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)F 
L357:   fstore 8 
L359:   fload 8 
L361:   invokestatic Method com/fs/starfarer/prototype/Utils 'Ó00000' (F)Lorg/lwjgl/util/vector/Vector2f; 
L364:   astore 9 
L366:   aload 9 
L368:   ldc_w +750.0f 
L371:   invokevirtual Method org/lwjgl/util/vector/Vector2f scale (F)Lorg/lwjgl/util/vector/Vector; 
L374:   pop 
L375:   aload 9 
L377:   aload_0 
L378:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L381:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L384:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L387:   aload 9 
L389:   invokestatic Method org/lwjgl/util/vector/Vector2f add (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)Lorg/lwjgl/util/vector/Vector2f; 
L392:   pop 
L393:   aload_0 
L394:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L397:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L400:   aload 9 
L402:   getfield Field org/lwjgl/util/vector/Vector2f x F 
L405:   aload 9 
L407:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L410:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet setMoveDestination (FF)V 
L413:   aload_0 
L414:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L417:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L420:   aload_0 
L421:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L424:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getCurrentLocation ()Lcom/fs/starfarer/campaign/BaseLocation; 
L427:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet setMoveDestinationSetWhileInLocation (Lcom/fs/starfarer/campaign/BaseLocation;)V 
L430:   goto L480 

        .stack append Object com/fs/starfarer/api/campaign/SectorEntityToken 
L433:   aload_0 
L434:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L437:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L440:   aload 6 
L442:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorEntityToken getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L447:   getfield Field org/lwjgl/util/vector/Vector2f x F 
L450:   aload 6 
L452:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorEntityToken getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L457:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L460:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet setMoveDestination (FF)V 
L463:   aload_0 
L464:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L467:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L470:   aload_0 
L471:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L474:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getCurrentLocation ()Lcom/fs/starfarer/campaign/BaseLocation; 
L477:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet setMoveDestinationSetWhileInLocation (Lcom/fs/starfarer/campaign/BaseLocation;)V 

        .stack chop 1 
L480:   invokestatic Method com/fs/starfarer/ui/W 'Ó00000' ()Lcom/fs/starfarer/ui/supersuper; 
L483:   ifnull L492 
L486:   aload_0 
L487:   fload_2 
L488:   invokevirtual Method com/fs/starfarer/campaign/CampaignState updatePlayerOrbit (F)V 
L491:   return 

        .stack same 
L492:   aload_1 
L493:   invokevirtual Method com/fs/starfarer/util/A/new iterator ()Ljava/util/Iterator; 
L496:   astore 7 
L498:   goto L1088 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Object com/fs/starfarer/util/A/new Float Object com/fs/starfarer/campaign/fleet/CampaignFleet Float Float Top Object java/util/Iterator 
            stack 
        .end stack 
L501:   aload 7 
L503:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L508:   checkcast com/fs/starfarer/util/A/C 
L511:   astore 6 
L513:   aload 6 
L515:   invokevirtual Method com/fs/starfarer/util/A/C isConsumed ()Z 
L518:   ifeq L524 
L521:   goto L1088 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Object com/fs/starfarer/util/A/new Float Object com/fs/starfarer/campaign/fleet/CampaignFleet Float Float Object com/fs/starfarer/util/A/C Object java/util/Iterator 
            stack 
        .end stack 
L524:   aload 6 
L526:   invokevirtual Method com/fs/starfarer/util/A/C isLMBDownEvent ()Z 
L529:   ifeq L1054 
L532:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L535:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getViewport ()Lcom/fs/starfarer/combat/CombatViewport; 
L538:   astore 8 
L540:   new org/lwjgl/util/vector/Vector2f 
L543:   dup 
L544:   aload 8 
L546:   aload 6 
L548:   invokevirtual Method com/fs/starfarer/util/A/C getX ()I 
L551:   i2f 
L552:   invokevirtual Method com/fs/starfarer/combat/CombatViewport convertScreenXToWorldX (F)F 
L555:   aload 8 
L557:   aload 6 
L559:   invokevirtual Method com/fs/starfarer/util/A/C getY ()I 
L562:   i2f 
L563:   invokevirtual Method com/fs/starfarer/combat/CombatViewport convertScreenYToWorldY (F)F 
L566:   invokespecial Method org/lwjgl/util/vector/Vector2f <init> (FF)V 
L569:   astore 9 
L571:   aload_0 
L572:   getfield Field com/fs/starfarer/campaign/CampaignState viewOffset Lcom/fs/starfarer/campaign/int; 
L575:   ifnull L586 
L578:   aload_0 
L579:   getfield Field com/fs/starfarer/campaign/CampaignState viewOffset Lcom/fs/starfarer/campaign/int; 
L582:   iconst_1 
L583:   invokevirtual Method com/fs/starfarer/campaign/int setAutoReset (Z)V 

        .stack append Object com/fs/starfarer/combat/CombatViewport Object org/lwjgl/util/vector/Vector2f 
L586:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'OÓ0000' ()Z 
L589:   ifeq L997 
L592:   aload 6 
L594:   invokevirtual Method com/fs/starfarer/util/A/C isCtrlDown ()Z 
L597:   ifeq L997 
L600:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L603:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L606:   astore 10 
L608:   aload 10 
L610:   invokestatic Method com/fs/starfarer/api/util/Misc findNearestJumpPointTo (Lcom/fs/starfarer/api/campaign/SectorEntityToken;)Lcom/fs/starfarer/api/campaign/JumpPointAPI; 
L613:   astore 11 
L615:   iconst_0 
L616:   istore 12 
L618:   aload 11 
L620:   ifnull L936 
L623:   aload 11 
L625:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/JumpPointAPI getDestinations ()Ljava/util/List; 1 
L630:   invokeinterface InterfaceMethod java/util/List isEmpty ()Z 1 
L635:   ifne L936 
L638:   aload 10 
L640:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L645:   aload 11 
L647:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/JumpPointAPI getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L652:   invokestatic Method com/fs/starfarer/api/util/Misc getDistance (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)F 
L655:   fstore 13 
L657:   aload 9 
L659:   aload 11 
L661:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/JumpPointAPI getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L666:   invokestatic Method com/fs/starfarer/api/util/Misc getDistance (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)F 
L669:   fstore 14 
L671:   fload 13 
L673:   aload 11 
L675:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/JumpPointAPI getRadius ()F 1 
L680:   aload 10 
L682:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getRadius ()F 1 
L687:   fadd 
L688:   fcmpg 
L689:   ifgt L936 
L692:   fload 14 
L694:   aload 11 
L696:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/JumpPointAPI getRadius ()F 1 
L701:   aload 10 
L703:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getRadius ()F 1 
L708:   fadd 
L709:   fcmpg 
L710:   ifgt L936 
L713:   aload 11 
L715:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/JumpPointAPI getDestinations ()Ljava/util/List; 1 
L720:   iconst_0 
L721:   invokeinterface InterfaceMethod java/util/List get (I)Ljava/lang/Object; 2 
L726:   checkcast com/fs/starfarer/api/campaign/JumpPointAPI$JumpDestination 
L729:   astore 15 
L731:   aload 15 
L733:   invokevirtual Method com/fs/starfarer/api/campaign/JumpPointAPI$JumpDestination getDestination [u458] 
L736:   astore 16 
L738:   aload 16 
L740:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorEntityToken getContainingLocation ()Lcom/fs/starfarer/api/campaign/LocationAPI; 1 
L745:   astore 17 
L747:   aload 10 
L749:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getContainingLocation ()Lcom/fs/starfarer/api/campaign/LocationAPI; 1 
L754:   astore 18 
L756:   invokestatic Method com/fs/starfarer/api/Global getSector ()Lcom/fs/starfarer/api/campaign/SectorAPI; 
L759:   aload 17 
L761:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorAPI setCurrentLocation (Lcom/fs/starfarer/api/campaign/LocationAPI;)V 2 
L766:   aload 18 
L768:   aload 10 
L770:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/LocationAPI removeEntity (Lcom/fs/starfarer/api/campaign/SectorEntityToken;)V 2 
L775:   aload 17 
L777:   aload 10 
L779:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/LocationAPI addEntity (Lcom/fs/starfarer/api/campaign/SectorEntityToken;)V 2 
L784:   invokestatic Method java/lang/Math random ()D 
L787:   d2f 
L788:   ldc +360.0f 
L790:   fmul 
L791:   fstore 19 
L793:   aload 15 
L795:   invokevirtual Method com/fs/starfarer/api/campaign/JumpPointAPI$JumpDestination getMinDistFromToken ()F 
L798:   invokestatic Method java/lang/Math random ()D 
L801:   d2f 
L802:   aload 15 
L804:   invokevirtual Method com/fs/starfarer/api/campaign/JumpPointAPI$JumpDestination getMaxDistFromToken ()F 
L807:   aload 15 
L809:   invokevirtual Method com/fs/starfarer/api/campaign/JumpPointAPI$JumpDestination getMinDistFromToken ()F 
L812:   fsub 
L813:   fmul 
L814:   fadd 
L815:   fstore 20 
L817:   fload 19 
L819:   f2d 
L820:   invokestatic Method java/lang/Math toRadians (D)D 
L823:   invokestatic Method java/lang/Math cos (D)D 
L826:   d2f 
L827:   fload 20 
L829:   fmul 
L830:   fstore 21 
L832:   fload 19 
L834:   f2d 
L835:   invokestatic Method java/lang/Math toRadians (D)D 
L838:   invokestatic Method java/lang/Math sin (D)D 
L841:   d2f 
L842:   fload 20 
L844:   fmul 
L845:   fstore 22 
L847:   aload 10 
L849:   aload 16 
L851:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorEntityToken getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L856:   getfield Field org/lwjgl/util/vector/Vector2f x F 
L859:   fload 21 
L861:   fadd 
L862:   aload 16 
L864:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorEntityToken getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L869:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L872:   fload 22 
L874:   fadd 
L875:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI setLocation (FF)V 3 
L880:   aload 10 
L882:   aload 16 
L884:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorEntityToken getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L889:   getfield Field org/lwjgl/util/vector/Vector2f x F 
L892:   fload 21 
L894:   fadd 
L895:   aload 16 
L897:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorEntityToken getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L902:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L905:   fload 22 
L907:   fadd 
L908:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI setMoveDestinationOverride (FF)V 3 
L913:   aload 10 
L915:   aconst_null 
L916:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI setOrbit (Lcom/fs/starfarer/api/campaign/OrbitAPI;)V 2 
L921:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L924:   aload 10 
L926:   aload 11 
L928:   aload 15 
L930:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine reportFleetJumped (Lcom/fs/starfarer/api/campaign/CampaignFleetAPI;Lcom/fs/starfarer/api/campaign/SectorEntityToken;Lcom/fs/starfarer/api/campaign/JumpPointAPI$JumpDestination;)V 
L933:   iconst_1 
L934:   istore 12 

        .stack append Object com/fs/starfarer/api/campaign/CampaignFleetAPI Object com/fs/starfarer/api/campaign/JumpPointAPI Integer 
L936:   iload 12 
L938:   ifne L989 
L941:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L944:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L947:   aload 9 
L949:   getfield Field org/lwjgl/util/vector/Vector2f x F 
L952:   aload 9 
L954:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L957:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet setLocation (FF)V 
L960:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L963:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L966:   aload 9 
L968:   getfield Field org/lwjgl/util/vector/Vector2f x F 
L971:   aload 9 
L973:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L976:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet setMoveDestination (FF)V 
L979:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L982:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L985:   aconst_null 
L986:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet setOrbit (Lcom/fs/starfarer/api/campaign/OrbitAPI;)V 

        .stack same 
L989:   aload 6 
L991:   invokevirtual Method com/fs/starfarer/util/A/C consume ()V 
L994:   goto L1088 

        .stack chop 3 
L997:   aload_0 
L998:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L1001:  aload 9 
L1003:  getfield Field org/lwjgl/util/vector/Vector2f x F 
L1006:  aload 9 
L1008:  getfield Field org/lwjgl/util/vector/Vector2f y F 
L1011:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine findClosest (FF)Lcom/fs/starfarer/campaign/CampaignEntity; 
L1014:  astore 10 
L1016:  aload 10 
L1018:  ifnull L1038 
L1021:  aload_0 
L1022:  getfield Field com/fs/starfarer/campaign/CampaignState disallowInteractionOneFrame Z 
L1025:  ifne L1038 
L1028:  aload_0 
L1029:  aload 10 
L1031:  iconst_1 
L1032:  invokevirtual Method com/fs/starfarer/campaign/CampaignState followEntity (Lcom/fs/starfarer/api/campaign/SectorEntityToken;Z)V 
L1035:  goto L1088 

        .stack append Object com/fs/starfarer/campaign/CampaignEntity 
L1038:  aload_0 
L1039:  fload 4 
L1041:  fload 5 
L1043:  invokevirtual Method com/fs/starfarer/campaign/CampaignState setMovementDestination (FF)V 
L1046:  aload_0 
L1047:  iconst_1 
L1048:  putfield Field com/fs/starfarer/campaign/CampaignState followMouse Z 
L1051:  goto L1088 

        .stack chop 3 
L1054:  aload 6 
L1056:  invokevirtual Method com/fs/starfarer/util/A/C isLMBUpEvent ()Z 
L1059:  ifeq L1088 
L1062:  aload_0 
L1063:  getfield Field com/fs/starfarer/campaign/CampaignState followMouse Z 
L1066:  ifeq L1083 
L1069:  aload_0 
L1070:  getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L1073:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L1076:  fload 4 
L1078:  fload 5 
L1080:  invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet setMoveDestination (FF)V 

        .stack same 
L1083:  aload_0 
L1084:  iconst_0 
L1085:  putfield Field com/fs/starfarer/campaign/CampaignState followMouse Z 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Object com/fs/starfarer/util/A/new Float Object com/fs/starfarer/campaign/fleet/CampaignFleet Float Float Top Object java/util/Iterator 
            stack 
        .end stack 
L1088:  aload 7 
L1090:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L1095:  ifne L501 
L1098:  aload_0 
L1099:  fload_2 
L1100:  invokevirtual Method com/fs/starfarer/campaign/CampaignState updatePlayerOrbit (F)V 
L1103:  aload_0 
L1104:  iconst_0 
L1105:  putfield Field com/fs/starfarer/campaign/CampaignState disallowInteractionOneFrame Z 
L1108:  return 
L1109:  
    .end code 
.end method 

.method private updatePlayerOrbit : (F)V 
    .code stack 5 locals 13 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L4:     invokevirtual Method com/fs/starfarer/campaign/CampaignEngine isPaused ()Z 
L7:     ifeq L11 
L10:    return 

        .stack same 
L11:    invokestatic Method com/fs/starfarer/api/Global getSector ()Lcom/fs/starfarer/api/campaign/SectorAPI; 
L14:    invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorAPI getPlayerFleet ()Lcom/fs/starfarer/api/campaign/CampaignFleetAPI; 1 
L19:    checkcast com/fs/starfarer/campaign/fleet/CampaignFleet 
L22:    astore_2 
L23:    aload_2 
L24:    ifnonnull L28 
L27:    return 

        .stack append Object com/fs/starfarer/campaign/fleet/CampaignFleet 
L28:    aload_0 
L29:    dup 
L30:    getfield Field com/fs/starfarer/campaign/CampaignState holdTimeout F 
L33:    fload_1 
L34:    fsub 
L35:    putfield Field com/fs/starfarer/campaign/CampaignState holdTimeout F 
L38:    aload_0 
L39:    getfield Field com/fs/starfarer/campaign/CampaignState holdTimeout F 
L42:    fconst_0 
L43:    fcmpl 
L44:    ifle L48 
L47:    return 

        .stack same 
L48:    aload_0 
L49:    getfield Field com/fs/starfarer/campaign/CampaignState holdTimeout F 
L52:    fconst_0 
L53:    fcmpg 
L54:    ifge L62 
L57:    aload_0 
L58:    fconst_0 
L59:    putfield Field com/fs/starfarer/campaign/CampaignState holdTimeout F 

        .stack same 
L62:    aload_0 
L63:    getfield Field com/fs/starfarer/campaign/CampaignState followMouse Z 
L66:    ifne L97 
L69:    iconst_0 
L70:    invokestatic Method org/lwjgl/input/Mouse isButtonDown (I)Z 
L73:    ifne L97 
L76:    aload_2 
L77:    invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getInteractionTarget [u458] 
L80:    ifnonnull L97 
L83:    aload_2 
L84:    invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet isInHyperspaceTransition ()Z 
L87:    ifne L97 
L90:    aload_2 
L91:    invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet isInHyperspace ()Z 
L94:    ifeq L150 

        .stack same 
L97:    aload_2 
L98:    invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getOrbit ()Lcom/fs/starfarer/api/campaign/OrbitAPI; 
L101:   ifnull L149 
L104:   invokestatic Method com/fs/starfarer/ui/W 'Ó00000' ()Lcom/fs/starfarer/ui/supersuper; 
L107:   ifnonnull L149 
L110:   aload_2 
L111:   ldc_w 'Breaking orbit' 
L114:   aload_2 
L115:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getFaction ()Lcom/fs/starfarer/campaign/Faction; 
L118:   invokevirtual Method com/fs/starfarer/campaign/Faction getBaseUIColor ()Ljava/awt/Color; 
L121:   ldc +0.5f 
L123:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet addFloatingText (Ljava/lang/String;Ljava/awt/Color;F)V 
L126:   aload_2 
L127:   aload_2 
L128:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L131:   getfield Field org/lwjgl/util/vector/Vector2f x F 
L134:   aload_2 
L135:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L138:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L141:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet setLocation (FF)V 
L144:   aload_2 
L145:   aconst_null 
L146:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet setOrbit (Lcom/fs/starfarer/api/campaign/OrbitAPI;)V 

        .stack same 
L149:   return 

        .stack same 
L150:   aload_2 
L151:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getContainingLocation ()Lcom/fs/starfarer/campaign/BaseLocation; 
L154:   invokevirtual Method com/fs/starfarer/campaign/BaseLocation getTerrainCopy ()Ljava/util/List; 
L157:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L162:   astore 4 
L164:   goto L262 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Float Object com/fs/starfarer/campaign/fleet/CampaignFleet Top Object java/util/Iterator 
            stack 
        .end stack 
L167:   aload 4 
L169:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L174:   checkcast com/fs/starfarer/api/campaign/CampaignTerrainAPI 
L177:   astore_3 
L178:   aload_3 
L179:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignTerrainAPI getPlugin ()Lcom/fs/starfarer/api/campaign/CampaignTerrainPlugin; 1 
L184:   getstatic Field com/fs/starfarer/api/campaign/TerrainAIFlags BREAK_OTHER_ORBITS Lcom/fs/starfarer/api/campaign/TerrainAIFlags; 
L187:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignTerrainPlugin hasAIFlag (Ljava/lang/Object;)Z 2 
L192:   ifeq L262 
L195:   aload_3 
L196:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignTerrainAPI getPlugin ()Lcom/fs/starfarer/api/campaign/CampaignTerrainPlugin; 1 
L201:   aload_2 
L202:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignTerrainPlugin containsEntity (Lcom/fs/starfarer/api/campaign/SectorEntityToken;)Z 2 
L207:   ifeq L262 
L210:   aload_2 
L211:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getOrbit ()Lcom/fs/starfarer/api/campaign/OrbitAPI; 
L214:   ifnull L256 
L217:   aload_2 
L218:   ldc_w 'Breaking orbit' 
L221:   aload_2 
L222:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getFaction ()Lcom/fs/starfarer/campaign/Faction; 
L225:   invokevirtual Method com/fs/starfarer/campaign/Faction getBaseUIColor ()Ljava/awt/Color; 
L228:   ldc +0.5f 
L230:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet addFloatingText (Ljava/lang/String;Ljava/awt/Color;F)V 
L233:   aload_2 
L234:   aload_2 
L235:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L238:   getfield Field org/lwjgl/util/vector/Vector2f x F 
L241:   aload_2 
L242:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L245:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L248:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet setLocation (FF)V 
L251:   aload_2 
L252:   aconst_null 
L253:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet setOrbit (Lcom/fs/starfarer/api/campaign/OrbitAPI;)V 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Float Object com/fs/starfarer/campaign/fleet/CampaignFleet Object com/fs/starfarer/api/campaign/CampaignTerrainAPI Object java/util/Iterator 
            stack 
        .end stack 
L256:   aload_0 
L257:   fconst_2 
L258:   putfield Field com/fs/starfarer/campaign/CampaignState holdTimeout F 
L261:   return 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Float Object com/fs/starfarer/campaign/fleet/CampaignFleet Top Object java/util/Iterator 
            stack 
        .end stack 
L262:   aload 4 
L264:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L269:   ifne L167 
L272:   aload_2 
L273:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getOrbit ()Lcom/fs/starfarer/api/campaign/OrbitAPI; 
L276:   ifnull L322 
L279:   aload_2 
L280:   aload_2 
L281:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L284:   getfield Field org/lwjgl/util/vector/Vector2f x F 
L287:   aload_2 
L288:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L291:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L294:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet setLocation (FF)V 
L297:   aload_2 
L298:   aload_2 
L299:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L302:   getfield Field org/lwjgl/util/vector/Vector2f x F 
L305:   aload_2 
L306:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L309:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L312:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet setMoveDestination (FF)V 
L315:   aload_2 
L316:   fconst_0 
L317:   fconst_0 
L318:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet setVelocity (FF)V 
L321:   return 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Float Object com/fs/starfarer/campaign/fleet/CampaignFleet 
            stack 
        .end stack 
L322:   aload_2 
L323:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getMoveDestination ()Lorg/lwjgl/util/vector/Vector2f; 
L326:   aload_2 
L327:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L330:   invokestatic Method com/fs/starfarer/api/util/Misc getDistance (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)F 
L333:   fstore_3 
L334:   aload_2 
L335:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 
L338:   invokevirtual Method org/lwjgl/util/vector/Vector2f length ()F 
L341:   fconst_2 
L342:   fcmpl 
L343:   ifgt L353 
L346:   fload_3 
L347:   ldc +5.0f 
L349:   fcmpl 
L350:   ifle L354 

        .stack append Float 
L353:   return 

        .stack same 
L354:   iconst_0 
L355:   istore 4 
L357:   aload_2 
L358:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getContainingLocation ()Lcom/fs/starfarer/campaign/BaseLocation; 
L361:   invokevirtual Method com/fs/starfarer/campaign/BaseLocation getTerrainCopy ()Ljava/util/List; 
L364:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L369:   astore 6 
L371:   goto L660 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Float Object com/fs/starfarer/campaign/fleet/CampaignFleet Float Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L374:   aload 6 
L376:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L381:   checkcast com/fs/starfarer/api/campaign/CampaignTerrainAPI 
L384:   astore 5 
L386:   aload 5 
L388:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignTerrainAPI getOrbit ()Lcom/fs/starfarer/api/campaign/OrbitAPI; 1 
L393:   ifnonnull L399 
L396:   goto L660 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Float Object com/fs/starfarer/campaign/fleet/CampaignFleet Float Integer Object com/fs/starfarer/api/campaign/CampaignTerrainAPI Object java/util/Iterator 
            stack 
        .end stack 
L399:   aload 5 
L401:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignTerrainAPI getPlugin ()Lcom/fs/starfarer/api/campaign/CampaignTerrainPlugin; 1 
L406:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignTerrainPlugin getTerrainName ()Ljava/lang/String; 1 
L411:   ifnonnull L417 
L414:   goto L660 

        .stack same 
L417:   aload 5 
L419:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignTerrainAPI getPlugin ()Lcom/fs/starfarer/api/campaign/CampaignTerrainPlugin; 1 
L424:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignTerrainPlugin canPlayerHoldStationIn ()Z 1 
L429:   ifne L435 
L432:   goto L660 

        .stack same 
L435:   aload 5 
L437:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignTerrainAPI getPlugin ()Lcom/fs/starfarer/api/campaign/CampaignTerrainPlugin; 1 
L442:   aload_2 
L443:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignTerrainPlugin containsEntity (Lcom/fs/starfarer/api/campaign/SectorEntityToken;)Z 2 
L448:   ifne L454 
L451:   goto L660 

        .stack same 
L454:   aload 5 
L456:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignTerrainAPI getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L461:   aload_2 
L462:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L465:   invokestatic Method com/fs/starfarer/prototype/Utils class (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)F 
L468:   fstore 7 
L470:   aload 5 
L472:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignTerrainAPI getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L477:   aload_2 
L478:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L481:   invokestatic Method com/fs/starfarer/prototype/Utils 'Ø00000' (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)F 
L484:   fstore 8 
L486:   fload 8 
L488:   fconst_2 
L489:   fmul 
L490:   ldc_w +3.1415927410125732f 
L493:   fmul 
L494:   fstore 9 
L496:   ldc +0.5f 
L498:   invokestatic Method com/fs/starfarer/api/util/Misc getSpeedForBurnLevel (F)F 
L501:   fstore 10 
L503:   fload 9 
L505:   fload 10 
L507:   fdiv 
L508:   fstore 11 
L510:   aload_0 
L511:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L514:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getClock ()Lcom/fs/starfarer/campaign/CampaignClock; 
L517:   fload 11 
L519:   invokevirtual Method com/fs/starfarer/campaign/CampaignClock convertToDays (F)F 
L522:   fstore 11 
L524:   fload 11 
L526:   fconst_1 
L527:   fcmpg 
L528:   ifge L534 
L531:   fconst_1 
L532:   fstore 11 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Float Object com/fs/starfarer/campaign/fleet/CampaignFleet Float Integer Object com/fs/starfarer/api/campaign/CampaignTerrainAPI Object java/util/Iterator Float Float Float Float Float 
            stack 
        .end stack 
L534:   aload 5 
L536:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignTerrainAPI getPlugin ()Lcom/fs/starfarer/api/campaign/CampaignTerrainPlugin; 1 
L541:   instanceof com/fs/starfarer/api/impl/campaign/terrain/BaseRingTerrain 
L544:   ifne L552 
L547:   ldc_w +1000000.0f 
L550:   fstore 11 

        .stack same 
L552:   new com/fs/starfarer/campaign/CircularOrbit 
L555:   dup 
L556:   aload_2 
L557:   aload 5 
L559:   fload 8 
L561:   invokespecial Method com/fs/starfarer/campaign/CircularOrbit <init> (Lcom/fs/starfarer/api/campaign/SectorEntityToken;Lcom/fs/starfarer/api/campaign/SectorEntityToken;F)V 
L564:   astore 12 
L566:   aload 12 
L568:   fload 7 
L570:   invokevirtual Method com/fs/starfarer/campaign/CircularOrbit setCurrAngle (F)Lcom/fs/starfarer/campaign/CircularOrbit; 
L573:   pop 
L574:   aload 5 
L576:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignTerrainAPI getCircularOrbitPeriod ()F 1 
L581:   fconst_0 
L582:   fcmpg 
L583:   ifge L591 
L586:   fload 11 
L588:   fneg 
L589:   fstore 11 

        .stack append Object com/fs/starfarer/campaign/CircularOrbit 
L591:   aload 12 
L593:   fload 11 
L595:   invokevirtual Method com/fs/starfarer/campaign/CircularOrbit setPeriod (F)Lcom/fs/starfarer/campaign/CircularOrbit; 
L598:   pop 
L599:   aload_2 
L600:   aload 12 
L602:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet setOrbit (Lcom/fs/starfarer/api/campaign/OrbitAPI;)V 
L605:   aload_0 
L606:   getfield Field com/fs/starfarer/campaign/CampaignState hideUI Z 
L609:   ifne L654 
L612:   aload_2 
L613:   new java/lang/StringBuilder 
L616:   dup 
L617:   ldc_w 'Holding station in ' 
L620:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L623:   aload 5 
L625:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignTerrainAPI getPlugin ()Lcom/fs/starfarer/api/campaign/CampaignTerrainPlugin; 1 
L630:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignTerrainPlugin getTerrainName ()Ljava/lang/String; 1 
L635:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L638:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L641:   aload_2 
L642:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getFaction ()Lcom/fs/starfarer/campaign/Faction; 
L645:   invokevirtual Method com/fs/starfarer/campaign/Faction getBaseUIColor ()Ljava/awt/Color; 
L648:   ldc_w +0.75f 
L651:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet addFloatingText (Ljava/lang/String;Ljava/awt/Color;F)V 

        .stack same 
L654:   iconst_1 
L655:   istore 4 
L657:   goto L670 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Float Object com/fs/starfarer/campaign/fleet/CampaignFleet Float Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L660:   aload 6 
L662:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L667:   ifne L374 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Float Object com/fs/starfarer/campaign/fleet/CampaignFleet Float Integer 
            stack 
        .end stack 
L670:   iload 4 
L672:   ifne L1134 
L675:   aconst_null 
L676:   astore 5 
L678:   fconst_0 
L679:   fstore 6 
L681:   aload_2 
L682:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getContainingLocation ()Lcom/fs/starfarer/campaign/BaseLocation; 
L685:   invokevirtual Method com/fs/starfarer/campaign/BaseLocation getPlanets ()Ljava/util/List; 
L688:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L693:   astore 8 
L695:   goto L822 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Float Object com/fs/starfarer/campaign/fleet/CampaignFleet Float Integer Object com/fs/starfarer/api/campaign/SectorEntityToken Float Top Object java/util/Iterator 
            stack 
        .end stack 
L698:   aload 8 
L700:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L705:   checkcast com/fs/starfarer/api/campaign/PlanetAPI 
L708:   astore 7 
L710:   aload 7 
L712:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/PlanetAPI isStar ()Z 1 
L717:   ifeq L723 
L720:   goto L822 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Float Object com/fs/starfarer/campaign/fleet/CampaignFleet Float Integer Object com/fs/starfarer/api/campaign/SectorEntityToken Float Object com/fs/starfarer/api/campaign/PlanetAPI Object java/util/Iterator 
            stack 
        .end stack 
L723:   aload 7 
L725:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/PlanetAPI getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L730:   aload_2 
L731:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L734:   invokestatic Method com/fs/starfarer/api/util/Misc getDistance (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)F 
L737:   fstore 9 
L739:   aload 7 
L741:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/PlanetAPI getRadius ()F 1 
L746:   aload 7 
L748:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/PlanetAPI getRadius ()F 1 
L753:   ldc_w +1.6699999570846558f 
L756:   fmul 
L757:   ldc_w +300.0f 
L760:   invokestatic Method java/lang/Math min (FF)F 
L763:   fadd 
L764:   fstore 10 
L766:   fload 9 
L768:   fload 10 
L770:   fcmpl 
L771:   ifle L777 
L774:   goto L822 

        .stack append Float Float 
L777:   fload 9 
L779:   aload 7 
L781:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/PlanetAPI getRadius ()F 1 
L786:   ldc_w +0.75f 
L789:   fmul 
L790:   fcmpg 
L791:   ifge L797 
L794:   goto L822 

        .stack same 
L797:   aload 7 
L799:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/PlanetAPI getRadius ()F 1 
L804:   fstore 11 
L806:   fload 11 
L808:   fload 6 
L810:   fcmpl 
L811:   ifle L822 
L814:   aload 7 
L816:   astore 5 
L818:   fload 11 
L820:   fstore 6 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Float Object com/fs/starfarer/campaign/fleet/CampaignFleet Float Integer Object com/fs/starfarer/api/campaign/SectorEntityToken Float Top Object java/util/Iterator 
            stack 
        .end stack 
L822:   aload 8 
L824:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L829:   ifne L698 
L832:   aload 5 
L834:   ifnonnull L973 
L837:   aload_2 
L838:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getContainingLocation ()Lcom/fs/starfarer/campaign/BaseLocation; 
L841:   ldc_w Class com/fs/starfarer/api/campaign/JumpPointAPI 
L844:   invokevirtual Method com/fs/starfarer/campaign/BaseLocation getEntities (Ljava/lang/Class;)Ljava/util/List; 
L847:   astore 7 
L849:   aload 7 
L851:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L856:   astore 9 
L858:   goto L963 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Float Object com/fs/starfarer/campaign/fleet/CampaignFleet Float Integer Object com/fs/starfarer/api/campaign/SectorEntityToken Float Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L861:   aload 9 
L863:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L868:   checkcast com/fs/starfarer/api/campaign/JumpPointAPI 
L871:   astore 8 
L873:   aload 8 
L875:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/JumpPointAPI getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L880:   aload_2 
L881:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L884:   invokestatic Method com/fs/starfarer/api/util/Misc getDistance (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)F 
L887:   fstore 10 
L889:   aload 8 
L891:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/JumpPointAPI getRadius ()F 1 
L896:   ldc_w +300.0f 
L899:   fadd 
L900:   aload_2 
L901:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getRadius ()F 
L904:   fadd 
L905:   fstore 11 
L907:   fload 10 
L909:   fload 11 
L911:   fcmpl 
L912:   ifle L918 
L915:   goto L963 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Float Object com/fs/starfarer/campaign/fleet/CampaignFleet Float Integer Object com/fs/starfarer/api/campaign/SectorEntityToken Float Object java/util/List Object com/fs/starfarer/api/campaign/JumpPointAPI Object java/util/Iterator Float Float 
            stack 
        .end stack 
L918:   fload 10 
L920:   aload 8 
L922:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/JumpPointAPI getRadius ()F 1 
L927:   ldc_w +50.0f 
L930:   fadd 
L931:   fcmpg 
L932:   ifge L938 
L935:   goto L963 

        .stack same 
L938:   aload 8 
L940:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/JumpPointAPI getRadius ()F 1 
L945:   fstore 12 
L947:   fload 12 
L949:   fload 6 
L951:   fcmpl 
L952:   ifle L963 
L955:   aload 8 
L957:   astore 5 
L959:   fload 12 
L961:   fstore 6 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Float Object com/fs/starfarer/campaign/fleet/CampaignFleet Float Integer Object com/fs/starfarer/api/campaign/SectorEntityToken Float Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L963:   aload 9 
L965:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L970:   ifne L861 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Float Object com/fs/starfarer/campaign/fleet/CampaignFleet Float Integer Object com/fs/starfarer/api/campaign/SectorEntityToken Float 
            stack 
        .end stack 
L973:   aload 5 
L975:   ifnull L1134 
L978:   aload 5 
L980:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorEntityToken getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L985:   aload_2 
L986:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L989:   invokestatic Method com/fs/starfarer/prototype/Utils class (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)F 
L992:   fstore 7 
L994:   aload 5 
L996:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorEntityToken getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L1001:  aload_2 
L1002:  invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L1005:  invokestatic Method com/fs/starfarer/prototype/Utils 'Ø00000' [u2248] 
L1008:  fstore 8 
L1010:  fload 8 
L1012:  fconst_2 
L1013:  fmul 
L1014:  ldc_w +3.1415927410125732f 
L1017:  fmul 
L1018:  fstore 9 
L1020:  ldc_w +0.75f 
L1023:  invokestatic Method com/fs/starfarer/api/util/Misc getSpeedForBurnLevel (F)F 
L1026:  fstore 10 
L1028:  fload 9 
L1030:  fload 10 
L1032:  fdiv 
L1033:  fstore 11 
L1035:  aload_0 
L1036:  getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L1039:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getClock ()Lcom/fs/starfarer/campaign/CampaignClock; 
L1042:  fload 11 
L1044:  invokevirtual Method com/fs/starfarer/campaign/CampaignClock convertToDays (F)F 
L1047:  fstore 11 
L1049:  fload 11 
L1051:  fconst_1 
L1052:  fcmpg 
L1053:  ifge L1059 
L1056:  fconst_1 
L1057:  fstore 11 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Float Object com/fs/starfarer/campaign/fleet/CampaignFleet Float Integer Object com/fs/starfarer/api/campaign/SectorEntityToken Float Float Float Float Float Float 
            stack 
        .end stack 
L1059:  new com/fs/starfarer/campaign/CircularOrbit 
L1062:  dup 
L1063:  aload_2 
L1064:  aload 5 
L1066:  fload 8 
L1068:  invokespecial Method com/fs/starfarer/campaign/CircularOrbit <init> (Lcom/fs/starfarer/api/campaign/SectorEntityToken;Lcom/fs/starfarer/api/campaign/SectorEntityToken;F)V 
L1071:  astore 12 
L1073:  aload 12 
L1075:  fload 7 
L1077:  invokevirtual Method com/fs/starfarer/campaign/CircularOrbit setCurrAngle (F)Lcom/fs/starfarer/campaign/CircularOrbit; 
L1080:  pop 
L1081:  aload 12 
L1083:  fload 11 
L1085:  invokevirtual Method com/fs/starfarer/campaign/CircularOrbit setPeriod (F)Lcom/fs/starfarer/campaign/CircularOrbit; 
L1088:  pop 
L1089:  aload_2 
L1090:  aload 12 
L1092:  invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet setOrbit (Lcom/fs/starfarer/api/campaign/OrbitAPI;)V 
L1095:  aload_2 
L1096:  new java/lang/StringBuilder 
L1099:  dup 
L1100:  ldc_w 'Orbiting ' 
L1103:  invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L1106:  aload 5 
L1108:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorEntityToken getName ()Ljava/lang/String; 1 
L1113:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L1116:  invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L1119:  aload_2 
L1120:  invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getFaction ()Lcom/fs/starfarer/campaign/Faction; 
L1123:  invokevirtual Method com/fs/starfarer/campaign/Faction getBaseUIColor ()Ljava/awt/Color; 
L1126:  ldc +0.5f 
L1128:  invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet addFloatingText (Ljava/lang/String;Ljava/awt/Color;F)V 
L1131:  iconst_1 
L1132:  istore 4 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Float Object com/fs/starfarer/campaign/fleet/CampaignFleet Float Integer 
            stack 
        .end stack 
L1134:  iload 4 
L1136:  ifne L1185 
L1139:  aload_2 
L1140:  invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getOrbit ()Lcom/fs/starfarer/api/campaign/OrbitAPI; 
L1143:  ifnull L1185 
L1146:  aload_2 
L1147:  ldc_w 'Breaking orbit' 
L1150:  aload_2 
L1151:  invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getFaction ()Lcom/fs/starfarer/campaign/Faction; 
L1154:  invokevirtual Method com/fs/starfarer/campaign/Faction getBaseUIColor ()Ljava/awt/Color; 
L1157:  ldc +0.5f 
L1159:  invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet addFloatingText (Ljava/lang/String;Ljava/awt/Color;F)V 
L1162:  aload_2 
L1163:  aload_2 
L1164:  invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L1167:  getfield Field org/lwjgl/util/vector/Vector2f x F 
L1170:  aload_2 
L1171:  invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getLocation ()Lorg/lwjgl/util/vector/Vector2f; 
L1174:  getfield Field org/lwjgl/util/vector/Vector2f y F 
L1177:  invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet setLocation (FF)V 
L1180:  aload_2 
L1181:  aconst_null 
L1182:  invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet setOrbit (Lcom/fs/starfarer/api/campaign/OrbitAPI;)V 

        .stack same 
L1185:  return 
L1186:  
    .end code 
.end method 

.method public setDisallowPlayerInteractionsForOneFrame : ()V 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     iconst_1 
L2:     putfield Field com/fs/starfarer/campaign/CampaignState disallowInteractionOneFrame Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public isFollowingDirectCommand : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState followingDirectCommand Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public setFollowingDirectCommand : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/campaign/CampaignState followingDirectCommand Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public followEntity : (Lcom/fs/starfarer/api/campaign/SectorEntityToken;Z)V 
    .code stack 4 locals 4 
L0:     aload_0 
L1:     iload_2 
L2:     putfield Field com/fs/starfarer/campaign/CampaignState followingDirectCommand Z 
L5:     aload_1 
L6:     iconst_1 
L7:     invokestatic Method com/fs/starfarer/coreui/A/O0Oo getNameForSource (Lcom/fs/starfarer/api/campaign/SectorEntityToken;Z)Ljava/lang/String; 
L10:    astore_3 
L11:    aload_3 
L12:    ifnull L73 
L15:    aload_1 
L16:    instanceof com/fs/starfarer/campaign/fleet/CampaignFleet 
L19:    ifeq L49 
L22:    aload_0 
L23:    invokevirtual Method com/fs/starfarer/campaign/CampaignState getMessageDisplay ()Lcom/fs/starfarer/campaign/ui/O00O; 
L26:    new java/lang/StringBuilder 
L29:    dup 
L30:    ldc_w 'Laying in an intercept course for ' 
L33:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L36:    aload_3 
L37:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L40:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L43:    invokevirtual Method com/fs/starfarer/campaign/ui/O00O addMessage (Ljava/lang/String;)V 
L46:    goto L73 

        .stack append Object java/lang/String 
L49:    aload_0 
L50:    invokevirtual Method com/fs/starfarer/campaign/CampaignState getMessageDisplay ()Lcom/fs/starfarer/campaign/ui/O00O; 
L53:    new java/lang/StringBuilder 
L56:    dup 
L57:    ldc_w 'Laying in a course for ' 
L60:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L63:    aload_3 
L64:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L67:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L70:    invokevirtual Method com/fs/starfarer/campaign/ui/O00O addMessage (Ljava/lang/String;)V 

        .stack same 
L73:    aload_0 
L74:    getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L77:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getClock ()Lcom/fs/starfarer/campaign/CampaignClock; 
L80:    invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L83:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getLastPlayerBattleTimestamp ()J 
L86:    invokevirtual Method com/fs/starfarer/campaign/CampaignClock getElapsedDaysSince (J)F 
L89:    ldc +0.5f 
L91:    fcmpl 
L92:    ifle L121 
L95:    aload_0 
L96:    getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L99:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L102:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet isNoEngagingSet ()Z 
L105:   ifeq L121 
L108:   aload_0 
L109:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L112:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L115:   ldc_w +0.05000000074505806f 
L118:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet setNoEngaging (F)V 

        .stack same 
L121:   aload_0 
L122:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L125:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L128:   aload_1 
L129:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet setInteractionTarget (Lcom/fs/starfarer/api/campaign/SectorEntityToken;)V 
L132:   aload_1 
L133:   instanceof com/fs/starfarer/campaign/CampaignEntity 
L136:   ifeq L151 
L139:   aload_1 
L140:   checkcast com/fs/starfarer/campaign/CampaignEntity 
L143:   invokeinterface InterfaceMethod com/fs/starfarer/campaign/CampaignEntity getIndicator ()Lcom/fs/starfarer/campaign/util/super; 1 
L148:   invokevirtual Method com/fs/starfarer/campaign/util/super 'super' ()V 

        .stack same 
L151:   aload_0 
L152:   iconst_0 
L153:   putfield Field com/fs/starfarer/campaign/CampaignState followMouse Z 
L156:   return 
L157:   
    .end code 
.end method 

.method public setMovementDestination : (FF)V 
    .code stack 3 locals 3 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L4:     invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L7:     fload_1 
L8:     fload_2 
L9:     invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet setMoveDestination (FF)V 
L12:    aload_0 
L13:    getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L16:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L19:    aconst_null 
L20:    invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet setInteractionTarget (Lcom/fs/starfarer/api/campaign/SectorEntityToken;)V 
L23:    aload_0 
L24:    iconst_1 
L25:    invokevirtual Method com/fs/starfarer/campaign/CampaignState setFollowingDirectCommand (Z)V 
L28:    return 
L29:    
    .end code 
.end method 

.method public getMaxIntelMapIcons : ()I 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState maxIntelMapIcons I 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public setMaxIntelMapIcons : (I)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/campaign/CampaignState maxIntelMapIcons I 
L5:     return 
L6:     
    .end code 
.end method 

.method public isSuppressFuelRangeRenderingOneFrame : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState suppressFuelRangeRenderingOneFrame Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public setSuppressFuelRangeRenderingOneFrame : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/campaign/CampaignState suppressFuelRangeRenderingOneFrame Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public setExtraAlphaMult : (F)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     fload_1 
L2:     putfield Field com/fs/starfarer/campaign/CampaignState extraAlphaMult F 
L5:     return 
L6:     
    .end code 
.end method 

.method public render : (F)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     fload_1 
L2:     invokestatic Method com/genir/renderer/overrides/CampaignState render (Lcom/fs/starfarer/campaign/CampaignState;F)V 
L5:     return 
L6:     
        .linenumbertable 
            L0 11 
            L5 12 
        .end linenumbertable 
        .localvariabletable 
            0 is this Lcom/fs/starfarer/campaign/CampaignState; from L0 to L6 
            1 is var1 F from L0 to L6 
        .end localvariabletable 
    .end code 
.end method 

.method public renderImpl : (F)V 
    .code stack 6 locals 12
L0:     fload_1
L1:     aload_0 
L2:     getfield Field com/fs/starfarer/campaign/CampaignState extraAlphaMult F 
L5:     fmul 
L6:     fstore_1 
L7:     ldc_w 'Campaign rendering' 
L10:    invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L13:    invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'while.new' ()F 
L16:    fstore_2 
L17:    invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'öÒ0000' ()F 
L20:    fstore_3 
L21:    aload_0 
L22:    getfield Field com/fs/starfarer/campaign/CampaignState worldCoordsScreenWidthAtZoomOne F 
L25:    aload_0 
L26:    getfield Field com/fs/starfarer/campaign/CampaignState zoomTracker Lcom/fs/starfarer/util/A; 
L29:    invokevirtual Method com/fs/starfarer/util/A 'Ô00000' ()F 
L32:    fmul 
L33:    fstore 4 
L35:    aload_0 
L36:    getfield Field com/fs/starfarer/campaign/CampaignState worldCoordsScreenHeightAtZoomOne F 
L39:    aload_0 
L40:    getfield Field com/fs/starfarer/campaign/CampaignState zoomTracker Lcom/fs/starfarer/util/A; 
L43:    invokevirtual Method com/fs/starfarer/util/A 'Ô00000' ()F 
L46:    fmul 
L47:    fstore 5 
L49:    aload_0 
L50:    invokevirtual Method com/fs/starfarer/campaign/CampaignState getViewCenter ()Lorg/lwjgl/util/vector/Vector2f; 
L53:    astore 6 
L55:    aload 6 
L57:    getfield Field org/lwjgl/util/vector/Vector2f x F 
L60:    fload_2 
L61:    fconst_2 
L62:    fdiv 
L63:    fsub 
L64:    fstore 7 
L66:    aload 6 
L68:    getfield Field org/lwjgl/util/vector/Vector2f y F 
L71:    fload_3 
L72:    fconst_2 
L73:    fdiv 
L74:    fsub 
L75:    fstore 8 
L77:    aload 6 
L79:    getfield Field org/lwjgl/util/vector/Vector2f x F 
L82:    fload 4 
L84:    fconst_2 
L85:    fdiv 
L86:    fsub 
L87:    fstore 9 
L89:    aload 6 
L91:    getfield Field org/lwjgl/util/vector/Vector2f y F 
L94:    fload 5 
L96:    fconst_2 
L97:    fdiv 
L98:    fsub 
L99:    fstore 10 
L101:   aload_0 
L102:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L105:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine isSkipNextRender ()Z 
L108:   ifne L174 
L111:   fload 7 
L113:   fconst_0 
L114:   fadd 
L115:   fload 7 
L117:   fload_2 
L118:   fconst_1 
L119:   fmul 
L120:   fadd 
L121:   fload 8 
L123:   fconst_0 
L124:   fadd 
L125:   fload 8 
L127:   fload_3 
L128:   fconst_1 
L129:   fmul 
L130:   fadd 
L131:   ldc +1000.0f 
L133:   invokestatic Method com/fs/graphics/util/B o00000 (FFFFF)V 
L136:   aload_0 
L137:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L140:   fload 7 
L142:   fload 8 
L144:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine renderBG (FF)V 
L147:   aload_0 
L148:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L151:   fload 7 
L153:   fload 8 
L155:   fload_2 
L156:   fload_3 
L157:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine updateStarfield (FFFF)V 
L160:   aload_0 
L161:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L164:   fload 7 
L166:   fload 8 
L168:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine renderStarfield (FF)V 
L171:   invokestatic Method com/fs/graphics/util/B 'Õ00000' ()V 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Float Float Float Float Float Object org/lwjgl/util/vector/Vector2f Float Float Float Float 
            stack 
        .end stack 
L174:   aload_0 
L175:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L178:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getViewport ()Lcom/fs/starfarer/combat/CombatViewport; 
L181:   invokevirtual Method com/fs/starfarer/combat/CombatViewport isExternalControl ()Z 
L184:   ifeq L258 
L187:   aload_0 
L188:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L191:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getViewport ()Lcom/fs/starfarer/combat/CombatViewport; 
L194:   astore 11 
L196:   aload 11 
L198:   invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ViewportAPI getLLX ()F 1 
L203:   aload 11 
L205:   invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ViewportAPI getLLX ()F 1 
L210:   aload 11 
L212:   invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ViewportAPI getVisibleWidth ()F 1 
L217:   fadd 
L218:   aload 11 
L220:   invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ViewportAPI getLLY ()F 1 
L225:   aload 11 
L227:   invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ViewportAPI getLLY ()F 1 
L232:   aload 11 
L234:   invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ViewportAPI getVisibleHeight ()F 1 
L239:   fadd 
L240:   ldc +1000.0f 
L242:   invokestatic Method com/fs/graphics/util/B o00000 (FFFFF)V 
L245:   aload_0 
L246:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L249:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine render ()V 
L252:   invokestatic Method com/fs/graphics/util/B 'Õ00000' ()V 
L255:   goto L306 

        .stack same_extended 
L258:   fload 9 
L260:   fconst_0 
L261:   fadd 
L262:   fload 9 
L264:   fload 4 
L266:   fadd 
L267:   fload 10 
L269:   fconst_0 
L270:   fadd 
L271:   fload 10 
L273:   fload 5 
L275:   fadd 
L276:   ldc +1000.0f 
L278:   invokestatic Method com/fs/graphics/util/B o00000 (FFFFF)V 
L281:   aload_0 
L282:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L285:   fload 9 
L287:   fload 10 
L289:   fload 4 
L291:   fload 5 
L293:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setViewport (FFFF)V 
L296:   aload_0 
L297:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L300:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine render ()V 
L303:   invokestatic Method com/fs/graphics/util/B 'Õ00000' ()V 

        .stack same 
L306:   fload_2 
L307:   fload_3 
L308:   ldc +1000.0f 
L310:   invokestatic Method com/fs/graphics/util/B o00000 (FFF)V 
L313:   invokestatic Method com/fs/graphics/util/B 'Õ00000' ()V 
L316:   fload 9 
L318:   fconst_0 
L319:   fadd 
L320:   fload 9 
L322:   fload 4 
L324:   fadd 
L325:   fload 10 
L327:   fconst_0 
L328:   fadd 
L329:   fload 10 
L331:   fload 5 
L333:   fadd 
L334:   ldc +1000.0f 
L336:   invokestatic Method com/fs/graphics/util/B o00000 (FFFFF)V 
L339:   invokestatic Method com/fs/graphics/util/B 'Õ00000' ()V 
L342:   fload_2 
L343:   fload_3 
L344:   ldc +1000.0f 
L346:   invokestatic Method com/fs/graphics/util/B o00000 (FFF)V 
L349:   ldc_w 'Screen panel rendering' 
L352:   invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L355:   aload_0 
L356:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L359:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine renderInScreenCoordsUnderUI ()V 
L362:   aload_0 
L363:   getfield Field com/fs/starfarer/campaign/CampaignState hideUI Z 
L366:   ifeq L376 
L369:   aload_0 
L370:   getfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L373:   ifnull L403 

        .stack same_extended 
L376:   aload_0 
L377:   getfield Field com/fs/starfarer/campaign/CampaignState screenPanel Lcom/fs/starfarer/ui/interfacenew; 
L380:   aload_0 
L381:   getfield Field com/fs/starfarer/campaign/CampaignState messageDisplay Lcom/fs/starfarer/campaign/ui/O00O; 
L384:   invokevirtual Method com/fs/starfarer/ui/interfacenew bringToTop (Lcom/fs/starfarer/ui/c;)V 
L387:   aload_0 
L388:   getfield Field com/fs/starfarer/campaign/CampaignState screenPanel Lcom/fs/starfarer/ui/interfacenew; 
L391:   fconst_1 
L392:   invokevirtual Method com/fs/starfarer/ui/interfacenew render (F)V 
L395:   aload_0 
L396:   getfield Field com/fs/starfarer/campaign/CampaignState codexOverlay Lcom/fs/starfarer/ui/interfacenew; 
L399:   fconst_1 
L400:   invokevirtual Method com/fs/starfarer/ui/interfacenew render (F)V 

        .stack same 
L403:   invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L406:   aload_0 
L407:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L410:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine renderInScreenCoords ()V 
L413:   ldc_w 'renderVersionAndIdle' 
L416:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings class (Ljava/lang/String;)Z 
L419:   ifeq L448 
L422:   aload_0 
L423:   invokevirtual Method com/fs/starfarer/campaign/CampaignState getFps ()Lcom/fs/graphics/util/A; 
L426:   fload_2 
L427:   aload_0 
L428:   invokevirtual Method com/fs/starfarer/campaign/CampaignState getFps ()Lcom/fs/graphics/util/A; 
L431:   invokevirtual Method com/fs/graphics/util/A 'Ò00000' ()F 
L434:   fsub 
L435:   fconst_2 
L436:   fsub 
L437:   fload_3 
L438:   ldc_w +12.0f 
L441:   fsub 
L442:   invokevirtual Method com/fs/graphics/util/A 'super' (FF)V 
L445:   invokestatic Method com/fs/starfarer/Version render ()V 

        .stack same 
L448:   aload_0 
L449:   getfield Field com/fs/starfarer/campaign/CampaignState noise Lcom/fs/starfarer/class/G; 
L452:   fconst_0 
L453:   fconst_0 
L454:   fconst_1 
L455:   aload_0 
L456:   getfield Field com/fs/starfarer/campaign/CampaignState maxNoiseLevel F 
L459:   fmul 
L460:   invokevirtual Method com/fs/starfarer/class/G o00000 (FFF)V 
L463:   fload_1 
L464:   fconst_1 
L465:   fcmpg 
L466:   ifge L478 
L469:   aload_0 
L470:   fload_2 
L471:   fload_3 
L472:   fconst_1 
L473:   fload_1 
L474:   fsub 
L475:   invokevirtual Method com/fs/starfarer/campaign/CampaignState dimBackground (FFF)V 

        .stack same 
L478:   invokestatic Method com/fs/starfarer/return/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 'Ô00000' ()V 
L481:   invokestatic Method com/fs/graphics/util/B 'Õ00000' ()V 
L484:   aload_0 
L485:   iconst_0 
L486:   invokevirtual Method com/fs/starfarer/campaign/CampaignState setSuppressFuelRangeRenderingOneFrame (Z)V 
L489:   invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L492:   return 
L493:   
    .end code 
.end method 

.method private dimBackground : (FFF)V 
    .code stack 5 locals 4 
L0:     sipush 3553 
L3:     invokestatic Method org/lwjgl/opengl/GL11 glDisable (I)V 
L6:     sipush 3042 
L9:     invokestatic Method org/lwjgl/opengl/GL11 glEnable (I)V 
L12:    sipush 770 
L15:    sipush 771 
L18:    invokestatic Method org/lwjgl/opengl/GL11 glBlendFunc (II)V 
L21:    new java/awt/Color 
L24:    dup 
L25:    iconst_0 
L26:    iconst_0 
L27:    iconst_0 
L28:    invokespecial Method java/awt/Color <init> (III)V 
L31:    ldc_w +255.0f 
L34:    fload_3 
L35:    fmul 
L36:    f2i 
L37:    invokestatic Method com/fs/graphics/util/B o00000 (Ljava/awt/Color;I)V 
L40:    bipush 8 
L42:    invokestatic Method org/lwjgl/opengl/GL11 glBegin (I)V 
L45:    fconst_0 
L46:    fconst_0 
L47:    invokestatic Method org/lwjgl/opengl/GL11 glVertex2f (FF)V 
L50:    fconst_0 
L51:    fload_2 
L52:    invokestatic Method org/lwjgl/opengl/GL11 glVertex2f (FF)V 
L55:    fload_1 
L56:    fconst_0 
L57:    invokestatic Method org/lwjgl/opengl/GL11 glVertex2f (FF)V 
L60:    fload_1 
L61:    fload_2 
L62:    invokestatic Method org/lwjgl/opengl/GL11 glVertex2f (FF)V 
L65:    invokestatic Method org/lwjgl/opengl/GL11 glEnd ()V 
L68:    return 
L69:    
    .end code 
.end method 

.method protected onStateTransition : (Ljava/lang/String;)V 
    .code stack 0 locals 2 
L0:     return 
L1:     
    .end code 
.end method 

.method public showMessageDialog : (Ljava/lang/String;)V 
    .code stack 11 locals 3 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L4:     ifnull L8 
L7:     return 

        .stack same 
L8:     aload_0 
L9:     invokevirtual Method com/fs/starfarer/campaign/CampaignState isTransitioningToNextState ()Z 
L12:    ifeq L16 
L15:    return 

        .stack same 
L16:    aload_0 
L17:    aload_0 
L18:    getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L21:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine isPaused ()Z 
L24:    putfield Field com/fs/starfarer/campaign/CampaignState wasPaused Z 
L27:    aload_0 
L28:    getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L31:    iconst_1 
L32:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setPaused (Z)V 
L35:    new com/fs/starfarer/ui/impl/o0OO 
L38:    dup 
L39:    ldc +600.0f 
L41:    ldc_w +230.0f 
L44:    aload_0 
L45:    getfield Field com/fs/starfarer/campaign/CampaignState screenPanel Lcom/fs/starfarer/ui/interfacenew; 
L48:    aload_0 
L49:    aload_1 
L50:    iconst_1 
L51:    anewarray java/lang/String 
L54:    dup 
L55:    iconst_0 
L56:    ldc_w 'Ok' 
L59:    aastore 
L60:    invokespecial Method com/fs/starfarer/ui/impl/o0OO <init> (FFLcom/fs/starfarer/ui/interfacenew;Lcom/fs/starfarer/ui/oo0O$o;Ljava/lang/String;[Ljava/lang/String;)V 
L63:    astore_2 
L64:    aload_2 
L65:    ldc_w +0.30000001192092896f 
L68:    ldc_w +0.20000000298023224f 
L71:    invokevirtual Method com/fs/starfarer/ui/impl/o0OO show (FF)V 
L74:    aload_0 
L75:    getstatic Field com/fs/starfarer/campaign/CampaignState$o void Lcom/fs/starfarer/campaign/CampaignState$o; 
L78:    putfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L81:    return 
L82:    
    .end code 
.end method 

.method public showPlayerFactionConfigDialog : ()Z 
    .code stack 6 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L4:     ifnull L9 
L7:     iconst_0 
L8:     ireturn 

        .stack same 
L9:     aload_0 
L10:    invokevirtual Method com/fs/starfarer/campaign/CampaignState isTransitioningToNextState ()Z 
L13:    ifeq L18 
L16:    iconst_0 
L17:    ireturn 

        .stack same 
L18:    new com/fs/starfarer/campaign/ui/marketinfo/o0Oo 
L21:    dup 
L22:    aconst_null 
L23:    invokestatic Method com/fs/starfarer/api/util/Misc isPlayerFactionSetUp ()Z 
L26:    ifeq L33 
L29:    iconst_0 
L30:    goto L34 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState 
            stack Uninitialized L18 Uninitialized L18 Null 
        .end stack 
L33:    iconst_1 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState 
            stack Uninitialized L18 Uninitialized L18 Null Integer 
        .end stack 
L34:    aload_0 
L35:    getfield Field com/fs/starfarer/campaign/CampaignState screenPanel Lcom/fs/starfarer/ui/interfacenew; 
L38:    aload_0 
L39:    invokespecial Method com/fs/starfarer/campaign/ui/marketinfo/o0Oo <init> (Lcom/fs/starfarer/api/campaign/econ/MarketAPI;ZLcom/fs/starfarer/ui/interfacenew;Lcom/fs/starfarer/ui/oo0O$o;)V 
L42:    astore_1 
L43:    aload_1 
L44:    ldc_w +0.30000001192092896f 
L47:    ldc_w +0.20000000298023224f 
L50:    invokevirtual Method com/fs/starfarer/campaign/ui/marketinfo/o0Oo show (FF)V 
L53:    aload_0 
L54:    getstatic Field com/fs/starfarer/campaign/CampaignState$o 'Õ00000' Lcom/fs/starfarer/campaign/CampaignState$o; 
L57:    putfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L60:    iconst_1 
L61:    ireturn 
L62:    
    .end code 
.end method 

.method public showConfirmDialog : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fs/starfarer/api/Script;Lcom/fs/starfarer/api/Script;)Z 
    .code stack 8 locals 6 
L0:     aload_0 
L1:     aload_1 
L2:     aload_2 
L3:     aload_3 
L4:     ldc_w +500.0f 
L7:     ldc_w +200.0f 
L10:    aload 4 
L12:    aload 5 
L14:    invokevirtual Method com/fs/starfarer/campaign/CampaignState showConfirmDialog (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFLcom/fs/starfarer/api/Script;Lcom/fs/starfarer/api/Script;)Z 
L17:    ireturn 
L18:    
    .end code 
.end method 

.method public showConfirmDialog : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFLcom/fs/starfarer/api/Script;Lcom/fs/starfarer/api/Script;)Z 
    .code stack 11 locals 9 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L4:     ifnull L9 
L7:     iconst_0 
L8:     ireturn 

        .stack same 
L9:     aload_0 
L10:    invokevirtual Method com/fs/starfarer/campaign/CampaignState isTransitioningToNextState ()Z 
L13:    ifeq L18 
L16:    iconst_0 
L17:    ireturn 

        .stack same 
L18:    new com/fs/starfarer/ui/impl/o0OO 
L21:    dup 
L22:    fload 4 
L24:    fload 5 
L26:    aload_0 
L27:    getfield Field com/fs/starfarer/campaign/CampaignState screenPanel Lcom/fs/starfarer/ui/interfacenew; 
L30:    aload_0 
L31:    aload_1 
L32:    iconst_2 
L33:    anewarray java/lang/String 
L36:    dup 
L37:    iconst_0 
L38:    aload_2 
L39:    aastore 
L40:    dup 
L41:    iconst_1 
L42:    aload_3 
L43:    aastore 
L44:    invokespecial Method com/fs/starfarer/ui/impl/o0OO <init> (FFLcom/fs/starfarer/ui/interfacenew;Lcom/fs/starfarer/ui/oo0O$o;Ljava/lang/String;[Ljava/lang/String;)V 
L47:    astore 8 
L49:    aload 8 
L51:    ldc_w +0.30000001192092896f 
L54:    ldc_w +0.20000000298023224f 
L57:    invokevirtual Method com/fs/starfarer/ui/impl/o0OO show (FF)V 
L60:    aload_0 
L61:    getstatic Field com/fs/starfarer/campaign/CampaignState$o 'Ó00000' Lcom/fs/starfarer/campaign/CampaignState$o; 
L64:    putfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L67:    aload_0 
L68:    aload 6 
L70:    putfield Field com/fs/starfarer/campaign/CampaignState actionOk Lcom/fs/starfarer/api/Script; 
L73:    aload_0 
L74:    aload 7 
L76:    putfield Field com/fs/starfarer/campaign/CampaignState actionCancel Lcom/fs/starfarer/api/Script; 
L79:    aload_0 
L80:    getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L83:    iconst_1 
L84:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setPaused (Z)V 
L87:    iconst_1 
L88:    ireturn 
L89:    
    .end code 
.end method 

.method private showShuttleDialog : ()V 
    .code stack 11 locals 16 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/campaign/CampaignState isTransitioningToNextState ()Z 
L4:     ifeq L8 
L7:     return 

        .stack same 
L8:     invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L11:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getModAndPluginData ()Lcom/fs/starfarer/campaign/ModAndPluginData; 
L14:    invokevirtual Method com/fs/starfarer/campaign/ModAndPluginData pickRespawnPlugin ()Lcom/fs/starfarer/api/campaign/InteractionDialogPlugin; 
L17:    astore_1 
L18:    aload_1 
L19:    ifnull L30 
L22:    aload_0 
L23:    aload_1 
L24:    aconst_null 
L25:    invokevirtual Method com/fs/starfarer/campaign/CampaignState showInteractionDialog (Lcom/fs/starfarer/api/campaign/InteractionDialogPlugin;Lcom/fs/starfarer/api/campaign/SectorEntityToken;)Z 
L28:    pop 
L29:    return 

        .stack append Object com/fs/starfarer/api/campaign/InteractionDialogPlugin 
L30:    aload_0 
L31:    getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L34:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L37:    invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getMembers ()Ljava/util/List; 
L40:    invokeinterface InterfaceMethod java/util/List isEmpty ()Z 1 
L45:    ifeq L55 
L48:    ldc_w "Your fleet is scattered, and you yourself barely escape in the command pod.\n\nAfter a while, you're picked up by a passing salvage fleet and taken back to civilization. Eventually, you acquire another couple of craft and are able to ply the space lanes once again." 
L51:    astore_2 
L52:    goto L59 

        .stack same 
L55:    ldc_w "Some automated ships in your fleet still remain operational, but they're unable to find your command pod.\n\nAfter a while, you're picked up by a system patrol and taken back to civilization. Eventually, you acquire another craft and are able to ply the space lanes once again." 
L58:    astore_2 

        .stack append Object java/lang/String 
L59:    invokestatic Method com/fs/starfarer/api/util/Misc isSpacerStart ()Z 
L62:    ifeq L69 
L65:    ldc_w 'Eventually, your cryopod is picked up by a passing trader.\n\nNot one to be discouraged easily, you eventually claw your way back to the spacelanes, if only just.' 
L68:    astore_2 

        .stack same 
L69:    new com/fs/starfarer/ui/impl/o0OO 
L72:    dup 
L73:    ldc_w +500.0f 
L76:    ldc_w +250.0f 
L79:    aload_0 
L80:    getfield Field com/fs/starfarer/campaign/CampaignState screenPanel Lcom/fs/starfarer/ui/interfacenew; 
L83:    aload_0 
L84:    aload_2 
L85:    iconst_1 
L86:    anewarray java/lang/String 
L89:    dup 
L90:    iconst_0 
L91:    ldc_w 'Ok' 
L94:    aastore 
L95:    invokespecial Method com/fs/starfarer/ui/impl/o0OO <init> (FFLcom/fs/starfarer/ui/interfacenew;Lcom/fs/starfarer/ui/oo0O$o;Ljava/lang/String;[Ljava/lang/String;)V 
L98:    astore_3 
L99:    aload_3 
L100:   ldc_w +0.30000001192092896f 
L103:   ldc_w +0.20000000298023224f 
L106:   invokevirtual Method com/fs/starfarer/ui/impl/o0OO show (FF)V 
L109:   aload_0 
L110:   getstatic Field com/fs/starfarer/campaign/CampaignState$o OO0000 Lcom/fs/starfarer/campaign/CampaignState$o; 
L113:   putfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L116:   aload_0 
L117:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L120:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L123:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getCargo ()Lcom/fs/starfarer/campaign/fleet/CargoData; 
L126:   invokevirtual Method com/fs/starfarer/campaign/fleet/CargoData getCredits ()Lcom/fs/starfarer/api/util/MutableValue; 
L129:   invokevirtual Method com/fs/starfarer/api/util/MutableValue get ()F 
L132:   fstore 4 
L134:   aload_0 
L135:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L138:   aload_0 
L139:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L142:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L145:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine removeFleet (Lcom/fs/starfarer/campaign/fleet/CampaignFleet;)V 
L148:   aload_0 
L149:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L152:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getFactionManager ()Lcom/fs/starfarer/campaign/FactionManager; 
L155:   invokevirtual Method com/fs/starfarer/campaign/FactionManager getPlayerFaction ()Lcom/fs/starfarer/campaign/Faction; 
L158:   astore 5 
L160:   ldc_w 'shuttle' 
L163:   astore 6 
L165:   invokestatic Method com/fs/starfarer/api/util/Misc isEasy ()Z 
L168:   ifeq L176 
L171:   ldc_w 'shuttle_easy' 
L174:   astore 6 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Object com/fs/starfarer/api/campaign/InteractionDialogPlugin Object java/lang/String Object com/fs/starfarer/ui/impl/o0OO Float Object com/fs/starfarer/campaign/Faction Object java/lang/String 
            stack 
        .end stack 
L176:   aload 5 
L178:   invokevirtual Method com/fs/starfarer/campaign/Faction getSpec ()Lcom/fs/starfarer/loading/O0oO; 
L181:   aload 6 
L183:   invokevirtual Method com/fs/starfarer/loading/O0oO getStockFleet (Ljava/lang/String;)Lcom/fs/starfarer/loading/FleetCreationSpec; 
L186:   aload 5 
L188:   invokestatic Method com/fs/starfarer/loading/FleetCreationSpec createFleetFromSpec (Lcom/fs/starfarer/loading/FleetCreationSpec;Lcom/fs/starfarer/campaign/Faction;)Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L191:   astore 7 
L193:   aload_0 
L194:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L197:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L200:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getCargo ()Lcom/fs/starfarer/campaign/fleet/CargoData; 
L203:   invokevirtual Method com/fs/starfarer/campaign/fleet/CargoData getStacks ()Ljava/util/List; 
L206:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L211:   astore 9 
L213:   goto L295 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Object com/fs/starfarer/api/campaign/InteractionDialogPlugin Object java/lang/String Object com/fs/starfarer/ui/impl/o0OO Float Object com/fs/starfarer/campaign/Faction Object java/lang/String Object com/fs/starfarer/campaign/fleet/CampaignFleet Top Object java/util/Iterator 
            stack 
        .end stack 
L216:   aload 9 
L218:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L223:   checkcast com/fs/starfarer/campaign/ui/trade/CargoItemStack 
L226:   astore 8 
L228:   aload 8 
L230:   invokevirtual Method com/fs/starfarer/campaign/ui/trade/CargoItemStack isCommodityStack ()Z 
L233:   ifeq L263 
L236:   aload 8 
L238:   invokevirtual Method com/fs/starfarer/campaign/ui/trade/CargoItemStack getResourceIfResource ()Lcom/fs/starfarer/loading/OOoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO; 
L241:   ldc_w 'mission_item' 
L244:   invokevirtual Method com/fs/starfarer/loading/OOoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO hasTag (Ljava/lang/String;)Z 
L247:   ifeq L263 
L250:   aload 7 
L252:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getCargo ()Lcom/fs/starfarer/campaign/fleet/CargoData; 
L255:   aload 8 
L257:   invokevirtual Method com/fs/starfarer/campaign/fleet/CargoData addStack (Lcom/fs/starfarer/campaign/ui/trade/CargoItemStack;)V 
L260:   goto L295 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Object com/fs/starfarer/api/campaign/InteractionDialogPlugin Object java/lang/String Object com/fs/starfarer/ui/impl/o0OO Float Object com/fs/starfarer/campaign/Faction Object java/lang/String Object com/fs/starfarer/campaign/fleet/CampaignFleet Object com/fs/starfarer/campaign/ui/trade/CargoItemStack Object java/util/Iterator 
            stack 
        .end stack 
L263:   aload 8 
L265:   invokevirtual Method com/fs/starfarer/campaign/ui/trade/CargoItemStack isSpecialStack ()Z 
L268:   ifeq L295 
L271:   aload 8 
L273:   invokevirtual Method com/fs/starfarer/campaign/ui/trade/CargoItemStack getSpecialItemSpecIfSpecial ()Lcom/fs/starfarer/loading/X; 
L276:   ldc_w 'mission_item' 
L279:   invokevirtual Method com/fs/starfarer/loading/X hasTag (Ljava/lang/String;)Z 
L282:   ifeq L295 
L285:   aload 7 
L287:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getCargo ()Lcom/fs/starfarer/campaign/fleet/CargoData; 
L290:   aload 8 
L292:   invokevirtual Method com/fs/starfarer/campaign/fleet/CargoData addStack (Lcom/fs/starfarer/campaign/ui/trade/CargoItemStack;)V 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Object com/fs/starfarer/api/campaign/InteractionDialogPlugin Object java/lang/String Object com/fs/starfarer/ui/impl/o0OO Float Object com/fs/starfarer/campaign/Faction Object java/lang/String Object com/fs/starfarer/campaign/fleet/CampaignFleet Top Object java/util/Iterator 
            stack 
        .end stack 
L295:   aload 9 
L297:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L302:   ifne L216 
L305:   aload 7 
L307:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getCargo ()Lcom/fs/starfarer/campaign/fleet/CargoData; 
L310:   invokevirtual Method com/fs/starfarer/campaign/fleet/CargoData getSupplies ()F 
L313:   fstore 8 
L315:   aload 7 
L317:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getCargo ()Lcom/fs/starfarer/campaign/fleet/CargoData; 
L320:   fconst_0 
L321:   fload 8 
L323:   ldc_w +15.0f 
L326:   fsub 
L327:   invokestatic Method java/lang/Math max (FF)F 
L330:   invokevirtual Method com/fs/starfarer/campaign/fleet/CargoData removeSupplies (F)V 
L333:   invokestatic Method com/fs/starfarer/api/util/Misc isSpacerStart ()Z 
L336:   ifeq L411 
L339:   aload 7 
L341:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getFleetData ()Lcom/fs/starfarer/campaign/fleet/FleetData; 
L344:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetData clear ()V 
L347:   aload 7 
L349:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getFleetData ()Lcom/fs/starfarer/campaign/fleet/FleetData; 
L352:   ldc_w 'kite_original_Stock' 
L355:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetData addFleetMember [u1669] 
L358:   pop 
L359:   aload 7 
L361:   invokestatic Method com/fs/starfarer/api/impl/campaign/rulecmd/NGCAddStandardStartingScript adjustStartingHulls (Lcom/fs/starfarer/api/campaign/CampaignFleetAPI;)V 
L364:   aload 7 
L366:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getCargo ()Lcom/fs/starfarer/campaign/fleet/CargoData; 
L369:   invokevirtual Method com/fs/starfarer/campaign/fleet/CargoData clear ()V 
L372:   fload 4 
L374:   ldc_w +7000.0f 
L377:   fcmpl 
L378:   ifle L411 
L381:   aload 7 
L383:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getCargo ()Lcom/fs/starfarer/campaign/fleet/CargoData; 
L386:   iconst_2 
L387:   invokevirtual Method com/fs/starfarer/campaign/fleet/CargoData addCrew (I)V 
L390:   aload 7 
L392:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getCargo ()Lcom/fs/starfarer/campaign/fleet/CargoData; 
L395:   ldc +5.0f 
L397:   invokevirtual Method com/fs/starfarer/campaign/fleet/CargoData addSupplies (F)V 
L400:   aload 7 
L402:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getCargo ()Lcom/fs/starfarer/campaign/fleet/CargoData; 
L405:   ldc_w +10.0f 
L408:   invokevirtual Method com/fs/starfarer/campaign/fleet/CargoData addFuel (F)V 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Object com/fs/starfarer/api/campaign/InteractionDialogPlugin Object java/lang/String Object com/fs/starfarer/ui/impl/o0OO Float Object com/fs/starfarer/campaign/Faction Object java/lang/String Object com/fs/starfarer/campaign/fleet/CampaignFleet Float 
            stack 
        .end stack 
L411:   aload_0 
L412:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L415:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getRespawnLocation ()Lcom/fs/starfarer/api/campaign/LocationAPI; 
L418:   ifnonnull L438 
L421:   aload_0 
L422:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L425:   aload_0 
L426:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L429:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getHyperspace ()Lcom/fs/starfarer/campaign/Hyperspace; 
L432:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setCurrentLocation (Lcom/fs/starfarer/api/campaign/LocationAPI;)V 
L435:   goto L452 

        .stack same 
L438:   aload_0 
L439:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L442:   aload_0 
L443:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L446:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getRespawnLocation ()Lcom/fs/starfarer/api/campaign/LocationAPI; 
L449:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setCurrentLocation (Lcom/fs/starfarer/api/campaign/LocationAPI;)V 

        .stack same 
L452:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L455:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L458:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getFleetData ()Lcom/fs/starfarer/campaign/fleet/FleetData; 
L461:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetData getOfficers ()Ljava/util/List; 
L464:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L469:   astore 10 
L471:   goto L502 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Object com/fs/starfarer/api/campaign/InteractionDialogPlugin Object java/lang/String Object com/fs/starfarer/ui/impl/o0OO Float Object com/fs/starfarer/campaign/Faction Object java/lang/String Object com/fs/starfarer/campaign/fleet/CampaignFleet Float Top Object java/util/Iterator 
            stack 
        .end stack 
L474:   aload 10 
L476:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L481:   checkcast com/fs/starfarer/rpg/OfficerData 
L484:   astore 9 
L486:   aload 7 
L488:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getFleetData ()Lcom/fs/starfarer/campaign/fleet/FleetData; 
L491:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetData getOfficers ()Ljava/util/List; 
L494:   aload 9 
L496:   invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L501:   pop 

        .stack same 
L502:   aload 10 
L504:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L509:   ifne L474 
L512:   new com/fs/starfarer/api/util/WeightedRandomPicker 
L515:   dup 
L516:   invokespecial Method com/fs/starfarer/api/util/WeightedRandomPicker <init> ()V 
L519:   astore 9 
L521:   aload_0 
L522:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L525:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getEconomy ()Lcom/fs/starfarer/campaign/econ/Economy; 
L528:   invokevirtual Method com/fs/starfarer/campaign/econ/Economy getMarkets ()Ljava/util/List; 
L531:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L536:   astore 11 
L538:   goto L678 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Object com/fs/starfarer/api/campaign/InteractionDialogPlugin Object java/lang/String Object com/fs/starfarer/ui/impl/o0OO Float Object com/fs/starfarer/campaign/Faction Object java/lang/String Object com/fs/starfarer/campaign/fleet/CampaignFleet Float Object com/fs/starfarer/api/util/WeightedRandomPicker Top Object java/util/Iterator 
            stack 
        .end stack 
L541:   aload 11 
L543:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L548:   checkcast com/fs/starfarer/api/campaign/econ/MarketAPI 
L551:   astore 10 
L553:   aload 10 
L555:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/econ/MarketAPI isHidden ()Z 1 
L560:   ifeq L566 
L563:   goto L678 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Object com/fs/starfarer/api/campaign/InteractionDialogPlugin Object java/lang/String Object com/fs/starfarer/ui/impl/o0OO Float Object com/fs/starfarer/campaign/Faction Object java/lang/String Object com/fs/starfarer/campaign/fleet/CampaignFleet Float Object com/fs/starfarer/api/util/WeightedRandomPicker Object com/fs/starfarer/api/campaign/econ/MarketAPI Object java/util/Iterator 
            stack 
        .end stack 
L566:   aload 10 
L568:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/econ/MarketAPI getContainingLocation ()Lcom/fs/starfarer/api/campaign/LocationAPI; 1 
L573:   ifnull L597 
L576:   aload 10 
L578:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/econ/MarketAPI getContainingLocation ()Lcom/fs/starfarer/api/campaign/LocationAPI; 1 
L583:   ldc_w 'do_not_respawn_player_in' 
L586:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/LocationAPI hasTag (Ljava/lang/String;)Z 2 
L591:   ifeq L597 
L594:   goto L678 

        .stack same 
L597:   aload 10 
L599:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/econ/MarketAPI getContainingLocation ()Lcom/fs/starfarer/api/campaign/LocationAPI; 1 
L604:   ifnull L625 
L607:   aload 10 
L609:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/econ/MarketAPI getContainingLocation ()Lcom/fs/starfarer/api/campaign/LocationAPI; 1 
L614:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/LocationAPI isHyperspace ()Z 1 
L619:   ifeq L625 
L622:   goto L678 

        .stack same 
L625:   aload 10 
L627:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/econ/MarketAPI getFaction ()Lcom/fs/starfarer/api/campaign/FactionAPI; 1 
L632:   aload_0 
L633:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L636:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFaction ()Lcom/fs/starfarer/campaign/Faction; 
L639:   invokevirtual Method com/fs/starfarer/campaign/Faction getId ()Ljava/lang/String; 
L642:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/FactionAPI getRelationship (Ljava/lang/String;)F 2 
L647:   fstore 12 
L649:   fload 12 
L651:   fconst_0 
L652:   fcmpl 
L653:   ifle L678 
L656:   aload 9 
L658:   aload 10 
L660:   fload 12 
L662:   ldc_w +100.0f 
L665:   fmul 
L666:   aload 10 
L668:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/econ/MarketAPI getSize ()I 1 
L673:   i2f 
L674:   fmul 
L675:   invokevirtual Method com/fs/starfarer/api/util/WeightedRandomPicker add (Ljava/lang/Object;F)V 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Object [c639] Object java/lang/String Object com/fs/starfarer/ui/impl/o0OO Float Object com/fs/starfarer/campaign/Faction Object java/lang/String Object com/fs/starfarer/campaign/fleet/CampaignFleet Float Object com/fs/starfarer/api/util/WeightedRandomPicker Top Object java/util/Iterator 
            stack 
        .end stack 
L678:   aload 11 
L680:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L685:   ifne L541 
L688:   aload_0 
L689:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L692:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getRespawnCoordinates ()Lorg/lwjgl/util/vector/Vector2f; 
L695:   astore 10 
L697:   aload 9 
L699:   invokevirtual Method com/fs/starfarer/api/util/WeightedRandomPicker pick ()Ljava/lang/Object; 
L702:   checkcast com/fs/starfarer/api/campaign/econ/MarketAPI 
L705:   astore 11 
L707:   aload 11 
L709:   ifnull L769 
L712:   aload 11 
L714:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/econ/MarketAPI getContainingLocation ()Lcom/fs/starfarer/api/campaign/LocationAPI; 1 
L719:   ifnull L769 
L722:   aload_0 
L723:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L726:   aload 11 
L728:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/econ/MarketAPI getContainingLocation ()Lcom/fs/starfarer/api/campaign/LocationAPI; 1 
L733:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setCurrentLocation (Lcom/fs/starfarer/api/campaign/LocationAPI;)V 
L736:   aload 11 
L738:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/econ/MarketAPI getPrimaryEntity [u458] 1 
L743:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorEntityToken getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L748:   aload 11 
L750:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/econ/MarketAPI getPrimaryEntity [u458] 1 
L755:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorEntityToken getRadius ()F 1 
L760:   ldc_w +200.0f 
L763:   fadd 
L764:   invokestatic Method com/fs/starfarer/api/util/Misc getPointAtRadius (Lorg/lwjgl/util/vector/Vector2f;F)Lorg/lwjgl/util/vector/Vector2f; 
L767:   astore 10 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Object [c639] Object java/lang/String Object com/fs/starfarer/ui/impl/o0OO Float Object com/fs/starfarer/campaign/Faction Object java/lang/String Object com/fs/starfarer/campaign/fleet/CampaignFleet Float Object com/fs/starfarer/api/util/WeightedRandomPicker Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/api/campaign/econ/MarketAPI 
            stack 
        .end stack 
L769:   aload_0 
L770:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L773:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getCurrentLocation ()Lcom/fs/starfarer/campaign/BaseLocation; 
L776:   aconst_null 
L777:   aload 10 
L779:   getfield Field org/lwjgl/util/vector/Vector2f x F 
L782:   aload 10 
L784:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L787:   aload 7 
L789:   invokevirtual Method com/fs/starfarer/campaign/BaseLocation spawnFleet (Lcom/fs/starfarer/api/campaign/SectorEntityToken;FFLcom/fs/starfarer/api/campaign/CampaignFleetAPI;)V 
L792:   aload_0 
L793:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L796:   aload 7 
L798:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setPlayerFleet (Lcom/fs/starfarer/api/campaign/CampaignFleetAPI;)V 
L801:   aload_0 
L802:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L805:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getCurrentLocation ()Lcom/fs/starfarer/campaign/BaseLocation; 
L808:   invokevirtual Method com/fs/starfarer/campaign/BaseLocation getFleets ()Ljava/util/List; 
L811:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L816:   astore 13 
L818:   goto L838 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Object [c639] Object java/lang/String Object com/fs/starfarer/ui/impl/o0OO Float Object com/fs/starfarer/campaign/Faction Object java/lang/String Object com/fs/starfarer/campaign/fleet/CampaignFleet Float Object com/fs/starfarer/api/util/WeightedRandomPicker Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/api/campaign/econ/MarketAPI Top Object java/util/Iterator 
            stack 
        .end stack 
L821:   aload 13 
L823:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L828:   checkcast com/fs/starfarer/api/campaign/CampaignFleetAPI 
L831:   astore 12 
L833:   aload 12 
L835:   invokestatic Method com/fs/starfarer/api/util/Misc forgetAboutTransponder (Lcom/fs/starfarer/api/campaign/CampaignFleetAPI;)V 

        .stack same 
L838:   aload 13 
L840:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L845:   ifne L821 
L848:   aload_0 
L849:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L852:   ldc2_w -9223372036854775808L 
L855:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setLastPlayerBattleTimestamp (J)V 
L858:   aload_0 
L859:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L862:   iconst_0 
L863:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setLastPlayerBattleWon (Z)V 
L866:   aload 7 
L868:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getFleetData ()Lcom/fs/starfarer/campaign/fleet/FleetData; 
L871:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetData setSyncNeeded ()V 
L874:   aload 7 
L876:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getFleetData ()Lcom/fs/starfarer/campaign/fleet/FleetData; 
L879:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetData syncIfNeeded ()V 
L882:   aload 7 
L884:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getMembers ()Ljava/util/List; 
L887:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L892:   astore 13 
L894:   goto L929 

        .stack same 
L897:   aload 13 
L899:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L904:   checkcast com/fs/starfarer/campaign/fleet/FleetMember 
L907:   astore 12 
L909:   aload 12 
L911:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getRepairTracker ()Lcom/fs/starfarer/campaign/fleet/RepairTracker; 
L914:   invokevirtual Method com/fs/starfarer/campaign/fleet/RepairTracker getMaxCR ()F 
L917:   fstore 14 
L919:   aload 12 
L921:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getRepairTracker ()Lcom/fs/starfarer/campaign/fleet/RepairTracker; 
L924:   fload 14 
L926:   invokevirtual Method com/fs/starfarer/campaign/fleet/RepairTracker setCR (F)V 

        .stack same 
L929:   aload 13 
L931:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L936:   ifne L897 
L939:   aload_0 
L940:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L943:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getCharacterData ()Lcom/fs/starfarer/campaign/PlayerCharacterData; 
L946:   invokevirtual Method com/fs/starfarer/campaign/PlayerCharacterData getAbilities ()Ljava/util/Set; 
L949:   invokeinterface InterfaceMethod java/util/Set iterator ()Ljava/util/Iterator; 1 
L954:   astore 13 
L956:   goto L978 

        .stack same 
L959:   aload 13 
L961:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L966:   checkcast java/lang/String 
L969:   astore 12 
L971:   aload 7 
L973:   aload 12 
L975:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet addAbility (Ljava/lang/String;)V 

        .stack same 
L978:   aload 13 
L980:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L985:   ifne L959 
L988:   aload 7 
L990:   ldc_w 'transponder' 
L993:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getAbility (Ljava/lang/String;)Lcom/fs/starfarer/api/characters/AbilityPlugin; 
L996:   ifnull L1012 
L999:   aload 7 
L1001:  ldc_w 'transponder' 
L1004:  invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getAbility (Ljava/lang/String;)Lcom/fs/starfarer/api/characters/AbilityPlugin; 
L1007:  invokeinterface InterfaceMethod com/fs/starfarer/api/characters/AbilityPlugin activate ()V 1 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Object [c639] Object java/lang/String Object com/fs/starfarer/ui/impl/o0OO Float Object com/fs/starfarer/campaign/Faction Object java/lang/String Object com/fs/starfarer/campaign/fleet/CampaignFleet Float Object com/fs/starfarer/api/util/WeightedRandomPicker Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/api/campaign/econ/MarketAPI 
            stack 
        .end stack 
L1012:  aload_0 
L1013:  getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L1016:  iconst_1 
L1017:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setPaused (Z)V 
L1020:  ldc_w +2000.0f 
L1023:  fstore 12 
L1025:  fload 4 
L1027:  ldc_w +0.800000011920929f 
L1030:  fmul 
L1031:  fload 12 
L1033:  invokestatic Method java/lang/Math max (FF)F 
L1036:  fstore 13 
L1038:  fload 4 
L1040:  fload 13 
L1042:  fsub 
L1043:  fstore 14 
L1045:  aload 7 
L1047:  invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getCargo ()Lcom/fs/starfarer/campaign/fleet/CargoData; 
L1050:  invokevirtual Method com/fs/starfarer/campaign/fleet/CargoData getCredits ()Lcom/fs/starfarer/api/util/MutableValue; 
L1053:  fload 13 
L1055:  invokevirtual Method com/fs/starfarer/api/util/MutableValue add (F)V 
L1058:  fload 14 
L1060:  fconst_0 
L1061:  fcmpl 
L1062:  ifle L1111 
L1065:  new com/fs/starfarer/api/impl/campaign/intel/MessageIntel 
L1068:  dup 
L1069:  ldc_w 'Lost %s credits' 
L1072:  invokestatic Method com/fs/starfarer/api/util/Misc getBasePlayerColor ()Ljava/awt/Color; 
L1075:  iconst_1 
L1076:  anewarray java/lang/String 
L1079:  dup 
L1080:  iconst_0 
L1081:  fload 14 
L1083:  invokestatic Method com/fs/starfarer/api/util/Misc getDGSCredits (F)Ljava/lang/String; 
L1086:  aastore 
L1087:  iconst_1 
L1088:  anewarray java/awt/Color 
L1091:  dup 
L1092:  iconst_0 
L1093:  invokestatic Method com/fs/starfarer/api/util/Misc getHighlightColor ()Ljava/awt/Color; 
L1096:  aastore 
L1097:  invokespecial Method com/fs/starfarer/api/impl/campaign/intel/MessageIntel <init> (Ljava/lang/String;Ljava/awt/Color;[Ljava/lang/String;[Ljava/awt/Color;)V 
L1100:  astore 15 
L1102:  aload_0 
L1103:  aload 15 
L1105:  invokevirtual Method com/fs/starfarer/campaign/CampaignState addMessage (Lcom/fs/starfarer/api/campaign/comm/IntelInfoPlugin;)V 
L1108:  goto L1162 

        .stack append Float Float Float 
L1111:  fload 14 
L1113:  fconst_0 
L1114:  fcmpg 
L1115:  ifge L1162 
L1118:  new com/fs/starfarer/api/impl/campaign/intel/MessageIntel 
L1121:  dup 
L1122:  ldc_w 'Gained %s credits' 
L1125:  invokestatic Method com/fs/starfarer/api/util/Misc getBasePlayerColor ()Ljava/awt/Color; 
L1128:  iconst_1 
L1129:  anewarray java/lang/String 
L1132:  dup 
L1133:  iconst_0 
L1134:  fload 14 
L1136:  fneg 
L1137:  invokestatic Method com/fs/starfarer/api/util/Misc getDGSCredits (F)Ljava/lang/String; 
L1140:  aastore 
L1141:  iconst_1 
L1142:  anewarray java/awt/Color 
L1145:  dup 
L1146:  iconst_0 
L1147:  invokestatic Method com/fs/starfarer/api/util/Misc getHighlightColor ()Ljava/awt/Color; 
L1150:  aastore 
L1151:  invokespecial Method com/fs/starfarer/api/impl/campaign/intel/MessageIntel <init> (Ljava/lang/String;Ljava/awt/Color;[Ljava/lang/String;[Ljava/awt/Color;)V 
L1154:  astore 15 
L1156:  aload_0 
L1157:  aload 15 
L1159:  invokevirtual Method com/fs/starfarer/campaign/CampaignState addMessage [u530] 

        .stack same 
L1162:  aload_0 
L1163:  invokevirtual Method com/fs/starfarer/campaign/CampaignState resetViewOffset ()V 
L1166:  ldc_w +2000.0f 
L1169:  invokestatic Method com/fs/starfarer/campaign/save/CampaignGameManager o00000 (F)V 
L1172:  invokestatic Method com/fs/starfarer/api/impl/campaign/shared/SharedData getData ()Lcom/fs/starfarer/api/impl/campaign/shared/SharedData; 
L1175:  invokevirtual Method com/fs/starfarer/api/impl/campaign/shared/SharedData getPersonBountyEventData ()Lcom/fs/starfarer/api/impl/campaign/shared/PersonBountyEventData; 
L1178:  astore 15 
L1180:  aload 15 
L1182:  iconst_0 
L1183:  aload 15 
L1185:  invokevirtual Method com/fs/starfarer/api/impl/campaign/shared/PersonBountyEventData getLevel ()I 
L1188:  iconst_1 
L1189:  isub 
L1190:  invokestatic Method java/lang/Math max (II)I 
L1193:  invokevirtual Method com/fs/starfarer/api/impl/campaign/shared/PersonBountyEventData setLevel (I)V 
L1196:  aload 15 
L1198:  iconst_0 
L1199:  invokevirtual Method com/fs/starfarer/api/impl/campaign/shared/PersonBountyEventData setSuccessesThisLevel (I)V 
L1202:  return 
L1203:  
    .end code 
.end method 

.method public setDialogType : (Lcom/fs/starfarer/campaign/CampaignState$o;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L5:     return 
L6:     
    .end code 
.end method 

.method public dialogDismissed : (Lcom/fs/starfarer/ui/oo0O;I)V 
    .code stack 4 locals 15 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L4:     ifnonnull L8 
L7:     return 

        .stack same 
L8:     iconst_0 
L9:     istore_3 
L10:    invokestatic Method com/fs/starfarer/campaign/CampaignState $SWITCH_TABLE$com$fs$starfarer$campaign$CampaignState$CurrentDialogType ()[I 
L13:    aload_0 
L14:    getfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L17:    invokevirtual Method com/fs/starfarer/campaign/CampaignState$o ordinal ()I 
L20:    iaload 
L21:    tableswitch 1 
            L954 
            L560 
            L893 
            L109 
            L183 
            L334 
            L984 
            L998 
            L92 
            L123 
            L1026 
            L1012 
            L106 
            L1037 
            default : L1048 


        .stack append Integer 
L92:    aload_0 
L93:    getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L96:    aload_0 
L97:    getfield Field com/fs/starfarer/campaign/CampaignState wasPaused Z 
L100:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setPaused (Z)V 
L103:   goto L1048 

        .stack same 
L106:   goto L1048 

        .stack same 
L109:   aload_0 
L110:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L113:   aload_0 
L114:   getfield Field com/fs/starfarer/campaign/CampaignState wasPaused Z 
L117:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setPaused (Z)V 
L120:   goto L1048 

        .stack same 
L123:   iload_2 
L124:   ifne L146 
L127:   aload_0 
L128:   getfield Field com/fs/starfarer/campaign/CampaignState actionOk Lcom/fs/starfarer/api/Script; 
L131:   ifnull L162 
L134:   aload_0 
L135:   getfield Field com/fs/starfarer/campaign/CampaignState actionOk Lcom/fs/starfarer/api/Script; 
L138:   invokeinterface InterfaceMethod com/fs/starfarer/api/Script run ()V 1 
L143:   goto L162 

        .stack same 
L146:   aload_0 
L147:   getfield Field com/fs/starfarer/campaign/CampaignState actionCancel Lcom/fs/starfarer/api/Script; 
L150:   ifnull L162 
L153:   aload_0 
L154:   getfield Field com/fs/starfarer/campaign/CampaignState actionCancel Lcom/fs/starfarer/api/Script; 
L157:   invokeinterface InterfaceMethod com/fs/starfarer/api/Script run ()V 1 

        .stack same 
L162:   aload_0 
L163:   aconst_null 
L164:   putfield Field com/fs/starfarer/campaign/CampaignState actionOk Lcom/fs/starfarer/api/Script; 
L167:   aload_0 
L168:   aconst_null 
L169:   putfield Field com/fs/starfarer/campaign/CampaignState actionCancel Lcom/fs/starfarer/api/Script; 
L172:   aload_0 
L173:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L176:   iconst_0 
L177:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setPaused (Z)V 
L180:   goto L1048 

        .stack same 
L183:   iload_2 
L184:   ifne L312 
L187:   aload_1 
L188:   instanceof com/fs/starfarer/campaign/save/LoadGameDialog 
L191:   ifeq L312 
L194:   aload_1 
L195:   checkcast com/fs/starfarer/campaign/save/LoadGameDialog 
L198:   astore 4 
L200:   aload 4 
L202:   invokevirtual Method com/fs/starfarer/campaign/save/LoadGameDialog getSelectedData ()Lcom/fs/starfarer/campaign/save/SaveGameData; 
L205:   astore 5 
L207:   aload 5 
L209:   ifnull L305 
L212:   aload_0 
L213:   invokevirtual Method com/fs/starfarer/campaign/CampaignState doubleRender ()V 
L216:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine resetInstance ()V 
L219:   aload 5 
L221:   invokevirtual Method com/fs/starfarer/campaign/save/SaveGameData getSaveDir ()Ljava/io/File; 
L224:   invokevirtual Method java/io/File getAbsolutePath ()Ljava/lang/String; 
L227:   aload_0 
L228:   aload_0 
L229:   invokestatic Method com/fs/starfarer/campaign/save/CampaignGameManager o00000 (Ljava/lang/String;Lcom/fs/starfarer/campaign/void;Lcom/fs/starfarer/campaign/CampaignEngine$o;)Ljava/lang/String; 
L232:   astore 6 
L234:   aload 6 
L236:   ifnonnull L253 
L239:   aload_0 
L240:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L243:   putfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L246:   aload_0 
L247:   invokevirtual Method com/fs/starfarer/campaign/CampaignState resetLeakChecker ()V 
L250:   goto L312 

        .stack append Object com/fs/starfarer/campaign/save/LoadGameDialog Object com/fs/starfarer/campaign/save/SaveGameData Object java/lang/String 
L253:   aload_0 
L254:   aconst_null 
L255:   putfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L258:   aload_0 
L259:   new java/lang/StringBuilder 
L262:   dup 
L263:   ldc_w 'Error loading saved game:\n' 
L266:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L269:   aload 6 
L271:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L274:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L277:   invokevirtual Method com/fs/starfarer/campaign/CampaignState showMessageDialog (Ljava/lang/String;)V 
L280:   iconst_1 
L281:   istore_3 
L282:   aload_0 
L283:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L286:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine setInstance (Lcom/fs/starfarer/campaign/CampaignEngine;)V 
L289:   aload_0 
L290:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L293:   iconst_1 
L294:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setPaused (Z)V 
L297:   aload_0 
L298:   iconst_1 
L299:   putfield Field com/fs/starfarer/campaign/CampaignState wasPaused Z 
L302:   goto L312 

        .stack chop 1 
L305:   aload_0 
L306:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L309:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine setInstance (Lcom/fs/starfarer/campaign/CampaignEngine;)V 

        .stack chop 2 
L312:   aload_0 
L313:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L316:   aload_0 
L317:   getfield Field com/fs/starfarer/campaign/CampaignState wasPaused Z 
L320:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setPaused (Z)V 
L323:   aload_0 
L324:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L327:   iconst_1 
L328:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setPaused (Z)V 
L331:   goto L1048 

        .stack same 
L334:   iload_2 
L335:   ifne L1048 
L338:   aload_1 
L339:   instanceof com/fs/starfarer/campaign/save/LoadGameDialog 
L342:   ifeq L1048 
L345:   aload_1 
L346:   checkcast com/fs/starfarer/campaign/save/LoadGameDialog 
L349:   astore 4 
L351:   aload 4 
L353:   invokevirtual Method com/fs/starfarer/campaign/save/LoadGameDialog getSaveAs ()Lcom/fs/starfarer/campaign/save/O0oO; 
L356:   invokevirtual Method com/fs/starfarer/campaign/save/O0oO getMakeCurrent ()Lcom/fs/starfarer/ui/n; 
L359:   invokevirtual Method com/fs/starfarer/ui/n isChecked ()Z 
L362:   istore 5 
L364:   aload 4 
L366:   invokevirtual Method com/fs/starfarer/campaign/save/LoadGameDialog getSaveAs ()Lcom/fs/starfarer/campaign/save/O0oO; 
L369:   invokevirtual Method com/fs/starfarer/campaign/save/O0oO getText ()Ljava/lang/String; 
L372:   astore 6 
L374:   aload 4 
L376:   invokevirtual Method com/fs/starfarer/campaign/save/LoadGameDialog getSaveAs ()Lcom/fs/starfarer/campaign/save/O0oO; 
L379:   invokevirtual Method com/fs/starfarer/campaign/save/O0oO getCurrentSlot ()Lcom/fs/starfarer/campaign/save/SaveGameData; 
L382:   astore 7 
L384:   aload 4 
L386:   invokevirtual Method com/fs/starfarer/campaign/save/LoadGameDialog getSaveAs ()Lcom/fs/starfarer/campaign/save/O0oO; 
L389:   invokevirtual Method com/fs/starfarer/campaign/save/O0oO getNewSlot ()Lcom/fs/starfarer/campaign/save/SaveGameData; 
L392:   astore 8 
L394:   aload 8 
L396:   invokevirtual Method com/fs/starfarer/campaign/save/SaveGameData getSlotCreationTimestamp ()J 
L399:   lstore 9 
L401:   aload 8 
L403:   invokevirtual Method com/fs/starfarer/campaign/save/SaveGameData isEmptySlot ()Z 
L406:   ifeq L412 
L409:   lconst_0 
L410:   lstore 9 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Object com/fs/starfarer/ui/oo0O Integer Integer Object com/fs/starfarer/campaign/save/LoadGameDialog Integer Object java/lang/String Object com/fs/starfarer/campaign/save/SaveGameData Object com/fs/starfarer/campaign/save/SaveGameData Long 
            stack 
        .end stack 
L412:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L415:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getSaveDesc ()Ljava/lang/String; 
L418:   astore 11 
L420:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L423:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getSaveDirName ()Ljava/lang/String; 
L426:   astore 12 
L428:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L431:   aload 6 
L433:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setSaveDesc (Ljava/lang/String;)V 
L436:   aload 7 
L438:   aload 8 
L440:   if_acmpeq L461 
L443:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L446:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L449:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getCharacterData ()Lcom/fs/starfarer/campaign/PlayerCharacterData; 
L452:   invokevirtual Method com/fs/starfarer/campaign/PlayerCharacterData getName ()Ljava/lang/String; 
L455:   invokestatic Method com/fs/starfarer/campaign/save/CampaignGameManager o00000 (Ljava/lang/String;)Ljava/lang/String; 
L458:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setSaveDirName (Ljava/lang/String;)V 

        .stack append Object java/lang/String Object java/lang/String 
L461:   aload_0 
L462:   invokevirtual Method com/fs/starfarer/campaign/CampaignState doubleRender ()V 
L465:   aload_0 
L466:   lload 9 
L468:   iconst_0 
L469:   invokestatic Method com/fs/starfarer/campaign/save/CampaignGameManager o00000 (Lcom/fs/starfarer/campaign/CampaignEngine$o;JZ)Ljava/lang/String; 
L472:   astore 13 
L474:   aload 13 
L476:   ifnonnull L484 
L479:   iload 5 
L481:   ifne L511 

        .stack append Object java/lang/String 
L484:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L487:   aload 12 
L489:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setSaveDirName (Ljava/lang/String;)V 
L492:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L495:   aload 11 
L497:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setSaveDesc (Ljava/lang/String;)V 
L500:   aload 13 
L502:   ifnull L511 
L505:   aload_0 
L506:   aload 13 
L508:   invokevirtual Method com/fs/starfarer/campaign/CampaignState showMessageDialog (Ljava/lang/String;)V 

        .stack same 
L511:   aload 7 
L513:   aload 8 
L515:   if_acmpeq L1048 
L518:   aload 13 
L520:   ifnonnull L1048 
L523:   aload 8 
L525:   invokevirtual Method com/fs/starfarer/campaign/save/SaveGameData isEmptySlot ()Z 
L528:   ifne L1048 
        .catch java/lang/Exception from L531 to L539 using L542 
L531:   aload 8 
L533:   invokevirtual Method com/fs/starfarer/campaign/save/SaveGameData getSaveDir ()Ljava/io/File; 
L536:   invokestatic Method com/fs/starfarer/campaign/save/CampaignGameManager new (Ljava/io/File;)V 
L539:   goto L1048 

        .stack stack_1 Object java/lang/Exception 
L542:   astore 14 
L544:   getstatic Field com/fs/starfarer/campaign/CampaignState log Lorg/apache/log4j/Logger; 
L547:   aload 14 
L549:   invokevirtual Method java/lang/Exception getMessage ()Ljava/lang/String; 
L552:   aload 14 
L554:   invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;Ljava/lang/Throwable;)V 
L557:   goto L1048 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Object com/fs/starfarer/ui/oo0O Integer Integer 
            stack 
        .end stack 
L560:   aload_0 
L561:   getfield Field com/fs/starfarer/campaign/CampaignState core Lcom/fs/starfarer/ui/newui/L; 
L564:   invokevirtual Method com/fs/starfarer/ui/newui/L getFader ()Lcom/fs/graphics/util/Fader; 
L567:   invokevirtual Method com/fs/graphics/util/Fader fadeIn ()V 
L570:   aload_0 
L571:   getfield Field com/fs/starfarer/campaign/CampaignState core Lcom/fs/starfarer/ui/newui/L; 
L574:   invokevirtual Method com/fs/starfarer/ui/newui/L showLogistics ()V 
L577:   aload_0 
L578:   getfield Field com/fs/starfarer/campaign/CampaignState core Lcom/fs/starfarer/ui/newui/L; 
L581:   invokevirtual Method com/fs/starfarer/ui/newui/L showAbilityBar ()V 
L584:   aload_0 
L585:   getfield Field com/fs/starfarer/campaign/CampaignState core Lcom/fs/starfarer/ui/newui/L; 
L588:   invokevirtual Method com/fs/starfarer/ui/newui/L getLogistics ()Lcom/fs/starfarer/coreui/Objectnew; 
L591:   invokevirtual Method com/fs/starfarer/coreui/Objectnew contract ()V 
L594:   aload_0 
L595:   getfield Field com/fs/starfarer/campaign/CampaignState session Ljava/util/Map; 
L598:   ldc 'campaign battle result' 
L600:   invokeinterface InterfaceMethod java/util/Map remove (Ljava/lang/Object;)Ljava/lang/Object; 2 
L605:   pop 
L606:   aload_0 
L607:   getfield Field com/fs/starfarer/campaign/CampaignState encounterDialog Lcom/fs/starfarer/ui/newui/o0Oo; 
L610:   ifnull L672 
L613:   aload_0 
L614:   getfield Field com/fs/starfarer/campaign/CampaignState encounterDialog Lcom/fs/starfarer/ui/newui/o0Oo; 
L617:   invokevirtual Method com/fs/starfarer/ui/newui/o0Oo getInteractionTarget [u458] 
L620:   instanceof com/fs/starfarer/campaign/fleet/CampaignFleet 
L623:   ifeq L672 
L626:   aload_0 
L627:   getfield Field com/fs/starfarer/campaign/CampaignState encounterDialog Lcom/fs/starfarer/ui/newui/o0Oo; 
L630:   invokevirtual Method com/fs/starfarer/ui/newui/o0Oo getInteractionTarget [u458] 
L633:   checkcast com/fs/starfarer/campaign/fleet/CampaignFleet 
L636:   astore 4 
L638:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'OÓ0000' ()Z 
L641:   ifeq L683 
L644:   invokestatic Method com/fs/starfarer/api/Global getSettings ()Lcom/fs/starfarer/api/SettingsAPI; 
L647:   ldc_w 'playtestingMode' 
L650:   invokeinterface InterfaceMethod com/fs/starfarer/api/SettingsAPI getBoolean (Ljava/lang/String;)Z 2 
L655:   ifne L683 
L658:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L661:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L664:   ldc +0.5f 
L666:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet setNoEngaging (F)V 
L669:   goto L683 

        .stack same_extended 
L672:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L675:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L678:   ldc +0.5f 
L680:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet setNoEngaging (F)V 

        .stack same 
L683:   iconst_0 
L684:   istore 4 
L686:   aload_1 
L687:   instanceof com/fs/starfarer/ui/newui/o0Oo 
L690:   ifeq L740 
L693:   aload_1 
L694:   checkcast com/fs/starfarer/ui/newui/o0Oo 
L697:   invokevirtual Method com/fs/starfarer/ui/newui/o0Oo getPlugin ()Lcom/fs/starfarer/api/campaign/InteractionDialogPlugin; 
L700:   astore 5 
L702:   aload 5 
L704:   invokeinterface InterfaceMethod [c639] getContext ()Ljava/lang/Object; 1 
L709:   astore 6 
L711:   aload 6 
L713:   instanceof com/fs/starfarer/api/campaign/FleetEncounterContextPlugin 
L716:   ifeq L740 
L719:   aload_0 
L720:   aload 6 
L722:   checkcast com/fs/starfarer/api/campaign/FleetEncounterContextPlugin 
L725:   invokevirtual Method com/fs/starfarer/campaign/CampaignState endBattle (Lcom/fs/starfarer/api/campaign/FleetEncounterContextPlugin;)V 
L728:   aload 6 
L730:   checkcast com/fs/starfarer/api/campaign/FleetEncounterContextPlugin 
L733:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/FleetEncounterContextPlugin isEngagedInHostilities ()Z 1 
L738:   istore 4 

        .stack append Integer 
L740:   aload_0 
L741:   getfield Field com/fs/starfarer/campaign/CampaignState encounterDialog Lcom/fs/starfarer/ui/newui/o0Oo; 
L744:   ifnull L790 
L747:   aload_0 
L748:   getfield Field com/fs/starfarer/campaign/CampaignState encounterDialog Lcom/fs/starfarer/ui/newui/o0Oo; 
L751:   invokevirtual Method com/fs/starfarer/ui/newui/o0Oo getInteractionTarget [u458] 
L754:   ifnull L790 
L757:   aload_0 
L758:   getfield Field com/fs/starfarer/campaign/CampaignState encounterDialog Lcom/fs/starfarer/ui/newui/o0Oo; 
L761:   invokevirtual Method com/fs/starfarer/ui/newui/o0Oo getInteractionTarget [u458] 
L764:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorEntityToken getMarket ()Lcom/fs/starfarer/api/campaign/econ/MarketAPI; 1 
L769:   ifnull L790 
L772:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L775:   aload_0 
L776:   getfield Field com/fs/starfarer/campaign/CampaignState encounterDialog Lcom/fs/starfarer/ui/newui/o0Oo; 
L779:   invokevirtual Method com/fs/starfarer/ui/newui/o0Oo getInteractionTarget [u458] 
L782:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorEntityToken getMarket ()Lcom/fs/starfarer/api/campaign/econ/MarketAPI; 1 
L787:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine reportPlayerClosedMarket (Lcom/fs/starfarer/api/campaign/econ/MarketAPI;)V 

        .stack same 
L790:   aload_0 
L791:   getfield Field com/fs/starfarer/campaign/CampaignState encounterDialog Lcom/fs/starfarer/ui/newui/o0Oo; 
L794:   ifnull L855 
L797:   aload_0 
L798:   getfield Field com/fs/starfarer/campaign/CampaignState encounterDialog Lcom/fs/starfarer/ui/newui/o0Oo; 
L801:   invokevirtual Method com/fs/starfarer/ui/newui/o0Oo getInteractionTarget [u458] 
L804:   instanceof com/fs/starfarer/campaign/fleet/CampaignFleet 
L807:   ifeq L855 
L810:   aload_0 
L811:   getfield Field com/fs/starfarer/campaign/CampaignState encounterDialog Lcom/fs/starfarer/ui/newui/o0Oo; 
L814:   invokevirtual Method com/fs/starfarer/ui/newui/o0Oo getInteractionTarget [u458] 
L817:   checkcast com/fs/starfarer/campaign/fleet/CampaignFleet 
L820:   astore 5 
L822:   aload 5 
L824:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getAI ()Lcom/fs/starfarer/api/campaign/ai/CampaignFleetAIAPI; 
L827:   instanceof com/fs/starfarer/api/campaign/ai/ModularFleetAIAPI 
L830:   ifeq L855 
L833:   aload 5 
L835:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getAI ()Lcom/fs/starfarer/api/campaign/ai/CampaignFleetAIAPI; 
L838:   checkcast com/fs/starfarer/api/campaign/ai/ModularFleetAIAPI 
L841:   astore 6 
L843:   aload 6 
L845:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/ai/ModularFleetAIAPI getTacticalModule ()Lcom/fs/starfarer/api/campaign/ai/TacticalModulePlugin; 1 
L850:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/ai/TacticalModulePlugin forceTargetReEval ()V 1 

        .stack same_extended 
L855:   aload_0 
L856:   aconst_null 
L857:   putfield Field com/fs/starfarer/campaign/CampaignState encounterDialog Lcom/fs/starfarer/ui/newui/o0Oo; 
L860:   iload 4 
L862:   ifeq L882 
L865:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'while.String' ()Z 
L868:   ifeq L882 
L871:   aload_0 
L872:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L875:   iconst_1 
L876:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setPaused (Z)V 
L879:   goto L1048 

        .stack same 
L882:   aload_0 
L883:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L886:   iconst_0 
L887:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setPaused (Z)V 
L890:   goto L1048 

        .stack chop 1 
L893:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L896:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L899:   ldc_w +3.0f 
L902:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet setNoEngaging (F)V 
L905:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L908:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L911:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getMovementModule ()Lcom/fs/starfarer/campaign/fleet/SmoothMovementModule; 
L914:   invokevirtual Method com/fs/starfarer/campaign/fleet/SmoothMovementModule getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 
L917:   fconst_0 
L918:   fconst_0 
L919:   invokevirtual Method org/lwjgl/util/vector/Vector2f set (FF)V 
L922:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L925:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L928:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet isValidPlayerFleet ()Z 
L931:   ifne L943 
L934:   iconst_1 
L935:   istore_3 
L936:   aload_0 
L937:   invokevirtual Method com/fs/starfarer/campaign/CampaignState showShuttleDialog ()V 
L940:   goto L1048 

        .stack same 
L943:   aload_0 
L944:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L947:   iconst_0 
L948:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setPaused (Z)V 
L951:   goto L1048 

        .stack same 
L954:   aload_0 
L955:   getfield Field com/fs/starfarer/campaign/CampaignState core Lcom/fs/starfarer/ui/newui/L; 
L958:   invokevirtual Method com/fs/starfarer/ui/newui/L getFader ()Lcom/fs/graphics/util/Fader; 
L961:   invokevirtual Method com/fs/graphics/util/Fader fadeIn ()V 
L964:   aload_0 
L965:   getfield Field com/fs/starfarer/campaign/CampaignState core Lcom/fs/starfarer/ui/newui/L; 
L968:   invokevirtual Method com/fs/starfarer/ui/newui/L showLogistics ()V 
L971:   aload_0 
L972:   getfield Field com/fs/starfarer/campaign/CampaignState core Lcom/fs/starfarer/ui/newui/L; 
L975:   invokevirtual Method com/fs/starfarer/ui/newui/L getLogistics ()Lcom/fs/starfarer/coreui/Objectnew; 
L978:   invokevirtual Method com/fs/starfarer/coreui/Objectnew contract ()V 
L981:   goto L1048 

        .stack same 
L984:   aload_0 
L985:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L988:   aload_0 
L989:   getfield Field com/fs/starfarer/campaign/CampaignState wasPaused Z 
L992:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setPaused (Z)V 
L995:   goto L1048 

        .stack same 
L998:   aload_0 
L999:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L1002:  aload_0 
L1003:  getfield Field com/fs/starfarer/campaign/CampaignState wasPaused Z 
L1006:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setPaused (Z)V 
L1009:  goto L1048 

        .stack same 
L1012:  aload_0 
L1013:  getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L1016:  aload_0 
L1017:  getfield Field com/fs/starfarer/campaign/CampaignState wasPaused Z 
L1020:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setPaused (Z)V 
L1023:  goto L1048 

        .stack same 
L1026:  aload_0 
L1027:  getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L1030:  iconst_0 
L1031:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setPaused (Z)V 
L1034:  goto L1048 

        .stack same 
L1037:  aload_0 
L1038:  getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L1041:  aload_0 
L1042:  getfield Field com/fs/starfarer/campaign/CampaignState wasPaused Z 
L1045:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setPaused (Z)V 

        .stack same 
L1048:  iload_3 
L1049:  ifne L1057 
L1052:  aload_0 
L1053:  aconst_null 
L1054:  putfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 

        .stack same 
L1057:  return 
L1058:  
    .end code 
.end method 

.method public static removeAutosaveSlot : (Ljava/io/File;)V 
    .code stack 2 locals 4 
L0:     getstatic Field com/fs/starfarer/campaign/CampaignState autosaveSlots Ljava/util/List; 
L3:     ifnull L81 
L6:     new java/util/ArrayList 
L9:     dup 
L10:    invokespecial Method java/util/ArrayList <init> ()V 
L13:    astore_1 
L14:    getstatic Field com/fs/starfarer/campaign/CampaignState autosaveSlots Ljava/util/List; 
L17:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L22:    astore_3 
L23:    goto L62 

        .stack full 
            locals Object java/io/File Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L26:    aload_3 
L27:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L32:    checkcast com/fs/starfarer/campaign/save/SaveGameData 
L35:    astore_2 
L36:    aload_2 
L37:    invokevirtual Method com/fs/starfarer/campaign/save/SaveGameData getSaveDir ()Ljava/io/File; 
L40:    ifnull L62 
L43:    aload_2 
L44:    invokevirtual Method com/fs/starfarer/campaign/save/SaveGameData getSaveDir ()Ljava/io/File; 
L47:    aload_0 
L48:    invokevirtual Method java/io/File equals (Ljava/lang/Object;)Z 
L51:    ifeq L62 
L54:    aload_1 
L55:    aload_2 
L56:    invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L61:    pop 

        .stack same 
L62:    aload_3 
L63:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L68:    ifne L26 
L71:    getstatic Field com/fs/starfarer/campaign/CampaignState autosaveSlots Ljava/util/List; 
L74:    aload_1 
L75:    invokeinterface InterfaceMethod java/util/List removeAll (Ljava/util/Collection;)Z 2 
L80:    pop 

        .stack full 
            locals Object java/io/File 
            stack 
        .end stack 
L81:    return 
L82:    
    .end code 
.end method 

.method public static getAutosaveSlots : ()Ljava/util/List; 
    .signature ()Ljava/util/List<Lcom/fs/starfarer/campaign/save/SaveGameData;>; 
    .code stack 1 locals 0 
L0:     getstatic Field com/fs/starfarer/campaign/CampaignState autosaveSlots Ljava/util/List; 
L3:     areturn 
L4:     
    .end code 
.end method 

.method public static initAutosaveSlots : ()V 
    .code stack 4 locals 2 
L0:     getstatic Field com/fs/starfarer/campaign/CampaignState autosaveSlots Ljava/util/List; 
L3:     ifnonnull L108 
L6:     getstatic Field com/fs/starfarer/campaign/CampaignState log Lorg/apache/log4j/Logger; 
L9:     ldc_w 'Looking for autosave slots...' 
L12:    invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L15:    new java/util/ArrayList 
L18:    dup 
L19:    invokespecial Method java/util/ArrayList <init> ()V 
L22:    putstatic Field com/fs/starfarer/campaign/CampaignState autosaveSlots Ljava/util/List; 
L25:    invokestatic Method com/fs/starfarer/campaign/save/CampaignGameManager new ()Ljava/util/List; 
L28:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L33:    astore_1 
L34:    goto L99 

        .stack full 
            locals Top Object java/util/Iterator 
            stack 
        .end stack 
L37:    aload_1 
L38:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L43:    checkcast com/fs/starfarer/campaign/save/SaveGameData 
L46:    astore_0 
L47:    aload_0 
L48:    invokevirtual Method com/fs/starfarer/campaign/save/SaveGameData isAutosave ()Z 
L51:    ifeq L99 
L54:    getstatic Field com/fs/starfarer/campaign/CampaignState autosaveSlots Ljava/util/List; 
L57:    aload_0 
L58:    invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L63:    pop 
L64:    getstatic Field com/fs/starfarer/campaign/CampaignState log Lorg/apache/log4j/Logger; 
L67:    new java/lang/StringBuilder 
L70:    dup 
L71:    ldc_w 'Found autosave slot: [' 
L74:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L77:    aload_0 
L78:    invokevirtual Method com/fs/starfarer/campaign/save/SaveGameData getSaveDir ()Ljava/io/File; 
L81:    invokevirtual Method java/io/File getAbsolutePath ()Ljava/lang/String; 
L84:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L87:    ldc_w ']' 
L90:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L93:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L96:    invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 

        .stack same 
L99:    aload_1 
L100:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L105:   ifne L37 

        .stack full 
            locals 
            stack 
        .end stack 
L108:   return 
L109:   
    .end code 
.end method 

.method public advanceAutosave : (F)V 
    .code stack 4 locals 22 
L0:     invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'class.super' ()Z 
L3:     ifne L7 
L6:     return 

        .stack same 
L7:     invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'ÓO0000' ()Z 
L10:    ifne L14 
L13:    return 

        .stack same 
L14:    aload_0 
L15:    getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L18:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine isIronMode ()Z 
L21:    ifeq L25 
L24:    return 

        .stack same 
L25:    invokestatic Method com/fs/starfarer/api/impl/campaign/tutorial/TutorialMissionIntel isTutorialInProgress ()Z 
L28:    ifeq L32 
L31:    return 

        .stack same 
L32:    aload_0 
L33:    getfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L36:    ifnonnull L59 
L39:    aload_0 
L40:    getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L43:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine isPaused ()Z 
L46:    ifne L59 
L49:    aload_0 
L50:    dup 
L51:    getfield Field com/fs/starfarer/campaign/CampaignState elapsedSinceLocChange F 
L54:    fload_1 
L55:    fadd 
L56:    putfield Field com/fs/starfarer/campaign/CampaignState elapsedSinceLocChange F 

        .stack same 
L59:    aload_0 
L60:    dup 
L61:    getfield Field com/fs/starfarer/campaign/CampaignState elapsedSinceGenericAutosavePreventer F 
L64:    fload_1 
L65:    fadd 
L66:    putfield Field com/fs/starfarer/campaign/CampaignState elapsedSinceGenericAutosavePreventer F 
L69:    aload_0 
L70:    dup 
L71:    getfield Field com/fs/starfarer/campaign/CampaignState highBurnDelay F 
L74:    fload_1 
L75:    fsub 
L76:    putfield Field com/fs/starfarer/campaign/CampaignState highBurnDelay F 
L79:    aload_0 
L80:    getfield Field com/fs/starfarer/campaign/CampaignState highBurnDelay F 
L83:    fconst_0 
L84:    fcmpg 
L85:    ifge L93 
L88:    aload_0 
L89:    fconst_0 
L90:    putfield Field com/fs/starfarer/campaign/CampaignState highBurnDelay F 

        .stack same 
L93:    aload_0 
L94:    getfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L97:    ifnonnull L112 
L100:   aload_0 
L101:   getfield Field com/fs/starfarer/campaign/CampaignState noise Lcom/fs/starfarer/class/G; 
L104:   invokevirtual Method com/fs/starfarer/class/G o00000 ()F 
L107:   fconst_0 
L108:   fcmpl 
L109:   ifle L117 

        .stack same 
L112:   aload_0 
L113:   fconst_0 
L114:   putfield Field com/fs/starfarer/campaign/CampaignState elapsedSinceGenericAutosavePreventer F 

        .stack same 
L117:   aload_0 
L118:   getfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L121:   ifnonnull L144 
L124:   aload_0 
L125:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L128:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine isPaused ()Z 
L131:   ifne L144 
L134:   aload_0 
L135:   dup 
L136:   getfield Field com/fs/starfarer/campaign/CampaignState elapsedSinceBattleUnpaused F 
L139:   fload_1 
L140:   fadd 
L141:   putfield Field com/fs/starfarer/campaign/CampaignState elapsedSinceBattleUnpaused F 

        .stack same 
L144:   aload_0 
L145:   getfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L148:   ifnull L161 
L151:   aload_0 
L152:   getfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L155:   getstatic Field com/fs/starfarer/campaign/CampaignState$o 'super' Lcom/fs/starfarer/campaign/CampaignState$o; 
L158:   if_acmpne L181 

        .stack same 
L161:   aload_0 
L162:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L165:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine isPaused ()Z 
L168:   ifeq L181 
L171:   aload_0 
L172:   dup 
L173:   getfield Field com/fs/starfarer/campaign/CampaignState elapsedPausedDoingNothing F 
L176:   fload_1 
L177:   fadd 
L178:   putfield Field com/fs/starfarer/campaign/CampaignState elapsedPausedDoingNothing F 

        .stack same 
L181:   aload_0 
L182:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L185:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L188:   astore_2 
L189:   aload_2 
L190:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getBattle ()Lcom/fs/starfarer/api/campaign/BattleAPI; 
L193:   ifnull L201 
L196:   aload_0 
L197:   fconst_0 
L198:   putfield Field com/fs/starfarer/campaign/CampaignState elapsedSinceBattleUnpaused F 

        .stack append Object com/fs/starfarer/campaign/fleet/CampaignFleet 
L201:   aload_2 
L202:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getCurrBurnLevel ()F 
L205:   fstore_3 
L206:   fload_3 
L207:   ldc_w +20.0f 
L210:   fcmpl 
L211:   ifle L229 
L214:   aload_0 
L215:   ldc +60.0f 
L217:   invokestatic Method java/lang/Math random ()D 
L220:   d2f 
L221:   ldc_w +120.0f 
L224:   fmul 
L225:   fadd 
L226:   putfield Field com/fs/starfarer/campaign/CampaignState highBurnDelay F 

        .stack append Float 
L229:   aload_0 
L230:   getfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L233:   ifnull L237 
L236:   return 

        .stack same 
L237:   aload_0 
L238:   getfield Field com/fs/starfarer/campaign/CampaignState elapsedSinceGenericAutosavePreventer F 
L241:   fconst_1 
L242:   fcmpg 
L243:   ifge L247 
L246:   return 

        .stack same 
L247:   aload_0 
L248:   getfield Field com/fs/starfarer/campaign/CampaignState elapsedSinceBattleUnpaused F 
L251:   ldc_w +10.0f 
L254:   fcmpg 
L255:   ifge L259 
L258:   return 

        .stack same 
L259:   aload_0 
L260:   getfield Field com/fs/starfarer/campaign/CampaignState highBurnDelay F 
L263:   fconst_0 
L264:   fcmpl 
L265:   ifle L269 
L268:   return 

        .stack same 
L269:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'Ô00000' ()F 
L272:   fstore 4 
L274:   invokestatic Method com/fs/starfarer/campaign/save/CampaignGameManager 'Ó00000' ()J 
L277:   lstore 5 
L279:   invokestatic Method java/lang/System currentTimeMillis ()J 
L282:   lload 5 
L284:   lsub 
L285:   lstore 7 
L287:   ldc2_w 60000L 
L290:   lstore 9 
L292:   lload 7 
L294:   l2f 
L295:   lload 9 
L297:   l2f 
L298:   fdiv 
L299:   fstore 11 
L301:   fload 11 
L303:   ldc_w +0.10000000149011612f 
L306:   fcmpg 
L307:   ifge L315 
L310:   aload_0 
L311:   fconst_0 
L312:   putfield Field com/fs/starfarer/campaign/CampaignState elapsedPausedDoingNothing F 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Float Object com/fs/starfarer/campaign/fleet/CampaignFleet Float Float Long Long Long Float 
            stack 
        .end stack 
L315:   fload 11 
L317:   aload_0 
L318:   getfield Field com/fs/starfarer/campaign/CampaignState elapsedPausedDoingNothing F 
L321:   ldc +60.0f 
L323:   fdiv 
L324:   ldc_w +1.0499999523162842f 
L327:   fmul 
L328:   fsub 
L329:   fstore 11 
L331:   invokestatic Method com/fs/starfarer/api/Global getSettings ()Lcom/fs/starfarer/api/SettingsAPI; 
L334:   ldc_w 'autosaveExtraIntervalMinutesIfNotChangedLocation' 
L337:   iconst_0 
L338:   invokeinterface InterfaceMethod com/fs/starfarer/api/SettingsAPI getFloatFromArray (Ljava/lang/String;I)F 3 
L343:   fstore 12 
L345:   invokestatic Method com/fs/starfarer/api/Global getSettings ()Lcom/fs/starfarer/api/SettingsAPI; 
L348:   ldc_w 'autosaveExtraIntervalMinutesIfNotChangedLocation' 
L351:   iconst_1 
L352:   invokeinterface InterfaceMethod com/fs/starfarer/api/SettingsAPI getFloatFromArray (Ljava/lang/String;I)F 3 
L357:   fstore 13 
L359:   ldc_w 'autosaveExtraIntervalMinutesIfNotChangedLocationFraction' 
L362:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'ö00000' (Ljava/lang/String;)F 
L365:   fstore 14 
L367:   fload 13 
L369:   fload 12 
L371:   fload 4 
L373:   fload 14 
L375:   fmul 
L376:   invokestatic Method java/lang/Math max (FF)F 
L379:   invokestatic Method java/lang/Math min (FF)F 
L382:   fstore 15 
L384:   fload 11 
L386:   fload 4 
L388:   fcmpg 
L389:   ifge L393 
L392:   return 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Float Object com/fs/starfarer/campaign/fleet/CampaignFleet Float Float Long Long Long Float Float Float Float Float 
            stack 
        .end stack 
L393:   aload_2 
L394:   ifnull L404 
L397:   aload_2 
L398:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getContainingLocation ()Lcom/fs/starfarer/campaign/BaseLocation; 
L401:   ifnonnull L405 

        .stack same 
L404:   return 

        .stack same 
L405:   aload_0 
L406:   getfield Field com/fs/starfarer/campaign/CampaignState elapsedSinceLocChange F 
L409:   fconst_1 
L410:   fcmpl 
L411:   ifle L423 
L414:   aload_0 
L415:   getfield Field com/fs/starfarer/campaign/CampaignState elapsedSinceLocChange F 
L418:   fconst_2 
L419:   fcmpg 
L420:   iflt L434 

        .stack same 
L423:   fload 11 
L425:   fload 4 
L427:   fload 15 
L429:   fadd 
L430:   fcmpl 
L431:   ifle L596 

        .stack same 
L434:   iconst_0 
L435:   istore 16 
L437:   ldc_w +3.4028234663852886e+38f 
L440:   fstore 17 
L442:   iconst_0 
L443:   istore 18 
L445:   aload_2 
L446:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getContainingLocation ()Lcom/fs/starfarer/campaign/BaseLocation; 
L449:   invokevirtual Method com/fs/starfarer/campaign/BaseLocation getFleets ()Ljava/util/List; 
L452:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L457:   astore 20 
L459:   goto L570 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Float Object com/fs/starfarer/campaign/fleet/CampaignFleet Float Float Long Long Long Float Float Float Float Float Integer Float Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L462:   aload 20 
L464:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L469:   checkcast com/fs/starfarer/api/campaign/CampaignFleetAPI 
L472:   astore 19 
L474:   aload_2 
L475:   aload 19 
L477:   invokestatic Method com/fs/starfarer/api/util/Misc getDistance (Lcom/fs/starfarer/api/campaign/SectorEntityToken;Lcom/fs/starfarer/api/campaign/SectorEntityToken;)F 
L480:   fstore 21 
L482:   fload 21 
L484:   ldc +1000.0f 
L486:   fcmpg 
L487:   ifge L570 
L490:   aload 19 
L492:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getAI ()Lcom/fs/starfarer/api/campaign/ai/CampaignFleetAIAPI; 1 
L497:   ifnull L521 
L500:   iload 16 
L502:   aload 19 
L504:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getAI ()Lcom/fs/starfarer/api/campaign/ai/CampaignFleetAIAPI; 1 
L509:   aload_2 
L510:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/ai/CampaignFleetAIAPI isHostileTo (Lcom/fs/starfarer/api/campaign/CampaignFleetAPI;)Z 2 
L515:   ior 
L516:   istore 16 
L518:   goto L541 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Float Object com/fs/starfarer/campaign/fleet/CampaignFleet Float Float Long Long Long Float Float Float Float Float Integer Float Integer Object com/fs/starfarer/api/campaign/CampaignFleetAPI Object java/util/Iterator Float 
            stack 
        .end stack 
L521:   iload 16 
L523:   aload 19 
L525:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getFaction ()Lcom/fs/starfarer/api/campaign/FactionAPI; 1 
L530:   ldc_w 'player' 
L533:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/FactionAPI isHostileTo (Ljava/lang/String;)Z 2 
L538:   ior 
L539:   istore 16 

        .stack same 
L541:   iload 16 
L543:   ifeq L558 
L546:   iload 18 
L548:   aload 19 
L550:   invokestatic Method com/fs/starfarer/api/util/Misc getDangerLevel (Lcom/fs/starfarer/api/campaign/CampaignFleetAPI;)I 
L553:   invokestatic Method java/lang/Math max (II)I 
L556:   istore 18 

        .stack same 
L558:   fload 21 
L560:   fload 17 
L562:   fcmpg 
L563:   ifge L570 
L566:   fload 21 
L568:   fstore 17 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Float Object com/fs/starfarer/campaign/fleet/CampaignFleet Float Float Long Long Long Float Float Float Float Float Integer Float Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L570:   aload 20 
L572:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L577:   ifne L462 
L580:   iload 18 
L582:   iconst_2 
L583:   if_icmpge L596 
L586:   aload_0 
L587:   invokevirtual Method com/fs/starfarer/campaign/CampaignState autosave ()V 
L590:   invokestatic Method java/lang/System currentTimeMillis ()J 
L593:   invokestatic Method com/fs/starfarer/campaign/save/CampaignGameManager o00000 (J)V 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Float Object com/fs/starfarer/campaign/fleet/CampaignFleet Float Float Long Long Long Float Float Float Float Float 
            stack 
        .end stack 
L596:   return 
L597:   
    .end code 
.end method 

.method public reportCurrentLocationChanged : (Lcom/fs/starfarer/api/campaign/LocationAPI;Lcom/fs/starfarer/api/campaign/LocationAPI;)V 
    .code stack 2 locals 3 
L0:     aload_0 
L1:     fconst_0 
L2:     putfield Field com/fs/starfarer/campaign/CampaignState elapsedSinceLocChange F 
L5:     aload_0 
L6:     fconst_0 
L7:     putfield Field com/fs/starfarer/campaign/CampaignState highBurnDelay F 
L10:    aload_0 
L11:    ldc +1000.0f 
L13:    putfield Field com/fs/starfarer/campaign/CampaignState elapsedSinceBattleUnpaused F 
L16:    return 
L17:    
    .end code 
.end method 

.method private doubleRender : ()V 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     aload_0 
L2:     invokevirtual Method com/fs/starfarer/campaign/CampaignState getFader ()Lcom/fs/graphics/util/Fader; 
L5:     invokevirtual Method com/fs/graphics/util/Fader getBrightness ()F 
L8:     invokevirtual Method com/fs/starfarer/campaign/CampaignState render (F)V 
L11:    invokestatic Method org/lwjgl/opengl/Display update ()V 
L14:    aload_0 
L15:    aload_0 
L16:    invokevirtual Method com/fs/starfarer/campaign/CampaignState getFader ()Lcom/fs/graphics/util/Fader; 
L19:    invokevirtual Method com/fs/graphics/util/Fader getBrightness ()F 
L22:    invokevirtual Method com/fs/starfarer/campaign/CampaignState render (F)V 
L25:    invokestatic Method org/lwjgl/opengl/Display update ()V 
L28:    return 
L29:    
    .end code 
.end method 

.method public autosave : ()V 
    .code stack 4 locals 13 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L4:     ifnull L8 
L7:     return 

        .stack same 
L8:     invokestatic Method com/fs/starfarer/campaign/CampaignState initAutosaveSlots ()V 
L11:    invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L14:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getSaveDesc ()Ljava/lang/String; 
L17:    astore_1 
L18:    invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L21:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getSaveDirName ()Ljava/lang/String; 
L24:    astore_2 
L25:    ldc_w 'Autosave' 
L28:    astore_3 
L29:    invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L32:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L35:    astore 4 
L37:    aload 4 
L39:    ifnull L82 
L42:    aload 4 
L44:    invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getContainingLocation ()Lcom/fs/starfarer/campaign/BaseLocation; 
L47:    ifnull L82 
L50:    new java/lang/StringBuilder 
L53:    dup 
L54:    aload 4 
L56:    invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getContainingLocation ()Lcom/fs/starfarer/campaign/BaseLocation; 
L59:    invokevirtual Method com/fs/starfarer/campaign/BaseLocation getDisplayName ()Ljava/lang/String; 
L62:    invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L65:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L68:    ldc_w ' - ' 
L71:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L74:    aload_3 
L75:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L78:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L81:    astore_3 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Object java/lang/String Object java/lang/String Object java/lang/String Object com/fs/starfarer/campaign/fleet/CampaignFleet 
            stack 
        .end stack 
L82:    aconst_null 
L83:    astore_3 
L84:    invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L87:    aload_3 
L88:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setSaveDesc (Ljava/lang/String;)V 
L91:    invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L94:    invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L97:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getCharacterData ()Lcom/fs/starfarer/campaign/PlayerCharacterData; 
L100:   invokevirtual Method com/fs/starfarer/campaign/PlayerCharacterData getName ()Ljava/lang/String; 
L103:   invokestatic Method [c2014] o00000 (Ljava/lang/String;)Ljava/lang/String; 
L106:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setSaveDirName (Ljava/lang/String;)V 
L109:   aload_0 
L110:   invokevirtual Method com/fs/starfarer/campaign/CampaignState doubleRender ()V 
L113:   aload_0 
L114:   lconst_0 
L115:   iconst_1 
L116:   invokestatic Method [c2014] o00000 (Lcom/fs/starfarer/campaign/CampaignEngine$o;JZ)Ljava/lang/String; 
L119:   astore 5 
L121:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L124:   aload_2 
L125:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setSaveDirName (Ljava/lang/String;)V 
L128:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L131:   aload_1 
L132:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setSaveDesc (Ljava/lang/String;)V 
L135:   aload 5 
L137:   ifnull L151 
L140:   aload_0 
L141:   aload 5 
L143:   invokevirtual Method com/fs/starfarer/campaign/CampaignState showMessageDialog (Ljava/lang/String;)V 
L146:   aload_0 
L147:   iconst_1 
L148:   putfield Field com/fs/starfarer/campaign/CampaignState wasPaused Z 

        .stack append Object java/lang/String 
L151:   invokestatic Method [c2014] 'Ô00000' ()Lcom/fs/starfarer/campaign/save/SaveGameData; 
L154:   ifnull L332 
L157:   getstatic Field com/fs/starfarer/campaign/CampaignState autosaveSlots Ljava/util/List; 
L160:   invokestatic Method [c2014] 'Ô00000' ()Lcom/fs/starfarer/campaign/save/SaveGameData; 
L163:   invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L168:   pop 
L169:   aconst_null 
L170:   invokestatic Method [c2014] o00000 (Lcom/fs/starfarer/campaign/save/SaveGameData;)V 
L173:   invokestatic Method com/fs/starfarer/api/Global getSettings ()Lcom/fs/starfarer/api/SettingsAPI; 
L176:   ldc_w 'maxAutosaveSlots' 
L179:   invokeinterface InterfaceMethod com/fs/starfarer/api/SettingsAPI getInt (Ljava/lang/String;)I 2 
L184:   istore 6 
L186:   getstatic Field com/fs/starfarer/campaign/CampaignState autosaveSlots Ljava/util/List; 
L189:   invokeinterface InterfaceMethod java/util/List size ()I 1 
L194:   iload 6 
L196:   isub 
L197:   istore 7 
L199:   goto L327 

        .stack append Integer Integer 
L202:   aconst_null 
L203:   astore 8 
L205:   ldc2_w 9223372036854775807L 
L208:   lstore 9 
L210:   getstatic Field com/fs/starfarer/campaign/CampaignState autosaveSlots Ljava/util/List; 
L213:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L218:   astore 12 
L220:   goto L257 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Object java/lang/String Object java/lang/String Object java/lang/String Object com/fs/starfarer/campaign/fleet/CampaignFleet Object java/lang/String Integer Integer Object com/fs/starfarer/campaign/save/SaveGameData Long Top Object java/util/Iterator 
            stack 
        .end stack 
L223:   aload 12 
L225:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L230:   checkcast com/fs/starfarer/campaign/save/SaveGameData 
L233:   astore 11 
L235:   aload 11 
L237:   invokevirtual Method com/fs/starfarer/campaign/save/SaveGameData getSlotCreationTimestamp ()J 
L240:   lload 9 
L242:   lcmp 
L243:   ifge L257 
L246:   aload 11 
L248:   invokevirtual Method com/fs/starfarer/campaign/save/SaveGameData getSlotCreationTimestamp ()J 
L251:   lstore 9 
L253:   aload 11 
L255:   astore 8 

        .stack same 
L257:   aload 12 
L259:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L264:   ifne L223 
L267:   aload 8 
L269:   ifnull L324 
L272:   getstatic Field com/fs/starfarer/campaign/CampaignState log Lorg/apache/log4j/Logger; 
L275:   new java/lang/StringBuilder 
L278:   dup 
L279:   ldc_w 'Deleting autosave [' 
L282:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L285:   aload 8 
L287:   invokevirtual Method com/fs/starfarer/campaign/save/SaveGameData getSaveDir ()Ljava/io/File; 
L290:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/Object;)Ljava/lang/StringBuilder; 
L293:   ldc_w ']' 
L296:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L299:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L302:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L305:   aload 8 
L307:   invokevirtual Method com/fs/starfarer/campaign/save/SaveGameData getSaveDir ()Ljava/io/File; 
L310:   invokestatic Method [c2014] new (Ljava/io/File;)V 
L313:   getstatic Field com/fs/starfarer/campaign/CampaignState autosaveSlots Ljava/util/List; 
L316:   aload 8 
L318:   invokeinterface InterfaceMethod java/util/List remove (Ljava/lang/Object;)Z 2 
L323:   pop 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Object java/lang/String Object java/lang/String Object java/lang/String Object com/fs/starfarer/campaign/fleet/CampaignFleet Object java/lang/String Integer Integer Object com/fs/starfarer/campaign/save/SaveGameData Long 
            stack 
        .end stack 
L324:   iinc 7 -1 

        .stack chop 2 
L327:   iload 7 
L329:   ifgt L202 

        .stack chop 2 
L332:   return 
L333:   
    .end code 
.end method 

.method public getScreenPanel : ()Lcom/fs/starfarer/ui/interfacenew; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState screenPanel Lcom/fs/starfarer/ui/interfacenew; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public showMenu : ()V 
    .code stack 5 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L4:     ifnull L8 
L7:     return 

        .stack same 
L8:     aload_0 
L9:     invokevirtual Method com/fs/starfarer/campaign/CampaignState isTransitioningToNextState ()Z 
L12:    ifeq L16 
L15:    return 

        .stack same 
L16:    aload_0 
L17:    aload_0 
L18:    getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L21:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine isPaused ()Z 
L24:    putfield Field com/fs/starfarer/campaign/CampaignState wasPaused Z 
L27:    aload_0 
L28:    getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L31:    iconst_1 
L32:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setPaused (Z)V 
L35:    aload_0 
L36:    getstatic Field com/fs/starfarer/campaign/CampaignState$o 'super' Lcom/fs/starfarer/campaign/CampaignState$o; 
L39:    putfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L42:    new com/fs/starfarer/campaign/save/O0OO 
L45:    dup 
L46:    aload_0 
L47:    getfield Field com/fs/starfarer/campaign/CampaignState screenPanel Lcom/fs/starfarer/ui/interfacenew; 
L50:    aload_0 
L51:    aload_0 
L52:    invokespecial Method com/fs/starfarer/campaign/save/O0OO <init> (Lcom/fs/starfarer/ui/interfacenew;Lcom/fs/starfarer/ui/oo0O$o;Lcom/fs/starfarer/campaign/save/O0OO$o;)V 
L55:    astore_1 
L56:    aload_1 
L57:    ldc_w +0.30000001192092896f 
L60:    ldc_w +0.20000000298023224f 
L63:    invokevirtual Method com/fs/starfarer/campaign/save/O0OO show (FF)V 
L66:    return 
L67:    
    .end code 
.end method 

.method public showInteractionDialogFromCargo : (Lcom/fs/starfarer/api/campaign/InteractionDialogPlugin;Lcom/fs/starfarer/api/campaign/SectorEntityToken;Lcom/fs/starfarer/api/campaign/CampaignUIAPI$DismissDialogDelegate;)Z 
    .code stack 9 locals 5 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/campaign/CampaignState isTransitioningToNextState ()Z 
L4:     ifeq L9 
L7:     iconst_0 
L8:     ireturn 

        .stack same 
L9:     aload_2 
L10:    ifnull L34 
L13:    aload_2 
L14:    invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorEntityToken getMarket ()Lcom/fs/starfarer/api/campaign/econ/MarketAPI; 1 
L19:    ifnull L34 
L22:    invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L25:    aload_2 
L26:    invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorEntityToken getMarket ()Lcom/fs/starfarer/api/campaign/econ/MarketAPI; 1 
L31:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine reportPlayerOpenedMarket (Lcom/fs/starfarer/api/campaign/econ/MarketAPI;)V 

        .stack same 
L34:    new com/fs/starfarer/ui/newui/o0Oo 
L37:    dup 
L38:    aload_2 
L39:    aload_1 
L40:    aload_0 
L41:    getfield Field com/fs/starfarer/campaign/CampaignState screenPanel Lcom/fs/starfarer/ui/interfacenew; 
L44:    new com/fs/starfarer/campaign/CampaignState$2 
L47:    dup 
L48:    aload_0 
L49:    aload_3 
L50:    invokespecial Method com/fs/starfarer/campaign/CampaignState$2 <init> (Lcom/fs/starfarer/campaign/CampaignState;Lcom/fs/starfarer/api/campaign/CampaignUIAPI$DismissDialogDelegate;)V 
L53:    invokespecial Method com/fs/starfarer/ui/newui/o0Oo <init> (Lcom/fs/starfarer/api/campaign/SectorEntityToken;Lcom/fs/starfarer/api/campaign/InteractionDialogPlugin;Lcom/fs/starfarer/ui/interfacenew;Lcom/fs/starfarer/ui/oo0O$o;)V 
L56:    astore 4 
L58:    aload 4 
L60:    ldc_w +0.8999999761581421f 
L63:    invokevirtual Method com/fs/starfarer/ui/newui/o0Oo setBackgroundDimAmount (F)V 
L66:    aload 4 
L68:    ldc_w +0.30000001192092896f 
L71:    ldc_w +0.20000000298023224f 
L74:    invokevirtual Method com/fs/starfarer/ui/newui/o0Oo show (FF)V 
L77:    invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L80:    aload 4 
L82:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine reportShowInteractionDialog (Lcom/fs/starfarer/api/campaign/InteractionDialogAPI;)V 
L85:    iconst_1 
L86:    ireturn 
L87:    
    .end code 
.end method 

.method public showInteractionDialog : (Lcom/fs/starfarer/api/campaign/InteractionDialogPlugin;Lcom/fs/starfarer/api/campaign/SectorEntityToken;)Z 
    .code stack 7 locals 4 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L4:     ifnull L9 
L7:     iconst_0 
L8:     ireturn 

        .stack same 
L9:     aload_0 
L10:    invokevirtual Method com/fs/starfarer/campaign/CampaignState isTransitioningToNextState ()Z 
L13:    ifeq L18 
L16:    iconst_0 
L17:    ireturn 

        .stack same 
L18:    aload_0 
L19:    getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L22:    iconst_1 
L23:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setPaused (Z)V 
L26:    aload_0 
L27:    getstatic Field com/fs/starfarer/campaign/CampaignState$o 'õ00000' Lcom/fs/starfarer/campaign/CampaignState$o; 
L30:    putfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L33:    aload_2 
L34:    ifnull L58 
L37:    aload_2 
L38:    invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorEntityToken getMarket ()Lcom/fs/starfarer/api/campaign/econ/MarketAPI; 1 
L43:    ifnull L58 
L46:    invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L49:    aload_2 
L50:    invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorEntityToken getMarket ()Lcom/fs/starfarer/api/campaign/econ/MarketAPI; 1 
L55:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine reportPlayerOpenedMarket (Lcom/fs/starfarer/api/campaign/econ/MarketAPI;)V 

        .stack same 
L58:    aload_0 
L59:    new com/fs/starfarer/ui/newui/o0Oo 
L62:    dup 
L63:    aload_2 
L64:    aload_1 
L65:    aload_0 
L66:    getfield Field com/fs/starfarer/campaign/CampaignState screenPanel Lcom/fs/starfarer/ui/interfacenew; 
L69:    aload_0 
L70:    invokespecial Method com/fs/starfarer/ui/newui/o0Oo <init> (Lcom/fs/starfarer/api/campaign/SectorEntityToken;Lcom/fs/starfarer/api/campaign/InteractionDialogPlugin;Lcom/fs/starfarer/ui/interfacenew;Lcom/fs/starfarer/ui/oo0O$o;)V 
L73:    putfield Field com/fs/starfarer/campaign/CampaignState encounterDialog Lcom/fs/starfarer/ui/newui/o0Oo; 
L76:    aload_0 
L77:    getfield Field com/fs/starfarer/campaign/CampaignState encounterDialog Lcom/fs/starfarer/ui/newui/o0Oo; 
L80:    ldc_w +0.30000001192092896f 
L83:    ldc +0.5f 
L85:    invokevirtual Method com/fs/starfarer/ui/newui/o0Oo show (FF)V 
L88:    aload_0 
L89:    getfield Field com/fs/starfarer/campaign/CampaignState messageDisplay Lcom/fs/starfarer/campaign/ui/O00O; 
L92:    invokevirtual Method com/fs/starfarer/campaign/ui/O00O clearNonSticky ()V 
L95:    aload_0 
L96:    getfield Field com/fs/starfarer/campaign/CampaignState core Lcom/fs/starfarer/ui/newui/L; 
L99:    invokevirtual Method com/fs/starfarer/ui/newui/L getFader ()Lcom/fs/graphics/util/Fader; 
L102:   invokevirtual Method com/fs/graphics/util/Fader fadeOut ()V 
L105:   aload_0 
L106:   getfield Field com/fs/starfarer/campaign/CampaignState core Lcom/fs/starfarer/ui/newui/L; 
L109:   invokevirtual Method com/fs/starfarer/ui/newui/L hideLogistics ()V 
L112:   iconst_0 
L113:   istore_3 
L114:   aload_2 
L115:   ifnull L179 
L118:   aload_2 
L119:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorEntityToken getMemoryWithoutUpdate ()Lcom/fs/starfarer/api/campaign/rules/MemoryAPI; 1 
L124:   ifnull L146 
L127:   aload_2 
L128:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorEntityToken getMemoryWithoutUpdate ()Lcom/fs/starfarer/api/campaign/rules/MemoryAPI; 1 
L133:   getstatic Field com/fs/starfarer/api/impl/MusicPlayerPluginImpl KEEP_PLAYING_LOCATION_MUSIC_DURING_ENCOUNTER_MEM_KEY Ljava/lang/String; 
L136:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/rules/MemoryAPI getBoolean (Ljava/lang/String;)Z 2 
L141:   ifeq L146 
L144:   iconst_1 
L145:   istore_3 

        .stack append Integer 
L146:   aload_2 
L147:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorEntityToken getMarket ()Lcom/fs/starfarer/api/campaign/econ/MarketAPI; 1 
L152:   ifnull L179 
L155:   aload_2 
L156:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorEntityToken getMarket ()Lcom/fs/starfarer/api/campaign/econ/MarketAPI; 1 
L161:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/econ/MarketAPI getMemoryWithoutUpdate ()Lcom/fs/starfarer/api/campaign/rules/MemoryAPI; 1 
L166:   getstatic Field com/fs/starfarer/api/impl/MusicPlayerPluginImpl KEEP_PLAYING_LOCATION_MUSIC_DURING_ENCOUNTER_MEM_KEY Ljava/lang/String; 
L169:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/rules/MemoryAPI getBoolean (Ljava/lang/String;)Z 2 
L174:   ifeq L179 
L177:   iconst_1 
L178:   istore_3 

        .stack same 
L179:   iload_3 
L180:   ifne L251 
L183:   aload_2 
L184:   ifnull L234 
L187:   aload_2 
L188:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorEntityToken getMarket ()Lcom/fs/starfarer/api/campaign/econ/MarketAPI; 1 
L193:   ifnull L234 
L196:   aload_2 
L197:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorEntityToken getMarket ()Lcom/fs/starfarer/api/campaign/econ/MarketAPI; 1 
L202:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/econ/MarketAPI isPlanetConditionMarketOnly ()Z 1 
L207:   ifne L222 
L210:   aload_2 
L211:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorEntityToken getMarket ()Lcom/fs/starfarer/api/campaign/econ/MarketAPI; 1 
L216:   invokestatic Method com/fs/starfarer/D/return o00000 (Ljava/lang/Object;)V 
L219:   goto L251 

        .stack same 
L222:   aload_2 
L223:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorEntityToken getMarket ()Lcom/fs/starfarer/api/campaign/econ/MarketAPI; 1 
L228:   invokestatic Method com/fs/starfarer/D/return Object (Ljava/lang/Object;)V 
L231:   goto L251 

        .stack same 
L234:   aload_2 
L235:   ifnull L251 
L238:   aload_2 
L239:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorEntityToken getFaction ()Lcom/fs/starfarer/api/campaign/FactionAPI; 1 
L244:   ifnull L251 
L247:   aload_2 
L248:   invokestatic Method com/fs/starfarer/D/return 'Ò00000' (Ljava/lang/Object;)V 

        .stack same 
L251:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L254:   aload_0 
L255:   getfield Field com/fs/starfarer/campaign/CampaignState encounterDialog Lcom/fs/starfarer/ui/newui/o0Oo; 
L258:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine reportShowInteractionDialog (Lcom/fs/starfarer/api/campaign/InteractionDialogAPI;)V 
L261:   iconst_1 
L262:   ireturn 
L263:   
    .end code 
.end method 

.method public restartEncounterMusic : (Lcom/fs/starfarer/api/campaign/SectorEntityToken;)V 
    .code stack 1 locals 2 
L0:     aload_1 
L1:     invokestatic Method com/fs/starfarer/D/return 'Õ00000' (Ljava/lang/Object;)V 
L4:     return 
L5:     
    .end code 
.end method 

.method public getCurrentInteractionDialog : ()Lcom/fs/starfarer/api/campaign/InteractionDialogAPI; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState encounterDialog Lcom/fs/starfarer/ui/newui/o0Oo; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public showInteractionDialog : (Lcom/fs/starfarer/api/campaign/SectorEntityToken;)Z 
    .code stack 7 locals 4 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L4:     ifnull L9 
L7:     iconst_0 
L8:     ireturn 

        .stack same 
L9:     aload_0 
L10:    invokevirtual Method com/fs/starfarer/campaign/CampaignState isTransitioningToNextState ()Z 
L13:    ifeq L18 
L16:    iconst_0 
L17:    ireturn 

        .stack same 
L18:    aload_0 
L19:    getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L22:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getModAndPluginData ()Lcom/fs/starfarer/campaign/ModAndPluginData; 
L25:    aload_1 
L26:    invokevirtual Method com/fs/starfarer/campaign/ModAndPluginData pickInteractionDialogPlugin (Lcom/fs/starfarer/api/campaign/SectorEntityToken;)Lcom/fs/starfarer/api/campaign/InteractionDialogPlugin; 
L29:    astore_2 
L30:    aload_2 
L31:    ifnonnull L36 
L34:    iconst_0 
L35:    ireturn 

        .stack append Object [c639] 
L36:    aload_0 
L37:    getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L40:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L43:    astore_3 
L44:    aload_3 
L45:    aconst_null 
L46:    invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet setInteractionTarget (Lcom/fs/starfarer/api/campaign/SectorEntityToken;)V 
L49:    aload_0 
L50:    getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L53:    iconst_1 
L54:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setPaused (Z)V 
L57:    aload_0 
L58:    getstatic Field com/fs/starfarer/campaign/CampaignState$o 'õ00000' Lcom/fs/starfarer/campaign/CampaignState$o; 
L61:    putfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L64:    aload_1 
L65:    ifnull L89 
L68:    aload_1 
L69:    invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorEntityToken getMarket ()Lcom/fs/starfarer/api/campaign/econ/MarketAPI; 1 
L74:    ifnull L89 
L77:    invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L80:    aload_1 
L81:    invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorEntityToken getMarket ()Lcom/fs/starfarer/api/campaign/econ/MarketAPI; 1 
L86:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine reportPlayerOpenedMarket (Lcom/fs/starfarer/api/campaign/econ/MarketAPI;)V 

        .stack append Object com/fs/starfarer/campaign/fleet/CampaignFleet 
L89:    aload_0 
L90:    new com/fs/starfarer/ui/newui/o0Oo 
L93:    dup 
L94:    aload_1 
L95:    aload_2 
L96:    aload_0 
L97:    getfield Field com/fs/starfarer/campaign/CampaignState screenPanel Lcom/fs/starfarer/ui/interfacenew; 
L100:   aload_0 
L101:   invokespecial Method com/fs/starfarer/ui/newui/o0Oo <init> (Lcom/fs/starfarer/api/campaign/SectorEntityToken;Lcom/fs/starfarer/api/campaign/InteractionDialogPlugin;Lcom/fs/starfarer/ui/interfacenew;Lcom/fs/starfarer/ui/oo0O$o;)V 
L104:   putfield Field com/fs/starfarer/campaign/CampaignState encounterDialog Lcom/fs/starfarer/ui/newui/o0Oo; 
L107:   aload_0 
L108:   getfield Field com/fs/starfarer/campaign/CampaignState encounterDialog Lcom/fs/starfarer/ui/newui/o0Oo; 
L111:   ldc_w +0.30000001192092896f 
L114:   ldc +0.5f 
L116:   invokevirtual Method com/fs/starfarer/ui/newui/o0Oo show (FF)V 
L119:   aload_0 
L120:   getfield Field com/fs/starfarer/campaign/CampaignState messageDisplay Lcom/fs/starfarer/campaign/ui/O00O; 
L123:   invokevirtual Method com/fs/starfarer/campaign/ui/O00O clearNonSticky ()V 
L126:   aload_0 
L127:   getfield Field com/fs/starfarer/campaign/CampaignState core Lcom/fs/starfarer/ui/newui/L; 
L130:   invokevirtual Method com/fs/starfarer/ui/newui/L getFader ()Lcom/fs/graphics/util/Fader; 
L133:   invokevirtual Method com/fs/graphics/util/Fader fadeOut ()V 
L136:   aload_0 
L137:   getfield Field com/fs/starfarer/campaign/CampaignState core Lcom/fs/starfarer/ui/newui/L; 
L140:   invokevirtual Method com/fs/starfarer/ui/newui/L hideLogistics ()V 
L143:   aload_1 
L144:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorEntityToken getMarket ()Lcom/fs/starfarer/api/campaign/econ/MarketAPI; 1 
L149:   ifnull L190 
L152:   aload_1 
L153:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorEntityToken getMarket ()Lcom/fs/starfarer/api/campaign/econ/MarketAPI; 1 
L158:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/econ/MarketAPI isPlanetConditionMarketOnly ()Z 1 
L163:   ifne L178 
L166:   aload_1 
L167:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorEntityToken getMarket ()Lcom/fs/starfarer/api/campaign/econ/MarketAPI; 1 
L172:   invokestatic Method com/fs/starfarer/D/return o00000 (Ljava/lang/Object;)V 
L175:   goto L207 

        .stack same_extended 
L178:   aload_1 
L179:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorEntityToken getMarket ()Lcom/fs/starfarer/api/campaign/econ/MarketAPI; 1 
L184:   invokestatic Method com/fs/starfarer/D/return Object (Ljava/lang/Object;)V 
L187:   goto L207 

        .stack same 
L190:   aload_1 
L191:   ifnull L207 
L194:   aload_1 
L195:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorEntityToken getFaction ()Lcom/fs/starfarer/api/campaign/FactionAPI; 1 
L200:   ifnull L207 
L203:   aload_1 
L204:   invokestatic Method com/fs/starfarer/D/return 'Ò00000' (Ljava/lang/Object;)V 

        .stack same 
L207:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L210:   aload_0 
L211:   getfield Field com/fs/starfarer/campaign/CampaignState encounterDialog Lcom/fs/starfarer/ui/newui/o0Oo; 
L214:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine reportShowInteractionDialog (Lcom/fs/starfarer/api/campaign/InteractionDialogAPI;)V 
L217:   iconst_1 
L218:   ireturn 
L219:   
    .end code 
.end method 

.method public startEncounterInvolvingPlayerFleet : (Lcom/fs/starfarer/campaign/fleet/CampaignFleet;Lcom/fs/starfarer/campaign/BaseCampaignEntity;)V 
    .code stack 7 locals 5 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L4:     ifnull L8 
L7:     return 

        .stack same 
L8:     aload_2 
L9:     instanceof com/fs/starfarer/campaign/CampaignOrbitalStation 
L12:    pop 
L13:    aload_0 
L14:    getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L17:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getModAndPluginData ()Lcom/fs/starfarer/campaign/ModAndPluginData; 
L20:    aload_2 
L21:    invokevirtual Method com/fs/starfarer/campaign/ModAndPluginData pickInteractionDialogPlugin (Lcom/fs/starfarer/api/campaign/SectorEntityToken;)Lcom/fs/starfarer/api/campaign/InteractionDialogPlugin; 
L24:    astore_3 
L25:    aload_3 
L26:    ifnonnull L30 
L29:    return 

        .stack append Object [c639] 
L30:    aload_1 
L31:    invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getInteractionTarget [u458] 
L34:    aload_2 
L35:    if_acmpne L43 
L38:    aload_1 
L39:    aconst_null 
L40:    invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet setInteractionTarget [u488] 

        .stack same 
L43:    aload_0 
L44:    getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L47:    iconst_1 
L48:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setPaused (Z)V 
L51:    aload_0 
L52:    getstatic Field com/fs/starfarer/campaign/CampaignState$o 'õ00000' Lcom/fs/starfarer/campaign/CampaignState$o; 
L55:    putfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L58:    aload_2 
L59:    invokevirtual Method com/fs/starfarer/campaign/BaseCampaignEntity getMarket ()Lcom/fs/starfarer/api/campaign/econ/MarketAPI; 
L62:    ifnull L75 
L65:    invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L68:    aload_2 
L69:    invokevirtual Method com/fs/starfarer/campaign/BaseCampaignEntity getMarket ()Lcom/fs/starfarer/api/campaign/econ/MarketAPI; 
L72:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine reportPlayerOpenedMarket (Lcom/fs/starfarer/api/campaign/econ/MarketAPI;)V 

        .stack same 
L75:    aload_0 
L76:    new com/fs/starfarer/ui/newui/o0Oo 
L79:    dup 
L80:    aload_2 
L81:    aload_3 
L82:    aload_0 
L83:    getfield Field com/fs/starfarer/campaign/CampaignState screenPanel Lcom/fs/starfarer/ui/interfacenew; 
L86:    aload_0 
L87:    invokespecial Method com/fs/starfarer/ui/newui/o0Oo <init> (Lcom/fs/starfarer/api/campaign/SectorEntityToken;Lcom/fs/starfarer/api/campaign/InteractionDialogPlugin;Lcom/fs/starfarer/ui/interfacenew;Lcom/fs/starfarer/ui/oo0O$o;)V 
L90:    putfield Field com/fs/starfarer/campaign/CampaignState encounterDialog Lcom/fs/starfarer/ui/newui/o0Oo; 
L93:    aload_0 
L94:    getfield Field com/fs/starfarer/campaign/CampaignState encounterDialog Lcom/fs/starfarer/ui/newui/o0Oo; 
L97:    ldc_w +0.30000001192092896f 
L100:   ldc +0.5f 
L102:   invokevirtual Method com/fs/starfarer/ui/newui/o0Oo show (FF)V 
L105:   aload_0 
L106:   getfield Field com/fs/starfarer/campaign/CampaignState messageDisplay Lcom/fs/starfarer/campaign/ui/O00O; 
L109:   invokevirtual Method com/fs/starfarer/campaign/ui/O00O clearNonSticky ()V 
L112:   aload_0 
L113:   getfield Field com/fs/starfarer/campaign/CampaignState core Lcom/fs/starfarer/ui/newui/L; 
L116:   invokevirtual Method com/fs/starfarer/ui/newui/L getFader ()Lcom/fs/graphics/util/Fader; 
L119:   invokevirtual Method com/fs/graphics/util/Fader fadeOut ()V 
L122:   aload_0 
L123:   getfield Field com/fs/starfarer/campaign/CampaignState core Lcom/fs/starfarer/ui/newui/L; 
L126:   invokevirtual Method com/fs/starfarer/ui/newui/L hideLogistics ()V 
L129:   iconst_0 
L130:   istore 4 
L132:   aload_2 
L133:   invokevirtual Method com/fs/starfarer/campaign/BaseCampaignEntity getMemoryWithoutUpdate ()Lcom/fs/starfarer/api/campaign/rules/MemoryAPI; 
L136:   ifnull L157 
L139:   aload_2 
L140:   invokevirtual Method com/fs/starfarer/campaign/BaseCampaignEntity getMemoryWithoutUpdate ()Lcom/fs/starfarer/api/campaign/rules/MemoryAPI; 
L143:   getstatic Field com/fs/starfarer/api/impl/MusicPlayerPluginImpl KEEP_PLAYING_LOCATION_MUSIC_DURING_ENCOUNTER_MEM_KEY Ljava/lang/String; 
L146:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/rules/MemoryAPI getBoolean (Ljava/lang/String;)Z 2 
L151:   ifeq L157 
L154:   iconst_1 
L155:   istore 4 

        .stack append Integer 
L157:   aload_2 
L158:   invokevirtual Method com/fs/starfarer/campaign/BaseCampaignEntity getMarket ()Lcom/fs/starfarer/api/campaign/econ/MarketAPI; 
L161:   ifnull L187 
L164:   aload_2 
L165:   invokevirtual Method com/fs/starfarer/campaign/BaseCampaignEntity getMarket ()Lcom/fs/starfarer/api/campaign/econ/MarketAPI; 
L168:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/econ/MarketAPI getMemoryWithoutUpdate ()Lcom/fs/starfarer/api/campaign/rules/MemoryAPI; 1 
L173:   getstatic Field com/fs/starfarer/api/impl/MusicPlayerPluginImpl KEEP_PLAYING_LOCATION_MUSIC_DURING_ENCOUNTER_MEM_KEY Ljava/lang/String; 
L176:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/rules/MemoryAPI getBoolean (Ljava/lang/String;)Z 2 
L181:   ifeq L187 
L184:   iconst_1 
L185:   istore 4 

        .stack same 
L187:   iload 4 
L189:   ifne L254 
L192:   aload_2 
L193:   invokevirtual Method com/fs/starfarer/campaign/BaseCampaignEntity getMarket ()Lcom/fs/starfarer/api/campaign/econ/MarketAPI; 
L196:   ifnull L231 
L199:   aload_2 
L200:   invokevirtual Method com/fs/starfarer/campaign/BaseCampaignEntity getMarket ()Lcom/fs/starfarer/api/campaign/econ/MarketAPI; 
L203:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/econ/MarketAPI isPlanetConditionMarketOnly ()Z 1 
L208:   ifne L221 
L211:   aload_2 
L212:   invokevirtual Method com/fs/starfarer/campaign/BaseCampaignEntity getMarket ()Lcom/fs/starfarer/api/campaign/econ/MarketAPI; 
L215:   invokestatic Method com/fs/starfarer/D/return o00000 (Ljava/lang/Object;)V 
L218:   goto L254 

        .stack same 
L221:   aload_2 
L222:   invokevirtual Method com/fs/starfarer/campaign/BaseCampaignEntity getMarket ()Lcom/fs/starfarer/api/campaign/econ/MarketAPI; 
L225:   invokestatic Method com/fs/starfarer/D/return Object (Ljava/lang/Object;)V 
L228:   goto L254 

        .stack same 
L231:   aload_2 
L232:   invokevirtual Method com/fs/starfarer/campaign/BaseCampaignEntity getFaction ()Lcom/fs/starfarer/campaign/Faction; 
L235:   ifnull L254 
L238:   aload_2 
L239:   instanceof com/fs/starfarer/api/campaign/JumpPointAPI 
L242:   ifne L254 
L245:   iload 4 
L247:   ifne L254 
L250:   aload_2 
L251:   invokestatic Method com/fs/starfarer/D/return 'Ò00000' (Ljava/lang/Object;)V 

        .stack same 
L254:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L257:   aload_0 
L258:   getfield Field com/fs/starfarer/campaign/CampaignState encounterDialog Lcom/fs/starfarer/ui/newui/o0Oo; 
L261:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine reportShowInteractionDialog (Lcom/fs/starfarer/api/campaign/InteractionDialogAPI;)V 
L264:   return 
L265:   
    .end code 
.end method 

.method private endBattle : (Lcom/fs/starfarer/api/campaign/FleetEncounterContextPlugin;)V 
    .code stack 3 locals 2 
L0:     aload_1 
L1:     invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/FleetEncounterContextPlugin isEngagedInHostilities ()Z 1 
L6:     ifeq L21 
L9:     invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L12:    getstatic Field com/fs/starfarer/api/util/Misc random Ljava/util/Random; 
L15:    invokevirtual Method java/util/Random nextLong ()J 
L18:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setPlayerBattleSeed (J)V 

        .stack same 
L21:    return 
L22:    
    .end code 
.end method 

.method public startBattle : (Lcom/fs/starfarer/api/combat/BattleCreationContext;)V 
    .code stack 3 locals 4 
L0:     aload_0 
L1:     aload_1 
L2:     invokevirtual Method com/fs/starfarer/api/combat/BattleCreationContext getPlayerFleet ()Lcom/fs/starfarer/api/campaign/CampaignFleetAPI; 
L5:     checkcast com/fs/starfarer/campaign/fleet/CampaignFleet 
L8:     putfield Field com/fs/starfarer/campaign/CampaignState playerFleetForBattle Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L11:    aload_0 
L12:    aload_1 
L13:    invokevirtual Method com/fs/starfarer/api/combat/BattleCreationContext getOtherFleet ()Lcom/fs/starfarer/api/campaign/CampaignFleetAPI; 
L16:    checkcast com/fs/starfarer/campaign/fleet/CampaignFleet 
L19:    putfield Field com/fs/starfarer/campaign/CampaignState enemyFleetForBattle Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L22:    aload_0 
L23:    getfield Field com/fs/starfarer/campaign/CampaignState playerFleetForBattle Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L26:    invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getFleetData ()Lcom/fs/starfarer/campaign/fleet/FleetData; 
L29:    iconst_0 
L30:    invokevirtual Method com/fs/starfarer/campaign/fleet/FleetData ensureHasFlagship (Z)V 
L33:    aload_0 
L34:    getfield Field com/fs/starfarer/campaign/CampaignState playerFleetForBattle Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L37:    invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getFleetData ()Lcom/fs/starfarer/campaign/fleet/FleetData; 
L40:    invokevirtual Method com/fs/starfarer/campaign/fleet/FleetData isOnlySyncMemberLists ()Z 
L43:    ifne L76 
L46:    aload_0 
L47:    getfield Field com/fs/starfarer/campaign/CampaignState playerFleetForBattle Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L50:    invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getFleetData ()Lcom/fs/starfarer/campaign/fleet/FleetData; 
L53:    invokevirtual Method com/fs/starfarer/campaign/fleet/FleetData recrewFleetMembers ()V 
L56:    aload_0 
L57:    getfield Field com/fs/starfarer/campaign/CampaignState playerFleetForBattle Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L60:    invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getFleetData ()Lcom/fs/starfarer/campaign/fleet/FleetData; 
L63:    invokevirtual Method com/fs/starfarer/campaign/fleet/FleetData setSyncNeeded ()V 
L66:    aload_0 
L67:    getfield Field com/fs/starfarer/campaign/CampaignState playerFleetForBattle Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L70:    invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getFleetData ()Lcom/fs/starfarer/campaign/fleet/FleetData; 
L73:    invokevirtual Method com/fs/starfarer/campaign/fleet/FleetData syncIfNeeded ()V 

        .stack same_extended 
L76:    aload_0 
L77:    getfield Field com/fs/starfarer/campaign/CampaignState enemyFleetForBattle Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L80:    invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getFleetData ()Lcom/fs/starfarer/campaign/fleet/FleetData; 
L83:    invokevirtual Method com/fs/starfarer/campaign/fleet/FleetData isOnlySyncMemberLists ()Z 
L86:    ifne L119 
L89:    aload_0 
L90:    getfield Field com/fs/starfarer/campaign/CampaignState enemyFleetForBattle Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L93:    invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getFleetData ()Lcom/fs/starfarer/campaign/fleet/FleetData; 
L96:    invokevirtual Method com/fs/starfarer/campaign/fleet/FleetData recrewFleetMembers ()V 
L99:    aload_0 
L100:   getfield Field com/fs/starfarer/campaign/CampaignState enemyFleetForBattle Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L103:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getFleetData ()Lcom/fs/starfarer/campaign/fleet/FleetData; 
L106:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetData setSyncNeeded ()V 
L109:   aload_0 
L110:   getfield Field com/fs/starfarer/campaign/CampaignState enemyFleetForBattle Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L113:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getFleetData ()Lcom/fs/starfarer/campaign/fleet/FleetData; 
L116:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetData syncIfNeeded ()V 

        .stack same 
L119:   new com/fs/starfarer/title/Object/L 
L122:   dup 
L123:   invokespecial Method com/fs/starfarer/title/Object/L <init> ()V 
L126:   astore_2 
L127:   aload_0 
L128:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L131:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getModAndPluginData ()Lcom/fs/starfarer/campaign/ModAndPluginData; 
L134:   aload_0 
L135:   getfield Field com/fs/starfarer/campaign/CampaignState enemyFleetForBattle Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L138:   invokevirtual Method com/fs/starfarer/campaign/ModAndPluginData pickBattleCreationPlugin (Lcom/fs/starfarer/api/campaign/SectorEntityToken;)Lcom/fs/starfarer/api/campaign/BattleCreationPlugin; 
L141:   astore_3 
L142:   aload_3 
L143:   ifnonnull L147 
L146:   return 

        .stack append Object com/fs/starfarer/title/Object/L Object com/fs/starfarer/api/campaign/BattleCreationPlugin 
L147:   aload_3 
L148:   aload_1 
L149:   aload_2 
L150:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/BattleCreationPlugin initBattle (Lcom/fs/starfarer/api/combat/BattleCreationContext;Lcom/fs/starfarer/api/mission/MissionDefinitionAPI;)V 3 
L155:   aload_2 
L156:   invokevirtual Method com/fs/starfarer/title/Object/L load ()V 
L159:   invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L162:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerFleetManager ()Lcom/fs/starfarer/combat/CombatFleetManager; 
L165:   aload_0 
L166:   getfield Field com/fs/starfarer/campaign/CampaignState playerFleetForBattle Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L169:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager setCampaignFleet (Lcom/fs/starfarer/campaign/fleet/CampaignFleet;)V 
L172:   invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L175:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getEnemyFleetManager ()Lcom/fs/starfarer/combat/CombatFleetManager; 
L178:   aload_0 
L179:   getfield Field com/fs/starfarer/campaign/CampaignState enemyFleetForBattle Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L182:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager setCampaignFleet (Lcom/fs/starfarer/campaign/fleet/CampaignFleet;)V 
L185:   invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L188:   ldc 'Campaign State' 
L190:   invokevirtual Method com/fs/starfarer/combat/CombatEngine setStateToReturnTo (Ljava/lang/String;)V 
L193:   invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L196:   aload_1 
L197:   invokevirtual Method com/fs/starfarer/combat/CombatEngine setContext (Lcom/fs/starfarer/api/combat/BattleCreationContext;)V 
L200:   aload_3 
L201:   invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L204:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/BattleCreationPlugin afterDefinitionLoad (Lcom/fs/starfarer/api/combat/CombatEngineAPI;)V 2 
L209:   aload_0 
L210:   getstatic Field com/fs/starfarer/combat/CombatState STATE_ID Ljava/lang/String; 
L213:   invokevirtual Method com/fs/starfarer/campaign/CampaignState goToState (Ljava/lang/String;)V 
L216:   return 
L217:   
    .end code 
.end method 

.method private showCodexDialog : ()V 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L4:     ifnull L8 
L7:     return 

        .stack same 
L8:     aload_0 
L9:     invokevirtual Method com/fs/starfarer/campaign/CampaignState isTransitioningToNextState ()Z 
L12:    ifeq L16 
L15:    return 

        .stack same 
L16:    aload_0 
L17:    getfield Field com/fs/starfarer/campaign/CampaignState screenPanel Lcom/fs/starfarer/ui/interfacenew; 
L20:    aload_0 
L21:    invokestatic Method com/fs/starfarer/codex2/CodexDialog show (Lcom/fs/starfarer/ui/interfacenew;Lcom/fs/starfarer/ui/oo0O$o;)V 
L24:    aload_0 
L25:    getstatic Field com/fs/starfarer/campaign/CampaignState$o 'ø00000' Lcom/fs/starfarer/campaign/CampaignState$o; 
L28:    putfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L31:    return 
L32:    
    .end code 
.end method 

.method public showAccidentReport : (Lcom/fs/starfarer/campaign/accidents/Oo0OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO;)V 
    .code stack 5 locals 3 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L4:     ifnull L19 
L7:     aload_0 
L8:     aload_1 
L9:     invokevirtual Method com/fs/starfarer/campaign/accidents/Oo0OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO class ()Ljava/lang/String; 
L12:    getstatic Field com/fs/starfarer/O0OO 'ÒÓ0000' Ljava/awt/Color; 
L15:    invokevirtual Method com/fs/starfarer/campaign/CampaignState addMessage (Ljava/lang/String;Ljava/awt/Color;)V 
L18:    return 

        .stack same 
L19:    aload_0 
L20:    invokevirtual Method com/fs/starfarer/campaign/CampaignState isTransitioningToNextState ()Z 
L23:    ifeq L27 
L26:    return 

        .stack same 
L27:    new com/fs/starfarer/campaign/accidents/String 
L30:    dup 
L31:    aload_0 
L32:    getfield Field com/fs/starfarer/campaign/CampaignState screenPanel Lcom/fs/starfarer/ui/interfacenew; 
L35:    aload_0 
L36:    aload_1 
L37:    invokespecial Method com/fs/starfarer/campaign/accidents/String <init> [u2052] 
L40:    astore_2 
L41:    aload_2 
L42:    ldc_w +0.30000001192092896f 
L45:    ldc_w +0.20000000298023224f 
L48:    invokevirtual Method com/fs/starfarer/campaign/accidents/String show (FF)V 
L51:    aload_0 
L52:    getstatic Field com/fs/starfarer/campaign/CampaignState$o 'ÒO0000' Lcom/fs/starfarer/campaign/CampaignState$o; 
L55:    putfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L58:    aload_0 
L59:    aload_0 
L60:    getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L63:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine isPaused ()Z 
L66:    putfield Field com/fs/starfarer/campaign/CampaignState wasPaused Z 
L69:    aload_0 
L70:    getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L73:    iconst_1 
L74:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setPaused (Z)V 
L77:    return 
L78:    
    .end code 
.end method 

.method public cmdCodex : ()V 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L4:     iconst_1 
L5:     invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setPaused (Z)V 
L8:     aload_0 
L9:     invokevirtual Method com/fs/starfarer/campaign/CampaignState showCodexDialog ()V 
L12:    return 
L13:    
    .end code 
.end method 

.method public cmdExitWithoutSaving : ()V 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     ldc_w 'Title Screen State' 
L4:     invokevirtual Method com/fs/starfarer/campaign/CampaignState goToState (Ljava/lang/String;)V 
L7:     return 
L8:     
    .end code 
.end method 

.method public cmdLoad : ()V 
    .code stack 5 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L4:     ifnull L8 
L7:     return 

        .stack same 
L8:     aload_0 
L9:     getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L12:    iconst_1 
L13:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setPaused (Z)V 
L16:    new com/fs/starfarer/campaign/save/LoadGameDialog 
L19:    dup 
L20:    getstatic Field com/fs/starfarer/campaign/save/LoadGameDialog$Oo new Lcom/fs/starfarer/campaign/save/LoadGameDialog$Oo; 
L23:    aload_0 
L24:    getfield Field com/fs/starfarer/campaign/CampaignState screenPanel Lcom/fs/starfarer/ui/interfacenew; 
L27:    aload_0 
L28:    invokespecial Method com/fs/starfarer/campaign/save/LoadGameDialog <init> (Lcom/fs/starfarer/campaign/save/LoadGameDialog$Oo;Lcom/fs/starfarer/ui/interfacenew;Lcom/fs/starfarer/ui/oo0O$o;)V 
L31:    astore_1 
L32:    aload_1 
L33:    ldc_w +0.30000001192092896f 
L36:    ldc_w +0.20000000298023224f 
L39:    invokevirtual Method com/fs/starfarer/campaign/save/LoadGameDialog show (FF)V 
L42:    aload_0 
L43:    getstatic Field com/fs/starfarer/campaign/CampaignState$o String Lcom/fs/starfarer/campaign/CampaignState$o; 
L46:    putfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L49:    return 
L50:    
    .end code 
.end method 

.method public cmdSave : ()Z 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/campaign/CampaignState doubleRender ()V 
L4:     aload_0 
L5:     invokestatic Method [c2014] o00000 (Lcom/fs/starfarer/campaign/CampaignEngine$o;)Ljava/lang/String; 
L8:     astore_1 
L9:     aload_1 
L10:    ifnull L25 
L13:    aload_0 
L14:    aload_1 
L15:    invokevirtual Method com/fs/starfarer/campaign/CampaignState showMessageDialog (Ljava/lang/String;)V 
L18:    aload_0 
L19:    iconst_1 
L20:    putfield Field com/fs/starfarer/campaign/CampaignState wasPaused Z 
L23:    iconst_0 
L24:    ireturn 

        .stack append Object java/lang/String 
L25:    iconst_1 
L26:    ireturn 
L27:    
    .end code 
.end method 

.method public cmdSaveCopy : ()V 
    .code stack 5 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L4:     ifnull L8 
L7:     return 

        .stack same 
L8:     aload_0 
L9:     getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L12:    iconst_1 
L13:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setPaused (Z)V 
L16:    new com/fs/starfarer/campaign/save/LoadGameDialog 
L19:    dup 
L20:    getstatic Field com/fs/starfarer/campaign/save/LoadGameDialog$Oo 'Ó00000' Lcom/fs/starfarer/campaign/save/LoadGameDialog$Oo; 
L23:    aload_0 
L24:    getfield Field com/fs/starfarer/campaign/CampaignState screenPanel Lcom/fs/starfarer/ui/interfacenew; 
L27:    aload_0 
L28:    invokespecial Method com/fs/starfarer/campaign/save/LoadGameDialog <init> (Lcom/fs/starfarer/campaign/save/LoadGameDialog$Oo;Lcom/fs/starfarer/ui/interfacenew;Lcom/fs/starfarer/ui/oo0O$o;)V 
L31:    astore_1 
L32:    aload_1 
L33:    ldc_w +0.30000001192092896f 
L36:    ldc_w +0.20000000298023224f 
L39:    invokevirtual Method com/fs/starfarer/campaign/save/LoadGameDialog show (FF)V 
L42:    aload_0 
L43:    getstatic Field com/fs/starfarer/campaign/CampaignState$o 'ÓO0000' Lcom/fs/starfarer/campaign/CampaignState$o; 
L46:    putfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L49:    return 
L50:    
    .end code 
.end method 

.method public cmdSaveAndExit : ()Z 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/campaign/CampaignState doubleRender ()V 
L4:     aload_0 
L5:     invokestatic Method [c2014] o00000 (Lcom/fs/starfarer/campaign/CampaignEngine$o;)Ljava/lang/String; 
L8:     astore_1 
L9:     aload_1 
L10:    ifnull L25 
L13:    aload_0 
L14:    aload_1 
L15:    invokevirtual Method com/fs/starfarer/campaign/CampaignState showMessageDialog (Ljava/lang/String;)V 
L18:    aload_0 
L19:    iconst_1 
L20:    putfield Field com/fs/starfarer/campaign/CampaignState wasPaused Z 
L23:    iconst_0 
L24:    ireturn 

        .stack append Object java/lang/String 
L25:    aload_0 
L26:    ldc_w 'Title Screen State' 
L29:    invokevirtual Method com/fs/starfarer/campaign/CampaignState goToState (Ljava/lang/String;)V 
L32:    iconst_1 
L33:    ireturn 
L34:    
    .end code 
.end method 

.method public cmdSettings : ()V 
    .code stack 4 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L4:     ifnull L8 
L7:     return 

        .stack same 
L8:     aload_0 
L9:     getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L12:    iconst_1 
L13:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setPaused (Z)V 
L16:    new com/fs/starfarer/title/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO/G 
L19:    dup 
L20:    aload_0 
L21:    getfield Field com/fs/starfarer/campaign/CampaignState screenPanel Lcom/fs/starfarer/ui/interfacenew; 
L24:    aload_0 
L25:    invokespecial Method com/fs/starfarer/title/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO/G <init> (Lcom/fs/starfarer/ui/interfacenew;Lcom/fs/starfarer/ui/oo0O$o;)V 
L28:    astore_1 
L29:    aload_1 
L30:    ldc_w +0.30000001192092896f 
L33:    ldc_w +0.20000000298023224f 
L36:    invokevirtual Method com/fs/starfarer/title/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO/G show (FF)V 
L39:    aload_0 
L40:    getstatic Field com/fs/starfarer/campaign/CampaignState$o do Lcom/fs/starfarer/campaign/CampaignState$o; 
L43:    putfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L46:    return 
L47:    
    .end code 
.end method 

.method public actionPerformed : (Ljava/lang/Object;Ljava/lang/Object;)V 
    .code stack 5 locals 3 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L4:     ifnull L8 
L7:     return 

        .stack same 
L8:     aload_2 
L9:     aload_0 
L10:    getfield Field com/fs/starfarer/campaign/CampaignState buttons Lcom/fs/starfarer/campaign/OooO; 
L13:    invokevirtual Method com/fs/starfarer/campaign/OooO getFleet ()Lcom/fs/starfarer/ui/n; 
L16:    if_acmpne L53 
L19:    aload_0 
L20:    ldc_w 'Fleet' 
L23:    aload_0 
L24:    getfield Field com/fs/starfarer/campaign/CampaignState screenPanel Lcom/fs/starfarer/ui/interfacenew; 
L27:    aload_0 
L28:    ldc_w +0.6600000262260437f 
L31:    invokestatic Method com/fs/starfarer/coreui/returnnew showNewInstanceAsDialog (Lcom/fs/starfarer/coreui/OO0o;Ljava/lang/String;Lcom/fs/starfarer/ui/interfacenew;Lcom/fs/starfarer/ui/oo0O$o;F)Lcom/fs/starfarer/coreui/returnnew; 
L34:    pop 
L35:    aload_0 
L36:    getstatic Field com/fs/starfarer/campaign/CampaignState$o 'ô00000' Lcom/fs/starfarer/campaign/CampaignState$o; 
L39:    putfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L42:    aload_0 
L43:    getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L46:    iconst_1 
L47:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setPaused (Z)V 
L50:    goto L320 

        .stack same 
L53:    aload_2 
L54:    aload_0 
L55:    getfield Field com/fs/starfarer/campaign/CampaignState buttons Lcom/fs/starfarer/campaign/OooO; 
L58:    invokevirtual Method com/fs/starfarer/campaign/OooO getCargo ()Lcom/fs/starfarer/ui/n; 
L61:    if_acmpne L98 
L64:    aload_0 
L65:    ldc_w 'Cargo' 
L68:    aload_0 
L69:    getfield Field com/fs/starfarer/campaign/CampaignState screenPanel Lcom/fs/starfarer/ui/interfacenew; 
L72:    aload_0 
L73:    ldc_w +0.6600000262260437f 
L76:    invokestatic Method com/fs/starfarer/coreui/returnnew showNewInstanceAsDialog (Lcom/fs/starfarer/coreui/OO0o;Ljava/lang/String;Lcom/fs/starfarer/ui/interfacenew;Lcom/fs/starfarer/ui/oo0O$o;F)Lcom/fs/starfarer/coreui/returnnew; 
L79:    pop 
L80:    aload_0 
L81:    getstatic Field com/fs/starfarer/campaign/CampaignState$o 'ô00000' Lcom/fs/starfarer/campaign/CampaignState$o; 
L84:    putfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L87:    aload_0 
L88:    getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L91:    iconst_1 
L92:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setPaused (Z)V 
L95:    goto L320 

        .stack same 
L98:    aload_2 
L99:    aload_0 
L100:   getfield Field com/fs/starfarer/campaign/CampaignState buttons Lcom/fs/starfarer/campaign/OooO; 
L103:   invokevirtual Method com/fs/starfarer/campaign/OooO getRefit ()Lcom/fs/starfarer/ui/n; 
L106:   if_acmpne L143 
L109:   aload_0 
L110:   ldc_w 'Refit' 
L113:   aload_0 
L114:   getfield Field com/fs/starfarer/campaign/CampaignState screenPanel Lcom/fs/starfarer/ui/interfacenew; 
L117:   aload_0 
L118:   ldc_w +0.6600000262260437f 
L121:   invokestatic Method com/fs/starfarer/coreui/returnnew showNewInstanceAsDialog (Lcom/fs/starfarer/coreui/OO0o;Ljava/lang/String;Lcom/fs/starfarer/ui/interfacenew;Lcom/fs/starfarer/ui/oo0O$o;F)Lcom/fs/starfarer/coreui/returnnew; 
L124:   pop 
L125:   aload_0 
L126:   getstatic Field com/fs/starfarer/campaign/CampaignState$o 'ô00000' Lcom/fs/starfarer/campaign/CampaignState$o; 
L129:   putfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L132:   aload_0 
L133:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L136:   iconst_1 
L137:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setPaused (Z)V 
L140:   goto L320 

        .stack same 
L143:   aload_2 
L144:   aload_0 
L145:   getfield Field com/fs/starfarer/campaign/CampaignState buttons Lcom/fs/starfarer/campaign/OooO; 
L148:   invokevirtual Method com/fs/starfarer/campaign/OooO getOfficers ()Lcom/fs/starfarer/ui/n; 
L151:   if_acmpne L188 
L154:   aload_0 
L155:   ldc_w 'Officers' 
L158:   aload_0 
L159:   getfield Field com/fs/starfarer/campaign/CampaignState screenPanel Lcom/fs/starfarer/ui/interfacenew; 
L162:   aload_0 
L163:   ldc_w +0.6600000262260437f 
L166:   invokestatic Method com/fs/starfarer/coreui/returnnew showNewInstanceAsDialog (Lcom/fs/starfarer/coreui/OO0o;Ljava/lang/String;Lcom/fs/starfarer/ui/interfacenew;Lcom/fs/starfarer/ui/oo0O$o;F)Lcom/fs/starfarer/coreui/returnnew; 
L169:   pop 
L170:   aload_0 
L171:   getstatic Field com/fs/starfarer/campaign/CampaignState$o 'ô00000' Lcom/fs/starfarer/campaign/CampaignState$o; 
L174:   putfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L177:   aload_0 
L178:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L181:   iconst_1 
L182:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setPaused (Z)V 
L185:   goto L320 

        .stack same 
L188:   aload_2 
L189:   aload_0 
L190:   getfield Field com/fs/starfarer/campaign/CampaignState buttons Lcom/fs/starfarer/campaign/OooO; 
L193:   invokevirtual Method com/fs/starfarer/campaign/OooO getOutposts ()Lcom/fs/starfarer/ui/n; 
L196:   if_acmpne L233 
L199:   aload_0 
L200:   ldc_w 'Outposts' 
L203:   aload_0 
L204:   getfield Field com/fs/starfarer/campaign/CampaignState screenPanel Lcom/fs/starfarer/ui/interfacenew; 
L207:   aload_0 
L208:   ldc_w +0.6600000262260437f 
L211:   invokestatic Method com/fs/starfarer/coreui/returnnew showNewInstanceAsDialog (Lcom/fs/starfarer/coreui/OO0o;Ljava/lang/String;Lcom/fs/starfarer/ui/interfacenew;Lcom/fs/starfarer/ui/oo0O$o;F)Lcom/fs/starfarer/coreui/returnnew; 
L214:   pop 
L215:   aload_0 
L216:   getstatic Field com/fs/starfarer/campaign/CampaignState$o 'ô00000' Lcom/fs/starfarer/campaign/CampaignState$o; 
L219:   putfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L222:   aload_0 
L223:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L226:   iconst_1 
L227:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setPaused (Z)V 
L230:   goto L320 

        .stack same 
L233:   aload_2 
L234:   aload_0 
L235:   getfield Field com/fs/starfarer/campaign/CampaignState buttons Lcom/fs/starfarer/campaign/OooO; 
L238:   invokevirtual Method com/fs/starfarer/campaign/OooO getMap ()Lcom/fs/starfarer/ui/n; 
L241:   if_acmpne L278 
L244:   aload_0 
L245:   ldc_w 'Map' 
L248:   aload_0 
L249:   getfield Field com/fs/starfarer/campaign/CampaignState screenPanel Lcom/fs/starfarer/ui/interfacenew; 
L252:   aload_0 
L253:   ldc_w +0.6600000262260437f 
L256:   invokestatic Method com/fs/starfarer/coreui/returnnew showNewInstanceAsDialog (Lcom/fs/starfarer/coreui/OO0o;Ljava/lang/String;Lcom/fs/starfarer/ui/interfacenew;Lcom/fs/starfarer/ui/oo0O$o;F)Lcom/fs/starfarer/coreui/returnnew; 
L259:   pop 
L260:   aload_0 
L261:   getstatic Field com/fs/starfarer/campaign/CampaignState$o 'ô00000' Lcom/fs/starfarer/campaign/CampaignState$o; 
L264:   putfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L267:   aload_0 
L268:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L271:   iconst_1 
L272:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setPaused (Z)V 
L275:   goto L320 

        .stack same 
L278:   aload_2 
L279:   aload_0 
L280:   getfield Field com/fs/starfarer/campaign/CampaignState buttons Lcom/fs/starfarer/campaign/OooO; 
L283:   invokevirtual Method com/fs/starfarer/campaign/OooO getCharacter ()Lcom/fs/starfarer/ui/n; 
L286:   if_acmpne L320 
L289:   aload_0 
L290:   ldc_w 'Character' 
L293:   aload_0 
L294:   getfield Field com/fs/starfarer/campaign/CampaignState screenPanel Lcom/fs/starfarer/ui/interfacenew; 
L297:   aload_0 
L298:   ldc_w +0.6600000262260437f 
L301:   invokestatic Method com/fs/starfarer/coreui/returnnew showNewInstanceAsDialog (Lcom/fs/starfarer/coreui/OO0o;Ljava/lang/String;Lcom/fs/starfarer/ui/interfacenew;Lcom/fs/starfarer/ui/oo0O$o;F)Lcom/fs/starfarer/coreui/returnnew; 
L304:   pop 
L305:   aload_0 
L306:   getstatic Field com/fs/starfarer/campaign/CampaignState$o 'ô00000' Lcom/fs/starfarer/campaign/CampaignState$o; 
L309:   putfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L312:   aload_0 
L313:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L316:   iconst_1 
L317:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setPaused (Z)V 

        .stack same 
L320:   return 
L321:   
    .end code 
.end method 

.method public areShipNamesEditable : ()Z 
    .code stack 1 locals 1 
L0:     iconst_1 
L1:     ireturn 
L2:     
    .end code 
.end method 

.method public autoSaveRefitChanges : ()Z 
    .code stack 1 locals 1 
L0:     iconst_1 
L1:     ireturn 
L2:     
    .end code 
.end method 

.method public getAvailableVariants : ()Ljava/util/List; 
    .signature ()Ljava/util/List<Lcom/fs/starfarer/loading/specs/HullVariantSpec;>; 
    .code stack 3 locals 6 
L0:     invokestatic Method com/fs/starfarer/loading/B o00000 ()Ljava/util/List; 
L3:     astore_1 
L4:     new java/util/ArrayList 
L7:     dup 
L8:     invokespecial Method java/util/ArrayList <init> ()V 
L11:    astore_2 
L12:    aload_1 
L13:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L18:    astore 4 
L20:    goto L57 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Object java/util/List Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L23:    aload 4 
L25:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L30:    checkcast java/lang/String 
L33:    astore_3 
L34:    aload_3 
L35:    invokestatic Method com/fs/starfarer/loading/B o00000 (Ljava/lang/String;)Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L38:    astore 5 
L40:    aload 5 
L42:    invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec isStockVariant ()Z 
L45:    ifeq L57 
L48:    aload_2 
L49:    aload 5 
L51:    invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L56:    pop 

        .stack same 
L57:    aload 4 
L59:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L64:    ifne L23 
L67:    new java/util/ArrayList 
L70:    dup 
L71:    aload_0 
L72:    getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L75:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getAllSavedVariantIds ()Ljava/util/Collection; 
L78:    invokespecial Method java/util/ArrayList <init> (Ljava/util/Collection;)V 
L81:    astore_1 
L82:    aload_1 
L83:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L88:    astore 4 
L90:    goto L123 

        .stack same 
L93:    aload 4 
L95:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L100:   checkcast java/lang/String 
L103:   astore_3 
L104:   aload_0 
L105:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L108:   aload_3 
L109:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getSavedVariant (Ljava/lang/String;)Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L112:   astore 5 
L114:   aload_2 
L115:   aload 5 
L117:   invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L122:   pop 

        .stack same 
L123:   aload 4 
L125:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L130:   ifne L93 
L133:   aload_2 
L134:   areturn 
L135:   
    .end code 
.end method 

.method public getFleetMembers : ()Ljava/util/List; 
    .signature ()Ljava/util/List<Lcom/fs/starfarer/campaign/fleet/FleetMember;>; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L4:     invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L7:     invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getMembers ()Ljava/util/List; 
L10:    areturn 
L11:    
    .end code 
.end method 

.method public notifyCoreUIDismissed : ()V 
    .code stack 0 locals 1 
L0:     return 
L1:     
    .end code 
.end method 

.method public notifyFleetMemberChanged : (Lcom/fs/starfarer/coreui/refit/U;Lcom/fs/starfarer/campaign/fleet/FleetMember;)V 
    .code stack 0 locals 3 
L0:     return 
L1:     
    .end code 
.end method 

.method public getCargo : ()Lcom/fs/starfarer/api/campaign/CargoAPI; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L4:     invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L7:     invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getCargo ()Lcom/fs/starfarer/campaign/fleet/CargoData; 
L10:    areturn 
L11:    
    .end code 
.end method 

.method public getFleetData : ()Lcom/fs/starfarer/campaign/fleet/FleetData; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L4:     invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L7:     invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getFleetData ()Lcom/fs/starfarer/campaign/fleet/FleetData; 
L10:    areturn 
L11:    
    .end code 
.end method 

.method public isShowingDialog : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L4:     ifnonnull L35 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L11:    ifnull L27 
L14:    aload_0 
L15:    getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L18:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getCampaignHelp ()Lcom/fs/starfarer/campaign/CampaignHelpManager; 
L21:    invokevirtual Method com/fs/starfarer/campaign/CampaignHelpManager isShowingDialog ()Z 
L24:    ifne L35 

        .stack same 
L27:    getstatic Field com/fs/starfarer/ui/newui/oOOo showingDialog Z 
L30:    ifne L35 
L33:    iconst_0 
L34:    ireturn 

        .stack same 
L35:    iconst_1 
L36:    ireturn 
L37:    
    .end code 
.end method 

.method public isShowingMenu : ()Z 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L4:     getstatic Field com/fs/starfarer/campaign/CampaignState$o 'super' Lcom/fs/starfarer/campaign/CampaignState$o; 
L7:     if_acmpne L12 
L10:    iconst_1 
L11:    ireturn 

        .stack same 
L12:    iconst_0 
L13:    ireturn 
L14:    
    .end code 
.end method 

.method public setEngine : (Lcom/fs/starfarer/campaign/CampaignEngine;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L5:     return 
L6:     
    .end code 
.end method 

.method public getPlayerFleet : ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
    .code stack 1 locals 1 
L0:     invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L3:     invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L6:     areturn 
L7:     
    .end code 
.end method 

.method private addMessages : (F)V 
    .code stack 3 locals 3 
L0:     getstatic Field com/fs/starfarer/settings/StarfarerSettings 'ÖÒ0000' Z 
L3:     ifeq L7 
L6:     return 

        .stack same 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/campaign/CampaignState stuff Lcom/fs/starfarer/util/IntervalTracker; 
L11:    fload_1 
L12:    invokevirtual Method com/fs/starfarer/util/IntervalTracker advance (F)V 
L15:    aload_0 
L16:    getfield Field com/fs/starfarer/campaign/CampaignState stuff Lcom/fs/starfarer/util/IntervalTracker; 
L19:    invokevirtual Method com/fs/starfarer/util/IntervalTracker intervalElapsed ()Z 
L22:    ifeq L82 
L25:    invokestatic Method java/lang/Math random ()D 
L28:    d2f 
L29:    fstore_2 
L30:    fload_2 
L31:    ldc_w +0.33000001311302185f 
L34:    fcmpg 
L35:    ifge L51 
L38:    aload_0 
L39:    ldc_w "Food for thought: the RNG may know that you're playing a pirated copy of the game. Let the paranoia begin!" 
L42:    getstatic Field com/fs/starfarer/O0OO 'super.new' Ljava/awt/Color; 
L45:    invokevirtual Method com/fs/starfarer/campaign/CampaignState addMessage (Ljava/lang/String;Ljava/awt/Color;)V 
L48:    goto L82 

        .stack append Float 
L51:    fload_2 
L52:    ldc_w +0.6600000262260437f 
L55:    fcmpg 
L56:    ifge L72 
L59:    aload_0 
L60:    ldc_w "If you're enjoying the game, please consider supporting its development: www.fractalsoftworks.com" 
L63:    getstatic Field com/fs/starfarer/O0OO 'super.new' Ljava/awt/Color; 
L66:    invokevirtual Method com/fs/starfarer/campaign/CampaignState addMessage (Ljava/lang/String;Ljava/awt/Color;)V 
L69:    goto L82 

        .stack same 
L72:    aload_0 
L73:    ldc_w '<insert invulnerable scorpion (or, better yet, a Pink Scorpion Diggle) here>' 
L76:    getstatic Field java/awt/Color pink Ljava/awt/Color; 
L79:    invokevirtual Method com/fs/starfarer/campaign/CampaignState addMessage (Ljava/lang/String;Ljava/awt/Color;)V 

        .stack chop 1 
L82:    return 
L83:    
    .end code 
.end method 

.method public resetViewOffset : ()V 
    .code stack 3 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState viewOffset Lcom/fs/starfarer/campaign/int; 
L4:     ifnonnull L18 
L7:     aload_0 
L8:     new com/fs/starfarer/campaign/int 
L11:    dup 
L12:    invokespecial Method com/fs/starfarer/campaign/int <init> ()V 
L15:    putfield Field com/fs/starfarer/campaign/CampaignState viewOffset Lcom/fs/starfarer/campaign/int; 

        .stack same 
L18:    aload_0 
L19:    getfield Field com/fs/starfarer/campaign/CampaignState viewOffset Lcom/fs/starfarer/campaign/int; 
L22:    invokevirtual Method com/fs/starfarer/campaign/int reset ()V 
L25:    return 
L26:    
    .end code 
.end method 

.method public clearMessages : ()V 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState messageDisplay Lcom/fs/starfarer/campaign/ui/O00O; 
L4:     invokevirtual Method com/fs/starfarer/campaign/ui/O00O clearNonSticky ()V 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/campaign/CampaignState messageDisplay Lcom/fs/starfarer/campaign/ui/O00O; 
L11:    invokevirtual Method com/fs/starfarer/campaign/ui/O00O clearSticky ()V 
L14:    aload_0 
L15:    getfield Field com/fs/starfarer/campaign/CampaignState messageListV3 Lcom/fs/starfarer/campaign/comms/super; 
L18:    invokevirtual Method com/fs/starfarer/campaign/comms/super clear ()V 
L21:    return 
L22:    
    .end code 
.end method 

.method public getAvailableHullModsCopy : ()Ljava/util/List; 
    .signature ()Ljava/util/List<Lcom/fs/starfarer/api/loading/HullModSpecAPI;>; 
    .code stack 3 locals 2 
L0:     new java/util/ArrayList 
L3:     dup 
L4:     aload_0 
L5:     invokevirtual Method com/fs/starfarer/campaign/CampaignState getAvailableHullMods ()Ljava/util/List; 
L8:     invokespecial Method java/util/ArrayList <init> (Ljava/util/Collection;)V 
L11:    astore_1 
L12:    aload_1 
L13:    areturn 
L14:    
    .end code 
.end method 

.method public isHullModAvailable : (Ljava/lang/String;)Z 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/campaign/CampaignState getAvailableHullModIds ()Ljava/util/List; 
L4:     aload_1 
L5:     invokeinterface InterfaceMethod java/util/List contains (Ljava/lang/Object;)Z 2 
L10:    ireturn 
L11:    
    .end code 
.end method 

.method public getAvailableHullMods : ()Ljava/util/List; 
    .signature ()Ljava/util/List<Lcom/fs/starfarer/loading/specs/O00O;>; 
    .code stack 3 locals 6 
L0:     new java/util/HashSet 
L3:     dup 
L4:     invokespecial Method java/util/HashSet <init> ()V 
L7:     astore_1 
L8:     aload_0 
L9:     invokevirtual Method com/fs/starfarer/campaign/CampaignState getAvailableHullModIds ()Ljava/util/List; 
L12:    astore_2 
L13:    aload_2 
L14:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L19:    astore 4 
L21:    goto L67 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Object java/util/Set Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L24:    aload 4 
L26:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L31:    checkcast java/lang/String 
L34:    astore_3 
L35:    ldc_w Class com/fs/starfarer/loading/specs/O00O 
L38:    aload_3 
L39:    invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object; 
L42:    checkcast com/fs/starfarer/loading/specs/O00O 
L45:    astore 5 
L47:    aload 5 
L49:    invokevirtual Method com/fs/starfarer/loading/specs/O00O isHidden ()Z 
L52:    ifeq L58 
L55:    goto L67 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Object java/util/Set Object java/util/List Object java/lang/String Object java/util/Iterator Object com/fs/starfarer/loading/specs/O00O 
            stack 
        .end stack 
L58:    aload_1 
L59:    aload 5 
L61:    invokeinterface InterfaceMethod java/util/Set add (Ljava/lang/Object;)Z 2 
L66:    pop 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Object java/util/Set Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L67:    aload 4 
L69:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L74:    ifne L24 
L77:    new java/util/ArrayList 
L80:    dup 
L81:    aload_1 
L82:    invokespecial Method java/util/ArrayList <init> (Ljava/util/Collection;)V 
L85:    areturn 
L86:    
    .end code 
.end method 

.method public getAvailableHullModIds : ()Ljava/util/List; 
    .signature ()Ljava/util/List<Ljava/lang/String;>; 
    .code stack 3 locals 6 
L0:     new java/util/HashSet 
L3:     dup 
L4:     invokespecial Method java/util/HashSet <init> ()V 
L7:     astore_1 
L8:     aload_0 
L9:     getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L12:    ifnull L38 
L15:    aload_0 
L16:    getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L19:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getCharacterData ()Lcom/fs/starfarer/campaign/PlayerCharacterData; 
L22:    ifnull L38 
L25:    aload_0 
L26:    getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L29:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getCharacterData ()Lcom/fs/starfarer/campaign/PlayerCharacterData; 
L32:    invokevirtual Method com/fs/starfarer/campaign/PlayerCharacterData getPerson ()Lcom/fs/starfarer/rpg/Person; 
L35:    ifnonnull L47 

        .stack append Object java/util/Set 
L38:    new java/util/ArrayList 
L41:    dup 
L42:    aload_1 
L43:    invokespecial Method java/util/ArrayList <init> (Ljava/util/Collection;)V 
L46:    areturn 

        .stack same 
L47:    aload_0 
L48:    getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L51:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getCharacterData ()Lcom/fs/starfarer/campaign/PlayerCharacterData; 
L54:    invokevirtual Method com/fs/starfarer/campaign/PlayerCharacterData getPerson ()Lcom/fs/starfarer/rpg/Person; 
L57:    invokevirtual Method com/fs/starfarer/rpg/Person getStats ()Lcom/fs/starfarer/campaign/CharacterStats; 
L60:    invokevirtual Method com/fs/starfarer/campaign/CharacterStats getAvailableHullmodIds ()Ljava/util/List; 
L63:    astore_2 
L64:    aload_1 
L65:    aload_2 
L66:    invokeinterface InterfaceMethod java/util/Set addAll (Ljava/util/Collection;)Z 2 
L71:    pop 
L72:    new java/util/ArrayList 
L75:    dup 
L76:    invokestatic Method com/fs/starfarer/loading/SpecStore 'ö00000' ()Ljava/util/List; 
L79:    invokespecial Method java/util/ArrayList <init> (Ljava/util/Collection;)V 
L82:    astore_3 
L83:    aload_3 
L84:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L89:    astore 5 
L91:    goto L154 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Object java/util/Set Object java/util/List Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L94:    aload 5 
L96:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L101:   checkcast com/fs/starfarer/loading/specs/O00O 
L104:   astore 4 
L106:   aload_1 
L107:   aload 4 
L109:   invokevirtual Method com/fs/starfarer/loading/specs/O00O getId ()Ljava/lang/String; 
L112:   invokeinterface InterfaceMethod java/util/Set contains (Ljava/lang/Object;)Z 2 
L117:   ifeq L123 
L120:   goto L154 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Object java/util/Set Object java/util/List Object java/util/List Object com/fs/starfarer/loading/specs/O00O Object java/util/Iterator 
            stack 
        .end stack 
L123:   aload 4 
L125:   invokevirtual Method com/fs/starfarer/loading/specs/O00O isHidden ()Z 
L128:   ifeq L134 
L131:   goto L154 

        .stack same 
L134:   aload 4 
L136:   invokevirtual Method com/fs/starfarer/loading/specs/O00O isAlwaysUnlocked ()Z 
L139:   ifeq L154 
L142:   aload_1 
L143:   aload 4 
L145:   invokevirtual Method com/fs/starfarer/loading/specs/O00O getId ()Ljava/lang/String; 
L148:   invokeinterface InterfaceMethod java/util/Set add (Ljava/lang/Object;)Z 2 
L153:   pop 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignState Object java/util/Set Object java/util/List Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L154:   aload 5 
L156:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L161:   ifne L94 
L164:   aload_1 
L165:   aload_0 
L166:   getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L169:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getCharacterData ()Lcom/fs/starfarer/campaign/PlayerCharacterData; 
L172:   invokevirtual Method com/fs/starfarer/campaign/PlayerCharacterData getHullMods ()Ljava/util/Set; 
L175:   invokeinterface InterfaceMethod java/util/Set addAll (Ljava/util/Collection;)Z 2 
L180:   pop 
L181:   new java/util/ArrayList 
L184:   dup 
L185:   aload_1 
L186:   invokespecial Method java/util/ArrayList <init> (Ljava/util/Collection;)V 
L189:   areturn 
L190:   
    .end code 
.end method 

.method public getPlayerStats : ()Lcom/fs/starfarer/campaign/CharacterStats; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L4:     invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getCharacterData ()Lcom/fs/starfarer/campaign/PlayerCharacterData; 
L7:     invokevirtual Method com/fs/starfarer/campaign/PlayerCharacterData getPerson ()Lcom/fs/starfarer/rpg/Person; 
L10:    invokevirtual Method com/fs/starfarer/rpg/Person getStats ()Lcom/fs/starfarer/campaign/CharacterStats; 
L13:    areturn 
L14:    
    .end code 
.end method 

.method public getDialogType : ()Lcom/fs/starfarer/campaign/CampaignState$o; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public isCampaign : ()Z 
    .code stack 1 locals 1 
L0:     iconst_1 
L1:     ireturn 
L2:     
    .end code 
.end method 

.method public getDialogParent : ()Lcom/fs/starfarer/ui/interfacenew; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState screenPanel Lcom/fs/starfarer/ui/interfacenew; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public showCoreUITab : (Lcom/fs/starfarer/api/campaign/CoreUITabId;)V 
    .code stack 4 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L4:     getstatic Field com/fs/starfarer/campaign/CampaignState$o 'õ00000' Lcom/fs/starfarer/campaign/CampaignState$o; 
L7:     if_acmpne L58 
L10:    aload_0 
L11:    getfield Field com/fs/starfarer/campaign/CampaignState encounterDialog Lcom/fs/starfarer/ui/newui/o0Oo; 
L14:    ifnull L58 
L17:    aload_0 
L18:    getfield Field com/fs/starfarer/campaign/CampaignState encounterDialog Lcom/fs/starfarer/ui/newui/o0Oo; 
L21:    invokevirtual Method com/fs/starfarer/ui/newui/o0Oo getCoreUI ()Lcom/fs/starfarer/ui/newui/L; 
L24:    ifnull L41 
L27:    aload_0 
L28:    getfield Field com/fs/starfarer/campaign/CampaignState encounterDialog Lcom/fs/starfarer/ui/newui/o0Oo; 
L31:    invokevirtual Method com/fs/starfarer/ui/newui/o0Oo getCoreUI ()Lcom/fs/starfarer/ui/newui/L; 
L34:    aload_1 
L35:    invokevirtual Method com/fs/starfarer/ui/newui/L setCurrentTab (Ljava/lang/Object;)V 
L38:    goto L57 

        .stack same 
L41:    aload_0 
L42:    getfield Field com/fs/starfarer/campaign/CampaignState encounterDialog Lcom/fs/starfarer/ui/newui/o0Oo; 
L45:    aload_1 
L46:    aload_0 
L47:    getfield Field com/fs/starfarer/campaign/CampaignState encounterDialog Lcom/fs/starfarer/ui/newui/o0Oo; 
L50:    invokevirtual Method com/fs/starfarer/ui/newui/o0Oo getInteractionTarget [u458] 
L53:    aconst_null 
L54:    invokevirtual Method com/fs/starfarer/ui/newui/o0Oo showCore (Lcom/fs/starfarer/api/campaign/CoreUITabId;Lcom/fs/starfarer/api/campaign/SectorEntityToken;Lcom/fs/starfarer/api/campaign/CoreInteractionListener;)V 

        .stack same 
L57:    return 

        .stack same 
L58:    aload_0 
L59:    invokevirtual Method com/fs/starfarer/campaign/CampaignState isShowingDialog ()Z 
L62:    ifeq L76 
L65:    aload_0 
L66:    getfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L69:    getstatic Field com/fs/starfarer/campaign/CampaignState$o 'ô00000' Lcom/fs/starfarer/campaign/CampaignState$o; 
L72:    if_acmpeq L76 
L75:    return 

        .stack same 
L76:    aload_0 
L77:    getfield Field com/fs/starfarer/campaign/CampaignState core Lcom/fs/starfarer/ui/newui/L; 
L80:    aload_1 
L81:    invokevirtual Method com/fs/starfarer/ui/newui/L setCurrentTab (Ljava/lang/Object;)V 
L84:    return 
L85:    
    .end code 
.end method 

.method public setNextTransitionFast : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L4:     getstatic Field com/fs/starfarer/campaign/CampaignState$o 'õ00000' Lcom/fs/starfarer/campaign/CampaignState$o; 
L7:     if_acmpne L39 
L10:    aload_0 
L11:    getfield Field com/fs/starfarer/campaign/CampaignState encounterDialog Lcom/fs/starfarer/ui/newui/o0Oo; 
L14:    ifnull L39 
L17:    aload_0 
L18:    getfield Field com/fs/starfarer/campaign/CampaignState encounterDialog Lcom/fs/starfarer/ui/newui/o0Oo; 
L21:    invokevirtual Method com/fs/starfarer/ui/newui/o0Oo getCoreUI ()Lcom/fs/starfarer/ui/newui/L; 
L24:    ifnull L38 
L27:    aload_0 
L28:    getfield Field com/fs/starfarer/campaign/CampaignState encounterDialog Lcom/fs/starfarer/ui/newui/o0Oo; 
L31:    invokevirtual Method com/fs/starfarer/ui/newui/o0Oo getCoreUI ()Lcom/fs/starfarer/ui/newui/L; 
L34:    iload_1 
L35:    invokevirtual Method com/fs/starfarer/ui/newui/L setNextTransitionFast (Z)V 

        .stack same 
L38:    return 

        .stack same 
L39:    aload_0 
L40:    invokevirtual Method com/fs/starfarer/campaign/CampaignState isShowingDialog ()Z 
L43:    ifeq L57 
L46:    aload_0 
L47:    getfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L50:    getstatic Field com/fs/starfarer/campaign/CampaignState$o 'ô00000' Lcom/fs/starfarer/campaign/CampaignState$o; 
L53:    if_acmpeq L57 
L56:    return 

        .stack same 
L57:    aload_0 
L58:    getfield Field com/fs/starfarer/campaign/CampaignState core Lcom/fs/starfarer/ui/newui/L; 
L61:    iload_1 
L62:    invokevirtual Method com/fs/starfarer/ui/newui/L setNextTransitionFast (Z)V 
L65:    return 
L66:    
    .end code 
.end method 

.method public showCoreUITab : (Lcom/fs/starfarer/api/campaign/CoreUITabId;Ljava/lang/Object;)V 
    .code stack 4 locals 3 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L4:     getstatic Field com/fs/starfarer/campaign/CampaignState$o 'õ00000' Lcom/fs/starfarer/campaign/CampaignState$o; 
L7:     if_acmpne L58 
L10:    aload_0 
L11:    getfield Field com/fs/starfarer/campaign/CampaignState encounterDialog Lcom/fs/starfarer/ui/newui/o0Oo; 
L14:    ifnull L58 
L17:    aload_0 
L18:    getfield Field com/fs/starfarer/campaign/CampaignState encounterDialog Lcom/fs/starfarer/ui/newui/o0Oo; 
L21:    invokevirtual Method com/fs/starfarer/ui/newui/o0Oo getCoreUI ()Lcom/fs/starfarer/ui/newui/L; 
L24:    ifnull L41 
L27:    aload_0 
L28:    getfield Field com/fs/starfarer/campaign/CampaignState encounterDialog Lcom/fs/starfarer/ui/newui/o0Oo; 
L31:    invokevirtual Method com/fs/starfarer/ui/newui/o0Oo getCoreUI ()Lcom/fs/starfarer/ui/newui/L; 
L34:    aload_1 
L35:    invokevirtual Method com/fs/starfarer/ui/newui/L setCurrentTab (Ljava/lang/Object;)V 
L38:    goto L57 

        .stack same 
L41:    aload_0 
L42:    getfield Field com/fs/starfarer/campaign/CampaignState encounterDialog Lcom/fs/starfarer/ui/newui/o0Oo; 
L45:    aload_1 
L46:    aload_0 
L47:    getfield Field com/fs/starfarer/campaign/CampaignState encounterDialog Lcom/fs/starfarer/ui/newui/o0Oo; 
L50:    invokevirtual Method com/fs/starfarer/ui/newui/o0Oo getInteractionTarget [u458] 
L53:    aconst_null 
L54:    invokevirtual Method com/fs/starfarer/ui/newui/o0Oo showCore (Lcom/fs/starfarer/api/campaign/CoreUITabId;Lcom/fs/starfarer/api/campaign/SectorEntityToken;Lcom/fs/starfarer/api/campaign/CoreInteractionListener;)V 

        .stack same 
L57:    return 

        .stack same 
L58:    aload_0 
L59:    invokevirtual Method com/fs/starfarer/campaign/CampaignState isShowingDialog ()Z 
L62:    ifeq L76 
L65:    aload_0 
L66:    getfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L69:    getstatic Field com/fs/starfarer/campaign/CampaignState$o 'ô00000' Lcom/fs/starfarer/campaign/CampaignState$o; 
L72:    if_acmpeq L76 
L75:    return 

        .stack same 
L76:    aload_0 
L77:    getfield Field com/fs/starfarer/campaign/CampaignState core Lcom/fs/starfarer/ui/newui/L; 
L80:    aload_1 
L81:    aload_2 
L82:    invokevirtual Method com/fs/starfarer/ui/newui/L setCurrentTab (Ljava/lang/Object;Ljava/lang/Object;)V 
L85:    return 
L86:    
    .end code 
.end method 

.method public isStockVariantEditor : ()Z 
    .code stack 1 locals 1 
L0:     iconst_0 
L1:     ireturn 
L2:     
    .end code 
.end method 

.method public getSavedVariantData : ()Lcom/fs/starfarer/coreui/refit/auto/SavedVariantData; 
    .code stack 1 locals 1 
L0:     invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L3:     invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getSavedVariantData ()Lcom/fs/starfarer/coreui/refit/auto/SavedVariantData; 
L6:     areturn 
L7:     
    .end code 
.end method 

.method public getCore : ()Lcom/fs/starfarer/ui/newui/L; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState core Lcom/fs/starfarer/ui/newui/L; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public getCurrentCoreTab : ()Lcom/fs/starfarer/api/campaign/CoreUITabId; 
    .code stack 1 locals 4 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/campaign/CampaignState getCurrentInteractionDialog ()Lcom/fs/starfarer/api/campaign/InteractionDialogAPI; 
L4:     instanceof com/fs/starfarer/ui/newui/o0Oo 
L7:     ifeq L44 
L10:    aload_0 
L11:    invokevirtual Method com/fs/starfarer/campaign/CampaignState getCurrentInteractionDialog ()Lcom/fs/starfarer/api/campaign/InteractionDialogAPI; 
L14:    checkcast com/fs/starfarer/ui/newui/o0Oo 
L17:    astore_1 
L18:    aload_1 
L19:    invokevirtual Method com/fs/starfarer/ui/newui/o0Oo getCoreUI ()Lcom/fs/starfarer/ui/newui/L; 
L22:    astore_2 
L23:    aload_2 
L24:    ifnull L44 
L27:    aload_2 
L28:    invokevirtual Method com/fs/starfarer/ui/newui/L getCurrentTabId ()Ljava/lang/Object; 
L31:    astore_3 
L32:    aload_3 
L33:    instanceof com/fs/starfarer/api/campaign/CoreUITabId 
L36:    ifeq L44 
L39:    aload_3 
L40:    checkcast com/fs/starfarer/api/campaign/CoreUITabId 
L43:    areturn 

        .stack same 
L44:    aload_0 
L45:    getfield Field com/fs/starfarer/campaign/CampaignState core Lcom/fs/starfarer/ui/newui/L; 
L48:    ifnonnull L53 
L51:    aconst_null 
L52:    areturn 

        .stack same 
L53:    aload_0 
L54:    getfield Field com/fs/starfarer/campaign/CampaignState core Lcom/fs/starfarer/ui/newui/L; 
L57:    invokevirtual Method com/fs/starfarer/ui/newui/L getCurrentTabId ()Ljava/lang/Object; 
L60:    astore_1 
L61:    aload_1 
L62:    instanceof com/fs/starfarer/api/campaign/CoreUITabId 
L65:    ifeq L73 
L68:    aload_1 
L69:    checkcast com/fs/starfarer/api/campaign/CoreUITabId 
L72:    areturn 

        .stack append Object java/lang/Object 
L73:    aconst_null 
L74:    areturn 
L75:    
    .end code 
.end method 

.method public showHelpPopupIfPossible : (Ljava/lang/String;)V 
    .code stack 5 locals 3 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L4:     ifnull L8 
L7:     return 

        .stack same 
L8:     aload_1 
L9:     aload_0 
L10:    invokevirtual Method com/fs/starfarer/campaign/CampaignState getDialogParent ()Lcom/fs/starfarer/ui/interfacenew; 
L13:    new com/fs/starfarer/campaign/CampaignState$3 
L16:    dup 
L17:    aload_0 
L18:    invokespecial Method com/fs/starfarer/campaign/CampaignState$3 <init> (Lcom/fs/starfarer/campaign/CampaignState;)V 
L21:    aload_0 
L22:    invokestatic Method com/fs/starfarer/ui/newui/oOOo showIfNeeded (Ljava/lang/String;Lcom/fs/starfarer/ui/interfacenew;Lcom/fs/starfarer/ui/newui/oOOo$o;Lcom/fs/starfarer/ui/oo0O$o;)Z 
L25:    istore_2 
L26:    iload_2 
L27:    ifeq L48 
L30:    aload_0 
L31:    aload_0 
L32:    getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L35:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine isPaused ()Z 
L38:    putfield Field com/fs/starfarer/campaign/CampaignState wasPaused Z 
L41:    aload_0 
L42:    getstatic Field com/fs/starfarer/campaign/CampaignState$o 'Ò00000' Lcom/fs/starfarer/campaign/CampaignState$o; 
L45:    putfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 

        .stack append Integer 
L48:    return 
L49:    
    .end code 
.end method 

.method public isFastForward : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState fastForward Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public isHideUI : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState hideUI Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public setHideUI : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/campaign/CampaignState hideUI Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public getOverlayPanelForCodex : ()Lcom/fs/starfarer/ui/interfacenew; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState codexOverlay Lcom/fs/starfarer/ui/interfacenew; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public setShowingCodex : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/campaign/CampaignState showingCodex Z 
L5:     iload_1 
L6:     ifeq L31 
L9:     aload_0 
L10:    aload_0 
L11:    getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L14:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine isPaused ()Z 
L17:    putfield Field com/fs/starfarer/campaign/CampaignState wasPausedWhenCodexShown Z 
L20:    aload_0 
L21:    getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L24:    iconst_1 
L25:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setPaused (Z)V 
L28:    goto L42 

        .stack same 
L31:    aload_0 
L32:    getfield Field com/fs/starfarer/campaign/CampaignState engine Lcom/fs/starfarer/campaign/CampaignEngine; 
L35:    aload_0 
L36:    getfield Field com/fs/starfarer/campaign/CampaignState wasPausedWhenCodexShown Z 
L39:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setPaused (Z)V 

        .stack same 
L42:    return 
L43:    
    .end code 
.end method 

.method public isShowingCodex : ()Z 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/CampaignState showingCodex Z 
L4:     ifne L19 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/campaign/CampaignState dialogType Lcom/fs/starfarer/campaign/CampaignState$o; 
L11:    getstatic Field com/fs/starfarer/campaign/CampaignState$o 'ø00000' Lcom/fs/starfarer/campaign/CampaignState$o; 
L14:    if_acmpeq L19 
L17:    iconst_0 
L18:    ireturn 

        .stack same 
L19:    iconst_1 
L20:    ireturn 
L21:    
    .end code 
.end method 

.method public bridge synthetic getMessageDisplay : ()Lcom/fs/starfarer/api/campaign/MessageDisplayAPI; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/campaign/CampaignState getMessageDisplay ()Lcom/fs/starfarer/campaign/ui/O00O; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method static synthetic $SWITCH_TABLE$com$fs$starfarer$campaign$CampaignState$CurrentDialogType : ()[I 
    .code stack 3 locals 1 
L0:     getstatic Field com/fs/starfarer/campaign/CampaignState $SWITCH_TABLE$com$fs$starfarer$campaign$CampaignState$CurrentDialogType [I 
L3:     dup 
L4:     ifnull L8 
L7:     areturn 

        .stack stack_1 Object [I 
L8:     pop 
L9:     invokestatic Method com/fs/starfarer/campaign/CampaignState$o values ()[Lcom/fs/starfarer/campaign/CampaignState$o; 
L12:    arraylength 
L13:    newarray int 
L15:    astore_0 
        .catch java/lang/NoSuchFieldError from L16 to L26 using L29 
L16:    aload_0 
L17:    getstatic Field com/fs/starfarer/campaign/CampaignState$o 'ÒO0000' Lcom/fs/starfarer/campaign/CampaignState$o; 
L20:    invokevirtual Method com/fs/starfarer/campaign/CampaignState$o ordinal ()I 
L23:    bipush 12 
L25:    iastore 
L26:    goto L30 

        .stack full 
            locals Object [I 
            stack Object java/lang/NoSuchFieldError 
        .end stack 
L29:    pop 
        .catch java/lang/NoSuchFieldError from L30 to L40 using L43 

        .stack same 
L30:    aload_0 
L31:    getstatic Field com/fs/starfarer/campaign/CampaignState$o 'ø00000' Lcom/fs/starfarer/campaign/CampaignState$o; 
L34:    invokevirtual Method com/fs/starfarer/campaign/CampaignState$o ordinal ()I 
L37:    bipush 7 
L39:    iastore 
L40:    goto L44 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L43:    pop 
        .catch java/lang/NoSuchFieldError from L44 to L53 using L56 

        .stack same 
L44:    aload_0 
L45:    getstatic Field com/fs/starfarer/campaign/CampaignState$o 'ô00000' Lcom/fs/starfarer/campaign/CampaignState$o; 
L48:    invokevirtual Method com/fs/starfarer/campaign/CampaignState$o ordinal ()I 
L51:    iconst_1 
L52:    iastore 
L53:    goto L57 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L56:    pop 
        .catch java/lang/NoSuchFieldError from L57 to L66 using L69 

        .stack same 
L57:    aload_0 
L58:    getstatic Field com/fs/starfarer/campaign/CampaignState$o if Lcom/fs/starfarer/campaign/CampaignState$o; 
L61:    invokevirtual Method com/fs/starfarer/campaign/CampaignState$o ordinal ()I 
L64:    iconst_3 
L65:    iastore 
L66:    goto L70 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L69:    pop 
        .catch java/lang/NoSuchFieldError from L70 to L80 using L83 

        .stack same 
L70:    aload_0 
L71:    getstatic Field com/fs/starfarer/campaign/CampaignState$o 'Õ00000' Lcom/fs/starfarer/campaign/CampaignState$o; 
L74:    invokevirtual Method com/fs/starfarer/campaign/CampaignState$o ordinal ()I 
L77:    bipush 13 
L79:    iastore 
L80:    goto L84 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L83:    pop 
        .catch java/lang/NoSuchFieldError from L84 to L94 using L97 

        .stack same 
L84:    aload_0 
L85:    getstatic Field com/fs/starfarer/campaign/CampaignState$o 'Ò00000' Lcom/fs/starfarer/campaign/CampaignState$o; 
L88:    invokevirtual Method com/fs/starfarer/campaign/CampaignState$o ordinal ()I 
L91:    bipush 14 
L93:    iastore 
L94:    goto L98 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L97:    pop 
        .catch java/lang/NoSuchFieldError from L98 to L107 using L110 

        .stack same 
L98:    aload_0 
L99:    getstatic Field com/fs/starfarer/campaign/CampaignState$o 'õ00000' Lcom/fs/starfarer/campaign/CampaignState$o; 
L102:   invokevirtual Method com/fs/starfarer/campaign/CampaignState$o ordinal ()I 
L105:   iconst_2 
L106:   iastore 
L107:   goto L111 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L110:   pop 
        .catch java/lang/NoSuchFieldError from L111 to L120 using L123 

        .stack same 
L111:   aload_0 
L112:   getstatic Field com/fs/starfarer/campaign/CampaignState$o String Lcom/fs/starfarer/campaign/CampaignState$o; 
L115:   invokevirtual Method com/fs/starfarer/campaign/CampaignState$o ordinal ()I 
L118:   iconst_5 
L119:   iastore 
L120:   goto L124 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L123:   pop 
        .catch java/lang/NoSuchFieldError from L124 to L133 using L136 

        .stack same 
L124:   aload_0 
L125:   getstatic Field com/fs/starfarer/campaign/CampaignState$o 'super' Lcom/fs/starfarer/campaign/CampaignState$o; 
L128:   invokevirtual Method com/fs/starfarer/campaign/CampaignState$o ordinal ()I 
L131:   iconst_4 
L132:   iastore 
L133:   goto L137 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L136:   pop 
        .catch java/lang/NoSuchFieldError from L137 to L147 using L150 

        .stack same 
L137:   aload_0 
L138:   getstatic Field com/fs/starfarer/campaign/CampaignState$o void Lcom/fs/starfarer/campaign/CampaignState$o; 
L141:   invokevirtual Method com/fs/starfarer/campaign/CampaignState$o ordinal ()I 
L144:   bipush 9 
L146:   iastore 
L147:   goto L151 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L150:   pop 
        .catch java/lang/NoSuchFieldError from L151 to L161 using L164 

        .stack same 
L151:   aload_0 
L152:   getstatic Field com/fs/starfarer/campaign/CampaignState$o 'Ó00000' Lcom/fs/starfarer/campaign/CampaignState$o; 
L155:   invokevirtual Method com/fs/starfarer/campaign/CampaignState$o ordinal ()I 
L158:   bipush 10 
L160:   iastore 
L161:   goto L165 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L164:   pop 
        .catch java/lang/NoSuchFieldError from L165 to L175 using L178 

        .stack same 
L165:   aload_0 
L166:   getstatic Field com/fs/starfarer/campaign/CampaignState$o 'ÓO0000' Lcom/fs/starfarer/campaign/CampaignState$o; 
L169:   invokevirtual Method com/fs/starfarer/campaign/CampaignState$o ordinal ()I 
L172:   bipush 6 
L174:   iastore 
L175:   goto L179 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L178:   pop 
        .catch java/lang/NoSuchFieldError from L179 to L189 using L192 

        .stack same 
L179:   aload_0 
L180:   getstatic Field com/fs/starfarer/campaign/CampaignState$o do Lcom/fs/starfarer/campaign/CampaignState$o; 
L183:   invokevirtual Method com/fs/starfarer/campaign/CampaignState$o ordinal ()I 
L186:   bipush 8 
L188:   iastore 
L189:   goto L193 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L192:   pop 
        .catch java/lang/NoSuchFieldError from L193 to L203 using L206 

        .stack same 
L193:   aload_0 
L194:   getstatic Field com/fs/starfarer/campaign/CampaignState$o OO0000 Lcom/fs/starfarer/campaign/CampaignState$o; 
L197:   invokevirtual Method com/fs/starfarer/campaign/CampaignState$o ordinal ()I 
L200:   bipush 11 
L202:   iastore 
L203:   goto L207 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L206:   pop 

        .stack same 
L207:   aload_0 
L208:   dup 
L209:   putstatic Field com/fs/starfarer/campaign/CampaignState $SWITCH_TABLE$com$fs$starfarer$campaign$CampaignState$CurrentDialogType [I 
L212:   areturn 
L213:   
    .end code 
.end method 
.innerclasses 
    com/fs/starfarer/api/campaign/CampaignUIAPI$DismissDialogDelegate com/fs/starfarer/api/campaign/CampaignUIAPI DismissDialogDelegate public static interface abstract 
    com/fs/starfarer/api/campaign/FactionAPI$ShipPickMode com/fs/starfarer/api/campaign/FactionAPI ShipPickMode public static final enum 
    com/fs/starfarer/api/campaign/JumpPointAPI$JumpDestination com/fs/starfarer/api/campaign/JumpPointAPI JumpDestination public static 
    com/fs/starfarer/api/campaign/comm/CommMessageAPI$MessageClickAction com/fs/starfarer/api/campaign/comm/CommMessageAPI MessageClickAction public static final enum 
    com/fs/starfarer/api/impl/campaign/DerelictShipEntityPlugin$DerelictShipData com/fs/starfarer/api/impl/campaign/DerelictShipEntityPlugin DerelictShipData public static 
    com/fs/starfarer/api/impl/campaign/DerelictShipEntityPlugin$DerelictType com/fs/starfarer/api/impl/campaign/DerelictShipEntityPlugin DerelictType public static final enum 
    com/fs/starfarer/api/impl/campaign/missions/cb/BaseCustomBounty$Stage com/fs/starfarer/api/impl/campaign/missions/cb/BaseCustomBounty Stage public static final enum 
    [c1792] com/fs/starfarer/api/impl/campaign/missions/cb/CustomBountyCreator CustomBountyData public static 
    [c1450] com/fs/starfarer/api/impl/campaign/procgen/SalvageEntityGenDataSpec DropData public static 
    com/fs/starfarer/api/impl/campaign/rulecmd/salvage/special/ShipRecoverySpecial$PerShipData com/fs/starfarer/api/impl/campaign/rulecmd/salvage/special/ShipRecoverySpecial PerShipData public static 
    com/fs/starfarer/campaign/CampaignEngine$o com/fs/starfarer/campaign/CampaignEngine o public static interface abstract 
    com/fs/starfarer/campaign/CampaignState$1 [0] [0] 
    com/fs/starfarer/campaign/CampaignState$2 [0] [0] 
    com/fs/starfarer/campaign/CampaignState$3 [0] [0] 
    com/fs/starfarer/campaign/CampaignState$o com/fs/starfarer/campaign/CampaignState o public static final enum 
    com/fs/starfarer/campaign/save/O0OO$o com/fs/starfarer/campaign/save/O0OO o public static interface abstract 
    com/fs/starfarer/campaign/save/LoadGameDialog$Oo com/fs/starfarer/campaign/save/LoadGameDialog Oo public static final enum 
    com/fs/starfarer/return/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$o com/fs/starfarer/return/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO o public static final enum 
    com/fs/starfarer/launcher/ModManager$ModSpec com/fs/starfarer/launcher/ModManager ModSpec public static 
    [c1295] [c1301] oo public static final enum 
    [c1319] [c1301] o public static final enum 
    com/fs/starfarer/ui/oo0O$o com/fs/starfarer/ui/oo0O o public static interface abstract 
    com/fs/starfarer/ui/newui/oOOo$o com/fs/starfarer/ui/newui/oOOo o public static interface abstract 
.end innerclasses 
.nestmembers com/fs/starfarer/campaign/CampaignState$1 com/fs/starfarer/campaign/CampaignState$2 com/fs/starfarer/campaign/CampaignState$3 com/fs/starfarer/campaign/CampaignState$o 
.const [u458] = Utf8 ()Lcom/fs/starfarer/api/campaign/SectorEntityToken; 
.const [u488] = Utf8 (Lcom/fs/starfarer/api/campaign/SectorEntityToken;)V 
.const [u530] = Utf8 (Lcom/fs/starfarer/api/campaign/comm/IntelInfoPlugin;)V 
.const [c639] = Class [u626] 
.const [u882] = Utf8 Lcom/fs/starfarer/title/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$oo; 
.const [u898] = Utf8 (Lcom/fs/starfarer/title/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$oo;)Z 
.const [u903] = Utf8 Lcom/fs/starfarer/title/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$o; 
.const [u906] = Utf8 (Lcom/fs/starfarer/util/A/C;Lcom/fs/starfarer/title/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$o;Lcom/fs/starfarer/title/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$oo;)Z 
.const [c1295] = Class [u1279] 
.const [c1301] = Class [u1296] 
.const [c1319] = Class [u1302] 
.const [c1426] = Class [u1422] 
.const [c1450] = Class [u1427] 
.const [c1553] = Class [u1540] 
.const [u1669] = Utf8 (Ljava/lang/String;)Lcom/fs/starfarer/api/fleet/FleetMemberAPI; 
.const [c1792] = Class [u1783] 
.const [c2014] = Class [u2010] 
.const [u2052] = Utf8 (Lcom/fs/starfarer/ui/interfacenew;Lcom/fs/starfarer/ui/oo0O$o;Lcom/fs/starfarer/campaign/accidents/Oo0OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO;)V 
.const [u2248] = Utf8 (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)F 
.const [u626] = Utf8 com/fs/starfarer/api/campaign/InteractionDialogPlugin 
.const [u1279] = Utf8 com/fs/starfarer/title/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$oo 
.const [u1296] = Utf8 com/fs/starfarer/title/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 
.const [u1302] = Utf8 com/fs/starfarer/title/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$o 
.const [u1422] = Utf8 com/fs/starfarer/api/campaign/CustomCampaignEntityAPI 
.const [u1427] = Utf8 com/fs/starfarer/api/impl/campaign/procgen/SalvageEntityGenDataSpec$DropData 
.const [u1540] = Utf8 com/fs/starfarer/api/impl/campaign/intel/contacts/ContactIntel 
.const [u1783] = Utf8 com/fs/starfarer/api/impl/campaign/missions/cb/CustomBountyCreator$CustomBountyData 
.const [u2010] = Utf8 com/fs/starfarer/campaign/save/CampaignGameManager 
.end class 
