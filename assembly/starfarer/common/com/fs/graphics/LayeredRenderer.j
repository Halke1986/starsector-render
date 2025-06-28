.version 61 0 
.class public super com/fs/graphics/LayeredRenderer 
.super java/lang/Object 
.implements com/fs/util/DoNotObfuscate 
.field private layers Ljava/util/Map; .fieldattributes 
    .signature Ljava/util/Map<TT;Ljava/util/List<Lcom/fs/graphics/LayeredRenderable<TT;TV;>;>;>; 
.end fieldattributes 
.field private layerEnumClass Ljava/lang/Class; .fieldattributes 
    .signature Ljava/lang/Class<TT;>; 
.end fieldattributes 

.method public <init> : (Ljava/lang/Class;)V 
    .signature (Ljava/lang/Class<TT;>;)V 
    .code stack 3 locals 2 
L0:     aload_0 
L1:     invokespecial Method java/lang/Object <init> ()V 
L4:     aload_0 
L5:     new java/util/HashMap 
L8:     dup 
L9:     invokespecial Method java/util/HashMap <init> ()V 
L12:    putfield Field com/fs/graphics/LayeredRenderer layers Ljava/util/Map; 
L15:    aload_0 
L16:    aload_1 
L17:    putfield Field com/fs/graphics/LayeredRenderer layerEnumClass Ljava/lang/Class; 
L20:    return 
L21:    
    .end code 
.end method 

.method public render : (Ljava/lang/Object;)V 
    .signature (TV;)V 
    .code stack 3 locals 7 
L0:     aload_0 
L1:     getfield Field com/fs/graphics/LayeredRenderer layerEnumClass Ljava/lang/Class; 
L4:     invokestatic Method java/util/EnumSet allOf (Ljava/lang/Class;)Ljava/util/EnumSet; 
L7:     astore_2 
L8:     aload_2 
L9:     invokevirtual Method java/util/EnumSet iterator ()Ljava/util/Iterator; 
L12:    astore 4 
L14:    goto L74 

        .stack full 
            locals Object com/fs/graphics/LayeredRenderer Object java/lang/Object Object java/util/EnumSet Top Object java/util/Iterator 
            stack 
        .end stack 
L17:    aload 4 
L19:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L24:    checkcast java/lang/Enum 
L27:    astore_3 
L28:    aload_0 
L29:    aload_3 
L30:    invokevirtual Method com/fs/graphics/LayeredRenderer getList (Ljava/lang/Enum;)Ljava/util/List; 
L33:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L38:    astore 6 
L40:    goto L64 

        .stack full 
            locals Object com/fs/graphics/LayeredRenderer Object java/lang/Object Object java/util/EnumSet Object java/lang/Enum Object java/util/Iterator Top Object java/util/Iterator 
            stack 
        .end stack 
L43:    aload 6 
L45:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L50:    checkcast com/fs/graphics/LayeredRenderable 
L53:    astore 5 
L55:    aload 5 
L57:    aload_3 
L58:    aload_1 
L59:    invokeinterface InterfaceMethod com/fs/graphics/LayeredRenderable render (Ljava/lang/Enum;Ljava/lang/Object;)V 3 

        .stack same 
L64:    aload 6 
L66:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L71:    ifne L43 

        .stack full 
            locals Object com/fs/graphics/LayeredRenderer Object java/lang/Object Object java/util/EnumSet Top Object java/util/Iterator 
            stack 
        .end stack 
L74:    aload 4 
L76:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L81:    ifne L17 
L84:    return 
L85:    
    .end code 
.end method 

