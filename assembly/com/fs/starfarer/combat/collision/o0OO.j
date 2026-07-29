.version 61 0 
.class public super com/fs/starfarer/combat/E/o0OO 
.super java/lang/Object 
.implements java/lang/Cloneable 
.implements com/fs/starfarer/api/combat/BoundsAPI 
.field public segments Ljava/util/List; .fieldattributes 
    .signature Ljava/util/List<Lcom/fs/starfarer/combat/E/o0OO$o;>; 
.end fieldattributes 
.field public origSegments Ljava/util/List; .fieldattributes 
    .signature Ljava/util/List<Lcom/fs/starfarer/combat/E/o0OO$o;>; 
.end fieldattributes 
.field private o00000 F 
.field private 'Ò00000' F
.field public cachedPolygons Ljava/lang/Object;

.method public <init> : ()V 
    .code stack 3 locals 1 
L0:     aload_0 
L1:     invokespecial Method java/lang/Object <init> ()V 
L4:     aload_0 
L5:     new java/util/ArrayList 
L8:     dup 
L9:     invokespecial Method java/util/ArrayList <init> ()V 
L12:    putfield Field com/fs/starfarer/combat/E/o0OO segments Ljava/util/List; 
L15:    aload_0 
L16:    new java/util/ArrayList 
L19:    dup 
L20:    invokespecial Method java/util/ArrayList <init> ()V 
L23:    putfield Field com/fs/starfarer/combat/E/o0OO origSegments Ljava/util/List; 
L26:    return 
L27:    
    .end code 
.end method 

.method public addSegment : (FFFF)V 
    .code stack 7 locals 5 
L0:     aload_0 
L1:     fload_3 
L2:     putfield Field com/fs/starfarer/combat/E/o0OO o00000 F 
L5:     aload_0 
L6:     fload 4 
L8:     putfield Field com/fs/starfarer/combat/E/o0OO 'Ò00000' F 
L11:    aload_0 
L12:    getfield Field com/fs/starfarer/combat/E/o0OO segments Ljava/util/List; 
L15:    new com/fs/starfarer/combat/E/o0OO$o 
L18:    dup 
L19:    fload_1 
L20:    fload_2 
L21:    fload_3 
L22:    fload 4 
L24:    invokespecial Method com/fs/starfarer/combat/E/o0OO$o <init> (FFFF)V 
L27:    invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L32:    pop 
L33:    aload_0 
L34:    getfield Field com/fs/starfarer/combat/E/o0OO origSegments Ljava/util/List; 
L37:    new com/fs/starfarer/combat/E/o0OO$o 
L40:    dup 
L41:    fload_1 
L42:    fload_2 
L43:    fload_3 
L44:    fload 4 
L46:    invokespecial Method com/fs/starfarer/combat/E/o0OO$o <init> (FFFF)V 
L49:    invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L54:    pop 
L55:    return 
L56:    
    .end code 
.end method 

.method public addSegment : (FF)V 
    .code stack 5 locals 3 
L0:     aload_0 
L1:     aload_0 
L2:     getfield Field com/fs/starfarer/combat/E/o0OO o00000 F 
L5:     aload_0 
L6:     getfield Field com/fs/starfarer/combat/E/o0OO 'Ò00000' F 
L9:     fload_1 
L10:    fload_2 
L11:    invokevirtual Method com/fs/starfarer/combat/E/o0OO addSegment (FFFF)V 
L14:    return 
L15:    
    .end code 
.end method 

.method public rotateAndTranslate : (FLorg/lwjgl/util/vector/Vector2f;)V 
    .code stack 4 locals 8 
L0:     fload_1 
L1:     f2d 
L2:     invokestatic Method java/lang/Math toRadians (D)D 
L5:     invokestatic Method java/lang/Math cos (D)D 
L8:     d2f 
L9:     fstore_3 
L10:    fload_1 
L11:    f2d 
L12:    invokestatic Method java/lang/Math toRadians (D)D 
L15:    invokestatic Method java/lang/Math sin (D)D 
L18:    d2f 
L19:    fstore 4 
L21:    iconst_0 
L22:    istore 5 
L24:    goto L212 

        .stack append Float Float Integer 
