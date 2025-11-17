.version 61 0 
.class public super com/fs/graphics/FileRepository 
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
            0 is this Lcom/fs/graphics/FileRepository; from L0 to L5 
        .end localvariabletable 
    .end code 
.end method 

.method public static loadImage : (Ljava/lang/String;)Ljava/awt/image/BufferedImage; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokestatic Method com/fs/graphics/L 'o00000' (Ljava/lang/String;)Ljava/awt/image/BufferedImage;
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
L1:     invokestatic Method com/fs/graphics/L 'Ô00000' (Ljava/lang/String;)[B
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
.sourcefile 'FileRepository.java' 
.end class 
