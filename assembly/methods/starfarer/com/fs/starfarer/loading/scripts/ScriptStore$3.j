.version 61 0 
.class super com/fs/starfarer/loading/scripts/ScriptStore$3 
.super java/lang/Object 
.implements java/lang/Runnable 

.method <init> : ()V 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokespecial Method java/lang/Object <init> ()V 
L4:     return 
L5:     
    .end code 
.end method 

.method public run : ()V 
    .code stack 5 locals 8 
L0:     getstatic Field com/fs/starfarer/loading/scripts/ScriptStore if Lcom/fs/starfarer/loading/scripts/B; 
L3:     astore_1 
L4:     getstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'Ò00000' Ljava/util/List; 
L7:     invokeinterface InterfaceMethod java/util/List isEmpty ()Z 1 
L12:    ifne L152 
L15:    getstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'Ò00000' Ljava/util/List; 
L18:    invokeinterface InterfaceMethod java/util/List size ()I 1 
L23:    anewarray java/net/URL 
L26:    astore_2 
L27:    iconst_0 
L28:    istore_3 
L29:    getstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'Ò00000' Ljava/util/List; 
L32:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L37:    astore 5 
L39:    goto L122 

        .stack full 
            locals Object com/fs/starfarer/loading/scripts/ScriptStore$3 Object java/lang/ClassLoader Object [Ljava/net/URL; Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L42:    aload 5 
L44:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L49:    checkcast java/lang/String 
L52:    astore 4 
L54:    new java/io/File 
L57:    dup 
L58:    aload 4 
L60:    invokespecial Method java/io/File <init> (Ljava/lang/String;)V 
L63:    astore 6 
        .catch java/net/MalformedURLException from L65 to L101 using L104 
L65:    aload_2 
L66:    iload_3 
L67:    aload 6 
L69:    invokevirtual Method java/io/File toURL ()Ljava/net/URL; 
L72:    aastore 
L73:    getstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'Ö00000' Lorg/apache/log4j/Logger; 
L76:    new java/lang/StringBuilder 
L79:    dup 
L80:    ldc 'Getting ready to load jar file [' 
L82:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L85:    aload 4 
L87:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L90:    ldc ']' 
L92:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L95:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L98:    invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L101:   goto L119 

        .stack full 
            locals Object com/fs/starfarer/loading/scripts/ScriptStore$3 Object java/lang/ClassLoader Object [Ljava/net/URL; Integer Object java/lang/String Object java/util/Iterator Object java/io/File 
            stack Object java/net/MalformedURLException 
        .end stack 
L104:   astore 7 
L106:   getstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'Ö00000' Lorg/apache/log4j/Logger; 
L109:   aload 7 
L111:   invokevirtual Method java/net/MalformedURLException getMessage ()Ljava/lang/String; 
L114:   aload 7 
L116:   invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;Ljava/lang/Throwable;)V 

        .stack same 
L119:   iinc 3 1 

        .stack full 
            locals Object com/fs/starfarer/loading/scripts/ScriptStore$3 Object java/lang/ClassLoader Object [Ljava/net/URL; Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L122:   aload 5 
L124:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L129:   ifne L42 
L132:   getstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'Ö00000' Lorg/apache/log4j/Logger; 
L135:   ldc 'Loading jar files' 
L137:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L140:   new com/genir/renderer/overrides/ScriptLoader
L143:   dup 
L144:   aload_2 
L145:   getstatic Field com/fs/starfarer/loading/scripts/ScriptStore if Lcom/fs/starfarer/loading/scripts/B; 
L148:   invokespecial Method com/genir/renderer/overrides/ScriptLoader <init> ([Ljava/net/URL;Ljava/lang/ClassLoader;)V
L151:   astore_1 

        .stack full 
            locals Object com/fs/starfarer/loading/scripts/ScriptStore$3 Object java/lang/ClassLoader 
            stack 
        .end stack 
L152:   aload_1 
L153:   invokestatic Method com/fs/starfarer/loading/scripts/ScriptStore o00000 (Ljava/lang/ClassLoader;)V 
L156:   aconst_null 
L157:   astore_2 
L158:   aconst_null 
L159:   astore_3 
L160:   goto L417 

        .stack append Object java/lang/String Object java/util/List 
L163:   getstatic Field com/fs/starfarer/loading/scripts/ScriptStore do Ljava/util/List; 
L166:   dup 
L167:   astore 4 
L169:   monitorenter 
        .catch [0] from L170 to L192 using L195 
L170:   new java/util/ArrayList 
L173:   dup 
L174:   getstatic Field com/fs/starfarer/loading/scripts/ScriptStore do Ljava/util/List; 
L177:   invokespecial Method java/util/ArrayList <init> (Ljava/util/Collection;)V 
L180:   astore_3 
L181:   getstatic Field com/fs/starfarer/loading/scripts/ScriptStore do Ljava/util/List; 
L184:   invokeinterface InterfaceMethod java/util/List clear ()V 1 
L189:   aload 4 
L191:   monitorexit 
L192:   goto L199 
        .catch [0] from L195 to L198 using L195 

        .stack full 
            locals Object com/fs/starfarer/loading/scripts/ScriptStore$3 Object java/lang/ClassLoader Object java/lang/String Object java/util/List Object java/util/List 
            stack Object java/lang/Throwable 
        .end stack 
L195:   aload 4 
L197:   monitorexit 
L198:   athrow 

        .stack chop 1 
L199:   aload_3 
L200:   ifnull L216 
L203:   aload_3 
L204:   invokeinterface InterfaceMethod java/util/List isEmpty ()Z 1 
L209:   ifne L216 
L212:   iconst_0 
L213:   goto L217 

        .stack same 
L216:   iconst_1 

        .stack stack_1 Integer 
L217:   putstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'ô00000' Z 
L220:   aload_3 
L221:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L226:   astore 5 
L228:   goto L401 

        .stack full 
            locals Object com/fs/starfarer/loading/scripts/ScriptStore$3 Object java/lang/ClassLoader Object java/lang/String Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L231:   aload 5 
L233:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L238:   checkcast java/lang/String 
L241:   astore 4 
L243:   aload 4 
L245:   astore_2 
L246:   iconst_0 
L247:   istore 6 
        .catch java/lang/Throwable from L249 to L294 using L297 
        .catch java/lang/Throwable from L158 to L436 using L439 
L249:   aload 4 
L251:   iconst_1 
L252:   getstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'ø00000' Lorg/codehaus/janino/JavaSourceClassLoader; 
L255:   invokestatic Method java/lang/Class forName (Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class; 
L258:   invokevirtual Method java/lang/Class newInstance ()Ljava/lang/Object; 
L261:   pop 
L262:   getstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'Ó00000' Ljava/util/Set; 
L265:   aload 4 
L267:   invokeinterface InterfaceMethod java/util/Set contains (Ljava/lang/Object;)Z 2 
L272:   ifeq L291 
L275:   aload 4 
L277:   invokestatic Method com/fs/starfarer/loading/scripts/ScriptStore 'Ò00000' (Ljava/lang/String;)Ljava/lang/Object; 
L280:   astore 7 
L282:   getstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'Õ00000' Lcom/fs/util/container/repo/ObjectRepository; 
L285:   aload 7 
L287:   invokevirtual Method com/fs/util/container/repo/ObjectRepository add (Ljava/lang/Object;)Z 
L290:   pop 

        .stack full 
            locals Object com/fs/starfarer/loading/scripts/ScriptStore$3 Object java/lang/ClassLoader Object java/lang/String Object java/util/List Object java/lang/String Object java/util/Iterator Integer 
            stack 
        .end stack 
L291:   iconst_1 
L292:   istore 6 
L294:   goto L299 

        .stack stack_1 Object java/lang/Throwable 
L297:   astore 7 

        .stack same 
L299:   iload 6 
L301:   ifeq L335 
L304:   getstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'Ö00000' Lorg/apache/log4j/Logger; 
L307:   new java/lang/StringBuilder 
L310:   dup 
L311:   ldc 'Class [' 
L313:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L316:   aload 4 
L318:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L321:   ldc '] already loaded (perhaps from jar file, or due to a reference from another class), skipping compilation.' 
L323:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L326:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L329:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L332:   goto L401 

        .stack same 
L335:   getstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'Ö00000' Lorg/apache/log4j/Logger; 
L338:   new java/lang/StringBuilder 
L341:   dup 
L342:   ldc 'Compiling script [' 
L344:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L347:   aload 4 
L349:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L352:   ldc ']' 
L354:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L357:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L360:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L363:   getstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'ø00000' Lorg/codehaus/janino/JavaSourceClassLoader; 
L366:   aload 4 
L368:   invokevirtual Method org/codehaus/janino/JavaSourceClassLoader loadClass (Ljava/lang/String;)Ljava/lang/Class; 
L371:   pop 
L372:   getstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'Ó00000' Ljava/util/Set; 
L375:   aload 4 
L377:   invokeinterface InterfaceMethod java/util/Set contains (Ljava/lang/Object;)Z 2 
L382:   ifeq L401 
L385:   aload 4 
L387:   invokestatic Method com/fs/starfarer/loading/scripts/ScriptStore 'Ò00000' (Ljava/lang/String;)Ljava/lang/Object; 
L390:   astore 7 
L392:   getstatic Field com/fs/starfarer/loading/scripts/ScriptStore 'Õ00000' Lcom/fs/util/container/repo/ObjectRepository; 
L395:   aload 7 
L397:   invokevirtual Method com/fs/util/container/repo/ObjectRepository add (Ljava/lang/Object;)Z 
L400:   pop 

        .stack full 
            locals Object com/fs/starfarer/loading/scripts/ScriptStore$3 Object java/lang/ClassLoader Object java/lang/String Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L401:   aload 5 
L403:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L408:   ifne L231 
L411:   ldc2_w 100L 
L414:   invokestatic Method java/lang/Thread sleep (J)V 

        .stack full 
            locals Object com/fs/starfarer/loading/scripts/ScriptStore$3 Object java/lang/ClassLoader Object java/lang/String Object java/util/List 
            stack 
        .end stack 
L417:   aload_3 
L418:   ifnull L163 
L421:   aload_3 
L422:   invokeinterface InterfaceMethod java/util/List isEmpty ()Z 1 
L427:   ifeq L163 
L430:   getstatic Field com/fs/starfarer/loading/scripts/ScriptStore OO0000 Z 
L433:   ifeq L163 
L436:   goto L492 

        .stack full 
            locals Object com/fs/starfarer/loading/scripts/ScriptStore$3 Object java/lang/ClassLoader Object java/lang/String 
            stack Object java/lang/Throwable 
        .end stack 
L439:   astore_3 
L440:   ldc '' 
L442:   astore 4 
L444:   aload_3 
L445:   instanceof java/lang/UnsupportedClassVersionError 
L448:   ifeq L455 
L451:   ldc '\n\nCompiled for the wrong version of Java, change the compile target to Java 7' 
L453:   astore 4 

        .stack append Object java/lang/Throwable Object java/lang/String 
L455:   new java/lang/RuntimeException 
L458:   dup 
L459:   new java/lang/StringBuilder 
L462:   dup 
L463:   ldc 'Error loading [' 
L465:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L468:   aload_2 
L469:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L472:   ldc ']' 
L474:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L477:   aload 4 
L479:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L482:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L485:   aload_3 
L486:   invokespecial Method java/lang/RuntimeException <init> (Ljava/lang/String;Ljava/lang/Throwable;)V 
L489:   putstatic Field com/fs/starfarer/loading/scripts/ScriptStore String Ljava/lang/Exception; 

        .stack chop 2 
L492:   return 
L493:   
    .end code 
.end method 
.enclosing method com/fs/starfarer/loading/scripts/ScriptStore int ()V 
.innerclasses 
    com/fs/starfarer/loading/scripts/ScriptStore$3 [0] [0] 
.end innerclasses 
.nesthost com/fs/starfarer/loading/scripts/ScriptStore 
.end class 