L27:    aload_0 
L28:    getfield Field com/fs/starfarer/combat/E/o0OO origSegments Ljava/util/List; 
L31:    iload 5 
L33:    invokeinterface InterfaceMethod java/util/List get (I)Ljava/lang/Object; 2 
L38:    checkcast com/fs/starfarer/combat/E/o0OO$o 
L41:    astore 6 
L43:    aload_0 
L44:    getfield Field com/fs/starfarer/combat/E/o0OO segments Ljava/util/List; 
L47:    iload 5 
L49:    invokeinterface InterfaceMethod java/util/List get (I)Ljava/lang/Object; 2 
L54:    checkcast com/fs/starfarer/combat/E/o0OO$o 
L57:    astore 7 
L59:    aload 7 
L61:    aload 6 
L63:    getfield Field com/fs/starfarer/combat/E/o0OO$o isBreakEdge Z 
L66:    putfield Field com/fs/starfarer/combat/E/o0OO$o isBreakEdge Z 
L69:    aload 7 
L71:    aload 6 
L73:    getfield Field com/fs/starfarer/combat/E/o0OO$o x1 F 
L76:    fload_3 
L77:    fmul 
L78:    aload 6 
L80:    getfield Field com/fs/starfarer/combat/E/o0OO$o y1 F 
L83:    fload 4 
L85:    fmul 
L86:    fsub 
L87:    aload_2 
L88:    getfield Field org/lwjgl/util/vector/Vector2f x F 
L91:    fadd 
L92:    putfield Field com/fs/starfarer/combat/E/o0OO$o x1 F 
L95:    aload 7 
L97:    aload 6 
L99:    getfield Field com/fs/starfarer/combat/E/o0OO$o x1 F 
L102:   fload 4 
L104:   fmul 
L105:   aload 6 
L107:   getfield Field com/fs/starfarer/combat/E/o0OO$o y1 F 
L110:   fload_3 
L111:   fmul 
L112:   fadd 
L113:   aload_2 
L114:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L117:   fadd 
L118:   putfield Field com/fs/starfarer/combat/E/o0OO$o y1 F 
L121:   aload 7 
L123:   aload 6 
L125:   getfield Field com/fs/starfarer/combat/E/o0OO$o x2 F 
L128:   fload_3 
L129:   fmul 
L130:   aload 6 
L132:   getfield Field com/fs/starfarer/combat/E/o0OO$o y2 F 
L135:   fload 4 
L137:   fmul 
L138:   fsub 
L139:   aload_2 
L140:   getfield Field org/lwjgl/util/vector/Vector2f x F 
L143:   fadd 
L144:   putfield Field com/fs/starfarer/combat/E/o0OO$o x2 F 
L147:   aload 7 
L149:   aload 6 
L151:   getfield Field com/fs/starfarer/combat/E/o0OO$o x2 F 
L154:   fload 4 
L156:   fmul 
L157:   aload 6 
L159:   getfield Field com/fs/starfarer/combat/E/o0OO$o y2 F 
L162:   fload_3 
L163:   fmul 
L164:   fadd 
L165:   aload_2 
L166:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L169:   fadd 
L170:   putfield Field com/fs/starfarer/combat/E/o0OO$o y2 F 
L173:   aload 7 
L175:   getfield Field com/fs/starfarer/combat/E/o0OO$o p1 Lorg/lwjgl/util/vector/Vector2f; 
L178:   aload 7 
L180:   getfield Field com/fs/starfarer/combat/E/o0OO$o x1 F 
L183:   aload 7 
L185:   getfield Field com/fs/starfarer/combat/E/o0OO$o y1 F 
L188:   invokevirtual Method org/lwjgl/util/vector/Vector2f set (FF)V 
L191:   aload 7 
L193:   getfield Field com/fs/starfarer/combat/E/o0OO$o p2 Lorg/lwjgl/util/vector/Vector2f; 
L196:   aload 7 
L198:   getfield Field com/fs/starfarer/combat/E/o0OO$o x2 F 
L201:   aload 7 
L203:   getfield Field com/fs/starfarer/combat/E/o0OO$o y2 F 
L206:   invokevirtual Method org/lwjgl/util/vector/Vector2f set (FF)V 
L209:   iinc 5 1 

        .stack same_extended 
L212:   iload 5 
L214:   aload_0 
L215:   getfield Field com/fs/starfarer/combat/E/o0OO origSegments Ljava/util/List; 
L218:   invokeinterface InterfaceMethod java/util/List size ()I 1 
L223:   if_icmplt L27 
L226:   return 
L227:   
    .end code 
.end method 

.method public clone : ()Lcom/fs/starfarer/combat/E/o0OO; 
    .code stack 3 locals 4 
        .catch java/lang/CloneNotSupportedException from L0 to L123 using L124 
L0:     aload_0 
L1:     invokespecial Method java/lang/Object clone ()Ljava/lang/Object; 
L4:     checkcast com/fs/starfarer/combat/E/o0OO 
L7:     astore_1 
L8:     aload_1 
L9:     new java/util/ArrayList 
L12:    dup 
L13:    invokespecial Method java/util/ArrayList <init> ()V 
L16:    putfield Field com/fs/starfarer/combat/E/o0OO segments Ljava/util/List; 
L19:    aload_0 
L20:    getfield Field com/fs/starfarer/combat/E/o0OO segments Ljava/util/List; 
L23:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L28:    astore_3 
L29:    goto L56 

        .stack full 
            locals Object com/fs/starfarer/combat/E/o0OO Object com/fs/starfarer/combat/E/o0OO Top Object java/util/Iterator 
            stack 
        .end stack 
