.version 61 0 
.class public super com/fs/starfarer/loading/scripts/ScriptStore 
.super java/lang/Object 
.field private static 'Ö00000' Lorg/apache/log4j/Logger; 
.field private static volatile 'ø00000' Lorg/codehaus/janino/JavaSourceClassLoader; 
.field private static volatile if Lcom/fs/starfarer/loading/scripts/B; 
.field public static volatile 'Õ00000' Lcom/fs/util/container/repo/ObjectRepository;
.field private static do Ljava/util/List; .fieldattributes 
    .signature Ljava/util/List<Ljava/lang/String;>; 
.end fieldattributes 
.field private static 'õ00000' Ljava/util/List; .fieldattributes 
    .signature Ljava/util/List<Ljava/lang/String;>; 
.end fieldattributes 
.field private static volatile 'Ò00000' Ljava/util/List; .fieldattributes 
    .signature Ljava/util/List<Ljava/lang/String;>; 
.end fieldattributes 
.field public static void Ljava/util/Map; .fieldattributes 
    .signature Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class;>; 
.end fieldattributes 
.field private static String Ljava/lang/Exception; 
.field private static 'super' Ljava/lang/Thread; 
.field private static final 'Ó00000' Ljava/util/Set; .fieldattributes 
    .signature Ljava/util/Set<Ljava/lang/String;>; 
.end fieldattributes 
.field private static volatile 'ô00000' Z 
.field private static volatile OO0000 Z 

.method static <clinit> : ()V 
    .code stack 2 locals 0 
L0:     ldc Class com/fs/starfarer/loading/scripts/ScriptStore 
L2:     invokestatic Method org/apache/log4j/Logger getLogger (Ljava/lang/Class;)Lorg/apache/log4j/Logger; 
L5:     putstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'Ö00000' Lorg/apache/log4j/Logger; 
L8:     new com/fs/util/container/repo/ObjectRepository 
L11:    dup 
L12:    invokespecial Method com/fs/util/container/repo/ObjectRepository <init> ()V 
L15:    putstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'Õ00000' Lcom/fs/util/container/repo/ObjectRepository; 
L18:    new java/util/ArrayList 
L21:    dup 
L22:    invokespecial Method java/util/ArrayList <init> ()V 
L25:    invokestatic Method java/util/Collections synchronizedList (Ljava/util/List;)Ljava/util/List; 
L28:    putstatic Field com/fs/starfarer/loading/scripts/ScriptStore do Ljava/util/List; 
L31:    new java/util/ArrayList 
L34:    dup 
L35:    invokespecial Method java/util/ArrayList <init> ()V 
L38:    invokestatic Method java/util/Collections synchronizedList (Ljava/util/List;)Ljava/util/List; 
L41:    putstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'õ00000' Ljava/util/List; 
L44:    new java/util/ArrayList 
L47:    dup 
L48:    invokespecial Method java/util/ArrayList <init> ()V 
L51:    putstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'Ò00000' Ljava/util/List; 
L54:    new java/util/HashMap 
L57:    dup 
L58:    invokespecial Method java/util/HashMap <init> ()V 
L61:    putstatic Field com/fs/starfarer/loading/scripts/ScriptStore void Ljava/util/Map; 
L64:    aconst_null 
L65:    putstatic Field com/fs/starfarer/loading/scripts/ScriptStore String Ljava/lang/Exception; 
L68:    new java/util/HashSet 
L71:    dup 
L72:    invokespecial Method java/util/HashSet <init> ()V 
L75:    putstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'Ó00000' Ljava/util/Set; 
L78:    iconst_0 
L79:    putstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'ô00000' Z 
L82:    iconst_0 
L83:    putstatic Field com/fs/starfarer/loading/scripts/ScriptStore OO0000 Z 
L86:    return 
L87:    
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

.method public static 'Õ00000' : ()Ljava/util/List; 
    .signature ()Ljava/util/List<Ljava/lang/String;>; 
    .code stack 1 locals 0 
