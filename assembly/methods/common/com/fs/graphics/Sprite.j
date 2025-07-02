.version 61 0 
.class public super com/fs/graphics/Sprite 
.super java/lang/Object 
.implements java/lang/Cloneable 
.implements com/fs/util/DoNotObfuscate 
.field protected transient texture Lcom/fs/graphics/Object; 
.field public width F
.field public height F
.field public texX F
.field public texY F
.field public texWidth F
.field public texHeight F
.field public angle F
.field public color Ljava/awt/Color;
.field public alphaMult F
.field public colorUL Ljava/awt/Color;
.field public colorUR Ljava/awt/Color;
.field public colorLL Ljava/awt/Color;
.field public colorLR Ljava/awt/Color;
.field public centerX F
.field public centerY F
.field public offsetX I
.field public offsetY I
.field public blendSrc I
.field public blendDest I
.field public texClamp Z
.field public textureId Ljava/lang/String;

.method public <init> : ()V 
    .code stack 6 locals 1 
L0:     aload_0 
L1:     invokespecial Method java/lang/Object <init> ()V 
L4:     aload_0 
L5:     fconst_0 
L6:     putfield Field com/fs/graphics/Sprite texX F 
L9:     aload_0 
L10:    fconst_0 
L11:    putfield Field com/fs/graphics/Sprite texY F 
L14:    aload_0 
L15:    new java/awt/Color 
L18:    dup 
L19:    sipush 255 
L22:    sipush 255 
L25:    sipush 255 
L28:    invokespecial Method java/awt/Color <init> (III)V 
L31:    putfield Field com/fs/graphics/Sprite color Ljava/awt/Color; 
L34:    aload_0 
L35:    fconst_1 
L36:    putfield Field com/fs/graphics/Sprite alphaMult F 
L39:    aload_0 
L40:    new java/awt/Color 
L43:    dup 
L44:    sipush 255 
L47:    sipush 255 
L50:    sipush 255 
L53:    invokespecial Method java/awt/Color <init> (III)V 
L56:    putfield Field com/fs/graphics/Sprite colorUL Ljava/awt/Color; 
L59:    aload_0 
L60:    new java/awt/Color 
L63:    dup 
L64:    sipush 255 
L67:    sipush 255 
L70:    sipush 255 
L73:    invokespecial Method java/awt/Color <init> (III)V 
L76:    putfield Field com/fs/graphics/Sprite colorUR Ljava/awt/Color; 
L79:    aload_0 
L80:    new java/awt/Color 
L83:    dup 
L84:    sipush 255 
L87:    sipush 255 
L90:    sipush 255 
L93:    invokespecial Method java/awt/Color <init> (III)V 
L96:    putfield Field com/fs/graphics/Sprite colorLL Ljava/awt/Color; 
L99:    aload_0 
L100:   new java/awt/Color 
L103:   dup 
L104:   sipush 255 
L107:   sipush 255 
L110:   sipush 255 
L113:   invokespecial Method java/awt/Color <init> (III)V 
L116:   putfield Field com/fs/graphics/Sprite colorLR Ljava/awt/Color; 
L119:   aload_0 
L120:   ldc -1.0f 
L122:   putfield Field com/fs/graphics/Sprite centerX F 
L125:   aload_0 
L126:   ldc -1.0f 
L128:   putfield Field com/fs/graphics/Sprite centerY F 
L131:   aload_0 
L132:   iconst_0 
L133:   putfield Field com/fs/graphics/Sprite offsetX I 
L136:   aload_0 
L137:   iconst_0 
L138:   putfield Field com/fs/graphics/Sprite offsetY I 
L141:   aload_0 
L142:   sipush 770 
L145:   putfield Field com/fs/graphics/Sprite blendSrc I 
L148:   aload_0 
L149:   sipush 771 
L152:   putfield Field com/fs/graphics/Sprite blendDest I 
L155:   aload_0 
L156:   iconst_0 
L157:   putfield Field com/fs/graphics/Sprite texClamp Z 
L160:   aload_0 
L161:   aconst_null 
L162:   invokevirtual Method com/fs/graphics/Sprite setTexture (Lcom/fs/graphics/Object;)V 
L165:   return 
L166:   
    .end code 
.end method 

.method public <init> : (Ljava/lang/String;)V 
    .code stack 6 locals 2 
L0:     aload_0 
L1:     invokespecial Method java/lang/Object <init> ()V 
L4:     aload_0 
L5:     fconst_0 
L6:     putfield Field com/fs/graphics/Sprite texX F 
L9:     aload_0 
L10:    fconst_0 
L11:    putfield Field com/fs/graphics/Sprite texY F 
L14:    aload_0 
L15:    new java/awt/Color 
L18:    dup 
L19:    sipush 255 
L22:    sipush 255 
L25:    sipush 255 
L28:    invokespecial Method java/awt/Color <init> (III)V 
L31:    putfield Field com/fs/graphics/Sprite color Ljava/awt/Color; 
L34:    aload_0 
L35:    fconst_1 
L36:    putfield Field com/fs/graphics/Sprite alphaMult F 
L39:    aload_0 
L40:    new java/awt/Color 
L43:    dup 
L44:    sipush 255 
L47:    sipush 255 
L50:    sipush 255 
L53:    invokespecial Method java/awt/Color <init> (III)V 
L56:    putfield Field com/fs/graphics/Sprite colorUL Ljava/awt/Color; 
L59:    aload_0 
L60:    new java/awt/Color 
L63:    dup 
L64:    sipush 255 
L67:    sipush 255 
L70:    sipush 255 
L73:    invokespecial Method java/awt/Color <init> (III)V 
L76:    putfield Field com/fs/graphics/Sprite colorUR Ljava/awt/Color; 
L79:    aload_0 
L80:    new java/awt/Color 
L83:    dup 
L84:    sipush 255 
L87:    sipush 255 
L90:    sipush 255 
L93:    invokespecial Method java/awt/Color <init> (III)V 
L96:    putfield Field com/fs/graphics/Sprite colorLL Ljava/awt/Color; 
L99:    aload_0 
L100:   new java/awt/Color 
L103:   dup 
L104:   sipush 255 
L107:   sipush 255 
L110:   sipush 255 
L113:   invokespecial Method java/awt/Color <init> (III)V 
L116:   putfield Field com/fs/graphics/Sprite colorLR Ljava/awt/Color; 
L119:   aload_0 
L120:   ldc -1.0f 
L122:   putfield Field com/fs/graphics/Sprite centerX F 
L125:   aload_0 
L126:   ldc -1.0f 
L128:   putfield Field com/fs/graphics/Sprite centerY F 
L131:   aload_0 
L132:   iconst_0 
L133:   putfield Field com/fs/graphics/Sprite offsetX I 
L136:   aload_0 
L137:   iconst_0 
L138:   putfield Field com/fs/graphics/Sprite offsetY I 
L141:   aload_0 
L142:   sipush 770 
L145:   putfield Field com/fs/graphics/Sprite blendSrc I 
L148:   aload_0 
L149:   sipush 771 
L152:   putfield Field com/fs/graphics/Sprite blendDest I 
L155:   aload_0 
L156:   iconst_0 
L157:   putfield Field com/fs/graphics/Sprite texClamp Z 
L160:   aload_0 
L161:   aload_1 
L162:   invokestatic Method com/fs/graphics/oOoO 'Ò00000' (Ljava/lang/String;)Lcom/fs/graphics/Object; 
L165:   invokevirtual Method com/fs/graphics/Sprite setTexture (Lcom/fs/graphics/Object;)V 
L168:   return 
L169:   
    .end code 
.end method 

.method public <init> : (Lcom/fs/graphics/Object;)V 
    .code stack 6 locals 2 
