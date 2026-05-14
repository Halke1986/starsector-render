.version 61 0 
.class public super sound/C 
.super java/lang/Object 
.field private static 'ô00000' Lorg/apache/log4j/Logger; 
.field private static void Lsound/C; 
.field private 'ø00000' Z 
.field private 'Ö00000' Z 
.field private OO0000 Ljava/util/HashMap; .fieldattributes 
    .signature Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>; 
.end fieldattributes 
.field private String Ljava/util/ArrayList; .fieldattributes 
    .signature Ljava/util/ArrayList<Ljava/lang/Integer;>; 
.end fieldattributes 
.field private 'õ00000' Ljava/util/ArrayList; .fieldattributes 
    .signature Ljava/util/ArrayList<Ljava/lang/Integer;>; 
.end fieldattributes 
.field private 'ÒO0000' Z 
.field private 'ôO0000' F 
.field private 'super.super' F 
.field private 'õO0000' Ljava/nio/FloatBuffer; 
.field private 'ÓO0000' I 
.field private 'super' I 
.field private 'Ó00000' I 
.field private 'Õ00000' I 
.field private 'ÕO0000' I 
.field private 'ÖO0000' I 
.field private 'Ò00000' Ljava/util/Map; .fieldattributes 
    .signature Ljava/util/Map<Ljava/lang/Integer;Lsound/C$o;>; 
.end fieldattributes 
.field private 'private' Ljava/util/Map; .fieldattributes 
    .signature Ljava/util/Map<Ljava/lang/Integer;Lsound/C$o;>; 
.end fieldattributes 
.field protected if Ljava/util/Map; .fieldattributes 
    .signature Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>; 
.end fieldattributes 
.field static do J 

.method static <clinit> : ()V 
    .code stack 2 locals 0 
L0:     ldc Class sound/C 
L2:     invokestatic Method org/apache/log4j/Logger getLogger (Ljava/lang/Class;)Lorg/apache/log4j/Logger; 
L5:     putstatic Field sound/C 'ô00000' Lorg/apache/log4j/Logger; 
L8:     lconst_0 
L9:     putstatic Field sound/C do J 
L12:    return 
L13:    
    .end code 
.end method 

.method public 'ø00000' : ()Ljava/util/ArrayList; 
    .signature ()Ljava/util/ArrayList<Ljava/lang/Integer;>; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field sound/C String Ljava/util/ArrayList; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public 'ÒO0000' : ()Ljava/util/ArrayList; 
    .signature ()Ljava/util/ArrayList<Ljava/lang/Integer;>; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field sound/C 'õ00000' Ljava/util/ArrayList; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method private <init> : ()V 
    .code stack 6 locals 1 
