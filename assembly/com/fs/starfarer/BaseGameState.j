.version 61 0 
.class public super abstract com/fs/starfarer/BaseGameState 
.super java/lang/Object 
.implements com/fs/state/AppState 
.field private fader Lcom/fs/graphics/util/Fader; 
.field private fps Lcom/fs/graphics/util/A; 
.field private nextState Ljava/lang/String; 
.field private launcherMode Z 

.method public <init> : ()V 
    .code stack 6 locals 1 
L0:     aload_0 
L1:     invokespecial Method java/lang/Object <init> ()V 
L4:     aload_0 
L5:     new com/fs/graphics/util/Fader 
L8:     dup 
L9:     fconst_0 
L10:    ldc +0.25f 
L12:    ldc +0.25f 
L14:    invokespecial Method com/fs/graphics/util/Fader <init> (FFF)V 
L17:    putfield Field com/fs/starfarer/BaseGameState fader Lcom/fs/graphics/util/Fader; 
L20:    aload_0 
L21:    aconst_null 
L22:    putfield Field com/fs/starfarer/BaseGameState nextState Ljava/lang/String; 
L25:    aload_0 
L26:    iconst_0 
L27:    putfield Field com/fs/starfarer/BaseGameState launcherMode Z 
L30:    return 
L31:    
    .end code 
.end method 

.method protected abstract prepare : ()V 
.end method 

.method public abstract render : (F)V 
.end method 

.method protected abstract advance : (FLcom/fs/starfarer/util/A/new;)V 
.end method 

.method protected abstract processInput : (Lcom/fs/starfarer/util/A/new;F)V 
.end method 

.method protected abstract onStateTransition : (Ljava/lang/String;)V 
.end method 