L0:     getstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'Ò00000' Ljava/util/List; 
L3:     areturn 
L4:     
    .end code 
.end method 

.method public static 'Ò00000' : ()Ljava/util/Set; 
    .signature ()Ljava/util/Set<Ljava/lang/String;>; 
    .code stack 1 locals 0 
L0:     getstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'Ó00000' Ljava/util/Set; 
L3:     areturn 
L4:     
    .end code 
.end method 

.method public static Object : (Ljava/lang/Class;)Ljava/util/List; 
    .signature '<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)Ljava/util/List<TT;>;' 
    .code stack 2 locals 1 
L0:     getstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'Õ00000' Lcom/fs/util/container/repo/ObjectRepository; 
L3:     aload_0 
L4:     invokevirtual Method com/fs/util/container/repo/ObjectRepository getList (Ljava/lang/Class;)Ljava/util/List; 
L7:     areturn 
L8:     
    .end code 
.end method 

.method public static o00000 : (Ljava/lang/Class;)Ljava/lang/Object; 
    .signature '<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)TT;' 
    .code stack 2 locals 1 
L0:     getstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'Õ00000' Lcom/fs/util/container/repo/ObjectRepository; 
L3:     aload_0 
L4:     invokevirtual Method com/fs/util/container/repo/ObjectRepository getList (Ljava/lang/Class;)Ljava/util/List; 
L7:     iconst_0 
L8:     invokeinterface InterfaceMethod java/util/List get (I)Ljava/lang/Object; 2 
L13:    areturn 
L14:    
    .end code 
.end method 

.method public static 'Ò00000' : (Ljava/lang/Class;)Ljava/lang/Object; 
    .signature '<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)TT;' 
    .code stack 5 locals 2 
L0:     getstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'Õ00000' Lcom/fs/util/container/repo/ObjectRepository; 
L3:     aload_0 
L4:     invokevirtual Method com/fs/util/container/repo/ObjectRepository getList (Ljava/lang/Class;)Ljava/util/List; 
L7:     astore_1 
L8:     aload_1 
L9:     invokeinterface InterfaceMethod java/util/List isEmpty ()Z 1 
L14:    ifeq L49 
L17:    new java/lang/RuntimeException 
L20:    dup 
L21:    new java/lang/StringBuilder 
L24:    dup 
L25:    ldc 'Failed to find script of class [' 
L27:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L30:    aload_0 
L31:    invokevirtual Method java/lang/Class getName ()Ljava/lang/String; 
L34:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L37:    ldc ']' 
L39:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L42:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L45:    invokespecial Method java/lang/RuntimeException <init> (Ljava/lang/String;)V 
L48:    athrow 

        .stack append Object java/util/List 
L49:    aload_1 
L50:    iconst_0 
L51:    invokeinterface InterfaceMethod java/util/List get (I)Ljava/lang/Object; 2 
L56:    invokevirtual Method java/lang/Object getClass ()Ljava/lang/Class; 
L59:    invokevirtual Method java/lang/Class getName ()Ljava/lang/String; 
L62:    invokestatic Method com/fs/starfarer/loading/scripts/ScriptStore 'Ò00000' (Ljava/lang/String;)Ljava/lang/Object; 
L65:    areturn 
L66:    
    .end code 
.end method 

.method public static 'Ô00000' : (Ljava/lang/Class;)Ljava/util/List; 
    .signature '<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)Ljava/util/List<TT;>;' 
    .code stack 2 locals 5 
L0:     getstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'Õ00000' Lcom/fs/util/container/repo/ObjectRepository; 
L3:     aload_0 
L4:     invokevirtual Method com/fs/util/container/repo/ObjectRepository getList (Ljava/lang/Class;)Ljava/util/List; 
L7:     astore_1 
L8:     new java/util/ArrayList 
L11:    dup 
L12:    invokespecial Method java/util/ArrayList <init> ()V 
L15:    astore_2 
L16:    iconst_0 
L17:    istore_3 
L18:    goto L51 

        .stack append Object java/util/List Object java/util/List Integer 