L32:    aload_3 
L33:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L38:    checkcast com/fs/starfarer/combat/E/o0OO$o 
L41:    astore_2 
L42:    aload_1 
L43:    getfield Field com/fs/starfarer/combat/E/o0OO segments Ljava/util/List; 
L46:    aload_2 
L47:    invokevirtual Method com/fs/starfarer/combat/E/o0OO$o clone ()Lcom/fs/starfarer/combat/E/o0OO$o; 
L50:    invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L55:    pop 

        .stack same 
L56:    aload_3 
L57:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L62:    ifne L32 
L65:    aload_1 
L66:    new java/util/ArrayList 
L69:    dup 
L70:    invokespecial Method java/util/ArrayList <init> ()V 
L73:    putfield Field com/fs/starfarer/combat/E/o0OO origSegments Ljava/util/List; 
L76:    aload_0 
L77:    getfield Field com/fs/starfarer/combat/E/o0OO origSegments Ljava/util/List; 
L80:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L85:    astore_3 
L86:    goto L113 

        .stack same 
L89:    aload_3 
L90:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L95:    checkcast com/fs/starfarer/combat/E/o0OO$o 
L98:    astore_2 
L99:    aload_1 
L100:   getfield Field com/fs/starfarer/combat/E/o0OO origSegments Ljava/util/List; 
L103:   aload_2 
L104:   invokevirtual Method com/fs/starfarer/combat/E/o0OO$o clone ()Lcom/fs/starfarer/combat/E/o0OO$o; 
L107:   invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L112:   pop 

        .stack same 
L113:   aload_3 
L114:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L119:   ifne L89 
L122:   aload_1 
L123:   areturn 

        .stack full 
            locals Object com/fs/starfarer/combat/E/o0OO 
            stack Object java/lang/CloneNotSupportedException 
        .end stack 
L124:   astore_1 
L125:   aconst_null 
L126:   areturn 
L127:   
    .end code 
.end method 

.method public getSegments : ()Ljava/util/List; 
    .signature ()Ljava/util/List<Lcom/fs/starfarer/api/combat/BoundsAPI$SegmentAPI;>; 
    .code stack 3 locals 1 
L0:     new java/util/ArrayList 
L3:     dup 
L4:     aload_0 
L5:     getfield Field com/fs/starfarer/combat/E/o0OO segments Ljava/util/List; 
L8:     invokespecial Method java/util/ArrayList <init> (Ljava/util/Collection;)V 
L11:    areturn 
L12:    
    .end code 
.end method 

.method public getOrigSegments : ()Ljava/util/List; 
    .signature ()Ljava/util/List<Lcom/fs/starfarer/api/combat/BoundsAPI$SegmentAPI;>; 
    .code stack 3 locals 1 
L0:     new java/util/ArrayList 
L3:     dup 
L4:     aload_0 
L5:     getfield Field com/fs/starfarer/combat/E/o0OO origSegments Ljava/util/List; 
L8:     invokespecial Method java/util/ArrayList <init> (Ljava/util/Collection;)V 
L11:    areturn 
L12:    
    .end code 
.end method 

.method public update : (Lorg/lwjgl/util/vector/Vector2f;F)V 
    .code stack 3 locals 3 
L0:     aload_0 
L1:     fload_2 
L2:     aload_1 
L3:     invokevirtual Method com/fs/starfarer/combat/E/o0OO rotateAndTranslate (FLorg/lwjgl/util/vector/Vector2f;)V 
L6:     return 
L7:     
    .end code 
.end method 

.method public clear : ()V 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/E/o0OO origSegments Ljava/util/List; 
L4:     invokeinterface InterfaceMethod java/util/List clear ()V 1 
L9:     aload_0 
L10:    getfield Field com/fs/starfarer/combat/E/o0OO segments Ljava/util/List; 
L13:    invokeinterface InterfaceMethod java/util/List clear ()V 1 
L18:    return 
L19:    
    .end code 
.end method 

.method public bridge synthetic clone : ()Ljava/lang/Object; 
    .exceptions java/lang/CloneNotSupportedException 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/E/o0OO clone ()Lcom/fs/starfarer/combat/E/o0OO; 
L4:     areturn 
L5:     
    .end code 
.end method 
.innerclasses 
    com/fs/starfarer/api/combat/BoundsAPI$SegmentAPI com/fs/starfarer/api/combat/BoundsAPI SegmentAPI public static interface abstract 
    com/fs/starfarer/combat/E/o0OO$o com/fs/starfarer/combat/E/o0OO o public static 
.end innerclasses 
.nestmembers com/fs/starfarer/combat/E/o0OO$o 
.end class 
