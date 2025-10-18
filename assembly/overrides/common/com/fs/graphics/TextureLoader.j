.version 61 0 
.class public super com/fs/graphics/TextureLoader 
.super java/lang/Object 
.field private 'ÔO0000' Ljava/util/HashMap; 
.field private OO0000 Ljava/awt/image/ColorModel; 
.field private 'Ø00000' Ljava/awt/image/ColorModel; 
.field private 'Ô00000' Ljava/nio/IntBuffer; 
.field private static 'ÓO0000' Lorg/apache/log4j/Logger; 
.field new Lcom/fs/graphics/I; 
.field private static 'ö00000' J 
.field public static null Ljava/util/Set; .fieldattributes 
    .signature Ljava/util/Set<Ljava/lang/String;>; 
.end fieldattributes 
.field private o00000 I 
.field private while I 
.field public static float Ljava/util/Map; .fieldattributes 
    .signature Ljava/util/Map<Ljava/lang/Class;Ljava/lang/reflect/Method;>; 
.end fieldattributes 
.field public static 'Ö00000' Ljava/util/Map; .fieldattributes 
    .signature Ljava/util/Map<Ljava/lang/Class;Ljava/lang/reflect/Method;>; 
.end fieldattributes 
.field private 'Ó00000' Ljava/awt/Color; 
.field private 'õ00000' Ljava/awt/Color; 
.field private 'interface' Ljava/awt/Color; 
.field private static oO0000 Ljava/nio/ByteBuffer; 
.field private class Lorg/apache/log4j/Logger; 

.method static <clinit> : ()V 
    .code stack 2 locals 0 
L0:     ldc Class com/fs/graphics/TextureLoader 
L2:     invokestatic Method org/apache/log4j/Logger getLogger (Ljava/lang/Class;)Lorg/apache/log4j/Logger; 
L5:     putstatic Field com/fs/graphics/TextureLoader 'ÓO0000' Lorg/apache/log4j/Logger; 
L8:     lconst_0 
L9:     putstatic Field com/fs/graphics/TextureLoader 'ö00000' J 
L12:    new java/util/LinkedHashSet 
L15:    dup 
L16:    invokespecial Method java/util/LinkedHashSet <init> ()V 
L19:    putstatic Field com/fs/graphics/TextureLoader null Ljava/util/Set; 
L22:    new java/util/LinkedHashMap 
L25:    dup 
L26:    invokespecial Method java/util/LinkedHashMap <init> ()V 
L29:    putstatic Field com/fs/graphics/TextureLoader float Ljava/util/Map; 
L32:    new java/util/LinkedHashMap 
L35:    dup 
L36:    invokespecial Method java/util/LinkedHashMap <init> ()V 
L39:    putstatic Field com/fs/graphics/TextureLoader 'Ö00000' Ljava/util/Map; 
L42:    aconst_null 
L43:    putstatic Field com/fs/graphics/TextureLoader oO0000 Ljava/nio/ByteBuffer; 
L46:    return 
L47:    
    .end code 
.end method 

.method public <init> : ()V 
    .code stack 9 locals 1 
