.version 61 0 
.class public super com/fs/starfarer/combat/OOOo 
.super java/lang/Object 
.field private static final 'Ø00000' F = +20.0f 
.field private static final return F = +19.0f 
.field private o00000 [Lcom/fs/graphics/particle/DynamicParticleGroup; 
.field private Object F 
.field private 'Õ00000' Lcom/fs/starfarer/combat/OOOo$o; 
.field private 'Ô00000' Lcom/fs/starfarer/combat/OOOo$o; 
.field private 'Ò00000' [Lcom/fs/graphics/Object; 

.method public <init> : (FFFFF)V 
    .code stack 8 locals 7 
L0:     aload_0 
L1:     invokespecial Method java/lang/Object <init> ()V 
L4:     aload_0 
L5:     iconst_4 
L6:     anewarray com/fs/graphics/particle/DynamicParticleGroup 
L9:     putfield Field com/fs/starfarer/combat/OOOo o00000 [Lcom/fs/graphics/particle/DynamicParticleGroup; 
L12:    aload_0 
L13:    fconst_1 
L14:    putfield Field com/fs/starfarer/combat/OOOo Object F 
L17:    aload_0 
L18:    iconst_4 
L19:    anewarray com/fs/graphics/Object 
L22:    putfield Field com/fs/starfarer/combat/OOOo 'Ò00000' [Lcom/fs/graphics/Object; 
L25:    aload_0 
L26:    fload 5 
L28:    putfield Field com/fs/starfarer/combat/OOOo Object F 
L31:    iconst_0 
L32:    istore 6 
L34:    goto L54 

        .stack full 
            locals Object com/fs/starfarer/combat/OOOo Float Float Float Float Float Integer 
            stack 
        .end stack 
L37:    aload_0 
L38:    getfield Field com/fs/starfarer/combat/OOOo o00000 [Lcom/fs/graphics/particle/DynamicParticleGroup; 
L41:    iload 6 
L43:    new com/fs/graphics/particle/DynamicParticleGroup 
L46:    dup 
L47:    invokespecial Method com/fs/graphics/particle/DynamicParticleGroup <init> ()V 
L50:    aastore 
L51:    iinc 6 1 

        .stack same 
L54:    iload 6 
L56:    aload_0 
L57:    getfield Field com/fs/starfarer/combat/OOOo o00000 [Lcom/fs/graphics/particle/DynamicParticleGroup; 
L60:    arraylength 
L61:    if_icmplt L37 
L64:    aload_0 
L65:    getfield Field com/fs/starfarer/combat/OOOo 'Ò00000' [Lcom/fs/graphics/Object; 
L68:    iconst_0 
L69:    ldc 'backgrounds' 
L71:    ldc 'star0' 
L73:    invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'Ó00000' (Ljava/lang/String;Ljava/lang/String;)Lcom/fs/graphics/Object; 
L76:    aastore 
L77:    aload_0 
L78:    getfield Field com/fs/starfarer/combat/OOOo 'Ò00000' [Lcom/fs/graphics/Object; 
L81:    iconst_1 
L82:    ldc 'backgrounds' 
L84:    ldc 'star1' 
L86:    invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'Ó00000' (Ljava/lang/String;Ljava/lang/String;)Lcom/fs/graphics/Object; 
L89:    aastore 
L90:    aload_0 
L91:    getfield Field com/fs/starfarer/combat/OOOo 'Ò00000' [Lcom/fs/graphics/Object; 
L94:    iconst_2 
L95:    ldc 'backgrounds' 
L97:    ldc 'star2' 
L99:    invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'Ó00000' (Ljava/lang/String;Ljava/lang/String;)Lcom/fs/graphics/Object; 
L102:   aastore 
L103:   aload_0 
L104:   getfield Field com/fs/starfarer/combat/OOOo 'Ò00000' [Lcom/fs/graphics/Object; 
L107:   iconst_3 
L108:   ldc 'backgrounds' 
L110:   ldc 'star3' 
L112:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'Ó00000' (Ljava/lang/String;Ljava/lang/String;)Lcom/fs/graphics/Object; 
L115:   aastore 
L116:   aload_0 
L117:   new com/fs/starfarer/combat/OOOo$o 
L120:   dup 
L121:   aload_0 
L122:   fload_1 
L123:   fload_2 
L124:   fload_3 
L125:   fload 4 
L127:   invokespecial Method com/fs/starfarer/combat/OOOo$o <init> (Lcom/fs/starfarer/combat/OOOo;FFFF)V 
L130:   putfield Field com/fs/starfarer/combat/OOOo 'Õ00000' Lcom/fs/starfarer/combat/OOOo$o; 
L133:   aload_0 
L134:   new com/fs/starfarer/combat/OOOo$o 
L137:   dup 
L138:   aload_0 
L139:   fload_1 
L140:   fload_2 
L141:   fload_3 
L142:   fload 4 
L144:   invokespecial Method com/fs/starfarer/combat/OOOo$o <init> (Lcom/fs/starfarer/combat/OOOo;FFFF)V 
L147:   putfield Field com/fs/starfarer/combat/OOOo 'Ô00000' Lcom/fs/starfarer/combat/OOOo$o; 
L150:   aload_0 
L151:   fload_1 
L152:   fload_2 
L153:   fload_3 
L154:   fload 4 
L156:   aload_0 
L157:   fload_3 
L158:   fload 4 
L160:   fmul 
L161:   invokevirtual Method com/fs/starfarer/combat/OOOo o00000 (F)I 
L164:   invokevirtual Method com/fs/starfarer/combat/OOOo o00000 (FFFFI)V 
L167:   return 
L168:   
    .end code 
.end method 

.method private o00000 : (F)I 
    .code stack 4 locals 4 
L0:     fload_1 
L1:     fconst_0 
L2:     fcmpl 
L3:     ifne L8 
L6:     iconst_0 
L7:     ireturn 

        .stack same 
L8:     fload_1 
L9:     ldc +10000.0f 
L11:    fdiv 
L12:    aload_0 
L13:    getfield Field com/fs/starfarer/combat/OOOo Object F 
L16:    fmul 
L17:    fstore_2 
L18:    fload_2 
L19:    fload_2 
L20:    f2i 
L21:    i2f 
L22:    fsub 
L23:    fstore_3 
L24:    invokestatic Method java/lang/Math random ()D 
L27:    fload_3 
L28:    f2d 
L29:    dcmpg 
L30:    ifgt L38 
L33:    fconst_1 
L34:    fstore_3 
L35:    goto L40 

        .stack append Float Float 
L38:    fconst_0 
L39:    fstore_3 

        .stack same 
L40:    fload_2 
L41:    f2i 
L42:    fload_3 
L43:    f2i 
L44:    iadd 
L45:    ireturn 
L46:    
    .end code 
.end method 

.method public o00000 : (FFFF)V 
    .code stack 8 locals 13 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/OOOo 'Õ00000' Lcom/fs/starfarer/combat/OOOo$o; 
L4:     fload_1 
L5:     putfield Field com/fs/starfarer/combat/OOOo$o 'Ó00000' F 
L8:     aload_0 
L9:     getfield Field com/fs/starfarer/combat/OOOo 'Õ00000' Lcom/fs/starfarer/combat/OOOo$o; 
L12:    fload_2 
L13:    putfield Field com/fs/starfarer/combat/OOOo$o class F 
L16:    aload_0 
L17:    getfield Field com/fs/starfarer/combat/OOOo 'Õ00000' Lcom/fs/starfarer/combat/OOOo$o; 
L20:    fload_3 
L21:    putfield Field com/fs/starfarer/combat/OOOo$o 'Ô00000' F 
L24:    aload_0 
L25:    getfield Field com/fs/starfarer/combat/OOOo 'Õ00000' Lcom/fs/starfarer/combat/OOOo$o; 
L28:    fload 4 
L30:    putfield Field com/fs/starfarer/combat/OOOo$o new F 
L33:    aload_0 
L34:    getfield Field com/fs/starfarer/combat/OOOo 'Ô00000' Lcom/fs/starfarer/combat/OOOo$o; 
L37:    getfield Field com/fs/starfarer/combat/OOOo$o 'Ó00000' F 
L40:    fload_1 
L41:    fsub 
L42:    fstore 5 
L44:    fload 5 
L46:    ldc +19.0f 
L48:    fadd 
L49:    fconst_0 
L50:    fcmpg 
L51:    ifge L60 
L54:    fconst_0 
L55:    fstore 5 
L57:    goto L69 

        .stack append Float 
L60:    fload 5 
L62:    ldc +20.0f 
L64:    invokestatic Method java/lang/Math max (FF)F 
L67:    fstore 5 

        .stack same 
L69:    fload_1 
L70:    fload_3 
L71:    fadd 
L72:    aload_0 
L73:    getfield Field com/fs/starfarer/combat/OOOo 'Ô00000' Lcom/fs/starfarer/combat/OOOo$o; 
L76:    getfield Field com/fs/starfarer/combat/OOOo$o 'Ó00000' F 
L79:    aload_0 
L80:    getfield Field com/fs/starfarer/combat/OOOo 'Ô00000' Lcom/fs/starfarer/combat/OOOo$o; 
L83:    getfield Field com/fs/starfarer/combat/OOOo$o 'Ô00000' F 
L86:    fadd 
L87:    fsub 
L88:    fstore 6 
L90:    fload 6 
L92:    ldc +19.0f 
L94:    fadd 
L95:    fconst_0 
L96:    fcmpg 
L97:    ifge L106 
L100:   fconst_0 
L101:   fstore 6 
L103:   goto L115 

        .stack append Float 
L106:   fload 6 
L108:   ldc +20.0f 
L110:   invokestatic Method java/lang/Math max (FF)F 
L113:   fstore 6 

        .stack same 
L115:   aload_0 
L116:   getfield Field com/fs/starfarer/combat/OOOo 'Ô00000' Lcom/fs/starfarer/combat/OOOo$o; 
L119:   getfield Field com/fs/starfarer/combat/OOOo$o class F 
L122:   fload_2 
L123:   fsub 
L124:   fstore 7 
L126:   fload 7 
L128:   ldc +19.0f 
L130:   fadd 
L131:   fconst_0 
L132:   fcmpg 
L133:   ifge L142 
L136:   fconst_0 
L137:   fstore 7 
L139:   goto L151 

        .stack append Float 
L142:   fload 7 
L144:   ldc +20.0f 
L146:   invokestatic Method java/lang/Math max (FF)F 
L149:   fstore 7 

        .stack same 
L151:   fload_2 
L152:   fload 4 
L154:   fadd 
L155:   aload_0 
L156:   getfield Field com/fs/starfarer/combat/OOOo 'Ô00000' Lcom/fs/starfarer/combat/OOOo$o; 
L159:   getfield Field com/fs/starfarer/combat/OOOo$o class F 
L162:   aload_0 
L163:   getfield Field com/fs/starfarer/combat/OOOo 'Ô00000' Lcom/fs/starfarer/combat/OOOo$o; 
L166:   getfield Field com/fs/starfarer/combat/OOOo$o new F 
L169:   fadd 
L170:   fsub 
L171:   fstore 8 
L173:   fload 8 
L175:   ldc +19.0f 
L177:   fadd 
L178:   fconst_0 
L179:   fcmpg 
L180:   ifge L189 
L183:   fconst_0 
L184:   fstore 8 
L186:   goto L198 

        .stack append Float 
L189:   fload 8 
L191:   ldc +20.0f 
L193:   invokestatic Method java/lang/Math max (FF)F 
L196:   fstore 8 

        .stack same 
L198:   fload 8 
L200:   fconst_0 
L201:   fcmpl 
L202:   ifne L227 
L205:   fload 7 
L207:   fconst_0 
L208:   fcmpl 
L209:   ifne L227 
L212:   fload 5 
L214:   fconst_0 
L215:   fcmpl 
L216:   ifne L227 
L219:   fload 6 
L221:   fconst_0 
L222:   fcmpl 
L223:   ifne L227 
L226:   return 

        .stack same 
L227:   fload 5 
L229:   fconst_0 
L230:   fcmpl 
L231:   ifle L311 
L234:   fload 5 
L236:   aload_0 
L237:   getfield Field com/fs/starfarer/combat/OOOo 'Õ00000' Lcom/fs/starfarer/combat/OOOo$o; 
L240:   getfield Field com/fs/starfarer/combat/OOOo$o 'Ô00000' F 
L243:   fcmpl 
L244:   ifle L256 
L247:   aload_0 
L248:   getfield Field com/fs/starfarer/combat/OOOo 'Õ00000' Lcom/fs/starfarer/combat/OOOo$o; 
L251:   getfield Field com/fs/starfarer/combat/OOOo$o 'Ô00000' F 
L254:   fstore 5 

        .stack same 
L256:   aload_0 
L257:   getfield Field com/fs/starfarer/combat/OOOo 'Ô00000' Lcom/fs/starfarer/combat/OOOo$o; 
L260:   getfield Field com/fs/starfarer/combat/OOOo$o 'Ó00000' F 
L263:   fload 5 
L265:   fsub 
L266:   fstore 9 
L268:   aload_0 
L269:   getfield Field com/fs/starfarer/combat/OOOo 'Ô00000' Lcom/fs/starfarer/combat/OOOo$o; 
L272:   getfield Field com/fs/starfarer/combat/OOOo$o class F 
L275:   fstore 10 
L277:   aload_0 
L278:   getfield Field com/fs/starfarer/combat/OOOo 'Ô00000' Lcom/fs/starfarer/combat/OOOo$o; 
L281:   getfield Field com/fs/starfarer/combat/OOOo$o new F 
L284:   fstore 11 
L286:   fload 5 
L288:   fstore 12 
L290:   aload_0 
L291:   fload 9 
L293:   fload 10 
L295:   fload 12 
L297:   fload 11 
L299:   aload_0 
L300:   fload 12 
L302:   fload 11 
L304:   fmul 
L305:   invokevirtual Method com/fs/starfarer/combat/OOOo o00000 (F)I 
L308:   invokevirtual Method com/fs/starfarer/combat/OOOo o00000 (FFFFI)V 

        .stack same 
L311:   fload 6 
L313:   fconst_0 
L314:   fcmpl 
L315:   ifle L400 
L318:   fload 6 
L320:   aload_0 
L321:   getfield Field com/fs/starfarer/combat/OOOo 'Õ00000' Lcom/fs/starfarer/combat/OOOo$o; 
L324:   getfield Field com/fs/starfarer/combat/OOOo$o 'Ô00000' F 
L327:   fcmpl 
L328:   ifle L340 
L331:   aload_0 
L332:   getfield Field com/fs/starfarer/combat/OOOo 'Õ00000' Lcom/fs/starfarer/combat/OOOo$o; 
L335:   getfield Field com/fs/starfarer/combat/OOOo$o 'Ô00000' F 
L338:   fstore 6 

        .stack same 
L340:   aload_0 
L341:   getfield Field com/fs/starfarer/combat/OOOo 'Ô00000' Lcom/fs/starfarer/combat/OOOo$o; 
L344:   getfield Field com/fs/starfarer/combat/OOOo$o 'Ó00000' F 
L347:   aload_0 
L348:   getfield Field com/fs/starfarer/combat/OOOo 'Ô00000' Lcom/fs/starfarer/combat/OOOo$o; 
L351:   getfield Field com/fs/starfarer/combat/OOOo$o 'Ô00000' F 
L354:   fadd 
L355:   fstore 9 
L357:   aload_0 
L358:   getfield Field com/fs/starfarer/combat/OOOo 'Ô00000' Lcom/fs/starfarer/combat/OOOo$o; 
L361:   getfield Field com/fs/starfarer/combat/OOOo$o class F 
L364:   fstore 10 
L366:   aload_0 
L367:   getfield Field com/fs/starfarer/combat/OOOo 'Ô00000' Lcom/fs/starfarer/combat/OOOo$o; 
L370:   getfield Field com/fs/starfarer/combat/OOOo$o new F 
L373:   fstore 11 
L375:   fload 6 
L377:   fstore 12 
L379:   aload_0 
L380:   fload 9 
L382:   fload 10 
L384:   fload 12 
L386:   fload 11 
L388:   aload_0 
L389:   fload 12 
L391:   fload 11 
L393:   fmul 
L394:   invokevirtual Method com/fs/starfarer/combat/OOOo o00000 (F)I 
L397:   invokevirtual Method com/fs/starfarer/combat/OOOo o00000 (FFFFI)V 

        .stack same 
L400:   fload 8 
L402:   fconst_0 
L403:   fcmpl 
L404:   ifle L498 
L407:   fload 8 
L409:   aload_0 
L410:   getfield Field com/fs/starfarer/combat/OOOo 'Õ00000' Lcom/fs/starfarer/combat/OOOo$o; 
L413:   getfield Field com/fs/starfarer/combat/OOOo$o new F 
L416:   fcmpl 
L417:   ifle L429 
L420:   aload_0 
L421:   getfield Field com/fs/starfarer/combat/OOOo 'Õ00000' Lcom/fs/starfarer/combat/OOOo$o; 
L424:   getfield Field com/fs/starfarer/combat/OOOo$o new F 
L427:   fstore 8 

        .stack same 
L429:   aload_0 
L430:   getfield Field com/fs/starfarer/combat/OOOo 'Ô00000' Lcom/fs/starfarer/combat/OOOo$o; 
L433:   getfield Field com/fs/starfarer/combat/OOOo$o 'Ó00000' F 
L436:   fload 5 
L438:   fsub 
L439:   fstore 9 
L441:   aload_0 
L442:   getfield Field com/fs/starfarer/combat/OOOo 'Ô00000' Lcom/fs/starfarer/combat/OOOo$o; 
L445:   getfield Field com/fs/starfarer/combat/OOOo$o class F 
L448:   aload_0 
L449:   getfield Field com/fs/starfarer/combat/OOOo 'Ô00000' Lcom/fs/starfarer/combat/OOOo$o; 
L452:   getfield Field com/fs/starfarer/combat/OOOo$o new F 
L455:   fadd 
L456:   fstore 10 
L458:   aload_0 
L459:   getfield Field com/fs/starfarer/combat/OOOo 'Ô00000' Lcom/fs/starfarer/combat/OOOo$o; 
L462:   getfield Field com/fs/starfarer/combat/OOOo$o 'Ô00000' F 
L465:   fload 5 
L467:   fadd 
L468:   fload 6 
L470:   fadd 
L471:   fstore 11 
L473:   fload 8 
L475:   fstore 12 
L477:   aload_0 
L478:   fload 9 
L480:   fload 10 
L482:   fload 11 
L484:   fload 12 
L486:   aload_0 
L487:   fload 11 
L489:   fload 12 
L491:   fmul 
L492:   invokevirtual Method com/fs/starfarer/combat/OOOo o00000 (F)I 
L495:   invokevirtual Method com/fs/starfarer/combat/OOOo o00000 (FFFFI)V 

        .stack same_extended 
L498:   fload 7 
L500:   fconst_0 
L501:   fcmpl 
L502:   ifle L591 
L505:   fload 7 
L507:   aload_0 
L508:   getfield Field com/fs/starfarer/combat/OOOo 'Õ00000' Lcom/fs/starfarer/combat/OOOo$o; 
L511:   getfield Field com/fs/starfarer/combat/OOOo$o new F 
L514:   fcmpl 
L515:   ifle L527 
L518:   aload_0 
L519:   getfield Field com/fs/starfarer/combat/OOOo 'Õ00000' Lcom/fs/starfarer/combat/OOOo$o; 
L522:   getfield Field com/fs/starfarer/combat/OOOo$o new F 
L525:   fstore 7 

        .stack same 
L527:   aload_0 
L528:   getfield Field com/fs/starfarer/combat/OOOo 'Ô00000' Lcom/fs/starfarer/combat/OOOo$o; 
L531:   getfield Field com/fs/starfarer/combat/OOOo$o 'Ó00000' F 
L534:   fload 5 
L536:   fsub 
L537:   fstore 9 
L539:   aload_0 
L540:   getfield Field com/fs/starfarer/combat/OOOo 'Ô00000' Lcom/fs/starfarer/combat/OOOo$o; 
L543:   getfield Field com/fs/starfarer/combat/OOOo$o class F 
L546:   fload 7 
L548:   fsub 
L549:   fstore 10 
L551:   aload_0 
L552:   getfield Field com/fs/starfarer/combat/OOOo 'Ô00000' Lcom/fs/starfarer/combat/OOOo$o; 
L555:   getfield Field com/fs/starfarer/combat/OOOo$o 'Ô00000' F 
L558:   fload 5 
L560:   fadd 
L561:   fload 6 
L563:   fadd 
L564:   fstore 11 
L566:   fload 7 
L568:   fstore 12 
L570:   aload_0 
L571:   fload 9 
L573:   fload 10 
L575:   fload 11 
L577:   fload 12 
L579:   aload_0 
L580:   fload 11 
L582:   fload 12 
L584:   fmul 
L585:   invokevirtual Method com/fs/starfarer/combat/OOOo o00000 (F)I 
L588:   invokevirtual Method com/fs/starfarer/combat/OOOo o00000 (FFFFI)V 

        .stack same 
L591:   aload_0 
L592:   getfield Field com/fs/starfarer/combat/OOOo 'Ô00000' Lcom/fs/starfarer/combat/OOOo$o; 
L595:   dup 
L596:   getfield Field com/fs/starfarer/combat/OOOo$o 'Ó00000' F 
L599:   fload 5 
L601:   fsub 
L602:   putfield Field com/fs/starfarer/combat/OOOo$o 'Ó00000' F 
L605:   aload_0 
L606:   getfield Field com/fs/starfarer/combat/OOOo 'Ô00000' Lcom/fs/starfarer/combat/OOOo$o; 
L609:   dup 
L610:   getfield Field com/fs/starfarer/combat/OOOo$o class F 
L613:   fload 7 
L615:   fsub 
L616:   putfield Field com/fs/starfarer/combat/OOOo$o class F 
L619:   aload_0 
L620:   getfield Field com/fs/starfarer/combat/OOOo 'Ô00000' Lcom/fs/starfarer/combat/OOOo$o; 
L623:   dup 
L624:   getfield Field com/fs/starfarer/combat/OOOo$o 'Ô00000' F 
L627:   fload 5 
L629:   fload 6 
L631:   fadd 
L632:   fadd 
L633:   putfield Field com/fs/starfarer/combat/OOOo$o 'Ô00000' F 
L636:   aload_0 
L637:   getfield Field com/fs/starfarer/combat/OOOo 'Ô00000' Lcom/fs/starfarer/combat/OOOo$o; 
L640:   dup 
L641:   getfield Field com/fs/starfarer/combat/OOOo$o new F 
L644:   fload 8 
L646:   fload 7 
L648:   fadd 
L649:   fadd 
L650:   putfield Field com/fs/starfarer/combat/OOOo$o new F 
L653:   aload_0 
L654:   invokevirtual Method com/fs/starfarer/combat/OOOo o00000 ()V 
L657:   return 
L658:   
    .end code 
.end method 

.method private o00000 : ()V 
    .code stack 4 locals 7 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/OOOo 'Õ00000' Lcom/fs/starfarer/combat/OOOo$o; 
L4:     getfield Field com/fs/starfarer/combat/OOOo$o 'Ó00000' F 
L7:     ldc +20.0f 
L9:     fsub 
L10:    fstore_1 
L11:    aload_0 
L12:    getfield Field com/fs/starfarer/combat/OOOo 'Õ00000' Lcom/fs/starfarer/combat/OOOo$o; 
L15:    getfield Field com/fs/starfarer/combat/OOOo$o class F 
L18:    ldc +20.0f 
L20:    fsub 
L21:    fstore_2 
L22:    aload_0 
L23:    getfield Field com/fs/starfarer/combat/OOOo 'Õ00000' Lcom/fs/starfarer/combat/OOOo$o; 
L26:    getfield Field com/fs/starfarer/combat/OOOo$o 'Ó00000' F 
L29:    aload_0 
L30:    getfield Field com/fs/starfarer/combat/OOOo 'Õ00000' Lcom/fs/starfarer/combat/OOOo$o; 
L33:    getfield Field com/fs/starfarer/combat/OOOo$o 'Ô00000' F 
L36:    fadd 
L37:    ldc +20.0f 
L39:    fadd 
L40:    fstore_3 
L41:    aload_0 
L42:    getfield Field com/fs/starfarer/combat/OOOo 'Õ00000' Lcom/fs/starfarer/combat/OOOo$o; 
L45:    getfield Field com/fs/starfarer/combat/OOOo$o class F 
L48:    aload_0 
L49:    getfield Field com/fs/starfarer/combat/OOOo 'Õ00000' Lcom/fs/starfarer/combat/OOOo$o; 
L52:    getfield Field com/fs/starfarer/combat/OOOo$o new F 
L55:    fadd 
L56:    ldc +20.0f 
L58:    fadd 
L59:    fstore 4 
L61:    aload_0 
L62:    aload_0 
L63:    getfield Field com/fs/starfarer/combat/OOOo o00000 [Lcom/fs/graphics/particle/DynamicParticleGroup; 
L66:    iconst_0 
L67:    aaload 
L68:    invokevirtual Method com/fs/starfarer/combat/OOOo o00000 (Lcom/fs/graphics/particle/DynamicParticleGroup;)V 
L71:    aload_0 
L72:    aload_0 
L73:    getfield Field com/fs/starfarer/combat/OOOo o00000 [Lcom/fs/graphics/particle/DynamicParticleGroup; 
L76:    iconst_1 
L77:    aaload 
L78:    invokevirtual Method com/fs/starfarer/combat/OOOo o00000 (Lcom/fs/graphics/particle/DynamicParticleGroup;)V 
L81:    aload_0 
L82:    aload_0 
L83:    getfield Field com/fs/starfarer/combat/OOOo o00000 [Lcom/fs/graphics/particle/DynamicParticleGroup; 
L86:    iconst_2 
L87:    aaload 
L88:    invokevirtual Method com/fs/starfarer/combat/OOOo o00000 (Lcom/fs/graphics/particle/DynamicParticleGroup;)V 
L91:    aload_0 
L92:    aload_0 
L93:    getfield Field com/fs/starfarer/combat/OOOo o00000 [Lcom/fs/graphics/particle/DynamicParticleGroup; 
L96:    iconst_3 
L97:    aaload 
L98:    invokevirtual Method com/fs/starfarer/combat/OOOo o00000 (Lcom/fs/graphics/particle/DynamicParticleGroup;)V 
L101:   aload_0 
L102:   getfield Field com/fs/starfarer/combat/OOOo 'Ô00000' Lcom/fs/starfarer/combat/OOOo$o; 
L105:   getfield Field com/fs/starfarer/combat/OOOo$o 'Ó00000' F 
L108:   fstore 5 
L110:   aload_0 
L111:   getfield Field com/fs/starfarer/combat/OOOo 'Ô00000' Lcom/fs/starfarer/combat/OOOo$o; 
L114:   getfield Field com/fs/starfarer/combat/OOOo$o class F 
L117:   fstore 6 
L119:   aload_0 
L120:   getfield Field com/fs/starfarer/combat/OOOo 'Ô00000' Lcom/fs/starfarer/combat/OOOo$o; 
L123:   fload_1 
L124:   aload_0 
L125:   getfield Field com/fs/starfarer/combat/OOOo 'Ô00000' Lcom/fs/starfarer/combat/OOOo$o; 
L128:   getfield Field com/fs/starfarer/combat/OOOo$o 'Ó00000' F 
L131:   invokestatic Method java/lang/Math max (FF)F 
L134:   putfield Field com/fs/starfarer/combat/OOOo$o 'Ó00000' F 
L137:   aload_0 
L138:   getfield Field com/fs/starfarer/combat/OOOo 'Ô00000' Lcom/fs/starfarer/combat/OOOo$o; 
L141:   fload_2 
L142:   aload_0 
L143:   getfield Field com/fs/starfarer/combat/OOOo 'Ô00000' Lcom/fs/starfarer/combat/OOOo$o; 
L146:   getfield Field com/fs/starfarer/combat/OOOo$o class F 
L149:   invokestatic Method java/lang/Math max (FF)F 
L152:   putfield Field com/fs/starfarer/combat/OOOo$o class F 
L155:   aload_0 
L156:   getfield Field com/fs/starfarer/combat/OOOo 'Ô00000' Lcom/fs/starfarer/combat/OOOo$o; 
L159:   fload_3 
L160:   fload 5 
L162:   aload_0 
L163:   getfield Field com/fs/starfarer/combat/OOOo 'Ô00000' Lcom/fs/starfarer/combat/OOOo$o; 
L166:   getfield Field com/fs/starfarer/combat/OOOo$o 'Ô00000' F 
L169:   fadd 
L170:   invokestatic Method java/lang/Math min (FF)F 
L173:   aload_0 
L174:   getfield Field com/fs/starfarer/combat/OOOo 'Ô00000' Lcom/fs/starfarer/combat/OOOo$o; 
L177:   getfield Field com/fs/starfarer/combat/OOOo$o 'Ó00000' F 
L180:   fsub 
L181:   putfield Field com/fs/starfarer/combat/OOOo$o 'Ô00000' F 
L184:   aload_0 
L185:   getfield Field com/fs/starfarer/combat/OOOo 'Ô00000' Lcom/fs/starfarer/combat/OOOo$o; 
L188:   fload 4 
L190:   fload 6 
L192:   aload_0 
L193:   getfield Field com/fs/starfarer/combat/OOOo 'Ô00000' Lcom/fs/starfarer/combat/OOOo$o; 
L196:   getfield Field com/fs/starfarer/combat/OOOo$o new F 
L199:   fadd 
L200:   invokestatic Method java/lang/Math min (FF)F 
L203:   aload_0 
L204:   getfield Field com/fs/starfarer/combat/OOOo 'Ô00000' Lcom/fs/starfarer/combat/OOOo$o; 
L207:   getfield Field com/fs/starfarer/combat/OOOo$o class F 
L210:   fsub 
L211:   putfield Field com/fs/starfarer/combat/OOOo$o new F 
L214:   return 
L215:   
    .end code 
.end method 

.method private o00000 : (Lcom/fs/graphics/particle/DynamicParticleGroup;)V 
    .code stack 2 locals 12 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/OOOo 'Õ00000' Lcom/fs/starfarer/combat/OOOo$o; 
L4:     getfield Field com/fs/starfarer/combat/OOOo$o 'Ó00000' F 
L7:     ldc +20.0f 
L9:     fsub 
L10:    fstore_2 
L11:    aload_0 
L12:    getfield Field com/fs/starfarer/combat/OOOo 'Õ00000' Lcom/fs/starfarer/combat/OOOo$o; 
L15:    getfield Field com/fs/starfarer/combat/OOOo$o class F 
L18:    ldc +20.0f 
L20:    fsub 
L21:    fstore_3 
L22:    aload_0 
L23:    getfield Field com/fs/starfarer/combat/OOOo 'Õ00000' Lcom/fs/starfarer/combat/OOOo$o; 
L26:    getfield Field com/fs/starfarer/combat/OOOo$o 'Ó00000' F 
L29:    aload_0 
L30:    getfield Field com/fs/starfarer/combat/OOOo 'Õ00000' Lcom/fs/starfarer/combat/OOOo$o; 
L33:    getfield Field com/fs/starfarer/combat/OOOo$o 'Ô00000' F 
L36:    fadd 
L37:    ldc +20.0f 
L39:    fadd 
L40:    fstore 4 
L42:    aload_0 
L43:    getfield Field com/fs/starfarer/combat/OOOo 'Õ00000' Lcom/fs/starfarer/combat/OOOo$o; 
L46:    getfield Field com/fs/starfarer/combat/OOOo$o class F 
L49:    aload_0 
L50:    getfield Field com/fs/starfarer/combat/OOOo 'Õ00000' Lcom/fs/starfarer/combat/OOOo$o; 
L53:    getfield Field com/fs/starfarer/combat/OOOo$o new F 
L56:    fadd 
L57:    ldc +20.0f 
L59:    fadd 
L60:    fstore 5 
L62:    new java/util/ArrayList 
L65:    dup 
L66:    invokespecial Method java/util/ArrayList <init> ()V 
L69:    astore 6 
L71:    aload_1 
L72:    invokevirtual Method com/fs/graphics/particle/DynamicParticleGroup getParticles ()Ljava/util/List; 
L75:    astore 7 
L77:    aload 7 
L79:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L84:    astore 9 
L86:    goto L155 

        .stack full 
            locals Object com/fs/starfarer/combat/OOOo Object com/fs/graphics/particle/DynamicParticleGroup Float Float Float Float Object java/util/List Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L89:    aload 9 
L91:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L96:    checkcast com/fs/graphics/particle/BaseParticle 
L99:    astore 8 
L101:   aload 8 
L103:   invokevirtual Method com/fs/graphics/particle/BaseParticle getX ()F 
L106:   fstore 10 
L108:   aload 8 
L110:   invokevirtual Method com/fs/graphics/particle/BaseParticle getY ()F 
L113:   fstore 11 
L115:   fload 10 
L117:   fload_2 
L118:   fcmpg 
L119:   iflt L145 
L122:   fload 10 
L124:   fload 4 
L126:   fcmpl 
L127:   ifgt L145 
L130:   fload 11 
L132:   fload_3 
L133:   fcmpg 
L134:   iflt L145 
L137:   fload 11 
L139:   fload 5 
L141:   fcmpl 
L142:   ifle L155 

        .stack full 
            locals Object com/fs/starfarer/combat/OOOo Object com/fs/graphics/particle/DynamicParticleGroup Float Float Float Float Object java/util/List Object java/util/List Object com/fs/graphics/particle/BaseParticle Object java/util/Iterator Float Float 
            stack 
        .end stack 
L145:   aload 6 
L147:   aload 8 
L149:   invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L154:   pop 

        .stack full 
            locals Object com/fs/starfarer/combat/OOOo Object com/fs/graphics/particle/DynamicParticleGroup Float Float Float Float Object java/util/List Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L155:   aload 9 
L157:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L162:   ifne L89 
L165:   aload 7 
L167:   aload 6 
L169:   invokeinterface InterfaceMethod java/util/List removeAll (Ljava/util/Collection;)Z 2 
L174:   pop 
L175:   return 
L176:   
    .end code 
.end method 

.method private o00000 : (FFFFI)V 
    .code stack 8 locals 17 
L0:     iconst_1 
L1:     anewarray java/awt/Color 
L4:     dup 
L5:     iconst_0 
L6:     new java/awt/Color 
L9:     dup 
L10:    sipush 255 
L13:    sipush 255 
L16:    sipush 255 
L19:    invokespecial Method java/awt/Color <init> (III)V 
L22:    aastore 
L23:    astore 6 
L25:    iconst_0 
L26:    istore 7 
L28:    goto L269 

        .stack append Object [Ljava/awt/Color; Integer 
L31:    invokestatic Method java/lang/Math random ()D 
L34:    d2f 
L35:    invokestatic Method java/lang/Math random ()D 
L38:    d2f 
L39:    fmul 
L40:    ldc +4.5f 
L42:    fmul 
L43:    ldc +6.5f 
L45:    fadd 
L46:    fstore 8 
L48:    invokestatic Method java/lang/Math random ()D 
L51:    fload_3 
L52:    f2d 
L53:    dmul 
L54:    fload_1 
L55:    f2d 
L56:    dadd 
L57:    d2i 
L58:    i2f 
L59:    fstore 9 
L61:    invokestatic Method java/lang/Math random ()D 
L64:    fload 4 
L66:    f2d 
L67:    dmul 
L68:    fload_2 
L69:    f2d 
L70:    dadd 
L71:    d2i 
L72:    i2f 
L73:    fstore 10 
L75:    aload 6 
L77:    invokestatic Method java/lang/Math random ()D 
L80:    aload 6 
L82:    arraylength 
L83:    i2d 
L84:    dmul 
L85:    d2i 
L86:    aaload 
L87:    astore 11 
L89:    invokestatic Method java/lang/Math random ()D 
L92:    d2f 
L93:    fstore 12 
L95:    fload 12 
L97:    fconst_1 
L98:    fcmpg 
L99:    ifge L105 
L102:   fconst_1 
L103:   fstore 12 

        .stack full 
            locals Object com/fs/starfarer/combat/OOOo Float Float Float Float Integer Object [Ljava/awt/Color; Integer Float Float Float Object java/awt/Color Float 
            stack 
        .end stack 
L105:   fload 12 
L107:   ldc +0.75f 
L109:   fmul 
L110:   fstore 12 
L112:   new java/awt/Color 
L115:   dup 
L116:   aload 11 
L118:   invokevirtual Method java/awt/Color getRed ()I 
L121:   i2f 
L122:   fload 12 
L124:   fmul 
L125:   f2i 
L126:   aload 11 
L128:   invokevirtual Method java/awt/Color getGreen ()I 
L131:   i2f 
L132:   fload 12 
L134:   fmul 
L135:   f2i 
L136:   aload 11 
L138:   invokevirtual Method java/awt/Color getBlue ()I 
L141:   i2f 
L142:   fload 12 
L144:   fmul 
L145:   f2i 
L146:   sipush 200 
L149:   invokespecial Method java/awt/Color <init> (IIII)V 
L152:   astore 13 
L154:   iconst_0 
L155:   istore 14 
L157:   invokestatic Method java/lang/Math random ()D 
L160:   d2f 
L161:   fstore 15 
L163:   fload 15 
L165:   ldc +0.25f 
L167:   fcmpg 
L168:   ifge L177 
L171:   iconst_0 
L172:   istore 14 
L174:   goto L208 

        .stack append Object java/awt/Color Integer Float 
L177:   fload 15 
L179:   ldc +0.5f 
L181:   fcmpg 
L182:   ifge L191 
L185:   iconst_1 
L186:   istore 14 
L188:   goto L208 

        .stack same 
L191:   fload 15 
L193:   ldc +0.75f 
L195:   fcmpg 
L196:   ifge L205 
L199:   iconst_2 
L200:   istore 14 
L202:   goto L208 

        .stack same 
L205:   iconst_3 
L206:   istore 14 

        .stack same 
L208:   new com/fs/graphics/particle/SmoothParticle 
L211:   dup 
L212:   aload 13 
L214:   fload 8 
L216:   invokespecial Method com/fs/graphics/particle/SmoothParticle <init> (Ljava/awt/Color;F)V 
L219:   astore 16 
L221:   aload 16 
L223:   aload_0 
L224:   getfield Field com/fs/starfarer/combat/OOOo 'Ò00000' [Lcom/fs/graphics/Object; 
L227:   iload 14 
L229:   aaload 
L230:   invokevirtual Method com/fs/graphics/particle/SmoothParticle setTexture (Lcom/fs/graphics/Object;)V 
L233:   aload 16 
L235:   fconst_1 
L236:   invokevirtual Method com/fs/graphics/particle/SmoothParticle setMaxAge (F)V 
L239:   aload 16 
L241:   fload 9 
L243:   fload 10 
L245:   invokevirtual Method com/fs/graphics/particle/SmoothParticle setPos (FF)V 
L248:   aload 16 
L250:   fconst_0 
L251:   invokevirtual Method com/fs/graphics/particle/SmoothParticle setRampUpPeriod (F)V 
L254:   aload_0 
L255:   getfield Field com/fs/starfarer/combat/OOOo o00000 [Lcom/fs/graphics/particle/DynamicParticleGroup; 
L258:   iload 14 
L260:   aaload 
L261:   aload 16 
L263:   invokevirtual Method com/fs/graphics/particle/DynamicParticleGroup add (Lcom/fs/graphics/particle/BaseParticle;)V 
L266:   iinc 7 1 

        .stack full 
            locals Object com/fs/starfarer/combat/OOOo Float Float Float Float Integer Object [Ljava/awt/Color; Integer 
            stack 
        .end stack 
L269:   iload 7 
L271:   iload 5 
L273:   if_icmplt L31 
L276:   return 
L277:   
    .end code 
.end method 

.method public new : ()[Lcom/fs/graphics/particle/DynamicParticleGroup; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/OOOo o00000 [Lcom/fs/graphics/particle/DynamicParticleGroup; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public o00000 : (FF)V
    .code stack 3 locals 3
L0:     fload_1
L1:     fload_2
L2:     aload_0
L3:     getfield Field com/fs/starfarer/combat/OOOo o00000 [Lcom/fs/graphics/particle/DynamicParticleGroup;
L6:     invokestatic Method com/genir/renderer/overrides/Starfield render (FF[Lcom/fs/graphics/particle/DynamicParticleGroup;)V
L9:     return
L10:
        .linenumbertable
            L0 12
            L9 13
        .end linenumbertable
        .localvariabletable
            0 is this Lcom/fs/starfarer/combat/OOOo; from L0 to L10
            1 is var1 F from L0 to L10
            2 is var2 F from L0 to L10
        .end localvariabletable
    .end code 
.end method 
.innerclasses 
    com/fs/starfarer/combat/OOOo$o com/fs/starfarer/combat/OOOo o private 
.end innerclasses 
.nestmembers com/fs/starfarer/combat/OOOo$o 
.end class 
