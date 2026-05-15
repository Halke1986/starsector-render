.version 61 0 
.class public super com/fs/starfarer/combat/ai/admiral/G 
.super java/lang/Object 
.implements com/fs/starfarer/combat/oooO 
.field private 'super.do$do' Lcom/fs/starfarer/combat/CombatFleetManager; 
.field private 'ôÕoo00' Lcom/fs/starfarer/combat/CombatFleetManager; 
.field private 'do.for$do' Z 
.field private 'OÖoo00' Lcom/fs/starfarer/util/IntervalTracker; 
.field private 'ÒÕoo00' F 
.field private 'õÕoo00' F 
.field private 'void.do$do' F 
.field private 'String.do$do' F 
.field private final 'õÔoo00' Z 
.field private 'private.for$do' Lcom/fs/starfarer/combat/ai/admiral/AdmiralAI; 
.field private 'ÖÕoo00' Z 
.field private 'if.for$do' F 
.field private 'ÕÕoo00' F 
.field private 'øÕoo00' Ljava/util/List; .fieldattributes 
    .signature Ljava/util/List<Lcom/fs/starfarer/combat/ai/admiral/G$o;>; 
.end fieldattributes 
.field private 'ôÔoo00' Ljava/util/List; .fieldattributes 
    .signature Ljava/util/List<Lcom/fs/starfarer/combat/ai/admiral/G$o;>; 