.method public varargs renderExcluding : (Ljava/lang/Object;[Ljava/lang/Enum;)V 
    .signature (TV;[TT;)V 
    .code stack 3 locals 9 
L0:     aload_0 
L1:     getfield Field com/fs/graphics/LayeredRenderer layerEnumClass Ljava/lang/Class; 
L4:     invokestatic Method java/util/EnumSet allOf (Ljava/lang/Class;)Ljava/util/EnumSet; 
L7:     astore_3 
L8:     new java/util/LinkedHashSet 
L11:    dup 
L12:    invokespecial Method java/util/LinkedHashSet <init> ()V 
L15:    astore 4 
L17:    aload_2 
L18:    ifnull L33 
L21:    aload 4 
L23:    aload_2 
L24:    invokestatic Method java/util/Arrays asList ([Ljava/lang/Object;)Ljava/util/List; 
L27:    invokeinterface InterfaceMethod java/util/Set addAll (Ljava/util/Collection;)Z 2 
L32:    pop 

        .stack append Object java/util/EnumSet Object java/util/Set 
L33:    aload_3 
L34:    invokevirtual Method java/util/EnumSet iterator ()Ljava/util/Iterator; 
L37:    astore 6 
L39:    goto L117 

        .stack full 
            locals Object com/fs/graphics/LayeredRenderer Object java/lang/Object Object [Ljava/lang/Enum; Object java/util/EnumSet Object java/util/Set Top Object java/util/Iterator 
            stack 
        .end stack


L42:    invokestatic Method com/genir/graphics/Renderer beginLayer ()V

        aload 6

L44:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L49:    checkcast java/lang/Enum 
L52:    astore 5 
L54:    aload 4 
L56:    aload 5 
L58:    invokeinterface InterfaceMethod java/util/Set contains (Ljava/lang/Object;)Z 2 
L63:    ifeq L69 
L66:    goto L117 

        .stack full 
            locals Object com/fs/graphics/LayeredRenderer Object java/lang/Object Object [Ljava/lang/Enum; Object java/util/EnumSet Object java/util/Set Object java/lang/Enum Object java/util/Iterator 
            stack 
        .end stack 
L69:    aload_0 
L70:    aload 5 
L72:    invokevirtual Method com/fs/graphics/LayeredRenderer getList (Ljava/lang/Enum;)Ljava/util/List; 
L75:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L80:    astore 8 
L82:    goto L107 

        .stack full 
            locals Object com/fs/graphics/LayeredRenderer Object java/lang/Object Object [Ljava/lang/Enum; Object java/util/EnumSet Object java/util/Set Object java/lang/Enum Object java/util/Iterator Top Object java/util/Iterator 
            stack 
        .end stack 
L85:    aload 8 
L87:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L92:    checkcast com/fs/graphics/LayeredRenderable 
L95:    astore 7 
L97:    aload 7 
L99:    aload 5 
L101:   aload_1 
L102:   invokeinterface InterfaceMethod com/fs/graphics/LayeredRenderable render (Ljava/lang/Enum;Ljava/lang/Object;)V 3 

        .stack same 
L107:   aload 8 
L109:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L114:   ifne L85

        invokestatic Method com/genir/graphics/Renderer commitLayer ()V

        .stack full 
            locals Object com/fs/graphics/LayeredRenderer Object java/lang/Object Object [Ljava/lang/Enum; Object java/util/EnumSet Object java/util/Set Top Object java/util/Iterator 
            stack 
        .end stack 
L117:   aload 6 
L119:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L124:   ifne L42 
L127:   return 
L128:   
    .end code 
.end method 

.method public renderOnly : (Ljava/lang/Object;Ljava/lang/Enum;)V 
    .signature (TV;TT;)V 
    .code stack 3 locals 5 
L0:     aload_0 
L1:     aload_2 
L2:     invokevirtual Method com/fs/graphics/LayeredRenderer getList (Ljava/lang/Enum;)Ljava/util/List; 
L5:     invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L10:    astore 4 
L12:    goto L34 

        .stack full 
            locals Object com/fs/graphics/LayeredRenderer Object java/lang/Object Object java/lang/Enum Top Object java/util/Iterator 
            stack 
        .end stack 
L15:    aload 4 
L17:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L22:    checkcast com/fs/graphics/LayeredRenderable 
L25:    astore_3 
L26:    aload_3 
L27:    aload_2 
L28:    aload_1 
L29:    invokeinterface InterfaceMethod com/fs/graphics/LayeredRenderable render (Ljava/lang/Enum;Ljava/lang/Object;)V 3 

        .stack same 
L34:    aload 4 
L36:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L41:    ifne L15 
L44:    return 
L45:    
    .end code 
.end method 

.method public add : (Lcom/fs/graphics/LayeredRenderable;)V 
    .signature (Lcom/fs/graphics/LayeredRenderable<TT;TV;>;)V 
    .code stack 2 locals 5 
L0:     aload_1 
L1:     invokeinterface InterfaceMethod com/fs/graphics/LayeredRenderable getActiveLayers ()Ljava/util/EnumSet; 1 
L6:     ifnonnull L10 
L9:     return 

        .stack same 
L10:    aload_1 
L11:    invokeinterface InterfaceMethod com/fs/graphics/LayeredRenderable getActiveLayers ()Ljava/util/EnumSet; 1 
L16:    invokevirtual Method java/util/EnumSet iterator ()Ljava/util/Iterator; 
L19:    astore_3 
L20:    goto L60 

        .stack full 
            locals Object com/fs/graphics/LayeredRenderer Object com/fs/graphics/LayeredRenderable Top Object java/util/Iterator 
            stack 
        .end stack 
L23:    aload_3 
L24:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L29:    checkcast java/lang/Enum 
L32:    astore_2 
L33:    aload_0 
L34:    aload_2 
L35:    invokevirtual Method com/fs/graphics/LayeredRenderer getList (Ljava/lang/Enum;)Ljava/util/List; 
L38:    astore 4 
L40:    aload 4 
L42:    aload_1 
L43:    invokeinterface InterfaceMethod java/util/List contains (Ljava/lang/Object;)Z 2 
L48:    ifne L60 
L51:    aload 4 
L53:    aload_1 
L54:    invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L59:    pop 

        .stack same 
L60:    aload_3 
L61:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L66:    ifne L23 
L69:    return 
L70:    
    .end code 
.end method 

.method public remove : (Lcom/fs/graphics/LayeredRenderable;)V 
    .signature (Lcom/fs/graphics/LayeredRenderable<TT;TV;>;)V 
    .code stack 2 locals 5 
L0:     aload_0 
L1:     getfield Field com/fs/graphics/LayeredRenderer layerEnumClass Ljava/lang/Class; 
L4:     invokestatic Method java/util/EnumSet allOf (Ljava/lang/Class;)Ljava/util/EnumSet; 
L7:     astore_2 
L8:     aload_2 
L9:     invokevirtual Method java/util/EnumSet iterator ()Ljava/util/Iterator; 
L12:    astore 4 
L14:    goto L40 

        .stack full 
            locals Object com/fs/graphics/LayeredRenderer Object com/fs/graphics/LayeredRenderable Object java/util/EnumSet Top Object java/util/Iterator 
            stack 
        .end stack 
L17:    aload 4 
L19:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L24:    checkcast java/lang/Enum 
L27:    astore_3 
L28:    aload_0 
L29:    aload_3 
L30:    invokevirtual Method com/fs/graphics/LayeredRenderer getList (Ljava/lang/Enum;)Ljava/util/List; 
L33:    aload_1 
L34:    invokeinterface InterfaceMethod java/util/List remove (Ljava/lang/Object;)Z 2 
L39:    pop 

        .stack same 
L40:    aload 4 
L42:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L47:    ifne L17 
L50:    return 
L51:    
    .end code 
.end method 

.method public recompile : (Lcom/fs/graphics/LayeredRenderable;)V 
    .signature (Lcom/fs/graphics/LayeredRenderable<TT;TV;>;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     invokevirtual Method com/fs/graphics/LayeredRenderer remove (Lcom/fs/graphics/LayeredRenderable;)V 
L5:     aload_0 
L6:     aload_1 
L7:     invokevirtual Method com/fs/graphics/LayeredRenderer add (Lcom/fs/graphics/LayeredRenderable;)V 
L10:    return 
L11:    
    .end code 
.end method 

.method public clearLayer : (Ljava/lang/Enum;)V 
    .signature (TT;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     invokevirtual Method com/fs/graphics/LayeredRenderer getList (Ljava/lang/Enum;)Ljava/util/List; 
L5:     invokeinterface InterfaceMethod java/util/List clear ()V 1 
L10:    return 
L11:    
    .end code 
.end method 

.method public clearAll : ()V 
    .code stack 2 locals 4 
L0:     aload_0 
L1:     getfield Field com/fs/graphics/LayeredRenderer layerEnumClass Ljava/lang/Class; 
L4:     invokestatic Method java/util/EnumSet allOf (Ljava/lang/Class;)Ljava/util/EnumSet; 
L7:     astore_1 
L8:     aload_1 
L9:     invokevirtual Method java/util/EnumSet iterator ()Ljava/util/Iterator; 
L12:    astore_3 
L13:    goto L31 

        .stack full 
            locals Object com/fs/graphics/LayeredRenderer Object java/util/EnumSet Top Object java/util/Iterator 
            stack 
        .end stack 
L16:    aload_3 
L17:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L22:    checkcast java/lang/Enum 
L25:    astore_2 
L26:    aload_0 
L27:    aload_2 
L28:    invokevirtual Method com/fs/graphics/LayeredRenderer clearLayer (Ljava/lang/Enum;)V 

        .stack same 
L31:    aload_3 
L32:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L37:    ifne L16 
L40:    return 
L41:    
    .end code 
.end method 

.method private getList : (Ljava/lang/Enum;)Ljava/util/List; 
    .signature (TT;)Ljava/util/List<Lcom/fs/graphics/LayeredRenderable<TT;TV;>;>; 
    .code stack 3 locals 3 
L0:     aload_0 
L1:     getfield Field com/fs/graphics/LayeredRenderer layers Ljava/util/Map; 
L4:     aload_1 
L5:     invokeinterface InterfaceMethod java/util/Map get (Ljava/lang/Object;)Ljava/lang/Object; 2 
L10:    checkcast java/util/List 
L13:    astore_2 
L14:    aload_2 
L15:    ifnonnull L38 
L18:    new java/util/ArrayList 
L21:    dup 
L22:    invokespecial Method java/util/ArrayList <init> ()V 
L25:    astore_2 
L26:    aload_0 
L27:    getfield Field com/fs/graphics/LayeredRenderer layers Ljava/util/Map; 
L30:    aload_1 
L31:    aload_2 
L32:    invokeinterface InterfaceMethod java/util/Map put (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 3 
L37:    pop 

        .stack append Object java/util/List 
L38:    aload_2 
L39:    areturn 
L40:    
    .end code 
.end method 

.method private static blagl : ()V 
    .code stack 3 locals 2 
L0:     new com/fs/graphics/LayeredRenderer 
L3:     dup 
L4:     ldc Class com/fs/graphics/LayeredRenderer$o 
L6:     invokespecial Method com/fs/graphics/LayeredRenderer <init> (Ljava/lang/Class;)V 
L9:     astore_0 
L10:    new com/fs/graphics/LayeredRenderer$1 
L13:    dup 
L14:    invokespecial Method com/fs/graphics/LayeredRenderer$1 <init> ()V 
L17:    astore_1 
L18:    aload_0 
L19:    aload_1 
L20:    invokevirtual Method com/fs/graphics/LayeredRenderer add (Lcom/fs/graphics/LayeredRenderable;)V 
L23:    return 
L24:    
    .end code 
.end method 
.signature '<T:Ljava/lang/Enum<TT;>;V:Ljava/lang/Object;>Ljava/lang/Object;Lcom/fs/util/DoNotObfuscate;' 
.innerclasses 
    com/fs/graphics/LayeredRenderer$1 [0] [0] 
    com/fs/graphics/LayeredRenderer$o com/fs/graphics/LayeredRenderer o private static final enum 
.end innerclasses 
.nestmembers com/fs/graphics/LayeredRenderer$1 com/fs/graphics/LayeredRenderer$o 
.end class 
