.version 61 0 
.class public super com/fs/starfarer/loading/ResourceLoaderState 
.super java/lang/Object 
.implements com/fs/state/AppState 
.field public static final STATE_ID Ljava/lang/String; 
.field private resources Ljava/util/List; .fieldattributes 
    .signature Ljava/util/List<Lcom/fs/starfarer/loading/ResourceLoaderState$Oo;>; 
.end fieldattributes 
.field private totalWeight I 
.field public static final BAR_BG Ljava/lang/String; = 'graphics/ui/loading_widget.png' 
.field public static final BAR Ljava/lang/String; = 'graphics/ui/loading_widget_glow.png' 
.field private static final TITLE Ljava/lang/String; = 'graphics/ui/starsector_title_alpha.png' 
.field private static final SHIMMER Ljava/lang/String; = 'graphics/fx/shimmer.png' 
.field private barBg Lcom/fs/graphics/Sprite; 
.field private title Lcom/fs/graphics/Sprite; 
.field private bar Lcom/fs/graphics/Sprite; 
.field private shimmer Lcom/fs/graphics/Sprite; 
.field private static volatile synthetic $SWITCH_TABLE$com$fs$starfarer$loading$ResourceLoaderState$Type [I 

.method static <clinit> : ()V 
    .code stack 1 locals 0 
L0:     ldc Class com/fs/starfarer/loading/ResourceLoaderState 
L2:     invokevirtual Method java/lang/Class getCanonicalName ()Ljava/lang/String; 
L5:     putstatic Field com/fs/starfarer/loading/ResourceLoaderState STATE_ID Ljava/lang/String; 
L8:     return 
L9:     
    .end code 
.end method 

.method public <init> : ()V 
    .code stack 3 locals 1 
L0:     aload_0 
L1:     invokespecial Method java/lang/Object <init> ()V 
L4:     aload_0 
L5:     new java/util/ArrayList 
L8:     dup 
L9:     invokespecial Method java/util/ArrayList <init> ()V 
L12:    putfield Field com/fs/starfarer/loading/ResourceLoaderState resources Ljava/util/List; 
L15:    aload_0 
L16:    iconst_0 
L17:    putfield Field com/fs/starfarer/loading/ResourceLoaderState totalWeight I 
L20:    return 
L21:    
    .end code 
.end method 

.method public queueResource : (Lcom/fs/starfarer/loading/ResourceLoaderState$o;Ljava/lang/String;I)V 
    .code stack 6 locals 4
        aload_1
        invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState$o name ()Ljava/lang/String;
        aload_2
        invokestatic Method com/genir/renderer/overrides/ResourceLoaderState loadResource (Ljava/lang/String;Ljava/lang/String;)V
L0:     aload_2 
L1:     ifnull L13 
L4:     ldc '' 
L6:     aload_2 
L7:     invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L10:    ifeq L14 

        .stack same 
L13:    return 

        .stack same 
L14:    aload_0 
L15:    getfield Field com/fs/starfarer/loading/ResourceLoaderState resources Ljava/util/List; 
L18:    new com/fs/starfarer/loading/ResourceLoaderState$Oo 
L21:    dup 
L22:    aload_1 
L23:    aload_2 
L24:    iload_3 
L25:    invokespecial Method com/fs/starfarer/loading/ResourceLoaderState$Oo <init> (Lcom/fs/starfarer/loading/ResourceLoaderState$o;Ljava/lang/String;I)V 
L28:    invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L33:    pop 
L34:    aload_0 
L35:    dup 
L36:    getfield Field com/fs/starfarer/loading/ResourceLoaderState totalWeight I 
L39:    iload_3 
L40:    iadd 
L41:    putfield Field com/fs/starfarer/loading/ResourceLoaderState totalWeight I 
L44:    return 
L45:    
    .end code 
.end method 

.method public getID : ()Ljava/lang/String; 
    .code stack 1 locals 1 
L0:     getstatic Field com/fs/starfarer/loading/ResourceLoaderState STATE_ID Ljava/lang/String; 
L3:     areturn 
L4:     
    .end code 
.end method 

.method public init : (Ljava/util/Map;)V 
    .exceptions java/lang/Exception 
    .code stack 7 locals 17 
L0:     iconst_0 
L1:     invokestatic Method org/lwjgl/opengl/Display setVSyncEnabled (Z)V 
L4:     iconst_0 
L5:     invokestatic Method javax/imageio/ImageIO setUseCache (Z)V 
L8:     invokestatic Method com/fs/starfarer/title/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO/oOOO 'super' ()V 
L11:    invokestatic Method [c106] 'Ó00000' ()V 
L14:    ldc 'graphics/ui/loading_widget.png' 
L16:    ldc 'graphics/ui/loading_widget.png' 
L18:    invokestatic Method com/fs/graphics/oOoO 'super' (Ljava/lang/String;Ljava/lang/String;)V 
L21:    ldc 'graphics/ui/loading_widget_glow.png' 
L23:    ldc 'graphics/ui/loading_widget_glow.png' 
L25:    invokestatic Method com/fs/graphics/oOoO 'super' (Ljava/lang/String;Ljava/lang/String;)V 
L28:    ldc 'graphics/ui/starsector_title_alpha.png' 
L30:    ldc 'graphics/ui/starsector_title_alpha.png' 
L32:    invokestatic Method com/fs/graphics/oOoO 'super' (Ljava/lang/String;Ljava/lang/String;)V 
L35:    ldc 'graphics/fx/shimmer.png' 
L37:    ldc 'graphics/fx/shimmer.png' 
L39:    invokestatic Method com/fs/graphics/oOoO 'super' (Ljava/lang/String;Ljava/lang/String;)V 
L42:    aload_0 
L43:    new com/fs/graphics/Sprite 
L46:    dup 
L47:    ldc 'graphics/ui/loading_widget.png' 
L49:    invokespecial Method com/fs/graphics/Sprite <init> (Ljava/lang/String;)V 
L52:    putfield Field com/fs/starfarer/loading/ResourceLoaderState barBg Lcom/fs/graphics/Sprite; 
L55:    aload_0 
L56:    new com/fs/graphics/Sprite 
L59:    dup 
L60:    ldc 'graphics/ui/starsector_title_alpha.png' 
L62:    invokespecial Method com/fs/graphics/Sprite <init> (Ljava/lang/String;)V 
L65:    putfield Field com/fs/starfarer/loading/ResourceLoaderState title Lcom/fs/graphics/Sprite; 
L68:    aload_0 
L69:    new com/fs/graphics/Sprite 
L72:    dup 
L73:    ldc 'graphics/ui/loading_widget_glow.png' 
L75:    invokespecial Method com/fs/graphics/Sprite <init> (Ljava/lang/String;)V 
L78:    putfield Field com/fs/starfarer/loading/ResourceLoaderState bar Lcom/fs/graphics/Sprite; 
L81:    aload_0 
L82:    new com/fs/graphics/Sprite 
L85:    dup 
L86:    ldc 'graphics/fx/shimmer.png' 
L88:    invokespecial Method com/fs/graphics/Sprite <init> (Ljava/lang/String;)V 
L91:    putfield Field com/fs/starfarer/loading/ResourceLoaderState shimmer Lcom/fs/graphics/Sprite; 
L94:    aload_0 
L95:    getfield Field com/fs/starfarer/loading/ResourceLoaderState shimmer Lcom/fs/graphics/Sprite; 
L98:    new java/awt/Color 
L101:   dup 
L102:   bipush 8 
L104:   bipush 42 
L106:   bipush 116 
L108:   sipush 255 
L111:   invokespecial Method java/awt/Color <init> (IIII)V 
L114:   invokevirtual Method com/fs/graphics/Sprite setColor (Ljava/awt/Color;)V 
L117:   aload_0 
L118:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState renderBg ()V 
L121:   aload_0 
L122:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Õ00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L125:   aconst_null 
L126:   bipush 10 
L128:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource (Lcom/fs/starfarer/loading/ResourceLoaderState$o;Ljava/lang/String;I)V 
L131:   aload_0 
L132:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L135:   ldc 'graphics/cursors/cursor_blue.png' 
L137:   iconst_1 
L138:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource (Lcom/fs/starfarer/loading/ResourceLoaderState$o;Ljava/lang/String;I)V 
L141:   aload_0 
L142:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L145:   ldc 'graphics/cursors/cursor_red.png' 
L147:   iconst_1 
L148:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource (Lcom/fs/starfarer/loading/ResourceLoaderState$o;Ljava/lang/String;I)V 
L151:   aload_0 
L152:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L155:   ldc 'graphics/cursors/cursor_blue_2x.png' 
L157:   iconst_1 
L158:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource (Lcom/fs/starfarer/loading/ResourceLoaderState$o;Ljava/lang/String;I)V 
L161:   aload_0 
L162:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L165:   ldc 'graphics/cursors/cursor_red_2x.png' 
L167:   iconst_1 
L168:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource (Lcom/fs/starfarer/loading/ResourceLoaderState$o;Ljava/lang/String;I)V 
L171:   aload_0 
L172:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L175:   ldc 'graphics/asteroids/asteroid1.png' 
L177:   iconst_1 
L178:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource (Lcom/fs/starfarer/loading/ResourceLoaderState$o;Ljava/lang/String;I)V 
L181:   aload_0 
L182:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L185:   ldc 'graphics/asteroids/asteroid2.png' 
L187:   iconst_1 
L188:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource (Lcom/fs/starfarer/loading/ResourceLoaderState$o;Ljava/lang/String;I)V 
L191:   aload_0 
L192:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L195:   ldc 'graphics/asteroids/asteroid3.png' 
L197:   iconst_1 
L198:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource (Lcom/fs/starfarer/loading/ResourceLoaderState$o;Ljava/lang/String;I)V 
L201:   aload_0 
L202:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L205:   ldc 'graphics/asteroids/asteroid4.png' 
L207:   iconst_1 
L208:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L211:   aload_0 
L212:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L215:   ldc 'graphics/fx/shields128c.png' 
L217:   iconst_1 
L218:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L221:   aload_0 
L222:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L225:   ldc 'graphics/fx/shields64.png' 
L227:   iconst_1 
L228:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L231:   aload_0 
L232:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L235:   ldc 'graphics/fx/shields256.png' 
L237:   iconst_1 
L238:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L241:   aload_0 
L242:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L245:   ldc 'graphics/fx/beamfringe.png' 
L247:   iconst_1 
L248:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L251:   aload_0 
L252:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L255:   ldc 'graphics/fx/beamcoreb.png' 
L257:   iconst_1 
L258:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L261:   aload_0 
L262:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L265:   ldc 'graphics/fx/beamfringeb.png' 
L267:   iconst_1 
L268:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L271:   aload_0 
L272:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L275:   ldc 'graphics/fx/beamcorec.png' 
L277:   iconst_1 
L278:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L281:   aload_0 
L282:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L285:   ldc 'graphics/fx/beamfringec.png' 
L287:   iconst_1 
L288:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L291:   aload_0 
L292:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L295:   ldc 'graphics/fx/beamcore.png' 
L297:   iconst_1 
L298:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L301:   aload_0 
L302:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L305:   ldc 'graphics/fx/engineglow32.png' 
L307:   iconst_1 
L308:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L311:   aload_0 
L312:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L315:   ldc 'graphics/fx/engineglow32s.png' 
L317:   iconst_1 
L318:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L321:   aload_0 
L322:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L325:   ldc 'graphics/fx/engineflame32.png' 
L327:   iconst_1 
L328:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L331:   aload_0 
L332:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L335:   ldc 'graphics/fx/star.png' 
L337:   iconst_1 
L338:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L341:   aload_0 
L342:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L345:   ldc 'graphics/fx/projbody.png' 
L347:   iconst_1 
L348:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L351:   aload_0 
L352:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L355:   ldc 'graphics/fx/projtrail.png' 
L357:   iconst_1 
L358:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L361:   aload_0 
L362:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L365:   ldc 'graphics/fx/circle64.png' 
L367:   iconst_1 
L368:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L371:   aload_0 
L372:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L375:   ldc 'graphics/fx/fog_circle2.png' 
L377:   iconst_1 
L378:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L381:   aload_0 
L382:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L385:   ldc 'graphics/fx/smoke32.png' 
L387:   iconst_1 
L388:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L391:   aload_0 
L392:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L395:   ldc 'graphics/fx/contrail64b.png' 
L397:   iconst_1 
L398:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L401:   aload_0 
L402:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L405:   ldc 'graphics/fx/particlealpha32sq.png' 
L407:   iconst_1 
L408:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L411:   aload_0 
L412:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L415:   ldc 'graphics/fx/particleline32ln.png' 
L417:   iconst_1 
L418:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L421:   aload_0 
L422:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L425:   ldc 'graphics/fx/particlealpha64linear.png' 
L427:   iconst_1 
L428:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L431:   aload_0 
L432:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L435:   ldc 'graphics/fx/torpedoray32.png' 
L437:   iconst_1 
L438:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L441:   aload_0 
L442:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L445:   ldc 'graphics/fx/glow64.png' 
L447:   iconst_1 
L448:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L451:   aload_0 
L452:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L455:   ldc 'graphics/fx/hit_glow.png' 
L457:   iconst_1 
L458:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L461:   aload_0 
L462:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L465:   ldc 'graphics/fx/starburst_glow1.png' 
L467:   iconst_1 
L468:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L471:   aload_0 
L472:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L475:   ldc 'graphics/fx/hit_glow_small.png' 
L477:   iconst_1 
L478:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L481:   aload_0 
L482:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L485:   ldc 'graphics/fx/owner_glow.png' 
L487:   iconst_1 
L488:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L491:   aload_0 
L492:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L495:   ldc 'graphics/fx/shield_rays.png' 
L497:   iconst_1 
L498:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L501:   aload_0 
L502:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L505:   ldc 'graphics/fx/explosion0.png' 
L507:   iconst_1 
L508:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L511:   aload_0 
L512:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L515:   ldc 'graphics/fx/explosion1.png' 
L517:   iconst_1 
L518:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L521:   aload_0 
L522:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L525:   ldc 'graphics/fx/explosion2.png' 
L527:   iconst_1 
L528:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L531:   aload_0 
L532:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L535:   ldc 'graphics/fx/explosion_ring0.png' 
L537:   iconst_1 
L538:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L541:   aload_0 
L542:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L545:   ldc 'graphics/fx/beam_laser_core.png' 
L547:   iconst_1 
L548:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L551:   aload_0 
L552:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L555:   ldc 'graphics/fx/beam_laser_fringe.png' 
L557:   iconst_1 
L558:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L561:   aload_0 
L562:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L565:   ldc 'graphics/fx/beam_chunky_core.png' 
L567:   iconst_1 
L568:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L571:   aload_0 
L572:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L575:   ldc 'graphics/fx/beam_chunky_fringe.png' 
L577:   iconst_1 
L578:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L581:   aload_0 
L582:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L585:   ldc 'graphics/fx/beam_rough2_core.png' 
L587:   iconst_1 
L588:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L591:   aload_0 
L592:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L595:   ldc 'graphics/fx/beam_rough2_fringe.png' 
L597:   iconst_1 
L598:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L601:   aload_0 
L602:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L605:   ldc 'graphics/fx/beam_weave_core.png' 
L607:   iconst_1 
L608:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L611:   aload_0 
L612:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L615:   ldc 'graphics/fx/beam_weave_fringe.png' 
L617:   iconst_1 
L618:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L621:   aload_0 
L622:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L625:   ldc 'graphics/terrain/nebula.png' 
L627:   iconst_1 
L628:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L631:   aload_0 
L632:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L635:   ldc 'graphics/terrain/nebula_lowres.png' 
L637:   iconst_1 
L638:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L641:   aload_0 
L642:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L645:   ldc 'graphics/fx/ship_shadow_mask.png' 
L647:   iconst_1 
L648:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L651:   aload_0 
L652:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L655:   ldc 'graphics/terrain/dust_chunks00_sheet.png' 
L657:   iconst_1 
L658:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L661:   aload_0 
L662:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L665:   ldc_w 'graphics/terrain/dust_chunks01_sheet.png' 
L668:   iconst_1 
L669:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L672:   aload_0 
L673:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L676:   ldc_w 'graphics/terrain/dust_cloud00_sheet.png' 
L679:   iconst_1 
L680:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L683:   aload_0 
L684:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L687:   ldc_w 'graphics/terrain/dust_cloud01_sheet.png' 
L690:   iconst_1 
L691:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L694:   aload_0 
L695:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o void Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L698:   ldc_w 'graphics/fx/emp_arcs.png' 
L701:   iconst_1 
L702:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L705:   aload_0 
L706:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L709:   ldc_w 'graphics/damage/damage_cracks48_0_base.png' 
L712:   iconst_1 
L713:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L716:   aload_0 
L717:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L720:   ldc_w 'graphics/damage/damage_cracks48_0_glow.png' 
L723:   iconst_1 
L724:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L727:   aload_0 
L728:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L731:   ldc_w 'graphics/damage/damage_cracks48_1_base.png' 
L734:   iconst_1 
L735:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L738:   aload_0 
L739:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L742:   ldc_w 'graphics/damage/damage_cracks48_1_glow.png' 
L745:   iconst_1 
L746:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L749:   aload_0 
L750:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L753:   ldc_w 'graphics/damage/damage_burns48_0_base.png' 
L756:   iconst_1 
L757:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L760:   aload_0 
L761:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L764:   ldc_w 'graphics/damage/damage_burns48_0_glow.png' 
L767:   iconst_1 
L768:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L771:   aload_0 
L772:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L775:   ldc_w 'graphics/damage/damage_burns48_1_base.png' 
L778:   iconst_1 
L779:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L782:   aload_0 
L783:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L786:   ldc_w 'graphics/damage/damage_burns48_1_glow.png' 
L789:   iconst_1 
L790:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L793:   aload_0 
L794:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L797:   ldc_w 'graphics/damage/damage_holes48_0_base.png' 
L800:   iconst_1 
L801:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L804:   aload_0 
L805:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L808:   ldc_w 'graphics/damage/damage_holes48_0_glow.png' 
L811:   iconst_1 
L812:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L815:   aload_0 
L816:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L819:   ldc_w 'graphics/damage/damage_holes48_1_base.png' 
L822:   iconst_1 
L823:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L826:   aload_0 
L827:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L830:   ldc_w 'graphics/damage/damage_holes48_1_glow.png' 
L833:   iconst_1 
L834:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L837:   aload_0 
L838:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L841:   ldc_w 'graphics/debris/debris_lrg0.png' 
L844:   iconst_1 
L845:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L848:   aload_0 
L849:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L852:   ldc_w 'graphics/debris/debris_lrg1.png' 
L855:   iconst_1 
L856:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L859:   aload_0 
L860:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L863:   ldc_w 'graphics/debris/debris_med0.png' 
L866:   iconst_1 
L867:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L870:   aload_0 
L871:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L874:   ldc_w 'graphics/debris/debris_med1.png' 
L877:   iconst_1 
L878:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L881:   aload_0 
L882:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L885:   ldc_w 'graphics/debris/debris_sml0.png' 
L888:   iconst_1 
L889:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L892:   aload_0 
L893:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L896:   ldc_w 'graphics/debris/debris_sml1.png' 
L899:   iconst_1 
L900:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L903:   aload_0 
L904:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L907:   ldc_w 'graphics/debris/debris_sml2.png' 
L910:   iconst_1 
L911:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L914:   aload_0 
L915:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L918:   ldc_w 'graphics/debris/debris_sml3.png' 
L921:   iconst_1 
L922:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L925:   aload_0 
L926:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L929:   ldc_w 'graphics/hud/cursor.png' 
L932:   iconst_1 
L933:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L936:   aload_0 
L937:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L940:   ldc_w 'graphics/hud/line4x4.png' 
L943:   iconst_1 
L944:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L947:   aload_0 
L948:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L951:   ldc_w 'graphics/hud/line8x8.png' 
L954:   iconst_1 
L955:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L958:   aload_0 
L959:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L962:   ldc_w 'graphics/hud/line32x32.png' 
L965:   iconst_1 
L966:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L969:   aload_0 
L970:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L973:   ldc_w 'graphics/hud/point4x4.png' 
L976:   iconst_1 
L977:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L980:   aload_0 
L981:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L984:   ldc_w 'graphics/hud/spotlight.png' 
L987:   iconst_1 
L988:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L991:   aload_0 
L992:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L995:   ldc_w 'graphics/hud/spotlight_small.png' 
L998:   iconst_1 
L999:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1002:  aload_0 
L1003:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1006:  ldc_w 'graphics/hud/grid_small.png' 
L1009:  iconst_1 
L1010:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1013:  aload_0 
L1014:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1017:  ldc_w 'graphics/hud/leader_insignia.png' 
L1020:  iconst_1 
L1021:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1024:  aload_0 
L1025:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1028:  ldc_w 'graphics/hud/player_insignia.png' 
L1031:  iconst_1 
L1032:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1035:  aload_0 
L1036:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1039:  ldc_w 'graphics/icons/insignia/16x_star_circle.png' 
L1042:  iconst_1 
L1043:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1046:  aload_0 
L1047:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1050:  ldc_w 'graphics/hud/bar_armor.png' 
L1053:  iconst_1 
L1054:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1057:  aload_0 
L1058:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1061:  ldc_w 'graphics/hud/bar_energy.png' 
L1064:  iconst_1 
L1065:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1068:  aload_0 
L1069:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1072:  ldc_w 'graphics/hud/bar_white.png' 
L1075:  iconst_1 
L1076:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1079:  aload_0 
L1080:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1083:  ldc_w 'graphics/hud/player_status_bg2.png' 
L1086:  iconst_1 
L1087:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1090:  aload_0 
L1091:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1094:  ldc_w 'graphics/hud/target_status_bg2.png' 
L1097:  iconst_1 
L1098:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1101:  aload_0 
L1102:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1105:  ldc_w 'graphics/hud/selected_status_bg2.png' 
L1108:  iconst_1 
L1109:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1112:  aload_0 
L1113:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1116:  ldc_w 'graphics/hud/minimap_bg2.png' 
L1119:  iconst_1 
L1120:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1123:  aload_0 
L1124:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1127:  ldc_w 'graphics/hud/holo_grid.png' 
L1130:  iconst_1 
L1131:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1134:  aload_0 
L1135:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1138:  ldc_w 'graphics/hud/holo_status.png' 
L1141:  iconst_1 
L1142:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1145:  aload_0 
L1146:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1149:  ldc_w 'graphics/hud/holo_target.png' 
L1152:  iconst_1 
L1153:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1156:  aload_0 
L1157:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1160:  ldc_w 'graphics/hud/generic_icon.png' 
L1163:  iconst_1 
L1164:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1167:  aload_0 
L1168:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1171:  ldc_w 'graphics/warroom/ship_arrow.png' 
L1174:  iconst_1 
L1175:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1178:  aload_0 
L1179:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1182:  ldc_w 'graphics/warroom/ship_ring.png' 
L1185:  iconst_1 
L1186:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1189:  aload_0 
L1190:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1193:  ldc_w 'graphics/warroom/waypoint.png' 
L1196:  iconst_1 
L1197:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1200:  aload_0 
L1201:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1204:  ldc_w 'graphics/warroom/escort.png' 
L1207:  iconst_1 
L1208:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1211:  aload_0 
L1212:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1215:  ldc_w 'graphics/warroom/attack.png' 
L1218:  iconst_1 
L1219:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1222:  aload_0 
L1223:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1226:  ldc_w 'graphics/warroom/map_ping.png' 
L1229:  iconst_1 
L1230:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1233:  aload_0 
L1234:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1237:  ldc_w 'graphics/warroom/nebula_warroom.png' 
L1240:  iconst_1 
L1241:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1244:  aload_0 
L1245:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1248:  ldc_w 'graphics/warroom/objective_comm_relay.png' 
L1251:  iconst_1 
L1252:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1255:  aload_0 
L1256:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1259:  ldc_w 'graphics/warroom/objective_nav_buoy.png' 
L1262:  iconst_1 
L1263:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1266:  aload_0 
L1267:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1270:  ldc_w 'graphics/warroom/objective_sensor_array.png' 
L1273:  iconst_1 
L1274:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1277:  aload_0 
L1278:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1281:  ldc_w 'graphics/ships/com_relay.png' 
L1284:  iconst_1 
L1285:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1288:  aload_0 
L1289:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1292:  ldc_w 'graphics/ships/nav_buoy.png' 
L1295:  iconst_1 
L1296:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1299:  aload_0 
L1300:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1303:  ldc_w 'graphics/ships/sensor_array.png' 
L1306:  iconst_1 
L1307:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1310:  aload_0 
L1311:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1314:  ldc_w 'graphics/cursors/cursor_green.png' 
L1317:  iconst_1 
L1318:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1321:  aload_0 
L1322:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1325:  ldc_w 'graphics/portraits/bgs/bg02.png' 
L1328:  iconst_1 
L1329:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1332:  aload_0 
L1333:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1336:  ldc_w 'graphics/ui/buttons/arrow_down.png' 
L1339:  iconst_1 
L1340:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1343:  aload_0 
L1344:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1347:  ldc_w 'graphics/portraits/godiva.jpg' 
L1350:  iconst_1 
L1351:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1354:  aload_0 
L1355:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ó00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1358:  ldc_w 'graphics/fonts/arial12bold.fnt' 
L1361:  iconst_1 
L1362:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1365:  aload_0 
L1366:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ó00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1369:  ldc_w 'graphics/fonts/orbitron20bold.fnt' 
L1372:  iconst_1 
L1373:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1376:  aload_0 
L1377:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ó00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1380:  ldc_w 'graphics/fonts/arial12bold.fnt' 
L1383:  iconst_1 
L1384:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1387:  aload_0 
L1388:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ó00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1391:  ldc_w 'graphics/fonts/arial16bold.fnt' 
L1394:  iconst_1 
L1395:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1398:  aload_0 
L1399:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ó00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1402:  ldc_w 'graphics/fonts/arial10.fnt' 
L1405:  iconst_1 
L1406:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1409:  aload_0 
L1410:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ó00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1413:  ldc_w 'graphics/fonts/small_fonts8.fnt' 
L1416:  iconst_1 
L1417:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1420:  aload_0 
L1421:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ó00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1424:  ldc_w 'graphics/fonts/orbitron12.fnt' 
L1427:  iconst_1 
L1428:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1431:  aload_0 
L1432:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ó00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1435:  ldc_w 'graphics/fonts/orbitron10.fnt' 
L1438:  iconst_1 
L1439:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1442:  aload_0 
L1443:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ó00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1446:  getstatic Field com/fs/starfarer/settings/StarfarerSettings 'float.new' Ljava/lang/String; 
L1449:  iconst_1 
L1450:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1453:  aload_0 
L1454:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ó00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1457:  ldc_w 'graphics/fonts/orbitron12condensed.fnt' 
L1460:  iconst_1 
L1461:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1464:  aload_0 
L1465:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ó00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1468:  ldc_w 'graphics/fonts/orbitron20aa.fnt' 
L1471:  iconst_1 
L1472:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1475:  aload_0 
L1476:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ó00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1479:  ldc_w 'graphics/fonts/orbitron24aa.fnt' 
L1482:  iconst_1 
L1483:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1486:  aload_0 
L1487:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ó00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1490:  ldc_w 'graphics/fonts/orbitron20bold.fnt' 
L1493:  iconst_1 
L1494:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1497:  aload_0 
L1498:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ó00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1501:  ldc_w 'graphics/fonts/orbitron24aa.fnt' 
L1504:  iconst_1 
L1505:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1508:  aload_0 
L1509:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ó00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1512:  ldc_w 'graphics/fonts/orbitron20aa.fnt' 
L1515:  iconst_1 
L1516:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1519:  aload_0 
L1520:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ó00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1523:  ldc_w 'graphics/fonts/orbitron20aabold.fnt' 
L1526:  iconst_1 
L1527:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1530:  aload_0 
L1531:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ó00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1534:  ldc_w 'graphics/fonts/orbitron24aabold.fnt' 
L1537:  iconst_1 
L1538:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1541:  aload_0 
L1542:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ó00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1545:  ldc_w 'graphics/fonts/insignia16.fnt' 
L1548:  iconst_1 
L1549:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1552:  aload_0 
L1553:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ó00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1556:  ldc_w 'graphics/fonts/insignia16a.fnt' 
L1559:  iconst_1 
L1560:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1563:  aload_0 
L1564:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ó00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1567:  ldc_w 'graphics/fonts/victor10.fnt' 
L1570:  iconst_1 
L1571:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1574:  aload_0 
L1575:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ó00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1578:  ldc_w 'graphics/fonts/victor14.fnt' 
L1581:  iconst_1 
L1582:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1585:  aload_0 
L1586:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ó00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1589:  ldc_w 'graphics/fonts/victor16.fnt' 
L1592:  iconst_1 
L1593:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1596:  aload_0 
L1597:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ó00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1600:  ldc_w 'graphics/fonts/victor21.fnt' 
L1603:  iconst_1 
L1604:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1607:  aload_0 
L1608:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ó00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1611:  ldc_w 'graphics/fonts/insignia21LTaa.fnt' 
L1614:  iconst_1 
L1615:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1618:  aload_0 
L1619:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ó00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1622:  ldc_w 'graphics/fonts/insignia25LTaa.fnt' 
L1625:  iconst_1 
L1626:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L1629:  aload_0 
L1630:  dup 
L1631:  getfield Field com/fs/starfarer/loading/ResourceLoaderState totalWeight I 
L1634:  iconst_3 
L1635:  iadd 
L1636:  putfield Field com/fs/starfarer/loading/ResourceLoaderState totalWeight I 
L1639:  aload_0 
L1640:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings o00000 (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
L1643:  invokestatic Method com/fs/starfarer/loading/scripts/ScriptStore 'ô00000' ()V 
L1646:  invokestatic Method com/fs/starfarer/launcher/ModManager getInstance ()Lcom/fs/starfarer/launcher/ModManager; 
L1649:  invokevirtual Method com/fs/starfarer/launcher/ModManager getEnabledMods ()Ljava/util/List; 
L1652:  astore_2 
L1653:  iconst_0 
L1654:  istore_3 
L1655:  goto L1681 

        .stack append Object java/util/List Integer 
L1658:  aload_2 
L1659:  iload_3 
L1660:  invokeinterface InterfaceMethod java/util/List get (I)Ljava/lang/Object; 2 
L1665:  checkcast com/fs/starfarer/launcher/ModManager$ModSpec 
L1668:  astore 4 
L1670:  aload 4 
L1672:  invokevirtual Method com/fs/starfarer/launcher/ModManager$ModSpec getModPluginClassName ()Ljava/lang/String; 
L1675:  invokestatic Method com/fs/starfarer/loading/scripts/ScriptStore Object (Ljava/lang/String;)V 
L1678:  iinc 3 1 

        .stack same 
L1681:  iload_3 
L1682:  aload_2 
L1683:  invokeinterface InterfaceMethod java/util/List size ()I 1 
L1688:  if_icmplt L1658 
L1691:  invokestatic Method com/genir/renderer/overrides/ScriptStore runScriptLoadingThread ()V
L1694:  invokestatic Method com/fs/starfarer/loading/scripts/ScriptStore 'ö00000' ()V 
L1697:  invokestatic Method com/fs/starfarer/loading/ShipNameStore o00000 ()V 
L1700:  invokestatic Method com/fs/starfarer/loading/StarfarerStrings 'super' ()V 
L1703:  invokestatic Method com/fs/starfarer/title/Object/A/ooOO 'super' ()Lcom/fs/starfarer/title/Object/A/super; 
L1706:  pop 
L1707:  aload_0 
L1708:  fconst_1 
L1709:  aload_0 
L1710:  getfield Field com/fs/starfarer/loading/ResourceLoaderState totalWeight I 
L1713:  i2f 
L1714:  fdiv 
L1715:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState renderProgress (F)V 
L1718:  aload_0 
L1719:  invokestatic Method com/genir/renderer/overrides/ResourceLoaderState initSpecStore (Lcom/fs/starfarer/loading/ResourceLoaderState;)V
        goto L2482
L1722:  aload_0 
L1723:  fconst_2 
L1724:  aload_0 
L1725:  getfield Field com/fs/starfarer/loading/ResourceLoaderState totalWeight I 
L1728:  i2f 
L1729:  fdiv 
L1730:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState renderProgress (F)V 
L1733:  aload_0 
L1734:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueShipAndWeaponSprites ()V 
L1737:  aload_0 
L1738:  ldc_w +3.0f 
L1741:  aload_0 
L1742:  getfield Field com/fs/starfarer/loading/ResourceLoaderState totalWeight I 
L1745:  i2f 
L1746:  fdiv 
L1747:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState renderProgress (F)V 
L1750:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'õ00000' ()Z 
L1753:  istore_3 
L1754:  aload_0 
L1755:  getfield Field com/fs/starfarer/loading/ResourceLoaderState resources Ljava/util/List; 
L1758:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L1763:  astore 5 
L1765:  goto L1847 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/Map Object java/util/List Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L1768:  aload 5 
L1770:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L1775:  checkcast com/fs/starfarer/loading/ResourceLoaderState$Oo 
L1778:  astore 4 
L1780:  aconst_null 
L1781:  astore 6 
L1783:  invokestatic Method com/fs/starfarer/loading/ResourceLoaderState $SWITCH_TABLE$com$fs$starfarer$loading$ResourceLoaderState$Type ()[I 
L1786:  aload 4 
L1788:  getfield Field com/fs/starfarer/loading/ResourceLoaderState$Oo new Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1791:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState$o ordinal ()I 
L1794:  iaload 
L1795:  tableswitch 1 
            L1824 
            L1824 
            L1824 
            L1835 
            default : L1847 


        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/Map Object java/util/List Integer Object com/fs/starfarer/loading/ResourceLoaderState$Oo Object java/util/Iterator Object java/lang/String 
            stack 
        .end stack 
L1824:  aload 4 
L1826:  getfield Field com/fs/starfarer/loading/ResourceLoaderState$Oo o00000 Ljava/lang/String; 
L1829:  invokestatic Method com/fs/graphics/L return (Ljava/lang/String;)V 
L1832:  goto L1847 

        .stack same 
L1835:  iload_3 
L1836:  ifeq L1847 
L1839:  aload 4 
L1841:  getfield Field com/fs/starfarer/loading/ResourceLoaderState$Oo o00000 Ljava/lang/String; 
L1844:  invokestatic Method com/genir/renderer/overrides/extensions/Noop noop (Ljava/lang/String;)V

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/Map Object java/util/List Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L1847:  aload 5 
L1849:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L1854:  ifne L1768 
L1857:  invokestatic Method com/fs/graphics/L o00000 ()V 
L1860:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ö00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1863:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ó00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1866:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Õ00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1869:  invokestatic Method java/util/EnumSet of (Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet; 
L1872:  astore 4 
L1874:  new java/util/ArrayList 
L1877:  dup 
L1878:  invokespecial Method java/util/ArrayList <init> ()V 
L1881:  astore 5 
L1883:  aload_0 
L1884:  getfield Field com/fs/starfarer/loading/ResourceLoaderState resources Ljava/util/List; 
L1887:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L1892:  astore 7 
L1894:  goto L1934 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/Map Object java/util/List Integer Object java/util/Set Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L1897:  aload 7 
L1899:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L1904:  checkcast com/fs/starfarer/loading/ResourceLoaderState$Oo 
L1907:  astore 6 
L1909:  aload 4 
L1911:  aload 6 
L1913:  getfield Field com/fs/starfarer/loading/ResourceLoaderState$Oo new Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1916:  invokeinterface InterfaceMethod java/util/Set contains (Ljava/lang/Object;)Z 2 
L1921:  ifeq L1934 
L1924:  aload 5 
L1926:  aload 6 
L1928:  invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L1933:  pop 

        .stack same 
L1934:  aload 7 
L1936:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L1941:  ifne L1897 
L1944:  aload_0 
L1945:  getfield Field com/fs/starfarer/loading/ResourceLoaderState resources Ljava/util/List; 
L1948:  aload 5 
L1950:  invokeinterface InterfaceMethod java/util/List removeAll (Ljava/util/Collection;)Z 2 
L1955:  pop 
L1956:  aload_0 
L1957:  getfield Field com/fs/starfarer/loading/ResourceLoaderState resources Ljava/util/List; 
L1960:  iconst_0 
L1961:  aload 5 
L1963:  invokeinterface InterfaceMethod java/util/List addAll (ILjava/util/Collection;)Z 3 
L1968:  pop 
L1969:  ldc_w +3.0f 
L1972:  fstore 6 
L1974:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'OÓ0000' ()Z 
L1977:  ifeq L1986 
L1980:  ldc_w 'Resource loading' 
L1983:  invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/Map Object java/util/List Integer Object java/util/Set Object java/util/List Float 
            stack 
        .end stack 
L1986:  iconst_3 
L1987:  istore 7 
L1989:  iconst_2 
L1990:  invokestatic Method java/util/concurrent/Executors newFixedThreadPool (I)Ljava/util/concurrent/ExecutorService; 
L1993:  astore 8 
L1995:  new java/util/ArrayList 
L1998:  dup 
L1999:  invokespecial Method java/util/ArrayList <init> ()V 
L2002:  astore 9 
L2004:  new java/util/HashSet 
L2007:  dup 
L2008:  invokespecial Method java/util/HashSet <init> ()V 
L2011:  astore 10 
L2013:  aload_0 
L2014:  getfield Field com/fs/starfarer/loading/ResourceLoaderState resources Ljava/util/List; 
L2017:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L2022:  astore 12 
L2024:  goto L2389 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/Map Object java/util/List Integer Object java/util/Set Object java/util/List Float Integer Object java/util/concurrent/ExecutorService Object java/util/List Object java/util/Set Top Object java/util/Iterator 
            stack 
        .end stack 
L2027:  aload 12 
L2029:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L2034:  checkcast com/fs/starfarer/loading/ResourceLoaderState$Oo 
L2037:  astore 11 
L2039:  invokestatic Method org/lwjgl/opengl/Display isCloseRequested ()Z 
L2042:  ifeq L2053 
L2045:  new com/fs/starfarer/super 
L2048:  dup 
L2049:  invokespecial Method com/fs/starfarer/super <init> ()V 
L2052:  athrow 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/Map Object java/util/List Integer Object java/util/Set Object java/util/List Float Integer Object java/util/concurrent/ExecutorService Object java/util/List Object java/util/Set Object com/fs/starfarer/loading/ResourceLoaderState$Oo Object java/util/Iterator 
            stack 
        .end stack 
L2053:  new java/lang/StringBuilder 
L2056:  dup 
L2057:  aload 11 
L2059:  getfield Field com/fs/starfarer/loading/ResourceLoaderState$Oo new Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L2062:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState$o name ()Ljava/lang/String; 
L2065:  invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L2068:  invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L2071:  aload 11 
L2073:  getfield Field com/fs/starfarer/loading/ResourceLoaderState$Oo o00000 Ljava/lang/String; 
L2076:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L2079:  invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L2082:  astore 13 
L2084:  aload 10 
L2086:  aload 13 
L2088:  invokeinterface InterfaceMethod java/util/Set contains (Ljava/lang/Object;)Z 2 
L2093:  ifeq L2109 
L2096:  iload 7 
L2098:  aload 11 
L2100:  getfield Field com/fs/starfarer/loading/ResourceLoaderState$Oo 'Ó00000' I 
L2103:  iadd 
L2104:  istore 7 
L2106:  goto L2389 

        .stack append Object java/lang/String 
L2109:  aload 10 
L2111:  aload 13 
L2113:  invokeinterface InterfaceMethod java/util/Set add (Ljava/lang/Object;)Z 2 
L2118:  pop 
L2119:  aconst_null 
L2120:  astore 14 
L2122:  invokestatic Method com/fs/starfarer/loading/ResourceLoaderState $SWITCH_TABLE$com$fs$starfarer$loading$ResourceLoaderState$Type ()[I 
L2125:  aload 11 
L2127:  getfield Field com/fs/starfarer/loading/ResourceLoaderState$Oo new Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L2130:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState$o ordinal ()I 
L2133:  iaload 
L2134:  tableswitch 1 
            L2168 
            L2228 
            L2191 
            L2272 
            L2256 
            default : L2336 


        .stack append Object java/lang/String 
L2168:  aload 11 
L2170:  getfield Field com/fs/starfarer/loading/ResourceLoaderState$Oo o00000 Ljava/lang/String; 
L2173:  astore 14 
L2175:  aload 11 
L2177:  getfield Field com/fs/starfarer/loading/ResourceLoaderState$Oo o00000 Ljava/lang/String; 
L2180:  aload 11 
L2182:  getfield Field com/fs/starfarer/loading/ResourceLoaderState$Oo o00000 Ljava/lang/String; 
L2185:  invokestatic Method com/fs/graphics/oOoO 'super' (Ljava/lang/String;Ljava/lang/String;)V 
L2188:  goto L2336 

        .stack same 
L2191:  aload 11 
L2193:  getfield Field com/fs/starfarer/loading/ResourceLoaderState$Oo o00000 Ljava/lang/String; 
L2196:  astore 14 
L2198:  new com/fs/graphics/do 
L2201:  dup 
L2202:  invokespecial Method com/fs/graphics/do <init> ()V 
L2205:  invokestatic Method com/fs/graphics/oOoO 'super' (Lcom/fs/graphics/I;)V 
L2208:  aload 11 
L2210:  getfield Field com/fs/starfarer/loading/ResourceLoaderState$Oo o00000 Ljava/lang/String; 
L2213:  aload 11 
L2215:  getfield Field com/fs/starfarer/loading/ResourceLoaderState$Oo o00000 Ljava/lang/String; 
L2218:  invokestatic Method com/fs/graphics/oOoO 'super' (Ljava/lang/String;Ljava/lang/String;)V 
L2221:  aconst_null 
L2222:  invokestatic Method com/fs/graphics/oOoO 'super' (Lcom/fs/graphics/I;)V 
L2225:  goto L2336 
        .catch java/lang/Exception from L2228 to L2248 using L2251 

        .stack same 
L2228:  aload 11 
L2230:  getfield Field com/fs/starfarer/loading/ResourceLoaderState$Oo o00000 Ljava/lang/String; 
L2233:  aload 11 
L2235:  getfield Field com/fs/starfarer/loading/ResourceLoaderState$Oo o00000 Ljava/lang/String; 
L2238:  invokestatic Method com/fs/graphics/oOoO 'super' (Ljava/lang/String;Ljava/lang/String;)V 
L2241:  aload 11 
L2243:  getfield Field com/fs/starfarer/loading/ResourceLoaderState$Oo o00000 Ljava/lang/String; 
L2246:  astore 14 
L2248:  goto L2336 

        .stack stack_1 Object java/lang/Exception 
L2251:  astore 15 
L2253:  goto L2336 

        .stack same 
L2256:  aload 11 
L2258:  getfield Field com/fs/starfarer/loading/ResourceLoaderState$Oo o00000 Ljava/lang/String; 
L2261:  aload 11 
L2263:  getfield Field com/fs/starfarer/loading/ResourceLoaderState$Oo o00000 Ljava/lang/String; 
L2266:  invokestatic Method com/fs/graphics/A/D 'super' (Ljava/lang/String;Ljava/lang/String;)V 
L2269:  goto L2336 

        .stack same 
L2272:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'õ00000' ()Z 
L2275:  ifeq L2336 
L2278:  aload 11 
L2280:  getfield Field com/fs/starfarer/loading/ResourceLoaderState$Oo o00000 Ljava/lang/String; 
L2283:  aload 11 
L2285:  getfield Field com/fs/starfarer/loading/ResourceLoaderState$Oo o00000 Ljava/lang/String; 
L2288:  ldc_w '.' 
L2291:  invokevirtual Method java/lang/String lastIndexOf (Ljava/lang/String;)I 
L2294:  iconst_1 
L2295:  iadd 
L2296:  invokevirtual Method java/lang/String substring (I)Ljava/lang/String; 
L2299:  astore 15 
L2301:  new com/fs/starfarer/loading/A 
L2304:  dup 
L2305:  aload 11 
L2307:  getfield Field com/fs/starfarer/loading/ResourceLoaderState$Oo o00000 Ljava/lang/String; 
L2310:  aload 15 
L2312:  invokespecial Method com/fs/starfarer/loading/A <init> (Ljava/lang/String;Ljava/lang/String;)V 
L2315:  astore 16 
L2317:  aload 8 
L2319:  aload 16 
L2321:  invokeinterface InterfaceMethod java/util/concurrent/ExecutorService execute (Ljava/lang/Runnable;)V 2 
L2326:  aload 9 
L2328:  aload 16 
L2330:  invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L2335:  pop 

        .stack same 
L2336:  iload 7 
L2338:  aload 11 
L2340:  getfield Field com/fs/starfarer/loading/ResourceLoaderState$Oo 'Ó00000' I 
L2343:  iadd 
L2344:  istore 7 
L2346:  iload 7 
L2348:  i2f 
L2349:  fload 6 
L2351:  ldc_w +10.0f 
L2354:  fadd 
L2355:  fcmpl 
L2356:  ifgt L2368 
L2359:  iload 7 
L2361:  aload_0 
L2362:  getfield Field com/fs/starfarer/loading/ResourceLoaderState totalWeight I 
L2365:  if_icmpne L2386 

        .stack same 
L2368:  iload 7 
L2370:  i2f 
L2371:  fstore 6 
L2373:  aload_0 
L2374:  iload 7 
L2376:  i2f 
L2377:  aload_0 
L2378:  getfield Field com/fs/starfarer/loading/ResourceLoaderState totalWeight I 
L2381:  i2f 
L2382:  fdiv 
L2383:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState renderProgress (F)V 

        .stack same 
L2386:  aconst_null 
L2387:  astore 14 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/Map Object java/util/List Integer Object java/util/Set Object java/util/List Float Integer Object java/util/concurrent/ExecutorService Object java/util/List Object java/util/Set Top Object java/util/Iterator 
            stack 
        .end stack 
L2389:  aload 12 
L2391:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L2396:  ifne L2027 
L2399:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'OÓ0000' ()Z 
L2402:  ifeq L2408 
L2405:  invokestatic Method com/fs/profiler/Profiler o00000 ()V 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/Map Object java/util/List Integer Object java/util/Set Object java/util/List Float Integer Object java/util/concurrent/ExecutorService Object java/util/List Object java/util/Set 
            stack 
        .end stack 
L2408:  aload 8 
L2410:  invokeinterface InterfaceMethod java/util/concurrent/ExecutorService shutdown ()V 1 

        .stack same 
L2415:  aload 8 
L2417:  ldc2_w 60L 
L2420:  getstatic Field java/util/concurrent/TimeUnit SECONDS Ljava/util/concurrent/TimeUnit; 
L2423:  invokeinterface InterfaceMethod java/util/concurrent/ExecutorService awaitTermination (JLjava/util/concurrent/TimeUnit;)Z 4 
L2428:  ifeq L2415 
L2431:  aload 9 
L2433:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L2438:  astore 12 
L2440:  goto L2469 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/Map Object java/util/List Integer Object java/util/Set Object java/util/List Float Integer Object java/util/concurrent/ExecutorService Object java/util/List Object java/util/Set Top Object java/util/Iterator 
            stack 
        .end stack 
L2443:  aload 12 
L2445:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L2450:  checkcast com/fs/starfarer/loading/A 
L2453:  astore 11 
L2455:  aload 11 
L2457:  invokevirtual Method com/fs/starfarer/loading/A o00000 ()Ljava/lang/Exception; 
L2460:  ifnull L2469 
L2463:  aload 11 
L2465:  invokevirtual Method com/fs/starfarer/loading/A o00000 ()Ljava/lang/Exception; 
L2468:  athrow 

        .stack same 
L2469:  aload 12 
L2471:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L2476:  ifne L2443 
L2479:  invokestatic Method com/fs/graphics/L 'Ò00000' ()V 
L2482:  invokestatic Method com/genir/renderer/overrides/ScriptStore joinScriptLoadingThread ()V
L2485:  invokestatic Method com/fs/starfarer/api/impl/campaign/procgen/MarkovNames loadIfNeeded ()V 
L2488:  invokestatic Method com/fs/starfarer/launcher/ModManager getInstance ()Lcom/fs/starfarer/launcher/ModManager; 
L2491:  invokevirtual Method com/fs/starfarer/launcher/ModManager getEnabledModPlugins ()Ljava/util/List; 
L2494:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L2499:  astore 12 
L2501:  goto L2523 

        .stack same 
L2504:  aload 12 
L2506:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L2511:  checkcast com/fs/starfarer/api/ModPlugin 
L2514:  astore 11 
L2516:  aload 11 
L2518:  invokeinterface InterfaceMethod com/fs/starfarer/api/ModPlugin onApplicationLoad ()V 1 

        .stack same 
L2523:  aload 12 
L2525:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L2530:  ifne L2504 
L2533:  invokestatic Method com/fs/starfarer/combat/entities/ship/A/I o00000 ()V 
L2536:  new com/fs/starfarer/Version 
L2539:  invokespecial Method com/fs/starfarer/Version <init> ()V 
L2542:  new com/fs/graphics/particle/SmoothParticle 
L2545:  getstatic Field java/awt/Color BLACK Ljava/awt/Color; 
L2548:  ldc_w +10.0f 
L2551:  invokespecial Method com/fs/graphics/particle/SmoothParticle <init> (Ljava/awt/Color;F)V 
L2554:  new com/fs/graphics/util/A 
L2557:  invokespecial Method com/fs/graphics/util/A <init> ()V 
L2560:  invokestatic Method com/fs/starfarer/renderers/H 'super' ()V 
L2563:  invokestatic Method com/fs/starfarer/util/return Object ()V 
L2566:  invokestatic Method com/fs/starfarer/renderers/O o00000 ()V 
L2569:  invokestatic Method com/fs/starfarer/api/impl/campaign/velfield/SlipstreamManager validateConfigs ()V 
L2572:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'float.super' ()Z 
L2575:  invokestatic Method org/lwjgl/opengl/Display setVSyncEnabled (Z)V 
L2578:  return 
L2579:  
    .end code 
.end method 

.method public queueShipAndWeaponSprites : ()V
    .code stack 5 locals 10 
L0:     new java/util/ArrayList 
L3:     dup 
L4:     invokespecial Method java/util/ArrayList <init> ()V 
L7:     astore_1 
L8:     invokestatic Method com/fs/starfarer/loading/Q 'Ó00000' ()Ljava/util/Collection; 
L11:    invokeinterface InterfaceMethod java/util/Collection iterator ()Ljava/util/Iterator; 1 
L16:    astore_3 
L17:    goto L607 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L20:    aload_3 
L21:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L26:    checkcast java/lang/String 
L29:    astore_2 
L30:    aload_2 
L31:    invokestatic Method com/fs/starfarer/loading/Q String (Ljava/lang/String;)Lcom/fs/starfarer/loading/specs/BaseWeaponSpec; 
L34:    astore 4 
L36:    aload_0 
L37:    getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L40:    aload 4 
L42:    invokevirtual Method com/fs/starfarer/loading/specs/BaseWeaponSpec getHardpointSpriteName ()Ljava/lang/String; 
L45:    iconst_1 
L46:    invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L49:    aload_0 
L50:    getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L53:    aload 4 
L55:    invokevirtual Method com/fs/starfarer/loading/specs/BaseWeaponSpec getTurretSpriteName ()Ljava/lang/String; 
L58:    iconst_1 
L59:    invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L62:    aload 4 
L64:    invokevirtual Method com/fs/starfarer/loading/specs/BaseWeaponSpec getHardpointUnderSpriteName ()Ljava/lang/String; 
L67:    ifnull L83 
L70:    aload_0 
L71:    getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L74:    aload 4 
L76:    invokevirtual Method com/fs/starfarer/loading/specs/BaseWeaponSpec getHardpointUnderSpriteName ()Ljava/lang/String; 
L79:    iconst_1 
L80:    invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/List Object java/lang/String Object java/util/Iterator Object com/fs/starfarer/loading/specs/BaseWeaponSpec 
            stack 
        .end stack 
L83:    aload 4 
L85:    invokevirtual Method com/fs/starfarer/loading/specs/BaseWeaponSpec getTurretUnderSpriteName ()Ljava/lang/String; 
L88:    ifnull L104 
L91:    aload_0 
L92:    getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L95:    aload 4 
L97:    invokevirtual Method com/fs/starfarer/loading/specs/BaseWeaponSpec getTurretUnderSpriteName ()Ljava/lang/String; 
L100:   iconst_1 
L101:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 

        .stack same 
L104:   aload 4 
L106:   instanceof com/fs/starfarer/loading/specs/Object 
L109:   ifeq L301 
L112:   aload 4 
L114:   checkcast com/fs/starfarer/loading/specs/Object 
L117:   astore 5 
L119:   aload_0 
L120:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L123:   aload 5 
L125:   invokevirtual Method com/fs/starfarer/loading/specs/Object getHardpointGlowSpriteName ()Ljava/lang/String; 
L128:   iconst_1 
L129:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L132:   aload_0 
L133:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L136:   aload 5 
L138:   invokevirtual Method com/fs/starfarer/loading/specs/Object getTurretGlowSpriteName ()Ljava/lang/String; 
L141:   iconst_1 
L142:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L145:   aload 5 
L147:   invokevirtual Method com/fs/starfarer/loading/specs/Object getTextureType ()Lcom/fs/starfarer/renderers/L$Oo; 
L150:   ifnonnull L179 
L153:   aload_0 
L154:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L157:   aload 5 
L159:   invokevirtual Method com/fs/starfarer/loading/specs/Object getCoreTex ()Ljava/lang/String; 
L162:   iconst_1 
L163:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L166:   aload_0 
L167:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L170:   aload 5 
L172:   invokevirtual Method com/fs/starfarer/loading/specs/Object getFringeTex ()Ljava/lang/String; 
L175:   iconst_1 
L176:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 

        .stack append Object com/fs/starfarer/loading/specs/Object 
L179:   aload 5 
L181:   invokevirtual Method com/fs/starfarer/loading/specs/Object getTurretSpriteName ()Ljava/lang/String; 
L184:   ldc_w '00\\.png' 
L187:   ldc '' 
L189:   invokevirtual Method java/lang/String replaceAll (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 
L192:   astore 6 
L194:   aload 5 
L196:   invokevirtual Method com/fs/starfarer/loading/specs/Object getHardpointSpriteName ()Ljava/lang/String; 
L199:   ldc_w '00\\.png' 
L202:   ldc '' 
L204:   invokevirtual Method java/lang/String replaceAll (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 
L207:   astore 7 
L209:   iconst_1 
L210:   istore 8 
L212:   goto L288 

        .stack append Object java/lang/String Object java/lang/String Integer 
L215:   ldc_w '%s%02d.png' 
L218:   iconst_2 
L219:   anewarray java/lang/Object 
L222:   dup 
L223:   iconst_0 
L224:   aload 6 
L226:   aastore 
L227:   dup 
L228:   iconst_1 
L229:   iload 8 
L231:   invokestatic Method java/lang/Integer valueOf (I)Ljava/lang/Integer; 
L234:   aastore 
L235:   invokestatic Method java/lang/String format (Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String; 
L238:   astore 9 
L240:   aload_0 
L241:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L244:   aload 9 
L246:   iconst_1 
L247:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L250:   ldc_w '%s%02d.png' 
L253:   iconst_2 
L254:   anewarray java/lang/Object 
L257:   dup 
L258:   iconst_0 
L259:   aload 7 
L261:   aastore 
L262:   dup 
L263:   iconst_1 
L264:   iload 8 
L266:   invokestatic Method java/lang/Integer valueOf (I)Ljava/lang/Integer; 
L269:   aastore 
L270:   invokestatic Method java/lang/String format (Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String; 
L273:   astore 9 
L275:   aload_0 
L276:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L279:   aload 9 
L281:   iconst_1 
L282:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L285:   iinc 8 1 

        .stack same_extended 
L288:   iload 8 
L290:   aload 5 
L292:   invokevirtual Method com/fs/starfarer/loading/specs/Object getNumFrames ()I 
L295:   if_icmplt L215 
L298:   goto L607 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/List Object java/lang/String Object java/util/Iterator Object com/fs/starfarer/loading/specs/BaseWeaponSpec 
            stack 
        .end stack 
L301:   aload 4 
L303:   instanceof com/fs/starfarer/loading/specs/Oo0O 
L306:   ifeq L607 
L309:   aload 4 
L311:   checkcast com/fs/starfarer/loading/specs/Oo0O 
L314:   astore 5 
L316:   aload_0 
L317:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L320:   aload 5 
L322:   invokevirtual Method com/fs/starfarer/loading/specs/Oo0O getHardpointGlowSpriteName ()Ljava/lang/String; 
L325:   iconst_1 
L326:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L329:   aload_0 
L330:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L333:   aload 5 
L335:   invokevirtual Method com/fs/starfarer/loading/specs/Oo0O getTurretGlowSpriteName ()Ljava/lang/String; 
L338:   iconst_1 
L339:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L342:   aload_0 
L343:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L346:   aload 5 
L348:   invokevirtual Method com/fs/starfarer/loading/specs/Oo0O getHardpointGunSpriteName ()Ljava/lang/String; 
L351:   iconst_1 
L352:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L355:   aload_0 
L356:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L359:   aload 5 
L361:   invokevirtual Method com/fs/starfarer/loading/specs/Oo0O getTurretGunSpriteName ()Ljava/lang/String; 
L364:   iconst_1 
L365:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L368:   aload 5 
L370:   invokevirtual Method com/fs/starfarer/loading/specs/Oo0O getTurretSpriteName ()Ljava/lang/String; 
L373:   ldc_w '00\\.png' 
L376:   ldc '' 
L378:   invokevirtual Method java/lang/String replaceAll (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 
L381:   astore 6 
L383:   aload 5 
L385:   invokevirtual Method com/fs/starfarer/loading/specs/Oo0O getHardpointSpriteName ()Ljava/lang/String; 
L388:   ldc_w '00\\.png' 
L391:   ldc '' 
L393:   invokevirtual Method java/lang/String replaceAll (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 
L396:   astore 7 
L398:   iconst_1 
L399:   istore 8 
L401:   goto L477 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/List Object java/lang/String Object java/util/Iterator Object com/fs/starfarer/loading/specs/BaseWeaponSpec Object com/fs/starfarer/loading/specs/Oo0O Object java/lang/String Object java/lang/String Integer 
            stack 
        .end stack 
L404:   ldc_w '%s%02d.png' 
L407:   iconst_2 
L408:   anewarray java/lang/Object 
L411:   dup 
L412:   iconst_0 
L413:   aload 6 
L415:   aastore 
L416:   dup 
L417:   iconst_1 
L418:   iload 8 
L420:   invokestatic Method java/lang/Integer valueOf (I)Ljava/lang/Integer; 
L423:   aastore 
L424:   invokestatic Method java/lang/String format (Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String; 
L427:   astore 9 
L429:   aload_0 
L430:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L433:   aload 9 
L435:   iconst_1 
L436:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L439:   ldc_w '%s%02d.png' 
L442:   iconst_2 
L443:   anewarray java/lang/Object 
L446:   dup 
L447:   iconst_0 
L448:   aload 7 
L450:   aastore 
L451:   dup 
L452:   iconst_1 
L453:   iload 8 
L455:   invokestatic Method java/lang/Integer valueOf (I)Ljava/lang/Integer; 
L458:   aastore 
L459:   invokestatic Method java/lang/String format (Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String; 
L462:   astore 9 
L464:   aload_0 
L465:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L468:   aload 9 
L470:   iconst_1 
L471:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L474:   iinc 8 1 

        .stack same_extended 
L477:   iload 8 
L479:   aload 5 
L481:   invokevirtual Method com/fs/starfarer/loading/specs/Oo0O getNumFrames ()I 
L484:   if_icmplt L404 
L487:   aload 5 
L489:   invokevirtual Method com/fs/starfarer/loading/specs/Oo0O getProjectileSpec ()Ljava/lang/Object; 
L492:   astore 8 
L494:   aload_1 
L495:   aload 8 
L497:   invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L502:   pop 
L503:   aload 8 
L505:   instanceof com/fs/starfarer/loading/specs/o00o 
L508:   ifeq L553 
L511:   aload 8 
L513:   checkcast com/fs/starfarer/loading/specs/o00o 
L516:   astore 9 
L518:   aload_0 
L519:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L522:   aload 9 
L524:   invokevirtual Method com/fs/starfarer/loading/specs/o00o getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L527:   invokevirtual Method com/fs/starfarer/loading/specs/g getSpriteSpec ()Lcom/fs/starfarer/loading/specs/Q; 
L530:   invokevirtual Method com/fs/starfarer/loading/specs/Q 'Ó00000' ()Ljava/lang/String; 
L533:   iconst_1 
L534:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L537:   aload_0 
L538:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L541:   aload 9 
L543:   invokevirtual Method com/fs/starfarer/loading/specs/o00o getGlowSpriteName ()Ljava/lang/String; 
L546:   iconst_1 
L547:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L550:   goto L607 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/List Object java/lang/String Object java/util/Iterator Object com/fs/starfarer/loading/specs/BaseWeaponSpec Object com/fs/starfarer/loading/specs/Oo0O Object java/lang/String Object java/lang/String Object java/lang/Object 
            stack 
        .end stack 
L553:   aload 8 
L555:   instanceof com/fs/starfarer/loading/specs/F 
L558:   ifeq L607 
L561:   aload 8 
L563:   checkcast com/fs/starfarer/loading/specs/F 
L566:   astore 9 
L568:   aload_0 
L569:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L572:   aload 9 
L574:   invokevirtual Method com/fs/starfarer/loading/specs/F getBulletSpriteName ()Ljava/lang/String; 
L577:   iconst_1 
L578:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L581:   aload_0 
L582:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L585:   aload 9 
L587:   invokevirtual Method com/fs/starfarer/loading/specs/F getFringeTex ()Ljava/lang/String; 
L590:   iconst_1 
L591:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L594:   aload_0 
L595:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L598:   aload 9 
L600:   invokevirtual Method com/fs/starfarer/loading/specs/F getCoreTex ()Ljava/lang/String; 
L603:   iconst_1 
L604:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L607:   aload_3 
L608:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L613:   ifne L20 
L616:   invokestatic Method com/fs/starfarer/loading/Q 'super' ()Ljava/util/Collection; 
L619:   invokeinterface InterfaceMethod java/util/Collection iterator ()Ljava/util/Iterator; 1 
L624:   astore_3 
L625:   goto L771 

        .stack same 
L628:   aload_3 
L629:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L634:   checkcast java/lang/String 
L637:   astore_2 
L638:   aload_2 
L639:   invokestatic Method com/fs/starfarer/loading/Q 'Õ00000' (Ljava/lang/String;)Ljava/lang/Object; 
L642:   astore 4 
L644:   aload_1 
L645:   aload 4 
L647:   invokeinterface InterfaceMethod java/util/List contains (Ljava/lang/Object;)Z 2 
L652:   ifeq L658 
L655:   goto L771 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/List Object java/lang/String Object java/util/Iterator Object java/lang/Object 
            stack 
        .end stack 
L658:   aload_1 
L659:   aload 4 
L661:   invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L666:   pop 
L667:   aload 4 
L669:   instanceof com/fs/starfarer/loading/specs/o00o 
L672:   ifeq L717 
L675:   aload 4 
L677:   checkcast com/fs/starfarer/loading/specs/o00o 
L680:   astore 5 
L682:   aload_0 
L683:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L686:   aload 5 
L688:   invokevirtual Method com/fs/starfarer/loading/specs/o00o getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L691:   invokevirtual Method com/fs/starfarer/loading/specs/g getSpriteSpec ()Lcom/fs/starfarer/loading/specs/Q; 
L694:   invokevirtual Method com/fs/starfarer/loading/specs/Q 'Ó00000' ()Ljava/lang/String; 
L697:   iconst_1 
L698:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L701:   aload_0 
L702:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L705:   aload 5 
L707:   invokevirtual Method com/fs/starfarer/loading/specs/o00o getGlowSpriteName ()Ljava/lang/String; 
L710:   iconst_1 
L711:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L714:   goto L771 

        .stack same 
L717:   aload 4 
L719:   instanceof com/fs/starfarer/loading/specs/F 
L722:   ifeq L771 
L725:   aload 4 
L727:   checkcast com/fs/starfarer/loading/specs/F 
L730:   astore 5 
L732:   aload_0 
L733:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L736:   aload 5 
L738:   invokevirtual Method com/fs/starfarer/loading/specs/F getBulletSpriteName ()Ljava/lang/String; 
L741:   iconst_1 
L742:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L745:   aload_0 
L746:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L749:   aload 5 
L751:   invokevirtual Method com/fs/starfarer/loading/specs/F getFringeTex ()Ljava/lang/String; 
L754:   iconst_1 
L755:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 
L758:   aload_0 
L759:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L762:   aload 5 
L764:   invokevirtual Method com/fs/starfarer/loading/specs/F getCoreTex ()Ljava/lang/String; 
L767:   iconst_1 
L768:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L771:   aload_3 
L772:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L777:   ifne L628 
L780:   invokestatic Method com/fs/starfarer/loading/oO0O 'Ò00000' ()Ljava/util/Collection; 
L783:   invokeinterface InterfaceMethod java/util/Collection iterator ()Ljava/util/Iterator; 1 
L788:   astore_3 
L789:   goto L824 

        .stack same 
L792:   aload_3 
L793:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L798:   checkcast java/lang/String 
L801:   astore_2 
L802:   aload_2 
L803:   invokestatic Method com/fs/starfarer/loading/oO0O 'super' (Ljava/lang/String;)Lcom/fs/starfarer/loading/specs/g; 
L806:   astore 4 
L808:   aload_0 
L809:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L812:   aload 4 
L814:   invokevirtual Method com/fs/starfarer/loading/specs/g getSpriteSpec ()Lcom/fs/starfarer/loading/specs/Q; 
L817:   invokevirtual Method com/fs/starfarer/loading/specs/Q 'Ó00000' ()Ljava/lang/String; 
L820:   iconst_1 
L821:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u59] 

        .stack same 
L824:   aload_3 
L825:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L830:   ifne L792 
L833:   return 
L834:   
    .end code 
.end method 

.method public traverse : ()Ljava/lang/String; 
    .exceptions java/lang/Exception 
    .code stack 1 locals 1 
L0:     ldc_w 'Title Screen State' 
L3:     areturn 
L4:     
    .end code 
.end method 

.method private renderBg : ()V 
    .code stack 5 locals 5 
L0:     ldc_w +414.0f 
L3:     fstore_1 
L4:     ldc_w +48.0f 
L7:     fstore_2 
L8:     invokestatic Method com/fs/graphics/util/B return ()V 
L11:    invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'while.new' ()F 
L14:    fstore_3 
L15:    invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'öÒ0000' ()F 
L18:    fstore 4 
L20:    fconst_0 
L21:    fload_3 
L22:    fconst_0 
L23:    fload 4 
L25:    ldc_w +1000.0f 
L28:    invokestatic Method com/fs/graphics/util/B o00000 (FFFFF)V 
L31:    aload_0 
L32:    getfield Field com/fs/starfarer/loading/ResourceLoaderState title Lcom/fs/graphics/Sprite; 
L35:    fload_3 
L36:    fconst_2 
L37:    fdiv 
L38:    fload 4 
L40:    fconst_2 
L41:    fdiv 
L42:    fload_2 
L43:    fadd 
L44:    ldc_w +5.0f 
L47:    fadd 
L48:    invokevirtual Method com/fs/graphics/Sprite renderAtCenter (FF)V 
L51:    aload_0 
L52:    getfield Field com/fs/starfarer/loading/ResourceLoaderState barBg Lcom/fs/graphics/Sprite; 
L55:    fload_3 
L56:    fconst_2 
L57:    fdiv 
L58:    fload 4 
L60:    fconst_2 
L61:    fdiv 
L62:    invokevirtual Method com/fs/graphics/Sprite renderAtCenter (FF)V 
L65:    invokestatic Method com/fs/graphics/util/B 'Õ00000' ()V 
L68:    invokestatic Method org/lwjgl/opengl/Display update ()V 
L71:    return 
L72:    
    .end code 
.end method 

.method private renderProgress : (F)V 
    .code stack 7 locals 5 
L0:     ldc_w +48.0f 
L3:     fstore_2 
L4:     invokestatic Method com/fs/graphics/util/B return ()V 
L7:     invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'while.new' ()F 
L10:    fstore_3 
L11:    invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'öÒ0000' ()F 
L14:    fstore 4 
L16:    fconst_0 
L17:    fload_3 
L18:    fconst_0 
L19:    fload 4 
L21:    ldc_w +1000.0f 
L24:    invokestatic Method com/fs/graphics/util/B o00000 (FFFFF)V 
L27:    aload_0 
L28:    getfield Field com/fs/starfarer/loading/ResourceLoaderState title Lcom/fs/graphics/Sprite; 
L31:    fload_3 
L32:    fconst_2 
L33:    fdiv 
L34:    fload 4 
L36:    fconst_2 
L37:    fdiv 
L38:    fload_2 
L39:    fadd 
L40:    ldc_w +5.0f 
L43:    fadd 
L44:    invokevirtual Method com/fs/graphics/Sprite renderAtCenter (FF)V 
L47:    aload_0 
L48:    getfield Field com/fs/starfarer/loading/ResourceLoaderState barBg Lcom/fs/graphics/Sprite; 
L51:    fload_3 
L52:    fconst_2 
L53:    fdiv 
L54:    fload 4 
L56:    fconst_2 
L57:    fdiv 
L58:    invokevirtual Method com/fs/graphics/Sprite renderAtCenter (FF)V 
L61:    aload_0 
L62:    getfield Field com/fs/starfarer/loading/ResourceLoaderState bar Lcom/fs/graphics/Sprite; 
L65:    fload_3 
L66:    fconst_2 
L67:    fdiv 
L68:    fload 4 
L70:    fconst_2 
L71:    fdiv 
L72:    fconst_0 
L73:    fconst_0 
L74:    fload_1 
L75:    fconst_1 
L76:    invokevirtual Method com/fs/graphics/Sprite renderRegionAtCenter (FFFFFF)V 
L79:    invokestatic Method com/fs/graphics/util/B 'Õ00000' ()V 
L82:    invokestatic Method org/lwjgl/opengl/Display update ()V 
L85:    return 
L86:    
    .end code 
.end method 

.method public goToState : (Ljava/lang/String;)V 
    .code stack 0 locals 2 
L0:     return 
L1:     
    .end code 
.end method 

.method static synthetic $SWITCH_TABLE$com$fs$starfarer$loading$ResourceLoaderState$Type : ()[I 
    .code stack 3 locals 1 
L0:     getstatic Field com/fs/starfarer/loading/ResourceLoaderState $SWITCH_TABLE$com$fs$starfarer$loading$ResourceLoaderState$Type [I 
L3:     dup 
L4:     ifnull L8 
L7:     areturn 

        .stack stack_1 Object [I 
L8:     pop 
L9:     invokestatic Method com/fs/starfarer/loading/ResourceLoaderState$o values ()[Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L12:    arraylength 
L13:    newarray int 
L15:    astore_0 
        .catch java/lang/NoSuchFieldError from L16 to L25 using L28 
L16:    aload_0 
L17:    getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ó00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L20:    invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState$o ordinal ()I 
L23:    iconst_5 
L24:    iastore 
L25:    goto L29 

        .stack full 
            locals Object [I 
            stack Object java/lang/NoSuchFieldError 
        .end stack 
L28:    pop 
        .catch java/lang/NoSuchFieldError from L29 to L39 using L42 

        .stack same 
L29:    aload_0 
L30:    getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Õ00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L33:    invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState$o ordinal ()I 
L36:    bipush 6 
L38:    iastore 
L39:    goto L43 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L42:    pop 
        .catch java/lang/NoSuchFieldError from L43 to L52 using L55 

        .stack same 
L43:    aload_0 
L44:    getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ö00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L47:    invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState$o ordinal ()I 
L50:    iconst_4 
L51:    iastore 
L52:    goto L56 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L55:    pop 
        .catch java/lang/NoSuchFieldError from L56 to L65 using L68 

        .stack same 
L56:    aload_0 
L57:    getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L60:    invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState$o ordinal ()I 
L63:    iconst_1 
L64:    iastore 
L65:    goto L69 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L68:    pop 
        .catch java/lang/NoSuchFieldError from L69 to L78 using L81 

        .stack same 
L69:    aload_0 
L70:    getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o void Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L73:    invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState$o ordinal ()I 
L76:    iconst_3 
L77:    iastore 
L78:    goto L82 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L81:    pop 
        .catch java/lang/NoSuchFieldError from L82 to L91 using L94 

        .stack same 
L82:    aload_0 
L83:    getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o String Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L86:    invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState$o ordinal ()I 
L89:    iconst_2 
L90:    iastore 
L91:    goto L95 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L94:    pop 

        .stack same 
L95:    aload_0 
L96:    dup 
L97:    putstatic Field com/fs/starfarer/loading/ResourceLoaderState $SWITCH_TABLE$com$fs$starfarer$loading$ResourceLoaderState$Type [I 
L100:   areturn 
L101:   
    .end code 
.end method 
.innerclasses 
    com/fs/starfarer/launcher/ModManager$ModSpec com/fs/starfarer/launcher/ModManager ModSpec public static 
    com/fs/starfarer/loading/ResourceLoaderState$Oo com/fs/starfarer/loading/ResourceLoaderState Oo private static 
    com/fs/starfarer/loading/ResourceLoaderState$o com/fs/starfarer/loading/ResourceLoaderState o public static final enum 
    com/fs/starfarer/renderers/L$Oo com/fs/starfarer/renderers/L Oo public static final enum 
.end innerclasses 
.nestmembers com/fs/starfarer/loading/ResourceLoaderState$Oo com/fs/starfarer/loading/ResourceLoaderState$o 
.const [u59] = Utf8 (Lcom/fs/starfarer/loading/ResourceLoaderState$o;Ljava/lang/String;I)V 
.const [c106] = Class [u103] 
.const [u103] = Utf8 com/fs/starfarer/title/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 
.end class 
