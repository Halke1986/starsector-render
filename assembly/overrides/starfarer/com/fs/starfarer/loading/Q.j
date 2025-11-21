.version 61 0 
.class public super com/fs/starfarer/loading/Q 
.super java/lang/Object 
.field private static new Ljava/util/Map; .fieldattributes 
    .signature Ljava/util/Map<Ljava/lang/String;Lcom/fs/starfarer/loading/specs/BaseWeaponSpec;>; 
.end fieldattributes 
.field private static o00000 Ljava/util/Map; .fieldattributes 
    .signature Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>; 
.end fieldattributes 

.method static <clinit> : ()V 
    .code stack 2 locals 0 
L0:     new java/util/HashMap 
L3:     dup 
L4:     invokespecial Method java/util/HashMap <init> ()V 
L7:     putstatic Field com/fs/starfarer/loading/Q new Ljava/util/Map; 
L10:    new java/util/HashMap 
L13:    dup 
L14:    invokespecial Method java/util/HashMap <init> ()V 
L17:    putstatic Field com/fs/starfarer/loading/Q o00000 Ljava/util/Map; 
L20:    return 
L21:    
    .end code 
.end method 

.method public <init> : ()V 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokespecial Method java/lang/Object <init> ()V 
L4:     return 
L5:     
    .end code 
.end method 

.method public static 'Ò00000' : ()V 
    .code stack 1 locals 0 
L0:     getstatic Field com/fs/starfarer/loading/Q new Ljava/util/Map; 
L3:     invokeinterface InterfaceMethod java/util/Map clear ()V 1 
L8:     getstatic Field com/fs/starfarer/loading/Q o00000 Ljava/util/Map; 
L11:    invokeinterface InterfaceMethod java/util/Map clear ()V 1 
L16:    return 
L17:    
    .end code 
.end method 

.method public static 'super' : (Ljava/lang/String;Lcom/fs/starfarer/loading/specs/BaseWeaponSpec;)V 
    .code stack 7 locals 2
        aload_1
        checkcast com/fs/starfarer/api/loading/WeaponSpecAPI
        invokestatic Method com/genir/renderer/overrides/loading/ResourceLoader queueWeaponSprite (Lcom/fs/starfarer/api/loading/WeaponSpecAPI;)V
