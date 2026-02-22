.version 61 0 
.class public super com/fs/starfarer/StarfarerLauncher 
.super java/lang/Object 
.implements java/awt/event/ActionListener 
.field private 'Ô00000' Lcom/fs/starfarer/launcher/opengl/F; 
.field private static 'Ó00000' Lorg/apache/log4j/Logger; 
.field private new Ljava/awt/Font; 
.field private o00000 Ljava/awt/Color; 

.method static <clinit> : ()V 
    .code stack 3 locals 1 
        .catch java/lang/Exception from L0 to L16 using L19 
L0:     new java/io/File 
L3:     dup 
L4:     ldc 'com.fs.starfarer.settings.paths.logs' 
L6:     invokestatic Method java/lang/System getProperty (Ljava/lang/String;)Ljava/lang/String; 
L9:     invokespecial Method java/io/File <init> (Ljava/lang/String;)V 
L12:    invokevirtual Method java/io/File mkdir ()Z 
L15:    pop 
L16:    goto L20 

        .stack stack_1 Object java/lang/Exception 
L19:    astore_0 

        .stack same 
L20:    ldc Class com/fs/starfarer/StarfarerLauncher 
L22:    invokestatic Method org/apache/log4j/Logger getLogger (Ljava/lang/Class;)Lorg/apache/log4j/Logger; 
L25:    putstatic Field com/fs/starfarer/StarfarerLauncher 'Ó00000' Lorg/apache/log4j/Logger; 
L28:    return 
L29:    
    .end code 
.end method 

.method public static o00000 : ()I 
    .code stack 7 locals 3 
        .catch org/lwjgl/LWJGLException from L0 to L52 using L60 
L0:     new org/lwjgl/opengl/PixelFormat 
L3:     dup 
L4:     bipush 32 
L6:     iconst_0 
L7:     bipush 24 
L9:     bipush 8 
L11:    iconst_0 
L12:    invokespecial Method org/lwjgl/opengl/PixelFormat <init> (IIIII)V 
L15:    astore_0 
L16:    new org/lwjgl/opengl/Pbuffer 
L19:    dup 
L20:    sipush 640 
L23:    sipush 400 
L26:    aload_0 
L27:    aconst_null 
L28:    invokespecial Method org/lwjgl/opengl/Pbuffer <init> (IILorg/lwjgl/opengl/PixelFormat;Lorg/lwjgl/opengl/Drawable;)V 
L31:    astore_1 
L32:    aload_1 
L33:    invokevirtual Method org/lwjgl/opengl/Pbuffer makeCurrent ()V 
L36:    invokestatic Method org/lwjgl/opengl/GLContext getCapabilities ()Lorg/lwjgl/opengl/ContextCapabilities; 
L39:    getfield Field org/lwjgl/opengl/ContextCapabilities GL_ARB_multisample Z 
L42:    istore_2 
L43:    iload_2 
L44:    ifeq L53 
L47:    ldc 36183 
L49:    invokestatic Method org/lwjgl/opengl/GL11 glGetInteger (I)I 
L52:    ireturn 
        .catch org/lwjgl/LWJGLException from L53 to L57 using L60 

        .stack append Object org/lwjgl/opengl/PixelFormat Object org/lwjgl/opengl/Pbuffer Integer 
L53:    aload_1 
L54:    invokevirtual Method org/lwjgl/opengl/Pbuffer destroy ()V 
L57:    goto L63 

        .stack full 
            locals 
            stack Object org/lwjgl/LWJGLException 
        .end stack 
L60:    astore_0 
L61:    iconst_0 
L62:    ireturn 

        .stack same 
L63:    iconst_0 
L64:    ireturn 
L65:    
    .end code 
.end method 

.method public <init> : ()V 
    .exceptions java/io/IOException org/json/JSONException java/awt/FontFormatException 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     iconst_0 
L2:     invokespecial Method com/fs/starfarer/StarfarerLauncher <init> (Z)V 
L5:     return 
L6:     
    .end code 
.end method 

.method public <init> : (Z)V 
    .exceptions java/io/IOException org/json/JSONException java/awt/FontFormatException 
    .code stack 7 locals 12 