.end fieldattributes 
.field private 'void.for$do' I 
.field protected 'ÓÕoo00' Z 
.field private 'OÕoo00' J 
.field private static volatile synthetic 'øÔoo00' [I 

.method public <init> : (Lcom/fs/starfarer/combat/CombatFleetManager;Lcom/fs/starfarer/combat/CombatFleetManager;ZLcom/fs/starfarer/combat/ai/admiral/AdmiralAI;)V 
    .code stack 5 locals 5 
L0:     aload_0 
L1:     invokespecial Method java/lang/Object <init> ()V 
L4:     aload_0 
L5:     iconst_0 
L6:     putfield Field com/fs/starfarer/combat/ai/admiral/G 'do.for$do' Z 
L9:     aload_0 
L10:    new com/fs/starfarer/util/IntervalTracker 
L13:    dup 
L14:    ldc +0.25f 
L16:    ldc +0.75f 
L18:    invokespecial Method com/fs/starfarer/util/IntervalTracker <init> (FF)V 
L21:    putfield Field com/fs/starfarer/combat/ai/admiral/G 'OÖoo00' Lcom/fs/starfarer/util/IntervalTracker; 
L24:    aload_0 
L25:    fconst_2 
L26:    putfield Field com/fs/starfarer/combat/ai/admiral/G 'ÒÕoo00' F 
L29:    aload_0 
L30:    ldc +20.0f 
L32:    putfield Field com/fs/starfarer/combat/ai/admiral/G 'õÕoo00' F 
L35:    aload_0 
L36:    fconst_0 
L37:    putfield Field com/fs/starfarer/combat/ai/admiral/G 'void.do$do' F 
L40:    aload_0 
L41:    fconst_0 
L42:    putfield Field com/fs/starfarer/combat/ai/admiral/G 'String.do$do' F 
L45:    aload_0 
L46:    iconst_0 
L47:    putfield Field com/fs/starfarer/combat/ai/admiral/G 'ÖÕoo00' Z 
L50:    aload_0 
L51:    ldc -1.0f 
L53:    putfield Field com/fs/starfarer/combat/ai/admiral/G 'if.for$do' F 
L56:    aload_0 
L57:    ldc -1.0f 
L59:    putfield Field com/fs/starfarer/combat/ai/admiral/G 'ÕÕoo00' F 
L62:    aload_0 
L63:    bipush 16 
L65:    anewarray com/fs/starfarer/combat/ai/admiral/G$o 
L68:    dup 
L69:    iconst_0 
L70:    getstatic Field com/fs/starfarer/combat/ai/admiral/G$o 'Ô00000' Lcom/fs/starfarer/combat/ai/admiral/G$o; 
L73:    aastore 
L74:    dup 
L75:    iconst_1 
L76:    getstatic Field com/fs/starfarer/combat/ai/admiral/G$o new Lcom/fs/starfarer/combat/ai/admiral/G$o; 
L79:    aastore 
L80:    dup 
L81:    iconst_2 
L82:    getstatic Field com/fs/starfarer/combat/ai/admiral/G$o 'Ø00000' Lcom/fs/starfarer/combat/ai/admiral/G$o; 
L85:    aastore 
L86:    dup 
L87:    iconst_3 
L88:    getstatic Field com/fs/starfarer/combat/ai/admiral/G$o 'Ô00000' Lcom/fs/starfarer/combat/ai/admiral/G$o; 
L91:    aastore 
L92:    dup 
L93:    iconst_4 
L94:    getstatic Field com/fs/starfarer/combat/ai/admiral/G$o new Lcom/fs/starfarer/combat/ai/admiral/G$o; 
L97:    aastore 
L98:    dup 
L99:    iconst_5 
L100:   getstatic Field com/fs/starfarer/combat/ai/admiral/G$o 'Ó00000' Lcom/fs/starfarer/combat/ai/admiral/G$o; 
L103:   aastore 
L104:   dup 
L105:   bipush 6 
L107:   getstatic Field com/fs/starfarer/combat/ai/admiral/G$o 'Ø00000' Lcom/fs/starfarer/combat/ai/admiral/G$o; 
L110:   aastore 
L111:   dup 
L112:   bipush 7 
L114:   getstatic Field com/fs/starfarer/combat/ai/admiral/G$o class Lcom/fs/starfarer/combat/ai/admiral/G$o; 
L117:   aastore 
L118:   dup 
L119:   bipush 8 
L121:   getstatic Field com/fs/starfarer/combat/ai/admiral/G$o 'Ô00000' Lcom/fs/starfarer/combat/ai/admiral/G$o; 
L124:   aastore 
L125:   dup 
L126:   bipush 9 
L128:   getstatic Field com/fs/starfarer/combat/ai/admiral/G$o new Lcom/fs/starfarer/combat/ai/admiral/G$o; 
L131:   aastore 
L132:   dup 
L133:   bipush 10 
L135:   getstatic Field com/fs/starfarer/combat/ai/admiral/G$o 'Ö00000' Lcom/fs/starfarer/combat/ai/admiral/G$o; 
L138:   aastore 
L139:   dup 
L140:   bipush 11 
L142:   getstatic Field com/fs/starfarer/combat/ai/admiral/G$o 'Ô00000' Lcom/fs/starfarer/combat/ai/admiral/G$o; 
L145:   aastore 
L146:   dup 
L147:   bipush 12 
L149:   getstatic Field com/fs/starfarer/combat/ai/admiral/G$o new Lcom/fs/starfarer/combat/ai/admiral/G$o; 
L152:   aastore 
L153:   dup 
L154:   bipush 13 
L156:   getstatic Field com/fs/starfarer/combat/ai/admiral/G$o 'Ó00000' Lcom/fs/starfarer/combat/ai/admiral/G$o; 
L159:   aastore 
L160:   dup 
L161:   bipush 14 
L163:   getstatic Field com/fs/starfarer/combat/ai/admiral/G$o 'Ø00000' Lcom/fs/starfarer/combat/ai/admiral/G$o; 
L166:   aastore 
L167:   dup 
L168:   bipush 15 
L170:   getstatic Field com/fs/starfarer/combat/ai/admiral/G$o class Lcom/fs/starfarer/combat/ai/admiral/G$o; 
L173:   aastore 
L174:   invokestatic Method java/util/Arrays asList ([Ljava/lang/Object;)Ljava/util/List; 
L177:   putfield Field com/fs/starfarer/combat/ai/admiral/G 'øÕoo00' Ljava/util/List; 
L180:   aload_0 
L181:   bipush 15 
L183:   anewarray com/fs/starfarer/combat/ai/admiral/G$o 
L186:   dup 
L187:   iconst_0 
L188:   getstatic Field com/fs/starfarer/combat/ai/admiral/G$o class Lcom/fs/starfarer/combat/ai/admiral/G$o; 
L191:   aastore 
L192:   dup 
L193:   iconst_1 
L194:   getstatic Field com/fs/starfarer/combat/ai/admiral/G$o 'Ö00000' Lcom/fs/starfarer/combat/ai/admiral/G$o; 
L197:   aastore 
L198:   dup 
L199:   iconst_2 
L200:   getstatic Field com/fs/starfarer/combat/ai/admiral/G$o class Lcom/fs/starfarer/combat/ai/admiral/G$o; 
L203:   aastore 
L204:   dup 
L205:   iconst_3 
L206:   getstatic Field com/fs/starfarer/combat/ai/admiral/G$o 'Ö00000' Lcom/fs/starfarer/combat/ai/admiral/G$o; 
L209:   aastore 
L210:   dup 
L211:   iconst_4 
L212:   getstatic Field com/fs/starfarer/combat/ai/admiral/G$o 'Ó00000' Lcom/fs/starfarer/combat/ai/admiral/G$o; 
L215:   aastore 
L216:   dup 
L217:   iconst_5 
L218:   getstatic Field com/fs/starfarer/combat/ai/admiral/G$o new Lcom/fs/starfarer/combat/ai/admiral/G$o; 
L221:   aastore 
L222:   dup 
L223:   bipush 6 
L225:   getstatic Field com/fs/starfarer/combat/ai/admiral/G$o 'Ø00000' Lcom/fs/starfarer/combat/ai/admiral/G$o; 
L228:   aastore 
L229:   dup 
L230:   bipush 7 
L232:   getstatic Field com/fs/starfarer/combat/ai/admiral/G$o 'Ô00000' Lcom/fs/starfarer/combat/ai/admiral/G$o; 
L235:   aastore 
L236:   dup 
L237:   bipush 8 
L239:   getstatic Field com/fs/starfarer/combat/ai/admiral/G$o class Lcom/fs/starfarer/combat/ai/admiral/G$o; 
L242:   aastore 
L243:   dup 
L244:   bipush 9 
L246:   getstatic Field com/fs/starfarer/combat/ai/admiral/G$o 'Ö00000' Lcom/fs/starfarer/combat/ai/admiral/G$o; 
L249:   aastore 
L250:   dup 
L251:   bipush 10 
L253:   getstatic Field com/fs/starfarer/combat/ai/admiral/G$o 'Ó00000' Lcom/fs/starfarer/combat/ai/admiral/G$o; 
L256:   aastore 
L257:   dup 
L258:   bipush 11 
L260:   getstatic Field com/fs/starfarer/combat/ai/admiral/G$o 'Ó00000' Lcom/fs/starfarer/combat/ai/admiral/G$o; 
L263:   aastore 
L264:   dup 
L265:   bipush 12 
L267:   getstatic Field com/fs/starfarer/combat/ai/admiral/G$o new Lcom/fs/starfarer/combat/ai/admiral/G$o; 
L270:   aastore 
L271:   dup 
L272:   bipush 13 
L274:   getstatic Field com/fs/starfarer/combat/ai/admiral/G$o 'Ø00000' Lcom/fs/starfarer/combat/ai/admiral/G$o; 
L277:   aastore 
L278:   dup 
L279:   bipush 14 
L281:   getstatic Field com/fs/starfarer/combat/ai/admiral/G$o 'Ô00000' Lcom/fs/starfarer/combat/ai/admiral/G$o; 
L284:   aastore 
L285:   invokestatic Method java/util/Arrays asList ([Ljava/lang/Object;)Ljava/util/List; 
L288:   putfield Field com/fs/starfarer/combat/ai/admiral/G 'ôÔoo00' Ljava/util/List; 
L291:   aload_0 
L292:   iconst_0 
L293:   putfield Field com/fs/starfarer/combat/ai/admiral/G 'void.for$do' I 
L296:   aload_0 
L297:   iconst_0 
L298:   putfield Field com/fs/starfarer/combat/ai/admiral/G 'ÓÕoo00' Z 
L301:   aload_0 
L302:   lconst_0 
L303:   putfield Field com/fs/starfarer/combat/ai/admiral/G 'OÕoo00' J 
L306:   aload_0 
L307:   aload_1 
L308:   putfield Field com/fs/starfarer/combat/ai/admiral/G 'super.do$do' Lcom/fs/starfarer/combat/CombatFleetManager; 
L311:   aload_0 
L312:   aload_2 
L313:   putfield Field com/fs/starfarer/combat/ai/admiral/G 'ôÕoo00' Lcom/fs/starfarer/combat/CombatFleetManager; 
L316:   aload_0 
L317:   iload_3 
L318:   putfield Field com/fs/starfarer/combat/ai/admiral/G 'õÔoo00' Z 
L321:   aload_0 
L322:   aload 4 
L324:   putfield Field com/fs/starfarer/combat/ai/admiral/G 'private.for$do' Lcom/fs/starfarer/combat/ai/admiral/AdmiralAI; 
L327:   aload_0 
L328:   ldc +1.5f 
L330:   putfield Field com/fs/starfarer/combat/ai/admiral/G 'ÒÕoo00' F 
L333:   aload_0 
L334:   ldc +20.0f 
L336:   putfield Field com/fs/starfarer/combat/ai/admiral/G 'õÕoo00' F 
L339:   aload_2 
L340:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getGoal ()Lcom/fs/starfarer/api/fleet/FleetGoal; 
L343:   getstatic Field com/fs/starfarer/api/fleet/FleetGoal ESCAPE Lcom/fs/starfarer/api/fleet/FleetGoal; 
L346:   if_acmpne L360 
L349:   aload_0 
L350:   fconst_2 
L351:   putfield Field com/fs/starfarer/combat/ai/admiral/G 'ÒÕoo00' F 
L354:   aload_0 
L355:   ldc +20.0f 
L357:   putfield Field com/fs/starfarer/combat/ai/admiral/G 'õÕoo00' F 

        .stack full 
            locals Object com/fs/starfarer/combat/ai/admiral/G Object com/fs/starfarer/combat/CombatFleetManager Object com/fs/starfarer/combat/CombatFleetManager Integer Object com/fs/starfarer/combat/ai/admiral/AdmiralAI 
            stack 
        .end stack 
L360:   invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L363:   aload_0 
L364:   invokevirtual Method com/fs/starfarer/combat/CombatEngine addListener (Lcom/fs/starfarer/combat/oooO;)V 
L367:   return 
L368:   
    .end code 
.end method 

.method public 'õO0000' : (F)V 
    .code stack 5 locals 17 
L0:     invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L3:     invokevirtual Method com/fs/starfarer/combat/CombatEngine isSimulation ()Z 
L6:     ifeq L10 
L9:     return 

        .stack same 
L10:    aload_0 
L11:    getfield Field com/fs/starfarer/combat/ai/admiral/G 'super.do$do' Lcom/fs/starfarer/combat/CombatFleetManager; 
L14:    ifnull L24 
L17:    aload_0 
L18:    getfield Field com/fs/starfarer/combat/ai/admiral/G 'ôÕoo00' Lcom/fs/starfarer/combat/CombatFleetManager; 
L21:    ifnonnull L25 

        .stack same 
L24:    return 

        .stack same 
L25:    aload_0 
L26:    getfield Field com/fs/starfarer/combat/ai/admiral/G 'super.do$do' Lcom/fs/starfarer/combat/CombatFleetManager; 
L29:    aload_0 
L30:    getfield Field com/fs/starfarer/combat/ai/admiral/G 'õÔoo00' Z 
L33:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getTaskManager (Z)Lcom/fs/starfarer/combat/tasks/CombatTaskManager; 
L36:    ifnonnull L40 
L39:    return 

        .stack same 
L40:    invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L43:    invokevirtual Method com/fs/starfarer/combat/CombatEngine getContext ()Lcom/fs/starfarer/api/combat/BattleCreationContext; 
L46:    ifnonnull L50 
L49:    return 

        .stack same 
L50:    aload_0 
L51:    getfield Field com/fs/starfarer/combat/ai/admiral/G 'OÕoo00' J 
L54:    lconst_0 
L55:    lcmp 
L56:    ifne L102 
L59:    aload_0 
L60:    getfield Field com/fs/starfarer/combat/ai/admiral/G 'super.do$do' Lcom/fs/starfarer/combat/CombatFleetManager; 
L63:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getCampaignFleet ()Lcom/fs/starfarer/campaign/fleet/CampaignFleet; 
L66:    astore_2 
L67:    aload_2 
L68:    ifnull L102 
L71:    aload_2 
L72:    invokestatic Method com/fs/starfarer/api/util/Misc getSalvageSeed (Lcom/fs/starfarer/api/campaign/SectorEntityToken;)J 
L75:    aload_2 
L76:    invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/CampaignFleetAPI getFleetData ()Lcom/fs/starfarer/api/campaign/FleetDataAPI; 1 
L81:    invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/FleetDataAPI getNumMembers ()I 1 
L86:    i2l 
L87:    lmul 
L88:    bipush 23 
L90:    invokestatic Method com/fs/starfarer/api/util/Misc getRandom (JI)Ljava/util/Random; 
L93:    astore_3 
L94:    aload_0 
L95:    aload_3 
L96:    invokevirtual Method java/util/Random nextLong ()J 
L99:    putfield Field com/fs/starfarer/combat/ai/admiral/G 'OÕoo00' J 

        .stack same 
L102:   aload_0 
L103:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'OÖoo00' Lcom/fs/starfarer/util/IntervalTracker; 
L106:   fload_1 
L107:   invokevirtual Method com/fs/starfarer/util/IntervalTracker advance (F)V 
L110:   aload_0 
L111:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'OÖoo00' Lcom/fs/starfarer/util/IntervalTracker; 
L114:   invokevirtual Method com/fs/starfarer/util/IntervalTracker intervalElapsed ()Z 
L117:   ifeq L922 
L120:   aload_0 
L121:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'super.do$do' Lcom/fs/starfarer/combat/CombatFleetManager; 
L124:   aload_0 
L125:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'õÔoo00' Z 
L128:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getTaskManager (Z)Lcom/fs/starfarer/combat/tasks/CombatTaskManager; 
L131:   invokevirtual Method com/fs/starfarer/combat/tasks/CombatTaskManager isInFullRetreat ()Z 
L134:   ifeq L154 
L137:   aload_0 
L138:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'super.do$do' Lcom/fs/starfarer/combat/CombatFleetManager; 
L141:   aload_0 
L142:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'õÔoo00' Z 
L145:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getTaskManager (Z)Lcom/fs/starfarer/combat/tasks/CombatTaskManager; 
L148:   invokevirtual Method com/fs/starfarer/combat/tasks/CombatTaskManager isPreventFullRetreat ()Z 
L151:   ifeq L922 

        .stack same 
L154:   aload_0 
L155:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'ôÕoo00' Lcom/fs/starfarer/combat/CombatFleetManager; 
L158:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getBiggestStation ()Lcom/fs/starfarer/combat/CombatFleetManager$O0; 
L161:   ifnull L168 
L164:   iconst_1 
L165:   goto L169 

        .stack same 
L168:   iconst_0 

        .stack stack_1 Integer 
L169:   istore_2 
L170:   iload_2 
L171:   ifeq L198 
L174:   aload_0 
L175:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'øÕoo00' Ljava/util/List; 
L178:   aload_0 
L179:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'ôÔoo00' Ljava/util/List; 
L182:   if_acmpeq L198 
L185:   aload_0 
L186:   aload_0 
L187:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'ôÔoo00' Ljava/util/List; 
L190:   putfield Field com/fs/starfarer/combat/ai/admiral/G 'øÕoo00' Ljava/util/List; 
L193:   aload_0 
L194:   iconst_0 
L195:   putfield Field com/fs/starfarer/combat/ai/admiral/G 'void.for$do' I 

        .stack append Integer 
L198:   aload_0 
L199:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'super.do$do' Lcom/fs/starfarer/combat/CombatFleetManager; 
L202:   aload_0 
L203:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'õÔoo00' Z 
L206:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager computeDeployedStrength (Z)F 
L209:   fstore_3 
L210:   aload_0 
L211:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'ôÕoo00' Lcom/fs/starfarer/combat/CombatFleetManager; 
L214:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager computeDeployedStrength ()F 
L217:   fstore 4 
L219:   fload_3 
L220:   fconst_1 
L221:   fcmpg 
L222:   ifge L233 
L225:   fload_3 
L226:   fconst_0 
L227:   fcmpl 
L228:   ifle L233 
L231:   fconst_1 
L232:   fstore_3 

        .stack append Float Float 
L233:   fload 4 
L235:   fconst_1 
L236:   fcmpg 
L237:   ifge L250 
L240:   fload 4 
L242:   fconst_0 
L243:   fcmpl 
L244:   ifle L250 
L247:   fconst_1 
L248:   fstore 4 

        .stack same 
L250:   iconst_1 
L251:   istore 5 
L253:   invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L256:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getContext ()Lcom/fs/starfarer/api/combat/BattleCreationContext; 
L259:   getfield Field com/fs/starfarer/api/combat/BattleCreationContext enemyDeployAll Z 
L262:   ifeq L280 
L265:   aload_0 
L266:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'super.do$do' Lcom/fs/starfarer/combat/CombatFleetManager; 
L269:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getOwner ()I 
L272:   iconst_1 
L273:   if_icmpne L280 
L276:   iconst_1 
L277:   goto L281 

        .stack append Integer 
L280:   iconst_0 

        .stack stack_1 Integer 
L281:   istore 6 
L283:   iload 6 
L285:   aload_0 
L286:   invokevirtual Method com/fs/starfarer/combat/ai/admiral/G 'ÔØO000' ()Ljava/util/Set; 
L289:   invokeinterface InterfaceMethod java/util/Set isEmpty ()Z 1 
L294:   ifeq L301 
L297:   iconst_0 
L298:   goto L302 

        .stack full 
            locals Object com/fs/starfarer/combat/ai/admiral/G Float Integer Float Float Integer Integer 
            stack Integer 
        .end stack 
L301:   iconst_1 

        .stack full 
            locals Object com/fs/starfarer/combat/ai/admiral/G Float Integer Float Float Integer Integer 
            stack Integer Integer 
        .end stack 
L302:   iand 
L303:   istore 6 
L305:   fload 4 
L307:   aload_0 
L308:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'ÒÕoo00' F 
L311:   fmul 
L312:   aload_0 
L313:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'õÕoo00' F 
L316:   fadd 
L317:   fconst_0 
L318:   aload_0 
L319:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'void.do$do' F 
L322:   aload_0 
L323:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'String.do$do' F 
L326:   fsub 
L327:   invokestatic Method java/lang/Math max (FF)F 
L330:   fadd 
L331:   fstore 7 
L333:   aload_0 
L334:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'super.do$do' Lcom/fs/starfarer/combat/CombatFleetManager; 
L337:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getBiggestStation ()Lcom/fs/starfarer/combat/CombatFleetManager$O0; 
L340:   astore 8 
L342:   aload 8 
L344:   ifnull L374 
L347:   aload 8 
L349:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getMemberStrengthIncludingCaptain ()F 
L352:   fstore 9 
L354:   fload 7 
L356:   fload 9 
L358:   ldc +50.0f 
L360:   fload 9 
L362:   ldc +1.5f 
L364:   fmul 
L365:   invokestatic Method java/lang/Math min (FF)F 
L368:   fadd 
L369:   invokestatic Method java/lang/Math max (FF)F 
L372:   fstore 7 

        .stack append Float Object com/fs/starfarer/combat/CombatFleetManager$O0 
L374:   iload 6 
L376:   ifne L383 
L379:   iload_2 
L380:   ifeq L387 

        .stack same 
L383:   ldc +100000.0f 
L385:   fstore 7 

        .stack same 
L387:   aload_0 
L388:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'super.do$do' Lcom/fs/starfarer/combat/CombatFleetManager; 
L391:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager computeReserveStrength ()F 
L394:   fstore 9 
L396:   fload_3 
L397:   aload_0 
L398:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'if.for$do' F 
L401:   ldc +0.8999999761581421f 
L403:   fmul 
L404:   fcmpl 
L405:   iflt L432 
L408:   fload 4 
L410:   aload_0 
L411:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'ÕÕoo00' F 
L414:   fcmpg 
L415:   ifgt L432 
L418:   fload_3 
L419:   fconst_0 
L420:   fcmpl 
L421:   ifle L432 
L424:   iload 6 
L426:   ifne L432 
L429:   iconst_0 
L430:   istore 5 

        .stack append Float 
L432:   fload_3 
L433:   fload 7 
L435:   fcmpg 
L436:   ifge L457 
L439:   iload_2 
L440:   ifeq L457 
L443:   invokestatic Method java/lang/Math random ()D 
L446:   d2f 
L447:   ldc_w +0.05000000074505806f 
L450:   fcmpg 
L451:   ifge L457 
L454:   iconst_1 
L455:   istore 5 

        .stack same 
L457:   aload_0 
L458:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'ÖÕoo00' Z 
L461:   ifne L484 
L464:   invokestatic Method com/fs/starfarer/combat/ai/N 'Ô00000' ()Z 
L467:   ifeq L484 
L470:   aload_0 
L471:   iconst_1 
L472:   putfield Field com/fs/starfarer/combat/ai/admiral/G 'ÖÕoo00' Z 
L475:   fload 7 
L477:   fconst_2 
L478:   fmul 
L479:   fstore 7 
L481:   iconst_1 
L482:   istore 5 

        .stack same 
L484:   fconst_0 
L485:   fstore 10 
L487:   aload_0 
L488:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'super.do$do' Lcom/fs/starfarer/combat/CombatFleetManager; 
L491:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getDeployed ()Ljava/util/Set; 
L494:   invokeinterface InterfaceMethod java/util/Set iterator ()Ljava/util/Iterator; 1 
L499:   astore 12 
L501:   goto L588 

        .stack full 
            locals Object com/fs/starfarer/combat/ai/admiral/G Float Integer Float Float Integer Integer Float Object com/fs/starfarer/combat/CombatFleetManager$O0 Float Float Top Object java/util/Iterator 
            stack 
        .end stack 
L504:   aload 12 
L506:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L511:   checkcast com/fs/starfarer/combat/CombatFleetManager$O0 
L514:   astore 11 
L516:   aload 11 
L518:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L521:   ifnull L588 
L524:   aload 11 
L526:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getMember ()Lcom/fs/starfarer/campaign/fleet/FleetMember; 
L529:   ifnull L588 
L532:   aload 11 
L534:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getMember ()Lcom/fs/starfarer/campaign/fleet/FleetMember; 
L537:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L540:   ifnonnull L546 
L543:   goto L588 

        .stack full 
            locals Object com/fs/starfarer/combat/ai/admiral/G Float Integer Float Float Integer Integer Float Object com/fs/starfarer/combat/CombatFleetManager$O0 Float Float Object com/fs/starfarer/combat/CombatFleetManager$O0 Object java/util/Iterator 
            stack 
        .end stack 
L546:   aload 11 
L548:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L551:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isRetreating ()Z 
L554:   ifeq L560 
L557:   goto L588 

        .stack same 
L560:   aload 11 
L562:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getMember ()Lcom/fs/starfarer/campaign/fleet/FleetMember; 
L565:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L568:   invokevirtual Method com/fs/starfarer/loading/specs/g getHullSize ()Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L571:   invokestatic Method com/fs/starfarer/api/util/Misc getSizeNum (Lcom/fs/starfarer/api/combat/ShipAPI$HullSize;)F 
L574:   fstore 13 
L576:   fload 13 
L578:   fload 10 
L580:   fcmpl 
L581:   ifle L588 
L584:   fload 13 
L586:   fstore 10 

        .stack full 
            locals Object com/fs/starfarer/combat/ai/admiral/G Float Integer Float Float Integer Integer Float Object com/fs/starfarer/combat/CombatFleetManager$O0 Float Float Top Object java/util/Iterator 
            stack 
        .end stack 
L588:   aload 12 
L590:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L595:   ifne L504 
L598:   fconst_0 
L599:   fstore 11 
L601:   aload_0 
L602:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'ôÕoo00' Lcom/fs/starfarer/combat/CombatFleetManager; 
L605:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getDeployed ()Ljava/util/Set; 
L608:   invokeinterface InterfaceMethod java/util/Set iterator ()Ljava/util/Iterator; 1 
L613:   astore 13 
L615:   goto L702 

        .stack full 
            locals Object com/fs/starfarer/combat/ai/admiral/G Float Integer Float Float Integer Integer Float Object com/fs/starfarer/combat/CombatFleetManager$O0 Float Float Float Top Object java/util/Iterator 
            stack 
        .end stack 
L618:   aload 13 
L620:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L625:   checkcast com/fs/starfarer/combat/CombatFleetManager$O0 
L628:   astore 12 
L630:   aload 12 
L632:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L635:   ifnull L702 
L638:   aload 12 
L640:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getMember ()Lcom/fs/starfarer/campaign/fleet/FleetMember; 
L643:   ifnull L702 
L646:   aload 12 
L648:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getMember ()Lcom/fs/starfarer/campaign/fleet/FleetMember; 
L651:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L654:   ifnonnull L660 
L657:   goto L702 

        .stack full 
            locals Object com/fs/starfarer/combat/ai/admiral/G Float Integer Float Float Integer Integer Float Object com/fs/starfarer/combat/CombatFleetManager$O0 Float Float Float Object com/fs/starfarer/combat/CombatFleetManager$O0 Object java/util/Iterator 
            stack 
        .end stack 
L660:   aload 12 
L662:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L665:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isRetreating ()Z 
L668:   ifeq L674 
L671:   goto L702 

        .stack same 
L674:   aload 12 
L676:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getMember ()Lcom/fs/starfarer/campaign/fleet/FleetMember; 
L679:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L682:   invokevirtual Method com/fs/starfarer/loading/specs/g getHullSize ()Lcom/fs/starfarer/api/combat/ShipAPI$HullSize; 
L685:   invokestatic Method com/fs/starfarer/api/util/Misc getSizeNum (Lcom/fs/starfarer/api/combat/ShipAPI$HullSize;)F 
L688:   fstore 14 
L690:   fload 14 
L692:   fload 11 
L694:   fcmpl 
L695:   ifle L702 
L698:   fload 14 
L700:   fstore 11 

        .stack full 
            locals Object com/fs/starfarer/combat/ai/admiral/G Float Integer Float Float Integer Integer Float Object com/fs/starfarer/combat/CombatFleetManager$O0 Float Float Float Top Object java/util/Iterator 
            stack 
        .end stack 
L702:   aload 13 
L704:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L709:   ifne L618 
L712:   fload 7 
L714:   fload_3 
L715:   fcmpl 
L716:   ifle L922 
L719:   aload_0 
L720:   invokevirtual Method com/fs/starfarer/combat/ai/admiral/G 'ÔØO000' ()Ljava/util/Set; 
L723:   invokeinterface InterfaceMethod java/util/Set size ()I 1 
L728:   i2f 
L729:   fstore 12 
L731:   iload 5 
L733:   ifeq L765 
L736:   aload_0 
L737:   fload 7 
L739:   fload_3 
L740:   fsub 
L741:   invokevirtual Method com/fs/starfarer/combat/ai/admiral/G 'ÖO0000' (F)V 
L744:   aload_0 
L745:   aload_0 
L746:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'super.do$do' Lcom/fs/starfarer/combat/CombatFleetManager; 
L749:   aload_0 
L750:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'õÔoo00' Z 
L753:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager computeDeployedStrength (Z)F 
L756:   putfield Field com/fs/starfarer/combat/ai/admiral/G 'if.for$do' F 
L759:   aload_0 
L760:   fload 4 
L762:   putfield Field com/fs/starfarer/combat/ai/admiral/G 'ÕÕoo00' F 

        .stack full 
            locals Object com/fs/starfarer/combat/ai/admiral/G Float Integer Float Float Integer Integer Float Object com/fs/starfarer/combat/CombatFleetManager$O0 Float Float Float Float 
            stack 
        .end stack 
L765:   aload_0 
L766:   invokevirtual Method com/fs/starfarer/combat/ai/admiral/G 'ÔØO000' ()Ljava/util/Set; 
L769:   invokeinterface InterfaceMethod java/util/Set size ()I 1 
L774:   i2f 
L775:   fstore 13 
L777:   fload 13 
L779:   fload 12 
L781:   fcmpl 
L782:   iflt L922 
L785:   iconst_1 
L786:   istore 14 
L788:   aload_0 
L789:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'super.do$do' Lcom/fs/starfarer/combat/CombatFleetManager; 
L792:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getDeployed ()Ljava/util/Set; 
L795:   invokeinterface InterfaceMethod java/util/Set iterator ()Ljava/util/Iterator; 1 
L800:   astore 16 
L802:   goto L861 

        .stack full 
            locals Object com/fs/starfarer/combat/ai/admiral/G Float Integer Float Float Integer Integer Float Object com/fs/starfarer/combat/CombatFleetManager$O0 Float Float Float Float Float Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L805:   aload 16 
L807:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L812:   checkcast com/fs/starfarer/combat/CombatFleetManager$O0 
L815:   astore 15 
L817:   aload 15 
L819:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L822:   ifnull L861 
L825:   aload 15 
L827:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getMember ()Lcom/fs/starfarer/campaign/fleet/FleetMember; 
L830:   ifnull L861 
L833:   aload 15 
L835:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getMember ()Lcom/fs/starfarer/campaign/fleet/FleetMember; 
L838:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L841:   ifnonnull L847 
L844:   goto L861 

        .stack full 
            locals Object com/fs/starfarer/combat/ai/admiral/G Float Integer Float Float Integer Integer Float Object com/fs/starfarer/combat/CombatFleetManager$O0 Float Float Float Float Float Integer Object com/fs/starfarer/combat/CombatFleetManager$O0 Object java/util/Iterator 
            stack 
        .end stack 
L847:   aload 15 
L849:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L852:   invokevirtual Method com/fs/starfarer/combat/entities/Ship isRetreating ()Z 
L855:   ifne L861 
L858:   iconst_0 
L859:   istore 14 

        .stack full 
            locals Object com/fs/starfarer/combat/ai/admiral/G Float Integer Float Float Integer Integer Float Object com/fs/starfarer/combat/CombatFleetManager$O0 Float Float Float Float Float Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L861:   aload 16 
L863:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L868:   ifne L805 
L871:   aload_0 
L872:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'super.do$do' Lcom/fs/starfarer/combat/CombatFleetManager; 
L875:   aload_0 
L876:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'õÔoo00' Z 
L879:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getTaskManager (Z)Lcom/fs/starfarer/combat/tasks/CombatTaskManager; 
L882:   invokevirtual Method com/fs/starfarer/combat/tasks/CombatTaskManager isPreventFullRetreat ()Z 
L885:   ifne L922 
L888:   iload 14 
L890:   ifeq L922 
L893:   aload_0 
L894:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'super.do$do' Lcom/fs/starfarer/combat/CombatFleetManager; 
L897:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getDeployed ()Ljava/util/Set; 
L900:   invokeinterface InterfaceMethod java/util/Set size ()I 1 
L905:   ifle L922 
L908:   aload_0 
L909:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'super.do$do' Lcom/fs/starfarer/combat/CombatFleetManager; 
L912:   aload_0 
L913:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'õÔoo00' Z 
L916:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getTaskManager (Z)Lcom/fs/starfarer/combat/tasks/CombatTaskManager; 
L919:   invokevirtual Method com/fs/starfarer/combat/tasks/CombatTaskManager orderFullRetreat ()V 

        .stack full 
            locals Object com/fs/starfarer/combat/ai/admiral/G Float 
            stack 
        .end stack 
L922:   return 
L923:   
    .end code 
.end method 

.method public 'ÔØO000' : ()Ljava/util/Set; 
    .signature ()Ljava/util/Set<Lcom/fs/starfarer/campaign/fleet/FleetMember;>; 
    .code stack 2 locals 4 
L0:     new java/util/HashSet 
L3:     dup 
L4:     invokespecial Method java/util/HashSet <init> ()V 
L7:     astore_1 
L8:     aload_0 
L9:     getfield Field com/fs/starfarer/combat/ai/admiral/G 'super.do$do' Lcom/fs/starfarer/combat/CombatFleetManager; 
L12:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getReserves ()Ljava/util/Set; 
L15:    invokeinterface InterfaceMethod java/util/Set iterator ()Ljava/util/Iterator; 1 
L20:    astore_3 
L21:    goto L53 

        .stack full 
            locals Object com/fs/starfarer/combat/ai/admiral/G Object java/util/Set Top Object java/util/Iterator 
            stack 
        .end stack 
L24:    aload_3 
L25:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L30:    checkcast com/fs/starfarer/campaign/fleet/FleetMember 
L33:    astore_2 
L34:    aload_2 
L35:    invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember isAlly ()Z 
L38:    aload_0 
L39:    getfield Field com/fs/starfarer/combat/ai/admiral/G 'õÔoo00' Z 
L42:    if_icmpne L53 
L45:    aload_1 
L46:    aload_2 
L47:    invokeinterface InterfaceMethod java/util/Set add (Ljava/lang/Object;)Z 2 
L52:    pop 

        .stack same 
L53:    aload_3 
L54:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L59:    ifne L24 
L62:    aload_1 
L63:    areturn 
L64:    
    .end code 
.end method 

.method public 'interface.do' : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/ai/admiral/G 'void.do$do' F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method public 'new.while' : ()F 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/ai/admiral/G 'String.do$do' F 
L4:     freturn 
L5:     
    .end code 
.end method 

.method private 'ÖO0000' : (F)V 
    .code stack 2 locals 2 
L0:     fload_1 
L1:     fconst_1 
L2:     fcmpg 
L3:     ifge L7 
L6:     return 

        .stack same 
L7:     aload_0 
L8:     invokevirtual Method com/fs/starfarer/combat/ai/admiral/G 'ÔØO000' ()Ljava/util/Set; 
L11:    invokeinterface InterfaceMethod java/util/Set isEmpty ()Z 1 
L16:    ifeq L20 
L19:    return 

        .stack same 
L20:    ldc_w 'Deployment manager reinforcement deployment' 
L23:    invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
L26:    aload_0 
L27:    getfield Field com/fs/starfarer/combat/ai/admiral/G 'ôÕoo00' Lcom/fs/starfarer/combat/CombatFleetManager; 
L30:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getGoal ()Lcom/fs/starfarer/api/fleet/FleetGoal; 
L33:    getstatic Field com/fs/starfarer/api/fleet/FleetGoal ESCAPE Lcom/fs/starfarer/api/fleet/FleetGoal; 
L36:    if_acmpne L47 
L39:    aload_0 
L40:    fload_1 
L41:    invokevirtual Method com/fs/starfarer/combat/ai/admiral/G 'ØO0000' (F)V 
L44:    goto L52 

        .stack same 
L47:    aload_0 
L48:    fload_1 
L49:    invokevirtual Method com/fs/starfarer/combat/ai/admiral/G 'new.super' (F)V 

        .stack same 
L52:    invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L55:    aload_0 
L56:    getfield Field com/fs/starfarer/combat/ai/admiral/G 'do.for$do' Z 
L59:    ifne L91 
L62:    aload_0 
L63:    getfield Field com/fs/starfarer/combat/ai/admiral/G 'private.for$do' Lcom/fs/starfarer/combat/ai/admiral/AdmiralAI; 
L66:    ifnull L91 
L69:    aload_0 
L70:    getfield Field com/fs/starfarer/combat/ai/admiral/G 'private.for$do' Lcom/fs/starfarer/combat/ai/admiral/AdmiralAI; 
L73:    invokevirtual Method com/fs/starfarer/combat/ai/admiral/AdmiralAI getDelegate ()Lcom/fs/starfarer/api/combat/AdmiralAIPlugin$AdmiralPluginDelegate; 
L76:    ifnull L91 
L79:    aload_0 
L80:    getfield Field com/fs/starfarer/combat/ai/admiral/G 'private.for$do' Lcom/fs/starfarer/combat/ai/admiral/AdmiralAI; 
L83:    invokevirtual Method com/fs/starfarer/combat/ai/admiral/AdmiralAI getDelegate ()Lcom/fs/starfarer/api/combat/AdmiralAIPlugin$AdmiralPluginDelegate; 
L86:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/AdmiralAIPlugin$AdmiralPluginDelegate doAdditionalInitialDeployment ()V 1 

        .stack same 
L91:    aload_0 
L92:    iconst_1 
L93:    putfield Field com/fs/starfarer/combat/ai/admiral/G 'do.for$do' Z 
L96:    return 
L97:    
    .end code 
.end method 

.method private 'OØO000' : ()Lcom/fs/starfarer/combat/ai/admiral/G$o; 
    .code stack 2 locals 1 
L0:     aload_0 
L1:     aload_0 
L2:     getfield Field com/fs/starfarer/combat/ai/admiral/G 'øÕoo00' Ljava/util/List; 
L5:     invokevirtual Method com/fs/starfarer/combat/ai/admiral/G null (Ljava/util/List;)Lcom/fs/starfarer/combat/ai/admiral/G$o; 
L8:     areturn 
L9:     
    .end code 
.end method 

.method private null : (Ljava/util/List;)Lcom/fs/starfarer/combat/ai/admiral/G$o; 
    .signature (Ljava/util/List<Lcom/fs/starfarer/combat/ai/admiral/G$o;>;)Lcom/fs/starfarer/combat/ai/admiral/G$o; 
    .code stack 3 locals 2 
L0:     aload_0 
L1:     dup 
L2:     getfield Field com/fs/starfarer/combat/ai/admiral/G 'void.for$do' I 
L5:     iconst_1 
L6:     iadd 
L7:     putfield Field com/fs/starfarer/combat/ai/admiral/G 'void.for$do' I 
L10:    aload_1 
L11:    aload_0 
L12:    getfield Field com/fs/starfarer/combat/ai/admiral/G 'void.for$do' I 
L15:    iconst_1 
L16:    isub 
L17:    aload_1 
L18:    invokeinterface InterfaceMethod java/util/List size ()I 1 
L23:    irem 
L24:    invokeinterface InterfaceMethod java/util/List get (I)Ljava/lang/Object; 2 
L29:    checkcast com/fs/starfarer/combat/ai/admiral/G$o 
L32:    areturn 
L33:    
    .end code 
.end method 

.method public 'Ø00000' : (Ljava/util/List;)V 
    .signature (Ljava/util/List<Lcom/fs/starfarer/combat/ai/admiral/G$o;>;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/fs/starfarer/combat/ai/admiral/G 'øÕoo00' Ljava/util/List; 
L5:     return 
L6:     
    .end code 
.end method 

.method public 'ÓØO000' : ()I 
    .code stack 3 locals 8 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/combat/ai/admiral/G 'super.do$do' Lcom/fs/starfarer/combat/CombatFleetManager; 
L4:     invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getMaxStrength ()I 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/combat/ai/admiral/G 'super.do$do' Lcom/fs/starfarer/combat/CombatFleetManager; 
L11:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getCurrStrength ()I 
L14:    isub 
L15:    i2f 
L16:    fstore_1 
L17:    aload_0 
L18:    getfield Field com/fs/starfarer/combat/ai/admiral/G 'õÔoo00' Z 
L21:    ifne L27 
L24:    fload_1 
L25:    f2i 
L26:    ireturn 

        .stack append Float 
L27:    fconst_0 
L28:    fstore_2 
L29:    fconst_0 
L30:    fstore_3 
L31:    fconst_0 
L32:    fstore 4 
L34:    aload_0 
L35:    getfield Field com/fs/starfarer/combat/ai/admiral/G 'super.do$do' Lcom/fs/starfarer/combat/CombatFleetManager; 
L38:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getReserves ()Ljava/util/Set; 
L41:    invokeinterface InterfaceMethod java/util/Set iterator ()Ljava/util/Iterator; 1 
L46:    astore 6 
L48:    goto L111 

        .stack full 
            locals Object com/fs/starfarer/combat/ai/admiral/G Float Float Float Float Top Object java/util/Iterator 
            stack 
        .end stack 
L51:    aload 6 
L53:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L58:    checkcast com/fs/starfarer/campaign/fleet/FleetMember 
L61:    astore 5 
L63:    aload 5 
L65:    invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember isCivilian ()Z 
L68:    ifeq L74 
L71:    goto L111 

        .stack full 
            locals Object com/fs/starfarer/combat/ai/admiral/G Float Float Float Float Object com/fs/starfarer/campaign/fleet/FleetMember Object java/util/Iterator 
            stack 
        .end stack 
L74:    aload 5 
L76:    invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getDeploymentPointsCost ()F 
L79:    fstore 7 
L81:    fload_2 
L82:    fload 7 
L84:    fadd 
L85:    fstore_2 
L86:    aload 5 
L88:    invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember isAlly ()Z 
L91:    ifne L111 
L94:    fload_3 
L95:    fload 7 
L97:    fadd 
L98:    fstore_3 
L99:    aload 5 
L101:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember isFlagship ()Z 
L104:   ifeq L111 
L107:   fload 7 
L109:   fstore 4 

        .stack full 
            locals Object com/fs/starfarer/combat/ai/admiral/G Float Float Float Float Top Object java/util/Iterator 
            stack 
        .end stack 
L111:   aload 6 
L113:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L118:   ifne L51 
L121:   fload_2 
L122:   fconst_0 
L123:   fcmpg 
L124:   ifgt L130 
L127:   fload_1 
L128:   f2i 
L129:   ireturn 

        .stack full 
            locals Object com/fs/starfarer/combat/ai/admiral/G Float Float Float Float 
            stack 
        .end stack 
L130:   fload_1 
L131:   fload_2 
L132:   fload_3 
L133:   fsub 
L134:   fmul 
L135:   fload_2 
L136:   fdiv 
L137:   fload_1 
L138:   fload 4 
L140:   fsub 
L141:   invokestatic Method java/lang/Math min (FF)F 
L144:   f2d 
L145:   invokestatic Method java/lang/Math floor (D)D 
L148:   d2i 
L149:   ireturn 
L150:   
    .end code 
.end method 

.method public 'new.super' : (F)V 
    .code stack 6 locals 15 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/ai/admiral/G 'ÓØO000' ()I 
L4:     istore_2 
L5:     iload_2 
L6:     iconst_1 
L7:     if_icmpge L11 
L10:    return 

        .stack append Integer 
L11:    new java/util/ArrayList 
L14:    dup 
L15:    aload_0 
L16:    invokevirtual Method com/fs/starfarer/combat/ai/admiral/G 'ÔØO000' ()Ljava/util/Set; 
L19:    invokespecial Method java/util/ArrayList <init> (Ljava/util/Collection;)V 
L22:    astore_3 
L23:    new java/util/Random 
L26:    dup 
L27:    aload_0 
L28:    getfield Field com/fs/starfarer/combat/ai/admiral/G 'OÕoo00' J 
L31:    invokespecial Method java/util/Random <init> (J)V 
L34:    astore 4 
L36:    aload_0 
L37:    getfield Field com/fs/starfarer/combat/ai/admiral/G 'OÕoo00' J 
L40:    lconst_0 
L41:    lcmp 
L42:    ifne L54 
L45:    new java/util/Random 
L48:    dup 
L49:    invokespecial Method java/util/Random <init> ()V 
L52:    astore 4 

        .stack append Object java/util/List Object java/util/Random 
L54:    aload_3 
L55:    aload 4 
L57:    invokestatic Method java/util/Collections shuffle (Ljava/util/List;Ljava/util/Random;)V 
L60:    new java/util/ArrayList 
L63:    dup 
L64:    invokespecial Method java/util/ArrayList <init> ()V 
L67:    astore 5 
L69:    iconst_0 
L70:    istore 6 
L72:    fconst_0 
L73:    fstore 7 
L75:    iconst_0 
L76:    istore 8 
L78:    goto L202 

        .stack full 
            locals Object com/fs/starfarer/combat/ai/admiral/G Float Integer Object java/util/List Object java/util/Random Object java/util/List Integer Float Integer 
            stack 
        .end stack 
L81:    aload_0 
L82:    invokevirtual Method com/fs/starfarer/combat/ai/admiral/G 'OØO000' ()Lcom/fs/starfarer/combat/ai/admiral/G$o; 
L85:    astore 9 
L87:    invokestatic Method com/fs/starfarer/combat/ai/N 'Ò00000' ()Z 
L90:    ifeq L106 
L93:    aload 9 
L95:    getstatic Field com/fs/starfarer/combat/ai/admiral/G$o 'Ô00000' Lcom/fs/starfarer/combat/ai/admiral/G$o; 
L98:    if_acmpne L106 
L101:   getstatic Field com/fs/starfarer/combat/ai/admiral/G$o new Lcom/fs/starfarer/combat/ai/admiral/G$o; 
L104:   astore 9 

        .stack append Object com/fs/starfarer/combat/ai/admiral/G$o 
L106:   aload_0 
L107:   aload 9 
L109:   iload_2 
L110:   iload 6 
L112:   isub 
L113:   i2f 
L114:   aload_3 
L115:   aload 5 
L117:   iload 8 
L119:   ifne L126 
L122:   iconst_1 
L123:   goto L127 

        .stack full 
            locals Object com/fs/starfarer/combat/ai/admiral/G Float Integer Object java/util/List Object java/util/Random Object java/util/List Integer Float Integer Object com/fs/starfarer/combat/ai/admiral/G$o 
            stack Object com/fs/starfarer/combat/ai/admiral/G Object com/fs/starfarer/combat/ai/admiral/G$o Float Object java/util/List Object java/util/List 
        .end stack 
L126:   iconst_0 

        .stack full 
            locals Object com/fs/starfarer/combat/ai/admiral/G Float Integer Object java/util/List Object java/util/Random Object java/util/List Integer Float Integer Object com/fs/starfarer/combat/ai/admiral/G$o 
            stack Object com/fs/starfarer/combat/ai/admiral/G Object com/fs/starfarer/combat/ai/admiral/G$o Float Object java/util/List Object java/util/List Integer 
        .end stack 
L127:   invokevirtual Method com/fs/starfarer/combat/ai/admiral/G o00000 (Lcom/fs/starfarer/combat/ai/admiral/G$o;FLjava/util/List;Ljava/util/List;Z)Lcom/fs/starfarer/campaign/fleet/FleetMember; 
L130:   astore 10 
L132:   aload 10 
L134:   ifnonnull L150 
L137:   iinc 8 1 
L140:   iload 8 
L142:   bipush 30 
L144:   if_icmple L202 
L147:   goto L224 

        .stack append Object com/fs/starfarer/campaign/fleet/FleetMember 
L150:   iconst_0 
L151:   istore 8 
L153:   aload 5 
L155:   aload 10 
L157:   invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L162:   pop 
L163:   aload_3 
L164:   aload 10 
L166:   invokeinterface InterfaceMethod java/util/List remove (Ljava/lang/Object;)Z 2 
L171:   pop 
L172:   iload 6 
L174:   i2f 
L175:   aload 10 
L177:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getDeploymentPointsCost ()F 
L180:   fadd 
L181:   f2i 
L182:   istore 6 
L184:   fload 7 
L186:   aload 10 
L188:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getDeploymentPointsCost ()F 
L191:   aload 10 
L193:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getMemberStrength ()F 
L196:   invokestatic Method java/lang/Math min (FF)F 
L199:   fadd 
L200:   fstore 7 

        .stack chop 2 
L202:   iload 6 
L204:   iload_2 
L205:   if_icmpge L224 
L208:   fload 7 
L210:   fload_1 
L211:   fcmpg 
L212:   ifge L224 
L215:   aload_3 
L216:   invokeinterface InterfaceMethod java/util/List isEmpty ()Z 1 
L221:   ifeq L81 

        .stack same 
L224:   aload 5 
L226:   invokeinterface InterfaceMethod java/util/List isEmpty ()Z 1 
L231:   ifne L412 
L234:   new com/fs/starfarer/combat/CombatFleetManager$DeploymentSpec 
L237:   dup 
L238:   invokespecial Method com/fs/starfarer/combat/CombatFleetManager$DeploymentSpec <init> ()V 
L241:   astore 9 
L243:   iconst_1 
L244:   istore 10 
L246:   aload 5 
L248:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L253:   astore 12 
L255:   goto L372 

        .stack full 
            locals Object com/fs/starfarer/combat/ai/admiral/G Float Integer Object java/util/List Object java/util/Random Object java/util/List Integer Float Integer Object com/fs/starfarer/combat/CombatFleetManager$DeploymentSpec Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L258:   aload 12 
L260:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L265:   checkcast com/fs/starfarer/campaign/fleet/FleetMember 
L268:   astore 11 
L270:   aload 9 
L272:   aload 11 
L274:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$DeploymentSpec new (Lcom/fs/starfarer/campaign/fleet/FleetMember;)V 
L277:   iload 10 
L279:   aload 11 
L281:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember isCivilian ()Z 
L284:   iand 
L285:   istore 10 
L287:   invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L290:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getSideDeploymentOverrideSide ()Lcom/fs/starfarer/api/mission/FleetSide; 
L293:   getstatic Field com/fs/starfarer/api/mission/FleetSide ENEMY Lcom/fs/starfarer/api/mission/FleetSide; 
L296:   if_acmpne L372 
L299:   aload 11 
L301:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember isFrigate ()Z 
L304:   ifne L315 
L307:   aload 11 
L309:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember isFighterWing ()Z 
L312:   ifeq L372 

        .stack full 
            locals Object com/fs/starfarer/combat/ai/admiral/G Float Integer Object java/util/List Object java/util/Random Object java/util/List Integer Float Integer Object com/fs/starfarer/combat/CombatFleetManager$DeploymentSpec Integer Object com/fs/starfarer/campaign/fleet/FleetMember Object java/util/Iterator 
            stack 
        .end stack 
L315:   aload 9 
L317:   aload 11 
L319:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$DeploymentSpec 'Ó00000' (Lcom/fs/starfarer/campaign/fleet/FleetMember;)Lcom/fs/starfarer/combat/CombatFleetManager$oo; 
L322:   astore 13 
L324:   aload 13 
L326:   ifnull L372 
L329:   invokestatic Method java/lang/Math random ()D 
L332:   d2f 
L333:   fstore 14 
L335:   fload 14 
L337:   ldc_w +0.33000001311302185f 
L340:   fcmpg 
L341:   ifge L355 
L344:   aload 13 
L346:   getstatic Field com/fs/starfarer/combat/A/B$Oo 'Ò00000' Lcom/fs/starfarer/combat/A/B$Oo; 
L349:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$oo o00000 (Lcom/fs/starfarer/combat/A/B$Oo;)V 
L352:   goto L372 

        .stack append Object com/fs/starfarer/combat/CombatFleetManager$oo Float 
L355:   fload 14 
L357:   ldc_w +0.6600000262260437f 
L360:   fcmpg 
L361:   ifge L372 
L364:   aload 13 
L366:   getstatic Field com/fs/starfarer/combat/A/B$Oo Object Lcom/fs/starfarer/combat/A/B$Oo; 
L369:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$oo o00000 (Lcom/fs/starfarer/combat/A/B$Oo;)V 

        .stack full 
            locals Object com/fs/starfarer/combat/ai/admiral/G Float Integer Object java/util/List Object java/util/Random Object java/util/List Integer Float Integer Object com/fs/starfarer/combat/CombatFleetManager$DeploymentSpec Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L372:   aload 12 
L374:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L379:   ifne L258 
L382:   aload 9 
L384:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$DeploymentSpec class ()Z 
L387:   ifne L399 
L390:   aload_0 
L391:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'super.do$do' Lcom/fs/starfarer/combat/CombatFleetManager; 
L394:   aload 9 
L396:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager deploy (Lcom/fs/starfarer/combat/CombatFleetManager$DeploymentSpec;)V 

        .stack full 
            locals Object com/fs/starfarer/combat/ai/admiral/G Float Integer Object java/util/List Object java/util/Random Object java/util/List Integer Float Integer Object com/fs/starfarer/combat/CombatFleetManager$DeploymentSpec Integer 
            stack 
        .end stack 
L399:   aload_0 
L400:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'do.for$do' Z 
L403:   ifne L412 
L406:   aload_0 
L407:   iload 10 
L409:   putfield Field com/fs/starfarer/combat/ai/admiral/G 'ÓÕoo00' Z 

        .stack chop 2 
L412:   return 
L413:   
    .end code 
.end method 

.method private 'ØO0000' : (F)V 
    .code stack 6 locals 14 
L0:     aload_0 
L1:     invokevirtual Method com/fs/starfarer/combat/ai/admiral/G 'ÓØO000' ()I 
L4:     istore_2 
L5:     iload_2 
L6:     iconst_1 
L7:     if_icmpge L11 
L10:    return 

        .stack append Integer 
L11:    new java/util/ArrayList 
L14:    dup 
L15:    aload_0 
L16:    invokevirtual Method com/fs/starfarer/combat/ai/admiral/G 'ÔØO000' ()Ljava/util/Set; 
L19:    invokespecial Method java/util/ArrayList <init> (Ljava/util/Collection;)V 
L22:    astore_3 
L23:    new java/util/Random 
L26:    dup 
L27:    aload_0 
L28:    getfield Field com/fs/starfarer/combat/ai/admiral/G 'OÕoo00' J 
L31:    invokespecial Method java/util/Random <init> (J)V 
L34:    astore 4 
L36:    aload_0 
L37:    getfield Field com/fs/starfarer/combat/ai/admiral/G 'OÕoo00' J 
L40:    lconst_0 
L41:    lcmp 
L42:    ifne L54 
L45:    new java/util/Random 
L48:    dup 
L49:    invokespecial Method java/util/Random <init> ()V 
L52:    astore 4 

        .stack append Object java/util/List Object java/util/Random 
L54:    aload_3 
L55:    aload 4 
L57:    invokestatic Method java/util/Collections shuffle (Ljava/util/List;Ljava/util/Random;)V 
L60:    new java/util/ArrayList 
L63:    dup 
L64:    invokespecial Method java/util/ArrayList <init> ()V 
L67:    astore 5 
L69:    iconst_0 
L70:    istore 6 
L72:    fconst_0 
L73:    fstore 7 
L75:    iconst_0 
L76:    istore 8 
L78:    goto L175 

        .stack full 
            locals Object com/fs/starfarer/combat/ai/admiral/G Float Integer Object java/util/List Object java/util/Random Object java/util/List Integer Float Integer 
            stack 
        .end stack 
L81:    aload_0 
L82:    invokevirtual Method com/fs/starfarer/combat/ai/admiral/G 'OØO000' ()Lcom/fs/starfarer/combat/ai/admiral/G$o; 
L85:    astore 9 
L87:    aload_0 
L88:    aload 9 
L90:    iload_2 
L91:    iload 6 
L93:    isub 
L94:    i2f 
L95:    aload_3 
L96:    aload 5 
L98:    iload 8 
L100:   ifne L107 
L103:   iconst_1 
L104:   goto L108 

        .stack full 
            locals Object com/fs/starfarer/combat/ai/admiral/G Float Integer Object java/util/List Object java/util/Random Object java/util/List Integer Float Integer Object com/fs/starfarer/combat/ai/admiral/G$o 
            stack Object com/fs/starfarer/combat/ai/admiral/G Object com/fs/starfarer/combat/ai/admiral/G$o Float Object java/util/List Object java/util/List 
        .end stack 
L107:   iconst_0 

        .stack full 
            locals Object com/fs/starfarer/combat/ai/admiral/G Float Integer Object java/util/List Object java/util/Random Object java/util/List Integer Float Integer Object com/fs/starfarer/combat/ai/admiral/G$o 
            stack Object com/fs/starfarer/combat/ai/admiral/G Object com/fs/starfarer/combat/ai/admiral/G$o Float Object java/util/List Object java/util/List Integer 
        .end stack 
L108:   invokevirtual Method com/fs/starfarer/combat/ai/admiral/G o00000 (Lcom/fs/starfarer/combat/ai/admiral/G$o;FLjava/util/List;Ljava/util/List;Z)Lcom/fs/starfarer/campaign/fleet/FleetMember; 
L111:   astore 10 
L113:   aload 10 
L115:   ifnonnull L131 
L118:   iinc 8 1 
L121:   iload 8 
L123:   bipush 100 
L125:   if_icmple L175 
L128:   goto L197 

        .stack append Object com/fs/starfarer/campaign/fleet/FleetMember 
L131:   iconst_0 
L132:   istore 8 
L134:   aload 5 
L136:   aload 10 
L138:   invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L143:   pop 
L144:   aload_3 
L145:   aload 10 
L147:   invokeinterface InterfaceMethod java/util/List remove (Ljava/lang/Object;)Z 2 
L152:   pop 
L153:   iload 6 
L155:   i2f 
L156:   aload 10 
L158:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getDeploymentPointsCost ()F 
L161:   fadd 
L162:   f2i 
L163:   istore 6 
L165:   fload 7 
L167:   aload 10 
L169:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getMemberStrength ()F 
L172:   fadd 
L173:   fstore 7 

        .stack chop 2 
L175:   iload 6 
L177:   iload_2 
L178:   if_icmpge L197 
L181:   fload 7 
L183:   fload_1 
L184:   fcmpg 
L185:   ifge L197 
L188:   aload_3 
L189:   invokeinterface InterfaceMethod java/util/List isEmpty ()Z 1 
L194:   ifeq L81 

        .stack same 
L197:   aload 5 
L199:   invokeinterface InterfaceMethod java/util/List isEmpty ()Z 1 
L204:   ifne L347 
L207:   new com/fs/starfarer/combat/CombatFleetManager$DeploymentSpec 
L210:   dup 
L211:   invokespecial Method [c459] <init> ()V 
L214:   astore 9 
L216:   aload 5 
L218:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L223:   astore 11 
L225:   goto L320 

        .stack full 
            locals Object com/fs/starfarer/combat/ai/admiral/G Float Integer Object java/util/List Object java/util/Random Object java/util/List Integer Float Integer Object [c459] Top Object java/util/Iterator 
            stack 
        .end stack 
L228:   aload 11 
L230:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L235:   checkcast com/fs/starfarer/campaign/fleet/FleetMember 
L238:   astore 10 
L240:   aload 9 
L242:   aload 10 
L244:   invokevirtual Method [c459] new (Lcom/fs/starfarer/campaign/fleet/FleetMember;)V 
L247:   aload 10 
L249:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember isFrigate ()Z 
L252:   ifne L263 
L255:   aload 10 
L257:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember isFighterWing ()Z 
L260:   ifeq L320 

        .stack full 
            locals Object com/fs/starfarer/combat/ai/admiral/G Float Integer Object java/util/List Object java/util/Random Object java/util/List Integer Float Integer Object [c459] Object com/fs/starfarer/campaign/fleet/FleetMember Object java/util/Iterator 
            stack 
        .end stack 
L263:   aload 9 
L265:   aload 10 
L267:   invokevirtual Method [c459] 'Ó00000' (Lcom/fs/starfarer/campaign/fleet/FleetMember;)Lcom/fs/starfarer/combat/CombatFleetManager$oo; 
L270:   astore 12 
L272:   aload 12 
L274:   ifnull L320 
L277:   invokestatic Method java/lang/Math random ()D 
L280:   d2f 
L281:   fstore 13 
L283:   fload 13 
L285:   ldc_w +0.33000001311302185f 
L288:   fcmpg 
L289:   ifge L303 
L292:   aload 12 
L294:   getstatic Field com/fs/starfarer/combat/A/B$Oo 'Ò00000' Lcom/fs/starfarer/combat/A/B$Oo; 
L297:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$oo o00000 (Lcom/fs/starfarer/combat/A/B$Oo;)V 
L300:   goto L320 

        .stack append Object com/fs/starfarer/combat/CombatFleetManager$oo Float 
L303:   fload 13 
L305:   ldc_w +0.6600000262260437f 
L308:   fcmpg 
L309:   ifge L320 
L312:   aload 12 
L314:   getstatic Field com/fs/starfarer/combat/A/B$Oo Object Lcom/fs/starfarer/combat/A/B$Oo; 
L317:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$oo o00000 (Lcom/fs/starfarer/combat/A/B$Oo;)V 

        .stack full 
            locals Object com/fs/starfarer/combat/ai/admiral/G Float Integer Object java/util/List Object java/util/Random Object java/util/List Integer Float Integer Object [c459] Top Object java/util/Iterator 
            stack 
        .end stack 
L320:   aload 11 
L322:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L327:   ifne L228 
L330:   aload 9 
L332:   invokevirtual Method [c459] class ()Z 
L335:   ifne L347 
L338:   aload_0 
L339:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'super.do$do' Lcom/fs/starfarer/combat/CombatFleetManager; 
L342:   aload 9 
L344:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager deploy (Lcom/fs/starfarer/combat/CombatFleetManager$DeploymentSpec;)V 

        .stack full 
            locals Object com/fs/starfarer/combat/ai/admiral/G Float Integer Object java/util/List Object java/util/Random Object java/util/List Integer Float Integer 
            stack 
        .end stack 
L347:   return 
L348:   
    .end code 
.end method

.method private DeploymentManager_pickReinforcement : (Lproxy/com/fs/starfarer/combat/ai/admiral/DeploymentManager$ReinforcementType;FLjava/util/List;Ljava/util/List;Z)Lproxy/com/fs/starfarer/campaign/fleet/FleetMember;
    .code stack 6 locals 6
L0:     aload_0
L1:     aload_1
L2:     fload_2
L3:     aload_3
L4:     aload 4
L6:     iload 5
L8:     invokestatic Method com/genir/renderer/overrides/DeploymentManager pickReinforcement (Lproxy/com/fs/starfarer/combat/ai/admiral/DeploymentManager;Lproxy/com/fs/starfarer/combat/ai/admiral/DeploymentManager$ReinforcementType;FLjava/util/List;Ljava/util/List;Z)Lproxy/com/fs/starfarer/campaign/fleet/FleetMember;
L11:    areturn
L12:
        .linenumbertable
            L0 11
        .end linenumbertable
        .localvariabletable
            0 is this Lproxy/com/fs/starfarer/combat/ai/admiral/DeploymentManager; from L0 to L12
            1 is reinforcementType Lproxy/com/fs/starfarer/combat/ai/admiral/DeploymentManager$ReinforcementType; from L0 to L12
            2 is deploymentPointLimit F from L0 to L12
            3 is reserves Ljava/util/List; from L0 to L12
            4 is reinforcements Ljava/util/List; from L0 to L12
            5 is allyMode Z from L0 to L12
        .end localvariabletable
        .localvariabletypetable
            3 is reserves Ljava/util/List<Lproxy/com/fs/starfarer/campaign/fleet/FleetMember;>; from L0 to L12
            4 is reinforcements Ljava/util/List<Lproxy/com/fs/starfarer/campaign/fleet/FleetMember;>; from L0 to L12
        .end localvariabletypetable
    .end code
    .signature (Lproxy/com/fs/starfarer/combat/ai/admiral/DeploymentManager$ReinforcementType;FLjava/util/List<Lproxy/com/fs/starfarer/campaign/fleet/FleetMember;>;Ljava/util/List<Lproxy/com/fs/starfarer/campaign/fleet/FleetMember;>;Z)Lproxy/com/fs/starfarer/campaign/fleet/FleetMember;
.end method

.method public DeploymentManager_pickReinforcement_vanilla : (Lcom/fs/starfarer/combat/ai/admiral/G$o;FLjava/util/List;Ljava/util/List;Z)Lcom/fs/starfarer/campaign/fleet/FleetMember;
    .signature (Lcom/fs/starfarer/combat/ai/admiral/G$o;FLjava/util/List<Lcom/fs/starfarer/campaign/fleet/FleetMember;>;Ljava/util/List<Lcom/fs/starfarer/campaign/fleet/FleetMember;>;Z)Lcom/fs/starfarer/campaign/fleet/FleetMember; 
    .code stack 4 locals 16 
L0:     ldc_w 'pick reinforcement' 
L3:     invokestatic Method com/fs/profiler/Profiler 'Ò00000' (Ljava/lang/String;)V 
        .catch [0] from L6 to L541 using L790 
L6:     iconst_0 
L7:     istore 6 
L9:     fconst_0 
L10:    fstore 7 
L12:    iconst_1 
L13:    istore 8 
L15:    iconst_1 
L16:    istore 9 
L18:    aload_3 
L19:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L24:    astore 11 
L26:    goto L92 

        .stack full 
            locals Object com/fs/starfarer/combat/ai/admiral/G Object com/fs/starfarer/combat/ai/admiral/G$o Float Object java/util/List Object java/util/List Integer Integer Float Integer Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L29:    aload 11 
L31:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L36:    checkcast com/fs/starfarer/campaign/fleet/FleetMember 
L39:    astore 10 
L41:    aload 10 
L43:    invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember isCarrier ()Z 
L46:    ifeq L52 
L49:    iconst_1 
L50:    istore 6 

        .stack full 
            locals Object com/fs/starfarer/combat/ai/admiral/G Object com/fs/starfarer/combat/ai/admiral/G$o Float Object java/util/List Object java/util/List Integer Integer Float Integer Integer Object com/fs/starfarer/campaign/fleet/FleetMember Object java/util/Iterator 
            stack 
        .end stack 
L52:    aload 10 
L54:    invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember isCivilian ()Z 
L57:    ifne L63 
L60:    iconst_0 
L61:    istore 8 

        .stack same 
L63:    aload 10 
L65:    invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember isCarrier ()Z 
L68:    ifne L82 
L71:    aload 10 
L73:    invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember isCivilian ()Z 
L76:    ifne L82 
L79:    iconst_0 
L80:    istore 9 

        .stack same 
L82:    fload 7 
L84:    aload 10 
L86:    invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getDeploymentPointsCost ()F 
L89:    fadd 
L90:    fstore 7 

        .stack full 
            locals Object com/fs/starfarer/combat/ai/admiral/G Object com/fs/starfarer/combat/ai/admiral/G$o Float Object java/util/List Object java/util/List Integer Integer Float Integer Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L92:    aload 11 
L94:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L99:    ifne L29 
L102:   aload 4 
L104:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L109:   astore 11 
L111:   goto L137 

        .stack same 
L114:   aload 11 
L116:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L121:   checkcast com/fs/starfarer/campaign/fleet/FleetMember 
L124:   astore 10 
L126:   aload 10 
L128:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember isCivilian ()Z 
L131:   ifne L137 
L134:   iconst_0 
L135:   istore 8 

        .stack same 
L137:   aload 11 
L139:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L144:   ifne L114 
L147:   aload_0 
L148:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'do.for$do' Z 
L151:   ifne L163 
L154:   iload 8 
L156:   ifeq L163 
L159:   iconst_1 
L160:   goto L164 

        .stack full 
            locals Object com/fs/starfarer/combat/ai/admiral/G Object com/fs/starfarer/combat/ai/admiral/G$o Float Object java/util/List Object java/util/List Integer Integer Float Integer Integer 
            stack 
        .end stack 
L163:   iconst_0 

        .stack stack_1 Integer 
L164:   istore 10 
L166:   aload_0 
L167:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'do.for$do' Z 
L170:   ifeq L183 
L173:   aload_0 
L174:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'ÓÕoo00' Z 
L177:   ifeq L183 
L180:   iconst_1 
L181:   istore 10 

        .stack append Integer 
L183:   aload_0 
L184:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'super.do$do' Lcom/fs/starfarer/combat/CombatFleetManager; 
L187:   ifnull L226 
L190:   invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L193:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getContext ()Lcom/fs/starfarer/api/combat/BattleCreationContext; 
L196:   ifnull L226 
L199:   invokestatic Method com/fs/starfarer/combat/CombatEngine getInstance ()Lcom/fs/starfarer/combat/CombatEngine; 
L202:   invokevirtual Method com/fs/starfarer/combat/CombatEngine getContext ()Lcom/fs/starfarer/api/combat/BattleCreationContext; 
L205:   getfield Field com/fs/starfarer/api/combat/BattleCreationContext enemyDeployAll Z 
L208:   ifeq L226 
L211:   aload_0 
L212:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'super.do$do' Lcom/fs/starfarer/combat/CombatFleetManager; 
L215:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getOwner ()I 
L218:   iconst_1 
L219:   if_icmpne L226 
L222:   iconst_1 
L223:   goto L227 

        .stack same 
L226:   iconst_0 

        .stack stack_1 Integer 
L227:   istore 11 
L229:   iload 11 
L231:   ifeq L237 
L234:   iconst_1 
L235:   istore 10 

        .stack append Integer 
L237:   iload 9 
L239:   ifeq L284 
L242:   aload_0 
L243:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'super.do$do' Lcom/fs/starfarer/combat/CombatFleetManager; 
L246:   ifnull L284 
L249:   aload_0 
L250:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'super.do$do' Lcom/fs/starfarer/combat/CombatFleetManager; 
L253:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager isInFullRetreat ()Z 
L256:   ifne L284 
L259:   aload_0 
L260:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'super.do$do' Lcom/fs/starfarer/combat/CombatFleetManager; 
L263:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getDeployed ()Ljava/util/Set; 
L266:   invokeinterface InterfaceMethod java/util/Set isEmpty ()Z 1 
L271:   ifeq L284 
L274:   aload_0 
L275:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'do.for$do' Z 
L278:   ifeq L284 
L281:   iconst_1 
L282:   istore 10 

        .stack same 
L284:   aload_3 
L285:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L290:   astore 13 
L292:   goto L775 

        .stack full 
            locals Object com/fs/starfarer/combat/ai/admiral/G Object com/fs/starfarer/combat/ai/admiral/G$o Float Object java/util/List Object java/util/List Integer Integer Float Integer Integer Integer Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L295:   aload 13 
L297:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L302:   checkcast com/fs/starfarer/campaign/fleet/FleetMember 
L305:   astore 12 
L307:   aload 12 
L309:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getDeploymentPointsCost ()F 
L312:   fload_2 
L313:   fcmpl 
L314:   ifle L320 
L317:   goto L775 

        .stack full 
            locals Object com/fs/starfarer/combat/ai/admiral/G Object com/fs/starfarer/combat/ai/admiral/G$o Float Object java/util/List Object java/util/List Integer Integer Float Integer Integer Integer Integer Object com/fs/starfarer/campaign/fleet/FleetMember Object java/util/Iterator 
            stack 
        .end stack 
L320:   aload_0 
L321:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'private.for$do' Lcom/fs/starfarer/combat/ai/admiral/AdmiralAI; 
L324:   ifnull L366 
L327:   aload_0 
L328:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'private.for$do' Lcom/fs/starfarer/combat/ai/admiral/AdmiralAI; 
L331:   invokevirtual Method com/fs/starfarer/combat/ai/admiral/AdmiralAI getDelegate ()Lcom/fs/starfarer/api/combat/AdmiralAIPlugin$AdmiralPluginDelegate; 
L334:   ifnull L366 
L337:   aload_0 
L338:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'private.for$do' Lcom/fs/starfarer/combat/ai/admiral/AdmiralAI; 
L341:   invokevirtual Method com/fs/starfarer/combat/ai/admiral/AdmiralAI getDelegate ()Lcom/fs/starfarer/api/combat/AdmiralAIPlugin$AdmiralPluginDelegate; 
L344:   new java/util/ArrayList 
L347:   dup 
L348:   aload 4 
L350:   invokespecial Method java/util/ArrayList <init> (Ljava/util/Collection;)V 
L353:   aload 12 
L355:   invokeinterface InterfaceMethod com/fs/starfarer/api/combat/AdmiralAIPlugin$AdmiralPluginDelegate allowedToDeploy (Ljava/util/List;Lcom/fs/starfarer/api/fleet/FleetMemberAPI;)Z 3 
L360:   ifne L366 
L363:   goto L775 

        .stack same 
L366:   iload 5 
L368:   ifeq L386 
L371:   aload 12 
L373:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getCR ()F 
L376:   ldc_w +0.4000000059604645f 
L379:   fcmpg 
L380:   ifge L386 
L383:   goto L775 

        .stack same 
L386:   aload 12 
L388:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getCR ()F 
L391:   ldc_w +0.10000000149011612f 
L394:   fcmpg 
L395:   ifgt L444 
L398:   aload_0 
L399:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'super.do$do' Lcom/fs/starfarer/combat/CombatFleetManager; 
L402:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getOwner ()I 
L405:   ifne L444 
L408:   aload_0 
L409:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'õÔoo00' Z 
L412:   ifeq L444 
L415:   aload_0 
L416:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'super.do$do' Lcom/fs/starfarer/combat/CombatFleetManager; 
L419:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getGoal ()Lcom/fs/starfarer/api/fleet/FleetGoal; 
L422:   getstatic Field com/fs/starfarer/api/fleet/FleetGoal ATTACK Lcom/fs/starfarer/api/fleet/FleetGoal; 
L425:   if_acmpne L444 
L428:   aload_0 
L429:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'ôÕoo00' Lcom/fs/starfarer/combat/CombatFleetManager; 
L432:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getGoal ()Lcom/fs/starfarer/api/fleet/FleetGoal; 
L435:   getstatic Field com/fs/starfarer/api/fleet/FleetGoal ESCAPE Lcom/fs/starfarer/api/fleet/FleetGoal; 
L438:   if_acmpne L444 
L441:   goto L775 

        .stack same 
L444:   invokestatic Method com/fs/starfarer/combat/ai/admiral/G 'oØO000' ()[I 
L447:   aload_1 
L448:   invokevirtual Method com/fs/starfarer/combat/ai/admiral/G$o ordinal ()I 
L451:   iaload 
L452:   tableswitch 1 
            L714 
            L661 
            L547 
            L492 
            L492 
            L608 
            default : L775 


        .stack same 
L492:   aload 12 
L494:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember isCarrier ()Z 
L497:   ifeq L775 
L500:   aload 12 
L502:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember getVariant ()Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L505:   invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getFittedWings ()Ljava/util/List; 
L508:   invokeinterface InterfaceMethod java/util/List isEmpty ()Z 1 
L513:   ifeq L519 
L516:   goto L775 

        .stack same 
L519:   aload_1 
L520:   getstatic Field com/fs/starfarer/combat/ai/admiral/G$o 'Ö00000' Lcom/fs/starfarer/combat/ai/admiral/G$o; 
L523:   if_acmpne L537 
L526:   aload 12 
L528:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember isCapital ()Z 
L531:   ifne L537 
L534:   goto L775 

        .stack same 
L537:   aload 12 
L539:   astore 15 
L541:   invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L544:   aload 15 
L546:   areturn 
        .catch [0] from L547 to L602 using L790 

        .stack same 
L547:   aload 12 
L549:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember isCapital ()Z 
L552:   ifne L566 
L555:   aload 12 
L557:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember isCruiser ()Z 
L560:   ifne L566 
L563:   goto L775 

        .stack same 
L566:   aload 12 
L568:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember isCivilian ()Z 
L571:   ifeq L582 
L574:   iload 10 
L576:   ifne L582 
L579:   goto L775 

        .stack same 
L582:   iload 9 
L584:   ifne L598 
L587:   aload 12 
L589:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember isCarrier ()Z 
L592:   ifeq L598 
L595:   goto L775 

        .stack same 
L598:   aload 12 
L600:   astore 15 
L602:   invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L605:   aload 15 
L607:   areturn 
        .catch [0] from L608 to L655 using L790 

        .stack same 
L608:   aload 12 
L610:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember isCapital ()Z 
L613:   ifne L619 
L616:   goto L775 

        .stack same 
L619:   aload 12 
L621:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember isCivilian ()Z 
L624:   ifeq L635 
L627:   iload 10 
L629:   ifne L635 
L632:   goto L775 

        .stack same 
L635:   iload 9 
L637:   ifne L651 
L640:   aload 12 
L642:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember isCarrier ()Z 
L645:   ifeq L651 
L648:   goto L775 

        .stack same 
L651:   aload 12 
L653:   astore 15 
L655:   invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L658:   aload 15 
L660:   areturn 
        .catch [0] from L661 to L708 using L790 

        .stack same 
L661:   aload 12 
L663:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember isDestroyer ()Z 
L666:   ifne L672 
L669:   goto L775 

        .stack same 
L672:   aload 12 
L674:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember isCivilian ()Z 
L677:   ifeq L688 
L680:   iload 10 
L682:   ifne L688 
L685:   goto L775 

        .stack same 
L688:   iload 9 
L690:   ifne L704 
L693:   aload 12 
L695:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember isCarrier ()Z 
L698:   ifeq L704 
L701:   goto L775 

        .stack same 
L704:   aload 12 
L706:   astore 15 
L708:   invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L711:   aload 15 
L713:   areturn 
        .catch [0] from L714 to L769 using L790 

        .stack same 
L714:   aload 12 
L716:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember isFighterWing ()Z 
L719:   ifne L733 
L722:   aload 12 
L724:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember isFrigate ()Z 
L727:   ifne L733 
L730:   goto L775 

        .stack same 
L733:   aload 12 
L735:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember isCivilian ()Z 
L738:   ifeq L749 
L741:   iload 10 
L743:   ifne L749 
L746:   goto L775 

        .stack same 
L749:   iload 9 
L751:   ifne L765 
L754:   aload 12 
L756:   invokevirtual Method com/fs/starfarer/campaign/fleet/FleetMember isCarrier ()Z 
L759:   ifeq L765 
L762:   goto L775 

        .stack same 
L765:   aload 12 
L767:   astore 15 
L769:   invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L772:   aload 15 
L774:   areturn 
        .catch [0] from L775 to L785 using L790 

        .stack full 
            locals Object com/fs/starfarer/combat/ai/admiral/G Object com/fs/starfarer/combat/ai/admiral/G$o Float Object java/util/List Object java/util/List Integer Integer Float Integer Integer Integer Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L775:   aload 13 
L777:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L782:   ifne L295 
L785:   invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L788:   aconst_null 
L789:   areturn 

        .stack full 
            locals Object com/fs/starfarer/combat/ai/admiral/G Object com/fs/starfarer/combat/ai/admiral/G$o Float Object java/util/List Object java/util/List Integer 
            stack Object java/lang/Throwable 
        .end stack 
L790:   astore 14 
L792:   invokestatic Method com/fs/profiler/Profiler o00000 ()V 
L795:   aload 14 
L797:   athrow 
L798:   
    .end code 
.end method 

.method private 'öÖO000' : ()F 
    .code stack 2 locals 3 
L0:     invokestatic Method com/fs/starfarer/api/Global getSettings ()Lcom/fs/starfarer/api/SettingsAPI; 
L3:     ldc_w 'maxDisengageSize' 
L6:     invokeinterface InterfaceMethod com/fs/starfarer/api/SettingsAPI getFloat (Ljava/lang/String;)F 2 
L11:    fstore_1 
L12:    invokestatic Method com/fs/starfarer/api/Global getSettings ()Lcom/fs/starfarer/api/SettingsAPI; 
L15:    ldc_w 'maxDisengageFraction' 
L18:    invokeinterface InterfaceMethod com/fs/starfarer/api/SettingsAPI getFloat (Ljava/lang/String;)F 2 
L23:    invokestatic Method com/fs/starfarer/api/Global getSettings ()Lcom/fs/starfarer/api/SettingsAPI; 
L26:    invokeinterface InterfaceMethod com/fs/starfarer/api/SettingsAPI getBattleSize ()I 1 
L31:    i2f 
L32:    fmul 
L33:    fstore_2 
L34:    fload_1 
L35:    fload_2 
L36:    invokestatic Method java/lang/Math min (FF)F 
L39:    freturn 
L40:    
    .end code 
.end method 

.method public fighterWingDestroyed : (Lcom/fs/starfarer/combat/ai/M;)V 
    .code stack 3 locals 5 
L0:     aload_1 
L1:     invokevirtual Method com/fs/starfarer/combat/ai/M getWingOwner ()I 
L4:     aload_0 
L5:     getfield Field com/fs/starfarer/combat/ai/admiral/G 'super.do$do' Lcom/fs/starfarer/combat/CombatFleetManager; 
L8:     invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getOwner ()I 
L11:    if_icmpne L87 
L14:    aconst_null 
L15:    astore_2 
L16:    aload_0 
L17:    getfield Field com/fs/starfarer/combat/ai/admiral/G 'super.do$do' Lcom/fs/starfarer/combat/CombatFleetManager; 
L20:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getAllEverDeployed ()Ljava/util/List; 
L23:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L28:    astore 4 
L30:    goto L57 

        .stack full 
            locals Object com/fs/starfarer/combat/ai/admiral/G Object com/fs/starfarer/combat/ai/M Object com/fs/starfarer/combat/CombatFleetManager$O0 Top Object java/util/Iterator 
            stack 
        .end stack 
L33:    aload 4 
L35:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L40:    checkcast com/fs/starfarer/combat/CombatFleetManager$O0 
L43:    astore_3 
L44:    aload_3 
L45:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getWingIfFighter ()Lcom/fs/starfarer/combat/ai/M; 
L48:    aload_1 
L49:    if_acmpne L57 
L52:    aload_3 
L53:    astore_2 
L54:    goto L67 

        .stack same 
L57:    aload 4 
L59:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L64:    ifne L33 

        .stack full 
            locals Object com/fs/starfarer/combat/ai/admiral/G Object com/fs/starfarer/combat/ai/M Object com/fs/starfarer/combat/CombatFleetManager$O0 
            stack 
        .end stack 
L67:    aload_2 
L68:    ifnull L157 
L71:    aload_0 
L72:    dup 
L73:    getfield Field com/fs/starfarer/combat/ai/admiral/G 'void.do$do' F 
L76:    aload_2 
L77:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getMemberStrength ()F 
L80:    fadd 
L81:    putfield Field com/fs/starfarer/combat/ai/admiral/G 'void.do$do' F 
L84:    goto L157 

        .stack chop 1 
L87:    aconst_null 
L88:    astore_2 
L89:    aload_0 
L90:    getfield Field com/fs/starfarer/combat/ai/admiral/G 'ôÕoo00' Lcom/fs/starfarer/combat/CombatFleetManager; 
L93:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getAllEverDeployed ()Ljava/util/List; 
L96:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L101:   astore 4 
L103:   goto L130 

        .stack full 
            locals Object com/fs/starfarer/combat/ai/admiral/G Object com/fs/starfarer/combat/ai/M Object com/fs/starfarer/combat/CombatFleetManager$O0 Top Object java/util/Iterator 
            stack 
        .end stack 
L106:   aload 4 
L108:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L113:   checkcast com/fs/starfarer/combat/CombatFleetManager$O0 
L116:   astore_3 
L117:   aload_3 
L118:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getWingIfFighter ()Lcom/fs/starfarer/combat/ai/M; 
L121:   aload_1 
L122:   if_acmpne L130 
L125:   aload_3 
L126:   astore_2 
L127:   goto L140 

        .stack same 
L130:   aload 4 
L132:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L137:   ifne L106 

        .stack full 
            locals Object com/fs/starfarer/combat/ai/admiral/G Object com/fs/starfarer/combat/ai/M Object com/fs/starfarer/combat/CombatFleetManager$O0 
            stack 
        .end stack 
L140:   aload_2 
L141:   ifnull L157 
L144:   aload_0 
L145:   dup 
L146:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'String.do$do' F 
L149:   aload_2 
L150:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getMemberStrength ()F 
L153:   fadd 
L154:   putfield Field com/fs/starfarer/combat/ai/admiral/G 'String.do$do' F 

        .stack chop 1 
L157:   return 
L158:   
    .end code 
.end method 

.method public fleetMemberRetreated : (Lcom/fs/starfarer/combat/CombatFleetManager$O0;)V 
    .code stack 3 locals 2 
L0:     aload_1 
L1:     invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getOwner ()I 
L4:     aload_0 
L5:     getfield Field com/fs/starfarer/combat/ai/admiral/G 'super.do$do' Lcom/fs/starfarer/combat/CombatFleetManager; 
L8:     invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getOwner ()I 
L11:    if_icmpne L30 
L14:    aload_0 
L15:    dup 
L16:    getfield Field com/fs/starfarer/combat/ai/admiral/G 'void.do$do' F 
L19:    aload_1 
L20:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getMemberStrength ()F 
L23:    fadd 
L24:    putfield Field com/fs/starfarer/combat/ai/admiral/G 'void.do$do' F 
L27:    goto L43 

        .stack same 
L30:    aload_0 
L31:    dup 
L32:    getfield Field com/fs/starfarer/combat/ai/admiral/G 'String.do$do' F 
L35:    aload_1 
L36:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getMemberStrength ()F 
L39:    fadd 
L40:    putfield Field com/fs/starfarer/combat/ai/admiral/G 'String.do$do' F 

        .stack same 
L43:    return 
L44:    
    .end code 
.end method 

.method public shipDisabled : (Lcom/fs/starfarer/combat/entities/Ship;)V 
    .code stack 3 locals 5 
L0:     aload_1 
L1:     invokevirtual Method com/fs/starfarer/combat/entities/Ship isFighter ()Z 
L4:     ifeq L8 
L7:     return 

        .stack same 
L8:     aload_1 
L9:     invokevirtual Method com/fs/starfarer/combat/entities/Ship getOriginalOwner ()I 
L12:    aload_0 
L13:    getfield Field com/fs/starfarer/combat/ai/admiral/G 'super.do$do' Lcom/fs/starfarer/combat/CombatFleetManager; 
L16:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getOwner ()I 
L19:    if_icmpne L95 
L22:    aconst_null 
L23:    astore_2 
L24:    aload_0 
L25:    getfield Field com/fs/starfarer/combat/ai/admiral/G 'super.do$do' Lcom/fs/starfarer/combat/CombatFleetManager; 
L28:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getAllEverDeployed ()Ljava/util/List; 
L31:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L36:    astore 4 
L38:    goto L65 

        .stack full 
            locals Object com/fs/starfarer/combat/ai/admiral/G Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/CombatFleetManager$O0 Top Object java/util/Iterator 
            stack 
        .end stack 
L41:    aload 4 
L43:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L48:    checkcast com/fs/starfarer/combat/CombatFleetManager$O0 
L51:    astore_3 
L52:    aload_3 
L53:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getShipIfShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L56:    aload_1 
L57:    if_acmpne L65 
L60:    aload_3 
L61:    astore_2 
L62:    goto L75 

        .stack same 
L65:    aload 4 
L67:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L72:    ifne L41 

        .stack full 
            locals Object com/fs/starfarer/combat/ai/admiral/G Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/CombatFleetManager$O0 
            stack 
        .end stack 
L75:    aload_2 
L76:    ifnull L165 
L79:    aload_0 
L80:    dup 
L81:    getfield Field com/fs/starfarer/combat/ai/admiral/G 'void.do$do' F 
L84:    aload_2 
L85:    invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getMemberStrength ()F 
L88:    fadd 
L89:    putfield Field com/fs/starfarer/combat/ai/admiral/G 'void.do$do' F 
L92:    goto L165 

        .stack chop 1 
L95:    aconst_null 
L96:    astore_2 
L97:    aload_0 
L98:    getfield Field com/fs/starfarer/combat/ai/admiral/G 'ôÕoo00' Lcom/fs/starfarer/combat/CombatFleetManager; 
L101:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager getAllEverDeployed ()Ljava/util/List; 
L104:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L109:   astore 4 
L111:   goto L138 

        .stack full 
            locals Object com/fs/starfarer/combat/ai/admiral/G Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/CombatFleetManager$O0 Top Object java/util/Iterator 
            stack 
        .end stack 
L114:   aload 4 
L116:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L121:   checkcast com/fs/starfarer/combat/CombatFleetManager$O0 
L124:   astore_3 
L125:   aload_3 
L126:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getShipIfShip ()Lcom/fs/starfarer/combat/entities/Ship; 
L129:   aload_1 
L130:   if_acmpne L138 
L133:   aload_3 
L134:   astore_2 
L135:   goto L148 

        .stack same 
L138:   aload 4 
L140:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L145:   ifne L114 

        .stack full 
            locals Object com/fs/starfarer/combat/ai/admiral/G Object com/fs/starfarer/combat/entities/Ship Object com/fs/starfarer/combat/CombatFleetManager$O0 
            stack 
        .end stack 
L148:   aload_2 
L149:   ifnull L165 
L152:   aload_0 
L153:   dup 
L154:   getfield Field com/fs/starfarer/combat/ai/admiral/G 'String.do$do' F 
L157:   aload_2 
L158:   invokevirtual Method com/fs/starfarer/combat/CombatFleetManager$O0 getMemberStrength ()F 
L161:   fadd 
L162:   putfield Field com/fs/starfarer/combat/ai/admiral/G 'String.do$do' F 

        .stack chop 1 
L165:   return 
L166:   
    .end code 
.end method 

.method public shipDestroyed : (Lcom/fs/starfarer/combat/entities/Ship;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     invokevirtual Method com/fs/starfarer/combat/ai/admiral/G shipDisabled (Lcom/fs/starfarer/combat/entities/Ship;)V 
L5:     return 
L6:     
    .end code 
.end method 

.method public fleetMemberCaptured : (Lcom/fs/starfarer/campaign/fleet/FleetMember;)V 
    .code stack 0 locals 2 
L0:     return 
L1:     
    .end code 
.end method 

.method public fleetMemberDeployed : (Lcom/fs/starfarer/combat/CombatFleetManager$O0;)V 
    .code stack 0 locals 2 
L0:     return 
L1:     
    .end code 
.end method 

.method public objectiveChangedOwner : (ILcom/fs/starfarer/api/combat/BattleObjectiveAPI;)V 
    .code stack 0 locals 3 
L0:     return 
L1:     
    .end code 
.end method 

.method public orderGiven : (ILcom/fs/starfarer/combat/private;)V 
    .code stack 0 locals 3 
L0:     return 
L1:     
    .end code 
.end method 

.method static synthetic 'oØO000' : ()[I 
    .code stack 3 locals 1 
L0:     getstatic Field com/fs/starfarer/combat/ai/admiral/G 'øÔoo00' [I 
L3:     dup 
L4:     ifnull L8 
L7:     areturn 

        .stack stack_1 Object [I 
L8:     pop 
L9:     invokestatic Method com/fs/starfarer/combat/ai/admiral/G$o values ()[Lcom/fs/starfarer/combat/ai/admiral/G$o; 
L12:    arraylength 
L13:    newarray int 
L15:    astore_0 
        .catch java/lang/NoSuchFieldError from L16 to L25 using L28 
L16:    aload_0 
L17:    getstatic Field com/fs/starfarer/combat/ai/admiral/G$o 'Ø00000' Lcom/fs/starfarer/combat/ai/admiral/G$o; 
L20:    invokevirtual Method com/fs/starfarer/combat/ai/admiral/G$o ordinal ()I 
L23:    iconst_4 
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
L30:    getstatic Field com/fs/starfarer/combat/ai/admiral/G$o class Lcom/fs/starfarer/combat/ai/admiral/G$o; 
L33:    invokevirtual Method com/fs/starfarer/combat/ai/admiral/G$o ordinal ()I 
L36:    bipush 6 
L38:    iastore 
L39:    goto L43 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L42:    pop 
        .catch java/lang/NoSuchFieldError from L43 to L52 using L55 

        .stack same 
L43:    aload_0 
L44:    getstatic Field com/fs/starfarer/combat/ai/admiral/G$o 'Ó00000' Lcom/fs/starfarer/combat/ai/admiral/G$o; 
L47:    invokevirtual Method com/fs/starfarer/combat/ai/admiral/G$o ordinal ()I 
L50:    iconst_3 
L51:    iastore 
L52:    goto L56 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L55:    pop 
        .catch java/lang/NoSuchFieldError from L56 to L65 using L68 

        .stack same 
L56:    aload_0 
L57:    getstatic Field com/fs/starfarer/combat/ai/admiral/G$o new Lcom/fs/starfarer/combat/ai/admiral/G$o; 
L60:    invokevirtual Method com/fs/starfarer/combat/ai/admiral/G$o ordinal ()I 
L63:    iconst_2 
L64:    iastore 
L65:    goto L69 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L68:    pop 
        .catch java/lang/NoSuchFieldError from L69 to L78 using L81 

        .stack same 
L69:    aload_0 
L70:    getstatic Field com/fs/starfarer/combat/ai/admiral/G$o 'Ô00000' Lcom/fs/starfarer/combat/ai/admiral/G$o; 
L73:    invokevirtual Method com/fs/starfarer/combat/ai/admiral/G$o ordinal ()I 
L76:    iconst_1 
L77:    iastore 
L78:    goto L82 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L81:    pop 
        .catch java/lang/NoSuchFieldError from L82 to L91 using L94 

        .stack same 
L82:    aload_0 
L83:    getstatic Field com/fs/starfarer/combat/ai/admiral/G$o 'Ö00000' Lcom/fs/starfarer/combat/ai/admiral/G$o; 
L86:    invokevirtual Method com/fs/starfarer/combat/ai/admiral/G$o ordinal ()I 
L89:    iconst_5 
L90:    iastore 
L91:    goto L95 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L94:    pop 

        .stack same 
L95:    aload_0 
L96:    dup 
L97:    putstatic Field com/fs/starfarer/combat/ai/admiral/G 'øÔoo00' [I 
L100:   areturn 
L101:   
    .end code 
.end method 
.innerclasses 
    com/fs/starfarer/api/combat/AdmiralAIPlugin$AdmiralPluginDelegate com/fs/starfarer/api/combat/AdmiralAIPlugin AdmiralPluginDelegate public static interface abstract 
    com/fs/starfarer/api/combat/ShipAPI$HullSize com/fs/starfarer/api/combat/ShipAPI HullSize public static final enum 
    com/fs/starfarer/combat/CombatFleetManager$O0 com/fs/starfarer/combat/CombatFleetManager O0 public static 
    [c459] com/fs/starfarer/combat/CombatFleetManager DeploymentSpec public static 
    com/fs/starfarer/combat/CombatFleetManager$oo com/fs/starfarer/combat/CombatFleetManager oo public static 
    com/fs/starfarer/combat/ai/admiral/G$o com/fs/starfarer/combat/ai/admiral/G o public static final enum 
    com/fs/starfarer/combat/A/B$Oo com/fs/starfarer/combat/A/B Oo public static final enum 
.end innerclasses 
.nestmembers com/fs/starfarer/combat/ai/admiral/G$o 
.const [c459] = Class [u285] 
.const [u285] = Utf8 com/fs/starfarer/combat/CombatFleetManager$DeploymentSpec 
.end class 