.method public goToState : (Ljava/lang/String;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/fs/starfarer/BaseGameState nextState Ljava/lang/String; 
L5:     aload_0 
L6:     getfield Field com/fs/starfarer/BaseGameState fader Lcom/fs/graphics/util/Fader; 
L9:     invokevirtual Method com/fs/graphics/util/Fader fadeOut ()V 
L12:    return 
L13:    
    .end code 
.end method 

.method public getFps : ()Lcom/fs/graphics/util/A; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/BaseGameState fps Lcom/fs/graphics/util/A; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public getFader : ()Lcom/fs/graphics/util/Fader; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/BaseGameState fader Lcom/fs/graphics/util/Fader; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public isTransitioningToNextState : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/BaseGameState nextState Ljava/lang/String; 
L4:     ifnull L9 
L7:     iconst_1 
L8:     ireturn 

        .stack same 
L9:     iconst_0 
L10:    ireturn 
L11:    
    .end code 
.end method 

.method public isLauncherMode : ()Z 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/BaseGameState launcherMode Z 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method public setLauncherMode : (Z)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     iload_1 
L2:     putfield Field com/fs/starfarer/BaseGameState launcherMode Z 
L5:     return 
L6:     
    .end code 
.end method 

.method public traverse : ()Ljava/lang/String; 
    .exceptions java/lang/Exception 
    .code stack 7 locals 20 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/BaseGameState isLauncherMode ()Z 
L4:     ifne L80 
L7:     aload_0 
L8:     new com/fs/graphics/util/A 
L11:    dup 
L12:    invokespecial Method com/fs/graphics/util/A <init> ()V 
L15:    putfield Field com/fs/starfarer/BaseGameState fps Lcom/fs/graphics/util/A; 
L18:    aload_0 
L19:    getfield Field com/fs/starfarer/BaseGameState fps Lcom/fs/graphics/util/A; 
L22:    getstatic Field com/fs/starfarer/settings/StarfarerSettings 'float.new' Ljava/lang/String; 
L25:    invokevirtual Method com/fs/graphics/util/A 'super' (Ljava/lang/String;)V 
L28:    aload_0 
L29:    getfield Field com/fs/starfarer/BaseGameState fps Lcom/fs/graphics/util/A; 
L32:    invokevirtual Method com/fs/graphics/util/A 'super' ()Lcom/fs/graphics/A/ooOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO; 
L35:    iconst_1 
L36:    invokevirtual Method com/fs/graphics/A/ooOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO Object (Z)V 
L39:    aload_0 
L40:    getfield Field com/fs/starfarer/BaseGameState fps Lcom/fs/graphics/util/A; 
L43:    invokevirtual Method com/fs/graphics/util/A 'super' ()Lcom/fs/graphics/A/ooOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO; 
L46:    getstatic Field java/awt/Color black Ljava/awt/Color; 
L49:    invokevirtual Method com/fs/graphics/A/ooOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO o00000 (Ljava/awt/Color;)V 
L52:    aload_0 
L53:    getfield Field com/fs/starfarer/BaseGameState fps Lcom/fs/graphics/util/A; 
L56:    invokevirtual Method com/fs/graphics/util/A 'super' ()Lcom/fs/graphics/A/ooOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO; 
L59:    new java/awt/Color 
L62:    dup 
L63:    sipush 255 
L66:    sipush 255 
L69:    sipush 255 
L72:    bipush 100 
L74:    invokespecial Method java/awt/Color <init> (IIII)V 
L77:    invokevirtual Method com/fs/graphics/A/ooOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 'Ò00000' (Ljava/awt/Color;)V 

        .stack same_extended 
L80:    aload_0 
L81:    invokevirtual Method com/fs/starfarer/BaseGameState prepare ()V 
L84:    aload_0 
L85:    getfield Field com/fs/starfarer/BaseGameState fader Lcom/fs/graphics/util/Fader; 
L88:    invokevirtual Method com/fs/graphics/util/Fader fadeIn ()V 
L91:    fconst_0 
L92:    fstore_1 

        .stack append Float 
L93:    invokestatic Method com/fs/starfarer/api/Global getSettings ()Lcom/fs/starfarer/api/SettingsAPI; 
L96:    ifnull L120 
L99:    invokestatic Method com/fs/starfarer/api/Global getSettings ()Lcom/fs/starfarer/api/SettingsAPI; 
L102:   invokeinterface InterfaceMethod com/fs/starfarer/api/SettingsAPI isInCampaignState ()Z 1 
L107:   ifeq L120 
L110:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'class.class' ()Z 
L113:   ifne L120 
L116:   iconst_0 
L117:   goto L121 

        .stack same 
L120:   iconst_1 

        .stack stack_1 Integer 
L121:   istore_2 
L122:   iload_2 
L123:   ifeq L140 
L126:   invokestatic Method org/lwjgl/opengl/Display isCloseRequested ()Z
L129:   ifeq L140 
L132:   new com/fs/starfarer/super 
L135:   dup 
L136:   invokespecial Method com/fs/starfarer/super <init> ()V 
L139:   athrow 

        .stack append Integer 
L140:   ldc 'idleWhileWindowNotVisible' 
L142:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings class (Ljava/lang/String;)Z 
L145:   ifeq L254 
L148:   aload_0 
L149:   instanceof com/fs/starfarer/launcher/opengl/GLLauncher 
L152:   ifeq L159 
L155:   iconst_0 
L156:   goto L160 

        .stack same 
L159:   iconst_1 

        .stack stack_1 Integer 
L160:   istore_3 
L161:   aload_0 
L162:   instanceof com/fs/starfarer/campaign/CampaignState 
L165:   ifeq L175 
L168:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L171:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine isPaused ()Z 
L174:   istore_3 

        .stack append Integer 
L175:   iload_3 
L176:   aload_0 
L177:   getfield Field com/fs/starfarer/BaseGameState fader Lcom/fs/graphics/util/Fader; 
L180:   invokevirtual Method com/fs/graphics/util/Fader isIdle ()Z 
L183:   iand 
L184:   istore_3 
L185:   iload_3 
L186:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'OÓ0000' ()Z 
L189:   ifeq L196 
L192:   iconst_0 
L193:   goto L197 

        .stack stack_1 Integer 
L196:   iconst_1 

        .stack full 
            locals Object com/fs/starfarer/BaseGameState Float Integer Integer 
            stack Integer Integer 
        .end stack 
L197:   iand 
L198:   istore_3 
L199:   getstatic Field com/fs/starfarer/settings/StarfarerSettings oO0000 Z 
L202:   ifeq L215 
L205:   ldc 'doNotIdleWhenUndecoratedFullcreen' 
L207:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings class (Ljava/lang/String;)Z 
L210:   ifeq L215 
L213:   iconst_0 
L214:   istore_3 

        .stack same 
L215:   iload_3 
L216:   ifeq L254 
L219:   invokestatic Method org/lwjgl/opengl/Display isActive ()Z
L222:   ifne L254 
        .catch java/lang/Exception from L225 to L231 using L234 
L225:   ldc2_w 50L 
L228:   invokestatic Method java/lang/Thread sleep (J)V 
L231:   goto L236 

        .stack stack_1 Object java/lang/Exception 
L234:   astore 4 

        .stack same 
L236:   invokestatic Method org/lwjgl/opengl/Display processMessages ()V
L239:   ldc +0.01600000075995922f 
L241:   fconst_0 
L242:   fconst_0 
L243:   fconst_0 
L244:   fconst_0 
L245:   sipush 1800 
L248:   invokestatic Method com/fs/starfarer/D/M o00000 (FFFFFI)V 
L251:   goto L93 

        .stack chop 1 
L254:   new java/lang/StringBuilder 
L257:   dup 
L258:   ldc 'Main loop in ' 
L260:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L263:   aload_0 
L264:   invokevirtual Method com/fs/starfarer/BaseGameState getID ()Ljava/lang/String; 
L267:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L270:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L273:   invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L276:   invokestatic Method com/fs/graphics/util/B 'Ô00000' ()J 
L279:   lstore_3 
L280:   ldc 'GLListManager.nextFrame' 
L282:   invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L285:   invokestatic Method com/fs/graphics/util/GLListManager nextFrame ()V 
L288:   invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L291:   invokestatic Method com/fs/graphics/util/B return ()V 
L294:   aload_0 
L295:   aload_0 
L296:   getfield Field com/fs/starfarer/BaseGameState fader Lcom/fs/graphics/util/Fader; 
L299:   invokevirtual Method com/fs/graphics/util/Fader getBrightness ()F 
L302:   invokevirtual Method com/fs/starfarer/BaseGameState render (F)V 
L305:   ldc 'useGLFlush' 
L307:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings class (Ljava/lang/String;)Z 
L310:   ifeq L316 
L313:   invokestatic Method org/lwjgl/opengl/GL11 glFlush ()V

        .stack append Long 
L316:   invokestatic Method com/fs/starfarer/util/A/A Object ()Lcom/fs/starfarer/util/A/new; 
L319:   astore 5 
L321:   iconst_0 
L322:   istore 6 
L324:   aload 5 
L326:   invokevirtual Method com/fs/starfarer/util/A/new iterator ()Ljava/util/Iterator; 
L329:   astore 8 
L331:   goto L371 

        .stack full 
            locals Object com/fs/starfarer/BaseGameState Float Integer Long Object com/fs/starfarer/util/A/new Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L334:   aload 8 
L336:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L341:   checkcast com/fs/starfarer/util/A/C 
L344:   astore 7 
L346:   aload 7 
L348:   getstatic Field [c257] 'Ô00000' [u208] 
L351:   getstatic Field [c263] 'Òõ0000' [u219] 
L354:   invokestatic Method [c269] o00000 [u222] 
L357:   ifeq L371 
L360:   iconst_1 
L361:   istore 6 
L363:   aload 7 
L365:   invokevirtual Method com/fs/starfarer/util/A/C consume ()V 
L368:   goto L381 

        .stack same 
L371:   aload 8 
L373:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L378:   ifne L334 

        .stack full 
            locals Object com/fs/starfarer/BaseGameState Float Integer Long Object com/fs/starfarer/util/A/new Integer 
            stack 
        .end stack 
L381:   aload 5 
L383:   invokevirtual Method com/fs/starfarer/util/A/new 'super' ()V 
L386:   aload_0 
L387:   getfield Field com/fs/starfarer/BaseGameState nextState Ljava/lang/String; 
L390:   ifnonnull L405 
L393:   aload 5 
L395:   invokestatic Method com/fs/starfarer/ui/W o00000 (Lcom/fs/starfarer/util/A/new;)V 
L398:   aload_0 
L399:   aload 5 
L401:   fload_1 
L402:   invokevirtual Method com/fs/starfarer/BaseGameState processInput (Lcom/fs/starfarer/util/A/new;F)V 

        .stack same 
L405:   aload_0 
L406:   getfield Field com/fs/starfarer/BaseGameState nextState Ljava/lang/String; 
L409:   ifnull L448 
L412:   aload_0 
L413:   getfield Field com/fs/starfarer/BaseGameState fader Lcom/fs/graphics/util/Fader; 
L416:   invokevirtual Method com/fs/graphics/util/Fader isIdle ()Z 
L419:   ifeq L448 
L422:   invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L425:   aload_0 
L426:   getfield Field com/fs/starfarer/BaseGameState nextState Ljava/lang/String; 
L429:   astore 7 
L431:   aload_0 
L432:   aconst_null 
L433:   putfield Field com/fs/starfarer/BaseGameState nextState Ljava/lang/String; 
L436:   aload_0 
L437:   aload 7 
L439:   invokevirtual Method com/fs/starfarer/BaseGameState onStateTransition (Ljava/lang/String;)V 
L442:   invokestatic Method com/fs/starfarer/ui/W new ()V 
L445:   aload 7 
L447:   areturn 

        .stack same 
L448:   fload_1 
L449:   fconst_0 
L450:   fcmpl 
L451:   ifeq L469 
L454:   aload_0 
L455:   fload_1 
L456:   aload 5 
L458:   invokevirtual Method com/fs/starfarer/BaseGameState advance (FLcom/fs/starfarer/util/A/new;)V 
L461:   aload_0 
L462:   getfield Field com/fs/starfarer/BaseGameState fader Lcom/fs/graphics/util/Fader; 
L465:   fload_1 
L466:   invokevirtual Method com/fs/graphics/util/Fader advance (F)V 

        .stack same 
L469:   ldc_w 'Display.update() and sleep() (if not vsynced)' 
L472:   invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L475:   fconst_0 
L476:   fstore 7 
L478:   invokestatic Method com/fs/graphics/util/B 'Ô00000' ()J 
L481:   lstore 8 
L483:   ldc_w 'useGLFinish' 
L486:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings class (Ljava/lang/String;)Z 
L489:   ifeq L495 
L492:   invokestatic Method org/lwjgl/opengl/GL11 glFinish ()V

        .stack append Float Long 
L495:   iconst_1 
L496:   invokestatic Method com/genir/renderer/overrides/Sync syncAndUpdate (Z)V
L499:   iload 6 
L501:   ifeq L510 
L504:   invokestatic Method com/fs/starfarer/util/return o00000 ()V 
L507:   iconst_0 
L508:   istore 6 

        .stack same 
L510:   invokestatic Method com/fs/graphics/util/B 'Ô00000' ()J 
L513:   lstore 10 
L515:   lload 10 
L517:   lload 8 
L519:   lsub 
L520:   lstore 12 
L522:   aload_0 
L523:   invokevirtual Method com/fs/starfarer/BaseGameState isLauncherMode ()Z 
L526:   ifne L535 
L529:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'float.super' ()Z 
L532:   ifeq L544 

        .stack append Long Long 
L535:   lload 12 
L537:   l2f 
L538:   ldc_w +1000.0f 
L541:   fdiv 
L542:   fstore 7 

        .stack same 
L544:   invokestatic Method com/fs/graphics/util/B 'Ô00000' ()J 
L547:   lstore 14 
L549:   lload 14 
L551:   lload_3 
L552:   lsub 
L553:   l2f 
L554:   ldc_w +1000.0f 
L557:   fdiv 
L558:   fstore 16 
L560:   aload_0 
L561:   invokevirtual Method com/fs/starfarer/BaseGameState isLauncherMode ()Z 
L564:   ifeq L591 
L567:   invokestatic Method org/lwjgl/opengl/Display getDesktopDisplayMode ()Lorg/lwjgl/opengl/DisplayMode;
L570:   invokevirtual Method org/lwjgl/opengl/DisplayMode getFrequency ()I 
L573:   i2f 
L574:   fstore 17 
L576:   fload 17 
L578:   fconst_0 
L579:   fcmpg 
L580:   ifgt L596 
L583:   ldc_w +60.0f 
L586:   fstore 17 
L588:   goto L596 

        .stack append Long Float 
L591:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'oØ0000' ()F 
L594:   fstore 17 

        .stack append Float 
L596:   fconst_1 
L597:   fload 17 
L599:   fdiv 
L600:   fload 16 
L602:   fsub 
L603:   fconst_0 
L604:   invokestatic Method java/lang/Math max (FF)F 
L607:   fstore 18 
L609:   aload_0 
L610:   invokevirtual Method com/fs/starfarer/BaseGameState isLauncherMode ()Z 
L613:   ifne L628 
L616:   aload_0 
L617:   getfield Field com/fs/starfarer/BaseGameState fps Lcom/fs/graphics/util/A; 
L620:   fload 18 
L622:   fload 7 
L624:   fadd 
L625:   invokevirtual Method com/fs/graphics/util/A 'super' (F)V 

        .stack append Float 
L628:   fload 18 
L630:   ldc_w +1000.0f 
L633:   fmul 
L634:   f2i 
L635:   istore 19 
L637:   iload 19 
L639:   i2l 
L640:   invokestatic Method com/genir/renderer/overrides/Sync sleep (J)V
L643:   fload 16 
L645:   fload 18 
L647:   fadd 
L648:   fstore_1 
L649:   invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L652:   fload 18 
L654:   fload 7 
L656:   fadd 
L657:   fconst_0 
L658:   fcmpl 
L659:   ifle L684 
L662:   new java/lang/StringBuilder 
L665:   dup 
L666:   ldc 'Main loop in ' 
L668:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L671:   aload_0 
L672:   invokevirtual Method com/fs/starfarer/BaseGameState getID ()Ljava/lang/String; 
L675:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L678:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L681:   invokestatic Method com/fs/profiler/Profiler o00000 (Ljava/lang/String;)V 

        .stack append Integer 
L684:   invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L687:   goto L93 
L690:   
    .end code 
.end method 

.method public getNextState : ()Ljava/lang/String; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/BaseGameState nextState Ljava/lang/String; 
L4:     areturn 
L5:     
    .end code 
.end method 
.innerclasses 
    [c263] [c269] oo public static final enum 
    [c257] [c269] o public static final enum 
.end innerclasses 
.const [u208] = Utf8 Lcom/fs/starfarer/title/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$o; 
.const [u219] = Utf8 Lcom/fs/starfarer/title/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$oo; 
.const [u222] = Utf8 (Lcom/fs/starfarer/util/A/C;Lcom/fs/starfarer/title/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$o;Lcom/fs/starfarer/title/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$oo;)Z 
.const [c257] = Class [u258] 
.const [c263] = Class [u260] 
.const [c269] = Class [u261] 
.const [u258] = Utf8 com/fs/starfarer/title/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$o 
.const [u260] = Utf8 com/fs/starfarer/title/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$oo 
.const [u261] = Utf8 com/fs/starfarer/title/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 
.end class 
