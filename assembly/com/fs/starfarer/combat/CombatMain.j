.version 61 0 
.class public super com/fs/starfarer/combat/CombatMain 
.super java/lang/Object 
.implements com/fs/util/DoNotObfuscate 
.field public static final CAMPAIGN_STATE_ID Ljava/lang/String; = 'campaign state in session' 
.field private static log Lorg/apache/log4j/Logger; 
.field public static volatile AL_DESTROYED Z 

.method static <clinit> : ()V 
    .code stack 1 locals 0 
L0:     ldc Class com/fs/starfarer/combat/CombatMain 
L2:     invokestatic Method org/apache/log4j/Logger getLogger (Ljava/lang/Class;)Lorg/apache/log4j/Logger; 
L5:     putstatic Field com/fs/starfarer/combat/CombatMain log Lorg/apache/log4j/Logger; 
L8:     iconst_0 
L9:     putstatic Field com/fs/starfarer/combat/CombatMain AL_DESTROYED Z 
L12:    return 
L13:    
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

.method public static main : ([Ljava/lang/String;)V 
    .exceptions java/lang/Throwable 
    .code stack 5 locals 23
        invokestatic Method com/genir/renderer/overrides/loading/FileLoader enterFastMode ()V
L0:     ldc 'localeOverride' 
L2:     invokestatic Method com/fs/starfarer/settings/StarfarerSettings null (Ljava/lang/String;)Ljava/lang/String; 
L5:     astore_1 
L6:     aload_1 
L7:     ifnull L36 
L10:    new java/util/Locale 
L13:    dup 
L14:    aload_1 
L15:    ldc '_' 
L17:    invokevirtual Method java/lang/String split (Ljava/lang/String;)[Ljava/lang/String; 
L20:    iconst_0 
L21:    aaload 
L22:    aload_1 
L23:    ldc '_' 
L25:    invokevirtual Method java/lang/String split (Ljava/lang/String;)[Ljava/lang/String; 
L28:    iconst_1 
L29:    aaload 
L30:    invokespecial Method java/util/Locale <init> (Ljava/lang/String;Ljava/lang/String;)V 
L33:    invokestatic Method java/util/Locale setDefault (Ljava/util/Locale;)V 

        .stack append Object java/lang/String 
L36:    invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'interface.new' ()Z 
L39:    ifeq L53 
L42:    ldc 'org.lwjgl.opengl.Window.undecorated' 
L44:    ldc 'true' 
L46:    invokestatic Method java/lang/System setProperty (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 
L49:    pop 
L50:    goto L61 

        .stack same 
L53:    ldc 'org.lwjgl.opengl.Window.undecorated' 
L55:    ldc 'false' 
L57:    invokestatic Method java/lang/System setProperty (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 
L60:    pop 

        .stack same 
L61:    aconst_null 
L62:    astore_2 
L63:    new java/lang/Thread 
L66:    dup 
L67:    new com/fs/starfarer/combat/CombatMain$1 
L70:    dup 
L71:    invokespecial Method com/fs/starfarer/combat/CombatMain$1 <init> ()V 
L74:    invokespecial Method java/lang/Thread <init> (Ljava/lang/Runnable;)V 
L77:    astore_3 
L78:    aload_3 
L79:    iconst_1 
L80:    invokevirtual Method java/lang/Thread setDaemon (Z)V 
L83:    aload_3 
L84:    invokevirtual Method java/lang/Thread start ()V 
L87:    invokestatic Method java/lang/Runtime getRuntime ()Ljava/lang/Runtime; 
L90:    new java/lang/Thread 
L93:    dup 
L94:    new com/fs/starfarer/combat/CombatMain$2 
L97:    dup 
L98:    invokespecial Method com/fs/starfarer/combat/CombatMain$2 <init> ()V 
L101:   invokespecial Method java/lang/Thread <init> (Ljava/lang/Runnable;)V 
L104:   invokevirtual Method java/lang/Runtime addShutdownHook (Ljava/lang/Thread;)V 
L107:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'OÓ0000' ()Z 
L110:   ifeq L125 
L113:   ldc 'profilerEnabled' 
L115:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings class (Ljava/lang/String;)Z 
L118:   ifeq L125 
L121:   iconst_1 
L122:   goto L126 

        .stack append Object java/lang/Throwable Object java/lang/Thread 
L125:   iconst_0 

        .stack stack_1 Integer 
L126:   invokestatic Method com/fs/profiler/Profiler o00000 (Z)V 
L129:   sipush 1024 
L132:   istore 4 
L134:   sipush 768 
L137:   istore 5 
L139:   iconst_0 
L140:   istore 6 
L142:   ldc 'alwaysUndecoratedAtFullscreen' 
L144:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings class (Ljava/lang/String;)Z 
L147:   istore 7 
L149:   aload_0 
L150:   arraylength 
L151:   iconst_3 
L152:   if_icmpne L237 
L155:   aload_0 
L156:   iconst_0 
L157:   aaload 
L158:   invokestatic Method java/lang/Integer parseInt (Ljava/lang/String;)I 
L161:   istore 4 
L163:   aload_0 
L164:   iconst_1 
L165:   aaload 
L166:   invokestatic Method java/lang/Integer parseInt (Ljava/lang/String;)I 
L169:   istore 5 
L171:   aload_0 
L172:   iconst_2 
L173:   aaload 
L174:   invokestatic Method java/lang/Boolean parseBoolean (Ljava/lang/String;)Z 
L177:   istore 6 
L179:   invokestatic Method java/awt/Toolkit getDefaultToolkit ()Ljava/awt/Toolkit; 
L182:   invokevirtual Method java/awt/Toolkit getScreenSize ()Ljava/awt/Dimension; 
L185:   getfield Field java/awt/Dimension width I 
L188:   istore 8 
L190:   invokestatic Method java/awt/Toolkit getDefaultToolkit ()Ljava/awt/Toolkit; 
L193:   invokevirtual Method java/awt/Toolkit getScreenSize ()Ljava/awt/Dimension; 
L196:   getfield Field java/awt/Dimension height I 
L199:   istore 9 
L201:   iload 6 
L203:   ifne L237 
L206:   iload 4 
L208:   iload 8 
L210:   if_icmplt L237 
L213:   iload 5 
L215:   iload 9 
L217:   if_icmplt L237 
L220:   iload 7 
L222:   ifeq L237 
L225:   ldc 'org.lwjgl.opengl.Window.undecorated' 
L227:   ldc 'true' 
L229:   invokestatic Method java/lang/System setProperty (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 
L232:   pop 
L233:   iconst_1 
L234:   putstatic Field com/fs/starfarer/settings/StarfarerSettings oO0000 Z 

        .stack full 
            locals Object [Ljava/lang/String; Object java/lang/String Object java/lang/Throwable Object java/lang/Thread Integer Integer Integer Integer 
            stack 
        .end stack 
L237:   iload 6 
L239:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'Ó00000' (Z)V 
L242:   invokestatic Method com/fs/starfarer/launcher/ooOO 'Ó00000' ()Lcom/fs/starfarer/launcher/ooOO; 
L245:   iload 4 
L247:   i2f 
L248:   iload 5 
L250:   i2f 
L251:   invokevirtual Method com/fs/starfarer/launcher/ooOO o00000 (FF)F 
L254:   invokestatic Method com/fs/starfarer/launcher/ooOO 'Ó00000' ()Lcom/fs/starfarer/launcher/ooOO; 
L257:   invokevirtual Method com/fs/starfarer/launcher/ooOO 'ÖO0000' ()F 
L260:   invokestatic Method java/lang/Math min (FF)F 
L263:   fstore 8 
L265:   ldc 'screenScaleOverride' 
L267:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'ö00000' (Ljava/lang/String;)F 
L270:   fstore 9 
L272:   fload 9 
L274:   fconst_0 
L275:   fcmpl 
L276:   ifle L283 
L279:   fload 9 
L281:   fstore 8 

        .stack append Float Float 
L283:   fload 8 
L285:   iconst_0 
L286:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings o00000 (FI)V 
L289:   getstatic Field com/fs/starfarer/combat/CombatMain log Lorg/apache/log4j/Logger; 
L292:   new java/lang/StringBuilder 
L295:   dup 
L296:   ldc 'Running with screen scale: ' 
L298:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L301:   fload 8 
L303:   invokevirtual Method java/lang/StringBuilder append (F)Ljava/lang/StringBuilder; 
L306:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L309:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L312:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'oÖ0000' ()Lcom/fs/starfarer/settings/A; 
L315:   astore 10 
L317:   aload 10 
L319:   iload 4 
L321:   invokevirtual Method com/fs/starfarer/settings/A new (I)V 
L324:   aload 10 
L326:   iload 5 
L328:   invokevirtual Method com/fs/starfarer/settings/A o00000 (I)V 
L331:   iload 4 
L333:   iload 5 
L335:   invokestatic Method com/fs/starfarer/util/K o00000 (II)V 
L338:   aload 10 
L340:   iload 4 
L342:   i2f 
L343:   invokevirtual Method com/fs/starfarer/settings/A 'Ø00000' (F)V 
L346:   aload 10 
L348:   iload 5 
L350:   i2f 
L351:   invokevirtual Method com/fs/starfarer/settings/A 'Ö00000' (F)V 
L354:   aload 10 
L356:   iload 4 
L358:   i2f 
L359:   getstatic Field com/fs/starfarer/settings/StarfarerSettings 'öÖ0000' F 
L362:   fdiv 
L363:   invokevirtual Method com/fs/starfarer/settings/A 'Ø00000' (F)V 
L366:   aload 10 
L368:   iload 5 
L370:   i2f 
L371:   getstatic Field com/fs/starfarer/settings/StarfarerSettings 'öÖ0000' F 
L374:   fdiv 
L375:   invokevirtual Method com/fs/starfarer/settings/A 'Ö00000' (F)V 
L378:   new com/fs/graphics/o0oO 
L381:   dup 
L382:   invokespecial Method com/fs/graphics/o0oO <init> ()V 
L385:   astore 11 
L387:   aload 11 
L389:   ldc 'Starsector 0.98a-RC8' 
L391:   invokevirtual Method com/fs/graphics/o0oO 'super' (Ljava/lang/String;)V 
L394:   aload 11 
L396:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'ÖÖ0000' ()Z 
L399:   invokevirtual Method com/fs/graphics/o0oO 'Ò00000' (Z)V 
L402:   aload 11 
L404:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'oÖ0000' ()Lcom/fs/starfarer/settings/A; 
L407:   invokevirtual Method com/fs/starfarer/settings/A new ()I 
L410:   invokevirtual Method com/fs/graphics/o0oO 'Ó00000' (I)V 
L413:   aload 11 
L415:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'oÖ0000' ()Lcom/fs/starfarer/settings/A; 
L418:   invokevirtual Method com/fs/starfarer/settings/A 'Ô00000' ()I 
L421:   invokevirtual Method com/fs/graphics/o0oO 'Õ00000' (I)V 
L424:   aload 11 
L426:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'float.super' ()Z 
L429:   invokevirtual Method com/fs/graphics/o0oO 'super' (Z)V 
L432:   aload 11 
L434:   iconst_0 
L435:   invokevirtual Method com/fs/graphics/o0oO 'Ó00000' (Z)V 
L438:   invokestatic Method com/fs/starfarer/launcher/ooOO 'Ó00000' ()Lcom/fs/starfarer/launcher/ooOO; 
L441:   invokevirtual Method com/fs/starfarer/launcher/ooOO oO0000 ()I 
L444:   istore 12 
L446:   ldc_w 'aaSamplesOverride' 
L449:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'ö00000' (Ljava/lang/String;)F 
L452:   f2i 
L453:   istore 13 
L455:   iload 13 
L457:   iflt L464 
L460:   iload 13 
L462:   istore 12 

        .stack full 
            locals Object [Ljava/lang/String; Object java/lang/String Object java/lang/Throwable Object java/lang/Thread Integer Integer Integer Integer Float Float Object com/fs/starfarer/settings/A Object com/fs/graphics/o0oO Integer Integer 
            stack 
        .end stack 
L464:   aload 11 
L466:   iload 12 
L468:   invokevirtual Method com/fs/graphics/o0oO 'Ò00000' (I)V 
L471:   fload 8 
L473:   iload 12 
L475:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings o00000 (FI)V 
L478:   getstatic Field com/fs/starfarer/combat/CombatMain log Lorg/apache/log4j/Logger; 
L481:   new java/lang/StringBuilder 
L484:   dup 
L485:   ldc_w 'Running with antialiasing samples: ' 
L488:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L491:   iload 12 
L493:   invokevirtual Method java/lang/StringBuilder append (I)Ljava/lang/StringBuilder; 
L496:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L499:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L502:   ldc_w 'refreshRateOverride' 
L505:   fconst_0 
L506:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings o00000 (Ljava/lang/String;F)F 
L509:   f2i 
L510:   istore 14 
L512:   iload 14 
L514:   ifle L524 
L517:   aload 11 
L519:   iload 14 
L521:   invokevirtual Method com/fs/graphics/o0oO 'Ö00000' (I)V 

        .stack append Integer 
L524:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'ÖO0000' ()Z 
L527:   ifeq L541 
L530:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'float.class' ()F 
L533:   f2i 
L534:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings null ()F 
L537:   f2i 
L538:   invokestatic Method org/lwjgl/opengl/Display setLocation (II)V 

        .stack same 
L541:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings OO0000 ()Z 
L544:   ifeq L589 
L547:   ldc_w 'graphics/ui/s_icon64.png' 
L550:   invokestatic Method com/fs/starfarer/loading/LoadingUtils void (Ljava/lang/String;)Ljava/io/InputStream; 
L553:   invokestatic Method javax/imageio/ImageIO read (Ljava/io/InputStream;)Ljava/awt/image/BufferedImage; 
L556:   astore 15 
L558:   aload 15 
L560:   checkcast java/awt/image/BufferedImage 
L563:   invokestatic Method com/fs/starfarer/combat/CombatMain convertImageData (Ljava/awt/image/BufferedImage;)Ljava/nio/ByteBuffer; 
L566:   astore 16 
L568:   iconst_1 
L569:   anewarray java/nio/ByteBuffer 
L572:   astore 17 
L574:   aload 17 
L576:   iconst_0 
L577:   aload 16 
L579:   aastore 
L580:   aload 17 
L582:   invokestatic Method org/lwjgl/opengl/Display setIcon ([Ljava/nio/ByteBuffer;)I 
L585:   pop 
L586:   goto L655 

        .stack same 
L589:   ldc_w 'graphics/ui/s_icon16.png' 
L592:   invokestatic Method com/fs/starfarer/loading/LoadingUtils void (Ljava/lang/String;)Ljava/io/InputStream; 
L595:   invokestatic Method javax/imageio/ImageIO read (Ljava/io/InputStream;)Ljava/awt/image/BufferedImage; 
L598:   astore 15 
L600:   ldc_w 'graphics/ui/s_icon32.png' 
L603:   invokestatic Method com/fs/starfarer/loading/LoadingUtils void (Ljava/lang/String;)Ljava/io/InputStream; 
L606:   invokestatic Method javax/imageio/ImageIO read (Ljava/io/InputStream;)Ljava/awt/image/BufferedImage; 
L609:   astore 16 
L611:   aload 15 
L613:   checkcast java/awt/image/BufferedImage 
L616:   invokestatic Method com/fs/starfarer/combat/CombatMain convertImageData (Ljava/awt/image/BufferedImage;)Ljava/nio/ByteBuffer; 
L619:   astore 17 
L621:   aload 16 
L623:   checkcast java/awt/image/BufferedImage 
L626:   invokestatic Method com/fs/starfarer/combat/CombatMain convertImageData (Ljava/awt/image/BufferedImage;)Ljava/nio/ByteBuffer; 
L629:   astore 18 
L631:   iconst_2 
L632:   anewarray java/nio/ByteBuffer 
L635:   astore 19 
L637:   aload 19 
L639:   iconst_0 
L640:   aload 17 
L642:   aastore 
L643:   aload 19 
L645:   iconst_1 
L646:   aload 18 
L648:   aastore 
L649:   aload 19 
L651:   invokestatic Method org/lwjgl/opengl/Display setIcon ([Ljava/nio/ByteBuffer;)I 
L654:   pop 

        .stack same_extended 
L655:   ldc_w 'resolutionOverride' 
L658:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings null (Ljava/lang/String;)Ljava/lang/String; 
L661:   astore 15 
L663:   sipush 1024 
L666:   istore 16 
L668:   sipush 768 
L671:   istore 17 
L673:   iconst_0 
L674:   istore 18 
L676:   aload 15 
L678:   ifnull L722 
L681:   aload 15 
L683:   invokevirtual Method java/lang/String isEmpty ()Z 
L686:   ifne L722 
L689:   aload 15 
L691:   ldc_w 'x' 
L694:   invokevirtual Method java/lang/String split (Ljava/lang/String;)[Ljava/lang/String; 
L697:   iconst_0 
L698:   aaload 
L699:   invokestatic Method java/lang/Integer parseInt (Ljava/lang/String;)I 
L702:   istore 16 
L704:   aload 15 
L706:   ldc_w 'x' 
L709:   invokevirtual Method java/lang/String split (Ljava/lang/String;)[Ljava/lang/String; 
L712:   iconst_1 
L713:   aaload 
L714:   invokestatic Method java/lang/Integer parseInt (Ljava/lang/String;)I 
L717:   istore 17 
L719:   iconst_1 
L720:   istore 18 

        .stack full 
            locals Object [Ljava/lang/String; Object java/lang/String Object java/lang/Throwable Object java/lang/Thread Integer Integer Integer Integer Float Float Object com/fs/starfarer/settings/A Object com/fs/graphics/o0oO Integer Integer Integer Object java/lang/String Integer Integer Integer 
            stack 
        .end stack 
L722:   aload 11 
L724:   iload 18 
L726:   iload 16 
L728:   iload 17 
L730:   invokevirtual Method com/fs/graphics/o0oO 'Ò00000' (ZII)V 
L733:   iconst_1 
L734:   invokestatic Method org/lwjgl/input/Keyboard enableRepeatEvents (Z)V 
L737:   invokestatic Method org/lwjgl/opengl/Display getWidth ()I 
L740:   istore 4 
L742:   invokestatic Method org/lwjgl/opengl/Display getHeight ()I 
L745:   istore 5 
L747:   iload 4 
L749:   putstatic Field com/fs/graphics/o0oO Object I 
L752:   iload 5 
L754:   putstatic Field com/fs/graphics/o0oO for I 
L757:   aload 10 
L759:   iload 4 
L761:   invokevirtual Method com/fs/starfarer/settings/A new (I)V 
L764:   aload 10 
L766:   iload 5 
L768:   invokevirtual Method com/fs/starfarer/settings/A o00000 (I)V 
L771:   aload 10 
L773:   iload 4 
L775:   i2f 
L776:   invokevirtual Method com/fs/starfarer/settings/A 'Ø00000' (F)V 
L779:   aload 10 
L781:   iload 5 
L783:   i2f 
L784:   invokevirtual Method com/fs/starfarer/settings/A 'Ö00000' (F)V 
L787:   aload 10 
L789:   iload 4 
L791:   i2f 
L792:   getstatic Field com/fs/starfarer/settings/StarfarerSettings 'öÖ0000' F 
L795:   fdiv 
L796:   invokevirtual Method com/fs/starfarer/settings/A 'Ø00000' (F)V 
L799:   aload 10 
L801:   iload 5 
L803:   i2f 
L804:   getstatic Field com/fs/starfarer/settings/StarfarerSettings 'öÖ0000' F 
L807:   fdiv 
L808:   invokevirtual Method com/fs/starfarer/settings/A 'Ö00000' (F)V 
L811:   iload 4 
L813:   iload 5 
L815:   invokestatic Method com/fs/starfarer/util/K o00000 (II)V 
L818:   iconst_0 
L819:   iconst_0 
L820:   iload 4 
L822:   i2f 
L823:   invokestatic Method org/lwjgl/opengl/Display getPixelScaleFactor ()F 
L826:   fmul 
L827:   f2i 
L828:   iload 5 
L830:   i2f 
L831:   invokestatic Method org/lwjgl/opengl/Display getPixelScaleFactor ()F 
L834:   fmul 
L835:   f2i 
L836:   invokestatic Method org/lwjgl/opengl/GL11 glViewport (IIII)V 
L839:   invokestatic Method com/fs/starfarer/return/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO Object ()V 
L842:   getstatic Field com/fs/starfarer/return/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$o 'Ó00000' Lcom/fs/starfarer/return/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$o; 
L845:   invokestatic Method com/fs/starfarer/return/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO o00000 (Lcom/fs/starfarer/return/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$o;)V 
L848:   invokestatic Method com/fs/starfarer/launcher/ooOO 'Ó00000' ()Lcom/fs/starfarer/launcher/ooOO; 
L851:   invokevirtual Method com/fs/starfarer/launcher/ooOO 'ö00000' ()V 
L854:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'õ00000' ()Z 
L857:   ifeq L921 
        .catch java/lang/Throwable from L860 to L886 using L889 
        .catch java/lang/Throwable from L63 to L1068 using L1071 
L860:   invokestatic Method sound/C 'ö00000' ()Lsound/C; 
L863:   sipush 200 
L866:   getstatic Field com/fs/starfarer/D/M 'Ô00000' I 
L869:   ldc_w 'maxFXSources' 
L872:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'ö00000' (Ljava/lang/String;)F 
L875:   f2i 
L876:   ldc_w 'maxUISources' 
L879:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'ö00000' (Ljava/lang/String;)F 
L882:   f2i 
L883:   invokevirtual Method sound/C o00000 (IIII)V 
L886:   goto L921 

        .stack stack_1_extended Object java/lang/Throwable 
L889:   astore 19 
L891:   iconst_0 
L892:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings while (Z)V 
L895:   ldc 'Starsector 0.98a-RC8' 
L897:   new java/lang/StringBuilder 
L900:   dup 
L901:   ldc_w 'Error in sound initialization, proceeding with sound disabled.\n\n' 
L904:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L907:   aload 19 
L909:   invokevirtual Method java/lang/Throwable getMessage ()Ljava/lang/String; 
L912:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L915:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L918:   invokestatic Method org/lwjgl/Sys alert (Ljava/lang/String;Ljava/lang/String;)V 

        .stack same 
L921:   new com/fs/starfarer/combat/CombatMain$3 
L924:   dup 
L925:   invokespecial Method com/fs/starfarer/combat/CombatMain$3 <init> ()V 
L928:   invokestatic Method com/fs/starfarer/api/Global setSoundPlayer (Lcom/fs/starfarer/api/SoundPlayerAPI;)V 
L931:   new com/fs/graphics/particle/TexturedLine 
L934:   getstatic Field com/fs/graphics/particle/TexturedLine$o 'super' Lcom/fs/graphics/particle/TexturedLine$o; 
L937:   invokespecial Method com/fs/graphics/particle/TexturedLine <init> (Lcom/fs/graphics/particle/TexturedLine$o;)V 
L940:   new com/fs/graphics/particle/TexturedLine 
L943:   getstatic Field com/fs/graphics/particle/TexturedLine$o 'Ó00000' Lcom/fs/graphics/particle/TexturedLine$o; 
L946:   invokespecial Method com/fs/graphics/particle/TexturedLine <init> (Lcom/fs/graphics/particle/TexturedLine$o;)V 
L949:   invokestatic Method com/fs/starfarer/launcher/ooOO 'Ó00000' ()Lcom/fs/starfarer/launcher/ooOO; 
L952:   invokevirtual Method com/fs/starfarer/launcher/ooOO 'ÔO0000' ()Ljava/util/prefs/Preferences; 
L955:   invokestatic Method com/fs/starfarer/campaign/accidents/A 'super' ()Ljava/lang/String; 
L958:   aconst_null 
L959:   invokevirtual Method java/util/prefs/Preferences get (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 
L962:   invokestatic Method com/fs/starfarer/campaign/accidents/A 'super' (Ljava/lang/String;)Z 
L965:   putstatic Field com/fs/starfarer/settings/StarfarerSettings 'ÖÒ0000' Z 
L968:   invokestatic Method com/fs/state/AppDriver getInstance ()Lcom/fs/state/AppDriver; 
L971:   astore 19 
L973:   aload 19 
L975:   new com/fs/starfarer/loading/ResourceLoaderState 
L978:   dup 
L979:   invokespecial Method com/fs/starfarer/loading/ResourceLoaderState <init> ()V 
L982:   invokevirtual Method com/fs/state/AppDriver addState (Lcom/fs/state/AppState;)V 
L985:   aload 19 
L987:   new com/fs/starfarer/title/TitleScreenState 
L990:   dup 
L991:   invokespecial Method com/fs/starfarer/title/TitleScreenState <init> ()V 
L994:   invokevirtual Method com/fs/state/AppDriver addState (Lcom/fs/state/AppState;)V 
L997:   new com/fs/starfarer/campaign/CampaignState 
L1000:  dup 
L1001:  invokespecial Method com/fs/starfarer/campaign/CampaignState <init> ()V 
L1004:  astore 20 
L1006:  aload 19 
L1008:  aload 20 
L1010:  invokevirtual Method com/fs/state/AppDriver addState (Lcom/fs/state/AppState;)V 
L1013:  aload 19 
L1015:  new com/fs/starfarer/combat/CombatState 
L1018:  dup 
L1019:  invokespecial Method com/fs/starfarer/combat/CombatState <init> ()V 
L1022:  invokevirtual Method com/fs/state/AppDriver addState (Lcom/fs/state/AppState;)V 
L1025:  aload 19 
L1027:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState STATE_ID Ljava/lang/String; 
L1030:  invokevirtual Method com/fs/state/AppDriver setStartState (Ljava/lang/String;)V 
L1033:  ldc_w 'writeInteractionTextToFile' 
L1036:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings class (Ljava/lang/String;)Z 
L1039:  ifeq L1048 
L1042:  getstatic Field com/fs/starfarer/ui/newui/o0Oo TEXT_OUTPUT_NAME Ljava/lang/String; 
L1045:  invokestatic Method com/fs/starfarer/loading/LoadingUtils 'Ò00000' (Ljava/lang/String;)V 

        .stack append Object com/fs/state/AppDriver Object com/fs/starfarer/campaign/CampaignState 
L1048:  aload 19 
L1050:  invokevirtual Method com/fs/state/AppDriver getSession ()Ljava/util/Map; 
L1053:  ldc 'campaign state in session' 
L1055:  aload 20 
L1057:  invokeinterface InterfaceMethod java/util/Map put (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 3 
L1062:  pop 
L1063:  aload 19 
L1065:  invokevirtual Method com/fs/state/AppDriver begin ()V 
L1068:  goto L1260 

        .stack full 
            locals Object [Ljava/lang/String; Object java/lang/String Object java/lang/Throwable 
            stack Object java/lang/Throwable 
        .end stack 
L1071:  astore_3 
L1072:  aload_3 
L1073:  astore_2 
        .catch java/lang/Throwable from L1074 to L1120 using L1123 
        .catch [0] from L63 to L1074 using L1166 
L1074:  invokestatic Method com/fs/graphics/util/GLListManager nextFrame ()V 
L1077:  invokestatic Method com/fs/graphics/util/GLListManager nextFrame ()V 
L1080:  invokestatic Method com/fs/graphics/util/GLListManager nextFrame ()V 
L1083:  invokestatic Method com/fs/starfarer/D/return 'ø00000' ()V 
L1086:  invokestatic Method sound/H 'Ò00000' ()Lsound/H; 
L1089:  iconst_0 
L1090:  invokevirtual Method sound/H o00000 (I)V 
L1093:  invokestatic Method sound/H 'Ò00000' ()Lsound/H; 
L1096:  invokevirtual Method sound/H return ()Ljava/lang/Thread; 
L1099:  invokevirtual Method java/lang/Thread isAlive ()Z 
L1102:  ifeq L1117 
L1105:  invokestatic Method sound/H 'Ò00000' ()Lsound/H; 
L1108:  invokevirtual Method sound/H return ()Ljava/lang/Thread; 
L1111:  ldc2_w 1000L 
L1114:  invokevirtual Method java/lang/Thread join (J)V 

        .stack same 
L1117:  invokestatic Method org/lwjgl/opengl/Display destroy ()V 
L1120:  goto L1144 

        .stack stack_1 Object java/lang/Throwable 
L1123:  astore 22 
L1125:  getstatic Field com/fs/starfarer/combat/CombatMain log Lorg/apache/log4j/Logger; 
L1128:  ldc_w 'Error cleaning up' 
L1131:  invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;)V 
L1134:  getstatic Field com/fs/starfarer/combat/CombatMain log Lorg/apache/log4j/Logger; 
L1137:  aload 22 
L1139:  aload 22 
L1141:  invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;Ljava/lang/Throwable;)V 

        .stack same 
L1144:  getstatic Field com/fs/starfarer/settings/StarfarerSettings 'Öo0000' Lcom/fs/starfarer/settings/StarfarerSettings$Oo; 
L1147:  ifnull L1349 
L1150:  getstatic Field com/fs/starfarer/settings/StarfarerSettings 'Öo0000' Lcom/fs/starfarer/settings/StarfarerSettings$Oo; 
L1153:  iconst_1 
L1154:  invokevirtual Method com/fs/starfarer/settings/StarfarerSettings$Oo 'super' (Z)V 
L1157:  getstatic Field com/fs/starfarer/settings/StarfarerSettings 'Öo0000' Lcom/fs/starfarer/settings/StarfarerSettings$Oo; 
L1160:  invokevirtual Method com/fs/starfarer/settings/StarfarerSettings$Oo join ()V 
L1163:  goto L1349 

        .stack stack_1 Object java/lang/Throwable 
L1166:  astore 21 
        .catch java/lang/Throwable from L1168 to L1214 using L1217 
L1168:  invokestatic Method com/fs/graphics/util/GLListManager nextFrame ()V 
L1171:  invokestatic Method com/fs/graphics/util/GLListManager nextFrame ()V 
L1174:  invokestatic Method com/fs/graphics/util/GLListManager nextFrame ()V 
L1177:  invokestatic Method com/fs/starfarer/D/return 'ø00000' ()V 
L1180:  invokestatic Method sound/H 'Ò00000' ()Lsound/H; 
L1183:  iconst_0 
L1184:  invokevirtual Method sound/H o00000 (I)V 
L1187:  invokestatic Method sound/H 'Ò00000' ()Lsound/H; 
L1190:  invokevirtual Method sound/H return ()Ljava/lang/Thread; 
L1193:  invokevirtual Method java/lang/Thread isAlive ()Z 
L1196:  ifeq L1211 
L1199:  invokestatic Method sound/H 'Ò00000' ()Lsound/H; 
L1202:  invokevirtual Method sound/H return ()Ljava/lang/Thread; 
L1205:  ldc2_w 1000L 
L1208:  invokevirtual Method java/lang/Thread join (J)V 

        .stack full 
            locals Object [Ljava/lang/String; Object java/lang/String Object java/lang/Throwable Top Top Top Top Top Top Top Top Top Top Top Top Top Top Top Top Top Top Object java/lang/Throwable 
            stack 
        .end stack 
L1211:  invokestatic Method org/lwjgl/opengl/Display destroy ()V 
L1214:  goto L1238 

        .stack stack_1 Object java/lang/Throwable 
L1217:  astore 22 
L1219:  getstatic Field com/fs/starfarer/combat/CombatMain log Lorg/apache/log4j/Logger; 
L1222:  ldc_w 'Error cleaning up' 
L1225:  invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;)V 
L1228:  getstatic Field com/fs/starfarer/combat/CombatMain log Lorg/apache/log4j/Logger; 
L1231:  aload 22 
L1233:  aload 22 
L1235:  invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;Ljava/lang/Throwable;)V 

        .stack same 
L1238:  getstatic Field com/fs/starfarer/settings/StarfarerSettings 'Öo0000' Lcom/fs/starfarer/settings/StarfarerSettings$Oo; 
L1241:  ifnull L1257 
L1244:  getstatic Field com/fs/starfarer/settings/StarfarerSettings 'Öo0000' Lcom/fs/starfarer/settings/StarfarerSettings$Oo; 
L1247:  iconst_1 
L1248:  invokevirtual Method com/fs/starfarer/settings/StarfarerSettings$Oo 'super' (Z)V 
L1251:  getstatic Field com/fs/starfarer/settings/StarfarerSettings 'Öo0000' Lcom/fs/starfarer/settings/StarfarerSettings$Oo; 
L1254:  invokevirtual Method com/fs/starfarer/settings/StarfarerSettings$Oo join ()V 

        .stack same 
L1257:  aload 21 
L1259:  athrow 
        .catch java/lang/Throwable from L1260 to L1306 using L1309 

        .stack full 
            locals Object [Ljava/lang/String; Object java/lang/String Object java/lang/Throwable 
            stack 
        .end stack 
L1260:  invokestatic Method com/fs/graphics/util/GLListManager nextFrame ()V 
L1263:  invokestatic Method com/fs/graphics/util/GLListManager nextFrame ()V 
L1266:  invokestatic Method com/fs/graphics/util/GLListManager nextFrame ()V 
L1269:  invokestatic Method com/fs/starfarer/D/return 'ø00000' ()V 
L1272:  invokestatic Method sound/H 'Ò00000' ()Lsound/H; 
L1275:  iconst_0 
L1276:  invokevirtual Method sound/H o00000 (I)V 
L1279:  invokestatic Method sound/H 'Ò00000' ()Lsound/H; 
L1282:  invokevirtual Method sound/H return ()Ljava/lang/Thread; 
L1285:  invokevirtual Method java/lang/Thread isAlive ()Z 
L1288:  ifeq L1303 
L1291:  invokestatic Method sound/H 'Ò00000' ()Lsound/H; 
L1294:  invokevirtual Method sound/H return ()Ljava/lang/Thread; 
L1297:  ldc2_w 1000L 
L1300:  invokevirtual Method java/lang/Thread join (J)V 

        .stack same 
L1303:  invokestatic Method org/lwjgl/opengl/Display destroy ()V 
L1306:  goto L1330 

        .stack stack_1 Object java/lang/Throwable 
L1309:  astore 22 
L1311:  getstatic Field com/fs/starfarer/combat/CombatMain log Lorg/apache/log4j/Logger; 
L1314:  ldc_w 'Error cleaning up' 
L1317:  invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;)V 
L1320:  getstatic Field com/fs/starfarer/combat/CombatMain log Lorg/apache/log4j/Logger; 
L1323:  aload 22 
L1325:  aload 22 
L1327:  invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;Ljava/lang/Throwable;)V 

        .stack same 
L1330:  getstatic Field com/fs/starfarer/settings/StarfarerSettings 'Öo0000' Lcom/fs/starfarer/settings/StarfarerSettings$Oo; 
L1333:  ifnull L1349 
L1336:  getstatic Field com/fs/starfarer/settings/StarfarerSettings 'Öo0000' Lcom/fs/starfarer/settings/StarfarerSettings$Oo; 
L1339:  iconst_1 
L1340:  invokevirtual Method com/fs/starfarer/settings/StarfarerSettings$Oo 'super' (Z)V 
L1343:  getstatic Field com/fs/starfarer/settings/StarfarerSettings 'Öo0000' Lcom/fs/starfarer/settings/StarfarerSettings$Oo; 
L1346:  invokevirtual Method com/fs/starfarer/settings/StarfarerSettings$Oo join ()V 

        .stack same 
L1349:  invokestatic Method com/fs/profiler/Profiler return ()V 
L1352:  aload_2 
L1353:  ifnull L1482 
L1356:  aload_2 
L1357:  instanceof com/fs/starfarer/super 
L1360:  ifne L1482 
L1363:  getstatic Field com/fs/starfarer/combat/CombatMain log Lorg/apache/log4j/Logger; 
L1366:  aload_2 
L1367:  aload_2 
L1368:  invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;Ljava/lang/Throwable;)V 
L1371:  new java/lang/StringBuilder 
L1374:  dup 
L1375:  aload_2 
L1376:  invokevirtual Method java/lang/Throwable getMessage ()Ljava/lang/String; 
L1379:  invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L1382:  invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L1385:  ldc_w '\n' 
L1388:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L1391:  invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L1394:  astore_3 
L1395:  aload_2 
L1396:  invokevirtual Method java/lang/Throwable getCause ()Ljava/lang/Throwable; 
L1399:  ifnull L1439 
L1402:  new java/lang/StringBuilder 
L1405:  dup 
L1406:  aload_3 
L1407:  invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L1410:  invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L1413:  ldc_w 'Cause: ' 
L1416:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L1419:  aload_2 
L1420:  invokevirtual Method java/lang/Throwable getCause ()Ljava/lang/Throwable; 
L1423:  invokevirtual Method java/lang/Throwable getMessage ()Ljava/lang/String; 
L1426:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L1429:  ldc_w '\n' 
L1432:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L1435:  invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L1438:  astore_3 

        .stack append Object java/lang/String 
L1439:  new java/lang/StringBuilder 
L1442:  dup 
L1443:  aload_3 
L1444:  invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L1447:  invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L1450:  ldc_w 'Check starsector.log for more info.' 
L1453:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L1456:  invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L1459:  astore_3 
L1460:  ldc 'Starsector 0.98a-RC8' 
L1462:  new java/lang/StringBuilder 
L1465:  dup 
L1466:  ldc_w 'Fatal: ' 
L1469:  invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L1472:  aload_3 
L1473:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L1476:  invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L1479:  invokestatic Method org/lwjgl/Sys alert (Ljava/lang/String;Ljava/lang/String;)V 

        .stack chop 1 
L1482:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'õ00000' ()Z 
L1485:  ifeq L1494 
L1488:  invokestatic Method sound/C 'ö00000' ()Lsound/C; 
L1491:  invokevirtual Method sound/C 'Ô00000' ()V 

        .stack same 
L1494:  aload_2 
L1495:  ifnull L1512 
L1498:  aload_2 
L1499:  instanceof com/fs/starfarer/super 
L1502:  ifne L1512 
L1505:  iconst_1 
L1506:  invokestatic Method java/lang/System exit (I)V 
L1509:  goto L1516 

        .stack same 
L1512:  iconst_0 
L1513:  invokestatic Method java/lang/System exit (I)V 

        .stack same 
L1516:  return 
L1517:  
    .end code 
.end method 

.method public static convertImageData : (Ljava/awt/image/BufferedImage;)Ljava/nio/ByteBuffer; 
    .code stack 4 locals 11 
L0:     aconst_null 
L1:     astore_1 
L2:     iconst_2 
L3:     istore_2 
L4:     iconst_2 
L5:     istore_3 
L6:     goto L13 

        .stack append Object java/nio/ByteBuffer Integer Integer 
L9:     iload_2 
L10:    iconst_2 
L11:    imul 
L12:    istore_2 

        .stack same 
L13:    iload_2 
L14:    aload_0 
L15:    invokevirtual Method java/awt/image/BufferedImage getWidth ()I 
L18:    if_icmplt L9 
L21:    goto L28 

        .stack same 
L24:    iload_3 
L25:    iconst_2 
L26:    imul 
L27:    istore_3 

        .stack same 
L28:    iload_3 
L29:    aload_0 
L30:    invokevirtual Method java/awt/image/BufferedImage getHeight ()I 
L33:    if_icmplt L24 
L36:    aload_0 
L37:    invokevirtual Method java/awt/image/BufferedImage getWidth ()I 
L40:    istore 4 
L42:    aload_0 
L43:    invokevirtual Method java/awt/image/BufferedImage getHeight ()I 
L46:    istore 5 
L48:    aload_0 
L49:    invokevirtual Method java/awt/image/BufferedImage getData ()Ljava/awt/image/Raster; 
L52:    astore 6 
L54:    aload_0 
L55:    invokevirtual Method java/awt/image/BufferedImage getColorModel ()Ljava/awt/image/ColorModel; 
L58:    invokevirtual Method java/awt/image/ColorModel hasAlpha ()Z 
L61:    ifeq L217 
L64:    iload_2 
L65:    iload_3 
L66:    imul 
L67:    iconst_4 
L68:    imul 
L69:    invokestatic Method org/lwjgl/BufferUtils createByteBuffer (I)Ljava/nio/ByteBuffer; 
L72:    astore_1 
L73:    aload_1 
L74:    iconst_0 
L75:    invokevirtual Method java/nio/ByteBuffer position (I)Ljava/nio/ByteBuffer; 
L78:    pop 
L79:    aload_1 
L80:    aload_1 
L81:    invokevirtual Method java/nio/ByteBuffer capacity ()I 
L84:    invokevirtual Method java/nio/ByteBuffer limit (I)Ljava/nio/ByteBuffer; 
L87:    pop 
L88:    iconst_4 
L89:    newarray int 
L91:    astore 7 
L93:    iconst_0 
L94:    istore 8 
L96:    goto L207 

        .stack full 
            locals Object java/awt/image/BufferedImage Object java/nio/ByteBuffer Integer Integer Integer Integer Object java/awt/image/Raster Object [I Integer 
            stack 
        .end stack 
L99:    iconst_0 
L100:   istore 9 
L102:   goto L197 

        .stack append Integer 
L105:   aload 6 
L107:   iload 9 
L109:   iload 8 
L111:   aload 7 
L113:   invokevirtual Method java/awt/image/Raster getPixel (II[I)[I 
L116:   pop 
L117:   aload 7 
L119:   iconst_3 
L120:   iaload 
L121:   ifne L127 
L124:   goto L194 

        .stack same 
L127:   iload 8 
L129:   iload_2 
L130:   imul 
L131:   iload 9 
L133:   iadd 
L134:   iconst_4 
L135:   imul 
L136:   istore 10 
L138:   aload_1 
L139:   iload 10 
L141:   iconst_0 
L142:   iadd 
L143:   aload 7 
L145:   iconst_0 
L146:   iaload 
L147:   i2b 
L148:   invokevirtual Method java/nio/ByteBuffer put (IB)Ljava/nio/ByteBuffer; 
L151:   pop 
L152:   aload_1 
L153:   iload 10 
L155:   iconst_1 
L156:   iadd 
L157:   aload 7 
L159:   iconst_1 
L160:   iaload 
L161:   i2b 
L162:   invokevirtual Method java/nio/ByteBuffer put (IB)Ljava/nio/ByteBuffer; 
L165:   pop 
L166:   aload_1 
L167:   iload 10 
L169:   iconst_2 
L170:   iadd 
L171:   aload 7 
L173:   iconst_2 
L174:   iaload 
L175:   i2b 
L176:   invokevirtual Method java/nio/ByteBuffer put (IB)Ljava/nio/ByteBuffer; 
L179:   pop 
L180:   aload_1 
L181:   iload 10 
L183:   iconst_3 
L184:   iadd 
L185:   aload 7 
L187:   iconst_3 
L188:   iaload 
L189:   i2b 
L190:   invokevirtual Method java/nio/ByteBuffer put (IB)Ljava/nio/ByteBuffer; 
L193:   pop 

        .stack same_extended 
L194:   iinc 9 1 

        .stack same 
L197:   iload 9 
L199:   iload 4 
L201:   if_icmplt L105 
L204:   iinc 8 1 

        .stack chop 1 
L207:   iload 8 
L209:   iload 5 
L211:   if_icmplt L99 
L214:   goto L343 

        .stack chop 2 
L217:   iload_2 
L218:   iload_3 
L219:   imul 
L220:   iconst_3 
L221:   imul 
L222:   invokestatic Method org/lwjgl/BufferUtils createByteBuffer (I)Ljava/nio/ByteBuffer; 
L225:   astore_1 
L226:   aload_1 
L227:   iconst_0 
L228:   invokevirtual Method java/nio/ByteBuffer position (I)Ljava/nio/ByteBuffer; 
L231:   pop 
L232:   aload_1 
L233:   aload_1 
L234:   invokevirtual Method java/nio/ByteBuffer capacity ()I 
L237:   invokevirtual Method java/nio/ByteBuffer limit (I)Ljava/nio/ByteBuffer; 
L240:   pop 
L241:   iconst_3 
L242:   newarray int 
L244:   astore 7 
L246:   iconst_0 
L247:   istore 8 
L249:   goto L336 

        .stack append Object [I Integer 
L252:   iconst_0 
L253:   istore 9 
L255:   goto L326 

        .stack append Integer 
L258:   aload 6 
L260:   iload 9 
L262:   iload 8 
L264:   aload 7 
L266:   invokevirtual Method java/awt/image/Raster getPixel (II[I)[I 
L269:   pop 
L270:   iload 8 
L272:   iload_2 
L273:   imul 
L274:   iload 9 
L276:   iadd 
L277:   iconst_3 
L278:   imul 
L279:   istore 10 
L281:   aload_1 
L282:   iload 10 
L284:   iconst_0 
L285:   iadd 
L286:   aload 7 
L288:   iconst_0 
L289:   iaload 
L290:   i2b 
L291:   invokevirtual Method java/nio/ByteBuffer put (IB)Ljava/nio/ByteBuffer; 
L294:   pop 
L295:   aload_1 
L296:   iload 10 
L298:   iconst_1 
L299:   iadd 
L300:   aload 7 
L302:   iconst_1 
L303:   iaload 
L304:   i2b 
L305:   invokevirtual Method java/nio/ByteBuffer put (IB)Ljava/nio/ByteBuffer; 
L308:   pop 
L309:   aload_1 
L310:   iload 10 
L312:   iconst_2 
L313:   iadd 
L314:   aload 7 
L316:   iconst_2 
L317:   iaload 
L318:   i2b 
L319:   invokevirtual Method java/nio/ByteBuffer put (IB)Ljava/nio/ByteBuffer; 
L322:   pop 
L323:   iinc 9 1 

        .stack same_extended 
L326:   iload 9 
L328:   iload 4 
L330:   if_icmplt L258 
L333:   iinc 8 1 

        .stack chop 1 
L336:   iload 8 
L338:   iload 5 
L340:   if_icmplt L252 

        .stack chop 2 
L343:   aload_1 
L344:   areturn 
L345:   
    .end code 
.end method 
.innerclasses 
    com/fs/graphics/particle/TexturedLine$o com/fs/graphics/particle/TexturedLine o public static final enum 
    com/fs/starfarer/combat/CombatMain$1 [0] [0] 
    com/fs/starfarer/combat/CombatMain$2 [0] [0] 
    com/fs/starfarer/combat/CombatMain$3 [0] [0] 
    com/fs/starfarer/return/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$o com/fs/starfarer/return/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO o public static final enum 
    com/fs/starfarer/settings/StarfarerSettings$Oo com/fs/starfarer/settings/StarfarerSettings Oo public static 
.end innerclasses 
.nestmembers com/fs/starfarer/combat/CombatMain$1 com/fs/starfarer/combat/CombatMain$2 com/fs/starfarer/combat/CombatMain$3 com/fs/starfarer/combat/CombatMain$3$1 com/fs/starfarer/combat/CombatMain$3$2 
.end class 