L0:     getstatic Field com/fs/starfarer/loading/Q new Ljava/util/Map; 
L3:     aload_0 
L4:     invokeinterface InterfaceMethod java/util/Map containsKey (Ljava/lang/Object;)Z 2 
L9:     ifeq L33 
L12:    new java/lang/RuntimeException 
L15:    dup 
L16:    ldc 'Weapon spec [%s] already exists' 
L18:    iconst_1 
L19:    anewarray java/lang/Object 
L22:    dup 
L23:    iconst_0 
L24:    aload_0 
L25:    aastore 
L26:    invokestatic Method java/lang/String format (Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String; 
L29:    invokespecial Method java/lang/RuntimeException <init> (Ljava/lang/String;)V 
L32:    athrow 

        .stack same 
L33:    getstatic Field com/fs/starfarer/loading/Q new Ljava/util/Map; 
L36:    aload_0 
L37:    aload_1 
L38:    invokeinterface InterfaceMethod java/util/Map put (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 3 
L43:    pop 
L44:    return 
L45:    
    .end code 
.end method 

.method public static 'Ò00000' : (Ljava/lang/String;)Lcom/fs/starfarer/loading/specs/Oo0O; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokestatic Method com/fs/starfarer/loading/Q String (Ljava/lang/String;)Lcom/fs/starfarer/loading/specs/BaseWeaponSpec; 
L4:     checkcast com/fs/starfarer/loading/specs/Oo0O 
L7:     areturn 
L8:     
    .end code 
.end method 

.method public static 'ô00000' : (Ljava/lang/String;)Lcom/fs/starfarer/loading/specs/J; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokestatic Method com/fs/starfarer/loading/Q String (Ljava/lang/String;)Lcom/fs/starfarer/loading/specs/BaseWeaponSpec; 
L4:     checkcast com/fs/starfarer/loading/specs/J 
L7:     areturn 
L8:     
    .end code 
.end method 

.method public static 'Ö00000' : (Ljava/lang/String;)Lcom/fs/starfarer/loading/specs/Object; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokestatic Method com/fs/starfarer/loading/Q String (Ljava/lang/String;)Lcom/fs/starfarer/loading/specs/BaseWeaponSpec; 
L4:     checkcast com/fs/starfarer/loading/specs/Object 
L7:     areturn 
L8:     
    .end code 
.end method 

.method public static String : (Ljava/lang/String;)Lcom/fs/starfarer/loading/specs/BaseWeaponSpec; 
    .code stack 7 locals 1 
L0:     getstatic Field com/fs/starfarer/loading/Q new Ljava/util/Map; 
L3:     aload_0 
L4:     invokeinterface InterfaceMethod java/util/Map containsKey (Ljava/lang/Object;)Z 2 
L9:     ifne L33 
L12:    new java/lang/RuntimeException 
L15:    dup 
L16:    ldc 'Weapon spec [%s] not found!' 
L18:    iconst_1 
L19:    anewarray java/lang/Object 
L22:    dup 
L23:    iconst_0 
L24:    aload_0 
L25:    aastore 
L26:    invokestatic Method java/lang/String format (Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String; 
L29:    invokespecial Method java/lang/RuntimeException <init> (Ljava/lang/String;)V 
L32:    athrow 

        .stack same 
L33:    getstatic Field com/fs/starfarer/loading/Q new Ljava/util/Map; 
L36:    aload_0 
L37:    invokeinterface InterfaceMethod java/util/Map get (Ljava/lang/Object;)Ljava/lang/Object; 2 
L42:    checkcast com/fs/starfarer/loading/specs/BaseWeaponSpec 
L45:    areturn 
L46:    
    .end code 
.end method 

.method public static 'Ó00000' : (Ljava/lang/String;)Z 
    .code stack 2 locals 1 
L0:     getstatic Field com/fs/starfarer/loading/Q new Ljava/util/Map; 
L3:     aload_0 
L4:     invokeinterface InterfaceMethod java/util/Map containsKey (Ljava/lang/Object;)Z 2 
L9:     ireturn 
L10:    
    .end code 
.end method 

.method public static void : (Ljava/lang/String;)Lcom/fs/starfarer/loading/specs/BaseWeaponSpec; 
    .code stack 2 locals 1 
L0:     getstatic Field com/fs/starfarer/loading/Q new Ljava/util/Map; 
L3:     aload_0 
L4:     invokeinterface InterfaceMethod java/util/Map get (Ljava/lang/Object;)Ljava/lang/Object; 2 
L9:     checkcast com/fs/starfarer/loading/specs/BaseWeaponSpec 
L12:    areturn 
L13:    
    .end code 
.end method 

.method public static 'super' : (Ljava/lang/String;)V 
    .code stack 2 locals 1 
L0:     getstatic Field com/fs/starfarer/loading/Q new Ljava/util/Map; 
L3:     aload_0 
L4:     invokeinterface InterfaceMethod java/util/Map remove (Ljava/lang/Object;)Ljava/lang/Object; 2 
L9:     pop 
L10:    return 
L11:    
    .end code 
.end method 

.method public static 'super' : (Ljava/lang/String;Ljava/lang/Object;)V 
    .code stack 7 locals 2
        aload_1
        invokestatic Method com/genir/renderer/overrides/loading/ResourceLoader queueProjectileSprite (Ljava/lang/Object;)V
L0:     getstatic Field com/fs/starfarer/loading/Q o00000 Ljava/util/Map; 
L3:     aload_0 
L4:     invokeinterface InterfaceMethod java/util/Map containsKey (Ljava/lang/Object;)Z 2 
L9:     ifeq L33 
L12:    new java/lang/RuntimeException 
L15:    dup 
L16:    ldc 'Projectile spec [%s] already exists' 
L18:    iconst_1 
L19:    anewarray java/lang/Object 
L22:    dup 
L23:    iconst_0 
L24:    aload_0 
L25:    aastore 
L26:    invokestatic Method java/lang/String format (Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String; 
L29:    invokespecial Method java/lang/RuntimeException <init> (Ljava/lang/String;)V 
L32:    athrow 

        .stack same 
L33:    getstatic Field com/fs/starfarer/loading/Q o00000 Ljava/util/Map; 
L36:    aload_0 
L37:    aload_1 
L38:    invokeinterface InterfaceMethod java/util/Map put (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 3 
L43:    pop 
L44:    return 
L45:    
    .end code 
.end method 

.method public static 'Õ00000' : (Ljava/lang/String;)Ljava/lang/Object; 
    .code stack 2 locals 1 
L0:     getstatic Field com/fs/starfarer/loading/Q o00000 Ljava/util/Map; 
L3:     aload_0 
L4:     invokeinterface InterfaceMethod java/util/Map get (Ljava/lang/Object;)Ljava/lang/Object; 2 
L9:     areturn 
L10:    
    .end code 
.end method 

.method public static 'super' : ()Ljava/util/Collection; 
    .signature ()Ljava/util/Collection<Ljava/lang/String;>; 
    .code stack 1 locals 0 
L0:     getstatic Field com/fs/starfarer/loading/Q o00000 Ljava/util/Map; 
L3:     invokeinterface InterfaceMethod java/util/Map keySet ()Ljava/util/Set; 1 
L8:     areturn 
L9:     
    .end code 
.end method 

.method public static 'Ó00000' : ()Ljava/util/Collection; 
    .signature ()Ljava/util/Collection<Ljava/lang/String;>; 
    .code stack 1 locals 0 
L0:     getstatic Field com/fs/starfarer/loading/Q new Ljava/util/Map; 
L3:     invokeinterface InterfaceMethod java/util/Map keySet ()Ljava/util/Set; 1 
L8:     areturn 
L9:     
    .end code 
.end method 
.end class 