L0:     aload_0 
L1:     invokespecial Method java/lang/Object <init> ()V 
L4:     aload_0 
L5:     new java/awt/Color 
L8:     dup 
L9:     bipush 70 
L11:    sipush 200 
L14:    sipush 255 
L17:    sipush 255 
L20:    invokespecial Method java/awt/Color <init> (IIII)V 
L23:    putfield Field com/fs/starfarer/StarfarerLauncher o00000 Ljava/awt/Color; 
L26:    ldc 'java.util.Arrays.useLegacyMergeSort' 
L28:    ldc 'true' 
L30:    invokestatic Method java/lang/System setProperty (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 
L33:    pop 
        .catch java/lang/Exception from L34 to L48 using L51 
L34:    new java/io/File 
L37:    dup 
L38:    invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'oÓ0000' ()Ljava/lang/String; 
L41:    invokespecial Method java/io/File <init> (Ljava/lang/String;)V 
L44:    invokevirtual Method java/io/File mkdir ()Z 
L47:    pop 
L48:    goto L52 

        .stack full 
            locals Object com/fs/starfarer/StarfarerLauncher Integer 
            stack Object java/lang/Exception 
        .end stack 
L51:    astore_2 

        .stack same 
L52:    iconst_0 
L53:    invokestatic Method javax/imageio/ImageIO setUseCache (Z)V 
        .catch java/lang/Throwable from L56 to L450 using L616 
L56:    iload_1 
L57:    ifne L247 
L60:    ldc Class com/fs/starfarer/StarfarerLauncher 
L62:    invokestatic Method org/apache/log4j/Logger getLogger (Ljava/lang/Class;)Lorg/apache/log4j/Logger; 
L65:    putstatic Field com/fs/starfarer/StarfarerLauncher 'Ó00000' Lorg/apache/log4j/Logger; 
L68:    getstatic Field com/fs/starfarer/StarfarerLauncher 'Ó00000' Lorg/apache/log4j/Logger; 
L71:    ldc 'Starting Starsector 0.98a-RC8 FR6.8 launcher'
L73:    invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L76:    getstatic Field com/fs/starfarer/StarfarerLauncher 'Ó00000' Lorg/apache/log4j/Logger; 
L79:    new java/lang/StringBuilder 
L82:    dup 
L83:    ldc 'Running in ' 
L85:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L88:    ldc 'user.dir' 
L90:    invokestatic Method java/lang/System getProperty (Ljava/lang/String;)Ljava/lang/String; 
L93:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L96:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L99:    invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L102:   getstatic Field com/fs/starfarer/StarfarerLauncher 'Ó00000' Lorg/apache/log4j/Logger; 
L105:   new java/lang/StringBuilder 
L108:   dup 
L109:   ldc 'OS: ' 
L111:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L114:   ldc 'os.name' 
L116:   invokestatic Method java/lang/System getProperty (Ljava/lang/String;)Ljava/lang/String; 
L119:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L122:   ldc ' ' 
L124:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L127:   ldc 'os.version' 
L129:   invokestatic Method java/lang/System getProperty (Ljava/lang/String;)Ljava/lang/String; 
L132:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L135:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L138:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L141:   getstatic Field com/fs/starfarer/StarfarerLauncher 'Ó00000' Lorg/apache/log4j/Logger; 
L144:   new java/lang/StringBuilder 
L147:   dup 
L148:   ldc 'Java version: ' 
L150:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L153:   ldc 'java.version' 
L155:   invokestatic Method java/lang/System getProperty (Ljava/lang/String;)Ljava/lang/String; 
L158:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L161:   ldc ' (' 
L163:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L166:   ldc 'sun.arch.data.model' 
L168:   invokestatic Method java/lang/System getProperty (Ljava/lang/String;)Ljava/lang/String; 
L171:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L174:   ldc '-bit)' 
L176:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L179:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L182:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L185:   invokestatic Method java/lang/Runtime getRuntime ()Ljava/lang/Runtime; 
L188:   invokevirtual Method java/lang/Runtime maxMemory ()J 
L191:   ldc2_w 1048576L 
L194:   ldiv 
L195:   lstore_2 
L196:   getstatic Field com/fs/starfarer/StarfarerLauncher 'Ó00000' Lorg/apache/log4j/Logger; 
L199:   new java/lang/StringBuilder 
L202:   dup 
L203:   ldc 'Max memory: ' 
L205:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L208:   lload_2 
L209:   invokevirtual Method java/lang/StringBuilder append (J)Ljava/lang/StringBuilder; 
L212:   ldc 'MB' 
L214:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L217:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L220:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L223:   invokestatic Method com/fs/util/C 'Ó00000' ()Lcom/fs/util/C; 
L226:   invokevirtual Method com/fs/util/C class ()V 
L229:   invokestatic Method com/fs/util/C 'Ó00000' ()Lcom/fs/util/C; 
L232:   ldc '../starfarer.res/res' 
L234:   invokevirtual Method com/fs/util/C class (Ljava/lang/String;)V 
L237:   invokestatic Method com/fs/util/C 'Ó00000' ()Lcom/fs/util/C; 
L240:   invokevirtual Method com/fs/util/C new ()V 
L243:   invokestatic Method com/fs/starfarer/launcher/ModManager getInstance ()Lcom/fs/starfarer/launcher/ModManager; 
L246:   pop 

        .stack same_extended 
L247:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'öÔ0000' ()V 
L250:   ldc 'cjkMode' 
L252:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings class (Ljava/lang/String;)Z 
L255:   putstatic Field com/fs/graphics/A/ooOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 'ÔÓ0000' Z 
L258:   ldc 'devMode' 
L260:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings class (Ljava/lang/String;)Z 
L263:   istore_2 
L264:   ldc 'resolutionOverride' 
L266:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings null (Ljava/lang/String;)Ljava/lang/String; 
L269:   astore_3 
L270:   ldc 'forceAspectRatio' 
L272:   fconst_0 
L273:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings o00000 (Ljava/lang/String;F)F 
L276:   fstore 4 
L278:   ldc 'startRes' 
L280:   invokestatic Method java/lang/System getProperty (Ljava/lang/String;)Ljava/lang/String; 
L283:   astore 5 
L285:   aload 5 
L287:   ifnull L301 
L290:   aload 5 
L292:   invokevirtual Method java/lang/String isEmpty ()Z 
L295:   ifne L301 
L298:   aload 5 
L300:   astore_3 

        .stack full 
            locals Object com/fs/starfarer/StarfarerLauncher Integer Integer Object java/lang/String Float Object java/lang/String 
            stack 
        .end stack 
L301:   ldc 'allowAnyJavaVersion' 
L303:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings class (Ljava/lang/String;)Z 
L306:   istore 6 
L308:   iload 6 
L310:   ifne L374 
L313:   ldc 'java.version' 
L315:   invokestatic Method java/lang/System getProperty (Ljava/lang/String;)Ljava/lang/String; 
L318:   astore 7 
L320:   aload 7 
L322:   ldc '1.7.' 
L324:   invokevirtual Method java/lang/String startsWith (Ljava/lang/String;)Z 
L327:   ifne L374 
L330:   new java/lang/RuntimeException 
L333:   dup 
L334:   new java/lang/StringBuilder 
L337:   dup 
L338:   ldc_w 'Java 7 is the only supported version of Java. Trying to use version: [' 
L341:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L344:   aload 7 
L346:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L349:   ldc_w '].\n\n' 
L352:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L355:   ldc_w 'See allowAnyJavaVersion in settings.json if you really want to do this, ' 
L358:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L361:   ldc_w "but it's probably a bad idea. Random crashes, incompatibility with other mods, etc may result." 
L364:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L367:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L370:   invokespecial Method java/lang/RuntimeException <init> (Ljava/lang/String;)V 
L373:   athrow 

        .stack append Integer 
L374:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'ØÕ0000' ()Z 
L377:   ifeq L451 
L380:   invokestatic Method com/fs/starfarer/launcher/ooOO 'Ó00000' ()Lcom/fs/starfarer/launcher/ooOO; 
L383:   invokevirtual Method com/fs/starfarer/launcher/ooOO 'Ö00000' ()Z 
L386:   istore 7 
L388:   iload 7 
L390:   ifeq L450 
L393:   aload 5 
L395:   ldc_w 'x' 
L398:   invokevirtual Method java/lang/String split (Ljava/lang/String;)[Ljava/lang/String; 
L401:   iconst_0 
L402:   aaload 
L403:   astore 8 
L405:   aload 5 
L407:   ldc_w 'x' 
L410:   invokevirtual Method java/lang/String split (Ljava/lang/String;)[Ljava/lang/String; 
L413:   iconst_1 
L414:   aaload 
L415:   astore 9 
L417:   ldc_w 'startFS' 
L420:   invokestatic Method java/lang/System getProperty (Ljava/lang/String;)Ljava/lang/String; 
L423:   invokestatic Method java/lang/Boolean parseBoolean (Ljava/lang/String;)Z 
L426:   istore 10 
L428:   ldc_w 'startSound' 
L431:   invokestatic Method java/lang/System getProperty (Ljava/lang/String;)Ljava/lang/String; 
L434:   invokestatic Method java/lang/Boolean parseBoolean (Ljava/lang/String;)Z 
L437:   istore 11 
L439:   iload 10 
L441:   iload 11 
L443:   aload 8 
L445:   aload 9 
L447:   invokestatic Method com/fs/starfarer/StarfarerLauncher o00000 (ZZLjava/lang/String;Ljava/lang/String;)V 

        .stack append Integer 
L450:   return 
        .catch java/lang/Throwable from L451 to L613 using L616 

        .stack chop 1 
L451:   ldc_w 'legacyLauncher' 
L454:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings class (Ljava/lang/String;)Z 
L457:   ifeq L531 
L460:   ldc_w 'queryMaxAASamples' 
L463:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings class (Ljava/lang/String;)Z 
L466:   ifeq L516 
L469:   invokestatic Method com/fs/starfarer/StarfarerLauncher o00000 ()I 
L472:   putstatic Field com/fs/starfarer/settings/StarfarerSettings 'öØ0000' I 
L475:   getstatic Field com/fs/starfarer/settings/StarfarerSettings 'öØ0000' I 
L478:   ldc_w 'maxAASamples' 
L481:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'ö00000' (Ljava/lang/String;)F 
L484:   f2i 
L485:   invokestatic Method java/lang/Math min (II)I 
L488:   putstatic Field com/fs/starfarer/settings/StarfarerSettings 'öØ0000' I 
L491:   getstatic Field com/fs/starfarer/StarfarerLauncher 'Ó00000' Lorg/apache/log4j/Logger; 
L494:   new java/lang/StringBuilder 
L497:   dup 
L498:   ldc_w 'Maximum anti-aliasing samples: ' 
L501:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L504:   getstatic Field com/fs/starfarer/settings/StarfarerSettings 'öØ0000' I 
L507:   invokevirtual Method java/lang/StringBuilder append (I)Ljava/lang/StringBuilder; 
L510:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L513:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 

        .stack same_extended 
L516:   aload_0 
L517:   aload_0 
L518:   iload_2 
L519:   aload_3 
L520:   fload 4 
L522:   invokestatic Method com/fs/starfarer/launcher/StarfarerLauncherUI o00000 (Ljava/awt/event/ActionListener;ZLjava/lang/String;F)Lcom/fs/starfarer/launcher/opengl/F; 
L525:   putfield Field com/fs/starfarer/StarfarerLauncher 'Ô00000' Lcom/fs/starfarer/launcher/opengl/F; 
L528:   goto L543 

        .stack same 
L531:   aload_0 
L532:   aload_0 
L533:   iload_2 
L534:   aload_3 
L535:   fload 4 
L537:   invokestatic Method com/fs/starfarer/launcher/opengl/GLLauncher createUI (Ljava/awt/event/ActionListener;ZLjava/lang/String;F)Lcom/fs/starfarer/launcher/opengl/F; 
L540:   putfield Field com/fs/starfarer/StarfarerLauncher 'Ô00000' Lcom/fs/starfarer/launcher/opengl/F; 

        .stack same 
L543:   invokestatic Method com/fs/starfarer/launcher/ooOO 'Ó00000' ()Lcom/fs/starfarer/launcher/ooOO; 
L546:   invokevirtual Method com/fs/starfarer/launcher/ooOO 'Ö00000' ()Z 
L549:   istore 7 
L551:   iload 7 
L553:   ifeq L565 
L556:   aload_0 
L557:   getfield Field com/fs/starfarer/StarfarerLauncher 'Ô00000' Lcom/fs/starfarer/launcher/opengl/F; 
L560:   invokeinterface InterfaceMethod com/fs/starfarer/launcher/opengl/F switchToLaunch ()V 1 

        .stack append Integer 
L565:   aload_0 
L566:   getfield Field com/fs/starfarer/StarfarerLauncher 'Ô00000' Lcom/fs/starfarer/launcher/opengl/F; 
L569:   invokeinterface InterfaceMethod com/fs/starfarer/launcher/opengl/F preCenter ()V 1 
L574:   aload_0 
L575:   invokevirtual Method com/fs/starfarer/StarfarerLauncher new ()V 
L578:   aload_0 
L579:   getfield Field com/fs/starfarer/StarfarerLauncher 'Ô00000' Lcom/fs/starfarer/launcher/opengl/F; 
L582:   invokeinterface InterfaceMethod com/fs/starfarer/launcher/opengl/F show ()V 1 
L587:   iload 7 
L589:   ifeq L604 
L592:   aload_0 
L593:   getfield Field com/fs/starfarer/StarfarerLauncher 'Ô00000' Lcom/fs/starfarer/launcher/opengl/F; 
L596:   invokeinterface InterfaceMethod com/fs/starfarer/launcher/opengl/F focusOnResComboBox ()V 1 
L601:   goto L651 

        .stack same 
L604:   aload_0 
L605:   getfield Field com/fs/starfarer/StarfarerLauncher 'Ô00000' Lcom/fs/starfarer/launcher/opengl/F; 
L608:   invokeinterface InterfaceMethod com/fs/starfarer/launcher/opengl/F focusOnFirstInputField ()V 1 
L613:   goto L651 

        .stack full 
            locals Object com/fs/starfarer/StarfarerLauncher Integer 
            stack Object java/lang/Throwable 
        .end stack 
L616:   astore_2 
L617:   getstatic Field com/fs/starfarer/StarfarerLauncher 'Ó00000' Lorg/apache/log4j/Logger; 
L620:   aload_2 
L621:   aload_2 
L622:   invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;Ljava/lang/Throwable;)V 
L625:   ldc_w 'Starsector 0.98a-RC8' 
L628:   new java/lang/StringBuilder 
L631:   dup 
L632:   ldc_w 'Fatal: ' 
L635:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L638:   aload_2 
L639:   invokevirtual Method java/lang/Throwable getMessage ()Ljava/lang/String; 
L642:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L645:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L648:   invokestatic Method org/lwjgl/Sys alert (Ljava/lang/String;Ljava/lang/String;)V 

        .stack same 
L651:   return 
L652:   
    .end code 
.end method 

.method private o00000 : (Ljavax/swing/JComponent;)V 
    .code stack 7 locals 2 
L0:     aload_1 
L1:     new java/awt/Color 
L4:     dup 
L5:     iconst_0 
L6:     iconst_0 
L7:     iconst_0 
L8:     iconst_0 
L9:     invokespecial Method java/awt/Color <init> (IIII)V 
L12:    invokevirtual Method javax/swing/JComponent setBackground (Ljava/awt/Color;)V 
L15:    aload_1 
L16:    iconst_0 
L17:    invokevirtual Method javax/swing/JComponent setOpaque (Z)V 
L20:    return 
L21:    
    .end code 
.end method 

.method private new : ()V 
    .code stack 3 locals 6 
L0:     invokestatic Method java/awt/Toolkit getDefaultToolkit ()Ljava/awt/Toolkit; 
L3:     invokevirtual Method java/awt/Toolkit getScreenSize ()Ljava/awt/Dimension; 
L6:     astore_1 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/StarfarerLauncher 'Ô00000' Lcom/fs/starfarer/launcher/opengl/F; 
L11:    invokeinterface InterfaceMethod com/fs/starfarer/launcher/opengl/F getWidth ()I 1 
L16:    istore_2 
L17:    aload_0 
L18:    getfield Field com/fs/starfarer/StarfarerLauncher 'Ô00000' Lcom/fs/starfarer/launcher/opengl/F; 
L21:    invokeinterface InterfaceMethod com/fs/starfarer/launcher/opengl/F getHeight ()I 1 
L26:    istore_3 
L27:    aload_1 
L28:    getfield Field java/awt/Dimension width I 
L31:    iload_2 
L32:    isub 
L33:    iconst_2 
L34:    idiv 
L35:    istore 4 
L37:    aload_1 
L38:    getfield Field java/awt/Dimension height I 
L41:    iload_3 
L42:    isub 
L43:    iconst_2 
L44:    idiv 
L45:    istore 5 
L47:    aload_0 
L48:    getfield Field com/fs/starfarer/StarfarerLauncher 'Ô00000' Lcom/fs/starfarer/launcher/opengl/F; 
L51:    iload 4 
L53:    iload 5 
L55:    invokeinterface InterfaceMethod com/fs/starfarer/launcher/opengl/F setLocation (II)V 3 
L60:    return 
L61:    
    .end code 
.end method 

.method public actionPerformed : (Ljava/awt/event/ActionEvent;)V 
    .code stack 9 locals 7 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/StarfarerLauncher 'Ô00000' Lcom/fs/starfarer/launcher/opengl/F; 
L4:     invokeinterface InterfaceMethod com/fs/starfarer/launcher/opengl/F dispose ()V 1 
L9:     aload_0 
L10:    getfield Field com/fs/starfarer/StarfarerLauncher 'Ô00000' Lcom/fs/starfarer/launcher/opengl/F; 
L13:    invokeinterface InterfaceMethod com/fs/starfarer/launcher/opengl/F getResolution ()Ljava/lang/String; 1 
L18:    astore_2 
L19:    aload_2 
L20:    ldc_w 'x' 
L23:    invokevirtual Method java/lang/String split (Ljava/lang/String;)[Ljava/lang/String; 
L26:    iconst_0 
L27:    aaload 
L28:    astore_3 
L29:    aload_2 
L30:    ldc_w 'x' 
L33:    invokevirtual Method java/lang/String split (Ljava/lang/String;)[Ljava/lang/String; 
L36:    iconst_1 
L37:    aaload 
L38:    astore 4 
L40:    aload_0 
L41:    getfield Field com/fs/starfarer/StarfarerLauncher 'Ô00000' Lcom/fs/starfarer/launcher/opengl/F; 
L44:    invokeinterface InterfaceMethod com/fs/starfarer/launcher/opengl/F isFullscreen ()Z 1 
L49:    istore 5 
L51:    aload_0 
L52:    getfield Field com/fs/starfarer/StarfarerLauncher 'Ô00000' Lcom/fs/starfarer/launcher/opengl/F; 
L55:    invokeinterface InterfaceMethod com/fs/starfarer/launcher/opengl/F isSoundOn ()Z 1 
L60:    istore 6 
L62:    new java/lang/Thread 
L65:    dup 
L66:    new com/fs/starfarer/StarfarerLauncher$1 
L69:    dup 
L70:    aload_0 
L71:    iload 5 
L73:    iload 6 
L75:    aload_3 
L76:    aload 4 
L78:    invokespecial Method com/fs/starfarer/StarfarerLauncher$1 <init> (Lcom/fs/starfarer/StarfarerLauncher;ZZLjava/lang/String;Ljava/lang/String;)V 
L81:    invokespecial Method java/lang/Thread <init> (Ljava/lang/Runnable;)V 
L84:    invokevirtual Method java/lang/Thread start ()V 
L87:    return 
L88:    
    .end code 
.end method 

.method public static o00000 : (ZZLjava/lang/String;Ljava/lang/String;)V 
    .code stack 6 locals 11 
        .catch java/lang/Throwable from L0 to L347 using L350 
L0:     new java/util/ArrayList 
L3:     dup 
L4:     invokestatic Method com/fs/starfarer/launcher/ModManager getInstance ()Lcom/fs/starfarer/launcher/ModManager; 
L7:     invokevirtual Method com/fs/starfarer/launcher/ModManager getEnabledMods ()Ljava/util/List; 
L10:    invokespecial Method java/util/ArrayList <init> (Ljava/util/Collection;)V 
L13:    astore 4 
L15:    aload 4 
L17:    invokeinterface InterfaceMethod java/util/List isEmpty ()Z 1 
L22:    ifne L289 
L25:    aload 4 
L27:    new com/fs/starfarer/StarfarerLauncher$2 
L30:    dup 
L31:    invokespecial Method com/fs/starfarer/StarfarerLauncher$2 <init> ()V 
L34:    invokestatic Method java/util/Collections sort (Ljava/util/List;Ljava/util/Comparator;)V 
L37:    getstatic Field com/fs/starfarer/StarfarerLauncher 'Ó00000' Lorg/apache/log4j/Logger; 
L40:    ldc_w 'Running with the following mods (in order of priority):' 
L43:    invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L46:    iconst_0 
L47:    istore 5 
L49:    iconst_0 
L50:    istore 6 
L52:    goto L131 

        .stack append Object java/util/List Integer Integer 
L55:    aload 4 
L57:    iload 6 
L59:    invokeinterface InterfaceMethod java/util/List get (I)Ljava/lang/Object; 2 
L64:    checkcast com/fs/starfarer/launcher/ModManager$ModSpec 
L67:    astore 7 
L69:    getstatic Field com/fs/starfarer/StarfarerLauncher 'Ó00000' Lorg/apache/log4j/Logger; 
L72:    ldc_w '    %s [id: %s] [version %s] (from %s)' 
L75:    iconst_4 
L76:    anewarray java/lang/Object 
L79:    dup 
L80:    iconst_0 
L81:    aload 7 
L83:    invokevirtual Method com/fs/starfarer/launcher/ModManager$ModSpec getName ()Ljava/lang/String; 
L86:    aastore 
L87:    dup 
L88:    iconst_1 
L89:    aload 7 
L91:    invokevirtual Method com/fs/starfarer/launcher/ModManager$ModSpec getId ()Ljava/lang/String; 
L94:    aastore 
L95:    dup 
L96:    iconst_2 
L97:    aload 7 
L99:    invokevirtual Method com/fs/starfarer/launcher/ModManager$ModSpec getVersion ()Ljava/lang/String; 
L102:   aastore 
L103:   dup 
L104:   iconst_3 
L105:   aload 7 
L107:   invokevirtual Method com/fs/starfarer/launcher/ModManager$ModSpec getPath ()Ljava/lang/String; 
L110:   aastore 
L111:   invokestatic Method java/lang/String format (Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String; 
L114:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L117:   aload 7 
L119:   invokevirtual Method com/fs/starfarer/launcher/ModManager$ModSpec isTotalConversion ()Z 
L122:   ifeq L128 
L125:   iconst_1 
L126:   istore 5 

        .stack same_extended 
L128:   iinc 6 1 

        .stack same 
L131:   iload 6 
L133:   aload 4 
L135:   invokeinterface InterfaceMethod java/util/List size ()I 1 
L140:   if_icmplt L55 
L143:   iload 5 
L145:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'ÓO0000' (Z)V 
L148:   aload 4 
L150:   invokeinterface InterfaceMethod java/util/List size ()I 1 
L155:   iconst_1 
L156:   isub 
L157:   istore 6 
L159:   goto L272 

        .stack same 
L162:   aload 4 
L164:   iload 6 
L166:   invokeinterface InterfaceMethod java/util/List get (I)Ljava/lang/Object; 2 
L171:   checkcast com/fs/starfarer/launcher/ModManager$ModSpec 
L174:   astore 7 
L176:   invokestatic Method com/fs/util/C 'Ó00000' ()Lcom/fs/util/C; 
L179:   aload 7 
L181:   invokevirtual Method com/fs/starfarer/launcher/ModManager$ModSpec getPath ()Ljava/lang/String; 
L184:   iconst_1 
L185:   aload 7 
L187:   invokevirtual Method com/fs/util/C o00000 (Ljava/lang/String;ZLjava/lang/Object;)V 
L190:   aload 7 
L192:   invokevirtual Method com/fs/starfarer/launcher/ModManager$ModSpec getJars ()Ljava/util/List; 
L195:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L200:   astore 9 
L202:   goto L259 

        .stack full 
            locals Integer Integer Object java/lang/String Object java/lang/String Object java/util/List Integer Integer Object com/fs/starfarer/launcher/ModManager$ModSpec Top Object java/util/Iterator 
            stack 
        .end stack 
L205:   aload 9 
L207:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L212:   checkcast java/lang/String 
L215:   astore 8 
L217:   new java/lang/StringBuilder 
L220:   dup 
L221:   aload 7 
L223:   invokevirtual Method com/fs/starfarer/launcher/ModManager$ModSpec getPath ()Ljava/lang/String; 
L226:   invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L229:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L232:   ldc_w '/' 
L235:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L238:   aload 8 
L240:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L243:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L246:   astore 10 
L248:   invokestatic Method com/fs/starfarer/loading/scripts/ScriptStore 'Õ00000' ()Ljava/util/List; 
L251:   aload 10 
L253:   invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L258:   pop 

        .stack same 
L259:   aload 9 
L261:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L266:   ifne L205 
L269:   iinc 6 -1 

        .stack full 
            locals Integer Integer Object java/lang/String Object java/lang/String Object java/util/List Integer Integer 
            stack 
        .end stack 
L272:   iload 6 
L274:   ifge L162 
L277:   getstatic Field com/fs/starfarer/StarfarerLauncher 'Ó00000' Lorg/apache/log4j/Logger; 
L280:   ldc_w 'Mod list finished' 
L283:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L286:   goto L298 

        .stack chop 2 
L289:   getstatic Field com/fs/starfarer/StarfarerLauncher 'Ó00000' Lorg/apache/log4j/Logger; 
L292:   ldc_w 'Running vanilla game with no mods.' 
L295:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 

        .stack same 
L298:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'öÔ0000' ()V 
L301:   iload_1 
L302:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings while (Z)V 
L305:   iload_1 
L306:   invokestatic Method com/fs/starfarer/D/M 'Ó00000' (Z)V 
L309:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'new.super' ()Lcom/fs/starfarer/api/SettingsAPI; 
L312:   invokestatic Method com/fs/starfarer/api/Global setSettings (Lcom/fs/starfarer/api/SettingsAPI;)V 
L315:   iconst_3 
L316:   anewarray java/lang/String 
L319:   dup 
L320:   iconst_0 
L321:   aload_2 
L322:   aastore 
L323:   dup 
L324:   iconst_1 
L325:   aload_3 
L326:   aastore 
L327:   dup 
L328:   iconst_2 
L329:   new java/lang/StringBuilder 
L332:   dup 
L333:   invokespecial Method java/lang/StringBuilder <init> ()V 
L336:   iload_0 
L337:   invokevirtual Method java/lang/StringBuilder append (Z)Ljava/lang/StringBuilder; 
L340:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L343:   aastore 
L344:   invokestatic Method com/fs/starfarer/combat/CombatMain main ([Ljava/lang/String;)V 
L347:   goto L389 

        .stack full 
            locals Integer Integer Object java/lang/String Object java/lang/String 
            stack Object java/lang/Throwable 
        .end stack 
L350:   astore 4 
L352:   getstatic Field com/fs/starfarer/StarfarerLauncher 'Ó00000' Lorg/apache/log4j/Logger; 
L355:   aload 4 
L357:   aload 4 
L359:   invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;Ljava/lang/Throwable;)V 
L362:   ldc_w 'Starsector 0.98a-RC8' 
L365:   new java/lang/StringBuilder 
L368:   dup 
L369:   ldc_w 'Fatal: ' 
L372:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L375:   aload 4 
L377:   invokevirtual Method java/lang/Throwable getMessage ()Ljava/lang/String; 
L380:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L383:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L386:   invokestatic Method org/lwjgl/Sys alert (Ljava/lang/String;Ljava/lang/String;)V 

        .stack same 
L389:   return 
L390:   
    .end code 
.end method 

.method public static main : ([Ljava/lang/String;)V 
    .exceptions java/lang/ClassNotFoundException java/lang/InstantiationException java/lang/IllegalAccessException javax/swing/UnsupportedLookAndFeelException java/io/IOException org/json/JSONException java/awt/FontFormatException 
    .code stack 1 locals 1 
L0:     new com/fs/starfarer/StarfarerLauncher 
L3:     invokespecial Method com/fs/starfarer/StarfarerLauncher <init> ()V 
L6:     return 
L7:     
    .end code 
.end method 
.innerclasses 
    com/fs/starfarer/StarfarerLauncher$1 [0] [0] 
    com/fs/starfarer/StarfarerLauncher$2 [0] [0] 
    com/fs/starfarer/StarfarerLauncher$o com/fs/starfarer/StarfarerLauncher o private static 
    com/fs/starfarer/launcher/ModManager$ModSpec com/fs/starfarer/launcher/ModManager ModSpec public static 
.end innerclasses 
.nestmembers com/fs/starfarer/StarfarerLauncher$1 com/fs/starfarer/StarfarerLauncher$2 com/fs/starfarer/StarfarerLauncher$o 
.end class 