L0:     aload_0 
L1:     invokespecial Method java/lang/Object <init> ()V 
L4:     aload_0 
L5:     new java/util/HashMap 
L8:     dup 
L9:     invokespecial Method java/util/HashMap <init> ()V 
L12:    putfield Field com/fs/graphics/TextureLoader 'ÔO0000' Ljava/util/HashMap; 
L15:    aload_0 
L16:    iconst_1 
L17:    invokestatic Method org/lwjgl/BufferUtils createIntBuffer (I)Ljava/nio/IntBuffer; 
L20:    putfield Field com/fs/graphics/TextureLoader 'Ô00000' Ljava/nio/IntBuffer; 
L23:    aload_0 
L24:    getstatic Field java/awt/Color white Ljava/awt/Color; 
L27:    putfield Field com/fs/graphics/TextureLoader 'Ó00000' Ljava/awt/Color; 
L30:    aload_0 
L31:    getstatic Field java/awt/Color white Ljava/awt/Color; 
L34:    putfield Field com/fs/graphics/TextureLoader 'õ00000' Ljava/awt/Color; 
L37:    aload_0 
L38:    getstatic Field java/awt/Color white Ljava/awt/Color; 
L41:    putfield Field com/fs/graphics/TextureLoader 'interface' Ljava/awt/Color; 
L44:    aload_0 
L45:    aload_0 
L46:    invokevirtual Method java/lang/Object getClass ()Ljava/lang/Class; 
L49:    invokestatic Method org/apache/log4j/Logger getLogger (Ljava/lang/Class;)Lorg/apache/log4j/Logger; 
L52:    putfield Field com/fs/graphics/TextureLoader class Lorg/apache/log4j/Logger; 
L55:    aload_0 
L56:    new java/awt/image/ComponentColorModel 
L59:    dup 
L60:    sipush 1000 
L63:    invokestatic Method java/awt/color/ColorSpace getInstance (I)Ljava/awt/color/ColorSpace; 
L66:    iconst_4 
L67:    newarray int 
L69:    dup 
L70:    iconst_0 
L71:    bipush 8 
L73:    iastore 
L74:    dup 
L75:    iconst_1 
L76:    bipush 8 
L78:    iastore 
L79:    dup 
L80:    iconst_2 
L81:    bipush 8 
L83:    iastore 
L84:    dup 
L85:    iconst_3 
L86:    bipush 8 
L88:    iastore 
L89:    iconst_1 
L90:    iconst_0 
L91:    iconst_3 
L92:    iconst_0 
L93:    invokespecial Method java/awt/image/ComponentColorModel <init> (Ljava/awt/color/ColorSpace;[IZZII)V 
L96:    putfield Field com/fs/graphics/TextureLoader OO0000 Ljava/awt/image/ColorModel; 
L99:    aload_0 
L100:   new java/awt/image/ComponentColorModel 
L103:   dup 
L104:   sipush 1000 
L107:   invokestatic Method java/awt/color/ColorSpace getInstance (I)Ljava/awt/color/ColorSpace; 
L110:   iconst_4 
L111:   newarray int 
L113:   dup 
L114:   iconst_0 
L115:   bipush 8 
L117:   iastore 
L118:   dup 
L119:   iconst_1 
L120:   bipush 8 
L122:   iastore 
L123:   dup 
L124:   iconst_2 
L125:   bipush 8 
L127:   iastore 
L128:   iconst_0 
L129:   iconst_0 
L130:   iconst_1 
L131:   iconst_0 
L132:   invokespecial Method java/awt/image/ComponentColorModel <init> (Ljava/awt/color/ColorSpace;[IZZII)V 
L135:   putfield Field com/fs/graphics/TextureLoader 'Ø00000' Ljava/awt/image/ColorModel; 
L138:   return 
L139:   
    .end code 
.end method 

.method public synchronized o00000 : (Ljava/lang/String;Ljava/lang/String;)V
    .exceptions java/io/IOException 
    .code stack 4 locals 4 
L0:     aload_0 
L1:     getfield Field com/fs/graphics/TextureLoader class Lorg/apache/log4j/Logger; 
L4:     new java/lang/StringBuilder 
L7:     dup 
L8:     ldc 'Loading [' 
L10:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L13:    aload_2 
L14:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L17:    ldc '] as texture with id [' 
L19:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L22:    aload_1 
L23:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L26:    ldc ']' 
L28:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L31:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L34:    invokevirtual Method org/apache/log4j/Logger debug (Ljava/lang/Object;)V 
L37:    aload_0 
L38:    aload_2 
L39:    invokevirtual Method com/fs/graphics/TextureLoader o00000 (Ljava/lang/String;)Lcom/fs/graphics/Object; 
L42:    astore_3 
L43:    aload_3 
L44:    aload_1 
L45:    invokevirtual Method com/fs/graphics/Object 'Ò00000' (Ljava/lang/String;)V 
L48:    aload_1 
L49:    aload_3 
L50:    invokestatic Method com/fs/graphics/oOoO 'super' (Ljava/lang/String;Lcom/fs/graphics/Object;)V 
L53:    return 
L54:    
    .end code 
.end method 

.method public o00000 : (Ljava/lang/String;Ljava/awt/image/BufferedImage;)V 
    .exceptions java/io/IOException 
    .code stack 4 locals 4 
L0:     aload_0 
L1:     getfield Field com/fs/graphics/TextureLoader class Lorg/apache/log4j/Logger; 
L4:     new java/lang/StringBuilder 
L7:     dup 
L8:     ldc 'Loading image as [' 
L10:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L13:    aload_1 
L14:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L17:    ldc ']' 
L19:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L22:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L25:    invokevirtual Method org/apache/log4j/Logger debug (Ljava/lang/Object;)V 
L28:    aload_0 
L29:    aload_1 
L30:    aload_2 
L31:    invokevirtual Method com/fs/graphics/TextureLoader new (Ljava/lang/String;Ljava/awt/image/BufferedImage;)Lcom/fs/graphics/Object; 
L34:    astore_3 
L35:    aload_3 
L36:    aload_1 
L37:    invokevirtual Method com/fs/graphics/Object 'Ò00000' (Ljava/lang/String;)V 
L40:    aload_1 
L41:    aload_3 
L42:    invokestatic Method com/fs/graphics/oOoO 'super' (Ljava/lang/String;Lcom/fs/graphics/Object;)V 
L45:    return 
L46:    
    .end code 
.end method 

.method private new : ()I 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/graphics/TextureLoader 'Ô00000' Ljava/nio/IntBuffer; 
L4:     invokestatic Method org/lwjgl/opengl/GL11 glGenTextures (Ljava/nio/IntBuffer;)V
L7:     aload_0 
L8:     getfield Field com/fs/graphics/TextureLoader 'Ô00000' Ljava/nio/IntBuffer; 
L11:    iconst_0 
L12:    invokevirtual Method java/nio/IntBuffer get (I)I 
L15:    ireturn 
L16:    
    .end code 
.end method 

.method public o00000 : (Ljava/lang/String;)Lcom/fs/graphics/Object; 
    .exceptions java/io/IOException 
    .code stack 8 locals 3 
L0:     aload_0 
L1:     getfield Field com/fs/graphics/TextureLoader 'ÔO0000' Ljava/util/HashMap; 
L4:     aload_1 
L5:     invokevirtual Method java/util/HashMap get (Ljava/lang/Object;)Ljava/lang/Object; 
L8:     checkcast com/fs/graphics/Object 
L11:    astore_2 
L12:    aload_2 
L13:    ifnull L18 
L16:    aload_2 
L17:    areturn 

        .stack append Object com/fs/graphics/Object 
L18:    invokestatic Method com/fs/graphics/oOoO 'Õ00000' ()Z 
L21:    ifeq L54 
L24:    new com/fs/graphics/Object 
L27:    dup 
L28:    sipush 3553 
L31:    iconst_m1 
L32:    aload_1 
L33:    invokespecial Method com/fs/graphics/Object <init> (IILjava/lang/String;)V 
L36:    astore_2 
L37:    aload_2 
L38:    iconst_1 
L39:    invokevirtual Method com/fs/graphics/Object o00000 (Z)V 
L42:    aload_0 
L43:    getfield Field com/fs/graphics/TextureLoader 'ÔO0000' Ljava/util/HashMap; 
L46:    aload_1 
L47:    aload_2 
L48:    invokevirtual Method java/util/HashMap put (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 
L51:    pop 
L52:    aload_2 
L53:    areturn 

        .stack same 
L54:    aload_0 
L55:    aconst_null 
L56:    aload_1 
L57:    sipush 3553 
L60:    sipush 6408 
L63:    sipush 9729 
L66:    sipush 9729 
L69:    iconst_0 
L70:    invokevirtual Method com/fs/graphics/TextureLoader o00000 (Lcom/fs/graphics/Object;Ljava/lang/String;IIIIZ)Lcom/fs/graphics/Object; 
L73:    astore_2 
L74:    aload_0 
L75:    getfield Field com/fs/graphics/TextureLoader 'ÔO0000' Ljava/util/HashMap; 
L78:    aload_1 
L79:    aload_2 
L80:    invokevirtual Method java/util/HashMap put (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 
L83:    pop 
L84:    aload_2 
L85:    areturn 
L86:    
    .end code 
.end method 

.method public new : (Ljava/lang/String;Ljava/awt/image/BufferedImage;)Lcom/fs/graphics/Object; 
    .exceptions java/io/IOException 
    .code stack 6 locals 4 
L0:     aload_0 
L1:     getfield Field com/fs/graphics/TextureLoader 'ÔO0000' Ljava/util/HashMap; 
L4:     aload_1 
L5:     invokevirtual Method java/util/HashMap get (Ljava/lang/Object;)Ljava/lang/Object; 
L8:     checkcast com/fs/graphics/Object 
L11:    astore_3 
L12:    aload_3 
L13:    ifnull L18 
L16:    aload_3 
L17:    areturn 

        .stack append Object com/fs/graphics/Object 
L18:    invokestatic Method com/fs/graphics/oOoO 'Õ00000' ()Z 
L21:    ifeq L54 
L24:    new com/fs/graphics/Object 
L27:    dup 
L28:    sipush 3553 
L31:    iconst_m1 
L32:    aload_1 
L33:    invokespecial Method com/fs/graphics/Object <init> (IILjava/lang/String;)V 
L36:    astore_3 
L37:    aload_3 
L38:    iconst_1 
L39:    invokevirtual Method com/fs/graphics/Object o00000 (Z)V 
L42:    aload_0 
L43:    getfield Field com/fs/graphics/TextureLoader 'ÔO0000' Ljava/util/HashMap; 
L46:    aload_1 
L47:    aload_3 
L48:    invokevirtual Method java/util/HashMap put (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 
L51:    pop 
L52:    aload_3 
L53:    areturn 

        .stack same 
L54:    aload_0 
L55:    aload_2 
L56:    sipush 3553 
L59:    sipush 6408 
L62:    sipush 9729 
L65:    sipush 9729 
L68:    invokevirtual Method com/fs/graphics/TextureLoader o00000 (Ljava/awt/image/BufferedImage;IIII)Lcom/fs/graphics/Object; 
L71:    astore_3 
L72:    aload_0 
L73:    getfield Field com/fs/graphics/TextureLoader 'ÔO0000' Ljava/util/HashMap; 
L76:    aload_1 
L77:    aload_3 
L78:    invokevirtual Method java/util/HashMap put (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 
L81:    pop 
L82:    aload_3 
L83:    areturn 
L84:    
    .end code 
.end method 

.method public o00000 : (Lcom/fs/graphics/Object;Ljava/lang/String;)V 
    .exceptions java/io/IOException 
    .code stack 8 locals 3 
L0:     invokestatic Method com/fs/graphics/oOoO 'Õ00000' ()Z 
L3:     ifeq L17 
L6:     aload_1 
L7:     iconst_1 
L8:     invokevirtual Method com/fs/graphics/Object o00000 (Z)V 
L11:    aload_1 
L12:    aload_2 
L13:    invokevirtual Method com/fs/graphics/Object o00000 (Ljava/lang/String;)V 
L16:    return 

        .stack same 
L17:    aload_0 
L18:    getfield Field com/fs/graphics/TextureLoader class Lorg/apache/log4j/Logger; 
L21:    ldc 'Loading image %s into existing tex id %d' 
L23:    iconst_2 
L24:    anewarray java/lang/Object 
L27:    dup 
L28:    iconst_0 
L29:    aload_2 
L30:    aastore 
L31:    dup 
L32:    iconst_1 
L33:    aload_1 
L34:    invokevirtual Method com/fs/graphics/Object 'ö00000' ()I 
L37:    invokestatic Method java/lang/Integer valueOf (I)Ljava/lang/Integer; 
L40:    aastore 
L41:    invokestatic Method java/lang/String format (Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String; 
L44:    invokevirtual Method org/apache/log4j/Logger debug (Ljava/lang/Object;)V 
L47:    aload_0 
L48:    aload_1 
L49:    aload_2 
L50:    sipush 3553 
L53:    sipush 6408 
L56:    sipush 9729 
L59:    sipush 9729 
L62:    iconst_1 
L63:    invokevirtual Method com/fs/graphics/TextureLoader o00000 (Lcom/fs/graphics/Object;Ljava/lang/String;IIIIZ)Lcom/fs/graphics/Object; 
L66:    pop 
L67:    aload_0 
L68:    getfield Field com/fs/graphics/TextureLoader 'ÔO0000' Ljava/util/HashMap; 
L71:    aload_2 
L72:    aload_1 
L73:    invokevirtual Method java/util/HashMap put (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 
L76:    pop 
L77:    return 
L78:    
    .end code 
.end method 

.method public o00000 : (Lcom/fs/graphics/Object;)V 
    .exceptions java/io/IOException 
    .code stack 3 locals 3 
L0:     invokestatic Method com/fs/graphics/oOoO 'Õ00000' ()Z 
L3:     ifeq L12 
L6:     aload_1 
L7:     iconst_1 
L8:     invokevirtual Method com/fs/graphics/Object o00000 (Z)V 
L11:    return 

        .stack same 
L12:    aload_1 
L13:    invokevirtual Method com/fs/graphics/Object 'Õ00000' ()Ljava/lang/String; 
L16:    astore_2 
L17:    aload_2 
L18:    ifnonnull L31 
L21:    new java/lang/RuntimeException 
L24:    dup 
L25:    ldc "Can't reload texture - was not loaded using a resourceName" 
L27:    invokespecial Method java/lang/RuntimeException <init> (Ljava/lang/String;)V 
L30:    athrow 

        .stack append Object java/lang/String 
L31:    aload_0 
L32:    aload_1 
L33:    aload_2 
L34:    invokevirtual Method com/fs/graphics/TextureLoader o00000 (Lcom/fs/graphics/Object;Ljava/lang/String;)V 
L37:    return 
L38:    
    .end code 
.end method 

.method public o00000 : (Ljava/awt/image/BufferedImage;IIII)Lcom/fs/graphics/Object; 
    .exceptions java/io/IOException 
    .code stack 9 locals 10 
L0:     iconst_0 
L1:     istore 6 
L3:     aload_0 
L4:     getfield Field com/fs/graphics/TextureLoader new Lcom/fs/graphics/I; 
L7:     ifnull L21 
L10:    aload_0 
L11:    getfield Field com/fs/graphics/TextureLoader new Lcom/fs/graphics/I; 
L14:    aload_1 
L15:    invokeinterface InterfaceMethod com/fs/graphics/I o00000 (Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage; 2 
L20:    astore_1 

        .stack append Integer 
L21:    aload_0 
L22:    invokevirtual Method com/fs/graphics/TextureLoader new ()I 
L25:    istore 7 
L27:    new com/fs/graphics/Object 
L30:    dup 
L31:    iload_2 
L32:    iload 7 
L34:    invokespecial Method com/fs/graphics/Object <init> (II)V 
L37:    astore 8 
L39:    iload_2 
L40:    iload 7 
L42:    invokestatic Method com/fs/graphics/Object o00000 (II)V 
L45:    aload 8 
L47:    aload_1 
L48:    invokevirtual Method java/awt/image/BufferedImage getWidth ()I 
L51:    invokevirtual Method com/fs/graphics/Object 'Ò00000' (I)V 
L54:    aload 8 
L56:    aload_1 
L57:    invokevirtual Method java/awt/image/BufferedImage getHeight ()I 
L60:    invokevirtual Method com/fs/graphics/Object o00000 (I)V 
L63:    aload_1 
L64:    invokevirtual Method java/awt/image/BufferedImage getColorModel ()Ljava/awt/image/ColorModel; 
L67:    invokevirtual Method java/awt/image/ColorModel hasAlpha ()Z 
L70:    ifeq L81 
L73:    sipush 6408 
L76:    istore 6 
L78:    goto L86 

        .stack append Integer Object com/fs/graphics/Object 
L81:    sipush 6407 
L84:    istore 6 

        .stack same 
L86:    aload_0 
L87:    aload_1 
L88:    aload 8 
L90:    invokevirtual Method com/fs/graphics/TextureLoader o00000 (Ljava/awt/image/BufferedImage;Lcom/fs/graphics/Object;)Ljava/nio/ByteBuffer; 
L93:    astore 9 
L95:    aload 8 
L97:    aload_0 
L98:    getfield Field com/fs/graphics/TextureLoader 'õ00000' Ljava/awt/Color; 
L101:   invokevirtual Method com/fs/graphics/Object Object (Ljava/awt/Color;)V 
L104:   aload 8 
L106:   aload_0 
L107:   getfield Field com/fs/graphics/TextureLoader 'interface' Ljava/awt/Color; 
L110:   invokevirtual Method com/fs/graphics/Object o00000 (Ljava/awt/Color;)V 
L113:   aload 8 
L115:   aload_0 
L116:   getfield Field com/fs/graphics/TextureLoader 'Ó00000' Ljava/awt/Color; 
L119:   invokevirtual Method com/fs/graphics/Object 'Ò00000' (Ljava/awt/Color;)V 
L122:   iload_2 
L123:   sipush 3553 
L126:   if_icmpne L147 
L129:   iload_2 
L130:   sipush 10241 
L133:   iload 4 
L135:   invokestatic Method org/lwjgl/opengl/GL11 glTexParameteri (III)V
L138:   iload_2 
L139:   sipush 10240 
L142:   iload 5 
L144:   invokestatic Method org/lwjgl/opengl/GL11 glTexParameteri (III)V

        .stack append Object java/nio/ByteBuffer 
L147:   iload_2 
L148:   iconst_0 
L149:   iload_3 
L150:   aload_0 
L151:   aload_1 
L152:   invokevirtual Method java/awt/image/BufferedImage getWidth ()I 
L155:   invokevirtual Method com/fs/graphics/TextureLoader o00000 (I)I 
L158:   aload_0 
L159:   aload_1 
L160:   invokevirtual Method java/awt/image/BufferedImage getHeight ()I 
L163:   invokevirtual Method com/fs/graphics/TextureLoader o00000 (I)I 
L166:   iconst_0 
L167:   iload 6 
L169:   sipush 5121 
L172:   aload 9 
L174:   invokestatic Method org/lwjgl/opengl/GL11 glTexImage2D (IIIIIIIILjava/nio/ByteBuffer;)V
L177:   getstatic Field com/fs/graphics/TextureLoader 'ö00000' J 
L180:   aload 9 
L182:   invokevirtual Method java/nio/ByteBuffer capacity ()I 
L185:   i2l 
L186:   ladd 
L187:   putstatic Field com/fs/graphics/TextureLoader 'ö00000' J 
L190:   aload_0 
L191:   getfield Field com/fs/graphics/TextureLoader class Lorg/apache/log4j/Logger; 
L194:   ldc_w 'Loaded %.2f MB of texture data so far' 
L197:   iconst_1 
L198:   anewarray java/lang/Object 
L201:   dup 
L202:   iconst_0 
L203:   getstatic Field com/fs/graphics/TextureLoader 'ö00000' J 
L206:   l2f 
L207:   ldc_w +1048576.0f 
L210:   fdiv 
L211:   invokestatic Method java/lang/Float valueOf (F)Ljava/lang/Float; 
L214:   aastore 
L215:   invokestatic Method java/lang/String format (Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String; 
L218:   invokevirtual Method org/apache/log4j/Logger debug (Ljava/lang/Object;)V 
L221:   aload 9 
L223:   aload 8 
L225:   invokevirtual Method com/fs/graphics/Object oO0000 ()Ljava/lang/String; 
L228:   invokestatic Method com/fs/graphics/TextureLoader o00000 (Ljava/nio/ByteBuffer;Ljava/lang/String;)V 
L231:   aload 8 
L233:   areturn 
L234:   
    .end code 
.end method 

.method public o00000 : (Lcom/fs/graphics/Object;Ljava/lang/String;IIIIZ)Lcom/fs/graphics/Object; 
    .exceptions java/io/IOException 
    .code stack 9 locals 11 
L0:     iconst_0 
L1:     istore 8 
L3:     aload_1 
L4:     ifnull L15 
L7:     aload_1 
L8:     invokevirtual Method com/fs/graphics/Object 'ö00000' ()I 
L11:    iconst_m1 
L12:    if_icmpne L33 

        .stack append Integer 
L15:    aload_0 
L16:    invokevirtual Method com/fs/graphics/TextureLoader new ()I 
L19:    istore 9 
L21:    new com/fs/graphics/Object 
L24:    dup 
L25:    iload_3 
L26:    iload 9 
L28:    aload_2 
L29:    invokespecial Method com/fs/graphics/Object <init> (IILjava/lang/String;)V 
L32:    astore_1 

        .stack same 
L33:    aload_1 
L34:    aload_2 
L35:    invokevirtual Method com/fs/graphics/Object o00000 (Ljava/lang/String;)V 
L38:    aload_1 
L39:    invokevirtual Method com/fs/graphics/Object 'Ø00000' ()V 
L42:    aconst_null 
L43:    astore 9 
L45:    aload 9 
L47:    ifnonnull L170 
L50:    aload_0 
L51:    aload_2 
L52:    invokevirtual Method com/fs/graphics/TextureLoader 'Ô00000' (Ljava/lang/String;)Ljava/awt/image/BufferedImage; 
L55:    astore 10 
L57:    aload_0 
L58:    aload 10 
L60:    invokevirtual Method java/awt/image/BufferedImage getWidth ()I 
L63:    putfield Field com/fs/graphics/TextureLoader o00000 I 
L66:    aload_0 
L67:    aload 10 
L69:    invokevirtual Method java/awt/image/BufferedImage getHeight ()I 
L72:    putfield Field com/fs/graphics/TextureLoader while I 
L75:    aload_0 
L76:    getfield Field com/fs/graphics/TextureLoader new Lcom/fs/graphics/I; 
L79:    ifnull L95 
L82:    aload_0 
L83:    getfield Field com/fs/graphics/TextureLoader new Lcom/fs/graphics/I; 
L86:    aload 10 
L88:    invokeinterface InterfaceMethod com/fs/graphics/I o00000 (Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage; 2 
L93:    astore 10 

        .stack append Object java/nio/ByteBuffer Object java/awt/image/BufferedImage 
L95:    aload_1 
L96:    aload 10 
L98:    invokevirtual Method java/awt/image/BufferedImage getWidth ()I 
L101:   invokevirtual Method com/fs/graphics/Object 'Ò00000' (I)V 
L104:   aload_1 
L105:   aload 10 
L107:   invokevirtual Method java/awt/image/BufferedImage getHeight ()I 
L110:   invokevirtual Method com/fs/graphics/Object o00000 (I)V 
L113:   aload 10 
L115:   invokevirtual Method java/awt/image/BufferedImage getColorModel ()Ljava/awt/image/ColorModel; 
L118:   invokevirtual Method java/awt/image/ColorModel hasAlpha ()Z 
L121:   ifeq L132 
L124:   sipush 6408 
L127:   istore 8 
L129:   goto L137 

        .stack same 
L132:   sipush 6407 
L135:   istore 8 

        .stack same 
L137:   aload_0 
L138:   aload 10 
L140:   aload_1 
L141:   invokevirtual Method com/fs/graphics/TextureLoader o00000 (Ljava/awt/image/BufferedImage;Lcom/fs/graphics/Object;)Ljava/nio/ByteBuffer; 
L144:   astore 9 
L146:   aload_1 
L147:   aload_0 
L148:   getfield Field com/fs/graphics/TextureLoader 'õ00000' Ljava/awt/Color; 
L151:   invokevirtual Method com/fs/graphics/Object Object (Ljava/awt/Color;)V 
L154:   aload_1 
L155:   aload_0 
L156:   getfield Field com/fs/graphics/TextureLoader 'interface' Ljava/awt/Color; 
L159:   invokevirtual Method com/fs/graphics/Object o00000 (Ljava/awt/Color;)V 
L162:   aload_1 
L163:   aload_0 
L164:   getfield Field com/fs/graphics/TextureLoader 'Ó00000' Ljava/awt/Color; 
L167:   invokevirtual Method com/fs/graphics/Object 'Ò00000' (Ljava/awt/Color;)V 

        .stack chop 1 
L170:   aload_0 
L171:   getfield Field com/fs/graphics/TextureLoader o00000 I 
L174:   sipush 1024 
L177:   if_icmpgt L194 
L180:   aload_0 
L181:   getfield Field com/fs/graphics/TextureLoader while I 
L184:   sipush 1024 
L187:   if_icmpgt L194 
L190:   iconst_1 
L191:   goto L195 

        .stack same 
L194:   iconst_0 

        .stack stack_1 Integer 
L195:   istore 10 
L197:   getstatic Field com/fs/graphics/TextureLoader null Ljava/util/Set; 
L200:   aload_2 
L201:   invokeinterface InterfaceMethod java/util/Set contains (Ljava/lang/Object;)Z 2 
L206:   ifeq L212 
L209:   iconst_1 
L210:   istore 10 

        .stack append Integer 
L212:   iload 10 
L214:   ifeq L252 
L217:   iconst_0 
L218:   istore 7 
L220:   iload_3 
L221:   sipush 10241 
L224:   sipush 9987 
L227:   invokestatic Method org/lwjgl/opengl/GL11 glTexParameteri (III)V
L230:   iload_3 
L231:   sipush 10240 
L234:   iload 6 
L236:   invokestatic Method org/lwjgl/opengl/GL11 glTexParameteri (III)V
L239:   sipush 3553 
L242:   ldc_w 33169 
L245:   iconst_1 
L246:   invokestatic Method org/lwjgl/opengl/GL11 glTexParameteri (III)V
L249:   goto L278 

        .stack same 
L252:   iload_3 
L253:   sipush 10241 
L256:   iload 5 
L258:   invokestatic Method org/lwjgl/opengl/GL11 glTexParameteri (III)V
L261:   iload_3 
L262:   sipush 10240 
L265:   iload 6 
L267:   invokestatic Method org/lwjgl/opengl/GL11 glTexParameteri (III)V
L270:   iload_3 
L271:   ldc_w 33169 
L274:   iconst_0 
L275:   invokestatic Method org/lwjgl/opengl/GL11 glTexParameteri (III)V

        .stack same 
L278:   iload 7 
L280:   ifeq L316 
L283:   iload_3 
L284:   iconst_0 
L285:   iconst_0 
L286:   iconst_0 
L287:   aload_0 
L288:   aload_0 
L289:   getfield Field com/fs/graphics/TextureLoader o00000 I 
L292:   invokevirtual Method com/fs/graphics/TextureLoader o00000 (I)I 
L295:   aload_0 
L296:   aload_0 
L297:   getfield Field com/fs/graphics/TextureLoader while I 
L300:   invokevirtual Method com/fs/graphics/TextureLoader o00000 (I)I 
L303:   iload 8 
L305:   sipush 5121 
L308:   aload 9 
L310:   invokestatic Method org/lwjgl/opengl/GL11 glTexSubImage2D (IIIIIIIILjava/nio/ByteBuffer;)V
L313:   goto L347 

        .stack same 
L316:   iload_3 
L317:   iconst_0 
L318:   iload 4 
L320:   aload_0 
L321:   aload_0 
L322:   getfield Field com/fs/graphics/TextureLoader o00000 I 
L325:   invokevirtual Method com/fs/graphics/TextureLoader o00000 (I)I 
L328:   aload_0 
L329:   aload_0 
L330:   getfield Field com/fs/graphics/TextureLoader while I 
L333:   invokevirtual Method com/fs/graphics/TextureLoader o00000 (I)I 
L336:   iconst_0 
L337:   iload 8 
L339:   sipush 5121 
L342:   aload 9 
L344:   invokestatic Method org/lwjgl/opengl/GL11 glTexImage2D (IIIIIIIILjava/nio/ByteBuffer;)V

        .stack same 
L347:   getstatic Field com/fs/graphics/TextureLoader 'ö00000' J 
L350:   aload 9 
L352:   invokevirtual Method java/nio/ByteBuffer capacity ()I 
L355:   i2l 
L356:   ladd 
L357:   putstatic Field com/fs/graphics/TextureLoader 'ö00000' J 
L360:   iload 10 
L362:   ifeq L383 
L365:   getstatic Field com/fs/graphics/TextureLoader 'ö00000' J 
L368:   aload 9 
L370:   invokevirtual Method java/nio/ByteBuffer capacity ()I 
L373:   i2f 
L374:   ldc_w +0.33000001311302185f 
L377:   fmul 
L378:   f2l 
L379:   ladd 
L380:   putstatic Field com/fs/graphics/TextureLoader 'ö00000' J 

        .stack same 
L383:   aload_0 
L384:   getfield Field com/fs/graphics/TextureLoader class Lorg/apache/log4j/Logger; 
L387:   ldc_w 'Loaded %.2f MB of texture data so far' 
L390:   iconst_1 
L391:   anewarray java/lang/Object 
L394:   dup 
L395:   iconst_0 
L396:   getstatic Field com/fs/graphics/TextureLoader 'ö00000' J 
L399:   l2f 
L400:   ldc_w +1048576.0f 
L403:   fdiv 
L404:   invokestatic Method java/lang/Float valueOf (F)Ljava/lang/Float; 
L407:   aastore 
L408:   invokestatic Method java/lang/String format (Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String; 
L411:   invokevirtual Method org/apache/log4j/Logger debug (Ljava/lang/Object;)V 
L414:   aload 9 
L416:   aload_2 
L417:   invokestatic Method com/fs/graphics/TextureLoader o00000 (Ljava/nio/ByteBuffer;Ljava/lang/String;)V 
L420:   aload_1 
L421:   areturn 
L422:   
    .end code 
.end method 

.method public static synchronized o00000 : (Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .code stack 6 locals 5 
L0:     aload_0 
L1:     getstatic Field com/fs/graphics/TextureLoader oO0000 Ljava/nio/ByteBuffer; 
L4:     if_acmpne L8 
L7:     return 
        .catch java/lang/Exception from L8 to L253 using L256 

        .stack same 
L8:     getstatic Field com/fs/graphics/TextureLoader float Ljava/util/Map; 
L11:    aload_0 
L12:    invokevirtual Method java/lang/Object getClass ()Ljava/lang/Class; 
L15:    invokeinterface InterfaceMethod java/util/Map get (Ljava/lang/Object;)Ljava/lang/Object; 2 
L20:    checkcast java/lang/reflect/Method 
L23:    astore_2 
L24:    aload_2 
L25:    ifnonnull L66 
L28:    aload_0 
L29:    invokevirtual Method java/lang/Object getClass ()Ljava/lang/Class; 
L32:    ldc_w 'cleaner' 
L35:    iconst_0 
L36:    anewarray java/lang/Class 
L39:    invokevirtual Method java/lang/Class getMethod (Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method; 
L42:    astore_2 
L43:    aload_2 
L44:    ifnull L66 
L47:    aload_2 
L48:    iconst_1 
L49:    invokevirtual Method java/lang/reflect/Method setAccessible (Z)V 
L52:    getstatic Field com/fs/graphics/TextureLoader float Ljava/util/Map; 
L55:    aload_0 
L56:    invokevirtual Method java/lang/Object getClass ()Ljava/lang/Class; 
L59:    aload_2 
L60:    invokeinterface InterfaceMethod java/util/Map put (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 3 
L65:    pop 

        .stack append Object java/lang/reflect/Method 
L66:    aload_2 
L67:    ifnull L233 
L70:    aload_2 
L71:    aload_0 
L72:    iconst_0 
L73:    anewarray java/lang/Object 
L76:    invokevirtual Method java/lang/reflect/Method invoke (Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; 
L79:    astore_3 
L80:    aload_3 
L81:    ifnull L210 
L84:    getstatic Field com/fs/graphics/TextureLoader 'Ö00000' Ljava/util/Map; 
L87:    aload_3 
L88:    invokevirtual Method java/lang/Object getClass ()Ljava/lang/Class; 
L91:    invokeinterface InterfaceMethod java/util/Map get (Ljava/lang/Object;)Ljava/lang/Object; 2 
L96:    checkcast java/lang/reflect/Method 
L99:    astore 4 
L101:   aload 4 
L103:   ifnonnull L148 
L106:   aload_3 
L107:   invokevirtual Method java/lang/Object getClass ()Ljava/lang/Class; 
L110:   ldc_w 'clean' 
L113:   iconst_0 
L114:   anewarray java/lang/Class 
L117:   invokevirtual Method java/lang/Class getMethod (Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method; 
L120:   astore 4 
L122:   aload 4 
L124:   ifnull L148 
L127:   aload 4 
L129:   iconst_1 
L130:   invokevirtual Method java/lang/reflect/Method setAccessible (Z)V 
L133:   getstatic Field com/fs/graphics/TextureLoader 'Ö00000' Ljava/util/Map; 
L136:   aload_3 
L137:   invokevirtual Method java/lang/Object getClass ()Ljava/lang/Class; 
L140:   aload 4 
L142:   invokeinterface InterfaceMethod java/util/Map put (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 3 
L147:   pop 

        .stack append Object java/lang/Object Object java/lang/reflect/Method 
L148:   aload 4 
L150:   ifnull L187 
L153:   aload 4 
L155:   aload_3 
L156:   iconst_0 
L157:   anewarray java/lang/Object 
L160:   invokevirtual Method java/lang/reflect/Method invoke (Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object; 
L163:   pop 
L164:   getstatic Field com/fs/graphics/TextureLoader 'ÓO0000' Lorg/apache/log4j/Logger; 
L167:   ldc_w 'Cleaned buffer for texture %s (using reflection)' 
L170:   iconst_1 
L171:   anewarray java/lang/Object 
L174:   dup 
L175:   iconst_0 
L176:   aload_1 
L177:   aastore 
L178:   invokestatic Method java/lang/String format (Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String; 
L181:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L184:   goto L268 

        .stack same 
L187:   getstatic Field com/fs/graphics/TextureLoader 'ÓO0000' Lorg/apache/log4j/Logger; 
L190:   ldc_w 'Buffer for texture %s can not be destroyed' 
L193:   iconst_1 
L194:   anewarray java/lang/Object 
L197:   dup 
L198:   iconst_0 
L199:   aload_1 
L200:   aastore 
L201:   invokestatic Method java/lang/String format (Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String; 
L204:   invokevirtual Method org/apache/log4j/Logger warn (Ljava/lang/Object;)V 
L207:   goto L268 

        .stack chop 1 
L210:   getstatic Field com/fs/graphics/TextureLoader 'ÓO0000' Lorg/apache/log4j/Logger; 
L213:   ldc_w 'Buffer for texture %s can not be destroyed' 
L216:   iconst_1 
L217:   anewarray java/lang/Object 
L220:   dup 
L221:   iconst_0 
L222:   aload_1 
L223:   aastore 
L224:   invokestatic Method java/lang/String format (Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String; 
L227:   invokevirtual Method org/apache/log4j/Logger warn (Ljava/lang/Object;)V 
L230:   goto L268 

        .stack chop 1 
L233:   getstatic Field com/fs/graphics/TextureLoader 'ÓO0000' Lorg/apache/log4j/Logger; 
L236:   ldc_w 'Buffer for texture %s can not be destroyed' 
L239:   iconst_1 
L240:   anewarray java/lang/Object 
L243:   dup 
L244:   iconst_0 
L245:   aload_1 
L246:   aastore 
L247:   invokestatic Method java/lang/String format (Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String; 
L250:   invokevirtual Method org/apache/log4j/Logger warn (Ljava/lang/Object;)V 
L253:   goto L268 

        .stack full 
            locals Object java/nio/ByteBuffer Object java/lang/String 
            stack Object java/lang/Exception 
        .end stack 
L256:   astore_2 
L257:   getstatic Field com/fs/graphics/TextureLoader 'ÓO0000' Lorg/apache/log4j/Logger; 
L260:   aload_2 
L261:   invokevirtual Method java/lang/Exception getMessage ()Ljava/lang/String; 
L264:   aload_2 
L265:   invokevirtual Method org/apache/log4j/Logger warn (Ljava/lang/Object;Ljava/lang/Throwable;)V 

        .stack same 
L268:   return 
L269:   
    .end code 
.end method 

.method private new : (Ljava/lang/String;)Ljava/nio/ByteBuffer; 
    .exceptions java/io/IOException 
    .code stack 5 locals 8 
L0:     aconst_null 
L1:     astore_2 
L2:     ldc Class com/fs/graphics/TextureLoader 
L4:     invokevirtual Method java/lang/Class getClassLoader ()Ljava/lang/ClassLoader; 
L7:     aload_1 
L8:     invokevirtual Method java/lang/ClassLoader getResource (Ljava/lang/String;)Ljava/net/URL; 
L11:    astore_3 
        .catch java/lang/Exception from L12 to L35 using L38 
        .catch [0] from L2 to L148 using L211 
L12:    getstatic Field java/lang/System out Ljava/io/PrintStream; 
L15:    aload_1 
L16:    invokevirtual Method java/io/PrintStream println (Ljava/lang/String;)V 
L19:    new java/io/BufferedInputStream 
L22:    dup 
L23:    new java/io/FileInputStream 
L26:    dup 
L27:    aload_1 
L28:    invokespecial Method java/io/FileInputStream <init> (Ljava/lang/String;)V 
L31:    invokespecial Method java/io/BufferedInputStream <init> (Ljava/io/InputStream;)V 
L34:    astore_2 
L35:    goto L90 

        .stack full 
            locals Object com/fs/graphics/TextureLoader Object java/lang/String Object java/io/InputStream Object java/net/URL 
            stack Object java/lang/Exception 
        .end stack 
L38:    astore 4 
L40:    aload_3 
L41:    ifnull L59 
L44:    aload_0 
L45:    invokevirtual Method java/lang/Object getClass ()Ljava/lang/Class; 
L48:    invokevirtual Method java/lang/Class getClassLoader ()Ljava/lang/ClassLoader; 
L51:    aload_1 
L52:    invokevirtual Method java/lang/ClassLoader getResourceAsStream (Ljava/lang/String;)Ljava/io/InputStream; 
L55:    astore_2 
L56:    goto L90 

        .stack append Object java/lang/Exception 
L59:    new java/lang/RuntimeException 
L62:    dup 
L63:    new java/lang/StringBuilder 
L66:    dup 
L67:    ldc_w 'Error loading [' 
L70:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L73:    aload_1 
L74:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L77:    ldc_w '] image, url is null' 
L80:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L83:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L86:    invokespecial Method java/lang/RuntimeException <init> (Ljava/lang/String;)V 
L89:    athrow 

        .stack chop 1 
L90:    new de/matthiasmann/twl/utils/PNGDecoder 
L93:    dup 
L94:    aload_2 
L95:    invokespecial Method de/matthiasmann/twl/utils/PNGDecoder <init> (Ljava/io/InputStream;)V 
L98:    astore 4 
L100:   aload_0 
L101:   aload 4 
L103:   invokevirtual Method de/matthiasmann/twl/utils/PNGDecoder getWidth ()I 
L106:   putfield Field com/fs/graphics/TextureLoader o00000 I 
L109:   aload_0 
L110:   aload 4 
L112:   invokevirtual Method de/matthiasmann/twl/utils/PNGDecoder getHeight ()I 
L115:   putfield Field com/fs/graphics/TextureLoader while I 
L118:   aload_0 
L119:   getfield Field com/fs/graphics/TextureLoader o00000 I 
L122:   aload_0 
L123:   aload_0 
L124:   getfield Field com/fs/graphics/TextureLoader o00000 I 
L127:   invokevirtual Method com/fs/graphics/TextureLoader o00000 (I)I 
L130:   if_icmpne L148 
L133:   aload_0 
L134:   getfield Field com/fs/graphics/TextureLoader while I 
L137:   aload_0 
L138:   aload_0 
L139:   getfield Field com/fs/graphics/TextureLoader while I 
L142:   invokevirtual Method com/fs/graphics/TextureLoader o00000 (I)I 
L145:   if_icmpeq L158 

        .stack append Object de/matthiasmann/twl/utils/PNGDecoder 
L148:   aload_2 
L149:   ifnull L156 
L152:   aload_2 
L153:   invokevirtual Method java/io/InputStream close ()V 

        .stack same 
L156:   aconst_null 
L157:   areturn 
        .catch [0] from L158 to L200 using L211 

        .stack same 
L158:   iconst_4 
L159:   aload_0 
L160:   getfield Field com/fs/graphics/TextureLoader o00000 I 
L163:   imul 
L164:   aload_0 
L165:   getfield Field com/fs/graphics/TextureLoader while I 
L168:   imul 
L169:   invokestatic Method java/nio/ByteBuffer allocateDirect (I)Ljava/nio/ByteBuffer; 
L172:   astore 5 
L174:   aload 4 
L176:   aload 5 
L178:   aload_0 
L179:   getfield Field com/fs/graphics/TextureLoader o00000 I 
L182:   iconst_4 
L183:   imul 
L184:   getstatic Field de/matthiasmann/twl/utils/PNGDecoder$Format RGBA Lde/matthiasmann/twl/utils/PNGDecoder$Format; 
L187:   invokevirtual Method de/matthiasmann/twl/utils/PNGDecoder decode (Ljava/nio/ByteBuffer;ILde/matthiasmann/twl/utils/PNGDecoder$Format;)V 
L190:   aload 5 
L192:   invokevirtual Method java/nio/ByteBuffer flip ()Ljava/nio/ByteBuffer; 
L195:   pop 
L196:   aload 5 
L198:   astore 7 
L200:   aload_2 
L201:   ifnull L208 
L204:   aload_2 
L205:   invokevirtual Method java/io/InputStream close ()V 

        .stack full 
            locals Object com/fs/graphics/TextureLoader Object java/lang/String Object java/io/InputStream Object java/net/URL Object de/matthiasmann/twl/utils/PNGDecoder Object java/nio/ByteBuffer Top Object java/nio/ByteBuffer 
            stack 
        .end stack 
L208:   aload 7 
L210:   areturn 

        .stack full 
            locals Object com/fs/graphics/TextureLoader Object java/lang/String Object java/io/InputStream 
            stack Object java/lang/Throwable 
        .end stack 
L211:   astore 6 
L213:   aload_2 
L214:   ifnull L221 
L217:   aload_2 
L218:   invokevirtual Method java/io/InputStream close ()V 

        .stack full 
            locals Object com/fs/graphics/TextureLoader Object java/lang/String Object java/io/InputStream Top Top Top Object java/lang/Throwable 
            stack 
        .end stack 
L221:   aload 6 
L223:   athrow 
L224:   
    .end code 
.end method 

.method private o00000 : (I)I 
    .code stack 2 locals 3 
L0:     iconst_2 
L1:     istore_2 
L2:     goto L9 

        .stack append Integer 
L5:     iload_2 
L6:     iconst_2 
L7:     imul 
L8:     istore_2 

        .stack same 
L9:     iload_2 
L10:    iload_1 
L11:    if_icmplt L5 
L14:    iload_2 
L15:    ireturn 
L16:    
    .end code 
.end method 

.method private o00000 : (Ljava/awt/image/BufferedImage;Lcom/fs/graphics/Object;)Ljava/nio/ByteBuffer; 
    .code stack 7 locals 22 
L0:     aconst_null 
L1:     astore_3 
L2:     iconst_2 
L3:     istore 6 
L5:     iconst_2 
L6:     istore 7 
L8:     goto L17 

        .stack full 
            locals Object com/fs/graphics/TextureLoader Object java/awt/image/BufferedImage Object com/fs/graphics/Object Object java/nio/ByteBuffer Top Top Integer Integer 
            stack 
        .end stack 
L11:    iload 6 
L13:    iconst_2 
L14:    imul 
L15:    istore 6 

        .stack same 
L17:    iload 6 
L19:    aload_1 
L20:    invokevirtual Method java/awt/image/BufferedImage getWidth ()I 
L23:    if_icmplt L11 
L26:    goto L35 

        .stack same 
L29:    iload 7 
L31:    iconst_2 
L32:    imul 
L33:    istore 7 

        .stack same 
L35:    iload 7 
L37:    aload_1 
L38:    invokevirtual Method java/awt/image/BufferedImage getHeight ()I 
L41:    if_icmplt L29 
L44:    aload_2 
L45:    iload 7 
L47:    invokevirtual Method com/fs/graphics/Object 'Ô00000' (I)V 
L50:    aload_2 
L51:    iload 6 
L53:    invokevirtual Method com/fs/graphics/Object Object (I)V 
L56:    aload_0 
L57:    getstatic Field java/awt/Color white Ljava/awt/Color; 
L60:    putfield Field com/fs/graphics/TextureLoader 'interface' Ljava/awt/Color; 
L63:    aload_0 
L64:    getstatic Field java/awt/Color white Ljava/awt/Color; 
L67:    putfield Field com/fs/graphics/TextureLoader 'õ00000' Ljava/awt/Color; 
L70:    aload_0 
L71:    getstatic Field java/awt/Color white Ljava/awt/Color; 
L74:    putfield Field com/fs/graphics/TextureLoader 'Ó00000' Ljava/awt/Color; 
L77:    fconst_0 
L78:    fstore 8 
L80:    fconst_0 
L81:    fstore 9 
L83:    fconst_0 
L84:    fstore 10 
L86:    fconst_0 
L87:    fstore 11 
L89:    sipush 256 
L92:    newarray float 
L94:    astore 12 
L96:    sipush 256 
L99:    newarray float 
L101:   astore 13 
L103:   sipush 256 
L106:   newarray float 
L108:   astore 14 
L110:   aload_1 
L111:   invokevirtual Method java/awt/image/BufferedImage getWidth ()I 
L114:   istore 15 
L116:   aload_1 
L117:   invokevirtual Method java/awt/image/BufferedImage getHeight ()I 
L120:   istore 16 
L122:   aload_1 
L123:   invokevirtual Method java/awt/image/BufferedImage getData ()Ljava/awt/image/Raster; 
L126:   astore 17 
L128:   aload_1 
L129:   invokevirtual Method java/awt/image/BufferedImage getColorModel ()Ljava/awt/image/ColorModel; 
L132:   invokevirtual Method java/awt/image/ColorModel hasAlpha ()Z 
L135:   ifeq L368 
L138:   iload 6 
L140:   iload 7 
L142:   imul 
L143:   iconst_4 
L144:   imul 
L145:   invokestatic Method org/lwjgl/BufferUtils createByteBuffer (I)Ljava/nio/ByteBuffer; 
L148:   astore_3 
L149:   aload_3 
L150:   iconst_0 
L151:   invokevirtual Method java/nio/ByteBuffer position (I)Ljava/nio/ByteBuffer; 
L154:   pop 
L155:   aload_3 
L156:   aload_3 
L157:   invokevirtual Method java/nio/ByteBuffer capacity ()I 
L160:   invokevirtual Method java/nio/ByteBuffer limit (I)Ljava/nio/ByteBuffer; 
L163:   pop 
L164:   iconst_4 
L165:   newarray int 
L167:   astore 18 
L169:   iconst_0 
L170:   istore 19 
L172:   goto L358 

        .stack full 
            locals Object com/fs/graphics/TextureLoader Object java/awt/image/BufferedImage Object com/fs/graphics/Object Object java/nio/ByteBuffer Top Top Integer Integer Float Float Float Float Object [F Object [F Object [F Integer Integer Object java/awt/image/Raster Object [I Integer 
            stack 
        .end stack 
L175:   iconst_0 
L176:   istore 20 
L178:   goto L348 

        .stack append Integer 
L181:   aload 17 
L183:   iload 20 
L185:   iload 16 
L187:   iload 19 
L189:   isub 
L190:   iconst_1 
L191:   isub 
L192:   aload 18 
L194:   invokevirtual Method java/awt/image/Raster getPixel (II[I)[I 
L197:   pop 
L198:   aload 18 
L200:   iconst_3 
L201:   iaload 
L202:   ifne L208 
L205:   goto L345 

        .stack same 
L208:   iload 19 
L210:   iload 6 
L212:   imul 
L213:   iload 20 
L215:   iadd 
L216:   iconst_4 
L217:   imul 
L218:   istore 21 
L220:   aload_3 
L221:   iload 21 
L223:   iconst_0 
L224:   iadd 
L225:   aload 18 
L227:   iconst_0 
L228:   iaload 
L229:   i2b 
L230:   invokevirtual Method java/nio/ByteBuffer put (IB)Ljava/nio/ByteBuffer; 
L233:   pop 
L234:   aload_3 
L235:   iload 21 
L237:   iconst_1 
L238:   iadd 
L239:   aload 18 
L241:   iconst_1 
L242:   iaload 
L243:   i2b 
L244:   invokevirtual Method java/nio/ByteBuffer put (IB)Ljava/nio/ByteBuffer; 
L247:   pop 
L248:   aload_3 
L249:   iload 21 
L251:   iconst_2 
L252:   iadd 
L253:   aload 18 
L255:   iconst_2 
L256:   iaload 
L257:   i2b 
L258:   invokevirtual Method java/nio/ByteBuffer put (IB)Ljava/nio/ByteBuffer; 
L261:   pop 
L262:   aload_3 
L263:   iload 21 
L265:   iconst_3 
L266:   iadd 
L267:   aload 18 
L269:   iconst_3 
L270:   iaload 
L271:   i2b 
L272:   invokevirtual Method java/nio/ByteBuffer put (IB)Ljava/nio/ByteBuffer; 
L275:   pop 
L276:   fload 8 
L278:   aload 18 
L280:   iconst_0 
L281:   iaload 
L282:   i2f 
L283:   fadd 
L284:   fstore 8 
L286:   fload 9 
L288:   aload 18 
L290:   iconst_1 
L291:   iaload 
L292:   i2f 
L293:   fadd 
L294:   fstore 9 
L296:   fload 10 
L298:   aload 18 
L300:   iconst_2 
L301:   iaload 
L302:   i2f 
L303:   fadd 
L304:   fstore 10 
L306:   aload 12 
L308:   aload 18 
L310:   iconst_0 
L311:   iaload 
L312:   dup2 
L313:   faload 
L314:   fconst_1 
L315:   fadd 
L316:   fastore 
L317:   aload 13 
L319:   aload 18 
L321:   iconst_1 
L322:   iaload 
L323:   dup2 
L324:   faload 
L325:   fconst_1 
L326:   fadd 
L327:   fastore 
L328:   aload 14 
L330:   aload 18 
L332:   iconst_2 
L333:   iaload 
L334:   dup2 
L335:   faload 
L336:   fconst_1 
L337:   fadd 
L338:   fastore 
L339:   fload 11 
L341:   fconst_1 
L342:   fadd 
L343:   fstore 11 

        .stack same_extended 
L345:   iinc 20 1 

        .stack same 
L348:   iload 20 
L350:   iload 15 
L352:   if_icmplt L181 
L355:   iinc 19 1 

        .stack chop 1 
L358:   iload 19 
L360:   iload 16 
L362:   if_icmplt L175 
L365:   goto L648 

        .stack chop 2 
L368:   iload 15 
L370:   sipush 2048 
L373:   if_icmpne L415 
L376:   iload 16 
L378:   sipush 2048 
L381:   if_icmpne L415 
L384:   getstatic Field com/fs/graphics/TextureLoader oO0000 Ljava/nio/ByteBuffer; 
L387:   ifnonnull L408 
L390:   iload 6 
L392:   iload 7 
L394:   imul 
L395:   iconst_3 
L396:   imul 
L397:   invokestatic Method org/lwjgl/BufferUtils createByteBuffer (I)Ljava/nio/ByteBuffer; 
L400:   astore_3 
L401:   aload_3 
L402:   putstatic Field com/fs/graphics/TextureLoader oO0000 Ljava/nio/ByteBuffer; 
L405:   goto L426 

        .stack same 
L408:   getstatic Field com/fs/graphics/TextureLoader oO0000 Ljava/nio/ByteBuffer; 
L411:   astore_3 
L412:   goto L426 

        .stack same 
L415:   iload 6 
L417:   iload 7 
L419:   imul 
L420:   iconst_3 
L421:   imul 
L422:   invokestatic Method org/lwjgl/BufferUtils createByteBuffer (I)Ljava/nio/ByteBuffer; 
L425:   astore_3 

        .stack same 
L426:   aload_3 
L427:   iconst_0 
L428:   invokevirtual Method java/nio/ByteBuffer position (I)Ljava/nio/ByteBuffer; 
L431:   pop 
L432:   aload_3 
L433:   aload_3 
L434:   invokevirtual Method java/nio/ByteBuffer capacity ()I 
L437:   invokevirtual Method java/nio/ByteBuffer limit (I)Ljava/nio/ByteBuffer; 
L440:   pop 
L441:   iconst_3 
L442:   newarray int 
L444:   astore 18 
L446:   iconst_0 
L447:   istore 19 
L449:   goto L641 

        .stack append Object [I Integer 
L452:   iconst_0 
L453:   istore 20 
L455:   goto L631 

        .stack append Integer 
L458:   aload 17 
L460:   iload 20 
L462:   iload 16 
L464:   iload 19 
L466:   isub 
L467:   iconst_1 
L468:   isub 
L469:   aload 18 
L471:   invokevirtual Method java/awt/image/Raster getPixel (II[I)[I 
L474:   pop 
L475:   iload 19 
L477:   iload 6 
L479:   imul 
L480:   iload 20 
L482:   iadd 
L483:   iconst_3 
L484:   imul 
L485:   istore 21 
L487:   aload_3 
L488:   iload 21 
L490:   iconst_0 
L491:   iadd 
L492:   aload 18 
L494:   iconst_0 
L495:   iaload 
L496:   i2b 
L497:   invokevirtual Method java/nio/ByteBuffer put (IB)Ljava/nio/ByteBuffer; 
L500:   pop 
L501:   aload_3 
L502:   iload 21 
L504:   iconst_1 
L505:   iadd 
L506:   aload 18 
L508:   iconst_1 
L509:   iaload 
L510:   i2b 
L511:   invokevirtual Method java/nio/ByteBuffer put (IB)Ljava/nio/ByteBuffer; 
L514:   pop 
L515:   aload_3 
L516:   iload 21 
L518:   iconst_2 
L519:   iadd 
L520:   aload 18 
L522:   iconst_2 
L523:   iaload 
L524:   i2b 
L525:   invokevirtual Method java/nio/ByteBuffer put (IB)Ljava/nio/ByteBuffer; 
L528:   pop 
L529:   fload 8 
L531:   aload 18 
L533:   iconst_0 
L534:   iaload 
L535:   i2f 
L536:   fadd 
L537:   fstore 8 
L539:   fload 9 
L541:   aload 18 
L543:   iconst_1 
L544:   iaload 
L545:   i2f 
L546:   fadd 
L547:   fstore 9 
L549:   fload 10 
L551:   aload 18 
L553:   iconst_2 
L554:   iaload 
L555:   i2f 
L556:   fadd 
L557:   fstore 10 
L559:   aload 18 
L561:   iconst_0 
L562:   iaload 
L563:   sipush 256 
L566:   if_icmpge L622 
L569:   aload 18 
L571:   iconst_1 
L572:   iaload 
L573:   sipush 256 
L576:   if_icmpge L622 
L579:   aload 18 
L581:   iconst_2 
L582:   iaload 
L583:   sipush 256 
L586:   if_icmpge L622 
L589:   aload 12 
L591:   aload 18 
L593:   iconst_0 
L594:   iaload 
L595:   dup2 
L596:   faload 
L597:   fconst_1 
L598:   fadd 
L599:   fastore 
L600:   aload 13 
L602:   aload 18 
L604:   iconst_1 
L605:   iaload 
L606:   dup2 
L607:   faload 
L608:   fconst_1 
L609:   fadd 
L610:   fastore 
L611:   aload 14 
L613:   aload 18 
L615:   iconst_2 
L616:   iaload 
L617:   dup2 
L618:   faload 
L619:   fconst_1 
L620:   fadd 
L621:   fastore 

        .stack append Integer 
L622:   fload 11 
L624:   fconst_1 
L625:   fadd 
L626:   fstore 11 
L628:   iinc 20 1 

        .stack chop 1 
L631:   iload 20 
L633:   iload 15 
L635:   if_icmplt L458 
L638:   iinc 19 1 

        .stack chop 1 
L641:   iload 19 
L643:   iload 16 
L645:   if_icmplt L452 

        .stack chop 2 
L648:   fload 11 
L650:   fconst_0 
L651:   fcmpl 
L652:   ifle L1008 
L655:   fload 8 
L657:   fload 11 
L659:   fdiv 
L660:   f2i 
L661:   istore 18 
L663:   fload 9 
L665:   fload 11 
L667:   fdiv 
L668:   f2i 
L669:   istore 19 
L671:   fload 10 
L673:   fload 11 
L675:   fdiv 
L676:   f2i 
L677:   istore 20 
L679:   iload 18 
L681:   sipush 255 
L684:   if_icmple L692 
L687:   sipush 255 
L690:   istore 18 

        .stack append Integer Integer Integer 
L692:   iload 19 
L694:   sipush 255 
L697:   if_icmple L705 
L700:   sipush 255 
L703:   istore 19 

        .stack same 
L705:   iload 20 
L707:   sipush 255 
L710:   if_icmple L718 
L713:   sipush 255 
L716:   istore 20 

        .stack same 
L718:   iload 18 
L720:   ifge L726 
L723:   iconst_0 
L724:   istore 18 

        .stack same 
L726:   iload 19 
L728:   ifge L734 
L731:   iconst_0 
L732:   istore 19 

        .stack same 
L734:   iload 20 
L736:   ifge L742 
L739:   iconst_0 
L740:   istore 20 

        .stack same 
L742:   aload_0 
L743:   new java/awt/Color 
L746:   dup 
L747:   iload 18 
L749:   iload 19 
L751:   iload 20 
L753:   sipush 255 
L756:   invokespecial Method java/awt/Color <init> (IIII)V 
L759:   putfield Field com/fs/graphics/TextureLoader 'õ00000' Ljava/awt/Color; 
L762:   ldc_w +0.5f 
L765:   fstore 21 
L767:   aload_0 
L768:   aload 12 
L770:   fload 11 
L772:   fload 21 
L774:   fmul 
L775:   invokevirtual Method com/fs/graphics/TextureLoader new ([FF)F 
L778:   f2i 
L779:   istore 18 
L781:   aload_0 
L782:   aload 13 
L784:   fload 11 
L786:   fload 21 
L788:   fmul 
L789:   invokevirtual Method com/fs/graphics/TextureLoader new ([FF)F 
L792:   f2i 
L793:   istore 19 
L795:   aload_0 
L796:   aload 14 
L798:   fload 11 
L800:   fload 21 
L802:   fmul 
L803:   invokevirtual Method com/fs/graphics/TextureLoader new ([FF)F 
L806:   f2i 
L807:   istore 20 
L809:   iload 18 
L811:   sipush 255 
L814:   if_icmple L822 
L817:   sipush 255 
L820:   istore 18 

        .stack append Float 
L822:   iload 19 
L824:   sipush 255 
L827:   if_icmple L835 
L830:   sipush 255 
L833:   istore 19 

        .stack same 
L835:   iload 20 
L837:   sipush 255 
L840:   if_icmple L848 
L843:   sipush 255 
L846:   istore 20 

        .stack same 
L848:   iload 18 
L850:   ifge L856 
L853:   iconst_0 
L854:   istore 18 

        .stack same 
L856:   iload 19 
L858:   ifge L864 
L861:   iconst_0 
L862:   istore 19 

        .stack same 
L864:   iload 20 
L866:   ifge L872 
L869:   iconst_0 
L870:   istore 20 

        .stack same 
L872:   aload_0 
L873:   new java/awt/Color 
L876:   dup 
L877:   iload 18 
L879:   iload 19 
L881:   iload 20 
L883:   sipush 255 
L886:   invokespecial Method java/awt/Color <init> (IIII)V 
L889:   putfield Field com/fs/graphics/TextureLoader 'interface' Ljava/awt/Color; 
L892:   aload_0 
L893:   aload 12 
L895:   fload 11 
L897:   invokevirtual Method com/fs/graphics/TextureLoader o00000 ([FF)F 
L900:   f2i 
L901:   istore 18 
L903:   aload_0 
L904:   aload 13 
L906:   fload 11 
L908:   invokevirtual Method com/fs/graphics/TextureLoader o00000 ([FF)F 
L911:   f2i 
L912:   istore 19 
L914:   aload_0 
L915:   aload 14 
L917:   fload 11 
L919:   invokevirtual Method com/fs/graphics/TextureLoader new ([FF)F 
L922:   f2i 
L923:   istore 20 
L925:   iload 18 
L927:   sipush 255 
L930:   if_icmple L938 
L933:   sipush 255 
L936:   istore 18 

        .stack same_extended 
L938:   iload 19 
L940:   sipush 255 
L943:   if_icmple L951 
L946:   sipush 255 
L949:   istore 19 

        .stack same 
L951:   iload 20 
L953:   sipush 255 
L956:   if_icmple L964 
L959:   sipush 255 
L962:   istore 20 

        .stack same 
L964:   iload 18 
L966:   ifge L972 
L969:   iconst_0 
L970:   istore 18 

        .stack same 
L972:   iload 19 
L974:   ifge L980 
L977:   iconst_0 
L978:   istore 19 

        .stack same 
L980:   iload 20 
L982:   ifge L988 
L985:   iconst_0 
L986:   istore 20 

        .stack same 
L988:   aload_0 
L989:   new java/awt/Color 
L992:   dup 
L993:   iload 18 
L995:   iload 19 
L997:   iload 20 
L999:   sipush 255 
L1002:  invokespecial Method java/awt/Color <init> (IIII)V 
L1005:  putfield Field com/fs/graphics/TextureLoader 'Ó00000' Ljava/awt/Color; 

        .stack full 
            locals Object com/fs/graphics/TextureLoader Object java/awt/image/BufferedImage Object com/fs/graphics/Object Object java/nio/ByteBuffer Top Top Integer Integer Float Float Float Float Object [F Object [F Object [F Integer Integer Object java/awt/image/Raster 
            stack 
        .end stack 
L1008:  aload_3 
L1009:  areturn 
L1010:  
    .end code 
.end method 

.method private o00000 : ([FF)F 
    .code stack 2 locals 7 
L0:     fconst_0 
L1:     fstore_3 
L2:     fload_2 
L3:     ldc_w +0.5f 
L6:     fmul 
L7:     fstore 4 
L9:     iconst_0 
L10:    istore 5 
L12:    goto L40 

        .stack append Float Float Integer 
L15:    aload_1 
L16:    iload 5 
L18:    faload 
L19:    fstore 6 
L21:    fload_3 
L22:    fload 6 
L24:    fadd 
L25:    fstore_3 
L26:    fload_3 
L27:    fload 4 
L29:    fcmpl 
L30:    iflt L37 
L33:    iload 5 
L35:    i2f 
L36:    freturn 

        .stack same 
L37:    iinc 5 1 

        .stack same 
L40:    iload 5 
L42:    sipush 255 
L45:    if_icmple L15 
L48:    fconst_0 
L49:    freturn 
L50:    
    .end code 
.end method 

.method private new : ([FF)F 
    .code stack 3 locals 8 
L0:     fconst_0 
L1:     fstore_3 
L2:     fconst_0 
L3:     fstore 4 
L5:     sipush 255 
L8:     istore 5 
L10:    goto L65 

        .stack append Float Float Integer 
L13:    aload_1 
L14:    iload 5 
L16:    faload 
L17:    fstore 6 
L19:    fload 6 
L21:    fstore 7 
L23:    fload_3 
L24:    fload 6 
L26:    fadd 
L27:    fload_2 
L28:    fcmpl 
L29:    iflt L37 
L32:    fload_2 
L33:    fload_3 
L34:    fsub 
L35:    fstore 7 

        .stack append Float Float 
L37:    fload_3 
L38:    fload 7 
L40:    fadd 
L41:    fstore_3 
L42:    fload 4 
L44:    iload 5 
L46:    i2f 
L47:    fload 7 
L49:    fmul 
L50:    fadd 
L51:    fstore 4 
L53:    fload_3 
L54:    fload_2 
L55:    fcmpl 
L56:    iflt L62 
L59:    goto L70 

        .stack chop 2 
L62:    iinc 5 -1 

        .stack same 
L65:    iload 5 
L67:    ifge L13 

        .stack chop 1 
L70:    fload_3 
L71:    fconst_0 
L72:    fcmpl 
L73:    ifle L81 
L76:    fload 4 
L78:    fload_3 
L79:    fdiv 
L80:    freturn 

        .stack same 
L81:    fconst_0 
L82:    freturn 
L83:    
    .end code 
.end method 

.method private 'Ô00000' : (Ljava/lang/String;)Ljava/awt/image/BufferedImage; 
    .exceptions java/io/IOException 
    .code stack 4 locals 3 
L0:     aload_1 
L1:     invokestatic Method com/fs/graphics/L 'Õ00000' (Ljava/lang/String;)Ljava/awt/image/BufferedImage; 
L4:     astore_2 
L5:     aload_2 
L6:     ifnull L11 
L9:     aload_2 
L10:    areturn 

        .stack same 
L11:    new java/io/BufferedInputStream 
L14:    dup 
L15:    invokestatic Method com/fs/util/C 'Ó00000' ()Lcom/fs/util/C; 
L18:    aload_1 
L19:    invokevirtual Method com/fs/util/C 'Ô00000' (Ljava/lang/String;)Ljava/io/InputStream; 
L22:    invokespecial Method java/io/BufferedInputStream <init> (Ljava/io/InputStream;)V 
L25:    invokestatic Method javax/imageio/ImageIO read (Ljava/io/InputStream;)Ljava/awt/image/BufferedImage; 
L28:    areturn 
L29:    
    .end code 
.end method 

.method public o00000 : (Lcom/fs/graphics/I;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/fs/graphics/TextureLoader new Lcom/fs/graphics/I; 
L5:     return 
L6:     
    .end code 
.end method 

.method public 'Ó00000' : (Ljava/lang/String;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/graphics/TextureLoader 'ÔO0000' Ljava/util/HashMap; 
L4:     aload_1 
L5:     invokevirtual Method java/util/HashMap remove (Ljava/lang/Object;)Ljava/lang/Object; 
L8:     pop 
L9:     return 
L10:    
    .end code 
.end method 

.method public o00000 : ()Ljava/util/HashMap; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/graphics/TextureLoader 'ÔO0000' Ljava/util/HashMap; 
L4:     areturn 
L5:     
    .end code 
.end method 
.innerclasses 
    de/matthiasmann/twl/utils/PNGDecoder$Format de/matthiasmann/twl/utils/PNGDecoder Format public static final enum 
.end innerclasses 
.end class 
