.version 61 0 
.class public super com/fs/starfarer/combat/entities/CustomCombatEntity 
.super com/fs/starfarer/combat/entities/BaseEntity 
.implements com/fs/starfarer/api/combat/CombatEntityAPI 
.field private plugin Lcom/fs/starfarer/api/combat/CombatLayeredRenderingPlugin; 

.method public <init> : (Lcom/fs/starfarer/api/combat/CombatLayeredRenderingPlugin;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     invokespecial Method com/fs/starfarer/combat/entities/BaseEntity <init> ()V 
L4:     aload_0 
L5:     aload_1 
L6:     putfield Field com/fs/starfarer/combat/entities/CustomCombatEntity plugin Lcom/fs/starfarer/api/combat/CombatLayeredRenderingPlugin; 
L9:     aload_0 
L10:    getstatic Field com/fs/starfarer/api/combat/CollisionClass NONE Lcom/fs/starfarer/api/combat/CollisionClass; 
L13:    invokevirtual Method com/fs/starfarer/combat/entities/CustomCombatEntity setCollisionClass (Lcom/fs/starfarer/api/combat/CollisionClass;)V 
L16:    return 
L17:    
    .end code 
.end method 

.method public cleanup : ()V 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/CustomCombatEntity plugin Lcom/fs/starfarer/api/combat/CombatLayeredRenderingPlugin; 
L4:     invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatLayeredRenderingPlugin cleanup ()V 1 
L9:     return 
L10:    
    .end code 
.end method 

.method public getActiveLayers : ()Ljava/util/EnumSet; 
    .signature ()Ljava/util/EnumSet<Lcom/fs/starfarer/api/combat/CombatEngineLayers;>; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/CustomCombatEntity plugin Lcom/fs/starfarer/api/combat/CombatLayeredRenderingPlugin; 
L4:     invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatLayeredRenderingPlugin getActiveLayers ()Ljava/util/EnumSet; 1 
L9:     areturn 
L10:    
    .end code 
.end method 

.method public init : ()V 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/CustomCombatEntity plugin Lcom/fs/starfarer/api/combat/CombatLayeredRenderingPlugin; 
L4:     aload_0 
L5:     invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatLayeredRenderingPlugin init (Lcom/fs/starfarer/api/combat/CombatEntityAPI;)V 2 
L10:    return 
L11:    
    .end code 
.end method 

.method public render : (Lcom/fs/starfarer/api/combat/CombatEngineLayers;Lcom/fs/starfarer/combat/CombatViewport;)V 
    .code stack 3 locals 3 
L0:     aload_0
L1:     getfield Field com/fs/starfarer/combat/entities/CustomCombatEntity plugin Lcom/fs/starfarer/api/combat/CombatLayeredRenderingPlugin;
L4:     invokestatic Method com/genir/renderer/overrides/RenderOverride shouldRender (Ljava/lang/Object;)Z
L7:     ifne L11
L10:    return

        .stack same
L11:    aload_2
L12:    aload_0
L13:    invokevirtual Method com/fs/starfarer/combat/entities/CustomCombatEntity getLocation ()Lorg/lwjgl/util/vector/Vector2f;
L16:    aload_0
L17:    getfield Field com/fs/starfarer/combat/entities/CustomCombatEntity plugin Lcom/fs/starfarer/api/combat/CombatLayeredRenderingPlugin;
L20:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatLayeredRenderingPlugin getRenderRadius ()F 1
L25:    invokevirtual Method com/fs/starfarer/combat/CombatViewport isNearViewport (Lorg/lwjgl/util/vector/Vector2f;F)Z
L28:    ifeq L42
L31:    aload_0
L32:    getfield Field com/fs/starfarer/combat/entities/CustomCombatEntity plugin Lcom/fs/starfarer/api/combat/CombatLayeredRenderingPlugin;
L35:    aload_1
L36:    aload_2
L37:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatLayeredRenderingPlugin render (Lcom/fs/starfarer/api/combat/CombatEngineLayers;Lcom/fs/starfarer/api/combat/ViewportAPI;)V 3

        .stack same
L42:    return
L43:
        .linenumbertable
            L0 14
            L10 15
            L11 18
            L31 19
            L42 21
        .end linenumbertable
        .localvariabletable
            0 is this Lcom/fs/starfarer/combat/entities/CustomCombatEntity; from L0 to L43
            1 is var1 Lcom/fs/starfarer/api/combat/CombatEngineLayers; from L0 to L43
            2 is viewport Lcom/fs/starfarer/combat/CombatViewport; from L0 to L43
        .end localvariabletable
    .end code 
.end method 

.method public isExpired : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/entities/CustomCombatEntity plugin Lcom/fs/starfarer/api/combat/CombatLayeredRenderingPlugin; 
L4:     invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatLayeredRenderingPlugin isExpired ()Z 1 
L9:     ireturn 
L10:    
    .end code 
.end method 

.method public advance : (F)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field [c1] plugin Lcom/fs/starfarer/api/combat/CombatLayeredRenderingPlugin; 
L4:     fload_1 
L5:     invokeinterface InterfaceMethod com/fs/starfarer/api/combat/CombatLayeredRenderingPlugin advance (F)V 2 
L10:    return 
L11:    
    .end code 
.end method 

.method public applyDamage : (Lorg/lwjgl/util/vector/Vector2f;Lcom/fs/starfarer/combat/E/F;ZFLjava/lang/Object;)Lcom/fs/starfarer/combat/entities/ship/G; 
    .code stack 1 locals 6 
L0:     aconst_null 
L1:     areturn 
L2:     
    .end code 
.end method 

.method public getPlugin : ()Lcom/fs/starfarer/api/combat/CombatLayeredRenderingPlugin; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field [c1] plugin Lcom/fs/starfarer/api/combat/CombatLayeredRenderingPlugin; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public getSource : ()Lcom/fs/starfarer/combat/E/B; 
    .code stack 1 locals 1 
L0:     aconst_null 
L1:     areturn 
L2:     
    .end code 
.end method 
.const [c1] = Class [u2] 
.const [u2] = Utf8 com/fs/starfarer/combat/entities/CustomCombatEntity 
.end class 
