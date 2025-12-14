.version 61 0 
.class public super com/fs/starfarer/campaign/save/CampaignGameManager 
.super java/lang/Object 
.field public static final 'õ00000' Ljava/lang/String; = '0.6' 
.field private static 'Ö00000' Lorg/apache/log4j/Logger; 
.field public static 'ø00000' Z 
.field private static if J 
.field protected static 'Õ00000' Ljava/lang/String; 
.field protected static 'Ó00000' Lcom/fs/starfarer/campaign/save/SaveGameData; 
.field protected static volatile void Lcom/fs/starfarer/util/do; 
.field private static volatile 'ô00000' Z 
.field private static 'super' Ljava/lang/Boolean; 
.field private static String Lcom/thoughtworks/xstream/XStream; 
.field private static 'Ò00000' Ljava/util/HashSet; .fieldattributes 
    .signature Ljava/util/HashSet<Ljava/lang/String;>; 
.end fieldattributes 
.field private static OO0000 Ljava/util/HashSet; .fieldattributes 
    .signature Ljava/util/HashSet<Ljava/lang/Class;>; 
.end fieldattributes 

.method static <clinit> : ()V 
    .code stack 2 locals 0 
L0:     ldc Class com/fs/starfarer/campaign/save/CampaignGameManager 
L2:     invokestatic Method org/apache/log4j/Logger getLogger (Ljava/lang/Class;)Lorg/apache/log4j/Logger; 
L5:     putstatic Field com/fs/starfarer/campaign/save/CampaignGameManager 'Ö00000' Lorg/apache/log4j/Logger; 
L8:     iconst_0 
L9:     putstatic Field com/fs/starfarer/campaign/save/CampaignGameManager 'ø00000' Z 
L12:    lconst_0 
L13:    putstatic Field com/fs/starfarer/campaign/save/CampaignGameManager if J 
L16:    aconst_null 
L17:    putstatic Field com/fs/starfarer/campaign/save/CampaignGameManager 'Õ00000' Ljava/lang/String; 
L20:    aconst_null 
L21:    putstatic Field com/fs/starfarer/campaign/save/CampaignGameManager 'Ó00000' Lcom/fs/starfarer/campaign/save/SaveGameData; 
L24:    aconst_null 
L25:    putstatic Field com/fs/starfarer/campaign/save/CampaignGameManager void Lcom/fs/starfarer/util/do; 
L28:    iconst_0 
L29:    putstatic Field com/fs/starfarer/campaign/save/CampaignGameManager 'ô00000' Z 
L32:    aconst_null 
L33:    putstatic Field com/fs/starfarer/campaign/save/CampaignGameManager 'super' Ljava/lang/Boolean; 
L36:    aconst_null 
L37:    putstatic Field [c1] String Lcom/thoughtworks/xstream/XStream; 
L40:    new java/util/HashSet 
L43:    dup 
L44:    invokespecial Method java/util/HashSet <init> ()V 
L47:    putstatic Field [c1] 'Ò00000' Ljava/util/HashSet; 
L50:    new java/util/HashSet 
L53:    dup 
L54:    invokespecial Method java/util/HashSet <init> ()V 
L57:    putstatic Field [c1] OO0000 Ljava/util/HashSet; 
L60:    return 
L61:    
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

.method public static 'Ó00000' : ()J 
    .code stack 2 locals 0 
L0:     getstatic Field [c1] if J 
L3:     lreturn 
L4:     
    .end code 
.end method 

.method public static o00000 : (J)V 
    .code stack 2 locals 2 
L0:     lload_0 
L1:     putstatic Field [c1] if J 
L4:     return 
L5:     
    .end code 
.end method 

.method public static o00000 : (Ljava/lang/String;)Ljava/lang/String; 
    .code stack 4 locals 3 
L0:     new java/util/Random 
L3:     dup 
L4:     invokespecial Method java/util/Random <init> ()V 
L7:     astore_1 
L8:     new java/lang/StringBuilder 
L11:    dup 
L12:    ldc 'save_' 
L14:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L17:    aload_0 
L18:    ldc '[^a-z|^A-Z|^0-9]' 
L20:    ldc '' 
L22:    invokevirtual Method java/lang/String replaceAll (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 
L25:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L28:    ldc '_' 
L30:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L33:    aload_1 
L34:    invokevirtual Method java/util/Random nextLong ()J 
L37:    invokestatic Method java/lang/Math abs (J)J 
L40:    invokevirtual Method java/lang/StringBuilder append (J)Ljava/lang/StringBuilder; 
L43:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L46:    astore_2 
L47:    aload_2 
L48:    areturn 
L49:    
    .end code 
.end method

.method public static CampaignGameManager_saveGame : (Lproxy/com/fs/starfarer/campaign/CampaignEngine$CampaignUI;JZ)Ljava/lang/String;
    .code stack 4 locals 4
L0:     aload_0
L1:     lload_1
L2:     iload_3
L3:     invokestatic Method com/genir/renderer/overrides/CampaignGameManager saveGame (Lproxy/com/fs/starfarer/campaign/CampaignEngine$CampaignUI;JZ)Ljava/lang/String;
L6:     areturn
L7:
        .linenumbertable
            L0 8
        .end linenumbertable
        .localvariabletable
            0 is var0 Lproxy/com/fs/starfarer/campaign/CampaignEngine$CampaignUI; from L0 to L7
            1 is var1 J from L0 to L7
            3 is var3 Z from L0 to L7
        .end localvariabletable
    .end code
.end method

.method public static o00000 : (Lcom/fs/starfarer/campaign/save/return;Lcom/fs/starfarer/campaign/CampaignState;)Ljava/lang/String;
    .code stack 6 locals 20 
L0:     invokestatic Method com/fs/starfarer/D/return 'ô00000' ()V 
L3:     iconst_1 
L4:     putstatic Field [c1] 'ø00000' Z 
L7:     aload_0 
L8:     invokevirtual Method com/fs/starfarer/campaign/save/return getCustomData ()Ljava/util/Map; 
L11:    ldc 'customDevStart' 
L13:    invokeinterface InterfaceMethod java/util/Map containsKey (Ljava/lang/Object;)Z 2 
L18:    istore_2 
L19:    new com/fs/starfarer/campaign/save/B 
L22:    dup 
L23:    invokespecial Method com/fs/starfarer/campaign/save/B <init> ()V 
L26:    astore_3 
L27:    aload_3 
L28:    ldc 'Initializing...' 
L30:    fconst_0 
L31:    invokevirtual Method com/fs/starfarer/campaign/save/B o00000 (Ljava/lang/String;F)V 
L34:    new com/fs/starfarer/campaign/CampaignEngine 
L37:    dup 
L38:    invokespecial Method com/fs/starfarer/campaign/CampaignEngine <init> ()V 
L41:    astore 4 
L43:    aload 4 
L45:    aload_1 
L46:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setListener (Lcom/fs/starfarer/campaign/void;)V 
L49:    aload 4 
L51:    aload_0 
L52:    invokevirtual Method com/fs/starfarer/campaign/save/return getCharacterData ()Lcom/fs/starfarer/campaign/PlayerCharacterData; 
L55:    invokevirtual Method com/fs/starfarer/campaign/PlayerCharacterData getName ()Ljava/lang/String; 
L58:    invokestatic Method [c1] o00000 (Ljava/lang/String;)Ljava/lang/String; 
L61:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setSaveDirName (Ljava/lang/String;)V 
L64:    aload 4 
L66:    aload_0 
L67:    invokevirtual Method com/fs/starfarer/campaign/save/return getCharacterData ()Lcom/fs/starfarer/campaign/PlayerCharacterData; 
L70:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setCharacterData (Lcom/fs/starfarer/campaign/PlayerCharacterData;)V 
L73:    aload 4 
L75:    aload_0 
L76:    invokevirtual Method com/fs/starfarer/campaign/save/return getDifficulty ()Ljava/lang/String; 
L79:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setDifficulty (Ljava/lang/String;)V 
L82:    aload 4 
L84:    invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getCharacterData ()Lcom/fs/starfarer/campaign/PlayerCharacterData; 
L87:    invokevirtual Method com/fs/starfarer/campaign/PlayerCharacterData getPerson ()Lcom/fs/starfarer/rpg/Person; 
L90:    ldc 'player' 
L92:    invokevirtual Method com/fs/starfarer/rpg/Person setFaction (Ljava/lang/String;)V 
L95:    aload 4 
L97:    invokestatic Method com/fs/starfarer/campaign/CampaignEngine setInstance (Lcom/fs/starfarer/campaign/CampaignEngine;)V 
L100:   aload 4 
L102:   iconst_1 
L103:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setInSectorGen (Z)V 
L106:   aload 4 
L108:   aload_1 
L109:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setCampaignUI (Lcom/fs/starfarer/campaign/CampaignEngine$o;)V 
L112:   aload 4 
L114:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getCampaignHelp ()Lcom/fs/starfarer/campaign/CampaignHelpManager; 
L117:   aload_0 
L118:   invokevirtual Method com/fs/starfarer/campaign/save/return isCampaignHelpEnabled ()Z 
L121:   invokevirtual Method com/fs/starfarer/campaign/CampaignHelpManager setEnabled (Z)V 
L124:   aload 4 
L126:   aload_0 
L127:   invokevirtual Method com/fs/starfarer/campaign/save/return getSeedString ()Ljava/lang/String; 
L130:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setSeedString (Ljava/lang/String;)V 
L133:   aload_3 
L134:   ldc 'Generating sector...' 
L136:   fconst_1 
L137:   invokevirtual Method com/fs/starfarer/campaign/save/B o00000 (Ljava/lang/String;F)V 
L140:   ldc 'newGameSectorProcGen' 
L142:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'ÓO0000' (Ljava/lang/String;)Ljava/lang/Object; 
L145:   checkcast com/fs/starfarer/api/campaign/SectorProcGenPlugin 
L148:   astore 5 
L150:   aload 5 
L152:   aload_0 
L153:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorProcGenPlugin prepare (Lcom/fs/starfarer/api/characters/CharacterCreationData;)V 2 
L158:   ldc 'newGameCreationEntryPoint' 
L160:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'ÓO0000' (Ljava/lang/String;)Ljava/lang/Object; 
L163:   checkcast com/fs/starfarer/api/campaign/SectorGeneratorPlugin 
L166:   astore 6 
L168:   aload 6 
L170:   aload 4 
L172:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorGeneratorPlugin generate (Lcom/fs/starfarer/api/campaign/SectorAPI;)V 2 
L177:   ldc Class com/fs/starfarer/loading/P 
L179:   ldc 'sectorConfig' 
L181:   invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object; 
L184:   checkcast com/fs/starfarer/loading/P 
L187:   astore 7 
L189:   aload 7 
L191:   invokevirtual Method com/fs/starfarer/loading/P 'super' ()Ljava/util/List; 
L194:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L199:   astore 9 
L201:   goto L225 

        .stack full 
            locals Object com/fs/starfarer/campaign/save/return Object com/fs/starfarer/campaign/CampaignState Integer Object com/fs/starfarer/campaign/save/B Object com/fs/starfarer/campaign/CampaignEngine Object com/fs/starfarer/api/campaign/SectorProcGenPlugin Object com/fs/starfarer/api/campaign/SectorGeneratorPlugin Object com/fs/starfarer/loading/P Top Object java/util/Iterator 
            stack 
        .end stack 
L204:   aload 9 
L206:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L211:   checkcast com/fs/starfarer/api/campaign/SectorGeneratorPlugin 
L214:   astore 8 
L216:   aload 8 
L218:   aload 4 
L220:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorGeneratorPlugin generate (Lcom/fs/starfarer/api/campaign/SectorAPI;)V 2 

        .stack same 
L225:   aload 9 
L227:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L232:   ifne L204 
L235:   invokestatic Method com/fs/starfarer/launcher/ModManager getInstance ()Lcom/fs/starfarer/launcher/ModManager; 
L238:   invokevirtual Method com/fs/starfarer/launcher/ModManager getEnabledModPlugins ()Ljava/util/List; 
L241:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L246:   astore 9 
L248:   goto L270 

        .stack same 
L251:   aload 9 
L253:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L258:   checkcast com/fs/starfarer/api/ModPlugin 
L261:   astore 8 
L263:   aload 8 
L265:   invokeinterface InterfaceMethod com/fs/starfarer/api/ModPlugin onNewGame ()V 1 

        .stack same 
L270:   aload 9 
L272:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L277:   ifne L251 
L280:   aload 5 
L282:   aload_0 
L283:   new com/fs/starfarer/campaign/save/CampaignGameManager$1 
L286:   dup 
L287:   aload_3 
L288:   invokespecial Method com/fs/starfarer/campaign/save/CampaignGameManager$1 <init> (Lcom/fs/starfarer/campaign/save/B;)V 
L291:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorProcGenPlugin generate (Lcom/fs/starfarer/api/characters/CharacterCreationData;Lcom/fs/starfarer/api/campaign/SectorGenProgress;)V 3 
L296:   aload 4 
L298:   iconst_0 
L299:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setInSectorGen (Z)V 
L302:   invokestatic Method com/fs/starfarer/launcher/ModManager getInstance ()Lcom/fs/starfarer/launcher/ModManager; 
L305:   invokevirtual Method com/fs/starfarer/launcher/ModManager getEnabledModPlugins ()Ljava/util/List; 
L308:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L313:   astore 9 
L315:   goto L337 

        .stack same 
L318:   aload 9 
L320:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L325:   checkcast com/fs/starfarer/api/ModPlugin 
L328:   astore 8 
L330:   aload 8 
L332:   invokeinterface InterfaceMethod com/fs/starfarer/api/ModPlugin onNewGameAfterProcGen ()V 1 

        .stack same 
L337:   aload 9 
L339:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L344:   ifne L318 
L347:   aload_0 
L348:   invokevirtual Method com/fs/starfarer/campaign/save/return isWithTimePass ()Z 
L351:   istore 8 
L353:   aload_3 
L354:   ldc_w 'Stabilizing economy...' 
L357:   ldc_w +30.0f 
L360:   invokevirtual Method com/fs/starfarer/campaign/save/B o00000 (Ljava/lang/String;F)V 
        .catch java/lang/Exception from L363 to L380 using L383 
L363:   ldc_w 'data/campaign/econ/economy.json' 
L366:   iconst_1 
L367:   iconst_1 
L368:   new com/fs/starfarer/campaign/save/CampaignGameManager$2 
L371:   dup 
L372:   aload_3 
L373:   invokespecial Method com/fs/starfarer/campaign/save/CampaignGameManager$2 <init> (Lcom/fs/starfarer/campaign/save/B;)V 
L376:   invokestatic Method com/fs/starfarer/campaign/econ/super o00000 (Ljava/lang/String;ZZLcom/fs/starfarer/campaign/econ/super$o;)Lcom/fs/starfarer/campaign/econ/reach/ReachEconomy; 
L379:   pop 
L380:   goto L395 

        .stack full 
            locals Object com/fs/starfarer/campaign/save/return Object com/fs/starfarer/campaign/CampaignState Integer Object com/fs/starfarer/campaign/save/B Object com/fs/starfarer/campaign/CampaignEngine Object com/fs/starfarer/api/campaign/SectorProcGenPlugin Object com/fs/starfarer/api/campaign/SectorGeneratorPlugin Object com/fs/starfarer/loading/P Integer 
            stack Object java/lang/Exception 
        .end stack 
L383:   astore 9 
L385:   new java/lang/RuntimeException 
L388:   dup 
L389:   aload 9 
L391:   invokespecial Method java/lang/RuntimeException <init> (Ljava/lang/Throwable;)V 
L394:   athrow 

        .stack same 
L395:   invokestatic Method com/fs/starfarer/launcher/ModManager getInstance ()Lcom/fs/starfarer/launcher/ModManager; 
L398:   invokevirtual Method com/fs/starfarer/launcher/ModManager getEnabledModPlugins ()Ljava/util/List; 
L401:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L406:   astore 10 
L408:   goto L430 

        .stack full 
            locals Object com/fs/starfarer/campaign/save/return Object com/fs/starfarer/campaign/CampaignState Integer Object com/fs/starfarer/campaign/save/B Object com/fs/starfarer/campaign/CampaignEngine Object com/fs/starfarer/api/campaign/SectorProcGenPlugin Object com/fs/starfarer/api/campaign/SectorGeneratorPlugin Object com/fs/starfarer/loading/P Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L411:   aload 10 
L413:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L418:   checkcast com/fs/starfarer/api/ModPlugin 
L421:   astore 9 
L423:   aload 9 
L425:   invokeinterface InterfaceMethod com/fs/starfarer/api/ModPlugin onNewGameAfterEconomyLoad ()V 1 

        .stack same 
L430:   aload 10 
L432:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L437:   ifne L411 
L440:   aload_0 
L441:   invokevirtual Method com/fs/starfarer/campaign/save/return getStartingLocationName ()Ljava/lang/String; 
L444:   ldc_w 'hyperspace' 
L447:   invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L450:   ifeq L466 
L453:   aload 4 
L455:   aload 4 
L457:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getHyperspace ()Lcom/fs/starfarer/campaign/Hyperspace; 
L460:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setCurrentLocation (Lcom/fs/starfarer/api/campaign/LocationAPI;)V 
L463:   goto L480 

        .stack full 
            locals Object com/fs/starfarer/campaign/save/return Object com/fs/starfarer/campaign/CampaignState Integer Object com/fs/starfarer/campaign/save/B Object com/fs/starfarer/campaign/CampaignEngine Object com/fs/starfarer/api/campaign/SectorProcGenPlugin Object com/fs/starfarer/api/campaign/SectorGeneratorPlugin Object com/fs/starfarer/loading/P Integer 
            stack 
        .end stack 
L466:   aload 4 
L468:   aload 4 
L470:   aload_0 
L471:   invokevirtual Method com/fs/starfarer/campaign/save/return getStartingLocationName ()Ljava/lang/String; 
L474:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getStarSystem (Ljava/lang/String;)Lcom/fs/starfarer/api/campaign/StarSystemAPI; 
L477:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setCurrentLocation (Lcom/fs/starfarer/api/campaign/LocationAPI;)V 

        .stack same 
L480:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L483:   astore 4 
L485:   aload 4 
L487:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getFactionManager ()Lcom/fs/starfarer/campaign/FactionManager; 
L490:   invokevirtual Method com/fs/starfarer/campaign/FactionManager getPlayerFaction ()Lcom/fs/starfarer/campaign/Faction; 
L493:   astore 9 
L495:   aload 4 
L497:   iconst_1 
L498:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setInFastAdvance (Z)V 
L501:   aload 4 
L503:   iconst_1 
L504:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setInNewGameAdvance (Z)V 
L507:   new com/fs/starfarer/campaign/fleet/CampaignFleet 
L510:   dup 
L511:   aload 9 
L513:   invokespecial Method com/fs/starfarer/campaign/fleet/CampaignFleet <init> (Lcom/fs/starfarer/campaign/Faction;)V 
L516:   astore 10 
L518:   aload 10 
L520:   aload 4 
L522:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getCurrentLocation ()Lcom/fs/starfarer/campaign/BaseLocation; 
L525:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet setContainingLocation (Lcom/fs/starfarer/api/campaign/LocationAPI;)V 
L528:   aload 10 
L530:   ldc_w +10000000000.0f 
L533:   ldc_w +99999997952.0f 
L536:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet setLocation (FF)V 
L539:   aload 4 
L541:   aload 10 
L543:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setPlayerFleet (Lcom/fs/starfarer/api/campaign/CampaignFleetAPI;)V 
L546:   aload_0 
L547:   invokevirtual Method com/fs/starfarer/campaign/save/return getScriptsBeforeTimePass ()Ljava/util/List; 
L550:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L555:   astore 12 
L557:   goto L579 

        .stack full 
            locals Object com/fs/starfarer/campaign/save/return Object com/fs/starfarer/campaign/CampaignState Integer Object com/fs/starfarer/campaign/save/B Object com/fs/starfarer/campaign/CampaignEngine Object com/fs/starfarer/api/campaign/SectorProcGenPlugin Object com/fs/starfarer/api/campaign/SectorGeneratorPlugin Object com/fs/starfarer/loading/P Integer Object com/fs/starfarer/campaign/Faction Object com/fs/starfarer/campaign/fleet/CampaignFleet Top Object java/util/Iterator 
            stack 
        .end stack 
L560:   aload 12 
L562:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L567:   checkcast com/fs/starfarer/api/Script 
L570:   astore 11 
L572:   aload 11 
L574:   invokeinterface InterfaceMethod com/fs/starfarer/api/Script run ()V 1 

        .stack same 
L579:   aload 12 
L581:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L586:   ifne L560 
L589:   iload 8 
L591:   ifeq L784 
L594:   fconst_0 
L595:   fstore 11 
L597:   goto L703 

        .stack full 
            locals Object com/fs/starfarer/campaign/save/return Object com/fs/starfarer/campaign/CampaignState Integer Object com/fs/starfarer/campaign/save/B Object com/fs/starfarer/campaign/CampaignEngine Object com/fs/starfarer/api/campaign/SectorProcGenPlugin Object com/fs/starfarer/api/campaign/SectorGeneratorPlugin Object com/fs/starfarer/loading/P Integer Object com/fs/starfarer/campaign/Faction Object com/fs/starfarer/campaign/fleet/CampaignFleet Float 
            stack 
        .end stack 
L600:   aload_3 
L601:   aload 4 
L603:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getClock ()Lcom/fs/starfarer/campaign/CampaignClock; 
L606:   invokevirtual Method com/fs/starfarer/campaign/CampaignClock getDateString ()Ljava/lang/String; 
L609:   ldc_w +50.0f 
L612:   fload 11 
L614:   ldc_w +50.0f 
L617:   fmul 
L618:   ldc_w +120.0f 
L621:   fdiv 
L622:   fadd 
L623:   invokevirtual Method com/fs/starfarer/campaign/save/B o00000 (Ljava/lang/String;F)V 
L626:   iconst_0 
L627:   istore 12 
L629:   goto L691 

        .stack append Integer 
L632:   iconst_1 
L633:   invokestatic Method com/fs/starfarer/D/M o00000 (Z)V 
L636:   iconst_1 
L637:   invokestatic Method com/fs/starfarer/D/M new (Z)V 
L640:   aload 4 
L642:   ldc_w +2.5f 
L645:   new com/fs/starfarer/util/A/new 
L648:   dup 
L649:   invokespecial Method com/fs/starfarer/util/A/new <init> ()V 
L652:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine advance (FLcom/fs/starfarer/util/A/new;)V 
L655:   iconst_0 
L656:   istore 13 
L658:   goto L678 

        .stack append Integer 
L661:   aload 4 
L663:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getEconomy ()Lcom/fs/starfarer/campaign/econ/Economy; 
L666:   invokevirtual Method com/fs/starfarer/campaign/econ/Economy getStepper ()Lcom/fs/starfarer/campaign/econ/reach/ReachEconomyStepper; 
L669:   ldc_w +0.0016666667070239782f 
L672:   invokevirtual Method com/fs/starfarer/campaign/econ/reach/ReachEconomyStepper nextFrame (F)V 
L675:   iinc 13 1 

        .stack same 
L678:   iload 13 
L680:   i2f 
L681:   ldc_w +150.0f 
L684:   fcmpg 
L685:   iflt L661 
L688:   iinc 12 1 

        .stack chop 1 
L691:   iload 12 
L693:   iconst_2 
L694:   if_icmplt L632 
L697:   fload 11 
L699:   fconst_1 
L700:   fadd 
L701:   fstore 11 

        .stack chop 1 
L703:   fload 11 
L705:   ldc_w +120.0f 
L708:   fcmpg 
L709:   iflt L600 
L712:   iconst_0 
L713:   istore 11 
L715:   goto L777 

        .stack full 
            locals Object com/fs/starfarer/campaign/save/return Object com/fs/starfarer/campaign/CampaignState Integer Object com/fs/starfarer/campaign/save/B Object com/fs/starfarer/campaign/CampaignEngine Object com/fs/starfarer/api/campaign/SectorProcGenPlugin Object [c247] Object com/fs/starfarer/loading/P Integer Object com/fs/starfarer/campaign/Faction Object com/fs/starfarer/campaign/fleet/CampaignFleet Integer 
            stack 
        .end stack 
L718:   iconst_1 
L719:   invokestatic Method com/fs/starfarer/D/M o00000 (Z)V 
L722:   iconst_1 
L723:   invokestatic Method com/fs/starfarer/D/M new (Z)V 
L726:   aload 4 
L728:   ldc_w +0.06666667014360428f 
L731:   new com/fs/starfarer/util/A/new 
L734:   dup 
L735:   invokespecial Method com/fs/starfarer/util/A/new <init> ()V 
L738:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine advance (FLcom/fs/starfarer/util/A/new;)V 
L741:   iconst_0 
L742:   istore 12 
L744:   goto L764 

        .stack append Integer 
L747:   aload 4 
L749:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getEconomy ()Lcom/fs/starfarer/campaign/econ/Economy; 
L752:   invokevirtual Method com/fs/starfarer/campaign/econ/Economy getStepper ()Lcom/fs/starfarer/campaign/econ/reach/ReachEconomyStepper; 
L755:   ldc_w +0.0016666667070239782f 
L758:   invokevirtual Method com/fs/starfarer/campaign/econ/reach/ReachEconomyStepper nextFrame (F)V 
L761:   iinc 12 1 

        .stack same 
L764:   iload 12 
L766:   i2f 
L767:   ldc_w +4.0f 
L770:   fcmpg 
L771:   iflt L747 
L774:   iinc 11 1 

        .stack chop 1 
L777:   iload 11 
L779:   bipush 30 
L781:   if_icmplt L718 

        .stack chop 1 
L784:   aload 4 
L786:   iconst_0 
L787:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setInFastAdvance (Z)V 
L790:   aload 4 
L792:   iconst_0 
L793:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setInNewGameAdvance (Z)V 
L796:   aload 4 
L798:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getCurrentLocation ()Lcom/fs/starfarer/campaign/BaseLocation; 
L801:   astore 11 
L803:   new com/fs/starfarer/campaign/fleet/CampaignFleet 
L806:   dup 
L807:   aload 9 
L809:   invokespecial Method com/fs/starfarer/campaign/fleet/CampaignFleet <init> (Lcom/fs/starfarer/campaign/Faction;)V 
L812:   astore 12 
L814:   aload 12 
L816:   aload 4 
L818:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerPerson ()Lcom/fs/starfarer/api/characters/PersonAPI; 
L821:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet setCommander (Lcom/fs/starfarer/api/characters/PersonAPI;)V 
L824:   aload 12 
L826:   ldc_w 'Player Fleet' 
L829:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet setName (Ljava/lang/String;)V 
L832:   aconst_null 
L833:   astore 13 
L835:   aload_0 
L836:   invokevirtual Method com/fs/starfarer/campaign/save/return getAdditionalShips ()Ljava/util/List; 
L839:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L844:   astore 15 
L846:   goto L897 

        .stack full 
            locals Object com/fs/starfarer/campaign/save/return Object com/fs/starfarer/campaign/CampaignState Integer Object com/fs/starfarer/campaign/save/B Object com/fs/starfarer/campaign/CampaignEngine Object com/fs/starfarer/api/campaign/SectorProcGenPlugin Object [c247] Object com/fs/starfarer/loading/P Integer Object com/fs/starfarer/campaign/Faction Object com/fs/starfarer/campaign/fleet/CampaignFleet Object com/fs/starfarer/api/campaign/LocationAPI Object com/fs/starfarer/campaign/fleet/CampaignFleet Object com/fs/starfarer/campaign/fleet/FleetMember Top Object java/util/Iterator 
            stack 
        .end stack 
L849:   aload 15 
L851:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L856:   checkcast com/fs/starfarer/loading/FleetCreationSpec$FleetMemberPick 
L859:   astore 14 
L861:   new com/fs/starfarer/campaign/fleet/FleetMember 
L864:   dup 
L865:   iconst_0 
L866:   aload 14 
L868:   getfield Field com/fs/starfarer/loading/FleetCreationSpec$FleetMemberPick specId Ljava/lang/String; 
L871:   aload 14 
L873:   getfield Field com/fs/starfarer/loading/FleetCreationSpec$FleetMemberPick type Lcom/fs/starfarer/api/fleet/FleetMemberType; 
L876:   invokespecial Method com/fs/starfarer/campaign/fleet/FleetMember <init> (ILjava/lang/String;Lcom/fs/starfarer/api/fleet/FleetMemberType;)V 
L879:   astore 16 
L881:   aload 12 
L883:   aload 16 
L885:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet addFleetMember (Lcom/fs/starfarer/api/fleet/FleetMemberAPI;)V 
L888:   aload 13 
L890:   ifnonnull L897 
L893:   aload 16 
L895:   astore 13 

        .stack same 
L897:   aload 15 
L899:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L904:   ifne L849 
L907:   aload 12 
L909:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getFleetData ()Lcom/fs/starfarer/campaign/fleet/FleetData; 
L912:   aload_0 
L913:   invokevirtual Method com/fs/starfarer/campaign/save/return getStartingCargo ()Lcom/fs/starfarer/api/campaign/CargoAPI; 
L916:   checkcast com/fs/starfarer/campaign/fleet/CargoData 
L919:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetData setCargo (Lcom/fs/starfarer/campaign/fleet/CargoData;)V 
L922:   aload_0 
L923:   invokevirtual Method com/fs/starfarer/campaign/save/return resetStartingCargo ()V 
L926:   aload 12 
L928:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getAccidentManager ()Lcom/fs/starfarer/campaign/accidents/AccidentManager; 
L931:   invokevirtual Method com/fs/starfarer/campaign/accidents/AccidentManager readResolve ()Ljava/lang/Object; 
L934:   pop 
L935:   aload 12 
L937:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getFleetData ()Lcom/fs/starfarer/campaign/fleet/FleetData; 
L940:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetData syncIfNeeded ()V 
L943:   aload 12 
L945:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getCargo ()Lcom/fs/starfarer/campaign/fleet/CargoData; 
L948:   invokevirtual Method com/fs/starfarer/campaign/fleet/CargoData sort ()V 
L951:   aload 13 
L953:   iconst_1 
L954:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember setFlagship (Z)V 
L957:   aload 11 
L959:   aconst_null 
L960:   aload_0 
L961:   invokevirtual Method com/fs/starfarer/campaign/save/return getStartingCoordinates ()Lorg/lwjgl/util/vector/Vector2f; 
L964:   getfield Field org/lwjgl/util/vector/Vector2f x F 
L967:   aload_0 
L968:   invokevirtual Method com/fs/starfarer/campaign/save/return getStartingCoordinates ()Lorg/lwjgl/util/vector/Vector2f; 
L971:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L974:   aload 12 
L976:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/LocationAPI spawnFleet (Lcom/fs/starfarer/api/campaign/SectorEntityToken;FFLcom/fs/starfarer/api/campaign/CampaignFleetAPI;)V 5 
L981:   aload 12 
L983:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getFlagship ()Lcom/fs/starfarer/campaign/fleet/FleetMember; 
L986:   aload 4 
L988:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getCharacterData ()Lcom/fs/starfarer/campaign/PlayerCharacterData; 
L991:   invokevirtual Method com/fs/starfarer/campaign/PlayerCharacterData getPerson ()Lcom/fs/starfarer/rpg/Person; 
L994:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember setCaptain (Lcom/fs/starfarer/api/characters/PersonAPI;)V 
L997:   aload 12 
L999:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getFlagship ()Lcom/fs/starfarer/campaign/fleet/FleetMember; 
L1002:  invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember updateStats ()V 
L1005:  aload 4 
L1007:  aload 12 
L1009:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setPlayerFleet (Lcom/fs/starfarer/api/campaign/CampaignFleetAPI;)V 
L1012:  aload 12 
L1014:  invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getFleetData ()Lcom/fs/starfarer/campaign/fleet/FleetData; 
L1017:  invokevirtual Method com/fs/starfarer/campaign/fleet/FleetData setSyncNeeded ()V 
L1020:  aload 12 
L1022:  invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getFleetData ()Lcom/fs/starfarer/campaign/fleet/FleetData; 
L1025:  invokevirtual Method com/fs/starfarer/campaign/fleet/FleetData syncIfNeeded ()V 
L1028:  aload 12 
L1030:  invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getMembers ()Ljava/util/List; 
L1033:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L1038:  astore 15 
L1040:  goto L1075 

        .stack same_extended 
L1043:  aload 15 
L1045:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L1050:  checkcast com/fs/starfarer/campaign/fleet/FleetMember 
L1053:  astore 14 
L1055:  aload 14 
L1057:  invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getRepairTracker ()Lcom/fs/starfarer/campaign/fleet/RepairTracker; 
L1060:  invokevirtual Method com/fs/starfarer/campaign/fleet/RepairTracker getMaxCR ()F 
L1063:  fstore 16 
L1065:  aload 14 
L1067:  invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getRepairTracker ()Lcom/fs/starfarer/campaign/fleet/RepairTracker; 
L1070:  fload 16 
L1072:  invokevirtual Method com/fs/starfarer/campaign/fleet/RepairTracker setCR (F)V 

        .stack same 
L1075:  aload 15 
L1077:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L1082:  ifne L1043 
L1085:  aload 12 
L1087:  fconst_0 
L1088:  invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet setNoEngaging (F)V 
L1091:  ldc_w +2000.0f 
L1094:  invokestatic Method [c1] o00000 (F)V 
L1097:  new java/util/ArrayList 
L1100:  dup 
L1101:  invokespecial Method java/util/ArrayList <init> ()V 
L1104:  astore 14 
L1106:  ldc_w Class com/fs/starfarer/loading/specs/oOOO 
L1109:  invokestatic Method com/fs/starfarer/loading/SpecStore 'Ô00000' (Ljava/lang/Class;)Ljava/util/Collection; 
L1112:  invokeinterface InterfaceMethod java/util/Collection iterator ()Ljava/util/Iterator; 1 
L1117:  astore 16 
L1119:  goto L1165 

        .stack full 
            locals Object com/fs/starfarer/campaign/save/return Object com/fs/starfarer/campaign/CampaignState Integer Object com/fs/starfarer/campaign/save/B Object com/fs/starfarer/campaign/CampaignEngine Object com/fs/starfarer/api/campaign/SectorProcGenPlugin Object [c247] Object com/fs/starfarer/loading/P Integer Object com/fs/starfarer/campaign/Faction Object com/fs/starfarer/campaign/fleet/CampaignFleet Object com/fs/starfarer/api/campaign/LocationAPI Object com/fs/starfarer/campaign/fleet/CampaignFleet Object com/fs/starfarer/campaign/fleet/FleetMember Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L1122:  aload 16 
L1124:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L1129:  checkcast java/lang/String 
L1132:  astore 15 
L1134:  ldc_w Class com/fs/starfarer/loading/specs/oOOO 
L1137:  aload 15 
L1139:  invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object; 
L1142:  checkcast com/fs/starfarer/loading/specs/oOOO 
L1145:  astore 17 
L1147:  aload 17 
L1149:  invokevirtual Method com/fs/starfarer/loading/specs/oOOO isUnlockedAtStart ()Z 
L1152:  ifeq L1165 
L1155:  aload 14 
L1157:  aload 17 
L1159:  invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L1164:  pop 

        .stack same 
L1165:  aload 16 
L1167:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L1172:  ifne L1122 
L1175:  aload 14 
L1177:  new com/fs/starfarer/campaign/save/CampaignGameManager$3 
L1180:  dup 
L1181:  invokespecial Method com/fs/starfarer/campaign/save/CampaignGameManager$3 <init> ()V 
L1184:  invokestatic Method java/util/Collections sort (Ljava/util/List;Ljava/util/Comparator;)V 
L1187:  iconst_0 
L1188:  istore 15 
L1190:  aload 4 
L1192:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getUIData ()Lcom/fs/starfarer/campaign/CampaignUIPersistentData; 
L1195:  invokevirtual Method com/fs/starfarer/campaign/CampaignUIPersistentData getAbilitySlots ()Lcom/fs/starfarer/campaign/CampaignUIPersistentData$AbilitySlots; 
L1198:  astore 16 
L1200:  aload 14 
L1202:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L1207:  astore 18 
L1209:  goto L1310 

        .stack full 
            locals Object com/fs/starfarer/campaign/save/return Object com/fs/starfarer/campaign/CampaignState Integer Object com/fs/starfarer/campaign/save/B Object com/fs/starfarer/campaign/CampaignEngine Object com/fs/starfarer/api/campaign/SectorProcGenPlugin Object [c247] Object com/fs/starfarer/loading/P Integer Object com/fs/starfarer/campaign/Faction Object com/fs/starfarer/campaign/fleet/CampaignFleet Object com/fs/starfarer/api/campaign/LocationAPI Object com/fs/starfarer/campaign/fleet/CampaignFleet Object com/fs/starfarer/campaign/fleet/FleetMember Object java/util/List Integer Object com/fs/starfarer/campaign/CampaignUIPersistentData$AbilitySlots Top Object java/util/Iterator 
            stack 
        .end stack 
L1212:  aload 18 
L1214:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L1219:  checkcast com/fs/starfarer/loading/specs/oOOO 
L1222:  astore 17 
L1224:  aload 4 
L1226:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getCharacterData ()Lcom/fs/starfarer/campaign/PlayerCharacterData; 
L1229:  aload 17 
L1231:  invokevirtual Method com/fs/starfarer/loading/specs/oOOO getId ()Ljava/lang/String; 
L1234:  invokevirtual Method com/fs/starfarer/campaign/PlayerCharacterData addAbility (Ljava/lang/String;)V 
L1237:  iload 15 
L1239:  bipush 9 
L1241:  if_icmpne L1247 
L1244:  iinc 15 1 

        .stack full 
            locals Object com/fs/starfarer/campaign/save/return Object com/fs/starfarer/campaign/CampaignState Integer Object com/fs/starfarer/campaign/save/B Object com/fs/starfarer/campaign/CampaignEngine Object com/fs/starfarer/api/campaign/SectorProcGenPlugin Object [c247] Object com/fs/starfarer/loading/P Integer Object com/fs/starfarer/campaign/Faction Object com/fs/starfarer/campaign/fleet/CampaignFleet Object com/fs/starfarer/api/campaign/LocationAPI Object com/fs/starfarer/campaign/fleet/CampaignFleet Object com/fs/starfarer/campaign/fleet/FleetMember Object java/util/List Integer Object com/fs/starfarer/campaign/CampaignUIPersistentData$AbilitySlots Object com/fs/starfarer/loading/specs/oOOO Object java/util/Iterator 
            stack 
        .end stack 
L1247:  ldc_w 'distress_call' 
L1250:  aload 17 
L1252:  invokevirtual Method com/fs/starfarer/loading/specs/oOOO getId ()Ljava/lang/String; 
L1255:  invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L1258:  ifeq L1280 
L1261:  aload 16 
L1263:  invokevirtual Method com/fs/starfarer/campaign/CampaignUIPersistentData$AbilitySlots getCurrSlots ()[Lcom/fs/starfarer/campaign/CampaignUIPersistentData$AbilitySlot; 
L1266:  bipush 9 
L1268:  aaload 
L1269:  aload 17 
L1271:  invokevirtual Method com/fs/starfarer/loading/specs/oOOO getId ()Ljava/lang/String; 
L1274:  invokevirtual Method com/fs/starfarer/campaign/CampaignUIPersistentData$AbilitySlot setAbilityId (Ljava/lang/String;)V 
L1277:  goto L1307 

        .stack same 
L1280:  iload 15 
L1282:  aload 16 
L1284:  invokevirtual Method com/fs/starfarer/campaign/CampaignUIPersistentData$AbilitySlots getCurrSlots ()[Lcom/fs/starfarer/campaign/CampaignUIPersistentData$AbilitySlot; 
L1287:  arraylength 
L1288:  if_icmpge L1307 
L1291:  aload 16 
L1293:  invokevirtual Method com/fs/starfarer/campaign/CampaignUIPersistentData$AbilitySlots getCurrSlots ()[Lcom/fs/starfarer/campaign/CampaignUIPersistentData$AbilitySlot; 
L1296:  iload 15 
L1298:  aaload 
L1299:  aload 17 
L1301:  invokevirtual Method com/fs/starfarer/loading/specs/oOOO getId ()Ljava/lang/String; 
L1304:  invokevirtual Method com/fs/starfarer/campaign/CampaignUIPersistentData$AbilitySlot setAbilityId (Ljava/lang/String;)V 

        .stack same 
L1307:  iinc 15 1 

        .stack full 
            locals Object com/fs/starfarer/campaign/save/return Object com/fs/starfarer/campaign/CampaignState Integer Object com/fs/starfarer/campaign/save/B Object com/fs/starfarer/campaign/CampaignEngine Object com/fs/starfarer/api/campaign/SectorProcGenPlugin Object [c247] Object com/fs/starfarer/loading/P Integer Object com/fs/starfarer/campaign/Faction Object com/fs/starfarer/campaign/fleet/CampaignFleet Object com/fs/starfarer/api/campaign/LocationAPI Object com/fs/starfarer/campaign/fleet/CampaignFleet Object com/fs/starfarer/campaign/fleet/FleetMember Object java/util/List Integer Object com/fs/starfarer/campaign/CampaignUIPersistentData$AbilitySlots Top Object java/util/Iterator 
            stack 
        .end stack 
L1310:  aload 18 
L1312:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L1317:  ifne L1212 
L1320:  invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L1323:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L1326:  ldc_w 'transponder' 
L1329:  invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getAbility (Ljava/lang/String;)Lcom/fs/starfarer/api/characters/AbilityPlugin; 
L1332:  astore 17 
L1334:  aload 17 
L1336:  ifnull L1346 
L1339:  aload 17 
L1341:  invokeinterface InterfaceMethod com/fs/starfarer/api/characters/AbilityPlugin activate ()V 1 

        .stack full 
            locals Object com/fs/starfarer/campaign/save/return Object com/fs/starfarer/campaign/CampaignState Integer Object com/fs/starfarer/campaign/save/B Object com/fs/starfarer/campaign/CampaignEngine Object com/fs/starfarer/api/campaign/SectorProcGenPlugin Object [c247] Object com/fs/starfarer/loading/P Integer Object com/fs/starfarer/campaign/Faction Object com/fs/starfarer/campaign/fleet/CampaignFleet Object com/fs/starfarer/api/campaign/LocationAPI Object com/fs/starfarer/campaign/fleet/CampaignFleet Object com/fs/starfarer/campaign/fleet/FleetMember Object java/util/List Integer Object com/fs/starfarer/campaign/CampaignUIPersistentData$AbilitySlots Object com/fs/starfarer/api/characters/AbilityPlugin 
            stack 
        .end stack 
L1346:  iload_2 
L1347:  ifeq L1355 
L1350:  aload 4 
L1352:  invokestatic Method [c1] o00000 (Lcom/fs/starfarer/campaign/CampaignEngine;)V 

        .stack same 
L1355:  aload_1 
L1356:  invokevirtual Method com/fs/starfarer/campaign/CampaignState clearMessages ()V 
L1359:  aload_1 
L1360:  invokevirtual Method com/fs/starfarer/campaign/CampaignState resetViewOffset ()V 
L1363:  aload_0 
L1364:  invokevirtual Method com/fs/starfarer/campaign/save/return getScripts ()Ljava/util/List; 
L1367:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L1372:  astore 19 
L1374:  goto L1396 

        .stack full 
            locals Object com/fs/starfarer/campaign/save/return Object com/fs/starfarer/campaign/CampaignState Integer Object com/fs/starfarer/campaign/save/B Object com/fs/starfarer/campaign/CampaignEngine Object com/fs/starfarer/api/campaign/SectorProcGenPlugin Object [c247] Object com/fs/starfarer/loading/P Integer Object com/fs/starfarer/campaign/Faction Object com/fs/starfarer/campaign/fleet/CampaignFleet Object com/fs/starfarer/api/campaign/LocationAPI Object com/fs/starfarer/campaign/fleet/CampaignFleet Object com/fs/starfarer/campaign/fleet/FleetMember Object java/util/List Integer Object com/fs/starfarer/campaign/CampaignUIPersistentData$AbilitySlots Object com/fs/starfarer/api/characters/AbilityPlugin Top Object java/util/Iterator 
            stack 
        .end stack 
L1377:  aload 19 
L1379:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L1384:  checkcast com/fs/starfarer/api/Script 
L1387:  astore 18 
L1389:  aload 18 
L1391:  invokeinterface InterfaceMethod com/fs/starfarer/api/Script run ()V 1 

        .stack same 
L1396:  aload 19 
L1398:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L1403:  ifne L1377 
L1406:  invokestatic Method com/fs/starfarer/launcher/ModManager getInstance ()Lcom/fs/starfarer/launcher/ModManager; 
L1409:  invokevirtual Method com/fs/starfarer/launcher/ModManager getEnabledMods ()Ljava/util/List; 
L1412:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L1417:  astore 19 
L1419:  goto L1447 

        .stack same 
L1422:  aload 19 
L1424:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L1429:  checkcast com/fs/starfarer/launcher/ModManager$ModSpec 
L1432:  astore 18 
L1434:  aload 4 
L1436:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getModAndPluginData ()Lcom/fs/starfarer/campaign/ModAndPluginData; 
L1439:  aload 18 
L1441:  invokevirtual Method com/fs/starfarer/launcher/ModManager$ModSpec getId ()Ljava/lang/String; 
L1444:  invokevirtual Method com/fs/starfarer/campaign/ModAndPluginData notifyRunningWithMod (Ljava/lang/String;)V 

        .stack same 
L1447:  aload 19 
L1449:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L1454:  ifne L1422 
L1457:  aload 4 
L1459:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getModAndPluginData ()Lcom/fs/starfarer/campaign/ModAndPluginData; 
L1462:  invokevirtual Method com/fs/starfarer/campaign/ModAndPluginData finishNotify ()V 
L1465:  invokestatic Method com/fs/starfarer/launcher/ModManager getInstance ()Lcom/fs/starfarer/launcher/ModManager; 
L1468:  invokevirtual Method com/fs/starfarer/launcher/ModManager getEnabledModPlugins ()Ljava/util/List; 
L1471:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L1476:  astore 19 
L1478:  goto L1500 

        .stack same 
L1481:  aload 19 
L1483:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L1488:  checkcast com/fs/starfarer/api/ModPlugin 
L1491:  astore 18 
L1493:  aload 18 
L1495:  invokeinterface InterfaceMethod com/fs/starfarer/api/ModPlugin onNewGameAfterTimePass ()V 1 

        .stack same 
L1500:  aload 19 
L1502:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L1507:  ifne L1481 
L1510:  invokestatic Method com/fs/starfarer/launcher/ModManager getInstance ()Lcom/fs/starfarer/launcher/ModManager; 
L1513:  invokevirtual Method com/fs/starfarer/launcher/ModManager getEnabledModPlugins ()Ljava/util/List; 
L1516:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L1521:  astore 19 
L1523:  goto L1546 

        .stack same 
L1526:  aload 19 
L1528:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L1533:  checkcast com/fs/starfarer/api/ModPlugin 
L1536:  astore 18 
L1538:  aload 18 
L1540:  iconst_1 
L1541:  invokeinterface InterfaceMethod com/fs/starfarer/api/ModPlugin onGameLoad (Z)V 2 

        .stack same 
L1546:  aload 19 
L1548:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L1553:  ifne L1526 
L1556:  aload_3 
L1557:  ldc_w 'Finished!' 
L1560:  ldc_w +100.0f 
L1563:  invokevirtual Method com/fs/starfarer/campaign/save/B o00000 (Ljava/lang/String;F)V 
L1566:  aload_1 
L1567:  invokestatic Method [c1] o00000 (Lcom/fs/starfarer/campaign/CampaignEngine$o;)Ljava/lang/String; 
L1570:  astore 18 
L1572:  invokestatic Method com/fs/starfarer/D/return return ()V 
L1575:  iconst_0 
L1576:  putstatic Field [c1] 'ø00000' Z 
L1579:  aload 18 
L1581:  areturn 
L1582:  
    .end code 
.end method 

.method public static o00000 : (F)V 
    .code stack 3 locals 7 
L0:     invokestatic Method com/fs/starfarer/api/Global getSector ()Lcom/fs/starfarer/api/campaign/SectorAPI; 
L3:     invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorAPI getPlayerFleet ()Lcom/fs/starfarer/api/campaign/CampaignFleetAPI; 1 
L8:     astore_1 
L9:     aload_1 
L10:    ifnonnull L14 
L13:    return 

        .stack append Object com/fs/starfarer/api/campaign/CampaignFleetAPI 
L14:    aload_1 
L15:    invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getContainingLocation ()Lcom/fs/starfarer/api/campaign/LocationAPI; 1 
L20:    invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/LocationAPI getFleets ()Ljava/util/List; 1 
L25:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L30:    astore_3 
L31:    goto L174 

        .stack full 
            locals Float Object com/fs/starfarer/api/campaign/CampaignFleetAPI Top Object java/util/Iterator 
            stack 
        .end stack 
L34:    aload_3 
L35:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L40:    checkcast com/fs/starfarer/api/campaign/CampaignFleetAPI 
L43:    astore_2 
L44:    aload_1 
L45:    aload_2 
L46:    if_acmpne L52 
L49:    goto L174 

        .stack full 
            locals Float Object com/fs/starfarer/api/campaign/CampaignFleetAPI Object com/fs/starfarer/api/campaign/CampaignFleetAPI Object java/util/Iterator 
            stack 
        .end stack 
L52:    aload_2 
L53:    invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getBattle ()Lcom/fs/starfarer/api/campaign/BattleAPI; 1 
L58:    ifnull L64 
L61:    goto L174 

        .stack same 
L64:    aload_2 
L65:    invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getOrbit ()Lcom/fs/starfarer/api/campaign/OrbitAPI; 1 
L70:    ifnull L76 
L73:    goto L174 

        .stack same 
L76:    aload_2 
L77:    aload_1 
L78:    invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI isHostileTo (Lcom/fs/starfarer/api/campaign/SectorEntityToken;)Z 2 
L83:    ifne L89 
L86:    goto L174 

        .stack same 
L89:    aload_1 
L90:    invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L95:    aload_2 
L96:    invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L101:   invokestatic Method com/fs/starfarer/api/util/Misc getDistance (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)F 
L104:   fstore 4 
L106:   fload 4 
L108:   fload_0 
L109:   fcmpg 
L110:   ifge L174 
L113:   aload_1 
L114:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L119:   aload_2 
L120:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L125:   invokestatic Method com/fs/starfarer/api/util/Misc getAngleInDegrees (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)F 
L128:   fstore 5 
L130:   fload 5 
L132:   invokestatic Method com/fs/starfarer/api/util/Misc getUnitVectorAtDegreeAngle (F)Lorg/lwjgl/util/vector/Vector2f; 
L135:   astore 6 
L137:   aload 6 
L139:   fload_0 
L140:   invokevirtual Method org/lwjgl/util/vector/Vector2f scale (F)Lorg/lwjgl/util/vector/Vector; 
L143:   pop 
L144:   aload 6 
L146:   aload_2 
L147:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getLocation ()Lorg/lwjgl/util/vector/Vector2f; 1 
L152:   aload 6 
L154:   invokestatic Method org/lwjgl/util/vector/Vector2f add (Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;Lorg/lwjgl/util/vector/Vector2f;)Lorg/lwjgl/util/vector/Vector2f; 
L157:   pop 
L158:   aload_2 
L159:   aload 6 
L161:   getfield Field org/lwjgl/util/vector/Vector2f x F 
L164:   aload 6 
L166:   getfield Field org/lwjgl/util/vector/Vector2f y F 
L169:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI setLocation (FF)V 3 

        .stack full 
            locals Float Object com/fs/starfarer/api/campaign/CampaignFleetAPI Top Object java/util/Iterator 
            stack 
        .end stack 
L174:   aload_3 
L175:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L180:   ifne L34 
L183:   return 
L184:   
    .end code 
.end method 

.method private static o00000 : (Lcom/fs/starfarer/campaign/CampaignEngine;)V 
    .code stack 6 locals 6 
L0:     invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L3:     invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L6:     astore_1 
L7:     iconst_0 
L8:     istore_2 
L9:     ldc_w Class com/fs/starfarer/loading/specs/O00O 
L12:    invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/lang/Class;)Ljava/util/Collection; 
L15:    invokeinterface InterfaceMethod java/util/Collection iterator ()Ljava/util/Iterator; 1 
L20:    astore 4 
L22:    goto L74 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignEngine Object com/fs/starfarer/campaign/fleet/CampaignFleet Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L25:    aload 4 
L27:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L32:    astore_3 
L33:    aload_3 
L34:    checkcast com/fs/starfarer/loading/specs/O00O 
L37:    astore 5 
L39:    aload 5 
L41:    invokevirtual Method com/fs/starfarer/loading/specs/O00O isHidden ()Z 
L44:    ifeq L50 
L47:    goto L74 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignEngine Object com/fs/starfarer/campaign/fleet/CampaignFleet Integer Object java/lang/Object Object java/util/Iterator Object com/fs/starfarer/loading/specs/O00O 
            stack 
        .end stack 
L50:    aload_1 
L51:    invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getCargo ()Lcom/fs/starfarer/campaign/fleet/CargoData; 
L54:    aload 5 
L56:    invokevirtual Method com/fs/starfarer/loading/specs/O00O getId ()Ljava/lang/String; 
L59:    iconst_1 
L60:    invokevirtual Method com/fs/starfarer/campaign/fleet/CargoData addHullmods (Ljava/lang/String;I)V 
L63:    iinc 2 1 
L66:    iload_2 
L67:    iconst_5 
L68:    if_icmplt L74 
L71:    goto L84 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignEngine Object com/fs/starfarer/campaign/fleet/CampaignFleet Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L74:    aload 4 
L76:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L81:    ifne L25 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignEngine Object com/fs/starfarer/campaign/fleet/CampaignFleet Integer 
            stack 
        .end stack 
L84:    iconst_0 
L85:    istore_2 
L86:    invokestatic Method com/fs/starfarer/loading/K 'Ò00000' ()Ljava/util/List; 
L89:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L94:    astore 4 
L96:    goto L133 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignEngine Object com/fs/starfarer/campaign/fleet/CampaignFleet Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L99:    aload 4 
L101:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L106:   checkcast java/lang/String 
L109:   astore_3 
L110:   aload_1 
L111:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getCargo ()Lcom/fs/starfarer/campaign/fleet/CargoData; 
L114:   getstatic Field com/fs/starfarer/api/campaign/CargoAPI$CargoItemType FIGHTER_CHIP Lcom/fs/starfarer/api/campaign/CargoAPI$CargoItemType; 
L117:   aload_3 
L118:   fconst_1 
L119:   invokevirtual Method com/fs/starfarer/campaign/fleet/CargoData addItems (Lcom/fs/starfarer/api/campaign/CargoAPI$CargoItemType;Ljava/lang/Object;F)V 
L122:   iinc 2 1 
L125:   iload_2 
L126:   iconst_5 
L127:   if_icmplt L133 
L130:   goto L143 

        .stack same 
L133:   aload 4 
L135:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L140:   ifne L99 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignEngine Object com/fs/starfarer/campaign/fleet/CampaignFleet Integer 
            stack 
        .end stack 
L143:   aload_1 
L144:   new com/fs/starfarer/campaign/fleet/FleetMember 
L147:   dup 
L148:   iconst_0 
L149:   ldc_w 'buffalo_Standard' 
L152:   getstatic Field com/fs/starfarer/api/fleet/FleetMemberType SHIP Lcom/fs/starfarer/api/fleet/FleetMemberType; 
L155:   invokespecial Method com/fs/starfarer/campaign/fleet/FleetMember <init> (ILjava/lang/String;Lcom/fs/starfarer/api/fleet/FleetMemberType;)V 
L158:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet addFleetMember (Lcom/fs/starfarer/api/fleet/FleetMemberAPI;)V 
L161:   aload_1 
L162:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getCargo ()Lcom/fs/starfarer/campaign/fleet/CargoData; 
L165:   getstatic Field com/fs/starfarer/api/campaign/CargoAPI$CargoItemType RESOURCES Lcom/fs/starfarer/api/campaign/CargoAPI$CargoItemType; 
L168:   ldc_w 'crew' 
L171:   ldc_w +10.0f 
L174:   invokevirtual Method com/fs/starfarer/campaign/fleet/CargoData addItems (Lcom/fs/starfarer/api/campaign/CargoAPI$CargoItemType;Ljava/lang/Object;F)V 
L177:   aload_1 
L178:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getCargo ()Lcom/fs/starfarer/campaign/fleet/CargoData; 
L181:   getstatic Field com/fs/starfarer/api/campaign/CargoAPI$CargoItemType RESOURCES Lcom/fs/starfarer/api/campaign/CargoAPI$CargoItemType; 
L184:   ldc_w 'alpha_core' 
L187:   ldc_w +3.0f 
L190:   invokevirtual Method com/fs/starfarer/campaign/fleet/CargoData addItems (Lcom/fs/starfarer/api/campaign/CargoAPI$CargoItemType;Ljava/lang/Object;F)V 
L193:   aload_1 
L194:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getCargo ()Lcom/fs/starfarer/campaign/fleet/CargoData; 
L197:   getstatic Field com/fs/starfarer/api/campaign/CargoAPI$CargoItemType RESOURCES Lcom/fs/starfarer/api/campaign/CargoAPI$CargoItemType; 
L200:   ldc_w 'beta_core' 
L203:   ldc_w +5.0f 
L206:   invokevirtual Method com/fs/starfarer/campaign/fleet/CargoData addItems (Lcom/fs/starfarer/api/campaign/CargoAPI$CargoItemType;Ljava/lang/Object;F)V 
L209:   aload_1 
L210:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getCargo ()Lcom/fs/starfarer/campaign/fleet/CargoData; 
L213:   getstatic Field com/fs/starfarer/api/campaign/CargoAPI$CargoItemType RESOURCES Lcom/fs/starfarer/api/campaign/CargoAPI$CargoItemType; 
L216:   ldc_w 'gamma_core' 
L219:   ldc_w +10.0f 
L222:   invokevirtual Method com/fs/starfarer/campaign/fleet/CargoData addItems (Lcom/fs/starfarer/api/campaign/CargoAPI$CargoItemType;Ljava/lang/Object;F)V 
L225:   aload_1 
L226:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getCargo ()Lcom/fs/starfarer/campaign/fleet/CargoData; 
L229:   getstatic Field com/fs/starfarer/api/campaign/CargoAPI$CargoItemType RESOURCES Lcom/fs/starfarer/api/campaign/CargoAPI$CargoItemType; 
L232:   ldc_w 'survey_data_1' 
L235:   fconst_1 
L236:   invokevirtual Method com/fs/starfarer/campaign/fleet/CargoData addItems (Lcom/fs/starfarer/api/campaign/CargoAPI$CargoItemType;Ljava/lang/Object;F)V 
L239:   aload_1 
L240:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getCargo ()Lcom/fs/starfarer/campaign/fleet/CargoData; 
L243:   getstatic Field com/fs/starfarer/api/campaign/CargoAPI$CargoItemType RESOURCES Lcom/fs/starfarer/api/campaign/CargoAPI$CargoItemType; 
L246:   ldc_w 'survey_data_2' 
L249:   fconst_1 
L250:   invokevirtual Method com/fs/starfarer/campaign/fleet/CargoData addItems (Lcom/fs/starfarer/api/campaign/CargoAPI$CargoItemType;Ljava/lang/Object;F)V 
L253:   aload_1 
L254:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getCargo ()Lcom/fs/starfarer/campaign/fleet/CargoData; 
L257:   getstatic Field com/fs/starfarer/api/campaign/CargoAPI$CargoItemType RESOURCES Lcom/fs/starfarer/api/campaign/CargoAPI$CargoItemType; 
L260:   ldc_w 'survey_data_3' 
L263:   fconst_1 
L264:   invokevirtual Method com/fs/starfarer/campaign/fleet/CargoData addItems (Lcom/fs/starfarer/api/campaign/CargoAPI$CargoItemType;Ljava/lang/Object;F)V 
L267:   aload_1 
L268:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getCargo ()Lcom/fs/starfarer/campaign/fleet/CargoData; 
L271:   getstatic Field com/fs/starfarer/api/campaign/CargoAPI$CargoItemType RESOURCES Lcom/fs/starfarer/api/campaign/CargoAPI$CargoItemType; 
L274:   ldc_w 'survey_data_4' 
L277:   fconst_1 
L278:   invokevirtual Method com/fs/starfarer/campaign/fleet/CargoData addItems (Lcom/fs/starfarer/api/campaign/CargoAPI$CargoItemType;Ljava/lang/Object;F)V 
L281:   aload_1 
L282:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getCargo ()Lcom/fs/starfarer/campaign/fleet/CargoData; 
L285:   getstatic Field com/fs/starfarer/api/campaign/CargoAPI$CargoItemType RESOURCES Lcom/fs/starfarer/api/campaign/CargoAPI$CargoItemType; 
L288:   ldc_w 'survey_data_5' 
L291:   fconst_1 
L292:   invokevirtual Method com/fs/starfarer/campaign/fleet/CargoData addItems (Lcom/fs/starfarer/api/campaign/CargoAPI$CargoItemType;Ljava/lang/Object;F)V 
L295:   return 
L296:   
    .end code 
.end method 

.method public static 'Ô00000' : ()Lcom/fs/starfarer/campaign/save/SaveGameData; 
    .code stack 1 locals 0 
L0:     getstatic Field [c1] 'Ó00000' Lcom/fs/starfarer/campaign/save/SaveGameData; 
L3:     areturn 
L4:     
    .end code 
.end method 

.method public static o00000 : (Lcom/fs/starfarer/campaign/save/SaveGameData;)V 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     putstatic Field [c1] 'Ó00000' Lcom/fs/starfarer/campaign/save/SaveGameData; 
L4:     return 
L5:     
    .end code 
.end method 

.method public static o00000 : (Lcom/fs/starfarer/campaign/CampaignEngine$o;)Ljava/lang/String; 
    .code stack 4 locals 1 
L0:     aload_0 
L1:     lconst_0 
L2:     iconst_0 
L3:     invokestatic Method [c1] o00000 (Lcom/fs/starfarer/campaign/CampaignEngine$o;JZ)Ljava/lang/String; 
L6:     areturn 
L7:     
    .end code 
.end method 

.method public static CampaignGameManager_vanilla_saveGame : (Lcom/fs/starfarer/campaign/CampaignEngine$o;JZ)Ljava/lang/String;
    .code stack 8 locals 30 
L0:     iconst_0 
L1:     invokestatic Method java/lang/Boolean valueOf (Z)Ljava/lang/Boolean; 
L4:     putstatic Field [c1] 'super' Ljava/lang/Boolean; 
L7:     invokestatic Method com/fs/starfarer/launcher/ooOO 'Ó00000' ()Lcom/fs/starfarer/launcher/ooOO; 
L10:    ldc_w 'canSkipTutorial' 
L13:    iconst_0 
L14:    invokevirtual Method com/fs/starfarer/launcher/ooOO new (Ljava/lang/String;Z)Z 
L17:    ifne L30 
L20:    invokestatic Method com/fs/starfarer/launcher/ooOO 'Ó00000' ()Lcom/fs/starfarer/launcher/ooOO; 
L23:    ldc_w 'canSkipTutorial' 
L26:    iconst_1 
L27:    invokevirtual Method com/fs/starfarer/launcher/ooOO o00000 (Ljava/lang/String;Z)V 

        .stack same 
L30:    invokestatic Method java/lang/System gc ()V 
L33:    aconst_null 
L34:    putstatic Field [c1] void Lcom/fs/starfarer/util/do; 
L37:    aconst_null 
L38:    astore 4 
L40:    iconst_1 
L41:    istore 5 
L43:    invokestatic Method com/fs/starfarer/launcher/ModManager getInstance ()Lcom/fs/starfarer/launcher/ModManager; 
L46:    invokevirtual Method com/fs/starfarer/launcher/ModManager getEnabledModPlugins ()Ljava/util/List; 
L49:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L54:    astore 7 
L56:    goto L78 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignEngine$o Long Integer Object com/fs/starfarer/campaign/save/SaveGameData Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L59:    aload 7 
L61:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L66:    checkcast com/fs/starfarer/api/ModPlugin 
L69:    astore 6 
L71:    aload 6 
L73:    invokeinterface InterfaceMethod com/fs/starfarer/api/ModPlugin beforeGameSave ()V 1 

        .stack same 
L78:    aload 7 
L80:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L85:    ifne L59 
L88:    new java/lang/StringBuilder 
L91:    dup 
L92:    invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'oÓ0000' ()Ljava/lang/String; 
L95:    invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L98:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L101:   ldc_w '/' 
L104:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L107:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L110:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getSaveDirName ()Ljava/lang/String; 
L113:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L116:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L119:   astore 6 
L121:   new java/io/File 
L124:   dup 
L125:   aload 6 
L127:   invokespecial Method java/io/File <init> (Ljava/lang/String;)V 
L130:   invokevirtual Method java/io/File mkdirs ()Z 
L133:   pop 
L134:   ldc_w 'compressSaveGameData' 
L137:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings class (Ljava/lang/String;)Z 
L140:   istore 7 
L142:   new java/lang/StringBuilder 
L145:   dup 
L146:   aload 6 
L148:   invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L151:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L154:   ldc_w '/campaign' 
L157:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L160:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L163:   astore 8 
L165:   iload 7 
L167:   ifeq L196 
L170:   new java/lang/StringBuilder 
L173:   dup 
L174:   aload 8 
L176:   invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L179:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L182:   ldc_w '.zip' 
L185:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L188:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L191:   astore 8 
L193:   goto L219 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignEngine$o Long Integer Object com/fs/starfarer/campaign/save/SaveGameData Integer Object java/lang/String Integer Object java/lang/String 
            stack 
        .end stack 
L196:   new java/lang/StringBuilder 
L199:   dup 
L200:   aload 8 
L202:   invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L205:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L208:   ldc_w '.xml' 
L211:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L214:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L217:   astore 8 

        .stack same 
L219:   new java/lang/StringBuilder 
L222:   dup 
L223:   aload 6 
L225:   invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L228:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L231:   ldc_w '/descriptor.xml' 
L234:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L237:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L240:   astore 9 
L242:   new java/io/File 
L245:   dup 
L246:   aload 8 
L248:   invokespecial Method java/io/File <init> (Ljava/lang/String;)V 
L251:   astore 10 
L253:   new java/io/File 
L256:   dup 
L257:   aload 9 
L259:   invokespecial Method java/io/File <init> (Ljava/lang/String;)V 
L262:   astore 11 
L264:   new java/io/File 
L267:   dup 
L268:   new java/lang/StringBuilder 
L271:   dup 
L272:   aload 8 
L274:   invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L277:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L280:   ldc_w '.inprogress' 
L283:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L286:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L289:   invokespecial Method java/io/File <init> (Ljava/lang/String;)V 
L292:   astore 12 
L294:   new java/io/File 
L297:   dup 
L298:   new java/lang/StringBuilder 
L301:   dup 
L302:   aload 9 
L304:   invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L307:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L310:   ldc_w '.inprogress' 
L313:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L316:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L319:   invokespecial Method java/io/File <init> (Ljava/lang/String;)V 
L322:   astore 13 
L324:   new java/io/File 
L327:   dup 
L328:   new java/lang/StringBuilder 
L331:   dup 
L332:   aload 8 
L334:   invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L337:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L340:   ldc_w '.bak' 
L343:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L346:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L349:   invokespecial Method java/io/File <init> (Ljava/lang/String;)V 
L352:   astore 14 
L354:   new java/io/File 
L357:   dup 
L358:   new java/lang/StringBuilder 
L361:   dup 
L362:   aload 9 
L364:   invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L367:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L370:   ldc_w '.bak' 
L373:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L376:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L379:   invokespecial Method java/io/File <init> (Ljava/lang/String;)V 
L382:   astore 15 
L384:   new java/lang/StringBuilder 
L387:   dup 
L388:   aload 9 
L390:   invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L393:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L396:   ldc_w '.inprogress' 
L399:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L402:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L405:   astore 9 
L407:   new java/lang/StringBuilder 
L410:   dup 
L411:   aload 8 
L413:   invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L416:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L419:   ldc_w '.inprogress' 
L422:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L425:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L428:   astore 8 
L430:   new java/util/ArrayList 
L433:   dup 
L434:   invokespecial Method java/util/ArrayList <init> ()V 
L437:   astore 16 
L439:   aconst_null 
L440:   astore 17 
L442:   ldc2_w 5242880L 
L445:   lstore 18 
L447:   aload 10 
L449:   invokevirtual Method java/io/File exists ()Z 
L452:   ifeq L462 
L455:   aload 10 
L457:   invokevirtual Method java/io/File length ()J 
L460:   lstore 18 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignEngine$o Long Integer Object com/fs/starfarer/campaign/save/SaveGameData Integer Object java/lang/String Integer Object java/lang/String Object java/lang/String Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/util/List Object java/lang/Thread Long 
            stack 
        .end stack 
L462:   getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L465:   new java/lang/StringBuilder 
L468:   dup 
L469:   ldc_w 'Saving to ' 
L472:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L475:   aload 6 
L477:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L480:   ldc_w '...' 
L483:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L486:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L489:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L492:   iload 5 
L494:   ifne L613 
L497:   ldc '0.6' 
L499:   invokestatic Method [c1] new (Ljava/lang/String;)Lcom/thoughtworks/xstream/XStream; 
L502:   astore 20 
L504:   new java/io/FileOutputStream 
L507:   dup 
L508:   aload 8 
L510:   invokespecial Method java/io/FileOutputStream <init> (Ljava/lang/String;)V 
L513:   astore 21 
L515:   aload 16 
L517:   aload 21 
L519:   invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L524:   pop 
L525:   new com/fs/starfarer/util/do 
L528:   dup 
L529:   aload 21 
L531:   lload 18 
L533:   fconst_0 
L534:   fconst_1 
L535:   aconst_null 
L536:   invokespecial Method com/fs/starfarer/util/do <init> (Ljava/io/OutputStream;JFFLcom/fs/starfarer/campaign/save/B;)V 
L539:   putstatic Field [c1] void Lcom/fs/starfarer/util/do; 
L542:   iload 7 
L544:   ifeq L580 
L547:   new java/util/zip/ZipOutputStream 
L550:   dup 
L551:   aload 21 
L553:   invokespecial Method java/util/zip/ZipOutputStream <init> (Ljava/io/OutputStream;)V 
L556:   astore 21 
L558:   new java/util/zip/ZipEntry 
L561:   dup 
L562:   ldc_w 'campaign.xml' 
L565:   invokespecial Method java/util/zip/ZipEntry <init> (Ljava/lang/String;)V 
L568:   astore 22 
L570:   aload 21 
L572:   checkcast java/util/zip/ZipOutputStream 
L575:   aload 22 
L577:   invokevirtual Method java/util/zip/ZipOutputStream putNextEntry (Ljava/util/zip/ZipEntry;)V 

        .stack append Object com/thoughtworks/xstream/XStream Object java/io/OutputStream 
L580:   aload 20 
L582:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L585:   aload 21 
L587:   invokevirtual Method com/thoughtworks/xstream/XStream toXML (Ljava/lang/Object;Ljava/io/OutputStream;)V 
L590:   iload 7 
L592:   ifeq L603 
L595:   aload 21 
L597:   checkcast java/util/zip/ZipOutputStream 
L600:   invokevirtual Method java/util/zip/ZipOutputStream closeEntry ()V 

        .stack same 
L603:   aload 21 
L605:   invokevirtual Method java/io/OutputStream flush ()V 
L608:   aload 21 
L610:   invokevirtual Method java/io/OutputStream close ()V 

        .stack chop 2 
L613:   ldc '0.6' 
L615:   invokestatic Method [c1] new (Ljava/lang/String;)Lcom/thoughtworks/xstream/XStream; 
L618:   astore 20 
L620:   aconst_null 
L621:   astore 21 
L623:   new com/fs/starfarer/campaign/save/SaveGameData 
L626:   dup 
L627:   invokespecial Method com/fs/starfarer/campaign/save/SaveGameData <init> ()V 
L630:   astore 4 
L632:   lload_1 
L633:   lconst_0 
L634:   lcmp 
L635:   ifeq L644 
L638:   aload 4 
L640:   lload_1 
L641:   invokevirtual Method com/fs/starfarer/campaign/save/SaveGameData setSlotCreationTimestamp (J)V 

        .stack append Object com/thoughtworks/xstream/XStream Object java/io/OutputStream 
L644:   aload 4 
L646:   ldc_w '0.98a-RC8' 
L649:   invokevirtual Method com/fs/starfarer/campaign/save/SaveGameData setGameVersion (Ljava/lang/String;)V 
L652:   aload 4 
L654:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L657:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getCharacterData ()Lcom/fs/starfarer/campaign/PlayerCharacterData; 
L660:   invokevirtual Method com/fs/starfarer/campaign/PlayerCharacterData getPerson ()Lcom/fs/starfarer/rpg/Person; 
L663:   invokevirtual Method com/fs/starfarer/rpg/Person getStats ()Lcom/fs/starfarer/campaign/CharacterStats; 
L666:   invokevirtual Method com/fs/starfarer/campaign/CharacterStats getLevel ()I 
L669:   invokevirtual Method com/fs/starfarer/campaign/save/SaveGameData setCharacterLevel (I)V 
L672:   aload 4 
L674:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L677:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getCharacterData ()Lcom/fs/starfarer/campaign/PlayerCharacterData; 
L680:   invokevirtual Method com/fs/starfarer/campaign/PlayerCharacterData getName ()Ljava/lang/String; 
L683:   invokevirtual Method com/fs/starfarer/campaign/save/SaveGameData setCharacterName (Ljava/lang/String;)V 
L686:   aload 4 
L688:   iload 7 
L690:   invokevirtual Method com/fs/starfarer/campaign/save/SaveGameData setCompressed (Z)V 
L693:   aload 4 
L695:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L698:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getClock ()Lcom/fs/starfarer/campaign/CampaignClock; 
L701:   invokevirtual Method com/fs/starfarer/campaign/save/SaveGameData setGameDate (Lcom/fs/starfarer/campaign/CampaignClock;)V 
L704:   aload 4 
L706:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L709:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getCharacterData ()Lcom/fs/starfarer/campaign/PlayerCharacterData; 
L712:   invokevirtual Method com/fs/starfarer/campaign/PlayerCharacterData getPortraitName ()Ljava/lang/String; 
L715:   invokevirtual Method com/fs/starfarer/campaign/save/SaveGameData setPortraitName (Ljava/lang/String;)V 
L718:   aload 4 
L720:   ldc '0.6' 
L722:   invokevirtual Method com/fs/starfarer/campaign/save/SaveGameData setSaveFileVersion (Ljava/lang/String;)V 
L725:   aload 4 
L727:   new java/util/Date 
L730:   dup 
L731:   invokespecial Method java/util/Date <init> ()V 
L734:   invokevirtual Method com/fs/starfarer/campaign/save/SaveGameData setSaveDate (Ljava/util/Date;)V 
L737:   aload 4 
L739:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L742:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getModAndPluginData ()Lcom/fs/starfarer/campaign/ModAndPluginData; 
L745:   invokevirtual Method com/fs/starfarer/campaign/ModAndPluginData getAllModsEverEnabled ()Ljava/util/List; 
L748:   invokevirtual Method com/fs/starfarer/campaign/save/SaveGameData setAllModsEverEnabled (Ljava/util/List;)V 
L751:   aload 4 
L753:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L756:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getModAndPluginData ()Lcom/fs/starfarer/campaign/ModAndPluginData; 
L759:   invokevirtual Method com/fs/starfarer/campaign/ModAndPluginData getEnabledMods ()Ljava/util/List; 
L762:   invokevirtual Method com/fs/starfarer/campaign/save/SaveGameData setEnabledMods (Ljava/util/List;)V 
L765:   aload 4 
L767:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L770:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine isIronMode ()Z 
L773:   invokevirtual Method com/fs/starfarer/campaign/save/SaveGameData setIronMode (Z)V 
L776:   aload 4 
L778:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L781:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getDifficulty ()Ljava/lang/String; 
L784:   invokevirtual Method com/fs/starfarer/campaign/save/SaveGameData setDifficulty (Ljava/lang/String;)V 
L787:   aload 4 
L789:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L792:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getSaveDesc ()Ljava/lang/String; 
L795:   invokevirtual Method com/fs/starfarer/campaign/save/SaveGameData setDesc (Ljava/lang/String;)V 
L798:   aload 4 
L800:   iload_3 
L801:   invokevirtual Method com/fs/starfarer/campaign/save/SaveGameData setAutosave (Z)V 
L804:   aload 4 
L806:   new java/io/File 
L809:   dup 
L810:   aload 6 
L812:   invokespecial Method java/io/File <init> (Ljava/lang/String;)V 
L815:   invokevirtual Method com/fs/starfarer/campaign/save/SaveGameData setSaveDir (Ljava/io/File;)V 
L818:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L821:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L824:   astore 22 
L826:   aload 22 
L828:   ifnull L852 
L831:   aload 22 
L833:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getContainingLocation ()Lcom/fs/starfarer/campaign/BaseLocation; 
L836:   ifnull L852 
L839:   aload 4 
L841:   aload 22 
L843:   invokevirtual Method com/fs/starfarer/campaign/fleet/CampaignFleet getContainingLocation ()Lcom/fs/starfarer/campaign/BaseLocation; 
L846:   invokevirtual Method com/fs/starfarer/campaign/BaseLocation getDisplayName ()Ljava/lang/String; 
L849:   invokevirtual Method com/fs/starfarer/campaign/save/SaveGameData setLocDesc (Ljava/lang/String;)V 

        .stack append Object com/fs/starfarer/campaign/fleet/CampaignFleet 
L852:   iload 5 
L854:   ifeq L1358 
L857:   new java/io/FileOutputStream 
L860:   dup 
L861:   aload 8 
L863:   invokespecial Method java/io/FileOutputStream <init> (Ljava/lang/String;)V 
L866:   astore 21 
L868:   new java/io/BufferedOutputStream 
L871:   dup 
L872:   aload 21 
L874:   ldc_w 1048576 
L877:   invokespecial Method java/io/BufferedOutputStream <init> (Ljava/io/OutputStream;I)V 
L880:   astore 21 
        .catch java/lang/Throwable from L882 to L886 using L889 
L882:   iconst_0 
L883:   invokestatic Method org/lwjgl/opengl/Display setVSyncEnabled (Z)V 
L886:   goto L891 

        .stack stack_1 Object java/lang/Throwable 
L889:   astore 23 

        .stack same 
L891:   new com/fs/starfarer/campaign/save/B 
L894:   dup 
L895:   iload_3 
L896:   ifeq L905 
L899:   ldc_w 'Autosaving...' 
L902:   goto L906 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignEngine$o Long Integer Object com/fs/starfarer/campaign/save/SaveGameData Integer Object java/lang/String Integer Object java/lang/String Object java/lang/String Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/util/List Object java/lang/Thread Long Object com/thoughtworks/xstream/XStream Object java/io/OutputStream Object com/fs/starfarer/campaign/fleet/CampaignFleet 
            stack Uninitialized L891 Uninitialized L891 
        .end stack 
L905:   aconst_null 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignEngine$o Long Integer Object com/fs/starfarer/campaign/save/SaveGameData Integer Object java/lang/String Integer Object java/lang/String Object java/lang/String Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/util/List Object java/lang/Thread Long Object com/thoughtworks/xstream/XStream Object java/io/OutputStream Object com/fs/starfarer/campaign/fleet/CampaignFleet 
            stack Uninitialized L891 Uninitialized L891 Object java/lang/String 
        .end stack 
L906:   invokespecial Method com/fs/starfarer/campaign/save/B <init> (Ljava/lang/String;)V 
L909:   astore 23 
L911:   iconst_0 
L912:   istore 24 
L914:   goto L964 

        .stack append Object com/fs/starfarer/campaign/save/B Integer 
L917:   new com/fs/starfarer/util/do 
L920:   dup 
L921:   aload 21 
L923:   lload 18 
L925:   fconst_0 
L926:   fconst_1 
L927:   aload 23 
L929:   invokespecial Method com/fs/starfarer/util/do <init> (Ljava/io/OutputStream;JFFLcom/fs/starfarer/campaign/save/B;)V 
L932:   putstatic Field [c1] void Lcom/fs/starfarer/util/do; 
L935:   iload 24 
L937:   ifne L947 
L940:   getstatic Field [c1] void Lcom/fs/starfarer/util/do; 
L943:   iconst_1 
L944:   invokevirtual Method com/fs/starfarer/util/do o00000 (Z)V 

        .stack same 
L947:   getstatic Field [c1] void Lcom/fs/starfarer/util/do; 
L950:   astore 21 
L952:   getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L955:   ldc_w 'Saving stage 2' 
L958:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L961:   iinc 24 1 

        .stack same 
L964:   iload 24 
L966:   iconst_1 
L967:   if_icmplt L917 
L970:   iload 7 
L972:   ifeq L1017 
L975:   new java/util/zip/ZipOutputStream 
L978:   dup 
L979:   aload 21 
L981:   invokespecial Method java/util/zip/ZipOutputStream <init> (Ljava/io/OutputStream;)V 
L984:   astore 21 
L986:   aload 21 
L988:   checkcast java/util/zip/ZipOutputStream 
L991:   iconst_1 
L992:   invokevirtual Method java/util/zip/ZipOutputStream setLevel (I)V 
L995:   new java/util/zip/ZipEntry 
L998:   dup 
L999:   ldc_w 'campaign.xml' 
L1002:  invokespecial Method java/util/zip/ZipEntry <init> (Ljava/lang/String;)V 
L1005:  astore 24 
L1007:  aload 21 
L1009:  checkcast java/util/zip/ZipOutputStream 
L1012:  aload 24 
L1014:  invokevirtual Method java/util/zip/ZipOutputStream putNextEntry (Ljava/util/zip/ZipEntry;)V 

        .stack chop 1 
L1017:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1020:  ldc_w 'Saving stage 3' 
L1023:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1026:  aload 16 
L1028:  aload 21 
L1030:  invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L1035:  pop 
L1036:  aload 20 
L1038:  invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L1041:  aload 21 
L1043:  invokevirtual Method com/thoughtworks/xstream/XStream toXML (Ljava/lang/Object;Ljava/io/OutputStream;)V 
        .catch java/lang/Throwable from L1046 to L1052 using L1055 
L1046:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'float.super' ()Z 
L1049:  invokestatic Method org/lwjgl/opengl/Display setVSyncEnabled (Z)V 
L1052:  goto L1057 

        .stack stack_1 Object java/lang/Throwable 
L1055:  astore 24 

        .stack same 
L1057:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1060:  ldc_w 'Saving stage 4' 
L1063:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1066:  iload 7 
L1068:  ifeq L1088 
L1071:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1074:  ldc_w 'Saving stage 5' 
L1077:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1080:  aload 21 
L1082:  checkcast java/util/zip/ZipOutputStream 
L1085:  invokevirtual Method java/util/zip/ZipOutputStream closeEntry ()V 

        .stack same 
L1088:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1091:  ldc_w 'Saving stage 6' 
L1094:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1097:  aload 21 
L1099:  invokevirtual Method java/io/OutputStream flush ()V 
L1102:  aload 21 
L1104:  invokevirtual Method java/io/OutputStream close ()V 
L1107:  new java/io/FileOutputStream 
L1110:  dup 
L1111:  aload 9 
L1113:  invokespecial Method java/io/FileOutputStream <init> (Ljava/lang/String;)V 
L1116:  astore 24 
L1118:  aload 20 
L1120:  aload 4 
L1122:  aload 24 
L1124:  invokevirtual Method com/thoughtworks/xstream/XStream toXML (Ljava/lang/Object;Ljava/io/OutputStream;)V 
L1127:  aload 24 
L1129:  invokevirtual Method java/io/FileOutputStream flush ()V 
L1132:  aload 24 
L1134:  invokevirtual Method java/io/FileOutputStream close ()V 
L1137:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1140:  ldc_w 'Saving stage 6B' 
L1143:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1146:  aload 13 
L1148:  invokestatic Method [c1] 'Ó00000' (Ljava/io/File;)V 
L1151:  aload 12 
L1153:  invokestatic Method [c1] 'Ó00000' (Ljava/io/File;)V 
L1156:  aload 14 
L1158:  invokevirtual Method java/io/File delete ()Z 
L1161:  pop 
L1162:  aload 15 
L1164:  invokevirtual Method java/io/File delete ()Z 
L1167:  pop 
L1168:  aload 14 
L1170:  invokestatic Method [c1] o00000 (Ljava/io/File;)V 
L1173:  aload 15 
L1175:  invokestatic Method [c1] o00000 (Ljava/io/File;)V 
L1178:  aload 10 
L1180:  aload 14 
L1182:  invokestatic Method [c1] o00000 (Ljava/io/File;Ljava/io/File;)V 
L1185:  aload 11 
L1187:  aload 15 
L1189:  invokestatic Method [c1] o00000 (Ljava/io/File;Ljava/io/File;)V 
L1192:  aload 12 
L1194:  aload 10 
L1196:  invokestatic Method [c1] o00000 (Ljava/io/File;Ljava/io/File;)V 
L1199:  aload 13 
L1201:  aload 11 
L1203:  invokestatic Method [c1] o00000 (Ljava/io/File;Ljava/io/File;)V 
L1206:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1209:  ldc_w 'Saving stage 7' 
L1212:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1215:  getstatic Field [c1] void Lcom/fs/starfarer/util/do; 
L1218:  invokevirtual Method com/fs/starfarer/util/do 'Ô00000' ()V 
L1221:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1224:  ldc_w 'Saving stage 8' 
L1227:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1230:  aload 17 
L1232:  ifnull L1358 
L1235:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1238:  ldc_w 'Saving stage 9' 
L1241:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
        .catch java/lang/InterruptedException from L1244 to L1267 using L1270 
L1244:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1247:  ldc_w 'Saving stage 10' 
L1250:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1253:  aload 17 
L1255:  invokevirtual Method java/lang/Thread join ()V 
L1258:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1261:  ldc_w 'Saving stage 11' 
L1264:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1267:  goto L1285 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignEngine$o Long Integer Object com/fs/starfarer/campaign/save/SaveGameData Integer Object java/lang/String Integer Object java/lang/String Object java/lang/String Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/util/List Object java/lang/Thread Long Object com/thoughtworks/xstream/XStream Object java/io/OutputStream Object com/fs/starfarer/campaign/fleet/CampaignFleet Object com/fs/starfarer/campaign/save/B Object java/io/FileOutputStream 
            stack Object java/lang/InterruptedException 
        .end stack 
L1270:  astore 25 
L1272:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1275:  aload 25 
L1277:  invokevirtual Method java/lang/InterruptedException getMessage ()Ljava/lang/String; 
L1280:  aload 25 
L1282:  invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;Ljava/lang/Throwable;)V 
        .catch org/lwjgl/LWJGLException from L1285 to L1306 using L1309 
        .catch java/lang/Throwable from L442 to L1367 using L1370 

        .stack same 
L1285:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1288:  ldc_w 'Saving stage 12' 
L1291:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1294:  invokestatic Method org/lwjgl/opengl/Display makeCurrent ()V 
L1297:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1300:  ldc_w 'Saving stage 13' 
L1303:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1306:  goto L1324 

        .stack stack_1 Object org/lwjgl/LWJGLException 
L1309:  astore 25 
L1311:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1314:  aload 25 
L1316:  invokevirtual Method org/lwjgl/LWJGLException getMessage ()Ljava/lang/String; 
L1319:  aload 25 
L1321:  invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;Ljava/lang/Throwable;)V 

        .stack same 
L1324:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1327:  ldc_w 'Saving stage 14' 
L1330:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1333:  invokestatic Method org/lwjgl/opengl/Display update ()V 
L1336:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1339:  ldc_w 'Saving stage 15' 
L1342:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1345:  invokestatic Method com/fs/starfarer/util/A/A Object ()Lcom/fs/starfarer/util/A/new; 
L1348:  pop 
L1349:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1352:  ldc_w 'Saving stage 16' 
L1355:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 

        .stack chop 2 
L1358:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1361:  ldc_w 'Finished saving' 
L1364:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1367:  goto L2045 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignEngine$o Long Integer Object com/fs/starfarer/campaign/save/SaveGameData Integer Object java/lang/String Integer Object java/lang/String Object java/lang/String Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/util/List Object java/lang/Thread 
            stack Object java/lang/Throwable 
        .end stack 
L1370:  astore 18 
L1372:  iconst_1 
L1373:  putstatic Field [c1] 'ô00000' Z 
L1376:  invokestatic Method com/fs/starfarer/launcher/ModManager getInstance ()Lcom/fs/starfarer/launcher/ModManager; 
L1379:  invokevirtual Method com/fs/starfarer/launcher/ModManager getEnabledModPlugins ()Ljava/util/List; 
L1382:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L1387:  astore 20 
L1389:  goto L1411 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignEngine$o Long Integer Object com/fs/starfarer/campaign/save/SaveGameData Integer Object java/lang/String Integer Object java/lang/String Object java/lang/String Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/util/List Object java/lang/Thread Object java/lang/Throwable Top Object java/util/Iterator 
            stack 
        .end stack 
L1392:  aload 20 
L1394:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L1399:  checkcast com/fs/starfarer/api/ModPlugin 
L1402:  astore 19 
L1404:  aload 19 
L1406:  invokeinterface InterfaceMethod com/fs/starfarer/api/ModPlugin onGameSaveFailed ()V 1 

        .stack same 
L1411:  aload 20 
L1413:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L1418:  ifne L1392 
L1421:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1424:  ldc_w 'Error saving game' 
L1427:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1430:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1433:  aload 18 
L1435:  invokevirtual Method java/lang/Throwable getMessage ()Ljava/lang/String; 
L1438:  aload 18 
L1440:  invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;Ljava/lang/Throwable;)V 
L1443:  aload 18 
L1445:  instanceof com/fs/starfarer/util/E 
L1448:  ifeq L1646 
L1451:  aconst_null 
L1452:  putstatic Field [c1] String Lcom/thoughtworks/xstream/XStream; 
L1455:  aload 18 
L1457:  invokevirtual Method java/lang/Throwable getMessage ()Ljava/lang/String; 
L1460:  astore 27 
L1462:  aconst_null 
L1463:  putstatic Field [c1] void Lcom/fs/starfarer/util/do; 
        .catch java/io/IOException from L1466 to L1510 using L1513 
L1466:  aload 16 
L1468:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L1473:  astore 29 
L1475:  goto L1500 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignEngine$o Long Integer Object com/fs/starfarer/campaign/save/SaveGameData Integer Object java/lang/String Integer Object java/lang/String Object java/lang/String Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/util/List Object java/lang/Thread Object java/lang/Throwable Top Top Top Top Top Top Top Top Object java/lang/String Top Object java/util/Iterator 
            stack 
        .end stack 
L1478:  aload 29 
L1480:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L1485:  checkcast java/io/OutputStream 
L1488:  astore 28 
L1490:  aload 28 
L1492:  invokevirtual Method java/io/OutputStream flush ()V 
L1495:  aload 28 
L1497:  invokevirtual Method java/io/OutputStream close ()V 

        .stack same 
L1500:  aload 29 
L1502:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L1507:  ifne L1478 
L1510:  goto L1515 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignEngine$o Long Integer Object com/fs/starfarer/campaign/save/SaveGameData Integer Object java/lang/String Integer Object java/lang/String Object java/lang/String Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/util/List Object java/lang/Thread Object java/lang/Throwable Top Top Top Top Top Top Top Top Object java/lang/String 
            stack Object java/io/IOException 
        .end stack 
L1513:  astore 28 

        .stack same 
L1515:  aload 17 
L1517:  ifnull L1643 
L1520:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1523:  ldc_w 'Loading stage 9 (exception)' 
L1526:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
        .catch java/lang/InterruptedException from L1529 to L1552 using L1555 
L1529:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1532:  ldc_w 'Loading stage 10 (exception)' 
L1535:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1538:  aload 17 
L1540:  invokevirtual Method java/lang/Thread join ()V 
L1543:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1546:  ldc_w 'Loading stage 11 (exception)' 
L1549:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1552:  goto L1570 

        .stack stack_1 Object java/lang/InterruptedException 
L1555:  astore 28 
L1557:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1560:  aload 28 
L1562:  invokevirtual Method java/lang/InterruptedException getMessage ()Ljava/lang/String; 
L1565:  aload 28 
L1567:  invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;Ljava/lang/Throwable;)V 
        .catch org/lwjgl/LWJGLException from L1570 to L1591 using L1594 

        .stack same 
L1570:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1573:  ldc_w 'Loading stage 12 (exception)' 
L1576:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1579:  invokestatic Method org/lwjgl/opengl/Display makeCurrent ()V 
L1582:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1585:  ldc_w 'Loading stage 13 (exception)' 
L1588:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1591:  goto L1609 

        .stack stack_1 Object org/lwjgl/LWJGLException 
L1594:  astore 28 
L1596:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1599:  aload 28 
L1601:  invokevirtual Method org/lwjgl/LWJGLException getMessage ()Ljava/lang/String; 
L1604:  aload 28 
L1606:  invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;Ljava/lang/Throwable;)V 

        .stack same 
L1609:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1612:  ldc_w 'Loading stage 14 (exception)' 
L1615:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1618:  invokestatic Method org/lwjgl/opengl/Display update ()V 
L1621:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1624:  ldc_w 'Loading stage 15 (exception)' 
L1627:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1630:  invokestatic Method com/fs/starfarer/util/A/A Object ()Lcom/fs/starfarer/util/A/new; 
L1633:  pop 
L1634:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1637:  ldc_w 'Loading stage 16 (exception)' 
L1640:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 

        .stack same 
L1643:  aload 27 
L1645:  areturn 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignEngine$o Long Integer Object com/fs/starfarer/campaign/save/SaveGameData Integer Object java/lang/String Integer Object java/lang/String Object java/lang/String Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/util/List Object java/lang/Thread Object java/lang/Throwable 
            stack 
        .end stack 
L1646:  new java/lang/StringBuilder 
L1649:  dup 
L1650:  ldc_w 'Error saving game. See starsector.log for details.\n\nError message: [' 
L1653:  invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L1656:  aload 18 
L1658:  invokevirtual Method java/lang/Throwable getMessage ()Ljava/lang/String; 
L1661:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L1664:  ldc_w ']' 
L1667:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L1670:  invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L1673:  astore 27 
L1675:  aconst_null 
L1676:  putstatic Field [c1] void Lcom/fs/starfarer/util/do; 
        .catch java/io/IOException from L1679 to L1723 using L1726 
L1679:  aload 16 
L1681:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L1686:  astore 29 
L1688:  goto L1713 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignEngine$o Long Integer Object com/fs/starfarer/campaign/save/SaveGameData Integer Object java/lang/String Integer Object java/lang/String Object java/lang/String Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/util/List Object java/lang/Thread Object java/lang/Throwable Top Top Top Top Top Top Top Top Object java/lang/String Top Object java/util/Iterator 
            stack 
        .end stack 
L1691:  aload 29 
L1693:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L1698:  checkcast java/io/OutputStream 
L1701:  astore 28 
L1703:  aload 28 
L1705:  invokevirtual Method java/io/OutputStream flush ()V 
L1708:  aload 28 
L1710:  invokevirtual Method java/io/OutputStream close ()V 

        .stack same 
L1713:  aload 29 
L1715:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L1720:  ifne L1691 
L1723:  goto L1728 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignEngine$o Long Integer Object com/fs/starfarer/campaign/save/SaveGameData Integer Object java/lang/String Integer Object java/lang/String Object java/lang/String Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/util/List Object java/lang/Thread Object java/lang/Throwable Top Top Top Top Top Top Top Top Object java/lang/String 
            stack Object java/io/IOException 
        .end stack 
L1726:  astore 28 

        .stack same 
L1728:  aload 17 
L1730:  ifnull L1856 
L1733:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1736:  ldc_w 'Loading stage 9 (exception)' 
L1739:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
        .catch java/lang/InterruptedException from L1742 to L1765 using L1768 
L1742:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1745:  ldc_w 'Loading stage 10 (exception)' 
L1748:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1751:  aload 17 
L1753:  invokevirtual Method java/lang/Thread join ()V 
L1756:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1759:  ldc_w 'Loading stage 11 (exception)' 
L1762:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1765:  goto L1783 

        .stack stack_1 Object java/lang/InterruptedException 
L1768:  astore 28 
L1770:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1773:  aload 28 
L1775:  invokevirtual Method java/lang/InterruptedException getMessage ()Ljava/lang/String; 
L1778:  aload 28 
L1780:  invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;Ljava/lang/Throwable;)V 
        .catch org/lwjgl/LWJGLException from L1783 to L1804 using L1807 
        .catch [0] from L442 to L1462 using L1859 
        .catch [0] from L1646 to L1675 using L1859 

        .stack same 
L1783:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1786:  ldc_w 'Loading stage 12 (exception)' 
L1789:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1792:  invokestatic Method org/lwjgl/opengl/Display makeCurrent ()V 
L1795:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1798:  ldc_w 'Loading stage 13 (exception)' 
L1801:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1804:  goto L1822 

        .stack stack_1 Object org/lwjgl/LWJGLException 
L1807:  astore 28 
L1809:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1812:  aload 28 
L1814:  invokevirtual Method org/lwjgl/LWJGLException getMessage ()Ljava/lang/String; 
L1817:  aload 28 
L1819:  invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;Ljava/lang/Throwable;)V 

        .stack same 
L1822:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1825:  ldc_w 'Loading stage 14 (exception)' 
L1828:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1831:  invokestatic Method org/lwjgl/opengl/Display update ()V 
L1834:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1837:  ldc_w 'Loading stage 15 (exception)' 
L1840:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1843:  invokestatic Method com/fs/starfarer/util/A/A Object ()Lcom/fs/starfarer/util/A/new; 
L1846:  pop 
L1847:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1850:  ldc_w 'Loading stage 16 (exception)' 
L1853:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 

        .stack same 
L1856:  aload 27 
L1858:  areturn 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignEngine$o Long Integer Object com/fs/starfarer/campaign/save/SaveGameData Integer Object java/lang/String Integer Object java/lang/String Object java/lang/String Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/util/List Object java/lang/Thread 
            stack Object java/lang/Throwable 
        .end stack 
L1859:  astore 26 
L1861:  aconst_null 
L1862:  putstatic Field [c1] void Lcom/fs/starfarer/util/do; 
        .catch java/io/IOException from L1865 to L1909 using L1912 
L1865:  aload 16 
L1867:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L1872:  astore 29 
L1874:  goto L1899 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignEngine$o Long Integer Object com/fs/starfarer/campaign/save/SaveGameData Integer Object java/lang/String Integer Object java/lang/String Object java/lang/String Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/util/List Object java/lang/Thread Top Top Top Top Top Top Top Top Object java/lang/Throwable Top Top Object java/util/Iterator 
            stack 
        .end stack 
L1877:  aload 29 
L1879:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L1884:  checkcast java/io/OutputStream 
L1887:  astore 28 
L1889:  aload 28 
L1891:  invokevirtual Method java/io/OutputStream flush ()V 
L1894:  aload 28 
L1896:  invokevirtual Method java/io/OutputStream close ()V 

        .stack same 
L1899:  aload 29 
L1901:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L1906:  ifne L1877 
L1909:  goto L1914 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignEngine$o Long Integer Object com/fs/starfarer/campaign/save/SaveGameData Integer Object java/lang/String Integer Object java/lang/String Object java/lang/String Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/util/List Object java/lang/Thread Top Top Top Top Top Top Top Top Object java/lang/Throwable 
            stack Object java/io/IOException 
        .end stack 
L1912:  astore 28 

        .stack same 
L1914:  aload 17 
L1916:  ifnull L2042 
L1919:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1922:  ldc_w 'Loading stage 9 (exception)' 
L1925:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
        .catch java/lang/InterruptedException from L1928 to L1951 using L1954 
L1928:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1931:  ldc_w 'Loading stage 10 (exception)' 
L1934:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1937:  aload 17 
L1939:  invokevirtual Method java/lang/Thread join ()V 
L1942:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1945:  ldc_w 'Loading stage 11 (exception)' 
L1948:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1951:  goto L1969 

        .stack stack_1 Object java/lang/InterruptedException 
L1954:  astore 28 
L1956:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1959:  aload 28 
L1961:  invokevirtual Method java/lang/InterruptedException getMessage ()Ljava/lang/String; 
L1964:  aload 28 
L1966:  invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;Ljava/lang/Throwable;)V 
        .catch org/lwjgl/LWJGLException from L1969 to L1990 using L1993 

        .stack same 
L1969:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1972:  ldc_w 'Loading stage 12 (exception)' 
L1975:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1978:  invokestatic Method org/lwjgl/opengl/Display makeCurrent ()V 
L1981:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1984:  ldc_w 'Loading stage 13 (exception)' 
L1987:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1990:  goto L2008 

        .stack stack_1 Object org/lwjgl/LWJGLException 
L1993:  astore 28 
L1995:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1998:  aload 28 
L2000:  invokevirtual Method org/lwjgl/LWJGLException getMessage ()Ljava/lang/String; 
L2003:  aload 28 
L2005:  invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;Ljava/lang/Throwable;)V 

        .stack same 
L2008:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L2011:  ldc_w 'Loading stage 14 (exception)' 
L2014:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L2017:  invokestatic Method org/lwjgl/opengl/Display update ()V 
L2020:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L2023:  ldc_w 'Loading stage 15 (exception)' 
L2026:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L2029:  invokestatic Method com/fs/starfarer/util/A/A Object ()Lcom/fs/starfarer/util/A/new; 
L2032:  pop 
L2033:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L2036:  ldc_w 'Loading stage 16 (exception)' 
L2039:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 

        .stack same 
L2042:  aload 26 
L2044:  athrow 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignEngine$o Long Integer Object com/fs/starfarer/campaign/save/SaveGameData Integer Object java/lang/String Integer Object java/lang/String Object java/lang/String Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/util/List Object java/lang/Thread 
            stack 
        .end stack 
L2045:  aconst_null 
L2046:  putstatic Field [c1] void Lcom/fs/starfarer/util/do; 
        .catch java/io/IOException from L2049 to L2093 using L2096 
L2049:  aload 16 
L2051:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L2056:  astore 29 
L2058:  goto L2083 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignEngine$o Long Integer Object com/fs/starfarer/campaign/save/SaveGameData Integer Object java/lang/String Integer Object java/lang/String Object java/lang/String Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/util/List Object java/lang/Thread Top Top Top Top Top Top Top Top Top Top Top Object java/util/Iterator 
            stack 
        .end stack 
L2061:  aload 29 
L2063:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L2068:  checkcast java/io/OutputStream 
L2071:  astore 28 
L2073:  aload 28 
L2075:  invokevirtual Method java/io/OutputStream flush ()V 
L2078:  aload 28 
L2080:  invokevirtual Method java/io/OutputStream close ()V 

        .stack same 
L2083:  aload 29 
L2085:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L2090:  ifne L2061 
L2093:  goto L2098 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignEngine$o Long Integer Object com/fs/starfarer/campaign/save/SaveGameData Integer Object java/lang/String Integer Object java/lang/String Object java/lang/String Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/util/List Object java/lang/Thread 
            stack Object java/io/IOException 
        .end stack 
L2096:  astore 28 

        .stack same 
L2098:  aload 17 
L2100:  ifnull L2226 
L2103:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L2106:  ldc_w 'Loading stage 9 (exception)' 
L2109:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
        .catch java/lang/InterruptedException from L2112 to L2135 using L2138 
L2112:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L2115:  ldc_w 'Loading stage 10 (exception)' 
L2118:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L2121:  aload 17 
L2123:  invokevirtual Method java/lang/Thread join ()V 
L2126:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L2129:  ldc_w 'Loading stage 11 (exception)' 
L2132:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L2135:  goto L2153 

        .stack stack_1 Object java/lang/InterruptedException 
L2138:  astore 28 
L2140:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L2143:  aload 28 
L2145:  invokevirtual Method java/lang/InterruptedException getMessage ()Ljava/lang/String; 
L2148:  aload 28 
L2150:  invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;Ljava/lang/Throwable;)V 
        .catch org/lwjgl/LWJGLException from L2153 to L2174 using L2177 

        .stack same 
L2153:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L2156:  ldc_w 'Loading stage 12 (exception)' 
L2159:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L2162:  invokestatic Method org/lwjgl/opengl/Display makeCurrent ()V 
L2165:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L2168:  ldc_w 'Loading stage 13 (exception)' 
L2171:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L2174:  goto L2192 

        .stack stack_1 Object org/lwjgl/LWJGLException 
L2177:  astore 28 
L2179:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L2182:  aload 28 
L2184:  invokevirtual Method org/lwjgl/LWJGLException getMessage ()Ljava/lang/String; 
L2187:  aload 28 
L2189:  invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;Ljava/lang/Throwable;)V 

        .stack same 
L2192:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L2195:  ldc_w 'Loading stage 14 (exception)' 
L2198:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L2201:  invokestatic Method org/lwjgl/opengl/Display update ()V 
L2204:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L2207:  ldc_w 'Loading stage 15 (exception)' 
L2210:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L2213:  invokestatic Method com/fs/starfarer/util/A/A Object ()Lcom/fs/starfarer/util/A/new; 
L2216:  pop 
L2217:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L2220:  ldc_w 'Loading stage 16 (exception)' 
L2223:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 

        .stack same 
L2226:  iload_3 
L2227:  ifne L2247 
L2230:  aload 6 
L2232:  putstatic Field [c1] 'Õ00000' Ljava/lang/String; 
L2235:  new java/io/File 
L2238:  dup 
L2239:  aload 6 
L2241:  invokespecial Method java/io/File <init> (Ljava/lang/String;)V 
L2244:  invokestatic Method com/fs/starfarer/campaign/CampaignState removeAutosaveSlot (Ljava/io/File;)V 

        .stack same 
L2247:  invokestatic Method com/fs/starfarer/launcher/ooOO 'Ó00000' ()Lcom/fs/starfarer/launcher/ooOO; 
L2250:  ldc_w 'continue' 
L2253:  aload 6 
L2255:  invokevirtual Method com/fs/starfarer/launcher/ooOO o00000 (Ljava/lang/String;Ljava/lang/String;)V 
L2258:  getstatic Field [c1] 'Ò00000' Ljava/util/HashSet; 
L2261:  invokevirtual Method java/util/HashSet isEmpty ()Z 
L2264:  ifeq L2276 
L2267:  getstatic Field [c1] OO0000 Ljava/util/HashSet; 
L2270:  invokevirtual Method java/util/HashSet isEmpty ()Z 
L2273:  ifne L2835 

        .stack same 
L2276:  invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'OÓ0000' ()Z 
L2279:  ifeq L2835 
L2282:  ldc_w 'Found invalid classes being serialized' 
L2285:  astore 18 
L2287:  getstatic Field [c1] 'Ò00000' Ljava/util/HashSet; 
L2290:  invokevirtual Method java/util/HashSet isEmpty ()Z 
L2293:  ifne L2502 
L2296:  new java/util/ArrayList 
L2299:  dup 
L2300:  getstatic Field [c1] 'Ò00000' Ljava/util/HashSet; 
L2303:  invokespecial Method java/util/ArrayList <init> (Ljava/util/Collection;)V 
L2306:  astore 19 
L2308:  aload 19 
L2310:  invokestatic Method java/util/Collections sort (Ljava/util/List;)V 
L2313:  new java/lang/StringBuilder 
L2316:  dup 
L2317:  ldc_w 'Found ' 
L2320:  invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L2323:  aload 19 
L2325:  invokeinterface InterfaceMethod java/util/List size ()I 1 
L2330:  invokevirtual Method java/lang/StringBuilder append (I)Ljava/lang/StringBuilder; 
L2333:  ldc_w ' serliazed classes not marked with DoNotObfuscate.' 
L2336:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L2339:  invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L2342:  astore 18 
L2344:  getstatic Field java/lang/System out Ljava/io/PrintStream; 
L2347:  aload 18 
L2349:  invokevirtual Method java/io/PrintStream println (Ljava/lang/String;)V 
L2352:  aload 19 
L2354:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L2359:  astore 21 
L2361:  goto L2434 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignEngine$o Long Integer Object com/fs/starfarer/campaign/save/SaveGameData Integer Object java/lang/String Integer Object java/lang/String Object java/lang/String Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/util/List Object java/lang/Thread Object java/lang/String Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L2364:  aload 21 
L2366:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L2371:  checkcast java/lang/String 
L2374:  astore 20 
L2376:  aload 20 
L2378:  aload 20 
L2380:  ldc_w '.' 
L2383:  invokevirtual Method java/lang/String lastIndexOf (Ljava/lang/String;)I 
L2386:  iconst_1 
L2387:  iadd 
L2388:  invokevirtual Method java/lang/String substring (I)Ljava/lang/String; 
L2391:  astore 22 
L2393:  getstatic Field java/lang/System out Ljava/io/PrintStream; 
L2396:  new java/lang/StringBuilder 
L2399:  dup 
L2400:  ldc_w 'x.alias("' 
L2403:  invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L2406:  aload 22 
L2408:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L2411:  ldc_w '", ' 
L2414:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L2417:  aload 20 
L2419:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L2422:  ldc_w '.class);' 
L2425:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L2428:  invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L2431:  invokevirtual Method java/io/PrintStream println (Ljava/lang/String;)V 

        .stack same_extended 
L2434:  aload 21 
L2436:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L2441:  ifne L2364 
L2444:  aload 19 
L2446:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L2451:  astore 21 
L2453:  goto L2492 

        .stack same 
L2456:  aload 21 
L2458:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L2463:  checkcast java/lang/String 
L2466:  astore 20 
L2468:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L2471:  new java/lang/StringBuilder 
L2474:  dup 
L2475:  ldc_w 'Class: ' 
L2478:  invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L2481:  aload 20 
L2483:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L2486:  invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L2489:  invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;)V 

        .stack same 
L2492:  aload 21 
L2494:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L2499:  ifne L2456 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignEngine$o Long Integer Object com/fs/starfarer/campaign/save/SaveGameData Integer Object java/lang/String Integer Object java/lang/String Object java/lang/String Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/util/List Object java/lang/Thread Object java/lang/String 
            stack 
        .end stack 
L2502:  getstatic Field [c1] OO0000 Ljava/util/HashSet; 
L2505:  invokevirtual Method java/util/HashSet isEmpty ()Z 
L2508:  ifne L2780 
L2511:  getstatic Field java/lang/System out Ljava/io/PrintStream; 
L2514:  new java/lang/StringBuilder 
L2517:  dup 
L2518:  ldc_w 'Found ' 
L2521:  invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L2524:  getstatic Field [c1] OO0000 Ljava/util/HashSet; 
L2527:  invokevirtual Method java/util/HashSet size ()I 
L2530:  invokevirtual Method java/lang/StringBuilder append (I)Ljava/lang/StringBuilder; 
L2533:  ldc_w ' anonymous classes being serialized.' 
L2536:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L2539:  invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L2542:  invokevirtual Method java/io/PrintStream println (Ljava/lang/String;)V 
L2545:  getstatic Field [c1] OO0000 Ljava/util/HashSet; 
L2548:  invokevirtual Method java/util/HashSet iterator ()Ljava/util/Iterator; 
L2551:  astore 20 
L2553:  goto L2703 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignEngine$o Long Integer Object com/fs/starfarer/campaign/save/SaveGameData Integer Object java/lang/String Integer Object java/lang/String Object java/lang/String Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/util/List Object java/lang/Thread Object java/lang/String Top Object java/util/Iterator 
            stack 
        .end stack 
L2556:  aload 20 
L2558:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L2563:  checkcast java/lang/Class 
L2566:  astore 19 
L2568:  aload 19 
L2570:  invokevirtual Method java/lang/Class getEnclosingClass ()Ljava/lang/Class; 
L2573:  invokevirtual Method java/lang/Class getCanonicalName ()Ljava/lang/String; 
L2576:  astore 21 
L2578:  ldc '' 
L2580:  astore 22 
L2582:  aload 19 
L2584:  invokevirtual Method java/lang/Class getInterfaces ()[Ljava/lang/Class; 
L2587:  dup 
L2588:  astore 26 
L2590:  arraylength 
L2591:  istore 25 
L2593:  iconst_0 
L2594:  istore 24 
L2596:  goto L2640 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignEngine$o Long Integer Object com/fs/starfarer/campaign/save/SaveGameData Integer Object java/lang/String Integer Object java/lang/String Object java/lang/String Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/util/List Object java/lang/Thread Object java/lang/String Object java/lang/Class Object java/util/Iterator Object java/lang/String Object java/lang/String Top Integer Integer Object [Ljava/lang/Class; 
            stack 
        .end stack 
L2599:  aload 26 
L2601:  iload 24 
L2603:  aaload 
L2604:  astore 23 
L2606:  new java/lang/StringBuilder 
L2609:  dup 
L2610:  aload 22 
L2612:  invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L2615:  invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L2618:  aload 23 
L2620:  invokevirtual Method java/lang/Class getCanonicalName ()Ljava/lang/String; 
L2623:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L2626:  ldc_w ' ' 
L2629:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L2632:  invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L2635:  astore 22 
L2637:  iinc 24 1 

        .stack same 
L2640:  iload 24 
L2642:  iload 25 
L2644:  if_icmplt L2599 
L2647:  aload 19 
L2649:  invokevirtual Method java/lang/Class getSuperclass ()Ljava/lang/Class; 
L2652:  invokevirtual Method java/lang/Class getCanonicalName ()Ljava/lang/String; 
L2655:  astore 23 
L2657:  getstatic Field java/lang/System out Ljava/io/PrintStream; 
L2660:  new java/lang/StringBuilder 
L2663:  dup 
L2664:  ldc_w 'Enclosing class: ' 
L2667:  invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L2670:  aload 21 
L2672:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L2675:  ldc_w ', implements: ' 
L2678:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L2681:  aload 22 
L2683:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L2686:  ldc_w ',extends: ' 
L2689:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L2692:  aload 23 
L2694:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L2697:  invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L2700:  invokevirtual Method java/io/PrintStream println (Ljava/lang/String;)V 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignEngine$o Long Integer Object com/fs/starfarer/campaign/save/SaveGameData Integer Object java/lang/String Integer Object java/lang/String Object java/lang/String Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/util/List Object java/lang/Thread Object java/lang/String Top Object java/util/Iterator 
            stack 
        .end stack 
L2703:  aload 20 
L2705:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L2710:  ifne L2556 
L2713:  getstatic Field [c1] OO0000 Ljava/util/HashSet; 
L2716:  invokevirtual Method java/util/HashSet iterator ()Ljava/util/Iterator; 
L2719:  astore 20 
L2721:  goto L2770 

        .stack same 
L2724:  aload 20 
L2726:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L2731:  checkcast java/lang/Class 
L2734:  astore 19 
L2736:  aload 19 
L2738:  invokevirtual Method java/lang/Class getEnclosingClass ()Ljava/lang/Class; 
L2741:  invokevirtual Method java/lang/Class getCanonicalName ()Ljava/lang/String; 
L2744:  astore 21 
L2746:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L2749:  new java/lang/StringBuilder 
L2752:  dup 
L2753:  ldc_w 'Enclosing class: ' 
L2756:  invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L2759:  aload 21 
L2761:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L2764:  invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L2767:  invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;)V 

        .stack same 
L2770:  aload 20 
L2772:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L2777:  ifne L2724 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignEngine$o Long Integer Object com/fs/starfarer/campaign/save/SaveGameData Integer Object java/lang/String Integer Object java/lang/String Object java/lang/String Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/util/List Object java/lang/Thread Object java/lang/String 
            stack 
        .end stack 
L2780:  invokestatic Method com/fs/starfarer/launcher/ModManager getInstance ()Lcom/fs/starfarer/launcher/ModManager; 
L2783:  invokevirtual Method com/fs/starfarer/launcher/ModManager getEnabledModPlugins ()Ljava/util/List; 
L2786:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L2791:  astore 20 
L2793:  goto L2815 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignEngine$o Long Integer Object com/fs/starfarer/campaign/save/SaveGameData Integer Object java/lang/String Integer Object java/lang/String Object java/lang/String Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/util/List Object java/lang/Thread Object java/lang/String Top Object java/util/Iterator 
            stack 
        .end stack 
L2796:  aload 20 
L2798:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L2803:  checkcast com/fs/starfarer/api/ModPlugin 
L2806:  astore 19 
L2808:  aload 19 
L2810:  invokeinterface InterfaceMethod com/fs/starfarer/api/ModPlugin onGameSaveFailed ()V 1 

        .stack same 
L2815:  aload 20 
L2817:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L2822:  ifne L2796 
L2825:  new java/lang/RuntimeException 
L2828:  dup 
L2829:  aload 18 
L2831:  invokespecial Method java/lang/RuntimeException <init> (Ljava/lang/String;)V 
L2834:  athrow 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignEngine$o Long Integer Object com/fs/starfarer/campaign/save/SaveGameData Integer Object java/lang/String Integer Object java/lang/String Object java/lang/String Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/util/List Object java/lang/Thread 
            stack 
        .end stack 
L2835:  aload_0 
L2836:  ifnull L2853 
L2839:  aload_0 
L2840:  invokeinterface InterfaceMethod com/fs/starfarer/campaign/CampaignEngine$o getMessageDisplay ()Lcom/fs/starfarer/api/campaign/MessageDisplayAPI; 1 
L2845:  ldc_w 'Game saved' 
L2848:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/MessageDisplayAPI addMessage (Ljava/lang/String;)V 2 

        .stack same 
L2853:  invokestatic Method com/fs/starfarer/launcher/ModManager getInstance ()Lcom/fs/starfarer/launcher/ModManager; 
L2856:  invokevirtual Method com/fs/starfarer/launcher/ModManager getEnabledModPlugins ()Ljava/util/List; 
L2859:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L2864:  astore 19 
L2866:  goto L2888 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignEngine$o Long Integer Object com/fs/starfarer/campaign/save/SaveGameData Integer Object java/lang/String Integer Object java/lang/String Object java/lang/String Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/util/List Object java/lang/Thread Top Object java/util/Iterator 
            stack 
        .end stack 
L2869:  aload 19 
L2871:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L2876:  checkcast com/fs/starfarer/api/ModPlugin 
L2879:  astore 18 
L2881:  aload 18 
L2883:  invokeinterface InterfaceMethod com/fs/starfarer/api/ModPlugin afterGameSave ()V 1 

        .stack same 
L2888:  aload 19 
L2890:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L2895:  ifne L2869 
L2898:  invokestatic Method java/lang/System currentTimeMillis ()J 
L2901:  invokestatic Method [c1] o00000 (J)V 
L2904:  iload_3 
L2905:  ifeq L2913 
L2908:  aload 4 
L2910:  putstatic Field [c1] 'Ó00000' Lcom/fs/starfarer/campaign/save/SaveGameData; 

        .stack full 
            locals Object com/fs/starfarer/campaign/CampaignEngine$o Long Integer Object com/fs/starfarer/campaign/save/SaveGameData Integer Object java/lang/String Integer Object java/lang/String Object java/lang/String Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/io/File Object java/util/List Object java/lang/Thread 
            stack 
        .end stack 
L2913:  aconst_null 
L2914:  areturn 
L2915:  
    .end code 
.end method 

.method public static o00000 : (Lcom/fs/starfarer/campaign/void;Lcom/fs/starfarer/campaign/CampaignEngine$o;Z)Ljava/lang/String; 
    .code stack 3 locals 4 
L0:     getstatic Field [c1] 'Õ00000' Ljava/lang/String; 
L3:     astore_3 
L4:     iload_2 
L5:     ifeq L18 
L8:     invokestatic Method com/fs/starfarer/launcher/ooOO 'Ó00000' ()Lcom/fs/starfarer/launcher/ooOO; 
L11:    ldc_w 'continue' 
L14:    invokevirtual Method com/fs/starfarer/launcher/ooOO new (Ljava/lang/String;)Ljava/lang/String; 
L17:    astore_3 

        .stack append Object java/lang/String 
L18:    iload_2 
L19:    ifeq L26 
L22:    iconst_0 
L23:    goto L27 

        .stack same 
L26:    iconst_1 

        .stack stack_1 Integer 
L27:    invokestatic Method [c1] o00000 (Z)Z 
L30:    ifeq L40 
L33:    aload_3 
L34:    aload_0 
L35:    aload_1 
L36:    invokestatic Method [c1] o00000 (Ljava/lang/String;Lcom/fs/starfarer/campaign/void;Lcom/fs/starfarer/campaign/CampaignEngine$o;)Ljava/lang/String; 
L39:    areturn 

        .stack same 
L40:    aconst_null 
L41:    areturn 
L42:    
    .end code 
.end method 

.method public static o00000 : (Z)Z 
    .code stack 3 locals 3 
L0:     invokestatic Method com/fs/starfarer/launcher/ooOO 'Ó00000' ()Lcom/fs/starfarer/launcher/ooOO; 
L3:     ldc_w 'continue' 
L6:     invokevirtual Method com/fs/starfarer/launcher/ooOO new (Ljava/lang/String;)Ljava/lang/String; 
L9:     astore_1 
L10:    iload_0 
L11:    ifeq L18 
L14:    getstatic Field [c1] 'Õ00000' Ljava/lang/String; 
L17:    astore_1 

        .stack append Object java/lang/String 
L18:    aload_1 
L19:    ifnonnull L24 
L22:    iconst_0 
L23:    ireturn 

        .stack same 
L24:    new java/lang/StringBuilder 
L27:    dup 
L28:    aload_1 
L29:    invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L32:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L35:    ldc_w '/descriptor.xml' 
L38:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L41:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L44:    astore_2 
L45:    new java/io/File 
L48:    dup 
L49:    aload_2 
L50:    invokespecial Method java/io/File <init> (Ljava/lang/String;)V 
L53:    invokevirtual Method java/io/File exists ()Z 
L56:    ifeq L61 
L59:    iconst_1 
L60:    ireturn 

        .stack append Object java/lang/String 
L61:    iconst_0 
L62:    ireturn 
L63:    
    .end code 
.end method 

.method public static 'Ö00000' : ()Z 
    .code stack 4 locals 7 
L0:     invokestatic Method com/fs/starfarer/launcher/ooOO 'Ó00000' ()Lcom/fs/starfarer/launcher/ooOO; 
L3:     ldc_w 'continue' 
L6:     invokevirtual Method com/fs/starfarer/launcher/ooOO new (Ljava/lang/String;)Ljava/lang/String; 
L9:     astore_0 
L10:    aload_0 
L11:    ifnonnull L16 
L14:    iconst_0 
L15:    ireturn 

        .stack append Object java/lang/String 
L16:    new java/io/File 
L19:    dup 
L20:    aload_0 
L21:    invokespecial Method java/io/File <init> (Ljava/lang/String;)V 
L24:    astore_1 
L25:    aload_1 
L26:    invokevirtual Method java/io/File exists ()Z 
L29:    ifeq L39 
L32:    aload_1 
L33:    invokevirtual Method java/io/File isDirectory ()Z 
L36:    ifne L41 

        .stack append Object java/io/File 
L39:    iconst_0 
L40:    ireturn 

        .stack same 
L41:    ldc '0.6' 
L43:    invokestatic Method [c1] new (Ljava/lang/String;)Lcom/thoughtworks/xstream/XStream; 
L46:    astore_2 
L47:    iconst_0 
L48:    istore_3 
L49:    goto L248 

        .stack append Object com/thoughtworks/xstream/XStream Integer 
L52:    new java/io/File 
L55:    dup 
L56:    aload_1 
L57:    ldc_w 'descriptor.xml' 
L60:    invokespecial Method java/io/File <init> (Ljava/io/File;Ljava/lang/String;)V 
L63:    astore 4 
L65:    iload_3 
L66:    iconst_1 
L67:    if_icmpne L83 
L70:    new java/io/File 
L73:    dup 
L74:    aload_1 
L75:    ldc_w 'descriptor.xml.bak' 
L78:    invokespecial Method java/io/File <init> (Ljava/io/File;Ljava/lang/String;)V 
L81:    astore 4 

        .stack append Object java/io/File 
L83:    iload_3 
L84:    iconst_2 
L85:    if_icmpne L101 
L88:    new java/io/File 
L91:    dup 
L92:    aload_1 
L93:    ldc_w 'descriptor.xml.inprogress' 
L96:    invokespecial Method java/io/File <init> (Ljava/io/File;Ljava/lang/String;)V 
L99:    astore 4 

        .stack same 
L101:   aload 4 
L103:   invokevirtual Method java/io/File exists ()Z 
L106:   ifeq L245 
L109:   aload 4 
L111:   invokevirtual Method java/io/File isDirectory ()Z 
L114:   ifeq L120 
L117:   goto L245 
        .catch com/thoughtworks/xstream/XStreamException from L120 to L193 using L194 
        .catch java/io/FileNotFoundException from L120 to L193 using L212 
        .catch java/io/IOException from L120 to L193 using L230 

        .stack same 
L120:   new java/io/FileInputStream 
L123:   dup 
L124:   aload 4 
L126:   invokespecial Method java/io/FileInputStream <init> (Ljava/io/File;)V 
L129:   astore 5 
L131:   getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L134:   new java/lang/StringBuilder 
L137:   dup 
L138:   ldc_w 'Reading save data from [' 
L141:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L144:   aload 4 
L146:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/Object;)Ljava/lang/StringBuilder; 
L149:   ldc_w ']' 
L152:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L155:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L158:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L161:   aload_2 
L162:   aload 5 
L164:   invokevirtual Method com/thoughtworks/xstream/XStream fromXML (Ljava/io/InputStream;)Ljava/lang/Object; 
L167:   checkcast com/fs/starfarer/campaign/save/SaveGameData 
L170:   astore 6 
L172:   aload 5 
L174:   invokevirtual Method java/io/FileInputStream close ()V 
L177:   aload 6 
L179:   aload_1 
L180:   invokevirtual Method com/fs/starfarer/campaign/save/SaveGameData setSaveDir (Ljava/io/File;)V 
L183:   ldc '0.6' 
L185:   aload 6 
L187:   invokevirtual Method com/fs/starfarer/campaign/save/SaveGameData getSaveFileVersion ()Ljava/lang/String; 
L190:   invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L193:   ireturn 

        .stack stack_1_extended Object com/thoughtworks/xstream/XStreamException 
L194:   astore 5 
L196:   getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L199:   aload 5 
L201:   invokevirtual Method com/thoughtworks/xstream/XStreamException getMessage ()Ljava/lang/String; 
L204:   aload 5 
L206:   invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;Ljava/lang/Throwable;)V 
L209:   goto L245 

        .stack stack_1 Object java/io/FileNotFoundException 
L212:   astore 5 
L214:   getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L217:   aload 5 
L219:   invokevirtual Method java/io/FileNotFoundException getMessage ()Ljava/lang/String; 
L222:   aload 5 
L224:   invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;Ljava/lang/Throwable;)V 
L227:   goto L245 

        .stack stack_1 Object java/io/IOException 
L230:   astore 5 
L232:   getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L235:   aload 5 
L237:   invokevirtual Method java/io/IOException getMessage ()Ljava/lang/String; 
L240:   aload 5 
L242:   invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;Ljava/lang/Throwable;)V 

        .stack chop 1 
L245:   iinc 3 1 

        .stack same 
L248:   iload_3 
L249:   iconst_3 
L250:   if_icmplt L52 
L253:   iconst_0 
L254:   ireturn 
L255:   
    .end code 
.end method 

.method public static o00000 : (Ljava/lang/String;Lcom/fs/starfarer/campaign/void;Lcom/fs/starfarer/campaign/CampaignEngine$o;)Ljava/lang/String; 
    .code stack 5 locals 3 
L0:     aload_0 
L1:     aload_1 
L2:     aload_2 
L3:     iconst_0 
L4:     iconst_0 
L5:     invokestatic Method [c1] o00000 (Ljava/lang/String;Lcom/fs/starfarer/campaign/void;Lcom/fs/starfarer/campaign/CampaignEngine$o;ZZ)Ljava/lang/String; 
L8:     areturn 
L9:     
    .end code 
.end method 

.method public static o00000 : (Ljava/lang/String;Lcom/fs/starfarer/campaign/void;Lcom/fs/starfarer/campaign/CampaignEngine$o;ZZ)Ljava/lang/String; 
    .code stack 5 locals 27 
L0:     aconst_null 
L1:     astore 5 
L3:     aconst_null 
L4:     astore 6 
L6:     aconst_null 
L7:     astore 7 
L9:     invokestatic Method java/lang/System gc ()V 
L12:    invokestatic Method com/fs/starfarer/D/return 'ô00000' ()V 
L15:    aconst_null 
L16:    astore 8 
L18:    invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L21:    astore 9 
L23:    iconst_1 
L24:    putstatic Field com/fs/starfarer/api/Global LOADING_SAVE Z 
L27:    getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L30:    new java/lang/StringBuilder 
L33:    dup 
L34:    ldc_w 'Loading ' 
L37:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L40:    aload_0 
L41:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L44:    ldc_w '...' 
L47:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L50:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L53:    invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L56:    ldc '0.6' 
L58:    invokestatic Method [c1] new (Ljava/lang/String;)Lcom/thoughtworks/xstream/XStream; 
L61:    astore 10 
L63:    new java/lang/StringBuilder 
L66:    dup 
L67:    aload_0 
L68:    invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L71:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L74:    ldc_w '/descriptor.xml' 
L77:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L80:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L83:    astore 11 
L85:    aconst_null 
L86:    astore 12 
L88:    new java/util/ArrayList 
L91:    dup 
L92:    invokespecial Method java/util/ArrayList <init> ()V 
L95:    astore 13 
        .catch java/lang/Throwable from L97 to L137 using L140 
L97:    new java/io/FileInputStream 
L100:   dup 
L101:   new java/io/File 
L104:   dup 
L105:   aload 11 
L107:   invokespecial Method java/io/File <init> (Ljava/lang/String;)V 
L110:   invokespecial Method java/io/FileInputStream <init> (Ljava/io/File;)V 
L113:   astore 14 
L115:   aload 13 
L117:   aload 14 
L119:   invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L124:   pop 
L125:   aload 10 
L127:   aload 14 
L129:   invokevirtual Method com/thoughtworks/xstream/XStream fromXML (Ljava/io/InputStream;)Ljava/lang/Object; 
L132:   checkcast com/fs/starfarer/campaign/save/SaveGameData 
L135:   astore 12 
L137:   goto L465 

        .stack full 
            locals Object java/lang/String Object com/fs/starfarer/campaign/void Object com/fs/starfarer/campaign/CampaignEngine$o Integer Integer Object com/fs/starfarer/campaign/CampaignEngine Object java/lang/Thread Object java/io/InputStream Object java/lang/Throwable Object com/fs/starfarer/campaign/CampaignEngine Object com/thoughtworks/xstream/XStream Object java/lang/String Object com/fs/starfarer/campaign/save/SaveGameData Object java/util/List 
            stack Object java/lang/Throwable 
        .end stack 
L140:   astore 14 
L142:   getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L145:   new java/lang/StringBuilder 
L148:   dup 
L149:   ldc_w 'Error reading descriptor [' 
L152:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L155:   aload 11 
L157:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L160:   ldc_w ']' 
L163:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L166:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L169:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L172:   getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L175:   aload 14 
L177:   invokevirtual Method java/lang/Throwable getMessage ()Ljava/lang/String; 
L180:   aload 14 
L182:   invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;Ljava/lang/Throwable;)V 
L185:   new java/lang/StringBuilder 
L188:   dup 
L189:   aload 11 
L191:   invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L194:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L197:   ldc_w '.bak' 
L200:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L203:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L206:   astore 11 
L208:   getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L211:   new java/lang/StringBuilder 
L214:   dup 
L215:   ldc_w 'Trying backup descriptor [' 
L218:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L221:   aload 11 
L223:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L226:   ldc_w ']' 
L229:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L232:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L235:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
        .catch java/lang/Throwable from L238 to L278 using L281 
        .catch [0] from L97 to L421 using L421 
L238:   new java/io/FileInputStream 
L241:   dup 
L242:   new java/io/File 
L245:   dup 
L246:   aload 11 
L248:   invokespecial Method java/io/File <init> (Ljava/lang/String;)V 
L251:   invokespecial Method java/io/FileInputStream <init> (Ljava/io/File;)V 
L254:   astore 15 
L256:   aload 13 
L258:   aload 15 
L260:   invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L265:   pop 
L266:   aload 10 
L268:   aload 15 
L270:   invokevirtual Method com/thoughtworks/xstream/XStream fromXML (Ljava/io/InputStream;)Ljava/lang/Object; 
L273:   checkcast com/fs/starfarer/campaign/save/SaveGameData 
L276:   astore 12 
L278:   goto L465 

        .stack full 
            locals Object java/lang/String Object com/fs/starfarer/campaign/void Object com/fs/starfarer/campaign/CampaignEngine$o Integer Integer Object com/fs/starfarer/campaign/CampaignEngine Object java/lang/Thread Object java/io/InputStream Object java/lang/Throwable Object com/fs/starfarer/campaign/CampaignEngine Object com/thoughtworks/xstream/XStream Object java/lang/String Object com/fs/starfarer/campaign/save/SaveGameData Object java/util/List Object java/lang/Throwable 
            stack Object java/lang/Throwable 
        .end stack 
L281:   astore 15 
L283:   getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L286:   new java/lang/StringBuilder 
L289:   dup 
L290:   ldc_w 'Error reading descriptor [' 
L293:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L296:   aload 11 
L298:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L301:   ldc_w ']' 
L304:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L307:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L310:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L313:   getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L316:   aload 14 
L318:   invokevirtual Method java/lang/Throwable getMessage ()Ljava/lang/String; 
L321:   aload 14 
L323:   invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;Ljava/lang/Throwable;)V 
L326:   new java/lang/StringBuilder 
L329:   dup 
L330:   aload_0 
L331:   invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L334:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L337:   ldc_w '/descriptor.xml.inprogress' 
L340:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L343:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L346:   astore 11 
L348:   getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L351:   new java/lang/StringBuilder 
L354:   dup 
L355:   ldc_w 'Trying inprogress descriptor [' 
L358:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L361:   aload 11 
L363:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L366:   ldc_w ']' 
L369:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L372:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L375:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L378:   new java/io/FileInputStream 
L381:   dup 
L382:   new java/io/File 
L385:   dup 
L386:   aload 11 
L388:   invokespecial Method java/io/File <init> (Ljava/lang/String;)V 
L391:   invokespecial Method java/io/FileInputStream <init> (Ljava/io/File;)V 
L394:   astore 16 
L396:   aload 13 
L398:   aload 16 
L400:   invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L405:   pop 
L406:   aload 10 
L408:   aload 16 
L410:   invokevirtual Method com/thoughtworks/xstream/XStream fromXML (Ljava/io/InputStream;)Ljava/lang/Object; 
L413:   checkcast com/fs/starfarer/campaign/save/SaveGameData 
L416:   astore 12 
L418:   goto L465 

        .stack full 
            locals Object java/lang/String Object com/fs/starfarer/campaign/void Object com/fs/starfarer/campaign/CampaignEngine$o Integer Integer Object com/fs/starfarer/campaign/CampaignEngine Object java/lang/Thread Object java/io/InputStream Object java/lang/Throwable Object com/fs/starfarer/campaign/CampaignEngine Object com/thoughtworks/xstream/XStream Object java/lang/String Object com/fs/starfarer/campaign/save/SaveGameData Object java/util/List 
            stack Object java/lang/Throwable 
        .end stack 
L421:   astore 17 
L423:   aload 13 
L425:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L430:   astore 19 
L432:   goto L452 

        .stack full 
            locals Object java/lang/String Object com/fs/starfarer/campaign/void Object com/fs/starfarer/campaign/CampaignEngine$o Integer Integer Object com/fs/starfarer/campaign/CampaignEngine Object java/lang/Thread Object java/io/InputStream Object java/lang/Throwable Object com/fs/starfarer/campaign/CampaignEngine Object com/thoughtworks/xstream/XStream Object java/lang/String Object com/fs/starfarer/campaign/save/SaveGameData Object java/util/List Top Top Top Object java/lang/Throwable Top Object java/util/Iterator 
            stack 
        .end stack 
L435:   aload 19 
L437:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L442:   checkcast java/io/FileInputStream 
L445:   astore 18 
L447:   aload 18 
L449:   invokevirtual Method java/io/FileInputStream close ()V 

        .stack same 
L452:   aload 19 
L454:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L459:   ifne L435 
L462:   aload 17 
L464:   athrow 

        .stack full 
            locals Object java/lang/String Object com/fs/starfarer/campaign/void Object com/fs/starfarer/campaign/CampaignEngine$o Integer Integer Object com/fs/starfarer/campaign/CampaignEngine Object java/lang/Thread Object java/io/InputStream Object java/lang/Throwable Object com/fs/starfarer/campaign/CampaignEngine Object com/thoughtworks/xstream/XStream Object java/lang/String Object com/fs/starfarer/campaign/save/SaveGameData Object java/util/List 
            stack 
        .end stack 
L465:   aload 13 
L467:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L472:   astore 19 
L474:   goto L494 

        .stack full 
            locals Object java/lang/String Object com/fs/starfarer/campaign/void Object com/fs/starfarer/campaign/CampaignEngine$o Integer Integer Object com/fs/starfarer/campaign/CampaignEngine Object java/lang/Thread Object java/io/InputStream Object java/lang/Throwable Object com/fs/starfarer/campaign/CampaignEngine Object com/thoughtworks/xstream/XStream Object java/lang/String Object com/fs/starfarer/campaign/save/SaveGameData Object java/util/List Top Top Top Top Top Object java/util/Iterator 
            stack 
        .end stack 
L477:   aload 19 
L479:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L484:   checkcast java/io/FileInputStream 
L487:   astore 18 
L489:   aload 18 
L491:   invokevirtual Method java/io/FileInputStream close ()V 

        .stack same 
L494:   aload 19 
L496:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L501:   ifne L477 
L504:   aload 12 
L506:   invokevirtual Method com/fs/starfarer/campaign/save/SaveGameData getSaveFileVersion ()Ljava/lang/String; 
L509:   invokestatic Method [c1] new (Ljava/lang/String;)Lcom/thoughtworks/xstream/XStream; 
L512:   astore 10 
L514:   new java/lang/StringBuilder 
L517:   dup 
L518:   aload_0 
L519:   invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L522:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L525:   ldc_w '/campaign' 
L528:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L531:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L534:   astore 14 
L536:   aload 12 
L538:   invokevirtual Method com/fs/starfarer/campaign/save/SaveGameData isCompressed ()Z 
L541:   ifeq L570 
L544:   new java/lang/StringBuilder 
L547:   dup 
L548:   aload 14 
L550:   invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L553:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L556:   ldc_w '.zip' 
L559:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L562:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L565:   astore 14 
L567:   goto L593 

        .stack full 
            locals Object java/lang/String Object com/fs/starfarer/campaign/void Object com/fs/starfarer/campaign/CampaignEngine$o Integer Integer Object com/fs/starfarer/campaign/CampaignEngine Object java/lang/Thread Object java/io/InputStream Object java/lang/Throwable Object com/fs/starfarer/campaign/CampaignEngine Object com/thoughtworks/xstream/XStream Object java/lang/String Object com/fs/starfarer/campaign/save/SaveGameData Object java/util/List Object java/lang/String 
            stack 
        .end stack 
L570:   new java/lang/StringBuilder 
L573:   dup 
L574:   aload 14 
L576:   invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L579:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L582:   ldc_w '.xml' 
L585:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L588:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L591:   astore 14 

        .stack same 
L593:   iload_3 
L594:   ifeq L623 
L597:   new java/lang/StringBuilder 
L600:   dup 
L601:   aload 14 
L603:   invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L606:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L609:   ldc_w '.bak' 
L612:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L615:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L618:   astore 14 
L620:   goto L651 

        .stack same 
L623:   iload 4 
L625:   ifeq L651 
L628:   new java/lang/StringBuilder 
L631:   dup 
L632:   aload 14 
L634:   invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L637:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L640:   ldc_w '.inprogress' 
L643:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L646:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L649:   astore 14 
        .catch java/lang/Throwable from L651 to L655 using L658 

        .stack same 
L651:   iconst_0 
L652:   invokestatic Method org/lwjgl/opengl/Display setVSyncEnabled (Z)V 
L655:   goto L660 

        .stack stack_1 Object java/lang/Throwable 
L658:   astore 15 

        .stack same 
L660:   new com/fs/starfarer/campaign/save/B 
L663:   dup 
L664:   invokespecial Method com/fs/starfarer/campaign/save/B <init> ()V 
L667:   astore 15 
L669:   new com/fs/starfarer/util/oOoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 
L672:   dup 
L673:   aload 14 
L675:   aload 15 
L677:   invokespecial Method com/fs/starfarer/util/oOoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO <init> (Ljava/lang/String;Lcom/fs/starfarer/campaign/save/B;)V 
L680:   astore 7 
L682:   aload 7 
L684:   checkcast com/fs/starfarer/util/oOoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 
L687:   astore 16 
L689:   aload 16 
L691:   iconst_1 
L692:   invokevirtual Method com/fs/starfarer/util/oOoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 'super' (Z)V 
L695:   aload 12 
L697:   invokevirtual Method com/fs/starfarer/campaign/save/SaveGameData isCompressed ()Z 
L700:   ifeq L723 
L703:   new java/util/zip/ZipInputStream 
L706:   dup 
L707:   aload 7 
L709:   invokespecial Method java/util/zip/ZipInputStream <init> (Ljava/io/InputStream;)V 
L712:   astore 7 
L714:   aload 7 
L716:   checkcast java/util/zip/ZipInputStream 
L719:   invokevirtual Method java/util/zip/ZipInputStream getNextEntry ()Ljava/util/zip/ZipEntry; 
L722:   pop 

        .stack append Object com/fs/starfarer/campaign/save/B Object com/fs/starfarer/util/oOoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 
L723:   getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L726:   ldc_w 'Loading stage 2' 
L729:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L732:   iconst_1 
L733:   invokestatic Method com/fs/graphics/oOoO 'super' (Z)V 
L736:   getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L739:   ldc_w 'Loading stage 3' 
L742:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L745:   aload 10 
L747:   aload 7 
L749:   invokevirtual Method com/thoughtworks/xstream/XStream fromXML (Ljava/io/InputStream;)Ljava/lang/Object; 
L752:   checkcast com/fs/starfarer/campaign/CampaignEngine 
L755:   astore 5 
L757:   getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L760:   ldc_w 'Loading stage 4' 
L763:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L766:   iconst_0 
L767:   invokestatic Method com/fs/graphics/oOoO 'super' (Z)V 
L770:   getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L773:   ldc_w 'Loading stage 5' 
L776:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L779:   getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L782:   ldc_w 'Loading stage 6' 
L785:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L788:   aload 12 
L790:   invokevirtual Method com/fs/starfarer/campaign/save/SaveGameData isCompressed ()Z 
L793:   ifeq L813 
L796:   getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L799:   ldc_w 'Loading stage 7' 
L802:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L805:   aload 7 
L807:   checkcast java/util/zip/ZipInputStream 
L810:   invokevirtual Method java/util/zip/ZipInputStream closeEntry ()V 

        .stack same_extended 
L813:   getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L816:   ldc_w 'Loading stage 8' 
L819:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L822:   aload 7 
L824:   invokevirtual Method java/io/InputStream close ()V 
L827:   getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L830:   ldc_w 'Loading stage 9' 
L833:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L836:   aload 16 
L838:   invokevirtual Method com/fs/starfarer/util/oOoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 'Ó00000' ()V 
L841:   getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L844:   ldc_w 'Loading stage 10' 
L847:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
        .catch java/lang/Throwable from L850 to L856 using L859 
        .catch java/lang/Throwable from L23 to L870 using L873 
L850:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'float.super' ()Z 
L853:   invokestatic Method org/lwjgl/opengl/Display setVSyncEnabled (Z)V 
L856:   goto L861 

        .stack stack_1 Object java/lang/Throwable 
L859:   astore 17 

        .stack same 
L861:   getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L864:   ldc_w 'Finished loading' 
L867:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L870:   goto L1274 

        .stack full 
            locals Object java/lang/String Object com/fs/starfarer/campaign/void Object com/fs/starfarer/campaign/CampaignEngine$o Integer Integer Object com/fs/starfarer/campaign/CampaignEngine Object java/lang/Thread Object java/io/InputStream Object java/lang/Throwable Object com/fs/starfarer/campaign/CampaignEngine 
            stack Object java/lang/Throwable 
        .end stack 
L873:   astore 10 
L875:   aload 9 
L877:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine setInstance (Lcom/fs/starfarer/campaign/CampaignEngine;)V 
L880:   iconst_1 
L881:   putstatic Field [c1] 'ô00000' Z 
L884:   getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L887:   ldc_w 'Error loading' 
L890:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L893:   getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L896:   aload 10 
L898:   invokevirtual Method java/lang/Throwable getMessage ()Ljava/lang/String; 
L901:   aload 10 
L903:   invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;Ljava/lang/Throwable;)V 
L906:   aload 10 
L908:   astore 8 
L910:   getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L913:   ldc_w 'Loading stage 11' 
L916:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L919:   iconst_0 
L920:   invokestatic Method com/fs/graphics/oOoO 'super' (Z)V 
L923:   aload 7 
L925:   ifnull L960 
        .catch java/io/IOException from L928 to L942 using L945 
L928:   getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L931:   ldc_w 'Loading stage 12' 
L934:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L937:   aload 7 
L939:   invokevirtual Method java/io/InputStream close ()V 
L942:   goto L960 

        .stack stack_1_extended Object java/io/IOException 
L945:   astore 26 
L947:   getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L950:   aload 26 
L952:   invokevirtual Method java/io/IOException getMessage ()Ljava/lang/String; 
L955:   aload 26 
L957:   invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;Ljava/lang/Throwable;)V 

        .stack same 
L960:   aload 6 
L962:   ifnull L1452 
L965:   getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L968:   ldc_w 'Loading stage 13' 
L971:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
        .catch java/lang/InterruptedException from L974 to L997 using L1000 
L974:   getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L977:   ldc_w 'Loading stage 14' 
L980:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L983:   aload 6 
L985:   invokevirtual Method java/lang/Thread join ()V 
L988:   getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L991:   ldc_w 'Loading stage 15' 
L994:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L997:   goto L1015 

        .stack stack_1 Object java/lang/InterruptedException 
L1000:  astore 26 
L1002:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1005:  aload 26 
L1007:  invokevirtual Method java/lang/InterruptedException getMessage ()Ljava/lang/String; 
L1010:  aload 26 
L1012:  invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;Ljava/lang/Throwable;)V 
        .catch org/lwjgl/LWJGLException from L1015 to L1036 using L1039 
        .catch [0] from L23 to L910 using L1091 

        .stack same 
L1015:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1018:  ldc_w 'Loading stage 16' 
L1021:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1024:  invokestatic Method org/lwjgl/opengl/Display makeCurrent ()V 
L1027:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1030:  ldc_w 'Loading stage 17' 
L1033:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1036:  goto L1054 

        .stack stack_1 Object org/lwjgl/LWJGLException 
L1039:  astore 26 
L1041:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1044:  aload 26 
L1046:  invokevirtual Method org/lwjgl/LWJGLException getMessage ()Ljava/lang/String; 
L1049:  aload 26 
L1051:  invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;Ljava/lang/Throwable;)V 

        .stack same 
L1054:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1057:  ldc_w 'Loading stage 18' 
L1060:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1063:  invokestatic Method org/lwjgl/opengl/Display update ()V 
L1066:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1069:  ldc_w 'Loading stage 19' 
L1072:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1075:  invokestatic Method com/fs/starfarer/util/A/A Object ()Lcom/fs/starfarer/util/A/new; 
L1078:  pop 
L1079:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1082:  ldc_w 'Loading stage 20' 
L1085:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1088:  goto L1452 

        .stack stack_1 Object java/lang/Throwable 
L1091:  astore 25 
L1093:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1096:  ldc_w 'Loading stage 11' 
L1099:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1102:  iconst_0 
L1103:  invokestatic Method com/fs/graphics/oOoO 'super' (Z)V 
L1106:  aload 7 
L1108:  ifnull L1143 
        .catch java/io/IOException from L1111 to L1125 using L1128 
L1111:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1114:  ldc_w 'Loading stage 12' 
L1117:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1120:  aload 7 
L1122:  invokevirtual Method java/io/InputStream close ()V 
L1125:  goto L1143 

        .stack full 
            locals Object java/lang/String Object com/fs/starfarer/campaign/void Object com/fs/starfarer/campaign/CampaignEngine$o Integer Integer Object com/fs/starfarer/campaign/CampaignEngine Object java/lang/Thread Object java/io/InputStream Object java/lang/Throwable Object com/fs/starfarer/campaign/CampaignEngine Top Top Top Top Top Top Top Top Top Top Top Top Top Top Top Object java/lang/Throwable 
            stack Object java/io/IOException 
        .end stack 
L1128:  astore 26 
L1130:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1133:  aload 26 
L1135:  invokevirtual Method java/io/IOException getMessage ()Ljava/lang/String; 
L1138:  aload 26 
L1140:  invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;Ljava/lang/Throwable;)V 

        .stack same 
L1143:  aload 6 
L1145:  ifnull L1271 
L1148:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1151:  ldc_w 'Loading stage 13' 
L1154:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
        .catch java/lang/InterruptedException from L1157 to L1180 using L1183 
L1157:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1160:  ldc_w 'Loading stage 14' 
L1163:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1166:  aload 6 
L1168:  invokevirtual Method java/lang/Thread join ()V 
L1171:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1174:  ldc_w 'Loading stage 15' 
L1177:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1180:  goto L1198 

        .stack stack_1 Object java/lang/InterruptedException 
L1183:  astore 26 
L1185:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1188:  aload 26 
L1190:  invokevirtual Method java/lang/InterruptedException getMessage ()Ljava/lang/String; 
L1193:  aload 26 
L1195:  invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;Ljava/lang/Throwable;)V 
        .catch org/lwjgl/LWJGLException from L1198 to L1219 using L1222 

        .stack same 
L1198:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1201:  ldc_w 'Loading stage 16' 
L1204:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1207:  invokestatic Method org/lwjgl/opengl/Display makeCurrent ()V 
L1210:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1213:  ldc_w 'Loading stage 17' 
L1216:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1219:  goto L1237 

        .stack stack_1 Object org/lwjgl/LWJGLException 
L1222:  astore 26 
L1224:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1227:  aload 26 
L1229:  invokevirtual Method org/lwjgl/LWJGLException getMessage ()Ljava/lang/String; 
L1232:  aload 26 
L1234:  invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;Ljava/lang/Throwable;)V 

        .stack same 
L1237:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1240:  ldc_w 'Loading stage 18' 
L1243:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1246:  invokestatic Method org/lwjgl/opengl/Display update ()V 
L1249:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1252:  ldc_w 'Loading stage 19' 
L1255:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1258:  invokestatic Method com/fs/starfarer/util/A/A Object ()Lcom/fs/starfarer/util/A/new; 
L1261:  pop 
L1262:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1265:  ldc_w 'Loading stage 20' 
L1268:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 

        .stack same 
L1271:  aload 25 
L1273:  athrow 

        .stack full 
            locals Object java/lang/String Object com/fs/starfarer/campaign/void Object com/fs/starfarer/campaign/CampaignEngine$o Integer Integer Object com/fs/starfarer/campaign/CampaignEngine Object java/lang/Thread Object java/io/InputStream Object java/lang/Throwable Object com/fs/starfarer/campaign/CampaignEngine 
            stack 
        .end stack 
L1274:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1277:  ldc_w 'Loading stage 11' 
L1280:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1283:  iconst_0 
L1284:  invokestatic Method com/fs/graphics/oOoO 'super' (Z)V 
L1287:  aload 7 
L1289:  ifnull L1324 
        .catch java/io/IOException from L1292 to L1306 using L1309 
L1292:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1295:  ldc_w 'Loading stage 12' 
L1298:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1301:  aload 7 
L1303:  invokevirtual Method java/io/InputStream close ()V 
L1306:  goto L1324 

        .stack stack_1 Object java/io/IOException 
L1309:  astore 26 
L1311:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1314:  aload 26 
L1316:  invokevirtual Method java/io/IOException getMessage ()Ljava/lang/String; 
L1319:  aload 26 
L1321:  invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;Ljava/lang/Throwable;)V 

        .stack same 
L1324:  aload 6 
L1326:  ifnull L1452 
L1329:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1332:  ldc_w 'Loading stage 13' 
L1335:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
        .catch java/lang/InterruptedException from L1338 to L1361 using L1364 
L1338:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1341:  ldc_w 'Loading stage 14' 
L1344:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1347:  aload 6 
L1349:  invokevirtual Method java/lang/Thread join ()V 
L1352:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1355:  ldc_w 'Loading stage 15' 
L1358:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1361:  goto L1379 

        .stack stack_1 Object java/lang/InterruptedException 
L1364:  astore 26 
L1366:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1369:  aload 26 
L1371:  invokevirtual Method java/lang/InterruptedException getMessage ()Ljava/lang/String; 
L1374:  aload 26 
L1376:  invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;Ljava/lang/Throwable;)V 
        .catch org/lwjgl/LWJGLException from L1379 to L1400 using L1403 

        .stack same 
L1379:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1382:  ldc_w 'Loading stage 16' 
L1385:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1388:  invokestatic Method org/lwjgl/opengl/Display makeCurrent ()V 
L1391:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1394:  ldc_w 'Loading stage 17' 
L1397:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1400:  goto L1418 

        .stack stack_1 Object org/lwjgl/LWJGLException 
L1403:  astore 26 
L1405:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1408:  aload 26 
L1410:  invokevirtual Method org/lwjgl/LWJGLException getMessage ()Ljava/lang/String; 
L1413:  aload 26 
L1415:  invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;Ljava/lang/Throwable;)V 

        .stack same 
L1418:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1421:  ldc_w 'Loading stage 18' 
L1424:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1427:  invokestatic Method org/lwjgl/opengl/Display update ()V 
L1430:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1433:  ldc_w 'Loading stage 19' 
L1436:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1439:  invokestatic Method com/fs/starfarer/util/A/A Object ()Lcom/fs/starfarer/util/A/new; 
L1442:  pop 
L1443:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1446:  ldc_w 'Loading stage 20' 
L1449:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 

        .stack same 
L1452:  aload 8 
L1454:  ifnull L1541 
L1457:  iconst_0 
L1458:  putstatic Field com/fs/starfarer/api/Global LOADING_SAVE Z 
L1461:  iload_3 
L1462:  ifne L1487 
L1465:  iload 4 
L1467:  ifne L1487 
L1470:  aload_0 
L1471:  aload_1 
L1472:  aload_2 
L1473:  iconst_1 
L1474:  iconst_0 
L1475:  invokestatic Method [c1] o00000 (Ljava/lang/String;Lcom/fs/starfarer/campaign/void;Lcom/fs/starfarer/campaign/CampaignEngine$o;ZZ)Ljava/lang/String; 
L1478:  astore 10 
L1480:  aload 10 
L1482:  ifnonnull L1513 
L1485:  aconst_null 
L1486:  areturn 

        .stack same 
L1487:  iload_3 
L1488:  ifeq L1513 
L1491:  iload 4 
L1493:  ifne L1513 
L1496:  aload_0 
L1497:  aload_1 
L1498:  aload_2 
L1499:  iconst_0 
L1500:  iconst_1 
L1501:  invokestatic Method [c1] o00000 (Ljava/lang/String;Lcom/fs/starfarer/campaign/void;Lcom/fs/starfarer/campaign/CampaignEngine$o;ZZ)Ljava/lang/String; 
L1504:  astore 10 
L1506:  aload 10 
L1508:  ifnonnull L1513 
L1511:  aconst_null 
L1512:  areturn 

        .stack same 
L1513:  new java/lang/StringBuilder 
L1516:  dup 
L1517:  ldc_w 'Error loading game:\n\n' 
L1520:  invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L1523:  aload 8 
L1525:  invokevirtual Method java/lang/Throwable getMessage ()Ljava/lang/String; 
L1528:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L1531:  ldc_w "\nSee starsector.log for details.\n\nIt's possible that the save game is from an incompatible version, or was created with mods that are now disabled." 
L1534:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L1537:  invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L1540:  areturn 
        .catch java/io/IOException from L1541 to L1562 using L1565 
        .catch [0] from L1541 to L2250 using L2250 

        .stack same 
L1541:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1544:  ldc_w 'Loading stage 21' 
L1547:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1550:  invokestatic Method com/fs/graphics/oOoO 'Ó00000' ()V 
L1553:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1556:  ldc_w 'Loading stage 22' 
L1559:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1562:  goto L1580 

        .stack stack_1 Object java/io/IOException 
L1565:  astore 10 
L1567:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1570:  aload 10 
L1572:  invokevirtual Method java/io/IOException getMessage ()Ljava/lang/String; 
L1575:  aload 10 
L1577:  invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;Ljava/lang/Throwable;)V 

        .stack same 
L1580:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1583:  ldc_w 'Loading stage 23' 
L1586:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1589:  aload 5 
L1591:  aload_1 
L1592:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setListener (Lcom/fs/starfarer/campaign/void;)V 
L1595:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1598:  ldc_w 'Loading stage 24' 
L1601:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1604:  aload 5 
L1606:  aload_2 
L1607:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setCampaignUI (Lcom/fs/starfarer/campaign/CampaignEngine$o;)V 
L1610:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1613:  ldc_w 'Loading stage 25' 
L1616:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1619:  aload 5 
L1621:  invokestatic Method com/fs/starfarer/campaign/CampaignEngine setInstance (Lcom/fs/starfarer/campaign/CampaignEngine;)V 
L1624:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1627:  ldc_w 'Loading stage 26' 
L1630:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1633:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1636:  ldc_w 'Loading stage 27' 
L1639:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1642:  aload_2 
L1643:  aload 5 
L1645:  invokeinterface InterfaceMethod com/fs/starfarer/campaign/CampaignEngine$o setEngine (Lcom/fs/starfarer/campaign/CampaignEngine;)V 2 
L1650:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1653:  ldc_w 'Loading stage 28' 
L1656:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1659:  aload_2 
L1660:  invokeinterface InterfaceMethod com/fs/starfarer/campaign/CampaignEngine$o clearMessages ()V 1 
L1665:  aload_2 
L1666:  invokeinterface InterfaceMethod com/fs/starfarer/campaign/CampaignEngine$o resetViewOffset ()V 1 
L1671:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1674:  ldc_w 'Loading stage 29' 
L1677:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1680:  invokestatic Method com/fs/starfarer/api/impl/campaign/CoreLifecyclePluginImpl econPostSaveRestore ()V 
L1683:  aload 5 
L1685:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getEconomy ()Lcom/fs/starfarer/campaign/econ/Economy; 
L1688:  invokevirtual Method com/fs/starfarer/campaign/econ/Economy tripleStep ()V 
L1691:  aload 5 
L1693:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getEconomy ()Lcom/fs/starfarer/campaign/econ/Economy; 
L1696:  invokevirtual Method com/fs/starfarer/campaign/econ/Economy updateAllPrices ()V 
L1699:  aload 5 
L1701:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerStats ()Lcom/fs/starfarer/campaign/CharacterStats; 
L1704:  invokevirtual Method com/fs/starfarer/campaign/CharacterStats refreshCharacterStatsEffects ()V 
L1707:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1710:  ldc_w 'Loading stage 30' 
L1713:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1716:  aload_2 
L1717:  ifnull L1734 
L1720:  aload_2 
L1721:  invokeinterface InterfaceMethod com/fs/starfarer/campaign/CampaignEngine$o getMessageDisplay ()Lcom/fs/starfarer/api/campaign/MessageDisplayAPI; 1 
L1726:  ldc_w 'Game loaded' 
L1729:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/MessageDisplayAPI addMessage (Ljava/lang/String;)V 2 

        .stack same_extended 
L1734:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1737:  ldc_w 'Loading stage 31' 
L1740:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1743:  invokestatic Method com/fs/starfarer/launcher/ooOO 'Ó00000' ()Lcom/fs/starfarer/launcher/ooOO; 
L1746:  ldc_w 'continue' 
L1749:  aload_0 
L1750:  invokevirtual Method com/fs/starfarer/launcher/ooOO o00000 (Ljava/lang/String;Ljava/lang/String;)V 
L1753:  aload_0 
L1754:  putstatic Field [c1] 'Õ00000' Ljava/lang/String; 
L1757:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1760:  ldc_w 'Loading stage 32' 
L1763:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1766:  invokestatic Method com/fs/starfarer/launcher/ModManager getInstance ()Lcom/fs/starfarer/launcher/ModManager; 
L1769:  invokevirtual Method com/fs/starfarer/launcher/ModManager getEnabledMods ()Ljava/util/List; 
L1772:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L1777:  astore 11 
L1779:  goto L1807 

        .stack full 
            locals Object java/lang/String Object com/fs/starfarer/campaign/void Object com/fs/starfarer/campaign/CampaignEngine$o Integer Integer Object com/fs/starfarer/campaign/CampaignEngine Object java/lang/Thread Object java/io/InputStream Object java/lang/Throwable Object com/fs/starfarer/campaign/CampaignEngine Top Object java/util/Iterator 
            stack 
        .end stack 
L1782:  aload 11 
L1784:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L1789:  checkcast com/fs/starfarer/launcher/ModManager$ModSpec 
L1792:  astore 10 
L1794:  aload 5 
L1796:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getModAndPluginData ()Lcom/fs/starfarer/campaign/ModAndPluginData; 
L1799:  aload 10 
L1801:  invokevirtual Method com/fs/starfarer/launcher/ModManager$ModSpec getId ()Ljava/lang/String; 
L1804:  invokevirtual Method com/fs/starfarer/campaign/ModAndPluginData notifyRunningWithMod (Ljava/lang/String;)V 

        .stack same 
L1807:  aload 11 
L1809:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L1814:  ifne L1782 
L1817:  aload 5 
L1819:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getModAndPluginData ()Lcom/fs/starfarer/campaign/ModAndPluginData; 
L1822:  invokevirtual Method com/fs/starfarer/campaign/ModAndPluginData finishNotify ()V 
L1825:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L1828:  ldc_w 'Loading stage 33' 
L1831:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L1834:  invokestatic Method com/fs/starfarer/launcher/ModManager getInstance ()Lcom/fs/starfarer/launcher/ModManager; 
L1837:  invokevirtual Method com/fs/starfarer/launcher/ModManager getEnabledModPlugins ()Ljava/util/List; 
L1840:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L1845:  astore 11 
L1847:  goto L1870 

        .stack same 
L1850:  aload 11 
L1852:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L1857:  checkcast com/fs/starfarer/api/ModPlugin 
L1860:  astore 10 
L1862:  aload 10 
L1864:  iconst_0 
L1865:  invokeinterface InterfaceMethod com/fs/starfarer/api/ModPlugin onGameLoad (Z)V 2 

        .stack same 
L1870:  aload 11 
L1872:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L1877:  ifne L1850 
L1880:  invokestatic Method com/fs/starfarer/api/impl/campaign/CoreLifecyclePluginImpl econPostSaveRestore ()V 
L1883:  aload 5 
L1885:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getEconomy ()Lcom/fs/starfarer/campaign/econ/Economy; 
L1888:  invokevirtual Method com/fs/starfarer/campaign/econ/Economy tripleStep ()V 
L1891:  aload 5 
L1893:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getEconomy ()Lcom/fs/starfarer/campaign/econ/Economy; 
L1896:  invokevirtual Method com/fs/starfarer/campaign/econ/Economy updateAllPrices ()V 
L1899:  aload 5 
L1901:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getStarSystems ()Ljava/util/List; 
L1904:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L1909:  astore 11 
L1911:  goto L2007 

        .stack same 
L1914:  aload 11 
L1916:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L1921:  checkcast com/fs/starfarer/api/campaign/StarSystemAPI 
L1924:  astore 10 
L1926:  aload 10 
L1928:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/StarSystemAPI getType ()Lcom/fs/starfarer/api/impl/campaign/procgen/StarSystemGenerator$StarSystemType; 1 
L1933:  getstatic Field com/fs/starfarer/api/impl/campaign/procgen/StarSystemGenerator$StarSystemType DEEP_SPACE Lcom/fs/starfarer/api/impl/campaign/procgen/StarSystemGenerator$StarSystemType; 
L1936:  if_acmpeq L1952 
L1939:  aload 10 
L1941:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/StarSystemAPI getType ()Lcom/fs/starfarer/api/impl/campaign/procgen/StarSystemGenerator$StarSystemType; 1 
L1946:  getstatic Field com/fs/starfarer/api/impl/campaign/procgen/StarSystemGenerator$StarSystemType DEEP_SPACE_GAS_GIANT Lcom/fs/starfarer/api/impl/campaign/procgen/StarSystemGenerator$StarSystemType; 
L1949:  if_acmpne L2007 

        .stack full 
            locals Object java/lang/String Object com/fs/starfarer/campaign/void Object com/fs/starfarer/campaign/CampaignEngine$o Integer Integer Object com/fs/starfarer/campaign/CampaignEngine Object java/lang/Thread Object java/io/InputStream Object java/lang/Throwable Object com/fs/starfarer/campaign/CampaignEngine Object com/fs/starfarer/api/campaign/StarSystemAPI Object java/util/Iterator 
            stack 
        .end stack 
L1952:  aload 10 
L1954:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/StarSystemAPI getStar ()Lcom/fs/starfarer/api/campaign/PlanetAPI; 1 
L1959:  ifnull L2007 
L1962:  aload 10 
L1964:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/StarSystemAPI getStar ()Lcom/fs/starfarer/api/campaign/PlanetAPI; 1 
L1969:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/PlanetAPI isStar ()Z 1 
L1974:  ifeq L2007 
L1977:  aload 10 
L1979:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/StarSystemAPI getStar ()Lcom/fs/starfarer/api/campaign/PlanetAPI; 1 
L1984:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/PlanetAPI getSpec ()Lcom/fs/starfarer/api/campaign/PlanetSpecAPI; 1 
L1989:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/PlanetSpecAPI isNebulaCenter ()Z 1 
L1994:  ifne L2007 
L1997:  aload 10 
L1999:  getstatic Field com/fs/starfarer/api/impl/campaign/procgen/StarSystemGenerator$StarSystemType SINGLE Lcom/fs/starfarer/api/impl/campaign/procgen/StarSystemGenerator$StarSystemType; 
L2002:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/StarSystemAPI setType (Lcom/fs/starfarer/api/impl/campaign/procgen/StarSystemGenerator$StarSystemType;)V 2 

        .stack full 
            locals Object java/lang/String Object com/fs/starfarer/campaign/void Object com/fs/starfarer/campaign/CampaignEngine$o Integer Integer Object com/fs/starfarer/campaign/CampaignEngine Object java/lang/Thread Object java/io/InputStream Object java/lang/Throwable Object com/fs/starfarer/campaign/CampaignEngine Top Object java/util/Iterator 
            stack 
        .end stack 
L2007:  aload 11 
L2009:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L2014:  ifne L1914 
L2017:  invokestatic Method com/fs/starfarer/api/impl/campaign/intel/events/HostileActivityEventIntel get ()Lcom/fs/starfarer/api/impl/campaign/intel/events/HostileActivityEventIntel; 
L2020:  ifnull L2029 
L2023:  invokestatic Method com/fs/starfarer/api/impl/campaign/intel/events/HostileActivityEventIntel get ()Lcom/fs/starfarer/api/impl/campaign/intel/events/HostileActivityEventIntel; 
L2026:  invokevirtual Method com/fs/starfarer/api/impl/campaign/intel/events/HostileActivityEventIntel redoSetupIfNeeded ()V 

        .stack full 
            locals Object java/lang/String Object com/fs/starfarer/campaign/void Object com/fs/starfarer/campaign/CampaignEngine$o Integer Integer Object com/fs/starfarer/campaign/CampaignEngine Object java/lang/Thread Object java/io/InputStream Object java/lang/Throwable Object com/fs/starfarer/campaign/CampaignEngine 
            stack 
        .end stack 
L2029:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L2032:  ldc_w 'Loading stage 34' 
L2035:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L2038:  aload 5 
L2040:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine isPaused ()Z 
L2043:  istore 10 
L2045:  aload 5 
L2047:  iconst_0 
L2048:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setPaused (Z)V 
L2051:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L2054:  ldc_w 'Loading stage 35' 
L2057:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L2060:  aload 5 
L2062:  fconst_0 
L2063:  new com/fs/starfarer/util/A/new 
L2066:  dup 
L2067:  invokespecial Method com/fs/starfarer/util/A/new <init> ()V 
L2070:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine advance (FLcom/fs/starfarer/util/A/new;)V 
L2073:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L2076:  ldc_w 'Loading stage 36' 
L2079:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L2082:  aload 5 
L2084:  iload 10 
L2086:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setPaused (Z)V 
L2089:  aload 5 
L2091:  iconst_1 
L2092:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine setPaused (Z)V 
L2095:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L2098:  ldc_w 'Loading stage 37' 
L2101:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L2104:  aload 5 
L2106:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getCurrentLocation ()Lcom/fs/starfarer/campaign/BaseLocation; 
L2109:  fconst_1 
L2110:  new com/fs/starfarer/util/A/new 
L2113:  dup 
L2114:  invokespecial Method com/fs/starfarer/util/A/new <init> ()V 
L2117:  invokevirtual Method com/fs/starfarer/campaign/BaseLocation advanceEvenIfPaused (FLcom/fs/starfarer/util/A/new;)V 
L2120:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L2123:  ldc_w 'Loading stage 38' 
L2126:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L2129:  invokestatic Method com/fs/starfarer/D/return return ()V 
L2132:  getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L2135:  ldc_w 'Loading stage 39 - last' 
L2138:  invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L2141:  invokestatic Method java/lang/System gc ()V 
L2144:  invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L2147:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getCharacterData ()Lcom/fs/starfarer/campaign/PlayerCharacterData; 
L2150:  invokevirtual Method com/fs/starfarer/campaign/PlayerCharacterData getPerson ()Lcom/fs/starfarer/rpg/Person; 
L2153:  invokevirtual Method com/fs/starfarer/rpg/Person getStats ()Lcom/fs/starfarer/campaign/CharacterStats; 
L2156:  invokevirtual Method com/fs/starfarer/campaign/CharacterStats refreshCharacterStatsEffects ()V 
L2159:  invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L2162:  invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getPlayerFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L2165:  astore 11 
L2167:  aload 11 
L2169:  ifnull L2228 
L2172:  aload 11 
L2174:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getFleetData ()Lcom/fs/starfarer/api/campaign/FleetDataAPI; 1 
L2179:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/FleetDataAPI getMembersListCopy ()Ljava/util/List; 1 
L2184:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L2189:  astore 13 
L2191:  goto L2218 

        .stack full 
            locals Object java/lang/String Object com/fs/starfarer/campaign/void Object com/fs/starfarer/campaign/CampaignEngine$o Integer Integer Object com/fs/starfarer/campaign/CampaignEngine Object java/lang/Thread Object java/io/InputStream Object java/lang/Throwable Object com/fs/starfarer/campaign/CampaignEngine Integer Object com/fs/starfarer/api/campaign/CampaignFleetAPI Top Object java/util/Iterator 
            stack 
        .end stack 
L2194:  aload 13 
L2196:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L2201:  checkcast com/fs/starfarer/api/fleet/FleetMemberAPI 
L2204:  astore 12 
L2206:  aload 12 
L2208:  ifnull L2218 
L2211:  aload 12 
L2213:  invokeinterface InterfaceMethod com/fs/starfarer/api/fleet/FleetMemberAPI updateStats ()V 1 

        .stack same 
L2218:  aload 13 
L2220:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L2225:  ifne L2194 

        .stack full 
            locals Object java/lang/String Object com/fs/starfarer/campaign/void Object com/fs/starfarer/campaign/CampaignEngine$o Integer Integer Object com/fs/starfarer/campaign/CampaignEngine Object java/lang/Thread Object java/io/InputStream Object java/lang/Throwable Object com/fs/starfarer/campaign/CampaignEngine Integer Object com/fs/starfarer/api/campaign/CampaignFleetAPI 
            stack 
        .end stack 
L2228:  invokestatic Method com/fs/starfarer/api/Global getSector ()Lcom/fs/starfarer/api/campaign/SectorAPI; 
L2231:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/SectorAPI getEconomy ()Lcom/fs/starfarer/api/campaign/econ/EconomyAPI; 1 
L2236:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/econ/EconomyAPI doubleStep ()V 1 
L2241:  invokestatic Method java/lang/System currentTimeMillis ()J 
L2244:  invokestatic Method [c1] o00000 (J)V 
L2247:  goto L2259 

        .stack full 
            locals Object java/lang/String Object com/fs/starfarer/campaign/void Object com/fs/starfarer/campaign/CampaignEngine$o Integer Integer Object com/fs/starfarer/campaign/CampaignEngine Object java/lang/Thread Object java/io/InputStream Object java/lang/Throwable Object com/fs/starfarer/campaign/CampaignEngine 
            stack Object java/lang/Throwable 
        .end stack 
L2250:  astore 14 
L2252:  iconst_0 
L2253:  putstatic Field com/fs/starfarer/api/Global LOADING_SAVE Z 
L2256:  aload 14 
L2258:  athrow 

        .stack same 
L2259:  iconst_0 
L2260:  putstatic Field com/fs/starfarer/api/Global LOADING_SAVE Z 
L2263:  aconst_null 
L2264:  areturn 
L2265:  
    .end code 
.end method 

.method public static class : ()Z 
    .code stack 3 locals 0 
L0:     getstatic Field [c1] 'super' Ljava/lang/Boolean; 
L3:     ifnonnull L39 
L6:     invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'OÓ0000' ()Z 
L9:     ifeq L22 
L12:    iconst_0 
L13:    invokestatic Method java/lang/Boolean valueOf (Z)Ljava/lang/Boolean; 
L16:    putstatic Field [c1] 'super' Ljava/lang/Boolean; 
L19:    goto L39 

        .stack same 
L22:    invokestatic Method [c1] o00000 ()Z 
L25:    ifeq L32 
L28:    iconst_0 
L29:    goto L33 

        .stack same 
L32:    iconst_1 

        .stack stack_1 Integer 
L33:    invokestatic Method java/lang/Boolean valueOf (Z)Ljava/lang/Boolean; 
L36:    putstatic Field [c1] 'super' Ljava/lang/Boolean; 

        .stack same 
L39:    invokestatic Method com/fs/starfarer/launcher/ooOO 'Ó00000' ()Lcom/fs/starfarer/launcher/ooOO; 
L42:    ldc_w 'canSkipTutorial' 
L45:    iconst_0 
L46:    invokevirtual Method com/fs/starfarer/launcher/ooOO new (Ljava/lang/String;Z)Z 
L49:    ifeq L59 
L52:    iconst_0 
L53:    invokestatic Method java/lang/Boolean valueOf (Z)Ljava/lang/Boolean; 
L56:    putstatic Field [c1] 'super' Ljava/lang/Boolean; 

        .stack same 
L59:    getstatic Field [c1] 'super' Ljava/lang/Boolean; 
L62:    invokevirtual Method java/lang/Boolean booleanValue ()Z 
L65:    ireturn 
L66:    
    .end code 
.end method 

.method public static o00000 : ()Z 
    .code stack 4 locals 11 
L0:     new java/io/File 
L3:     dup 
L4:     invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'oÓ0000' ()Ljava/lang/String; 
L7:     invokespecial Method java/io/File <init> (Ljava/lang/String;)V 
L10:    astore_0 
L11:    ldc '0.6' 
L13:    invokestatic Method [c1] new (Ljava/lang/String;)Lcom/thoughtworks/xstream/XStream; 
L16:    astore_1 
L17:    new java/util/ArrayList 
L20:    dup 
L21:    invokespecial Method java/util/ArrayList <init> ()V 
L24:    astore_2 
L25:    aload_0 
L26:    invokevirtual Method java/io/File listFiles ()[Ljava/io/File; 
L29:    dup 
L30:    astore 6 
L32:    arraylength 
L33:    istore 5 
L35:    iconst_0 
L36:    istore 4 
L38:    goto L273 

        .stack full 
            locals Object java/io/File Object com/thoughtworks/xstream/XStream Object java/util/List Top Integer Integer Object [Ljava/io/File; 
            stack 
        .end stack 
L41:    aload 6 
L43:    iload 4 
L45:    aaload 
L46:    astore_3 
L47:    aload_3 
L48:    invokevirtual Method java/io/File isDirectory ()Z 
L51:    ifne L57 
L54:    goto L270 

        .stack full 
            locals Object java/io/File Object com/thoughtworks/xstream/XStream Object java/util/List Object java/io/File Integer Integer Object [Ljava/io/File; 
            stack 
        .end stack 
L57:    iconst_0 
L58:    istore 7 
L60:    goto L264 

        .stack append Integer 
L63:    new java/io/File 
L66:    dup 
L67:    aload_3 
L68:    ldc_w 'descriptor.xml' 
L71:    invokespecial Method java/io/File <init> (Ljava/io/File;Ljava/lang/String;)V 
L74:    astore 8 
L76:    iload 7 
L78:    iconst_1 
L79:    if_icmpne L95 
L82:    new java/io/File 
L85:    dup 
L86:    aload_3 
L87:    ldc_w 'descriptor.xml.bak' 
L90:    invokespecial Method java/io/File <init> (Ljava/io/File;Ljava/lang/String;)V 
L93:    astore 8 

        .stack append Object java/io/File 
L95:    iload 7 
L97:    iconst_2 
L98:    if_icmpne L114 
L101:   new java/io/File 
L104:   dup 
L105:   aload_3 
L106:   ldc_w 'descriptor.xml.inprogress' 
L109:   invokespecial Method java/io/File <init> (Ljava/io/File;Ljava/lang/String;)V 
L112:   astore 8 

        .stack same 
L114:   aload 8 
L116:   invokevirtual Method java/io/File exists ()Z 
L119:   ifeq L261 
L122:   aload 8 
L124:   invokevirtual Method java/io/File isDirectory ()Z 
L127:   ifeq L133 
L130:   goto L261 
        .catch com/thoughtworks/xstream/XStreamException from L133 to L205 using L208 
        .catch java/io/FileNotFoundException from L133 to L205 using L226 
        .catch java/io/IOException from L133 to L205 using L244 

        .stack same 
L133:   new java/io/FileInputStream 
L136:   dup 
L137:   aload 8 
L139:   invokespecial Method java/io/FileInputStream <init> (Ljava/io/File;)V 
L142:   astore 9 
L144:   getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L147:   new java/lang/StringBuilder 
L150:   dup 
L151:   ldc_w 'Reading save data from [' 
L154:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L157:   aload 8 
L159:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/Object;)Ljava/lang/StringBuilder; 
L162:   ldc_w ']' 
L165:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L168:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L171:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L174:   aload_1 
L175:   aload 9 
L177:   invokevirtual Method com/thoughtworks/xstream/XStream fromXML (Ljava/io/InputStream;)Ljava/lang/Object; 
L180:   checkcast com/fs/starfarer/campaign/save/SaveGameData 
L183:   astore 10 
L185:   aload 9 
L187:   invokevirtual Method java/io/FileInputStream close ()V 
L190:   aload 10 
L192:   aload_3 
L193:   invokevirtual Method com/fs/starfarer/campaign/save/SaveGameData setSaveDir (Ljava/io/File;)V 
L196:   aload_2 
L197:   aload 10 
L199:   invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L204:   pop 
L205:   goto L259 

        .stack stack_1_extended Object com/thoughtworks/xstream/XStreamException 
L208:   astore 9 
L210:   getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L213:   aload 9 
L215:   invokevirtual Method com/thoughtworks/xstream/XStreamException getMessage ()Ljava/lang/String; 
L218:   aload 9 
L220:   invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;Ljava/lang/Throwable;)V 
L223:   goto L259 

        .stack stack_1 Object java/io/FileNotFoundException 
L226:   astore 9 
L228:   getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L231:   aload 9 
L233:   invokevirtual Method java/io/FileNotFoundException getMessage ()Ljava/lang/String; 
L236:   aload 9 
L238:   invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;Ljava/lang/Throwable;)V 
L241:   goto L259 

        .stack stack_1 Object java/io/IOException 
L244:   astore 9 
L246:   getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L249:   aload 9 
L251:   invokevirtual Method java/io/IOException getMessage ()Ljava/lang/String; 
L254:   aload 9 
L256:   invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;Ljava/lang/Throwable;)V 

        .stack same 
L259:   iconst_1 
L260:   ireturn 

        .stack chop 1 
L261:   iinc 7 1 

        .stack same 
L264:   iload 7 
L266:   iconst_2 
L267:   if_icmplt L63 

        .stack full 
            locals Object java/io/File Object com/thoughtworks/xstream/XStream Object java/util/List Top Integer Integer Object [Ljava/io/File; 
            stack 
        .end stack 
L270:   iinc 4 1 

        .stack same 
L273:   iload 4 
L275:   iload 5 
L277:   if_icmplt L41 
L280:   iconst_0 
L281:   ireturn 
L282:   
    .end code 
.end method 

.method public static new : ()Ljava/util/List; 
    .signature ()Ljava/util/List<Lcom/fs/starfarer/campaign/save/SaveGameData;>; 
    .code stack 4 locals 12 
L0:     new java/io/File 
L3:     dup 
L4:     invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'oÓ0000' ()Ljava/lang/String; 
L7:     invokespecial Method java/io/File <init> (Ljava/lang/String;)V 
L10:    astore_0 
L11:    ldc '0.6' 
L13:    invokestatic Method [c1] new (Ljava/lang/String;)Lcom/thoughtworks/xstream/XStream; 
L16:    astore_1 
L17:    new java/util/ArrayList 
L20:    dup 
L21:    invokespecial Method java/util/ArrayList <init> ()V 
L24:    astore_2 
L25:    aload_0 
L26:    invokevirtual Method java/io/File listFiles ()[Ljava/io/File; 
L29:    dup 
L30:    astore 6 
L32:    arraylength 
L33:    istore 5 
L35:    iconst_0 
L36:    istore 4 
L38:    goto L331 

        .stack full 
            locals Object java/io/File Object com/thoughtworks/xstream/XStream Object java/util/List Top Integer Integer Object [Ljava/io/File; 
            stack 
        .end stack 
L41:    aload 6 
L43:    iload 4 
L45:    aaload 
L46:    astore_3 
L47:    aload_3 
L48:    invokevirtual Method java/io/File isDirectory ()Z 
L51:    ifne L57 
L54:    goto L328 

        .stack full 
            locals Object java/io/File Object com/thoughtworks/xstream/XStream Object java/util/List Object java/io/File Integer Integer Object [Ljava/io/File; 
            stack 
        .end stack 
L57:    iconst_0 
L58:    istore 7 
L60:    goto L322 

        .stack append Integer 
L63:    new java/io/File 
L66:    dup 
L67:    aload_3 
L68:    ldc_w 'descriptor.xml' 
L71:    invokespecial Method java/io/File <init> (Ljava/io/File;Ljava/lang/String;)V 
L74:    astore 8 
L76:    iload 7 
L78:    iconst_1 
L79:    if_icmpne L95 
L82:    new java/io/File 
L85:    dup 
L86:    aload_3 
L87:    ldc_w 'descriptor.xml.bak' 
L90:    invokespecial Method java/io/File <init> (Ljava/io/File;Ljava/lang/String;)V 
L93:    astore 8 

        .stack append Object java/io/File 
L95:    iload 7 
L97:    iconst_2 
L98:    if_icmpne L114 
L101:   new java/io/File 
L104:   dup 
L105:   aload_3 
L106:   ldc_w 'descriptor.xml.inprogress' 
L109:   invokespecial Method java/io/File <init> (Ljava/io/File;Ljava/lang/String;)V 
L112:   astore 8 

        .stack same 
L114:   aload 8 
L116:   invokevirtual Method java/io/File exists ()Z 
L119:   ifeq L319 
L122:   aload 8 
L124:   invokevirtual Method java/io/File isDirectory ()Z 
L127:   ifeq L133 
L130:   goto L319 
        .catch com/thoughtworks/xstream/XStreamException from L133 to L265 using L268 
        .catch java/io/FileNotFoundException from L133 to L265 using L286 
        .catch java/io/IOException from L133 to L265 using L304 

        .stack same 
L133:   new java/io/FileInputStream 
L136:   dup 
L137:   aload 8 
L139:   invokespecial Method java/io/FileInputStream <init> (Ljava/io/File;)V 
L142:   astore 9 
L144:   getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L147:   new java/lang/StringBuilder 
L150:   dup 
L151:   ldc_w 'Reading save data from [' 
L154:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L157:   aload 8 
L159:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/Object;)Ljava/lang/StringBuilder; 
L162:   ldc_w ']' 
L165:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L168:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L171:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L174:   aload_1 
L175:   aload 9 
L177:   invokevirtual Method com/thoughtworks/xstream/XStream fromXML (Ljava/io/InputStream;)Ljava/lang/Object; 
L180:   checkcast com/fs/starfarer/campaign/save/SaveGameData 
L183:   astore 10 
L185:   aload 9 
L187:   invokevirtual Method java/io/FileInputStream close ()V 
L190:   aload 10 
L192:   aload_3 
L193:   invokevirtual Method com/fs/starfarer/campaign/save/SaveGameData setSaveDir (Ljava/io/File;)V 
L196:   invokestatic Method com/fs/starfarer/api/Global getCurrentState ()Lcom/fs/starfarer/api/GameState; 
L199:   getstatic Field com/fs/starfarer/api/GameState CAMPAIGN Lcom/fs/starfarer/api/GameState; 
L202:   if_acmpne L256 
L205:   new java/lang/StringBuilder 
L208:   dup 
L209:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'oÓ0000' ()Ljava/lang/String; 
L212:   invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L215:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L218:   ldc_w '/' 
L221:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L224:   invokestatic Method com/fs/starfarer/campaign/CampaignEngine getInstance ()Lcom/fs/starfarer/campaign/CampaignEngine; 
L227:   invokevirtual Method com/fs/starfarer/campaign/CampaignEngine getSaveDirName ()Ljava/lang/String; 
L230:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L233:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L236:   astore 11 
L238:   aload 10 
L240:   new java/io/File 
L243:   dup 
L244:   aload 11 
L246:   invokespecial Method java/io/File <init> (Ljava/lang/String;)V 
L249:   aload_3 
L250:   invokevirtual Method java/io/File equals (Ljava/lang/Object;)Z 
L253:   invokevirtual Method com/fs/starfarer/campaign/save/SaveGameData setCurrent (Z)V 

        .stack append Object java/io/FileInputStream Object com/fs/starfarer/campaign/save/SaveGameData 
L256:   aload_2 
L257:   aload 10 
L259:   invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L264:   pop 
L265:   goto L328 

        .stack full 
            locals Object java/io/File Object com/thoughtworks/xstream/XStream Object java/util/List Object java/io/File Integer Integer Object [Ljava/io/File; Integer Object java/io/File 
            stack Object com/thoughtworks/xstream/XStreamException 
        .end stack 
L268:   astore 9 
L270:   getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L273:   aload 9 
L275:   invokevirtual Method com/thoughtworks/xstream/XStreamException getMessage ()Ljava/lang/String; 
L278:   aload 9 
L280:   invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;Ljava/lang/Throwable;)V 
L283:   goto L319 

        .stack stack_1 Object java/io/FileNotFoundException 
L286:   astore 9 
L288:   getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L291:   aload 9 
L293:   invokevirtual Method java/io/FileNotFoundException getMessage ()Ljava/lang/String; 
L296:   aload 9 
L298:   invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;Ljava/lang/Throwable;)V 
L301:   goto L319 

        .stack stack_1 Object java/io/IOException 
L304:   astore 9 
L306:   getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L309:   aload 9 
L311:   invokevirtual Method java/io/IOException getMessage ()Ljava/lang/String; 
L314:   aload 9 
L316:   invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;Ljava/lang/Throwable;)V 

        .stack chop 1 
L319:   iinc 7 1 

        .stack same 
L322:   iload 7 
L324:   iconst_3 
L325:   if_icmplt L63 

        .stack full 
            locals Object java/io/File Object com/thoughtworks/xstream/XStream Object java/util/List Top Integer Integer Object [Ljava/io/File; 
            stack 
        .end stack 
L328:   iinc 4 1 

        .stack same 
L331:   iload 4 
L333:   iload 5 
L335:   if_icmplt L41 
L338:   aload_2 
L339:   new com/fs/starfarer/campaign/save/CampaignGameManager$4 
L342:   dup 
L343:   invokespecial Method com/fs/starfarer/campaign/save/CampaignGameManager$4 <init> ()V 
L346:   invokestatic Method java/util/Collections sort (Ljava/util/List;Ljava/util/Comparator;)V 
L349:   aload_2 
L350:   areturn 
L351:   
    .end code 
.end method 

.method public static new : (Ljava/io/File;)V 
    .code stack 3 locals 7 
L0:     new java/io/File 
L3:     dup 
L4:     invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'oÓ0000' ()Ljava/lang/String; 
L7:     invokespecial Method java/io/File <init> (Ljava/lang/String;)V 
L10:    astore_1 
L11:    iconst_0 
L12:    istore_2 
L13:    aload_1 
L14:    invokevirtual Method java/io/File listFiles ()[Ljava/io/File; 
L17:    dup 
L18:    astore 6 
L20:    arraylength 
L21:    istore 5 
L23:    iconst_0 
L24:    istore 4 
L26:    goto L48 

        .stack full 
            locals Object java/io/File Object java/io/File Integer Top Integer Integer Object [Ljava/io/File; 
            stack 
        .end stack 
L29:    aload 6 
L31:    iload 4 
L33:    aaload 
L34:    astore_3 
L35:    aload_0 
L36:    aload_3 
L37:    invokevirtual Method java/io/File equals (Ljava/lang/Object;)Z 
L40:    ifeq L45 
L43:    iconst_1 
L44:    istore_2 

        .stack same 
L45:    iinc 4 1 

        .stack same 
L48:    iload 4 
L50:    iload 5 
L52:    if_icmplt L29 
L55:    iload_2 
L56:    ifne L60 
L59:    return 

        .stack full 
            locals Object java/io/File Object java/io/File Integer 
            stack 
        .end stack 
L60:    aload_0 
L61:    invokevirtual Method java/io/File listFiles ()[Ljava/io/File; 
L64:    dup 
L65:    astore 6 
L67:    arraylength 
L68:    istore 5 
L70:    iconst_0 
L71:    istore 4 
L73:    goto L194 

        .stack full 
            locals Object java/io/File Object java/io/File Integer Top Integer Integer Object [Ljava/io/File; 
            stack 
        .end stack 
L76:    aload 6 
L78:    iload 4 
L80:    aaload 
L81:    astore_3 
L82:    aload_3 
L83:    invokevirtual Method java/io/File getName ()Ljava/lang/String; 
L86:    ldc_w 'descriptor.xml' 
L89:    invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L92:    ifne L186 
L95:    aload_3 
L96:    invokevirtual Method java/io/File getName ()Ljava/lang/String; 
L99:    ldc_w 'descriptor.xml.bak' 
L102:   invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L105:   ifne L186 
L108:   aload_3 
L109:   invokevirtual Method java/io/File getName ()Ljava/lang/String; 
L112:   ldc_w 'descriptor.xml.inprogress' 
L115:   invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L118:   ifne L186 
L121:   aload_3 
L122:   invokevirtual Method java/io/File getName ()Ljava/lang/String; 
L125:   ldc_w 'campaign.xml' 
L128:   invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L131:   ifne L186 
L134:   aload_3 
L135:   invokevirtual Method java/io/File getName ()Ljava/lang/String; 
L138:   ldc_w 'campaign.xml.bak' 
L141:   invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L144:   ifne L186 
L147:   aload_3 
L148:   invokevirtual Method java/io/File getName ()Ljava/lang/String; 
L151:   ldc_w 'campaign.xml.inprogress' 
L154:   invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L157:   ifne L186 
L160:   aload_3 
L161:   invokevirtual Method java/io/File getName ()Ljava/lang/String; 
L164:   ldc_w 'campaign.zip' 
L167:   invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L170:   ifne L186 
L173:   aload_3 
L174:   invokevirtual Method java/io/File getName ()Ljava/lang/String; 
L177:   ldc_w 'campaign.zip.bak' 
L180:   invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L183:   ifeq L191 

        .stack full 
            locals Object java/io/File Object java/io/File Integer Object java/io/File Integer Integer Object [Ljava/io/File; 
            stack 
        .end stack 
L186:   aload_3 
L187:   invokevirtual Method java/io/File delete ()Z 
L190:   pop 

        .stack full 
            locals Object java/io/File Object java/io/File Integer Top Integer Integer Object [Ljava/io/File; 
            stack 
        .end stack 
L191:   iinc 4 1 

        .stack same 
L194:   iload 4 
L196:   iload 5 
L198:   if_icmplt L76 
L201:   aload_0 
L202:   invokevirtual Method java/io/File delete ()Z 
L205:   pop 
L206:   aload_0 
L207:   invokestatic Method com/fs/starfarer/campaign/CampaignState removeAutosaveSlot (Ljava/io/File;)V 
L210:   return 
L211:   
    .end code 
.end method 

.method public static new : (Ljava/lang/String;)Lcom/thoughtworks/xstream/XStream; 
    .code stack 6 locals 5 
L0:     getstatic Field [c1] String Lcom/thoughtworks/xstream/XStream; 
L3:     ifnull L10 
L6:     getstatic Field [c1] String Lcom/thoughtworks/xstream/XStream; 
L9:     areturn 

        .stack same 
L10:    new com/fs/starfarer/campaign/save/CampaignGameManager$6 
L13:    dup 
L14:    new com/fs/starfarer/campaign/save/CampaignGameManager$5 
L17:    dup 
L18:    invokespecial Method com/fs/starfarer/campaign/save/CampaignGameManager$5 <init> ()V 
L21:    invokespecial Method com/fs/starfarer/campaign/save/CampaignGameManager$6 <init> (Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;)V 
L24:    astore_1 
L25:    ldc_w '0.3' 
L28:    aload_0 
L29:    invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L32:    ifne L93 
L35:    aload_1 
L36:    sipush 1002 
L39:    invokevirtual Method com/thoughtworks/xstream/XStream setMode (I)V 
L42:    aload_1 
L43:    ldc_w 'ref' 
L46:    ldc_w 'reference' 
L49:    invokevirtual Method com/thoughtworks/xstream/XStream aliasSystemAttribute (Ljava/lang/String;Ljava/lang/String;)V 
L52:    aload_1 
L53:    ldc_w 'cl' 
L56:    ldc_w 'class' 
L59:    invokevirtual Method com/thoughtworks/xstream/XStream aliasSystemAttribute (Ljava/lang/String;Ljava/lang/String;)V 
L62:    aload_1 
L63:    ldc_w 'z' 
L66:    ldc_w 'id' 
L69:    invokevirtual Method com/thoughtworks/xstream/XStream aliasSystemAttribute (Ljava/lang/String;Ljava/lang/String;)V 
L72:    aload_1 
L73:    ldc_w 'defined-in' 
L76:    ldc_w 'd-i' 
L79:    invokevirtual Method com/thoughtworks/xstream/XStream aliasSystemAttribute (Ljava/lang/String;Ljava/lang/String;)V 
L82:    aload_1 
L83:    new com/fs/starfarer/campaign/save/N 
L86:    dup 
L87:    invokespecial Method com/fs/starfarer/campaign/save/N <init> ()V 
L90:    invokevirtual Method com/thoughtworks/xstream/XStream registerConverter (Lcom/thoughtworks/xstream/converters/Converter;)V 

        .stack append Object com/thoughtworks/xstream/XStream 
L93:    aload_1 
L94:    ldc_w 'planetFilterData' 
L97:    invokevirtual Method com/thoughtworks/xstream/XStream ignoreUnknownElements (Ljava/lang/String;)V 
L100:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'OÓ0000' ()Z 
L103:   ifeq L117 
L106:   aload_1 
L107:   new com/fs/starfarer/campaign/save/CampaignGameManager$o 
L110:   dup 
L111:   invokespecial Method com/fs/starfarer/campaign/save/CampaignGameManager$o <init> ()V 
L114:   invokevirtual Method com/thoughtworks/xstream/XStream registerConverter (Lcom/thoughtworks/xstream/converters/Converter;)V 

        .stack same 
L117:   aload_1 
L118:   new com/fs/starfarer/campaign/save/oO0O 
L121:   dup 
L122:   invokespecial Method com/fs/starfarer/campaign/save/oO0O <init> ()V 
L125:   invokevirtual Method com/thoughtworks/xstream/XStream registerConverter (Lcom/thoughtworks/xstream/converters/Converter;)V 
L128:   aload_1 
L129:   new com/fs/starfarer/campaign/save/E 
L132:   dup 
L133:   invokespecial Method com/fs/starfarer/campaign/save/E <init> ()V 
L136:   sipush 10000 
L139:   invokevirtual Method com/thoughtworks/xstream/XStream registerConverter (Lcom/thoughtworks/xstream/converters/Converter;I)V 
L142:   aload_1 
L143:   new com/fs/starfarer/campaign/save/ooOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 
L146:   dup 
L147:   invokespecial Method com/fs/starfarer/campaign/save/ooOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO <init> ()V 
L150:   sipush 10000 
L153:   invokevirtual Method com/thoughtworks/xstream/XStream registerConverter (Lcom/thoughtworks/xstream/converters/Converter;I)V 
L156:   aload_1 
L157:   new com/fs/starfarer/campaign/save/float 
L160:   dup 
L161:   invokespecial Method com/fs/starfarer/campaign/save/float <init> ()V 
L164:   sipush 10000 
L167:   invokevirtual Method com/thoughtworks/xstream/XStream registerConverter (Lcom/thoughtworks/xstream/converters/Converter;I)V 
L170:   aload_1 
L171:   new com/fs/starfarer/campaign/save/G 
L174:   dup 
L175:   invokespecial Method com/fs/starfarer/campaign/save/G <init> ()V 
L178:   sipush 10000 
L181:   invokevirtual Method com/thoughtworks/xstream/XStream registerConverter (Lcom/thoughtworks/xstream/converters/Converter;I)V 
L184:   aload_1 
L185:   new com/fs/starfarer/campaign/save/O 
L188:   dup 
L189:   aload_1 
L190:   invokevirtual Method com/thoughtworks/xstream/XStream getMapper ()Lcom/thoughtworks/xstream/mapper/Mapper; 
L193:   aload_1 
L194:   invokevirtual Method com/thoughtworks/xstream/XStream getReflectionProvider ()Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider; 
L197:   invokespecial Method com/fs/starfarer/campaign/save/O <init> (Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V 
L200:   invokevirtual Method com/thoughtworks/xstream/XStream registerConverter (Lcom/thoughtworks/xstream/converters/Converter;)V 
L203:   aload_1 
L204:   invokestatic Method com/fs/starfarer/loading/scripts/ScriptStore 'Ø00000' ()Lorg/codehaus/janino/JavaSourceClassLoader; 
L207:   invokevirtual Method com/thoughtworks/xstream/XStream setClassLoader (Ljava/lang/ClassLoader;)V 
L210:   iconst_1 
L211:   istore_2 
L212:   iload_2 
L213:   ifeq L10735 
L216:   aload_1 
L217:   ldc_w 'i-a' 
L220:   ldc_w Class [I 
L223:   invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L226:   aload_1 
L227:   ldc_w 'f-a' 
L230:   ldc_w Class [F 
L233:   invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L236:   aload_1 
L237:   ldc_w 'DNO' 
L240:   ldc_w Class com/fs/util/DoNotObfuscate 
L243:   invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L246:   aload_1 
L247:   ldc_w 'LayeredRenderer' 
L250:   ldc_w Class com/fs/graphics/LayeredRenderer 
L253:   invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L256:   aload_1 
L257:   ldc_w 'Sprite' 
L260:   ldc_w Class com/fs/graphics/Sprite 
L263:   invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L266:   aload_1 
L267:   ldc_w 'Fader' 
L270:   ldc_w Class com/fs/graphics/util/Fader 
L273:   invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L276:   aload_1 
L277:   ldc_w 'Fader.State' 
L280:   ldc_w Class com/fs/graphics/util/Fader$State 
L283:   invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L286:   aload_1 
L287:   ldc_w 'GLListToken' 
L290:   ldc_w Class com/fs/graphics/util/GLListManager$GLListToken 
L293:   invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L296:   aload_1 
L297:   ldc_w 'HullSize' 
L300:   ldc_w Class com/fs/starfarer/api/combat/ShipAPI$HullSize 
L303:   invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L306:   aload_1 
L307:   ldc_w 'FleetMemberType' 
L310:   ldc_w Class com/fs/starfarer/api/fleet/FleetMemberType 
L313:   invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L316:   aload_1 
L317:   ldc_w 'CampaignClock' 
L320:   ldc_w Class com/fs/starfarer/campaign/CampaignClock 
L323:   invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L326:   aload_1 
L327:   ldc_w 'CampaignEngine' 
L330:   ldc Class com/fs/starfarer/campaign/CampaignEngine 
L332:   invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L335:   aload_1 
L336:   ldc_w 'CaEnLa' 
L339:   ldc_w Class com/fs/starfarer/api/campaign/CampaignEngineLayers 
L342:   invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L345:   aload_1 
L346:   ldc_w 'Faction' 
L349:   ldc_w Class com/fs/starfarer/campaign/Faction 
L352:   invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L355:   aload_1 
L356:   ldc_w 'PlayerCharacterData' 
L359:   ldc Class com/fs/starfarer/campaign/PlayerCharacterData 
L361:   invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L364:   aload_1 
L365:   ldc_w 'CampaignFleetAI' 
L368:   ldc_w Class com/fs/starfarer/campaign/ai/CampaignFleetAI 
L371:   invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L374:   aload_1 
L375:   ldc_w 'MapFilterData' 
L378:   ldc_w Class com/fs/starfarer/api/ui/MapFilterData 
L381:   invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L384:   aload_1 
L385:   ldc_w 'SavedVariantData' 
L388:   ldc_w Class com/fs/starfarer/coreui/refit/auto/SavedVariantData 
L391:   invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L394:   aload_1 
L395:   ldc_w 'VarSet' 
L398:   ldc_w Class com/fs/starfarer/coreui/refit/auto/SavedVariantData$VariantSet 
L401:   invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L404:   aload_1 
L405:   ldc_w 'VarArray' 
L408:   ldc_w Class com/fs/starfarer/coreui/refit/auto/SavedVariantData$VariantArray 
L411:   invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L414:   aload_1 
L415:   ldc_w 'VarRes' 
L418:   ldc_w Class com/fs/starfarer/coreui/refit/auto/SavedVariantData$VariantResolver 
L421:   invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L424:   aload_1 
L425:   ldc_w 'MFAI' 
L428:   ldc_w Class com/fs/starfarer/campaign/ai/ModularFleetAI 
L431:   invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L434:   aload_1 
L435:   ldc_w Class com/fs/starfarer/campaign/ai/ModularFleetAI 
L438:   ldc_w 'navModule' 
L441:   ldc_w 'n' 
L444:   invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute (Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V 
L447:   aload_1 
L448:   ldc_w Class com/fs/starfarer/campaign/ai/ModularFleetAI 
L451:   ldc_w 'assignmentModule' 
L454:   ldc_w 'a' 
L457:   invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute (Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V 
L460:   aload_1 
L461:   ldc_w Class com/fs/starfarer/campaign/ai/ModularFleetAI 
L464:   ldc_w 'strategicModule' 
L467:   ldc_w 's' 
L470:   invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute (Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V 
L473:   aload_1 
L474:   ldc_w Class com/fs/starfarer/campaign/ai/ModularFleetAI 
L477:   ldc_w 'tacticalModule' 
L480:   ldc_w 't' 
L483:   invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute (Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V 
L486:   aload_1 
L487:   ldc_w Class com/fs/starfarer/campaign/ai/ModularFleetAI 
L490:   ldc_w 'fleet' 
L493:   ldc_w 'f' 
L496:   invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute (Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V 
L499:   aload_1 
L500:   ldc_w Class com/fs/starfarer/campaign/ai/ModularFleetAI 
L503:   ldc_w 'actionTextProvider' 
L506:   ldc_w 'aTP' 
L509:   invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute (Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V 
L512:   aload_1 
L513:   ldc_w 'GenericPluginManager' 
L516:   ldc_w Class com/fs/starfarer/campaign/GenericPluginManager 
L519:   invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L522:   aload_1 
L523:   ldc_w 'AMdl' 
L526:   ldc_w Class com/fs/starfarer/campaign/ai/AssignmentModule 
L529:   invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L532:   aload_1 
L533:   ldc_w Class com/fs/starfarer/campaign/ai/AssignmentModule 
L536:   ldc_w 'fleet' 
L539:   ldc_w 'f' 
L542:   invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute (Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V 
L545:   aload_1 
L546:   ldc_w Class com/fs/starfarer/campaign/ai/AssignmentModule 
L549:   ldc_w 'assignments' 
L552:   ldc_w 'a' 
L555:   invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute (Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V 
L558:   aload_1 
L559:   ldc_w 'NMdl' 
L562:   ldc_w Class com/fs/starfarer/campaign/ai/NavigationModule 
L565:   invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L568:   aload_1 
L569:   ldc_w Class com/fs/starfarer/campaign/ai/NavigationModule 
L572:   ldc_w 'destination' 
L575:   ldc_w 'd' 
L578:   invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute (Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V 
L581:   aload_1 
L582:   ldc_w Class com/fs/starfarer/campaign/ai/NavigationModule 
L585:   ldc_w 'clickLocation' 
L588:   ldc_w 'c' 
L591:   invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute (Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V 
L594:   aload_1 
L595:   ldc_w Class com/fs/starfarer/campaign/ai/NavigationModule 
L598:   ldc_w 'avoiding' 
L601:   ldc_w 'a' 
L604:   invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L607:   aload_1 
L608:   ldc_w Class com/fs/starfarer/campaign/ai/NavigationModule 
L611:   ldc_w 'fleet' 
L614:   ldc_w 'f' 
L617:   invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L620:   aload_1 
L621:   ldc_w Class com/fs/starfarer/campaign/ai/NavigationModule 
L624:   ldc_w 'hasDest' 
L627:   ldc_w 'hD' 
L630:   invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L633:   aload_1 
L634:   ldc_w 'ADat' 
L637:   ldc_w Class com/fs/starfarer/campaign/ai/NavigationModule$AvoidData 
L640:   invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L643:   aload_1 
L644:   ldc_w Class com/fs/starfarer/campaign/ai/NavigationModule$AvoidData 
L647:   ldc_w 'loc' 
L650:   ldc_w 'l' 
L653:   invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L656:   aload_1 
L657:   ldc_w Class com/fs/starfarer/campaign/ai/NavigationModule$AvoidData 
L660:   ldc_w 'entity' 
L663:   ldc_w 'e' 
L666:   invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L669:   aload_1 
L670:   ldc_w Class com/fs/starfarer/campaign/ai/NavigationModule$AvoidData 
L673:   ldc_w 'minRange' 
L676:   ldc_w 'min' 
L679:   invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L682:   aload_1 
L683:   ldc_w Class com/fs/starfarer/campaign/ai/NavigationModule$AvoidData 
L686:   ldc_w 'maxRange' 
L689:   ldc_w 'max' 
L692:   invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L695:   aload_1 
L696:   ldc_w Class com/fs/starfarer/campaign/ai/NavigationModule$AvoidData 
L699:   ldc_w 'containingLocation' 
L702:   ldc_w 'cL' 
L705:   invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L708:   aload_1 
L709:   ldc_w 'TacticalModule' 
L712:   ldc_w Class com/fs/starfarer/campaign/ai/TacticalModule 
L715:   invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L718:   aload_1 
L719:   ldc_w Class com/fs/starfarer/campaign/ai/TacticalModule 
L722:   ldc_w 'fleet' 
L725:   ldc_w 'f' 
L728:   invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L731:   aload_1 
L732:   ldc_w Class com/fs/starfarer/campaign/ai/TacticalModule 
L735:   ldc_w 'ai' 
L738:   ldc_w 'ai' 
L741:   invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L744:   aload_1 
L745:   ldc_w Class com/fs/starfarer/campaign/ai/TacticalModule 
L748:   ldc_w 'tracker' 
L751:   ldc_w 'tr' 
L754:   invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L757:   aload_1 
L758:   ldc_w Class com/fs/starfarer/campaign/ai/TacticalModule 
L761:   ldc_w 'travelDest' 
L764:   ldc_w 'tD' 
L767:   invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L770:   aload_1 
L771:   ldc_w Class com/fs/starfarer/campaign/ai/TacticalModule 
L774:   ldc_w 'priorityTarget' 
L777:   ldc_w 'pT' 
L780:   invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L783:   aload_1 
L784:   ldc_w Class com/fs/starfarer/campaign/ai/TacticalModule 
L787:   ldc_w 'travelDur' 
L790:   ldc_w 'trD' 
L793:   invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L796:   aload_1 
L797:   ldc_w Class com/fs/starfarer/campaign/ai/TacticalModule 
L800:   ldc_w 'targetDur' 
L803:   ldc_w 'taD' 
L806:   invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L809:   aload_1 
L810:   ldc_w Class com/fs/starfarer/campaign/ai/TacticalModule 
L813:   ldc_w 'target' 
L816:   ldc_w 't' 
L819:   invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L822:   aload_1 
L823:   ldc_w Class com/fs/starfarer/campaign/ai/TacticalModule 
L826:   ldc_w 'largestEnemy' 
L829:   ldc_w 'lE' 
L832:   invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L835:   aload_1 
L836:   ldc_w Class com/fs/starfarer/campaign/ai/TacticalModule 
L839:   ldc_w 'pursueDuration' 
L842:   ldc_w 'pD' 
L845:   invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L848:   aload_1 
L849:   ldc_w Class com/fs/starfarer/campaign/ai/TacticalModule 
L852:   ldc_w 'pursuitDays' 
L855:   ldc_w 'pDy' 
L858:   invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L861:   aload_1 
L862:   ldc_w Class com/fs/starfarer/campaign/ai/TacticalModule 
L865:   ldc_w 'beforeSearchPattern' 
L868:   ldc_w 'bSP' 
L871:   invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L874:   aload_1 
L875:   ldc_w Class com/fs/starfarer/campaign/ai/TacticalModule 
L878:   ldc_w 'plan' 
L881:   ldc_w 'jp' 
L884:   invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L887:   aload_1 
L888:   ldc_w Class com/fs/starfarer/campaign/ai/TacticalModule 
L891:   ldc_w 'followMode' 
L894:   ldc_w 'fM' 
L897:   invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L900:   aload_1 
L901:   ldc_w Class com/fs/starfarer/campaign/ai/TacticalModule 
L904:   ldc_w 'isFleeing' 
L907:   ldc_w 'iF' 
L910:   invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L913:   aload_1 
L914:   ldc_w Class com/fs/starfarer/campaign/ai/TacticalModule 
L917:   ldc_w 'isMaintainingContact' 
L920:   ldc_w 'iMC' 
L923:   invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L926:   aload_1 
L927:   ldc_w 'StrategicModule' 
L930:   ldc_w Class com/fs/starfarer/campaign/ai/StrategicModule 
L933:   invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L936:   aload_1 
L937:   ldc_w Class com/fs/starfarer/campaign/ai/StrategicModule 
L940:   ldc_w 'fleet' 
L943:   ldc_w 'f' 
L946:   invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L949:   aload_1 
L950:   ldc_w Class com/fs/starfarer/campaign/ai/StrategicModule 
L953:   ldc_w 'ai' 
L956:   ldc_w 'ai' 
L959:   invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L962:   aload_1 
L963:   ldc_w Class com/fs/starfarer/campaign/ai/StrategicModule 
L966:   ldc_w 'currJumpPlan' 
L969:   ldc_w 'cJP' 
L972:   invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L975:   aload_1 
L976:   ldc_w Class com/fs/starfarer/campaign/ai/StrategicModule 
L979:   ldc_w 'avoidTracker' 
L982:   ldc_w 'aT' 
L985:   invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L988:   aload_1 
L989:   ldc_w Class com/fs/starfarer/campaign/ai/StrategicModule 
L992:   ldc_w 'doNotAttack' 
L995:   ldc_w 'dNA' 
L998:   invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1001:  aload_1 
L1002:  ldc_w Class com/fs/starfarer/campaign/ai/StrategicModule 
L1005:  ldc_w 'recentlyStoppedPursuing' 
L1008:  ldc_w 'rSP' 
L1011:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1014:  aload_1 
L1015:  ldc_w 'Flt' 
L1018:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignFleet 
L1021:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L1024:  aload_1 
L1025:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignFleet 
L1028:  ldc_w 'stationMode' 
L1031:  ldc_w 'sM' 
L1034:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1037:  aload_1 
L1038:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignFleet 
L1041:  ldc_w 'nullAIActionText' 
L1044:  ldc_w 'nAAT' 
L1047:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1050:  aload_1 
L1051:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignFleet 
L1054:  ldc_w 'reportedSpawned' 
L1057:  ldc_w 'rS' 
L1060:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1063:  aload_1 
L1064:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignFleet 
L1067:  ldc_w 'fleetData' 
L1070:  ldc_w 'fD' 
L1073:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1076:  aload_1 
L1077:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignFleet 
L1080:  ldc_w 'moveDestination' 
L1083:  ldc_w 'mD' 
L1086:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1089:  aload_1 
L1090:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignFleet 
L1093:  ldc_w 'moveOverride' 
L1096:  ldc_w 'mO' 
L1099:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1102:  aload_1 
L1103:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignFleet 
L1106:  ldc_w 'noCombat' 
L1109:  ldc_w 'nC' 
L1112:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1115:  aload_1 
L1116:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignFleet 
L1119:  ldc_w 'fleetView' 
L1122:  ldc_w 'fV' 
L1125:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1128:  aload_1 
L1129:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignFleet 
L1132:  ldc_w 'facing' 
L1135:  ldc_w 'f' 
L1138:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1141:  aload_1 
L1142:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignFleet 
L1145:  ldc_w 'movementModule' 
L1148:  ldc_w 'mM' 
L1151:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1154:  aload_1 
L1155:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignFleet 
L1158:  ldc_w 'facingModule' 
L1161:  ldc_w 'fM' 
L1164:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1167:  aload_1 
L1168:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignFleet 
L1171:  ldc_w 'largestShipSize' 
L1174:  ldc_w 'lSS' 
L1177:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1180:  aload_1 
L1181:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignFleet 
L1184:  ldc_w 'name' 
L1187:  ldc_w 'n' 
L1190:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1193:  aload_1 
L1194:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignFleet 
L1197:  ldc_w 'stats' 
L1200:  ldc_w 's' 
L1203:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1206:  aload_1 
L1207:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignFleet 
L1210:  ldc_w 'interactionTarget' 
L1213:  ldc_w 'iT' 
L1216:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1219:  aload_1 
L1220:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignFleet 
L1223:  ldc_w 'accidentManager' 
L1226:  ldc_w 'aMg' 
L1229:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1232:  aload_1 
L1233:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignFleet 
L1236:  ldc_w 'logistics' 
L1239:  ldc_w 'lgst' 
L1242:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1245:  aload_1 
L1246:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignFleet 
L1249:  ldc_w 'isInJumpTransition' 
L1252:  ldc_w 'iIJT' 
L1255:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1258:  aload_1 
L1259:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignFleet 
L1262:  ldc_w 'inHyperspaceTransitionWarpOutStage' 
L1265:  ldc_w 'iHTWOS' 
L1268:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1271:  aload_1 
L1272:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignFleet 
L1275:  ldc_w 'aiMode' 
L1278:  ldc_w 'aM' 
L1281:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1284:  aload_1 
L1285:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignFleet 
L1288:  ldc_w 'noFactionInName' 
L1291:  ldc_w 'nFIN' 
L1294:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1297:  aload_1 
L1298:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignFleet 
L1301:  ldc_w 'battle' 
L1304:  ldc_w 'b' 
L1307:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1310:  aload_1 
L1311:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignFleet 
L1314:  ldc_w 'desiredFacing' 
L1317:  ldc_w 'dF' 
L1320:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1323:  aload_1 
L1324:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignFleet 
L1327:  ldc_w 'wasOutOfSupplies' 
L1330:  ldc_w 'wOOS' 
L1333:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1336:  aload_1 
L1337:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignFleet 
L1340:  ldc_w 'wasOutOfCrew' 
L1343:  ldc_w 'wOOC' 
L1346:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1349:  aload_1 
L1350:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignFleet 
L1353:  ldc_w 'noCombatPulse' 
L1356:  ldc_w 'nCP' 
L1359:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1362:  aload_1 
L1363:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignFleet 
L1366:  ldc_w 'despawnListeners' 
L1369:  ldc_w 'dL' 
L1372:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1375:  aload_1 
L1376:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignFleet 
L1379:  ldc_w 'fadeAndExpire' 
L1382:  ldc_w 'fAI' 
L1385:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1388:  aload_1 
L1389:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignFleet 
L1392:  ldc_w 'owner' 
L1395:  ldc_w 'o' 
L1398:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1401:  aload_1 
L1402:  ldc_w 'LMod' 
L1405:  ldc_w Class com/fs/starfarer/campaign/fleet/LogisticsModule 
L1408:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L1411:  aload_1 
L1412:  ldc_w Class com/fs/starfarer/campaign/fleet/LogisticsModule 
L1415:  ldc_w 'fleet' 
L1418:  ldc_w 'f' 
L1421:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1424:  aload_1 
L1425:  ldc_w 'CampaignFleetMemberView' 
L1428:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignFleetMemberView 
L1431:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L1434:  aload_1 
L1435:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignFleetMemberView 
L1438:  ldc_w 'fleet' 
L1441:  ldc_w 'f' 
L1444:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1447:  aload_1 
L1448:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignFleetMemberView 
L1451:  ldc_w 'member' 
L1454:  ldc_w 'm' 
L1457:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1460:  aload_1 
L1461:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignFleetMemberView 
L1464:  ldc_w 'fader' 
L1467:  ldc_w 'fa' 
L1470:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1473:  aload_1 
L1474:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignFleetMemberView 
L1477:  ldc_w 'originLoc' 
L1480:  ldc_w 'oL' 
L1483:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1486:  aload_1 
L1487:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignFleetMemberView 
L1490:  ldc_w 'originFacing' 
L1493:  ldc_w 'oF' 
L1496:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1499:  aload_1 
L1500:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignFleetMemberView 
L1503:  ldc_w 'desiredOffset' 
L1506:  ldc_w 'dO' 
L1509:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1512:  aload_1 
L1513:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignFleetMemberView 
L1516:  ldc_w 'turnRate' 
L1519:  ldc_w 'tR' 
L1522:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1525:  aload_1 
L1526:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignFleetMemberView 
L1529:  ldc_w 'maxTurnRate' 
L1532:  ldc_w 'mTR' 
L1535:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1538:  aload_1 
L1539:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignFleetMemberView 
L1542:  ldc_w 'moveSpeed' 
L1545:  ldc_w 'mS' 
L1548:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1551:  aload_1 
L1552:  ldc_w Class [u1358] 
L1555:  ldc_w 'movementModule' 
L1558:  ldc_w 'mM' 
L1561:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1564:  aload_1 
L1565:  ldc_w Class [u1358] 
L1568:  ldc_w 'scaleMult' 
L1571:  ldc_w 'sM' 
L1574:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1577:  aload_1 
L1578:  ldc_w Class [u1358] 
L1581:  ldc_w 'engineGlow' 
L1584:  ldc_w 'eG' 
L1587:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1590:  aload_1 
L1591:  ldc_w Class [u1358] 
L1594:  ldc_w 'shipSizeOrdinal' 
L1597:  ldc_w 'sSO' 
L1600:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1603:  aload_1 
L1604:  ldc_w Class [u1358] 
L1607:  ldc_w 'formation' 
L1610:  ldc_w 'frm' 
L1613:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1616:  aload_1 
L1617:  ldc_w Class [u1358] 
L1620:  ldc_w 'desiredFighterOffsets' 
L1623:  ldc_w 'dFO' 
L1626:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1629:  aload_1 
L1630:  ldc_w Class [u1358] 
L1633:  ldc_w 'fighterMovement' 
L1636:  ldc_w 'fM' 
L1639:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1642:  aload_1 
L1643:  ldc_w Class [u1358] 
L1646:  ldc_w 'facingModule' 
L1649:  ldc_w 'fMod' 
L1652:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1655:  aload_1 
L1656:  ldc_w Class [u1358] 
L1659:  ldc_w 'facing' 
L1662:  ldc_w 'facing' 
L1665:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1668:  aload_1 
L1669:  ldc_w Class [u1358] 
L1672:  ldc_w 'jitterFader' 
L1675:  ldc_w 'jF' 
L1678:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1681:  aload_1 
L1682:  ldc_w Class [u1358] 
L1685:  ldc_w 'jitterCopies' 
L1688:  ldc_w 'jC' 
L1691:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1694:  aload_1 
L1695:  ldc_w Class [u1358] 
L1698:  ldc_w 'maxJitterRange' 
L1701:  ldc_w 'mJR' 
L1704:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1707:  aload_1 
L1708:  ldc_w Class [u1358] 
L1711:  ldc_w 'jitterColor' 
L1714:  ldc_w 'jClr' 
L1717:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1720:  aload_1 
L1721:  ldc_w Class [u1358] 
L1724:  ldc_w 'jr' 
L1727:  ldc_w 'jr' 
L1730:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1733:  aload_1 
L1734:  ldc_w Class [u1358] 
L1737:  ldc_w 'engineColor' 
L1740:  ldc_w 'eC' 
L1743:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1746:  aload_1 
L1747:  ldc_w Class [u1358] 
L1750:  ldc_w 'engineWidthMult' 
L1753:  ldc_w 'eWM' 
L1756:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1759:  aload_1 
L1760:  ldc_w Class [u1358] 
L1763:  ldc_w 'engineHeightMult' 
L1766:  ldc_w 'eHM' 
L1769:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1772:  aload_1 
L1773:  ldc_w Class [u1358] 
L1776:  ldc_w 'engineGlowColor' 
L1779:  ldc_w 'eGC' 
L1782:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1785:  aload_1 
L1786:  ldc_w Class [u1358] 
L1789:  ldc_w 'engineGlowSizeMult' 
L1792:  ldc_w 'eGSM' 
L1795:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1798:  aload_1 
L1799:  ldc_w Class [u1358] 
L1802:  ldc_w 'contrailColor' 
L1805:  ldc_w 'cC' 
L1808:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1811:  aload_1 
L1812:  ldc_w Class [u1358] 
L1815:  ldc_w 'contrailWidthMult' 
L1818:  ldc_w 'cWM' 
L1821:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1824:  aload_1 
L1825:  ldc_w Class [u1358] 
L1828:  ldc_w 'contrailDurMult' 
L1831:  ldc_w 'cDM' 
L1834:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1837:  aload_1 
L1838:  ldc_w Class [u1358] 
L1841:  ldc_w 'glowColor' 
L1844:  ldc_w 'gC' 
L1847:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1850:  aload_1 
L1851:  ldc_w Class [u1358] 
L1854:  ldc_w 'windEffectColor' 
L1857:  ldc_w 'wEC' 
L1860:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1863:  aload_1 
L1864:  ldc_w Class [u1358] 
L1867:  ldc_w 'windEffectDirX' 
L1870:  ldc_w 'wEDX' 
L1873:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1876:  aload_1 
L1877:  ldc_w Class [u1358] 
L1880:  ldc_w 'windEffectDirY' 
L1883:  ldc_w 'wEDY' 
L1886:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1889:  aload_1 
L1890:  ldc_w Class [u1358] 
L1893:  ldc_w 'prevAngle' 
L1896:  ldc_w 'pAn' 
L1899:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1902:  aload_1 
L1903:  ldc_w Class [u1358] 
L1906:  ldc_w 'zero' 
L1909:  ldc_w 'zero' 
L1912:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1915:  aload_1 
L1916:  ldc_w Class [u1358] 
L1919:  ldc_w 'offsetOverridden' 
L1922:  ldc_w 'oOv' 
L1925:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1928:  aload_1 
L1929:  ldc_w Class [u1358] 
L1932:  ldc_w 'useLight' 
L1935:  ldc_w 'uLi' 
L1938:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1941:  aload_1 
L1942:  ldc_w Class [u1358] 
L1945:  ldc_w 'extraAlphaMult' 
L1948:  ldc_w 'eAM' 
L1951:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1954:  aload_1 
L1955:  ldc_w Class [u1358] 
L1958:  ldc_w 'windOffset' 
L1961:  ldc_w 'wOff' 
L1964:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1967:  aload_1 
L1968:  ldc_w 'ColorShifter' 
L1971:  ldc_w Class com/fs/starfarer/util/ColorShifter 
L1974:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L1977:  aload_1 
L1978:  ldc_w Class com/fs/starfarer/util/ColorShifter 
L1981:  ldc_w 'base' 
L1984:  ldc_w 'b' 
L1987:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L1990:  aload_1 
L1991:  ldc_w Class com/fs/starfarer/util/ColorShifter 
L1994:  ldc_w 'curr' 
L1997:  ldc_w 'c' 
L2000:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2003:  aload_1 
L2004:  ldc_w Class com/fs/starfarer/util/ColorShifter 
L2007:  ldc_w 'data' 
L2010:  ldc_w 'd' 
L2013:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2016:  aload_1 
L2017:  ldc_w 'CShiftData' 
L2020:  ldc_w Class com/fs/starfarer/util/ColorShifter$ShiftData 
L2023:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L2026:  aload_1 
L2027:  ldc_w Class com/fs/starfarer/util/ColorShifter$ShiftData 
L2030:  ldc_w 'to' 
L2033:  ldc_w 't' 
L2036:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2039:  aload_1 
L2040:  ldc_w Class com/fs/starfarer/util/ColorShifter$ShiftData 
L2043:  ldc_w 'fader' 
L2046:  ldc_w 'f' 
L2049:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2052:  aload_1 
L2053:  ldc_w Class com/fs/starfarer/util/ColorShifter$ShiftData 
L2056:  ldc_w 'fader' 
L2059:  ldc_w 's' 
L2062:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2065:  aload_1 
L2066:  ldc_w 'ValueShifter' 
L2069:  ldc_w Class com/fs/starfarer/util/ValueShifter 
L2072:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L2075:  aload_1 
L2076:  ldc_w Class com/fs/starfarer/util/ValueShifter 
L2079:  ldc_w 'base' 
L2082:  ldc_w 'b' 
L2085:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2088:  aload_1 
L2089:  ldc_w Class com/fs/starfarer/util/ValueShifter 
L2092:  ldc_w 'curr' 
L2095:  ldc_w 'c' 
L2098:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2101:  aload_1 
L2102:  ldc_w Class com/fs/starfarer/util/ValueShifter 
L2105:  ldc_w 'data' 
L2108:  ldc_w 'd' 
L2111:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2114:  aload_1 
L2115:  ldc_w 'VShiftData' 
L2118:  ldc_w Class com/fs/starfarer/util/ValueShifter$ShiftData 
L2121:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L2124:  aload_1 
L2125:  ldc_w Class com/fs/starfarer/util/ValueShifter$ShiftData 
L2128:  ldc_w 'to' 
L2131:  ldc_w 't' 
L2134:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2137:  aload_1 
L2138:  ldc_w Class com/fs/starfarer/util/ValueShifter$ShiftData 
L2141:  ldc_w 'fader' 
L2144:  ldc_w 'f' 
L2147:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2150:  aload_1 
L2151:  ldc_w Class com/fs/starfarer/util/ValueShifter$ShiftData 
L2154:  ldc_w 'shift' 
L2157:  ldc_w 's' 
L2160:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2163:  aload_1 
L2164:  ldc_w 'ColorShifter2' 
L2167:  ldc_w Class com/fs/starfarer/api/util/ColorShifterUtil 
L2170:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L2173:  aload_1 
L2174:  ldc_w Class com/fs/starfarer/api/util/ColorShifterUtil 
L2177:  ldc_w 'base' 
L2180:  ldc_w 'b' 
L2183:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2186:  aload_1 
L2187:  ldc_w Class com/fs/starfarer/api/util/ColorShifterUtil 
L2190:  ldc_w 'curr' 
L2193:  ldc_w 'c' 
L2196:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2199:  aload_1 
L2200:  ldc_w Class com/fs/starfarer/api/util/ColorShifterUtil 
L2203:  ldc_w 'data' 
L2206:  ldc_w 'd' 
L2209:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2212:  aload_1 
L2213:  ldc_w Class com/fs/starfarer/api/util/ColorShifterUtil 
L2216:  ldc_w 'useSquareOfProgress' 
L2219:  ldc_w 'u' 
L2222:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2225:  aload_1 
L2226:  ldc_w 'CShiftData2' 
L2229:  ldc_w Class com/fs/starfarer/api/util/ColorShifterUtil$ShiftData2 
L2232:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L2235:  aload_1 
L2236:  ldc_w Class com/fs/starfarer/api/util/ColorShifterUtil$ShiftData2 
L2239:  ldc_w 'to' 
L2242:  ldc_w 't' 
L2245:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2248:  aload_1 
L2249:  ldc_w Class com/fs/starfarer/api/util/ColorShifterUtil$ShiftData2 
L2252:  ldc_w 'fader' 
L2255:  ldc_w 'f' 
L2258:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2261:  aload_1 
L2262:  ldc_w Class com/fs/starfarer/api/util/ColorShifterUtil$ShiftData2 
L2265:  ldc_w 'fader' 
L2268:  ldc_w 's' 
L2271:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2274:  aload_1 
L2275:  ldc_w Class com/fs/starfarer/api/util/ColorShifterUtil$ShiftData2 
L2278:  ldc_w 'nudged' 
L2281:  ldc_w 'n' 
L2284:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2287:  aload_1 
L2288:  ldc_w 'ValueShifter2' 
L2291:  ldc_w Class com/fs/starfarer/api/util/ValueShifterUtil 
L2294:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L2297:  aload_1 
L2298:  ldc_w Class com/fs/starfarer/api/util/ValueShifterUtil 
L2301:  ldc_w 'base' 
L2304:  ldc_w 'b' 
L2307:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2310:  aload_1 
L2311:  ldc_w Class com/fs/starfarer/api/util/ValueShifterUtil 
L2314:  ldc_w 'curr' 
L2317:  ldc_w 'c' 
L2320:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2323:  aload_1 
L2324:  ldc_w Class com/fs/starfarer/api/util/ValueShifterUtil 
L2327:  ldc_w 'data' 
L2330:  ldc_w 'd' 
L2333:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2336:  aload_1 
L2337:  ldc_w Class com/fs/starfarer/api/util/ValueShifterUtil 
L2340:  ldc_w 'useSquareOfProgress' 
L2343:  ldc_w 'u' 
L2346:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2349:  aload_1 
L2350:  ldc_w 'VShiftData2' 
L2353:  ldc_w Class com/fs/starfarer/api/util/ValueShifterUtil$ShiftData2 
L2356:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L2359:  aload_1 
L2360:  ldc_w Class com/fs/starfarer/api/util/ValueShifterUtil$ShiftData2 
L2363:  ldc_w 'to' 
L2366:  ldc_w 't' 
L2369:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2372:  aload_1 
L2373:  ldc_w Class com/fs/starfarer/api/util/ValueShifterUtil$ShiftData2 
L2376:  ldc_w 'fader' 
L2379:  ldc_w 'f' 
L2382:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2385:  aload_1 
L2386:  ldc_w Class com/fs/starfarer/api/util/ValueShifterUtil$ShiftData2 
L2389:  ldc_w 'shift' 
L2392:  ldc_w 's' 
L2395:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2398:  aload_1 
L2399:  ldc_w Class com/fs/starfarer/api/util/ValueShifterUtil$ShiftData2 
L2402:  ldc_w 'nudged' 
L2405:  ldc_w 'n' 
L2408:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2411:  aload_1 
L2412:  ldc_w 'CampaignShipEngineGlow' 
L2415:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignShipEngineGlow 
L2418:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L2421:  aload_1 
L2422:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignShipEngineGlow 
L2425:  ldc_w 'lengthMult' 
L2428:  ldc_w 'lM' 
L2431:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2434:  aload_1 
L2435:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignShipEngineGlow 
L2438:  ldc_w 'member' 
L2441:  ldc_w 'm' 
L2444:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2447:  aload_1 
L2448:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignShipEngineGlow 
L2451:  ldc_w 'scaleMult' 
L2454:  ldc_w 'sM' 
L2457:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2460:  aload_1 
L2461:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignShipEngineGlow 
L2464:  ldc_w 'color' 
L2467:  ldc_w 'c' 
L2470:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2473:  aload_1 
L2474:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignShipEngineGlow 
L2477:  ldc_w 'contrailColor' 
L2480:  ldc_w 'cC' 
L2483:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2486:  aload_1 
L2487:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignShipEngineGlow 
L2490:  ldc_w 'slots' 
L2493:  ldc_w 's' 
L2496:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2499:  aload_1 
L2500:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignShipEngineGlow 
L2503:  ldc_w 'clusters' 
L2506:  ldc_w 'cl' 
L2509:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2512:  aload_1 
L2513:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignShipEngineGlow 
L2516:  ldc_w 'accelFader' 
L2519:  ldc_w 'aF' 
L2522:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2525:  aload_1 
L2526:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignShipEngineGlow 
L2529:  ldc_w 'fullFader' 
L2532:  ldc_w 'fF' 
L2535:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2538:  aload_1 
L2539:  ldc_w 'ESlotData' 
L2542:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignShipEngineGlow$SlotData 
L2545:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L2548:  aload_1 
L2549:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignShipEngineGlow$SlotData 
L2552:  ldc_w 'angle' 
L2555:  ldc_w 'a' 
L2558:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2561:  aload_1 
L2562:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignShipEngineGlow$SlotData 
L2565:  ldc_w 'baseLength' 
L2568:  ldc_w 'bL' 
L2571:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2574:  aload_1 
L2575:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignShipEngineGlow$SlotData 
L2578:  ldc_w 'glowSize' 
L2581:  ldc_w 'gS' 
L2584:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2587:  aload_1 
L2588:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignShipEngineGlow$SlotData 
L2591:  ldc_w 'width' 
L2594:  ldc_w 'w' 
L2597:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2600:  aload_1 
L2601:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignShipEngineGlow$SlotData 
L2604:  ldc_w 'weight' 
L2607:  ldc_w 'we' 
L2610:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2613:  aload_1 
L2614:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignShipEngineGlow$SlotData 
L2617:  ldc_w 'offset' 
L2620:  ldc_w 'o' 
L2623:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2626:  aload_1 
L2627:  ldc_w 'CampaignFleetView' 
L2630:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignFleetView 
L2633:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L2636:  aload_1 
L2637:  ldc_w 'CargoData' 
L2640:  ldc_w Class com/fs/starfarer/campaign/fleet/CargoData 
L2643:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L2646:  aload_1 
L2647:  ldc_w Class com/fs/starfarer/campaign/fleet/CargoData 
L2650:  ldc_w 'stacks' 
L2653:  ldc_w 's' 
L2656:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2659:  aload_1 
L2660:  ldc_w Class com/fs/starfarer/campaign/fleet/CargoData 
L2663:  ldc_w 'credits' 
L2666:  ldc_w 'c' 
L2669:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2672:  aload_1 
L2673:  ldc_w Class com/fs/starfarer/campaign/fleet/CargoData 
L2676:  ldc_w 'unlimitedStacks' 
L2679:  ldc_w 'uS' 
L2682:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2685:  aload_1 
L2686:  ldc_w Class com/fs/starfarer/campaign/fleet/CargoData 
L2689:  ldc_w 'maxCapacity' 
L2692:  ldc_w 'mC' 
L2695:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2698:  aload_1 
L2699:  ldc_w Class com/fs/starfarer/campaign/fleet/CargoData 
L2702:  ldc_w 'spaceUsed' 
L2705:  ldc_w 'sU' 
L2708:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2711:  aload_1 
L2712:  ldc_w Class com/fs/starfarer/campaign/fleet/CargoData 
L2715:  ldc_w 'maxFuel' 
L2718:  ldc_w 'mF' 
L2721:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2724:  aload_1 
L2725:  ldc_w Class com/fs/starfarer/campaign/fleet/CargoData 
L2728:  ldc_w 'maxPersonnel' 
L2731:  ldc_w 'mP' 
L2734:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2737:  aload_1 
L2738:  ldc_w Class com/fs/starfarer/campaign/fleet/CargoData 
L2741:  ldc_w 'carryingFleet' 
L2744:  ldc_w 'cF' 
L2747:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2750:  aload_1 
L2751:  ldc_w Class com/fs/starfarer/campaign/fleet/CargoData 
L2754:  ldc_w 'mothballedShips' 
L2757:  ldc_w 'mS' 
L2760:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2763:  aload_1 
L2764:  ldc_w Class com/fs/starfarer/campaign/fleet/CargoData 
L2767:  ldc_w 'freeTransfer' 
L2770:  ldc_w 'fT' 
L2773:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2776:  aload_1 
L2777:  ldc_w 'CrewComposition' 
L2780:  ldc_w Class com/fs/starfarer/campaign/fleet/CrewComposition 
L2783:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L2786:  aload_1 
L2787:  ldc_w 'FleetData' 
L2790:  ldc_w Class com/fs/starfarer/campaign/fleet/FleetData 
L2793:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L2796:  aload_1 
L2797:  ldc_w 'FleetMemberStatus' 
L2800:  ldc_w Class com/fs/starfarer/campaign/fleet/FleetMemberStatus 
L2803:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L2806:  aload_1 
L2807:  ldc_w 'SmoothMovementModule[]' 
L2810:  ldc_w Class [Lcom/fs/starfarer/campaign/fleet/SmoothMovementModule; 
L2813:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L2816:  aload_1 
L2817:  ldc_w 'SFMdl' 
L2820:  ldc_w Class com/fs/starfarer/campaign/fleet/SmoothFacingModule 
L2823:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L2826:  aload_1 
L2827:  ldc_w Class com/fs/starfarer/campaign/fleet/SmoothFacingModule 
L2830:  ldc_w 'turnAcceleration' 
L2833:  ldc_w 'a' 
L2836:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2839:  aload_1 
L2840:  ldc_w Class com/fs/starfarer/campaign/fleet/SmoothFacingModule 
L2843:  ldc_w 'maxTurnRate' 
L2846:  ldc_w 'm' 
L2849:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2852:  aload_1 
L2853:  ldc_w Class com/fs/starfarer/campaign/fleet/SmoothFacingModule 
L2856:  ldc_w 'turnRate' 
L2859:  ldc_w 'r' 
L2862:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2865:  aload_1 
L2866:  ldc_w Class com/fs/starfarer/campaign/fleet/SmoothFacingModule 
L2869:  ldc_w 'facing' 
L2872:  ldc_w 'f' 
L2875:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2878:  aload_1 
L2879:  ldc_w 'SMMdl' 
L2882:  ldc_w Class com/fs/starfarer/campaign/fleet/SmoothMovementModule 
L2885:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L2888:  aload_1 
L2889:  ldc_w Class com/fs/starfarer/campaign/fleet/SmoothMovementModule 
L2892:  ldc_w 'vel' 
L2895:  ldc_w 'v' 
L2898:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2901:  aload_1 
L2902:  ldc_w Class com/fs/starfarer/campaign/fleet/SmoothMovementModule 
L2905:  ldc_w 'loc' 
L2908:  ldc_w 'l' 
L2911:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2914:  aload_1 
L2915:  ldc_w Class com/fs/starfarer/campaign/fleet/SmoothMovementModule 
L2918:  ldc_w 'accel' 
L2921:  ldc_w 'aV' 
L2924:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2927:  aload_1 
L2928:  ldc_w Class com/fs/starfarer/campaign/fleet/SmoothMovementModule 
L2931:  ldc_w 'acceleration' 
L2934:  ldc_w 'a' 
L2937:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2940:  aload_1 
L2941:  ldc_w Class com/fs/starfarer/campaign/fleet/SmoothMovementModule 
L2944:  ldc_w 'maxSpeed' 
L2947:  ldc_w 's' 
L2950:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2953:  aload_1 
L2954:  ldc_w Class com/fs/starfarer/campaign/fleet/SmoothMovementModule 
L2957:  ldc_w 'delegate' 
L2960:  ldc_w 'd' 
L2963:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2966:  aload_1 
L2967:  ldc_w Class com/fs/starfarer/campaign/fleet/SmoothMovementModule 
L2970:  ldc_w 'smoothCap' 
L2973:  ldc_w 'sC' 
L2976:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L2979:  aload_1 
L2980:  ldc_w 'FMmbr' 
L2983:  ldc_w Class com/fs/starfarer/campaign/fleet/FleetMember 
L2986:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L2989:  aload_1 
L2990:  ldc_w Class com/fs/starfarer/campaign/fleet/FleetMember 
L2993:  ldc_w 'owner' 
L2996:  ldc_w 'o' 
L2999:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3002:  aload_1 
L3003:  ldc_w Class com/fs/starfarer/campaign/fleet/FleetMember 
L3006:  ldc_w 'specId' 
L3009:  ldc_w 'sid' 
L3012:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3015:  aload_1 
L3016:  ldc_w Class com/fs/starfarer/campaign/fleet/FleetMember 
L3019:  ldc_w 'shipName' 
L3022:  ldc_w 'sN' 
L3025:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3028:  aload_1 
L3029:  ldc_w Class com/fs/starfarer/campaign/fleet/FleetMember 
L3032:  ldc_w 'type' 
L3035:  ldc_w 't' 
L3038:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3041:  aload_1 
L3042:  ldc_w Class com/fs/starfarer/campaign/fleet/FleetMember 
L3045:  ldc_w 'isFlagship' 
L3048:  ldc_w 'iF' 
L3051:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3054:  aload_1 
L3055:  ldc_w Class com/fs/starfarer/campaign/fleet/FleetMember 
L3058:  ldc_w 'crewComposition' 
L3061:  ldc_w 'crew' 
L3064:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3067:  aload_1 
L3068:  ldc_w Class com/fs/starfarer/campaign/fleet/FleetMember 
L3071:  ldc_w 'repairTracker' 
L3074:  ldc_w 'rT' 
L3077:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3080:  aload_1 
L3081:  ldc_w Class com/fs/starfarer/campaign/fleet/RepairTracker 
L3084:  ldc_w 'crPriorToMothballing' 
L3087:  ldc_w 'crPTM' 
L3090:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3093:  aload_1 
L3094:  ldc_w Class com/fs/starfarer/campaign/fleet/RepairTracker 
L3097:  ldc_w 'suspendRepairs' 
L3100:  ldc_w 'sR' 
L3103:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3106:  aload_1 
L3107:  ldc_w Class com/fs/starfarer/campaign/fleet/RepairTracker 
L3110:  ldc_w 'losingCR' 
L3113:  ldc_w 'lCR' 
L3116:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3119:  aload_1 
L3120:  ldc_w Class com/fs/starfarer/campaign/fleet/RepairTracker 
L3123:  ldc_w 'mothballed' 
L3126:  ldc_w 'mo' 
L3129:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3132:  aload_1 
L3133:  ldc_w Class com/fs/starfarer/campaign/fleet/RepairTracker 
L3136:  ldc_w 'cr' 
L3139:  ldc_w 'cr' 
L3142:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3145:  aload_1 
L3146:  ldc_w Class com/fs/starfarer/campaign/fleet/RepairTracker 
L3149:  ldc_w 'member' 
L3152:  ldc_w 'm' 
L3155:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3158:  aload_1 
L3159:  ldc_w Class com/fs/starfarer/campaign/fleet/FleetMember 
L3162:  ldc_w 'statUpdateNeeded' 
L3165:  ldc_w 'sUN' 
L3168:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3171:  aload_1 
L3172:  ldc_w Class com/fs/starfarer/campaign/fleet/FleetMember 
L3175:  ldc_w 'civilian' 
L3178:  ldc_w 'civ' 
L3181:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3184:  aload_1 
L3185:  ldc_w Class com/fs/starfarer/campaign/fleet/FleetMember 
L3188:  ldc_w 'computedCivilian' 
L3191:  ldc_w 'cCiv' 
L3194:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3197:  aload_1 
L3198:  ldc_w Class com/fs/starfarer/campaign/fleet/FleetMember 
L3201:  ldc_w 'id' 
L3204:  ldc_w 'id' 
L3207:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3210:  aload_1 
L3211:  ldc_w Class com/fs/starfarer/campaign/fleet/FleetMember 
L3214:  ldc_w 'fleetData' 
L3217:  ldc_w 'fD' 
L3220:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3223:  aload_1 
L3224:  ldc_w Class com/fs/starfarer/campaign/fleet/FleetMember 
L3227:  ldc_w 'captain' 
L3230:  ldc_w 'c' 
L3233:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3236:  aload_1 
L3237:  ldc_w Class com/fs/starfarer/campaign/fleet/FleetMember 
L3240:  ldc_w 'stats' 
L3243:  ldc_w 's' 
L3246:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3249:  aload_1 
L3250:  ldc_w Class com/fs/starfarer/campaign/fleet/FleetData 
L3253:  ldc_w 'members' 
L3256:  ldc_w 'm' 
L3259:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3262:  aload_1 
L3263:  ldc_w Class com/fs/starfarer/campaign/fleet/FleetData 
L3266:  ldc_w 'namePrefix' 
L3269:  ldc_w 'nP' 
L3272:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3275:  aload_1 
L3276:  ldc_w Class com/fs/starfarer/campaign/fleet/FleetData 
L3279:  ldc_w 'nameSourceFactionId' 
L3282:  ldc_w 'nSf' 
L3285:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3288:  aload_1 
L3289:  ldc_w Class com/fs/starfarer/campaign/fleet/FleetData 
L3292:  ldc_w 'commander' 
L3295:  ldc_w 'c' 
L3298:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3301:  aload_1 
L3302:  ldc_w Class com/fs/starfarer/campaign/fleet/FleetData 
L3305:  ldc_w 'fleet' 
L3308:  ldc_w 'f' 
L3311:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3314:  aload_1 
L3315:  ldc_w Class com/fs/starfarer/campaign/fleet/FleetData 
L3318:  ldc_w 'officers' 
L3321:  ldc_w 'o' 
L3324:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3327:  aload_1 
L3328:  ldc_w Class com/fs/starfarer/campaign/fleet/FleetData 
L3331:  ldc_w 'needsSync' 
L3334:  ldc_w 'nS' 
L3337:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3340:  aload_1 
L3341:  ldc_w Class com/fs/starfarer/campaign/fleet/FleetData 
L3344:  ldc_w 'onlySyncMemberLists' 
L3347:  ldc_w 'oSML' 
L3350:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3353:  aload_1 
L3354:  ldc_w 'NoFuelDriftScript' 
L3357:  ldc_w Class com/fs/starfarer/campaign/fleet/NoFuelDriftScript 
L3360:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L3363:  aload_1 
L3364:  ldc_w 'CampaignEventManager' 
L3367:  ldc_w Class com/fs/starfarer/campaign/events/CampaignEventManager 
L3370:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L3373:  aload_1 
L3374:  ldc_w 'SaveGameData' 
L3377:  ldc_w Class com/fs/starfarer/campaign/save/SaveGameData 
L3380:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L3383:  aload_1 
L3384:  ldc_w 'CIStack' 
L3387:  ldc_w Class com/fs/starfarer/campaign/ui/trade/CargoItemStack 
L3390:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L3393:  aload_1 
L3394:  ldc_w Class com/fs/starfarer/campaign/ui/trade/CargoItemStack 
L3397:  ldc_w 'roundSize' 
L3400:  ldc_w 'rS' 
L3403:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3406:  aload_1 
L3407:  ldc_w Class com/fs/starfarer/campaign/ui/trade/CargoItemStack 
L3410:  ldc_w 'size' 
L3413:  ldc_w 's' 
L3416:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3419:  aload_1 
L3420:  ldc_w Class com/fs/starfarer/campaign/ui/trade/CargoItemStack 
L3423:  ldc_w 'maxSize' 
L3426:  ldc_w 'mS' 
L3429:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3432:  aload_1 
L3433:  ldc_w Class com/fs/starfarer/campaign/ui/trade/CargoItemStack 
L3436:  ldc_w 'cargoSpacePerUnit' 
L3439:  ldc_w 'cSPU' 
L3442:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3445:  aload_1 
L3446:  ldc_w Class com/fs/starfarer/campaign/ui/trade/CargoItemStack 
L3449:  ldc_w 'type' 
L3452:  ldc_w 't' 
L3455:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3458:  aload_1 
L3459:  ldc_w Class com/fs/starfarer/campaign/ui/trade/CargoItemStack 
L3462:  ldc_w 'data' 
L3465:  ldc_w 'd' 
L3468:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3471:  aload_1 
L3472:  ldc_w Class com/fs/starfarer/campaign/ui/trade/CargoItemStack 
L3475:  ldc_w 'cargo' 
L3478:  ldc_w 'c' 
L3481:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3484:  aload_1 
L3485:  ldc_w 'CargoItemType' 
L3488:  ldc_w Class [u691] 
L3491:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L3494:  aload_1 
L3495:  ldc_w 'MutableValue' 
L3498:  ldc_w Class com/fs/starfarer/api/util/MutableValue 
L3501:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L3504:  aload_1 
L3505:  ldc_w 'CollectionView' 
L3508:  ldc_w Class com/fs/starfarer/campaign/util/CollectionView 
L3511:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L3514:  aload_1 
L3515:  ldc_w 'CombatViewport' 
L3518:  ldc_w Class com/fs/starfarer/combat/CombatViewport 
L3521:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L3524:  aload_1 
L3525:  ldc_w 'FighterWingFormation' 
L3528:  ldc_w Class com/fs/starfarer/combat/ai/FighterWingFormation 
L3531:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L3534:  aload_1 
L3535:  ldc_w 'CombatTaskType' 
L3538:  ldc_w Class com/fs/starfarer/combat/tasks/CombatTask$CombatTaskType 
L3541:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L3544:  aload_1 
L3545:  ldc_w 'FullName' 
L3548:  ldc_w Class com/fs/starfarer/api/characters/FullName 
L3551:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L3554:  aload_1 
L3555:  ldc_w 'Gender' 
L3558:  ldc_w Class com/fs/starfarer/api/characters/FullName$Gender 
L3561:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L3564:  aload_1 
L3565:  ldc_w 'FormationType' 
L3568:  ldc_w Class com/fs/starfarer/api/loading/FormationType 
L3571:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L3574:  aload_1 
L3575:  ldc_w 'FastIterationClassifier' 
L3578:  ldc_w Class com/fs/util/container/repo/FastIterationClassifier 
L3581:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L3584:  aload_1 
L3585:  ldc_w 'ObjectRepository' 
L3588:  ldc_w Class com/fs/util/container/repo/ObjectRepository 
L3591:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L3594:  aload_1 
L3595:  ldc_w 'PersonImportance' 
L3598:  ldc_w Class com/fs/starfarer/api/campaign/PersonImportance 
L3601:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L3604:  aload_1 
L3605:  ldc_w 'Person' 
L3608:  ldc Class com/fs/starfarer/rpg/Person 
L3610:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L3613:  aload_1 
L3614:  ldc Class com/fs/starfarer/rpg/Person 
L3616:  ldc_w 'personalityId' 
L3619:  ldc_w 'pid' 
L3622:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3625:  aload_1 
L3626:  ldc Class com/fs/starfarer/rpg/Person 
L3628:  ldc_w 'portraitSprite' 
L3631:  ldc_w 'spr' 
L3634:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3637:  aload_1 
L3638:  ldc Class com/fs/starfarer/rpg/Person 
L3640:  ldc_w 'rankId' 
L3643:  ldc_w 'rnk' 
L3646:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3649:  aload_1 
L3650:  ldc Class com/fs/starfarer/rpg/Person 
L3652:  ldc_w 'postId' 
L3655:  ldc_w 'pst' 
L3658:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3661:  aload_1 
L3662:  ldc Class com/fs/starfarer/rpg/Person 
L3664:  ldc_w 'wantsToContactReasonsCount' 
L3667:  ldc_w 'wTCRC' 
L3670:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3673:  aload_1 
L3674:  ldc Class com/fs/starfarer/rpg/Person 
L3676:  ldc_w 'contactWeight' 
L3679:  ldc_w 'cW' 
L3682:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3685:  aload_1 
L3686:  ldc Class com/fs/starfarer/rpg/Person 
L3688:  ldc_w 'factionId' 
L3691:  ldc_w 'fid' 
L3694:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3697:  aload_1 
L3698:  ldc Class com/fs/starfarer/rpg/Person 
L3700:  ldc_w 'advanced' 
L3703:  ldc_w 'a' 
L3706:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3709:  aload_1 
L3710:  ldc Class com/fs/starfarer/rpg/Person 
L3712:  ldc_w 'id' 
L3715:  ldc_w 'id' 
L3718:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3721:  aload_1 
L3722:  ldc Class com/fs/starfarer/rpg/Person 
L3724:  ldc_w 'memory' 
L3727:  ldc_w 'm' 
L3730:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3733:  aload_1 
L3734:  ldc Class com/fs/starfarer/rpg/Person 
L3736:  ldc_w 'relToPlayer' 
L3739:  ldc_w 'rTP' 
L3742:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3745:  aload_1 
L3746:  ldc Class com/fs/starfarer/rpg/Person 
L3748:  ldc_w 'fleet' 
L3751:  ldc_w 'fl' 
L3754:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3757:  aload_1 
L3758:  ldc Class com/fs/starfarer/rpg/Person 
L3760:  ldc_w 'importance' 
L3763:  ldc_w 'im' 
L3766:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3769:  aload_1 
L3770:  ldc Class com/fs/starfarer/rpg/Person 
L3772:  ldc_w 'name' 
L3775:  ldc_w 'n' 
L3778:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3781:  aload_1 
L3782:  ldc_w Class com/fs/starfarer/api/characters/FullName 
L3785:  ldc_w 'first' 
L3788:  ldc_w 'f' 
L3791:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3794:  aload_1 
L3795:  ldc_w Class com/fs/starfarer/api/characters/FullName 
L3798:  ldc_w 'last' 
L3801:  ldc_w 'l' 
L3804:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3807:  aload_1 
L3808:  ldc_w Class com/fs/starfarer/api/characters/FullName 
L3811:  ldc_w 'gender' 
L3814:  ldc_w 'g' 
L3817:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3820:  aload_1 
L3821:  ldc_w 'CharacterStats' 
L3824:  ldc_w Class com/fs/starfarer/campaign/CharacterStats 
L3827:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L3830:  aload_1 
L3831:  ldc_w Class com/fs/starfarer/campaign/CharacterStats 
L3834:  ldc_w 'points' 
L3837:  ldc_w 'pt' 
L3840:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3843:  aload_1 
L3844:  ldc_w Class com/fs/starfarer/campaign/CharacterStats 
L3847:  ldc_w 'xp' 
L3850:  ldc_w 'xp' 
L3853:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3856:  aload_1 
L3857:  ldc_w Class com/fs/starfarer/campaign/CharacterStats 
L3860:  ldc_w 'level' 
L3863:  ldc_w 'l' 
L3866:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3869:  aload_1 
L3870:  ldc_w Class com/fs/starfarer/campaign/CharacterStats 
L3873:  ldc_w 'xpAtLastStoryPointGain' 
L3876:  ldc_w 'x2' 
L3879:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3882:  aload_1 
L3883:  ldc_w Class com/fs/starfarer/campaign/CharacterStats 
L3886:  ldc_w 'bonusXp' 
L3889:  ldc_w 'bx' 
L3892:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3895:  aload_1 
L3896:  ldc_w Class com/fs/starfarer/campaign/CharacterStats 
L3899:  ldc_w 'deferredBonusXp' 
L3902:  ldc_w 'db' 
L3905:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3908:  aload_1 
L3909:  ldc_w Class com/fs/starfarer/campaign/CharacterStats 
L3912:  ldc_w 'storyPoints' 
L3915:  ldc_w 'sp' 
L3918:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L3921:  aload_1 
L3922:  ldc_w 'CollectionItemView' 
L3925:  ldc_w Class com/fs/starfarer/campaign/util/CollectionItemView 
L3928:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L3931:  aload_1 
L3932:  ldc_w 'LayeredRenderable' 
L3935:  ldc_w Class com/fs/graphics/LayeredRenderable 
L3938:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L3941:  aload_1 
L3942:  ldc_w 'CargoAPI' 
L3945:  ldc_w Class com/fs/starfarer/api/campaign/CargoAPI 
L3948:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L3951:  aload_1 
L3952:  ldc_w 'CollectionViewDelegate' 
L3955:  ldc_w Class com/fs/starfarer/campaign/util/CollectionView$CollectionViewDelegate 
L3958:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L3961:  aload_1 
L3962:  ldc_w 'AI' 
L3965:  ldc_w Class com/fs/starfarer/combat/ai/AI 
L3968:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L3971:  aload_1 
L3972:  ldc_w 'Classifier' 
L3975:  ldc_w Class com/fs/util/container/repo/Classifier 
L3978:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L3981:  aload_1 
L3982:  ldc_w 'WeaponGroupType' 
L3985:  ldc_w Class com/fs/starfarer/api/loading/WeaponGroupType 
L3988:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L3991:  aload_1 
L3992:  ldc_w 'FighterWingSpec' 
L3995:  ldc_w Class com/fs/starfarer/loading/specs/FighterWingSpec 
L3998:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L4001:  aload_1 
L4002:  ldc_w 'VariantSource' 
L4005:  ldc_w Class com/fs/starfarer/api/loading/VariantSource 
L4008:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L4011:  aload_1 
L4012:  ldc_w 'WGSpec' 
L4015:  ldc_w Class com/fs/starfarer/api/loading/WeaponGroupSpec 
L4018:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L4021:  aload_1 
L4022:  ldc_w Class com/fs/starfarer/api/loading/WeaponGroupSpec 
L4025:  ldc_w 'type' 
L4028:  ldc_w 't' 
L4031:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4034:  aload_1 
L4035:  ldc_w Class com/fs/starfarer/api/loading/WeaponGroupSpec 
L4038:  ldc_w 'autofireOnByDefault' 
L4041:  ldc_w 'a' 
L4044:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4047:  aload_1 
L4048:  ldc_w Class com/fs/starfarer/api/loading/WeaponGroupSpec 
L4051:  ldc_w 'slots' 
L4054:  ldc_w 's' 
L4057:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4060:  aload_1 
L4061:  ldc_w 'HullVariantSpec' 
L4064:  ldc_w Class com/fs/starfarer/loading/specs/HullVariantSpec 
L4067:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L4070:  aload_1 
L4071:  ldc_w Class com/fs/starfarer/loading/specs/HullVariantSpec 
L4074:  ldc_w 'weapons' 
L4077:  ldc_w 'wpn' 
L4080:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4083:  aload_1 
L4084:  ldc_w Class com/fs/starfarer/loading/specs/HullVariantSpec 
L4087:  ldc_w 'stationModules' 
L4090:  ldc_w 'sM' 
L4093:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4096:  aload_1 
L4097:  ldc_w Class com/fs/starfarer/loading/specs/HullVariantSpec 
L4100:  ldc_w 'wings' 
L4103:  ldc_w 'wng' 
L4106:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4109:  aload_1 
L4110:  ldc_w Class com/fs/starfarer/loading/specs/HullVariantSpec 
L4113:  ldc_w 'weaponGroups' 
L4116:  ldc_w 'wG' 
L4119:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4122:  aload_1 
L4123:  ldc_w Class com/fs/starfarer/loading/specs/HullVariantSpec 
L4126:  ldc_w 'numFluxVents' 
L4129:  ldc_w 'v' 
L4132:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4135:  aload_1 
L4136:  ldc_w Class com/fs/starfarer/loading/specs/HullVariantSpec 
L4139:  ldc_w 'numFluxCapacitors' 
L4142:  ldc_w 'c' 
L4145:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4148:  aload_1 
L4149:  ldc_w Class com/fs/starfarer/loading/specs/HullVariantSpec 
L4152:  ldc_w 'hullMods' 
L4155:  ldc_w 'hM' 
L4158:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4161:  aload_1 
L4162:  ldc_w Class com/fs/starfarer/loading/specs/HullVariantSpec 
L4165:  ldc_w 'permaMods' 
L4168:  ldc_w 'pM' 
L4171:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4174:  aload_1 
L4175:  ldc_w Class com/fs/starfarer/loading/specs/HullVariantSpec 
L4178:  ldc_w 'suppressedMods' 
L4181:  ldc_w 'suM' 
L4184:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4187:  aload_1 
L4188:  ldc_w Class com/fs/starfarer/loading/specs/HullVariantSpec 
L4191:  ldc_w 'hullId' 
L4194:  ldc_w 'hId' 
L4197:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4200:  aload_1 
L4201:  ldc_w Class com/fs/starfarer/loading/specs/HullVariantSpec 
L4204:  ldc_w 'hullVariantId' 
L4207:  ldc_w 'hVId' 
L4210:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4213:  aload_1 
L4214:  ldc_w Class com/fs/starfarer/loading/specs/HullVariantSpec 
L4217:  ldc_w 'variantDisplayName' 
L4220:  ldc_w 'vDN' 
L4223:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4226:  aload_1 
L4227:  ldc_w Class com/fs/starfarer/loading/specs/HullVariantSpec 
L4230:  ldc_w 'source' 
L4233:  ldc_w 's' 
L4236:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4239:  aload_1 
L4240:  ldc_w Class com/fs/starfarer/loading/specs/HullVariantSpec 
L4243:  ldc_w 'mayAutoAssignWeapons' 
L4246:  ldc_w 'mAAW' 
L4249:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4252:  aload_1 
L4253:  ldc_w Class com/fs/starfarer/loading/specs/HullVariantSpec 
L4256:  ldc_w 'goalVariant' 
L4259:  ldc_w 'gV' 
L4262:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4265:  aload_1 
L4266:  ldc_w 'ShipStatus' 
L4269:  ldc_w Class com/fs/starfarer/campaign/fleet/FleetMemberStatus$ShipStatus 
L4272:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L4275:  aload_1 
L4276:  ldc_w Class com/fs/starfarer/campaign/fleet/FleetMemberStatus$ShipStatus 
L4279:  ldc_w 'hullFraction' 
L4282:  ldc_w 'hF' 
L4285:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4288:  aload_1 
L4289:  ldc_w Class com/fs/starfarer/campaign/fleet/FleetMemberStatus$ShipStatus 
L4292:  ldc_w 'armorCellFractions' 
L4295:  ldc_w 'aCF' 
L4298:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4301:  aload_1 
L4302:  ldc_w Class com/fs/starfarer/campaign/fleet/FleetMemberStatus$ShipStatus 
L4305:  ldc_w 'gridWidth' 
L4308:  ldc_w 'gW' 
L4311:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4314:  aload_1 
L4315:  ldc_w Class com/fs/starfarer/campaign/fleet/FleetMemberStatus$ShipStatus 
L4318:  ldc_w 'gridHeight' 
L4321:  ldc_w 'gH' 
L4324:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4327:  aload_1 
L4328:  ldc_w Class com/fs/starfarer/campaign/fleet/FleetMemberStatus$ShipStatus 
L4331:  ldc_w 'status' 
L4334:  ldc_w 's' 
L4337:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4340:  aload_1 
L4341:  ldc_w Class com/fs/starfarer/campaign/fleet/FleetMemberStatus$ShipStatus 
L4344:  ldc_w 'detached' 
L4347:  ldc_w 'd' 
L4350:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4353:  aload_1 
L4354:  ldc_w Class com/fs/starfarer/campaign/fleet/FleetMemberStatus$ShipStatus 
L4357:  ldc_w 'permaDetached' 
L4360:  ldc_w 'pD' 
L4363:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4366:  aload_1 
L4367:  ldc_w Class com/fs/starfarer/campaign/fleet/FleetMemberStatus$ShipStatus 
L4370:  ldc_w 'moduleSlotId' 
L4373:  ldc_w 'mSI' 
L4376:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4379:  aload_1 
L4380:  ldc_w 'FMStatus' 
L4383:  ldc_w Class com/fs/starfarer/campaign/fleet/FleetMemberStatus 
L4386:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L4389:  aload_1 
L4390:  ldc_w 'CampaignOrbitalStation' 
L4393:  ldc_w Class com/fs/starfarer/campaign/CampaignOrbitalStation 
L4396:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L4399:  aload_1 
L4400:  ldc_w 'Sstm' 
L4403:  ldc_w Class com/fs/starfarer/campaign/StarSystem 
L4406:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L4409:  aload_1 
L4410:  ldc_w 'Plnt' 
L4413:  ldc_w Class com/fs/starfarer/campaign/CampaignPlanet 
L4416:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L4419:  aload_1 
L4420:  ldc_w 'FADat' 
L4423:  ldc_w Class com/fs/starfarer/campaign/ai/CampaignFleetAI$FleetAssignmentData 
L4426:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L4429:  aload_1 
L4430:  ldc_w Class com/fs/starfarer/campaign/ai/CampaignFleetAI$FleetAssignmentData 
L4433:  ldc_w 'assignment' 
L4436:  ldc_w 'a' 
L4439:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4442:  aload_1 
L4443:  ldc_w Class com/fs/starfarer/campaign/ai/CampaignFleetAI$FleetAssignmentData 
L4446:  ldc_w 'target' 
L4449:  ldc_w 't' 
L4452:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4455:  aload_1 
L4456:  ldc_w Class com/fs/starfarer/campaign/ai/CampaignFleetAI$FleetAssignmentData 
L4459:  ldc_w 'maxDurationInDays' 
L4462:  ldc_w 'd' 
L4465:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4468:  aload_1 
L4469:  ldc_w Class com/fs/starfarer/campaign/ai/CampaignFleetAI$FleetAssignmentData 
L4472:  ldc_w 'elapsedDays' 
L4475:  ldc_w 'e' 
L4478:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4481:  aload_1 
L4482:  ldc_w Class com/fs/starfarer/campaign/ai/CampaignFleetAI$FleetAssignmentData 
L4485:  ldc_w 'actionText' 
L4488:  ldc_w 'aT' 
L4491:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4494:  aload_1 
L4495:  ldc_w Class com/fs/starfarer/campaign/ai/CampaignFleetAI$FleetAssignmentData 
L4498:  ldc_w 'onCompletion' 
L4501:  ldc_w 'oC' 
L4504:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4507:  aload_1 
L4508:  ldc_w Class com/fs/starfarer/campaign/ai/CampaignFleetAI$FleetAssignmentData 
L4511:  ldc_w 'onStart' 
L4514:  ldc_w 'oS' 
L4517:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4520:  aload_1 
L4521:  ldc_w Class com/fs/starfarer/campaign/ai/CampaignFleetAI$FleetAssignmentData 
L4524:  ldc_w 'addTimeToNext' 
L4527:  ldc_w 'aTN' 
L4530:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4533:  aload_1 
L4534:  ldc_w Class com/fs/starfarer/campaign/ai/CampaignFleetAI$FleetAssignmentData 
L4537:  ldc_w 'timeToAdd' 
L4540:  ldc_w 'ttA' 
L4543:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4546:  aload_1 
L4547:  ldc_w Class [u1447] 
L4550:  ldc_w 'custom' 
L4553:  ldc_w 'c' 
L4556:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4559:  aload_1 
L4560:  ldc_w 'PSDiff' 
L4563:  ldc_w Class com/fs/starfarer/loading/specs/PlanetSpec$PlanetSpecDiff 
L4566:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L4569:  aload_1 
L4570:  ldc_w 'PlanetSpec' 
L4573:  ldc_w Class com/fs/starfarer/loading/specs/PlanetSpec 
L4576:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L4579:  aload_1 
L4580:  ldc_w 'ITracker' 
L4583:  ldc_w Class com/fs/starfarer/util/IntervalTracker 
L4586:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L4589:  aload_1 
L4590:  ldc_w Class com/fs/starfarer/util/IntervalTracker 
L4593:  ldc_w 'minInterval' 
L4596:  ldc_w 'i' 
L4599:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4602:  aload_1 
L4603:  ldc_w Class com/fs/starfarer/util/IntervalTracker 
L4606:  ldc_w 'maxInterval' 
L4609:  ldc_w 'a' 
L4612:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4615:  aload_1 
L4616:  ldc_w Class com/fs/starfarer/util/IntervalTracker 
L4619:  ldc_w 'currInterval' 
L4622:  ldc_w 'c' 
L4625:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4628:  aload_1 
L4629:  ldc_w Class com/fs/starfarer/util/IntervalTracker 
L4632:  ldc_w 'elapsed' 
L4635:  ldc_w 'e' 
L4638:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4641:  aload_1 
L4642:  ldc_w Class com/fs/starfarer/util/IntervalTracker 
L4645:  ldc_w 'intervalElapsed' 
L4648:  ldc_w 'ie' 
L4651:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4654:  aload_1 
L4655:  ldc_w 'Animation' 
L4658:  ldc_w Class com/fs/graphics/anim/Animation 
L4661:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L4664:  aload_1 
L4665:  ldc_w 'TemporaryStatMod' 
L4668:  ldc_w Class com/fs/starfarer/campaign/fleet/MutableFleetStats$TemporaryStatMod 
L4671:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L4674:  aload_1 
L4675:  ldc_w Class com/fs/starfarer/campaign/fleet/MutableFleetStats 
L4678:  ldc_w 'accelerationMult' 
L4681:  ldc_w 'aM' 
L4684:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4687:  aload_1 
L4688:  ldc_w Class com/fs/starfarer/campaign/fleet/MutableFleetStats 
L4691:  ldc_w 'fuelUseHyperMult' 
L4694:  ldc_w 'fUHM' 
L4697:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4700:  aload_1 
L4701:  ldc_w Class com/fs/starfarer/campaign/fleet/MutableFleetStats 
L4704:  ldc_w 'fuelUseNormalMult' 
L4707:  ldc_w 'fUNM' 
L4710:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4713:  aload_1 
L4714:  ldc_w Class com/fs/starfarer/campaign/fleet/MutableFleetStats 
L4717:  ldc_w 'movementSpeedMod' 
L4720:  ldc_w 'mSM' 
L4723:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4726:  aload_1 
L4727:  ldc_w Class com/fs/starfarer/campaign/fleet/MutableFleetStats 
L4730:  ldc_w 'fleetwideMaxBurnMod' 
L4733:  ldc_w 'fMBM' 
L4736:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4739:  aload_1 
L4740:  ldc_w Class com/fs/starfarer/campaign/fleet/MutableFleetStats 
L4743:  ldc_w 'sensorStrengthMod' 
L4746:  ldc_w 'sSM' 
L4749:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4752:  aload_1 
L4753:  ldc_w Class com/fs/starfarer/campaign/fleet/MutableFleetStats 
L4756:  ldc_w 'sensorProfileMod' 
L4759:  ldc_w 'sPM' 
L4762:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4765:  aload_1 
L4766:  ldc_w Class com/fs/starfarer/campaign/fleet/MutableFleetStats 
L4769:  ldc_w 'sensorRangeMod' 
L4772:  ldc_w 'sRM' 
L4775:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4778:  aload_1 
L4779:  ldc_w Class com/fs/starfarer/campaign/fleet/MutableFleetStats 
L4782:  ldc_w 'detectedRangeMod' 
L4785:  ldc_w 'dRM' 
L4788:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4791:  aload_1 
L4792:  ldc_w 'Random' 
L4795:  ldc Class java/util/Random 
L4797:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L4800:  aload_1 
L4801:  ldc Class java/util/Random 
L4803:  ldc_w 'seed' 
L4806:  ldc_w 's' 
L4809:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4812:  aload_1 
L4813:  ldc Class java/util/Random 
L4815:  ldc_w 'nextNextGaussian' 
L4818:  ldc_w 'n' 
L4821:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4824:  aload_1 
L4825:  ldc Class java/util/Random 
L4827:  ldc_w 'haveNextNextGaussian' 
L4830:  ldc_w 'h' 
L4833:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4836:  aload_1 
L4837:  ldc_w 'Submarket' 
L4840:  ldc_w Class com/fs/starfarer/campaign/econ/Submarket 
L4843:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L4846:  aload_1 
L4847:  ldc_w Class com/fs/starfarer/campaign/econ/Submarket 
L4850:  ldc_w 'market' 
L4853:  ldc_w 'm' 
L4856:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4859:  aload_1 
L4860:  ldc_w Class com/fs/starfarer/campaign/econ/Submarket 
L4863:  ldc_w 'specId' 
L4866:  ldc_w 's' 
L4869:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4872:  aload_1 
L4873:  ldc_w Class com/fs/starfarer/campaign/econ/Submarket 
L4876:  ldc_w 'plugin' 
L4879:  ldc_w 'p' 
L4882:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4885:  aload_1 
L4886:  ldc_w Class com/fs/starfarer/campaign/econ/Submarket 
L4889:  ldc_w 'faction' 
L4892:  ldc_w 'f' 
L4895:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4898:  aload_1 
L4899:  ldc_w 'BaseSubmarketPlugin' 
L4902:  ldc_w Class com/fs/starfarer/api/impl/campaign/submarkets/BaseSubmarketPlugin 
L4905:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L4908:  aload_1 
L4909:  ldc_w Class com/fs/starfarer/api/impl/campaign/submarkets/BaseSubmarketPlugin 
L4912:  ldc_w 'market' 
L4915:  ldc_w 'm' 
L4918:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4921:  aload_1 
L4922:  ldc_w Class com/fs/starfarer/api/impl/campaign/submarkets/BaseSubmarketPlugin 
L4925:  ldc_w 'submarket' 
L4928:  ldc_w 's' 
L4931:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4934:  aload_1 
L4935:  ldc_w Class com/fs/starfarer/api/impl/campaign/submarkets/BaseSubmarketPlugin 
L4938:  ldc_w 'cargo' 
L4941:  ldc_w 'c' 
L4944:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4947:  aload_1 
L4948:  ldc_w Class com/fs/starfarer/api/impl/campaign/submarkets/BaseSubmarketPlugin 
L4951:  ldc_w 'minSWUpdateInterval' 
L4954:  ldc_w 'mSWUI' 
L4957:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4960:  aload_1 
L4961:  ldc_w Class com/fs/starfarer/api/impl/campaign/submarkets/BaseSubmarketPlugin 
L4964:  ldc_w 'sinceSWUpdate' 
L4967:  ldc_w 'msSWU' 
L4970:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4973:  aload_1 
L4974:  ldc_w Class com/fs/starfarer/api/impl/campaign/submarkets/BaseSubmarketPlugin 
L4977:  ldc_w 'sinceLastCargoUpdate' 
L4980:  ldc_w 'sLCU' 
L4983:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4986:  aload_1 
L4987:  ldc_w Class com/fs/starfarer/api/impl/campaign/submarkets/BaseSubmarketPlugin 
L4990:  ldc_w 'itemGenRandom' 
L4993:  ldc_w 'iGR' 
L4996:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L4999:  aload_1 
L5000:  ldc_w 'ShipSalesData' 
L5003:  ldc_w Class com/fs/starfarer/api/impl/campaign/submarkets/BaseSubmarketPlugin$ShipSalesData 
L5006:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L5009:  aload_1 
L5010:  ldc_w Class com/fs/starfarer/api/impl/campaign/submarkets/BaseSubmarketPlugin$ShipSalesData 
L5013:  ldc_w 'variantId' 
L5016:  ldc_w 'v' 
L5019:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5022:  aload_1 
L5023:  ldc_w Class com/fs/starfarer/api/impl/campaign/submarkets/BaseSubmarketPlugin$ShipSalesData 
L5026:  ldc_w 'numShips' 
L5029:  ldc_w 'nS' 
L5032:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5035:  aload_1 
L5036:  ldc_w Class com/fs/starfarer/api/impl/campaign/submarkets/BaseSubmarketPlugin$ShipSalesData 
L5039:  ldc_w 'totalValue' 
L5042:  ldc_w 'tV' 
L5045:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5048:  aload_1 
L5049:  ldc_w 'StoragePlugin' 
L5052:  ldc_w Class com/fs/starfarer/api/impl/campaign/submarkets/StoragePlugin 
L5055:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L5058:  aload_1 
L5059:  ldc_w Class com/fs/starfarer/api/impl/campaign/submarkets/StoragePlugin 
L5062:  ldc_w 'playerPaidToUnlock' 
L5065:  ldc_w 'paid' 
L5068:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5071:  aload_1 
L5072:  ldc_w 'MilitarySubmarketPlugin' 
L5075:  ldc_w Class com/fs/starfarer/api/impl/campaign/submarkets/MilitarySubmarketPlugin 
L5078:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L5081:  aload_1 
L5082:  ldc_w Class com/fs/starfarer/api/impl/campaign/submarkets/MilitarySubmarketPlugin 
L5085:  ldc_w 'minStanding' 
L5088:  ldc_w 'mS' 
L5091:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5094:  aload_1 
L5095:  ldc_w Class com/fs/starfarer/campaign/fleet/MutableFleetStats 
L5098:  ldc_w 'tempMods' 
L5101:  ldc_w 'tempMod' 
L5104:  ldc_w Class com/fs/starfarer/campaign/fleet/MutableFleetStats$TemporaryStatMod 
L5107:  ldc_w 'source' 
L5110:  invokevirtual Method com/thoughtworks/xstream/XStream addImplicitMap (Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V 
L5113:  aload_1 
L5114:  ldc_w Class com/fs/starfarer/campaign/fleet/MutableMarketStats 
L5117:  ldc_w 'tempMods' 
L5120:  ldc_w 'tempMod' 
L5123:  ldc_w Class com/fs/starfarer/campaign/fleet/MutableMarketStats$TemporaryStatMod 
L5126:  ldc_w 'source' 
L5129:  invokevirtual Method com/thoughtworks/xstream/XStream addImplicitMap (Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V 
L5132:  aload_1 
L5133:  ldc_w 'AccidentManager' 
L5136:  ldc_w Class com/fs/starfarer/campaign/accidents/AccidentManager 
L5139:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L5142:  aload_1 
L5143:  ldc_w 'AccidentContext' 
L5146:  ldc_w Class com/fs/starfarer/campaign/accidents/AccidentRisk$AccidentContext 
L5149:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L5152:  aload_1 
L5153:  ldc_w 'BaseLocation' 
L5156:  ldc_w Class com/fs/starfarer/campaign/BaseLocation 
L5159:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L5162:  aload_1 
L5163:  ldc_w Class com/fs/starfarer/campaign/BaseLocation 
L5166:  ldc_w 'objects' 
L5169:  ldc_w 'o' 
L5172:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5175:  aload_1 
L5176:  ldc_w Class com/fs/starfarer/campaign/BaseLocation 
L5179:  ldc_w 'background' 
L5182:  ldc_w 'b' 
L5185:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5188:  aload_1 
L5189:  ldc_w 'BackgroundAndStars' 
L5192:  ldc_w Class com/fs/starfarer/campaign/BackgroundAndStars 
L5195:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L5198:  aload_1 
L5199:  ldc_w Class com/fs/starfarer/campaign/BackgroundAndStars 
L5202:  ldc_w 'bgOffset' 
L5205:  ldc_w 'bgO' 
L5208:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5211:  aload_1 
L5212:  ldc_w Class com/fs/starfarer/campaign/BackgroundAndStars 
L5215:  ldc_w 'sprite' 
L5218:  ldc_w 's' 
L5221:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5224:  aload_1 
L5225:  ldc_w Class com/fs/starfarer/campaign/BackgroundAndStars 
L5228:  ldc_w 'hyperspaceMode' 
L5231:  ldc_w 'hM' 
L5234:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5237:  aload_1 
L5238:  ldc_w Class com/fs/starfarer/campaign/BackgroundAndStars 
L5241:  ldc_w 'warpngRenderer' 
L5244:  ldc_w 'wR' 
L5247:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5250:  aload_1 
L5251:  ldc_w 'RSprite' 
L5254:  ldc_w Class com/fs/starfarer/util/ReplaceableSprite 
L5257:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L5260:  aload_1 
L5261:  ldc_w Class com/fs/starfarer/util/ReplaceableSprite 
L5264:  ldc_w 'originalTextureId' 
L5267:  ldc_w 'o' 
L5270:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5273:  aload_1 
L5274:  ldc_w Class com/fs/starfarer/util/ReplaceableSprite 
L5277:  ldc_w 'textureFilename' 
L5280:  ldc_w 't' 
L5283:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5286:  aload_1 
L5287:  ldc_w Class com/fs/starfarer/util/ReplaceableSprite 
L5290:  ldc_w 'pendingTextureFilename' 
L5293:  ldc_w 'p' 
L5296:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5299:  aload_1 
L5300:  ldc_w Class com/fs/starfarer/util/ReplaceableSprite 
L5303:  ldc_w 'delegate' 
L5306:  ldc_w 'd' 
L5309:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5312:  aload_1 
L5313:  ldc_w Class com/fs/starfarer/campaign/BaseLocation 
L5316:  ldc_w 'hitParticles' 
L5319:  ldc_w 'hP' 
L5322:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5325:  aload_1 
L5326:  ldc_w 'DynamicParticleGroup' 
L5329:  ldc_w Class com/fs/graphics/particle/DynamicParticleGroup 
L5332:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L5335:  aload_1 
L5336:  ldc_w Class com/fs/graphics/particle/DynamicParticleGroup 
L5339:  ldc_w 'particles' 
L5342:  ldc_w 'p' 
L5345:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5348:  aload_1 
L5349:  ldc_w Class com/fs/graphics/particle/DynamicParticleGroup 
L5352:  ldc_w 'limit' 
L5355:  ldc_w 'l' 
L5358:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5361:  aload_1 
L5362:  ldc_w 'ParticleController' 
L5365:  ldc_w Class com/fs/starfarer/campaign/ParticleController 
L5368:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L5371:  aload_1 
L5372:  ldc_w 'GenericTextureParticle' 
L5375:  ldc_w Class com/fs/graphics/particle/GenericTextureParticle 
L5378:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L5381:  aload_1 
L5382:  ldc_w Class com/fs/graphics/particle/GenericTextureParticle 
L5385:  ldc_w 'color' 
L5388:  ldc_w 'c' 
L5391:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5394:  aload_1 
L5395:  ldc_w Class com/fs/graphics/particle/GenericTextureParticle 
L5398:  ldc_w 'origSize' 
L5401:  ldc_w 'oS' 
L5404:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5407:  aload_1 
L5408:  ldc_w Class com/fs/graphics/particle/GenericTextureParticle 
L5411:  ldc_w 'endSize' 
L5414:  ldc_w 'eS' 
L5417:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5420:  aload_1 
L5421:  ldc_w Class com/fs/graphics/particle/GenericTextureParticle 
L5424:  ldc_w 'fullBrightnessFraction' 
L5427:  ldc_w 'fBF' 
L5430:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5433:  aload_1 
L5434:  ldc_w Class com/fs/graphics/particle/GenericTextureParticle 
L5437:  ldc_w 'tw' 
L5440:  ldc_w 'tw' 
L5443:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5446:  aload_1 
L5447:  ldc_w Class com/fs/graphics/particle/GenericTextureParticle 
L5450:  ldc_w 'th' 
L5453:  ldc_w 'th' 
L5456:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5459:  aload_1 
L5460:  ldc_w Class com/fs/graphics/particle/GenericTextureParticle 
L5463:  ldc_w 'renderCount' 
L5466:  ldc_w 'rC' 
L5469:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5472:  aload_1 
L5473:  ldc_w Class com/fs/graphics/particle/GenericTextureParticle 
L5476:  ldc_w 'src' 
L5479:  ldc_w 'src' 
L5482:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5485:  aload_1 
L5486:  ldc_w Class com/fs/graphics/particle/GenericTextureParticle 
L5489:  ldc_w 'dst' 
L5492:  ldc_w 'dst' 
L5495:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5498:  aload_1 
L5499:  ldc_w Class com/fs/graphics/particle/GenericTextureParticle 
L5502:  ldc_w 'textureId' 
L5505:  ldc_w 't' 
L5508:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5511:  aload_1 
L5512:  ldc_w 'BaseAnimation' 
L5515:  ldc_w Class com/fs/graphics/anim/BaseAnimation 
L5518:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L5521:  aload_1 
L5522:  ldc_w Class com/fs/graphics/anim/BaseAnimation 
L5525:  ldc_w 'duration' 
L5528:  ldc_w 'd' 
L5531:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5534:  aload_1 
L5535:  ldc_w Class com/fs/graphics/anim/BaseAnimation 
L5538:  ldc_w 'numFrames' 
L5541:  ldc_w 'nF' 
L5544:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5547:  aload_1 
L5548:  ldc_w Class com/fs/graphics/anim/BaseAnimation 
L5551:  ldc_w 'looping' 
L5554:  ldc_w 'lp' 
L5557:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5560:  aload_1 
L5561:  ldc_w Class com/fs/graphics/anim/BaseAnimation 
L5564:  ldc_w 'reverse' 
L5567:  ldc_w 'r' 
L5570:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5573:  aload_1 
L5574:  ldc_w Class com/fs/graphics/anim/BaseAnimation 
L5577:  ldc_w 'before' 
L5580:  ldc_w 'b' 
L5583:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5586:  aload_1 
L5587:  ldc_w Class com/fs/graphics/anim/BaseAnimation 
L5590:  ldc_w 'after' 
L5593:  ldc_w 'a' 
L5596:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5599:  aload_1 
L5600:  ldc_w Class com/fs/graphics/anim/BaseAnimation 
L5603:  ldc_w 'elapsed' 
L5606:  ldc_w 'e' 
L5609:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5612:  aload_1 
L5613:  ldc_w Class com/fs/graphics/anim/BaseAnimation 
L5616:  ldc_w 'progress' 
L5619:  ldc_w 'pr' 
L5622:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5625:  aload_1 
L5626:  ldc_w Class com/fs/graphics/anim/BaseAnimation 
L5629:  ldc_w 'currFrame' 
L5632:  ldc_w 'cF' 
L5635:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5638:  aload_1 
L5639:  ldc_w Class com/fs/graphics/anim/BaseAnimation 
L5642:  ldc_w 'currLoop' 
L5645:  ldc_w 'cL' 
L5648:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5651:  aload_1 
L5652:  ldc_w Class com/fs/graphics/anim/BaseAnimation 
L5655:  ldc_w 'stopNow' 
L5658:  ldc_w 'sN' 
L5661:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5664:  aload_1 
L5665:  ldc_w Class com/fs/starfarer/campaign/BaseLocation 
L5668:  ldc_w 'location' 
L5671:  ldc_w 'l' 
L5674:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5677:  aload_1 
L5678:  ldc_w Class com/fs/starfarer/campaign/BaseLocation 
L5681:  ldc_w 'displayName' 
L5684:  ldc_w 'dN' 
L5687:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5690:  aload_1 
L5691:  ldc_w Class com/fs/starfarer/campaign/BaseLocation 
L5694:  ldc_w 'backgroundTextureFilename' 
L5697:  ldc_w 'bTF' 
L5700:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5703:  aload_1 
L5704:  ldc_w Class com/fs/starfarer/campaign/BaseLocation 
L5707:  ldc_w 'hyperspaceMode' 
L5710:  ldc_w 'hM' 
L5713:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5716:  aload_1 
L5717:  ldc_w Class com/fs/starfarer/campaign/BaseLocation 
L5720:  ldc_w 'lightColor' 
L5723:  ldc_w 'lC' 
L5726:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5729:  aload_1 
L5730:  ldc_w Class com/fs/starfarer/campaign/BaseLocation 
L5733:  ldc_w 'lightHeight' 
L5736:  ldc_w 'lH' 
L5739:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5742:  aload_1 
L5743:  ldc_w Class com/fs/starfarer/campaign/BaseLocation 
L5746:  ldc_w 'fleetStubs' 
L5749:  ldc_w 'fS' 
L5752:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5755:  aload_1 
L5756:  ldc_w Class com/fs/starfarer/campaign/BaseLocation 
L5759:  ldc_w 'persistentData' 
L5762:  ldc_w 'pDat' 
L5765:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5768:  aload_1 
L5769:  ldc_w Class com/fs/starfarer/campaign/BaseLocation 
L5772:  ldc_w 'spawnPoints' 
L5775:  ldc_w 'sPts' 
L5778:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5781:  aload_1 
L5782:  ldc_w Class com/fs/starfarer/campaign/BaseLocation 
L5785:  ldc_w 'scripts' 
L5788:  ldc_w 'scr' 
L5791:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5794:  aload_1 
L5795:  ldc_w Class com/fs/starfarer/campaign/BaseLocation 
L5798:  ldc_w 'lastPlayerVisitTimestamp' 
L5801:  ldc_w 'lPV' 
L5804:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5807:  aload_1 
L5808:  ldc_w Class com/fs/starfarer/campaign/StarSystem 
L5811:  ldc_w 'type' 
L5814:  ldc_w 'ty' 
L5817:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5820:  aload_1 
L5821:  ldc_w Class com/fs/starfarer/campaign/StarSystem 
L5824:  ldc_w 'constellation' 
L5827:  ldc_w 'con' 
L5830:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5833:  aload_1 
L5834:  ldc_w Class com/fs/starfarer/campaign/StarSystem 
L5837:  ldc_w 'procgen' 
L5840:  ldc_w 'pg' 
L5843:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5846:  aload_1 
L5847:  ldc_w Class com/fs/starfarer/campaign/StarSystem 
L5850:  ldc_w 'baseName' 
L5853:  ldc_w 'bN' 
L5856:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5859:  aload_1 
L5860:  ldc_w Class com/fs/starfarer/campaign/StarSystem 
L5863:  ldc_w 'maxRadiusInHyperspace' 
L5866:  ldc_w 'mRIH' 
L5869:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5872:  aload_1 
L5873:  ldc_w Class com/fs/starfarer/campaign/StarSystem 
L5876:  ldc_w 'center' 
L5879:  ldc_w 'ce' 
L5882:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5885:  aload_1 
L5886:  ldc_w Class com/fs/starfarer/campaign/StarSystem 
L5889:  ldc_w 'star' 
L5892:  ldc_w 'star' 
L5895:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5898:  aload_1 
L5899:  ldc_w Class com/fs/starfarer/campaign/StarSystem 
L5902:  ldc_w 'secondary' 
L5905:  ldc_w 'sec' 
L5908:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5911:  aload_1 
L5912:  ldc_w Class com/fs/starfarer/campaign/StarSystem 
L5915:  ldc_w 'tertiary' 
L5918:  ldc_w 'ter' 
L5921:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5924:  aload_1 
L5925:  ldc_w Class com/fs/starfarer/campaign/StarSystem 
L5928:  ldc_w 'hyperspaceAnchor' 
L5931:  ldc_w 'hA' 
L5934:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5937:  aload_1 
L5938:  ldc_w Class com/fs/starfarer/campaign/StarSystem 
L5941:  ldc_w 'enteredByPlayer' 
L5944:  ldc_w 'eBP' 
L5947:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5950:  aload_1 
L5951:  ldc_w Class com/fs/starfarer/campaign/StarSystem 
L5954:  ldc_w 'hasSystemwideNebula' 
L5957:  ldc_w 'hSN' 
L5960:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L5963:  aload_1 
L5964:  ldc_w 'ModAndPluginData' 
L5967:  ldc_w Class com/fs/starfarer/campaign/ModAndPluginData 
L5970:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L5973:  aload_1 
L5974:  ldc_w 'com.fs.starfarer.campaign.fleet.RepairTracker$CREvent' 
L5977:  ldc_w Class com/fs/starfarer/api/fleet/RepairTrackerAPI$CREvent 
L5980:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L5983:  aload_1 
L5984:  ldc_w 'CREvent' 
L5987:  ldc_w Class com/fs/starfarer/api/fleet/RepairTrackerAPI$CREvent 
L5990:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L5993:  aload_1 
L5994:  ldc_w 'MessageClickAction' 
L5997:  ldc_w Class com/fs/starfarer/api/campaign/comm/CommMessageAPI$MessageClickAction 
L6000:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L6003:  aload_1 
L6004:  ldc_w 'Pair' 
L6007:  ldc_w Class com/fs/util/container/Pair 
L6010:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L6013:  aload_1 
L6014:  ldc_w 'UpdateFromHyperspaceLocation' 
L6017:  ldc_w Class com/fs/starfarer/campaign/StarSystem$UpdateFromHyperspaceLocation 
L6020:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L6023:  aload_1 
L6024:  ldc_w 'AptitudeLevel' 
L6027:  ldc_w Class com/fs/starfarer/campaign/CharacterStats$AptitudeLevel 
L6030:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L6033:  aload_1 
L6034:  ldc_w Class com/fs/starfarer/campaign/CharacterStats$AptitudeLevel 
L6037:  ldc_w 'savedId' 
L6040:  ldc_w 'sid' 
L6043:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L6046:  aload_1 
L6047:  ldc_w Class com/fs/starfarer/campaign/CharacterStats$AptitudeLevel 
L6050:  ldc_w 'level' 
L6053:  ldc_w 'l' 
L6056:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L6059:  aload_1 
L6060:  ldc_w 'SLvl' 
L6063:  ldc_w Class com/fs/starfarer/campaign/CharacterStats$SkillLevel 
L6066:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L6069:  aload_1 
L6070:  ldc_w Class com/fs/starfarer/campaign/CharacterStats$SkillLevel 
L6073:  ldc_w 'savedId' 
L6076:  ldc_w 'sid' 
L6079:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L6082:  aload_1 
L6083:  ldc_w Class com/fs/starfarer/campaign/CharacterStats$SkillLevel 
L6086:  ldc_w 'level' 
L6089:  ldc_w 'l' 
L6092:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L6095:  aload_1 
L6096:  ldc_w 'JumpPoint' 
L6099:  ldc_w Class com/fs/starfarer/campaign/JumpPoint 
L6102:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L6105:  aload_1 
L6106:  ldc_w 'JP.RingData' 
L6109:  ldc_w Class com/fs/starfarer/campaign/JumpPoint$RingData 
L6112:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L6115:  aload_1 
L6116:  ldc_w 'JP.CoronaData' 
L6119:  ldc_w Class com/fs/starfarer/campaign/JumpPoint$CoronaData 
L6122:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L6125:  aload_1 
L6126:  ldc_w 'DynamicRing' 
L6129:  ldc_w Class com/fs/starfarer/campaign/DynamicRingBand 
L6132:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L6135:  aload_1 
L6136:  ldc_w Class com/fs/starfarer/campaign/JumpPoint 
L6139:  ldc_w 'radius' 
L6142:  ldc_w 'r' 
L6145:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L6148:  aload_1 
L6149:  ldc_w Class com/fs/starfarer/campaign/JumpPoint 
L6152:  ldc_w 'destinations' 
L6155:  ldc_w 'dst' 
L6158:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L6161:  aload_1 
L6162:  ldc_w Class com/fs/starfarer/campaign/JumpPoint 
L6165:  ldc_w 'destSpriteCategory' 
L6168:  ldc_w 'dSC' 
L6171:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L6174:  aload_1 
L6175:  ldc_w Class com/fs/starfarer/campaign/JumpPoint 
L6178:  ldc_w 'destSpriteId' 
L6181:  ldc_w 'dSI' 
L6184:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L6187:  aload_1 
L6188:  ldc_w Class com/fs/starfarer/campaign/JumpPoint 
L6191:  ldc_w 'destPlanet' 
L6194:  ldc_w 'dP' 
L6197:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L6200:  aload_1 
L6201:  ldc_w Class com/fs/starfarer/campaign/JumpPoint 
L6204:  ldc_w 'relatedPlanet' 
L6207:  ldc_w 'rP' 
L6210:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L6213:  aload_1 
L6214:  ldc_w Class com/fs/starfarer/campaign/JumpPoint 
L6217:  ldc_w 'sinceOpened' 
L6220:  ldc_w 'sO' 
L6223:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L6226:  aload_1 
L6227:  ldc_w Class com/fs/starfarer/campaign/JumpPoint 
L6230:  ldc_w 'fader' 
L6233:  ldc_w 'f' 
L6236:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L6239:  aload_1 
L6240:  ldc_w Class com/fs/starfarer/campaign/JumpPoint 
L6243:  ldc_w 'computedAbyssState' 
L6246:  ldc_w 'cAS' 
L6249:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L6252:  aload_1 
L6253:  ldc_w 'JDst' 
L6256:  ldc_w Class com/fs/starfarer/api/campaign/JumpPointAPI$JumpDestination 
L6259:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L6262:  aload_1 
L6263:  ldc_w Class com/fs/starfarer/api/campaign/JumpPointAPI$JumpDestination 
L6266:  ldc_w 'destination' 
L6269:  ldc_w 'd' 
L6272:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L6275:  aload_1 
L6276:  ldc_w Class com/fs/starfarer/api/campaign/JumpPointAPI$JumpDestination 
L6279:  ldc_w 'labelInInteractionDialog' 
L6282:  ldc_w 'l' 
L6285:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L6288:  aload_1 
L6289:  ldc_w Class com/fs/starfarer/api/campaign/JumpPointAPI$JumpDestination 
L6292:  ldc_w 'minDistFromToken' 
L6295:  ldc_w 'minD' 
L6298:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L6301:  aload_1 
L6302:  ldc_w Class com/fs/starfarer/api/campaign/JumpPointAPI$JumpDestination 
L6305:  ldc_w 'maxDistFromToken' 
L6308:  ldc_w 'maxD' 
L6311:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L6314:  aload_1 
L6315:  ldc_w 'UFSLOrbt' 
L6318:  ldc_w Class com/fs/starfarer/campaign/StarSystem$UpdateFromSystemLocationOrbit 
L6321:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L6324:  aload_1 
L6325:  ldc_w Class com/fs/starfarer/campaign/StarSystem$UpdateFromSystemLocationOrbit 
L6328:  ldc_w 'systemPoint' 
L6331:  ldc_w 'sP' 
L6334:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L6337:  aload_1 
L6338:  ldc_w Class com/fs/starfarer/campaign/StarSystem$UpdateFromSystemLocationOrbit 
L6341:  ldc_w 'star' 
L6344:  ldc_w 's' 
L6347:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L6350:  aload_1 
L6351:  ldc_w Class com/fs/starfarer/campaign/StarSystem$UpdateFromSystemLocationOrbit 
L6354:  ldc_w 'inSystemEntity' 
L6357:  ldc_w 'iSE' 
L6360:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L6363:  aload_1 
L6364:  ldc_w Class com/fs/starfarer/campaign/StarSystem$UpdateFromSystemLocationOrbit 
L6367:  ldc_w 'inHyperJumpPoint' 
L6370:  ldc_w 'iH' 
L6373:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L6376:  aload_1 
L6377:  ldc_w Class com/fs/starfarer/campaign/StarSystem$UpdateFromSystemLocationOrbit 
L6380:  ldc_w 'orbitRadius' 
L6383:  ldc_w 'oR' 
L6386:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L6389:  aload_1 
L6390:  ldc_w Class com/fs/starfarer/campaign/StarSystem$UpdateFromSystemLocationOrbit 
L6393:  ldc_w 'prev' 
L6396:  ldc_w 'p' 
L6399:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L6402:  aload_1 
L6403:  ldc_w Class com/fs/starfarer/campaign/StarSystem$UpdateFromSystemLocationOrbit 
L6406:  ldc_w 'last' 
L6409:  ldc_w 'l' 
L6412:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L6415:  aload_1 
L6416:  ldc_w Class com/fs/starfarer/campaign/StarSystem$UpdateFromSystemLocationOrbit 
L6419:  ldc_w 'lastInterval' 
L6422:  ldc_w 'lI' 
L6425:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L6428:  aload_1 
L6429:  ldc_w Class com/fs/starfarer/campaign/StarSystem$UpdateFromSystemLocationOrbit 
L6432:  ldc_w 'elapsedSinceUpdate' 
L6435:  ldc_w 'e' 
L6438:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L6441:  aload_1 
L6442:  ldc_w 'UFHLOrbt' 
L6445:  ldc_w Class com/fs/starfarer/campaign/StarSystem$UpdateFromHyperspaceLocation 
L6448:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L6451:  aload_1 
L6452:  ldc_w Class com/fs/starfarer/campaign/StarSystem$UpdateFromHyperspaceLocation 
L6455:  ldc_w 'starSystem' 
L6458:  ldc_w 's' 
L6461:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L6464:  aload_1 
L6465:  ldc_w Class com/fs/starfarer/campaign/StarSystem$UpdateFromHyperspaceLocation 
L6468:  ldc_w 'anchorPointInHyperspace' 
L6471:  ldc_w 'a' 
L6474:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L6477:  aload_1 
L6478:  ldc_w 'RingBand' 
L6481:  ldc_w Class com/fs/starfarer/campaign/RingBand 
L6484:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L6487:  aload_1 
L6488:  ldc_w 'JumpPlan' 
L6491:  ldc_w Class com/fs/starfarer/campaign/ai/CampaignFleetAI$JumpPlan 
L6494:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L6497:  aload_1 
L6498:  ldc_w 'BuffManager' 
L6501:  ldc_w Class com/fs/starfarer/campaign/BuffManager 
L6504:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L6507:  aload_1 
L6508:  ldc_w 'CampaignHelpManager' 
L6511:  ldc Class com/fs/starfarer/campaign/CampaignHelpManager 
L6513:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L6516:  aload_1 
L6517:  ldc_w 'HelpDialogStatus' 
L6520:  ldc_w Class com/fs/starfarer/campaign/CampaignHelpManager$HelpDialogStatus 
L6523:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L6526:  aload_1 
L6527:  ldc_w 'WarpingSpriteRenderer' 
L6530:  ldc_w Class com/fs/starfarer/campaign/WarpingSpriteRenderer 
L6533:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L6536:  aload_1 
L6537:  ldc_w 'WSR.V' 
L6540:  ldc_w Class com/fs/starfarer/campaign/WarpingSpriteRenderer$Vertex 
L6543:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L6546:  aload_1 
L6547:  ldc_w 'FleetMemberPick' 
L6550:  ldc_w Class com/fs/starfarer/loading/FleetCreationSpec$FleetMemberPick 
L6553:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L6556:  aload_1 
L6557:  ldc_w 'MStat' 
L6560:  ldc_w Class com/fs/starfarer/api/combat/MutableStat 
L6563:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L6566:  aload_1 
L6567:  ldc_w Class com/fs/starfarer/api/combat/MutableStat 
L6570:  ldc_w 'base' 
L6573:  ldc_w 'b' 
L6576:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L6579:  aload_1 
L6580:  ldc_w Class com/fs/starfarer/api/combat/MutableStat 
L6583:  ldc_w 'modified' 
L6586:  ldc_w 'm' 
L6589:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L6592:  aload_1 
L6593:  ldc_w Class com/fs/starfarer/api/combat/MutableStat 
L6596:  ldc_w 'needsRecompute' 
L6599:  ldc_w 'nR' 
L6602:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L6605:  aload_1 
L6606:  ldc_w 'MStatWTM' 
L6609:  ldc_w Class com/fs/starfarer/api/combat/MutableStatWithTempMods 
L6612:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L6615:  aload_1 
L6616:  ldc_w Class com/fs/starfarer/api/combat/MutableStatWithTempMods 
L6619:  ldc_w 'tempMods' 
L6622:  ldc_w 'tM' 
L6625:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L6628:  aload_1 
L6629:  ldc_w 'WTMTSM' 
L6632:  ldc_w Class com/fs/starfarer/api/combat/MutableStatWithTempMods$TemporaryStatMod 
L6635:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L6638:  aload_1 
L6639:  ldc_w Class com/fs/starfarer/api/combat/MutableStatWithTempMods$TemporaryStatMod 
L6642:  ldc_w 'timeRemaining' 
L6645:  ldc_w 'tR' 
L6648:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L6651:  aload_1 
L6652:  ldc_w Class com/fs/starfarer/api/combat/MutableStatWithTempMods$TemporaryStatMod 
L6655:  ldc_w 'source' 
L6658:  ldc_w 's' 
L6661:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L6664:  aload_1 
L6665:  ldc_w 'SBonus' 
L6668:  ldc_w Class com/fs/starfarer/api/combat/StatBonus 
L6671:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L6674:  aload_1 
L6675:  ldc_w Class com/fs/starfarer/api/combat/StatBonus 
L6678:  ldc_w 'flatBonus' 
L6681:  ldc_w 'fB' 
L6684:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L6687:  aload_1 
L6688:  ldc_w Class com/fs/starfarer/api/combat/StatBonus 
L6691:  ldc_w 'mult' 
L6694:  ldc_w 'm' 
L6697:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L6700:  aload_1 
L6701:  ldc_w Class com/fs/starfarer/api/combat/StatBonus 
L6704:  ldc_w 'percentMod' 
L6707:  ldc_w 'pM' 
L6710:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L6713:  aload_1 
L6714:  ldc_w Class com/fs/starfarer/api/combat/StatBonus 
L6717:  ldc_w 'needsRecompute' 
L6720:  ldc_w 'nR' 
L6723:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L6726:  aload_1 
L6727:  ldc_w 'MS.StatMod' 
L6730:  ldc_w Class com/fs/starfarer/api/combat/MutableStat$StatMod 
L6733:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L6736:  aload_1 
L6737:  ldc_w Class com/fs/starfarer/api/combat/MutableStat$StatMod 
L6740:  ldc_w 'source' 
L6743:  ldc_w 's' 
L6746:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L6749:  aload_1 
L6750:  ldc_w Class com/fs/starfarer/api/combat/MutableStat$StatMod 
L6753:  ldc_w 'desc' 
L6756:  ldc_w 'd' 
L6759:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L6762:  aload_1 
L6763:  ldc_w Class com/fs/starfarer/api/combat/MutableStat$StatMod 
L6766:  ldc_w 'value' 
L6769:  ldc_w 'v' 
L6772:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L6775:  aload_1 
L6776:  ldc_w Class com/fs/starfarer/api/combat/MutableStat 
L6779:  ldc_w 'flatMods' 
L6782:  ldc_w 'fMs' 
L6785:  ldc_w Class com/fs/starfarer/api/combat/MutableStat$StatMod 
L6788:  ldc_w 'source' 
L6791:  invokevirtual Method com/thoughtworks/xstream/XStream addImplicitMap (Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V 
L6794:  aload_1 
L6795:  ldc_w Class com/fs/starfarer/api/combat/MutableStat 
L6798:  ldc_w 'percentMods' 
L6801:  ldc_w 'pMs' 
L6804:  ldc_w Class com/fs/starfarer/api/combat/MutableStat$StatMod 
L6807:  ldc_w 'source' 
L6810:  invokevirtual Method com/thoughtworks/xstream/XStream addImplicitMap (Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V 
L6813:  aload_1 
L6814:  ldc_w Class com/fs/starfarer/api/combat/MutableStat 
L6817:  ldc_w 'multMods' 
L6820:  ldc_w 'mMs' 
L6823:  ldc_w Class com/fs/starfarer/api/combat/MutableStat$StatMod 
L6826:  ldc_w 'source' 
L6829:  invokevirtual Method com/thoughtworks/xstream/XStream addImplicitMap (Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V 
L6832:  aload_1 
L6833:  ldc_w Class com/fs/starfarer/api/combat/StatBonus 
L6836:  ldc_w 'flatBonuses' 
L6839:  ldc_w 'fBs' 
L6842:  ldc_w Class com/fs/starfarer/api/combat/MutableStat$StatMod 
L6845:  ldc_w 'source' 
L6848:  invokevirtual Method com/thoughtworks/xstream/XStream addImplicitMap (Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V 
L6851:  aload_1 
L6852:  ldc_w Class com/fs/starfarer/api/combat/StatBonus 
L6855:  ldc_w 'percentBonuses' 
L6858:  ldc_w 'pBs' 
L6861:  ldc_w Class com/fs/starfarer/api/combat/MutableStat$StatMod 
L6864:  ldc_w 'source' 
L6867:  invokevirtual Method com/thoughtworks/xstream/XStream addImplicitMap (Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V 
L6870:  aload_1 
L6871:  ldc_w Class com/fs/starfarer/api/combat/StatBonus 
L6874:  ldc_w 'multBonuses' 
L6877:  ldc_w 'mBs' 
L6880:  ldc_w Class com/fs/starfarer/api/combat/MutableStat$StatMod 
L6883:  ldc_w 'source' 
L6886:  invokevirtual Method com/thoughtworks/xstream/XStream addImplicitMap (Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V 
L6889:  aload_1 
L6890:  ldc_w 'DemandValueTracker' 
L6893:  ldc_w Class com/fs/starfarer/campaign/econ/DemandValueTracker 
L6896:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L6899:  aload_1 
L6900:  ldc_w 'Economy' 
L6903:  ldc_w Class com/fs/starfarer/campaign/econ/Economy 
L6906:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L6909:  aload_1 
L6910:  ldc_w 'Market' 
L6913:  ldc_w Class com/fs/starfarer/campaign/econ/Market 
L6916:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L6919:  aload_1 
L6920:  ldc_w 'MarketDemandData' 
L6923:  ldc_w Class com/fs/starfarer/campaign/econ/MarketDemandData 
L6926:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L6929:  aload_1 
L6930:  ldc_w 'PriceCalculator' 
L6933:  ldc_w Class com/fs/starfarer/campaign/econ/PriceCalculator 
L6936:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L6939:  aload_1 
L6940:  ldc_w Class com/fs/starfarer/campaign/econ/PriceCalculator 
L6943:  ldc_w 'B' 
L6946:  ldc_w 'B' 
L6949:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L6952:  aload_1 
L6953:  ldc_w Class com/fs/starfarer/campaign/econ/PriceCalculator 
L6956:  ldc_w 'D' 
L6959:  ldc_w 'D' 
L6962:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L6965:  aload_1 
L6966:  ldc_w Class com/fs/starfarer/campaign/econ/PriceCalculator 
L6969:  ldc_w 'v' 
L6972:  ldc_w 'v' 
L6975:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L6978:  aload_1 
L6979:  ldc_w 'MCon' 
L6982:  ldc_w Class com/fs/starfarer/campaign/econ/MarketCondition 
L6985:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L6988:  aload_1 
L6989:  ldc_w Class com/fs/starfarer/campaign/econ/MarketCondition 
L6992:  ldc_w 'id' 
L6995:  ldc_w 'i' 
L6998:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7001:  aload_1 
L7002:  ldc_w Class com/fs/starfarer/campaign/econ/MarketCondition 
L7005:  ldc_w 'plugin' 
L7008:  ldc_w 'p' 
L7011:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7014:  aload_1 
L7015:  ldc_w Class com/fs/starfarer/campaign/econ/MarketCondition 
L7018:  ldc_w 'unique' 
L7021:  ldc_w 'u' 
L7024:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7027:  aload_1 
L7028:  ldc_w Class com/fs/starfarer/campaign/econ/MarketCondition 
L7031:  ldc_w 'market' 
L7034:  ldc_w 'm' 
L7037:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7040:  aload_1 
L7041:  ldc_w Class com/fs/starfarer/campaign/econ/MarketCondition 
L7044:  ldc_w 'isSurveyed' 
L7047:  ldc_w 's' 
L7050:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7053:  aload_1 
L7054:  ldc_w 'MarketDemand' 
L7057:  ldc_w Class com/fs/starfarer/campaign/econ/MarketDemand 
L7060:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L7063:  aload_1 
L7064:  ldc_w Class com/fs/starfarer/campaign/econ/MarketDemand 
L7067:  ldc_w 'demandClass' 
L7070:  ldc_w 'dC' 
L7073:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7076:  aload_1 
L7077:  ldc_w Class com/fs/starfarer/campaign/econ/MarketDemand 
L7080:  ldc_w 'demand' 
L7083:  ldc_w 'd' 
L7086:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7089:  aload_1 
L7090:  ldc_w Class com/fs/starfarer/campaign/econ/MarketDemand 
L7093:  ldc_w 'market' 
L7096:  ldc_w 'm' 
L7099:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7102:  aload_1 
L7103:  ldc_w 'EB' 
L7106:  ldc_w Class com/fs/starfarer/campaign/econ/contract/Bid 
L7109:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L7112:  aload_1 
L7113:  ldc_w Class com/fs/starfarer/campaign/econ/contract/Bid 
L7116:  ldc_w 'commodityId' 
L7119:  ldc_w 'cid' 
L7122:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7125:  aload_1 
L7126:  ldc_w Class com/fs/starfarer/campaign/econ/contract/Bid 
L7129:  ldc_w 'totalPrice' 
L7132:  ldc_w 'p' 
L7135:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7138:  aload_1 
L7139:  ldc_w Class com/fs/starfarer/campaign/econ/contract/Bid 
L7142:  ldc_w 'quantity' 
L7145:  ldc_w 'q' 
L7148:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7151:  aload_1 
L7152:  ldc_w Class com/fs/starfarer/campaign/econ/contract/Bid 
L7155:  ldc_w 'remainingDuration' 
L7158:  ldc_w 'd' 
L7161:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7164:  aload_1 
L7165:  ldc_w Class com/fs/starfarer/campaign/econ/contract/Bid 
L7168:  ldc_w 'smuggling' 
L7171:  ldc_w 's' 
L7174:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7177:  aload_1 
L7178:  ldc_w Class com/fs/starfarer/campaign/econ/contract/Bid 
L7181:  ldc_w 'contract' 
L7184:  ldc_w 'c' 
L7187:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7190:  aload_1 
L7191:  ldc_w Class com/fs/starfarer/campaign/econ/contract/Bid 
L7194:  ldc_w 'market' 
L7197:  ldc_w 'm' 
L7200:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7203:  aload_1 
L7204:  ldc_w 'EC' 
L7207:  ldc_w Class com/fs/starfarer/campaign/econ/contract/Contract 
L7210:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L7213:  aload_1 
L7214:  ldc_w Class com/fs/starfarer/campaign/econ/contract/Contract 
L7217:  ldc_w 'demandClass' 
L7220:  ldc_w 'd' 
L7223:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7226:  aload_1 
L7227:  ldc_w Class com/fs/starfarer/campaign/econ/contract/Contract 
L7230:  ldc_w 'quantity' 
L7233:  ldc_w 'q' 
L7236:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7239:  aload_1 
L7240:  ldc_w Class com/fs/starfarer/campaign/econ/contract/Contract 
L7243:  ldc_w 'market' 
L7246:  ldc_w 'm' 
L7249:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7252:  aload_1 
L7253:  ldc_w Class com/fs/starfarer/campaign/econ/contract/Contract 
L7256:  ldc_w 'bestBid' 
L7259:  ldc_w 'b' 
L7262:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7265:  aload_1 
L7266:  ldc_w 'ActionIndicator' 
L7269:  ldc_w Class com/fs/starfarer/campaign/ActionIndicator 
L7272:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L7275:  aload_1 
L7276:  ldc_w Class com/fs/starfarer/campaign/ActionIndicator 
L7279:  ldc_w 'entity' 
L7282:  ldc_w 'e' 
L7285:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7288:  aload_1 
L7289:  ldc_w Class com/fs/starfarer/campaign/ActionIndicator 
L7292:  ldc_w 'fader' 
L7295:  ldc_w 'f' 
L7298:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7301:  aload_1 
L7302:  ldc_w Class com/fs/starfarer/campaign/ActionIndicator 
L7305:  ldc_w 'pingType' 
L7308:  ldc_w 'p' 
L7311:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7314:  aload_1 
L7315:  ldc_w Class com/fs/starfarer/campaign/ActionIndicator 
L7318:  ldc_w 'colorOverride' 
L7321:  ldc_w 'c' 
L7324:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7327:  aload_1 
L7328:  ldc_w 'MultiFrameTask' 
L7331:  ldc_w Class com/fs/starfarer/campaign/econ/contract/iter/MultiFrameTask 
L7334:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L7337:  aload_1 
L7338:  ldc_w 'ValueHistory' 
L7341:  ldc_w Class com/fs/starfarer/campaign/ValueHistory 
L7344:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L7347:  aload_1 
L7348:  ldc_w Class com/fs/starfarer/campaign/ValueHistory 
L7351:  ldc_w 'count' 
L7354:  ldc_w 'c' 
L7357:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7360:  aload_1 
L7361:  ldc_w Class com/fs/starfarer/campaign/ValueHistory 
L7364:  ldc_w 'month' 
L7367:  ldc_w 'm' 
L7370:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7373:  aload_1 
L7374:  ldc_w Class com/fs/starfarer/campaign/ValueHistory 
L7377:  ldc_w 'year' 
L7380:  ldc_w 'y' 
L7383:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7386:  aload_1 
L7387:  ldc_w 'TTr' 
L7390:  ldc_w Class com/fs/starfarer/campaign/econ/contract/CommodityFlow$TransferTracker 
L7393:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L7396:  aload_1 
L7397:  ldc_w Class com/fs/starfarer/campaign/econ/contract/CommodityFlow$TransferTracker 
L7400:  ldc_w 's' 
L7403:  ldc_w 's' 
L7406:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7409:  aload_1 
L7410:  ldc_w 'TI' 
L7413:  ldc_w Class com/fs/starfarer/campaign/econ/contract/CommodityFlow$TransferItem 
L7416:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L7419:  aload_1 
L7420:  ldc_w Class com/fs/starfarer/campaign/econ/contract/CommodityFlow$TransferItem 
L7423:  ldc_w 'quantity' 
L7426:  ldc_w 'q' 
L7429:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7432:  aload_1 
L7433:  ldc_w Class com/fs/starfarer/campaign/econ/contract/CommodityFlow$TransferItem 
L7436:  ldc_w 'price' 
L7439:  ldc_w 'p' 
L7442:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7445:  aload_1 
L7446:  ldc_w Class com/fs/starfarer/campaign/econ/contract/CommodityFlow$TransferItem 
L7449:  ldc_w 'elapsed' 
L7452:  ldc_w 'e' 
L7455:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7458:  aload_1 
L7459:  ldc_w 'CESState' 
L7462:  ldc_w Class com/fs/starfarer/campaign/econ/contract/iter/ContractEconomyStepper$State 
L7465:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L7468:  aload_1 
L7469:  ldc_w 'CABTState' 
L7472:  ldc_w Class com/fs/starfarer/campaign/econ/contract/iter/ContractsAndBidsTask$State 
L7475:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L7478:  aload_1 
L7479:  ldc_w Class com/fs/starfarer/campaign/econ/MarketDemandData 
L7482:  ldc_w 'demands' 
L7485:  ldc_w 'demand' 
L7488:  ldc_w Class com/fs/starfarer/campaign/econ/MarketDemand 
L7491:  ldc_w 'demandClass' 
L7494:  invokevirtual Method com/thoughtworks/xstream/XStream addImplicitMap (Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V 
L7497:  aload_1 
L7498:  ldc_w 'COMkt' 
L7501:  ldc_w Class com/fs/starfarer/campaign/econ/CommodityOnMarket 
L7504:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L7507:  aload_1 
L7508:  ldc_w Class com/fs/starfarer/campaign/econ/CommodityOnMarket 
L7511:  ldc_w 'market' 
L7514:  ldc_w 'm' 
L7517:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7520:  aload_1 
L7521:  ldc_w Class com/fs/starfarer/campaign/econ/CommodityOnMarket 
L7524:  ldc_w 'commodityId' 
L7527:  ldc_w 'c' 
L7530:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7533:  aload_1 
L7534:  ldc_w Class com/fs/starfarer/campaign/econ/CommodityOnMarket 
L7537:  ldc_w 'stockpile' 
L7540:  ldc_w 'sto' 
L7543:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7546:  aload_1 
L7547:  ldc_w Class com/fs/starfarer/campaign/econ/CommodityOnMarket 
L7550:  ldc_w 'greed' 
L7553:  ldc_w 'g' 
L7556:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7559:  aload_1 
L7560:  ldc_w Class com/fs/starfarer/campaign/econ/CommodityOnMarket 
L7563:  ldc_w 'demand' 
L7566:  ldc_w 'd' 
L7569:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7572:  aload_1 
L7573:  ldc_w Class com/fs/starfarer/campaign/econ/CommodityOnMarket 
L7576:  ldc_w 'playerDemandMod' 
L7579:  ldc_w 'pDM' 
L7582:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7585:  aload_1 
L7586:  ldc_w Class com/fs/starfarer/campaign/econ/CommodityOnMarket 
L7589:  ldc_w 'playerSupplyMod' 
L7592:  ldc_w 'pSM' 
L7595:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7598:  aload_1 
L7599:  ldc_w Class com/fs/starfarer/campaign/econ/CommodityOnMarket 
L7602:  ldc_w 'exoticUtility' 
L7605:  ldc_w 'eU' 
L7608:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7611:  aload_1 
L7612:  ldc_w Class com/fs/starfarer/campaign/econ/CommodityOnMarket 
L7615:  ldc_w 'maxSupply' 
L7618:  ldc_w 'mS' 
L7621:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7624:  aload_1 
L7625:  ldc_w Class com/fs/starfarer/campaign/econ/CommodityOnMarket 
L7628:  ldc_w 'maxDemand' 
L7631:  ldc_w 'mD' 
L7634:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7637:  aload_1 
L7638:  ldc_w Class com/fs/starfarer/campaign/econ/CommodityOnMarket 
L7641:  ldc_w 'isSupplyLegal' 
L7644:  ldc_w 'iSL' 
L7647:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7650:  aload_1 
L7651:  ldc_w Class com/fs/starfarer/campaign/econ/CommodityOnMarket 
L7654:  ldc_w 'isDemandLegal' 
L7657:  ldc_w 'iDL' 
L7660:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7663:  aload_1 
L7664:  ldc_w 'Astrd' 
L7667:  ldc_w Class com/fs/starfarer/campaign/CampaignAsteroid 
L7670:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L7673:  aload_1 
L7674:  ldc_w Class com/fs/starfarer/campaign/BaseCampaignEntity 
L7677:  ldc_w 'expired' 
L7680:  ldc_w 'e' 
L7683:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7686:  aload_1 
L7687:  ldc_w Class com/fs/starfarer/campaign/BaseCampaignEntity 
L7690:  ldc_w 'freeTransfer' 
L7693:  ldc_w 'ft' 
L7696:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7699:  aload_1 
L7700:  ldc_w Class com/fs/starfarer/campaign/BaseCampaignEntity 
L7703:  ldc_w 'containingLocation' 
L7706:  ldc_w 'cL' 
L7709:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7712:  aload_1 
L7713:  ldc_w Class com/fs/starfarer/campaign/BaseCampaignEntity 
L7716:  ldc_w 'lightSource' 
L7719:  ldc_w 'ls' 
L7722:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7725:  aload_1 
L7726:  ldc_w Class com/fs/starfarer/campaign/BaseCampaignEntity 
L7729:  ldc_w 'loc' 
L7732:  ldc_w 'loc' 
L7735:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7738:  aload_1 
L7739:  ldc_w Class com/fs/starfarer/campaign/BaseCampaignEntity 
L7742:  ldc_w 'vel' 
L7745:  ldc_w 'vel' 
L7748:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7751:  aload_1 
L7752:  ldc_w Class com/fs/starfarer/campaign/BaseCampaignEntity 
L7755:  ldc_w 'sensorStrength' 
L7758:  ldc_w 'sS' 
L7761:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7764:  aload_1 
L7765:  ldc_w Class com/fs/starfarer/campaign/BaseCampaignEntity 
L7768:  ldc_w 'sensorProfile' 
L7771:  ldc_w 'sP' 
L7774:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7777:  aload_1 
L7778:  ldc_w Class com/fs/starfarer/campaign/BaseCampaignEntity 
L7781:  ldc_w 'extendedDetectedAtRange' 
L7784:  ldc_w 'eDAR' 
L7787:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7790:  aload_1 
L7791:  ldc_w Class com/fs/starfarer/campaign/BaseCampaignEntity 
L7794:  ldc_w 'dropValue' 
L7797:  ldc_w 'dV' 
L7800:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7803:  aload_1 
L7804:  ldc_w Class com/fs/starfarer/campaign/BaseCampaignEntity 
L7807:  ldc_w 'dropRandom' 
L7810:  ldc_w 'dR' 
L7813:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7816:  aload_1 
L7817:  ldc_w Class com/fs/starfarer/campaign/BaseCampaignEntity 
L7820:  ldc_w 'detectedRangeMod' 
L7823:  ldc_w 'dRM' 
L7826:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7829:  aload_1 
L7830:  ldc_w Class com/fs/starfarer/campaign/BaseCampaignEntity 
L7833:  ldc_w 'sensorContactFader' 
L7836:  ldc_w 'sCF' 
L7839:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7842:  aload_1 
L7843:  ldc_w Class com/fs/starfarer/campaign/BaseCampaignEntity 
L7846:  ldc_w 'sensorFader' 
L7849:  ldc_w 'sF' 
L7852:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7855:  aload_1 
L7856:  ldc_w Class com/fs/starfarer/campaign/BaseCampaignEntity 
L7859:  ldc_w 'customData' 
L7862:  ldc_w 'cD' 
L7865:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7868:  aload_1 
L7869:  ldc_w Class com/fs/starfarer/campaign/BaseCampaignEntity 
L7872:  ldc_w 'discoverable' 
L7875:  ldc_w 'di' 
L7878:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7881:  aload_1 
L7882:  ldc_w Class com/fs/starfarer/campaign/BaseCampaignEntity 
L7885:  ldc_w 'discoveryXP' 
L7888:  ldc_w 'dxp' 
L7891:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7894:  aload_1 
L7895:  ldc_w Class com/fs/starfarer/campaign/BaseCampaignEntity 
L7898:  ldc_w 'salvageXP' 
L7901:  ldc_w 'sxp' 
L7904:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7907:  aload_1 
L7908:  ldc_w Class com/fs/starfarer/campaign/BaseCampaignEntity 
L7911:  ldc_w 'detectionRangeDetailsOverrideMult' 
L7914:  ldc_w 'dRDOM' 
L7917:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7920:  aload_1 
L7921:  ldc_w Class com/fs/starfarer/campaign/BaseCampaignEntity 
L7924:  ldc_w 'customVisual' 
L7927:  ldc_w 'cV' 
L7930:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7933:  aload_1 
L7934:  ldc_w Class com/fs/starfarer/campaign/BaseCampaignEntity 
L7937:  ldc_w 'owner' 
L7940:  ldc_w 'ow' 
L7943:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7946:  aload_1 
L7947:  ldc_w Class com/fs/starfarer/campaign/BaseCampaignEntity 
L7950:  ldc_w 'memory' 
L7953:  ldc_w 'me' 
L7956:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7959:  aload_1 
L7960:  ldc_w Class com/fs/starfarer/campaign/BaseCampaignEntity 
L7963:  ldc_w 'scripts' 
L7966:  ldc_w 'sc' 
L7969:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7972:  aload_1 
L7973:  ldc_w 'DrDat' 
L7976:  ldc_w Class com/fs/starfarer/api/impl/campaign/procgen/SalvageEntityGenDataSpec$DropData 
L7979:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L7982:  aload_1 
L7983:  ldc_w Class com/fs/starfarer/api/impl/campaign/procgen/SalvageEntityGenDataSpec$DropData 
L7986:  ldc_w 'custom' 
L7989:  ldc_w 'c' 
L7992:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L7995:  aload_1 
L7996:  ldc_w 'DGRow' 
L7999:  ldc_w Class com/fs/starfarer/api/impl/campaign/procgen/DropGroupRow 
L8002:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L8005:  aload_1 
L8006:  ldc_w Class com/fs/starfarer/api/impl/campaign/procgen/DropGroupRow 
L8009:  ldc_w 'commodity' 
L8012:  ldc_w 'c' 
L8015:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8018:  aload_1 
L8019:  ldc_w Class com/fs/starfarer/api/impl/campaign/procgen/DropGroupRow 
L8022:  ldc_w 'group' 
L8025:  ldc_w 'g' 
L8028:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8031:  aload_1 
L8032:  ldc_w Class com/fs/starfarer/api/impl/campaign/procgen/DropGroupRow 
L8035:  ldc_w 'freq' 
L8038:  ldc_w 'f' 
L8041:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8044:  aload_1 
L8045:  ldc_w Class com/fs/starfarer/api/impl/campaign/procgen/DropGroupRow 
L8048:  ldc_w 'multiValued' 
L8051:  ldc_w 'm' 
L8054:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8057:  aload_1 
L8058:  ldc_w Class com/fs/starfarer/api/impl/campaign/procgen/DropGroupRow 
L8061:  ldc_w 'tier' 
L8064:  ldc_w 't' 
L8067:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8070:  aload_1 
L8071:  ldc_w Class com/fs/starfarer/api/impl/campaign/procgen/DropGroupRow 
L8074:  ldc_w 'tags' 
L8077:  ldc_w 'a' 
L8080:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8083:  aload_1 
L8084:  ldc_w Class com/fs/starfarer/api/impl/campaign/procgen/DropGroupRow 
L8087:  ldc_w 'weaponType' 
L8090:  ldc_w 'wt' 
L8093:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8096:  aload_1 
L8097:  ldc_w Class com/fs/starfarer/api/impl/campaign/procgen/DropGroupRow 
L8100:  ldc_w 'weaponSize' 
L8103:  ldc_w 'ws' 
L8106:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8109:  aload_1 
L8110:  ldc_w 'WRPck' 
L8113:  ldc_w Class com/fs/starfarer/api/util/WeightedRandomPicker 
L8116:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L8119:  aload_1 
L8120:  ldc_w Class com/fs/starfarer/api/util/WeightedRandomPicker 
L8123:  ldc_w 'items' 
L8126:  ldc_w 'i' 
L8129:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8132:  aload_1 
L8133:  ldc_w Class com/fs/starfarer/api/util/WeightedRandomPicker 
L8136:  ldc_w 'total' 
L8139:  ldc_w 't' 
L8142:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8145:  aload_1 
L8146:  ldc_w Class com/fs/starfarer/api/util/WeightedRandomPicker 
L8149:  ldc_w 'ignoreWeights' 
L8152:  ldc_w 'iW' 
L8155:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8158:  aload_1 
L8159:  ldc_w Class com/fs/starfarer/api/util/WeightedRandomPicker 
L8162:  ldc_w 'random' 
L8165:  ldc_w 'r' 
L8168:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8171:  aload_1 
L8172:  ldc_w Class com/fs/starfarer/campaign/CampaignAsteroid 
L8175:  ldc_w 'name' 
L8178:  ldc_w 'n' 
L8181:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8184:  aload_1 
L8185:  ldc_w Class com/fs/starfarer/campaign/CampaignAsteroid 
L8188:  ldc_w 'lightColor' 
L8191:  ldc_w 'lc' 
L8194:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8197:  aload_1 
L8198:  ldc_w Class com/fs/starfarer/campaign/CampaignAsteroid 
L8201:  ldc_w 'rotation' 
L8204:  ldc_w 'rot' 
L8207:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8210:  aload_1 
L8211:  ldc_w Class com/fs/starfarer/campaign/CampaignAsteroid 
L8214:  ldc_w 'radius' 
L8217:  ldc_w 'r' 
L8220:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8223:  aload_1 
L8224:  ldc_w Class com/fs/starfarer/campaign/CampaignAsteroid 
L8227:  ldc_w 'owner' 
L8230:  ldc_w 'o' 
L8233:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8236:  aload_1 
L8237:  ldc_w Class com/fs/starfarer/campaign/CampaignAsteroid 
L8240:  ldc_w 'loc' 
L8243:  ldc_w 'l' 
L8246:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8249:  aload_1 
L8250:  ldc_w Class com/fs/starfarer/campaign/CampaignAsteroid 
L8253:  ldc_w 'vel' 
L8256:  ldc_w 'v' 
L8259:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8262:  aload_1 
L8263:  ldc_w 'NGW' 
L8266:  ldc_w Class com/fs/starfarer/campaign/NascentGravityWell 
L8269:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L8272:  aload_1 
L8273:  ldc_w Class com/fs/starfarer/campaign/NascentGravityWell 
L8276:  ldc_w 'containingLocation' 
L8279:  ldc_w 'cLoc' 
L8282:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8285:  aload_1 
L8286:  ldc_w Class com/fs/starfarer/campaign/NascentGravityWell 
L8289:  ldc_w 'name' 
L8292:  ldc_w 'n' 
L8295:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8298:  aload_1 
L8299:  ldc_w Class com/fs/starfarer/campaign/NascentGravityWell 
L8302:  ldc_w 'lightColor' 
L8305:  ldc_w 'lc' 
L8308:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8311:  aload_1 
L8312:  ldc_w Class com/fs/starfarer/campaign/NascentGravityWell 
L8315:  ldc_w 'radius' 
L8318:  ldc_w 'r' 
L8321:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8324:  aload_1 
L8325:  ldc_w Class com/fs/starfarer/campaign/NascentGravityWell 
L8328:  ldc_w 'owner' 
L8331:  ldc_w 'o' 
L8334:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8337:  aload_1 
L8338:  ldc_w Class com/fs/starfarer/campaign/NascentGravityWell 
L8341:  ldc_w 'loc' 
L8344:  ldc_w 'l' 
L8347:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8350:  aload_1 
L8351:  ldc_w Class com/fs/starfarer/campaign/NascentGravityWell 
L8354:  ldc_w 'vel' 
L8357:  ldc_w 'v' 
L8360:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8363:  aload_1 
L8364:  ldc_w Class com/fs/starfarer/campaign/NascentGravityWell 
L8367:  ldc_w 'target' 
L8370:  ldc_w 'p' 
L8373:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8376:  aload_1 
L8377:  ldc_w 'COrbt' 
L8380:  ldc_w Class com/fs/starfarer/campaign/CircularOrbit 
L8383:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L8386:  aload_1 
L8387:  ldc_w Class com/fs/starfarer/campaign/CircularOrbit 
L8390:  ldc_w 'entity' 
L8393:  ldc_w 'e' 
L8396:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8399:  aload_1 
L8400:  ldc_w Class com/fs/starfarer/campaign/CircularOrbit 
L8403:  ldc_w 'focus' 
L8406:  ldc_w 'f' 
L8409:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8412:  aload_1 
L8413:  ldc_w Class com/fs/starfarer/campaign/CircularOrbit 
L8416:  ldc_w 'radius' 
L8419:  ldc_w 'r' 
L8422:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8425:  aload_1 
L8426:  ldc_w Class com/fs/starfarer/campaign/CircularOrbit 
L8429:  ldc_w 'orbitalPeriod' 
L8432:  ldc_w 'op' 
L8435:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8438:  aload_1 
L8439:  ldc_w Class com/fs/starfarer/campaign/CircularOrbit 
L8442:  ldc_w 'currAngle' 
L8445:  ldc_w 'ca' 
L8448:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8451:  aload_1 
L8452:  ldc_w 'COrbtPD' 
L8455:  ldc_w Class com/fs/starfarer/campaign/CircularOrbitPointDown 
L8458:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L8461:  aload_1 
L8462:  ldc_w Class com/fs/starfarer/campaign/CircularOrbitPointDown 
L8465:  ldc_w 'entity' 
L8468:  ldc_w 'e' 
L8471:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8474:  aload_1 
L8475:  ldc_w Class com/fs/starfarer/campaign/CircularOrbitPointDown 
L8478:  ldc_w 'focus' 
L8481:  ldc_w 'f' 
L8484:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8487:  aload_1 
L8488:  ldc_w Class com/fs/starfarer/campaign/CircularOrbitPointDown 
L8491:  ldc_w 'radius' 
L8494:  ldc_w 'r' 
L8497:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8500:  aload_1 
L8501:  ldc_w Class com/fs/starfarer/campaign/CircularOrbitPointDown 
L8504:  ldc_w 'orbitalPeriod' 
L8507:  ldc_w 'op' 
L8510:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8513:  aload_1 
L8514:  ldc_w Class com/fs/starfarer/campaign/CircularOrbitPointDown 
L8517:  ldc_w 'currAngle' 
L8520:  ldc_w 'ca' 
L8523:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8526:  aload_1 
L8527:  ldc_w 'COrbtWS' 
L8530:  ldc_w Class com/fs/starfarer/campaign/CircularOrbitWithSpin 
L8533:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L8536:  aload_1 
L8537:  ldc_w Class com/fs/starfarer/campaign/CircularOrbitWithSpin 
L8540:  ldc_w 'entity' 
L8543:  ldc_w 'e' 
L8546:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8549:  aload_1 
L8550:  ldc_w Class com/fs/starfarer/campaign/CircularOrbitWithSpin 
L8553:  ldc_w 'focus' 
L8556:  ldc_w 'f' 
L8559:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8562:  aload_1 
L8563:  ldc_w Class com/fs/starfarer/campaign/CircularOrbitWithSpin 
L8566:  ldc_w 'radius' 
L8569:  ldc_w 'r' 
L8572:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8575:  aload_1 
L8576:  ldc_w Class com/fs/starfarer/campaign/CircularOrbitWithSpin 
L8579:  ldc_w 'orbitalPeriod' 
L8582:  ldc_w 'op' 
L8585:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8588:  aload_1 
L8589:  ldc_w Class com/fs/starfarer/campaign/CircularOrbitWithSpin 
L8592:  ldc_w 'currAngle' 
L8595:  ldc_w 'ca' 
L8598:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8601:  aload_1 
L8602:  ldc_w Class com/fs/starfarer/campaign/CircularOrbitWithSpin 
L8605:  ldc_w 'currFacing' 
L8608:  ldc_w 'cF' 
L8611:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8614:  aload_1 
L8615:  ldc_w Class com/fs/starfarer/campaign/CircularOrbitWithSpin 
L8618:  ldc_w 'spinVel' 
L8621:  ldc_w 'sV' 
L8624:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8627:  aload_1 
L8628:  ldc_w 'EventProbability' 
L8631:  ldc_w Class com/fs/starfarer/campaign/events/EventProbability 
L8634:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L8637:  aload_1 
L8638:  ldc_w 'Memory' 
L8641:  ldc_w Class com/fs/starfarer/campaign/rules/Memory 
L8644:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L8647:  aload_1 
L8648:  ldc_w Class com/fs/starfarer/campaign/rules/Memory 
L8651:  ldc_w 'data' 
L8654:  ldc_w 'd' 
L8657:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8660:  aload_1 
L8661:  ldc_w Class com/fs/starfarer/campaign/rules/Memory 
L8664:  ldc_w 'expire' 
L8667:  ldc_w 'e' 
L8670:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8673:  aload_1 
L8674:  ldc_w Class com/fs/starfarer/campaign/rules/Memory 
L8677:  ldc_w 'require' 
L8680:  ldc_w 'r' 
L8683:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8686:  aload_1 
L8687:  ldc_w Class com/fs/starfarer/campaign/rules/Memory 
L8690:  ldc_w 'reqFor' 
L8693:  ldc_w 'rF' 
L8696:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8699:  aload_1 
L8700:  ldc_w 'MExp' 
L8703:  ldc_w Class com/fs/starfarer/campaign/rules/Memory$Expire 
L8706:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L8709:  aload_1 
L8710:  ldc_w Class com/fs/starfarer/campaign/rules/Memory$Expire 
L8713:  ldc_w 'key' 
L8716:  ldc_w 'k' 
L8719:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8722:  aload_1 
L8723:  ldc_w Class com/fs/starfarer/campaign/rules/Memory$Expire 
L8726:  ldc_w 'timeLeft' 
L8729:  ldc_w 't' 
L8732:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8735:  aload_1 
L8736:  ldc_w 'MReq' 
L8739:  ldc_w Class com/fs/starfarer/campaign/rules/Memory$Require 
L8742:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L8745:  aload_1 
L8746:  ldc_w Class com/fs/starfarer/campaign/rules/Memory$Require 
L8749:  ldc_w 'key' 
L8752:  ldc_w 'k' 
L8755:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8758:  aload_1 
L8759:  ldc_w Class com/fs/starfarer/campaign/rules/Memory$Require 
L8762:  ldc_w 'req' 
L8765:  ldc_w 'r' 
L8768:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8771:  aload_1 
L8772:  ldc_w 'BaseCampaignEntity' 
L8775:  ldc_w Class com/fs/starfarer/campaign/BaseCampaignEntity 
L8778:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L8781:  aload_1 
L8782:  ldc_w 'CCEnt' 
L8785:  ldc_w Class com/fs/starfarer/campaign/CustomCampaignEntity 
L8788:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L8791:  aload_1 
L8792:  ldc_w Class com/fs/starfarer/campaign/CustomCampaignEntity 
L8795:  ldc_w 'layers' 
L8798:  ldc_w 'la' 
L8801:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8804:  aload_1 
L8805:  ldc_w Class com/fs/starfarer/campaign/CustomCampaignEntity 
L8808:  ldc_w 'firstLayer' 
L8811:  ldc_w 'fL' 
L8814:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8817:  aload_1 
L8818:  ldc_w Class com/fs/starfarer/campaign/CustomCampaignEntity 
L8821:  ldc_w 'plugin' 
L8824:  ldc_w 'p' 
L8827:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8830:  aload_1 
L8831:  ldc_w 'SCEPlugin' 
L8834:  ldc_w Class com/fs/starfarer/api/impl/campaign/SupplyCacheEntityPlugin 
L8837:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L8840:  aload_1 
L8841:  ldc_w Class com/fs/starfarer/api/impl/campaign/SupplyCacheEntityPlugin 
L8844:  ldc_w 'entity' 
L8847:  ldc_w 'e' 
L8850:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8853:  aload_1 
L8854:  ldc_w 'InteractionDialogImageVisual' 
L8857:  ldc_w Class com/fs/starfarer/api/InteractionDialogImageVisual 
L8860:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L8863:  aload_1 
L8864:  ldc_w Class com/fs/starfarer/api/InteractionDialogImageVisual 
L8867:  ldc_w 'spriteName' 
L8870:  ldc_w 'sn' 
L8873:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8876:  aload_1 
L8877:  ldc_w Class com/fs/starfarer/api/InteractionDialogImageVisual 
L8880:  ldc_w 'subImageWidth' 
L8883:  ldc_w 'sIW' 
L8886:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8889:  aload_1 
L8890:  ldc_w Class com/fs/starfarer/api/InteractionDialogImageVisual 
L8893:  ldc_w 'subImageHeight' 
L8896:  ldc_w 'sIH' 
L8899:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8902:  aload_1 
L8903:  ldc_w Class com/fs/starfarer/api/InteractionDialogImageVisual 
L8906:  ldc_w 'showRandomSubImage' 
L8909:  ldc_w 'sRSI' 
L8912:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8915:  aload_1 
L8916:  ldc_w Class com/fs/starfarer/api/InteractionDialogImageVisual 
L8919:  ldc_w 'subImageX' 
L8922:  ldc_w 'sIX' 
L8925:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8928:  aload_1 
L8929:  ldc_w Class com/fs/starfarer/api/InteractionDialogImageVisual 
L8932:  ldc_w 'subImageY' 
L8935:  ldc_w 'sIY' 
L8938:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8941:  aload_1 
L8942:  ldc_w Class com/fs/starfarer/api/InteractionDialogImageVisual 
L8945:  ldc_w 'subImageDisplayWidth' 
L8948:  ldc_w 'sIDW' 
L8951:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8954:  aload_1 
L8955:  ldc_w Class com/fs/starfarer/api/InteractionDialogImageVisual 
L8958:  ldc_w 'subImageDisplayHeight' 
L8961:  ldc_w 'sIWH' 
L8964:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L8967:  aload_1 
L8968:  ldc_w 'CommDirectoryEntry' 
L8971:  ldc_w Class com/fs/starfarer/campaign/CommDirectoryEntry 
L8974:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L8977:  aload_1 
L8978:  ldc_w 'CommDirectory' 
L8981:  ldc_w Class com/fs/starfarer/campaign/CommDirectory 
L8984:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L8987:  aload_1 
L8988:  ldc_w 'MissionBoard' 
L8991:  ldc_w Class com/fs/starfarer/campaign/MissionBoard 
L8994:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L8997:  aload_1 
L8998:  ldc_w 'MissionAvailability' 
L9001:  ldc_w Class com/fs/starfarer/campaign/MissionBoard$MissionAvailability 
L9004:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L9007:  aload_1 
L9008:  ldc_w 'Relationship' 
L9011:  ldc_w Class com/fs/starfarer/campaign/Relationship 
L9014:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L9017:  aload_1 
L9018:  ldc_w Class com/fs/starfarer/campaign/Relationship 
L9021:  ldc_w 'rel' 
L9024:  ldc_w 'r' 
L9027:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9030:  aload_1 
L9031:  ldc_w 'RelationshipTarget' 
L9034:  ldc_w Class com/fs/starfarer/api/characters/RelationshipAPI$RelationshipTarget 
L9037:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L9040:  aload_1 
L9041:  ldc_w 'ImportantPeople' 
L9044:  ldc_w Class com/fs/starfarer/rpg/ImportantPeople 
L9047:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L9050:  aload_1 
L9051:  ldc_w 'PersonLocation' 
L9054:  ldc_w Class com/fs/starfarer/rpg/ImportantPeople$PersonLocation 
L9057:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L9060:  aload_1 
L9061:  ldc_w 'PersonData' 
L9064:  ldc_w Class com/fs/starfarer/rpg/ImportantPeople$PersonData 
L9067:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L9070:  aload_1 
L9071:  ldc_w 'OfficerData' 
L9074:  ldc_w Class com/fs/starfarer/rpg/OfficerData 
L9077:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L9080:  aload_1 
L9081:  ldc_w 'SensorContactIndicator' 
L9084:  ldc_w Class com/fs/starfarer/campaign/SensorContactIndicatorManager$SensorContactIndicator 
L9087:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L9090:  aload_1 
L9091:  ldc_w 'SensorContactIndicatorManager' 
L9094:  ldc_w Class com/fs/starfarer/campaign/SensorContactIndicatorManager 
L9097:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L9100:  aload_1 
L9101:  ldc_w 'AbilitySlots' 
L9104:  ldc_w Class com/fs/starfarer/campaign/CampaignUIPersistentData$AbilitySlots 
L9107:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L9110:  aload_1 
L9111:  ldc_w 'AbilitySlot' 
L9114:  ldc_w Class com/fs/starfarer/campaign/CampaignUIPersistentData$AbilitySlot 
L9117:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L9120:  aload_1 
L9121:  ldc_w 'CampaignFloatingText' 
L9124:  ldc_w Class com/fs/starfarer/campaign/fleet/CampaignFloatingText 
L9127:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L9130:  aload_1 
L9131:  ldc_w 'CampaignTerrain' 
L9134:  ldc_w Class com/fs/starfarer/campaign/CampaignTerrain 
L9137:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L9140:  aload_1 
L9141:  ldc_w Class com/fs/starfarer/campaign/CampaignTerrain 
L9144:  ldc_w 'type' 
L9147:  ldc_w 'type' 
L9150:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9153:  aload_1 
L9154:  ldc_w Class com/fs/starfarer/campaign/CampaignTerrain 
L9157:  ldc_w 'radius' 
L9160:  ldc_w 'radius' 
L9163:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9166:  aload_1 
L9167:  ldc_w 'DynamicStats' 
L9170:  ldc_w Class com/fs/starfarer/util/DynamicStats 
L9173:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L9176:  aload_1 
L9177:  ldc_w 'ContrailEngine' 
L9180:  ldc_w Class com/fs/starfarer/campaign/fleet/ContrailEngineV2 
L9183:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L9186:  aload_1 
L9187:  ldc_w 'Contrail' 
L9190:  ldc_w Class com/fs/starfarer/campaign/fleet/ContrailEngineV2$Contrail 
L9193:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L9196:  aload_1 
L9197:  ldc_w Class com/fs/starfarer/campaign/fleet/ContrailEngineV2$Contrail 
L9200:  ldc_w 'source' 
L9203:  ldc_w 'src' 
L9206:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9209:  aload_1 
L9210:  ldc_w Class com/fs/starfarer/campaign/fleet/ContrailEngineV2$Contrail 
L9213:  ldc_w 'remove' 
L9216:  ldc_w 'r' 
L9219:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9222:  aload_1 
L9223:  ldc_w Class com/fs/starfarer/campaign/fleet/ContrailEngineV2$Contrail 
L9226:  ldc_w 'totalLength' 
L9229:  ldc_w 'tL' 
L9232:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9235:  aload_1 
L9236:  ldc_w Class com/fs/starfarer/campaign/fleet/ContrailEngineV2$Contrail 
L9239:  ldc_w 'lastPoint' 
L9242:  ldc_w 'lP' 
L9245:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9248:  aload_1 
L9249:  ldc_w Class com/fs/starfarer/campaign/fleet/ContrailEngineV2$Contrail 
L9252:  ldc_w 'color' 
L9255:  ldc_w 'c' 
L9258:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9261:  aload_1 
L9262:  ldc_w Class com/fs/starfarer/campaign/fleet/ContrailEngineV2$Contrail 
L9265:  ldc_w 'width' 
L9268:  ldc_w 'w' 
L9271:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9274:  aload_1 
L9275:  ldc_w Class com/fs/starfarer/campaign/fleet/ContrailEngineV2$Contrail 
L9278:  ldc_w 'duration' 
L9281:  ldc_w 'd' 
L9284:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9287:  aload_1 
L9288:  ldc_w Class com/fs/starfarer/campaign/fleet/ContrailEngineV2$Contrail 
L9291:  ldc_w 'minSegLength' 
L9294:  ldc_w 'minSL' 
L9297:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9300:  aload_1 
L9301:  ldc_w Class com/fs/starfarer/campaign/fleet/ContrailEngineV2$Contrail 
L9304:  ldc_w 'maxSegLength' 
L9307:  ldc_w 'maxSL' 
L9310:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9313:  aload_1 
L9314:  ldc_w Class [u2375] 
L9317:  ldc_w 'mode' 
L9320:  ldc_w 'm' 
L9323:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9326:  aload_1 
L9327:  ldc_w Class [u2375] 
L9330:  ldc_w 'blendMode' 
L9333:  ldc_w 'bM' 
L9336:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9339:  aload_1 
L9340:  ldc_w Class [u2375] 
L9343:  ldc_w 'autoCleanup' 
L9346:  ldc_w 'aC' 
L9349:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9352:  aload_1 
L9353:  ldc_w 'SCInd' 
L9356:  ldc_w Class com/fs/starfarer/campaign/SensorContactIndicatorManager$SensorContactIndicator 
L9359:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L9362:  aload_1 
L9363:  ldc_w Class com/fs/starfarer/campaign/SensorContactIndicatorManager$SensorContactIndicator 
L9366:  ldc_w 'fader' 
L9369:  ldc_w 'f' 
L9372:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9375:  aload_1 
L9376:  ldc_w Class com/fs/starfarer/campaign/SensorContactIndicatorManager$SensorContactIndicator 
L9379:  ldc_w 'offset' 
L9382:  ldc_w 'o' 
L9385:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9388:  aload_1 
L9389:  ldc_w Class com/fs/starfarer/campaign/SensorContactIndicatorManager 
L9392:  ldc_w 'sensorInds' 
L9395:  ldc_w 'sI' 
L9398:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9401:  aload_1 
L9402:  ldc_w Class com/fs/starfarer/campaign/SensorContactIndicatorManager 
L9405:  ldc_w 'sinceLastNoticedPing' 
L9408:  ldc_w 'sLNP' 
L9411:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9414:  aload_1 
L9415:  ldc_w Class com/fs/starfarer/campaign/SensorContactIndicatorManager 
L9418:  ldc_w 'sinceLastLostSightPing' 
L9421:  ldc_w 'sLLSP' 
L9424:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9427:  aload_1 
L9428:  ldc_w Class com/fs/starfarer/campaign/SensorContactIndicatorManager 
L9431:  ldc_w 'entity' 
L9434:  ldc_w 'e' 
L9437:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9440:  aload_1 
L9441:  ldc_w 'ConPt' 
L9444:  ldc_w Class com/fs/starfarer/campaign/fleet/ContrailEngineV2$ContrailPoint 
L9447:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L9450:  aload_1 
L9451:  ldc_w Class com/fs/starfarer/campaign/fleet/ContrailEngineV2$ContrailPoint 
L9454:  ldc_w 'point' 
L9457:  ldc_w 'pt' 
L9460:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9463:  aload_1 
L9464:  ldc_w Class com/fs/starfarer/campaign/fleet/ContrailEngineV2$ContrailPoint 
L9467:  ldc_w 'dirToNext' 
L9470:  ldc_w 'dTN' 
L9473:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9476:  aload_1 
L9477:  ldc_w Class com/fs/starfarer/campaign/fleet/ContrailEngineV2$ContrailPoint 
L9480:  ldc_w 'perp' 
L9483:  ldc_w 'pp' 
L9486:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9489:  aload_1 
L9490:  ldc_w Class com/fs/starfarer/campaign/fleet/ContrailEngineV2$ContrailPoint 
L9493:  ldc_w 'vel' 
L9496:  ldc_w 'v' 
L9499:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9502:  aload_1 
L9503:  ldc_w Class com/fs/starfarer/campaign/fleet/ContrailEngineV2$ContrailPoint 
L9506:  ldc_w 'width' 
L9509:  ldc_w 'w' 
L9512:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9515:  aload_1 
L9516:  ldc_w Class com/fs/starfarer/campaign/fleet/ContrailEngineV2$ContrailPoint 
L9519:  ldc_w 'duration' 
L9522:  ldc_w 'd' 
L9525:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9528:  aload_1 
L9529:  ldc_w Class com/fs/starfarer/campaign/fleet/ContrailEngineV2$ContrailPoint 
L9532:  ldc_w 'maxWidth' 
L9535:  ldc_w 'mW' 
L9538:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9541:  aload_1 
L9542:  ldc_w Class com/fs/starfarer/campaign/fleet/ContrailEngineV2$ContrailPoint 
L9545:  ldc_w 'maxBrightness' 
L9548:  ldc_w 'mB' 
L9551:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9554:  aload_1 
L9555:  ldc_w Class com/fs/starfarer/campaign/fleet/ContrailEngineV2$ContrailPoint 
L9558:  ldc_w 'elapsed' 
L9561:  ldc_w 'e' 
L9564:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9567:  aload_1 
L9568:  ldc_w Class [u2379] 
L9571:  ldc_w 'progress' 
L9574:  ldc_w 'pr' 
L9577:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9580:  aload_1 
L9581:  ldc_w Class [u2379] 
L9584:  ldc_w 'distToPrev' 
L9587:  ldc_w 'dTP' 
L9590:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9593:  aload_1 
L9594:  ldc_w Class [u2379] 
L9597:  ldc_w 'texCoord' 
L9600:  ldc_w 'tC' 
L9603:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9606:  aload_1 
L9607:  ldc_w Class [u2379] 
L9610:  ldc_w 'fadeOut' 
L9613:  ldc_w 'fO' 
L9616:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9619:  aload_1 
L9620:  ldc_w Class [u2379] 
L9623:  ldc_w 'origMax' 
L9626:  ldc_w 'oM' 
L9629:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9632:  aload_1 
L9633:  ldc_w Class [u2379] 
L9636:  ldc_w 'lastProximityMult' 
L9639:  ldc_w 'lPM' 
L9642:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9645:  aload_1 
L9646:  ldc_w Class [u2379] 
L9649:  ldc_w 'elapsedWhenFadeOut' 
L9652:  ldc_w 'eWFO' 
L9655:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9658:  aload_1 
L9659:  ldc_w 'ContrailWidthMode' 
L9662:  ldc_w Class com/fs/starfarer/combat/entities/ContrailEngine$ContrailWidthMode 
L9665:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L9668:  aload_1 
L9669:  ldc_w 'BlendMode' 
L9672:  ldc_w Class com/fs/starfarer/loading/specs/EngineSlot$BlendMode 
L9675:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L9678:  aload_1 
L9679:  ldc_w 'Battle' 
L9682:  ldc_w Class com/fs/starfarer/campaign/fleet/Battle 
L9685:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L9688:  aload_1 
L9689:  ldc_w 'CommMessage' 
L9692:  ldc_w Class com/fs/starfarer/campaign/comms/CommMessage 
L9695:  invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L9698:  aload_1 
L9699:  ldc_w Class com/fs/starfarer/campaign/comms/CommMessage 
L9702:  ldc_w 'type' 
L9705:  ldc_w 't' 
L9708:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9711:  aload_1 
L9712:  ldc_w Class com/fs/starfarer/campaign/comms/CommMessage 
L9715:  ldc_w 'shortType' 
L9718:  ldc_w 'sT' 
L9721:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9724:  aload_1 
L9725:  ldc_w Class com/fs/starfarer/campaign/comms/CommMessage 
L9728:  ldc_w 'sender' 
L9731:  ldc_w 'se' 
L9734:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9737:  aload_1 
L9738:  ldc_w Class com/fs/starfarer/campaign/comms/CommMessage 
L9741:  ldc_w 'sound' 
L9744:  ldc_w 'so' 
L9747:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9750:  aload_1 
L9751:  ldc_w Class com/fs/starfarer/campaign/comms/CommMessage 
L9754:  ldc_w 'subject' 
L9757:  ldc_w 'su' 
L9760:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9763:  aload_1 
L9764:  ldc_w Class com/fs/starfarer/campaign/comms/CommMessage 
L9767:  ldc_w 'note' 
L9770:  ldc_w 'n' 
L9773:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9776:  aload_1 
L9777:  ldc_w Class com/fs/starfarer/campaign/comms/CommMessage 
L9780:  ldc_w 'noteColor' 
L9783:  ldc_w 'nC' 
L9786:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9789:  aload_1 
L9790:  ldc_w Class com/fs/starfarer/campaign/comms/CommMessage 
L9793:  ldc_w 'section1' 
L9796:  ldc_w 's1' 
L9799:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9802:  aload_1 
L9803:  ldc_w Class com/fs/starfarer/campaign/comms/CommMessage 
L9806:  ldc_w 'section2' 
L9809:  ldc_w 's2' 
L9812:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9815:  aload_1 
L9816:  ldc_w Class com/fs/starfarer/campaign/comms/CommMessage 
L9819:  ldc_w 'section3' 
L9822:  ldc_w 's3' 
L9825:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9828:  aload_1 
L9829:  ldc_w Class com/fs/starfarer/campaign/comms/CommMessage 
L9832:  ldc_w 'smallIcon' 
L9835:  ldc_w 'sI' 
L9838:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9841:  aload_1 
L9842:  ldc_w Class com/fs/starfarer/campaign/comms/CommMessage 
L9845:  ldc_w 'image' 
L9848:  ldc_w 'i' 
L9851:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9854:  aload_1 
L9855:  ldc_w Class com/fs/starfarer/campaign/comms/CommMessage 
L9858:  ldc_w 'channel' 
L9861:  ldc_w 'c' 
L9864:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9867:  aload_1 
L9868:  ldc_w Class com/fs/starfarer/campaign/comms/CommMessage 
L9871:  ldc_w 'locationString' 
L9874:  ldc_w 'lC' 
L9877:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9880:  aload_1 
L9881:  ldc_w Class com/fs/starfarer/campaign/comms/CommMessage 
L9884:  ldc_w 'action' 
L9887:  ldc_w 'a' 
L9890:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9893:  aload_1 
L9894:  ldc_w Class com/fs/starfarer/campaign/comms/CommMessage 
L9897:  ldc_w 'customData' 
L9900:  ldc_w 'cD' 
L9903:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9906:  aload_1 
L9907:  ldc_w Class com/fs/starfarer/campaign/comms/CommMessage 
L9910:  ldc_w 'id' 
L9913:  ldc_w 'id' 
L9916:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9919:  aload_1 
L9920:  ldc_w Class com/fs/starfarer/campaign/comms/CommMessage 
L9923:  ldc_w 'addToIntelTab' 
L9926:  ldc_w 'aTI' 
L9929:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9932:  aload_1 
L9933:  ldc_w Class com/fs/starfarer/campaign/comms/CommMessage 
L9936:  ldc_w 'timeSent' 
L9939:  ldc_w 'tS' 
L9942:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9945:  aload_1 
L9946:  ldc_w Class com/fs/starfarer/campaign/comms/CommMessage 
L9949:  ldc_w 'timeReceived' 
L9952:  ldc_w 'tR' 
L9955:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9958:  aload_1 
L9959:  ldc_w Class com/fs/starfarer/campaign/comms/CommMessage 
L9962:  ldc_w 'deliveredBy' 
L9965:  ldc_w 'dB' 
L9968:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9971:  aload_1 
L9972:  ldc_w Class com/fs/starfarer/campaign/comms/CommMessage 
L9975:  ldc_w 'starSystemId' 
L9978:  ldc_w 'sSI' 
L9981:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9984:  aload_1 
L9985:  ldc_w Class com/fs/starfarer/campaign/comms/CommMessage 
L9988:  ldc_w 'locInHyper' 
L9991:  ldc_w 'lIH' 
L9994:  invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L9997:  aload_1 
L9998:  ldc_w Class com/fs/starfarer/campaign/comms/CommMessage 
L10001: ldc_w 'subjectHighlights' 
L10004: ldc_w 'sH' 
L10007: invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L10010: aload_1 
L10011: ldc_w Class com/fs/starfarer/campaign/comms/CommMessage 
L10014: ldc_w 'tags' 
L10017: ldc_w 'tags' 
L10020: invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L10023: aload_1 
L10024: ldc_w Class com/fs/starfarer/campaign/comms/CommMessage 
L10027: ldc_w 'subjectColor' 
L10030: ldc_w 'sC' 
L10033: invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L10036: aload_1 
L10037: ldc_w Class com/fs/starfarer/campaign/comms/CommMessage 
L10040: ldc_w 'onDelivery' 
L10043: ldc_w 'oD' 
L10046: invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L10049: aload_1 
L10050: ldc_w Class com/fs/starfarer/campaign/comms/CommMessage 
L10053: ldc_w 'marketId' 
L10056: ldc_w 'mI' 
L10059: invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L10062: aload_1 
L10063: ldc_w Class com/fs/starfarer/campaign/comms/CommMessage 
L10066: ldc_w 'priceUpdates' 
L10069: ldc_w 'pU' 
L10072: invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L10075: aload_1 
L10076: ldc_w Class com/fs/starfarer/campaign/comms/CommMessage 
L10079: ldc_w 'customMap' 
L10082: ldc_w 'cM' 
L10085: invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L10088: aload_1 
L10089: ldc_w Class com/fs/starfarer/campaign/comms/CommMessage 
L10092: ldc_w 'showInCampaignList' 
L10095: ldc_w 'sIC' 
L10098: invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L10101: aload_1 
L10102: ldc_w Class com/fs/starfarer/campaign/comms/CommMessage 
L10105: ldc_w 'centerMapOnEntity' 
L10108: ldc_w 'cMOE' 
L10111: invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L10114: aload_1 
L10115: ldc_w 'MessageSection' 
L10118: ldc_w Class com/fs/starfarer/campaign/comms/CommMessage$MessageSection 
L10121: invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L10124: aload_1 
L10125: ldc_w Class com/fs/starfarer/campaign/comms/CommMessage$MessageSection 
L10128: ldc_w 'title' 
L10131: ldc_w 't' 
L10134: invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L10137: aload_1 
L10138: ldc_w Class com/fs/starfarer/campaign/comms/CommMessage$MessageSection 
L10141: ldc_w 'body' 
L10144: ldc_w 'b' 
L10147: invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L10150: aload_1 
L10151: ldc_w Class com/fs/starfarer/campaign/comms/CommMessage$MessageSection 
L10154: ldc_w 'highlights' 
L10157: ldc_w 'h' 
L10160: invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L10163: aload_1 
L10164: ldc_w Class com/fs/starfarer/campaign/comms/CommMessage$MessageSection 
L10167: ldc_w 'highlightColors' 
L10170: ldc_w 'hC' 
L10173: invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L10176: aload_1 
L10177: ldc_w 'MessagePara' 
L10180: ldc_w Class com/fs/starfarer/campaign/comms/CommMessage$MessagePara 
L10183: invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L10186: aload_1 
L10187: ldc_w Class com/fs/starfarer/campaign/comms/CommMessage$MessagePara 
L10190: ldc_w 'heading' 
L10193: ldc_w 'h' 
L10196: invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L10199: ldc_w '0.4' 
L10202: aload_0 
L10203: invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L10206: ifeq L10222 
L10209: aload_1 
L10210: ldc_w Class com/fs/starfarer/campaign/comms/CommMessage$MessagePara 
L10213: ldc_w 'body' 
L10216: ldc_w 'b' 
L10219: invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 

        .stack append Integer 
L10222: aload_1 
L10223: ldc_w Class com/fs/starfarer/campaign/comms/CommMessage$MessagePara 
L10226: ldc_w 'headingColor' 
L10229: ldc_w 'hC' 
L10232: invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L10235: aload_1 
L10236: ldc_w Class com/fs/starfarer/campaign/comms/CommMessage$MessagePara 
L10239: ldc_w 'bodyColor' 
L10242: ldc_w 'bC' 
L10245: invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L10248: aload_1 
L10249: ldc_w 'CircularOrbitWithSpin' 
L10252: ldc_w Class com/fs/starfarer/campaign/CircularOrbitWithSpin 
L10255: invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L10258: aload_1 
L10259: ldc_w 'LocationToken' 
L10262: ldc_w Class com/fs/starfarer/campaign/BaseLocation$LocationToken 
L10265: invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L10268: aload_1 
L10269: ldc_w 'Hyperspace' 
L10272: ldc_w Class com/fs/starfarer/campaign/Hyperspace 
L10275: invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L10278: aload_1 
L10279: ldc_w 'FMRelation' 
L10282: ldc_w Class com/fs/starfarer/campaign/FactionManager$Relation 
L10285: invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L10288: aload_1 
L10289: ldc_w 'CircularFleetOrbit' 
L10292: ldc_w Class com/fs/starfarer/campaign/CircularFleetOrbit 
L10295: invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L10298: aload_1 
L10299: ldc_w 'v2f' 
L10302: ldc_w Class org/lwjgl/util/vector/Vector2f 
L10305: invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L10308: aload_1 
L10309: ldc_w 'PCMarket' 
L10312: ldc_w Class com/fs/starfarer/campaign/econ/PlanetConditionMarket 
L10315: invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L10318: aload_1 
L10319: ldc_w 'UpdateFromSystemLocationOrbit' 
L10322: ldc_w Class [u1696] 
L10325: invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L10328: aload_1 
L10329: ldc_w 'SavedHintData' 
L10332: ldc_w Class com/fs/starfarer/ui/newui/HintPanel$SavedHintData 
L10335: invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L10338: aload_1 
L10339: ldc_w Class com/fs/starfarer/ui/newui/HintPanel$SavedHintData 
L10342: ldc_w 'index' 
L10345: ldc_w 'i' 
L10348: invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L10351: aload_1 
L10352: ldc_w Class com/fs/starfarer/ui/newui/HintPanel$SavedHintData 
L10355: ldc_w 'format' 
L10358: ldc_w 'f' 
L10361: invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L10364: aload_1 
L10365: ldc_w Class com/fs/starfarer/ui/newui/HintPanel$SavedHintData 
L10368: ldc_w 'color' 
L10371: ldc_w 'c' 
L10374: invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L10377: aload_1 
L10378: ldc_w Class com/fs/starfarer/ui/newui/HintPanel$SavedHintData 
L10381: ldc_w 'hl' 
L10384: ldc_w 'h' 
L10387: invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L10390: aload_1 
L10391: ldc_w Class com/fs/starfarer/ui/newui/HintPanel$SavedHintData 
L10394: ldc_w 'highlights' 
L10397: ldc_w 'hi' 
L10400: invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L10403: aload_1 
L10404: ldc_w Class com/fs/starfarer/ui/newui/HintPanel$SavedHintData 
L10407: ldc_w 'opacity' 
L10410: ldc_w 'o' 
L10413: invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L10416: aload_1 
L10417: ldc_w Class com/fs/starfarer/ui/newui/HintPanel$SavedHintData 
L10420: ldc_w 'alpha' 
L10423: ldc_w 'a' 
L10426: invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L10429: aload_1 
L10430: ldc_w Class com/fs/starfarer/ui/newui/HintPanel$SavedHintData 
L10433: ldc_w 'flash' 
L10436: ldc_w 'fla' 
L10439: invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L10442: aload_1 
L10443: ldc_w Class com/fs/starfarer/ui/newui/HintPanel$SavedHintData 
L10446: ldc_w 'fadingIn' 
L10449: ldc_w 'fI' 
L10452: invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L10455: aload_1 
L10456: ldc_w Class com/fs/starfarer/ui/newui/HintPanel$SavedHintData 
L10459: ldc_w 'fadingOut' 
L10462: ldc_w 'fO' 
L10465: invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L10468: aload_1 
L10469: ldc_w 'MCQ' 
L10472: ldc_w Class com/fs/starfarer/api/campaign/econ/MutableCommodityQuantity 
L10475: invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L10478: aload_1 
L10479: ldc_w Class com/fs/starfarer/api/campaign/econ/MutableCommodityQuantity 
L10482: ldc_w 'commodityId' 
L10485: ldc_w 'c' 
L10488: invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L10491: aload_1 
L10492: ldc_w Class com/fs/starfarer/api/campaign/econ/MutableCommodityQuantity 
L10495: ldc_w 'quantity' 
L10498: ldc_w 'q' 
L10501: invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L10504: aload_1 
L10505: ldc_w 'ReachEconomy' 
L10508: ldc_w Class com/fs/starfarer/campaign/econ/reach/ReachEconomy 
L10511: invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L10514: aload_1 
L10515: ldc_w 'EconWorkParams' 
L10518: ldc_w Class com/fs/starfarer/campaign/econ/reach/MainWorkTask$EconWorkParams 
L10521: invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L10524: aload_1 
L10525: ldc_w 'st' 
L10528: ldc Class java/lang/String 
L10530: invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L10533: aload_1 
L10534: ldc_w 'bp' 
L10537: getstatic Field java/lang/Boolean TYPE Ljava/lang/Class; 
L10540: invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L10543: aload_1 
L10544: ldc_w 'fp' 
L10547: getstatic Field java/lang/Float TYPE Ljava/lang/Class; 
L10550: invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L10553: aload_1 
L10554: ldc_w 'ip' 
L10557: getstatic Field java/lang/Integer TYPE Ljava/lang/Class; 
L10560: invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L10563: aload_1 
L10564: ldc_w 'Lp' 
L10567: getstatic Field java/lang/Long TYPE Ljava/lang/Class; 
L10570: invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L10573: aload_1 
L10574: ldc_w 'l-h-m' 
L10577: ldc_w Class java/util/LinkedHashMap 
L10580: invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L10583: aload_1 
L10584: ldc_w Class com/fs/graphics/util/Fader 
L10587: ldc_w 'currBrightness' 
L10590: ldc_w 'b' 
L10593: invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L10596: aload_1 
L10597: ldc_w Class com/fs/graphics/util/Fader 
L10600: ldc_w 'durationIn' 
L10603: ldc_w 'i' 
L10606: invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L10609: aload_1 
L10610: ldc_w Class com/fs/graphics/util/Fader 
L10613: ldc_w 'durationOut' 
L10616: ldc_w 'o' 
L10619: invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L10622: aload_1 
L10623: ldc_w Class com/fs/graphics/util/Fader 
L10626: ldc_w 'state' 
L10629: ldc_w 's' 
L10632: invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L10635: aload_1 
L10636: ldc_w Class com/fs/graphics/util/Fader 
L10639: ldc_w 'bounceDown' 
L10642: ldc_w 'd' 
L10645: invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L10648: aload_1 
L10649: ldc_w Class com/fs/graphics/util/Fader 
L10652: ldc_w 'bounceUp' 
L10655: ldc_w 'u' 
L10658: invokevirtual Method com/thoughtworks/xstream/XStream aliasAttribute [u1923] 
L10661: aload_1 
L10662: ldc_w 'e' 
L10665: ldc_w Class java/util/Map$Entry 
L10668: invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L10671: aload_1 
L10672: ldc_w 'EnabledModData' 
L10675: ldc_w Class com/fs/starfarer/campaign/ModAndPluginData$EnabledModData 
L10678: invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L10681: aload_1 
L10682: ldc_w 'ModDependency' 
L10685: ldc_w Class com/fs/starfarer/launcher/ModManager$ModDependency 
L10688: invokevirtual Method com/thoughtworks/xstream/XStream alias (Ljava/lang/String;Ljava/lang/Class;)V 
L10691: invokestatic Method com/fs/starfarer/launcher/ModManager getInstance ()Lcom/fs/starfarer/launcher/ModManager; 
L10694: invokevirtual Method com/fs/starfarer/launcher/ModManager getEnabledModPlugins ()Ljava/util/List; 
L10697: invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L10702: astore 4 
L10704: goto L10725 

        .stack full 
            locals Object java/lang/String Object com/thoughtworks/xstream/XStream Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L10707: aload 4 
L10709: invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L10714: checkcast com/fs/starfarer/api/ModPlugin 
L10717: astore_3 
L10718: aload_3 
L10719: aload_1 
L10720: invokeinterface InterfaceMethod com/fs/starfarer/api/ModPlugin configureXStream (Lcom/thoughtworks/xstream/XStream;)V 2 

        .stack same 
L10725: aload 4 
L10727: invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L10732: ifne L10707 

        .stack full 
            locals Object java/lang/String Object com/thoughtworks/xstream/XStream Integer 
            stack 
        .end stack 
L10735: aload_1 
L10736: putstatic Field [c1] String Lcom/thoughtworks/xstream/XStream; 
L10739: aload_1 
L10740: areturn 
L10741: 
    .end code 
.end method 

.method public static 'Ó00000' : (Ljava/io/File;)V 
    .code stack 4 locals 7 
L0:     iconst_0 
L1:     istore_1 
        .catch java/lang/Throwable from L2 to L77 using L80 
L2:     new java/io/FileInputStream 
L5:     dup 
L6:     aload_0 
L7:     invokespecial Method java/io/FileInputStream <init> (Ljava/io/File;)V 
L10:    astore_2 
L11:    sipush 1024 
L14:    newarray byte 
L16:    astore_3 
L17:    aload_2 
L18:    aload_3 
L19:    invokevirtual Method java/io/InputStream read ([B)I 
L22:    istore 4 
L24:    aload_2 
L25:    invokevirtual Method java/io/InputStream close ()V 
L28:    iload 4 
L30:    ifgt L35 
L33:    iconst_1 
L34:    istore_1 

        .stack full 
            locals Object java/io/File Integer Object java/io/InputStream Object [B Integer 
            stack 
        .end stack 
L35:    iload_1 
L36:    ifne L94 
L39:    iconst_0 
L40:    istore 5 
L42:    iconst_0 
L43:    istore 6 
L45:    goto L61 

        .stack append Integer Integer 
L48:    aload_3 
L49:    iload 6 
L51:    baload 
L52:    ifne L58 
L55:    iinc 5 1 

        .stack same 
L58:    iinc 6 1 

        .stack same 
L61:    iload 6 
L63:    iload 4 
L65:    if_icmplt L48 
L68:    iload 5 
L70:    iload 4 
L72:    if_icmpne L94 
L75:    iconst_1 
L76:    istore_1 
L77:    goto L94 

        .stack full 
            locals Object java/io/File Integer 
            stack Object java/lang/Throwable 
        .end stack 
L80:    astore_2 
L81:    new java/lang/RuntimeException 
L84:    dup 
L85:    aload_2 
L86:    invokevirtual Method java/lang/Throwable getMessage ()Ljava/lang/String; 
L89:    aload_2 
L90:    invokespecial Method java/lang/RuntimeException <init> (Ljava/lang/String;Ljava/lang/Throwable;)V 
L93:    athrow 

        .stack same 
L94:    iload_1 
L95:    ifeq L109 
L98:    new com/fs/starfarer/util/E 
L101:   dup 
L102:   ldc_w 'Save game operation produced a corrupted file. Your previous save is unaffected.\n\nPlease try saving again; if that doesn\'t work, use the "Save Copy" option from the campaign menu.' 
L105:   invokespecial Method com/fs/starfarer/util/E <init> (Ljava/lang/String;)V 
L108:   athrow 

        .stack same 
L109:   return 
L110:   
    .end code 
.end method 

.method private static o00000 : (Ljava/io/File;)V 
    .exceptions java/io/IOException 
    .code stack 4 locals 4 
L0:     bipush 100 
L2:     istore_1 
L3:     iconst_0 
L4:     istore_2 
L5:     goto L34 
        .catch java/lang/InterruptedException from L8 to L14 using L17 

        .stack append Integer Integer 
L8:     ldc2_w 10L 
L11:    invokestatic Method java/lang/Thread sleep (J)V 
L14:    goto L31 

        .stack stack_1 Object java/lang/InterruptedException 
L17:    astore_3 
L18:    new java/lang/RuntimeException 
L21:    dup 
L22:    aload_3 
L23:    invokevirtual Method java/lang/InterruptedException getMessage ()Ljava/lang/String; 
L26:    aload_3 
L27:    invokespecial Method java/lang/RuntimeException <init> (Ljava/lang/String;Ljava/lang/Throwable;)V 
L30:    athrow 

        .stack same 
L31:    iinc 2 1 

        .stack same 
L34:    iload_2 
L35:    iload_1 
L36:    if_icmpge L46 
L39:    aload_0 
L40:    invokevirtual Method java/io/File exists ()Z 
L43:    ifne L8 

        .stack chop 1 
L46:    aload_0 
L47:    invokevirtual Method java/io/File exists ()Z 
L50:    ifeq L64 
L53:    new com/fs/starfarer/util/E 
L56:    dup 
L57:    ldc_w 'File deletion failed. Your current save may be corrupted.\n\nPlease try saving to an empty slot using the "Save As" option from the campaign menu - this should create a valid save file.' 
L60:    invokespecial Method com/fs/starfarer/util/E <init> (Ljava/lang/String;)V 
L63:    athrow 

        .stack same 
L64:    return 
L65:    
    .end code 
.end method 

.method private static o00000 : (Ljava/io/File;Ljava/io/File;)V 
    .exceptions java/io/IOException 
    .code stack 4 locals 3 
L0:     getstatic Field [c1] 'Ö00000' Lorg/apache/log4j/Logger; 
L3:     new java/lang/StringBuilder 
L6:     dup 
L7:     ldc_w 'Renaming [' 
L10:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L13:    aload_0 
L14:    invokevirtual Method java/io/File getName ()Ljava/lang/String; 
L17:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L20:    ldc_w '] to [' 
L23:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L26:    aload_1 
L27:    invokevirtual Method java/io/File getName ()Ljava/lang/String; 
L30:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L33:    ldc_w ']' 
L36:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L39:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L42:    invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L45:    aload_0 
L46:    invokevirtual Method java/io/File exists ()Z 
L49:    ifeq L73 
L52:    aload_0 
L53:    aload_1 
L54:    invokevirtual Method java/io/File renameTo (Ljava/io/File;)Z 
L57:    istore_2 
L58:    iload_2 
L59:    ifne L73 
L62:    new com/fs/starfarer/util/E 
L65:    dup 
L66:    ldc_w 'File rename failed. Your current save may be corrupted.\n\nPlease try saving to an empty slot using the "Save As" option from the campaign menu - this should create a valid save file.' 
L69:    invokespecial Method com/fs/starfarer/util/E <init> (Ljava/lang/String;)V 
L72:    athrow 

        .stack same_extended 
L73:    return 
L74:    
    .end code 
.end method 
.innerclasses 
    com/fs/graphics/util/Fader$State com/fs/graphics/util/Fader State public static final enum 
    com/fs/graphics/util/GLListManager$GLListToken com/fs/graphics/util/GLListManager GLListToken public static 
    [c833] com/fs/starfarer/api/campaign/CargoAPI CargoItemType public static final enum 
    com/fs/starfarer/api/campaign/JumpPointAPI$JumpDestination com/fs/starfarer/api/campaign/JumpPointAPI JumpDestination public static 
    com/fs/starfarer/api/campaign/comm/CommMessageAPI$MessageClickAction com/fs/starfarer/api/campaign/comm/CommMessageAPI MessageClickAction public static final enum 
    com/fs/starfarer/api/characters/FullName$Gender com/fs/starfarer/api/characters/FullName Gender public static final enum 
    com/fs/starfarer/api/characters/RelationshipAPI$RelationshipTarget com/fs/starfarer/api/characters/RelationshipAPI RelationshipTarget public static 
    com/fs/starfarer/api/combat/MutableStat$StatMod com/fs/starfarer/api/combat/MutableStat StatMod public static 
    com/fs/starfarer/api/combat/MutableStatWithTempMods$TemporaryStatMod com/fs/starfarer/api/combat/MutableStatWithTempMods TemporaryStatMod public static 
    com/fs/starfarer/api/combat/ShipAPI$HullSize com/fs/starfarer/api/combat/ShipAPI HullSize public static final enum 
    com/fs/starfarer/api/fleet/RepairTrackerAPI$CREvent com/fs/starfarer/api/fleet/RepairTrackerAPI CREvent public static 
    com/fs/starfarer/api/impl/campaign/procgen/SalvageEntityGenDataSpec$DropData com/fs/starfarer/api/impl/campaign/procgen/SalvageEntityGenDataSpec DropData public static 
    com/fs/starfarer/api/impl/campaign/procgen/StarSystemGenerator$StarSystemType com/fs/starfarer/api/impl/campaign/procgen/StarSystemGenerator StarSystemType public static final enum 
    com/fs/starfarer/api/impl/campaign/submarkets/BaseSubmarketPlugin$ShipSalesData com/fs/starfarer/api/impl/campaign/submarkets/BaseSubmarketPlugin ShipSalesData public static 
    com/fs/starfarer/api/util/ColorShifterUtil$ShiftData2 com/fs/starfarer/api/util/ColorShifterUtil ShiftData2 public static 
    com/fs/starfarer/api/util/ValueShifterUtil$ShiftData2 com/fs/starfarer/api/util/ValueShifterUtil ShiftData2 public static 
    com/fs/starfarer/campaign/BaseLocation$LocationToken com/fs/starfarer/campaign/BaseLocation LocationToken public static 
    com/fs/starfarer/campaign/CampaignEngine$o com/fs/starfarer/campaign/CampaignEngine o public static interface abstract 
    com/fs/starfarer/campaign/CampaignHelpManager$HelpDialogStatus com/fs/starfarer/campaign/CampaignHelpManager HelpDialogStatus public static 
    com/fs/starfarer/campaign/CampaignUIPersistentData$AbilitySlot com/fs/starfarer/campaign/CampaignUIPersistentData AbilitySlot public static 
    com/fs/starfarer/campaign/CampaignUIPersistentData$AbilitySlots com/fs/starfarer/campaign/CampaignUIPersistentData AbilitySlots public static 
    com/fs/starfarer/campaign/CharacterStats$AptitudeLevel com/fs/starfarer/campaign/CharacterStats AptitudeLevel public static 
    com/fs/starfarer/campaign/CharacterStats$SkillLevel com/fs/starfarer/campaign/CharacterStats SkillLevel public static 
    com/fs/starfarer/campaign/FactionManager$Relation com/fs/starfarer/campaign/FactionManager Relation public static final 
    com/fs/starfarer/campaign/JumpPoint$CoronaData com/fs/starfarer/campaign/JumpPoint CoronaData public static 
    com/fs/starfarer/campaign/JumpPoint$RingData com/fs/starfarer/campaign/JumpPoint RingData public static 
    com/fs/starfarer/campaign/MissionBoard$MissionAvailability com/fs/starfarer/campaign/MissionBoard MissionAvailability public static 
    com/fs/starfarer/campaign/ModAndPluginData$EnabledModData com/fs/starfarer/campaign/ModAndPluginData EnabledModData public static 
    com/fs/starfarer/campaign/SensorContactIndicatorManager$SensorContactIndicator com/fs/starfarer/campaign/SensorContactIndicatorManager SensorContactIndicator public 
    com/fs/starfarer/campaign/StarSystem$UpdateFromHyperspaceLocation com/fs/starfarer/campaign/StarSystem UpdateFromHyperspaceLocation public static 
    [c3328] com/fs/starfarer/campaign/StarSystem UpdateFromSystemLocationOrbit public static 
    com/fs/starfarer/campaign/WarpingSpriteRenderer$Vertex com/fs/starfarer/campaign/WarpingSpriteRenderer Vertex public static 
    com/fs/starfarer/campaign/accidents/AccidentRisk$AccidentContext com/fs/starfarer/campaign/accidents/AccidentRisk AccidentContext public static final 
    [c2868] com/fs/starfarer/campaign/ai/CampaignFleetAI FleetAssignmentData public static 
    com/fs/starfarer/campaign/ai/CampaignFleetAI$JumpPlan com/fs/starfarer/campaign/ai/CampaignFleetAI JumpPlan public static 
    com/fs/starfarer/campaign/ai/NavigationModule$AvoidData com/fs/starfarer/campaign/ai/NavigationModule AvoidData public static 
    com/fs/starfarer/campaign/comms/CommMessage$MessagePara com/fs/starfarer/campaign/comms/CommMessage MessagePara public static 
    com/fs/starfarer/campaign/comms/CommMessage$MessageSection com/fs/starfarer/campaign/comms/CommMessage MessageSection public static 
    com/fs/starfarer/campaign/econ/super$o com/fs/starfarer/campaign/econ/super o public static interface abstract 
    com/fs/starfarer/campaign/econ/contract/CommodityFlow$TransferItem com/fs/starfarer/campaign/econ/contract/CommodityFlow TransferItem public static 
    com/fs/starfarer/campaign/econ/contract/CommodityFlow$TransferTracker com/fs/starfarer/campaign/econ/contract/CommodityFlow TransferTracker public static 
    com/fs/starfarer/campaign/econ/contract/iter/ContractEconomyStepper$State com/fs/starfarer/campaign/econ/contract/iter/ContractEconomyStepper State public static final enum 
    com/fs/starfarer/campaign/econ/contract/iter/ContractsAndBidsTask$State com/fs/starfarer/campaign/econ/contract/iter/ContractsAndBidsTask State public static final enum 
    com/fs/starfarer/campaign/econ/reach/MainWorkTask$EconWorkParams com/fs/starfarer/campaign/econ/reach/MainWorkTask EconWorkParams public static 
    com/fs/starfarer/campaign/fleet/CampaignShipEngineGlow$SlotData [c2378] SlotData public static 
    [c3904] com/fs/starfarer/campaign/fleet/ContrailEngineV2 Contrail public static 
    [c3950] com/fs/starfarer/campaign/fleet/ContrailEngineV2 ContrailPoint public static 
    com/fs/starfarer/campaign/fleet/FleetMemberStatus$ShipStatus com/fs/starfarer/campaign/fleet/FleetMemberStatus ShipStatus public static 
    com/fs/starfarer/campaign/fleet/MutableFleetStats$TemporaryStatMod com/fs/starfarer/campaign/fleet/MutableFleetStats TemporaryStatMod public static 
    com/fs/starfarer/campaign/fleet/MutableMarketStats$TemporaryStatMod com/fs/starfarer/campaign/fleet/MutableMarketStats TemporaryStatMod public static 
    com/fs/starfarer/campaign/rules/Memory$Expire com/fs/starfarer/campaign/rules/Memory Expire public static 
    com/fs/starfarer/campaign/rules/Memory$Require com/fs/starfarer/campaign/rules/Memory Require public static 
    com/fs/starfarer/campaign/save/CampaignGameManager$1 [0] [0] 
    com/fs/starfarer/campaign/save/CampaignGameManager$2 [0] [0] 
    com/fs/starfarer/campaign/save/CampaignGameManager$3 [0] [0] 
    com/fs/starfarer/campaign/save/CampaignGameManager$4 [0] [0] 
    com/fs/starfarer/campaign/save/CampaignGameManager$5 [0] [0] 
    com/fs/starfarer/campaign/save/CampaignGameManager$6 [0] [0] 
    com/fs/starfarer/campaign/save/CampaignGameManager$o [c1] o public static 
    com/fs/starfarer/campaign/util/CollectionView$CollectionViewDelegate com/fs/starfarer/campaign/util/CollectionView CollectionViewDelegate public static interface abstract 
    com/fs/starfarer/combat/entities/ContrailEngine$ContrailWidthMode com/fs/starfarer/combat/entities/ContrailEngine ContrailWidthMode public static final enum 
    com/fs/starfarer/combat/tasks/CombatTask$CombatTaskType com/fs/starfarer/combat/tasks/CombatTask CombatTaskType public static final enum 
    com/fs/starfarer/coreui/refit/auto/SavedVariantData$VariantArray com/fs/starfarer/coreui/refit/auto/SavedVariantData VariantArray public static 
    com/fs/starfarer/coreui/refit/auto/SavedVariantData$VariantResolver com/fs/starfarer/coreui/refit/auto/SavedVariantData VariantResolver public static 
    com/fs/starfarer/coreui/refit/auto/SavedVariantData$VariantSet com/fs/starfarer/coreui/refit/auto/SavedVariantData VariantSet public static 
    com/fs/starfarer/launcher/ModManager$ModDependency com/fs/starfarer/launcher/ModManager ModDependency public static 
    com/fs/starfarer/launcher/ModManager$ModSpec com/fs/starfarer/launcher/ModManager ModSpec public static 
    com/fs/starfarer/loading/FleetCreationSpec$FleetMemberPick com/fs/starfarer/loading/FleetCreationSpec FleetMemberPick public static 
    com/fs/starfarer/loading/specs/EngineSlot$BlendMode com/fs/starfarer/loading/specs/EngineSlot BlendMode public static final enum 
    com/fs/starfarer/loading/specs/PlanetSpec$PlanetSpecDiff com/fs/starfarer/loading/specs/PlanetSpec PlanetSpecDiff public static 
    com/fs/starfarer/rpg/ImportantPeople$PersonData com/fs/starfarer/rpg/ImportantPeople PersonData public static 
    com/fs/starfarer/rpg/ImportantPeople$PersonLocation com/fs/starfarer/rpg/ImportantPeople PersonLocation public static 
    com/fs/starfarer/ui/newui/HintPanel$SavedHintData com/fs/starfarer/ui/newui/HintPanel SavedHintData public static 
    com/fs/starfarer/util/ColorShifter$ShiftData com/fs/starfarer/util/ColorShifter ShiftData public static 
    com/fs/starfarer/util/ValueShifter$ShiftData com/fs/starfarer/util/ValueShifter ShiftData public static 
    java/util/Map$Entry java/util/Map Entry public static interface abstract 
.end innerclasses 
.nestmembers com/fs/starfarer/campaign/save/CampaignGameManager$1 com/fs/starfarer/campaign/save/CampaignGameManager$2 com/fs/starfarer/campaign/save/CampaignGameManager$3 com/fs/starfarer/campaign/save/CampaignGameManager$4 com/fs/starfarer/campaign/save/CampaignGameManager$5 com/fs/starfarer/campaign/save/CampaignGameManager$6 com/fs/starfarer/campaign/save/CampaignGameManager$6$1 com/fs/starfarer/campaign/save/CampaignGameManager$o 
.const [c1] = Class [u2] 
.const [c247] = Class [u248] 
.const [u691] = Utf8 com/fs/starfarer/api/campaign/CargoAPI$CargoItemType 
.const [c833] = Class [u691] 
.const [u1358] = Utf8 com/fs/starfarer/campaign/fleet/CampaignFleetMemberView 
.const [u1447] = Utf8 com/fs/starfarer/campaign/ai/CampaignFleetAI$FleetAssignmentData 
.const [u1696] = Utf8 com/fs/starfarer/campaign/StarSystem$UpdateFromSystemLocationOrbit 
.const [u1923] = Utf8 (Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V 
.const [u2375] = Utf8 com/fs/starfarer/campaign/fleet/ContrailEngineV2$Contrail 
.const [c2378] = Class [u1367] 
.const [u2379] = Utf8 com/fs/starfarer/campaign/fleet/ContrailEngineV2$ContrailPoint 
.const [c2868] = Class [u1447] 
.const [c3328] = Class [u1696] 
.const [c3904] = Class [u2375] 
.const [c3950] = Class [u2379] 
.const [u2] = Utf8 com/fs/starfarer/campaign/save/CampaignGameManager 
.const [u248] = Utf8 com/fs/starfarer/api/campaign/SectorGeneratorPlugin 
.const [u1367] = Utf8 com/fs/starfarer/campaign/fleet/CampaignShipEngineGlow 
.end class 