L0:     aload_0 
L1:     invokespecial Method java/lang/Object <init> ()V 
L4:     aload_0 
L5:     fconst_0 
L6:     putfield Field com/fs/graphics/Sprite texX F 
L9:     aload_0 
L10:    fconst_0 
L11:    putfield Field com/fs/graphics/Sprite texY F 
L14:    aload_0 
L15:    new java/awt/Color 
L18:    dup 
L19:    sipush 255 
L22:    sipush 255 
L25:    sipush 255 
L28:    invokespecial Method java/awt/Color <init> (III)V 
L31:    putfield Field com/fs/graphics/Sprite color Ljava/awt/Color; 
L34:    aload_0 
L35:    fconst_1 
L36:    putfield Field com/fs/graphics/Sprite alphaMult F 
L39:    aload_0 
L40:    new java/awt/Color 
L43:    dup 
L44:    sipush 255 
L47:    sipush 255 
L50:    sipush 255 
L53:    invokespecial Method java/awt/Color <init> (III)V 
L56:    putfield Field com/fs/graphics/Sprite colorUL Ljava/awt/Color; 
L59:    aload_0 
L60:    new java/awt/Color 
L63:    dup 
L64:    sipush 255 
L67:    sipush 255 
L70:    sipush 255 
L73:    invokespecial Method java/awt/Color <init> (III)V 
L76:    putfield Field com/fs/graphics/Sprite colorUR Ljava/awt/Color; 
L79:    aload_0 
L80:    new java/awt/Color 
L83:    dup 
L84:    sipush 255 
L87:    sipush 255 
L90:    sipush 255 
L93:    invokespecial Method java/awt/Color <init> (III)V 
L96:    putfield Field com/fs/graphics/Sprite colorLL Ljava/awt/Color; 
L99:    aload_0 
L100:   new java/awt/Color 
L103:   dup 
L104:   sipush 255 
L107:   sipush 255 
L110:   sipush 255 
L113:   invokespecial Method java/awt/Color <init> (III)V 
L116:   putfield Field com/fs/graphics/Sprite colorLR Ljava/awt/Color; 
L119:   aload_0 
L120:   ldc -1.0f 
L122:   putfield Field com/fs/graphics/Sprite centerX F 
L125:   aload_0 
L126:   ldc -1.0f 
L128:   putfield Field com/fs/graphics/Sprite centerY F 
L131:   aload_0 
L132:   iconst_0 
L133:   putfield Field com/fs/graphics/Sprite offsetX I 
L136:   aload_0 
L137:   iconst_0 
L138:   putfield Field com/fs/graphics/Sprite offsetY I 
L141:   aload_0 
L142:   sipush 770 
L145:   putfield Field com/fs/graphics/Sprite blendSrc I 
L148:   aload_0 
L149:   sipush 771 
L152:   putfield Field com/fs/graphics/Sprite blendDest I 
L155:   aload_0 
L156:   iconst_0 
L157:   putfield Field com/fs/graphics/Sprite texClamp Z 
L160:   aload_0 
L161:   aload_1 
L162:   invokevirtual Method com/fs/graphics/Sprite setTexture (Lcom/fs/graphics/Object;)V 
L165:   return 
L166:   
    .end code 
.end method 

.method public <init> : (Lcom/fs/graphics/Object;Ljava/awt/Color;)V 
    .code stack 6 locals 3 
L0:     aload_0 
L1:     invokespecial Method java/lang/Object <init> ()V 
L4:     aload_0 
L5:     fconst_0 
L6:     putfield Field com/fs/graphics/Sprite texX F 
L9:     aload_0 
L10:    fconst_0 
L11:    putfield Field com/fs/graphics/Sprite texY F 
L14:    aload_0 
L15:    new java/awt/Color 
L18:    dup 
L19:    sipush 255 
L22:    sipush 255 
L25:    sipush 255 
L28:    invokespecial Method java/awt/Color <init> (III)V 
L31:    putfield Field com/fs/graphics/Sprite color Ljava/awt/Color; 
L34:    aload_0 
L35:    fconst_1 
L36:    putfield Field com/fs/graphics/Sprite alphaMult F 
L39:    aload_0 
L40:    new java/awt/Color 
L43:    dup 
L44:    sipush 255 
L47:    sipush 255 
L50:    sipush 255 
L53:    invokespecial Method java/awt/Color <init> (III)V 
L56:    putfield Field com/fs/graphics/Sprite colorUL Ljava/awt/Color; 
L59:    aload_0 
L60:    new java/awt/Color 
L63:    dup 
L64:    sipush 255 
L67:    sipush 255 
L70:    sipush 255 
L73:    invokespecial Method java/awt/Color <init> (III)V 
L76:    putfield Field com/fs/graphics/Sprite colorUR Ljava/awt/Color; 
L79:    aload_0 
L80:    new java/awt/Color 
L83:    dup 
L84:    sipush 255 
L87:    sipush 255 
L90:    sipush 255 
L93:    invokespecial Method java/awt/Color <init> (III)V 
L96:    putfield Field com/fs/graphics/Sprite colorLL Ljava/awt/Color; 
L99:    aload_0 
L100:   new java/awt/Color 
L103:   dup 
L104:   sipush 255 
L107:   sipush 255 
L110:   sipush 255 
L113:   invokespecial Method java/awt/Color <init> (III)V 
L116:   putfield Field com/fs/graphics/Sprite colorLR Ljava/awt/Color; 
L119:   aload_0 
L120:   ldc -1.0f 
L122:   putfield Field com/fs/graphics/Sprite centerX F 
L125:   aload_0 
L126:   ldc -1.0f 
L128:   putfield Field com/fs/graphics/Sprite centerY F 
L131:   aload_0 
L132:   iconst_0 
L133:   putfield Field com/fs/graphics/Sprite offsetX I 
L136:   aload_0 
L137:   iconst_0 
L138:   putfield Field com/fs/graphics/Sprite offsetY I 
L141:   aload_0 
L142:   sipush 770 
L145:   putfield Field com/fs/graphics/Sprite blendSrc I 
L148:   aload_0 
L149:   sipush 771 
L152:   putfield Field com/fs/graphics/Sprite blendDest I 
L155:   aload_0 
L156:   iconst_0 
L157:   putfield Field com/fs/graphics/Sprite texClamp Z 
L160:   aload_0 
L161:   aload_1 
L162:   invokevirtual Method com/fs/graphics/Sprite setTexture (Lcom/fs/graphics/Object;)V 
L165:   aload_0 
L166:   aload_2 
L167:   invokevirtual Method com/fs/graphics/Sprite setColor (Ljava/awt/Color;)V 
L170:   return 
L171:   
    .end code 
.end method 

.method public getAverageColor : ()Ljava/awt/Color; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/graphics/Sprite texture Lcom/fs/graphics/Object; 
L4:     ifnonnull L11 
L7:     getstatic Field java/awt/Color white Ljava/awt/Color; 
L10:    areturn 

        .stack same 
L11:    aload_0 
L12:    getfield Field com/fs/graphics/Sprite texture Lcom/fs/graphics/Object; 
L15:    invokevirtual Method com/fs/graphics/Object 'ø00000' ()Ljava/awt/Color; 
L18:    areturn 
L19:    
    .end code 
.end method 

.method public setBlendFunc : (II)V 
    .code stack 2 locals 3 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/graphics/Sprite blendSrc I 
L5:     aload_0 
L6:     iload_2 
L7:     putfield Field com/fs/graphics/Sprite blendDest I 
L10:    return 
L11:    
    .end code 
.end method 

.method public setNormalBlend : ()V 
    .code stack 3 locals 1 
L0:     aload_0 
L1:     sipush 770 
L4:     sipush 771 
L7:     invokevirtual Method com/fs/graphics/Sprite setBlendFunc (II)V 
L10:    return 
L11:    
    .end code 
