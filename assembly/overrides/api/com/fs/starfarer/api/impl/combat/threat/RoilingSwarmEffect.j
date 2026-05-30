.version 61 0 
.class public super com/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect 
.super com/fs/starfarer/api/combat/BaseCombatLayeredRenderingPlugin 
.field public static KEY_SHIP_MAP Ljava/lang/String; 
.field public static KEY_FLOCKING_MAP Ljava/lang/String; 
.field public static KEY_EXCHANGE_MAP Ljava/lang/String; 
.field protected params Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$RoilingSwarmParams; 
.field protected members Ljava/util/List; .fieldattributes 
    .signature Ljava/util/List<Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember;>; 
.end fieldattributes 
.field protected attachedTo Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
.field protected elapsed F 
.field protected flashChecker Lcom/fs/starfarer/api/util/IntervalUtil; 
.field protected respawnChecker Lcom/fs/starfarer/api/util/IntervalUtil; 
.field protected transferChecker Lcom/fs/starfarer/api/util/IntervalUtil; 
.field protected spawnedInitial Z 
.field protected despawning Z 
.field protected forceDespawn Z 
.field protected sinceExchange F 
.field protected maxDistFromCenterToFragment F 
.field public custom1 Ljava/lang/Object; 
.field public custom2 Ljava/lang/Object; 
.field public custom3 Ljava/lang/Object; 
.field protected layers Ljava/util/EnumSet; .fieldattributes 
    .signature Ljava/util/EnumSet<Lcom/fs/starfarer/api/combat/CombatEngineLayers;>; 
.end fieldattributes 

.method static <clinit> : ()V 
    .code stack 1 locals 0 
L0:     ldc 'RoilingSwarmEffect_shipMap_key' 
L2:     putstatic Field com/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect KEY_SHIP_MAP Ljava/lang/String; 
L5:     ldc 'RoilingSwarmEffect_flockingMap_key' 
L7:     putstatic Field com/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect KEY_FLOCKING_MAP Ljava/lang/String; 
L10:    ldc 'RoilingSwarmEffect_exchangeMap_key' 
L12:    putstatic Field com/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect KEY_EXCHANGE_MAP Ljava/lang/String; 
L15:    return 
L16:    
        .linenumbertable 
            L0 310 
            L5 311 
            L10 312 
        .end linenumbertable 
        .localvariabletable 
        .end localvariabletable 
    .end code 
.end method 

.method public static getSwarmFor : (Lcom/fs/starfarer/api/combat/CombatEntityAPI;)Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect; 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     ifnonnull L6 
L4:     aconst_null 
L5:     areturn 

        .stack same 
L6:     invokestatic Method com/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect getShipMap ()Ljava/util/LinkedHashMap; 
L9:     aload_0 
L10:    invokevirtual Method java/util/LinkedHashMap get (Ljava/lang/Object;)Ljava/lang/Object; 
L13:    checkcast com/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect 
L16:    areturn 
L17:    
        .linenumbertable 
            L0 306 
            L6 307 
        .end linenumbertable 
        .localvariabletable 
            0 is entity Lcom/fs/starfarer/api/combat/CombatEntityAPI; from L0 to L17 
        .end localvariabletable 
    .end code 
.end method 

.method public static getShipMap : ()Ljava/util/LinkedHashMap; 
    .signature ()Ljava/util/LinkedHashMap<Lcom/fs/starfarer/api/combat/CombatEntityAPI;Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect;>; 
    .code stack 3 locals 1 
