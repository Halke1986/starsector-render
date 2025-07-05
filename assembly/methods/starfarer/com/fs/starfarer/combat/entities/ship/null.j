.version 61 0 
.class public super com/fs/starfarer/combat/entities/ship/null 
.super java/lang/Object 
.implements com/fs/starfarer/api/combat/ShipEngineControllerAPI 
.field public static final FLAMEOUT_FRACTION F = +0.5f 
.field private 'Öo0000' F 
.field private OO0000 F 
.field private Oo0000 F 
.field private 'öO0000' F 
.field private 'Óo0000' F 
.field private float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
.field private 'float.super' Lcom/fs/starfarer/combat/entities/ship/return; 
.field private 'class.super' F 
.field private 'ÓO0000' Lcom/fs/starfarer/combat/entities/G; 
.field private 'õO0000' F 
.field private while F 
.field private 'Ó00000' Lcom/fs/starfarer/loading/specs/e; 
.field private null Lcom/fs/starfarer/loading/specs/K; 
.field private oo0000 F 
.field private new Ljava/util/List; .fieldattributes 
    .signature Ljava/util/List<Lcom/fs/starfarer/combat/entities/ship/null$oo;>; 
.end fieldattributes 
.field private 'ØO0000' Lcom/fs/starfarer/combat/entities/ship/null$oo; 
.field private 'new.new' Lcom/fs/starfarer/combat/entities/ship/null$o; 
.field private 'while.super' F 
.field private 'interface.super' Z 
.field private 'Ö00000' I 
.field private 'oÒ0000' Z 
.field private 'öo0000' Z 
.field private 'Øo0000' Z 
.field public static final ENGINE_BOOST_KEY Ljava/lang/String; = 'zero_flux_boost' 
.field public static final ENGINE_DAMAGE_KEY Ljava/lang/String; = 'engine_damage_penalty' 
.field private 'new.super' Z 
.field private oO0000 F 
.field private 'null.super' F 
.field private 'Ô00000' F 
.field private 'Ôo0000' Z 
.field private 'ÖO0000' Z 
.field private class Z 
.field private 'ö00000' Z 
.field private 'õo0000' Z 
.field private 'interface' Z 
.field private 'ÔO0000' Z 
.field private o00000 Z 
.field private 'õ00000' Z 
.field private static volatile synthetic 'Ø00000' [I 
.field private static volatile synthetic 'OÒ0000' [I 

.method public <init> : (Lcom/fs/starfarer/combat/entities/ship/return;Lcom/fs/starfarer/combat/entities/ship/null$Oo;)V 
    .code stack 4 locals 3 
L0:     aload_0 
L1:     invokespecial Method java/lang/Object <init> ()V 
L4:     aload_0 
L5:     aconst_null 
L6:     putfield Field com/fs/starfarer/combat/entities/ship/null 'Ó00000' Lcom/fs/starfarer/loading/specs/e; 
L9:     aload_0 
L10:    new com/fs/starfarer/loading/specs/K 
L13:    dup 
L14:    invokespecial Method com/fs/starfarer/loading/specs/K <init> ()V 
L17:    putfield Field com/fs/starfarer/combat/entities/ship/null null Lcom/fs/starfarer/loading/specs/K; 
L20:    aload_0 
L21:    fconst_1 
L22:    putfield Field com/fs/starfarer/combat/entities/ship/null oo0000 F 
L25:    aload_0 
L26:    new java/util/ArrayList 
L29:    dup 
L30:    invokespecial Method java/util/ArrayList <init> ()V 
L33:    putfield Field com/fs/starfarer/combat/entities/ship/null new Ljava/util/List; 
L36:    aload_0 
L37:    aconst_null 
L38:    putfield Field com/fs/starfarer/combat/entities/ship/null 'ØO0000' Lcom/fs/starfarer/combat/entities/ship/null$oo; 
L41:    aload_0 
L42:    getstatic Field com/fs/starfarer/combat/entities/ship/null$o 'Ò00000' Lcom/fs/starfarer/combat/entities/ship/null$o; 
L45:    putfield Field com/fs/starfarer/combat/entities/ship/null 'new.new' Lcom/fs/starfarer/combat/entities/ship/null$o; 
L48:    aload_0 
L49:    invokestatic Method java/lang/Math random ()D 
L52:    d2f 
L53:    ldc +0.5f 
L55:    fmul 
L56:    putfield Field com/fs/starfarer/combat/entities/ship/null 'while.super' F 
L59:    aload_0 
L60:    iconst_0 
L61:    putfield Field com/fs/starfarer/combat/entities/ship/null 'interface.super' Z 
L64:    aload_0 
L65:    iconst_0 
L66:    putfield Field com/fs/starfarer/combat/entities/ship/null 'Ö00000' I 
L69:    aload_0 
L70:    iconst_0 
L71:    putfield Field com/fs/starfarer/combat/entities/ship/null 'oÒ0000' Z 
L74:    aload_0 
L75:    iconst_0 
L76:    putfield Field com/fs/starfarer/combat/entities/ship/null 'öo0000' Z 
L79:    aload_0 
L80:    iconst_0 
L81:    putfield Field com/fs/starfarer/combat/entities/ship/null 'Øo0000' Z 
L84:    aload_0 
L85:    iconst_0 
L86:    putfield Field com/fs/starfarer/combat/entities/ship/null 'new.super' Z 
L89:    aload_0 
L90:    fconst_0 
L91:    putfield Field com/fs/starfarer/combat/entities/ship/null oO0000 F 
L94:    aload_0 
L95:    fconst_0 
L96:    putfield Field com/fs/starfarer/combat/entities/ship/null 'null.super' F 
L99:    aload_0 
L100:   fconst_0 
L101:   putfield Field com/fs/starfarer/combat/entities/ship/null 'Ô00000' F 
L104:   aload_0 
L105:   iconst_0 
L106:   putfield Field com/fs/starfarer/combat/entities/ship/null 'Ôo0000' Z 
L109:   aload_0 
L110:   iconst_0 
L111:   putfield Field com/fs/starfarer/combat/entities/ship/null 'õ00000' Z 
L114:   aload_0 
L115:   aload_1 
L116:   putfield Field com/fs/starfarer/combat/entities/ship/null 'float.super' Lcom/fs/starfarer/combat/entities/ship/return; 
L119:   aload_0 
L120:   aload_2 
L121:   putfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L124:   aload_0 
L125:   new com/fs/starfarer/combat/entities/G 
L128:   dup 
L129:   aload_0 
L130:   invokespecial Method com/fs/starfarer/combat/entities/G <init> (Lcom/fs/starfarer/combat/entities/ship/null;)V 
L133:   putfield Field com/fs/starfarer/combat/entities/ship/null 'ÓO0000' Lcom/fs/starfarer/combat/entities/G; 
L136:   aload_0 
L137:   invokevirtual Method com/fs/starfarer/combat/entities/ship/null 'super' ()V 
L140:   aload_0 
L141:   invokevirtual Method com/fs/starfarer/combat/entities/ship/null computeEffectiveStats ()V 
L144:   aload_2 
L145:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo getHullStyle ()Lcom/fs/starfarer/loading/specs/OoOO; 1 
L150:   ifnull L210 
L153:   aload_0 
L154:   ldc Class com/fs/starfarer/loading/specs/K 
L156:   aload_2 
L157:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo getHullStyle ()Lcom/fs/starfarer/loading/specs/OoOO; 1 
L162:   invokevirtual Method com/fs/starfarer/loading/specs/OoOO int ()Ljava/lang/String; 
L165:   invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object; 
L168:   checkcast com/fs/starfarer/loading/specs/K 
L171:   putfield Field com/fs/starfarer/combat/entities/ship/null null Lcom/fs/starfarer/loading/specs/K; 
L174:   aload_0 
L175:   ldc Class com/fs/starfarer/loading/specs/K 
L177:   aload_2 
L178:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo getHullStyle ()Lcom/fs/starfarer/loading/specs/OoOO; 1 
L183:   invokevirtual Method com/fs/starfarer/loading/specs/OoOO 'this.super' ()Ljava/lang/String; 
L186:   invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object; 
L189:   checkcast com/fs/starfarer/loading/specs/K 
L192:   aload_2 
L193:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo getHullStyle ()Lcom/fs/starfarer/loading/specs/OoOO; 1 
L198:   aload_2 
L199:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo getHullSize ()Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 1 
L204:   invokevirtual Method com/fs/starfarer/loading/specs/K o00000 (Lcom/fs/starfarer/loading/specs/OoOO;Lcom/fs/starfarer/api/combat/ShipAPI$HullSize;)Lcom/fs/starfarer/loading/specs/e; 
L207:   putfield Field com/fs/starfarer/combat/entities/ship/null 'Ó00000' Lcom/fs/starfarer/loading/specs/e; 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/ship/null Object com/fs/starfarer/combat/entities/ship/return Object com/fs/starfarer/combat/entities/ship/null$Oo 
            stack 
        .end stack 
L210:   return 
L211:   
    .end code 
.end method 

.method public initDamageableEngineComponents : ()V 
    .code stack 5 locals 7 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L4:     invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo isFighter ()Z 1 
L9:     ifne L24 
L12:    aload_0 
L13:    getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L16:    invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo isShip ()Z 1 
L21:    ifeq L239 

        .stack same 
L24:    aload_0 
L25:    getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L28:    invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo getEngineLocations ()Ljava/util/List; 1 
L33:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L38:    astore_2 
L39:    goto L77 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/ship/null Top Object java/util/Iterator 
            stack 
        .end stack 
L42:    aload_2 
L43:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L48:    checkcast com/fs/starfarer/loading/specs/EngineSlot 
L51:    astore_1 
L52:    new com/fs/starfarer/combat/entities/ship/null$oo 
L55:    dup 
L56:    aload_1 
L57:    aload_0 
L58:    getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L61:    aload_0 
L62:    invokespecial Method com/fs/starfarer/combat/entities/ship/null$oo <init> (Lcom/fs/starfarer/loading/specs/EngineSlot;Lcom/fs/starfarer/combat/entities/ship/null$Oo;Lcom/fs/starfarer/combat/entities/ship/null;)V 
L65:    astore_3 
L66:    aload_0 
L67:    getfield Field com/fs/starfarer/combat/entities/ship/null new Ljava/util/List; 
L70:    aload_3 
L71:    invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L76:    pop 

        .stack same 
L77:    aload_2 
L78:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L83:    ifne L42 
L86:    fconst_0 
L87:    fstore_1 
L88:    fconst_0 
L89:    fstore_2 
L90:    aload_0 
L91:    getfield Field com/fs/starfarer/combat/entities/ship/null new Ljava/util/List; 
L94:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L99:    astore 4 
L101:   goto L142 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/ship/null Float Float Top Object java/util/Iterator 
            stack 
        .end stack 
L104:   aload 4 
L106:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L111:   checkcast com/fs/starfarer/combat/entities/ship/null$oo 
L114:   astore_3 
L115:   aload_3 
L116:   getfield Field com/fs/starfarer/combat/entities/ship/null$oo 'ÒÒôo00' Lcom/fs/starfarer/loading/specs/EngineSlot; 
L119:   invokevirtual Method com/fs/starfarer/loading/specs/EngineSlot isSystemActivated ()Z 
L122:   ifeq L135 
L125:   fload_2 
L126:   aload_3 
L127:   invokevirtual Method com/fs/starfarer/combat/entities/ship/null$oo getMaxHp ()F 
L130:   fadd 
L131:   fstore_2 
L132:   goto L142 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/ship/null Float Float Object com/fs/starfarer/combat/entities/ship/null$oo Object java/util/Iterator 
            stack 
        .end stack 
L135:   fload_1 
L136:   aload_3 
L137:   invokevirtual Method com/fs/starfarer/combat/entities/ship/null$oo getMaxHp ()F 
L140:   fadd 
L141:   fstore_1 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/ship/null Float Float Top Object java/util/Iterator 
            stack 
        .end stack 
L142:   aload 4 
L144:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L149:   ifne L104 
L152:   fload_1 
L153:   fconst_0 
L154:   fcmpg 
L155:   ifgt L160 
L158:   fload_2 
L159:   fstore_1 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/ship/null Float Float 
            stack 
        .end stack 
L160:   fload_1 
L161:   fconst_0 
L162:   fcmpg 
L163:   ifgt L169 
L166:   ldc +100.0f 
L168:   fstore_1 

        .stack same 
L169:   fconst_0 
L170:   fstore_3 
L171:   aload_0 
L172:   getfield Field com/fs/starfarer/combat/entities/ship/null new Ljava/util/List; 
L175:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L180:   astore 5 
L182:   goto L229 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/ship/null Float Float Float Top Object java/util/Iterator 
            stack 
        .end stack 
L185:   aload 5 
L187:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L192:   checkcast com/fs/starfarer/combat/entities/ship/null$oo 
L195:   astore 4 
L197:   aload 4 
L199:   invokevirtual Method com/fs/starfarer/combat/entities/ship/null$oo getMaxHp ()F 
L202:   fload_1 
L203:   fdiv 
L204:   fstore 6 
L206:   aload 4 
L208:   fload 6 
L210:   invokevirtual Method com/fs/starfarer/combat/entities/ship/null$oo setContribution (F)V 
L213:   fload 6 
L215:   fload_3 
L216:   fcmpl 
L217:   ifle L229 
L220:   fload 6 
L222:   fstore_3 
L223:   aload_0 
L224:   aload 4 
L226:   putfield Field com/fs/starfarer/combat/entities/ship/null 'ØO0000' Lcom/fs/starfarer/combat/entities/ship/null$oo; 

        .stack same 
L229:   aload 5 
L231:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L236:   ifne L185 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/ship/null 
            stack 
        .end stack 
L239:   return 
L240:   
    .end code 
.end method 

.method public forceShowAccelerating : ()V 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/ship/null getEngineGlow ()Lcom/fs/starfarer/combat/entities/G; 
L4:     invokevirtual Method com/fs/starfarer/combat/entities/G 'õ00000' ()V 
L7:     return 
L8:     
    .end code 
.end method 

.method private 'Ò00000' : ()F 
    .code stack 2 locals 1 
L0:     invokestatic Method com/fs/starfarer/combat/entities/ship/null $SWITCH_TABLE$com$fs$starfarer$api$combat$ShipAPI$HullSize ()[I 
L3:     aload_0 
L4:     getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L7:     invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo getHullSize ()Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 1 
L12:    invokevirtual Method com/fs/starfarer/api/combat/ShipAPI$HullSize ordinal ()I 
L15:    iaload 
L16:    tableswitch 2 
            L68 
            L64 
            L60 
            L56 
            L52 
            default : L72 


        .stack same 
L52:    ldc_w +11.0f 
L55:    freturn 

        .stack same 
L56:    ldc_w +9.0f 
L59:    freturn 

        .stack same 
L60:    ldc_w +7.0f 
L63:    freturn 

        .stack same 
L64:    ldc_w +5.0f 
L67:    freturn 

        .stack same 
L68:    ldc_w +10.0f 
L71:    freturn 

        .stack same 
L72:    ldc_w +10.0f 
L75:    freturn 
L76:    
    .end code 
.end method 

.method public setFlameLevel : (Lcom/fs/starfarer/api/combat/EngineSlotAPI;F)V 
    .code stack 2 locals 4 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/ship/null 'ÓO0000' Lcom/fs/starfarer/combat/entities/G; 
L4:     aload_1 
L5:     checkcast com/fs/starfarer/loading/specs/EngineSlot 
L8:     invokevirtual Method com/fs/starfarer/combat/entities/G 'Ó00000' (Lcom/fs/starfarer/loading/specs/EngineSlot;)Lcom/fs/starfarer/combat/entities/G$Oo; 
L11:    astore_3 
L12:    aload_3 
L13:    fload_2 
L14:    putfield Field com/fs/starfarer/combat/entities/G$Oo class F 
L17:    return 
L18:    
    .end code 
.end method 

.method public getExtendLengthFraction : ()Lcom/fs/starfarer/util/ValueShifter; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/ship/null 'ÓO0000' Lcom/fs/starfarer/combat/entities/G; 
L4:     invokevirtual Method com/fs/starfarer/combat/entities/G OO0000 ()Lcom/fs/starfarer/util/ValueShifter; 
L7:     areturn 
L8:     
    .end code 
.end method 

.method public getExtendWidthFraction : ()Lcom/fs/starfarer/util/ValueShifter; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/ship/null 'ÓO0000' Lcom/fs/starfarer/combat/entities/G; 
L4:     invokevirtual Method com/fs/starfarer/combat/entities/G null ()Lcom/fs/starfarer/util/ValueShifter; 
L7:     areturn 
L8:     
    .end code 
.end method 

.method public getExtendGlowFraction : ()Lcom/fs/starfarer/util/ValueShifter; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/ship/null 'ÓO0000' Lcom/fs/starfarer/combat/entities/G; 
L4:     invokevirtual Method com/fs/starfarer/combat/entities/G 'Ö00000' ()Lcom/fs/starfarer/util/ValueShifter; 
L7:     areturn 
L8:     
    .end code 
.end method 

.method public getEngines : ()Ljava/util/List; 
    .signature ()Ljava/util/List<Lcom/fs/starfarer/combat/entities/ship/null$oo;>; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/ship/null new Ljava/util/List; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public getShipEngines : ()Ljava/util/List; 
    .signature ()Ljava/util/List<Lcom/fs/starfarer/api/combat/ShipEngineControllerAPI$ShipEngineAPI;>; 
    .code stack 3 locals 1 
L0:     new java/util/ArrayList 
L3:     dup 
L4:     aload_0 
L5:     getfield Field com/fs/starfarer/combat/entities/ship/null new Ljava/util/List; 
L8:     invokespecial Method java/util/ArrayList <init> (Ljava/util/Collection;)V 
L11:    areturn 
L12:    
    .end code 
.end method 

.method public getBrakeDist : ()F 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/ship/null OO0000 F 
L4:     fconst_0 
L5:     fcmpg 
L6:     ifgt L13 
L9:     ldc_w +3.4028234663852886e+38f 
L12:    freturn 

        .stack same 
L13:    aload_0 
L14:    getfield Field com/fs/starfarer/combat/entities/ship/null Oo0000 F 
L17:    aload_0 
L18:    getfield Field com/fs/starfarer/combat/entities/ship/null OO0000 F 
L21:    fdiv 
L22:    freturn 
L23:    
    .end code 
.end method 

.method public init : ()V 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/ship/null 'ÓO0000' Lcom/fs/starfarer/combat/entities/G; 
L4:     invokevirtual Method com/fs/starfarer/combat/entities/G float ()V 
L7:     return 
L8:     
    .end code 
.end method 

.method public cleanup : ()V 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/ship/null 'ÓO0000' Lcom/fs/starfarer/combat/entities/G; 
L4:     invokevirtual Method com/fs/starfarer/combat/entities/G 'ÖO0000' ()V 
L7:     return 
L8:     
    .end code 
.end method 

.method public terminateContrail : ()V 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/ship/null 'ÓO0000' Lcom/fs/starfarer/combat/entities/G; 
L4:     invokevirtual Method com/fs/starfarer/combat/entities/G 'õO0000' ()V 
L7:     return 
L8:     
    .end code 
.end method 

.method public resetBrightness : ()V 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/ship/null 'ÓO0000' Lcom/fs/starfarer/combat/entities/G; 
L4:     invokevirtual Method com/fs/starfarer/combat/entities/G 'ÔO0000' ()V 
L7:     return 
L8:     
    .end code 
.end method 

.method public addExtraPoint : (F)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/ship/null 'ÓO0000' Lcom/fs/starfarer/combat/entities/G; 
L4:     fload_1 
L5:     invokevirtual Method com/fs/starfarer/combat/entities/G 'Ö00000' (F)V 
L8:     return 
L9:     
    .end code 
.end method 

.method public render : (F)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/ship/null 'new.new' Lcom/fs/starfarer/combat/entities/ship/null$o; 
L4:     getstatic Field com/fs/starfarer/combat/entities/ship/null$o 'Ó00000' Lcom/fs/starfarer/combat/entities/ship/null$o; 
L7:     if_acmpeq L18

        invokestatic Method com/genir/renderer/bridge/State beginIntercept ()V

L10:    aload_0
L11:    getfield Field com/fs/starfarer/combat/entities/ship/null 'ÓO0000' Lcom/fs/starfarer/combat/entities/G;

L14:    fload_1
L15:    invokevirtual Method com/fs/starfarer/combat/entities/G o00000 (F)V

        invokestatic Method com/genir/renderer/bridge/State endIntercept ()V

        .stack same
L18:    return 
L19:    
    .end code 
.end method 

.method public advance : (F)V 
    .code stack 8 locals 5 
L0:     aload_0 
L1:     dup 
L2:     getfield Field com/fs/starfarer/combat/entities/ship/null 'Ô00000' F 
L5:     fload_1 
L6:     fsub 
L7:     putfield Field com/fs/starfarer/combat/entities/ship/null 'Ô00000' F 
L10:    aload_0 
L11:    getfield Field com/fs/starfarer/combat/entities/ship/null 'Ô00000' F 
L14:    fconst_0 
L15:    fcmpg 
L16:    ifgt L24 
L19:    aload_0 
L20:    fconst_0 
L21:    putfield Field com/fs/starfarer/combat/entities/ship/null 'Ô00000' F 

        .stack same 
L24:    aload_0 
L25:    getfield Field com/fs/starfarer/combat/entities/ship/null new Ljava/util/List; 
L28:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L33:    astore_3 
L34:    goto L52 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/ship/null Float Top Object java/util/Iterator 
            stack 
        .end stack 
L37:    aload_3 
L38:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L43:    checkcast com/fs/starfarer/combat/entities/ship/null$oo 
L46:    astore_2 
L47:    aload_2 
L48:    fload_1 
L49:    invokevirtual Method com/fs/starfarer/combat/entities/ship/null$oo advance (F)V 

        .stack same 
L52:    aload_3 
L53:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L58:    ifne L37 
L61:    aload_0 
L62:    invokevirtual Method com/fs/starfarer/combat/entities/ship/null computeEffectiveStats ()V 
L65:    aload_0 
L66:    getfield Field com/fs/starfarer/combat/entities/ship/null 'ÓO0000' Lcom/fs/starfarer/combat/entities/G; 
L69:    fload_1 
L70:    invokevirtual Method com/fs/starfarer/combat/entities/G 'Ø00000' (F)V 
L73:    aload_0 
L74:    dup 
L75:    getfield Field com/fs/starfarer/combat/entities/ship/null 'while.super' F 
L78:    fload_1 
L79:    fsub 
L80:    putfield Field com/fs/starfarer/combat/entities/ship/null 'while.super' F 
L83:    aload_0 
L84:    getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L87:    invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo isMissile ()Z 1 
L92:    ifne L243 
L95:    aload_0 
L96:    getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L99:    invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo isDrone ()Z 1 
L104:   ifne L243 
L107:   aload_0 
L108:   getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L111:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo isFighter ()Z 1 
L116:   ifeq L131 
L119:   aload_0 
L120:   getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L123:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo isWingLeader ()Z 1 
L128:   ifeq L243 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/ship/null Float 
            stack 
        .end stack 
L131:   aload_0 
L132:   getfield Field com/fs/starfarer/combat/entities/ship/null 'ÓO0000' Lcom/fs/starfarer/combat/entities/G; 
L135:   invokevirtual Method com/fs/starfarer/combat/entities/G o00000 ()F 
L138:   fstore_2 
L139:   ldc +0.5f 
L141:   fstore_3 
L142:   aload_0 
L143:   getfield Field com/fs/starfarer/combat/entities/ship/null 'ÓO0000' Lcom/fs/starfarer/combat/entities/G; 
L146:   invokevirtual Method com/fs/starfarer/combat/entities/G 'new.super' ()Z 
L149:   ifeq L154 
L152:   fconst_1 
L153:   fstore_3 

        .stack append Float Float 
L154:   fload_2 
L155:   aload_0 
L156:   getfield Field com/fs/starfarer/combat/entities/ship/null oo0000 F 
L159:   fmul 
L160:   fstore_2 
L161:   fload_2 
L162:   fconst_0 
L163:   fcmpl 
L164:   ifle L243 
L167:   aload_0 
L168:   invokevirtual Method com/fs/starfarer/combat/entities/ship/null isDisabled ()Z 
L171:   ifne L243 
L174:   aload_0 
L175:   getfield Field com/fs/starfarer/combat/entities/ship/null 'while.super' F 
L178:   fconst_0 
L179:   fcmpg 
L180:   ifgt L243 
L183:   aload_0 
L184:   getfield Field com/fs/starfarer/combat/entities/ship/null 'Ó00000' Lcom/fs/starfarer/loading/specs/e; 
L187:   aload_0 
L188:   fconst_1 
L189:   fload_3 
L190:   fmul 
L191:   fload_2 
L192:   aload_0 
L193:   getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L196:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L201:   getfield Field org/lwjgl/util/vector/Vector2f x F 
L204:   aload_0 
L205:   getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L208:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L213:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L216:   aload_0 
L217:   getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L220:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 1 
L225:   getfield Field org/lwjgl/util/vector/Vector2f x F 
L228:   aload_0 
L229:   getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L232:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 1 
L237:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L240:   invokestatic Method com/fs/starfarer/D/M o00000 (Lcom/fs/starfarer/loading/specs/e;Ljava/lang/Object;FFFFFF)V 

        .stack chop 2 
L243:   aload_0 
L244:   getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L247:   instanceof com/fs/starfarer/combat/entities/Ship 
L250:   ifeq L390 
L253:   aload_0 
L254:   getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L257:   checkcast com/fs/starfarer/combat/entities/Ship 
L260:   astore_2 
L261:   iconst_0 
L262:   istore_3 
L263:   aload_0 
L264:   getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L267:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo getEngineLocations ()Ljava/util/List; 1 
L272:   invokeinterface InterfaceMethod java/util/List isEmpty ()Z 1 
L277:   ifne L306 
L280:   aload_0 
L281:   getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L284:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo getEngineLocations ()Ljava/util/List; 1 
L289:   iconst_0 
L290:   invokeinterface InterfaceMethod java/util/List get (I)Ljava/lang/Object; 2 
L295:   checkcast com/fs/starfarer/loading/specs/EngineSlot 
L298:   invokevirtual Method com/fs/starfarer/loading/specs/EngineSlot isOmegaMode ()Z 
L301:   ifeq L306 
L304:   iconst_1 
L305:   istore_3 

        .stack append Object com/fs/starfarer/combat/entities/Ship Integer 
L306:   iload_3 
L307:   ifeq L390 
L310:   aload_0 
L311:   getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L314:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo getEngineLocations ()Ljava/util/List; 1 
L319:   invokeinterface InterfaceMethod java/util/List isEmpty ()Z 1 
L324:   ifne L390 
L327:   aload_0 
L328:   invokevirtual Method com/fs/starfarer/combat/entities/ship/null isAccelerating ()Z 
L331:   istore 4 
L333:   iload 4 
L335:   ifne L358 
L338:   aload_0 
L339:   getfield Field com/fs/starfarer/combat/entities/ship/null 'interface.super' Z 
L342:   ifeq L368 
L345:   aload_0 
L346:   dup 
L347:   getfield Field com/fs/starfarer/combat/entities/ship/null 'Ö00000' I 
L350:   iconst_1 
L351:   iadd 
L352:   putfield Field com/fs/starfarer/combat/entities/ship/null 'Ö00000' I 
L355:   goto L368 

        .stack append Integer 
L358:   aload_0 
L359:   iconst_1 
L360:   putfield Field com/fs/starfarer/combat/entities/ship/null 'interface.super' Z 
L363:   aload_0 
L364:   iconst_0 
L365:   putfield Field com/fs/starfarer/combat/entities/ship/null 'Ö00000' I 

        .stack same 
L368:   iload 4 
L370:   ifne L390 
L373:   aload_0 
L374:   getfield Field com/fs/starfarer/combat/entities/ship/null 'Ö00000' I 
L377:   iconst_5 
L378:   if_icmple L390 
L381:   aload_0 
L382:   invokevirtual Method com/fs/starfarer/combat/entities/ship/null interruptContrail ()V 
L385:   aload_0 
L386:   iconst_0 
L387:   putfield Field com/fs/starfarer/combat/entities/ship/null 'Ö00000' I 

        .stack chop 3 
L390:   return 
L391:   
    .end code 
.end method 

.method public interruptContrail : ()V 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/ship/null saveBrightness ()V 
L4:     aload_0 
L5:     invokevirtual Method com/fs/starfarer/combat/entities/ship/null resetBrightness ()V 
L8:     aload_0 
L9:     invokevirtual Method com/fs/starfarer/combat/entities/ship/null terminateContrail ()V 
L12:    aload_0 
L13:    fconst_0 
L14:    invokevirtual Method com/fs/starfarer/combat/entities/ship/null addExtraPoint (F)V 
L17:    aload_0 
L18:    fconst_0 
L19:    invokevirtual Method com/fs/starfarer/combat/entities/ship/null addExtraPoint (F)V 
L22:    aload_0 
L23:    invokevirtual Method com/fs/starfarer/combat/entities/ship/null restoreBrightness ()V 
L26:    return 
L27:    
    .end code 
.end method 

.method private 'Ó00000' : ()F 
    .code stack 2 locals 1 
L0:     invokestatic Method com/fs/starfarer/combat/entities/ship/null $SWITCH_TABLE$com$fs$starfarer$api$combat$ShipAPI$HullSize ()[I 
L3:     aload_0 
L4:     getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L7:     invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo getHullSize ()Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 1 
L12:    invokevirtual Method com/fs/starfarer/api/combat/ShipAPI$HullSize ordinal ()I 
L15:    iaload 
L16:    tableswitch 2 
            L52 
            L56 
            L60 
            L64 
            L68 
            default : L72 


        .stack same 
L52:    ldc_w +15.0f 
L55:    freturn 

        .stack same 
L56:    ldc_w +17.0f 
L59:    freturn 

        .stack same 
L60:    ldc_w +21.0f 
L63:    freturn 

        .stack same 
L64:    ldc_w +24.0f 
L67:    freturn 

        .stack same 
L68:    ldc_w +27.0f 
L71:    freturn 

        .stack same 
L72:    ldc_w +10.0f 
L75:    freturn 
L76:    
    .end code 
.end method 

.method public isFlamedOut : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/ship/null isDisabled ()Z 
L4:     ifne L16 
L7:     aload_0 
L8:     invokevirtual Method com/fs/starfarer/combat/entities/ship/null isFlamingOut ()Z 
L11:    ifne L16 
L14:    iconst_0 
L15:    ireturn 

        .stack same 
L16:    iconst_1 
L17:    ireturn 
L18:    
    .end code 
.end method 

.method public isDisabled : ()Z 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/ship/null 'new.new' Lcom/fs/starfarer/combat/entities/ship/null$o; 
L4:     getstatic Field com/fs/starfarer/combat/entities/ship/null$o 'Ó00000' Lcom/fs/starfarer/combat/entities/ship/null$o; 
L7:     if_acmpne L12 
L10:    iconst_1 
L11:    ireturn 

        .stack same 
L12:    iconst_0 
L13:    ireturn 
L14:    
    .end code 
.end method 

.method public isFlamingOut : ()Z 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/ship/null 'new.new' Lcom/fs/starfarer/combat/entities/ship/null$o; 
L4:     getstatic Field com/fs/starfarer/combat/entities/ship/null$o String Lcom/fs/starfarer/combat/entities/ship/null$o; 
L7:     if_acmpne L12 
L10:    iconst_1 
L11:    ireturn 

        .stack same 
L12:    iconst_0 
L13:    ireturn 
L14:    
    .end code 
.end method 

.method public computeDisabledFraction : ()F 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     iconst_0 
L2:     invokevirtual Method com/fs/starfarer/combat/entities/ship/null computeDisabledFraction (Z)F 
L5:     freturn 
L6:     
    .end code 
.end method 

.method public getFlameoutFraction : ()F 
    .code stack 1 locals 1 
L0:     ldc +0.5f 
L2:     freturn 
L3:     
    .end code 
.end method 

.method public computeDisabledFraction : (Z)F 
    .code stack 4 locals 7 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/ship/null 'Øo0000' Z 
L4:     ifeq L14 
L7:     aload_0 
L8:     iconst_0 
L9:     putfield Field com/fs/starfarer/combat/entities/ship/null 'Øo0000' Z 
L12:    fconst_1 
L13:    freturn 

        .stack same 
L14:    fconst_0 
L15:    fstore_2 
L16:    fconst_0 
L17:    fstore_3 
L18:    aload_0 
L19:    invokevirtual Method com/fs/starfarer/combat/entities/ship/null getEngineGlow ()Lcom/fs/starfarer/combat/entities/G; 
L22:    invokevirtual Method com/fs/starfarer/combat/entities/G oO0000 ()Z 
L25:    istore 4 
L27:    iconst_0 
L28:    istore 4 
L30:    aload_0 
L31:    getfield Field com/fs/starfarer/combat/entities/ship/null new Ljava/util/List; 
L34:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L39:    astore 6 
L41:    goto L121 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/ship/null Integer Float Float Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L44:    aload 6 
L46:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L51:    checkcast com/fs/starfarer/combat/entities/ship/null$oo 
L54:    astore 5 
L56:    aload 5 
L58:    invokevirtual Method com/fs/starfarer/combat/entities/ship/null$oo getHealthTracker ()Lcom/fs/starfarer/combat/entities/ship/super; 
L61:    invokevirtual Method com/fs/starfarer/combat/entities/ship/super class ()Z 
L64:    ifeq L121 
L67:    aload 5 
L69:    invokevirtual Method com/fs/starfarer/combat/entities/ship/null$oo getEngineSlot ()Lcom/fs/starfarer/loading/specs/EngineSlot; 
L72:    invokevirtual Method com/fs/starfarer/loading/specs/EngineSlot isSystemActivated ()Z 
L75:    ifeq L83 
L78:    iload 4 
L80:    ifeq L121 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/ship/null Integer Float Float Integer Object com/fs/starfarer/combat/entities/ship/null$oo Object java/util/Iterator 
            stack 
        .end stack 
L83:    fload_2 
L84:    aload 5 
L86:    invokevirtual Method com/fs/starfarer/combat/entities/ship/null$oo getContribution ()F 
L89:    fadd 
L90:    fstore_2 
L91:    aload 5 
L93:    invokevirtual Method com/fs/starfarer/combat/entities/ship/null$oo getHealthTracker ()Lcom/fs/starfarer/combat/entities/ship/super; 
L96:    invokevirtual Method com/fs/starfarer/combat/entities/ship/super float ()Z 
L99:    ifeq L121 
L102:   aload 5 
L104:   invokevirtual Method com/fs/starfarer/combat/entities/ship/null$oo getHealthTracker ()Lcom/fs/starfarer/combat/entities/ship/super; 
L107:   invokevirtual Method com/fs/starfarer/combat/entities/ship/super 'Ö00000' ()Z 
L110:   ifne L121 
L113:   fload_3 
L114:   aload 5 
L116:   invokevirtual Method com/fs/starfarer/combat/entities/ship/null$oo getContribution ()F 
L119:   fadd 
L120:   fstore_3 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/ship/null Integer Float Float Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L121:   aload 6 
L123:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L128:   ifne L44 
L131:   aload_0 
L132:   getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L135:   instanceof com/fs/starfarer/combat/entities/Ship 
L138:   ifeq L197 
L141:   iload_1 
L142:   ifne L197 
L145:   fload_2 
L146:   fconst_1 
L147:   fcmpg 
L148:   ifge L197 
L151:   aload_0 
L152:   getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L155:   checkcast com/fs/starfarer/combat/entities/Ship 
L158:   astore 5 
L160:   aload 5 
L162:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getEngineFractionPermanentlyDisabled ()F 
L165:   fstore 6 
L167:   fload 6 
L169:   fload_3 
L170:   fadd 
L171:   fstore 6 
L173:   fload 6 
L175:   fconst_0 
L176:   fcmpl 
L177:   ifle L197 
L180:   fload 6 
L182:   fconst_1 
L183:   fcmpg 
L184:   ifge L197 
L187:   fload_2 
L188:   fload 6 
L190:   fsub 
L191:   fconst_1 
L192:   fload 6 
L194:   fsub 
L195:   fdiv 
L196:   fstore_2 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/ship/null Integer Float Float Integer 
            stack 
        .end stack 
L197:   aload_0 
L198:   fload_3 
L199:   fload_2 
L200:   ldc +0.5f 
L202:   fmul 
L203:   fcmpl 
L204:   ifle L211 
L207:   iconst_1 
L208:   goto L212 

        .stack stack_1 Object com/fs/starfarer/combat/entities/ship/null 
L211:   iconst_0 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/ship/null Integer Float Float Integer 
            stack Object com/fs/starfarer/combat/entities/ship/null Integer 
        .end stack 
L212:   putfield Field com/fs/starfarer/combat/entities/ship/null 'oÒ0000' Z 
L215:   fload_2 
L216:   freturn 
L217:   
    .end code 
.end method 

.method public forceFlameout : ()V 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     iconst_0 
L2:     invokevirtual Method com/fs/starfarer/combat/entities/ship/null forceFlameout (Z)V 
L5:     return 
L6:     
    .end code 
.end method 

.method public forceFlameout : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/combat/entities/ship/null 'öo0000' Z 
L5:     aload_0 
L6:     iconst_1 
L7:     putfield Field com/fs/starfarer/combat/entities/ship/null 'Øo0000' Z 
L10:    return 
L11:    
    .end code 
.end method 

.method public computeEffectiveStats : ()V 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     iconst_0 
L2:     invokevirtual Method com/fs/starfarer/combat/entities/ship/null computeEffectiveStats (Z)V 
L5:     return 
L6:     
    .end code 
.end method 

.method public computeEffectiveStats : (Z)V 
    .code stack 8 locals 7 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/ship/null 'new.new' Lcom/fs/starfarer/combat/entities/ship/null$o; 
L4:     getstatic Field com/fs/starfarer/combat/entities/ship/null$o String Lcom/fs/starfarer/combat/entities/ship/null$o; 
L7:     if_acmpne L82 
L10:    iconst_0 
L11:    istore_2 
L12:    aload_0 
L13:    getfield Field com/fs/starfarer/combat/entities/ship/null new Ljava/util/List; 
L16:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L21:    astore 4 
L23:    goto L61 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/ship/null Integer Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L26:    aload 4 
L28:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L33:    checkcast com/fs/starfarer/combat/entities/ship/null$oo 
L36:    astore_3 
L37:    aload_0 
L38:    getfield Field com/fs/starfarer/combat/entities/ship/null 'ÓO0000' Lcom/fs/starfarer/combat/entities/G; 
L41:    aload_3 
L42:    invokevirtual Method com/fs/starfarer/combat/entities/ship/null$oo getEngineSlot ()Lcom/fs/starfarer/loading/specs/EngineSlot; 
L45:    invokevirtual Method com/fs/starfarer/combat/entities/G 'Ó00000' (Lcom/fs/starfarer/loading/specs/EngineSlot;)Lcom/fs/starfarer/combat/entities/G$Oo; 
L48:    getfield Field com/fs/starfarer/combat/entities/G$Oo class F 
L51:    fconst_0 
L52:    fcmpl 
L53:    ifle L61 
L56:    iconst_1 
L57:    istore_2 
L58:    goto L71 

        .stack same 
L61:    aload 4 
L63:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L68:    ifne L26 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/ship/null Integer Integer 
            stack 
        .end stack 
L71:    iload_2 
L72:    ifne L82 
L75:    aload_0 
L76:    getstatic Field com/fs/starfarer/combat/entities/ship/null$o 'Ó00000' Lcom/fs/starfarer/combat/entities/ship/null$o; 
L79:    putfield Field com/fs/starfarer/combat/entities/ship/null 'new.new' Lcom/fs/starfarer/combat/entities/ship/null$o; 

        .stack chop 1 
L82:    aload_0 
L83:    getfield Field com/fs/starfarer/combat/entities/ship/null new Ljava/util/List; 
L86:    invokeinterface InterfaceMethod java/util/List isEmpty ()Z 1 
L91:    ifne L693 
L94:    aload_0 
L95:    iconst_0 
L96:    invokevirtual Method com/fs/starfarer/combat/entities/ship/null computeDisabledFraction (Z)F 
L99:    fstore_2 
L100:   ldc +0.5f 
L102:   fstore_3 
L103:   aload_0 
L104:   getfield Field com/fs/starfarer/combat/entities/ship/null 'ÓO0000' Lcom/fs/starfarer/combat/entities/G; 
L107:   invokevirtual Method com/fs/starfarer/combat/entities/G oO0000 ()Z 
L110:   ifeq L117 
L113:   ldc_w +0.9900000095367432f 
L116:   fstore_3 

        .stack append Float Float 
L117:   aload_0 
L118:   getfield Field com/fs/starfarer/combat/entities/ship/null 'Ô00000' F 
L121:   fconst_0 
L122:   fcmpg 
L123:   ifgt L132 
L126:   fload_2 
L127:   fload_3 
L128:   fcmpl 
L129:   ifgt L138 

        .stack same 
L132:   fload_2 
L133:   fconst_1 
L134:   fcmpl 
L135:   iflt L315 

        .stack same 
L138:   aload_0 
L139:   getfield Field com/fs/starfarer/combat/entities/ship/null 'new.new' Lcom/fs/starfarer/combat/entities/ship/null$o; 
L142:   getstatic Field com/fs/starfarer/combat/entities/ship/null$o 'Ò00000' Lcom/fs/starfarer/combat/entities/ship/null$o; 
L145:   if_acmpne L315 
L148:   aload_0 
L149:   getstatic Field com/fs/starfarer/combat/entities/ship/null$o String Lcom/fs/starfarer/combat/entities/ship/null$o; 
L152:   putfield Field com/fs/starfarer/combat/entities/ship/null 'new.new' Lcom/fs/starfarer/combat/entities/ship/null$o; 
L155:   aload_0 
L156:   aload_0 
L157:   invokevirtual Method com/fs/starfarer/combat/entities/ship/null 'Ò00000' ()F 
L160:   putfield Field com/fs/starfarer/combat/entities/ship/null 'Ô00000' F 
L163:   aload_0 
L164:   getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L167:   instanceof com/fs/starfarer/combat/entities/Ship 
L170:   ifeq L183 
L173:   aload_0 
L174:   getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L177:   checkcast com/fs/starfarer/combat/entities/Ship 
L180:   invokevirtual Method com/fs/starfarer/combat/entities/Ship notifyFlameout ()V 

        .stack same 
L183:   aload_0 
L184:   invokevirtual Method com/fs/starfarer/combat/entities/ship/null String ()Z 
L187:   ifne L194 
L190:   iload_1 
L191:   ifeq L307 

        .stack same 
L194:   aload_0 
L195:   getfield Field com/fs/starfarer/combat/entities/ship/null 'öo0000' Z 
L198:   ifne L307 
L201:   ldc_w 'Flameout!' 
L204:   astore 4 
L206:   aload_0 
L207:   getfield Field com/fs/starfarer/combat/entities/ship/null 'oÒ0000' Z 
L210:   ifeq L218 
L213:   ldc_w 'Engine Malfunction!' 
L216:   astore 4 

        .stack append Object java/lang/String 
L218:   aload_0 
L219:   getfield Field com/fs/starfarer/combat/entities/ship/null 'ØO0000' Lcom/fs/starfarer/combat/entities/ship/null$oo; 
L222:   invokevirtual Method com/fs/starfarer/combat/entities/ship/null$oo getEngineSlot ()Lcom/fs/starfarer/loading/specs/EngineSlot; 
L225:   aload_0 
L226:   getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L229:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L234:   aload_0 
L235:   getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L238:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo getFacing ()F 1 
L243:   invokevirtual Method com/fs/starfarer/loading/specs/EngineSlot computePosition (Lorg/lwjgl/util/vector/Vector2f;F)Lorg/lwjgl/util/vector/Vector2f; 
L246:   astore 5 
L248:   invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L251:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getFloatingTextManager ()Lcom/fs/starfarer/renderers/Q; 
L254:   aload 5 
L256:   getfield Field org/lwjgl/util/vector/Vector2f x F 
L259:   aload 5 
L261:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L264:   ldc_w +20.0f 
L267:   fadd 
L268:   aload 4 
L270:   aload_0 
L271:   invokevirtual Method com/fs/starfarer/combat/entities/ship/null 'Ó00000' ()F 
L274:   aload_0 
L275:   getfield Field com/fs/starfarer/combat/entities/ship/null 'ØO0000' Lcom/fs/starfarer/combat/entities/ship/null$oo; 
L278:   invokevirtual Method com/fs/starfarer/combat/entities/ship/null$oo getEngineSlot ()Lcom/fs/starfarer/loading/specs/EngineSlot; 
L281:   invokevirtual Method com/fs/starfarer/loading/specs/EngineSlot getColor ()Ljava/awt/Color; 
L284:   aload_0 
L285:   getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L288:   checkcast com/fs/starfarer/combat/E/B 
L291:   aconst_null 
L292:   invokevirtual Method com/fs/starfarer/renderers/Q 'super' (FFLjava/lang/String;FLjava/awt/Color;Lcom/fs/starfarer/combat/E/B;Lcom/fs/starfarer/combat/E/B;)Lcom/fs/starfarer/renderers/O00O; 
L295:   ldc_w +4.0f 
L298:   ldc_w +2000.0f 
L301:   invokevirtual Method com/fs/starfarer/renderers/O00O o00000 (FF)V 
L304:   goto L480 

        .stack chop 1 
L307:   aload_0 
L308:   iconst_0 
L309:   putfield Field com/fs/starfarer/combat/entities/ship/null 'öo0000' Z 
L312:   goto L480 

        .stack same 
L315:   fload_2 
L316:   fload_3 
L317:   fcmpg 
L318:   ifgt L480 
L321:   aload_0 
L322:   getfield Field com/fs/starfarer/combat/entities/ship/null 'new.new' Lcom/fs/starfarer/combat/entities/ship/null$o; 
L325:   getstatic Field com/fs/starfarer/combat/entities/ship/null$o 'Ó00000' Lcom/fs/starfarer/combat/entities/ship/null$o; 
L328:   if_acmpne L480 
L331:   aload_0 
L332:   getstatic Field com/fs/starfarer/combat/entities/ship/null$o 'Ò00000' Lcom/fs/starfarer/combat/entities/ship/null$o; 
L335:   putfield Field com/fs/starfarer/combat/entities/ship/null 'new.new' Lcom/fs/starfarer/combat/entities/ship/null$o; 
L338:   aload_0 
L339:   getfield Field com/fs/starfarer/combat/entities/ship/null new Ljava/util/List; 
L342:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L347:   astore 5 
L349:   goto L387 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/ship/null Integer Float Float Top Object java/util/Iterator 
            stack 
        .end stack 
L352:   aload 5 
L354:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L359:   checkcast com/fs/starfarer/combat/entities/ship/null$oo 
L362:   astore 4 
L364:   aload 4 
L366:   invokevirtual Method com/fs/starfarer/combat/entities/ship/null$oo getHealthTracker ()Lcom/fs/starfarer/combat/entities/ship/super; 
L369:   invokevirtual Method com/fs/starfarer/combat/entities/ship/super class ()Z 
L372:   ifne L387 
L375:   aload_0 
L376:   getfield Field com/fs/starfarer/combat/entities/ship/null 'ÓO0000' Lcom/fs/starfarer/combat/entities/G; 
L379:   aload 4 
L381:   invokevirtual Method com/fs/starfarer/combat/entities/ship/null$oo getEngineSlot ()Lcom/fs/starfarer/loading/specs/EngineSlot; 
L384:   invokevirtual Method com/fs/starfarer/combat/entities/G o00000 (Lcom/fs/starfarer/loading/specs/EngineSlot;)V 

        .stack same 
L387:   aload 5 
L389:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L394:   ifne L352 
L397:   aload_0 
L398:   invokevirtual Method com/fs/starfarer/combat/entities/ship/null String ()Z 
L401:   ifne L408 
L404:   iload_1 
L405:   ifeq L480 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/ship/null Integer Float Float 
            stack 
        .end stack 
L408:   aload_0 
L409:   getfield Field com/fs/starfarer/combat/entities/ship/null 'ØO0000' Lcom/fs/starfarer/combat/entities/ship/null$oo; 
L412:   invokevirtual Method com/fs/starfarer/combat/entities/ship/null$oo getEngineSlot ()Lcom/fs/starfarer/loading/specs/EngineSlot; 
L415:   aload_0 
L416:   getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L419:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L424:   aload_0 
L425:   getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L428:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo getFacing ()F 1 
L433:   invokevirtual Method com/fs/starfarer/loading/specs/EngineSlot computePosition (Lorg/lwjgl/util/vector/Vector2f;F)Lorg/lwjgl/util/vector/Vector2f; 
L436:   astore 4 
L438:   invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L441:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getFloatingTextManager ()Lcom/fs/starfarer/renderers/Q; 
L444:   aload 4 
L446:   getfield Field org/lwjgl/util/vector/Vector2f x F 
L449:   aload 4 
L451:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L454:   ldc_w +20.0f 
L457:   fadd 
L458:   ldc_w 'Engines Online' 
L461:   aload_0 
L462:   invokevirtual Method com/fs/starfarer/combat/entities/ship/null 'Ó00000' ()F 
L465:   getstatic Field com/fs/starfarer/O0OO 'ø00000' Ljava/awt/Color; 
L468:   aload_0 
L469:   getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L472:   checkcast com/fs/starfarer/combat/E/B 
L475:   aconst_null 
L476:   invokevirtual Method com/fs/starfarer/renderers/Q 'super' (FFLjava/lang/String;FLjava/awt/Color;Lcom/fs/starfarer/combat/E/B;Lcom/fs/starfarer/combat/E/B;)Lcom/fs/starfarer/renderers/O00O; 
L479:   pop 

        .stack same_extended 
L480:   aload_0 
L481:   iconst_1 
L482:   invokevirtual Method com/fs/starfarer/combat/entities/ship/null computeDisabledFraction (Z)F 
L485:   fstore 4 
L487:   fload 4 
L489:   aload_0 
L490:   getfield Field com/fs/starfarer/combat/entities/ship/null oO0000 F 
L493:   fcmpl 
L494:   ifeq L693 
L497:   fconst_1 
L498:   fload 4 
L500:   fsub 
L501:   fstore 5 
L503:   fload 5 
L505:   fconst_0 
L506:   fcmpg 
L507:   ifge L513 
L510:   fconst_0 
L511:   fstore 5 

        .stack append Float Float 
L513:   fload 5 
L515:   fconst_1 
L516:   fcmpl 
L517:   ifle L523 
L520:   fconst_1 
L521:   fstore 5 

        .stack same 
L523:   ldc 'engine_damage_penalty' 
L525:   astore 6 
L527:   fload 4 
L529:   fconst_0 
L530:   fcmpl 
L531:   ifle L617 
L534:   aload_0 
L535:   getfield Field com/fs/starfarer/combat/entities/ship/null 'float.super' Lcom/fs/starfarer/combat/entities/ship/return; 
L538:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/return getMaxSpeed ()Lcom/fs/starfarer/api/combat/MutableStat; 1 
L543:   aload 6 
L545:   fload 5 
L547:   invokevirtual Method com/fs/starfarer/api/combat/MutableStat modifyMult (Ljava/lang/String;F)V 
L550:   aload_0 
L551:   getfield Field com/fs/starfarer/combat/entities/ship/null 'float.super' Lcom/fs/starfarer/combat/entities/ship/return; 
L554:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/return getMaxTurnRate ()Lcom/fs/starfarer/api/combat/MutableStat; 1 
L559:   aload 6 
L561:   fload 5 
L563:   invokevirtual Method com/fs/starfarer/api/combat/MutableStat modifyMult (Ljava/lang/String;F)V 
L566:   aload_0 
L567:   getfield Field com/fs/starfarer/combat/entities/ship/null 'float.super' Lcom/fs/starfarer/combat/entities/ship/return; 
L570:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/return getAcceleration ()Lcom/fs/starfarer/api/combat/MutableStat; 1 
L575:   aload 6 
L577:   fload 5 
L579:   invokevirtual Method com/fs/starfarer/api/combat/MutableStat modifyMult (Ljava/lang/String;F)V 
L582:   aload_0 
L583:   getfield Field com/fs/starfarer/combat/entities/ship/null 'float.super' Lcom/fs/starfarer/combat/entities/ship/return; 
L586:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/return getDeceleration ()Lcom/fs/starfarer/api/combat/MutableStat; 1 
L591:   aload 6 
L593:   fload 5 
L595:   invokevirtual Method com/fs/starfarer/api/combat/MutableStat modifyMult (Ljava/lang/String;F)V 
L598:   aload_0 
L599:   getfield Field com/fs/starfarer/combat/entities/ship/null 'float.super' Lcom/fs/starfarer/combat/entities/ship/return; 
L602:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/return getTurnAcceleration ()Lcom/fs/starfarer/api/combat/MutableStat; 1 
L607:   aload 6 
L609:   fload 5 
L611:   invokevirtual Method com/fs/starfarer/api/combat/MutableStat modifyMult (Ljava/lang/String;F)V 
L614:   goto L687 

        .stack append Object java/lang/String 
L617:   aload_0 
L618:   getfield Field com/fs/starfarer/combat/entities/ship/null 'float.super' Lcom/fs/starfarer/combat/entities/ship/return; 
L621:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/return getMaxSpeed ()Lcom/fs/starfarer/api/combat/MutableStat; 1 
L626:   aload 6 
L628:   invokevirtual Method com/fs/starfarer/api/combat/MutableStat unmodify (Ljava/lang/String;)V 
L631:   aload_0 
L632:   getfield Field com/fs/starfarer/combat/entities/ship/null 'float.super' Lcom/fs/starfarer/combat/entities/ship/return; 
L635:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/return getMaxTurnRate ()Lcom/fs/starfarer/api/combat/MutableStat; 1 
L640:   aload 6 
L642:   invokevirtual Method com/fs/starfarer/api/combat/MutableStat unmodify (Ljava/lang/String;)V 
L645:   aload_0 
L646:   getfield Field com/fs/starfarer/combat/entities/ship/null 'float.super' Lcom/fs/starfarer/combat/entities/ship/return; 
L649:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/return getAcceleration ()Lcom/fs/starfarer/api/combat/MutableStat; 1 
L654:   aload 6 
L656:   invokevirtual Method com/fs/starfarer/api/combat/MutableStat unmodify (Ljava/lang/String;)V 
L659:   aload_0 
L660:   getfield Field com/fs/starfarer/combat/entities/ship/null 'float.super' Lcom/fs/starfarer/combat/entities/ship/return; 
L663:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/return getDeceleration ()Lcom/fs/starfarer/api/combat/MutableStat; 1 
L668:   aload 6 
L670:   invokevirtual Method com/fs/starfarer/api/combat/MutableStat unmodify (Ljava/lang/String;)V 
L673:   aload_0 
L674:   getfield Field com/fs/starfarer/combat/entities/ship/null 'float.super' Lcom/fs/starfarer/combat/entities/ship/return; 
L677:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/return getTurnAcceleration ()Lcom/fs/starfarer/api/combat/MutableStat; 1 
L682:   aload 6 
L684:   invokevirtual Method com/fs/starfarer/api/combat/MutableStat unmodify (Ljava/lang/String;)V 

        .stack same_extended 
L687:   aload_0 
L688:   fload 4 
L690:   putfield Field com/fs/starfarer/combat/entities/ship/null oO0000 F 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/ship/null Integer 
            stack 
        .end stack 
L693:   fconst_1 
L694:   fstore_2 
L695:   aload_0 
L696:   getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L699:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo getStats ()Lcom/fs/starfarer/combat/entities/ship/o0OO; 1 
L704:   ifnull L737 
L707:   aload_0 
L708:   getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L711:   instanceof com/fs/starfarer/combat/entities/Ship 
L714:   ifeq L737 
L717:   aload_0 
L718:   getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L721:   checkcast com/fs/starfarer/combat/entities/Ship 
L724:   invokevirtual Method com/fs/starfarer/combat/entities/Ship getStats ()Lcom/fs/starfarer/combat/entities/ship/o0OO; 
L727:   invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getDynamic ()Lcom/fs/starfarer/util/DynamicStats; 
L730:   ldc_w 'zero_flux_boost_turn_rate_bonus_mult' 
L733:   invokevirtual Method com/fs/starfarer/util/DynamicStats getValue (Ljava/lang/String;)F 
L736:   fstore_2 

        .stack append Float 
L737:   aload_0 
L738:   getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L741:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo getStats ()Lcom/fs/starfarer/combat/entities/ship/o0OO; 1 
L746:   ifnull L768 
L749:   aload_0 
L750:   aload_0 
L751:   getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L754:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo getStats ()Lcom/fs/starfarer/combat/entities/ship/o0OO; 1 
L759:   invokevirtual Method com/fs/starfarer/combat/entities/ship/o0OO getZeroFluxSpeedBoost ()Lcom/fs/starfarer/api/combat/MutableStat; 
L762:   invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L765:   putfield Field com/fs/starfarer/combat/entities/ship/null 'õO0000' F 

        .stack same 
L768:   aload_0 
L769:   getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L772:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo isEngineBoostActive ()Z 1 
L777:   ifeq L989 
L780:   aload_0 
L781:   getfield Field com/fs/starfarer/combat/entities/ship/null 'new.super' Z 
L784:   ifeq L829 
L787:   aload_0 
L788:   getfield Field com/fs/starfarer/combat/entities/ship/null 'float.super' Lcom/fs/starfarer/combat/entities/ship/return; 
L791:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/return getMaxSpeed ()Lcom/fs/starfarer/api/combat/MutableStat; 1 
L796:   ldc 'zero_flux_boost' 
L798:   invokevirtual Method com/fs/starfarer/api/combat/MutableStat getFlatStatMod (Ljava/lang/String;)Lcom/fs/starfarer/api/combat/MutableStat$StatMod; 
L801:   ifnull L1036 
L804:   aload_0 
L805:   getfield Field com/fs/starfarer/combat/entities/ship/null 'float.super' Lcom/fs/starfarer/combat/entities/ship/return; 
L808:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/return getMaxSpeed ()Lcom/fs/starfarer/api/combat/MutableStat; 1 
L813:   ldc 'zero_flux_boost' 
L815:   invokevirtual Method com/fs/starfarer/api/combat/MutableStat getFlatStatMod (Ljava/lang/String;)Lcom/fs/starfarer/api/combat/MutableStat$StatMod; 
L818:   invokevirtual Method com/fs/starfarer/api/combat/MutableStat$StatMod getValue ()F 
L821:   aload_0 
L822:   getfield Field com/fs/starfarer/combat/entities/ship/null 'õO0000' F 
L825:   fcmpl 
L826:   ifeq L1036 

        .stack same 
L829:   aload_0 
L830:   getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L833:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo isMissile ()Z 1 
L838:   ifne L930 
L841:   aload_0 
L842:   getfield Field com/fs/starfarer/combat/entities/ship/null 'new.super' Z 
L845:   ifne L930 
L848:   aload_0 
L849:   getfield Field com/fs/starfarer/combat/entities/ship/null null Lcom/fs/starfarer/loading/specs/K; 
L852:   aload_0 
L853:   getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L856:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo getHullStyle ()Lcom/fs/starfarer/loading/specs/OoOO; 1 
L861:   aload_0 
L862:   getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L865:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo getHullSize ()Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 1 
L870:   invokevirtual Method com/fs/starfarer/loading/specs/K o00000 (Lcom/fs/starfarer/loading/specs/OoOO;Lcom/fs/starfarer/api/combat/ShipAPI$HullSize;)Lcom/fs/starfarer/loading/specs/e; 
L873:   fconst_1 
L874:   aload_0 
L875:   getfield Field com/fs/starfarer/combat/entities/ship/null oo0000 F 
L878:   aload_0 
L879:   getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L882:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L887:   getfield Field org/lwjgl/util/vector/Vector2f x F 
L890:   aload_0 
L891:   getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L894:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L899:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L902:   aload_0 
L903:   getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L906:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 1 
L911:   getfield Field org/lwjgl/util/vector/Vector2f x F 
L914:   aload_0 
L915:   getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L918:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 1 
L923:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L926:   invokestatic Method com/fs/starfarer/D/M o00000 (Lcom/fs/starfarer/loading/specs/e;FFFFFF)Lsound/Sound; 
L929:   pop 

        .stack same_extended 
L930:   aload_0 
L931:   getfield Field com/fs/starfarer/combat/entities/ship/null 'float.super' Lcom/fs/starfarer/combat/entities/ship/return; 
L934:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/return getMaxSpeed ()Lcom/fs/starfarer/api/combat/MutableStat; 1 
L939:   ldc 'zero_flux_boost' 
L941:   aload_0 
L942:   getfield Field com/fs/starfarer/combat/entities/ship/null 'õO0000' F 
L945:   invokevirtual Method com/fs/starfarer/api/combat/MutableStat modifyFlat (Ljava/lang/String;F)V 
L948:   aload_0 
L949:   getfield Field com/fs/starfarer/combat/entities/ship/null 'float.super' Lcom/fs/starfarer/combat/entities/ship/return; 
L952:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/return getMaxTurnRate ()Lcom/fs/starfarer/api/combat/MutableStat; 1 
L957:   ldc 'zero_flux_boost' 
L959:   ldc_w +10.0f 
L962:   fload_2 
L963:   fmul 
L964:   invokevirtual Method com/fs/starfarer/api/combat/MutableStat modifyFlat (Ljava/lang/String;F)V 
L967:   aload_0 
L968:   getfield Field com/fs/starfarer/combat/entities/ship/null 'new.super' Z 
L971:   ifne L981 
L974:   aload_0 
L975:   getfield Field com/fs/starfarer/combat/entities/ship/null 'ÓO0000' Lcom/fs/starfarer/combat/entities/G; 
L978:   invokevirtual Method com/fs/starfarer/combat/entities/G 'öO0000' ()V 

        .stack same 
L981:   aload_0 
L982:   iconst_1 
L983:   putfield Field com/fs/starfarer/combat/entities/ship/null 'new.super' Z 
L986:   goto L1036 

        .stack same 
L989:   aload_0 
L990:   getfield Field com/fs/starfarer/combat/entities/ship/null 'float.super' Lcom/fs/starfarer/combat/entities/ship/return; 
L993:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/return getMaxSpeed ()Lcom/fs/starfarer/api/combat/MutableStat; 1 
L998:   ldc 'zero_flux_boost' 
L1000:  invokevirtual Method com/fs/starfarer/api/combat/MutableStat unmodify (Ljava/lang/String;)V 
L1003:  aload_0 
L1004:  getfield Field com/fs/starfarer/combat/entities/ship/null 'float.super' Lcom/fs/starfarer/combat/entities/ship/return; 
L1007:  invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/return getMaxTurnRate ()Lcom/fs/starfarer/api/combat/MutableStat; 1 
L1012:  ldc 'zero_flux_boost' 
L1014:  invokevirtual Method com/fs/starfarer/api/combat/MutableStat unmodify (Ljava/lang/String;)V 
L1017:  aload_0 
L1018:  getfield Field com/fs/starfarer/combat/entities/ship/null 'new.super' Z 
L1021:  ifeq L1031 
L1024:  aload_0 
L1025:  getfield Field com/fs/starfarer/combat/entities/ship/null 'ÓO0000' Lcom/fs/starfarer/combat/entities/G; 
L1028:  invokevirtual Method com/fs/starfarer/combat/entities/G while ()V 

        .stack same 
L1031:  aload_0 
L1032:  iconst_0 
L1033:  putfield Field com/fs/starfarer/combat/entities/ship/null 'new.super' Z 

        .stack same 
L1036:  aload_0 
L1037:  getfield Field com/fs/starfarer/combat/entities/ship/null 'new.new' Lcom/fs/starfarer/combat/entities/ship/null$o; 
L1040:  getstatic Field com/fs/starfarer/combat/entities/ship/null$o 'Ó00000' Lcom/fs/starfarer/combat/entities/ship/null$o; 
L1043:  if_acmpne L1084 
L1046:  aload_0 
L1047:  fconst_1 
L1048:  putfield Field com/fs/starfarer/combat/entities/ship/null 'Öo0000' F 
L1051:  aload_0 
L1052:  fconst_1 
L1053:  putfield Field com/fs/starfarer/combat/entities/ship/null OO0000 F 
L1056:  aload_0 
L1057:  fconst_1 
L1058:  putfield Field com/fs/starfarer/combat/entities/ship/null Oo0000 F 
L1061:  aload_0 
L1062:  fconst_1 
L1063:  putfield Field com/fs/starfarer/combat/entities/ship/null 'öO0000' F 
L1066:  aload_0 
L1067:  fconst_1 
L1068:  putfield Field com/fs/starfarer/combat/entities/ship/null 'Óo0000' F 
L1071:  aload_0 
L1072:  fconst_1 
L1073:  putfield Field com/fs/starfarer/combat/entities/ship/null 'class.super' F 
L1076:  aload_0 
L1077:  fconst_0 
L1078:  putfield Field com/fs/starfarer/combat/entities/ship/null 'null.super' F 
L1081:  goto L1463 

        .stack same 
L1084:  aload_0 
L1085:  aload_0 
L1086:  getfield Field com/fs/starfarer/combat/entities/ship/null 'float.super' Lcom/fs/starfarer/combat/entities/ship/return; 
L1089:  invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/return getAcceleration ()Lcom/fs/starfarer/api/combat/MutableStat; 1 
L1094:  invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L1097:  putfield Field com/fs/starfarer/combat/entities/ship/null 'Öo0000' F 
L1100:  aload_0 
L1101:  aload_0 
L1102:  getfield Field com/fs/starfarer/combat/entities/ship/null 'float.super' Lcom/fs/starfarer/combat/entities/ship/return; 
L1105:  invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/return getDeceleration ()Lcom/fs/starfarer/api/combat/MutableStat; 1 
L1110:  invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L1113:  putfield Field com/fs/starfarer/combat/entities/ship/null OO0000 F 
L1116:  aload_0 
L1117:  aload_0 
L1118:  getfield Field com/fs/starfarer/combat/entities/ship/null 'float.super' Lcom/fs/starfarer/combat/entities/ship/return; 
L1121:  invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/return getMaxSpeed ()Lcom/fs/starfarer/api/combat/MutableStat; 1 
L1126:  invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L1129:  putfield Field com/fs/starfarer/combat/entities/ship/null Oo0000 F 
L1132:  aload_0 
L1133:  getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L1136:  instanceof com/fs/starfarer/combat/entities/Ship 
L1139:  ifeq L1226 
L1142:  aload_0 
L1143:  getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L1146:  checkcast com/fs/starfarer/combat/entities/Ship 
L1149:  astore_3 
L1150:  aload_3 
L1151:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isFighter ()Z 
L1154:  ifeq L1226 
L1157:  aload_3 
L1158:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getWing ()Lcom/fs/starfarer/combat/ai/M; 
L1161:  ifnull L1226 
L1164:  aload_3 
L1165:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getWing ()Lcom/fs/starfarer/combat/ai/M; 
L1168:  invokevirtual Method com/fs/starfarer/combat/ai/M getSourceShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L1171:  ifnull L1226 
L1174:  aload_3 
L1175:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getWing ()Lcom/fs/starfarer/combat/ai/M; 
L1178:  invokevirtual Method com/fs/starfarer/combat/ai/M getSourceShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L1181:  astore 4 
L1183:  aload_3 
L1184:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getWing ()Lcom/fs/starfarer/combat/ai/M; 
L1187:  aload_3 
L1188:  invokevirtual Method com/fs/starfarer/combat/ai/M isReturning (Lcom/fs/starfarer/api/combat/ShipAPI;)Z 
L1191:  istore 5 
L1193:  aload 4 
L1195:  invokevirtual Method com/fs/starfarer/combat/entities/Ship isPullBackFighters ()Z 
L1198:  ifne L1206 
L1201:  iload 5 
L1203:  ifeq L1226 

        .stack append Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/entities/Ship Integer 
L1206:  aload_0 
L1207:  aload_0 
L1208:  getfield Field com/fs/starfarer/combat/entities/ship/null Oo0000 F 
L1211:  aload 4 
L1213:  invokevirtual Method com/fs/starfarer/combat/entities/Ship getMaxSpeed ()F 
L1216:  ldc_w +20.0f 
L1219:  fadd 
L1220:  invokestatic Method java/lang/Math max (FF)F 
L1223:  putfield Field com/fs/starfarer/combat/entities/ship/null Oo0000 F 

        .stack chop 3 
L1226:  aload_0 
L1227:  aload_0 
L1228:  getfield Field com/fs/starfarer/combat/entities/ship/null 'float.super' Lcom/fs/starfarer/combat/entities/ship/return; 
L1231:  invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/return getMaxTurnRate ()Lcom/fs/starfarer/api/combat/MutableStat; 1 
L1236:  invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L1239:  putfield Field com/fs/starfarer/combat/entities/ship/null 'öO0000' F 
L1242:  aload_0 
L1243:  aload_0 
L1244:  getfield Field com/fs/starfarer/combat/entities/ship/null 'float.super' Lcom/fs/starfarer/combat/entities/ship/return; 
L1247:  invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/return getTurnAcceleration ()Lcom/fs/starfarer/api/combat/MutableStat; 1 
L1252:  invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L1255:  putfield Field com/fs/starfarer/combat/entities/ship/null 'Óo0000' F 
L1258:  aload_0 
L1259:  aload_0 
L1260:  getfield Field com/fs/starfarer/combat/entities/ship/null 'Óo0000' F 
L1263:  ldc +0.5f 
L1265:  fmul 
L1266:  putfield Field com/fs/starfarer/combat/entities/ship/null 'class.super' F 
L1269:  aload_0 
L1270:  getfield Field com/fs/starfarer/combat/entities/ship/null 'Öo0000' F 
L1273:  fconst_1 
L1274:  fcmpg 
L1275:  ifge L1283 
L1278:  aload_0 
L1279:  fconst_1 
L1280:  putfield Field com/fs/starfarer/combat/entities/ship/null 'Öo0000' F 

        .stack same 
L1283:  aload_0 
L1284:  getfield Field com/fs/starfarer/combat/entities/ship/null OO0000 F 
L1287:  fconst_1 
L1288:  fcmpg 
L1289:  ifge L1297 
L1292:  aload_0 
L1293:  fconst_1 
L1294:  putfield Field com/fs/starfarer/combat/entities/ship/null OO0000 F 

        .stack same 
L1297:  aload_0 
L1298:  getfield Field com/fs/starfarer/combat/entities/ship/null Oo0000 F 
L1301:  fconst_1 
L1302:  fcmpg 
L1303:  ifge L1311 
L1306:  aload_0 
L1307:  fconst_1 
L1308:  putfield Field com/fs/starfarer/combat/entities/ship/null Oo0000 F 

        .stack same 
L1311:  aload_0 
L1312:  getfield Field com/fs/starfarer/combat/entities/ship/null 'öO0000' F 
L1315:  fconst_1 
L1316:  fcmpg 
L1317:  ifge L1325 
L1320:  aload_0 
L1321:  fconst_1 
L1322:  putfield Field com/fs/starfarer/combat/entities/ship/null 'öO0000' F 

        .stack same 
L1325:  aload_0 
L1326:  getfield Field com/fs/starfarer/combat/entities/ship/null 'Óo0000' F 
L1329:  fconst_1 
L1330:  fcmpg 
L1331:  ifge L1339 
L1334:  aload_0 
L1335:  fconst_1 
L1336:  putfield Field com/fs/starfarer/combat/entities/ship/null 'Óo0000' F 

        .stack same 
L1339:  aload_0 
L1340:  getfield Field com/fs/starfarer/combat/entities/ship/null 'class.super' F 
L1343:  fconst_1 
L1344:  fcmpg 
L1345:  ifge L1353 
L1348:  aload_0 
L1349:  fconst_1 
L1350:  putfield Field com/fs/starfarer/combat/entities/ship/null 'class.super' F 

        .stack same 
L1353:  aload_0 
L1354:  fconst_0 
L1355:  putfield Field com/fs/starfarer/combat/entities/ship/null 'null.super' F 
L1358:  aload_0 
L1359:  invokevirtual Method com/fs/starfarer/combat/entities/ship/null getEngineGlow ()Lcom/fs/starfarer/combat/entities/G; 
L1362:  invokevirtual Method com/fs/starfarer/combat/entities/G oO0000 ()Z 
L1365:  istore_3 
L1366:  aload_0 
L1367:  getfield Field com/fs/starfarer/combat/entities/ship/null new Ljava/util/List; 
L1370:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L1375:  astore 5 
L1377:  goto L1440 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/ship/null Integer Float Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L1380:  aload 5 
L1382:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L1387:  checkcast com/fs/starfarer/combat/entities/ship/null$oo 
L1390:  astore 4 
L1392:  aload 4 
L1394:  invokevirtual Method com/fs/starfarer/combat/entities/ship/null$oo getHealthTracker ()Lcom/fs/starfarer/combat/entities/ship/super; 
L1397:  invokevirtual Method com/fs/starfarer/combat/entities/ship/super class ()Z 
L1400:  ifeq L1440 
L1403:  aload 4 
L1405:  invokevirtual Method com/fs/starfarer/combat/entities/ship/null$oo getEngineSlot ()Lcom/fs/starfarer/loading/specs/EngineSlot; 
L1408:  invokevirtual Method com/fs/starfarer/loading/specs/EngineSlot isSystemActivated ()Z 
L1411:  ifeq L1418 
L1414:  iload_3 
L1415:  ifeq L1440 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/ship/null Integer Float Integer Object com/fs/starfarer/combat/entities/ship/null$oo Object java/util/Iterator 
            stack 
        .end stack 
L1418:  aload_0 
L1419:  dup 
L1420:  getfield Field com/fs/starfarer/combat/entities/ship/null 'null.super' F 
L1423:  aload 4 
L1425:  invokevirtual Method com/fs/starfarer/combat/entities/ship/null$oo getContribution ()F 
L1428:  aload 4 
L1430:  invokevirtual Method com/fs/starfarer/combat/entities/ship/null$oo getDriftContribution ()F 
L1433:  fmul 
L1434:  fconst_2 
L1435:  fmul 
L1436:  fadd 
L1437:  putfield Field com/fs/starfarer/combat/entities/ship/null 'null.super' F 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/ship/null Integer Float Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L1440:  aload 5 
L1442:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L1447:  ifne L1380 
L1450:  aload_0 
L1451:  dup 
L1452:  getfield Field com/fs/starfarer/combat/entities/ship/null 'null.super' F 
L1455:  aload_0 
L1456:  getfield Field com/fs/starfarer/combat/entities/ship/null 'Óo0000' F 
L1459:  fmul 
L1460:  putfield Field com/fs/starfarer/combat/entities/ship/null 'null.super' F 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/ship/null Integer Float 
            stack 
        .end stack 
L1463:  return 
L1464:  
    .end code 
.end method 

.method public getDriftDueToEngineDamage : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/ship/null 'null.super' F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method private String : ()Z 
    .code stack 2 locals 5 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L4:     invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo isFighter ()Z 1 
L9:     ifeq L14 
L12:    iconst_0 
L13:    ireturn 

        .stack same 
L14:    aload_0 
L15:    getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L18:    invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo isHulk ()Z 1 
L23:    ifeq L28 
L26:    iconst_0 
L27:    ireturn 

        .stack same 
L28:    invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L31:    astore_1 
L32:    aload_1 
L33:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getPlayerShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L36:    astore_2 
L37:    aload_1 
L38:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getCombatUI ()Lcom/fs/starfarer/combat/K; 
L41:    invokeinterface InterfaceMethod com/fs/starfarer/combat/K getEntityToFollow ()Lcom/fs/starfarer/combat/new/OoOO$o; 1 
L46:    astore_3 
L47:    aload_0 
L48:    getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L51:    aload_2 
L52:    if_acmpeq L90 
L55:    aload_0 
L56:    getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L59:    invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo isRecentlyShotByPlayer ()Z 1 
L64:    ifne L90 
L67:    aload_0 
L68:    getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L71:    aload_3 
L72:    if_acmpeq L90 
L75:    aload_0 
L76:    getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L79:    aload_2 
L80:    invokevirtual Method com/fs/starfarer/combat/entities/Ship getShipTarget ()Lcom/fs/starfarer/combat/entities/Ship; 
L83:    if_acmpeq L90 
L86:    iconst_0 
L87:    goto L91 

        .stack append Object com/fs/starfarer/combat/CombatEngine Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/new/OoOO$o 
L90:    iconst_1 

        .stack stack_1 Integer 
L91:    istore 4 
L93:    iload 4 
L95:    ireturn 
L96:    
    .end code 
.end method 

.method public getStats : ()Lcom/fs/starfarer/combat/entities/ship/return; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/ship/null 'float.super' Lcom/fs/starfarer/combat/entities/ship/return; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public getCruiseSpeed : ()F 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/ship/null 'float.super' Lcom/fs/starfarer/combat/entities/ship/return; 
L4:     invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/return getMaxSpeed ()Lcom/fs/starfarer/api/combat/MutableStat; 1 
L9:     invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L12:    fstore_1 
L13:    aload_0 
L14:    getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L17:    invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo isEngineBoostActive ()Z 1 
L22:    ifne L32 
L25:    fload_1 
L26:    aload_0 
L27:    getfield Field com/fs/starfarer/combat/entities/ship/null 'õO0000' F 
L30:    fadd 
L31:    fstore_1 

        .stack append Float 
L32:    fload_1 
L33:    freturn 
L34:    
    .end code 
.end method 

.method public wasEngineUsedLastFrame : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/ship/null 'Ôo0000' Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public getMaxSpeedWithoutBoost : ()F 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/ship/null 'float.super' Lcom/fs/starfarer/combat/entities/ship/return; 
L4:     invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/return getMaxSpeed ()Lcom/fs/starfarer/api/combat/MutableStat; 1 
L9:     invokevirtual Method com/fs/starfarer/api/combat/MutableStat getModifiedValue ()F 
L12:    fstore_1 
L13:    aload_0 
L14:    getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L17:    invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo isEngineBoostActive ()Z 1 
L22:    ifeq L32 
L25:    fload_1 
L26:    aload_0 
L27:    getfield Field com/fs/starfarer/combat/entities/ship/null 'õO0000' F 
L30:    fsub 
L31:    fstore_1 

        .stack append Float 
L32:    fload_1 
L33:    freturn 
L34:    
    .end code 
.end method 

.method public isAccelerating : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/ship/null 'ÖO0000' Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public isAcceleratingBackwards : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/ship/null class Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public isDecelerating : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/ship/null 'ö00000' Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public isTurningLeft : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/ship/null 'õo0000' Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public isTurningRight : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/ship/null 'interface' Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public isStrafingLeft : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/ship/null 'ÔO0000' Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public isStrafingRight : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/ship/null o00000 Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public isIdle : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/ship/null isAccelerating ()Z 
L4:     ifne L51 
L7:     aload_0 
L8:     invokevirtual Method com/fs/starfarer/combat/entities/ship/null isAcceleratingBackwards ()Z 
L11:    ifne L51 
L14:    aload_0 
L15:    invokevirtual Method com/fs/starfarer/combat/entities/ship/null isDecelerating ()Z 
L18:    ifne L51 
L21:    aload_0 
L22:    invokevirtual Method com/fs/starfarer/combat/entities/ship/null isTurningLeft ()Z 
L25:    ifne L51 
L28:    aload_0 
L29:    invokevirtual Method com/fs/starfarer/combat/entities/ship/null isTurningRight ()Z 
L32:    ifne L51 
L35:    aload_0 
L36:    invokevirtual Method com/fs/starfarer/combat/entities/ship/null isStrafingLeft ()Z 
L39:    ifne L51 
L42:    aload_0 
L43:    invokevirtual Method com/fs/starfarer/combat/entities/ship/null isStrafingRight ()Z 
L46:    ifne L51 
L49:    iconst_1 
L50:    ireturn 

        .stack same 
L51:    iconst_0 
L52:    ireturn 
L53:    
    .end code 
.end method 

.method public processCommands : (Ljava/util/List;F)V 
    .signature (Ljava/util/List<Lcom/fs/starfarer/combat/entities/Ship$Oo;>;F)V 
    .code stack 9 locals 8 
L0:     aload_1 
L1:     invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L6:     astore_3 
L7:     aload_0 
L8:     iconst_0 
L9:     putfield Field com/fs/starfarer/combat/entities/ship/null 'Ôo0000' Z 
L12:    aload_0 
L13:    aload_0 
L14:    aload_0 
L15:    aload_0 
L16:    aload_0 
L17:    aload_0 
L18:    aload_0 
L19:    iconst_0 
L20:    dup_x1 
L21:    putfield Field com/fs/starfarer/combat/entities/ship/null o00000 Z 
L24:    dup_x1 
L25:    putfield Field com/fs/starfarer/combat/entities/ship/null 'ÔO0000' Z 
L28:    dup_x1 
L29:    putfield Field com/fs/starfarer/combat/entities/ship/null 'interface' Z 
L32:    dup_x1 
L33:    putfield Field com/fs/starfarer/combat/entities/ship/null 'õo0000' Z 
L36:    dup_x1 
L37:    putfield Field com/fs/starfarer/combat/entities/ship/null 'ö00000' Z 
L40:    dup_x1 
L41:    putfield Field com/fs/starfarer/combat/entities/ship/null class Z 
L44:    putfield Field com/fs/starfarer/combat/entities/ship/null 'ÖO0000' Z 
L47:    aload_0 
L48:    invokevirtual Method com/fs/starfarer/combat/entities/ship/null isDisabled ()Z 
L51:    ifne L138 
L54:    aload_0 
L55:    invokevirtual Method com/fs/starfarer/combat/entities/ship/null isFlamingOut ()Z 
L58:    ifeq L148 
L61:    goto L138 

        .stack append Object java/util/Iterator 
L64:    aload_3 
L65:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L70:    checkcast com/fs/starfarer/combat/entities/Ship$Oo 
L73:    astore 4 
L75:    invokestatic Method com/fs/starfarer/combat/entities/ship/null $SWITCH_TABLE$com$fs$starfarer$combat$entities$Ship$CommandType ()[I 
L78:    aload 4 
L80:    getfield Field com/fs/starfarer/combat/entities/Ship$Oo 'Ò00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L83:    invokevirtual Method com/fs/starfarer/combat/entities/Ship$oo ordinal ()I 
L86:    iaload 
L87:    tableswitch 1 
            L132 
            L132 
            L132 
            L132 
            L132 
            L132 
            L132 
            L132 
            default : L138 


        .stack append Object com/fs/starfarer/combat/entities/Ship$Oo 
L132:   aload_3 
L133:   invokeinterface InterfaceMethod java/util/Iterator remove ()V 1 

        .stack chop 1 
L138:   aload_3 
L139:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L144:   ifne L64 
L147:   return 

        .stack same 
L148:   fload_2 
L149:   fconst_0 
L150:   fcmpg 
L151:   ifgt L155 
L154:   return 

        .stack same 
L155:   aload_0 
L156:   getfield Field com/fs/starfarer/combat/entities/ship/null 'õ00000' Z 
L159:   ifeq L166 
L162:   iconst_0 
L163:   goto L167 

        .stack same 
L166:   iconst_1 

        .stack stack_1 Integer 
L167:   istore 4 
L169:   aload_0 
L170:   iconst_0 
L171:   putfield Field com/fs/starfarer/combat/entities/ship/null 'õ00000' Z 
L174:   iconst_0 
L175:   istore 5 
L177:   goto L436 

        .stack append Integer Integer 
L180:   aload_3 
L181:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L186:   checkcast com/fs/starfarer/combat/entities/Ship$Oo 
L189:   astore 6 
L191:   invokestatic Method com/fs/starfarer/combat/entities/ship/null $SWITCH_TABLE$com$fs$starfarer$combat$entities$Ship$CommandType ()[I 
L194:   aload 6 
L196:   getfield Field com/fs/starfarer/combat/entities/Ship$Oo 'Ò00000' Lcom/fs/starfarer/combat/entities/Ship$oo; 
L199:   invokevirtual Method com/fs/starfarer/combat/entities/Ship$oo ordinal ()I 
L202:   iaload 
L203:   tableswitch 1 
            L248 
            L271 
            L294 
            L319 
            L346 
            L395 
            L371 
            L420 
            default : L436 


        .stack append Object com/fs/starfarer/combat/entities/Ship$Oo 
L248:   aload_0 
L249:   iconst_1 
L250:   putfield Field com/fs/starfarer/combat/entities/ship/null 'õo0000' Z 
L253:   aload_0 
L254:   fload_2 
L255:   iconst_0 
L256:   invokevirtual Method com/fs/starfarer/combat/entities/ship/null 'super' (FZ)V 
L259:   iconst_1 
L260:   istore 5 
L262:   aload_3 
L263:   invokeinterface InterfaceMethod java/util/Iterator remove ()V 1 
L268:   goto L436 

        .stack same 
L271:   aload_0 
L272:   iconst_1 
L273:   putfield Field com/fs/starfarer/combat/entities/ship/null 'interface' Z 
L276:   aload_0 
L277:   fload_2 
L278:   iconst_1 
L279:   invokevirtual Method com/fs/starfarer/combat/entities/ship/null 'super' (FZ)V 
L282:   iconst_1 
L283:   istore 5 
L285:   aload_3 
L286:   invokeinterface InterfaceMethod java/util/Iterator remove ()V 1 
L291:   goto L436 

        .stack same 
L294:   aload_0 
L295:   iconst_1 
L296:   putfield Field com/fs/starfarer/combat/entities/ship/null 'ÔO0000' Z 
L299:   aload_0 
L300:   fload_2 
L301:   fconst_1 
L302:   invokevirtual Method com/fs/starfarer/combat/entities/ship/null 'super' (FF)V 
L305:   aload_3 
L306:   invokeinterface InterfaceMethod java/util/Iterator remove ()V 1 
L311:   aload_0 
L312:   iconst_1 
L313:   putfield Field com/fs/starfarer/combat/entities/ship/null 'Ôo0000' Z 
L316:   goto L436 

        .stack same 
L319:   aload_0 
L320:   iconst_1 
L321:   putfield Field com/fs/starfarer/combat/entities/ship/null o00000 Z 
L324:   aload_0 
L325:   fload_2 
L326:   ldc_w -1.0f 
L329:   invokevirtual Method com/fs/starfarer/combat/entities/ship/null 'super' (FF)V 
L332:   aload_3 
L333:   invokeinterface InterfaceMethod java/util/Iterator remove ()V 1 
L338:   aload_0 
L339:   iconst_1 
L340:   putfield Field com/fs/starfarer/combat/entities/ship/null 'Ôo0000' Z 
L343:   goto L436 

        .stack same 
L346:   aload_0 
L347:   iconst_1 
L348:   putfield Field com/fs/starfarer/combat/entities/ship/null 'ÖO0000' Z 
L351:   aload_0 
L352:   fload_2 
L353:   iconst_0 
L354:   invokevirtual Method com/fs/starfarer/combat/entities/ship/null 'Ò00000' (FZ)V 
L357:   aload_3 
L358:   invokeinterface InterfaceMethod java/util/Iterator remove ()V 1 
L363:   aload_0 
L364:   iconst_1 
L365:   putfield Field com/fs/starfarer/combat/entities/ship/null 'Ôo0000' Z 
L368:   goto L436 

        .stack same 
L371:   aload_0 
L372:   iconst_1 
L373:   putfield Field com/fs/starfarer/combat/entities/ship/null 'ö00000' Z 
L376:   aload_0 
L377:   fload_2 
L378:   invokevirtual Method com/fs/starfarer/combat/entities/ship/null 'Ò00000' (F)V 
L381:   aload_3 
L382:   invokeinterface InterfaceMethod java/util/Iterator remove ()V 1 
L387:   aload_0 
L388:   iconst_1 
L389:   putfield Field com/fs/starfarer/combat/entities/ship/null 'Ôo0000' Z 
L392:   goto L436 

        .stack same 
L395:   aload_0 
L396:   iconst_1 
L397:   putfield Field com/fs/starfarer/combat/entities/ship/null class Z 
L400:   aload_0 
L401:   fload_2 
L402:   iconst_1 
L403:   invokevirtual Method com/fs/starfarer/combat/entities/ship/null 'Ò00000' (FZ)V 
L406:   aload_3 
L407:   invokeinterface InterfaceMethod java/util/Iterator remove ()V 1 
L412:   aload_0 
L413:   iconst_1 
L414:   putfield Field com/fs/starfarer/combat/entities/ship/null 'Ôo0000' Z 
L417:   goto L436 

        .stack same 
L420:   aload_0 
L421:   fload_2 
L422:   invokevirtual Method com/fs/starfarer/combat/entities/ship/null 'super' (F)V 
L425:   aload_3 
L426:   invokeinterface InterfaceMethod java/util/Iterator remove ()V 1 
L431:   aload_0 
L432:   iconst_1 
L433:   putfield Field com/fs/starfarer/combat/entities/ship/null 'Ôo0000' Z 

        .stack chop 1 
L436:   aload_3 
L437:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L442:   ifne L180 
L445:   iload 5 
L447:   ifeq L459 
L450:   aload_0 
L451:   getfield Field com/fs/starfarer/combat/entities/ship/null 'null.super' F 
L454:   fconst_0 
L455:   fcmpl 
L456:   ifeq L578 

        .stack same 
L459:   aload_0 
L460:   getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L463:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo isHulk ()Z 1 
L468:   ifne L578 
L471:   aload_0 
L472:   getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L475:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo getAngularVelocity ()F 1 
L480:   fstore 6 
L482:   aload_0 
L483:   getfield Field com/fs/starfarer/combat/entities/ship/null 'null.super' F 
L486:   fconst_0 
L487:   fcmpl 
L488:   ifeq L513 
L491:   aload_0 
L492:   getfield Field com/fs/starfarer/combat/entities/ship/null 'null.super' F 
L495:   fload_2 
L496:   fmul 
L497:   fstore 7 
L499:   aload_0 
L500:   getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L503:   fload 6 
L505:   fload 7 
L507:   fadd 
L508:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo setAngularVelocity (F)V 2 

        .stack append Float 
L513:   iload 5 
L515:   ifne L578 
L518:   aload_0 
L519:   getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L522:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo getAngularVelocity ()F 1 
L527:   fstore 6 
L529:   fload_2 
L530:   aload_0 
L531:   getfield Field com/fs/starfarer/combat/entities/ship/null 'class.super' F 
L534:   fmul 
L535:   fstore 7 
L537:   fload 7 
L539:   fload 6 
L541:   invokestatic Method java/lang/Math abs (F)F 
L544:   fcmpl 
L545:   ifle L558 
L548:   fload 6 
L550:   fload 6 
L552:   invokestatic Method java/lang/Math signum (F)F 
L555:   fmul 
L556:   fstore 7 

        .stack append Float 
L558:   aload_0 
L559:   getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L562:   fload 6 
L564:   fload 7 
L566:   fload 6 
L568:   invokestatic Method java/lang/Math signum (F)F 
L571:   fmul 
L572:   fsub 
L573:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo setAngularVelocity (F)V 2 

        .stack chop 2 
L578:   return 
L579:   
    .end code 
.end method 

.method private 'super' : (FZ)V 
    .code stack 2 locals 7 
L0:     iload_2 
L1:     ifeq L10 
L4:     ldc_w -1.0f 
L7:     goto L11 

        .stack same 
L10:    fconst_1 

        .stack stack_1 Float 
L11:    fstore_3 
L12:    aload_0 
L13:    getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L16:    invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo getAngularVelocity ()F 1 
L21:    fstore 4 
L23:    fload_3 
L24:    fload_1 
L25:    fmul 
L26:    aload_0 
L27:    getfield Field com/fs/starfarer/combat/entities/ship/null 'Óo0000' F 
L30:    fmul 
L31:    fstore 5 
L33:    fload 4 
L35:    invokestatic Method java/lang/Math abs (F)F 
L38:    aload_0 
L39:    getfield Field com/fs/starfarer/combat/entities/ship/null 'öO0000' F 
L42:    fcmpl 
L43:    ifle L90 
L46:    fload 4 
L48:    invokestatic Method java/lang/Math signum (F)F 
L51:    fload_1 
L52:    fmul 
L53:    aload_0 
L54:    getfield Field com/fs/starfarer/combat/entities/ship/null 'Óo0000' F 
L57:    fmul 
L58:    fconst_2 
L59:    fmul 
L60:    fstore 6 
L62:    fload 4 
L64:    invokestatic Method java/lang/Math abs (F)F 
L67:    fload 6 
L69:    invokestatic Method java/lang/Math abs (F)F 
L72:    fcmpg 
L73:    ifge L80 
L76:    fload 4 
L78:    fstore 6 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/ship/null Float Integer Float Float Float Float 
            stack 
        .end stack 
L80:    fload 4 
L82:    fload 6 
L84:    fsub 
L85:    fstore 4 
L87:    goto L140 

        .stack chop 1 
L90:    fload 4 
L92:    fload 5 
L94:    fadd 
L95:    invokestatic Method java/lang/Math abs (F)F 
L98:    aload_0 
L99:    getfield Field com/fs/starfarer/combat/entities/ship/null 'öO0000' F 
L102:   fcmpl 
L103:   ifle L117 
L106:   aload_0 
L107:   getfield Field com/fs/starfarer/combat/entities/ship/null 'öO0000' F 
L110:   fload_3 
L111:   fmul 
L112:   fstore 4 
L114:   goto L140 

        .stack same 
L117:   fload 4 
L119:   fload 5 
L121:   fadd 
L122:   invokestatic Method java/lang/Math abs (F)F 
L125:   aload_0 
L126:   getfield Field com/fs/starfarer/combat/entities/ship/null 'öO0000' F 
L129:   fcmpg 
L130:   ifgt L140 
L133:   fload 4 
L135:   fload 5 
L137:   fadd 
L138:   fstore 4 

        .stack same 
L140:   aload_0 
L141:   getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L144:   fload 4 
L146:   invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo setAngularVelocity (F)V 2 
L151:   return 
L152:   
    .end code 
.end method 

.method private 'super' : (FF)V 
    .code stack 3 locals 8 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L4:     invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo getFacing ()F 1 
L9:     ldc_w +90.0f 
L12:    fload_2 
L13:    fmul 
L14:    fadd 
L15:    fstore_3 
L16:    fload_3 
L17:    invokestatic Method com/fs/starfarer/prototype/Utils 'Ó00000' (F)Lorg/lwjgl/util/vector/Vector2f; 
L20:    astore 4 
L22:    aload 4 
L24:    fload_1 
L25:    aload_0 
L26:    getfield Field com/fs/starfarer/combat/entities/ship/null 'Öo0000' F 
L29:    fmul 
L30:    aload_0 
L31:    getfield Field com/fs/starfarer/combat/entities/ship/null while F 
L34:    fmul 
L35:    invokevirtual Method org/lwjgl/util/vector/Vector2f scale (F)Lorg/lwjgl/util/vector/Vector; 
L38:    pop 
L39:    aload_0 
L40:    getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L43:    invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 1 
L48:    astore 5 
L50:    aload 5 
L52:    aload 4 
L54:    aload 5 
L56:    invokestatic Method org/lwjgl/util/vector/Vector2f add (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)Lorg/lwjgl/util/vector/Vector2f; 
L59:    pop 
L60:    aload 5 
L62:    invokevirtual Method org/lwjgl/util/vector/Vector2f length ()F 
L65:    fstore 6 
L67:    fload 6 
L69:    aload_0 
L70:    getfield Field com/fs/starfarer/combat/entities/ship/null Oo0000 F 
L73:    fcmpl 
L74:    iflt L123 
L77:    aload_0 
L78:    getfield Field com/fs/starfarer/combat/entities/ship/null 'Öo0000' F 
L81:    fconst_2 
L82:    fmul 
L83:    fload_1 
L84:    fmul 
L85:    fstore 7 
L87:    fload 6 
L89:    fload 7 
L91:    fsub 
L92:    aload_0 
L93:    getfield Field com/fs/starfarer/combat/entities/ship/null Oo0000 F 
L96:    fcmpg 
L97:    ifge L109 
L100:   fload 6 
L102:   aload_0 
L103:   getfield Field com/fs/starfarer/combat/entities/ship/null Oo0000 F 
L106:   fsub 
L107:   fstore 7 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/ship/null Float Float Float Object org/lwjgl/util/vector/Vector2f Object org/lwjgl/util/vector/Vector2f Float Float 
            stack 
        .end stack 
L109:   aload 5 
L111:   fload 6 
L113:   fload 7 
L115:   fsub 
L116:   fload 6 
L118:   fdiv 
L119:   invokevirtual Method org/lwjgl/util/vector/Vector2f scale (F)Lorg/lwjgl/util/vector/Vector; 
L122:   pop 

        .stack chop 1 
L123:   aload_0 
L124:   getfield Field com/fs/starfarer/combat/entities/ship/null 'ÓO0000' Lcom/fs/starfarer/combat/entities/G; 
L127:   fload_1 
L128:   invokevirtual Method com/fs/starfarer/combat/entities/G 'Ô00000' (F)V 
L131:   return 
L132:   
    .end code 
.end method 

.method private 'Ò00000' : (FZ)V 
    .code stack 3 locals 8 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L4:     invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo getFacing ()F 1 
L9:     fstore_3 
L10:    iload_2 
L11:    ifeq L20 
L14:    fload_3 
L15:    ldc_w +180.0f 
L18:    fadd 
L19:    fstore_3 

        .stack append Float 
L20:    fload_3 
L21:    invokestatic Method com/fs/starfarer/prototype/Utils 'Ó00000' (F)Lorg/lwjgl/util/vector/Vector2f; 
L24:    astore 4 
L26:    iload_2 
L27:    ifeq L45 
L30:    aload 4 
L32:    fload_1 
L33:    aload_0 
L34:    getfield Field com/fs/starfarer/combat/entities/ship/null OO0000 F 
L37:    fmul 
L38:    invokevirtual Method org/lwjgl/util/vector/Vector2f scale (F)Lorg/lwjgl/util/vector/Vector; 
L41:    pop 
L42:    goto L57 

        .stack append Object org/lwjgl/util/vector/Vector2f 
L45:    aload 4 
L47:    fload_1 
L48:    aload_0 
L49:    getfield Field com/fs/starfarer/combat/entities/ship/null 'Öo0000' F 
L52:    fmul 
L53:    invokevirtual Method org/lwjgl/util/vector/Vector2f scale (F)Lorg/lwjgl/util/vector/Vector; 
L56:    pop 

        .stack same 
L57:    aload_0 
L58:    getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L61:    invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 1 
L66:    astore 5 
L68:    aload 5 
L70:    aload 4 
L72:    aload 5 
L74:    invokestatic Method org/lwjgl/util/vector/Vector2f add (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)Lorg/lwjgl/util/vector/Vector2f; 
L77:    pop 
L78:    aload 5 
L80:    invokevirtual Method org/lwjgl/util/vector/Vector2f length ()F 
L83:    fstore 6 
L85:    fload 6 
L87:    aload_0 
L88:    getfield Field com/fs/starfarer/combat/entities/ship/null Oo0000 F 
L91:    fcmpl 
L92:    iflt L148 
L95:    aload_0 
L96:    getfield Field com/fs/starfarer/combat/entities/ship/null 'Öo0000' F 
L99:    aload_0 
L100:   getfield Field com/fs/starfarer/combat/entities/ship/null OO0000 F 
L103:   invokestatic Method java/lang/Math max (FF)F 
L106:   fconst_2 
L107:   fmul 
L108:   fload_1 
L109:   fmul 
L110:   fstore 7 
L112:   fload 6 
L114:   fload 7 
L116:   fsub 
L117:   aload_0 
L118:   getfield Field com/fs/starfarer/combat/entities/ship/null Oo0000 F 
L121:   fcmpg 
L122:   ifge L134 
L125:   fload 6 
L127:   aload_0 
L128:   getfield Field com/fs/starfarer/combat/entities/ship/null Oo0000 F 
L131:   fsub 
L132:   fstore 7 

        .stack append Object org/lwjgl/util/vector/Vector2f Float Float 
L134:   aload 5 
L136:   fload 6 
L138:   fload 7 
L140:   fsub 
L141:   fload 6 
L143:   fdiv 
L144:   invokevirtual Method org/lwjgl/util/vector/Vector2f scale (F)Lorg/lwjgl/util/vector/Vector; 
L147:   pop 

        .stack chop 1 
L148:   iload_2 
L149:   ifeq L163 
L152:   aload_0 
L153:   getfield Field com/fs/starfarer/combat/entities/ship/null 'ÓO0000' Lcom/fs/starfarer/combat/entities/G; 
L156:   fload_1 
L157:   invokevirtual Method com/fs/starfarer/combat/entities/G 'Ô00000' (F)V 
L160:   goto L171 

        .stack same 
L163:   aload_0 
L164:   getfield Field com/fs/starfarer/combat/entities/ship/null 'ÓO0000' Lcom/fs/starfarer/combat/entities/G; 
L167:   fload_1 
L168:   invokevirtual Method com/fs/starfarer/combat/entities/G new (F)V 

        .stack same 
L171:   return 
L172:   
    .end code 
.end method 

.method private 'Ò00000' : (F)V 
    .code stack 3 locals 6 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L4:     invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 1 
L9:     astore_2 
L10:    new org/lwjgl/util/vector/Vector2f 
L13:    dup 
L14:    aload_2 
L15:    invokespecial Method org/lwjgl/util/vector/Vector2f <init> (Lorg/lwjgl/util/vector/ReadableVector2f;)V 
L18:    astore_3 
L19:    aload_3 
L20:    invokevirtual Method org/lwjgl/util/vector/Vector2f length ()F 
L23:    fconst_0 
L24:    fcmpl 
L25:    ifeq L143 
L28:    aload_3 
L29:    invokevirtual Method org/lwjgl/util/vector/Vector2f normalise ()Lorg/lwjgl/util/vector/Vector; 
L32:    pop 
L33:    aload_3 
L34:    ldc_w -1.0f 
L37:    invokevirtual Method org/lwjgl/util/vector/Vector2f scale (F)Lorg/lwjgl/util/vector/Vector; 
L40:    pop 
L41:    aload_3 
L42:    fload_1 
L43:    aload_0 
L44:    getfield Field com/fs/starfarer/combat/entities/ship/null OO0000 F 
L47:    fmul 
L48:    invokevirtual Method org/lwjgl/util/vector/Vector2f scale (F)Lorg/lwjgl/util/vector/Vector; 
L51:    pop 
L52:    aload_2 
L53:    aload_3 
L54:    aload_2 
L55:    invokestatic Method org/lwjgl/util/vector/Vector2f add (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)Lorg/lwjgl/util/vector/Vector2f; 
L58:    pop 
L59:    aload_2 
L60:    invokevirtual Method org/lwjgl/util/vector/Vector2f length ()F 
L63:    fstore 4 
L65:    fload 4 
L67:    aload_0 
L68:    getfield Field com/fs/starfarer/combat/entities/ship/null Oo0000 F 
L71:    fcmpl 
L72:    iflt L120 
L75:    aload_0 
L76:    getfield Field com/fs/starfarer/combat/entities/ship/null 'Öo0000' F 
L79:    fconst_2 
L80:    fmul 
L81:    fload_1 
L82:    fmul 
L83:    fstore 5 
L85:    fload 4 
L87:    fload 5 
L89:    fsub 
L90:    aload_0 
L91:    getfield Field com/fs/starfarer/combat/entities/ship/null Oo0000 F 
L94:    fcmpg 
L95:    ifge L107 
L98:    fload 4 
L100:   aload_0 
L101:   getfield Field com/fs/starfarer/combat/entities/ship/null Oo0000 F 
L104:   fsub 
L105:   fstore 5 

        .stack full 
            locals Object com/fs/starfarer/combat/entities/ship/null Float Object org/lwjgl/util/vector/Vector2f Object org/lwjgl/util/vector/Vector2f Float Float 
            stack 
        .end stack 
L107:   aload_2 
L108:   fload 4 
L110:   fload 5 
L112:   fsub 
L113:   fload 4 
L115:   fdiv 
L116:   invokevirtual Method org/lwjgl/util/vector/Vector2f scale (F)Lorg/lwjgl/util/vector/Vector; 
L119:   pop 

        .stack chop 1 
L120:   fload 4 
L122:   fconst_1 
L123:   fcmpg 
L124:   ifle L137 
L127:   fload 4 
L129:   aload_3 
L130:   invokevirtual Method org/lwjgl/util/vector/Vector2f length ()F 
L133:   fcmpg 
L134:   ifge L143 

        .stack same 
L137:   aload_2 
L138:   fconst_0 
L139:   fconst_0 
L140:   invokevirtual Method org/lwjgl/util/vector/Vector2f set (FF)V 

        .stack chop 1 
L143:   aload_0 
L144:   getfield Field com/fs/starfarer/combat/entities/ship/null 'ÓO0000' Lcom/fs/starfarer/combat/entities/G; 
L147:   fload_1 
L148:   invokevirtual Method com/fs/starfarer/combat/entities/G 'Ô00000' (F)V 
L151:   return 
L152:   
    .end code 
.end method 

.method private 'super' : (F)V 
    .code stack 3 locals 5 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L4:     invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo getVelocity ()Lorg/lwjgl/util/vector/Vector2f; 1 
L9:     astore_2 
L10:    aload_2 
L11:    invokevirtual Method org/lwjgl/util/vector/Vector2f length ()F 
L14:    fstore_3 
L15:    fload_3 
L16:    aload_0 
L17:    getfield Field com/fs/starfarer/combat/entities/ship/null Oo0000 F 
L20:    fcmpl 
L21:    ifle L77 
L24:    aload_0 
L25:    getfield Field com/fs/starfarer/combat/entities/ship/null 'Öo0000' F 
L28:    fconst_2 
L29:    fmul 
L30:    fload_1 
L31:    fmul 
L32:    fstore 4 
L34:    fload_3 
L35:    fload 4 
L37:    fsub 
L38:    aload_0 
L39:    getfield Field com/fs/starfarer/combat/entities/ship/null Oo0000 F 
L42:    fcmpg 
L43:    ifge L54 
L46:    fload_3 
L47:    aload_0 
L48:    getfield Field com/fs/starfarer/combat/entities/ship/null Oo0000 F 
L51:    fsub 
L52:    fstore 4 

        .stack append Object org/lwjgl/util/vector/Vector2f Float Float 
L54:    aload_2 
L55:    fload_3 
L56:    fload 4 
L58:    fsub 
L59:    fload_3 
L60:    fdiv 
L61:    invokevirtual Method org/lwjgl/util/vector/Vector2f scale (F)Lorg/lwjgl/util/vector/Vector; 
L64:    pop 
L65:    fload_3 
L66:    fconst_1 
L67:    fcmpg 
L68:    ifgt L77 
L71:    aload_2 
L72:    fconst_0 
L73:    fconst_0 
L74:    invokevirtual Method org/lwjgl/util/vector/Vector2f set (FF)V 

        .stack chop 1 
L77:    aload_0 
L78:    getfield Field com/fs/starfarer/combat/entities/ship/null 'ÓO0000' Lcom/fs/starfarer/combat/entities/G; 
L81:    fload_1 
L82:    invokevirtual Method com/fs/starfarer/combat/entities/G 'Ô00000' (F)V 
L85:    return 
L86:    
    .end code 
.end method 

.method public showDecelerating : (F)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/ship/null 'ÓO0000' Lcom/fs/starfarer/combat/entities/G; 
L4:     fload_1 
L5:     invokevirtual Method com/fs/starfarer/combat/entities/G 'Ô00000' (F)V 
L8:     return 
L9:     
    .end code 
.end method 

.method public showAccelerating : (F)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/ship/null 'ÓO0000' Lcom/fs/starfarer/combat/entities/G; 
L4:     fload_1 
L5:     invokevirtual Method com/fs/starfarer/combat/entities/G new (F)V 
L8:     return 
L9:     
    .end code 
.end method 

.method public getEngineGlow : ()Lcom/fs/starfarer/combat/entities/G; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/ship/null 'ÓO0000' Lcom/fs/starfarer/combat/entities/G; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public doFlameout : ()V 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/ship/null 'ÓO0000' Lcom/fs/starfarer/combat/entities/G; 
L4:     invokevirtual Method com/fs/starfarer/combat/entities/G 'ÓO0000' ()V 
L7:     return 
L8:     
    .end code 
.end method 

.method public getEffectiveAcceleration : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/ship/null 'Öo0000' F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method public getEffectiveStrafeAcceleration : ()F 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/ship/null 'Öo0000' F 
L4:     aload_0 
L5:     getfield Field com/fs/starfarer/combat/entities/ship/null while F 
L8:     fmul 
L9:     freturn 
L10:    
    .end code 
.end method 

.method public getEffectiveDeceleration : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/ship/null OO0000 F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method public getEffectiveMaxSpeed : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/ship/null Oo0000 F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method public getEffectiveMaxTurnRate : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/ship/null 'öO0000' F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method public getEffectiveTurnAcceleration : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/ship/null 'Óo0000' F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method public getTurnDeceleration : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/ship/null 'class.super' F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method public getDelegate : ()Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method private 'super' : ()V 
    .code stack 3 locals 1 
L0:     invokestatic Method com/fs/starfarer/combat/entities/ship/null $SWITCH_TABLE$com$fs$starfarer$api$combat$ShipAPI$HullSize ()[I 
L3:     aload_0 
L4:     getfield Field com/fs/starfarer/combat/entities/ship/null float Lcom/fs/starfarer/combat/entities/ship/null$Oo; 
L7:     invokeinterface InterfaceMethod com/fs/starfarer/combat/entities/ship/null$Oo getHullSize ()Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 1 
L12:    invokevirtual Method com/fs/starfarer/api/combat/ShipAPI$HullSize ordinal ()I 
L15:    iaload 
L16:    tableswitch 2 
            L52 
            L62 
            L70 
            L80 
            L89 
            default : L99 


        .stack same 
L52:    aload_0 
L53:    ldc_w +0.75f 
L56:    putfield Field com/fs/starfarer/combat/entities/ship/null while F 
L59:    goto L104 

        .stack same 
L62:    aload_0 
L63:    fconst_1 
L64:    putfield Field com/fs/starfarer/combat/entities/ship/null while F 
L67:    goto L104 

        .stack same 
L70:    aload_0 
L71:    ldc_w +0.75f 
L74:    putfield Field com/fs/starfarer/combat/entities/ship/null while F 
L77:    goto L104 

        .stack same 
L80:    aload_0 
L81:    ldc +0.5f 
L83:    putfield Field com/fs/starfarer/combat/entities/ship/null while F 
L86:    goto L104 

        .stack same 
L89:    aload_0 
L90:    ldc_w +0.25f 
L93:    putfield Field com/fs/starfarer/combat/entities/ship/null while F 
L96:    goto L104 

        .stack same 
L99:    aload_0 
L100:   fconst_1 
L101:   putfield Field com/fs/starfarer/combat/entities/ship/null while F 

        .stack same 
L104:   aload_0 
L105:   invokestatic Method com/fs/starfarer/api/Global getSettings ()Lcom/fs/starfarer/api/SettingsAPI; 
L108:   ldc_w 'zeroFluxEngineBoost' 
L111:   invokeinterface InterfaceMethod com/fs/starfarer/api/SettingsAPI getFloat (Ljava/lang/String;)F 2 
L116:   putfield Field com/fs/starfarer/combat/entities/ship/null 'õO0000' F 
L119:   return 
L120:   
    .end code 
.end method 

.method public fadeToOtherColor : (Ljava/lang/Object;Ljava/awt/Color;Ljava/awt/Color;FF)V 
    .code stack 6 locals 6 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/ship/null 'ÓO0000' Lcom/fs/starfarer/combat/entities/G; 
L4:     aload_1 
L5:     aload_2 
L6:     aload_3 
L7:     fload 4 
L9:     fload 5 
L11:    invokevirtual Method com/fs/starfarer/combat/entities/G o00000 (Ljava/lang/Object;Ljava/awt/Color;Ljava/awt/Color;FF)V 
L14:    return 
L15:    
    .end code 
.end method 

.method public getFlameColorShifter : ()Lcom/fs/starfarer/api/util/ColorShifterAPI; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/ship/null 'ÓO0000' Lcom/fs/starfarer/combat/entities/G; 
L4:     invokevirtual Method com/fs/starfarer/combat/entities/G 'Ô00000' ()Lcom/fs/starfarer/api/util/ColorShifterAPI; 
L7:     areturn 
L8:     
    .end code 
.end method 

.method public extendFlame : (Ljava/lang/Object;FFF)V 
    .code stack 5 locals 5 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/ship/null 'ÓO0000' Lcom/fs/starfarer/combat/entities/G; 
L4:     aload_1 
L5:     fload_2 
L6:     fload_3 
L7:     fload 4 
L9:     invokevirtual Method com/fs/starfarer/combat/entities/G o00000 (Ljava/lang/Object;FFF)V 
L12:    return 
L13:    
    .end code 
.end method 

.method public saveBrightness : ()V 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/ship/null 'ÓO0000' Lcom/fs/starfarer/combat/entities/G; 
L4:     invokevirtual Method com/fs/starfarer/combat/entities/G 'Ø00000' ()V 
L7:     return 
L8:     
    .end code 
.end method 

.method public restoreBrightness : ()V 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/ship/null 'ÓO0000' Lcom/fs/starfarer/combat/entities/G; 
L4:     invokevirtual Method com/fs/starfarer/combat/entities/G 'ØO0000' ()V 
L7:     return 
L8:     
    .end code 
.end method 

.method public bridge synthetic getExtendGlowFraction : ()Lcom/fs/starfarer/api/util/ValueShifterAPI; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/ship/null getExtendGlowFraction ()Lcom/fs/starfarer/util/ValueShifter; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public bridge synthetic getExtendWidthFraction : ()Lcom/fs/starfarer/api/util/ValueShifterAPI; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/ship/null getExtendWidthFraction ()Lcom/fs/starfarer/util/ValueShifter; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public bridge synthetic getExtendLengthFraction : ()Lcom/fs/starfarer/api/util/ValueShifterAPI; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/ship/null getExtendLengthFraction ()Lcom/fs/starfarer/util/ValueShifter; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method static synthetic $SWITCH_TABLE$com$fs$starfarer$api$combat$ShipAPI$HullSize : ()[I 
    .code stack 3 locals 1 
L0:     getstatic Field com/fs/starfarer/combat/entities/ship/null 'Ø00000' [I 
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
L97:    putstatic Field com/fs/starfarer/combat/entities/ship/null 'Ø00000' [I 
L100:   areturn 
L101:   
    .end code 
.end method 

.method static synthetic $SWITCH_TABLE$com$fs$starfarer$combat$entities$Ship$CommandType : ()[I 
    .code stack 3 locals 1 
L0:     getstatic Field com/fs/starfarer/combat/entities/ship/null 'OÒ0000' [I 
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
L265:   putstatic Field com/fs/starfarer/combat/entities/ship/null 'OÒ0000' [I 
L268:   areturn 
L269:   
    .end code 
.end method 
.innerclasses 
    com/fs/starfarer/api/combat/MutableStat$StatMod com/fs/starfarer/api/combat/MutableStat StatMod public static 
    com/fs/starfarer/api/combat/ShipAPI$HullSize com/fs/starfarer/api/combat/ShipAPI HullSize public static final enum 
    com/fs/starfarer/api/combat/ShipEngineControllerAPI$ShipEngineAPI com/fs/starfarer/api/combat/ShipEngineControllerAPI ShipEngineAPI public static interface abstract 
    com/fs/starfarer/combat/entities/G$Oo com/fs/starfarer/combat/entities/G Oo public 
    com/fs/starfarer/combat/entities/Ship$Oo com/fs/starfarer/combat/entities/Ship Oo public static 
    com/fs/starfarer/combat/entities/Ship$oo com/fs/starfarer/combat/entities/Ship oo public static final enum 
    com/fs/starfarer/combat/entities/ship/null$Oo com/fs/starfarer/combat/entities/ship/null Oo public static interface abstract 
    com/fs/starfarer/combat/entities/ship/null$oo com/fs/starfarer/combat/entities/ship/null oo public static 
    com/fs/starfarer/combat/entities/ship/null$o com/fs/starfarer/combat/entities/ship/null o public static final enum 
    com/fs/starfarer/combat/new/OoOO$o com/fs/starfarer/combat/new/OoOO o public static interface abstract 
.end innerclasses 
.nestmembers com/fs/starfarer/combat/entities/ship/null$Oo com/fs/starfarer/combat/entities/ship/null$oo com/fs/starfarer/combat/entities/ship/null$o 
.end class 
