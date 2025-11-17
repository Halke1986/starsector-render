.version 61 0 
.class public super com/fs/graphics/L 
.super java/lang/Object 

.method public <init> : ()V 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokespecial Method java/lang/Object <init> ()V 
L4:     return 
L5:     
        .linenumbertable 
            L0 7 
        .end linenumbertable 
        .localvariabletable 
            0 is this Lcom/fs/graphics/L; from L0 to L5 
        .end localvariabletable 
    .end code 
.end method 

.method public static return : (Ljava/lang/String;)V
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokestatic Method com/genir/renderer/overrides/FileRepository queueImage (Ljava/lang/String;)V 
L4:     return 
L5:     
        .linenumbertable 
            L0 13 
            L4 14 
        .end linenumbertable 
        .localvariabletable 
            0 is var0 Ljava/lang/String; from L0 to L5 
        .end localvariabletable 
    .end code 
.end method 

.method public static Object : (Ljava/lang/String;)V
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokestatic Method com/genir/renderer/overrides/FileRepository queueSound (Ljava/lang/String;)V 
L4:     return 
L5:     
        .linenumbertable 
            L0 18 
            L4 19 
        .end linenumbertable 
        .localvariabletable 
            0 is var0 Ljava/lang/String; from L0 to L5 
        .end localvariabletable 
    .end code 
.end method 

.method public static 'Ò00000' : (Ljava/lang/String;)[B
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokestatic Method com/genir/renderer/overrides/FileRepository getSound (Ljava/lang/String;)[B 
L4:     areturn 
L5:     
        .linenumbertable 
            L0 23 
        .end linenumbertable 
        .localvariabletable 
            0 is var0 Ljava/lang/String; from L0 to L5 
        .end localvariabletable 
    .end code 
.end method 

.method public static 'Õ00000' : (Ljava/lang/String;)Ljava/awt/image/BufferedImage;
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokestatic Method com/genir/renderer/overrides/FileRepository getImage (Ljava/lang/String;)Ljava/awt/image/BufferedImage; 
L4:     areturn 
L5:     
        .linenumbertable 
            L0 28 
        .end linenumbertable 
        .localvariabletable 
            0 is var0 Ljava/lang/String; from L0 to L5 
        .end localvariabletable 
    .end code 
.end method 

.method public static 'o00000' : ()V
    .code stack 0 locals 0 
L0:     invokestatic Method com/genir/renderer/overrides/FileRepository startThread ()V 
L3:     return 
L4:     
        .linenumbertable 
            L0 33 
            L3 34 
        .end linenumbertable 
    .end code 
.end method 

.method public static 'Ò00000' : ()V
    .code stack 0 locals 0 
L0:     invokestatic Method com/genir/renderer/overrides/FileRepository joinThread ()V 
L3:     return 
L4:     
        .linenumbertable 
            L0 38 
            L3 39 
        .end linenumbertable 
    .end code 
.end method 

.method private static 'o00000' : (Ljava/lang/String;)Ljava/awt/image/BufferedImage;
    .code stack 1 locals 1 
L0:     aconst_null 
L1:     areturn 
L2:     
        .linenumbertable 
            L0 46 
        .end linenumbertable 
        .localvariabletable 
            0 is var0 Ljava/lang/String; from L0 to L2 
        .end localvariabletable 
    .end code 
    .exceptions java/io/IOException 
.end method 

.method private static 'Ô00000' : (Ljava/lang/String;)[B
    .code stack 1 locals 1 
L0:     aconst_null 
L1:     areturn 
L2:     
        .linenumbertable 
            L0 51 
        .end linenumbertable 
        .localvariabletable 
            0 is var0 Ljava/lang/String; from L0 to L2 
        .end localvariabletable 
    .end code 
    .exceptions java/io/IOException 
.end method 

.method public static loadImage : (Ljava/lang/String;)Ljava/awt/image/BufferedImage; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokestatic Method com/fs/graphics/L loadImageStub (Ljava/lang/String;)Ljava/awt/image/BufferedImage; 
L4:     areturn 
L5:     
        .linenumbertable 
            L0 58 
        .end linenumbertable 
        .localvariabletable 
            0 is var0 Ljava/lang/String; from L0 to L5 
        .end localvariabletable 
    .end code 
    .exceptions java/io/IOException 
.end method 

.method public static loadSound : (Ljava/lang/String;)[B 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokestatic Method com/fs/graphics/L loadSoundStub (Ljava/lang/String;)[B 
L4:     areturn 
L5:     
        .linenumbertable 
            L0 62 
        .end linenumbertable 
        .localvariabletable 
            0 is var0 Ljava/lang/String; from L0 to L5 
        .end localvariabletable 
    .end code 
    .exceptions java/io/IOException 
.end method 
.sourcefile 'L.java' 
.end class 
