.version 61 0 
.class public super com/fs/starfarer/campaign/save/B 
.super java/lang/Object 
.field private 'ø00000' F 
.field private Object F 
.field private 'ö00000' F 
.field private 'Ò00000' F 
.field private 'Õ00000' Lcom/fs/starfarer/class/I; 
.field private 'Ô00000' Lcom/fs/graphics/Sprite; 
.field private return Lcom/fs/graphics/Sprite; 
.field private 'ô00000' Lcom/fs/starfarer/ui/d; 
.field private int Lcom/fs/starfarer/ui/d; 
.field private for Ljava/lang/String; 
.field private 'Ø00000' Ljava/lang/String; 
.field private o00000 F 

.method public <init> : ()V 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     aconst_null 
L2:     invokespecial Method com/fs/starfarer/campaign/save/B <init> (Ljava/lang/String;)V 
L5:     return 
L6:     
    .end code 
.end method 

.method public <init> : (Ljava/lang/String;)V 
    .code stack 9 locals 3 
L0:     aload_0 
L1:     invokespecial Method java/lang/Object <init> ()V 
L4:     aload_0 
L5:     fconst_0 
L6:     putfield Field com/fs/starfarer/campaign/save/B o00000 F 
L9:     aload_0 
L10:    invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'while.new' ()F 
L13:    putfield Field com/fs/starfarer/campaign/save/B 'ø00000' F 
L16:    aload_0 
L17:    invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'öÒ0000' ()F 
L20:    putfield Field com/fs/starfarer/campaign/save/B Object F 
L23:    aload_0 
L24:    ldc +500.0f 
L26:    putfield Field com/fs/starfarer/campaign/save/B 'ö00000' F 
L29:    aload_0 
L30:    ldc +150.0f 
L32:    putfield Field com/fs/starfarer/campaign/save/B 'Ò00000' F 
L35:    aload_0 
L36:    aload_1 
L37:    putfield Field com/fs/starfarer/campaign/save/B 'Ø00000' Ljava/lang/String; 
L40:    aload_0 
L41:    new com/fs/starfarer/ui/d 
L44:    dup 
L45:    invokestatic Method com/fs/starfarer/title/String pickTipText ()Ljava/lang/String; 
L48:    getstatic Field com/fs/starfarer/settings/StarfarerSettings 'float.new' Ljava/lang/String; 
L51:    getstatic Field com/fs/starfarer/O0OO String Ljava/awt/Color; 
L54:    iconst_1 
L55:    getstatic Field com/fs/starfarer/api/ui/Alignment LMID Lcom/fs/starfarer/api/ui/Alignment; 
L58:    invokespecial Method com/fs/starfarer/ui/d <init> (Ljava/lang/String;Ljava/lang/String;Ljava/awt/Color;ZLcom/fs/starfarer/api/ui/Alignment;)V 
L61:    putfield Field com/fs/starfarer/campaign/save/B int Lcom/fs/starfarer/ui/d; 
L64:    aload_0 
L65:    getfield Field com/fs/starfarer/campaign/save/B int Lcom/fs/starfarer/ui/d; 
L68:    aload_0 
L69:    getfield Field com/fs/starfarer/campaign/save/B 'ö00000' F 
L72:    ldc +100.0f 
L74:    fsub 
L75:    invokevirtual Method com/fs/starfarer/ui/d autoSizeToWidth (F)Lcom/fs/starfarer/ui/OO0O; 
L78:    pop 
L79:    aload_1 
L80:    ifnull L164 
L83:    aload_1 
L84:    invokevirtual Method java/lang/String toLowerCase ()Ljava/lang/String; 
L87:    ldc 'auto' 
L89:    invokevirtual Method java/lang/String contains (Ljava/lang/CharSequence;)Z 
L92:    ifeq L164 
L95:    aload_0 
L96:    new com/fs/starfarer/ui/d 
L99:    dup 
L100:   ldc 'Autosave creates a new save slot and can be turned off from the settings menu.' 
L102:   getstatic Field com/fs/starfarer/settings/StarfarerSettings 'float.new' Ljava/lang/String; 
L105:   getstatic Field com/fs/starfarer/O0OO String Ljava/awt/Color; 
L108:   iconst_1 
L109:   getstatic Field com/fs/starfarer/api/ui/Alignment LMID Lcom/fs/starfarer/api/ui/Alignment; 
L112:   invokespecial Method com/fs/starfarer/ui/d <init> (Ljava/lang/String;Ljava/lang/String;Ljava/awt/Color;ZLcom/fs/starfarer/api/ui/Alignment;)V 
L115:   putfield Field com/fs/starfarer/campaign/save/B int Lcom/fs/starfarer/ui/d; 
L118:   aload_0 
L119:   getfield Field com/fs/starfarer/campaign/save/B int Lcom/fs/starfarer/ui/d; 
L122:   aload_0 
L123:   getfield Field com/fs/starfarer/campaign/save/B 'ö00000' F 
L126:   ldc +100.0f 
L128:   fsub 
L129:   invokevirtual Method com/fs/starfarer/ui/d autoSizeToWidth (F)Lcom/fs/starfarer/ui/OO0O; 
L132:   pop 
L133:   aload_0 
L134:   getfield Field com/fs/starfarer/campaign/save/B int Lcom/fs/starfarer/ui/d; 
L137:   invokestatic Method com/fs/starfarer/api/util/Misc getHighlightColor ()Ljava/awt/Color; 
L140:   invokevirtual Method com/fs/starfarer/ui/d setHighlightColor (Ljava/awt/Color;)V 
L143:   aload_0 
L144:   getfield Field com/fs/starfarer/campaign/save/B int Lcom/fs/starfarer/ui/d; 
L147:   iconst_2 
L148:   anewarray java/lang/String 
L151:   dup 
L152:   iconst_0 
L153:   ldc 'new save slot' 
L155:   aastore 
L156:   dup 
L157:   iconst_1 
L158:   ldc 'turned off' 
L160:   aastore 
L161:   invokevirtual Method com/fs/starfarer/ui/d setHighlight ([Ljava/lang/String;)V 

        .stack full 
            locals Object com/fs/starfarer/campaign/save/B Object java/lang/String 
            stack 
        .end stack 
L164:   aload_0 
L165:   aload_0 
L166:   getfield Field com/fs/starfarer/campaign/save/B int Lcom/fs/starfarer/ui/d; 
L169:   invokevirtual Method com/fs/starfarer/ui/d getHeight ()F 
L172:   putfield Field com/fs/starfarer/campaign/save/B o00000 F 
L175:   aload_0 
L176:   aload_0 
L177:   getfield Field com/fs/starfarer/campaign/save/B int Lcom/fs/starfarer/ui/d; 
L180:   invokevirtual Method com/fs/starfarer/ui/d getLineHeight ()F 
L183:   ldc +4.0f 
L185:   fmul 
L186:   putfield Field com/fs/starfarer/campaign/save/B o00000 F 
L189:   aload_0 
L190:   dup 
L191:   getfield Field com/fs/starfarer/campaign/save/B 'Ò00000' F 
L194:   aload_0 
L195:   getfield Field com/fs/starfarer/campaign/save/B o00000 F 
L198:   fadd 
L199:   putfield Field com/fs/starfarer/campaign/save/B 'Ò00000' F 
L202:   aload_0 
L203:   new com/fs/starfarer/class/I 
L206:   dup 
L207:   new com/fs/starfarer/ui/OO0O 
L210:   dup 
L211:   aload_0 
L212:   getfield Field com/fs/starfarer/campaign/save/B 'ø00000' F 
L215:   fconst_2 
L216:   fdiv 
L217:   aload_0 
L218:   getfield Field com/fs/starfarer/campaign/save/B 'ö00000' F 
L221:   fconst_2 
L222:   fdiv 
L223:   fsub 
L224:   aload_0 
L225:   getfield Field com/fs/starfarer/campaign/save/B Object F 
L228:   fconst_2 
L229:   fdiv 
L230:   aload_0 
L231:   getfield Field com/fs/starfarer/campaign/save/B 'Ò00000' F 
L234:   fconst_2 
L235:   fdiv 
L236:   fsub 
L237:   aload_0 
L238:   getfield Field com/fs/starfarer/campaign/save/B 'ö00000' F 
L241:   aload_0 
L242:   getfield Field com/fs/starfarer/campaign/save/B 'Ò00000' F 
L245:   invokespecial Method com/fs/starfarer/ui/OO0O <init> (FFFF)V 
L248:   invokespecial Method com/fs/starfarer/class/I <init> (Lcom/fs/starfarer/ui/OO0O;)V 
L251:   putfield Field com/fs/starfarer/campaign/save/B 'Õ00000' Lcom/fs/starfarer/class/I; 
L254:   aload_0 
L255:   new com/fs/graphics/Sprite 
L258:   dup 
L259:   ldc 'graphics/ui/loading_widget.png' 
L261:   invokespecial Method com/fs/graphics/Sprite <init> (Ljava/lang/String;)V 
L264:   putfield Field com/fs/starfarer/campaign/save/B 'Ô00000' Lcom/fs/graphics/Sprite; 
L267:   aload_0 
L268:   new com/fs/graphics/Sprite 
L271:   dup 
L272:   ldc 'graphics/ui/loading_widget_glow.png' 
L274:   invokespecial Method com/fs/graphics/Sprite <init> (Ljava/lang/String;)V 
L277:   putfield Field com/fs/starfarer/campaign/save/B return Lcom/fs/graphics/Sprite; 
L280:   aload_0 
L281:   new com/fs/starfarer/ui/d 
L284:   dup 
L285:   ldc 'Loading...' 
L287:   ldc 'graphics/fonts/orbitron24aabold.fnt' 
L289:   getstatic Field com/fs/starfarer/O0OO String Ljava/awt/Color; 
L292:   iconst_1 
L293:   getstatic Field com/fs/starfarer/api/ui/Alignment MID Lcom/fs/starfarer/api/ui/Alignment; 
L296:   invokespecial Method com/fs/starfarer/ui/d <init> (Ljava/lang/String;Ljava/lang/String;Ljava/awt/Color;ZLcom/fs/starfarer/api/ui/Alignment;)V 
L299:   putfield Field com/fs/starfarer/campaign/save/B 'ô00000' Lcom/fs/starfarer/ui/d; 
L302:   aload_1 
L303:   ifnull L351 
L306:   aload_1 
L307:   invokevirtual Method java/lang/String toLowerCase ()Ljava/lang/String; 
L310:   ldc 'auto' 
L312:   invokevirtual Method java/lang/String contains (Ljava/lang/CharSequence;)Z 
L315:   ifeq L351 
L318:   aload_0 
L319:   new com/fs/starfarer/ui/d 
L322:   dup 
L323:   ldc 'Loading...' 
L325:   ldc 'graphics/fonts/orbitron20aabold.fnt' 
L327:   getstatic Field com/fs/starfarer/O0OO String Ljava/awt/Color; 
L330:   iconst_1 
L331:   getstatic Field com/fs/starfarer/api/ui/Alignment MID Lcom/fs/starfarer/api/ui/Alignment; 
L334:   invokespecial Method com/fs/starfarer/ui/d <init> (Ljava/lang/String;Ljava/lang/String;Ljava/awt/Color;ZLcom/fs/starfarer/api/ui/Alignment;)V 
L337:   putfield Field com/fs/starfarer/campaign/save/B 'ô00000' Lcom/fs/starfarer/ui/d; 
L340:   aload_0 
L341:   getfield Field com/fs/starfarer/campaign/save/B 'ô00000' Lcom/fs/starfarer/ui/d; 
L344:   invokevirtual Method com/fs/starfarer/ui/d getRenderer ()Lcom/fs/graphics/A/ooOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO; 
L347:   iconst_1 
L348:   invokevirtual Method com/fs/graphics/A/ooOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO int (Z)V 

        .stack same_extended 
L351:   aload_0 
L352:   getfield Field com/fs/starfarer/campaign/save/B 'Õ00000' Lcom/fs/starfarer/class/I; 
L355:   sipush 200 
L358:   sipush 225 
L361:   invokevirtual Method com/fs/starfarer/class/I setBackgroundAlpha (II)V 
L364:   aload_0 
L365:   getfield Field com/fs/starfarer/campaign/save/B 'Õ00000' Lcom/fs/starfarer/class/I; 
L368:   invokevirtual Method com/fs/starfarer/class/I forceFoldOut ()V 
L371:   aload_0 
L372:   getfield Field com/fs/starfarer/campaign/save/B 'Õ00000' Lcom/fs/starfarer/class/I; 
L375:   invokevirtual Method com/fs/starfarer/class/I getFader ()Lcom/fs/graphics/util/Fader; 
L378:   invokevirtual Method com/fs/graphics/util/Fader forceIn ()V 
L381:   aload_0 
L382:   getfield Field com/fs/starfarer/campaign/save/B 'Õ00000' Lcom/fs/starfarer/class/I; 
L385:   invokevirtual Method com/fs/starfarer/class/I getPosition ()Lcom/fs/starfarer/ui/OO0O; 
L388:   aload_0 
L389:   getfield Field com/fs/starfarer/campaign/save/B 'ø00000' F 
L392:   fconst_2 
L393:   fdiv 
L394:   aload_0 
L395:   getfield Field com/fs/starfarer/campaign/save/B 'ö00000' F 
L398:   fconst_2 
L399:   fdiv 
L400:   fsub 
L401:   aload_0 
L402:   getfield Field com/fs/starfarer/campaign/save/B Object F 
L405:   fconst_2 
L406:   fdiv 
L407:   aload_0 
L408:   getfield Field com/fs/starfarer/campaign/save/B 'Ò00000' F 
L411:   fconst_2 
L412:   fdiv 
L413:   fsub 
L414:   invokevirtual Method com/fs/starfarer/ui/OO0O setLocation (FF)Lcom/fs/starfarer/ui/OO0O; 
L417:   pop 
L418:   aload_0 
L419:   getfield Field com/fs/starfarer/campaign/save/B 'ô00000' Lcom/fs/starfarer/ui/d; 
L422:   aload_0 
L423:   getfield Field com/fs/starfarer/campaign/save/B 'ö00000' F 
L426:   ldc +25.0f 
L428:   invokevirtual Method com/fs/starfarer/ui/d setSize (FF)Lcom/fs/starfarer/ui/OO0O; 
L431:   pop 
L432:   aload_0 
L433:   getfield Field com/fs/starfarer/campaign/save/B 'ô00000' Lcom/fs/starfarer/ui/d; 
L436:   invokevirtual Method com/fs/starfarer/ui/d getPosition ()Lcom/fs/starfarer/ui/OO0O; 
L439:   aload_0 
L440:   getfield Field com/fs/starfarer/campaign/save/B 'ø00000' F 
L443:   fconst_2 
L444:   fdiv 
L445:   aload_0 
L446:   getfield Field com/fs/starfarer/campaign/save/B 'ö00000' F 
L449:   fconst_2 
L450:   fdiv 
L451:   fsub 
L452:   aload_0 
L453:   getfield Field com/fs/starfarer/campaign/save/B Object F 
L456:   fconst_2 
L457:   fdiv 
L458:   ldc +20.0f 
L460:   fadd 
L461:   aload_0 
L462:   getfield Field com/fs/starfarer/campaign/save/B o00000 F 
L465:   fconst_2 
L466:   fdiv 
L467:   fadd 
L468:   invokevirtual Method com/fs/starfarer/ui/OO0O setLocation (FF)Lcom/fs/starfarer/ui/OO0O; 
L471:   pop 
L472:   aload_0 
L473:   getfield Field com/fs/starfarer/campaign/save/B int Lcom/fs/starfarer/ui/d; 
L476:   invokevirtual Method com/fs/starfarer/ui/d getPosition ()Lcom/fs/starfarer/ui/OO0O; 
L479:   aload_0 
L480:   getfield Field com/fs/starfarer/campaign/save/B 'ø00000' F 
L483:   fconst_2 
L484:   fdiv 
L485:   aload_0 
L486:   getfield Field com/fs/starfarer/campaign/save/B 'ö00000' F 
L489:   fconst_2 
L490:   fdiv 
L491:   fsub 
L492:   ldc +50.0f 
L494:   fadd 
L495:   aload_0 
L496:   getfield Field com/fs/starfarer/campaign/save/B Object F 
L499:   fconst_2 
L500:   fdiv 
L501:   aload_0 
L502:   getfield Field com/fs/starfarer/campaign/save/B int Lcom/fs/starfarer/ui/d; 
L505:   invokevirtual Method com/fs/starfarer/ui/d getHeight ()F 
L508:   fsub 
L509:   ldc +20.0f 
L511:   fsub 
L512:   invokevirtual Method com/fs/starfarer/ui/OO0O setLocation (FF)Lcom/fs/starfarer/ui/OO0O; 
L515:   pop 
L516:   aload_1 
L517:   ifnull L703 
L520:   ldc +0.5f 
L522:   fstore_2 
L523:   aload_0 
L524:   getfield Field com/fs/starfarer/campaign/save/B 'Ô00000' Lcom/fs/graphics/Sprite; 
L527:   aload_0 
L528:   getfield Field com/fs/starfarer/campaign/save/B 'Ô00000' Lcom/fs/graphics/Sprite; 
L531:   invokevirtual Method com/fs/graphics/Sprite getWidth ()F 
L534:   fload_2 
L535:   fmul 
L536:   aload_0 
L537:   getfield Field com/fs/starfarer/campaign/save/B 'Ô00000' Lcom/fs/graphics/Sprite; 
L540:   invokevirtual Method com/fs/graphics/Sprite getHeight ()F 
L543:   fload_2 
L544:   fmul 
L545:   invokevirtual Method com/fs/graphics/Sprite setSize (FF)V 
L548:   aload_0 
L549:   getfield Field com/fs/starfarer/campaign/save/B return Lcom/fs/graphics/Sprite; 
L552:   aload_0 
L553:   getfield Field com/fs/starfarer/campaign/save/B return Lcom/fs/graphics/Sprite; 
L556:   invokevirtual Method com/fs/graphics/Sprite getWidth ()F 
L559:   fload_2 
L560:   fmul 
L561:   aload_0 
L562:   getfield Field com/fs/starfarer/campaign/save/B return Lcom/fs/graphics/Sprite; 
L565:   invokevirtual Method com/fs/graphics/Sprite getHeight ()F 
L568:   fload_2 
L569:   fmul 
L570:   invokevirtual Method com/fs/graphics/Sprite setSize (FF)V 
L573:   aload_0 
L574:   getfield Field com/fs/starfarer/campaign/save/B 'Õ00000' Lcom/fs/starfarer/class/I; 
L577:   invokevirtual Method com/fs/starfarer/class/I getPosition ()Lcom/fs/starfarer/ui/OO0O; 
L580:   aload_0 
L581:   getfield Field com/fs/starfarer/campaign/save/B 'ø00000' F 
L584:   aload_0 
L585:   getfield Field com/fs/starfarer/campaign/save/B 'ö00000' F 
L588:   fsub 
L589:   aload_0 
L590:   getfield Field com/fs/starfarer/campaign/save/B Object F 
L593:   aload_0 
L594:   getfield Field com/fs/starfarer/campaign/save/B 'Ò00000' F 
L597:   fsub 
L598:   invokevirtual Method com/fs/starfarer/ui/OO0O setLocation (FF)Lcom/fs/starfarer/ui/OO0O; 
L601:   pop 
L602:   aload_0 
L603:   getfield Field com/fs/starfarer/campaign/save/B 'ô00000' Lcom/fs/starfarer/ui/d; 
L606:   getstatic Field com/fs/starfarer/api/ui/Alignment RMID Lcom/fs/starfarer/api/ui/Alignment; 
L609:   invokevirtual Method com/fs/starfarer/ui/d setAlignment (Lcom/fs/starfarer/api/ui/Alignment;)V 
L612:   aload_0 
L613:   getfield Field com/fs/starfarer/campaign/save/B 'ô00000' Lcom/fs/starfarer/ui/d; 
L616:   invokevirtual Method com/fs/starfarer/ui/d getPosition ()Lcom/fs/starfarer/ui/OO0O; 
L619:   aload_0 
L620:   getfield Field com/fs/starfarer/campaign/save/B 'ø00000' F 
L623:   aload_0 
L624:   getfield Field com/fs/starfarer/campaign/save/B 'ö00000' F 
L627:   fsub 
L628:   ldc +10.0f 
L630:   fsub 
L631:   aload_0 
L632:   getfield Field com/fs/starfarer/campaign/save/B Object F 
L635:   aload_0 
L636:   getfield Field com/fs/starfarer/campaign/save/B 'ô00000' Lcom/fs/starfarer/ui/d; 
L639:   invokevirtual Method com/fs/starfarer/ui/d getHeight ()F 
L642:   fsub 
L643:   aload_0 
L644:   getfield Field com/fs/starfarer/campaign/save/B 'Ô00000' Lcom/fs/graphics/Sprite; 
L647:   invokevirtual Method com/fs/graphics/Sprite getHeight ()F 
L650:   fsub 
L651:   ldc +4.0f 
L653:   fadd 
L654:   invokevirtual Method com/fs/starfarer/ui/OO0O setLocation (FF)Lcom/fs/starfarer/ui/OO0O; 
L657:   pop 
L658:   aload_0 
L659:   getfield Field com/fs/starfarer/campaign/save/B int Lcom/fs/starfarer/ui/d; 
L662:   invokevirtual Method com/fs/starfarer/ui/d getPosition ()Lcom/fs/starfarer/ui/OO0O; 
L665:   aload_0 
L666:   getfield Field com/fs/starfarer/campaign/save/B 'ø00000' F 
L669:   aload_0 
L670:   getfield Field com/fs/starfarer/campaign/save/B 'ö00000' F 
L673:   fsub 
L674:   ldc +50.0f 
L676:   fadd 
L677:   aload_0 
L678:   getfield Field com/fs/starfarer/campaign/save/B Object F 
L681:   aload_0 
L682:   getfield Field com/fs/starfarer/campaign/save/B 'Ò00000' F 
L685:   fconst_2 
L686:   fdiv 
L687:   fsub 
L688:   aload_0 
L689:   getfield Field com/fs/starfarer/campaign/save/B int Lcom/fs/starfarer/ui/d; 
L692:   invokevirtual Method com/fs/starfarer/ui/d getHeight ()F 
L695:   fsub 
L696:   ldc +20.0f 
L698:   fsub 
L699:   invokevirtual Method com/fs/starfarer/ui/OO0O setLocation (FF)Lcom/fs/starfarer/ui/OO0O; 
L702:   pop 

        .stack same_extended 
L703:   return 
L704:   
    .end code 
.end method 

.method public 'Ò00000' : ()Ljava/lang/String; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/save/B 'Ø00000' Ljava/lang/String; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public o00000 : (Ljava/lang/String;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/fs/starfarer/campaign/save/B 'Ø00000' Ljava/lang/String; 
L5:     return 
L6:     
    .end code 
.end method 

.method public o00000 : ()Ljava/lang/String; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/save/B for Ljava/lang/String; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public 'Ò00000' : (Ljava/lang/String;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/fs/starfarer/campaign/save/B for Ljava/lang/String; 
L5:     return 
L6:     
    .end code 
.end method 

.method public ProgressBar_renderWithDescription : (Ljava/lang/String;F)V
    .code stack 2 locals 3
L0:     aload_0
L1:     invokestatic Method com/genir/renderer/overrides/ProgressBar renderBackground (Lproxy/com/fs/starfarer/campaign/save/ProgressBar;)V
L4:     aload_0
L5:     aload_1
L6:     invokevirtual Method proxy/com/fs/starfarer/campaign/save/ProgressBar ProgressBar_setDescription (Ljava/lang/String;)V
L9:     aload_0
L10:    fload_2
L11:    invokevirtual Method proxy/com/fs/starfarer/campaign/save/ProgressBar ProgressBar_render (F)V
L14:    return
L15:
        .linenumbertable
            L0 17
            L4 19
            L9 20
            L14 21
        .end linenumbertable
        .localvariabletable
            0 is this Lproxy/com/fs/starfarer/campaign/save/ProgressBar; from L0 to L15
            1 is description Ljava/lang/String; from L0 to L15
            2 is progress F from L0 to L15
        .end localvariabletable
    .end code 
.end method 

.method public o00000 : (F)V 
    .code stack 7 locals 2 
L0:     fload_1 
L1:     ldc +100.0f 
L3:     fdiv 
L4:     fstore_1 
L5:     fload_1 
L6:     fconst_1 
L7:     fcmpl 
L8:     ifle L13 
L11:    fconst_1 
L12:    fstore_1 

        .stack same 
L13:    fconst_0 
L14:    aload_0 
L15:    getfield Field com/fs/starfarer/campaign/save/B 'ø00000' F 
L18:    fconst_0 
L19:    aload_0 
L20:    getfield Field com/fs/starfarer/campaign/save/B Object F 
L23:    ldc +1000.0f 
L25:    invokestatic Method com/fs/graphics/util/B o00000 (FFFFF)V 
L28:    aload_0 
L29:    getfield Field com/fs/starfarer/campaign/save/B 'Ø00000' Ljava/lang/String; 
L32:    ifnull L148 
L35:    aload_0 
L36:    getfield Field com/fs/starfarer/campaign/save/B for Ljava/lang/String; 
L39:    ifnull L79 
L42:    aload_0 
L43:    getfield Field com/fs/starfarer/campaign/save/B 'ô00000' Lcom/fs/starfarer/ui/d; 
L46:    aload_0 
L47:    getfield Field com/fs/starfarer/campaign/save/B for Ljava/lang/String; 
L50:    invokevirtual Method com/fs/starfarer/ui/d setText (Ljava/lang/String;)V 
L53:    aload_0 
L54:    getfield Field com/fs/starfarer/campaign/save/B 'Ø00000' Ljava/lang/String; 
L57:    ifnull L71 
L60:    aload_0 
L61:    getfield Field com/fs/starfarer/campaign/save/B 'ô00000' Lcom/fs/starfarer/ui/d; 
L64:    aload_0 
L65:    getfield Field com/fs/starfarer/campaign/save/B 'Ø00000' Ljava/lang/String; 
L68:    invokevirtual Method com/fs/starfarer/ui/d setText (Ljava/lang/String;)V 

        .stack same 
L71:    aload_0 
L72:    getfield Field com/fs/starfarer/campaign/save/B 'ô00000' Lcom/fs/starfarer/ui/d; 
L75:    fconst_1 
L76:    invokevirtual Method com/fs/starfarer/ui/d render (F)V 

        .stack same 
L79:    aload_0 
L80:    getfield Field com/fs/starfarer/campaign/save/B 'Ô00000' Lcom/fs/graphics/Sprite; 
L83:    aload_0 
L84:    getfield Field com/fs/starfarer/campaign/save/B 'ø00000' F 
L87:    aload_0 
L88:    getfield Field com/fs/starfarer/campaign/save/B 'Ô00000' Lcom/fs/graphics/Sprite; 
L91:    invokevirtual Method com/fs/graphics/Sprite getWidth ()F 
L94:    fsub 
L95:    aload_0 
L96:    getfield Field com/fs/starfarer/campaign/save/B Object F 
L99:    aload_0 
L100:   getfield Field com/fs/starfarer/campaign/save/B 'Ô00000' Lcom/fs/graphics/Sprite; 
L103:   invokevirtual Method com/fs/graphics/Sprite getHeight ()F 
L106:   fsub 
L107:   invokevirtual Method com/fs/graphics/Sprite render (FF)V 
L110:   aload_0 
L111:   getfield Field com/fs/starfarer/campaign/save/B return Lcom/fs/graphics/Sprite; 
L114:   aload_0 
L115:   getfield Field com/fs/starfarer/campaign/save/B 'ø00000' F 
L118:   aload_0 
L119:   getfield Field com/fs/starfarer/campaign/save/B 'Ô00000' Lcom/fs/graphics/Sprite; 
L122:   invokevirtual Method com/fs/graphics/Sprite getWidth ()F 
L125:   fsub 
L126:   aload_0 
L127:   getfield Field com/fs/starfarer/campaign/save/B Object F 
L130:   aload_0 
L131:   getfield Field com/fs/starfarer/campaign/save/B 'Ô00000' Lcom/fs/graphics/Sprite; 
L134:   invokevirtual Method com/fs/graphics/Sprite getHeight ()F 
L137:   fsub 
L138:   fconst_0 
L139:   fconst_0 
L140:   fload_1 
L141:   fconst_1 
L142:   invokevirtual Method com/fs/graphics/Sprite renderRegion (FFFFFF)V 
L145:   goto L270 

        .stack same_extended 
L148:   aload_0 
L149:   getfield Field com/fs/starfarer/campaign/save/B 'Õ00000' Lcom/fs/starfarer/class/I; 
L152:   fconst_1 
L153:   invokevirtual Method com/fs/starfarer/class/I render (F)V 
L156:   aload_0 
L157:   getfield Field com/fs/starfarer/campaign/save/B for Ljava/lang/String; 
L160:   ifnull L200 
L163:   aload_0 
L164:   getfield Field com/fs/starfarer/campaign/save/B 'ô00000' Lcom/fs/starfarer/ui/d; 
L167:   aload_0 
L168:   getfield Field com/fs/starfarer/campaign/save/B for Ljava/lang/String; 
L171:   invokevirtual Method com/fs/starfarer/ui/d setText (Ljava/lang/String;)V 
L174:   aload_0 
L175:   getfield Field com/fs/starfarer/campaign/save/B 'Ø00000' Ljava/lang/String; 
L178:   ifnull L192 
L181:   aload_0 
L182:   getfield Field com/fs/starfarer/campaign/save/B 'ô00000' Lcom/fs/starfarer/ui/d; 
L185:   aload_0 
L186:   getfield Field com/fs/starfarer/campaign/save/B 'Ø00000' Ljava/lang/String; 
L189:   invokevirtual Method com/fs/starfarer/ui/d setText (Ljava/lang/String;)V 

        .stack same 
L192:   aload_0 
L193:   getfield Field com/fs/starfarer/campaign/save/B 'ô00000' Lcom/fs/starfarer/ui/d; 
L196:   fconst_1 
L197:   invokevirtual Method com/fs/starfarer/ui/d render (F)V 

        .stack same 
L200:   aload_0 
L201:   getfield Field com/fs/starfarer/campaign/save/B int Lcom/fs/starfarer/ui/d; 
L204:   fconst_1 
L205:   invokevirtual Method com/fs/starfarer/ui/d render (F)V 
L208:   aload_0 
L209:   getfield Field com/fs/starfarer/campaign/save/B 'Ô00000' Lcom/fs/graphics/Sprite; 
L212:   aload_0 
L213:   getfield Field com/fs/starfarer/campaign/save/B 'ø00000' F 
L216:   fconst_2 
L217:   fdiv 
L218:   aload_0 
L219:   getfield Field com/fs/starfarer/campaign/save/B Object F 
L222:   fconst_2 
L223:   fdiv 
L224:   ldc +10.0f 
L226:   fsub 
L227:   aload_0 
L228:   getfield Field com/fs/starfarer/campaign/save/B o00000 F 
L231:   fconst_2 
L232:   fdiv 
L233:   fadd 
L234:   invokevirtual Method com/fs/graphics/Sprite renderAtCenter (FF)V 
L237:   aload_0 
L238:   getfield Field com/fs/starfarer/campaign/save/B return Lcom/fs/graphics/Sprite; 
L241:   aload_0 
L242:   getfield Field com/fs/starfarer/campaign/save/B 'ø00000' F 
L245:   fconst_2 
L246:   fdiv 
L247:   aload_0 
L248:   getfield Field com/fs/starfarer/campaign/save/B Object F 
L251:   fconst_2 
L252:   fdiv 
L253:   ldc +10.0f 
L255:   fsub 
L256:   aload_0 
L257:   getfield Field com/fs/starfarer/campaign/save/B o00000 F 
L260:   fconst_2 
L261:   fdiv 
L262:   fadd 
L263:   fconst_0 
L264:   fconst_0 
L265:   fload_1 
L266:   fconst_1 
L267:   invokevirtual Method com/fs/graphics/Sprite renderRegionAtCenter (FFFFFF)V 

        .stack same_extended 
L270:   invokestatic Method com/fs/graphics/util/B 'Õ00000' ()V 
L273:   ldc_w 'updateDisplayDuringSavingOrLoading' 
L276:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings class (Ljava/lang/String;)Z 
L279:   ifeq L285 
L282:   invokestatic Method org/lwjgl/opengl/Display update ()V 

        .stack same 
L285:   return 
L286:   
    .end code 
.end method 
.end class 