.end method 

.method public setAdditiveBlend : ()V 
    .code stack 3 locals 1 
L0:     aload_0 
L1:     sipush 770 
L4:     iconst_1 
L5:     invokevirtual Method com/fs/graphics/Sprite setBlendFunc (II)V 
L8:     return 
L9:     
    .end code 
.end method 

.method public setOffset : (II)V 
    .code stack 2 locals 3 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/graphics/Sprite offsetX I 
L5:     aload_0 
L6:     iload_2 
L7:     putfield Field com/fs/graphics/Sprite offsetY I 
L10:    return 
L11:    
    .end code 
.end method 

.method public setCenter : (FF)V 
    .code stack 2 locals 3 
L0:     aload_0 
L1:     fload_1 
L2:     putfield Field com/fs/graphics/Sprite centerX F 
L5:     aload_0 
L6:     fload_2 
L7:     putfield Field com/fs/graphics/Sprite centerY F 
L10:    return 
L11:    
    .end code 
.end method 

.method public setCenterX : (F)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     fload_1 
L2:     putfield Field com/fs/graphics/Sprite centerX F 
L5:     return 
L6:     
    .end code 
.end method 

.method public setCenterY : (F)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     fload_1 
L2:     putfield Field com/fs/graphics/Sprite centerY F 
L5:     return 
L6:     
    .end code 
.end method 

.method public setSize : (FF)V 
    .code stack 2 locals 3 
L0:     aload_0 
L1:     fload_1 
L2:     putfield Field com/fs/graphics/Sprite width F 
L5:     aload_0 
L6:     fload_2 
L7:     putfield Field com/fs/graphics/Sprite height F 
L10:    return 
L11:    
    .end code 
.end method 

.method public getImageWidth : ()I 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/graphics/Sprite texture Lcom/fs/graphics/Object; 
L4:     invokevirtual Method com/fs/graphics/Object Object ()I 
L7:     ireturn 
L8:     
    .end code 
.end method 

.method public getImageHeight : ()I 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/graphics/Sprite texture Lcom/fs/graphics/Object; 
L4:     invokevirtual Method com/fs/graphics/Object 'Ô00000' ()I 
L7:     ireturn 
L8:     
    .end code 
.end method 

.method public getAngle : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/graphics/Sprite angle F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method public setAngle : (F)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     fload_1 
L2:     putfield Field com/fs/graphics/Sprite angle F 
L5:     return 
L6:     
    .end code 
.end method 

