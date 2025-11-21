.version 61 0 
.class public super com/fs/starfarer/loading/oO0O 
.super java/lang/Object 
.field private static o00000 Ljava/util/Map; .fieldattributes 
    .signature Ljava/util/Map<Ljava/lang/String;Lcom/fs/starfarer/loading/specs/g;>; 
.end fieldattributes 

.method static <clinit> : ()V 
    .code stack 2 locals 0 
L0:     new java/util/HashMap 
L3:     dup 
L4:     invokespecial Method java/util/HashMap <init> ()V 
L7:     putstatic Field com/fs/starfarer/loading/oO0O o00000 Ljava/util/Map; 
L10:    return 
L11:    
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

.method public static 'super' : ()V 
    .code stack 1 locals 0 
L0:     getstatic Field com/fs/starfarer/loading/oO0O o00000 Ljava/util/Map; 
L3:     invokeinterface InterfaceMethod java/util/Map clear ()V 1 
L8:     return 
L9:     
    .end code 
.end method 

.method public static 'super' : (Ljava/lang/String;Lcom/fs/starfarer/loading/specs/g;)V 
    .code stack 7 locals 2
        aload_1
        invokestatic Method com/genir/renderer/overrides/loading/ResourceLoader queueShipSprite (Lcom/fs/starfarer/loading/specs/g;)V
L0:     getstatic Field com/fs/starfarer/loading/oO0O o00000 Ljava/util/Map; 
L3:     aload_0 
L4:     invokeinterface InterfaceMethod java/util/Map containsKey (Ljava/lang/Object;)Z 2 
L9:     ifeq L33 
L12:    new java/lang/RuntimeException 
L15:    dup 
L16:    ldc 'Ship hull spec [%s] already exists' 
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
L33:    getstatic Field com/fs/starfarer/loading/oO0O o00000 Ljava/util/Map; 
L36:    aload_0 
L37:    aload_1 
L38:    invokeinterface InterfaceMethod java/util/Map put (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 3 
L43:    pop 
L44:    return 
L45:    
    .end code 
.end method 

.method public static 'super' : (Ljava/lang/String;)Lcom/fs/starfarer/loading/specs/g; 
    .code stack 7 locals 1 
L0:     getstatic Field com/fs/starfarer/loading/B o00000 Z 
L3:     ifeq L38 
L6:     aload_0 
L7:     ifnull L22 
L10:    aload_0 
L11:    ldc 'wendigo' 
L13:    invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L16:    ifeq L22 
L19:    ldc 'grendel' 
L21:    astore_0 

        .stack same 
L22:    aload_0 
L23:    ifnull L38 
L26:    aload_0 
L27:    ldc 'wendigo_default_D' 
L29:    invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L32:    ifeq L38 
L35:    ldc 'grendel_default_D' 
L37:    astore_0 

        .stack same 
L38:    getstatic Field com/fs/starfarer/loading/oO0O o00000 Ljava/util/Map; 
L41:    aload_0 
L42:    invokeinterface InterfaceMethod java/util/Map containsKey (Ljava/lang/Object;)Z 2 
L47:    ifne L71 
L50:    new java/lang/RuntimeException 
L53:    dup 
L54:    ldc 'Ship hull spec [%s] not found!' 
L56:    iconst_1 
L57:    anewarray java/lang/Object 
L60:    dup 
L61:    iconst_0 
L62:    aload_0 
L63:    aastore 
L64:    invokestatic Method java/lang/String format (Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String; 
L67:    invokespecial Method java/lang/RuntimeException <init> (Ljava/lang/String;)V 
L70:    athrow 

        .stack same 
L71:    getstatic Field com/fs/starfarer/loading/oO0O o00000 Ljava/util/Map; 
L74:    aload_0 
L75:    invokeinterface InterfaceMethod java/util/Map get (Ljava/lang/Object;)Ljava/lang/Object; 2 
L80:    checkcast com/fs/starfarer/loading/specs/g 
L83:    areturn 
L84:    
    .end code 
.end method 

.method public static String : (Ljava/lang/String;)Z 
    .code stack 2 locals 1 
L0:     getstatic Field com/fs/starfarer/loading/B o00000 Z 
L3:     ifeq L22 
L6:     aload_0 
L7:     ifnull L22 
L10:    aload_0 
L11:    ldc 'wendigo' 
L13:    invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L16:    ifeq L22 
L19:    ldc 'grendel' 
L21:    astore_0 

        .stack same 
L22:    getstatic Field com/fs/starfarer/loading/oO0O o00000 Ljava/util/Map; 
L25:    aload_0 
L26:    invokeinterface InterfaceMethod java/util/Map containsKey (Ljava/lang/Object;)Z 2 
L31:    ireturn 
L32:    
    .end code 
.end method 

.method public static 'Ó00000' : (Ljava/lang/String;)Lcom/fs/starfarer/loading/specs/g; 
    .code stack 2 locals 1 
L0:     getstatic Field com/fs/starfarer/loading/B o00000 Z 
L3:     ifeq L22 
L6:     aload_0 
L7:     ifnull L22 
L10:    aload_0 
L11:    ldc 'wendigo' 
L13:    invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L16:    ifeq L22 
L19:    ldc 'grendel' 
L21:    astore_0 

        .stack same 
L22:    getstatic Field com/fs/starfarer/loading/oO0O o00000 Ljava/util/Map; 
L25:    aload_0 
L26:    invokeinterface InterfaceMethod java/util/Map get (Ljava/lang/Object;)Ljava/lang/Object; 2 
L31:    checkcast com/fs/starfarer/loading/specs/g 
L34:    areturn 
L35:    
    .end code 
.end method 

.method public static 'Ò00000' : ()Ljava/util/Collection; 
    .signature ()Ljava/util/Collection<Ljava/lang/String;>; 
    .code stack 1 locals 0 
L0:     getstatic Field com/fs/starfarer/loading/oO0O o00000 Ljava/util/Map; 
L3:     invokeinterface InterfaceMethod java/util/Map keySet ()Ljava/util/Set; 1 
L8:     areturn 
L9:     
    .end code 
.end method 

.method public static 'Ò00000' : (Ljava/lang/String;)V 
    .code stack 2 locals 1 
L0:     getstatic Field com/fs/starfarer/loading/oO0O o00000 Ljava/util/Map; 
L3:     aload_0 
L4:     invokeinterface InterfaceMethod java/util/Map remove (Ljava/lang/Object;)Ljava/lang/Object; 2 
L9:     pop 
L10:    return 
L11:    
    .end code 
.end method 
.end class 