L0:     invokestatic Method com/fs/starfarer/api/Global getCombatEngine ()Lcom/fs/starfarer/api/combat/CombatEngineAPI; 
L3:     invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatEngineAPI getCustomData ()Ljava/util/Map; 1 
L8:     getstatic Field com/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect KEY_SHIP_MAP Ljava/lang/String; 
L11:    invokeinterface InterfaceMethod java/util/Map get (Ljava/lang/Object;)Ljava/lang/Object; 2 
L16:    checkcast java/util/LinkedHashMap 
L19:    astore_0 
L20:    aload_0 
L21:    ifnonnull L50 
L24:    new java/util/LinkedHashMap 
L27:    dup 
L28:    invokespecial Method java/util/LinkedHashMap <init> ()V 
L31:    astore_0 
L32:    invokestatic Method com/fs/starfarer/api/Global getCombatEngine ()Lcom/fs/starfarer/api/combat/CombatEngineAPI; 
L35:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatEngineAPI getCustomData ()Ljava/util/Map; 1 
L40:    getstatic Field com/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect KEY_SHIP_MAP Ljava/lang/String; 
L43:    aload_0 
L44:    invokeinterface InterfaceMethod java/util/Map put (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 3 
L49:    pop 

        .stack append Object java/util/LinkedHashMap 
L50:    aload_0 
L51:    areturn 
L52:    
        .linenumbertable 
            L0 317 
            L19 316 
            L20 318 
            L24 319 
            L32 320 
            L50 322 
        .end linenumbertable 
        .localvariabletable 
            0 is map Ljava/util/LinkedHashMap; from L20 to L52 
        .end localvariabletable 
        .localvariabletypetable 
            0 is map Ljava/util/LinkedHashMap<Lcom/fs/starfarer/api/combat/CombatEntityAPI;Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect;>; from L20 to L52 
        .end localvariabletypetable 
    .end code 
.end method 

.method public static getFlockingMap : ()Lcom/fs/starfarer/api/util/ListMap; 
    .signature ()Lcom/fs/starfarer/api/util/ListMap<Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect;>; 
    .code stack 1 locals 0 
L0:     getstatic Field com/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect KEY_FLOCKING_MAP Ljava/lang/String; 
L3:     invokestatic Method com/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect getStringToSwarmMap (Ljava/lang/String;)Lcom/fs/starfarer/api/util/ListMap; 
L6:     areturn 
L7:     
        .linenumbertable 
            L0 325 
        .end linenumbertable 
        .localvariabletable 
        .end localvariabletable 
    .end code 
.end method 

.method public static getExchangeMap : ()Lcom/fs/starfarer/api/util/ListMap; 
    .signature ()Lcom/fs/starfarer/api/util/ListMap<Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect;>; 
    .code stack 1 locals 0 
L0:     getstatic Field [c1] KEY_EXCHANGE_MAP Ljava/lang/String; 
L3:     invokestatic Method [c1] getStringToSwarmMap (Ljava/lang/String;)Lcom/fs/starfarer/api/util/ListMap; 
L6:     areturn 
L7:     
        .linenumbertable 
            L0 328 
        .end linenumbertable 
        .localvariabletable 
        .end localvariabletable 
    .end code 
.end method 

.method public static getStringToSwarmMap : (Ljava/lang/String;)Lcom/fs/starfarer/api/util/ListMap; 
    .signature (Ljava/lang/String;)Lcom/fs/starfarer/api/util/ListMap<Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect;>; 
    .code stack 3 locals 2 
L0:     invokestatic Method com/fs/starfarer/api/Global getCombatEngine ()Lcom/fs/starfarer/api/combat/CombatEngineAPI; 
L3:     invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatEngineAPI getCustomData ()Ljava/util/Map; 1 
L8:     aload_0 
L9:     invokeinterface InterfaceMethod java/util/Map get (Ljava/lang/Object;)Ljava/lang/Object; 2 
L14:    checkcast com/fs/starfarer/api/util/ListMap 
L17:    astore_1 
L18:    aload_1 
L19:    ifnonnull L46 
L22:    new com/fs/starfarer/api/util/ListMap 
L25:    dup 
L26:    invokespecial Method com/fs/starfarer/api/util/ListMap <init> ()V 
L29:    astore_1 
L30:    invokestatic Method com/fs/starfarer/api/Global getCombatEngine ()Lcom/fs/starfarer/api/combat/CombatEngineAPI; 
L33:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatEngineAPI getCustomData ()Ljava/util/Map; 1 
L38:    aload_0 
L39:    aload_1 
L40:    invokeinterface InterfaceMethod java/util/Map put (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 3 
L45:    pop 

        .stack append Object com/fs/starfarer/api/util/ListMap 
L46:    aload_1 
L47:    areturn 
L48:    
        .linenumbertable 
            L0 333 
            L17 332 
            L18 334 
            L22 335 
            L30 336 
            L46 338 
        .end linenumbertable 
        .localvariabletable 
            0 is key Ljava/lang/String; from L0 to L48 
            1 is map Lcom/fs/starfarer/api/util/ListMap; from L18 to L48 
        .end localvariabletable 
        .localvariabletypetable 
            1 is map Lcom/fs/starfarer/api/util/ListMap<Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect;>; from L18 to L48 
        .end localvariabletypetable 
    .end code 
.end method 

.method public <init> : (Lcom/fs/starfarer/api/combat/CombatEntityAPI;)V 
    .code stack 4 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     new com/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$RoilingSwarmParams 
L5:     dup 
L6:     invokespecial Method com/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$RoilingSwarmParams <init> ()V 
L9:     invokespecial Method [c1] <init> (Lcom/fs/starfarer/api/combat/CombatEntityAPI;Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$RoilingSwarmParams;)V 
L12:    return 
L13:    
        .linenumbertable 
            L0 361 
            L12 362 
        .end linenumbertable 
        .localvariabletable 
            0 is this Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect; from L0 to L13 
            1 is attachedTo Lcom/fs/starfarer/api/combat/CombatEntityAPI; from L0 to L13 
        .end localvariabletable 
    .end code 
.end method 

.method public <init> : (Lcom/fs/starfarer/api/combat/CombatEntityAPI;Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$RoilingSwarmParams;)V 
    .code stack 5 locals 4 
L0:     aload_0 
L1:     invokespecial Method com/fs/starfarer/api/combat/BaseCombatLayeredRenderingPlugin <init> ()V 
L4:     aload_0 
L5:     new java/util/ArrayList 
L8:     dup 
L9:     invokespecial Method java/util/ArrayList <init> ()V 
L12:    putfield Field [c1] members Ljava/util/List; 
L15:    aload_0 
L16:    fconst_0 
L17:    putfield Field [c1] elapsed F 
L20:    aload_0 
L21:    iconst_0 
L22:    putfield Field [c1] spawnedInitial Z 
L25:    aload_0 
L26:    iconst_0 
L27:    putfield Field [c1] despawning Z 
L30:    aload_0 
L31:    iconst_0 
L32:    putfield Field [c1] forceDespawn Z 
L35:    aload_0 
L36:    fconst_0 
L37:    putfield Field [c1] sinceExchange F 
L40:    aload_0 
L41:    fconst_0 
L42:    putfield Field [c1] maxDistFromCenterToFragment F 
L45:    aload_0 
L46:    getstatic Field com/fs/starfarer/api/combat/CombatEngineLayers FIGHTERS_LAYER Lcom/fs/starfarer/api/combat/CombatEngineLayers; 
L49:    getstatic Field com/fs/starfarer/api/combat/CombatEngineLayers ABOVE_PARTICLES_LOWER Lcom/fs/starfarer/api/combat/CombatEngineLayers; 
L52:    invokestatic Method java/util/EnumSet of (Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet; 
L55:    putfield Field [c1] layers Ljava/util/EnumSet; 
L58:    invokestatic Method com/fs/starfarer/api/Global getCombatEngine ()Lcom/fs/starfarer/api/combat/CombatEngineAPI; 
L61:    aload_0 
L62:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatEngineAPI addLayeredRenderingPlugin (Lcom/fs/starfarer/api/combat/CombatLayeredRenderingPlugin;)Lcom/fs/starfarer/api/combat/CombatEntityAPI; 2 
L67:    astore_3 
L68:    aload_3 
L69:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatEntityAPI getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L74:    aload_1 
L75:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatEntityAPI getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L80:    invokevirtual Method org/lwjgl/util/vector/Vector2f set (Lorg/lwjgl/util/vector/ReadableVector2f;)Lorg/lwjgl/util/vector/Vector2f; 
L83:    pop 
L84:    aload_0 
L85:    aload_1 
L86:    putfield Field [c1] attachedTo Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
L89:    aload_0 
L90:    aload_2 
L91:    putfield Field [c1] params Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$RoilingSwarmParams; 
L94:    aload_0 
L95:    new com/fs/starfarer/api/util/IntervalUtil 
L98:    dup 
L99:    ldc +0.5f 
L101:   ldc +1.5f 
L103:   invokespecial Method com/fs/starfarer/api/util/IntervalUtil <init> (FF)V 
L106:   putfield Field [c1] flashChecker Lcom/fs/starfarer/api/util/IntervalUtil; 
L109:   aload_0 
L110:   new com/fs/starfarer/api/util/IntervalUtil 
L113:   dup 
L114:   ldc +0.5f 
L116:   ldc +1.5f 
L118:   invokespecial Method com/fs/starfarer/api/util/IntervalUtil <init> (FF)V 
L121:   putfield Field [c1] respawnChecker Lcom/fs/starfarer/api/util/IntervalUtil; 
L124:   aload_0 
L125:   new com/fs/starfarer/api/util/IntervalUtil 
L128:   dup 
L129:   ldc +0.20000000298023224f 
L131:   ldc +1.7999999523162842f 
L133:   invokespecial Method com/fs/starfarer/api/util/IntervalUtil <init> (FF)V 
L136:   putfield Field [c1] transferChecker Lcom/fs/starfarer/api/util/IntervalUtil; 
L139:   invokestatic Method [c1] getShipMap ()Ljava/util/LinkedHashMap; 
L142:   aload_1 
L143:   aload_0 
L144:   invokevirtual Method java/util/LinkedHashMap put (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 
L147:   pop 
L148:   aload_2 
L149:   getfield Field com/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$RoilingSwarmParams flockingClass Ljava/lang/String; 
L152:   ifnull L166 
L155:   invokestatic Method [c1] getFlockingMap ()Lcom/fs/starfarer/api/util/ListMap; 
L158:   aload_2 
L159:   getfield Field com/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$RoilingSwarmParams flockingClass Ljava/lang/String; 
L162:   aload_0 
L163:   invokevirtual Method com/fs/starfarer/api/util/ListMap add (Ljava/lang/String;Ljava/lang/Object;)V 

        .stack full 
            locals Object [c1] Object com/fs/starfarer/api/combat/CombatEntityAPI Object com/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$RoilingSwarmParams Object com/fs/starfarer/api/combat/CombatEntityAPI 
            stack 
        .end stack 
L166:   aload_2 
L167:   getfield Field com/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$RoilingSwarmParams memberExchangeClass Ljava/lang/String; 
L170:   ifnull L184 
L173:   invokestatic Method [c1] getExchangeMap ()Lcom/fs/starfarer/api/util/ListMap; 
L176:   aload_2 
L177:   getfield Field com/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$RoilingSwarmParams memberExchangeClass Ljava/lang/String; 
L180:   aload_0 
L181:   invokevirtual Method com/fs/starfarer/api/util/ListMap add (Ljava/lang/String;Ljava/lang/Object;)V 

        .stack same 
L184:   return 
L185:   
        .linenumbertable 
            L0 364 
            L4 342 
            L15 345 
            L20 349 
            L25 350 
            L30 351 
            L35 352 
            L40 353 
            L45 419 
            L49 420 
            L52 419 
            L58 366 
            L68 367 
            L84 369 
            L89 370 
            L94 392 
            L109 393 
            L124 394 
            L139 396 
            L148 397 
            L155 398 
            L166 400 
            L173 401 
            L184 403 
        .end linenumbertable 
        .localvariabletable 
            0 is this Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect; from L0 to L185 
            1 is attachedTo Lcom/fs/starfarer/api/combat/CombatEntityAPI; from L0 to L185 
            2 is params Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$RoilingSwarmParams; from L0 to L185 
            3 is e Lcom/fs/starfarer/api/combat/CombatEntityAPI; from L68 to L185 
        .end localvariabletable 
    .end code 
.end method 

.method public init : (Lcom/fs/starfarer/api/combat/CombatEntityAPI;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     invokespecial Method com/fs/starfarer/api/combat/BaseCombatLayeredRenderingPlugin init (Lcom/fs/starfarer/api/combat/CombatEntityAPI;)V 
L5:     return 
L6:     
        .linenumbertable 
            L0 406 
            L5 407 
        .end linenumbertable 
        .localvariabletable 
            0 is this Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect; from L0 to L6 
            1 is entity Lcom/fs/starfarer/api/combat/CombatEntityAPI; from L0 to L6 
        .end localvariabletable 
    .end code 
.end method 

.method public getRenderRadius : ()F 
    .code stack 3 locals 2 
L0:     fconst_0 
L1:     fstore_1 
L2:     aload_0 
L3:     getfield Field [c1] sinceExchange F 
L6:     ldc +3.0f 
L8:     fcmpg 
L9:     ifge L23 
L12:    ldc +500.0f 
L14:    aload_0 
L15:    getfield Field [c1] sinceExchange F 
L18:    ldc +100.0f 
L20:    fmul 
L21:    fsub 
L22:    fstore_1 

        .stack append Float 
L23:    fload_1 
L24:    aload_0 
L25:    getfield Field [c1] maxDistFromCenterToFragment F 
L28:    invokestatic Method java/lang/Math max (FF)F 
L31:    fstore_1 
L32:    aload_0 
L33:    getfield Field [c1] params Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$RoilingSwarmParams; 
L36:    getfield Field com/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$RoilingSwarmParams visibleRange F 
L39:    fload_1 
L40:    fadd 
L41:    freturn 
L42:    
        .linenumbertable 
            L0 410 
            L2 411 
            L12 412 
            L23 414 
            L32 415 
        .end linenumbertable 
        .localvariabletable 
            0 is this Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect; from L0 to L42 
            1 is extra F from L2 to L42 
        .end localvariabletable 
    .end code 
.end method 

.method public getActiveLayers : ()Ljava/util/EnumSet; 
    .signature ()Ljava/util/EnumSet<Lcom/fs/starfarer/api/combat/CombatEngineLayers;>; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field [c1] layers Ljava/util/EnumSet; 
L4:     areturn 
L5:     
        .linenumbertable 
            L0 423 
        .end linenumbertable 
        .localvariabletable 
            0 is this Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect; from L0 to L5 
        .end localvariabletable 
    .end code 
.end method 

.method public addMember : ()Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember; 
    .code stack 5 locals 2 
L0:     new com/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember 
L3:     dup 
L4:     aload_0 
L5:     getfield Field [c1] attachedTo Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
L8:     invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatEntityAPI getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L13:    aload_0 
L14:    getfield Field [c1] params Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$RoilingSwarmParams; 
L17:    aload_0 
L18:    getfield Field [c1] attachedTo Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
L21:    invokespecial Method com/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember <init> (Lorg/lwjgl/util/vector/Vector2f;Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$RoilingSwarmParams;Lcom/fs/starfarer/api/combat/CombatEntityAPI;)V 
L24:    astore_1 
L25:    aload_0 
L26:    aload_1 
L27:    invokevirtual Method [c1] addMember (Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember;)V 
L30:    aload_1 
L31:    areturn 
L32:    
        .linenumbertable 
            L0 427 
            L25 428 
            L30 429 
        .end linenumbertable 
        .localvariabletable 
            0 is this Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect; from L0 to L32 
            1 is sm Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember; from L25 to L32 
        .end localvariabletable 
    .end code 
.end method 

.method public addMember : (Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field [c1] members Ljava/util/List; 
L4:     aload_1 
L5:     invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L10:    pop 
L11:    return 
L12:    
        .linenumbertable 
            L0 432 
            L11 433 
        .end linenumbertable 
        .localvariabletable 
            0 is this Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect; from L0 to L12 
            1 is sm Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember; from L0 to L12 
        .end localvariabletable 
    .end code 
.end method 

.method public removeMember : (Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field [c1] members Ljava/util/List; 
L4:     aload_1 
L5:     invokeinterface InterfaceMethod java/util/List remove (Ljava/lang/Object;)Z 2 
L10:    pop 
L11:    return 
L12:    
        .linenumbertable 
            L0 435 
            L11 436 
        .end linenumbertable 
        .localvariabletable 
            0 is this Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect; from L0 to L12 
            1 is sm Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember; from L0 to L12 
        .end localvariabletable 
    .end code 
.end method 

.method public addMembers : (I)V 
    .code stack 2 locals 3 
L0:     iconst_0 
L1:     istore_2 
L2:     goto L13 

        .stack append Integer 
L5:     aload_0 
L6:     invokevirtual Method [c1] addMember ()Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember; 
L9:     pop 
L10:    iinc 2 1 

        .stack same 
L13:    iload_2 
L14:    iload_1 
L15:    if_icmplt L5 
L18:    return 
L19:    
        .linenumbertable 
            L0 438 
            L5 439 
            L10 438 
            L18 441 
        .end linenumbertable 
        .localvariabletable 
            0 is this Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect; from L0 to L19 
            1 is num I from L0 to L19 
            2 is i I from L2 to L18 
        .end localvariabletable 
    .end code 
.end method 

.method public transferMembersTo : (Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect;F)V 
    .code stack 3 locals 4 
L0:     aload_0 
L1:     getfield Field [c1] members Ljava/util/List; 
L4:     invokeinterface InterfaceMethod java/util/List size ()I 1 
L9:     i2f 
L10:    fload_2 
L11:    fmul 
L12:    f2i 
L13:    istore_3 
L14:    aload_0 
L15:    aload_1 
L16:    iload_3 
L17:    invokevirtual Method [c1] transferMembersTo (Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect;I)V 
L20:    return 
L21:    
        .linenumbertable 
            L0 443 
            L14 444 
            L20 445 
        .end linenumbertable 
        .localvariabletable 
            0 is this Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect; from L0 to L21 
            1 is other [u117] from L0 to L21 
            2 is fraction F from L0 to L21 
            3 is num I from L14 to L21 
        .end localvariabletable 
    .end code 
.end method 

.method public transferMembersTo : (Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect;I)V 
    .code stack 5 locals 3 
L0:     aload_0 
L1:     aload_1 
L2:     iload_2 
L3:     aconst_null 
L4:     fconst_0 
L5:     invokevirtual Method [c1] transferMembersTo (Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect;ILorg/lwjgl/util/vector/Vector2f;F)V 
L8:     return 
L9:     
        .linenumbertable 
            L0 447 
            L8 448 
        .end linenumbertable 
        .localvariabletable 
            0 is this [u117] from L0 to L9 
            1 is other [u117] from L0 to L9 
            2 is num I from L0 to L9 
        .end localvariabletable 
    .end code 
.end method 

.method public transferMembersTo : (Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect;ILorg/lwjgl/util/vector/Vector2f;F)V 
    .code stack 5 locals 8 
L0:     iload_2 
L1:     ifgt L5 
L4:     return 

        .stack same 
L5:     aload_0 
L6:     iconst_1 
L7:     iconst_1 
L8:     invokevirtual Method [c1] getPicker (ZZ)Lcom/fs/starfarer/api/util/WeightedRandomPicker; 
L11:    astore 5 
L13:    aload_3 
L14:    ifnull L28 
L17:    aload_0 
L18:    iconst_1 
L19:    iconst_1 
L20:    aload_3 
L21:    fload 4 
L23:    invokevirtual Method [c1] getPicker (ZZLorg/lwjgl/util/vector/Vector2f;F)Lcom/fs/starfarer/api/util/WeightedRandomPicker; 
L26:    astore 5 

        .stack append Object com/fs/starfarer/api/util/WeightedRandomPicker 
L28:    iconst_0 
L29:    istore 6 
L31:    goto L80 

        .stack append Integer 
L34:    aload 5 
L36:    invokevirtual Method com/fs/starfarer/api/util/WeightedRandomPicker pickAndRemove ()Ljava/lang/Object; 
L39:    checkcast com/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember 
L42:    astore 7 
L44:    aload 7 
L46:    ifnonnull L52 
L49:    goto L86 

        .stack append Object com/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember 
L52:    aload_0 
L53:    aload 7 
L55:    invokevirtual Method [c1] removeMember (Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember;)V 
L58:    aload_1 
L59:    aload 7 
L61:    invokevirtual Method [c1] addMember (Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember;)V 
L64:    aload 7 
L66:    aload_1 
L67:    getfield Field [c1] params Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$RoilingSwarmParams; 
L70:    aload_1 
L71:    getfield Field [c1] attachedTo Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
L74:    invokevirtual Method com/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember rollOffset (Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$RoilingSwarmParams;Lcom/fs/starfarer/api/combat/CombatEntityAPI;)V 
L77:    iinc 6 1 

        .stack chop 1 
L80:    iload 6 
L82:    iload_2 
L83:    if_icmplt L34 

        .stack chop 1 
L86:    return 
L87:    
        .linenumbertable 
            L0 450 
            L5 451 
            L13 452 
            L17 453 
            L28 455 
            L34 456 
            L44 457 
            L52 459 
            L58 460 
            L64 461 
            L77 455 
            L86 463 
        .end linenumbertable 
        .localvariabletable 
            0 is this [u117] from L0 to L87 
            1 is other [u117] from L0 to L87 
            2 is num I from L0 to L87 
            3 is point Lorg/lwjgl/util/vector/Vector2f; from L0 to L87 
            4 is maxRangeFromPoint F from L0 to L87 
            5 is picker Lcom/fs/starfarer/api/util/WeightedRandomPicker; from L13 to L87 
            6 is i I from L31 to L86 
            7 is pick Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember; from L44 to L77 
        .end localvariabletable 
        .localvariabletypetable 
            5 is picker Lcom/fs/starfarer/api/util/WeightedRandomPicker<Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember;>; from L13 to L87 
        .end localvariabletypetable 
    .end code 
.end method 

.method public despawnMembers : (I)V 
    .code stack 3 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     iconst_1 
L3:     invokevirtual Method [c1] despawnMembers (IZ)V 
L6:     return 
L7:     
        .linenumbertable 
            L0 466 
            L6 467 
        .end linenumbertable 
        .localvariabletable 
            0 is this [u117] from L0 to L7 
            1 is num I from L0 to L7 
        .end localvariabletable 
    .end code 
.end method 

.method public despawnMembers : (IZ)V 
    .code stack 3 locals 6 
L0:     aload_0 
L1:     iconst_0 
L2:     iconst_0 
L3:     invokevirtual Method [c1] getPicker (ZZ)Lcom/fs/starfarer/api/util/WeightedRandomPicker; 
L6:     astore_3 
L7:     iload_2 
L8:     ifne L40 
L11:    aload_0 
L12:    getfield Field [c1] members Ljava/util/List; 
L15:    invokeinterface InterfaceMethod java/util/List isEmpty ()Z 1 
L20:    ifne L40 
L23:    aload_3 
L24:    aload_0 
L25:    getfield Field [c1] members Ljava/util/List; 
L28:    iconst_0 
L29:    invokeinterface InterfaceMethod java/util/List get (I)Ljava/lang/Object; 2 
L34:    checkcast com/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember 
L37:    invokevirtual Method com/fs/starfarer/api/util/WeightedRandomPicker remove (Ljava/lang/Object;)V 

        .stack append Object com/fs/starfarer/api/util/WeightedRandomPicker 
L40:    iconst_0 
L41:    istore 4 
L43:    goto L74 

        .stack append Integer 
L46:    aload_3 
L47:    invokevirtual Method com/fs/starfarer/api/util/WeightedRandomPicker pickAndRemove ()Ljava/lang/Object; 
L50:    checkcast com/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember 
L53:    astore 5 
L55:    aload 5 
L57:    ifnonnull L63 
L60:    goto L80 

        .stack append Object com/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember 
L63:    aload 5 
L65:    getfield Field com/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember fader Lcom/fs/starfarer/api/util/FaderUtil; 
L68:    invokevirtual Method com/fs/starfarer/api/util/FaderUtil fadeOut ()V 
L71:    iinc 4 1 

        .stack chop 1 
L74:    iload 4 
L76:    iload_1 
L77:    if_icmplt L46 

        .stack chop 1 
L80:    return 
L81:    
        .linenumbertable 
            L0 469 
            L7 470 
            L23 471 
            L40 473 
            L46 474 
            L55 475 
            L63 476 
            L71 473 
            L80 478 
        .end linenumbertable 
        .localvariabletable 
            0 is this [u117] from L0 to L81 
            1 is num I from L0 to L81 
            2 is allowFirst Z from L0 to L81 
            3 is picker Lcom/fs/starfarer/api/util/WeightedRandomPicker; from L7 to L81 
            4 is i I from L43 to L80 
            5 is pick Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember; from L55 to L71 
        .end localvariabletable 
        .localvariabletypetable 
            3 is picker Lcom/fs/starfarer/api/util/WeightedRandomPicker<Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember;>; from L7 to L81 
        .end localvariabletypetable 
    .end code 
.end method 

.method public pick : (F)Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember; 
    .code stack 3 locals 3 
L0:     aload_0 
L1:     iconst_1 
L2:     iconst_1 
L3:     invokevirtual Method [c1] getPicker (ZZ)Lcom/fs/starfarer/api/util/WeightedRandomPicker; 
L6:     invokevirtual Method com/fs/starfarer/api/util/WeightedRandomPicker pick ()Ljava/lang/Object; 
L9:     checkcast com/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember 
L12:    astore_2 
L13:    aload_2 
L14:    ifnull L22 
L17:    aload_2 
L18:    fload_1 
L19:    invokevirtual Method [c227] setRecentlyPicked (F)V 

        .stack append Object [c227] 
L22:    aload_2 
L23:    areturn 
L24:    
        .linenumbertable 
            L0 481 
            L13 482 
            L17 483 
            L22 485 
        .end linenumbertable 
        .localvariabletable 
            0 is this [u117] from L0 to L24 
            1 is pickDuration F from L0 to L24 
            2 is pick Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember; from L13 to L24 
        .end localvariabletable 
    .end code 
.end method 

.method public getPicker : (ZZLorg/lwjgl/util/vector/Vector2f;)Lcom/fs/starfarer/api/util/WeightedRandomPicker; 
    .signature (ZZLorg/lwjgl/util/vector/Vector2f;)Lcom/fs/starfarer/api/util/WeightedRandomPicker<Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember;>; 
    .code stack 3 locals 12 
L0:     new com/fs/starfarer/api/util/WeightedRandomPicker 
L3:     dup 
L4:     invokespecial Method com/fs/starfarer/api/util/WeightedRandomPicker <init> ()V 
L7:     astore 4 
L9:     aload_0 
L10:    getfield Field [c1] attachedTo Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
L13:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatEntityAPI getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L18:    aload_3 
L19:    invokestatic Method com/fs/starfarer/api/util/Misc getAngleInDegrees (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)F 
L22:    fstore 5 
L24:    aload_0 
L25:    getfield Field [c1] members Ljava/util/List; 
L28:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L33:    astore 7 
L35:    goto L214 

        .stack full 
            locals Object [c1] Integer Integer Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/api/util/WeightedRandomPicker Float Top Object java/util/Iterator 
            stack 
        .end stack 
L38:    aload 7 
L40:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L45:    checkcast [c227] 
L48:    astore 6 
L50:    aload 6 
L52:    getfield Field [c227] fader Lcom/fs/starfarer/api/util/FaderUtil; 
L55:    invokevirtual Method com/fs/starfarer/api/util/FaderUtil isFadingOut ()Z 
L58:    ifne L214 
L61:    aload 6 
L63:    getfield Field [c227] fader Lcom/fs/starfarer/api/util/FaderUtil; 
L66:    invokevirtual Method com/fs/starfarer/api/util/FaderUtil isFadedOut ()Z 
L69:    ifeq L75 
L72:    goto L214 

        .stack full 
            locals Object [c1] Integer Integer Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/api/util/WeightedRandomPicker Float Object [c227] Object java/util/Iterator 
            stack 
        .end stack 
L75:    ldc_w +1000.0f 
L78:    fstore 8 
L80:    iload_1 
L81:    ifeq L100 
L84:    aload 6 
L86:    getfield Field [c227] flash Lcom/fs/starfarer/api/util/FaderUtil; 
L89:    ifnull L100 
L92:    fload 8 
L94:    ldc_w +0.0010000000474974513f 
L97:    fmul 
L98:    fstore 8 

        .stack append Float 
L100:   iload_2 
L101:   ifeq L122 
L104:   aload 6 
L106:   getfield Field [c227] recentlyPicked F 
L109:   fconst_0 
L110:   fcmpl 
L111:   ifle L122 
L114:   fload 8 
L116:   ldc_w +0.0010000000474974513f 
L119:   fmul 
L120:   fstore 8 

        .stack same 
L122:   aload_0 
L123:   getfield Field [c1] attachedTo Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
L126:   invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatEntityAPI getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L131:   aload 6 
L133:   getfield Field [c227] loc Lorg/lwjgl/util/vector/Vector2f; 
L136:   invokestatic Method com/fs/starfarer/api/util/Misc getAngleInDegrees (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)F 
L139:   fstore 9 
L141:   fload 5 
L143:   fload 9 
L145:   invokestatic Method com/fs/starfarer/api/util/Misc getAngleDiff (FF)F 
L148:   fstore 10 
L150:   fload 10 
L152:   ldc_w +90.0f 
L155:   fcmpl 
L156:   ifle L205 
L159:   fload 10 
L161:   ldc_w +90.0f 
L164:   fsub 
L165:   invokestatic Method com/fs/starfarer/api/util/Misc normalizeAngle (F)F 
L168:   ldc_w +90.0f 
L171:   fdiv 
L172:   fstore 11 
L174:   fload 11 
L176:   ldc_w +0.9998999834060669f 
L179:   fcmpl 
L180:   ifle L188 
L183:   ldc_w +0.9998999834060669f 
L186:   fstore 11 

        .stack append Float Float Float 
L188:   fload 8 
L190:   fconst_1 
L191:   fload 11 
L193:   fsub 
L194:   fmul 
L195:   fstore 8 
L197:   fload 8 
L199:   ldc_w +0.05000000074505806f 
L202:   fmul 
L203:   fstore 8 

        .stack chop 1 
L205:   aload 4 
L207:   aload 6 
L209:   fload 8 
L211:   invokevirtual Method com/fs/starfarer/api/util/WeightedRandomPicker add (Ljava/lang/Object;F)V 

        .stack full 
            locals Object [c1] Integer Integer Object org/lwjgl/util/vector/Vector2f Object com/fs/starfarer/api/util/WeightedRandomPicker Float Top Object java/util/Iterator 
            stack 
        .end stack 
L214:   aload 7 
L216:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L221:   ifne L38 
L224:   aload 4 
L226:   areturn 
L227:   
        .linenumbertable 
            L0 490 
            L9 491 
            L24 492 
            L50 493 
            L75 494 
            L80 495 
            L100 496 
            L122 498 
            L141 499 
            L150 500 
            L159 501 
            L174 502 
            L188 503 
            L197 504 
            L205 507 
            L214 492 
            L224 509 
        .end linenumbertable 
        .localvariabletable 
            0 is this [u117] from L0 to L227 
            1 is preferNonFlashing Z from L0 to L227 
            2 is preferNonPicked Z from L0 to L227 
            3 is towards Lorg/lwjgl/util/vector/Vector2f; from L0 to L227 
            4 is picker Lcom/fs/starfarer/api/util/WeightedRandomPicker; from L9 to L227 
            5 is angle F from L24 to L227 
            6 is p Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember; from L50 to L214 
            8 is w F from L80 to L214 
            9 is curr F from L141 to L214 
            10 is diff F from L150 to L214 
            11 is f F from L174 to L205 
        .end localvariabletable 
        .localvariabletypetable 
            4 is picker Lcom/fs/starfarer/api/util/WeightedRandomPicker<Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember;>; from L9 to L227 
        .end localvariabletypetable 
    .end code 
.end method 

.method public getPicker : (ZZLorg/lwjgl/util/vector/Vector2f;F)Lcom/fs/starfarer/api/util/WeightedRandomPicker; 
    .signature (ZZLorg/lwjgl/util/vector/Vector2f;F)Lcom/fs/starfarer/api/util/WeightedRandomPicker<Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember;>; 
    .code stack 7 locals 11 
L0:     new com/fs/starfarer/api/util/WeightedRandomPicker 
L3:     dup 
L4:     invokespecial Method com/fs/starfarer/api/util/WeightedRandomPicker <init> ()V 
L7:     astore 5 
L9:     aload_0 
L10:    getfield Field [c1] members Ljava/util/List; 
L13:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L18:    astore 7 
L20:    goto L199 

        .stack full 
            locals Object [c1] Integer Integer Object org/lwjgl/util/vector/Vector2f Float Object com/fs/starfarer/api/util/WeightedRandomPicker Top Object java/util/Iterator 
            stack 
        .end stack 
L23:    aload 7 
L25:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L30:    checkcast [c227] 
L33:    astore 6 
L35:    aload 6 
L37:    getfield Field [c227] fader Lcom/fs/starfarer/api/util/FaderUtil; 
L40:    invokevirtual Method com/fs/starfarer/api/util/FaderUtil isFadingOut ()Z 
L43:    ifne L199 
L46:    aload 6 
L48:    getfield Field [c227] fader Lcom/fs/starfarer/api/util/FaderUtil; 
L51:    invokevirtual Method com/fs/starfarer/api/util/FaderUtil isFadedOut ()Z 
L54:    ifeq L60 
L57:    goto L199 

        .stack full 
            locals Object [c1] Integer Integer Object org/lwjgl/util/vector/Vector2f Float Object com/fs/starfarer/api/util/WeightedRandomPicker Object [c227] Object java/util/Iterator 
            stack 
        .end stack 
L60:    ldc_w +1000.0f 
L63:    fstore 8 
L65:    iload_1 
L66:    ifeq L85 
L69:    aload 6 
L71:    getfield Field [c227] flash Lcom/fs/starfarer/api/util/FaderUtil; 
L74:    ifnull L85 
L77:    fload 8 
L79:    ldc_w +0.0010000000474974513f 
L82:    fmul 
L83:    fstore 8 

        .stack append Float 
L85:    iload_2 
L86:    ifeq L107 
L89:    aload 6 
L91:    getfield Field [c227] recentlyPicked F 
L94:    fconst_0 
L95:    fcmpl 
L96:    ifle L107 
L99:    fload 8 
L101:   ldc_w +0.0010000000474974513f 
L104:   fmul 
L105:   fstore 8 

        .stack same 
L107:   aload_3 
L108:   aload 6 
L110:   getfield Field [c227] loc Lorg/lwjgl/util/vector/Vector2f; 
L113:   invokestatic Method com/fs/starfarer/api/util/Misc getDistance (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)F 
L116:   fstore 9 
L118:   fload 9 
L120:   fload 4 
L122:   fcmpl 
L123:   ifle L166 
L126:   fload 9 
L128:   fload 4 
L130:   fsub 
L131:   fconst_1 
L132:   fload 4 
L134:   invokestatic Method java/lang/Math max (FF)F 
L137:   fdiv 
L138:   fstore 10 
L140:   fload 10 
L142:   ldc_w +0.9998999834060669f 
L145:   fcmpl 
L146:   ifle L154 
L149:   ldc_w +0.9998999834060669f 
L152:   fstore 10 

        .stack append Float Float 
L154:   fload 8 
L156:   fconst_1 
L157:   fload 10 
L159:   fsub 
L160:   fmul 
L161:   fstore 8 
L163:   goto L190 

        .stack chop 1 
L166:   fload 8 
L168:   ldc_w +0.25f 
L171:   ldc_w +0.75f 
L174:   fconst_1 
L175:   fload 9 
L177:   fconst_1 
L178:   fload 4 
L180:   invokestatic Method java/lang/Math max (FF)F 
L183:   fdiv 
L184:   fsub 
L185:   fmul 
L186:   fadd 
L187:   fmul 
L188:   fstore 8 

        .stack same 
L190:   aload 5 
L192:   aload 6 
L194:   fload 8 
L196:   invokevirtual Method com/fs/starfarer/api/util/WeightedRandomPicker add (Ljava/lang/Object;F)V 

        .stack full 
            locals Object [c1] Integer Integer Object org/lwjgl/util/vector/Vector2f Float Object com/fs/starfarer/api/util/WeightedRandomPicker Top Object java/util/Iterator 
            stack 
        .end stack 
L199:   aload 7 
L201:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L206:   ifne L23 
L209:   aload 5 
L211:   areturn 
L212:   
        .linenumbertable 
            L0 513 
            L9 514 
            L35 515 
            L60 516 
            L65 517 
            L85 518 
            L107 520 
            L118 521 
            L126 522 
            L140 523 
            L154 524 
            L163 525 
            L166 526 
            L190 529 
            L199 514 
            L209 531 
        .end linenumbertable 
        .localvariabletable 
            0 is this [u117] from L0 to L212 
            1 is preferNonFlashing Z from L0 to L212 
            2 is preferNonPicked Z from L0 to L212 
            3 is point Lorg/lwjgl/util/vector/Vector2f; from L0 to L212 
            4 is preferMaxRangeFromPoint F from L0 to L212 
            5 is picker Lcom/fs/starfarer/api/util/WeightedRandomPicker; from L9 to L212 
            6 is p Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember; from L35 to L199 
            8 is w F from L65 to L199 
            9 is dist F from L118 to L199 
            10 is f F from L140 to L163 
        .end localvariabletable 
        .localvariabletypetable 
            5 is picker Lcom/fs/starfarer/api/util/WeightedRandomPicker<Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember;>; from L9 to L212 
        .end localvariabletypetable 
    .end code 
.end method 

.method public getPicker : (ZZ)Lcom/fs/starfarer/api/util/WeightedRandomPicker; 
    .signature (ZZ)Lcom/fs/starfarer/api/util/WeightedRandomPicker<Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember;>; 
    .code stack 3 locals 7 
L0:     new com/fs/starfarer/api/util/WeightedRandomPicker 
L3:     dup 
L4:     invokespecial Method com/fs/starfarer/api/util/WeightedRandomPicker <init> ()V 
L7:     astore_3 
L8:     aload_0 
L9:     getfield Field [c1] members Ljava/util/List; 
L12:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L17:    astore 5 
L19:    goto L114 

        .stack full 
            locals Object [c1] Integer Integer Object com/fs/starfarer/api/util/WeightedRandomPicker Top Object java/util/Iterator 
            stack 
        .end stack 
L22:    aload 5 
L24:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L29:    checkcast [c227] 
L32:    astore 4 
L34:    aload 4 
L36:    getfield Field [c227] fader Lcom/fs/starfarer/api/util/FaderUtil; 
L39:    invokevirtual Method com/fs/starfarer/api/util/FaderUtil isFadingOut ()Z 
L42:    ifne L114 
L45:    aload 4 
L47:    getfield Field [c227] fader Lcom/fs/starfarer/api/util/FaderUtil; 
L50:    invokevirtual Method com/fs/starfarer/api/util/FaderUtil isFadedOut ()Z 
L53:    ifeq L59 
L56:    goto L114 

        .stack full 
            locals Object [c1] Integer Integer Object com/fs/starfarer/api/util/WeightedRandomPicker Object [c227] Object java/util/Iterator 
            stack 
        .end stack 
L59:    ldc_w +1000.0f 
L62:    fstore 6 
L64:    iload_1 
L65:    ifeq L84 
L68:    aload 4 
L70:    getfield Field [c227] flash Lcom/fs/starfarer/api/util/FaderUtil; 
L73:    ifnull L84 
L76:    fload 6 
L78:    ldc_w +0.0010000000474974513f 
L81:    fmul 
L82:    fstore 6 

        .stack append Float 
L84:    iload_2 
L85:    ifeq L106 
L88:    aload 4 
L90:    getfield Field [c227] recentlyPicked F 
L93:    fconst_0 
L94:    fcmpl 
L95:    ifle L106 
L98:    fload 6 
L100:   ldc_w +0.0010000000474974513f 
L103:   fmul 
L104:   fstore 6 

        .stack same 
L106:   aload_3 
L107:   aload 4 
L109:   fload 6 
L111:   invokevirtual Method com/fs/starfarer/api/util/WeightedRandomPicker add (Ljava/lang/Object;F)V 

        .stack full 
            locals Object [c1] Integer Integer Object com/fs/starfarer/api/util/WeightedRandomPicker Top Object java/util/Iterator 
            stack 
        .end stack 
L114:   aload 5 
L116:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L121:   ifne L22 
L124:   aload_3 
L125:   areturn 
L126:   
        .linenumbertable 
            L0 534 
            L8 535 
            L34 536 
            L59 537 
            L64 538 
            L84 539 
            L106 540 
            L114 535 
            L124 542 
        .end linenumbertable 
        .localvariabletable 
            0 is this [u117] from L0 to L126 
            1 is preferNonFlashing Z from L0 to L126 
            2 is preferNonPicked Z from L0 to L126 
            3 is picker Lcom/fs/starfarer/api/util/WeightedRandomPicker; from L8 to L126 
            4 is p Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember; from L34 to L114 
            6 is w F from L64 to L114 
        .end localvariabletable 
        .localvariabletypetable 
            3 is picker Lcom/fs/starfarer/api/util/WeightedRandomPicker<Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember;>; from L8 to L126 
        .end localvariabletypetable 
    .end code 
.end method 

.method public getNumActiveMembers : ()I 
    .code stack 1 locals 1
L0:     aload_0
L1:     getfield Field com/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect members Ljava/util/List;
L4:     invokeinterface InterfaceMethod java/util/List size ()I 1
L9:     ireturn
L10:
        .linenumbertable
            L0 11
        .end linenumbertable
        .localvariabletable
            0 is this Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect; from L0 to L10
        .end localvariabletable
    .end code
.end method

.method public getGlowForMember : (Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember;)F 
    .code stack 2 locals 3 
L0:     fconst_0 
L1:     fstore_2 
L2:     aload_1 
L3:     getfield Field [c227] flash Lcom/fs/starfarer/api/util/FaderUtil; 
L6:     ifnull L21 
L9:     aload_1 
L10:    getfield Field [c227] flash Lcom/fs/starfarer/api/util/FaderUtil; 
L13:    invokevirtual Method com/fs/starfarer/api/util/FaderUtil getBrightness ()F 
L16:    fstore_2 
L17:    fload_2 
L18:    fload_2 
L19:    fmul 
L20:    fstore_2 

        .stack append Float 
L21:    fload_2 
L22:    freturn 
L23:    
        .linenumbertable 
            L0 550 
            L2 551 
            L9 552 
            L17 553 
            L21 555 
        .end linenumbertable 
        .localvariabletable 
            0 is this [u117] from L0 to L23 
            1 is p Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember; from L0 to L23 
            2 is glow F from L2 to L23 
        .end localvariabletable 
    .end code 
.end method 

.method public getNumMembersToMaintain : ()I 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field [c1] params Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$RoilingSwarmParams; 
L4:     getfield Field com/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$RoilingSwarmParams baseMembersToMaintain I 
L7:     ireturn 
L8:     
        .linenumbertable 
            L0 559 
        .end linenumbertable 
        .localvariabletable 
            0 is this [u117] from L0 to L8 
        .end localvariabletable 
    .end code 
.end method 

.method public advance : (F)V 
    .code stack 6 locals 33 
L0:     invokestatic Method com/fs/starfarer/api/Global getCombatEngine ()Lcom/fs/starfarer/api/combat/CombatEngineAPI; 
L3:     invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatEngineAPI isPaused ()Z 1 
L8:     ifne L25 
L11:    aload_0 
L12:    getfield Field [c1] entity Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
L15:    ifnull L25 
L18:    aload_0 
L19:    invokevirtual Method [c1] isExpired ()Z 
L22:    ifeq L26 

        .stack same 
L25:    return 

        .stack same 
L26:    aload_0 
L27:    getfield Field [c1] spawnedInitial Z 
L30:    ifne L106 
L33:    aload_0 
L34:    getfield Field [c1] params Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$RoilingSwarmParams; 
L37:    getfield Field com/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$RoilingSwarmParams withInitialMembers Z 
L40:    ifeq L106 
L43:    aload_0 
L44:    getfield Field [c1] params Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$RoilingSwarmParams; 
L47:    getfield Field [c110] spawnOffsetMult F 
L50:    fstore_2 
L51:    aload_0 
L52:    getfield Field [c1] params Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$RoilingSwarmParams; 
L55:    getfield Field [c110] spawnOffsetMultForInitialSpawn F 
L58:    fconst_0 
L59:    fcmpl 
L60:    iflt L77 
L63:    aload_0 
L64:    getfield Field [c1] params [u10] 
L67:    aload_0 
L68:    getfield Field [c1] params [u10] 
L71:    getfield Field [c110] spawnOffsetMultForInitialSpawn F 
L74:    putfield Field [c110] spawnOffsetMult F 

        .stack append Float 
L77:    aload_0 
L78:    aload_0 
L79:    getfield Field [c1] params [u10] 
L82:    getfield Field [c110] initialMembers I 
L85:    aload_0 
L86:    invokevirtual Method [c1] getNumActiveMembers ()I 
L89:    isub 
L90:    invokevirtual Method [c1] addMembers (I)V 
L93:    aload_0 
L94:    getfield Field [c1] params [u10] 
L97:    fload_2 
L98:    putfield Field [c110] spawnOffsetMult F 
L101:   aload_0 
L102:   iconst_1 
L103:   putfield Field [c1] spawnedInitial Z 

        .stack chop 1 
L106:   aload_0 
L107:   getfield Field [c1] entity Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
L110:   invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatEntityAPI getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L115:   aload_0 
L116:   getfield Field [c1] attachedTo Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
L119:   invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatEntityAPI getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L124:   invokevirtual Method org/lwjgl/util/vector/Vector2f set (Lorg/lwjgl/util/vector/ReadableVector2f;)Lorg/lwjgl/util/vector/Vector2f; 
L127:   pop 
L128:   aload_0 
L129:   dup 
L130:   getfield Field [c1] elapsed F 
L133:   fload_1 
L134:   fadd 
L135:   putfield Field [c1] elapsed F 
L138:   aload_0 
L139:   getfield Field [c1] attachedTo Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
L142:   invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatEntityAPI getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 1 
L147:   astore_2 
L148:   aload_2 
L149:   invokevirtual Method org/lwjgl/util/vector/Vector2f length ()F 
L152:   fstore_3 
L153:   fload_3 
L154:   aload_0 
L155:   getfield Field [c1] params [u10] 
L158:   getfield Field [c110] swarmLeadsByFractionOfVelocity F 
L161:   fmul 
L162:   fstore 4 
L164:   aload_0 
L165:   getfield Field [c1] attachedTo Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
L168:   invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatEntityAPI getFacing ()F 1 
L173:   invokestatic Method com/fs/starfarer/api/util/Misc getUnitVectorAtDegreeAngle (F)Lorg/lwjgl/util/vector/Vector2f; 
L176:   astore 5 
L178:   aload_0 
L179:   getfield Field [c1] attachedTo Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
L182:   invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatEntityAPI getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 1 
L187:   invokevirtual Method org/lwjgl/util/vector/Vector2f length ()F 
L190:   fconst_1 
L191:   fcmpl 
L192:   ifle L216 
L195:   new org/lwjgl/util/vector/Vector2f 
L198:   dup 
L199:   aload_0 
L200:   getfield Field [c1] attachedTo Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
L203:   invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatEntityAPI getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 1 
L208:   invokespecial Method org/lwjgl/util/vector/Vector2f <init> (Lorg/lwjgl/util/vector/ReadableVector2f;)V 
L211:   invokestatic Method com/fs/starfarer/api/util/Misc normalise (Lorg/lwjgl/util/vector/Vector2f;)Lorg/lwjgl/util/vector/Vector2f; 
L214:   astore 5 

        .stack full 
            locals Object [c1] Float Object org/lwjgl/util/vector/Vector2f Float Float Object org/lwjgl/util/vector/Vector2f 
            stack 
        .end stack 
L216:   new org/lwjgl/util/vector/Vector2f 
L219:   dup 
L220:   aload_0 
L221:   getfield Field [c1] attachedTo Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
L224:   invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatEntityAPI getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L229:   invokespecial Method org/lwjgl/util/vector/Vector2f <init> (Lorg/lwjgl/util/vector/ReadableVector2f;)V 
L232:   astore 6 
L234:   new java/util/ArrayList 
L237:   dup 
L238:   invokespecial Method java/util/ArrayList <init> ()V 
L241:   astore 7 
L243:   aload_0 
L244:   getfield Field [c1] params [u10] 
L247:   getfield Field [c110] maxSpeed F 
L250:   fstore 8 
L252:   aload_0 
L253:   getfield Field [c1] params [u10] 
L256:   getfield Field [c110] outspeedAttachedEntityBy F 
L259:   fconst_0 
L260:   fcmpl 
L261:   ifeq L298 
L264:   aload_0 
L265:   getfield Field [c1] attachedTo Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
L268:   invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatEntityAPI getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 1 
L273:   invokevirtual Method org/lwjgl/util/vector/Vector2f length ()F 
L276:   aload_0 
L277:   getfield Field [c1] params [u10] 
L280:   getfield Field [c110] outspeedAttachedEntityBy F 
L283:   fadd 
L284:   fstore 9 
L286:   fload 9 
L288:   fload 8 
L290:   fcmpl 
L291:   ifle L298 
L294:   fload 9 
L296:   fstore 8 

        .stack append Object org/lwjgl/util/vector/Vector2f Object java/util/List Float 
L298:   aload_0 
L299:   invokevirtual Method [c1] shouldDespawnAll ()Z 
L302:   istore 9 
L304:   aload_0 
L305:   getfield Field [c1] params [u10] 
L308:   getfield Field [c110] maxOffset F 
L311:   fstore 10 
L313:   aload_0 
L314:   getfield Field [c1] params [u10] 
L317:   getfield Field [c110] generateOffsetAroundAttachedEntityOval Z 
L320:   ifeq L341 
L323:   fload 10 
L325:   aload_0 
L326:   getfield Field [c1] attachedTo Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
L329:   invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatEntityAPI getCollisionRadius ()F 1 
L334:   ldc_w +0.75f 
L337:   fmul 
L338:   fadd 
L339:   fstore 10 

        .stack append Integer Float 
L341:   fconst_0 
L342:   fstore 11 
L344:   aload_0 
L345:   fconst_0 
L346:   putfield Field [c1] maxDistFromCenterToFragment F 
L349:   aload_0 
L350:   getfield Field [c1] members Ljava/util/List; 
L353:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L358:   astore 13 
L360:   goto L1269 

        .stack full 
            locals Object [c1] Float Object org/lwjgl/util/vector/Vector2f Float Float Object org/lwjgl/util/vector/Vector2f Object org/lwjgl/util/vector/Vector2f Object java/util/List Float Integer Float Float Top Object java/util/Iterator 
            stack 
        .end stack 
L363:   aload 13 
L365:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L370:   checkcast [c227] 
L373:   astore 12 
L375:   aload 6 
L377:   getfield Field org/lwjgl/util/vector/Vector2f x F 
L380:   aload 12 
L382:   getfield Field [c227] loc Lorg/lwjgl/util/vector/Vector2f; 
L385:   getfield Field org/lwjgl/util/vector/Vector2f x F 
L388:   fsub 
L389:   aload 6 
L391:   getfield Field org/lwjgl/util/vector/Vector2f x F 
L394:   aload 12 
L396:   getfield Field [c227] loc Lorg/lwjgl/util/vector/Vector2f; 
L399:   getfield Field org/lwjgl/util/vector/Vector2f x F 
L402:   fsub 
L403:   fmul 
L404:   aload 6 
L406:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L409:   aload 12 
L411:   getfield Field [c227] loc Lorg/lwjgl/util/vector/Vector2f; 
L414:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L417:   fsub 
L418:   aload 6 
L420:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L423:   aload 12 
L425:   getfield Field [c227] loc Lorg/lwjgl/util/vector/Vector2f; 
L428:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L431:   fsub 
L432:   fmul 
L433:   fadd 
L434:   fstore 14 
L436:   fload 11 
L438:   fload 14 
L440:   invokestatic Method java/lang/Math max (FF)F 
L443:   fstore 11 
L445:   aload_0 
L446:   getfield Field [c1] params [u10] 
L449:   getfield Field [c110] despawnDist F 
L452:   fconst_0 
L453:   fcmpl 
L454:   ifle L486 
L457:   aload_0 
L458:   getfield Field [c1] params [u10] 
L461:   getfield Field [c110] despawnDist F 
L464:   aload_0 
L465:   getfield Field [c1] params [u10] 
L468:   getfield Field [c110] despawnDist F 
L471:   fmul 
L472:   fload 14 
L474:   fcmpg 
L475:   ifge L486 
L478:   aload 12 
L480:   getfield Field [c227] fader Lcom/fs/starfarer/api/util/FaderUtil; 
L483:   invokevirtual Method com/fs/starfarer/api/util/FaderUtil fadeOut ()V 

        .stack full 
            locals Object [c1] Float Object org/lwjgl/util/vector/Vector2f Float Float Object org/lwjgl/util/vector/Vector2f Object org/lwjgl/util/vector/Vector2f Object java/util/List Float Integer Float Float Object [c227] Object java/util/Iterator Float 
            stack 
        .end stack 
L486:   iload 9 
L488:   ifne L1167 
L491:   new org/lwjgl/util/vector/Vector2f 
L494:   dup 
L495:   aload 12 
L497:   getfield Field [c227] offset Lorg/lwjgl/util/vector/Vector2f; 
L500:   invokespecial Method org/lwjgl/util/vector/Vector2f <init> (Lorg/lwjgl/util/vector/ReadableVector2f;)V 
L503:   astore 15 
L505:   aload 15 
L507:   invokevirtual Method org/lwjgl/util/vector/Vector2f length ()F 
L510:   fload 10 
L512:   fdiv 
L513:   fstore 16 
L515:   fconst_1 
L516:   fload 16 
L518:   fsub 
L519:   fstore 16 
L521:   aload 15 
L523:   aload_0 
L524:   getfield Field [c1] attachedTo Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
L527:   invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatEntityAPI getFacing ()F 1 
L532:   aload_0 
L533:   getfield Field [c1] elapsed F 
L536:   aload_0 
L537:   getfield Field [c1] params [u10] 
L540:   getfield Field [c110] offsetRotationDegreesPerSecond F 
L543:   fmul 
L544:   fadd 
L545:   invokestatic Method com/fs/starfarer/api/util/Misc rotateAroundOrigin (Lorg/lwjgl/util/vector/Vector2f;F)Lorg/lwjgl/util/vector/Vector2f; 
L548:   astore 15 
L550:   aload 15 
L552:   dup 
L553:   getfield Field org/lwjgl/util/vector/Vector2f x F 
L556:   aload 5 
L558:   getfield Field org/lwjgl/util/vector/Vector2f x F 
L561:   fload 4 
L563:   fmul 
L564:   fadd 
L565:   putfield Field org/lwjgl/util/vector/Vector2f x F 
L568:   aload 15 
L570:   dup 
L571:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L574:   aload 5 
L576:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L579:   fload 4 
L581:   fmul 
L582:   fadd 
L583:   putfield Field org/lwjgl/util/vector/Vector2f y F 
L586:   aload_0 
L587:   getfield Field [c1] params [u10] 
L590:   getfield Field [c110] keepProxBasedScaleForAllMembers Z 
L593:   ifne L637 
L596:   aload 12 
L598:   aload_0 
L599:   getfield Field [c1] params [u10] 
L602:   getfield Field [c110] baseScale F 
L605:   fconst_1 
L606:   fload 16 
L608:   fsub 
L609:   aload_0 
L610:   getfield Field [c1] params [u10] 
L613:   getfield Field [c110] scaleRange F 
L616:   fmul 
L617:   fadd 
L618:   putfield Field [c227] scale F 
L621:   aload 12 
L623:   getfield Field [c227] scale F 
L626:   fconst_1 
L627:   fcmpl 
L628:   ifle L637 
L631:   aload 12 
L633:   fconst_1 
L634:   putfield Field [c227] scale F 

        .stack append Object org/lwjgl/util/vector/Vector2f Float 
L637:   new org/lwjgl/util/vector/Vector2f 
L640:   dup 
L641:   aload 6 
L643:   invokespecial Method org/lwjgl/util/vector/Vector2f <init> (Lorg/lwjgl/util/vector/ReadableVector2f;)V 
L646:   astore 17 
L648:   aload 17 
L650:   aload 15 
L652:   aload 17 
L654:   invokestatic Method org/lwjgl/util/vector/Vector2f add (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)Lorg/lwjgl/util/vector/Vector2f; 
L657:   pop 
L658:   aload 12 
L660:   getfield Field [c227] loc Lorg/lwjgl/util/vector/Vector2f; 
L663:   aload 17 
L665:   invokestatic Method com/fs/starfarer/api/util/Misc getDistance (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)F 
L668:   fstore 18 
L670:   aload 12 
L672:   getfield Field [c227] loc Lorg/lwjgl/util/vector/Vector2f; 
L675:   aload 17 
L677:   invokestatic Method com/fs/starfarer/api/util/Misc getUnitVector (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)Lorg/lwjgl/util/vector/Vector2f; 
L680:   astore 19 
L682:   new org/lwjgl/util/vector/Vector2f 
L685:   dup 
L686:   aload 19 
L688:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L691:   fneg 
L692:   aload 19 
L694:   getfield Field org/lwjgl/util/vector/Vector2f x F 
L697:   invokespecial Method org/lwjgl/util/vector/Vector2f <init> (FF)V 
L700:   astore 20 
L702:   aload_0 
L703:   getfield Field [c1] params [u10] 
L706:   getfield Field [c110] baseFriction F 
L709:   aload_0 
L710:   getfield Field [c1] params [u10] 
L713:   getfield Field [c110] frictionRange F 
L716:   fload 16 
L718:   fmul 
L719:   fadd 
L720:   fstore 21 
L722:   aload_0 
L723:   getfield Field [c1] params [u10] 
L726:   getfield Field [c110] baseSpringConstant F 
L729:   aload_0 
L730:   getfield Field [c1] params [u10] 
L733:   getfield Field [c110] springConstantNegativeRange F 
L736:   fload 16 
L738:   fmul 
L739:   fsub 
L740:   fstore 22 
L742:   aload_0 
L743:   getfield Field [c1] params [u10] 
L746:   getfield Field [c110] baseSpringFreeLength F 
L749:   aload_0 
L750:   getfield Field [c1] params [u10] 
L753:   getfield Field [c110] springFreeLengthRange F 
L756:   fload 16 
L758:   fmul 
L759:   fadd 
L760:   fstore 23 
L762:   fload 18 
L764:   fload 23 
L766:   fsub 
L767:   fstore 24 
L769:   fload 24 
L771:   aload_0 
L772:   getfield Field [c1] params [u10] 
L775:   getfield Field [c110] springStretchMult F 
L778:   fmul 
L779:   invokestatic Method java/lang/Math abs (F)F 
L782:   f2d 
L783:   invokestatic Method java/lang/Math sqrt (D)D 
L786:   fload 24 
L788:   invokestatic Method java/lang/Math signum (F)F 
L791:   f2d 
L792:   dmul 
L793:   d2f 
L794:   fstore 24 
L796:   fload 22 
L798:   fload 24 
L800:   invokestatic Method java/lang/Math abs (F)F 
L803:   fmul 
L804:   fstore 25 
L806:   fload 24 
L808:   fconst_0 
L809:   fcmpg 
L810:   ifge L816 
L813:   fconst_0 
L814:   fstore 25 

        .stack full 
            locals Object [c1] Float Object org/lwjgl/util/vector/Vector2f Float Float Object org/lwjgl/util/vector/Vector2f Object org/lwjgl/util/vector/Vector2f Object java/util/List Float Integer Float Float Object [c227] Object java/util/Iterator Float Object org/lwjgl/util/vector/Vector2f Float Object org/lwjgl/util/vector/Vector2f Float Object org/lwjgl/util/vector/Vector2f Object org/lwjgl/util/vector/Vector2f Float Float Float Float Float 
            stack 
        .end stack 
L816:   fload 25 
L818:   invokestatic Method java/lang/Math abs (F)F 
L821:   fload 21 
L823:   invokestatic Method java/lang/Math min (FF)F 
L826:   fstore 26 
L828:   fload 25 
L830:   fload 26 
L832:   fsub 
L833:   fstore 25 
L835:   fload 21 
L837:   fload 26 
L839:   fsub 
L840:   fstore 21 
L842:   new org/lwjgl/util/vector/Vector2f 
L845:   dup 
L846:   aload 19 
L848:   invokespecial Method org/lwjgl/util/vector/Vector2f <init> (Lorg/lwjgl/util/vector/ReadableVector2f;)V 
L851:   astore 27 
L853:   aload 27 
L855:   fload 25 
L857:   fload 24 
L859:   invokestatic Method java/lang/Math signum (F)F 
L862:   fmul 
L863:   invokevirtual Method org/lwjgl/util/vector/Vector2f scale (F)Lorg/lwjgl/util/vector/Vector; 
L866:   pop 
L867:   new org/lwjgl/util/vector/Vector2f 
L870:   dup 
L871:   aload 27 
L873:   invokespecial Method org/lwjgl/util/vector/Vector2f <init> (Lorg/lwjgl/util/vector/ReadableVector2f;)V 
L876:   astore 28 
L878:   aload 28 
L880:   fload_1 
L881:   invokevirtual Method org/lwjgl/util/vector/Vector2f scale (F)Lorg/lwjgl/util/vector/Vector; 
L884:   pop 
L885:   aload 12 
L887:   getfield Field [c227] vel Lorg/lwjgl/util/vector/Vector2f; 
L890:   aload 28 
L892:   aload 12 
L894:   getfield Field [c227] vel Lorg/lwjgl/util/vector/Vector2f; 
L897:   invokestatic Method org/lwjgl/util/vector/Vector2f add (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)Lorg/lwjgl/util/vector/Vector2f; 
L900:   pop 
L901:   fload 21 
L903:   fconst_0 
L904:   fcmpl 
L905:   ifle L998 
L908:   aload_2 
L909:   aload 12 
L911:   getfield Field [c227] vel Lorg/lwjgl/util/vector/Vector2f; 
L914:   new org/lwjgl/util/vector/Vector2f 
L917:   dup 
L918:   invokespecial Method org/lwjgl/util/vector/Vector2f <init> ()V 
L921:   invokestatic Method org/lwjgl/util/vector/Vector2f sub (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)Lorg/lwjgl/util/vector/Vector2f; 
L924:   invokevirtual Method org/lwjgl/util/vector/Vector2f length ()F 
L927:   fstore 29 
L929:   fload 29 
L931:   aload_0 
L932:   getfield Field [c1] params [u10] 
L935:   getfield Field [c110] minSpeedForFriction F 
L938:   fcmpl 
L939:   ifle L998 
L942:   aload 12 
L944:   getfield Field [c227] vel Lorg/lwjgl/util/vector/Vector2f; 
L947:   invokestatic Method com/fs/starfarer/api/util/Misc getAngleInDegrees (Lorg/lwjgl/util/vector/Vector2f;)F 
L950:   invokestatic Method com/fs/starfarer/api/util/Misc getUnitVectorAtDegreeAngle (F)Lorg/lwjgl/util/vector/Vector2f; 
L953:   astore 30 
L955:   aload 30 
L957:   invokevirtual Method org/lwjgl/util/vector/Vector2f negate ()Lorg/lwjgl/util/vector/Vector; 
L960:   pop 
L961:   aload 30 
L963:   fload 21 
L965:   aload 12 
L967:   getfield Field [c227] vel Lorg/lwjgl/util/vector/Vector2f; 
L970:   invokevirtual Method org/lwjgl/util/vector/Vector2f length ()F 
L973:   invokestatic Method java/lang/Math min (FF)F 
L976:   fload_1 
L977:   fmul 
L978:   invokevirtual Method org/lwjgl/util/vector/Vector2f scale (F)Lorg/lwjgl/util/vector/Vector; 
L981:   pop 
L982:   aload 12 
L984:   getfield Field [c227] vel Lorg/lwjgl/util/vector/Vector2f; 
L987:   aload 30 
L989:   aload 12 
L991:   getfield Field [c227] vel Lorg/lwjgl/util/vector/Vector2f; 
L994:   invokestatic Method org/lwjgl/util/vector/Vector2f add (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)Lorg/lwjgl/util/vector/Vector2f; 
L997:   pop 

        .stack append Float Object org/lwjgl/util/vector/Vector2f Object org/lwjgl/util/vector/Vector2f 
L998:   aload 12 
L1000:  getfield Field [c227] vel Lorg/lwjgl/util/vector/Vector2f; 
L1003:  aload 20 
L1005:  invokestatic Method org/lwjgl/util/vector/Vector2f dot (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)F 
L1008:  invokestatic Method java/lang/Math abs (F)F 
L1011:  fstore 29 
L1013:  fload 29 
L1015:  fconst_0 
L1016:  fcmpl 
L1017:  ifle L1135 
L1020:  new org/lwjgl/util/vector/Vector2f 
L1023:  dup 
L1024:  aload 20 
L1026:  invokespecial Method org/lwjgl/util/vector/Vector2f <init> (Lorg/lwjgl/util/vector/ReadableVector2f;)V 
L1029:  astore 30 
L1031:  aload 30 
L1033:  aload 12 
L1035:  getfield Field [c227] vel Lorg/lwjgl/util/vector/Vector2f; 
L1038:  invokestatic Method org/lwjgl/util/vector/Vector2f dot (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)F 
L1041:  fconst_0 
L1042:  fcmpl 
L1043:  ifle L1052 
L1046:  aload 30 
L1048:  invokevirtual Method org/lwjgl/util/vector/Vector2f negate ()Lorg/lwjgl/util/vector/Vector; 
L1051:  pop 

        .stack append Float Object org/lwjgl/util/vector/Vector2f 
L1052:  aload_0 
L1053:  getfield Field [c1] params [u10] 
L1056:  getfield Field [c110] lateralFrictionFactor F 
L1059:  fstore 31 
L1061:  fload 31 
L1063:  aload_0 
L1064:  getfield Field [c1] attachedTo Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
L1067:  invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatEntityAPI getAngularVelocity ()F 1 
L1072:  invokestatic Method java/lang/Math abs (F)F 
L1075:  ldc +100.0f 
L1077:  invokestatic Method java/lang/Math min (FF)F 
L1080:  aload_0 
L1081:  getfield Field [c1] params [u10] 
L1084:  getfield Field [c110] lateralFrictionTurnRateFactor F 
L1087:  fmul 
L1088:  fadd 
L1089:  fstore 31 
L1091:  fload 29 
L1093:  fload 31 
L1095:  fmul 
L1096:  fstore 32 
L1098:  aload 30 
L1100:  fload 32 
L1102:  aload 12 
L1104:  getfield Field [c227] vel Lorg/lwjgl/util/vector/Vector2f; 
L1107:  invokevirtual Method org/lwjgl/util/vector/Vector2f length ()F 
L1110:  invokestatic Method java/lang/Math min (FF)F 
L1113:  fload_1 
L1114:  fmul 
L1115:  invokevirtual Method org/lwjgl/util/vector/Vector2f scale (F)Lorg/lwjgl/util/vector/Vector; 
L1118:  pop 
L1119:  aload 12 
L1121:  getfield Field [c227] vel Lorg/lwjgl/util/vector/Vector2f; 
L1124:  aload 30 
L1126:  aload 12 
L1128:  getfield Field [c227] vel Lorg/lwjgl/util/vector/Vector2f; 
L1131:  invokestatic Method org/lwjgl/util/vector/Vector2f add (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)Lorg/lwjgl/util/vector/Vector2f; 
L1134:  pop 

        .stack chop 1 
L1135:  aload 12 
L1137:  getfield Field [c227] vel Lorg/lwjgl/util/vector/Vector2f; 
L1140:  invokevirtual Method org/lwjgl/util/vector/Vector2f length ()F 
L1143:  fstore 30 
L1145:  fload 30 
L1147:  fload 8 
L1149:  fcmpl 
L1150:  ifle L1167 
L1153:  aload 12 
L1155:  getfield Field [c227] vel Lorg/lwjgl/util/vector/Vector2f; 
L1158:  fload 8 
L1160:  fload 30 
L1162:  fdiv 
L1163:  invokevirtual Method org/lwjgl/util/vector/Vector2f scale (F)Lorg/lwjgl/util/vector/Vector; 
L1166:  pop 

        .stack full 
            locals Object [c1] Float Object org/lwjgl/util/vector/Vector2f Float Float Object org/lwjgl/util/vector/Vector2f Object org/lwjgl/util/vector/Vector2f Object java/util/List Float Integer Float Float Object [c227] Object java/util/Iterator Float 
            stack 
        .end stack 
L1167:  aload 12 
L1169:  fload_1 
L1170:  aload_0 
L1171:  getfield Field [c1] params [u10] 
L1174:  invokevirtual Method [c227] advance (FLcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$RoilingSwarmParams;)V 
L1177:  iload 9 
L1179:  ifeq L1248 
L1182:  aload 12 
L1184:  getfield Field [c227] fader Lcom/fs/starfarer/api/util/FaderUtil; 
L1187:  invokevirtual Method com/fs/starfarer/api/util/FaderUtil isFadingOut ()Z 
L1190:  ifne L1248 
L1193:  aload 12 
L1195:  getfield Field [c227] fader Lcom/fs/starfarer/api/util/FaderUtil; 
L1198:  invokevirtual Method com/fs/starfarer/api/util/FaderUtil isFadedOut ()Z 
L1201:  ifne L1248 
L1204:  aload 12 
L1206:  getfield Field [c227] fader Lcom/fs/starfarer/api/util/FaderUtil; 
L1209:  aload_0 
L1210:  getfield Field [c1] params [u10] 
L1213:  getfield Field [c110] minDespawnTime F 
L1216:  aload_0 
L1217:  getfield Field [c1] params [u10] 
L1220:  getfield Field [c110] maxDespawnTime F 
L1223:  aload_0 
L1224:  getfield Field [c1] params [u10] 
L1227:  getfield Field [c110] minDespawnTime F 
L1230:  fsub 
L1231:  invokestatic Method java/lang/Math random ()D 
L1234:  d2f 
L1235:  fmul 
L1236:  fadd 
L1237:  invokevirtual Method com/fs/starfarer/api/util/FaderUtil setDurationOut (F)V 
L1240:  aload 12 
L1242:  getfield Field [c227] fader Lcom/fs/starfarer/api/util/FaderUtil; 
L1245:  invokevirtual Method com/fs/starfarer/api/util/FaderUtil fadeOut ()V 

        .stack same_extended 
L1248:  aload 12 
L1250:  getfield Field [c227] fader Lcom/fs/starfarer/api/util/FaderUtil; 
L1253:  invokevirtual Method com/fs/starfarer/api/util/FaderUtil isFadedOut ()Z 
L1256:  ifeq L1269 
L1259:  aload 7 
L1261:  aload 12 
L1263:  invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L1268:  pop 

        .stack full 
            locals Object [c1] Float Object org/lwjgl/util/vector/Vector2f Float Float Object org/lwjgl/util/vector/Vector2f Object org/lwjgl/util/vector/Vector2f Object java/util/List Float Integer Float Float Top Object java/util/Iterator 
            stack 
        .end stack 
L1269:  aload 13 
L1271:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L1276:  ifne L363 
L1279:  aload_0 
L1280:  fload 11 
L1282:  f2d 
L1283:  invokestatic Method java/lang/Math sqrt (D)D 
L1286:  d2f 
L1287:  putfield Field [c1] maxDistFromCenterToFragment F 
L1290:  aload_0 
L1291:  getfield Field [c1] members Ljava/util/List; 
L1294:  aload 7 
L1296:  invokeinterface InterfaceMethod java/util/List removeAll (Ljava/util/Collection;)Z 2 
L1301:  pop 
L1302:  iload 9 
L1304:  ifeq L1357 
L1307:  aload_0 
L1308:  getfield Field [c1] despawning Z 
L1311:  ifne L1357 
L1314:  aload_0 
L1315:  getfield Field [c1] params [u10] 
L1318:  getfield Field [c110] despawnSound Ljava/lang/String; 
L1321:  ifnull L1357 
L1324:  invokestatic Method com/fs/starfarer/api/Global getSoundPlayer ()Lcom/fs/starfarer/api/SoundPlayerAPI; 
L1327:  aload_0 
L1328:  getfield Field [c1] params [u10] 
L1331:  getfield Field [c110] despawnSound Ljava/lang/String; 
L1334:  fconst_1 
L1335:  fconst_1 
L1336:  aload_0 
L1337:  getfield Field [c1] entity Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
L1340:  invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatEntityAPI getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L1345:  aload_2 
L1346:  invokeinterface InterfaceMethod com/fs/starfarer/api/SoundPlayerAPI playSound (Ljava/lang/String;FFLorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)Lcom/fs/starfarer/api/SoundAPI; 6 
L1351:  pop 
L1352:  aload_0 
L1353:  iconst_1 
L1354:  putfield Field [c1] despawning Z 

        .stack full 
            locals Object [c1] Float Object org/lwjgl/util/vector/Vector2f Float Float Object org/lwjgl/util/vector/Vector2f Object org/lwjgl/util/vector/Vector2f Object java/util/List Float Integer Float Float 
            stack 
        .end stack 
L1357:  aload_0 
L1358:  invokevirtual Method [c1] isExpired ()Z 
L1361:  ifne L1381 
L1364:  iload 9 
L1366:  ifne L1381 
L1369:  aload_0 
L1370:  getfield Field [c1] despawning Z 
L1373:  ifne L1381 
L1376:  aload_0 
L1377:  fload_1 
L1378:  invokevirtual Method [c1] exchangeWithNearbySwarms (F)V 

        .stack same 
L1381:  iload 9 
L1383:  ifne L1884 
L1386:  aload_0 
L1387:  getfield Field [c1] respawnChecker Lcom/fs/starfarer/api/util/IntervalUtil; 
L1390:  fload_1 
L1391:  aload_0 
L1392:  getfield Field [c1] params [u10] 
L1395:  getfield Field [c110] memberRespawnRate F 
L1398:  fmul 
L1399:  invokevirtual Method com/fs/starfarer/api/util/IntervalUtil advance (F)V 
L1402:  aload_0 
L1403:  getfield Field [c1] respawnChecker Lcom/fs/starfarer/api/util/IntervalUtil; 
L1406:  invokevirtual Method com/fs/starfarer/api/util/IntervalUtil intervalElapsed ()Z 
L1409:  ifeq L1685 
L1412:  aload_0 
L1413:  getfield Field [c1] params [u10] 
L1416:  getfield Field [c110] withRespawn Z 
L1419:  ifeq L1685 
L1422:  aload_0 
L1423:  invokevirtual Method [c1] getNumMembersToMaintain ()I 
L1426:  istore 12 
L1428:  aload_0 
L1429:  getfield Field [c1] members Ljava/util/List; 
L1432:  invokeinterface InterfaceMethod java/util/List size ()I 1 
L1437:  iload 12 
L1439:  if_icmpge L1574 
L1442:  aload_0 
L1443:  getfield Field [c1] params [u10] 
L1446:  getfield Field [c110] numToRespawn I 
L1449:  iload 12 
L1451:  aload_0 
L1452:  getfield Field [c1] members Ljava/util/List; 
L1455:  invokeinterface InterfaceMethod java/util/List size ()I 1 
L1460:  isub 
L1461:  invokestatic Method java/lang/Math min (II)I 
L1464:  istore 13 
L1466:  aload_0 
L1467:  iload 13 
L1469:  invokevirtual Method [c1] addMembers (I)V 
L1472:  aload_0 
L1473:  getfield Field [c1] params [u10] 
L1476:  getfield Field [c110] offsetRerollFractionOnMemberRespawn F 
L1479:  fconst_0 
L1480:  fcmpl 
L1481:  ifle L1685 
L1484:  aload_0 
L1485:  getfield Field [c1] params [u10] 
L1488:  getfield Field [c110] offsetRerollFractionOnMemberRespawn F 
L1491:  aload_0 
L1492:  getfield Field [c1] members Ljava/util/List; 
L1495:  invokeinterface InterfaceMethod java/util/List size ()I 1 
L1500:  i2f 
L1501:  fmul 
L1502:  invokestatic Method java/lang/Math round (F)I 
L1505:  istore 14 
L1507:  iload 14 
L1509:  iconst_1 
L1510:  if_icmpge L1516 
L1513:  iconst_1 
L1514:  istore 14 

        .stack append Integer Integer Integer 
L1516:  aload_0 
L1517:  iconst_1 
L1518:  iconst_0 
L1519:  invokevirtual Method [c1] getPicker (ZZ)Lcom/fs/starfarer/api/util/WeightedRandomPicker; 
L1522:  astore 15 
L1524:  iconst_0 
L1525:  istore 16 
L1527:  goto L1564 

        .stack append Object com/fs/starfarer/api/util/WeightedRandomPicker Integer 
L1530:  aload 15 
L1532:  invokevirtual Method com/fs/starfarer/api/util/WeightedRandomPicker pickAndRemove ()Ljava/lang/Object; 
L1535:  checkcast [c227] 
L1538:  astore 17 
L1540:  aload 17 
L1542:  ifnonnull L1548 
L1545:  goto L1685 

        .stack append Object [c227] 
L1548:  aload 17 
L1550:  aload_0 
L1551:  getfield Field [c1] params [u10] 
L1554:  aload_0 
L1555:  getfield Field [c1] attachedTo Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
L1558:  invokevirtual Method [c227] rollOffset (Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$RoilingSwarmParams;Lcom/fs/starfarer/api/combat/CombatEntityAPI;)V 
L1561:  iinc 16 1 

        .stack chop 1 
L1564:  iload 16 
L1566:  iload 14 
L1568:  if_icmplt L1530 
L1571:  goto L1685 

        .stack full 
            locals Object [c1] Float Object org/lwjgl/util/vector/Vector2f Float Float Object org/lwjgl/util/vector/Vector2f Object org/lwjgl/util/vector/Vector2f Object java/util/List Float Integer Float Float Integer 
            stack 
        .end stack 
L1574:  aload_0 
L1575:  getfield Field [c1] members Ljava/util/List; 
L1578:  invokeinterface InterfaceMethod java/util/List size ()I 1 
L1583:  iload 12 
L1585:  if_icmple L1606 
L1588:  aload_0 
L1589:  getfield Field [c1] params [u10] 
L1592:  getfield Field [c110] removeMembersAboveMaintainLevel Z 
L1595:  ifeq L1606 
L1598:  aload_0 
L1599:  iconst_1 
L1600:  invokevirtual Method [c1] despawnMembers (I)V 
L1603:  goto L1685 

        .stack same 
L1606:  aload_0 
L1607:  getfield Field [c1] params [u10] 
L1610:  getfield Field [c110] maxNumMembersToAlwaysRemoveAbove I 
L1613:  iflt L1685 
L1616:  aload_0 
L1617:  getfield Field [c1] members Ljava/util/List; 
L1620:  invokeinterface InterfaceMethod java/util/List size ()I 1 
L1625:  aload_0 
L1626:  getfield Field [c1] params [u10] 
L1629:  getfield Field [c110] maxNumMembersToAlwaysRemoveAbove I 
L1632:  if_icmple L1685 
L1635:  aload_0 
L1636:  getfield Field [c1] members Ljava/util/List; 
L1639:  invokeinterface InterfaceMethod java/util/List size ()I 1 
L1644:  aload_0 
L1645:  getfield Field [c1] params [u10] 
L1648:  getfield Field [c110] maxNumMembersToAlwaysRemoveAbove I 
L1651:  isub 
L1652:  istore 13 
L1654:  iload 13 
L1656:  i2f 
L1657:  ldc_w +0.10000000149011612f 
L1660:  fmul 
L1661:  ldc_w +5.0f 
L1664:  invokestatic Method java/lang/Math min (FF)F 
L1667:  f2i 
L1668:  istore 14 
L1670:  iload 14 
L1672:  iconst_1 
L1673:  if_icmpge L1679 
L1676:  iconst_1 
L1677:  istore 14 

        .stack append Integer Integer 
L1679:  aload_0 
L1680:  iload 14 
L1682:  invokevirtual Method [c1] despawnMembers (I)V 

        .stack chop 3 
L1685:  aload_0 
L1686:  getfield Field [c1] flashChecker Lcom/fs/starfarer/api/util/IntervalUtil; 
L1689:  fload_1 
L1690:  aload_0 
L1691:  getfield Field [c1] params [u10] 
L1694:  getfield Field [c110] flashFrequency F 
L1697:  fmul 
L1698:  invokevirtual Method com/fs/starfarer/api/util/IntervalUtil advance (F)V 
L1701:  aload_0 
L1702:  getfield Field [c1] params [u10] 
L1705:  dup 
L1706:  getfield Field [c110] preFlashDelay F 
L1709:  fload_1 
L1710:  fsub 
L1711:  putfield Field [c110] preFlashDelay F 
L1714:  aload_0 
L1715:  getfield Field [c1] params [u10] 
L1718:  getfield Field [c110] preFlashDelay F 
L1721:  fconst_0 
L1722:  fcmpg 
L1723:  ifge L1734 
L1726:  aload_0 
L1727:  getfield Field [c1] params [u10] 
L1730:  fconst_0 
L1731:  putfield Field [c110] preFlashDelay F 

        .stack same 
L1734:  aload_0 
L1735:  getfield Field [c1] flashChecker Lcom/fs/starfarer/api/util/IntervalUtil; 
L1738:  invokevirtual Method com/fs/starfarer/api/util/IntervalUtil intervalElapsed ()Z 
L1741:  ifeq L1884 
L1744:  aload_0 
L1745:  getfield Field [c1] params [u10] 
L1748:  getfield Field [c110] preFlashDelay F 
L1751:  fconst_0 
L1752:  fcmpg 
L1753:  ifgt L1884 
L1756:  aload_0 
L1757:  getfield Field [c1] params [u10] 
L1760:  getfield Field [c110] flashProbability F 
L1763:  fconst_0 
L1764:  fcmpl 
L1765:  ifle L1884 
L1768:  new com/fs/starfarer/api/util/WeightedRandomPicker 
L1771:  dup 
L1772:  invokespecial Method com/fs/starfarer/api/util/WeightedRandomPicker <init> ()V 
L1775:  astore 12 
L1777:  aload_0 
L1778:  getfield Field [c1] members Ljava/util/List; 
L1781:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L1786:  astore 14 
L1788:  goto L1818 

        .stack full 
            locals Object [c1] Float Object org/lwjgl/util/vector/Vector2f Float Float Object org/lwjgl/util/vector/Vector2f Object org/lwjgl/util/vector/Vector2f Object java/util/List Float Integer Float Float Object com/fs/starfarer/api/util/WeightedRandomPicker Top Object java/util/Iterator 
            stack 
        .end stack 
L1791:  aload 14 
L1793:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L1798:  checkcast [c227] 
L1801:  astore 13 
L1803:  aload 13 
L1805:  getfield Field [c227] flash Lcom/fs/starfarer/api/util/FaderUtil; 
L1808:  ifnonnull L1818 
L1811:  aload 12 
L1813:  aload 13 
L1815:  invokevirtual Method com/fs/starfarer/api/util/WeightedRandomPicker add (Ljava/lang/Object;)V 

        .stack same 
L1818:  aload 14 
L1820:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L1825:  ifne L1791 
L1828:  iconst_0 
L1829:  istore 13 
L1831:  goto L1872 

        .stack full 
            locals Object [c1] Float Object org/lwjgl/util/vector/Vector2f Float Float Object org/lwjgl/util/vector/Vector2f Object org/lwjgl/util/vector/Vector2f Object java/util/List Float Integer Float Float Object com/fs/starfarer/api/util/WeightedRandomPicker Integer 
            stack 
        .end stack 
L1834:  invokestatic Method java/lang/Math random ()D 
L1837:  d2f 
L1838:  aload_0 
L1839:  getfield Field [c1] params [u10] 
L1842:  getfield Field [c110] flashProbability F 
L1845:  fcmpg 
L1846:  ifge L1869 
L1849:  aload 12 
L1851:  invokevirtual Method com/fs/starfarer/api/util/WeightedRandomPicker pickAndRemove ()Ljava/lang/Object; 
L1854:  checkcast [c227] 
L1857:  astore 14 
L1859:  aload 14 
L1861:  ifnull L1869 
L1864:  aload 14 
L1866:  invokevirtual Method [c227] flash ()V 

        .stack same 
L1869:  iinc 13 1 

        .stack same 
L1872:  iload 13 
L1874:  aload_0 
L1875:  getfield Field [c1] params [u10] 
L1878:  getfield Field [c110] numToFlash I 
L1881:  if_icmplt L1834 

        .stack chop 2 
L1884:  aload_0 
L1885:  dup 
L1886:  getfield Field [c1] sinceExchange F 
L1889:  fload_1 
L1890:  fadd 
L1891:  putfield Field [c1] sinceExchange F 
L1894:  return 
L1895:  
        .linenumbertable 
            L0 565 
            L26 567 
            L43 568 
            L51 569 
            L63 570 
            L77 572 
            L93 573 
            L101 574 
            L106 582 
            L128 584 
            L138 586 
            L148 587 
            L153 588 
            L164 590 
            L178 591 
            L195 592 
            L216 595 
            L234 601 
            L243 603 
            L252 604 
            L264 605 
            L286 606 
            L298 610 
            L304 612 
            L313 613 
            L323 614 
            L341 624 
            L344 625 
            L349 626 
            L375 627 
            L436 628 
            L445 629 
            L478 630 
            L486 633 
            L491 634 
            L505 639 
            L515 640 
            L521 643 
            L550 645 
            L568 646 
            L586 648 
            L596 649 
            L621 650 
            L637 653 
            L648 654 
            L658 655 
            L670 657 
            L682 658 
            L702 660 
            L722 662 
            L742 663 
            L762 669 
            L769 671 
            L796 673 
            L806 674 
            L816 676 
            L828 677 
            L835 678 
            L842 681 
            L853 682 
            L867 684 
            L878 685 
            L885 686 
            L901 689 
            L908 690 
            L929 691 
            L942 692 
            L955 693 
            L961 694 
            L982 695 
            L998 700 
            L1013 701 
            L1020 702 
            L1031 703 
            L1046 704 
            L1052 706 
            L1061 707 
            L1091 708 
            L1098 709 
            L1119 710 
            L1135 715 
            L1145 716 
            L1153 717 
            L1167 722 
            L1177 725 
            L1182 726 
            L1204 728 
            L1216 729 
            L1237 728 
            L1240 730 
            L1248 735 
            L1259 736 
            L1269 626 
            L1279 740 
            L1290 742 
            L1302 744 
            L1307 745 
            L1314 746 
            L1324 747 
            L1352 748 
            L1357 753 
            L1364 757 
            L1376 758 
            L1381 762 
            L1386 763 
            L1402 764 
            L1422 765 
            L1428 766 
            L1442 767 
            L1466 768 
            L1472 770 
            L1484 771 
            L1507 772 
            L1516 773 
            L1524 774 
            L1530 775 
            L1540 776 
            L1548 777 
            L1561 774 
            L1571 781 
            L1598 782 
            L1603 783 
            L1616 784 
            L1635 785 
            L1654 786 
            L1670 787 
            L1679 788 
            L1685 793 
            L1701 794 
            L1714 795 
            L1734 796 
            L1756 797 
            L1768 798 
            L1777 799 
            L1803 800 
            L1811 801 
            L1818 799 
            L1828 804 
            L1834 805 
            L1849 806 
            L1859 807 
            L1869 804 
            L1884 814 
            L1894 828 
        .end linenumbertable 
        .localvariabletable 
            0 is this [u117] from L0 to L1895 
            1 is amount F from L0 to L1895 
            2 is origSpawnOffsetMult F from L51 to L106 
            2 is aVel Lorg/lwjgl/util/vector/Vector2f; from L148 to L1895 
            3 is aSpeed F from L153 to L1895 
            4 is leadAmount F from L164 to L1895 
            5 is facingDir Lorg/lwjgl/util/vector/Vector2f; from L178 to L1895 
            6 is aLoc Lorg/lwjgl/util/vector/Vector2f; from L234 to L1895 
            7 is remove Ljava/util/List; from L243 to L1895 
            8 is maxSpeed F from L252 to L1895 
            9 is minMaxSpeed F from L286 to L298 
            9 is despawnAll Z from L304 to L1895 
            10 is maxOffsetForProx F from L313 to L1895 
            11 is maxDistSq F from L344 to L1895 
            12 is p [u236] from L375 to L1269 
            14 is distSq F from L436 to L1269 
            15 is offset Lorg/lwjgl/util/vector/Vector2f; from L505 to L1167 
            16 is prox F from L515 to L1167 
            17 is dest Lorg/lwjgl/util/vector/Vector2f; from L648 to L1167 
            18 is dist F from L670 to L1167 
            19 is dirToDest Lorg/lwjgl/util/vector/Vector2f; from L682 to L1167 
            20 is perp Lorg/lwjgl/util/vector/Vector2f; from L702 to L1167 
            21 is friction F from L722 to L1167 
            22 is k F from L742 to L1167 
            23 is freeLength F from L762 to L1167 
            24 is stretch F from L769 to L1167 
            25 is forceMag F from L806 to L1167 
            26 is forceMagReduction F from L828 to L1167 
            27 is force Lorg/lwjgl/util/vector/Vector2f; from L853 to L1167 
            28 is acc Lorg/lwjgl/util/vector/Vector2f; from L878 to L1167 
            29 is relSpeed F from L929 to L998 
            30 is frictionDec Lorg/lwjgl/util/vector/Vector2f; from L955 to L998 
            29 is lateralSpeed F from L1013 to L1167 
            30 is frictionDec Lorg/lwjgl/util/vector/Vector2f; from L1031 to L1135 
            31 is lateralFactor F from L1061 to L1135 
            32 is lateralFriction F from L1098 to L1135 
            30 is speed F from L1145 to L1167 
            12 is num I from L1428 to L1685 
            13 is add I from L1466 to L1571 
            14 is reroll I from L1507 to L1571 
            15 is picker Lcom/fs/starfarer/api/util/WeightedRandomPicker; from L1524 to L1571 
            16 is i I from L1527 to L1571 
            17 is pick [u236] from L1540 to L1561 
            13 is extra I from L1654 to L1685 
            14 is numRemove I from L1670 to L1685 
            12 is notFlashing Lcom/fs/starfarer/api/util/WeightedRandomPicker; from L1777 to L1884 
            13 is p [u236] from L1803 to L1818 
            13 is i I from L1831 to L1884 
            14 is pick [u236] from L1859 to L1869 
        .end localvariabletable 
        .localvariabletypetable 
            7 is remove Ljava/util/List<Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember;>; from L243 to L1895 
            15 is picker Lcom/fs/starfarer/api/util/WeightedRandomPicker<Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember;>; from L1524 to L1571 
            12 is notFlashing Lcom/fs/starfarer/api/util/WeightedRandomPicker<Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember;>; from L1777 to L1884 
        .end localvariabletypetable 
    .end code 
.end method 

.method public exchangeWithNearbySwarms : (F)V 
    .code stack 4 locals 10 
L0:     aload_0 
L1:     getfield Field [c1] params [u10] 
L4:     getfield Field [c110] memberExchangeClass Ljava/lang/String; 
L7:     ifnull L22 
L10:    aload_0 
L11:    getfield Field [c1] params [u10] 
L14:    getfield Field [c110] memberExchangeRange F 
L17:    fconst_0 
L18:    fcmpg 
L19:    ifgt L23 

        .stack same 
L22:    return 

        .stack same 
L23:    aload_0 
L24:    getfield Field [c1] transferChecker Lcom/fs/starfarer/api/util/IntervalUtil; 
L27:    fload_1 
L28:    aload_0 
L29:    getfield Field [c1] params [u10] 
L32:    getfield Field [c110] memberExchangeRate F 
L35:    fmul 
L36:    invokevirtual Method com/fs/starfarer/api/util/IntervalUtil advance (F)V 
L39:    aload_0 
L40:    getfield Field [c1] transferChecker Lcom/fs/starfarer/api/util/IntervalUtil; 
L43:    invokevirtual Method com/fs/starfarer/api/util/IntervalUtil intervalElapsed ()Z 
L46:    ifne L50 
L49:    return 

        .stack same 
L50:    new com/fs/starfarer/api/util/WeightedRandomPicker 
L53:    dup 
L54:    invokespecial Method com/fs/starfarer/api/util/WeightedRandomPicker <init> ()V 
L57:    astore_2 
L58:    invokestatic Method [c1] getExchangeMap ()Lcom/fs/starfarer/api/util/ListMap; 
L61:    aload_0 
L62:    getfield Field [c1] params [u10] 
L65:    getfield Field [c110] memberExchangeClass Ljava/lang/String; 
L68:    invokevirtual Method com/fs/starfarer/api/util/ListMap getList (Ljava/lang/String;)Ljava/util/List; 
L71:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L76:    astore 4 
L78:    goto L232 

        .stack full 
            locals Object [c1] Float Object com/fs/starfarer/api/util/WeightedRandomPicker Top Object java/util/Iterator 
            stack 
        .end stack 
L81:    aload 4 
L83:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L88:    checkcast [c1] 
L91:    astore_3 
L92:    aload_3 
L93:    aload_0 
L94:    if_acmpeq L232 
L97:    aload_3 
L98:    invokevirtual Method [c1] getEntity ()Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
L101:   ifnull L232 
L104:   aload_3 
L105:   getfield Field [c1] despawning Z 
L108:   ifeq L114 
L111:   goto L232 

        .stack full 
            locals Object [c1] Float Object com/fs/starfarer/api/util/WeightedRandomPicker Object [c1] Object java/util/Iterator 
            stack 
        .end stack 
L114:   aload_3 
L115:   getfield Field [c1] attachedTo Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
L118:   ifnull L232 
L121:   aload_0 
L122:   getfield Field [c1] attachedTo Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
L125:   ifnonnull L131 
L128:   goto L232 

        .stack same 
L131:   aload_3 
L132:   getfield Field [c1] attachedTo Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
L135:   invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatEntityAPI getOwner ()I 1 
L140:   aload_0 
L141:   getfield Field [c1] attachedTo Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
L144:   invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatEntityAPI getOwner ()I 1 
L149:   if_icmpeq L155 
L152:   goto L232 

        .stack same 
L155:   aload_3 
L156:   getfield Field [c1] params [u10] 
L159:   getfield Field [c110] memberExchangeClass Ljava/lang/String; 
L162:   ifnull L232 
L165:   aload_3 
L166:   getfield Field [c1] params [u10] 
L169:   getfield Field [c110] memberExchangeClass Ljava/lang/String; 
L172:   aload_0 
L173:   getfield Field [c1] params [u10] 
L176:   getfield Field [c110] memberExchangeClass Ljava/lang/String; 
L179:   invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L182:   ifne L188 
L185:   goto L232 

        .stack same 
L188:   aload_0 
L189:   getfield Field [c1] entity Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
L192:   invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatEntityAPI getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L197:   aload_3 
L198:   invokevirtual Method [c1] getEntity ()Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
L201:   invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatEntityAPI getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L206:   invokestatic Method com/fs/starfarer/api/util/Misc getDistance (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)F 
L209:   fstore 5 
L211:   fload 5 
L213:   aload_0 
L214:   getfield Field [c1] params [u10] 
L217:   getfield Field [c110] memberExchangeRange F 
L220:   fcmpl 
L221:   ifle L227 
L224:   goto L232 

        .stack append Float 
L227:   aload_2 
L228:   aload_3 
L229:   invokevirtual Method com/fs/starfarer/api/util/WeightedRandomPicker add (Ljava/lang/Object;)V 

        .stack full 
            locals Object [c1] Float Object com/fs/starfarer/api/util/WeightedRandomPicker Top Object java/util/Iterator 
            stack 
        .end stack 
L232:   aload 4 
L234:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L239:   ifne L81 
L242:   aload_2 
L243:   invokevirtual Method com/fs/starfarer/api/util/WeightedRandomPicker pick ()Ljava/lang/Object; 
L246:   checkcast [c1] 
L249:   astore_3 
L250:   aload_3 
L251:   ifnonnull L255 
L254:   return 

        .stack full 
            locals Object [c1] Float Object com/fs/starfarer/api/util/WeightedRandomPicker Object [c1] 
            stack 
        .end stack 
L255:   aload_0 
L256:   getfield Field [c1] params [u10] 
L259:   getfield Field [c110] minMembersToExchange I 
L262:   getstatic Field com/fs/starfarer/api/util/Misc random Ljava/util/Random; 
L265:   aload_0 
L266:   getfield Field [c1] params [u10] 
L269:   getfield Field [c110] maxMembersToExchange I 
L272:   aload_0 
L273:   getfield Field [c1] params [u10] 
L276:   getfield Field [c110] minMembersToExchange I 
L279:   isub 
L280:   iconst_1 
L281:   iadd 
L282:   invokevirtual Method java/util/Random nextInt (I)I 
L285:   iadd 
L286:   istore 4 
L288:   aload_0 
L289:   iconst_1 
L290:   iconst_1 
L291:   invokevirtual Method [c1] getPicker (ZZ)Lcom/fs/starfarer/api/util/WeightedRandomPicker; 
L294:   astore 5 
L296:   aload_3 
L297:   iconst_1 
L298:   iconst_1 
L299:   invokevirtual Method [c1] getPicker (ZZ)Lcom/fs/starfarer/api/util/WeightedRandomPicker; 
L302:   astore 6 
L304:   iload 4 
L306:   aload 5 
L308:   invokevirtual Method com/fs/starfarer/api/util/WeightedRandomPicker getItems ()Ljava/util/List; 
L311:   invokeinterface InterfaceMethod java/util/List size ()I 1 
L316:   invokestatic Method java/lang/Math min (II)I 
L319:   istore 4 
L321:   iload 4 
L323:   aload 6 
L325:   invokevirtual Method com/fs/starfarer/api/util/WeightedRandomPicker getItems ()Ljava/util/List; 
L328:   invokeinterface InterfaceMethod java/util/List size ()I 1 
L333:   invokestatic Method java/lang/Math min (II)I 
L336:   istore 4 
L338:   iconst_0 
L339:   istore 7 
L341:   goto L435 

        .stack full 
            locals Object [c1] Float Object com/fs/starfarer/api/util/WeightedRandomPicker Object [c1] Integer Object com/fs/starfarer/api/util/WeightedRandomPicker Object com/fs/starfarer/api/util/WeightedRandomPicker Integer 
            stack 
        .end stack 
L344:   aload 5 
L346:   invokevirtual Method com/fs/starfarer/api/util/WeightedRandomPicker pickAndRemove ()Ljava/lang/Object; 
L349:   checkcast [c227] 
L352:   astore 8 
L354:   aload 6 
L356:   invokevirtual Method com/fs/starfarer/api/util/WeightedRandomPicker pickAndRemove ()Ljava/lang/Object; 
L359:   checkcast [c227] 
L362:   astore 9 
L364:   aload 8 
L366:   ifnull L442 
L369:   aload 9 
L371:   ifnonnull L377 
L374:   goto L442 

        .stack append Object [c227] Object [c227] 
L377:   aload_0 
L378:   aload 8 
L380:   invokevirtual Method [c1] removeMember (Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember;)V 
L383:   aload_3 
L384:   aload 8 
L386:   invokevirtual Method [c1] addMember (Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember;)V 
L389:   aload 8 
L391:   aload_3 
L392:   getfield Field [c1] params [u10] 
L395:   aload_3 
L396:   getfield Field [c1] attachedTo Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
L399:   invokevirtual Method [c227] rollOffset (Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$RoilingSwarmParams;Lcom/fs/starfarer/api/combat/CombatEntityAPI;)V 
L402:   aload_3 
L403:   aload 9 
L405:   invokevirtual Method [c1] removeMember (Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember;)V 
L408:   aload_0 
L409:   aload 9 
L411:   invokevirtual Method [c1] addMember (Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember;)V 
L414:   aload 9 
L416:   aload_0 
L417:   getfield Field [c1] params [u10] 
L420:   aload_0 
L421:   getfield Field [c1] attachedTo Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
L424:   invokevirtual Method [c227] rollOffset (Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$RoilingSwarmParams;Lcom/fs/starfarer/api/combat/CombatEntityAPI;)V 
L427:   aload_0 
L428:   fconst_0 
L429:   putfield Field [c1] sinceExchange F 
L432:   iinc 7 1 

        .stack chop 2 
L435:   iload 7 
L437:   iload 4 
L439:   if_icmplt L344 

        .stack chop 1 
L442:   return 
L443:   
        .linenumbertable 
            L0 831 
            L23 833 
            L39 834 
            L50 837 
            L58 839 
            L92 840 
            L114 841 
            L131 842 
            L155 844 
            L165 845 
            L185 846 
            L188 848 
            L211 849 
            L227 851 
            L232 839 
            L242 854 
            L250 855 
            L255 857 
            L262 858 
            L285 857 
            L288 860 
            L296 861 
            L304 863 
            L321 864 
            L338 866 
            L344 867 
            L354 868 
            L364 869 
            L377 871 
            L383 872 
            L389 873 
            L402 875 
            L408 876 
            L414 877 
            L427 879 
            L432 866 
            L442 882 
        .end linenumbertable 
        .localvariabletable 
            0 is this [u117] from L0 to L443 
            1 is amount F from L0 to L443 
            2 is swarmPicker Lcom/fs/starfarer/api/util/WeightedRandomPicker; from L58 to L443 
            3 is other [u117] from L92 to L232 
            5 is dist F from L211 to L232 
            3 is other [u117] from L250 to L443 
            4 is num I from L288 to L443 
            5 is picker Lcom/fs/starfarer/api/util/WeightedRandomPicker; from L296 to L443 
            6 is pickerOther Lcom/fs/starfarer/api/util/WeightedRandomPicker; from L304 to L443 
            7 is i I from L341 to L442 
            8 is pick [u236] from L354 to L432 
            9 is otherPick [u236] from L364 to L432 
        .end localvariabletable 
        .localvariabletypetable 
            2 is swarmPicker Lcom/fs/starfarer/api/util/WeightedRandomPicker<Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect;>; from L58 to L443 
            5 is picker Lcom/fs/starfarer/api/util/WeightedRandomPicker<Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember;>; from L296 to L443 
            6 is pickerOther Lcom/fs/starfarer/api/util/WeightedRandomPicker<Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember;>; from L304 to L443 
        .end localvariabletypetable 
    .end code 
.end method 

.method public shouldDespawnAll : ()Z 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field [c1] forceDespawn Z 
L4:     ifeq L9 
L7:     iconst_1 
L8:     ireturn 

        .stack same 
L9:     aload_0 
L10:    getfield Field [c1] attachedTo Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
L13:    instanceof com/fs/starfarer/api/combat/ShipAPI 
L16:    ifeq L45 
L19:    aload_0 
L20:    getfield Field [c1] attachedTo Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
L23:    checkcast com/fs/starfarer/api/combat/ShipAPI 
L26:    astore_1 
L27:    invokestatic Method com/fs/starfarer/api/Global getCombatEngine ()Lcom/fs/starfarer/api/combat/CombatEngineAPI; 
L30:    aload_1 
L31:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatEngineAPI isShipAlive (Lcom/fs/starfarer/api/combat/ShipAPI;)Z 2 
L36:    ifeq L43 
L39:    iconst_0 
L40:    goto L44 

        .stack append Object com/fs/starfarer/api/combat/ShipAPI 
L43:    iconst_1 

        .stack stack_1 Integer 
L44:    ireturn 

        .stack chop 1 
L45:    aload_0 
L46:    getfield Field [c1] attachedTo Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
L49:    instanceof com/fs/starfarer/api/combat/MissileAPI 
L52:    ifeq L81 
L55:    aload_0 
L56:    getfield Field [c1] attachedTo Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
L59:    checkcast com/fs/starfarer/api/combat/MissileAPI 
L62:    astore_1 
L63:    invokestatic Method com/fs/starfarer/api/Global getCombatEngine ()Lcom/fs/starfarer/api/combat/CombatEngineAPI; 
L66:    aload_1 
L67:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatEngineAPI isMissileAlive (Lcom/fs/starfarer/api/combat/MissileAPI;)Z 2 
L72:    ifeq L79 
L75:    iconst_0 
L76:    goto L80 

        .stack append Object com/fs/starfarer/api/combat/MissileAPI 
L79:    iconst_1 

        .stack stack_1 Integer 
L80:    ireturn 

        .stack chop 1 
L81:    aload_0 
L82:    getfield Field [c1] attachedTo Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
L85:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatEntityAPI isExpired ()Z 1 
L90:    ifne L110 
L93:    invokestatic Method com/fs/starfarer/api/Global getCombatEngine ()Lcom/fs/starfarer/api/combat/CombatEngineAPI; 
L96:    aload_0 
L97:    getfield Field [c1] attachedTo Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
L100:   invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatEngineAPI isEntityInPlay (Lcom/fs/starfarer/api/combat/CombatEntityAPI;)Z 2 
L105:   ifeq L110 
L108:   iconst_0 
L109:   ireturn 

        .stack same 
L110:   iconst_1 
L111:   ireturn 
L112:   
        .linenumbertable 
            L0 886 
            L9 893 
            L19 894 
            L27 895 
            L45 897 
            L55 898 
            L63 899 
            L81 902 
        .end linenumbertable 
        .localvariabletable 
            0 is this [u117] from L0 to L112 
            1 is ship Lcom/fs/starfarer/api/combat/ShipAPI; from L27 to L45 
            1 is missile Lcom/fs/starfarer/api/combat/MissileAPI; from L63 to L81 
        .end localvariabletable 
    .end code 
.end method 

.method public isExpired : ()Z 
    .code stack 3 locals 2 
L0:     aload_0 
L1:     invokevirtual Method [c1] shouldDespawnAll ()Z 
L4:     ifeq L23 
L7:     aload_0 
L8:     getfield Field [c1] members Ljava/util/List; 
L11:    invokeinterface InterfaceMethod java/util/List isEmpty ()Z 1 
L16:    ifeq L23 
L19:    iconst_1 
L20:    goto L24 

        .stack same 
L23:    iconst_0 

        .stack stack_1 Integer 
L24:    istore_1 
L25:    iload_1 
L26:    ifeq L68 
L29:    invokestatic Method [c1] getShipMap ()Ljava/util/LinkedHashMap; 
L32:    aload_0 
L33:    getfield Field [c1] attachedTo Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
L36:    invokevirtual Method java/util/LinkedHashMap remove (Ljava/lang/Object;)Ljava/lang/Object; 
L39:    pop 
L40:    invokestatic Method [c1] getFlockingMap ()Lcom/fs/starfarer/api/util/ListMap; 
L43:    aload_0 
L44:    getfield Field [c1] params [u10] 
L47:    getfield Field [c110] flockingClass Ljava/lang/String; 
L50:    aload_0 
L51:    invokevirtual Method com/fs/starfarer/api/util/ListMap remove (Ljava/lang/String;Ljava/lang/Object;)V 
L54:    invokestatic Method [c1] getExchangeMap ()Lcom/fs/starfarer/api/util/ListMap; 
L57:    aload_0 
L58:    getfield Field [c1] params [u10] 
L61:    getfield Field [c110] memberExchangeClass Ljava/lang/String; 
L64:    aload_0 
L65:    invokevirtual Method com/fs/starfarer/api/util/ListMap remove (Ljava/lang/String;Ljava/lang/Object;)V 

        .stack append Integer 
L68:    iload_1 
L69:    ireturn 
L70:    
        .linenumbertable 
            L0 906 
            L25 907 
            L29 909 
            L40 910 
            L54 911 
            L68 913 
        .end linenumbertable 
        .localvariabletable 
            0 is this [u117] from L0 to L70 
            1 is expired Z from L25 to L70 
        .end localvariabletable 
    .end code 
.end method 

.method public render : (Lcom/fs/starfarer/api/combat/CombatEngineLayers;Lcom/fs/starfarer/api/combat/ViewportAPI;)V 
    .code stack 4 locals 12 
L0:     aload_0 
L1:     getfield Field [c1] params [u10] 
L4:     getfield Field [c110] color Ljava/awt/Color; 
L7:     astore_3 
L8:     aload_2 
L9:     invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ViewportAPI getAlphaMult ()F 1 
L14:    fstore 4 
L16:    fload 4 
L18:    fconst_0 
L19:    fcmpg 
L20:    ifgt L24 
L23:    return 

        .stack append Object java/awt/Color Float 
L24:    fload 4 
L26:    aload_0 
L27:    getfield Field [c1] params [u10] 
L30:    getfield Field [c110] alphaMult F 
L33:    fmul 
L34:    fstore 4 
L36:    aload_1 
L37:    getstatic Field com/fs/starfarer/api/combat/CombatEngineLayers FIGHTERS_LAYER Lcom/fs/starfarer/api/combat/CombatEngineLayers; 
L40:    if_acmpne L355 
L43:    aload_0 
L44:    getfield Field [c1] members Ljava/util/List; 
L47:    invokeinterface InterfaceMethod java/util/List isEmpty ()Z 1 
L52:    ifne L76 
L55:    aload_0 
L56:    getfield Field [c1] members Ljava/util/List; 
L59:    iconst_0 
L60:    invokeinterface InterfaceMethod java/util/List get (I)Ljava/lang/Object; 2 
L65:    checkcast [c227] 
L68:    getfield Field [c227] sprite Lcom/fs/starfarer/api/graphics/SpriteAPI; 
L71:    invokeinterface InterfaceMethod com/fs/starfarer/api/graphics/SpriteAPI bindTexture ()V 1 

        .stack same 
L76:    aload_0 
L77:    getfield Field [c1] members Ljava/util/List; 
L80:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L85:    astore 6 
L87:    goto L345 

        .stack full 
            locals Object [c1] Object com/fs/starfarer/api/combat/CombatEngineLayers Object com/fs/starfarer/api/combat/ViewportAPI Object java/awt/Color Float Top Object java/util/Iterator 
            stack 
        .end stack 
L90:    aload 6 
L92:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L97:    checkcast [c227] 
L100:   astore 5 
L102:   aload_0 
L103:   getfield Field [c1] params [u10] 
L106:   getfield Field [c110] baseSpriteSize F 
L109:   fstore 7 
L111:   fload 7 
L113:   aload 5 
L115:   getfield Field [c227] scale F 
L118:   aload 5 
L120:   getfield Field [c227] fader Lcom/fs/starfarer/api/util/FaderUtil; 
L123:   invokevirtual Method com/fs/starfarer/api/util/FaderUtil getBrightness ()F 
L126:   fmul 
L127:   fmul 
L128:   fstore 7 
L130:   aload 5 
L132:   getfield Field [c227] fader Lcom/fs/starfarer/api/util/FaderUtil; 
L135:   invokevirtual Method com/fs/starfarer/api/util/FaderUtil getBrightness ()F 
L138:   fstore 8 
L140:   aload 5 
L142:   getfield Field [c227] sprite Lcom/fs/starfarer/api/graphics/SpriteAPI; 
L145:   aload 5 
L147:   getfield Field [c227] angle F 
L150:   invokeinterface InterfaceMethod com/fs/starfarer/api/graphics/SpriteAPI setAngle (F)V 2 
L155:   aload 5 
L157:   getfield Field [c227] sprite Lcom/fs/starfarer/api/graphics/SpriteAPI; 
L160:   fload 7 
L162:   fload 7 
L164:   invokeinterface InterfaceMethod com/fs/starfarer/api/graphics/SpriteAPI setSize (FF)V 3 
L169:   aload 5 
L171:   getfield Field [c227] sprite Lcom/fs/starfarer/api/graphics/SpriteAPI; 
L174:   fload 4 
L176:   fload 8 
L178:   fmul 
L179:   aload_0 
L180:   getfield Field [c1] params [u10] 
L183:   getfield Field [c110] alphaMultBase F 
L186:   fmul 
L187:   invokeinterface InterfaceMethod com/fs/starfarer/api/graphics/SpriteAPI setAlphaMult (F)V 2 
L192:   aload 5 
L194:   getfield Field [c227] sprite Lcom/fs/starfarer/api/graphics/SpriteAPI; 
L197:   aload_3 
L198:   invokeinterface InterfaceMethod com/fs/starfarer/api/graphics/SpriteAPI setColor (Ljava/awt/Color;)V 2 
L203:   aload 5 
L205:   getfield Field [c227] sprite Lcom/fs/starfarer/api/graphics/SpriteAPI; 
L208:   aload 5 
L210:   getfield Field [c227] loc Lorg/lwjgl/util/vector/Vector2f; 
L213:   getfield Field org/lwjgl/util/vector/Vector2f x F 
L216:   aload 5 
L218:   getfield Field [c227] loc Lorg/lwjgl/util/vector/Vector2f; 
L221:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L224:   invokeinterface InterfaceMethod com/fs/starfarer/api/graphics/SpriteAPI renderAtCenterNoBind (FF)V 3 
L229:   aload_0 
L230:   aload 5 
L232:   invokevirtual Method [c1] getGlowForMember (Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember;)F 
L235:   fstore 9 
L237:   fload 9 
L239:   fconst_0 
L240:   fcmpl 
L241:   ifle L345 
L244:   aload_0 
L245:   getfield Field [c1] params [u10] 
L248:   getfield Field [c110] flashCoreRadiusMult F 
L251:   fconst_0 
L252:   fcmpg 
L253:   ifgt L345 
L256:   aload 5 
L258:   getfield Field [c227] sprite Lcom/fs/starfarer/api/graphics/SpriteAPI; 
L261:   fload 4 
L263:   fload 8 
L265:   fmul 
L266:   fload 9 
L268:   fmul 
L269:   aload_0 
L270:   getfield Field [c1] params [u10] 
L273:   getfield Field [c110] alphaMultFlash F 
L276:   fmul 
L277:   invokeinterface InterfaceMethod com/fs/starfarer/api/graphics/SpriteAPI setAlphaMult (F)V 2 
L282:   aload 5 
L284:   getfield Field [c227] sprite Lcom/fs/starfarer/api/graphics/SpriteAPI; 
L287:   aload_0 
L288:   getfield Field [c1] params [u10] 
L291:   getfield Field [c110] flashCoreColor Ljava/awt/Color; 
L294:   invokeinterface InterfaceMethod com/fs/starfarer/api/graphics/SpriteAPI setColor (Ljava/awt/Color;)V 2 
L299:   aload 5 
L301:   getfield Field [c227] sprite Lcom/fs/starfarer/api/graphics/SpriteAPI; 
L304:   invokeinterface InterfaceMethod com/fs/starfarer/api/graphics/SpriteAPI setAdditiveBlend ()V 1 
L309:   aload 5 
L311:   getfield Field [c227] sprite Lcom/fs/starfarer/api/graphics/SpriteAPI; 
L314:   aload 5 
L316:   getfield Field [c227] loc Lorg/lwjgl/util/vector/Vector2f; 
L319:   getfield Field org/lwjgl/util/vector/Vector2f x F 
L322:   aload 5 
L324:   getfield Field [c227] loc Lorg/lwjgl/util/vector/Vector2f; 
L327:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L330:   invokeinterface InterfaceMethod com/fs/starfarer/api/graphics/SpriteAPI renderAtCenter (FF)V 3 
L335:   aload 5 
L337:   getfield Field [c227] sprite Lcom/fs/starfarer/api/graphics/SpriteAPI; 
L340:   invokeinterface InterfaceMethod com/fs/starfarer/api/graphics/SpriteAPI setNormalBlend ()V 1 

        .stack same_extended 
L345:   aload 6 
L347:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L352:   ifne L90 

        .stack full 
            locals Object [c1] Object com/fs/starfarer/api/combat/CombatEngineLayers Object com/fs/starfarer/api/combat/ViewportAPI Object java/awt/Color Float 
            stack 
        .end stack 
L355:   aload_1 
L356:   getstatic Field com/fs/starfarer/api/combat/CombatEngineLayers ABOVE_PARTICLES_LOWER Lcom/fs/starfarer/api/combat/CombatEngineLayers; 
L359:   if_acmpne L372 
L362:   aload_0 
L363:   getfield Field [c1] params [u10] 
L366:   getfield Field [c110] renderFlashOnSameLayer Z 
L369:   ifeq L389 

        .stack same 
L372:   aload_1 
L373:   getstatic Field com/fs/starfarer/api/combat/CombatEngineLayers FIGHTERS_LAYER Lcom/fs/starfarer/api/combat/CombatEngineLayers; 
L376:   if_acmpne L734 
L379:   aload_0 
L380:   getfield Field [c1] params [u10] 
L383:   getfield Field [c110] renderFlashOnSameLayer Z 
L386:   ifeq L734 

        .stack same 
L389:   invokestatic Method com/fs/starfarer/api/Global getSettings ()Lcom/fs/starfarer/api/SettingsAPI; 
L392:   ldc_w 'misc' 
L395:   ldc_w 'threat_swarm_glow' 
L398:   invokeinterface InterfaceMethod com/fs/starfarer/api/SettingsAPI getSprite (Ljava/lang/String;Ljava/lang/String;)Lcom/fs/starfarer/api/graphics/SpriteAPI; 3 
L403:   astore 5 
L405:   aload 5 
L407:   invokeinterface InterfaceMethod com/fs/starfarer/api/graphics/SpriteAPI setAdditiveBlend ()V 1 
L412:   aload_0 
L413:   getfield Field [c1] members Ljava/util/List; 
L416:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L421:   astore 7 
L423:   goto L724 

        .stack full 
            locals Object [c1] Object com/fs/starfarer/api/combat/CombatEngineLayers Object com/fs/starfarer/api/combat/ViewportAPI Object java/awt/Color Float Object com/fs/starfarer/api/graphics/SpriteAPI Top Object java/util/Iterator 
            stack 
        .end stack 
L426:   aload 7 
L428:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L433:   checkcast [c227] 
L436:   astore 6 
L438:   aload_0 
L439:   aload 6 
L441:   invokevirtual Method [c1] getGlowForMember (Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember;)F 
L444:   fstore 8 
L446:   fload 8 
L448:   fconst_0 
L449:   fcmpl 
L450:   ifle L724 
L453:   aload_0 
L454:   getfield Field [c1] params [u10] 
L457:   getfield Field [c110] flashRadius F 
L460:   ldc +0.5f 
L462:   ldc +0.5f 
L464:   fload 8 
L466:   fmul 
L467:   fadd 
L468:   fmul 
L469:   fconst_2 
L470:   fmul 
L471:   fstore 9 
L473:   fload 9 
L475:   aload 6 
L477:   getfield Field [c227] scale F 
L480:   aload 6 
L482:   getfield Field [c227] fader Lcom/fs/starfarer/api/util/FaderUtil; 
L485:   invokevirtual Method com/fs/starfarer/api/util/FaderUtil getBrightness ()F 
L488:   fmul 
L489:   fmul 
L490:   fstore 9 
L492:   aload 6 
L494:   getfield Field [c227] fader Lcom/fs/starfarer/api/util/FaderUtil; 
L497:   invokevirtual Method com/fs/starfarer/api/util/FaderUtil getBrightness ()F 
L500:   fstore 10 
L502:   fload 10 
L504:   fconst_0 
L505:   fcmpl 
L506:   ifle L590 
L509:   fload 9 
L511:   fconst_0 
L512:   fcmpl 
L513:   ifle L590 
L516:   aload 5 
L518:   fload 9 
L520:   fload 9 
L522:   invokeinterface InterfaceMethod com/fs/starfarer/api/graphics/SpriteAPI setSize (FF)V 3 
L527:   aload 5 
L529:   fload 4 
L531:   fload 10 
L533:   fmul 
L534:   fload 8 
L536:   fmul 
L537:   ldc +0.5f 
L539:   fmul 
L540:   aload_0 
L541:   getfield Field [c1] params [u10] 
L544:   getfield Field [c110] alphaMultFlash F 
L547:   fmul 
L548:   invokeinterface InterfaceMethod com/fs/starfarer/api/graphics/SpriteAPI setAlphaMult (F)V 2 
L553:   aload 5 
L555:   aload_0 
L556:   getfield Field [c1] params [u10] 
L559:   getfield Field [c110] flashFringeColor Ljava/awt/Color; 
L562:   invokeinterface InterfaceMethod com/fs/starfarer/api/graphics/SpriteAPI setColor (Ljava/awt/Color;)V 2 
L567:   aload 5 
L569:   aload 6 
L571:   getfield Field [c227] loc Lorg/lwjgl/util/vector/Vector2f; 
L574:   getfield Field org/lwjgl/util/vector/Vector2f x F 
L577:   aload 6 
L579:   getfield Field [c227] loc Lorg/lwjgl/util/vector/Vector2f; 
L582:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L585:   invokeinterface InterfaceMethod com/fs/starfarer/api/graphics/SpriteAPI renderAtCenter (FF)V 3 

        .stack full 
            locals Object [c1] Object com/fs/starfarer/api/combat/CombatEngineLayers Object com/fs/starfarer/api/combat/ViewportAPI Object java/awt/Color Float Object com/fs/starfarer/api/graphics/SpriteAPI Object [c227] Object java/util/Iterator Float Float Float 
            stack 
        .end stack 
L590:   aload_0 
L591:   getfield Field [c1] params [u10] 
L594:   getfield Field [c110] baseSpriteSize F 
L597:   fstore 11 
L599:   fload 11 
L601:   aload 6 
L603:   getfield Field [c227] scale F 
L606:   fmul 
L607:   fstore 11 
L609:   fload 11 
L611:   fconst_2 
L612:   fmul 
L613:   fstore 11 
L615:   fload 11 
L617:   aload_0 
L618:   getfield Field [c1] params [u10] 
L621:   getfield Field [c110] flashCoreRadiusMult F 
L624:   fmul 
L625:   fstore 11 
L627:   fload 10 
L629:   fconst_0 
L630:   fcmpl 
L631:   ifle L724 
L634:   fload 11 
L636:   fconst_0 
L637:   fcmpl 
L638:   ifle L724 
L641:   aload 5 
L643:   fload 11 
L645:   fload 11 
L647:   invokeinterface InterfaceMethod com/fs/starfarer/api/graphics/SpriteAPI setSize (FF)V 3 
L652:   aload 5 
L654:   fload 4 
L656:   fload 10 
L658:   fmul 
L659:   aload 6 
L661:   getfield Field [c227] fader Lcom/fs/starfarer/api/util/FaderUtil; 
L664:   invokevirtual Method com/fs/starfarer/api/util/FaderUtil getBrightness ()F 
L667:   fmul 
L668:   fload 8 
L670:   fmul 
L671:   ldc +0.5f 
L673:   fmul 
L674:   aload_0 
L675:   getfield Field [c1] params [u10] 
L678:   getfield Field [c110] alphaMultFlash F 
L681:   fmul 
L682:   invokeinterface InterfaceMethod com/fs/starfarer/api/graphics/SpriteAPI setAlphaMult (F)V 2 
L687:   aload 5 
L689:   aload_0 
L690:   getfield Field [c1] params [u10] 
L693:   getfield Field [c110] flashCoreColor Ljava/awt/Color; 
L696:   invokeinterface InterfaceMethod com/fs/starfarer/api/graphics/SpriteAPI setColor (Ljava/awt/Color;)V 2 
L701:   aload 5 
L703:   aload 6 
L705:   getfield Field [c227] loc Lorg/lwjgl/util/vector/Vector2f; 
L708:   getfield Field org/lwjgl/util/vector/Vector2f x F 
L711:   aload 6 
L713:   getfield Field [c227] loc Lorg/lwjgl/util/vector/Vector2f; 
L716:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L719:   invokeinterface InterfaceMethod com/fs/starfarer/api/graphics/SpriteAPI renderAtCenter (FF)V 3 

        .stack full 
            locals Object [c1] Object com/fs/starfarer/api/combat/CombatEngineLayers Object com/fs/starfarer/api/combat/ViewportAPI Object java/awt/Color Float Object com/fs/starfarer/api/graphics/SpriteAPI Top Object java/util/Iterator 
            stack 
        .end stack 
L724:   aload 7 
L726:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L731:   ifne L426 

        .stack full 
            locals Object [c1] Object com/fs/starfarer/api/combat/CombatEngineLayers Object com/fs/starfarer/api/combat/ViewportAPI Object java/awt/Color Float 
            stack 
        .end stack 
L734:   return 
L735:   
        .linenumbertable 
            L0 920 
            L8 921 
            L16 922 
            L24 925 
            L36 927 
            L43 950 
            L55 951 
            L76 953 
            L102 954 
            L111 955 
            L130 957 
            L140 962 
            L155 963 
            L169 964 
            L192 965 
            L203 966 
            L229 968 
            L237 969 
            L256 970 
            L282 971 
            L299 972 
            L309 974 
            L335 975 
            L345 953 
            L355 981 
            L372 982 
            L389 983 
            L405 984 
            L412 985 
            L438 986 
            L446 987 
            L453 988 
            L473 989 
            L492 999 
            L502 1000 
            L516 1001 
            L527 1002 
            L553 1003 
            L567 1004 
            L590 1007 
            L599 1008 
            L609 1009 
            L615 1010 
            L627 1011 
            L641 1012 
            L652 1013 
            L687 1014 
            L701 1015 
            L724 985 
            L734 1020 
        .end linenumbertable 
        .localvariabletable 
            0 is this [u117] from L0 to L735 
            1 is layer Lcom/fs/starfarer/api/combat/CombatEngineLayers; from L0 to L735 
            2 is viewport Lcom/fs/starfarer/api/combat/ViewportAPI; from L0 to L735 
            3 is color Ljava/awt/Color; from L8 to L735 
            4 is alphaMult F from L16 to L735 
            5 is p [u236] from L102 to L345 
            7 is size F from L111 to L345 
            8 is b F from L140 to L345 
            9 is glow F from L237 to L345 
            5 is glowSprite Lcom/fs/starfarer/api/graphics/SpriteAPI; from L405 to L734 
            6 is p [u236] from L438 to L724 
            8 is glow F from L446 to L724 
            9 is size F from L473 to L724 
            10 is b F from L502 to L724 
            11 is memberSize F from L599 to L724 
        .end localvariabletable 
    .end code 
.end method 

.method public getParams : ()Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$RoilingSwarmParams; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field [c1] params [u10] 
L4:     areturn 
L5:     
        .linenumbertable 
            L0 1023 
        .end linenumbertable 
        .localvariabletable 
            0 is this [u117] from L0 to L5 
        .end localvariabletable 
    .end code 
.end method 

.method public getMembers : ()Ljava/util/List; 
    .signature ()Ljava/util/List<Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember;>; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field [c1] members Ljava/util/List; 
L4:     areturn 
L5:     
        .linenumbertable 
            L0 1026 
        .end linenumbertable 
        .localvariabletable 
            0 is this [u117] from L0 to L5 
        .end localvariabletable 
    .end code 
.end method 

.method public getAttachedTo : ()Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field [c1] attachedTo Lcom/fs/starfarer/api/combat/CombatEntityAPI; 
L4:     areturn 
L5:     
        .linenumbertable 
            L0 1029 
        .end linenumbertable 
        .localvariabletable 
            0 is this [u117] from L0 to L5 
        .end localvariabletable 
    .end code 
.end method 

.method public isDespawning : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field [c1] despawning Z 
L4:     ireturn 
L5:     
        .linenumbertable 
            L0 1032 
        .end linenumbertable 
        .localvariabletable 
            0 is this [u117] from L0 to L5 
        .end localvariabletable 
    .end code 
.end method 

.method public isForceDespawn : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field [c1] forceDespawn Z 
L4:     ireturn 
L5:     
        .linenumbertable 
            L0 1035 
        .end linenumbertable 
        .localvariabletable 
            0 is this [u117] from L0 to L5 
        .end localvariabletable 
    .end code 
.end method 

.method public setForceDespawn : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field [c1] forceDespawn Z 
L5:     return 
L6:     
        .linenumbertable 
            L0 1038 
            L5 1039 
        .end linenumbertable 
        .localvariabletable 
            0 is this [u117] from L0 to L6 
            1 is forceDespawn Z from L0 to L6 
        .end localvariabletable 
    .end code 
.end method 
.sourcefile 'RoilingSwarmEffect.java' 
.innerclasses 
    [c110] [c1] RoilingSwarmParams public static 
    [c227] [c1] SwarmMember public static 
    com/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMemberOffsetModifier [c1] SwarmMemberOffsetModifier public static interface abstract 
.end innerclasses 
.nestmembers [c110] [c227] com/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMemberOffsetModifier 
.const [c1] = Class [u2] 
.const [u10] = Utf8 Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$RoilingSwarmParams; 
.const [c110] = Class [u111] 
.const [u117] = Utf8 Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect; 
.const [c227] = Class [u228] 
.const [u236] = Utf8 Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember; 
.const [u2] = Utf8 com/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect 
.const [u111] = Utf8 com/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$RoilingSwarmParams 
.const [u228] = Utf8 com/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect$SwarmMember 
.end class 