L21:    aload_1 
L22:    iload_3 
L23:    invokeinterface InterfaceMethod java/util/List get (I)Ljava/lang/Object; 2 
L28:    invokevirtual Method java/lang/Object getClass ()Ljava/lang/Class; 
L31:    invokevirtual Method java/lang/Class getName ()Ljava/lang/String; 
L34:    astore 4 
L36:    aload_2 
L37:    aload 4 
L39:    invokestatic Method com/fs/starfarer/loading/scripts/ScriptStore 'Ò00000' (Ljava/lang/String;)Ljava/lang/Object; 
L42:    invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L47:    pop 
L48:    iinc 3 1 

        .stack same 
L51:    iload_3 
L52:    aload_1 
L53:    invokeinterface InterfaceMethod java/util/List size ()I 1 
L58:    if_icmplt L21 
L61:    aload_2 
L62:    areturn 
L63:    
    .end code 
.end method 

.method public static 'Ò00000' : (Ljava/lang/String;)Ljava/lang/Object; 
    .code stack 5 locals 2 
        .catch java/lang/Exception from L0 to L41 using L42 
L0:     getstatic Field com/fs/starfarer/loading/scripts/ScriptStore void Ljava/util/Map; 
L3:     aload_0 
L4:     invokeinterface InterfaceMethod java/util/Map get (Ljava/lang/Object;)Ljava/lang/Object; 2 
L9:     checkcast java/lang/Class 
L12:    astore_1 
L13:    aload_1 
L14:    ifnonnull L37 
L17:    aload_0 
L18:    iconst_1 
L19:    getstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'ø00000' Lorg/codehaus/janino/JavaSourceClassLoader; 
L22:    invokestatic Method java/lang/Class forName (Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class; 
L25:    astore_1 
L26:    getstatic Field com/fs/starfarer/loading/scripts/ScriptStore void Ljava/util/Map; 
L29:    aload_0 
L30:    aload_1 
L31:    invokeinterface InterfaceMethod java/util/Map put (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 3 
L36:    pop 

        .stack append Object java/lang/Class 
L37:    aload_1 
L38:    invokevirtual Method java/lang/Class newInstance ()Ljava/lang/Object; 
L41:    areturn 

        .stack full 
            locals Object java/lang/String 
            stack Object java/lang/Exception 
        .end stack 
L42:    astore_1 
L43:    new java/lang/RuntimeException 
L46:    dup 
L47:    new java/lang/StringBuilder 
L50:    dup 
L51:    ldc 'Problem loading class [' 
L53:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L56:    aload_0 
L57:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L60:    ldc ']' 
L62:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L65:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L68:    aload_1 
L69:    invokespecial Method java/lang/RuntimeException <init> (Ljava/lang/String;Ljava/lang/Throwable;)V 
L72:    athrow 
L73:    
    .end code 
.end method 

.method public static Object : (Ljava/lang/String;)V 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     ifnonnull L5 
L4:     return 

        .stack same 
L5:     getstatic Field com/fs/starfarer/loading/scripts/ScriptStore do Ljava/util/List; 
L8:     aload_0 
L9:     invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L14:    pop 
L15:    getstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'õ00000' Ljava/util/List; 
L18:    aload_0 
L19:    invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L24:    pop 
L25:    return 
L26:    
    .end code 
.end method 

.method public static return : ()Z 
    .code stack 1 locals 0 
L0:     getstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'ô00000' Z 
L3:     ireturn 
L4:     
    .end code 
.end method 

.method public static o00000 : (Ljava/lang/ClassLoader;)V
    .code stack 8 locals 1 
L0:     ldc 'enableScriptCaching' 
L2:     invokestatic Method com/fs/starfarer/settings/StarfarerSettings class (Ljava/lang/String;)Z 
L5:     ifne L40 
L8:     new org/codehaus/janino/JavaSourceClassLoader 
L11:    dup 
L12:    aload_0 
L13:    new com/fs/starfarer/loading/Objectsuper 
L16:    dup 
L17:    invokespecial Method com/fs/starfarer/loading/Objectsuper <init> ()V 
L20:    ldc 'UTF-8' 
L22:    invokespecial Method org/codehaus/janino/JavaSourceClassLoader <init> (Ljava/lang/ClassLoader;Lorg/codehaus/janino/util/resource/ResourceFinder;Ljava/lang/String;)V 
L25:    putstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'ø00000' Lorg/codehaus/janino/JavaSourceClassLoader; 
L28:    getstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'ø00000' Lorg/codehaus/janino/JavaSourceClassLoader; 
L31:    iconst_1 
L32:    iconst_1 
L33:    iconst_1 
L34:    invokevirtual Method org/codehaus/janino/JavaSourceClassLoader setDebuggingInfo (ZZZ)V 
L37:    goto L83 

        .stack same 
L40:    new org/codehaus/janino/CachingJavaSourceClassLoader 
L43:    dup 
L44:    aload_0 
L45:    new com/fs/starfarer/loading/Objectsuper 
L48:    dup 
L49:    invokespecial Method com/fs/starfarer/loading/Objectsuper <init> ()V 
L52:    ldc 'UTF-8' 
L54:    new com/fs/starfarer/loading/scripts/ScriptStore$1 
L57:    dup 
L58:    invokespecial Method com/fs/starfarer/loading/scripts/ScriptStore$1 <init> ()V 
L61:    new com/fs/starfarer/loading/scripts/ScriptStore$2 
L64:    dup 
L65:    invokespecial Method com/fs/starfarer/loading/scripts/ScriptStore$2 <init> ()V 
L68:    invokespecial Method org/codehaus/janino/CachingJavaSourceClassLoader <init> (Ljava/lang/ClassLoader;Lorg/codehaus/janino/util/resource/ResourceFinder;Ljava/lang/String;Lorg/codehaus/janino/util/resource/ResourceFinder;Lorg/codehaus/janino/util/resource/ResourceCreator;)V 
L71:    putstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'ø00000' Lorg/codehaus/janino/JavaSourceClassLoader; 
L74:    getstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'ø00000' Lorg/codehaus/janino/JavaSourceClassLoader; 
L77:    iconst_1 
L78:    iconst_1 
L79:    iconst_1 
L80:    invokevirtual Method org/codehaus/janino/JavaSourceClassLoader setDebuggingInfo (ZZZ)V 

        .stack same 
L83:    return 
L84:    
    .end code 
.end method 

.method private static o00000 : (Ljava/lang/String;)Ljava/io/File; 
    .code stack 4 locals 5 
        .catch java/io/IOException from L0 to L43 using L64 
L0:     new java/io/File 
L3:     dup 
L4:     invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'oÓ0000' ()Ljava/lang/String; 
L7:     invokespecial Method java/io/File <init> (Ljava/lang/String;)V 
L10:    astore_1 
L11:    new java/io/File 
L14:    dup 
L15:    aload_1 
L16:    ldc 'cache' 
L18:    invokespecial Method java/io/File <init> (Ljava/io/File;Ljava/lang/String;)V 
L21:    astore_2 
L22:    aload_2 
L23:    invokevirtual Method java/io/File mkdir ()Z 
L26:    pop 
L27:    invokestatic Method com/fs/util/C 'Ó00000' ()Lcom/fs/util/C; 
L30:    aload_0 
L31:    invokestatic Method com/fs/starfarer/loading/scripts/ScriptStore 'Ô00000' (Ljava/lang/String;)Ljava/lang/String; 
L34:    invokevirtual Method com/fs/util/C o00000 (Ljava/lang/String;)Ljava/lang/String; 
L37:    astore_3 
L38:    aload_3 
L39:    ifnonnull L44 
L42:    aload_2 
L43:    areturn 
        .catch java/io/IOException from L44 to L63 using L64 

        .stack append Object java/io/File Object java/io/File Object java/lang/String 
L44:    new java/io/File 
L47:    dup 
L48:    aload_2 
L49:    aload_3 
L50:    invokespecial Method java/io/File <init> (Ljava/io/File;Ljava/lang/String;)V 
L53:    astore 4 
L55:    aload 4 
L57:    invokevirtual Method java/io/File mkdir ()Z 
L60:    pop 
L61:    aload 4 
L63:    areturn 

        .stack full 
            locals Object java/lang/String 
            stack Object java/io/IOException 
        .end stack 
L64:    astore_1 
L65:    new java/lang/RuntimeException 
L68:    dup 
L69:    aload_1 
L70:    invokespecial Method java/lang/RuntimeException <init> (Ljava/lang/Throwable;)V 
L73:    athrow 
L74:    
    .end code 
.end method 

.method private static 'Ô00000' : (Ljava/lang/String;)Ljava/lang/String; 
    .code stack 6 locals 1 
L0:     aload_0 
L1:     ifnonnull L6 
L4:     aload_0 
L5:     areturn 

        .stack same 
L6:     aload_0 
L7:     ldc_w '.class' 
L10:    invokevirtual Method java/lang/String endsWith (Ljava/lang/String;)Z 
L13:    ifeq L47 
L16:    new java/lang/StringBuilder 
L19:    dup 
L20:    aload_0 
L21:    iconst_0 
L22:    aload_0 
L23:    invokevirtual Method java/lang/String length ()I 
L26:    iconst_5 
L27:    isub 
L28:    invokevirtual Method java/lang/String substring (II)Ljava/lang/String; 
L31:    invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L34:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L37:    ldc_w 'java' 
L40:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L43:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L46:    areturn 

        .stack same 
L47:    aload_0 
L48:    areturn 
L49:    
    .end code 
.end method 

.method public static o00000 : ()V 
    .code stack 4 locals 7 
L0:     new com/fs/starfarer/loading/scripts/B 
L3:     dup 
L4:     ldc Class com/fs/starfarer/loading/scripts/ScriptStore 
L6:     invokevirtual Method java/lang/Class getClassLoader ()Ljava/lang/ClassLoader; 
L9:     invokespecial Method com/fs/starfarer/loading/scripts/B <init> (Ljava/lang/ClassLoader;)V 
L12:    putstatic Field com/fs/starfarer/loading/scripts/ScriptStore if Lcom/fs/starfarer/loading/scripts/B; 
L15:    getstatic Field com/fs/starfarer/loading/scripts/ScriptStore if Lcom/fs/starfarer/loading/scripts/B; 
L18:    astore_0 
L19:    getstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'Ò00000' Ljava/util/List; 
L22:    invokeinterface InterfaceMethod java/util/List isEmpty ()Z 1 
L27:    ifne L166 
L30:    getstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'Ò00000' Ljava/util/List; 
L33:    invokeinterface InterfaceMethod java/util/List size ()I 1 
L38:    anewarray java/net/URL 
L41:    astore_1 
L42:    iconst_0 
L43:    istore_2 
L44:    getstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'Ò00000' Ljava/util/List; 
L47:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L52:    astore 4 
L54:    goto L135 

        .stack full 
            locals Object java/lang/ClassLoader Object [Ljava/net/URL; Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L57:    aload 4 
L59:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L64:    checkcast java/lang/String 
L67:    astore_3 
L68:    new java/io/File 
L71:    dup 
L72:    aload_3 
L73:    invokespecial Method java/io/File <init> (Ljava/lang/String;)V 
L76:    astore 5 
        .catch java/net/MalformedURLException from L78 to L114 using L117 
        .catch java/lang/Exception from L0 to L268 using L271 
L78:    aload_1 
L79:    iload_2 
L80:    aload 5 
L82:    invokevirtual Method java/io/File toURL ()Ljava/net/URL; 
L85:    aastore 
L86:    getstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'Ö00000' Lorg/apache/log4j/Logger; 
L89:    new java/lang/StringBuilder 
L92:    dup 
L93:    ldc_w 'Getting ready to load jar file [' 
L96:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L99:    aload_3 
L100:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L103:   ldc ']' 
L105:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L108:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L111:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L114:   goto L132 

        .stack full 
            locals Object java/lang/ClassLoader Object [Ljava/net/URL; Integer Object java/lang/String Object java/util/Iterator Object java/io/File 
            stack Object java/net/MalformedURLException 
        .end stack 
L117:   astore 6 
L119:   getstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'Ö00000' Lorg/apache/log4j/Logger; 
L122:   aload 6 
L124:   invokevirtual Method java/net/MalformedURLException getMessage ()Ljava/lang/String; 
L127:   aload 6 
L129:   invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;Ljava/lang/Throwable;)V 

        .stack same 
L132:   iinc 2 1 

        .stack full 
            locals Object java/lang/ClassLoader Object [Ljava/net/URL; Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L135:   aload 4 
L137:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L142:   ifne L57 
L145:   getstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'Ö00000' Lorg/apache/log4j/Logger; 
L148:   ldc_w 'Loading jar files' 
L151:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L154:   new java/net/URLClassLoader 
L157:   dup 
L158:   aload_1 
L159:   getstatic Field com/fs/starfarer/loading/scripts/ScriptStore if Lcom/fs/starfarer/loading/scripts/B; 
L162:   invokespecial Method java/net/URLClassLoader <init> ([Ljava/net/URL;Ljava/lang/ClassLoader;)V 
L165:   astore_0 

        .stack full 
            locals Object java/lang/ClassLoader 
            stack 
        .end stack 
L166:   aload_0 
L167:   invokestatic Method com/fs/starfarer/loading/scripts/ScriptStore o00000 (Ljava/lang/ClassLoader;)V 
L170:   getstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'Õ00000' Lcom/fs/util/container/repo/ObjectRepository; 
L173:   invokevirtual Method com/fs/util/container/repo/ObjectRepository clear ()V 
L176:   getstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'õ00000' Ljava/util/List; 
L179:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L184:   astore_2 
L185:   goto L259 

        .stack full 
            locals Object java/lang/ClassLoader Top Object java/util/Iterator 
            stack 
        .end stack 
L188:   aload_2 
L189:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L194:   checkcast java/lang/String 
L197:   astore_1 
L198:   getstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'Ö00000' Lorg/apache/log4j/Logger; 
L201:   new java/lang/StringBuilder 
L204:   dup 
L205:   ldc_w 'Compiling script [' 
L208:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L211:   aload_1 
L212:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L215:   ldc ']' 
L217:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L220:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L223:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L226:   getstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'ø00000' Lorg/codehaus/janino/JavaSourceClassLoader; 
L229:   aload_1 
L230:   invokevirtual Method org/codehaus/janino/JavaSourceClassLoader loadClass (Ljava/lang/String;)Ljava/lang/Class; 
L233:   pop 
L234:   getstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'Ó00000' Ljava/util/Set; 
L237:   aload_1 
L238:   invokeinterface InterfaceMethod java/util/Set contains (Ljava/lang/Object;)Z 2 
L243:   ifeq L259 
L246:   aload_1 
L247:   invokestatic Method com/fs/starfarer/loading/scripts/ScriptStore 'Ò00000' (Ljava/lang/String;)Ljava/lang/Object; 
L250:   astore_3 
L251:   getstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'Õ00000' Lcom/fs/util/container/repo/ObjectRepository; 
L254:   aload_3 
L255:   invokevirtual Method com/fs/util/container/repo/ObjectRepository add (Ljava/lang/Object;)Z 
L258:   pop 

        .stack same_extended 
L259:   aload_2 
L260:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L265:   ifne L188 
L268:   goto L281 

        .stack full 
            locals 
            stack Object java/lang/Exception 
        .end stack 
L271:   astore_0 
L272:   new java/lang/RuntimeException 
L275:   dup 
L276:   aload_0 
L277:   invokespecial Method java/lang/RuntimeException <init> (Ljava/lang/Throwable;)V 
L280:   athrow 

        .stack same 
L281:   return 
L282:   
    .end code 
.end method 

.method public static 'ô00000' : ()V 
    .exceptions java/lang/Exception 
    .code stack 3 locals 0 
L0:     new com/fs/starfarer/loading/scripts/B 
L3:     dup 
L4:     ldc Class com/fs/starfarer/loading/scripts/ScriptStore 
L6:     invokevirtual Method java/lang/Class getClassLoader ()Ljava/lang/ClassLoader; 
L9:     invokespecial Method com/fs/starfarer/loading/scripts/B <init> (Ljava/lang/ClassLoader;)V 
L12:    putstatic Field com/fs/starfarer/loading/scripts/ScriptStore if Lcom/fs/starfarer/loading/scripts/B; 
L15:    return 
L16:    
    .end code 
.end method 

.method public static 'ö00000' : ()V 
    .exceptions java/lang/Exception 
    .code stack 4 locals 4 
L0:     getstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'Ó00000' Ljava/util/Set; 
L3:     invokeinterface InterfaceMethod java/util/Set clear ()V 1 
L8:     ldc_w 'data/scripts/plugins' 
L11:    ldc_w 'java' 
L14:    invokestatic Method com/fs/starfarer/loading/LoadingUtils 'Õ00000' (Ljava/lang/String;Ljava/lang/String;)Ljava/util/List; 
L17:    astore_0 
L18:    aload_0 
L19:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L24:    astore_2 
L25:    goto L115 

        .stack full 
            locals Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L28:    aload_2 
L29:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L34:    checkcast java/lang/String 
L37:    astore_1 
L38:    aload_1 
L39:    ldc_w '.java$' 
L42:    ldc_w '' 
L45:    invokevirtual Method java/lang/String replaceAll (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 
L48:    astore_3 
L49:    aload_3 
L50:    ldc_w '\\\\' 
L53:    ldc_w '.' 
L56:    invokevirtual Method java/lang/String replaceAll (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 
L59:    astore_3 
L60:    aload_3 
L61:    ldc_w '/' 
L64:    ldc_w '.' 
L67:    invokevirtual Method java/lang/String replaceAll (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 
L70:    astore_3 
L71:    new java/lang/StringBuilder 
L74:    dup 
L75:    ldc_w 'data.scripts.plugins.' 
L78:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L81:    aload_3 
L82:    aload_3 
L83:    ldc_w '.' 
L86:    invokevirtual Method java/lang/String lastIndexOf (Ljava/lang/String;)I 
L89:    iconst_1 
L90:    iadd 
L91:    invokevirtual Method java/lang/String substring (I)Ljava/lang/String; 
L94:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L97:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L100:   astore_3 
L101:   aload_3 
L102:   invokestatic Method com/fs/starfarer/loading/scripts/ScriptStore Object (Ljava/lang/String;)V 
L105:   getstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'Ó00000' Ljava/util/Set; 
L108:   aload_3 
L109:   invokeinterface InterfaceMethod java/util/Set add (Ljava/lang/Object;)Z 2 
L114:   pop 

        .stack same_extended 
L115:   aload_2 
L116:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L121:   ifne L28 
L124:   ldc_w 'data/scripts/world' 
L127:   ldc_w 'java' 
L130:   invokestatic Method com/fs/starfarer/loading/LoadingUtils 'Õ00000' (Ljava/lang/String;Ljava/lang/String;)Ljava/util/List; 
L133:   astore_0 
L134:   aload_0 
L135:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L140:   astore_2 
L141:   goto L221 

        .stack same 
L144:   aload_2 
L145:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L150:   checkcast java/lang/String 
L153:   astore_1 
L154:   aload_1 
L155:   ldc_w '.java$' 
L158:   ldc_w '' 
L161:   invokevirtual Method java/lang/String replaceAll (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 
L164:   astore_3 
L165:   aload_3 
L166:   ldc_w '\\\\' 
L169:   ldc_w '.' 
L172:   invokevirtual Method java/lang/String replaceAll (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 
L175:   astore_3 
L176:   aload_3 
L177:   ldc_w '/' 
L180:   ldc_w '.' 
L183:   invokevirtual Method java/lang/String replaceAll (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 
L186:   astore_3 
L187:   new java/lang/StringBuilder 
L190:   dup 
L191:   ldc_w 'data.scripts.world.' 
L194:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L197:   aload_3 
L198:   aload_3 
L199:   ldc_w '.' 
L202:   invokevirtual Method java/lang/String lastIndexOf (Ljava/lang/String;)I 
L205:   iconst_1 
L206:   iadd 
L207:   invokevirtual Method java/lang/String substring (I)Ljava/lang/String; 
L210:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L213:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L216:   astore_3 
L217:   aload_3 
L218:   invokestatic Method com/fs/starfarer/loading/scripts/ScriptStore Object (Ljava/lang/String;)V 

        .stack same_extended 
L221:   aload_2 
L222:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L227:   ifne L144 
L230:   return 
L231:   
    .end code 
.end method 

.method public static int : ()V 
    .exceptions java/lang/Exception 
    .code stack 4 locals 0 
L0:     new java/lang/Thread 
L3:     dup 
L4:     new com/fs/starfarer/loading/scripts/ScriptStore$3 
L7:     dup 
L8:     invokespecial Method com/fs/starfarer/loading/scripts/ScriptStore$3 <init> ()V 
L11:    invokespecial Method java/lang/Thread <init> (Ljava/lang/Runnable;)V 
L14:    putstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'super' Ljava/lang/Thread; 
L17:    getstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'super' Ljava/lang/Thread; 
L20:    invokevirtual Method java/lang/Thread start ()V 
L23:    return 
L24:    
    .end code 
.end method 

.method public static 'Ø00000' : ()Lorg/codehaus/janino/JavaSourceClassLoader; 
    .code stack 1 locals 0 
L0:     getstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'ø00000' Lorg/codehaus/janino/JavaSourceClassLoader; 
L3:     areturn 
L4:     
    .end code 
.end method 

.method public static Object : ()Lcom/fs/starfarer/loading/scripts/B; 
    .code stack 1 locals 0 
L0:     getstatic Field com/fs/starfarer/loading/scripts/ScriptStore if Lcom/fs/starfarer/loading/scripts/B; 
L3:     areturn 
L4:     
    .end code 
.end method 

.method public static 'Ô00000' : ()V 
    .exceptions java/lang/Exception 
    .code stack 1 locals 0 
L0:     iconst_1 
L1:     putstatic Field com/fs/starfarer/loading/scripts/ScriptStore OO0000 Z 
L4:     getstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'super' Ljava/lang/Thread; 
L7:     invokevirtual Method java/lang/Thread join ()V 
L10:    getstatic Field com/fs/starfarer/loading/scripts/ScriptStore String Ljava/lang/Exception; 
L13:    ifnull L20 
L16:    getstatic Field com/fs/starfarer/loading/scripts/ScriptStore String Ljava/lang/Exception; 
L19:    athrow 

        .stack same 
L20:    return 
L21:    
    .end code 
.end method 
.innerclasses 
    com/fs/starfarer/loading/scripts/ScriptStore$1 [0] [0] 
    com/fs/starfarer/loading/scripts/ScriptStore$2 [0] [0] 
    com/fs/starfarer/loading/scripts/ScriptStore$3 [0] [0] 
.end innerclasses 
.nestmembers com/fs/starfarer/loading/scripts/ScriptStore$1 com/fs/starfarer/loading/scripts/ScriptStore$1$1 com/fs/starfarer/loading/scripts/ScriptStore$2 com/fs/starfarer/loading/scripts/ScriptStore$3 
.end class 