L0:     aload_0 
L1:     invokespecial Method java/lang/Object <init> ()V 
L4:     aload_0 
L5:     new java/util/HashMap 
L8:     dup 
L9:     invokespecial Method java/util/HashMap <init> ()V 
L12:    putfield Field sound/C OO0000 Ljava/util/HashMap; 
L15:    aload_0 
L16:    new java/util/ArrayList 
L19:    dup 
L20:    invokespecial Method java/util/ArrayList <init> ()V 
L23:    putfield Field sound/C String Ljava/util/ArrayList; 
L26:    aload_0 
L27:    new java/util/ArrayList 
L30:    dup 
L31:    invokespecial Method java/util/ArrayList <init> ()V 
L34:    putfield Field sound/C 'õ00000' Ljava/util/ArrayList; 
L37:    aload_0 
L38:    iconst_0 
L39:    putfield Field sound/C 'ÒO0000' Z 
L42:    aload_0 
L43:    fconst_1 
L44:    putfield Field sound/C 'ôO0000' F 
L47:    aload_0 
L48:    fconst_1 
L49:    putfield Field sound/C 'super.super' F 
L52:    aload_0 
L53:    iconst_3 
L54:    invokestatic Method org/lwjgl/BufferUtils createFloatBuffer (I)Ljava/nio/FloatBuffer; 
L57:    iconst_3 
L58:    newarray float 
L60:    dup 
L61:    iconst_0 
L62:    fconst_0 
L63:    fastore 
L64:    dup 
L65:    iconst_1 
L66:    fconst_0 
L67:    fastore 
L68:    dup 
L69:    iconst_2 
L70:    fconst_0 
L71:    fastore 
L72:    invokevirtual Method java/nio/FloatBuffer put ([F)Ljava/nio/FloatBuffer; 
L75:    putfield Field sound/C 'õO0000' Ljava/nio/FloatBuffer; 
L78:    aload_0 
L79:    bipush 54 
L81:    putfield Field sound/C 'ÓO0000' I 
L84:    aload_0 
L85:    bipush 10 
L87:    putfield Field sound/C 'super' I 
L90:    aload_0 
L91:    iconst_0 
L92:    putfield Field sound/C 'ÕO0000' I 
L95:    aload_0 
L96:    iconst_0 
L97:    putfield Field sound/C 'ÖO0000' I 
L100:   aload_0 
L101:   new java/util/LinkedHashMap 
L104:   dup 
L105:   invokespecial Method java/util/LinkedHashMap <init> ()V 
L108:   putfield Field sound/C 'Ò00000' Ljava/util/Map; 
L111:   aload_0 
L112:   new java/util/LinkedHashMap 
L115:   dup 
L116:   invokespecial Method java/util/LinkedHashMap <init> ()V 
L119:   putfield Field sound/C 'private' Ljava/util/Map; 
L122:   aload_0 
L123:   new java/util/LinkedHashMap 
L126:   dup 
L127:   invokespecial Method java/util/LinkedHashMap <init> ()V 
L130:   putfield Field sound/C if Ljava/util/Map; 
L133:   return 
L134:   
    .end code 
.end method 

.method public 'Ø00000' : ()V 
    .code stack 2 locals 1 
L0:     new sound/C 
L3:     dup 
L4:     invokespecial Method sound/C <init> ()V 
L7:     putstatic Field sound/C void Lsound/C; 
L10:    return 
L11:    
    .end code 
.end method 

.method public 'Ô00000' : (IF)V 
    .code stack 3 locals 3 
L0:     aload_0 
L1:     getfield Field sound/C 'Ö00000' Z 
L4:     ifeq L28 
L7:     aload_0 
L8:     getfield Field sound/C String Ljava/util/ArrayList; 
L11:    iload_1 
L12:    invokevirtual Method java/util/ArrayList get (I)Ljava/lang/Object; 
L15:    checkcast java/lang/Integer 
L18:    invokevirtual Method java/lang/Integer intValue ()I 
L21:    sipush 4106 
L24:    fload_2 
L25:    invokestatic Method org/lwjgl/openal/AL10 alSourcef (IIF)V 

        .stack same 
L28:    return 
L29:    
    .end code 
.end method 

.method public Object : (IF)V 
    .code stack 3 locals 3 
L0:     aload_0 
L1:     getfield Field sound/C 'Ö00000' Z 
L4:     ifeq L28 
L7:     aload_0 
L8:     getfield Field sound/C 'õ00000' Ljava/util/ArrayList; 
L11:    iload_1 
L12:    invokevirtual Method java/util/ArrayList get (I)Ljava/lang/Object; 
L15:    checkcast java/lang/Integer 
L18:    invokevirtual Method java/lang/Integer intValue ()I 
L21:    sipush 4106 
L24:    fload_2 
L25:    invokestatic Method org/lwjgl/openal/AL10 alSourcef (IIF)V 

        .stack same 
L28:    return 
L29:    
    .end code 
.end method 

.method public o00000 : (IF)V 
    .code stack 3 locals 3 
L0:     aload_0 
L1:     getfield Field sound/C 'Ö00000' Z 
L4:     ifeq L28 
L7:     aload_0 
L8:     getfield Field sound/C 'õ00000' Ljava/util/ArrayList; 
L11:    iload_1 
L12:    invokevirtual Method java/util/ArrayList get (I)Ljava/lang/Object; 
L15:    checkcast java/lang/Integer 
L18:    invokevirtual Method java/lang/Integer intValue ()I 
L21:    sipush 4099 
L24:    fload_2 
L25:    invokestatic Method org/lwjgl/openal/AL10 alSourcef (IIF)V 

        .stack same 
L28:    return 
L29:    
    .end code 
.end method 

.method public 'Ò00000' : (IF)V 
    .code stack 3 locals 3 
L0:     aload_0 
L1:     getfield Field sound/C 'Ö00000' Z 
L4:     ifeq L28 
L7:     aload_0 
L8:     getfield Field sound/C String Ljava/util/ArrayList; 
L11:    iload_1 
L12:    invokevirtual Method java/util/ArrayList get (I)Ljava/lang/Object; 
L15:    checkcast java/lang/Integer 
L18:    invokevirtual Method java/lang/Integer intValue ()I 
L21:    sipush 4099 
L24:    fload_2 
L25:    invokestatic Method org/lwjgl/openal/AL10 alSourcef (IIF)V 

        .stack same 
L28:    return 
L29:    
    .end code 
.end method 

.method public o00000 : (F)V 
    .code stack 2 locals 2 
L0:     fload_1 
L1:     fconst_0 
L2:     fcmpg 
L3:     ifge L8 
L6:     fconst_0 
L7:     fstore_1 

        .stack same 
L8:     fload_1 
L9:     fconst_1 
L10:    fcmpl 
L11:    ifle L16 
L14:    fconst_1 
L15:    fstore_1 

        .stack same 
L16:    aload_0 
L17:    fload_1 
L18:    putfield Field sound/C 'ôO0000' F 
L21:    return 
L22:    
    .end code 
.end method 

.method public 'Ò00000' : (F)V 
    .code stack 2 locals 2 
L0:     fload_1 
L1:     fconst_0 
L2:     fcmpg 
L3:     ifge L8 
L6:     fconst_0 
L7:     fstore_1 

        .stack same 
L8:     fload_1 
L9:     fconst_1 
L10:    fcmpl 
L11:    ifle L16 
L14:    fconst_1 
L15:    fstore_1 

        .stack same 
L16:    aload_0 
L17:    fload_1 
L18:    putfield Field sound/C 'super.super' F 
L21:    return 
L22:    
    .end code 
.end method 

.method public oO0000 : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field sound/C 'Ö00000' Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public for : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field sound/C 'ôO0000' F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method public Object : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field sound/C 'super.super' F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method return : (I)I 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field sound/C 'Ö00000' Z 
L4:     ifne L9 
L7:     iconst_m1 
L8:     ireturn 

        .stack same 
L9:     iload_1 
L10:    ifge L15 
L13:    iconst_m1 
L14:    ireturn 

        .stack same 
L15:    aload_0 
L16:    getfield Field sound/C String Ljava/util/ArrayList; 
L19:    iload_1 
L20:    invokevirtual Method java/util/ArrayList get (I)Ljava/lang/Object; 
L23:    checkcast java/lang/Integer 
L26:    invokevirtual Method java/lang/Integer intValue ()I 
L29:    ireturn 
L30:    
    .end code 
.end method 

.method public o00000 : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field sound/C 'Ö00000' Z 
L4:     ifeq L12 
L7:     aload_0 
L8:     iload_1 
L9:     putfield Field sound/C 'ø00000' Z 

        .stack same 
L12:    return 
L13:    
    .end code 
.end method 

.method public 'ÕO0000' : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field sound/C 'ø00000' Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public Object : (I)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field sound/C 'ÓO0000' I 
L5:     return 
L6:     
    .end code 
.end method 

.method public 'Ò00000' : (IIII)V 
    .code stack 5 locals 5 
L0:     invokestatic Method org/lwjgl/openal/AL destroy ()V 
L3:     aload_0 
L4:     iconst_0 
L5:     putfield Field sound/C 'ÒO0000' Z 
L8:     aload_0 
L9:     new java/util/ArrayList 
L12:    dup 
L13:    invokespecial Method java/util/ArrayList <init> ()V 
L16:    putfield Field sound/C String Ljava/util/ArrayList; 
L19:    aload_0 
L20:    new java/util/ArrayList 
L23:    dup 
L24:    invokespecial Method java/util/ArrayList <init> ()V 
L27:    putfield Field sound/C 'õ00000' Ljava/util/ArrayList; 
L30:    aload_0 
L31:    iload_1 
L32:    iload_2 
L33:    iload_3 
L34:    iload 4 
L36:    invokevirtual Method sound/C o00000 (IIII)V 
L39:    return 
L40:    
    .end code 
.end method 

.method public o00000 : (IIII)V 
    .code stack 5 locals 9 
L0:     aload_0 
L1:     getfield Field sound/C 'ÒO0000' Z 
L4:     ifeq L8 
L7:     return 

        .stack same 
L8:     aload_0 
L9:     iload_3 
L10:    putfield Field sound/C 'ÓO0000' I 
L13:    aload_0 
L14:    iload 4 
L16:    putfield Field sound/C 'super' I 
L19:    aload_0 
L20:    iload_1 
L21:    putfield Field sound/C 'Ó00000' I 
L24:    aload_0 
L25:    iload_2 
L26:    putfield Field sound/C 'Õ00000' I 
L29:    aload_0 
L30:    iconst_1 
L31:    putfield Field sound/C 'ÒO0000' Z 
L34:    new sound/C$1 
L37:    dup 
L38:    aload_0 
L39:    invokespecial Method sound/C$1 <init> (Lsound/C;)V 
L42:    invokestatic Method java/security/AccessController doPrivileged (Ljava/security/PrivilegedAction;)Ljava/lang/Object; 
L45:    pop 
        .catch java/lang/Throwable from L46 to L50 using L53 
L46:    fconst_0 
L47:    invokestatic Method org/lwjgl/openal/AL10 alDopplerFactor (F)V 
L50:    goto L55 

        .stack stack_1 Object java/lang/Throwable 
L53:    astore 5 

        .stack same 
L55:    ldc 53252 
L57:    invokestatic Method org/lwjgl/openal/AL10 alDistanceModel (I)V 
L60:    aload_0 
L61:    getfield Field sound/C 'Ö00000' Z 
L64:    ifeq L443 
L67:    iconst_0 
L68:    istore 5 
L70:    goto L152 

        .stack append Integer 
L73:    iconst_1 
L74:    invokestatic Method org/lwjgl/BufferUtils createIntBuffer (I)Ljava/nio/IntBuffer; 
L77:    astore 6 
        .catch org/lwjgl/openal/OpenALException from L79 to L139 using L142 
L79:    aload 6 
L81:    invokestatic Method org/lwjgl/openal/AL10 alGenSources (Ljava/nio/IntBuffer;)V 
L84:    invokestatic Method org/lwjgl/openal/AL10 alGetError ()I 
L87:    ifne L152 
L90:    aload 6 
L92:    iconst_0 
L93:    invokevirtual Method java/nio/IntBuffer get (I)I 
L96:    istore 7 
L98:    aload_0 
L99:    getfield Field sound/C String Ljava/util/ArrayList; 
L102:   new java/lang/Integer 
L105:   dup 
L106:   iload 7 
L108:   invokespecial Method java/lang/Integer <init> (I)V 
L111:   invokevirtual Method java/util/ArrayList add (Ljava/lang/Object;)Z 
L114:   pop 
L115:   iload 7 
L117:   sipush 4128 
L120:   aload_0 
L121:   getfield Field sound/C 'Ó00000' I 
L124:   invokestatic Method org/lwjgl/openal/AL10 alSourcei (III)V 
L127:   iload 7 
L129:   sipush 4131 
L132:   aload_0 
L133:   getfield Field sound/C 'Õ00000' I 
L136:   invokestatic Method org/lwjgl/openal/AL10 alSourcei (III)V 
L139:   goto L152 

        .stack full 
            locals Object sound/C Integer Integer Integer Integer Integer Object java/nio/IntBuffer 
            stack Object org/lwjgl/openal/OpenALException 
        .end stack 
L142:   astore 7 
L144:   aload 7 
L146:   invokevirtual Method org/lwjgl/openal/OpenALException printStackTrace ()V 
L149:   goto L251 

        .stack chop 1 
L152:   invokestatic Method org/lwjgl/openal/AL10 alGetError ()I 
L155:   dup 
L156:   istore 5 
L158:   ifne L251 
L161:   aload_0 
L162:   getfield Field sound/C String Ljava/util/ArrayList; 
L165:   invokevirtual Method java/util/ArrayList size ()I 
L168:   aload_0 
L169:   getfield Field sound/C 'ÓO0000' I 
L172:   if_icmplt L73 
L175:   goto L251 

        .stack same 
L178:   iconst_1 
L179:   invokestatic Method org/lwjgl/BufferUtils createIntBuffer (I)Ljava/nio/IntBuffer; 
L182:   astore 6 
        .catch org/lwjgl/openal/OpenALException from L184 to L238 using L241 
L184:   aload 6 
L186:   invokestatic Method org/lwjgl/openal/AL10 alGenSources (Ljava/nio/IntBuffer;)V 
L189:   invokestatic Method org/lwjgl/openal/AL10 alGetError ()I 
L192:   ifne L251 
L195:   aload 6 
L197:   iconst_0 
L198:   invokevirtual Method java/nio/IntBuffer get (I)I 
L201:   istore 7 
L203:   aload_0 
L204:   getfield Field sound/C 'õ00000' Ljava/util/ArrayList; 
L207:   new java/lang/Integer 
L210:   dup 
L211:   iload 7 
L213:   invokespecial Method java/lang/Integer <init> (I)V 
L216:   invokevirtual Method java/util/ArrayList add (Ljava/lang/Object;)Z 
L219:   pop 
L220:   iload 7 
L222:   sipush 4128 
L225:   iload_1 
L226:   invokestatic Method org/lwjgl/openal/AL10 alSourcei (III)V 
L229:   iload 7 
L231:   sipush 4131 
L234:   iload_2 
L235:   invokestatic Method org/lwjgl/openal/AL10 alSourcei (III)V 
L238:   goto L251 

        .stack full 
            locals Object sound/C Integer Integer Integer Integer Integer Object java/nio/IntBuffer 
            stack Object org/lwjgl/openal/OpenALException 
        .end stack 
L241:   astore 7 
L243:   aload 7 
L245:   invokevirtual Method org/lwjgl/openal/OpenALException printStackTrace ()V 
L248:   goto L274 

        .stack chop 1 
L251:   invokestatic Method org/lwjgl/openal/AL10 alGetError ()I 
L254:   dup 
L255:   istore 5 
L257:   ifne L274 
L260:   aload_0 
L261:   getfield Field sound/C 'õ00000' Ljava/util/ArrayList; 
L264:   invokevirtual Method java/util/ArrayList size ()I 
L267:   aload_0 
L268:   getfield Field sound/C 'super' I 
L271:   if_icmplt L178 

        .stack same 
L274:   iload 5 
L276:   ifeq L314 
L279:   aload_0 
L280:   iconst_0 
L281:   putfield Field sound/C 'ø00000' Z 
L284:   aload_0 
L285:   iconst_0 
L286:   putfield Field sound/C 'Ö00000' Z 
L289:   new java/lang/RuntimeException 
L292:   dup 
L293:   new java/lang/StringBuilder 
L296:   dup 
L297:   ldc 'Error initializing sound - AL error ' 
L299:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L302:   iload 5 
L304:   invokevirtual Method java/lang/StringBuilder append (I)Ljava/lang/StringBuilder; 
L307:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L310:   invokespecial Method java/lang/RuntimeException <init> (Ljava/lang/String;)V 
L313:   athrow 

        .stack same 
L314:   bipush 6 
L316:   invokestatic Method org/lwjgl/BufferUtils createFloatBuffer (I)Ljava/nio/FloatBuffer; 
L319:   bipush 6 
L321:   newarray float 
L323:   dup 
L324:   iconst_0 
L325:   fconst_0 
L326:   fastore 
L327:   dup 
L328:   iconst_1 
L329:   fconst_0 
L330:   fastore 
L331:   dup 
L332:   iconst_2 
L333:   ldc -1.0f 
L335:   fastore 
L336:   dup 
L337:   iconst_3 
L338:   fconst_0 
L339:   fastore 
L340:   dup 
L341:   iconst_4 
L342:   fconst_1 
L343:   fastore 
L344:   dup 
L345:   iconst_5 
L346:   fconst_0 
L347:   fastore 
L348:   invokevirtual Method java/nio/FloatBuffer put ([F)Ljava/nio/FloatBuffer; 
L351:   astore 6 
L353:   iconst_3 
L354:   invokestatic Method org/lwjgl/BufferUtils createFloatBuffer (I)Ljava/nio/FloatBuffer; 
L357:   iconst_3 
L358:   newarray float 
L360:   dup 
L361:   iconst_0 
L362:   fconst_0 
L363:   fastore 
L364:   dup 
L365:   iconst_1 
L366:   fconst_0 
L367:   fastore 
L368:   dup 
L369:   iconst_2 
L370:   fconst_0 
L371:   fastore 
L372:   invokevirtual Method java/nio/FloatBuffer put ([F)Ljava/nio/FloatBuffer; 
L375:   astore 7 
L377:   iconst_3 
L378:   invokestatic Method org/lwjgl/BufferUtils createFloatBuffer (I)Ljava/nio/FloatBuffer; 
L381:   iconst_3 
L382:   newarray float 
L384:   dup 
L385:   iconst_0 
L386:   fconst_0 
L387:   fastore 
L388:   dup 
L389:   iconst_1 
L390:   fconst_0 
L391:   fastore 
L392:   dup 
L393:   iconst_2 
L394:   fconst_0 
L395:   fastore 
L396:   invokevirtual Method java/nio/FloatBuffer put ([F)Ljava/nio/FloatBuffer; 
L399:   astore 8 
L401:   aload 8 
L403:   invokevirtual Method java/nio/FloatBuffer flip ()Ljava/nio/FloatBuffer; 
L406:   pop 
L407:   aload 7 
L409:   invokevirtual Method java/nio/FloatBuffer flip ()Ljava/nio/FloatBuffer; 
L412:   pop 
L413:   aload 6 
L415:   invokevirtual Method java/nio/FloatBuffer flip ()Ljava/nio/FloatBuffer; 
L418:   pop 
L419:   sipush 4100 
L422:   aload 8 
L424:   invokestatic Method org/lwjgl/openal/AL10 alListener (ILjava/nio/FloatBuffer;)V 
L427:   sipush 4102 
L430:   aload 7 
L432:   invokestatic Method org/lwjgl/openal/AL10 alListener (ILjava/nio/FloatBuffer;)V 
L435:   sipush 4111 
L438:   aload 6 
L440:   invokestatic Method org/lwjgl/openal/AL10 alListener (ILjava/nio/FloatBuffer;)V 

        .stack chop 1 
L443:   return 
L444:   
    .end code 
.end method 

.method public 'Õ00000' : ()I 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field sound/C 'Ó00000' I 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public int : ()I 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field sound/C 'Õ00000' I 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public 'Ô00000' : ()V 
    .code stack 0 locals 1 
L0:     invokestatic Method org/lwjgl/openal/AL destroy ()V 
L3:     return 
L4:     
    .end code 
.end method 

.method public o00000 : (FFF)V 
    .code stack 5 locals 5 
L0:     iconst_3 
L1:     invokestatic Method org/lwjgl/BufferUtils createFloatBuffer (I)Ljava/nio/FloatBuffer; 
L4:     iconst_3 
L5:     newarray float 
L7:     dup 
L8:     iconst_0 
L9:     fload_1 
L10:    fastore 
L11:    dup 
L12:    iconst_1 
L13:    fload_2 
L14:    fastore 
L15:    dup 
L16:    iconst_2 
L17:    fload_3 
L18:    fastore 
L19:    invokevirtual Method java/nio/FloatBuffer put ([F)Ljava/nio/FloatBuffer; 
L22:    astore 4 
L24:    aload 4 
L26:    invokevirtual Method java/nio/FloatBuffer flip ()Ljava/nio/FloatBuffer; 
L29:    pop 
L30:    sipush 4100 
L33:    aload 4 
L35:    invokestatic Method org/lwjgl/openal/AL10 alListener (ILjava/nio/FloatBuffer;)V 
L38:    return 
L39:    
    .end code 
.end method 

.method public 'public' : ()V 
    .code stack 3 locals 6 
L0:     aload_0 
L1:     getfield Field sound/C 'Ò00000' Ljava/util/Map; 
L4:     invokeinterface InterfaceMethod java/util/Map isEmpty ()Z 1 
L9:     ifeq L16 
L12:    iconst_0 
L13:    goto L17 

        .stack same 
L16:    iconst_1 

        .stack stack_1 Integer 
L17:    istore_1 
L18:    iconst_3 
L19:    istore_2 
L20:    aload_0 
L21:    getfield Field sound/C 'Ò00000' Ljava/util/Map; 
L24:    invokeinterface InterfaceMethod java/util/Map keySet ()Ljava/util/Set; 1 
L29:    invokeinterface InterfaceMethod java/util/Set iterator ()Ljava/util/Iterator; 1 
L34:    astore_3 
L35:    goto L84 

        .stack append Integer Integer Object java/util/Iterator 
L38:    aload_0 
L39:    getfield Field sound/C 'Ò00000' Ljava/util/Map; 
L42:    aload_3 
L43:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L48:    invokeinterface InterfaceMethod java/util/Map get (Ljava/lang/Object;)Ljava/lang/Object; 2 
L53:    checkcast sound/C$o 
L56:    astore 4 
L58:    aload 4 
L60:    dup 
L61:    getfield Field sound/C$o 'super' I 
L64:    iconst_1 
L65:    iadd 
L66:    putfield Field sound/C$o 'super' I 
L69:    aload 4 
L71:    getfield Field sound/C$o 'super' I 
L74:    iload_2 
L75:    if_icmple L84 
L78:    aload_3 
L79:    invokeinterface InterfaceMethod java/util/Iterator remove ()V 1 

        .stack same 
L84:    aload_3 
L85:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L90:    ifne L38 
L93:    aload_0 
L94:    getfield Field sound/C 'private' Ljava/util/Map; 
L97:    invokeinterface InterfaceMethod java/util/Map isEmpty ()Z 1 
L102:   ifeq L109 
L105:   iconst_0 
L106:   goto L110 

        .stack same 
L109:   iconst_1 

        .stack stack_1 Integer 
L110:   istore 4 
L112:   aload_0 
L113:   getfield Field sound/C 'private' Ljava/util/Map; 
L116:   invokeinterface InterfaceMethod java/util/Map keySet ()Ljava/util/Set; 1 
L121:   invokeinterface InterfaceMethod java/util/Set iterator ()Ljava/util/Iterator; 1 
L126:   astore_3 
L127:   goto L176 

        .stack append Integer 
L130:   aload_0 
L131:   getfield Field sound/C 'private' Ljava/util/Map; 
L134:   aload_3 
L135:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L140:   invokeinterface InterfaceMethod java/util/Map get (Ljava/lang/Object;)Ljava/lang/Object; 2 
L145:   checkcast sound/C$o 
L148:   astore 5 
L150:   aload 5 
L152:   dup 
L153:   getfield Field sound/C$o 'super' I 
L156:   iconst_1 
L157:   iadd 
L158:   putfield Field sound/C$o 'super' I 
L161:   aload 5 
L163:   getfield Field sound/C$o 'super' I 
L166:   iload_2 
L167:   if_icmple L176 
L170:   aload_3 
L171:   invokeinterface InterfaceMethod java/util/Iterator remove ()V 1 

        .stack same 
L176:   aload_3 
L177:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L182:   ifne L130 
L185:   iload_1 
L186:   ifeq L215 
L189:   aload_0 
L190:   dup 
L191:   getfield Field sound/C 'ÕO0000' I 
L194:   iconst_1 
L195:   iadd 
L196:   putfield Field sound/C 'ÕO0000' I 
L199:   aload_0 
L200:   dup 
L201:   getfield Field sound/C 'ÕO0000' I 
L204:   aload_0 
L205:   getfield Field sound/C String Ljava/util/ArrayList; 
L208:   invokevirtual Method java/util/ArrayList size ()I 
L211:   irem 
L212:   putfield Field sound/C 'ÕO0000' I 

        .stack same 
L215:   iload 4 
L217:   ifeq L246 
L220:   aload_0 
L221:   dup 
L222:   getfield Field sound/C 'ÖO0000' I 
L225:   iconst_1 
L226:   iadd 
L227:   putfield Field sound/C 'ÖO0000' I 
L230:   aload_0 
L231:   dup 
L232:   getfield Field sound/C 'ÖO0000' I 
L235:   aload_0 
L236:   getfield Field sound/C 'õ00000' Ljava/util/ArrayList; 
L239:   invokevirtual Method java/util/ArrayList size ()I 
L242:   irem 
L243:   putfield Field sound/C 'ÖO0000' I 

        .stack same 
L246:   return 
L247:   
    .end code 
.end method 

.method public 'Ò00000' : (FFF)V 
    .code stack 5 locals 5 
L0:     iconst_3 
L1:     invokestatic Method org/lwjgl/BufferUtils createFloatBuffer (I)Ljava/nio/FloatBuffer; 
L4:     iconst_3 
L5:     newarray float 
L7:     dup 
L8:     iconst_0 
L9:     fload_1 
L10:    fastore 
L11:    dup 
L12:    iconst_1 
L13:    fload_2 
L14:    fastore 
L15:    dup 
L16:    iconst_2 
L17:    fload_3 
L18:    fastore 
L19:    invokevirtual Method java/nio/FloatBuffer put ([F)Ljava/nio/FloatBuffer; 
L22:    astore 4 
L24:    aload 4 
L26:    invokevirtual Method java/nio/FloatBuffer flip ()Ljava/nio/FloatBuffer; 
L29:    pop 
L30:    sipush 4102 
L33:    aload 4 
L35:    invokestatic Method org/lwjgl/openal/AL10 alListener (ILjava/nio/FloatBuffer;)V 
L38:    return 
L39:    
    .end code 
.end method 

.method public o00000 : (I)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field sound/C String Ljava/util/ArrayList; 
L4:     iload_1 
L5:     invokevirtual Method java/util/ArrayList get (I)Ljava/lang/Object; 
L8:     checkcast java/lang/Integer 
L11:    invokevirtual Method java/lang/Integer intValue ()I 
L14:    invokestatic Method org/lwjgl/openal/AL10 alSourceStop (I)V 
L17:    return 
L18:    
    .end code 
.end method 

.method public 'ô00000' : (I)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     getfield Field sound/C 'õ00000' Ljava/util/ArrayList; 
L4:     iload_1 
L5:     invokevirtual Method java/util/ArrayList get (I)Ljava/lang/Object; 
L8:     checkcast java/lang/Integer 
L11:    invokevirtual Method java/lang/Integer intValue ()I 
L14:    invokestatic Method org/lwjgl/openal/AL10 alSourceStop (I)V 
L17:    return 
L18:    
    .end code 
.end method 

.method o00000 : (IFFZ)I 
    .code stack 11 locals 5 
L0:     aload_0 
L1:     iload_1 
L2:     fload_2 
L3:     fload_3 
L4:     iload 4 
L6:     fconst_0 
L7:     fconst_0 
L8:     fconst_0 
L9:     fconst_0 
L10:    fconst_0 
L11:    fconst_0 
L12:    invokevirtual Method sound/C 'Ò00000' (IFFZFFFFFF)I 
L15:    ireturn 
L16:    
    .end code 
.end method 

.method 'Ò00000' : (IFFZ)I 
    .code stack 11 locals 5 
L0:     aload_0 
L1:     iload_1 
L2:     fload_2 
L3:     fload_3 
L4:     iload 4 
L6:     fconst_0 
L7:     fconst_0 
L8:     fconst_0 
L9:     fconst_0 
L10:    fconst_0 
L11:    fconst_0 
L12:    invokevirtual Method sound/C o00000 (IFFZFFFFFF)I 
L15:    ireturn 
L16:    
    .end code 
.end method 

.method public return : ()Ljava/util/Map; 
    .signature ()Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field sound/C if Ljava/util/Map; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method 'Ò00000' : (IFFZFFFFFF)I 
    .code stack 5 locals 14 
L0:     fload_3 
L1:     aload_0 
L2:     getfield Field sound/C 'ôO0000' F 
L5:     fmul 
L6:     fstore_3 
L7:     fload_3 
L8:     fconst_0 
L9:     fcmpg 
L10:    ifgt L15 
L13:    iconst_m1 
L14:    ireturn 

        .stack same 
L15:    aload_0 
L16:    getfield Field sound/C 'Ö00000' Z 
L19:    ifeq L273 
L22:    aload_0 
L23:    getfield Field sound/C 'ø00000' Z 
L26:    ifeq L273 
L29:    aload_0 
L30:    invokevirtual Method sound/C 'Ò00000' ()I 
L33:    istore 11 
L35:    iload 11 
L37:    iconst_m1 
L38:    if_icmpne L43 
L41:    iconst_m1 
L42:    ireturn 

        .stack append Integer 
L43:    aload_0 
L44:    getfield Field sound/C String Ljava/util/ArrayList; 
L47:    iload 11 
L49:    invokevirtual Method java/util/ArrayList get (I)Ljava/lang/Object; 
L52:    checkcast java/lang/Integer 
L55:    invokevirtual Method java/lang/Integer intValue ()I 
L58:    istore 12 
L60:    iload 12 
L62:    sipush 4106 
L65:    fconst_0 
L66:    invokestatic Method org/lwjgl/openal/AL10 alSourcef (IIF)V 
L69:    iload 12 
L71:    invokestatic Method org/lwjgl/openal/AL10 alSourceStop (I)V 
L74:    iload 12 
L76:    sipush 4105 
L79:    iload_1 
L80:    invokestatic Method org/lwjgl/openal/AL10 alSourcei (III)V 
L83:    iload 12 
L85:    sipush 4099 
L88:    fload_2 
L89:    invokestatic Method org/lwjgl/openal/AL10 alSourcef (IIF)V 
L92:    iload 12 
L94:    sipush 4106 
L97:    fload_3 
L98:    invokestatic Method org/lwjgl/openal/AL10 alSourcef (IIF)V 
L101:   iload 12 
L103:   sipush 4103 
L106:   iload 4 
L108:   ifeq L115 
L111:   iconst_1 
L112:   goto L116 

        .stack full 
            locals Object sound/C Integer Float Float Integer Float Float Float Float Float Float Integer Integer 
            stack Integer Integer 
        .end stack 
L115:   iconst_0 

        .stack full 
            locals Object sound/C Integer Float Float Integer Float Float Float Float Float Float Integer Integer 
            stack Integer Integer Integer 
        .end stack 
L116:   invokestatic Method org/lwjgl/openal/AL10 alSourcei (III)V 
L119:   iconst_3 
L120:   invokestatic Method org/lwjgl/BufferUtils createFloatBuffer (I)Ljava/nio/FloatBuffer; 
L123:   astore 13 
L125:   aload 13 
L127:   invokevirtual Method java/nio/FloatBuffer clear ()Ljava/nio/FloatBuffer; 
L130:   pop 
L131:   aload 13 
L133:   iconst_3 
L134:   newarray float 
L136:   dup 
L137:   iconst_0 
L138:   fload 5 
L140:   fastore 
L141:   dup 
L142:   iconst_1 
L143:   fload 6 
L145:   fastore 
L146:   dup 
L147:   iconst_2 
L148:   fload 7 
L150:   fastore 
L151:   invokevirtual Method java/nio/FloatBuffer put ([F)Ljava/nio/FloatBuffer; 
L154:   pop 
L155:   aload 13 
L157:   invokevirtual Method java/nio/FloatBuffer flip ()Ljava/nio/FloatBuffer; 
L160:   pop 
L161:   iload 12 
L163:   sipush 4100 
L166:   aload 13 
L168:   invokestatic Method org/lwjgl/openal/AL10 alSource (IILjava/nio/FloatBuffer;)V 
L171:   fload 8 
L173:   fconst_0 
L174:   fcmpl 
L175:   ifne L192 
L178:   fload 9 
L180:   fconst_0 
L181:   fcmpl 
L182:   ifne L192 
L185:   fload 10 
L187:   fconst_0 
L188:   fcmpl 
L189:   ifeq L246 

        .stack append Object java/nio/FloatBuffer 
L192:   aload_0 
L193:   getfield Field sound/C 'õO0000' Ljava/nio/FloatBuffer; 
L196:   invokevirtual Method java/nio/FloatBuffer clear ()Ljava/nio/FloatBuffer; 
L199:   pop 
L200:   aload_0 
L201:   getfield Field sound/C 'õO0000' Ljava/nio/FloatBuffer; 
L204:   iconst_3 
L205:   newarray float 
L207:   dup 
L208:   iconst_0 
L209:   fload 8 
L211:   fastore 
L212:   dup 
L213:   iconst_1 
L214:   fload 9 
L216:   fastore 
L217:   dup 
L218:   iconst_2 
L219:   fload 10 
L221:   fastore 
L222:   invokevirtual Method java/nio/FloatBuffer put ([F)Ljava/nio/FloatBuffer; 
L225:   pop 
L226:   aload_0 
L227:   getfield Field sound/C 'õO0000' Ljava/nio/FloatBuffer; 
L230:   invokevirtual Method java/nio/FloatBuffer flip ()Ljava/nio/FloatBuffer; 
L233:   pop 
L234:   iload 12 
L236:   sipush 4102 
L239:   aload_0 
L240:   getfield Field sound/C 'õO0000' Ljava/nio/FloatBuffer; 
L243:   invokestatic Method org/lwjgl/openal/AL10 alSource (IILjava/nio/FloatBuffer;)V 

        .stack same 
L246:   iload 12 
L248:   invokestatic Method org/lwjgl/openal/AL10 alSourcePlay (I)V 
L251:   aload_0 
L252:   getfield Field sound/C if Ljava/util/Map; 
L255:   iload 11 
L257:   invokestatic Method java/lang/Integer valueOf (I)Ljava/lang/Integer; 
L260:   iload_1 
L261:   invokestatic Method java/lang/Integer valueOf (I)Ljava/lang/Integer; 
L264:   invokeinterface InterfaceMethod java/util/Map put (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 3 
L269:   pop 
L270:   iload 11 
L272:   ireturn 

        .stack chop 3 
L273:   iconst_m1 
L274:   ireturn 
L275:   
    .end code 
.end method 

.method o00000 : (IFFZFFFFFF)I 
    .code stack 5 locals 13 
L0:     fload_3 
L1:     aload_0 
L2:     getfield Field sound/C 'super.super' F 
L5:     fmul 
L6:     fstore_3 
L7:     fload_3 
L8:     fconst_0 
L9:     fcmpg 
L10:    ifgt L15 
L13:    iconst_m1 
L14:    ireturn 

        .stack same 
L15:    aload_0 
L16:    getfield Field sound/C 'Ö00000' Z 
L19:    ifeq L351 
L22:    aload_0 
L23:    getfield Field sound/C 'ø00000' Z 
L26:    ifeq L351 
L29:    aload_0 
L30:    invokevirtual Method sound/C 'ÔO0000' ()I 
L33:    istore 11 
L35:    iload 11 
L37:    iconst_m1 
L38:    if_icmpne L43 
L41:    iconst_m1 
L42:    ireturn 

        .stack append Integer 
L43:    aload_0 
L44:    getfield Field sound/C 'õ00000' Ljava/util/ArrayList; 
L47:    iload 11 
L49:    invokevirtual Method java/util/ArrayList get (I)Ljava/lang/Object; 
L52:    checkcast java/lang/Integer 
L55:    invokevirtual Method java/lang/Integer intValue ()I 
L58:    invokestatic Method org/lwjgl/openal/AL10 alSourceStop (I)V 
L61:    aload_0 
L62:    getfield Field sound/C 'õ00000' Ljava/util/ArrayList; 
L65:    iload 11 
L67:    invokevirtual Method java/util/ArrayList get (I)Ljava/lang/Object; 
L70:    checkcast java/lang/Integer 
L73:    invokevirtual Method java/lang/Integer intValue ()I 
L76:    sipush 4105 
L79:    iload_1 
L80:    invokestatic Method org/lwjgl/openal/AL10 alSourcei (III)V 
L83:    aload_0 
L84:    getfield Field sound/C 'õ00000' Ljava/util/ArrayList; 
L87:    iload 11 
L89:    invokevirtual Method java/util/ArrayList get (I)Ljava/lang/Object; 
L92:    checkcast java/lang/Integer 
L95:    invokevirtual Method java/lang/Integer intValue ()I 
L98:    sipush 4099 
L101:   fload_2 
L102:   invokestatic Method org/lwjgl/openal/AL10 alSourcef (IIF)V 
L105:   aload_0 
L106:   getfield Field sound/C 'õ00000' Ljava/util/ArrayList; 
L109:   iload 11 
L111:   invokevirtual Method java/util/ArrayList get (I)Ljava/lang/Object; 
L114:   checkcast java/lang/Integer 
L117:   invokevirtual Method java/lang/Integer intValue ()I 
L120:   sipush 4106 
L123:   fload_3 
L124:   invokestatic Method org/lwjgl/openal/AL10 alSourcef (IIF)V 
L127:   aload_0 
L128:   getfield Field sound/C 'õ00000' Ljava/util/ArrayList; 
L131:   iload 11 
L133:   invokevirtual Method java/util/ArrayList get (I)Ljava/lang/Object; 
L136:   checkcast java/lang/Integer 
L139:   invokevirtual Method java/lang/Integer intValue ()I 
L142:   sipush 4103 
L145:   iload 4 
L147:   ifeq L154 
L150:   iconst_1 
L151:   goto L155 

        .stack full 
            locals Object sound/C Integer Float Float Integer Float Float Float Float Float Float Integer 
            stack Integer Integer 
        .end stack 
L154:   iconst_0 

        .stack full 
            locals Object sound/C Integer Float Float Integer Float Float Float Float Float Float Integer 
            stack Integer Integer Integer 
        .end stack 
L155:   invokestatic Method org/lwjgl/openal/AL10 alSourcei (III)V 
L158:   iconst_3 
L159:   invokestatic Method org/lwjgl/BufferUtils createFloatBuffer (I)Ljava/nio/FloatBuffer; 
L162:   astore 12 
L164:   aload 12 
L166:   invokevirtual Method java/nio/FloatBuffer clear ()Ljava/nio/FloatBuffer; 
L169:   pop 
L170:   aload 12 
L172:   iconst_3 
L173:   newarray float 
L175:   dup 
L176:   iconst_0 
L177:   fload 5 
L179:   fastore 
L180:   dup 
L181:   iconst_1 
L182:   fload 6 
L184:   fastore 
L185:   dup 
L186:   iconst_2 
L187:   fload 7 
L189:   fastore 
L190:   invokevirtual Method java/nio/FloatBuffer put ([F)Ljava/nio/FloatBuffer; 
L193:   pop 
L194:   aload 12 
L196:   invokevirtual Method java/nio/FloatBuffer flip ()Ljava/nio/FloatBuffer; 
L199:   pop 
L200:   aload_0 
L201:   getfield Field sound/C 'õ00000' Ljava/util/ArrayList; 
L204:   iload 11 
L206:   invokevirtual Method java/util/ArrayList get (I)Ljava/lang/Object; 
L209:   checkcast java/lang/Integer 
L212:   invokevirtual Method java/lang/Integer intValue ()I 
L215:   sipush 4100 
L218:   aload 12 
L220:   invokestatic Method org/lwjgl/openal/AL10 alSource (IILjava/nio/FloatBuffer;)V 
L223:   fload 8 
L225:   fconst_0 
L226:   fcmpl 
L227:   ifne L244 
L230:   fload 9 
L232:   fconst_0 
L233:   fcmpl 
L234:   ifne L244 
L237:   fload 10 
L239:   fconst_0 
L240:   fcmpl 
L241:   ifeq L311 

        .stack append Object java/nio/FloatBuffer 
L244:   aload_0 
L245:   getfield Field sound/C 'õO0000' Ljava/nio/FloatBuffer; 
L248:   invokevirtual Method java/nio/FloatBuffer clear ()Ljava/nio/FloatBuffer; 
L251:   pop 
L252:   aload_0 
L253:   getfield Field sound/C 'õO0000' Ljava/nio/FloatBuffer; 
L256:   iconst_3 
L257:   newarray float 
L259:   dup 
L260:   iconst_0 
L261:   fload 8 
L263:   fastore 
L264:   dup 
L265:   iconst_1 
L266:   fload 9 
L268:   fastore 
L269:   dup 
L270:   iconst_2 
L271:   fload 10 
L273:   fastore 
L274:   invokevirtual Method java/nio/FloatBuffer put ([F)Ljava/nio/FloatBuffer; 
L277:   pop 
L278:   aload_0 
L279:   getfield Field sound/C 'õO0000' Ljava/nio/FloatBuffer; 
L282:   invokevirtual Method java/nio/FloatBuffer flip ()Ljava/nio/FloatBuffer; 
L285:   pop 
L286:   aload_0 
L287:   getfield Field sound/C 'õ00000' Ljava/util/ArrayList; 
L290:   iload 11 
L292:   invokevirtual Method java/util/ArrayList get (I)Ljava/lang/Object; 
L295:   checkcast java/lang/Integer 
L298:   invokevirtual Method java/lang/Integer intValue ()I 
L301:   sipush 4102 
L304:   aload_0 
L305:   getfield Field sound/C 'õO0000' Ljava/nio/FloatBuffer; 
L308:   invokestatic Method org/lwjgl/openal/AL10 alSource (IILjava/nio/FloatBuffer;)V 

        .stack same_extended 
L311:   aload_0 
L312:   getfield Field sound/C 'õ00000' Ljava/util/ArrayList; 
L315:   iload 11 
L317:   invokevirtual Method java/util/ArrayList get (I)Ljava/lang/Object; 
L320:   checkcast java/lang/Integer 
L323:   invokevirtual Method java/lang/Integer intValue ()I 
L326:   invokestatic Method org/lwjgl/openal/AL10 alSourcePlay (I)V 
L329:   aload_0 
L330:   getfield Field sound/C if Ljava/util/Map; 
L333:   iload 11 
L335:   invokestatic Method java/lang/Integer valueOf (I)Ljava/lang/Integer; 
L338:   iload_1 
L339:   invokestatic Method java/lang/Integer valueOf (I)Ljava/lang/Integer; 
L342:   invokeinterface InterfaceMethod java/util/Map put (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 3 
L347:   pop 
L348:   iload 11 
L350:   ireturn 

        .stack chop 2 
L351:   iconst_m1 
L352:   ireturn 
L353:   
    .end code 
.end method 

.method public 'Ò00000' : (IFFF)V 
    .code stack 3 locals 6 
L0:     aload_0 
L1:     getfield Field sound/C 'Ö00000' Z 
L4:     ifeq L63 
L7:     iconst_3 
L8:     invokestatic Method org/lwjgl/BufferUtils createFloatBuffer (I)Ljava/nio/FloatBuffer; 
L11:    astore 5 
L13:    aload 5 
L15:    invokevirtual Method java/nio/FloatBuffer clear ()Ljava/nio/FloatBuffer; 
L18:    pop 
L19:    aload 5 
L21:    fload_2 
L22:    invokevirtual Method java/nio/FloatBuffer put (F)Ljava/nio/FloatBuffer; 
L25:    fload_3 
L26:    invokevirtual Method java/nio/FloatBuffer put (F)Ljava/nio/FloatBuffer; 
L29:    fload 4 
L31:    invokevirtual Method java/nio/FloatBuffer put (F)Ljava/nio/FloatBuffer; 
L34:    pop 
L35:    aload 5 
L37:    invokevirtual Method java/nio/FloatBuffer flip ()Ljava/nio/FloatBuffer; 
L40:    pop 
L41:    aload_0 
L42:    getfield Field sound/C String Ljava/util/ArrayList; 
L45:    iload_1 
L46:    invokevirtual Method java/util/ArrayList get (I)Ljava/lang/Object; 
L49:    checkcast java/lang/Integer 
L52:    invokevirtual Method java/lang/Integer intValue ()I 
L55:    sipush 4100 
L58:    aload 5 
L60:    invokestatic Method org/lwjgl/openal/AL10 alSource (IILjava/nio/FloatBuffer;)V 

        .stack same 
L63:    return 
L64:    
    .end code 
.end method 

.method public o00000 : (IFFF)V 
    .code stack 3 locals 5 
L0:     aload_0 
L1:     getfield Field sound/C 'Ö00000' Z 
L4:     ifeq L65 
L7:     aload_0 
L8:     getfield Field sound/C 'õO0000' Ljava/nio/FloatBuffer; 
L11:    invokevirtual Method java/nio/FloatBuffer clear ()Ljava/nio/FloatBuffer; 
L14:    pop 
L15:    aload_0 
L16:    getfield Field sound/C 'õO0000' Ljava/nio/FloatBuffer; 
L19:    fload_2 
L20:    invokevirtual Method java/nio/FloatBuffer put (F)Ljava/nio/FloatBuffer; 
L23:    fload_3 
L24:    invokevirtual Method java/nio/FloatBuffer put (F)Ljava/nio/FloatBuffer; 
L27:    fload 4 
L29:    invokevirtual Method java/nio/FloatBuffer put (F)Ljava/nio/FloatBuffer; 
L32:    pop 
L33:    aload_0 
L34:    getfield Field sound/C 'õO0000' Ljava/nio/FloatBuffer; 
L37:    invokevirtual Method java/nio/FloatBuffer flip ()Ljava/nio/FloatBuffer; 
L40:    pop 
L41:    aload_0 
L42:    getfield Field sound/C String Ljava/util/ArrayList; 
L45:    iload_1 
L46:    invokevirtual Method java/util/ArrayList get (I)Ljava/lang/Object; 
L49:    checkcast java/lang/Integer 
L52:    invokevirtual Method java/lang/Integer intValue ()I 
L55:    sipush 4102 
L58:    aload_0 
L59:    getfield Field sound/C 'õO0000' Ljava/nio/FloatBuffer; 
L62:    invokestatic Method org/lwjgl/openal/AL10 alSource (IILjava/nio/FloatBuffer;)V 

        .stack same_extended 
L65:    return 
L66:    
    .end code 
.end method 

.method public 'Ô00000' : (I)Z 
    .code stack 2 locals 3 
L0:     aload_0 
L1:     getfield Field sound/C String Ljava/util/ArrayList; 
L4:     iload_1 
L5:     invokevirtual Method java/util/ArrayList get (I)Ljava/lang/Object; 
L8:     checkcast java/lang/Integer 
L11:    invokevirtual Method java/lang/Integer intValue ()I 
L14:    sipush 4112 
L17:    invokestatic Method org/lwjgl/openal/AL10 alGetSourcei (II)I 
L20:    istore_2 
L21:    iload_2 
L22:    sipush 4114 
L25:    if_icmpne L30 
L28:    iconst_1 
L29:    ireturn 

        .stack append Integer 
L30:    iconst_0 
L31:    ireturn 
L32:    
    .end code 
.end method 

.method public 'Ø00000' : (I)Z 
    .code stack 2 locals 3 
L0:     aload_0 
L1:     getfield Field sound/C 'õ00000' Ljava/util/ArrayList; 
L4:     iload_1 
L5:     invokevirtual Method java/util/ArrayList get (I)Ljava/lang/Object; 
L8:     checkcast java/lang/Integer 
L11:    invokevirtual Method java/lang/Integer intValue ()I 
L14:    sipush 4112 
L17:    invokestatic Method org/lwjgl/openal/AL10 alGetSourcei (II)I 
L20:    istore_2 
L21:    iload_2 
L22:    sipush 4114 
L25:    if_icmpne L30 
L28:    iconst_1 
L29:    ireturn 

        .stack append Integer 
L30:    iconst_0 
L31:    ireturn 
L32:    
    .end code 
.end method 

.method public 'Õ00000' : (I)Z 
    .code stack 2 locals 3 
L0:     aload_0 
L1:     iload_1 
L2:     invokevirtual Method sound/C 'Ô00000' (I)Z 
L5:     ifne L10 
L8:     iconst_0 
L9:     ireturn 

        .stack same 
L10:    aload_0 
L11:    getfield Field sound/C String Ljava/util/ArrayList; 
L14:    iload_1 
L15:    invokevirtual Method java/util/ArrayList get (I)Ljava/lang/Object; 
L18:    checkcast java/lang/Integer 
L21:    invokevirtual Method java/lang/Integer intValue ()I 
L24:    sipush 4103 
L27:    invokestatic Method org/lwjgl/openal/AL10 alGetSourcei (II)I 
L30:    istore_2 
L31:    iload_2 
L32:    iconst_1 
L33:    if_icmpne L38 
L36:    iconst_1 
L37:    ireturn 

        .stack append Integer 
L38:    iconst_0 
L39:    ireturn 
L40:    
    .end code 
.end method 

.method private 'Ò00000' : ()I 
    .code stack 5 locals 4 
L0:     iconst_0 
L1:     istore_1 
L2:     goto L116 

        .stack append Integer 
L5:     iload_1 
L6:     aload_0 
L7:     getfield Field sound/C 'ÕO0000' I 
L10:    iadd 
L11:    aload_0 
L12:    getfield Field sound/C String Ljava/util/ArrayList; 
L15:    invokevirtual Method java/util/ArrayList size ()I 
L18:    irem 
L19:    istore_2 
L20:    aload_0 
L21:    getfield Field sound/C 'Ò00000' Ljava/util/Map; 
L24:    new java/lang/Integer 
L27:    dup 
L28:    iload_2 
L29:    invokespecial Method java/lang/Integer <init> (I)V 
L32:    invokeinterface InterfaceMethod java/util/Map containsKey (Ljava/lang/Object;)Z 2 
L37:    ifeq L43 
L40:    goto L113 

        .stack append Integer 
L43:    aload_0 
L44:    getfield Field sound/C String Ljava/util/ArrayList; 
L47:    iload_2 
L48:    invokevirtual Method java/util/ArrayList get (I)Ljava/lang/Object; 
L51:    checkcast java/lang/Integer 
L54:    invokevirtual Method java/lang/Integer intValue ()I 
L57:    sipush 4112 
L60:    invokestatic Method org/lwjgl/openal/AL10 alGetSourcei (II)I 
L63:    istore_3 
L64:    iload_3 
L65:    sipush 4114 
L68:    if_icmpeq L113 
L71:    iload_3 
L72:    sipush 4115 
L75:    if_icmpeq L113 
L78:    iload_3 
L79:    sipush 8209 
L82:    if_icmpeq L113 
L85:    aload_0 
L86:    getfield Field sound/C 'Ò00000' Ljava/util/Map; 
L89:    new java/lang/Integer 
L92:    dup 
L93:    iload_2 
L94:    invokespecial Method java/lang/Integer <init> (I)V 
L97:    new sound/C$o 
L100:   dup 
L101:   iload_2 
L102:   invokespecial Method sound/C$o <init> (I)V 
L105:   invokeinterface InterfaceMethod java/util/Map put (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 3 
L110:   pop 
L111:   iload_2 
L112:   ireturn 

        .stack chop 1 
L113:   iinc 1 1 

        .stack same 
L116:   iload_1 
L117:   aload_0 
L118:   getfield Field sound/C String Ljava/util/ArrayList; 
L121:   invokevirtual Method java/util/ArrayList size ()I 
L124:   iconst_1 
L125:   isub 
L126:   if_icmplt L5 
L129:   iconst_m1 
L130:   ireturn 
L131:   
    .end code 
.end method 

.method private 'ÔO0000' : ()I 
    .code stack 5 locals 4 
L0:     iconst_0 
L1:     istore_1 
L2:     goto L109 

        .stack append Integer 
L5:     iload_1 
L6:     aload_0 
L7:     getfield Field sound/C 'ÖO0000' I 
L10:    iadd 
L11:    aload_0 
L12:    getfield Field sound/C 'õ00000' Ljava/util/ArrayList; 
L15:    invokevirtual Method java/util/ArrayList size ()I 
L18:    irem 
L19:    istore_2 
L20:    aload_0 
L21:    getfield Field sound/C 'private' Ljava/util/Map; 
L24:    new java/lang/Integer 
L27:    dup 
L28:    iload_2 
L29:    invokespecial Method java/lang/Integer <init> (I)V 
L32:    invokeinterface InterfaceMethod java/util/Map containsKey (Ljava/lang/Object;)Z 2 
L37:    ifeq L43 
L40:    goto L106 

        .stack append Integer 
L43:    aload_0 
L44:    getfield Field sound/C 'õ00000' Ljava/util/ArrayList; 
L47:    iload_2 
L48:    invokevirtual Method java/util/ArrayList get (I)Ljava/lang/Object; 
L51:    checkcast java/lang/Integer 
L54:    invokevirtual Method java/lang/Integer intValue ()I 
L57:    sipush 4112 
L60:    invokestatic Method org/lwjgl/openal/AL10 alGetSourcei (II)I 
L63:    istore_3 
L64:    iload_3 
L65:    sipush 4114 
L68:    if_icmpeq L106 
L71:    iload_3 
L72:    sipush 4115 
L75:    if_icmpeq L106 
L78:    aload_0 
L79:    getfield Field sound/C 'private' Ljava/util/Map; 
L82:    new java/lang/Integer 
L85:    dup 
L86:    iload_2 
L87:    invokespecial Method java/lang/Integer <init> (I)V 
L90:    new sound/C$o 
L93:    dup 
L94:    iload_2 
L95:    invokespecial Method sound/C$o <init> (I)V 
L98:    invokeinterface InterfaceMethod java/util/Map put (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 3 
L103:   pop 
L104:   iload_2 
L105:   ireturn 

        .stack chop 1 
L106:   iinc 1 1 

        .stack same 
L109:   iload_1 
L110:   aload_0 
L111:   getfield Field sound/C 'õ00000' Ljava/util/ArrayList; 
L114:   invokevirtual Method java/util/ArrayList size ()I 
L117:   iconst_1 
L118:   isub 
L119:   if_icmplt L5 
L122:   iconst_m1 
L123:   ireturn 
L124:   
    .end code 
.end method 

.method 'Ò00000' : (Ljava/lang/String;)Lsound/O0OO; 
    .exceptions java/io/IOException 
    .code stack 4 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     aload_0 
L3:     invokevirtual Method java/lang/Object getClass ()Ljava/lang/Class; 
L6:     aload_1 
L7:     invokevirtual Method java/lang/Class getResourceAsStream (Ljava/lang/String;)Ljava/io/InputStream; 
L10:    invokevirtual Method sound/C Object (Ljava/lang/String;Ljava/io/InputStream;)Lsound/O0OO; 
L13:    areturn 
L14:    
    .end code 
.end method 

.method 'Ò00000' : (Ljava/io/InputStream;)Lsound/O0OO; 
    .exceptions java/io/IOException 
    .code stack 3 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     invokevirtual Method java/lang/Object toString ()Ljava/lang/String; 
L5:     aload_1 
L6:     invokevirtual Method sound/C Object (Ljava/lang/String;Ljava/io/InputStream;)Lsound/O0OO; 
L9:     areturn 
L10:    
    .end code 
.end method 

.method Object : (Ljava/lang/String;Ljava/io/InputStream;)Lsound/O0OO; 
    .exceptions java/io/IOException 
    .code stack 6 locals 6 
L0:     new java/io/BufferedInputStream 
L3:     dup 
L4:     aload_2 
L5:     invokespecial Method java/io/BufferedInputStream <init> (Ljava/io/InputStream;)V 
L8:     astore_2 
L9:     aload_0 
L10:    getfield Field sound/C 'Ö00000' Z 
L13:    ifne L24 
L16:    new sound/for 
L19:    dup 
L20:    invokespecial Method sound/for <init> ()V 
L23:    areturn 

        .stack same 
L24:    aload_0 
L25:    getfield Field sound/C 'ÒO0000' Z 
L28:    ifne L42 
L31:    new java/lang/RuntimeException 
L34:    dup 
L35:    ldc_w "Can't load sounds until SoundStore is init(). Use the container init() method." 
L38:    invokespecial Method java/lang/RuntimeException <init> (Ljava/lang/String;)V 
L41:    athrow 

        .stack same 
L42:    iconst_m1 
L43:    istore_3 
L44:    aload_0 
L45:    getfield Field sound/C OO0000 Ljava/util/HashMap; 
L48:    aload_1 
L49:    invokevirtual Method java/util/HashMap get (Ljava/lang/Object;)Ljava/lang/Object; 
L52:    ifnull L73 
L55:    aload_0 
L56:    getfield Field sound/C OO0000 Ljava/util/HashMap; 
L59:    aload_1 
L60:    invokevirtual Method java/util/HashMap get (Ljava/lang/Object;)Ljava/lang/Object; 
L63:    checkcast java/lang/Integer 
L66:    invokevirtual Method java/lang/Integer intValue ()I 
L69:    istore_3 
L70:    goto L185 
        .catch java/lang/Exception from L73 to L143 using L146 

        .stack append Integer 
L73:    iconst_1 
L74:    invokestatic Method org/lwjgl/BufferUtils createIntBuffer (I)Ljava/nio/IntBuffer; 
L77:    astore 4 
L79:    aload_2 
L80:    invokestatic Method sound/int 'super' (Ljava/io/InputStream;)Lsound/int; 
L83:    astore 5 
L85:    aload 4 
L87:    invokestatic Method org/lwjgl/openal/AL10 alGenBuffers (Ljava/nio/IntBuffer;)V 
L90:    aload 4 
L92:    iconst_0 
L93:    invokevirtual Method java/nio/IntBuffer get (I)I 
L96:    aload 5 
L98:    getfield Field sound/int Object I 
L101:   aload 5 
L103:   getfield Field sound/int 'Ò00000' Ljava/nio/ByteBuffer; 
L106:   aload 5 
L108:   getfield Field sound/int o00000 I 
L111:   invokestatic Method org/lwjgl/openal/AL10 alBufferData (IILjava/nio/ByteBuffer;I)V 
L114:   aload_0 
L115:   getfield Field sound/C OO0000 Ljava/util/HashMap; 
L118:   aload_1 
L119:   new java/lang/Integer 
L122:   dup 
L123:   aload 4 
L125:   iconst_0 
L126:   invokevirtual Method java/nio/IntBuffer get (I)I 
L129:   invokespecial Method java/lang/Integer <init> (I)V 
L132:   invokevirtual Method java/util/HashMap put (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 
L135:   pop 
L136:   aload 4 
L138:   iconst_0 
L139:   invokevirtual Method java/nio/IntBuffer get (I)I 
L142:   istore_3 
L143:   goto L185 

        .stack stack_1_extended Object java/lang/Exception 
L146:   astore 4 
L148:   new java/io/IOException 
L151:   dup 
L152:   new java/lang/StringBuilder 
L155:   dup 
L156:   ldc_w 'Failed to load: ' 
L159:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L162:   aload_1 
L163:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L166:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L169:   invokespecial Method java/io/IOException <init> (Ljava/lang/String;)V 
L172:   astore 5 
L174:   aload 5 
L176:   aload 4 
L178:   invokevirtual Method java/io/IOException initCause (Ljava/lang/Throwable;)Ljava/lang/Throwable; 
L181:   pop 
L182:   aload 5 
L184:   athrow 

        .stack same 
L185:   iload_3 
L186:   iconst_m1 
L187:   if_icmpne L215 
L190:   new java/io/IOException 
L193:   dup 
L194:   new java/lang/StringBuilder 
L197:   dup 
L198:   ldc_w 'Unable to load: ' 
L201:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L204:   aload_1 
L205:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L208:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L211:   invokespecial Method java/io/IOException <init> (Ljava/lang/String;)V 
L214:   athrow 

        .stack same 
L215:   new sound/A 
L218:   dup 
L219:   aload_0 
L220:   iload_3 
L221:   invokespecial Method sound/A <init> (Lsound/C;I)V 
L224:   areturn 
L225:   
    .end code 
.end method 

.method Object : (Ljava/lang/String;)Lsound/O0OO; 
    .code stack 5 locals 4 
L0:     aconst_null 
L1:     astore_2 
L2:     aload_0 
L3:     getfield Field sound/C OO0000 Ljava/util/HashMap; 
L6:     aload_1 
L7:     invokevirtual Method java/util/HashMap get (Ljava/lang/Object;)Ljava/lang/Object; 
L10:    ifnonnull L50 
        .catch java/io/IOException from L13 to L27 using L30 
L13:    aload_0 
L14:    aload_1 
L15:    aload_0 
L16:    invokevirtual Method java/lang/Object getClass ()Ljava/lang/Class; 
L19:    aload_1 
L20:    invokevirtual Method java/lang/Class getResourceAsStream (Ljava/lang/String;)Ljava/io/InputStream; 
L23:    invokevirtual Method sound/C 'Ò00000' (Ljava/lang/String;Ljava/io/InputStream;)Lsound/O0OO; 
L26:    astore_2 
L27:    goto L73 

        .stack full 
            locals Object sound/C Object java/lang/String Object sound/O0OO 
            stack Object java/io/IOException 
        .end stack 
L30:    astore_3 
L31:    getstatic Field sound/C 'ô00000' Lorg/apache/log4j/Logger; 
L34:    aload_3 
L35:    aload_3 
L36:    invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;Ljava/lang/Throwable;)V 
L39:    new sound/for 
L42:    dup 
L43:    invokespecial Method sound/for <init> ()V 
L46:    astore_2 
L47:    goto L73 

        .stack same 
L50:    new sound/A 
L53:    dup 
L54:    aload_0 
L55:    aload_0 
L56:    getfield Field sound/C OO0000 Ljava/util/HashMap; 
L59:    aload_1 
L60:    invokevirtual Method java/util/HashMap get (Ljava/lang/Object;)Ljava/lang/Object; 
L63:    checkcast java/lang/Integer 
L66:    invokevirtual Method java/lang/Integer intValue ()I 
L69:    invokespecial Method sound/A <init> (Lsound/C;I)V 
L72:    astore_2 

        .stack same 
L73:    aload_2 
L74:    areturn 
L75:    
    .end code 
.end method 

.method o00000 : (Ljava/io/InputStream;)Lsound/O0OO; 
    .code stack 3 locals 4 
L0:     aconst_null 
L1:     astore_2 
        .catch java/io/IOException from L2 to L12 using L15 
L2:     aload_0 
L3:     aload_1 
L4:     invokevirtual Method java/lang/Object toString ()Ljava/lang/String; 
L7:     aload_1 
L8:     invokevirtual Method sound/C 'Ò00000' (Ljava/lang/String;Ljava/io/InputStream;)Lsound/O0OO; 
L11:    astore_2 
L12:    goto L32 

        .stack full 
            locals Object sound/C Object java/io/InputStream Object sound/O0OO 
            stack Object java/io/IOException 
        .end stack 
L15:    astore_3 
L16:    getstatic Field sound/C 'ô00000' Lorg/apache/log4j/Logger; 
L19:    aload_3 
L20:    aload_3 
L21:    invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;Ljava/lang/Throwable;)V 
L24:    new sound/for 
L27:    dup 
L28:    invokespecial Method sound/for <init> ()V 
L31:    astore_2 

        .stack same 
L32:    aload_2 
L33:    areturn 
L34:    
    .end code 
.end method 

.method public 'Ò00000' : (Ljava/lang/String;Ljava/io/InputStream;)Lsound/O0OO;
    .exceptions java/io/IOException 
    .code stack 6 locals 6 
L0:     aload_0 
L1:     getfield Field sound/C 'Ö00000' Z 
L4:     ifne L15 
L7:     new sound/for 
L10:    dup 
L11:    invokespecial Method sound/for <init> ()V 
L14:    areturn 

        .stack same 
L15:    aload_0 
L16:    getfield Field sound/C 'ÒO0000' Z 
L19:    ifne L33 
L22:    new java/lang/RuntimeException 
L25:    dup 
L26:    ldc_w "Can't load sounds until SoundStore is init(). Use the container init() method." 
L29:    invokespecial Method java/lang/RuntimeException <init> (Ljava/lang/String;)V 
L32:    athrow 

        .stack same 
L33:    iconst_m1 
L34:    istore_3 
L35:    aload_0 
L36:    getfield Field sound/C OO0000 Ljava/util/HashMap; 
L39:    aload_1 
L40:    invokevirtual Method java/util/HashMap get (Ljava/lang/Object;)Ljava/lang/Object; 
L43:    ifnull L64 
L46:    aload_0 
L47:    getfield Field sound/C OO0000 Ljava/util/HashMap; 
L50:    aload_1 
L51:    invokevirtual Method java/util/HashMap get (Ljava/lang/Object;)Ljava/lang/Object; 
L54:    checkcast java/lang/Integer 
L57:    invokevirtual Method java/lang/Integer intValue ()I 
L60:    istore_3 
L61:    goto L176 
        .catch java/lang/Exception from L64 to L134 using L137 

        .stack append Integer 
L64:    iconst_1 
L65:    invokestatic Method org/lwjgl/BufferUtils createIntBuffer (I)Ljava/nio/IntBuffer; 
L68:    astore 4 
L70:    aload_2 
L71:    invokestatic Method sound/o0OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 'super' (Ljava/io/InputStream;)Lsound/o0OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO; 
L74:    astore 5 
L76:    aload 4 
L78:    invokestatic Method org/lwjgl/openal/AL10 alGenBuffers (Ljava/nio/IntBuffer;)V 
L81:    aload 4 
L83:    iconst_0 
L84:    invokevirtual Method java/nio/IntBuffer get (I)I 
L87:    aload 5 
L89:    getfield Field sound/o0OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 'Ó00000' I 
L92:    aload 5 
L94:    getfield Field sound/o0OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 'Ò00000' Ljava/nio/ByteBuffer; 
L97:    aload 5 
L99:    getfield Field sound/o0OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 'super' I 
L102:   invokestatic Method org/lwjgl/openal/AL10 alBufferData (IILjava/nio/ByteBuffer;I)V 
L105:   aload_0 
L106:   getfield Field sound/C OO0000 Ljava/util/HashMap; 
L109:   aload_1 
L110:   new java/lang/Integer 
L113:   dup 
L114:   aload 4 
L116:   iconst_0 
L117:   invokevirtual Method java/nio/IntBuffer get (I)I 
L120:   invokespecial Method java/lang/Integer <init> (I)V 
L123:   invokevirtual Method java/util/HashMap put (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 
L126:   pop 
L127:   aload 4 
L129:   iconst_0 
L130:   invokevirtual Method java/nio/IntBuffer get (I)I 
L133:   istore_3 
L134:   goto L176 

        .stack stack_1_extended Object java/lang/Exception 
L137:   astore 4 
L139:   new java/io/IOException 
L142:   dup 
L143:   new java/lang/StringBuilder 
L146:   dup 
L147:   ldc_w 'Failed to load: ' 
L150:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L153:   aload_1 
L154:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L157:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L160:   invokespecial Method java/io/IOException <init> (Ljava/lang/String;)V 
L163:   astore 5 
L165:   aload 5 
L167:   aload 4 
L169:   invokevirtual Method java/io/IOException initCause (Ljava/lang/Throwable;)Ljava/lang/Throwable; 
L172:   pop 
L173:   aload 5 
L175:   athrow 

        .stack same 
L176:   iload_3 
L177:   iconst_m1 
L178:   if_icmpne L206 
L181:   new java/io/IOException 
L184:   dup 
L185:   new java/lang/StringBuilder 
L188:   dup 
L189:   ldc_w 'Unable to load: ' 
L192:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L195:   aload_1 
L196:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L199:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L202:   invokespecial Method java/io/IOException <init> (Ljava/lang/String;)V 
L205:   athrow 

        .stack same 
L206:   new sound/A 
L209:   dup 
L210:   aload_0 
L211:   iload_3 
L212:   invokespecial Method sound/A <init> (Lsound/C;I)V 
L215:   areturn 
L216:   
    .end code 
.end method 

.method o00000 : (Ljava/lang/String;)Lsound/O0OO; 
    .code stack 5 locals 4 
L0:     aconst_null 
L1:     astore_2 
L2:     aload_0 
L3:     getfield Field sound/C OO0000 Ljava/util/HashMap; 
L6:     aload_1 
L7:     invokevirtual Method java/util/HashMap get (Ljava/lang/Object;)Ljava/lang/Object; 
L10:    ifnonnull L50 
        .catch java/io/IOException from L13 to L27 using L30 
L13:    aload_0 
L14:    aload_1 
L15:    aload_0 
L16:    invokevirtual Method java/lang/Object getClass ()Ljava/lang/Class; 
L19:    aload_1 
L20:    invokevirtual Method java/lang/Class getResourceAsStream (Ljava/lang/String;)Ljava/io/InputStream; 
L23:    invokevirtual Method sound/C o00000 (Ljava/lang/String;Ljava/io/InputStream;)Lsound/O0OO; 
L26:    astore_2 
L27:    goto L73 

        .stack full 
            locals Object sound/C Object java/lang/String Object sound/O0OO 
            stack Object java/io/IOException 
        .end stack 
L30:    astore_3 
L31:    getstatic Field sound/C 'ô00000' Lorg/apache/log4j/Logger; 
L34:    aload_3 
L35:    aload_3 
L36:    invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;Ljava/lang/Throwable;)V 
L39:    new sound/for 
L42:    dup 
L43:    invokespecial Method sound/for <init> ()V 
L46:    astore_2 
L47:    goto L73 

        .stack same 
L50:    new sound/A 
L53:    dup 
L54:    aload_0 
L55:    aload_0 
L56:    getfield Field sound/C OO0000 Ljava/util/HashMap; 
L59:    aload_1 
L60:    invokevirtual Method java/util/HashMap get (Ljava/lang/Object;)Ljava/lang/Object; 
L63:    checkcast java/lang/Integer 
L66:    invokevirtual Method java/lang/Integer intValue ()I 
L69:    invokespecial Method sound/A <init> (Lsound/C;I)V 
L72:    astore_2 

        .stack same 
L73:    aload_2 
L74:    areturn 
L75:    
    .end code 
.end method 

.method Object : (Ljava/io/InputStream;)Lsound/O0OO; 
    .code stack 3 locals 4 
L0:     aconst_null 
L1:     astore_2 
        .catch java/io/IOException from L2 to L12 using L15 
L2:     aload_0 
L3:     aload_1 
L4:     invokevirtual Method java/lang/Object toString ()Ljava/lang/String; 
L7:     aload_1 
L8:     invokevirtual Method sound/C o00000 (Ljava/lang/String;Ljava/io/InputStream;)Lsound/O0OO; 
L11:    astore_2 
L12:    goto L32 

        .stack full 
            locals Object sound/C Object java/io/InputStream Object sound/O0OO 
            stack Object java/io/IOException 
        .end stack 
L15:    astore_3 
L16:    getstatic Field sound/C 'ô00000' Lorg/apache/log4j/Logger; 
L19:    aload_3 
L20:    aload_3 
L21:    invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;Ljava/lang/Throwable;)V 
L24:    new sound/for 
L27:    dup 
L28:    invokespecial Method sound/for <init> ()V 
L31:    astore_2 

        .stack same 
L32:    aload_2 
L33:    areturn 
L34:    
    .end code 
.end method 

.method public o00000 : (Ljava/lang/String;Ljava/io/InputStream;)Lsound/O0OO;
    .exceptions java/io/IOException 
    .code stack 6 locals 7 
L0:     aload_0 
L1:     getfield Field sound/C 'Ö00000' Z 
L4:     ifne L15 
L7:     new sound/for 
L10:    dup 
L11:    invokespecial Method sound/for <init> ()V 
L14:    areturn 

        .stack same 
L15:    aload_0 
L16:    getfield Field sound/C 'ÒO0000' Z 
L19:    ifne L33 
L22:    new java/lang/RuntimeException 
L25:    dup 
L26:    ldc_w "Can't load sounds until SoundStore is init(). Use the container init() method." 
L29:    invokespecial Method java/lang/RuntimeException <init> (Ljava/lang/String;)V 
L32:    athrow 

        .stack same 
L33:    iconst_m1 
L34:    istore_3 
L35:    aload_0 
L36:    getfield Field sound/C OO0000 Ljava/util/HashMap; 
L39:    aload_1 
L40:    invokevirtual Method java/util/HashMap get (Ljava/lang/Object;)Ljava/lang/Object; 
L43:    ifnull L64 
L46:    aload_0 
L47:    getfield Field sound/C OO0000 Ljava/util/HashMap; 
L50:    aload_1 
L51:    invokevirtual Method java/util/HashMap get (Ljava/lang/Object;)Ljava/lang/Object; 
L54:    checkcast java/lang/Integer 
L57:    invokevirtual Method java/lang/Integer intValue ()I 
L60:    istore_3 
L61:    goto L190 
        .catch java/lang/Exception from L64 to L158 using L161 

        .stack append Integer 
L64:    iconst_1 
L65:    invokestatic Method org/lwjgl/BufferUtils createIntBuffer (I)Ljava/nio/IntBuffer; 
L68:    astore 4 
L70:    new sound/O0oO 
L73:    dup 
L74:    invokespecial Method sound/O0oO <init> ()V 
L77:    astore 5 
L79:    aload 5 
L81:    aload_2 
L82:    invokevirtual Method sound/O0oO 'super' (Ljava/io/InputStream;)Lsound/G; 
L85:    astore 6 
L87:    aload 4 
L89:    invokestatic Method org/lwjgl/openal/AL10 alGenBuffers (Ljava/nio/IntBuffer;)V 
L92:    aload 4 
L94:    iconst_0 
L95:    invokevirtual Method java/nio/IntBuffer get (I)I 
L98:    aload 6 
L100:   getfield Field sound/G o00000 I 
L103:   iconst_1 
L104:   if_icmple L113 
L107:   sipush 4355 
L110:   goto L116 

        .stack full 
            locals Object sound/C Object java/lang/String Object java/io/InputStream Integer Object java/nio/IntBuffer Object sound/O0oO Object sound/G 
            stack Integer 
        .end stack 
L113:   sipush 4353 

        .stack full 
            locals Object sound/C Object java/lang/String Object java/io/InputStream Integer Object java/nio/IntBuffer Object sound/O0oO Object sound/G 
            stack Integer Integer 
        .end stack 
L116:   aload 6 
L118:   getfield Field sound/G Object Ljava/nio/ByteBuffer; 
L121:   aload 6 
L123:   getfield Field sound/G 'Ò00000' I 
L126:   invokestatic Method org/lwjgl/openal/AL10 alBufferData (IILjava/nio/ByteBuffer;I)V 
L129:   aload_0 
L130:   getfield Field sound/C OO0000 Ljava/util/HashMap; 
L133:   aload_1 
L134:   new java/lang/Integer 
L137:   dup 
L138:   aload 4 
L140:   iconst_0 
L141:   invokevirtual Method java/nio/IntBuffer get (I)I 
L144:   invokespecial Method java/lang/Integer <init> (I)V 
L147:   invokevirtual Method java/util/HashMap put (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 
L150:   pop 
L151:   aload 4 
L153:   iconst_0 
L154:   invokevirtual Method java/nio/IntBuffer get (I)I 
L157:   istore_3 
L158:   goto L190 

        .stack full 
            locals Object sound/C Object java/lang/String Object java/io/InputStream Integer 
            stack Object java/lang/Exception 
        .end stack 
L161:   astore 4 
L163:   new java/io/IOException 
L166:   dup 
L167:   new java/lang/StringBuilder 
L170:   dup 
L171:   ldc_w 'Unable to load: ' 
L174:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L177:   aload_1 
L178:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L181:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L184:   aload 4 
L186:   invokespecial Method java/io/IOException <init> (Ljava/lang/String;Ljava/lang/Throwable;)V 
L189:   athrow 

        .stack same 
L190:   iload_3 
L191:   iconst_m1 
L192:   if_icmpne L220 
L195:   new java/io/IOException 
L198:   dup 
L199:   new java/lang/StringBuilder 
L202:   dup 
L203:   ldc_w 'Unable to load: ' 
L206:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L209:   aload_1 
L210:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L213:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L216:   invokespecial Method java/io/IOException <init> (Ljava/lang/String;)V 
L219:   athrow 

        .stack same 
L220:   new sound/A 
L223:   dup 
L224:   aload_0 
L225:   iload_3 
L226:   invokespecial Method sound/A <init> (Lsound/C;I)V 
L229:   areturn 
L230:   
    .end code 
.end method 

.method public static 'ö00000' : ()Lsound/C; 
    .code stack 2 locals 0 
L0:     getstatic Field sound/C void Lsound/C; 
L3:     ifnonnull L16 
L6:     new sound/C 
L9:     dup 
L10:    invokespecial Method sound/C <init> ()V 
L13:    putstatic Field sound/C void Lsound/C; 

        .stack same 
L16:    getstatic Field sound/C void Lsound/C; 
L19:    areturn 
L20:    
    .end code 
.end method 

.method 'Ò00000' : (I)V 
    .code stack 1 locals 2 
L0:     iload_1 
L1:     invokestatic Method org/lwjgl/openal/AL10 alSourceStop (I)V 
L4:     return 
L5:     
    .end code 
.end method 

.method public 'ô00000' : ()I 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field sound/C String Ljava/util/ArrayList; 
L4:     invokevirtual Method java/util/ArrayList size ()I 
L7:     ireturn 
L8:     
    .end code 
.end method 

.method public o00000 : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field sound/C 'ÒO0000' Z 
L4:     ireturn 
L5:     
    .end code 
.end method

.method public getIsOpenALInitialized2 : ()Z
    .code stack 1 locals 1
L0:     aload_0
L1:     getfield Field sound/SoundStore SoundStore_isOpenALInitialized2 Z
L4:     ireturn
L5:
        .linenumbertable
            L0 15
        .end linenumbertable
        .localvariabletable
            0 is this Lsound/SoundStore; from L0 to L5
        .end localvariabletable
    .end code
.end method

.method public getTrackMap : ()Ljava/util/HashMap;
    .code stack 1 locals 1
L0:     aload_0
L1:     getfield Field sound/SoundStore SoundStore_trackMap Ljava/util/HashMap;
L4:     areturn
L5:
        .linenumbertable
            L0 20
        .end linenumbertable
        .localvariabletable
            0 is this Lsound/SoundStore; from L0 to L5
        .end localvariabletable
    .end code
    .signature ()Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;
.end method

.innerclasses 
    sound/C$1 [0] [0] 
    sound/C$o sound/C o public static 
.end innerclasses 
.nestmembers sound/C$1 sound/C$o 
.end class 
