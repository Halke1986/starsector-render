.version 61 0 
.class public super com/fs/starfarer/loading/LoadingUtils 
.super java/lang/Object 
.field private static 'Ò00000' Lorg/apache/log4j/Logger; 
.field public static 'super' Ljava/lang/String; 

.method static <clinit> : ()V 
    .code stack 1 locals 0 
L0:     ldc Class com/fs/starfarer/loading/LoadingUtils 
L2:     invokestatic Method org/apache/log4j/Logger getLogger (Ljava/lang/Class;)Lorg/apache/log4j/Logger; 
L5:     putstatic Field com/fs/starfarer/loading/LoadingUtils 'Ò00000' Lorg/apache/log4j/Logger; 
L8:     ldc 'fs_rowSource' 
L10:    putstatic Field com/fs/starfarer/loading/LoadingUtils 'super' Ljava/lang/String; 
L13:    return 
L14:    
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

.method public static 'Ö00000' : (Ljava/lang/String;)Ljava/util/List; 
    .exceptions java/io/IOException 
    .signature (Ljava/lang/String;)Ljava/util/List<Ljava/lang/String;>; 
    .code stack 2 locals 1 
L0:     invokestatic Method com/fs/util/C 'Ó00000' ()Lcom/fs/util/C; 
L3:     aload_0 
L4:     invokevirtual Method com/fs/util/C 'Ó00000' (Ljava/lang/String;)Ljava/util/List; 
L7:     areturn 
L8:     
    .end code 
.end method