.method public getColor : ()Ljava/awt/Color; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/graphics/Sprite color Ljava/awt/Color; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public setColor : (Ljava/awt/Color;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/fs/graphics/Sprite color Ljava/awt/Color; 
L5:     return 
L6:     
    .end code 
.end method 

.method public setHeight : (F)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     fload_1 
L2:     putfield Field com/fs/graphics/Sprite height F 
L5:     return 
L6:     
    .end code 
.end method 

.method public setWidth : (F)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     fload_1 
L2:     putfield Field com/fs/graphics/Sprite width F 
L5:     return 
L6:     
    .end code 
.end method 

.method public getHeight : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/graphics/Sprite height F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method public getWidth : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/graphics/Sprite width F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method public getTexture : ()Lcom/fs/graphics/Object; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/graphics/Sprite texture Lcom/fs/graphics/Object; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public clone : ()Lcom/fs/graphics/Sprite; 
    .code stack 7 locals 3 
L0:     aconst_null 
L1:     astore_1 
        .catch java/lang/CloneNotSupportedException from L2 to L10 using L13 
L2:     aload_0 
L3:     invokespecial Method java/lang/Object clone ()Ljava/lang/Object; 
L6:     checkcast com/fs/graphics/Sprite 
L9:     astore_1 
L10:    goto L14 

        .stack full 
            locals Object com/fs/graphics/Sprite Object com/fs/graphics/Sprite 
            stack Object java/lang/CloneNotSupportedException 
        .end stack 
L13:    astore_2 

        .stack same 
L14:    aload_1 
L15:    new java/awt/Color 
L18:    dup 
L19:    aload_0 
L20:    getfield Field com/fs/graphics/Sprite color Ljava/awt/Color; 
L23:    invokevirtual Method java/awt/Color getRed ()I 
L26:    aload_0 
L27:    getfield Field com/fs/graphics/Sprite color Ljava/awt/Color; 
L30:    invokevirtual Method java/awt/Color getGreen ()I 
L33:    aload_0 
L34:    getfield Field com/fs/graphics/Sprite color Ljava/awt/Color; 
L37:    invokevirtual Method java/awt/Color getBlue ()I 
L40:    aload_0 
L41:    getfield Field com/fs/graphics/Sprite color Ljava/awt/Color; 
L44:    invokevirtual Method java/awt/Color getAlpha ()I 
L47:    invokespecial Method java/awt/Color <init> (IIII)V 
L50:    putfield Field com/fs/graphics/Sprite color Ljava/awt/Color; 
L53:    aload_1 
L54:    areturn 
L55:    
    .end code 
.end method 

.method public setTexClamp : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/graphics/Sprite texClamp Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public renderAtCenter : (FF)V 
    .code stack 5 locals 3 
L0:     aload_0 
L1:     fload_1 
L2:     aload_0 
L3:     getfield Field com/fs/graphics/Sprite width F 
L6:     fconst_2 
L7:     fdiv 
L8:     fsub 
L9:     fload_2 
L10:    aload_0 
L11:    getfield Field com/fs/graphics/Sprite height F 
L14:    fconst_2 
L15:    fdiv 
L16:    fsub 
L17:    invokevirtual Method com/fs/graphics/Sprite render (FF)V 
L20:    return 
L21:    
    .end code 
.end method 

.method public render : (FF)V 
    .code stack 4 locals 3
L0:     aload_0
L1:     getfield Field com/fs/graphics/Sprite texture Lcom/fs/graphics/Object;
L4:     ifnonnull L8
L7:     return

        .stack same
L8:     fload_1
L9:     fload_2
L10:    aload_0
L11:    getfield Field com/fs/graphics/Sprite texture Lcom/fs/graphics/Object;
L14:    getfield Field com/fs/graphics/Object 'ô00000' I
L17:    aload_0
L18:    invokestatic Method com/genir/graphics/Renderer render (FFILcom/fs/graphics/Sprite;)V
L21:    return
L22:
        .linenumbertable
            L0 33
            L7 34
            L8 37
            L21 38
        .end linenumbertable
        .localvariabletable
            0 is this Lcom/fs/graphics/Sprite; from L0 to L22
            1 is var1 F from L0 to L22
            2 is var2 F from L0 to L22
        .end localvariabletable
    .end code 
.end method 

.method public renderAtCenterNoBind : (FF)V 
    .code stack 5 locals 3 
L0:     aload_0 
L1:     fload_1 
L2:     aload_0 
L3:     getfield Field com/fs/graphics/Sprite width F 
L6:     fconst_2 
L7:     fdiv 
L8:     fsub 
L9:     fload_2 
L10:    aload_0 
L11:    getfield Field com/fs/graphics/Sprite height F 
L14:    fconst_2 
L15:    fdiv 
L16:    fsub 
L17:    invokevirtual Method com/fs/graphics/Sprite renderNoBind (FF)V 
L20:    return 
L21:    
    .end code 
.end method 

.method public renderNoBind : (FF)V
    .code stack 4 locals 3
L0:     aload_0
L1:     getfield Field com/fs/graphics/Sprite texture Lcom/fs/graphics/Object;
L4:     ifnonnull L8
L7:     return

        .stack same
L8:     fload_1
L9:     fload_2
L10:    aload_0
L11:    getfield Field com/fs/graphics/Sprite texture Lcom/fs/graphics/Object;
L14:    getfield Field com/fs/graphics/Object 'ô00000' I
L17:    aload_0
L18:    invokestatic Method com/genir/graphics/Renderer render (FFILcom/fs/graphics/Sprite;)V
L21:    return
L22:
        .linenumbertable
            L0 33
            L7 34
            L8 37
            L21 38
        .end linenumbertable
        .localvariabletable
            0 is this Lcom/fs/graphics/Sprite; from L0 to L22
            1 is var1 F from L0 to L22
            2 is var2 F from L0 to L22
        .end localvariabletable
    .end code 
.end method 

.method public renderWithCorners : (FFFFFFFF)V 
    .code stack 5 locals 14 
L0:     aload_0 
L1:     getfield Field com/fs/graphics/Sprite texture Lcom/fs/graphics/Object; 
L4:     ifnull L17 
L7:     aload_0 
L8:     getfield Field com/fs/graphics/Sprite texture Lcom/fs/graphics/Object; 
L11:    invokevirtual Method com/fs/graphics/Object 'Ø00000' ()V 
L14:    goto L18 

        .stack same 
L17:    return 

        .stack same 
L18:    invokestatic Method com/genir/graphics/GLBridge glPushMatrix ()V 
L21:    aload_0 
L22:    getfield Field com/fs/graphics/Sprite color Ljava/awt/Color; 
L25:    invokevirtual Method java/awt/Color getRed ()I 
L28:    i2b 
L29:    aload_0 
L30:    getfield Field com/fs/graphics/Sprite color Ljava/awt/Color; 
L33:    invokevirtual Method java/awt/Color getGreen ()I 
L36:    i2b 
L37:    aload_0 
L38:    getfield Field com/fs/graphics/Sprite color Ljava/awt/Color; 
L41:    invokevirtual Method java/awt/Color getBlue ()I 
L44:    i2b 
L45:    aload_0 
L46:    getfield Field com/fs/graphics/Sprite color Ljava/awt/Color; 
L49:    invokevirtual Method java/awt/Color getAlpha ()I 
L52:    i2f 
L53:    aload_0 
L54:    getfield Field com/fs/graphics/Sprite alphaMult F 
L57:    fmul 
L58:    f2i 
L59:    i2b 
L60:    invokestatic Method com/genir/graphics/GLBridge glColor4ub (BBBB)V 
L63:    aload_0 
L64:    getfield Field com/fs/graphics/Sprite offsetX I 
L67:    i2f 
L68:    aload_0 
L69:    getfield Field com/fs/graphics/Sprite offsetY I 
L72:    i2f 
L73:    fconst_0 
L74:    invokestatic Method com/genir/graphics/GLBridge glTranslatef (FFF)V 
L77:    sipush 3553 
L80:    invokestatic Method com/genir/graphics/GLBridge glEnable (I)V 
L83:    sipush 3042 
L86:    invokestatic Method com/genir/graphics/GLBridge glEnable (I)V 
L89:    aload_0 
L90:    getfield Field com/fs/graphics/Sprite blendSrc I 
L93:    aload_0 
L94:    getfield Field com/fs/graphics/Sprite blendDest I 
L97:    invokestatic Method com/genir/graphics/GLBridge glBlendFunc (II)V 
L100:   ldc +0.0010000000474974513f 
L102:   fstore 9 
L104:   fconst_0 
L105:   fstore 9 
L107:   bipush 6 
L109:   invokestatic Method com/genir/graphics/GLBridge glBegin (I)V 
L112:   fload_1 
L113:   fload_3 
L114:   fadd 
L115:   fload 5 
L117:   fadd 
L118:   fload 7 
L120:   fadd 
L121:   ldc +4.0f 
L123:   fdiv 
L124:   fstore 10 
L126:   fload_2 
L127:   fload 4 
L129:   fadd 
L130:   fload 6 
L132:   fadd 
L133:   fload 8 
L135:   fadd 
L136:   ldc +4.0f 
L138:   fdiv 
L139:   fstore 11 
L141:   aload_0 
L142:   getfield Field com/fs/graphics/Sprite texX F 
L145:   aload_0 
L146:   getfield Field com/fs/graphics/Sprite texWidth F 
L149:   fconst_2 
L150:   fdiv 
L151:   fadd 
L152:   fstore 12 
L154:   aload_0 
L155:   getfield Field com/fs/graphics/Sprite texY F 
L158:   aload_0 
L159:   getfield Field com/fs/graphics/Sprite texHeight F 
L162:   fconst_2 
L163:   fdiv 
L164:   fadd 
L165:   fstore 13 
L167:   fload 12 
L169:   fload 13 
L171:   invokestatic Method com/genir/graphics/GLBridge glTexCoord2f (FF)V 
L174:   fload 10 
L176:   fload 11 
L178:   invokestatic Method com/genir/graphics/GLBridge glVertex2f (FF)V 
L181:   aload_0 
L182:   getfield Field com/fs/graphics/Sprite texX F 
L185:   fload 9 
L187:   fadd 
L188:   aload_0 
L189:   getfield Field com/fs/graphics/Sprite texY F 
L192:   fload 9 
L194:   fadd 
L195:   invokestatic Method com/genir/graphics/GLBridge glTexCoord2f (FF)V 
L198:   fload_1 
L199:   fload_2 
L200:   invokestatic Method com/genir/graphics/GLBridge glVertex2f (FF)V 
L203:   aload_0 
L204:   getfield Field com/fs/graphics/Sprite texX F 
L207:   fload 9 
L209:   fadd 
L210:   aload_0 
L211:   getfield Field com/fs/graphics/Sprite texY F 
L214:   aload_0 
L215:   getfield Field com/fs/graphics/Sprite texHeight F 
L218:   fadd 
L219:   fload 9 
L221:   fsub 
L222:   invokestatic Method com/genir/graphics/GLBridge glTexCoord2f (FF)V 
L225:   fload_3 
L226:   fload 4 
L228:   invokestatic Method com/genir/graphics/GLBridge glVertex2f (FF)V 
L231:   aload_0 
L232:   getfield Field com/fs/graphics/Sprite texX F 
L235:   aload_0 
L236:   getfield Field com/fs/graphics/Sprite texWidth F 
L239:   fadd 
L240:   fload 9 
L242:   fsub 
L243:   aload_0 
L244:   getfield Field com/fs/graphics/Sprite texY F 
L247:   aload_0 
L248:   getfield Field com/fs/graphics/Sprite texHeight F 
L251:   fadd 
L252:   fload 9 
L254:   fsub 
L255:   invokestatic Method com/genir/graphics/GLBridge glTexCoord2f (FF)V 
L258:   fload 5 
L260:   fload 6 
L262:   invokestatic Method com/genir/graphics/GLBridge glVertex2f (FF)V 
L265:   aload_0 
L266:   getfield Field com/fs/graphics/Sprite texX F 
L269:   aload_0 
L270:   getfield Field com/fs/graphics/Sprite texWidth F 
L273:   fadd 
L274:   fload 9 
L276:   fsub 
L277:   aload_0 
L278:   getfield Field com/fs/graphics/Sprite texY F 
L281:   fload 9 
L283:   fadd 
L284:   invokestatic Method com/genir/graphics/GLBridge glTexCoord2f (FF)V 
L287:   fload 7 
L289:   fload 8 
L291:   invokestatic Method com/genir/graphics/GLBridge glVertex2f (FF)V 
L294:   aload_0 
L295:   getfield Field com/fs/graphics/Sprite texX F 
L298:   fload 9 
L300:   fadd 
L301:   aload_0 
L302:   getfield Field com/fs/graphics/Sprite texY F 
L305:   fload 9 
L307:   fadd 
L308:   invokestatic Method com/genir/graphics/GLBridge glTexCoord2f (FF)V 
L311:   fload_1 
L312:   fload_2 
L313:   invokestatic Method com/genir/graphics/GLBridge glVertex2f (FF)V 
L316:   invokestatic Method com/genir/graphics/GLBridge glEnd ()V 
L319:   sipush 3042 
L322:   invokestatic Method com/genir/graphics/GLBridge glDisable (I)V 
L325:   invokestatic Method com/genir/graphics/GLBridge glPopMatrix ()V 
L328:   return 
L329:   
    .end code 
.end method 

.method public setTexX : (F)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     fload_1 
L2:     putfield Field com/fs/graphics/Sprite texX F 
L5:     return 
L6:     
    .end code 
.end method 

.method public setTexY : (F)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     fload_1 
L2:     putfield Field com/fs/graphics/Sprite texY F 
L5:     return 
L6:     
    .end code 
.end method 

.method public getTexX : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/graphics/Sprite texX F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method public getTexY : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/graphics/Sprite texY F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method public getTexWidth : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/graphics/Sprite texWidth F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method public getTexHeight : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/graphics/Sprite texHeight F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method public setTexWidth : (F)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     fload_1 
L2:     putfield Field com/fs/graphics/Sprite texWidth F 
L5:     return 
L6:     
    .end code 
.end method 

.method public setTexHeight : (F)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     fload_1 
L2:     putfield Field com/fs/graphics/Sprite texHeight F 
L5:     return 
L6:     
    .end code 
.end method 

.method public renderNoBlendOrRotate : (FF)V 
    .code stack 4 locals 3 
L0:     aload_0 
L1:     fload_1 
L2:     fload_2 
L3:     iconst_1 
L4:     invokevirtual Method com/fs/graphics/Sprite renderNoBlendOrRotate (FFZ)V 
L7:     return 
L8:     
    .end code 
.end method 

.method public renderNoBlendOrRotate : (FFZ)V 
    .code stack 5 locals 5 
L0:     aload_0 
L1:     getfield Field com/fs/graphics/Sprite texture Lcom/fs/graphics/Object; 
L4:     ifnull L17 
L7:     aload_0 
L8:     getfield Field com/fs/graphics/Sprite texture Lcom/fs/graphics/Object; 
L11:    invokevirtual Method com/fs/graphics/Object 'Ø00000' ()V 
L14:    goto L18 

        .stack same 
L17:    return 

        .stack same 
L18:    invokestatic Method com/genir/graphics/GLBridge glPushMatrix ()V 
L21:    aload_0 
L22:    getfield Field com/fs/graphics/Sprite color Ljava/awt/Color; 
L25:    invokevirtual Method java/awt/Color getRed ()I 
L28:    i2b 
L29:    aload_0 
L30:    getfield Field com/fs/graphics/Sprite color Ljava/awt/Color; 
L33:    invokevirtual Method java/awt/Color getGreen ()I 
L36:    i2b 
L37:    aload_0 
L38:    getfield Field com/fs/graphics/Sprite color Ljava/awt/Color; 
L41:    invokevirtual Method java/awt/Color getBlue ()I 
L44:    i2b 
L45:    aload_0 
L46:    getfield Field com/fs/graphics/Sprite color Ljava/awt/Color; 
L49:    invokevirtual Method java/awt/Color getAlpha ()I 
L52:    i2f 
L53:    aload_0 
L54:    getfield Field com/fs/graphics/Sprite alphaMult F 
L57:    fmul 
L58:    f2i 
L59:    i2b 
L60:    invokestatic Method com/genir/graphics/GLBridge glColor4ub (BBBB)V 
L63:    fload_1 
L64:    aload_0 
L65:    getfield Field com/fs/graphics/Sprite offsetX I 
L68:    i2f 
L69:    fadd 
L70:    fload_2 
L71:    aload_0 
L72:    getfield Field com/fs/graphics/Sprite offsetY I 
L75:    i2f 
L76:    fadd 
L77:    fconst_0 
L78:    invokestatic Method com/genir/graphics/GLBridge glTranslatef (FFF)V 
L81:    sipush 3553 
L84:    invokestatic Method com/genir/graphics/GLBridge glEnable (I)V 
L87:    iload_3 
L88:    ifeq L97 
L91:    sipush 3042 
L94:    invokestatic Method com/genir/graphics/GLBridge glDisable (I)V 

        .stack same_extended 
L97:    ldc +0.0010000000474974513f 
L99:    fstore 4 
L101:   bipush 7 
L103:   invokestatic Method com/genir/graphics/GLBridge glBegin (I)V 
L106:   fconst_0 
L107:   fload 4 
L109:   fadd 
L110:   fconst_0 
L111:   fload 4 
L113:   fadd 
L114:   invokestatic Method com/genir/graphics/GLBridge glTexCoord2f (FF)V 
L117:   fconst_0 
L118:   fconst_0 
L119:   invokestatic Method com/genir/graphics/GLBridge glVertex2f (FF)V 
L122:   fconst_0 
L123:   fload 4 
L125:   fadd 
L126:   aload_0 
L127:   getfield Field com/fs/graphics/Sprite texHeight F 
L130:   fload 4 
L132:   fsub 
L133:   invokestatic Method com/genir/graphics/GLBridge glTexCoord2f (FF)V 
L136:   fconst_0 
L137:   aload_0 
L138:   getfield Field com/fs/graphics/Sprite height F 
L141:   invokestatic Method com/genir/graphics/GLBridge glVertex2f (FF)V 
L144:   aload_0 
L145:   getfield Field com/fs/graphics/Sprite texWidth F 
L148:   fload 4 
L150:   fsub 
L151:   aload_0 
L152:   getfield Field com/fs/graphics/Sprite texHeight F 
L155:   fload 4 
L157:   fsub 
L158:   invokestatic Method com/genir/graphics/GLBridge glTexCoord2f (FF)V 
L161:   aload_0 
L162:   getfield Field com/fs/graphics/Sprite width F 
L165:   aload_0 
L166:   getfield Field com/fs/graphics/Sprite height F 
L169:   invokestatic Method com/genir/graphics/GLBridge glVertex2f (FF)V 
L172:   aload_0 
L173:   getfield Field com/fs/graphics/Sprite texWidth F 
L176:   fload 4 
L178:   fsub 
L179:   fconst_0 
L180:   fload 4 
L182:   fadd 
L183:   invokestatic Method com/genir/graphics/GLBridge glTexCoord2f (FF)V 
L186:   aload_0 
L187:   getfield Field com/fs/graphics/Sprite width F 
L190:   fconst_0 
L191:   invokestatic Method com/genir/graphics/GLBridge glVertex2f (FF)V 
L194:   invokestatic Method com/genir/graphics/GLBridge glEnd ()V 
L197:   invokestatic Method com/genir/graphics/GLBridge glPopMatrix ()V 
L200:   return 
L201:   
    .end code 
.end method 

.method public renderAtCenterWithCornerColors : (FF)V 
    .code stack 4 locals 4 
L0:     fload_1 
L1:     aload_0 
L2:     getfield Field com/fs/graphics/Sprite width F 
L5:     fconst_2 
L6:     fdiv 
L7:     fsub 
L8:     fstore_1 
L9:     fload_2 
L10:    aload_0 
L11:    getfield Field com/fs/graphics/Sprite height F 
L14:    fconst_2 
L15:    fdiv 
L16:    fsub 
L17:    fstore_2 
L18:    aload_0 
L19:    getfield Field com/fs/graphics/Sprite texture Lcom/fs/graphics/Object; 
L22:    ifnull L35 
L25:    aload_0 
L26:    getfield Field com/fs/graphics/Sprite texture Lcom/fs/graphics/Object; 
L29:    invokevirtual Method com/fs/graphics/Object 'Ø00000' ()V 
L32:    goto L36 

        .stack same 
L35:    return 

        .stack same 
L36:    invokestatic Method com/genir/graphics/GLBridge glPushMatrix ()V 
L39:    fload_1 
L40:    aload_0 
L41:    getfield Field com/fs/graphics/Sprite offsetX I 
L44:    i2f 
L45:    fadd 
L46:    fload_2 
L47:    aload_0 
L48:    getfield Field com/fs/graphics/Sprite offsetY I 
L51:    i2f 
L52:    fadd 
L53:    fconst_0 
L54:    invokestatic Method com/genir/graphics/GLBridge glTranslatef (FFF)V 
L57:    aload_0 
L58:    getfield Field com/fs/graphics/Sprite centerX F 
L61:    ldc -1.0f 
L63:    fcmpl 
L64:    ifeq L120 
L67:    aload_0 
L68:    getfield Field com/fs/graphics/Sprite centerY F 
L71:    ldc -1.0f 
L73:    fcmpl 
L74:    ifeq L120 
L77:    aload_0 
L78:    getfield Field com/fs/graphics/Sprite width F 
L81:    fconst_2 
L82:    fdiv 
L83:    aload_0 
L84:    getfield Field com/fs/graphics/Sprite height F 
L87:    fconst_2 
L88:    fdiv 
L89:    fconst_0 
L90:    invokestatic Method com/genir/graphics/GLBridge glTranslatef (FFF)V 
L93:    aload_0 
L94:    getfield Field com/fs/graphics/Sprite angle F 
L97:    fconst_0 
L98:    fconst_0 
L99:    fconst_1 
L100:   invokestatic Method com/genir/graphics/GLBridge glRotatef (FFFF)V 
L103:   aload_0 
L104:   getfield Field com/fs/graphics/Sprite centerX F 
L107:   fneg 
L108:   aload_0 
L109:   getfield Field com/fs/graphics/Sprite centerY F 
L112:   fneg 
L113:   fconst_0 
L114:   invokestatic Method com/genir/graphics/GLBridge glTranslatef (FFF)V 
L117:   goto L164 

        .stack same_extended 
L120:   aload_0 
L121:   getfield Field com/fs/graphics/Sprite width F 
L124:   fconst_2 
L125:   fdiv 
L126:   aload_0 
L127:   getfield Field com/fs/graphics/Sprite height F 
L130:   fconst_2 
L131:   fdiv 
L132:   fconst_0 
L133:   invokestatic Method com/genir/graphics/GLBridge glTranslatef (FFF)V 
L136:   aload_0 
L137:   getfield Field com/fs/graphics/Sprite angle F 
L140:   fconst_0 
L141:   fconst_0 
L142:   fconst_1 
L143:   invokestatic Method com/genir/graphics/GLBridge glRotatef (FFFF)V 
L146:   aload_0 
L147:   getfield Field com/fs/graphics/Sprite width F 
L150:   fneg 
L151:   fconst_2 
L152:   fdiv 
L153:   aload_0 
L154:   getfield Field com/fs/graphics/Sprite height F 
L157:   fneg 
L158:   fconst_2 
L159:   fdiv 
L160:   fconst_0 
L161:   invokestatic Method com/genir/graphics/GLBridge glTranslatef (FFF)V 

        .stack same 
L164:   sipush 3553 
L167:   invokestatic Method com/genir/graphics/GLBridge glEnable (I)V 
L170:   sipush 3042 
L173:   invokestatic Method com/genir/graphics/GLBridge glEnable (I)V 
L176:   aload_0 
L177:   getfield Field com/fs/graphics/Sprite blendSrc I 
L180:   aload_0 
L181:   getfield Field com/fs/graphics/Sprite blendDest I 
L184:   invokestatic Method com/genir/graphics/GLBridge glBlendFunc (II)V 
L187:   ldc +0.0010000000474974513f 
L189:   fstore_3 
L190:   bipush 7 
L192:   invokestatic Method com/genir/graphics/GLBridge glBegin (I)V 
L195:   fconst_0 
L196:   fload_3 
L197:   fadd 
L198:   fconst_0 
L199:   fload_3 
L200:   fadd 
L201:   invokestatic Method com/genir/graphics/GLBridge glTexCoord2f (FF)V 
L204:   aload_0 
L205:   getfield Field com/fs/graphics/Sprite colorLL Ljava/awt/Color; 
L208:   invokestatic Method com/fs/graphics/util/B 'Ò00000' (Ljava/awt/Color;)V 
L211:   fconst_0 
L212:   fconst_0 
L213:   invokestatic Method com/genir/graphics/GLBridge glVertex2f (FF)V 
L216:   fconst_0 
L217:   fload_3 
L218:   fadd 
L219:   aload_0 
L220:   getfield Field com/fs/graphics/Sprite texHeight F 
L223:   fload_3 
L224:   fsub 
L225:   invokestatic Method com/genir/graphics/GLBridge glTexCoord2f (FF)V 
L228:   aload_0 
L229:   getfield Field com/fs/graphics/Sprite colorUL Ljava/awt/Color; 
L232:   invokestatic Method com/fs/graphics/util/B 'Ò00000' (Ljava/awt/Color;)V 
L235:   fconst_0 
L236:   aload_0 
L237:   getfield Field com/fs/graphics/Sprite height F 
L240:   invokestatic Method com/genir/graphics/GLBridge glVertex2f (FF)V 
L243:   aload_0 
L244:   getfield Field com/fs/graphics/Sprite texWidth F 
L247:   fload_3 
L248:   fsub 
L249:   aload_0 
L250:   getfield Field com/fs/graphics/Sprite texHeight F 
L253:   fload_3 
L254:   fsub 
L255:   invokestatic Method com/genir/graphics/GLBridge glTexCoord2f (FF)V 
L258:   aload_0 
L259:   getfield Field com/fs/graphics/Sprite colorUR Ljava/awt/Color; 
L262:   invokestatic Method com/fs/graphics/util/B 'Ò00000' (Ljava/awt/Color;)V 
L265:   aload_0 
L266:   getfield Field com/fs/graphics/Sprite width F 
L269:   aload_0 
L270:   getfield Field com/fs/graphics/Sprite height F 
L273:   invokestatic Method com/genir/graphics/GLBridge glVertex2f (FF)V 
L276:   aload_0 
L277:   getfield Field com/fs/graphics/Sprite texWidth F 
L280:   fload_3 
L281:   fsub 
L282:   fconst_0 
L283:   fload_3 
L284:   fadd 
L285:   invokestatic Method com/genir/graphics/GLBridge glTexCoord2f (FF)V 
L288:   aload_0 
L289:   getfield Field com/fs/graphics/Sprite colorLR Ljava/awt/Color; 
L292:   invokestatic Method com/fs/graphics/util/B 'Ò00000' (Ljava/awt/Color;)V 
L295:   aload_0 
L296:   getfield Field com/fs/graphics/Sprite width F 
L299:   fconst_0 
L300:   invokestatic Method com/genir/graphics/GLBridge glVertex2f (FF)V 
L303:   invokestatic Method com/genir/graphics/GLBridge glEnd ()V 
L306:   sipush 3042 
L309:   invokestatic Method com/genir/graphics/GLBridge glDisable (I)V 
L312:   invokestatic Method com/genir/graphics/GLBridge glPopMatrix ()V 
L315:   return 
L316:   
    .end code 
.end method 

.method public renderRegionAtCenter : (FFFFFFZ)V 
    .code stack 8 locals 8 
L0:     aload_0 
L1:     fload_1 
L2:     aload_0 
L3:     getfield Field com/fs/graphics/Sprite width F 
L6:     fconst_2 
L7:     fdiv 
L8:     fsub 
L9:     fload_2 
L10:    aload_0 
L11:    getfield Field com/fs/graphics/Sprite height F 
L14:    fconst_2 
L15:    fdiv 
L16:    fsub 
L17:    fload_3 
L18:    fload 4 
L20:    fload 5 
L22:    fload 6 
L24:    iload 7 
L26:    invokevirtual Method com/fs/graphics/Sprite renderRegion (FFFFFFZ)V 
L29:    return 
L30:    
    .end code 
.end method 

.method public renderRegionAtCenter : (FFFFFF)V 
    .code stack 7 locals 7 
L0:     aload_0 
L1:     fload_1 
L2:     aload_0 
L3:     getfield Field com/fs/graphics/Sprite width F 
L6:     fconst_2 
L7:     fdiv 
L8:     fsub 
L9:     fload_2 
L10:    aload_0 
L11:    getfield Field com/fs/graphics/Sprite height F 
L14:    fconst_2 
L15:    fdiv 
L16:    fsub 
L17:    fload_3 
L18:    fload 4 
L20:    fload 5 
L22:    fload 6 
L24:    invokevirtual Method com/fs/graphics/Sprite renderRegion (FFFFFF)V 
L27:    return 
L28:    
    .end code 
.end method 

.method public renderRegion : (FFFFFF)V 
    .code stack 8 locals 7 
L0:     aload_0 
L1:     fload_1 
L2:     fload_2 
L3:     fload_3 
L4:     fload 4 
L6:     fload 5 
L8:     fload 6 
L10:    iconst_1 
L11:    invokevirtual Method com/fs/graphics/Sprite renderRegion (FFFFFFZ)V 
L14:    return 
L15:    
    .end code 
.end method 

.method public renderRegion : (FFFFFFZ)V 
    .code stack 5 locals 9 
L0:     aload_0 
L1:     getfield Field com/fs/graphics/Sprite texture Lcom/fs/graphics/Object; 
L4:     ifnull L22 
L7:     iload 7 
L9:     ifeq L23 
L12:    aload_0 
L13:    getfield Field com/fs/graphics/Sprite texture Lcom/fs/graphics/Object; 
L16:    invokevirtual Method com/fs/graphics/Object 'Ø00000' ()V 
L19:    goto L23 

        .stack same 
L22:    return 

        .stack same 
L23:    invokestatic Method com/genir/graphics/GLBridge glPushMatrix ()V 
L26:    aload_0 
L27:    getfield Field com/fs/graphics/Sprite color Ljava/awt/Color; 
L30:    invokevirtual Method java/awt/Color getRed ()I 
L33:    i2b 
L34:    aload_0 
L35:    getfield Field com/fs/graphics/Sprite color Ljava/awt/Color; 
L38:    invokevirtual Method java/awt/Color getGreen ()I 
L41:    i2b 
L42:    aload_0 
L43:    getfield Field com/fs/graphics/Sprite color Ljava/awt/Color; 
L46:    invokevirtual Method java/awt/Color getBlue ()I 
L49:    i2b 
L50:    aload_0 
L51:    getfield Field com/fs/graphics/Sprite color Ljava/awt/Color; 
L54:    invokevirtual Method java/awt/Color getAlpha ()I 
L57:    i2f 
L58:    aload_0 
L59:    getfield Field com/fs/graphics/Sprite alphaMult F 
L62:    fmul 
L63:    f2i 
L64:    i2b 
L65:    invokestatic Method com/genir/graphics/GLBridge glColor4ub (BBBB)V 
L68:    fload_1 
L69:    aload_0 
L70:    getfield Field com/fs/graphics/Sprite offsetX I 
L73:    i2f 
L74:    fadd 
L75:    fload_2 
L76:    aload_0 
L77:    getfield Field com/fs/graphics/Sprite offsetY I 
L80:    i2f 
L81:    fadd 
L82:    fconst_0 
L83:    invokestatic Method com/genir/graphics/GLBridge glTranslatef (FFF)V 
L86:    aload_0 
L87:    getfield Field com/fs/graphics/Sprite centerX F 
L90:    ldc -1.0f 
L92:    fcmpl 
L93:    ifeq L149 
L96:    aload_0 
L97:    getfield Field com/fs/graphics/Sprite centerY F 
L100:   ldc -1.0f 
L102:   fcmpl 
L103:   ifeq L149 
L106:   aload_0 
L107:   getfield Field com/fs/graphics/Sprite width F 
L110:   fconst_2 
L111:   fdiv 
L112:   aload_0 
L113:   getfield Field com/fs/graphics/Sprite height F 
L116:   fconst_2 
L117:   fdiv 
L118:   fconst_0 
L119:   invokestatic Method com/genir/graphics/GLBridge glTranslatef (FFF)V 
L122:   aload_0 
L123:   getfield Field com/fs/graphics/Sprite angle F 
L126:   fconst_0 
L127:   fconst_0 
L128:   fconst_1 
L129:   invokestatic Method com/genir/graphics/GLBridge glRotatef (FFFF)V 
L132:   aload_0 
L133:   getfield Field com/fs/graphics/Sprite centerX F 
L136:   fneg 
L137:   aload_0 
L138:   getfield Field com/fs/graphics/Sprite centerY F 
L141:   fneg 
L142:   fconst_0 
L143:   invokestatic Method com/genir/graphics/GLBridge glTranslatef (FFF)V 
L146:   goto L193 

        .stack same_extended 
L149:   aload_0 
L150:   getfield Field com/fs/graphics/Sprite width F 
L153:   fconst_2 
L154:   fdiv 
L155:   aload_0 
L156:   getfield Field com/fs/graphics/Sprite height F 
L159:   fconst_2 
L160:   fdiv 
L161:   fconst_0 
L162:   invokestatic Method com/genir/graphics/GLBridge glTranslatef (FFF)V 
L165:   aload_0 
L166:   getfield Field com/fs/graphics/Sprite angle F 
L169:   fconst_0 
L170:   fconst_0 
L171:   fconst_1 
L172:   invokestatic Method com/genir/graphics/GLBridge glRotatef (FFFF)V 
L175:   aload_0 
L176:   getfield Field com/fs/graphics/Sprite width F 
L179:   fneg 
L180:   fconst_2 
L181:   fdiv 
L182:   aload_0 
L183:   getfield Field com/fs/graphics/Sprite height F 
L186:   fneg 
L187:   fconst_2 
L188:   fdiv 
L189:   fconst_0 
L190:   invokestatic Method com/genir/graphics/GLBridge glTranslatef (FFF)V 

        .stack same 
L193:   sipush 3553 
L196:   invokestatic Method com/genir/graphics/GLBridge glEnable (I)V 
L199:   sipush 3042 
L202:   invokestatic Method com/genir/graphics/GLBridge glEnable (I)V 
L205:   aload_0 
L206:   getfield Field com/fs/graphics/Sprite blendSrc I 
L209:   aload_0 
L210:   getfield Field com/fs/graphics/Sprite blendDest I 
L213:   invokestatic Method com/genir/graphics/GLBridge glBlendFunc (II)V 
L216:   ldc +0.0010000000474974513f 
L218:   fstore 8 
L220:   bipush 7 
L222:   invokestatic Method com/genir/graphics/GLBridge glBegin (I)V 
L225:   fload_3 
L226:   aload_0 
L227:   getfield Field com/fs/graphics/Sprite texWidth F 
L230:   fmul 
L231:   fload 8 
L233:   fadd 
L234:   fload 4 
L236:   aload_0 
L237:   getfield Field com/fs/graphics/Sprite texHeight F 
L240:   fmul 
L241:   fload 8 
L243:   fadd 
L244:   invokestatic Method com/genir/graphics/GLBridge glTexCoord2f (FF)V 
L247:   fload_3 
L248:   aload_0 
L249:   getfield Field com/fs/graphics/Sprite width F 
L252:   fmul 
L253:   fload 4 
L255:   aload_0 
L256:   getfield Field com/fs/graphics/Sprite height F 
L259:   fmul 
L260:   invokestatic Method com/genir/graphics/GLBridge glVertex2f (FF)V 
L263:   fload_3 
L264:   aload_0 
L265:   getfield Field com/fs/graphics/Sprite texWidth F 
L268:   fmul 
L269:   fload 8 
L271:   fadd 
L272:   fload 4 
L274:   fload 6 
L276:   fadd 
L277:   aload_0 
L278:   getfield Field com/fs/graphics/Sprite texHeight F 
L281:   fmul 
L282:   fload 8 
L284:   fsub 
L285:   invokestatic Method com/genir/graphics/GLBridge glTexCoord2f (FF)V 
L288:   fload_3 
L289:   aload_0 
L290:   getfield Field com/fs/graphics/Sprite width F 
L293:   fmul 
L294:   fload 4 
L296:   fload 6 
L298:   fadd 
L299:   aload_0 
L300:   getfield Field com/fs/graphics/Sprite height F 
L303:   fmul 
L304:   invokestatic Method com/genir/graphics/GLBridge glVertex2f (FF)V 
L307:   fload_3 
L308:   fload 5 
L310:   fadd 
L311:   aload_0 
L312:   getfield Field com/fs/graphics/Sprite texWidth F 
L315:   fmul 
L316:   fload 8 
L318:   fsub 
L319:   fload 4 
L321:   fload 6 
L323:   fadd 
L324:   aload_0 
L325:   getfield Field com/fs/graphics/Sprite texHeight F 
L328:   fmul 
L329:   fload 8 
L331:   fsub 
L332:   invokestatic Method com/genir/graphics/GLBridge glTexCoord2f (FF)V 
L335:   fload_3 
L336:   fload 5 
L338:   fadd 
L339:   aload_0 
L340:   getfield Field com/fs/graphics/Sprite width F 
L343:   fmul 
L344:   fload 4 
L346:   fload 6 
L348:   fadd 
L349:   aload_0 
L350:   getfield Field com/fs/graphics/Sprite height F 
L353:   fmul 
L354:   invokestatic Method com/genir/graphics/GLBridge glVertex2f (FF)V 
L357:   fload_3 
L358:   fload 5 
L360:   fadd 
L361:   aload_0 
L362:   getfield Field com/fs/graphics/Sprite texWidth F 
L365:   fmul 
L366:   fload 8 
L368:   fsub 
L369:   fload 4 
L371:   aload_0 
L372:   getfield Field com/fs/graphics/Sprite texHeight F 
L375:   fmul 
L376:   fload 8 
L378:   fadd 
L379:   invokestatic Method com/genir/graphics/GLBridge glTexCoord2f (FF)V 
L382:   fload_3 
L383:   fload 5 
L385:   fadd 
L386:   aload_0 
L387:   getfield Field com/fs/graphics/Sprite width F 
L390:   fmul 
L391:   fload 4 
L393:   aload_0 
L394:   getfield Field com/fs/graphics/Sprite height F 
L397:   fmul 
L398:   invokestatic Method com/genir/graphics/GLBridge glVertex2f (FF)V 
L401:   invokestatic Method com/genir/graphics/GLBridge glEnd ()V 
L404:   sipush 3042 
L407:   invokestatic Method com/genir/graphics/GLBridge glDisable (I)V 
L410:   invokestatic Method com/genir/graphics/GLBridge glPopMatrix ()V 
L413:   return 
L414:   
    .end code 
.end method 

.method public getColorLL : ()Ljava/awt/Color; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/graphics/Sprite colorLL Ljava/awt/Color; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public setColorLL : (Ljava/awt/Color;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/fs/graphics/Sprite colorLL Ljava/awt/Color; 
L5:     return 
L6:     
    .end code 
.end method 

.method public getColorLR : ()Ljava/awt/Color; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/graphics/Sprite colorLR Ljava/awt/Color; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public setColorLR : (Ljava/awt/Color;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/fs/graphics/Sprite colorLR Ljava/awt/Color; 
L5:     return 
L6:     
    .end code 
.end method 

.method public getColorUL : ()Ljava/awt/Color; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/graphics/Sprite colorUL Ljava/awt/Color; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public setColorUL : (Ljava/awt/Color;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/fs/graphics/Sprite colorUL Ljava/awt/Color; 
L5:     return 
L6:     
    .end code 
.end method 

.method public getColorUR : ()Ljava/awt/Color; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/graphics/Sprite colorUR Ljava/awt/Color; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public setColorUR : (Ljava/awt/Color;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/fs/graphics/Sprite colorUR Ljava/awt/Color; 
L5:     return 
L6:     
    .end code 
.end method 

.method public setTexture : (Lcom/fs/graphics/Object;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/fs/graphics/Sprite texture Lcom/fs/graphics/Object; 
L5:     aload_1 
L6:     ifnull L54 
L9:     aload_0 
L10:    aload_1 
L11:    invokevirtual Method com/fs/graphics/Object Object ()I 
L14:    i2f 
L15:    putfield Field com/fs/graphics/Sprite width F 
L18:    aload_0 
L19:    aload_1 
L20:    invokevirtual Method com/fs/graphics/Object 'Ô00000' ()I 
L23:    i2f 
L24:    putfield Field com/fs/graphics/Sprite height F 
L27:    aload_0 
L28:    aload_1 
L29:    invokevirtual Method com/fs/graphics/Object 'ÒO0000' ()F 
L32:    putfield Field com/fs/graphics/Sprite texWidth F 
L35:    aload_0 
L36:    aload_1 
L37:    invokevirtual Method com/fs/graphics/Object o00000 ()F 
L40:    putfield Field com/fs/graphics/Sprite texHeight F 
L43:    aload_0 
L44:    aload_1 
L45:    invokevirtual Method com/fs/graphics/Object oO0000 ()Ljava/lang/String; 
L48:    putfield Field com/fs/graphics/Sprite textureId Ljava/lang/String; 
L51:    goto L59 

        .stack same 
L54:    aload_0 
L55:    aconst_null 
L56:    putfield Field com/fs/graphics/Sprite textureId Ljava/lang/String; 

        .stack same 
L59:    return 
L60:    
    .end code 
.end method 

.method readResolve : ()Ljava/lang/Object; 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/graphics/Sprite textureId Ljava/lang/String; 
L4:     ifnull L18 
L7:     aload_0 
L8:     aload_0 
L9:     getfield Field com/fs/graphics/Sprite textureId Ljava/lang/String; 
L12:    invokestatic Method com/fs/graphics/oOoO 'Ò00000' (Ljava/lang/String;)Lcom/fs/graphics/Object; 
L15:    putfield Field com/fs/graphics/Sprite texture Lcom/fs/graphics/Object; 

        .stack same 
L18:    aload_0 
L19:    areturn 
L20:    
    .end code 
.end method 

.method public getBlendDest : ()I 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/graphics/Sprite blendDest I 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public getBlendSrc : ()I 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/graphics/Sprite blendSrc I 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public getCenterX : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/graphics/Sprite centerX F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method public getCenterY : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/graphics/Sprite centerY F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method public getOffsetX : ()I 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/graphics/Sprite offsetX I 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public getOffsetY : ()I 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/graphics/Sprite offsetY I 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public getAlphaMult : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/graphics/Sprite alphaMult F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method public setAlphaMult : (F)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     fload_1 
L2:     putfield Field com/fs/graphics/Sprite alphaMult F 
L5:     return 
L6:     
    .end code 
.end method 

.method public bridge synthetic clone : ()Ljava/lang/Object; 
    .exceptions java/lang/CloneNotSupportedException 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/graphics/Sprite clone ()Lcom/fs/graphics/Sprite; 
L4:     areturn 
L5:     
    .end code 
.end method 
.end class 
