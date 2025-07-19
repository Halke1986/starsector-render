.version 61 0 
.class public super com/fs/starfarer/title/Object/L$Oo 
.super java/lang/Object 
.implements com/fs/starfarer/combat/A/oOoO 
.field private 'ØO0000' Lcom/fs/starfarer/api/combat/EveryFrameCombatPlugin; 

.method public <init> : (Lcom/fs/starfarer/api/combat/EveryFrameCombatPlugin;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     invokespecial Method java/lang/Object <init> ()V 
L4:     aload_0 
L5:     aload_1 
L6:     putfield Field com/fs/starfarer/title/Object/L$Oo 'ØO0000' Lcom/fs/starfarer/api/combat/EveryFrameCombatPlugin; 
L9:     return 
L10:    
    .end code 
.end method 

.method public o00000 : (FLcom/fs/starfarer/util/A/new;)V 
    .code stack 3 locals 6 
L0:     new java/util/ArrayList 
L3:     dup 
L4:     invokespecial Method java/util/ArrayList <init> ()V 
L7:     astore_3 
L8:     aload_2 
L9:     invokevirtual Method com/fs/starfarer/util/A/new iterator ()Ljava/util/Iterator; 
L12:    astore 5 
L14:    goto L38 

        .stack full 
            locals Object com/fs/starfarer/title/Object/L$Oo Float Object com/fs/starfarer/util/A/new Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L17:    aload 5 
L19:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L24:    checkcast com/fs/starfarer/util/A/C 
L27:    astore 4 
L29:    aload_3 
L30:    aload 4 
L32:    invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L37:    pop 

        .stack same 
L38:    aload 5 
L40:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L45:    ifne L17 
L48:    aload_3 
L49:    invokestatic Method java/util/Collections unmodifiableList (Ljava/util/List;)Ljava/util/List; 
L52:    astore_3 
L53:    aload_0 
L54:    getfield Field com/fs/starfarer/title/Object/L$Oo 'ØO0000' Lcom/fs/starfarer/api/combat/EveryFrameCombatPlugin; 
L57:    fload_1 
L58:    aload_3 
L59:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/EveryFrameCombatPlugin advance (FLjava/util/List;)V 3 
L64:    return 
L65:    
    .end code 
.end method

.method public o00000 : (Lcom/fs/starfarer/api/combat/ViewportAPI;)V
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/title/Object/L$Oo 'ØO0000' Lcom/fs/starfarer/api/combat/EveryFrameCombatPlugin; 
L4:     invokestatic Method com/genir/renderer/overrides/RenderOverride shouldRender (Ljava/lang/Object;)Z 
L7:     ifne L11 
L10:    return 

        .stack same 
L11:    aload_0 
L12:    getfield Field com/fs/starfarer/title/Object/L$Oo 'ØO0000' Lcom/fs/starfarer/api/combat/EveryFrameCombatPlugin; 
L15:    aload_1 
L16:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/EveryFrameCombatPlugin renderInUICoords (Lcom/fs/starfarer/api/combat/ViewportAPI;)V 2 
L21:    return 
L22:    
        .linenumbertable 
            L0 17 
            L10 18 
            L11 21 
            L21 22 
        .end linenumbertable 
        .localvariabletable 
            0 is this Lcom/fs/starfarer/title/Object/L$Oo; from L0 to L22 
            1 is viewport Lcom/fs/starfarer/api/combat/ViewportAPI; from L0 to L22 
        .end localvariabletable 
    .end code 
.end method 

.method public new : (Lcom/fs/starfarer/api/combat/ViewportAPI;)V
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/title/Object/L$Oo 'ØO0000' Lcom/fs/starfarer/api/combat/EveryFrameCombatPlugin; 
L4:     invokestatic Method com/genir/renderer/overrides/RenderOverride shouldRender (Ljava/lang/Object;)Z 
L7:     ifne L11 
L10:    return 

        .stack same 
L11:    aload_0 
L12:    getfield Field com/fs/starfarer/title/Object/L$Oo 'ØO0000' Lcom/fs/starfarer/api/combat/EveryFrameCombatPlugin; 
L15:    aload_1 
L16:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/EveryFrameCombatPlugin renderInWorldCoords (Lcom/fs/starfarer/api/combat/ViewportAPI;)V 2 
L21:    return 
L22:    
        .linenumbertable 
            L0 27 
            L10 28 
            L11 31 
            L21 32 
        .end linenumbertable 
        .localvariabletable 
            0 is this Lcom/fs/starfarer/title/Object/L$Oo; from L0 to L22 
            1 is viewport Lcom/fs/starfarer/api/combat/ViewportAPI; from L0 to L22 
        .end localvariabletable 
    .end code 
.end method 

.method public o00000 : (Lcom/fs/starfarer/combat/A/B;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/title/Object/L$Oo 'ØO0000' Lcom/fs/starfarer/api/combat/EveryFrameCombatPlugin; 
L4:     invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L7:     invokeinterface InterfaceMethod com/fs/starfarer/api/combat/EveryFrameCombatPlugin init (Lcom/fs/starfarer/api/combat/CombatEngineAPI;)V 2 
L12:    return 
L13:    
    .end code 
.end method 

.method public 'Ô00000' : ()Lcom/fs/starfarer/api/combat/EveryFrameCombatPlugin; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/title/Object/L$Oo 'ØO0000' Lcom/fs/starfarer/api/combat/EveryFrameCombatPlugin; 
L4:     areturn 
L5:     
    .end code 
.end method 
.innerclasses 
    com/fs/starfarer/title/Object/L$Oo com/fs/starfarer/title/Object/L Oo public static 
.end innerclasses 
.nesthost com/fs/starfarer/title/Object/L 
.end class 