.method public static LoadingUtils_filesWithExtensionInDirectory : (Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .code stack 2 locals 2
L0:     aload_0
L1:     aload_1
L2:     invokestatic Method com/genir/renderer/overrides/loading/FileLoader filesWithExtensionInDirectory (Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
L5:     areturn
L6:
        .linenumbertable
            L0 34
        .end linenumbertable
        .localvariabletable
            0 is dir Ljava/lang/String; from L0 to L6
            1 is extension Ljava/lang/String; from L0 to L6
        .end localvariabletable
    .end code
    .signature (Ljava/lang/String;Ljava/lang/String;)Ljava/util/List<Ljava/lang/String;>;
.end method

.method public static LoadingUtils_filesWithExtensionInDirectory_vanilla : (Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .exceptions java/io/IOException 
    .signature (Ljava/lang/String;Ljava/lang/String;)Ljava/util/List<Ljava/lang/String;>; 
    .code stack 3 locals 3 
L0:     aload_0 
L1:     aload_1 
L2:     iconst_1 
L3:     invokestatic Method com/fs/starfarer/loading/LoadingUtils 'super' (Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List; 
L6:     astore_2 
L7:     aload_2 
L8:     areturn 
L9:     
    .end code 
.end method 

.method public static LoadingUtils_filesWithExtensionInDirectoryAbsolute : (Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .code stack 2 locals 2
L0:     aload_0
L1:     aload_1
L2:     invokestatic Method com/genir/renderer/overrides/loading/FileLoader filesWithExtensionInDirectoryAbsolute (Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
L5:     areturn
L6:
        .linenumbertable
            L0 45
        .end linenumbertable
        .localvariabletable
            0 is dir Ljava/lang/String; from L0 to L6
            1 is extension Ljava/lang/String; from L0 to L6
        .end localvariabletable
    .end code
    .exceptions java/io/IOException
    .signature (Ljava/lang/String;Ljava/lang/String;)Ljava/util/List<Ljava/lang/String;>;
.end method

.method public static LoadingUtils_filesWithExtensionInDirectoryAbsolute_vanilla : (Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .exceptions java/io/IOException
    .signature (Ljava/lang/String;Ljava/lang/String;)Ljava/util/List<Ljava/lang/String;>;
    .code stack 3 locals 3
L0:     aload_0
L1:     aload_1
L2:     iconst_0
L3:     invokestatic Method com/fs/starfarer/loading/LoadingUtils 'super' (Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
L6:     astore_2
L7:     aload_2
L8:     areturn
L9:
    .end code
.end method

.method public static void : (Ljava/lang/String;)Ljava/io/InputStream; 
    .exceptions java/io/IOException 
    .code stack 2 locals 1 
L0:     invokestatic Method com/fs/util/C 'Ó00000' ()Lcom/fs/util/C; 
L3:     aload_0 
L4:     invokevirtual Method com/fs/util/C 'Ô00000' (Ljava/lang/String;)Ljava/io/InputStream; 
L7:     areturn 
L8:     
    .end code 
.end method 

.method public static 'õ00000' : (Ljava/lang/String;)V 
    .code stack 2 locals 1 
L0:     invokestatic Method com/fs/util/C 'Ó00000' ()Lcom/fs/util/C; 
L3:     aload_0 
L4:     invokevirtual Method com/fs/util/C 'Ö00000' (Ljava/lang/String;)V 
L7:     return 
L8:     
    .end code 
.end method 

.method public static 'ô00000' : (Ljava/lang/String;)Lorg/json/JSONObject; 
    .exceptions java/io/IOException org/json/JSONException 
    .code stack 4 locals 2 
L0:     getstatic Field com/fs/starfarer/loading/LoadingUtils 'Ò00000' Lorg/apache/log4j/Logger; 
L3:     new java/lang/StringBuilder 
L6:     dup 
L7:     ldc 'Loading JSON from [' 
L9:     invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L12:    aload_0 
L13:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L16:    ldc ']' 
L18:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L21:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L24:    invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L27:    aload_0 
L28:    invokestatic Method com/fs/starfarer/loading/LoadingUtils 'super' (Ljava/lang/String;)Ljava/lang/String; 
L31:    astore_1 
L32:    aload_0 
L33:    aload_1 
L34:    invokestatic Method com/fs/starfarer/loading/LoadingUtils 'Ö00000' (Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject; 
L37:    areturn 
L38:    
    .end code 
.end method 

.method public static 'super' : (Ljava/lang/String;Ljava/io/InputStream;)Lorg/json/JSONObject; 
    .exceptions java/io/IOException org/json/JSONException 
    .code stack 4 locals 3 
L0:     getstatic Field com/fs/starfarer/loading/LoadingUtils 'Ò00000' Lorg/apache/log4j/Logger; 
L3:     new java/lang/StringBuilder 
L6:     dup 
L7:     ldc 'Loading JSON from [' 
L9:     invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L12:    aload_0 
L13:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L16:    ldc ']' 
L18:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L21:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L24:    invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L27:    aload_1 
L28:    invokestatic Method com/fs/starfarer/loading/LoadingUtils 'Ò00000' (Ljava/io/InputStream;)Ljava/lang/String; 
L31:    astore_2 
L32:    aload_0 
L33:    aload_2 
L34:    invokestatic Method com/fs/starfarer/loading/LoadingUtils 'Ö00000' (Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject; 
L37:    areturn 
L38:    
    .end code 
.end method 

.method public static 'Ö00000' : (Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject; 
    .exceptions java/io/IOException org/json/JSONException 
    .code stack 3 locals 7 
        .catch org/json/JSONException from L0 to L137 using L138 
L0:     new java/lang/StringBuffer 
L3:     dup 
L4:     invokespecial Method java/lang/StringBuffer <init> ()V 
L7:     astore_2 
L8:     iconst_0 
L9:     istore_3 
L10:    iconst_0 
L11:    istore 4 
L13:    iconst_0 
L14:    istore 5 
L16:    goto L113 

        .stack full 
            locals Object java/lang/String Object java/lang/String Object java/lang/StringBuffer Integer Integer Integer 
            stack 
        .end stack 
L19:    aload_1 
L20:    iload 5 
L22:    invokevirtual Method java/lang/String charAt (I)C 
L25:    istore 6 
L27:    iload 6 
L29:    bipush 34 
L31:    if_icmpne L46 
L34:    iload 4 
L36:    ifeq L43 
L39:    iconst_0 
L40:    goto L44 

        .stack append Integer 
L43:    iconst_1 

        .stack stack_1 Integer 
L44:    istore 4 

        .stack same 
L46:    iload 6 
L48:    bipush 10 
L50:    if_icmpeq L60 
L53:    iload 6 
L55:    bipush 13 
L57:    if_icmpne L82 

        .stack same 
L60:    iconst_0 
L61:    istore_3 
L62:    iconst_0 
L63:    istore 4 
L65:    iload 6 
L67:    bipush 10 
L69:    if_icmpne L110 
L72:    aload_2 
L73:    bipush 10 
L75:    invokevirtual Method java/lang/StringBuffer append (C)Ljava/lang/StringBuffer; 
L78:    pop 
L79:    goto L110 

        .stack same 
L82:    iload 6 
L84:    bipush 35 
L86:    if_icmpne L99 
L89:    iload 4 
L91:    ifne L99 
L94:    iconst_1 
L95:    istore_3 
L96:    goto L110 

        .stack same 
L99:    iload_3 
L100:   ifne L110 
L103:   aload_2 
L104:   iload 6 
L106:   invokevirtual Method java/lang/StringBuffer append (C)Ljava/lang/StringBuffer; 
L109:   pop 

        .stack chop 1 
L110:   iinc 5 1 

        .stack same 
L113:   iload 5 
L115:   aload_1 
L116:   invokevirtual Method java/lang/String length ()I 
L119:   if_icmplt L19 
L122:   new org/json/JSONObject 
L125:   dup 
L126:   aload_2 
L127:   invokevirtual Method java/lang/StringBuffer toString ()Ljava/lang/String; 
L130:   invokespecial Method org/json/JSONObject <init> (Ljava/lang/String;)V 
L133:   astore 5 
L135:   aload 5 
L137:   areturn 

        .stack full 
            locals Object java/lang/String Object java/lang/String 
            stack Object org/json/JSONException 
        .end stack 
L138:   astore_2 
L139:   new java/lang/StringBuilder 
L142:   dup 
L143:   aload_0 
L144:   invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L147:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L150:   ldc '\n' 
L152:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L155:   aload_2 
L156:   invokevirtual Method org/json/JSONException getMessage ()Ljava/lang/String; 
L159:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L162:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L165:   astore_3 
L166:   new org/json/JSONException 
L169:   dup 
L170:   aload_3 
L171:   invokespecial Method org/json/JSONException <init> (Ljava/lang/String;)V 
L174:   astore_2 
L175:   aload_2 
L176:   athrow 
L177:   
    .end code 
.end method 

.method public static 'super' : (Ljava/lang/String;)Ljava/lang/String; 
    .exceptions java/io/IOException 
    .code stack 1 locals 2 
L0:     aload_0 
L1:     invokestatic Method com/fs/starfarer/loading/LoadingUtils void (Ljava/lang/String;)Ljava/io/InputStream; 
L4:     astore_1 
L5:     aload_1 
L6:     invokestatic Method com/fs/starfarer/loading/LoadingUtils 'super' (Ljava/io/InputStream;)Ljava/lang/String; 
L9:     areturn 
L10:    
    .end code 
.end method 

.method public static 'Ò00000' : (Ljava/io/InputStream;)Ljava/lang/String; 
    .exceptions java/io/IOException 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokestatic Method com/fs/starfarer/loading/LoadingUtils 'super' (Ljava/io/InputStream;)Ljava/lang/String; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public static 'Ó00000' : (Ljava/lang/String;Ljava/lang/String;Z)V 
    .exceptions java/io/IOException 
    .code stack 7 locals 6 
L0:     new java/io/File 
L3:     dup 
L4:     aload_1 
L5:     invokespecial Method java/io/File <init> (Ljava/lang/String;)V 
L8:     astore_3 
L9:     aload_3 
L10:    invokevirtual Method java/io/File exists ()Z 
L13:    ifeq L41 
L16:    iload_2 
L17:    ifne L41 
L20:    new java/lang/RuntimeException 
L23:    dup 
L24:    ldc "Can't save to %s, file exists" 
L26:    iconst_1 
L27:    anewarray java/lang/Object 
L30:    dup 
L31:    iconst_0 
L32:    aload_1 
L33:    aastore 
L34:    invokestatic Method java/lang/String format (Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String; 
L37:    invokespecial Method java/lang/RuntimeException <init> (Ljava/lang/String;)V 
L40:    athrow 

        .stack append Object java/io/File 
L41:    aload_3 
L42:    invokevirtual Method java/io/File isDirectory ()Z 
L45:    ifeq L69 
L48:    new java/lang/RuntimeException 
L51:    dup 
L52:    ldc "Can't save to %s, file is directory" 
L54:    iconst_1 
L55:    anewarray java/lang/Object 
L58:    dup 
L59:    iconst_0 
L60:    aload_1 
L61:    aastore 
L62:    invokestatic Method java/lang/String format (Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String; 
L65:    invokespecial Method java/lang/RuntimeException <init> (Ljava/lang/String;)V 
L68:    athrow 

        .stack same 
L69:    aload_3 
L70:    invokevirtual Method java/io/File getParentFile ()Ljava/io/File; 
L73:    ifnull L84 
L76:    aload_3 
L77:    invokevirtual Method java/io/File getParentFile ()Ljava/io/File; 
L80:    invokevirtual Method java/io/File mkdirs ()Z 
L83:    pop 

        .stack same 
L84:    new java/io/BufferedOutputStream 
L87:    dup 
L88:    new java/io/FileOutputStream 
L91:    dup 
L92:    aload_3 
L93:    invokespecial Method java/io/FileOutputStream <init> (Ljava/io/File;)V 
L96:    invokespecial Method java/io/BufferedOutputStream <init> (Ljava/io/OutputStream;)V 
L99:    astore 4 
        .catch [0] from L101 to L115 using L115 
L101:   aload 4 
L103:   aload_0 
L104:   ldc 'UTF-8' 
L106:   invokevirtual Method java/lang/String getBytes (Ljava/lang/String;)[B 
L109:   invokevirtual Method java/io/BufferedOutputStream write ([B)V 
L112:   goto L130 

        .stack full 
            locals Object java/lang/String Object java/lang/String Integer Object java/io/File Object java/io/BufferedOutputStream 
            stack Object java/lang/Throwable 
        .end stack 
L115:   astore 5 
L117:   aload 4 
L119:   invokevirtual Method java/io/BufferedOutputStream flush ()V 
L122:   aload 4 
L124:   invokevirtual Method java/io/BufferedOutputStream close ()V 
L127:   aload 5 
L129:   athrow 

        .stack same 
L130:   aload 4 
L132:   invokevirtual Method java/io/BufferedOutputStream flush ()V 
L135:   aload 4 
L137:   invokevirtual Method java/io/BufferedOutputStream close ()V 
L140:   return 
L141:   
    .end code 
.end method 

.method public static 'Ò00000' : (Ljava/lang/String;Ljava/lang/String;)V 
    .exceptions java/io/IOException 
    .code stack 6 locals 6 
L0:     aload_0 
L1:     invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'õ00000' (Ljava/lang/String;)V 
L4:     new java/lang/StringBuilder 
L7:     dup 
L8:     invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'oÓ0000' ()Ljava/lang/String; 
L11:    invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L14:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L17:    ldc '/common/' 
L19:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L22:    aload_0 
L23:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L26:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L29:    astore_2 
L30:    new java/io/File 
L33:    dup 
L34:    aload_2 
L35:    invokespecial Method java/io/File <init> (Ljava/lang/String;)V 
L38:    astore_3 
L39:    aload_3 
L40:    invokevirtual Method java/io/File getParentFile ()Ljava/io/File; 
L43:    ifnull L54 
L46:    aload_3 
L47:    invokevirtual Method java/io/File getParentFile ()Ljava/io/File; 
L50:    invokevirtual Method java/io/File mkdirs ()Z 
L53:    pop 

        .stack append Object java/lang/String Object java/io/File 
L54:    new java/io/BufferedOutputStream 
L57:    dup 
L58:    new java/io/FileOutputStream 
L61:    dup 
L62:    aload_3 
L63:    iconst_1 
L64:    invokespecial Method java/io/FileOutputStream <init> (Ljava/io/File;Z)V 
L67:    invokespecial Method java/io/BufferedOutputStream <init> (Ljava/io/OutputStream;)V 
L70:    astore 4 
        .catch [0] from L72 to L86 using L86 
L72:    aload 4 
L74:    aload_1 
L75:    ldc 'UTF-8' 
L77:    invokevirtual Method java/lang/String getBytes (Ljava/lang/String;)[B 
L80:    invokevirtual Method java/io/BufferedOutputStream write ([B)V 
L83:    goto L101 

        .stack full 
            locals Object java/lang/String Object java/lang/String Object java/lang/String Object java/io/File Object java/io/BufferedOutputStream 
            stack Object java/lang/Throwable 
        .end stack 
L86:    astore 5 
L88:    aload 4 
L90:    invokevirtual Method java/io/BufferedOutputStream flush ()V 
L93:    aload 4 
L95:    invokevirtual Method java/io/BufferedOutputStream close ()V 
L98:    aload 5 
L100:   athrow 

        .stack same 
L101:   aload 4 
L103:   invokevirtual Method java/io/BufferedOutputStream flush ()V 
L106:   aload 4 
L108:   invokevirtual Method java/io/BufferedOutputStream close ()V 
L111:   return 
L112:   
    .end code 
.end method 

.method public static 'Ò00000' : (Ljava/lang/String;)V 
    .code stack 3 locals 3 
L0:     aload_0 
L1:     invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'õ00000' (Ljava/lang/String;)V 
L4:     new java/lang/StringBuilder 
L7:     dup 
L8:     invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'oÓ0000' ()Ljava/lang/String; 
L11:    invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L14:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L17:    ldc '/common/' 
L19:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L22:    aload_0 
L23:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L26:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L29:    astore_1 
L30:    new java/io/File 
L33:    dup 
L34:    aload_1 
L35:    invokespecial Method java/io/File <init> (Ljava/lang/String;)V 
L38:    astore_2 
L39:    aload_2 
L40:    invokevirtual Method java/io/File delete ()Z 
L43:    pop 
L44:    return 
L45:    
    .end code 
.end method 

.method public static 'super' : (Ljava/io/InputStream;)Ljava/lang/String; 
    .exceptions java/io/IOException 
    .code stack 7 locals 5 
L0:     ldc 1048576 
L2:     newarray byte 
L4:     astore_1 
L5:     new java/lang/StringBuffer 
L8:     dup 
L9:     invokespecial Method java/lang/StringBuffer <init> ()V 
L12:    astore_2 
        .catch java/io/UnsupportedEncodingException from L13 to L46 using L49 
        .catch [0] from L13 to L50 using L57 
L13:    iconst_0 
L14:    istore_3 
L15:    goto L35 

        .stack append Object [B Object java/lang/StringBuffer Integer 
L18:    aload_2 
L19:    new java/lang/String 
L22:    dup 
L23:    aload_1 
L24:    iconst_0 
L25:    iload_3 
L26:    ldc 'UTF-8' 
L28:    invokespecial Method java/lang/String <init> ([BIILjava/lang/String;)V 
L31:    invokevirtual Method java/lang/StringBuffer append (Ljava/lang/String;)Ljava/lang/StringBuffer; 
L34:    pop 

        .stack same 
L35:    aload_0 
L36:    aload_1 
L37:    invokevirtual Method java/io/InputStream read ([B)I 
L40:    dup 
L41:    istore_3 
L42:    iconst_m1 
L43:    if_icmpne L18 
L46:    goto L66 

        .stack full 
            locals Object java/io/InputStream Object [B Object java/lang/StringBuffer 
            stack Object java/io/UnsupportedEncodingException 
        .end stack 
L49:    astore_3 
L50:    aload_0 
L51:    invokevirtual Method java/io/InputStream close ()V 
L54:    goto L70 

        .stack stack_1 Object java/lang/Throwable 
L57:    astore 4 
L59:    aload_0 
L60:    invokevirtual Method java/io/InputStream close ()V 
L63:    aload 4 
L65:    athrow 

        .stack same 
L66:    aload_0 
L67:    invokevirtual Method java/io/InputStream close ()V 

        .stack same 
L70:    aload_2 
L71:    invokevirtual Method java/lang/StringBuffer toString ()Ljava/lang/String; 
L74:    ldc_w '\\r' 
L77:    ldc_w '' 
L80:    invokevirtual Method java/lang/String replaceAll (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 
L83:    astore_3 
L84:    aload_3 
L85:    areturn 
L86:    
    .end code 
.end method 

.method public static 'Õ00000' : (Ljava/lang/String;)Ljava/lang/String; 
    .exceptions java/io/IOException 
    .code stack 4 locals 8 
L0:     aload_0 
L1:     invokestatic Method com/fs/starfarer/loading/LoadingUtils 'super' (Ljava/lang/String;)Ljava/lang/String; 
L4:     astore_1 
L5:     aload_1 
L6:     ldc_w '\\r' 
L9:     ldc_w '' 
L12:    invokevirtual Method java/lang/String replaceAll (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 
L15:    astore_1 
L16:    aload_1 
L17:    ldc '\n' 
L19:    invokevirtual Method java/lang/String split (Ljava/lang/String;)[Ljava/lang/String; 
L22:    astore_2 
L23:    new java/lang/StringBuffer 
L26:    dup 
L27:    invokespecial Method java/lang/StringBuffer <init> ()V 
L30:    astore_3 
L31:    aload_2 
L32:    dup 
L33:    astore 7 
L35:    arraylength 
L36:    istore 6 
L38:    iconst_0 
L39:    istore 5 
L41:    goto L121 

        .stack full 
            locals Object java/lang/String Object java/lang/String Object [Ljava/lang/String; Object java/lang/StringBuffer Top Integer Integer Object [Ljava/lang/String; 
            stack 
        .end stack 
L44:    aload 7 
L46:    iload 5 
L48:    aaload 
L49:    astore 4 
L51:    aload 4 
L53:    ldc_w '@SuppressWarnings' 
L56:    invokevirtual Method java/lang/String contains (Ljava/lang/CharSequence;)Z 
L59:    ifeq L72 
L62:    aload_3 
L63:    ldc '\n' 
L65:    invokevirtual Method java/lang/StringBuffer append (Ljava/lang/String;)Ljava/lang/StringBuffer; 
L68:    pop 
L69:    goto L118 

        .stack full 
            locals Object java/lang/String Object java/lang/String Object [Ljava/lang/String; Object java/lang/StringBuffer Object java/lang/String Integer Integer Object [Ljava/lang/String; 
            stack 
        .end stack 
L72:    aload 4 
L74:    ldc_w '@Override' 
L77:    invokevirtual Method java/lang/String contains (Ljava/lang/CharSequence;)Z 
L80:    ifeq L93 
L83:    aload_3 
L84:    ldc '\n' 
L86:    invokevirtual Method java/lang/StringBuffer append (Ljava/lang/String;)Ljava/lang/StringBuffer; 
L89:    pop 
L90:    goto L118 

        .stack same 
L93:    aload_3 
L94:    new java/lang/StringBuilder 
L97:    dup 
L98:    aload 4 
L100:   invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L103:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L106:   ldc '\n' 
L108:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L111:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L114:   invokevirtual Method java/lang/StringBuffer append (Ljava/lang/String;)Ljava/lang/StringBuffer; 
L117:   pop 

        .stack full 
            locals Object java/lang/String Object java/lang/String Object [Ljava/lang/String; Object java/lang/StringBuffer Top Integer Integer Object [Ljava/lang/String; 
            stack 
        .end stack 
L118:   iinc 5 1 

        .stack same 
L121:   iload 5 
L123:   iload 6 
L125:   if_icmplt L44 
L128:   aload_3 
L129:   invokevirtual Method java/lang/StringBuffer toString ()Ljava/lang/String; 
L132:   areturn 
L133:   
    .end code 
.end method 

.method public static 'Ó00000' : (Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray; 
    .exceptions java/io/IOException org/json/JSONException 
    .code stack 3 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     iconst_0 
L3:     invokestatic Method com/fs/starfarer/loading/LoadingUtils 'Ò00000' (Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONArray; 
L6:     areturn 
L7:     
    .end code 
.end method 

.method public static 'Ò00000' : (Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONArray; 
    .exceptions java/io/IOException org/json/JSONException 
    .code stack 3 locals 4 
L0:     new java/util/ArrayList 
L3:     dup 
L4:     invokespecial Method java/util/ArrayList <init> ()V 
L7:     astore_3 
L8:     aload_0 
L9:     ifnull L18 
L12:    aload_3 
L13:    aload_0 
L14:    invokevirtual Method java/util/ArrayList add (Ljava/lang/Object;)Z 
L17:    pop 

        .stack append Object java/util/ArrayList 
L18:    aload_3 
L19:    aload_1 
L20:    iload_2 
L21:    invokestatic Method com/fs/starfarer/loading/LoadingUtils 'super' (Ljava/util/List;Ljava/lang/String;Z)Lorg/json/JSONArray; 
L24:    areturn 
L25:    
    .end code 
.end method 

.method public static 'super' : (Ljava/util/List;Ljava/lang/String;Z)Lorg/json/JSONArray; 
    .exceptions java/io/IOException org/json/JSONException 
    .signature (Ljava/util/List<Ljava/lang/String;>;Ljava/lang/String;Z)Lorg/json/JSONArray; 
    .code stack 4 locals 3 
L0:     aload_0 
L1:     aload_1 
L2:     iload_2 
L3:     iconst_0 
L4:     invokestatic Method com/fs/starfarer/loading/LoadingUtils 'super' (Ljava/util/List;Ljava/lang/String;ZZ)Lorg/json/JSONArray; 
L7:     areturn 
L8:     
    .end code 
.end method 

.method public static 'super' : (Ljava/util/List;Ljava/lang/String;ZZ)Lorg/json/JSONArray; 
    .exceptions java/io/IOException org/json/JSONException 
    .signature (Ljava/util/List<Ljava/lang/String;>;Ljava/lang/String;ZZ)Lorg/json/JSONArray; 
    .code stack 5 locals 23 
L0:     invokestatic Method com/fs/util/C 'Ó00000' ()Lcom/fs/util/C; 
L3:     aload_1 
L4:     invokevirtual Method com/fs/util/C new (Ljava/lang/String;)Ljava/util/List; 
L7:     astore 4 
L9:     new java/util/ArrayList 
L12:    dup 
L13:    aload 4 
L15:    invokespecial Method java/util/ArrayList <init> (Ljava/util/Collection;)V 
L18:    astore 5 
L20:    aload 4 
L22:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L27:    astore 7 
L29:    goto L183 

        .stack full 
            locals Object java/util/List Object java/lang/String Integer Integer Object java/util/List Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L32:    aload 7 
L34:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L39:    checkcast com/fs/util/container/Pair 
L42:    astore 6 
L44:    aload 6 
L46:    getfield Field com/fs/util/container/Pair one Ljava/lang/Object; 
L49:    checkcast com/fs/util/C$Oo 
L52:    getfield Field com/fs/util/C$Oo String Z 
L55:    ifeq L183 
L58:    aload 6 
L60:    getfield Field com/fs/util/container/Pair one Ljava/lang/Object; 
L63:    checkcast com/fs/util/C$Oo 
L66:    getfield Field com/fs/util/C$Oo 'Ò00000' Ljava/lang/Object; 
L69:    ifnull L183 
L72:    aload 6 
L74:    getfield Field com/fs/util/container/Pair one Ljava/lang/Object; 
L77:    checkcast com/fs/util/C$Oo 
L80:    getfield Field com/fs/util/C$Oo 'Ò00000' Ljava/lang/Object; 
L83:    checkcast com/fs/starfarer/launcher/ModManager$ModSpec 
L86:    astore 8 
L88:    aload 8 
L90:    invokevirtual Method com/fs/starfarer/launcher/ModManager$ModSpec getFullOverrides ()Ljava/util/Set; 
L93:    aload_1 
L94:    invokeinterface InterfaceMethod java/util/Set contains (Ljava/lang/Object;)Z 2 
L99:    ifeq L183 
L102:   aload 5 
L104:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L109:   astore 10 
L111:   goto L153 

        .stack full 
            locals Object java/util/List Object java/lang/String Integer Integer Object java/util/List Object java/util/List Object com/fs/util/container/Pair Object java/util/Iterator Object com/fs/starfarer/launcher/ModManager$ModSpec Top Object java/util/Iterator 
            stack 
        .end stack 
L114:   aload 10 
L116:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L121:   checkcast com/fs/util/container/Pair 
L124:   astore 9 
L126:   aload 9 
L128:   getfield Field com/fs/util/container/Pair two Ljava/lang/Object; 
L131:   aload 6 
L133:   getfield Field com/fs/util/container/Pair two Ljava/lang/Object; 
L136:   if_acmpne L142 
L139:   goto L153 

        .stack full 
            locals Object java/util/List Object java/lang/String Integer Integer Object java/util/List Object java/util/List Object com/fs/util/container/Pair Object java/util/Iterator Object com/fs/starfarer/launcher/ModManager$ModSpec Object com/fs/util/container/Pair Object java/util/Iterator 
            stack 
        .end stack 
L142:   aload 9 
L144:   getfield Field com/fs/util/container/Pair two Ljava/lang/Object; 
L147:   checkcast java/io/InputStream 
L150:   invokevirtual Method java/io/InputStream close ()V 

        .stack full 
            locals Object java/util/List Object java/lang/String Integer Integer Object java/util/List Object java/util/List Object com/fs/util/container/Pair Object java/util/Iterator Object com/fs/starfarer/launcher/ModManager$ModSpec Top Object java/util/Iterator 
            stack 
        .end stack 
L153:   aload 10 
L155:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L160:   ifne L114 
L163:   aload 4 
L165:   invokeinterface InterfaceMethod java/util/List clear ()V 1 
L170:   aload 4 
L172:   aload 6 
L174:   invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L179:   pop 
L180:   goto L193 

        .stack full 
            locals Object java/util/List Object java/lang/String Integer Integer Object java/util/List Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L183:   aload 7 
L185:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L190:   ifne L32 

        .stack full 
            locals Object java/util/List Object java/lang/String Integer Integer Object java/util/List Object java/util/List 
            stack 
        .end stack 
L193:   new java/util/ArrayList 
L196:   dup 
L197:   invokespecial Method java/util/ArrayList <init> ()V 
L200:   astore 6 
L202:   new java/util/HashSet 
L205:   dup 
L206:   invokespecial Method java/util/HashSet <init> ()V 
L209:   astore 7 
L211:   aload 4 
L213:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L218:   astore 9 
L220:   goto L678 

        .stack full 
            locals Object java/util/List Object java/lang/String Integer Integer Object java/util/List Object java/util/List Object java/util/List Object java/util/Set Top Object java/util/Iterator 
            stack 
        .end stack 
L223:   aload 9 
L225:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L230:   checkcast com/fs/util/container/Pair 
L233:   astore 8 
L235:   aload 8 
L237:   getfield Field com/fs/util/container/Pair one Ljava/lang/Object; 
L240:   checkcast com/fs/util/C$Oo 
L243:   astore 10 
L245:   aload 8 
L247:   getfield Field com/fs/util/container/Pair two Ljava/lang/Object; 
L250:   checkcast java/io/InputStream 
L253:   astore 11 
L255:   new java/util/HashSet 
L258:   dup 
L259:   invokespecial Method java/util/HashSet <init> ()V 
L262:   astore 12 
L264:   getstatic Field com/fs/starfarer/loading/LoadingUtils 'Ò00000' Lorg/apache/log4j/Logger; 
L267:   new java/lang/StringBuilder 
L270:   dup 
L271:   ldc_w 'Loading CSV data from [' 
L274:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L277:   aload 8 
L279:   getfield Field com/fs/util/container/Pair one Ljava/lang/Object; 
L282:   checkcast com/fs/util/C$Oo 
L285:   getfield Field com/fs/util/C$Oo 'super' Lcom/fs/util/C$o; 
L288:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/Object;)Ljava/lang/StringBuilder; 
L291:   ldc_w ': ' 
L294:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L297:   aload 8 
L299:   getfield Field com/fs/util/container/Pair one Ljava/lang/Object; 
L302:   checkcast com/fs/util/C$Oo 
L305:   getfield Field com/fs/util/C$Oo 'Ó00000' Ljava/lang/String; 
L308:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L311:   ldc ']' 
L313:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L316:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L319:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L322:   aload 11 
L324:   invokestatic Method com/fs/starfarer/loading/LoadingUtils 'super' (Ljava/io/InputStream;)Ljava/lang/String; 
L327:   astore 13 
L329:   iload_3 
L330:   ifeq L340 
L333:   aload 13 
L335:   invokestatic Method com/fs/starfarer/loading/SpecStore 'Ó00000' (Ljava/lang/String;)Ljava/lang/String; 
L338:   astore 13 

        .stack full 
            locals Object java/util/List Object java/lang/String Integer Integer Object java/util/List Object java/util/List Object java/util/List Object java/util/Set Object com/fs/util/container/Pair Object java/util/Iterator Object com/fs/util/C$Oo Object java/io/InputStream Object java/util/Set Object java/lang/String 
            stack 
        .end stack 
L340:   aload 13 
L342:   invokestatic Method com/fs/starfarer/loading/G o00000 (Ljava/lang/String;)Lorg/json/JSONArray; 
L345:   astore 14 
L347:   aload 6 
L349:   invokeinterface InterfaceMethod java/util/List size ()I 1 
L354:   istore 15 
L356:   iload_2 
L357:   ifeq L384 
L360:   aload 4 
L362:   aload 8 
L364:   invokeinterface InterfaceMethod java/util/List indexOf (Ljava/lang/Object;)I 2 
L369:   aload 4 
L371:   invokeinterface InterfaceMethod java/util/List size ()I 1 
L376:   iconst_1 
L377:   isub 
L378:   if_icmpne L384 
L381:   iconst_0 
L382:   istore 15 

        .stack append Object org/json/JSONArray Integer 
L384:   iconst_0 
L385:   istore 16 
L387:   goto L668 

        .stack append Integer 
L390:   aload 14 
L392:   iload 16 
L394:   invokevirtual Method org/json/JSONArray getJSONObject (I)Lorg/json/JSONObject; 
L397:   astore 17 
L399:   aload_0 
L400:   invokeinterface InterfaceMethod java/util/List isEmpty ()Z 1 
L405:   ifne L614 
L408:   ldc_w '' 
L411:   astore 18 
L413:   iconst_1 
L414:   istore 19 
L416:   aload_0 
L417:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L422:   astore 21 
L424:   goto L486 

        .stack full 
            locals Object java/util/List Object java/lang/String Integer Integer Object java/util/List Object java/util/List Object java/util/List Object java/util/Set Object com/fs/util/container/Pair Object java/util/Iterator Object com/fs/util/C$Oo Object java/io/InputStream Object java/util/Set Object java/lang/String Object org/json/JSONArray Integer Integer Object org/json/JSONObject Object java/lang/String Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L427:   aload 21 
L429:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L434:   checkcast java/lang/String 
L437:   astore 20 
L439:   aload 17 
L441:   aload 20 
L443:   invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L446:   astore 22 
L448:   new java/lang/StringBuilder 
L451:   dup 
L452:   aload 18 
L454:   invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L457:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L460:   aload 22 
L462:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L465:   ldc_w ' | ' 
L468:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L471:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L474:   astore 18 
L476:   iload 19 
L478:   aload 22 
L480:   invokevirtual Method java/lang/String isEmpty ()Z 
L483:   iand 
L484:   istore 19 

        .stack same 
L486:   aload 21 
L488:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L493:   ifne L427 
L496:   iload 19 
L498:   ifne L584 
L501:   aload 12 
L503:   aload 18 
L505:   invokeinterface InterfaceMethod java/util/Set contains (Ljava/lang/Object;)Z 2 
L510:   ifeq L574 
L513:   new java/lang/RuntimeException 
L516:   dup 
L517:   new java/lang/StringBuilder 
L520:   dup 
L521:   ldc_w 'Duplicate key [' 
L524:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L527:   aload 18 
L529:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L532:   ldc_w '] while loading [' 
L535:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L538:   aload_1 
L539:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L542:   ldc_w ' from [' 
L545:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L548:   aload 8 
L550:   getfield Field com/fs/util/container/Pair one Ljava/lang/Object; 
L553:   checkcast com/fs/util/C$Oo 
L556:   getfield Field com/fs/util/C$Oo 'Ó00000' Ljava/lang/String; 
L559:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L562:   ldc ']' 
L564:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L567:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L570:   invokespecial Method java/lang/RuntimeException <init> (Ljava/lang/String;)V 
L573:   athrow 

        .stack full 
            locals Object java/util/List Object java/lang/String Integer Integer Object java/util/List Object java/util/List Object java/util/List Object java/util/Set Object com/fs/util/container/Pair Object java/util/Iterator Object com/fs/util/C$Oo Object java/io/InputStream Object java/util/Set Object java/lang/String Object org/json/JSONArray Integer Integer Object org/json/JSONObject Object java/lang/String Integer 
            stack 
        .end stack 
L574:   aload 12 
L576:   aload 18 
L578:   invokeinterface InterfaceMethod java/util/Set add (Ljava/lang/Object;)Z 2 
L583:   pop 

        .stack same 
L584:   aload 7 
L586:   aload 18 
L588:   invokeinterface InterfaceMethod java/util/Set contains (Ljava/lang/Object;)Z 2 
L593:   ifne L665 
L596:   iload 19 
L598:   ifeq L604 
L601:   goto L665 

        .stack same 
L604:   aload 7 
L606:   aload 18 
L608:   invokeinterface InterfaceMethod java/util/Set add (Ljava/lang/Object;)Z 2 
L613:   pop 

        .stack chop 2 
L614:   aload 17 
L616:   getstatic Field com/fs/starfarer/loading/LoadingUtils 'super' Ljava/lang/String; 
L619:   new java/lang/StringBuilder 
L622:   dup 
L623:   aload 10 
L625:   getfield Field com/fs/util/C$Oo 'Ó00000' Ljava/lang/String; 
L628:   invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L631:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L634:   ldc_w '/' 
L637:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L640:   aload_1 
L641:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L644:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L647:   invokevirtual Method org/json/JSONObject put (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject; 
L650:   pop 
L651:   aload 6 
L653:   iload 15 
L655:   iinc 15 1 
L658:   aload 17 
L660:   invokeinterface InterfaceMethod java/util/List add (ILjava/lang/Object;)V 3 

        .stack chop 1 
L665:   iinc 16 1 

        .stack same 
L668:   iload 16 
L670:   aload 14 
L672:   invokevirtual Method org/json/JSONArray length ()I 
L675:   if_icmplt L390 

        .stack full 
            locals Object java/util/List Object java/lang/String Integer Integer Object java/util/List Object java/util/List Object java/util/List Object java/util/Set Top Object java/util/Iterator 
            stack 
        .end stack 
L678:   aload 9 
L680:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L685:   ifne L223 
L688:   new org/json/JSONArray 
L691:   dup 
L692:   invokespecial Method org/json/JSONArray <init> ()V 
L695:   astore 8 
L697:   aload 6 
L699:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L704:   astore 10 
L706:   goto L729 

        .stack full 
            locals Object java/util/List Object java/lang/String Integer Integer Object java/util/List Object java/util/List Object java/util/List Object java/util/Set Object org/json/JSONArray Top Object java/util/Iterator 
            stack 
        .end stack 
L709:   aload 10 
L711:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L716:   checkcast org/json/JSONObject 
L719:   astore 9 
L721:   aload 8 
L723:   aload 9 
L725:   invokevirtual Method org/json/JSONArray put (Ljava/lang/Object;)Lorg/json/JSONArray; 
L728:   pop 

        .stack same 
L729:   aload 10 
L731:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L736:   ifne L709 
L739:   aload 8 
L741:   areturn 
L742:   
    .end code 
.end method 

.method public static 'Ó00000' : (Ljava/lang/String;)Lorg/json/JSONObject; 
    .exceptions java/io/IOException org/json/JSONException 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     aconst_null 
L2:     invokestatic Method com/fs/starfarer/loading/LoadingUtils 'super' (Ljava/lang/String;Ljava/util/Set;)Lorg/json/JSONObject; 
L5:     areturn 
L6:     
    .end code 
.end method 

.method public static 'super' : (Ljava/lang/String;Ljava/util/Set;)Lorg/json/JSONObject; 
    .exceptions java/io/IOException org/json/JSONException 
    .signature (Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;)Lorg/json/JSONObject; 
    .code stack 4 locals 11 
L0:     iconst_0 
L1:     istore_2 
L2:     iload_2 
L3:     ifeq L38 
L6:     getstatic Field com/fs/starfarer/loading/LoadingUtils 'Ò00000' Lorg/apache/log4j/Logger; 
L9:     ldc_w 'JSON LOADING DEBUG' 
L12:    invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L15:    getstatic Field com/fs/starfarer/loading/LoadingUtils 'Ò00000' Lorg/apache/log4j/Logger; 
L18:    new java/lang/StringBuilder 
L21:    dup 
L22:    ldc_w 'PATH: ' 
L25:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L28:    aload_0 
L29:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L32:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L35:    invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 

        .stack append Integer 
L38:    invokestatic Method com/fs/util/C 'Ó00000' ()Lcom/fs/util/C; 
L41:    aload_0 
L42:    invokevirtual Method com/fs/util/C new (Ljava/lang/String;)Ljava/util/List; 
L45:    astore_3 
L46:    aload_3 
L47:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L52:    astore 5 
L54:    goto L274 

        .stack full 
            locals Object java/lang/String Object java/util/Set Integer Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L57:    aload 5 
L59:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L64:    checkcast com/fs/util/container/Pair 
L67:    astore 4 
L69:    aload 4 
L71:    getfield Field com/fs/util/container/Pair one Ljava/lang/Object; 
L74:    checkcast com/fs/util/C$Oo 
L77:    getfield Field com/fs/util/C$Oo String Z 
L80:    ifeq L274 
L83:    aload 4 
L85:    getfield Field com/fs/util/container/Pair one Ljava/lang/Object; 
L88:    checkcast com/fs/util/C$Oo 
L91:    getfield Field com/fs/util/C$Oo 'Ò00000' Ljava/lang/Object; 
L94:    ifnull L274 
L97:    aload 4 
L99:    getfield Field com/fs/util/container/Pair one Ljava/lang/Object; 
L102:   checkcast com/fs/util/C$Oo 
L105:   getfield Field com/fs/util/C$Oo 'Ò00000' Ljava/lang/Object; 
L108:   checkcast com/fs/starfarer/launcher/ModManager$ModSpec 
L111:   astore 6 
L113:   aload 6 
L115:   invokevirtual Method com/fs/starfarer/launcher/ModManager$ModSpec getFullOverrides ()Ljava/util/Set; 
L118:   aload_0 
L119:   invokeinterface InterfaceMethod java/util/Set contains (Ljava/lang/Object;)Z 2 
L124:   ifne L173 
L127:   aload 6 
L129:   invokevirtual Method com/fs/starfarer/launcher/ModManager$ModSpec getFullOverrides ()Ljava/util/Set; 
L132:   aload_0 
L133:   ldc_w '\\\\' 
L136:   ldc_w '/' 
L139:   invokevirtual Method java/lang/String replaceAll (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 
L142:   invokeinterface InterfaceMethod java/util/Set contains (Ljava/lang/Object;)Z 2 
L147:   ifne L173 
L150:   aload 6 
L152:   invokevirtual Method com/fs/starfarer/launcher/ModManager$ModSpec getFullOverrides ()Ljava/util/Set; 
L155:   aload_0 
L156:   ldc_w '/' 
L159:   ldc_w '\\\\' 
L162:   invokevirtual Method java/lang/String replaceAll (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 
L165:   invokeinterface InterfaceMethod java/util/Set contains (Ljava/lang/Object;)Z 2 
L170:   ifeq L274 

        .stack full 
            locals Object java/lang/String Object java/util/Set Integer Object java/util/List Object com/fs/util/container/Pair Object java/util/Iterator Object com/fs/starfarer/launcher/ModManager$ModSpec 
            stack 
        .end stack 
L173:   new java/lang/StringBuilder 
L176:   dup 
L177:   invokespecial Method java/lang/StringBuilder <init> ()V 
L180:   aload 4 
L182:   getfield Field com/fs/util/container/Pair one Ljava/lang/Object; 
L185:   checkcast com/fs/util/C$Oo 
L188:   getfield Field com/fs/util/C$Oo 'super' Lcom/fs/util/C$o; 
L191:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/Object;)Ljava/lang/StringBuilder; 
L194:   ldc_w ': ' 
L197:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L200:   aload 4 
L202:   getfield Field com/fs/util/container/Pair one Ljava/lang/Object; 
L205:   checkcast com/fs/util/C$Oo 
L208:   getfield Field com/fs/util/C$Oo 'Ó00000' Ljava/lang/String; 
L211:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L214:   ldc_w ' (' 
L217:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L220:   aload_0 
L221:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L224:   ldc_w ')' 
L227:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L230:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L233:   aload 4 
L235:   getfield Field com/fs/util/container/Pair two Ljava/lang/Object; 
L238:   checkcast java/io/InputStream 
L241:   invokestatic Method com/fs/starfarer/loading/LoadingUtils 'super' (Ljava/lang/String;Ljava/io/InputStream;)Lorg/json/JSONObject; 
L244:   astore 7 
L246:   iload_2 
L247:   ifeq L271 
L250:   getstatic Field com/fs/starfarer/loading/LoadingUtils 'Ò00000' Lorg/apache/log4j/Logger; 
L253:   ldc_w 'Loaded override result:' 
L256:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L259:   getstatic Field com/fs/starfarer/loading/LoadingUtils 'Ò00000' Lorg/apache/log4j/Logger; 
L262:   aload 7 
L264:   iconst_2 
L265:   invokevirtual Method org/json/JSONObject toString (I)Ljava/lang/String; 
L268:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 

        .stack append Object org/json/JSONObject 
L271:   aload 7 
L273:   areturn 

        .stack full 
            locals Object java/lang/String Object java/util/Set Integer Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L274:   aload 5 
L276:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L281:   ifne L57 
L284:   new org/json/JSONObject 
L287:   dup 
L288:   invokespecial Method org/json/JSONObject <init> ()V 
L291:   astore 4 
L293:   aload_3 
L294:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L299:   astore 6 
L301:   goto L419 

        .stack full 
            locals Object java/lang/String Object java/util/Set Integer Object java/util/List Object org/json/JSONObject Top Object java/util/Iterator 
            stack 
        .end stack 
L304:   aload 6 
L306:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L311:   checkcast com/fs/util/container/Pair 
L314:   astore 5 
L316:   aload 5 
L318:   getfield Field com/fs/util/container/Pair one Ljava/lang/Object; 
L321:   checkcast com/fs/util/C$Oo 
L324:   getfield Field com/fs/util/C$Oo String Z 
L327:   ifne L419 
L330:   aload_3 
L331:   aload 5 
L333:   invokeinterface InterfaceMethod java/util/List remove (Ljava/lang/Object;)Z 2 
L338:   pop 
L339:   aload 5 
L341:   getfield Field com/fs/util/container/Pair two Ljava/lang/Object; 
L344:   checkcast java/io/InputStream 
L347:   astore 7 
L349:   new java/lang/StringBuilder 
L352:   dup 
L353:   invokespecial Method java/lang/StringBuilder <init> ()V 
L356:   aload 5 
L358:   getfield Field com/fs/util/container/Pair one Ljava/lang/Object; 
L361:   checkcast com/fs/util/C$Oo 
L364:   getfield Field com/fs/util/C$Oo 'super' Lcom/fs/util/C$o; 
L367:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/Object;)Ljava/lang/StringBuilder; 
L370:   ldc_w ': ' 
L373:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L376:   aload 5 
L378:   getfield Field com/fs/util/container/Pair one Ljava/lang/Object; 
L381:   checkcast com/fs/util/C$Oo 
L384:   getfield Field com/fs/util/C$Oo 'Ó00000' Ljava/lang/String; 
L387:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L390:   ldc_w ' (' 
L393:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L396:   aload_0 
L397:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L400:   ldc_w ')' 
L403:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L406:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L409:   aload 7 
L411:   invokestatic Method com/fs/starfarer/loading/LoadingUtils 'super' (Ljava/lang/String;Ljava/io/InputStream;)Lorg/json/JSONObject; 
L414:   astore 4 
L416:   goto L429 

        .stack same_extended 
L419:   aload 6 
L421:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L426:   ifne L304 

        .stack full 
            locals Object java/lang/String Object java/util/Set Integer Object java/util/List Object org/json/JSONObject 
            stack 
        .end stack 
L429:   iload_2 
L430:   ifeq L454 
L433:   getstatic Field com/fs/starfarer/loading/LoadingUtils 'Ò00000' Lorg/apache/log4j/Logger; 
L436:   ldc_w 'Loaded master:' 
L439:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L442:   getstatic Field com/fs/starfarer/loading/LoadingUtils 'Ò00000' Lorg/apache/log4j/Logger; 
L445:   aload 4 
L447:   iconst_2 
L448:   invokevirtual Method org/json/JSONObject toString (I)Ljava/lang/String; 
L451:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 

        .stack same 
L454:   aload_3 
L455:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L460:   astore 6 
L462:   goto L689 

        .stack full 
            locals Object java/lang/String Object java/util/Set Integer Object java/util/List Object org/json/JSONObject Top Object java/util/Iterator 
            stack 
        .end stack 
L465:   aload 6 
L467:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L472:   checkcast com/fs/util/container/Pair 
L475:   astore 5 
L477:   aload 5 
L479:   getfield Field com/fs/util/container/Pair one Ljava/lang/Object; 
L482:   checkcast com/fs/util/C$Oo 
L485:   astore 7 
L487:   aload 5 
L489:   getfield Field com/fs/util/container/Pair two Ljava/lang/Object; 
L492:   checkcast java/io/InputStream 
L495:   astore 8 
L497:   new java/lang/StringBuilder 
L500:   dup 
L501:   invokespecial Method java/lang/StringBuilder <init> ()V 
L504:   aload 5 
L506:   getfield Field com/fs/util/container/Pair one Ljava/lang/Object; 
L509:   checkcast com/fs/util/C$Oo 
L512:   getfield Field com/fs/util/C$Oo 'super' Lcom/fs/util/C$o; 
L515:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/Object;)Ljava/lang/StringBuilder; 
L518:   ldc_w ': ' 
L521:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L524:   aload 5 
L526:   getfield Field com/fs/util/container/Pair one Ljava/lang/Object; 
L529:   checkcast com/fs/util/C$Oo 
L532:   getfield Field com/fs/util/C$Oo 'Ó00000' Ljava/lang/String; 
L535:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L538:   ldc_w ' (' 
L541:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L544:   aload_0 
L545:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L548:   ldc_w ')' 
L551:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L554:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L557:   aload 8 
L559:   invokestatic Method com/fs/starfarer/loading/LoadingUtils 'super' (Ljava/lang/String;Ljava/io/InputStream;)Lorg/json/JSONObject; 
L562:   astore 9 
L564:   aconst_null 
L565:   astore 10 
L567:   aload_0 
L568:   ldc_w 'planets.json' 
L571:   invokevirtual Method java/lang/String endsWith (Ljava/lang/String;)Z 
L574:   ifeq L606 
L577:   new java/lang/StringBuilder 
L580:   dup 
L581:   aload 7 
L583:   getfield Field com/fs/util/C$Oo 'Ó00000' Ljava/lang/String; 
L586:   invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L589:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L592:   ldc_w '/planets.json' 
L595:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L598:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L601:   astore 10 
L603:   goto L642 

        .stack full 
            locals Object java/lang/String Object java/util/Set Integer Object java/util/List Object org/json/JSONObject Object com/fs/util/container/Pair Object java/util/Iterator Object com/fs/util/C$Oo Object java/io/InputStream Object org/json/JSONObject Object java/lang/String 
            stack 
        .end stack 
L606:   aload_0 
L607:   ldc_w 'terrain.json' 
L610:   invokevirtual Method java/lang/String endsWith (Ljava/lang/String;)Z 
L613:   ifeq L642 
L616:   new java/lang/StringBuilder 
L619:   dup 
L620:   aload 7 
L622:   getfield Field com/fs/util/C$Oo 'Ó00000' Ljava/lang/String; 
L625:   invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L628:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L631:   ldc_w '/terrain.json' 
L634:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L637:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L640:   astore 10 

        .stack same 
L642:   iload_2 
L643:   ifeq L667 
L646:   getstatic Field com/fs/starfarer/loading/LoadingUtils 'Ò00000' Lorg/apache/log4j/Logger; 
L649:   ldc_w 'Merging master with:' 
L652:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L655:   getstatic Field com/fs/starfarer/loading/LoadingUtils 'Ò00000' Lorg/apache/log4j/Logger; 
L658:   aload 9 
L660:   iconst_2 
L661:   invokevirtual Method org/json/JSONObject toString (I)Ljava/lang/String; 
L664:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 

        .stack same 
L667:   aload 4 
L669:   aload 9 
L671:   aload 7 
L673:   getfield Field com/fs/util/C$Oo String Z 
L676:   ifeq L683 
L679:   aload_1 
L680:   goto L684 

        .stack full 
            locals Object java/lang/String Object java/util/Set Integer Object java/util/List Object org/json/JSONObject Object com/fs/util/container/Pair Object java/util/Iterator Object com/fs/util/C$Oo Object java/io/InputStream Object org/json/JSONObject Object java/lang/String 
            stack Object org/json/JSONObject Object org/json/JSONObject 
        .end stack 
L683:   aconst_null 

        .stack full 
            locals Object java/lang/String Object java/util/Set Integer Object java/util/List Object org/json/JSONObject Object com/fs/util/container/Pair Object java/util/Iterator Object com/fs/util/C$Oo Object java/io/InputStream Object org/json/JSONObject Object java/lang/String 
            stack Object org/json/JSONObject Object org/json/JSONObject Object java/util/Set 
        .end stack 
L684:   aload 10 
L686:   invokestatic Method com/fs/starfarer/loading/LoadingUtils 'super' (Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;Ljava/lang/String;)V 

        .stack full 
            locals Object java/lang/String Object java/util/Set Integer Object java/util/List Object org/json/JSONObject Top Object java/util/Iterator 
            stack 
        .end stack 
L689:   aload 6 
L691:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L696:   ifne L465 
L699:   iload_2 
L700:   ifeq L724 
L703:   getstatic Field com/fs/starfarer/loading/LoadingUtils 'Ò00000' Lorg/apache/log4j/Logger; 
L706:   ldc_w 'Merged result:' 
L709:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L712:   getstatic Field com/fs/starfarer/loading/LoadingUtils 'Ò00000' Lorg/apache/log4j/Logger; 
L715:   aload 4 
L717:   iconst_2 
L718:   invokevirtual Method org/json/JSONObject toString (I)Ljava/lang/String; 
L721:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 

        .stack full 
            locals Object java/lang/String Object java/util/Set Integer Object java/util/List Object org/json/JSONObject 
            stack 
        .end stack 
L724:   aload 4 
L726:   areturn 
L727:   
    .end code 
.end method 

.method private static 'super' : (Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;Ljava/lang/String;)V 
    .exceptions org/json/JSONException 
    .signature (Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set<Ljava/lang/String;>;Ljava/lang/String;)V 
    .code stack 7 locals 10 
L0:     aload_1 
L1:     invokevirtual Method org/json/JSONObject sortedKeys ()Ljava/util/Iterator; 
L4:     astore 4 
L6:     goto L414 

        .stack append Object java/util/Iterator 
L9:     aload 4 
L11:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L16:    checkcast java/lang/String 
L19:    astore 5 
L21:    aload_2 
L22:    ifnull L39 
L25:    aload_2 
L26:    aload 5 
L28:    invokeinterface InterfaceMethod java/util/Set contains (Ljava/lang/Object;)Z 2 
L33:    ifeq L39 
L36:    goto L414 

        .stack append Object java/lang/String 
L39:    aload_1 
L40:    aload 5 
L42:    invokevirtual Method org/json/JSONObject optJSONArray (Ljava/lang/String;)Lorg/json/JSONArray; 
L45:    ifnull L290 
L48:    aload_0 
L49:    aload 5 
L51:    invokevirtual Method org/json/JSONObject has (Ljava/lang/String;)Z 
L54:    ifeq L89 
L57:    aload_0 
L58:    aload 5 
L60:    invokevirtual Method org/json/JSONObject optJSONArray (Ljava/lang/String;)Lorg/json/JSONArray; 
L63:    ifnonnull L89 
L66:    new java/lang/RuntimeException 
L69:    dup 
L70:    ldc_w 'Value for key %s must be a JSON array' 
L73:    iconst_1 
L74:    anewarray java/lang/Object 
L77:    dup 
L78:    iconst_0 
L79:    aload 5 
L81:    aastore 
L82:    invokestatic Method java/lang/String format (Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String; 
L85:    invokespecial Method java/lang/RuntimeException <init> (Ljava/lang/String;)V 
L88:    athrow 

        .stack same 
L89:    aload_0 
L90:    aload 5 
L92:    invokevirtual Method org/json/JSONObject has (Ljava/lang/String;)Z 
L95:    ifne L112 
L98:    aload_0 
L99:    aload 5 
L101:   new org/json/JSONArray 
L104:   dup 
L105:   invokespecial Method org/json/JSONArray <init> ()V 
L108:   invokevirtual Method org/json/JSONObject put (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject; 
L111:   pop 

        .stack same 
L112:   aload_1 
L113:   aload 5 
L115:   invokevirtual Method org/json/JSONObject getJSONArray (Ljava/lang/String;)Lorg/json/JSONArray; 
L118:   astore 6 
L120:   iconst_0 
L121:   istore 7 
L123:   aload 6 
L125:   invokevirtual Method org/json/JSONArray length ()I 
L128:   iconst_1 
L129:   if_icmplt L159 
L132:   aload 6 
L134:   iconst_0 
L135:   invokevirtual Method org/json/JSONArray getString (I)Ljava/lang/String; 
L138:   ifnull L159 
L141:   aload 6 
L143:   iconst_0 
L144:   invokevirtual Method org/json/JSONArray getString (I)Ljava/lang/String; 
L147:   ldc_w 'core_clearArray' 
L150:   invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L153:   ifeq L159 
L156:   iconst_1 
L157:   istore 7 

        .stack append Object org/json/JSONArray Integer 
L159:   iload 7 
L161:   ifeq L178 
L164:   aload_0 
L165:   aload 5 
L167:   new org/json/JSONArray 
L170:   dup 
L171:   invokespecial Method org/json/JSONArray <init> ()V 
L174:   invokevirtual Method org/json/JSONObject put (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject; 
L177:   pop 

        .stack same 
L178:   aload_0 
L179:   aload 5 
L181:   invokevirtual Method org/json/JSONObject getJSONArray (Ljava/lang/String;)Lorg/json/JSONArray; 
L184:   astore 8 
L186:   aload 8 
L188:   invokevirtual Method org/json/JSONArray length ()I 
L191:   iconst_4 
L192:   if_icmpne L223 
L195:   aload 5 
L197:   invokevirtual Method java/lang/String toLowerCase ()Ljava/lang/String; 
L200:   ldc_w 'color' 
L203:   invokevirtual Method java/lang/String contains (Ljava/lang/CharSequence;)Z 
L206:   ifne L247 
L209:   aload 5 
L211:   invokevirtual Method java/lang/String toLowerCase ()Ljava/lang/String; 
L214:   ldc_w 'button' 
L217:   invokevirtual Method java/lang/String contains (Ljava/lang/CharSequence;)Z 
L220:   ifne L247 

        .stack append Object org/json/JSONArray 
L223:   aload 5 
L225:   invokevirtual Method java/lang/String toLowerCase ()Ljava/lang/String; 
L228:   ldc_w 'music_' 
L231:   invokevirtual Method java/lang/String startsWith (Ljava/lang/String;)Z 
L234:   ifeq L255 
L237:   goto L247 

        .stack same 
L240:   aload 8 
L242:   iconst_0 
L243:   invokevirtual Method org/json/JSONArray remove (I)Ljava/lang/Object; 
L246:   pop 

        .stack same 
L247:   aload 8 
L249:   invokevirtual Method org/json/JSONArray length ()I 
L252:   ifgt L240 

        .stack same 
L255:   iconst_0 
L256:   istore 9 
L258:   goto L277 

        .stack append Integer 
L261:   aload 8 
L263:   aload 6 
L265:   iload 9 
L267:   invokevirtual Method org/json/JSONArray get (I)Ljava/lang/Object; 
L270:   invokevirtual Method org/json/JSONArray put (Ljava/lang/Object;)Lorg/json/JSONArray; 
L273:   pop 
L274:   iinc 9 1 

        .stack same 
L277:   iload 9 
L279:   aload 6 
L281:   invokevirtual Method org/json/JSONArray length ()I 
L284:   if_icmplt L261 
L287:   goto L414 

        .stack full 
            locals Object org/json/JSONObject Object org/json/JSONObject Object java/util/Set Object java/lang/String Object java/util/Iterator Object java/lang/String 
            stack 
        .end stack 
L290:   aload_1 
L291:   aload 5 
L293:   invokevirtual Method org/json/JSONObject optJSONObject (Ljava/lang/String;)Lorg/json/JSONObject; 
L296:   ifnull L401 
L299:   aload_0 
L300:   aload 5 
L302:   invokevirtual Method org/json/JSONObject has (Ljava/lang/String;)Z 
L305:   ifeq L340 
L308:   aload_0 
L309:   aload 5 
L311:   invokevirtual Method org/json/JSONObject optJSONObject (Ljava/lang/String;)Lorg/json/JSONObject; 
L314:   ifnonnull L340 
L317:   new java/lang/RuntimeException 
L320:   dup 
L321:   ldc_w 'Value for key %s must be a JSON object' 
L324:   iconst_1 
L325:   anewarray java/lang/Object 
L328:   dup 
L329:   iconst_0 
L330:   aload 5 
L332:   aastore 
L333:   invokestatic Method java/lang/String format (Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String; 
L336:   invokespecial Method java/lang/RuntimeException <init> (Ljava/lang/String;)V 
L339:   athrow 

        .stack same 
L340:   aload_0 
L341:   aload 5 
L343:   invokevirtual Method org/json/JSONObject has (Ljava/lang/String;)Z 
L346:   ifne L381 
L349:   new org/json/JSONObject 
L352:   dup 
L353:   invokespecial Method org/json/JSONObject <init> ()V 
L356:   astore 6 
L358:   aload_0 
L359:   aload 5 
L361:   aload 6 
L363:   invokevirtual Method org/json/JSONObject put (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject; 
L366:   pop 
L367:   aload_3 
L368:   ifnull L381 
L371:   aload 6 
L373:   getstatic Field com/fs/starfarer/loading/LoadingUtils 'super' Ljava/lang/String; 
L376:   aload_3 
L377:   invokevirtual Method org/json/JSONObject put (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject; 
L380:   pop 

        .stack same 
L381:   aload_0 
L382:   aload 5 
L384:   invokevirtual Method org/json/JSONObject getJSONObject (Ljava/lang/String;)Lorg/json/JSONObject; 
L387:   aload_1 
L388:   aload 5 
L390:   invokevirtual Method org/json/JSONObject getJSONObject (Ljava/lang/String;)Lorg/json/JSONObject; 
L393:   aload_2 
L394:   aconst_null 
L395:   invokestatic Method com/fs/starfarer/loading/LoadingUtils 'super' (Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;Ljava/lang/String;)V 
L398:   goto L414 

        .stack same 
L401:   aload_0 
L402:   aload 5 
L404:   aload_1 
L405:   aload 5 
L407:   invokevirtual Method org/json/JSONObject optString (Ljava/lang/String;)Ljava/lang/String; 
L410:   invokevirtual Method org/json/JSONObject put (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject; 
L413:   pop 

        .stack chop 1 
L414:   aload 4 
L416:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L421:   ifne L9 
L424:   return 
L425:   
    .end code 
.end method 

.method public static String : (Ljava/lang/String;)Ljava/lang/String; 
    .code stack 3 locals 1 
L0:     aload_0 
L1:     ldc_w '((\n)|(\r\n))+' 
L4:     ldc_w '$2' 
L7:     invokevirtual Method java/lang/String replaceAll (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 
L10:    areturn 
L11:    
    .end code 
.end method 

.method public static 'super' : (Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List; 
    .exceptions java/io/IOException 
    .signature (Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List<Ljava/lang/String;>; 
    .code stack 4 locals 3 
L0:     invokestatic Method com/fs/util/C 'Ó00000' ()Lcom/fs/util/C; 
L3:     aload_0 
L4:     aload_1 
L5:     iload_2 
L6:     invokevirtual Method com/fs/util/C o00000 (Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List; 
L9:     areturn 
L10:    
    .end code 
.end method 

.method public static 'super' : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List; 
    .exceptions java/io/IOException 
    .signature (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List<Ljava/lang/String;>; 
    .code stack 5 locals 11 
L0:     new java/util/ArrayList 
L3:     dup 
L4:     invokespecial Method java/util/ArrayList <init> ()V 
L7:     astore_3 
L8:     new java/io/File 
L11:    dup 
L12:    aload_0 
L13:    invokespecial Method java/io/File <init> (Ljava/lang/String;)V 
L16:    astore 4 
L18:    aload 4 
L20:    invokevirtual Method java/io/File exists ()Z 
L23:    ifne L75 
L26:    new java/io/File 
L29:    dup 
L30:    ldc_w '../starfarer.res/res' 
L33:    invokespecial Method java/io/File <init> (Ljava/lang/String;)V 
L36:    invokevirtual Method java/io/File exists ()Z 
L39:    ifeq L44 
L42:    aload_3 
L43:    areturn 

        .stack append Object java/util/List Object java/io/File 
L44:    new java/lang/RuntimeException 
L47:    dup 
L48:    new java/lang/StringBuilder 
L51:    dup 
L52:    ldc_w '[' 
L55:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L58:    aload_0 
L59:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L62:    ldc_w '] not found!!!' 
L65:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L68:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L71:    invokespecial Method java/lang/RuntimeException <init> (Ljava/lang/String;)V 
L74:    athrow 

        .stack same 
L75:    new java/util/jar/JarFile 
L78:    dup 
L79:    aload_0 
L80:    invokespecial Method java/util/jar/JarFile <init> (Ljava/lang/String;)V 
L83:    astore 5 
L85:    aload 5 
L87:    invokevirtual Method java/util/jar/JarFile entries ()Ljava/util/Enumeration; 
L90:    astore 6 
L92:    goto L181 

        .stack append Object java/util/jar/JarFile Object java/util/Enumeration 
L95:    aload 6 
L97:    invokeinterface InterfaceMethod java/util/Enumeration nextElement ()Ljava/lang/Object; 1 
L102:   checkcast java/util/jar/JarEntry 
L105:   astore 7 
L107:   aload 7 
L109:   invokevirtual Method java/util/jar/JarEntry getName ()Ljava/lang/String; 
L112:   astore 8 
L114:   aload 8 
L116:   ldc_w '/' 
L119:   invokevirtual Method java/lang/String lastIndexOf (Ljava/lang/String;)I 
L122:   istore 9 
L124:   iload 9 
L126:   iconst_m1 
L127:   if_icmpne L138 
L130:   ldc_w '' 
L133:   astore 10 
L135:   goto L154 

        .stack append Object java/util/jar/JarEntry Object java/lang/String Integer 
L138:   aload 8 
L140:   iconst_0 
L141:   aload 8 
L143:   ldc_w '/' 
L146:   invokevirtual Method java/lang/String lastIndexOf (Ljava/lang/String;)I 
L149:   invokevirtual Method java/lang/String substring (II)Ljava/lang/String; 
L152:   astore 10 

        .stack append Object java/lang/String 
L154:   aload 10 
L156:   aload_1 
L157:   invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L160:   ifeq L181 
L163:   aload 8 
L165:   aload_2 
L166:   invokevirtual Method java/lang/String endsWith (Ljava/lang/String;)Z 
L169:   ifeq L181 
L172:   aload_3 
L173:   aload 8 
L175:   invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L180:   pop 

        .stack full 
            locals Object java/lang/String Object java/lang/String Object java/lang/String Object java/util/List Object java/io/File Object java/util/jar/JarFile Object java/util/Enumeration 
            stack 
        .end stack 
L181:   aload 6 
L183:   invokeinterface InterfaceMethod java/util/Enumeration hasMoreElements ()Z 1 
L188:   ifne L95 
L191:   aload 5 
L193:   invokevirtual Method java/util/jar/JarFile close ()V 
L196:   aload_3 
L197:   areturn 
L198:   
    .end code 
.end method 

.method public static 'Ò00000' : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray; 
    .exceptions java/io/IOException org/json/JSONException 
    .code stack 5 locals 17 
L0:     invokestatic Method com/fs/util/C 'Ó00000' ()Lcom/fs/util/C; 
L3:     aload_1 
L4:     invokevirtual Method com/fs/util/C new (Ljava/lang/String;)Ljava/util/List; 
L7:     astore_3 
L8:     new java/util/ArrayList 
L11:    dup 
L12:    invokespecial Method java/util/ArrayList <init> ()V 
L15:    astore 4 
L17:    aload_3 
L18:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L23:    astore 6 
L25:    goto L251 

        .stack full 
            locals Object java/lang/String Object java/lang/String Object java/lang/String Object java/util/List Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L28:    aload 6 
L30:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L35:    checkcast com/fs/util/container/Pair 
L38:    astore 5 
L40:    aload 5 
L42:    getfield Field com/fs/util/container/Pair one Ljava/lang/Object; 
L45:    checkcast com/fs/util/C$Oo 
L48:    getfield Field com/fs/util/C$Oo 'Ó00000' Ljava/lang/String; 
L51:    ifnull L251 
L54:    aload 5 
L56:    getfield Field com/fs/util/container/Pair one Ljava/lang/Object; 
L59:    checkcast com/fs/util/C$Oo 
L62:    getfield Field com/fs/util/C$Oo 'Ó00000' Ljava/lang/String; 
L65:    aload_2 
L66:    invokevirtual Method java/lang/String contains (Ljava/lang/CharSequence;)Z 
L69:    ifeq L251 
L72:    aload_3 
L73:    aload 5 
L75:    invokeinterface InterfaceMethod java/util/List remove (Ljava/lang/Object;)Z 2 
L80:    pop 
L81:    aload 5 
L83:    getfield Field com/fs/util/container/Pair one Ljava/lang/Object; 
L86:    checkcast com/fs/util/C$Oo 
L89:    astore 7 
L91:    aload 5 
L93:    getfield Field com/fs/util/container/Pair two Ljava/lang/Object; 
L96:    checkcast java/io/InputStream 
L99:    astore 8 
L101:   getstatic Field com/fs/starfarer/loading/LoadingUtils 'Ò00000' Lorg/apache/log4j/Logger; 
L104:   new java/lang/StringBuilder 
L107:   dup 
L108:   ldc_w 'Loading CSV data from [' 
L111:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L114:   aload 5 
L116:   getfield Field com/fs/util/container/Pair one Ljava/lang/Object; 
L119:   checkcast com/fs/util/C$Oo 
L122:   getfield Field com/fs/util/C$Oo 'super' Lcom/fs/util/C$o; 
L125:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/Object;)Ljava/lang/StringBuilder; 
L128:   ldc_w ': ' 
L131:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L134:   aload 5 
L136:   getfield Field com/fs/util/container/Pair one Ljava/lang/Object; 
L139:   checkcast com/fs/util/C$Oo 
L142:   getfield Field com/fs/util/C$Oo 'Ó00000' Ljava/lang/String; 
L145:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L148:   ldc ']' 
L150:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L153:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L156:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L159:   aload 8 
L161:   invokestatic Method com/fs/starfarer/loading/LoadingUtils 'super' (Ljava/io/InputStream;)Ljava/lang/String; 
L164:   astore 9 
L166:   aload 9 
L168:   invokestatic Method com/fs/starfarer/loading/G o00000 (Ljava/lang/String;)Lorg/json/JSONArray; 
L171:   astore 10 
L173:   iconst_0 
L174:   istore 11 
L176:   goto L238 

        .stack full 
            locals Object java/lang/String Object java/lang/String Object java/lang/String Object java/util/List Object java/util/List Object com/fs/util/container/Pair Object java/util/Iterator Object com/fs/util/C$Oo Object java/io/InputStream Object java/lang/String Object org/json/JSONArray Integer 
            stack 
        .end stack 
L179:   aload 10 
L181:   iload 11 
L183:   invokevirtual Method org/json/JSONArray getJSONObject (I)Lorg/json/JSONObject; 
L186:   astore 12 
L188:   aload 12 
L190:   getstatic Field com/fs/starfarer/loading/LoadingUtils 'super' Ljava/lang/String; 
L193:   new java/lang/StringBuilder 
L196:   dup 
L197:   aload 7 
L199:   getfield Field com/fs/util/C$Oo 'Ó00000' Ljava/lang/String; 
L202:   invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L205:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L208:   ldc_w '/' 
L211:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L214:   aload_1 
L215:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L218:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L221:   invokevirtual Method org/json/JSONObject put (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject; 
L224:   pop 
L225:   aload 4 
L227:   aload 12 
L229:   invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L234:   pop 
L235:   iinc 11 1 

        .stack same 
L238:   iload 11 
L240:   aload 10 
L242:   invokevirtual Method org/json/JSONArray length ()I 
L245:   if_icmplt L179 
L248:   goto L261 

        .stack full 
            locals Object java/lang/String Object java/lang/String Object java/lang/String Object java/util/List Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L251:   aload 6 
L253:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L258:   ifne L28 

        .stack full 
            locals Object java/lang/String Object java/lang/String Object java/lang/String Object java/util/List Object java/util/List 
            stack 
        .end stack 
L261:   aload_3 
L262:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L267:   astore 6 
L269:   goto L524 

        .stack full 
            locals Object java/lang/String Object java/lang/String Object java/lang/String Object java/util/List Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L272:   aload 6 
L274:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L279:   checkcast com/fs/util/container/Pair 
L282:   astore 5 
L284:   aload 5 
L286:   getfield Field com/fs/util/container/Pair one Ljava/lang/Object; 
L289:   checkcast com/fs/util/C$Oo 
L292:   astore 7 
L294:   aload 5 
L296:   getfield Field com/fs/util/container/Pair two Ljava/lang/Object; 
L299:   checkcast java/io/InputStream 
L302:   astore 8 
L304:   getstatic Field com/fs/starfarer/loading/LoadingUtils 'Ò00000' Lorg/apache/log4j/Logger; 
L307:   new java/lang/StringBuilder 
L310:   dup 
L311:   ldc_w 'Loading CSV data from [' 
L314:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L317:   aload 5 
L319:   getfield Field com/fs/util/container/Pair one Ljava/lang/Object; 
L322:   checkcast com/fs/util/C$Oo 
L325:   getfield Field com/fs/util/C$Oo 'super' Lcom/fs/util/C$o; 
L328:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/Object;)Ljava/lang/StringBuilder; 
L331:   ldc_w ': ' 
L334:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L337:   aload 5 
L339:   getfield Field com/fs/util/container/Pair one Ljava/lang/Object; 
L342:   checkcast com/fs/util/C$Oo 
L345:   getfield Field com/fs/util/C$Oo 'Ó00000' Ljava/lang/String; 
L348:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L351:   ldc ']' 
L353:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L356:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L359:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L362:   aload 8 
L364:   invokestatic Method com/fs/starfarer/loading/LoadingUtils 'super' (Ljava/io/InputStream;)Ljava/lang/String; 
L367:   astore 9 
L369:   aload 9 
L371:   invokestatic Method com/fs/starfarer/loading/G o00000 (Ljava/lang/String;)Lorg/json/JSONArray; 
L374:   astore 10 
L376:   iconst_0 
L377:   istore 11 
L379:   goto L514 

        .stack full 
            locals Object java/lang/String Object java/lang/String Object java/lang/String Object java/util/List Object java/util/List Object com/fs/util/container/Pair Object java/util/Iterator Object com/fs/util/C$Oo Object java/io/InputStream Object java/lang/String Object org/json/JSONArray Integer 
            stack 
        .end stack 
L382:   aload 10 
L384:   iload 11 
L386:   invokevirtual Method org/json/JSONArray getJSONObject (I)Lorg/json/JSONObject; 
L389:   astore 12 
L391:   aload 12 
L393:   getstatic Field com/fs/starfarer/loading/LoadingUtils 'super' Ljava/lang/String; 
L396:   new java/lang/StringBuilder 
L399:   dup 
L400:   aload 7 
L402:   getfield Field com/fs/util/C$Oo 'Ó00000' Ljava/lang/String; 
L405:   invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L408:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L411:   ldc_w '/' 
L414:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L417:   aload_1 
L418:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L421:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L424:   invokevirtual Method org/json/JSONObject put (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject; 
L427:   pop 
L428:   aload 12 
L430:   aload_0 
L431:   invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L434:   astore 13 
L436:   aload 4 
L438:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L443:   astore 15 
L445:   goto L491 

        .stack full 
            locals Object java/lang/String Object java/lang/String Object java/lang/String Object java/util/List Object java/util/List Object com/fs/util/container/Pair Object java/util/Iterator Object com/fs/util/C$Oo Object java/io/InputStream Object java/lang/String Object org/json/JSONArray Integer Object org/json/JSONObject Object java/lang/String Top Object java/util/Iterator 
            stack 
        .end stack 
L448:   aload 15 
L450:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L455:   checkcast org/json/JSONObject 
L458:   astore 14 
L460:   aload 14 
L462:   aload_0 
L463:   invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L466:   astore 16 
L468:   aload 13 
L470:   aload 16 
L472:   invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L475:   ifeq L491 
L478:   aload 4 
L480:   aload 14 
L482:   invokeinterface InterfaceMethod java/util/List remove (Ljava/lang/Object;)Z 2 
L487:   pop 
L488:   goto L501 

        .stack same 
L491:   aload 15 
L493:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L498:   ifne L448 

        .stack full 
            locals Object java/lang/String Object java/lang/String Object java/lang/String Object java/util/List Object java/util/List Object com/fs/util/container/Pair Object java/util/Iterator Object com/fs/util/C$Oo Object java/io/InputStream Object java/lang/String Object org/json/JSONArray Integer Object org/json/JSONObject Object java/lang/String 
            stack 
        .end stack 
L501:   aload 4 
L503:   aload 12 
L505:   invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L510:   pop 
L511:   iinc 11 1 

        .stack chop 2 
L514:   iload 11 
L516:   aload 10 
L518:   invokevirtual Method org/json/JSONArray length ()I 
L521:   if_icmplt L382 

        .stack full 
            locals Object java/lang/String Object java/lang/String Object java/lang/String Object java/util/List Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L524:   aload 6 
L526:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L531:   ifne L272 
L534:   new org/json/JSONArray 
L537:   dup 
L538:   invokespecial Method org/json/JSONArray <init> ()V 
L541:   astore 5 
L543:   aload 4 
L545:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L550:   astore 7 
L552:   goto L575 

        .stack full 
            locals Object java/lang/String Object java/lang/String Object java/lang/String Object java/util/List Object java/util/List Object org/json/JSONArray Top Object java/util/Iterator 
            stack 
        .end stack 
L555:   aload 7 
L557:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L562:   checkcast org/json/JSONObject 
L565:   astore 6 
L567:   aload 5 
L569:   aload 6 
L571:   invokevirtual Method org/json/JSONArray put (Ljava/lang/Object;)Lorg/json/JSONArray; 
L574:   pop 

        .stack same 
L575:   aload 7 
L577:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L582:   ifne L555 
L585:   aload 5 
L587:   areturn 
L588:   
    .end code 
.end method 

.method public static String : (Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject; 
    .exceptions java/io/IOException org/json/JSONException 
    .code stack 4 locals 9 
L0:     invokestatic Method com/fs/util/C 'Ó00000' ()Lcom/fs/util/C; 
L3:     aload_0 
L4:     invokevirtual Method com/fs/util/C new (Ljava/lang/String;)Ljava/util/List; 
L7:     astore_2 
L8:     new org/json/JSONObject 
L11:    dup 
L12:    invokespecial Method org/json/JSONObject <init> ()V 
L15:    astore_3 
L16:    aload_2 
L17:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L22:    astore 5 
L24:    goto L159 

        .stack full 
            locals Object java/lang/String Object java/lang/String Object java/util/List Object org/json/JSONObject Top Object java/util/Iterator 
            stack 
        .end stack 
L27:    aload 5 
L29:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L34:    checkcast com/fs/util/container/Pair 
L37:    astore 4 
L39:    aload 4 
L41:    getfield Field com/fs/util/container/Pair one Ljava/lang/Object; 
L44:    checkcast com/fs/util/C$Oo 
L47:    getfield Field com/fs/util/C$Oo 'Ó00000' Ljava/lang/String; 
L50:    ifnull L159 
L53:    aload 4 
L55:    getfield Field com/fs/util/container/Pair one Ljava/lang/Object; 
L58:    checkcast com/fs/util/C$Oo 
L61:    getfield Field com/fs/util/C$Oo 'Ó00000' Ljava/lang/String; 
L64:    aload_1 
L65:    invokevirtual Method java/lang/String contains (Ljava/lang/CharSequence;)Z 
L68:    ifeq L159 
L71:    aload_2 
L72:    aload 4 
L74:    invokeinterface InterfaceMethod java/util/List remove (Ljava/lang/Object;)Z 2 
L79:    pop 
L80:    aload 4 
L82:    getfield Field com/fs/util/container/Pair two Ljava/lang/Object; 
L85:    checkcast java/io/InputStream 
L88:    astore 6 
L90:    new java/lang/StringBuilder 
L93:    dup 
L94:    invokespecial Method java/lang/StringBuilder <init> ()V 
L97:    aload 4 
L99:    getfield Field com/fs/util/container/Pair one Ljava/lang/Object; 
L102:   checkcast com/fs/util/C$Oo 
L105:   getfield Field com/fs/util/C$Oo 'super' Lcom/fs/util/C$o; 
L108:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/Object;)Ljava/lang/StringBuilder; 
L111:   ldc_w ': ' 
L114:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L117:   aload 4 
L119:   getfield Field com/fs/util/container/Pair one Ljava/lang/Object; 
L122:   checkcast com/fs/util/C$Oo 
L125:   getfield Field com/fs/util/C$Oo 'Ó00000' Ljava/lang/String; 
L128:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L131:   ldc_w ' (' 
L134:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L137:   aload_0 
L138:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L141:   ldc_w ')' 
L144:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L147:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L150:   aload 6 
L152:   invokestatic Method com/fs/starfarer/loading/LoadingUtils 'super' (Ljava/lang/String;Ljava/io/InputStream;)Lorg/json/JSONObject; 
L155:   astore_3 
L156:   goto L169 

        .stack same_extended 
L159:   aload 5 
L161:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L166:   ifne L27 

        .stack full 
            locals Object java/lang/String Object java/lang/String Object java/util/List Object org/json/JSONObject 
            stack 
        .end stack 
L169:   aload_2 
L170:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L175:   astore 5 
L177:   goto L287 

        .stack full 
            locals Object java/lang/String Object java/lang/String Object java/util/List Object org/json/JSONObject Top Object java/util/Iterator 
            stack 
        .end stack 
L180:   aload 5 
L182:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L187:   checkcast com/fs/util/container/Pair 
L190:   astore 4 
L192:   aload 4 
L194:   getfield Field com/fs/util/container/Pair one Ljava/lang/Object; 
L197:   checkcast com/fs/util/C$Oo 
L200:   astore 6 
L202:   aload 4 
L204:   getfield Field com/fs/util/container/Pair two Ljava/lang/Object; 
L207:   checkcast java/io/InputStream 
L210:   astore 7 
L212:   new java/lang/StringBuilder 
L215:   dup 
L216:   invokespecial Method java/lang/StringBuilder <init> ()V 
L219:   aload 4 
L221:   getfield Field com/fs/util/container/Pair one Ljava/lang/Object; 
L224:   checkcast com/fs/util/C$Oo 
L227:   getfield Field com/fs/util/C$Oo 'super' Lcom/fs/util/C$o; 
L230:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/Object;)Ljava/lang/StringBuilder; 
L233:   ldc_w ': ' 
L236:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L239:   aload 4 
L241:   getfield Field com/fs/util/container/Pair one Ljava/lang/Object; 
L244:   checkcast com/fs/util/C$Oo 
L247:   getfield Field com/fs/util/C$Oo 'Ó00000' Ljava/lang/String; 
L250:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L253:   ldc_w ' (' 
L256:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L259:   aload_0 
L260:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L263:   ldc_w ')' 
L266:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L269:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L272:   aload 7 
L274:   invokestatic Method com/fs/starfarer/loading/LoadingUtils 'super' (Ljava/lang/String;Ljava/io/InputStream;)Lorg/json/JSONObject; 
L277:   astore 8 
L279:   aload_3 
L280:   aload 8 
L282:   aconst_null 
L283:   aconst_null 
L284:   invokestatic Method com/fs/starfarer/loading/LoadingUtils 'super' (Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/Set;Ljava/lang/String;)V 

        .stack same_extended 
L287:   aload 5 
L289:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L294:   ifne L180 
L297:   aload_3 
L298:   areturn 
L299:   
    .end code 
.end method 
.innerclasses 
    com/fs/starfarer/launcher/ModManager$ModSpec com/fs/starfarer/launcher/ModManager ModSpec public static 
    com/fs/util/C$Oo com/fs/util/C Oo public static 
.end innerclasses 
.end class 
