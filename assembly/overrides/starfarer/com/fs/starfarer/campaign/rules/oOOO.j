.version 61 0 
.class public super com/fs/starfarer/campaign/rules/oOOO 
.super java/lang/Object 
.implements com/fs/starfarer/api/campaign/rules/ExpressionAPI 
.field private static class Lorg/apache/log4j/Logger; 
.field private OO0000 Z 
.field private 'Ø00000' Ljava/lang/String; 
.field private 'Ö00000' Ljava/util/List; .fieldattributes 
    .signature Ljava/util/List<Lcom/fs/starfarer/api/util/Misc$Token;>; 
.end fieldattributes 
.field private 'Ó00000' Lcom/fs/starfarer/campaign/rules/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO; 
.field private null Lcom/fs/starfarer/api/util/Misc$Token; 
.field private new Lcom/fs/starfarer/api/util/Misc$Token; 
.field private o00000 Lcom/fs/starfarer/api/util/Misc$Token; 
.field private 'õ00000' Ljava/lang/String; 
.field private 'Ô00000' I 
.field private static final 'ö00000' Ljava/util/List; .fieldattributes 
    .signature Ljava/util/List<Ljava/lang/String;>; 
.end fieldattributes 
.field private static float Ljava/util/Map; .fieldattributes 
    .signature Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>; 
.end fieldattributes 
.field private static volatile synthetic oO0000 [I 

.method static <clinit> : ()V 
    .code stack 2 locals 3 
L0:     ldc Class com/fs/starfarer/campaign/rules/oOOO 
L2:     invokestatic Method org/apache/log4j/Logger getLogger (Ljava/lang/Class;)Lorg/apache/log4j/Logger; 
L5:     putstatic Field com/fs/starfarer/campaign/rules/oOOO class Lorg/apache/log4j/Logger; 
L8:     new java/util/ArrayList 
L11:    dup 
L12:    invokespecial Method java/util/ArrayList <init> ()V 
L15:    putstatic Field com/fs/starfarer/campaign/rules/oOOO 'ö00000' Ljava/util/List; 
        .catch org/json/JSONException from L18 to L59 using L62 
L18:    invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'OÖ0000' ()Lorg/json/JSONObject; 
L21:    ldc 'ruleCommandPackages' 
L23:    invokevirtual Method org/json/JSONObject getJSONArray (Ljava/lang/String;)Lorg/json/JSONArray; 
L26:    astore_0 
L27:    iconst_0 
L28:    istore_1 
L29:    goto L51 

        .stack append Object org/json/JSONArray Integer 
L32:    aload_0 
L33:    iload_1 
L34:    invokevirtual Method org/json/JSONArray getString (I)Ljava/lang/String; 
L37:    astore_2 
L38:    getstatic Field com/fs/starfarer/campaign/rules/oOOO 'ö00000' Ljava/util/List; 
L41:    aload_2 
L42:    invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L47:    pop 
L48:    iinc 1 1 

        .stack same 
L51:    iload_1 
L52:    aload_0 
L53:    invokevirtual Method org/json/JSONArray length ()I 
L56:    if_icmplt L32 
L59:    goto L78 

        .stack full 
            locals 
            stack Object org/json/JSONException 
        .end stack 
L62:    astore_0 
L63:    aload_0 
L64:    invokevirtual Method org/json/JSONException printStackTrace ()V 
L67:    getstatic Field com/fs/starfarer/campaign/rules/oOOO 'ö00000' Ljava/util/List; 
L70:    ldc 'com.fs.starfarer.api.impl.campaign.rulecmd' 
L72:    invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L77:    pop 

        .stack same 
L78:    new java/util/HashMap 
L81:    dup 
L82:    invokespecial Method java/util/HashMap <init> ()V 
L85:    putstatic Field com/fs/starfarer/campaign/rules/oOOO float Ljava/util/Map; 
L88:    return 
L89:    
    .end code 
.end method 

.method public static getCommandClass : (Ljava/lang/String;)Ljava/lang/String; 
    .code stack 3 locals 1
L0:     aload_0
L1:     getstatic Field proxy/com/fs/starfarer/campaign/rules/Expression Expression_commandClasses Ljava/util/Map;
L4:     getstatic Field proxy/com/fs/starfarer/campaign/rules/Expression Expression_rulesPackages Ljava/util/List;
L7:     invokestatic Method com/genir/renderer/overrides/Expression getCommandClass (Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Ljava/lang/String;
L10:    areturn
L11:
        .linenumbertable
            L0 16
        .end linenumbertable
        .localvariabletable
            0 is command Ljava/lang/String; from L0 to L11
        .end localvariabletable
    .end code
.end method

.method public getOperatorEnum : ()Lcom/fs/starfarer/campaign/rules/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/rules/oOOO 'Ó00000' Lcom/fs/starfarer/campaign/rules/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public getFirst : ()Lcom/fs/starfarer/api/util/Misc$Token; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/rules/oOOO null Lcom/fs/starfarer/api/util/Misc$Token; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public getSecond : ()Lcom/fs/starfarer/api/util/Misc$Token; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/rules/oOOO new Lcom/fs/starfarer/api/util/Misc$Token; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public getCommandParams : ()Ljava/util/List; 
    .signature ()Ljava/util/List<Lcom/fs/starfarer/api/util/Misc$Token;>; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/rules/oOOO 'Ö00000' Ljava/util/List; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public setCommandParams : (Ljava/util/List;)V 
    .signature (Ljava/util/List<Lcom/fs/starfarer/api/util/Misc$Token;>;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/fs/starfarer/campaign/rules/oOOO 'Ö00000' Ljava/util/List; 
L5:     return 
L6:     
    .end code 
.end method 

.method public <init> : (Ljava/lang/String;)V 
    .code stack 5 locals 7 
L0:     aload_0 
L1:     invokespecial Method java/lang/Object <init> ()V 
L4:     aload_0 
L5:     iconst_0 
L6:     putfield Field com/fs/starfarer/campaign/rules/oOOO OO0000 Z 
L9:     aload_0 
L10:    aconst_null 
L11:    putfield Field com/fs/starfarer/campaign/rules/oOOO 'Ø00000' Ljava/lang/String; 
L14:    aload_0 
L15:    aconst_null 
L16:    putfield Field com/fs/starfarer/campaign/rules/oOOO 'Ö00000' Ljava/util/List; 
L19:    aload_0 
L20:    aconst_null 
L21:    putfield Field com/fs/starfarer/campaign/rules/oOOO 'Ó00000' Lcom/fs/starfarer/campaign/rules/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO; 
L24:    aload_0 
L25:    iconst_1 
L26:    putfield Field com/fs/starfarer/campaign/rules/oOOO 'Ô00000' I 
L29:    aload_1 
L30:    invokevirtual Method java/lang/String trim ()Ljava/lang/String; 
L33:    astore_1 
L34:    aload_0 
L35:    aload_1 
L36:    putfield Field com/fs/starfarer/campaign/rules/oOOO 'õ00000' Ljava/lang/String; 
L39:    aload_1 
L40:    invokestatic Method com/fs/starfarer/api/util/Misc tokenize (Ljava/lang/String;)Ljava/util/List; 
L43:    astore_2 
L44:    aload_2 
L45:    invokeinterface InterfaceMethod java/util/List isEmpty ()Z 1 
L50:    ifeq L82 
L53:    new com/fs/starfarer/api/util/RuleException 
L56:    dup 
L57:    new java/lang/StringBuilder 
L60:    dup 
L61:    ldc 'No tokens found in string: [' 
L63:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L66:    aload_1 
L67:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L70:    ldc ']' 
L72:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L75:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L78:    invokespecial Method com/fs/starfarer/api/util/RuleException <init> (Ljava/lang/String;)V 
L81:    athrow 

        .stack full 
            locals Object com/fs/starfarer/campaign/rules/oOOO Object java/lang/String Object java/util/List 
            stack 
        .end stack 
L82:    aload_2 
L83:    aload_2 
L84:    invokeinterface InterfaceMethod java/util/List size ()I 1 
L89:    iconst_1 
L90:    isub 
L91:    invokeinterface InterfaceMethod java/util/List get (I)Ljava/lang/Object; 2 
L96:    checkcast com/fs/starfarer/api/util/Misc$Token 
L99:    astore_3 
L100:   aload_3 
L101:   invokevirtual Method com/fs/starfarer/api/util/Misc$Token isLiteral ()Z 
L104:   ifeq L143 
L107:   aload_3 
L108:   getfield Field com/fs/starfarer/api/util/Misc$Token string Ljava/lang/String; 
L111:   ldc 'score:' 
L113:   invokevirtual Method java/lang/String startsWith (Ljava/lang/String;)Z 
L116:   ifeq L143 
L119:   aload_0 
L120:   aload_3 
L121:   getfield Field com/fs/starfarer/api/util/Misc$Token string Ljava/lang/String; 
L124:   bipush 6 
L126:   invokevirtual Method java/lang/String substring (I)Ljava/lang/String; 
L129:   invokestatic Method java/lang/Integer parseInt (Ljava/lang/String;)I 
L132:   putfield Field com/fs/starfarer/campaign/rules/oOOO 'Ô00000' I 
L135:   aload_2 
L136:   aload_3 
L137:   invokeinterface InterfaceMethod java/util/List remove (Ljava/lang/Object;)Z 2 
L142:   pop 

        .stack append Object com/fs/starfarer/api/util/Misc$Token 
L143:   aload_2 
L144:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L149:   astore 5 
L151:   goto L241 

        .stack full 
            locals Object com/fs/starfarer/campaign/rules/oOOO Object java/lang/String Object java/util/List Object com/fs/starfarer/api/util/Misc$Token Top Object java/util/Iterator 
            stack 
        .end stack 
L154:   aload 5 
L156:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L161:   checkcast com/fs/starfarer/api/util/Misc$Token 
L164:   astore 4 
L166:   aload 4 
L168:   invokevirtual Method com/fs/starfarer/api/util/Misc$Token isOperator ()Z 
L171:   ifeq L241 
L174:   aload_0 
L175:   aload 4 
L177:   getfield Field com/fs/starfarer/api/util/Misc$Token string Ljava/lang/String; 
L180:   invokevirtual Method com/fs/starfarer/campaign/rules/oOOO 'super' [u313] 
L183:   astore 6 
L185:   aload 6 
L187:   ifnull L206 
L190:   aload_0 
L191:   getfield Field com/fs/starfarer/campaign/rules/oOOO 'Ó00000' Lcom/fs/starfarer/campaign/rules/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO; 
L194:   ifnonnull L206 
L197:   aload_0 
L198:   aload 6 
L200:   putfield Field com/fs/starfarer/campaign/rules/oOOO 'Ó00000' Lcom/fs/starfarer/campaign/rules/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO; 
L203:   goto L241 

        .stack full 
            locals Object com/fs/starfarer/campaign/rules/oOOO Object java/lang/String Object java/util/List Object com/fs/starfarer/api/util/Misc$Token Object com/fs/starfarer/api/util/Misc$Token Object java/util/Iterator Object com/fs/starfarer/campaign/rules/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 
            stack 
        .end stack 
L206:   aload 6 
L208:   ifnull L241 
L211:   new com/fs/starfarer/api/util/RuleException 
L214:   dup 
L215:   new java/lang/StringBuilder 
L218:   dup 
L219:   ldc_w 'Multiple operators in string: [' 
L222:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L225:   aload_1 
L226:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L229:   ldc ']' 
L231:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L234:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L237:   invokespecial Method com/fs/starfarer/api/util/RuleException <init> (Ljava/lang/String;)V 
L240:   athrow 

        .stack full 
            locals Object com/fs/starfarer/campaign/rules/oOOO Object java/lang/String Object java/util/List Object com/fs/starfarer/api/util/Misc$Token Top Object java/util/Iterator 
            stack 
        .end stack 
L241:   aload 5 
L243:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L248:   ifne L154 
        .catch java/lang/RuntimeException from L251 to L612 using L615 
L251:   aload_0 
L252:   getfield Field com/fs/starfarer/campaign/rules/oOOO 'Ó00000' Lcom/fs/starfarer/campaign/rules/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO; 
L255:   getstatic Field com/fs/starfarer/campaign/rules/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO OO0000 Lcom/fs/starfarer/campaign/rules/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO; 
L258:   if_acmpne L348 
L261:   aload_0 
L262:   aconst_null 
L263:   putfield Field com/fs/starfarer/campaign/rules/oOOO new Lcom/fs/starfarer/api/util/Misc$Token; 
L266:   aload_2 
L267:   iconst_1 
L268:   invokeinterface InterfaceMethod java/util/List get (I)Ljava/lang/Object; 2 
L273:   checkcast com/fs/starfarer/api/util/Misc$Token 
L276:   invokevirtual Method com/fs/starfarer/api/util/Misc$Token isVariable ()Z 
L279:   ifne L331 
L282:   aload_0 
L283:   aload_2 
L284:   iconst_1 
L285:   invokeinterface InterfaceMethod java/util/List get (I)Ljava/lang/Object; 2 
L290:   checkcast com/fs/starfarer/api/util/Misc$Token 
L293:   getfield Field com/fs/starfarer/api/util/Misc$Token string Ljava/lang/String; 
L296:   invokestatic Method com/fs/starfarer/campaign/rules/oOOO getCommandClass (Ljava/lang/String;)Ljava/lang/String; 
L299:   putfield Field com/fs/starfarer/campaign/rules/oOOO 'Ø00000' Ljava/lang/String; 
L302:   aload_2 
L303:   iconst_0 
L304:   invokeinterface InterfaceMethod java/util/List remove (I)Ljava/lang/Object; 2 
L309:   pop 
L310:   aload_2 
L311:   iconst_0 
L312:   invokeinterface InterfaceMethod java/util/List remove (I)Ljava/lang/Object; 2 
L317:   pop 
L318:   aload_0 
L319:   aload_2 
L320:   putfield Field com/fs/starfarer/campaign/rules/oOOO 'Ö00000' Ljava/util/List; 
L323:   aload_0 
L324:   iconst_1 
L325:   putfield Field com/fs/starfarer/campaign/rules/oOOO OO0000 Z 
L328:   goto L627 

        .stack full 
            locals Object com/fs/starfarer/campaign/rules/oOOO Object java/lang/String Object java/util/List Object com/fs/starfarer/api/util/Misc$Token 
            stack 
        .end stack 
L331:   aload_0 
L332:   aload_2 
L333:   iconst_1 
L334:   invokeinterface InterfaceMethod java/util/List get (I)Ljava/lang/Object; 2 
L339:   checkcast com/fs/starfarer/api/util/Misc$Token 
L342:   putfield Field com/fs/starfarer/campaign/rules/oOOO null Lcom/fs/starfarer/api/util/Misc$Token; 
L345:   goto L627 

        .stack same 
L348:   aload_2 
L349:   iconst_0 
L350:   invokeinterface InterfaceMethod java/util/List get (I)Ljava/lang/Object; 2 
L355:   checkcast com/fs/starfarer/api/util/Misc$Token 
L358:   invokevirtual Method com/fs/starfarer/api/util/Misc$Token isVariable ()Z 
L361:   ifne L442 
L364:   aload_0 
L365:   getfield Field com/fs/starfarer/campaign/rules/oOOO 'Ó00000' Lcom/fs/starfarer/campaign/rules/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO; 
L368:   ifnull L401 
L371:   new com/fs/starfarer/api/util/RuleException 
L374:   dup 
L375:   new java/lang/StringBuilder 
L378:   dup 
L379:   ldc_w "Operators (except for '!') not allowed in command invocations; operations must involve at least one variable and it must be first: [" 
L382:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L385:   aload_1 
L386:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L389:   ldc ']' 
L391:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L394:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L397:   invokespecial Method com/fs/starfarer/api/util/RuleException <init> (Ljava/lang/String;)V 
L400:   athrow 

        .stack same 
L401:   aload_0 
L402:   aload_2 
L403:   iconst_0 
L404:   invokeinterface InterfaceMethod java/util/List get (I)Ljava/lang/Object; 2 
L409:   checkcast com/fs/starfarer/api/util/Misc$Token 
L412:   getfield Field com/fs/starfarer/api/util/Misc$Token string Ljava/lang/String; 
L415:   invokestatic Method com/fs/starfarer/campaign/rules/oOOO getCommandClass (Ljava/lang/String;)Ljava/lang/String; 
L418:   putfield Field com/fs/starfarer/campaign/rules/oOOO 'Ø00000' Ljava/lang/String; 
L421:   aload_2 
L422:   iconst_0 
L423:   invokeinterface InterfaceMethod java/util/List remove (I)Ljava/lang/Object; 2 
L428:   pop 
L429:   aload_0 
L430:   aload_2 
L431:   putfield Field com/fs/starfarer/campaign/rules/oOOO 'Ö00000' Ljava/util/List; 
L434:   aload_0 
L435:   iconst_1 
L436:   putfield Field com/fs/starfarer/campaign/rules/oOOO OO0000 Z 
L439:   goto L627 

        .stack same 
L442:   aload_0 
L443:   getfield Field com/fs/starfarer/campaign/rules/oOOO 'Ó00000' Lcom/fs/starfarer/campaign/rules/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO; 
L446:   ifnull L591 
L449:   aload_0 
L450:   getfield Field com/fs/starfarer/campaign/rules/oOOO 'Ó00000' Lcom/fs/starfarer/campaign/rules/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO; 
L453:   getstatic Field com/fs/starfarer/campaign/rules/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO new [u100] 
L456:   if_acmpeq L469 
L459:   aload_0 
L460:   getfield Field com/fs/starfarer/campaign/rules/oOOO 'Ó00000' [u100] 
L463:   getstatic Field com/fs/starfarer/campaign/rules/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 'Ö00000' [u100] 
L466:   if_acmpne L518 

        .stack same 
L469:   aload_0 
L470:   aload_2 
L471:   iconst_0 
L472:   invokeinterface InterfaceMethod java/util/List get (I)Ljava/lang/Object; 2 
L477:   checkcast com/fs/starfarer/api/util/Misc$Token 
L480:   putfield Field com/fs/starfarer/campaign/rules/oOOO null Lcom/fs/starfarer/api/util/Misc$Token; 
L483:   aload_2 
L484:   invokeinterface InterfaceMethod java/util/List size ()I 1 
L489:   iconst_2 
L490:   if_icmple L510 
L493:   aload_0 
L494:   aload_2 
L495:   iconst_2 
L496:   invokeinterface InterfaceMethod java/util/List get (I)Ljava/lang/Object; 2 
L501:   checkcast com/fs/starfarer/api/util/Misc$Token 
L504:   putfield Field com/fs/starfarer/campaign/rules/oOOO o00000 Lcom/fs/starfarer/api/util/Misc$Token; 
L507:   goto L627 

        .stack same 
L510:   aload_0 
L511:   aconst_null 
L512:   putfield Field com/fs/starfarer/campaign/rules/oOOO o00000 Lcom/fs/starfarer/api/util/Misc$Token; 
L515:   goto L627 

        .stack same 
L518:   aload_0 
L519:   aload_2 
L520:   iconst_0 
L521:   invokeinterface InterfaceMethod java/util/List get (I)Ljava/lang/Object; 2 
L526:   checkcast com/fs/starfarer/api/util/Misc$Token 
L529:   putfield Field com/fs/starfarer/campaign/rules/oOOO null Lcom/fs/starfarer/api/util/Misc$Token; 
L532:   aload_0 
L533:   aload_2 
L534:   iconst_2 
L535:   invokeinterface InterfaceMethod java/util/List get (I)Ljava/lang/Object; 2 
L540:   checkcast com/fs/starfarer/api/util/Misc$Token 
L543:   putfield Field com/fs/starfarer/campaign/rules/oOOO new Lcom/fs/starfarer/api/util/Misc$Token; 
L546:   aload_0 
L547:   getfield Field com/fs/starfarer/campaign/rules/oOOO 'Ó00000' [u100] 
L550:   getstatic Field com/fs/starfarer/campaign/rules/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 'Ô00000' [u100] 
L553:   if_acmpne L583 
L556:   aload_2 
L557:   invokeinterface InterfaceMethod java/util/List size ()I 1 
L562:   iconst_3 
L563:   if_icmple L583 
L566:   aload_0 
L567:   aload_2 
L568:   iconst_3 
L569:   invokeinterface InterfaceMethod java/util/List get (I)Ljava/lang/Object; 2 
L574:   checkcast com/fs/starfarer/api/util/Misc$Token 
L577:   putfield Field com/fs/starfarer/campaign/rules/oOOO o00000 Lcom/fs/starfarer/api/util/Misc$Token; 
L580:   goto L627 

        .stack same_extended 
L583:   aload_0 
L584:   aconst_null 
L585:   putfield Field com/fs/starfarer/campaign/rules/oOOO o00000 Lcom/fs/starfarer/api/util/Misc$Token; 
L588:   goto L627 

        .stack same 
L591:   aload_0 
L592:   getstatic Field com/fs/starfarer/campaign/rules/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO oO0000 [u100] 
L595:   putfield Field com/fs/starfarer/campaign/rules/oOOO 'Ó00000' [u100] 
L598:   aload_0 
L599:   aload_2 
L600:   iconst_0 
L601:   invokeinterface InterfaceMethod java/util/List get (I)Ljava/lang/Object; 2 
L606:   checkcast com/fs/starfarer/api/util/Misc$Token 
L609:   putfield Field com/fs/starfarer/campaign/rules/oOOO null Lcom/fs/starfarer/api/util/Misc$Token; 
L612:   goto L627 

        .stack stack_1 Object java/lang/RuntimeException 
L615:   astore 4 
L617:   new com/fs/starfarer/api/util/RuleException 
L620:   dup 
L621:   aload 4 
L623:   invokespecial Method com/fs/starfarer/api/util/RuleException <init> (Ljava/lang/Exception;)V 
L626:   athrow 

        .stack same 
L627:   return 
L628:   
    .end code 
.end method 

.method public getScore : ()I 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/rules/oOOO 'Ô00000' I 
L4:     ireturn 
L5:     
    .end code 
.end method 

.method private 'super' : [u313] 
    .code stack 2 locals 3 
L0:     aconst_null 
L1:     astore_2 
L2:     aload_1 
L3:     ldc_w '=' 
L6:     invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L9:     ifeq L19 
L12:    getstatic Field com/fs/starfarer/campaign/rules/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 'Ô00000' [u100] 
L15:    astore_2 
L16:    goto L169 

        .stack append Object com/fs/starfarer/campaign/rules/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 
L19:    aload_1 
L20:    ldc_w '!' 
L23:    invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L26:    ifeq L36 
L29:    getstatic Field com/fs/starfarer/campaign/rules/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO OO0000 [u100] 
L32:    astore_2 
L33:    goto L169 

        .stack same 
L36:    aload_1 
L37:    ldc_w '!=' 
L40:    invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L43:    ifeq L53 
L46:    getstatic Field com/fs/starfarer/campaign/rules/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 'ö00000' [u100] 
L49:    astore_2 
L50:    goto L169 

        .stack same 
L53:    aload_1 
L54:    ldc_w '==' 
L57:    invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L60:    ifeq L70 
L63:    getstatic Field [c280] 'õ00000' [u100] 
L66:    astore_2 
L67:    goto L169 

        .stack same 
L70:    aload_1 
L71:    ldc_w '>=' 
L74:    invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L77:    ifeq L87 
L80:    getstatic Field [c280] class [u100] 
L83:    astore_2 
L84:    goto L169 

        .stack same 
L87:    aload_1 
L88:    ldc_w '<' 
L91:    invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L94:    ifeq L104 
L97:    getstatic Field [c280] 'Ø00000' [u100] 
L100:   astore_2 
L101:   goto L169 

        .stack same 
L104:   aload_1 
L105:   ldc_w '<=' 
L108:   invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L111:   ifeq L121 
L114:   getstatic Field [c280] null [u100] 
L117:   astore_2 
L118:   goto L169 

        .stack same 
L121:   aload_1 
L122:   ldc_w '>' 
L125:   invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L128:   ifeq L138 
L131:   getstatic Field [c280] float [u100] 
L134:   astore_2 
L135:   goto L169 

        .stack same 
L138:   aload_1 
L139:   ldc_w '++' 
L142:   invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L145:   ifeq L155 
L148:   getstatic Field [c280] new [u100] 
L151:   astore_2 
L152:   goto L169 

        .stack same 
L155:   aload_1 
L156:   ldc_w '--' 
L159:   invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L162:   ifeq L169 
L165:   getstatic Field [c280] 'Ö00000' [u100] 
L168:   astore_2 

        .stack same 
L169:   aload_2 
L170:   areturn 
L171:   
    .end code 
.end method 

.method public isTrueFor : (Ljava/lang/String;Lcom/fs/starfarer/api/campaign/InteractionDialogAPI;Ljava/util/Map;)Z 
    .signature (Ljava/lang/String;Lcom/fs/starfarer/api/campaign/InteractionDialogAPI;Ljava/util/Map<Ljava/lang/String;Lcom/fs/starfarer/api/campaign/rules/MemoryAPI;>;)Z 
    .code stack 4 locals 5 
L0:     aload_0 
L1:     aload_1 
L2:     aload_2 
L3:     aload_3 
L4:     invokevirtual Method com/fs/starfarer/campaign/rules/oOOO execute (Ljava/lang/String;Lcom/fs/starfarer/api/campaign/InteractionDialogAPI;Ljava/util/Map;)Ljava/lang/Object; 
L7:     astore 4 
L9:     aload 4 
L11:    ifnonnull L16 
L14:    iconst_0 
L15:    ireturn 

        .stack append Object java/lang/Object 
L16:    aload 4 
L18:    instanceof java/lang/String 
L21:    ifeq L42 
L24:    aload 4 
L26:    checkcast java/lang/String 
L29:    invokevirtual Method java/lang/String toLowerCase ()Ljava/lang/String; 
L32:    invokevirtual Method java/lang/String trim ()Ljava/lang/String; 
L35:    ldc_w 'true' 
L38:    invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L41:    ireturn 

        .stack same 
L42:    aload 4 
L44:    instanceof java/lang/Boolean 
L47:    ifeq L63 
L50:    aload 4 
L52:    checkcast java/lang/Boolean 
L55:    getstatic Field java/lang/Boolean TRUE Ljava/lang/Boolean; 
L58:    if_acmpne L63 
L61:    iconst_1 
L62:    ireturn 

        .stack same 
L63:    iconst_0 
L64:    ireturn 
L65:    
    .end code 
.end method 

.method public doesCommandAddOptions : ()Z 
    .code stack 1 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/rules/oOOO OO0000 Z 
L4:     ifne L9 
L7:     iconst_0 
L8:     ireturn 

        .stack same 
L9:     aload_0 
L10:    getfield Field com/fs/starfarer/campaign/rules/oOOO 'Ø00000' Ljava/lang/String; 
L13:    invokestatic Method com/fs/starfarer/loading/scripts/ScriptStore 'Ò00000' (Ljava/lang/String;)Ljava/lang/Object; 
L16:    checkcast com/fs/starfarer/api/campaign/rules/CommandPlugin 
L19:    astore_1 
L20:    aload_1 
L21:    invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/rules/CommandPlugin doesCommandAddOptions ()Z 1 
L26:    ireturn 
L27:    
    .end code 
.end method 

.method public getOptionOrder : (Ljava/util/Map;)I 
    .signature (Ljava/util/Map<Ljava/lang/String;Lcom/fs/starfarer/api/campaign/rules/MemoryAPI;>;)I 
    .code stack 3 locals 3 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/rules/oOOO OO0000 Z 
L4:     ifne L9 
L7:     iconst_0 
L8:     ireturn 

        .stack same 
L9:     aload_0 
L10:    getfield Field com/fs/starfarer/campaign/rules/oOOO 'Ø00000' Ljava/lang/String; 
L13:    invokestatic Method com/fs/starfarer/loading/scripts/ScriptStore 'Ò00000' (Ljava/lang/String;)Ljava/lang/Object; 
L16:    checkcast com/fs/starfarer/api/campaign/rules/CommandPlugin 
L19:    astore_2 
L20:    aload_2 
L21:    aload_0 
L22:    getfield Field com/fs/starfarer/campaign/rules/oOOO 'Ö00000' Ljava/util/List; 
L25:    aload_1 
L26:    invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/rules/CommandPlugin getOptionOrder (Ljava/util/List;Ljava/util/Map;)I 3 
L31:    ireturn 
L32:    
    .end code 
.end method 

.method public execute : (Ljava/lang/String;Lcom/fs/starfarer/api/campaign/InteractionDialogAPI;Ljava/util/Map;)Ljava/lang/Object; 
    .signature (Ljava/lang/String;Lcom/fs/starfarer/api/campaign/InteractionDialogAPI;Ljava/util/Map<Ljava/lang/String;Lcom/fs/starfarer/api/campaign/rules/MemoryAPI;>;)Ljava/lang/Object; 
    .code stack 5 locals 11 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/rules/oOOO OO0000 Z 
L4:     ifeq L169 
        .catch java/lang/RuntimeException from L7 to L62 using L63 
L7:     aload_0 
L8:     getfield Field com/fs/starfarer/campaign/rules/oOOO 'Ø00000' Ljava/lang/String; 
L11:    invokestatic Method com/fs/starfarer/loading/scripts/ScriptStore 'Ò00000' (Ljava/lang/String;)Ljava/lang/Object; 
L14:    checkcast com/fs/starfarer/api/campaign/rules/CommandPlugin 
L17:    astore 4 
L19:    aload 4 
L21:    aload_1 
L22:    aload_2 
L23:    aload_0 
L24:    getfield Field com/fs/starfarer/campaign/rules/oOOO 'Ö00000' Ljava/util/List; 
L27:    aload_3 
L28:    invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/rules/CommandPlugin execute (Ljava/lang/String;Lcom/fs/starfarer/api/campaign/InteractionDialogAPI;Ljava/util/List;Ljava/util/Map;)Z 5 
L33:    istore 5 
L35:    aload_0 
L36:    getfield Field com/fs/starfarer/campaign/rules/oOOO 'Ó00000' [u100] 
L39:    getstatic Field [c280] OO0000 [u100] 
L42:    if_acmpne L57 
L45:    iload 5 
L47:    ifeq L54 
L50:    iconst_0 
L51:    goto L55 

        .stack append Object com/fs/starfarer/api/campaign/rules/CommandPlugin Integer 
L54:    iconst_1 

        .stack stack_1 Integer 
L55:    istore 5 

        .stack same 
L57:    iload 5 
L59:    invokestatic Method java/lang/Boolean valueOf (Z)Ljava/lang/Boolean; 
L62:    areturn 

        .stack full 
            locals Object com/fs/starfarer/campaign/rules/oOOO Object java/lang/String Object com/fs/starfarer/api/campaign/InteractionDialogAPI Object java/util/Map 
            stack Object java/lang/RuntimeException 
        .end stack 
L63:    astore 4 
L65:    getstatic Field com/fs/starfarer/campaign/rules/oOOO class Lorg/apache/log4j/Logger; 
L68:    new java/lang/StringBuilder 
L71:    dup 
L72:    ldc_w 'Problem with command of class ' 
L75:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L78:    aload_0 
L79:    getfield Field com/fs/starfarer/campaign/rules/oOOO 'Ø00000' Ljava/lang/String; 
L82:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L85:    ldc_w ': ' 
L88:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L91:    aload 4 
L93:    invokevirtual Method java/lang/RuntimeException getMessage ()Ljava/lang/String; 
L96:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L99:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L102:   aload 4 
L104:   invokevirtual Method org/apache/log4j/Logger warn (Ljava/lang/Object;Ljava/lang/Throwable;)V 
L107:   aload_2 
L108:   ifnull L164 
L111:   aload_2 
L112:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/InteractionDialogAPI getTextPanel ()Lcom/fs/starfarer/api/campaign/TextPanelAPI; 1 
L117:   new java/lang/StringBuilder 
L120:   dup 
L121:   aload 4 
L123:   invokevirtual Method java/lang/Object getClass ()Ljava/lang/Class; 
L126:   invokevirtual Method java/lang/Class getSimpleName ()Ljava/lang/String; 
L129:   invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L132:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L135:   ldc_w ': ' 
L138:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L141:   aload 4 
L143:   invokevirtual Method java/lang/RuntimeException getMessage ()Ljava/lang/String; 
L146:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L149:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L152:   invokestatic Method com/fs/starfarer/api/util/Misc getNegativeHighlightColor ()Ljava/awt/Color; 
L155:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/TextPanelAPI addParagraph (Ljava/lang/String;Ljava/awt/Color;)Lcom/fs/starfarer/api/ui/LabelAPI; 3 
L160:   pop 
L161:   goto L167 

        .stack append Object java/lang/RuntimeException 
L164:   aload 4 
L166:   athrow 

        .stack same 
L167:   aconst_null 
L168:   areturn 

        .stack chop 1 
L169:   aconst_null 
L170:   astore 4 
L172:   aconst_null 
L173:   astore 5 
L175:   aconst_null 
L176:   astore 6 
L178:   aconst_null 
L179:   astore 7 
L181:   aload_0 
L182:   getfield Field com/fs/starfarer/campaign/rules/oOOO null Lcom/fs/starfarer/api/util/Misc$Token; 
L185:   ifnull L222 
L188:   aload_0 
L189:   getfield Field com/fs/starfarer/campaign/rules/oOOO null Lcom/fs/starfarer/api/util/Misc$Token; 
L192:   invokevirtual Method com/fs/starfarer/api/util/Misc$Token isVariable ()Z 
L195:   ifeq L222 
L198:   aload_0 
L199:   getfield Field com/fs/starfarer/campaign/rules/oOOO null Lcom/fs/starfarer/api/util/Misc$Token; 
L202:   aload_3 
L203:   invokevirtual Method com/fs/starfarer/api/util/Misc$Token getVarNameAndMemory (Ljava/util/Map;)Lcom/fs/starfarer/api/util/Misc$VarAndMemory; 
L206:   astore 8 
L208:   aload 8 
L210:   getfield Field com/fs/starfarer/api/util/Misc$VarAndMemory name Ljava/lang/String; 
L213:   astore 4 
L215:   aload 8 
L217:   getfield Field com/fs/starfarer/api/util/Misc$VarAndMemory memory Lcom/fs/starfarer/api/campaign/rules/MemoryAPI; 
L220:   astore 6 

        .stack full 
            locals Object com/fs/starfarer/campaign/rules/oOOO Object java/lang/String Object com/fs/starfarer/api/campaign/InteractionDialogAPI Object java/util/Map Object java/lang/String Object java/lang/String Object com/fs/starfarer/api/campaign/rules/MemoryAPI Object com/fs/starfarer/api/campaign/rules/MemoryAPI 
            stack 
        .end stack 
L222:   aload_0 
L223:   getfield Field com/fs/starfarer/campaign/rules/oOOO new Lcom/fs/starfarer/api/util/Misc$Token; 
L226:   ifnull L263 
L229:   aload_0 
L230:   getfield Field com/fs/starfarer/campaign/rules/oOOO new Lcom/fs/starfarer/api/util/Misc$Token; 
L233:   invokevirtual Method com/fs/starfarer/api/util/Misc$Token isVariable ()Z 
L236:   ifeq L263 
L239:   aload_0 
L240:   getfield Field com/fs/starfarer/campaign/rules/oOOO new Lcom/fs/starfarer/api/util/Misc$Token; 
L243:   aload_3 
L244:   invokevirtual Method com/fs/starfarer/api/util/Misc$Token getVarNameAndMemory (Ljava/util/Map;)Lcom/fs/starfarer/api/util/Misc$VarAndMemory; 
L247:   astore 8 
L249:   aload 8 
L251:   getfield Field com/fs/starfarer/api/util/Misc$VarAndMemory name Ljava/lang/String; 
L254:   astore 5 
L256:   aload 8 
L258:   getfield Field com/fs/starfarer/api/util/Misc$VarAndMemory memory Lcom/fs/starfarer/api/campaign/rules/MemoryAPI; 
L261:   astore 7 

        .stack same 
L263:   aload_0 
L264:   getfield Field com/fs/starfarer/campaign/rules/oOOO 'Ó00000' [u100] 
L267:   getstatic Field [c280] oO0000 [u100] 
L270:   if_acmpne L327 
L273:   aload_0 
L274:   getfield Field com/fs/starfarer/campaign/rules/oOOO null Lcom/fs/starfarer/api/util/Misc$Token; 
L277:   invokevirtual Method com/fs/starfarer/api/util/Misc$Token isVariable ()Z 
L280:   ifne L317 
L283:   new com/fs/starfarer/api/util/RuleException 
L286:   dup 
L287:   new java/lang/StringBuilder 
L290:   dup 
L291:   ldc_w 'Expression without an operator must be a variable (' 
L294:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L297:   aload_0 
L298:   getfield Field com/fs/starfarer/campaign/rules/oOOO 'õ00000' Ljava/lang/String; 
L301:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L304:   ldc_w ')' 
L307:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L310:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L313:   invokespecial Method com/fs/starfarer/api/util/RuleException <init> (Ljava/lang/String;)V 
L316:   athrow 

        .stack same 
L317:   aload 6 
L319:   aload 4 
L321:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/rules/MemoryAPI get (Ljava/lang/String;)Ljava/lang/Object; 2 
L326:   areturn 

        .stack same 
L327:   aload_0 
L328:   getfield Field com/fs/starfarer/campaign/rules/oOOO 'Ó00000' [u100] 
L331:   getstatic Field [c280] OO0000 [u100] 
L334:   if_acmpne L402 
L337:   aload_0 
L338:   getfield Field com/fs/starfarer/campaign/rules/oOOO null Lcom/fs/starfarer/api/util/Misc$Token; 
L341:   invokevirtual Method com/fs/starfarer/api/util/Misc$Token isVariable ()Z 
L344:   ifne L381 
L347:   new com/fs/starfarer/api/util/RuleException 
L350:   dup 
L351:   new java/lang/StringBuilder 
L354:   dup 
L355:   ldc_w 'Operand of a ! (not) operator must be a variable (' 
L358:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L361:   aload_0 
L362:   getfield Field com/fs/starfarer/campaign/rules/oOOO 'õ00000' Ljava/lang/String; 
L365:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L368:   ldc_w ')' 
L371:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L374:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L377:   invokespecial Method com/fs/starfarer/api/util/RuleException <init> (Ljava/lang/String;)V 
L380:   athrow 

        .stack same 
L381:   aload 6 
L383:   aload 4 
L385:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/rules/MemoryAPI getBoolean (Ljava/lang/String;)Z 2 
L390:   ifeq L397 
L393:   iconst_0 
L394:   goto L398 

        .stack same 
L397:   iconst_1 

        .stack stack_1 Integer 
L398:   invokestatic Method java/lang/Boolean valueOf (Z)Ljava/lang/Boolean; 
L401:   areturn 

        .stack same 
L402:   aload_0 
L403:   getfield Field com/fs/starfarer/campaign/rules/oOOO 'Ó00000' [u100] 
L406:   getstatic Field [c280] new [u100] 
L409:   if_acmpne L466 
L412:   aload 6 
L414:   aload 4 
L416:   aload 6 
L418:   aload 4 
L420:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/rules/MemoryAPI getFloat (Ljava/lang/String;)F 2 
L425:   fconst_1 
L426:   fadd 
L427:   invokestatic Method java/lang/Float valueOf (F)Ljava/lang/Float; 
L430:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/rules/MemoryAPI set (Ljava/lang/String;Ljava/lang/Object;)V 3 
L435:   aload_0 
L436:   getfield Field com/fs/starfarer/campaign/rules/oOOO o00000 Lcom/fs/starfarer/api/util/Misc$Token; 
L439:   ifnull L461 
L442:   aload 6 
L444:   aload 4 
L446:   aload_0 
L447:   getfield Field com/fs/starfarer/campaign/rules/oOOO o00000 Lcom/fs/starfarer/api/util/Misc$Token; 
L450:   getfield Field com/fs/starfarer/api/util/Misc$Token string Ljava/lang/String; 
L453:   invokestatic Method java/lang/Float parseFloat (Ljava/lang/String;)F 
L456:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/rules/MemoryAPI expire (Ljava/lang/String;F)V 3 

        .stack same 
L461:   iconst_1 
L462:   invokestatic Method java/lang/Boolean valueOf (Z)Ljava/lang/Boolean; 
L465:   areturn 

        .stack same 
L466:   aload_0 
L467:   getfield Field com/fs/starfarer/campaign/rules/oOOO 'Ó00000' [u100] 
L470:   getstatic Field [c280] 'Ö00000' [u100] 
L473:   if_acmpne L530 
L476:   aload 6 
L478:   aload 4 
L480:   aload 6 
L482:   aload 4 
L484:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/rules/MemoryAPI getFloat (Ljava/lang/String;)F 2 
L489:   fconst_1 
L490:   fsub 
L491:   invokestatic Method java/lang/Float valueOf (F)Ljava/lang/Float; 
L494:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/rules/MemoryAPI set (Ljava/lang/String;Ljava/lang/Object;)V 3 
L499:   aload_0 
L500:   getfield Field com/fs/starfarer/campaign/rules/oOOO o00000 Lcom/fs/starfarer/api/util/Misc$Token; 
L503:   ifnull L525 
L506:   aload 6 
L508:   aload 4 
L510:   aload_0 
L511:   getfield Field com/fs/starfarer/campaign/rules/oOOO o00000 Lcom/fs/starfarer/api/util/Misc$Token; 
L514:   getfield Field com/fs/starfarer/api/util/Misc$Token string Ljava/lang/String; 
L517:   invokestatic Method java/lang/Float parseFloat (Ljava/lang/String;)F 
L520:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/rules/MemoryAPI expire (Ljava/lang/String;F)V 3 

        .stack same 
L525:   iconst_1 
L526:   invokestatic Method java/lang/Boolean valueOf (Z)Ljava/lang/Boolean; 
L529:   areturn 

        .stack same 
L530:   aconst_null 
L531:   astore 8 
L533:   aload_0 
L534:   getfield Field com/fs/starfarer/campaign/rules/oOOO new Lcom/fs/starfarer/api/util/Misc$Token; 
L537:   invokevirtual Method com/fs/starfarer/api/util/Misc$Token isLiteral ()Z 
L540:   ifeq L555 
L543:   aload_0 
L544:   getfield Field com/fs/starfarer/campaign/rules/oOOO new Lcom/fs/starfarer/api/util/Misc$Token; 
L547:   getfield Field com/fs/starfarer/api/util/Misc$Token string Ljava/lang/String; 
L550:   astore 8 
L552:   goto L623 

        .stack append Object java/lang/Object 
L555:   aload_0 
L556:   getfield Field com/fs/starfarer/campaign/rules/oOOO new Lcom/fs/starfarer/api/util/Misc$Token; 
L559:   invokevirtual Method com/fs/starfarer/api/util/Misc$Token isVariable ()Z 
L562:   ifeq L579 
L565:   aload 7 
L567:   aload 5 
L569:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/rules/MemoryAPI get (Ljava/lang/String;)Ljava/lang/Object; 2 
L574:   astore 8 
L576:   goto L623 

        .stack same 
L579:   aload_0 
L580:   getfield Field com/fs/starfarer/campaign/rules/oOOO new Lcom/fs/starfarer/api/util/Misc$Token; 
L583:   invokevirtual Method com/fs/starfarer/api/util/Misc$Token isOperator ()Z 
L586:   ifeq L623 
L589:   new com/fs/starfarer/api/util/RuleException 
L592:   dup 
L593:   new java/lang/StringBuilder 
L596:   dup 
L597:   ldc_w 'Right side of an operation can not be another operator (' 
L600:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L603:   aload_0 
L604:   getfield Field com/fs/starfarer/campaign/rules/oOOO 'õ00000' Ljava/lang/String; 
L607:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L610:   ldc_w ')' 
L613:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L616:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L619:   invokespecial Method com/fs/starfarer/api/util/RuleException <init> (Ljava/lang/String;)V 
L622:   athrow 

        .stack same 
L623:   aconst_null 
L624:   astore 9 
L626:   aload_0 
L627:   getfield Field com/fs/starfarer/campaign/rules/oOOO null Lcom/fs/starfarer/api/util/Misc$Token; 
L630:   invokevirtual Method com/fs/starfarer/api/util/Misc$Token isLiteral ()Z 
L633:   ifeq L648 
L636:   aload_0 
L637:   getfield Field com/fs/starfarer/campaign/rules/oOOO null Lcom/fs/starfarer/api/util/Misc$Token; 
L640:   getfield Field com/fs/starfarer/api/util/Misc$Token string Ljava/lang/String; 
L643:   astore 9 
L645:   goto L716 

        .stack append Object java/lang/Object 
L648:   aload_0 
L649:   getfield Field com/fs/starfarer/campaign/rules/oOOO null Lcom/fs/starfarer/api/util/Misc$Token; 
L652:   invokevirtual Method com/fs/starfarer/api/util/Misc$Token isVariable ()Z 
L655:   ifeq L672 
L658:   aload 6 
L660:   aload 4 
L662:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/rules/MemoryAPI get (Ljava/lang/String;)Ljava/lang/Object; 2 
L667:   astore 9 
L669:   goto L716 

        .stack same 
L672:   aload_0 
L673:   getfield Field com/fs/starfarer/campaign/rules/oOOO null Lcom/fs/starfarer/api/util/Misc$Token; 
L676:   invokevirtual Method com/fs/starfarer/api/util/Misc$Token isOperator ()Z 
L679:   ifeq L716 
L682:   new com/fs/starfarer/api/util/RuleException 
L685:   dup 
L686:   new java/lang/StringBuilder 
L689:   dup 
L690:   ldc_w 'Left side of an operation can not be another operator (' 
L693:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L696:   aload_0 
L697:   getfield Field com/fs/starfarer/campaign/rules/oOOO 'õ00000' Ljava/lang/String; 
L700:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L703:   ldc_w ')' 
L706:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L709:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L712:   invokespecial Method com/fs/starfarer/api/util/RuleException <init> (Ljava/lang/String;)V 
L715:   athrow 

        .stack same 
L716:   aload_0 
L717:   getfield Field com/fs/starfarer/campaign/rules/oOOO 'Ó00000' [u100] 
L720:   getstatic Field [c280] 'Ô00000' [u100] 
L723:   if_acmpne L812 
L726:   aload_0 
L727:   getfield Field com/fs/starfarer/campaign/rules/oOOO null Lcom/fs/starfarer/api/util/Misc$Token; 
L730:   invokevirtual Method com/fs/starfarer/api/util/Misc$Token isVariable ()Z 
L733:   ifne L770 
L736:   new com/fs/starfarer/api/util/RuleException 
L739:   dup 
L740:   new java/lang/StringBuilder 
L743:   dup 
L744:   ldc_w 'Left side of an assignment must be a variable (' 
L747:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L750:   aload_0 
L751:   getfield Field com/fs/starfarer/campaign/rules/oOOO 'õ00000' Ljava/lang/String; 
L754:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L757:   ldc_w ')' 
L760:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L763:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L766:   invokespecial Method com/fs/starfarer/api/util/RuleException <init> (Ljava/lang/String;)V 
L769:   athrow 

        .stack same 
L770:   aload 6 
L772:   aload 4 
L774:   aload 8 
L776:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/rules/MemoryAPI set (Ljava/lang/String;Ljava/lang/Object;)V 3 
L781:   aload_0 
L782:   getfield Field com/fs/starfarer/campaign/rules/oOOO o00000 Lcom/fs/starfarer/api/util/Misc$Token; 
L785:   ifnull L807 
L788:   aload 6 
L790:   aload 4 
L792:   aload_0 
L793:   getfield Field com/fs/starfarer/campaign/rules/oOOO o00000 Lcom/fs/starfarer/api/util/Misc$Token; 
L796:   getfield Field com/fs/starfarer/api/util/Misc$Token string Ljava/lang/String; 
L799:   invokestatic Method java/lang/Float parseFloat (Ljava/lang/String;)F 
L802:   invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/rules/MemoryAPI expire (Ljava/lang/String;F)V 3 

        .stack same 
L807:   iconst_1 
L808:   invokestatic Method java/lang/Boolean valueOf (Z)Ljava/lang/Boolean; 
L811:   areturn 

        .stack same 
L812:   aload_0 
L813:   getfield Field com/fs/starfarer/campaign/rules/oOOO 'Ó00000' [u100] 
L816:   getstatic Field [c280] 'õ00000' [u100] 
L819:   if_acmpeq L862 
L822:   aload_0 
L823:   getfield Field com/fs/starfarer/campaign/rules/oOOO 'Ó00000' [u100] 
L826:   getstatic Field [c280] 'Ø00000' [u100] 
L829:   if_acmpeq L862 
L832:   aload_0 
L833:   getfield Field com/fs/starfarer/campaign/rules/oOOO 'Ó00000' [u100] 
L836:   getstatic Field [c280] float [u100] 
L839:   if_acmpeq L862 
L842:   aload_0 
L843:   getfield Field com/fs/starfarer/campaign/rules/oOOO 'Ó00000' [u100] 
L846:   getstatic Field [c280] null [u100] 
L849:   if_acmpeq L862 
L852:   aload_0 
L853:   getfield Field com/fs/starfarer/campaign/rules/oOOO 'Ó00000' [u100] 
L856:   getstatic Field [c280] class [u100] 
L859:   if_acmpne L894 

        .stack same 
L862:   aload 9 
L864:   ifnonnull L878 
L867:   aload 8 
L869:   ifnull L878 
L872:   iconst_0 
L873:   invokestatic Method java/lang/Integer valueOf (I)Ljava/lang/Integer; 
L876:   astore 9 

        .stack same 
L878:   aload 8 
L880:   ifnonnull L894 
L883:   aload 9 
L885:   ifnull L894 
L888:   iconst_0 
L889:   invokestatic Method java/lang/Integer valueOf (I)Ljava/lang/Integer; 
L892:   astore 8 

        .stack same 
L894:   aload 9 
L896:   ifnonnull L924 
L899:   aload 8 
L901:   ifnonnull L924 
L904:   aload_0 
L905:   getfield Field com/fs/starfarer/campaign/rules/oOOO 'Ó00000' [u100] 
L908:   getstatic Field [c280] 'õ00000' [u100] 
L911:   if_acmpne L919 
L914:   iconst_1 
L915:   invokestatic Method java/lang/Boolean valueOf (Z)Ljava/lang/Boolean; 
L918:   areturn 

        .stack same 
L919:   iconst_0 
L920:   invokestatic Method java/lang/Boolean valueOf (Z)Ljava/lang/Boolean; 
L923:   areturn 

        .stack same 
L924:   aload 9 
L926:   ifnull L934 
L929:   aload 8 
L931:   ifnonnull L1077 

        .stack same 
L934:   aload_0 
L935:   getfield Field com/fs/starfarer/campaign/rules/oOOO 'Ó00000' [u100] 
L938:   getstatic Field [c280] 'ö00000' [u100] 
L941:   if_acmpne L1003 
L944:   aload 8 
L946:   ifnull L971 
L949:   aload 8 
L951:   invokevirtual Method java/lang/Object toString ()Ljava/lang/String; 
L954:   invokevirtual Method java/lang/String toLowerCase ()Ljava/lang/String; 
L957:   ldc_w 'null' 
L960:   invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L963:   ifeq L971 
L966:   iconst_0 
L967:   invokestatic Method java/lang/Boolean valueOf (Z)Ljava/lang/Boolean; 
L970:   areturn 

        .stack same 
L971:   aload 9 
L973:   ifnull L998 
L976:   aload 9 
L978:   invokevirtual Method java/lang/Object toString ()Ljava/lang/String; 
L981:   invokevirtual Method java/lang/String toLowerCase ()Ljava/lang/String; 
L984:   ldc_w 'null' 
L987:   invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L990:   ifeq L998 
L993:   iconst_0 
L994:   invokestatic Method java/lang/Boolean valueOf (Z)Ljava/lang/Boolean; 
L997:   areturn 

        .stack same 
L998:   iconst_1 
L999:   invokestatic Method java/lang/Boolean valueOf (Z)Ljava/lang/Boolean; 
L1002:  areturn 

        .stack same 
L1003:  aload_0 
L1004:  getfield Field com/fs/starfarer/campaign/rules/oOOO 'Ó00000' [u100] 
L1007:  getstatic Field [c280] 'õ00000' [u100] 
L1010:  if_acmpne L1072 
L1013:  aload 8 
L1015:  ifnull L1040 
L1018:  aload 8 
L1020:  invokevirtual Method java/lang/Object toString ()Ljava/lang/String; 
L1023:  invokevirtual Method java/lang/String toLowerCase ()Ljava/lang/String; 
L1026:  ldc_w 'null' 
L1029:  invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L1032:  ifeq L1040 
L1035:  iconst_1 
L1036:  invokestatic Method java/lang/Boolean valueOf (Z)Ljava/lang/Boolean; 
L1039:  areturn 

        .stack same 
L1040:  aload 9 
L1042:  ifnull L1067 
L1045:  aload 9 
L1047:  invokevirtual Method java/lang/Object toString ()Ljava/lang/String; 
L1050:  invokevirtual Method java/lang/String toLowerCase ()Ljava/lang/String; 
L1053:  ldc_w 'null' 
L1056:  invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L1059:  ifeq L1067 
L1062:  iconst_1 
L1063:  invokestatic Method java/lang/Boolean valueOf (Z)Ljava/lang/Boolean; 
L1066:  areturn 

        .stack same 
L1067:  iconst_0 
L1068:  invokestatic Method java/lang/Boolean valueOf (Z)Ljava/lang/Boolean; 
L1071:  areturn 

        .stack same 
L1072:  iconst_0 
L1073:  invokestatic Method java/lang/Boolean valueOf (Z)Ljava/lang/Boolean; 
L1076:  areturn 

        .stack same 
L1077:  invokestatic Method com/fs/starfarer/campaign/rules/oOOO $SWITCH_TABLE$com$fs$starfarer$campaign$rules$Operator ()[I 
L1080:  aload_0 
L1081:  getfield Field com/fs/starfarer/campaign/rules/oOOO 'Ó00000' [u100] 
L1084:  invokevirtual Method [c280] ordinal ()I 
L1087:  iaload 
L1088:  tableswitch 6 
            L1580 
            L1128 
            L1490 
            L1550 
            L1520 
            L1460 
            default : L1672 


        .stack same 
L1128:  aload 9 
L1130:  instanceof java/lang/Integer 
L1133:  ifeq L1154 
L1136:  new java/lang/Float 
L1139:  dup 
L1140:  aload 9 
L1142:  checkcast java/lang/Integer 
L1145:  invokevirtual Method java/lang/Integer intValue ()I 
L1148:  i2f 
L1149:  invokespecial Method java/lang/Float <init> (F)V 
L1152:  astore 9 

        .stack same 
L1154:  aload 8 
L1156:  instanceof java/lang/Integer 
L1159:  ifeq L1180 
L1162:  new java/lang/Float 
L1165:  dup 
L1166:  aload 8 
L1168:  checkcast java/lang/Integer 
L1171:  invokevirtual Method java/lang/Integer intValue ()I 
L1174:  i2f 
L1175:  invokespecial Method java/lang/Float <init> (F)V 
L1178:  astore 8 

        .stack same 
L1180:  aload 9 
L1182:  fconst_0 
L1183:  invokestatic Method java/lang/Float valueOf (F)Ljava/lang/Float; 
L1186:  invokevirtual Method java/lang/Object equals (Ljava/lang/Object;)Z 
L1189:  ifeq L1208 
L1192:  aload 8 
L1194:  ldc_w 'false' 
L1197:  invokevirtual Method java/lang/Object equals (Ljava/lang/Object;)Z 
L1200:  ifeq L1208 
L1203:  iconst_1 
L1204:  invokestatic Method java/lang/Boolean valueOf (Z)Ljava/lang/Boolean; 
L1207:  areturn 

        .stack same 
L1208:  aload 8 
L1210:  fconst_0 
L1211:  invokestatic Method java/lang/Float valueOf (F)Ljava/lang/Float; 
L1214:  invokevirtual Method java/lang/Object equals (Ljava/lang/Object;)Z 
L1217:  ifeq L1236 
L1220:  aload 9 
L1222:  ldc_w 'false' 
L1225:  invokevirtual Method java/lang/Object equals (Ljava/lang/Object;)Z 
L1228:  ifeq L1236 
L1231:  iconst_1 
L1232:  invokestatic Method java/lang/Boolean valueOf (Z)Ljava/lang/Boolean; 
L1235:  areturn 

        .stack same 
L1236:  aload 9 
L1238:  fconst_0 
L1239:  invokestatic Method java/lang/Float valueOf (F)Ljava/lang/Float; 
L1242:  invokevirtual Method java/lang/Object equals (Ljava/lang/Object;)Z 
L1245:  ifeq L1264 
L1248:  aload 8 
L1250:  ldc_w 'null' 
L1253:  invokevirtual Method java/lang/Object equals (Ljava/lang/Object;)Z 
L1256:  ifeq L1264 
L1259:  iconst_1 
L1260:  invokestatic Method java/lang/Boolean valueOf (Z)Ljava/lang/Boolean; 
L1263:  areturn 

        .stack same 
L1264:  aload 8 
L1266:  fconst_0 
L1267:  invokestatic Method java/lang/Float valueOf (F)Ljava/lang/Float; 
L1270:  invokevirtual Method java/lang/Object equals (Ljava/lang/Object;)Z 
L1273:  ifeq L1292 
L1276:  aload 9 
L1278:  ldc_w 'null' 
L1281:  invokevirtual Method java/lang/Object equals (Ljava/lang/Object;)Z 
L1284:  ifeq L1292 
L1287:  iconst_1 
L1288:  invokestatic Method java/lang/Boolean valueOf (Z)Ljava/lang/Boolean; 
L1291:  areturn 

        .stack same 
L1292:  aload 9 
L1294:  instanceof java/lang/String 
L1297:  ifne L1316 
L1300:  aload 9 
L1302:  instanceof java/lang/Boolean 
L1305:  ifne L1316 
L1308:  aload 9 
L1310:  instanceof java/lang/Float 
L1313:  ifeq L1449 

        .stack same 
L1316:  aload 8 
L1318:  instanceof java/lang/String 
L1321:  ifne L1340 
L1324:  aload 8 
L1326:  instanceof java/lang/Boolean 
L1329:  ifne L1340 
L1332:  aload 8 
L1334:  instanceof java/lang/Float 
L1337:  ifeq L1449 

        .stack same 
L1340:  aload 9 
L1342:  instanceof java/lang/Float 
L1345:  ifne L1356 
L1348:  aload 8 
L1350:  instanceof java/lang/Float 
L1353:  ifeq L1432 

        .stack same 
L1356:  aload 9 
L1358:  instanceof java/lang/Float 
L1361:  ifeq L1394 
L1364:  aload 8 
L1366:  instanceof java/lang/String 
L1369:  ifeq L1394 
        .catch java/lang/Throwable from L1372 to L1389 using L1392 
L1372:  new java/lang/Float 
L1375:  dup 
L1376:  aload 8 
L1378:  checkcast java/lang/String 
L1381:  invokestatic Method com/fs/starfarer/campaign/rules/Memory parseFloat (Ljava/lang/Object;)F 
L1384:  invokespecial Method java/lang/Float <init> (F)V 
L1387:  astore 8 
L1389:  goto L1394 

        .stack stack_1 Object java/lang/Throwable 
L1392:  astore 10 

        .stack same 
L1394:  aload 8 
L1396:  instanceof java/lang/Float 
L1399:  ifeq L1432 
L1402:  aload 9 
L1404:  instanceof java/lang/String 
L1407:  ifeq L1432 
        .catch java/lang/Throwable from L1410 to L1427 using L1430 
        .catch java/lang/RuntimeException from L0 to L62 using L1674 
        .catch java/lang/RuntimeException from L63 to L167 using L1674 
        .catch java/lang/RuntimeException from L169 to L326 using L1674 
        .catch java/lang/RuntimeException from L327 to L401 using L1674 
        .catch java/lang/RuntimeException from L402 to L465 using L1674 
        .catch java/lang/RuntimeException from L466 to L529 using L1674 
        .catch java/lang/RuntimeException from L530 to L811 using L1674 
        .catch java/lang/RuntimeException from L812 to L918 using L1674 
        .catch java/lang/RuntimeException from L919 to L923 using L1674 
        .catch java/lang/RuntimeException from L924 to L970 using L1674 
        .catch java/lang/RuntimeException from L971 to L997 using L1674 
        .catch java/lang/RuntimeException from L998 to L1002 using L1674 
        .catch java/lang/RuntimeException from L1003 to L1039 using L1674 
        .catch java/lang/RuntimeException from L1040 to L1066 using L1674 
        .catch java/lang/RuntimeException from L1067 to L1071 using L1674 
        .catch java/lang/RuntimeException from L1072 to L1076 using L1674 
        .catch java/lang/RuntimeException from L1077 to L1207 using L1674 
        .catch java/lang/RuntimeException from L1208 to L1235 using L1674 
        .catch java/lang/RuntimeException from L1236 to L1263 using L1674 
        .catch java/lang/RuntimeException from L1264 to L1291 using L1674 
        .catch java/lang/RuntimeException from L1292 to L1448 using L1674 
L1410:  new java/lang/Float 
L1413:  dup 
L1414:  aload 9 
L1416:  checkcast java/lang/String 
L1419:  invokestatic Method com/fs/starfarer/campaign/rules/Memory parseFloat (Ljava/lang/Object;)F 
L1422:  invokespecial Method java/lang/Float <init> (F)V 
L1425:  astore 9 
L1427:  goto L1432 

        .stack stack_1 Object java/lang/Throwable 
L1430:  astore 10 

        .stack same 
L1432:  aload 9 
L1434:  invokevirtual Method java/lang/Object toString ()Ljava/lang/String; 
L1437:  aload 8 
L1439:  invokevirtual Method java/lang/Object toString ()Ljava/lang/String; 
L1442:  invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L1445:  invokestatic Method java/lang/Boolean valueOf (Z)Ljava/lang/Boolean; 
L1448:  areturn 
        .catch java/lang/RuntimeException from L1449 to L1459 using L1674 

        .stack same 
L1449:  aload 9 
L1451:  aload 8 
L1453:  invokevirtual Method java/lang/Object equals (Ljava/lang/Object;)Z 
L1456:  invokestatic Method java/lang/Boolean valueOf (Z)Ljava/lang/Boolean; 
L1459:  areturn 
        .catch java/lang/RuntimeException from L1460 to L1489 using L1674 

        .stack same 
L1460:  aload 9 
L1462:  invokevirtual Method java/lang/Object toString ()Ljava/lang/String; 
L1465:  invokestatic Method com/fs/starfarer/campaign/rules/Memory parseFloat (Ljava/lang/Object;)F 
L1468:  aload 8 
L1470:  invokevirtual Method java/lang/Object toString ()Ljava/lang/String; 
L1473:  invokestatic Method com/fs/starfarer/campaign/rules/Memory parseFloat (Ljava/lang/Object;)F 
L1476:  fcmpl 
L1477:  ifle L1485 
L1480:  iconst_1 
L1481:  invokestatic Method java/lang/Boolean valueOf (Z)Ljava/lang/Boolean; 
L1484:  areturn 

        .stack same 
L1485:  iconst_0 
L1486:  invokestatic Method java/lang/Boolean valueOf (Z)Ljava/lang/Boolean; 
L1489:  areturn 
        .catch java/lang/RuntimeException from L1490 to L1519 using L1674 

        .stack same 
L1490:  aload 9 
L1492:  invokevirtual Method java/lang/Object toString ()Ljava/lang/String; 
L1495:  invokestatic Method com/fs/starfarer/campaign/rules/Memory parseFloat (Ljava/lang/Object;)F 
L1498:  aload 8 
L1500:  invokevirtual Method java/lang/Object toString ()Ljava/lang/String; 
L1503:  invokestatic Method com/fs/starfarer/campaign/rules/Memory parseFloat (Ljava/lang/Object;)F 
L1506:  fcmpl 
L1507:  iflt L1515 
L1510:  iconst_1 
L1511:  invokestatic Method java/lang/Boolean valueOf (Z)Ljava/lang/Boolean; 
L1514:  areturn 

        .stack same 
L1515:  iconst_0 
L1516:  invokestatic Method java/lang/Boolean valueOf (Z)Ljava/lang/Boolean; 
L1519:  areturn 
        .catch java/lang/RuntimeException from L1520 to L1549 using L1674 

        .stack same 
L1520:  aload 9 
L1522:  invokevirtual Method java/lang/Object toString ()Ljava/lang/String; 
L1525:  invokestatic Method com/fs/starfarer/campaign/rules/Memory parseFloat (Ljava/lang/Object;)F 
L1528:  aload 8 
L1530:  invokevirtual Method java/lang/Object toString ()Ljava/lang/String; 
L1533:  invokestatic Method com/fs/starfarer/campaign/rules/Memory parseFloat (Ljava/lang/Object;)F 
L1536:  fcmpg 
L1537:  ifge L1545 
L1540:  iconst_1 
L1541:  invokestatic Method java/lang/Boolean valueOf (Z)Ljava/lang/Boolean; 
L1544:  areturn 

        .stack same 
L1545:  iconst_0 
L1546:  invokestatic Method java/lang/Boolean valueOf (Z)Ljava/lang/Boolean; 
L1549:  areturn 
        .catch java/lang/RuntimeException from L1550 to L1579 using L1674 

        .stack same 
L1550:  aload 9 
L1552:  invokevirtual Method java/lang/Object toString ()Ljava/lang/String; 
L1555:  invokestatic Method com/fs/starfarer/campaign/rules/Memory parseFloat (Ljava/lang/Object;)F 
L1558:  aload 8 
L1560:  invokevirtual Method java/lang/Object toString ()Ljava/lang/String; 
L1563:  invokestatic Method com/fs/starfarer/campaign/rules/Memory parseFloat (Ljava/lang/Object;)F 
L1566:  fcmpg 
L1567:  ifgt L1575 
L1570:  iconst_1 
L1571:  invokestatic Method java/lang/Boolean valueOf (Z)Ljava/lang/Boolean; 
L1574:  areturn 

        .stack same 
L1575:  iconst_0 
L1576:  invokestatic Method java/lang/Boolean valueOf (Z)Ljava/lang/Boolean; 
L1579:  areturn 
        .catch java/lang/RuntimeException from L1580 to L1652 using L1674 

        .stack same 
L1580:  aload 9 
L1582:  instanceof java/lang/String 
L1585:  ifne L1604 
L1588:  aload 9 
L1590:  instanceof java/lang/Boolean 
L1593:  ifne L1604 
L1596:  aload 9 
L1598:  instanceof java/lang/Float 
L1601:  ifeq L1653 

        .stack same 
L1604:  aload 8 
L1606:  instanceof java/lang/String 
L1609:  ifne L1628 
L1612:  aload 8 
L1614:  instanceof java/lang/Boolean 
L1617:  ifne L1628 
L1620:  aload 8 
L1622:  instanceof java/lang/Float 
L1625:  ifeq L1653 

        .stack same 
L1628:  aload 9 
L1630:  invokevirtual Method java/lang/Object toString ()Ljava/lang/String; 
L1633:  aload 8 
L1635:  invokevirtual Method java/lang/Object toString ()Ljava/lang/String; 
L1638:  invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L1641:  ifeq L1648 
L1644:  iconst_0 
L1645:  goto L1649 

        .stack same 
L1648:  iconst_1 

        .stack stack_1 Integer 
L1649:  invokestatic Method java/lang/Boolean valueOf (Z)Ljava/lang/Boolean; 
L1652:  areturn 
        .catch java/lang/RuntimeException from L1653 to L1671 using L1674 

        .stack same 
L1653:  aload 9 
L1655:  aload 8 
L1657:  invokevirtual Method java/lang/Object equals (Ljava/lang/Object;)Z 
L1660:  ifeq L1667 
L1663:  iconst_0 
L1664:  goto L1668 

        .stack same 
L1667:  iconst_1 

        .stack stack_1 Integer 
L1668:  invokestatic Method java/lang/Boolean valueOf (Z)Ljava/lang/Boolean; 
L1671:  areturn 

        .stack same 
L1672:  aconst_null 
L1673:  areturn 

        .stack full 
            locals Object com/fs/starfarer/campaign/rules/oOOO Object java/lang/String Object com/fs/starfarer/api/campaign/InteractionDialogAPI Object java/util/Map 
            stack Object java/lang/RuntimeException 
        .end stack 
L1674:  astore 4 
L1676:  getstatic Field com/fs/starfarer/campaign/rules/oOOO class Lorg/apache/log4j/Logger; 
L1679:  new java/lang/StringBuilder 
L1682:  dup 
L1683:  ldc_w 'Problem with command of class ' 
L1686:  invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L1689:  aload_0 
L1690:  getfield Field com/fs/starfarer/campaign/rules/oOOO 'Ø00000' Ljava/lang/String; 
L1693:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L1696:  ldc_w ': ' 
L1699:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L1702:  aload 4 
L1704:  invokevirtual Method java/lang/RuntimeException getMessage ()Ljava/lang/String; 
L1707:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L1710:  invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L1713:  aload 4 
L1715:  invokevirtual Method org/apache/log4j/Logger warn (Ljava/lang/Object;Ljava/lang/Throwable;)V 
L1718:  aload_2 
L1719:  ifnull L1775 
L1722:  aload_2 
L1723:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/InteractionDialogAPI getTextPanel ()Lcom/fs/starfarer/api/campaign/TextPanelAPI; 1 
L1728:  new java/lang/StringBuilder 
L1731:  dup 
L1732:  aload 4 
L1734:  invokevirtual Method java/lang/Object getClass ()Ljava/lang/Class; 
L1737:  invokevirtual Method java/lang/Class getSimpleName ()Ljava/lang/String; 
L1740:  invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L1743:  invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L1746:  ldc_w ': ' 
L1749:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L1752:  aload 4 
L1754:  invokevirtual Method java/lang/RuntimeException getMessage ()Ljava/lang/String; 
L1757:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L1760:  invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L1763:  invokestatic Method com/fs/starfarer/api/util/Misc getNegativeHighlightColor ()Ljava/awt/Color; 
L1766:  invokeinterface InterfaceMethod com/fs/starfarer/api/campaign/TextPanelAPI addParagraph (Ljava/lang/String;Ljava/awt/Color;)Lcom/fs/starfarer/api/ui/LabelAPI; 3 
L1771:  pop 
L1772:  goto L1778 

        .stack append Object java/lang/RuntimeException 
L1775:  aload 4 
L1777:  athrow 

        .stack same 
L1778:  aconst_null 
L1779:  areturn 
L1780:  
    .end code 
.end method 

.method public getCommandClass : ()Ljava/lang/String; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/rules/oOOO 'Ø00000' Ljava/lang/String; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public static main : ([Ljava/lang/String;)V 
    .code stack 5 locals 3 
L0:     new java/util/HashMap 
L3:     dup 
L4:     invokespecial Method java/util/HashMap <init> ()V 
L7:     astore_1 
L8:     new com/fs/starfarer/campaign/rules/Memory 
L11:    dup 
L12:    invokespecial Method com/fs/starfarer/campaign/rules/Memory <init> ()V 
L15:    astore_2 
L16:    aload_2 
L17:    ldc_w '$trigger' 
L20:    ldc_w 'OpenInteractionDialog' 
L23:    invokevirtual Method com/fs/starfarer/campaign/rules/Memory set (Ljava/lang/String;Ljava/lang/Object;)V 
L26:    aload_2 
L27:    ldc_w '$tag:comm_relay' 
L30:    ldc_w 'true' 
L33:    invokevirtual Method com/fs/starfarer/campaign/rules/Memory set (Ljava/lang/String;Ljava/lang/Object;)V 
L36:    aload_2 
L37:    ldc_w '$timesSeenPlayer' 
L40:    bipush 11 
L42:    invokestatic Method java/lang/Integer valueOf (I)Ljava/lang/Integer; 
L45:    invokevirtual Method com/fs/starfarer/campaign/rules/Memory set (Ljava/lang/String;Ljava/lang/Object;)V 
L48:    aload_1 
L49:    ldc_w 'local' 
L52:    aload_2 
L53:    invokeinterface InterfaceMethod java/util/Map put (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 3 
L58:    pop 
L59:    getstatic Field java/lang/System out Ljava/io/PrintStream; 
L62:    new com/fs/starfarer/campaign/rules/oOOO 
L65:    dup 
L66:    ldc_w '$tag:comm_relay' 
L69:    invokespecial Method com/fs/starfarer/campaign/rules/oOOO <init> (Ljava/lang/String;)V 
L72:    aconst_null 
L73:    aconst_null 
L74:    aload_1 
L75:    invokevirtual Method com/fs/starfarer/campaign/rules/oOOO isTrueFor (Ljava/lang/String;Lcom/fs/starfarer/api/campaign/InteractionDialogAPI;Ljava/util/Map;)Z 
L78:    invokevirtual Method java/io/PrintStream println (Z)V 
L81:    getstatic Field java/lang/System out Ljava/io/PrintStream; 
L84:    new com/fs/starfarer/campaign/rules/oOOO 
L87:    dup 
L88:    ldc_w '!$commSnifferInstalled' 
L91:    invokespecial Method com/fs/starfarer/campaign/rules/oOOO <init> (Ljava/lang/String;)V 
L94:    aconst_null 
L95:    aconst_null 
L96:    aload_1 
L97:    invokevirtual Method com/fs/starfarer/campaign/rules/oOOO isTrueFor (Ljava/lang/String;Lcom/fs/starfarer/api/campaign/InteractionDialogAPI;Ljava/util/Map;)Z 
L100:   invokevirtual Method java/io/PrintStream println (Z)V 
L103:   getstatic Field java/lang/System out Ljava/io/PrintStream; 
L106:   new com/fs/starfarer/campaign/rules/oOOO 
L109:   dup 
L110:   ldc_w '$timesSeenPlayer > 10' 
L113:   invokespecial Method com/fs/starfarer/campaign/rules/oOOO <init> (Ljava/lang/String;)V 
L116:   aconst_null 
L117:   aconst_null 
L118:   aload_1 
L119:   invokevirtual Method com/fs/starfarer/campaign/rules/oOOO isTrueFor (Ljava/lang/String;Lcom/fs/starfarer/api/campaign/InteractionDialogAPI;Ljava/util/Map;)Z 
L122:   invokevirtual Method java/io/PrintStream println (Z)V 
L125:   getstatic Field java/lang/System out Ljava/io/PrintStream; 
L128:   new com/fs/starfarer/campaign/rules/oOOO 
L131:   dup 
L132:   ldc_w '$playerFleetPoints >=10' 
L135:   invokespecial Method com/fs/starfarer/campaign/rules/oOOO <init> (Ljava/lang/String;)V 
L138:   aconst_null 
L139:   aconst_null 
L140:   aload_1 
L141:   invokevirtual Method com/fs/starfarer/campaign/rules/oOOO isTrueFor (Ljava/lang/String;Lcom/fs/starfarer/api/campaign/InteractionDialogAPI;Ljava/util/Map;)Z 
L144:   invokevirtual Method java/io/PrintStream println (Z)V 
L147:   getstatic Field java/lang/System out Ljava/io/PrintStream; 
L150:   new com/fs/starfarer/campaign/rules/oOOO 
L153:   dup 
L154:   ldc_w '$credits < 2000' 
L157:   invokespecial Method com/fs/starfarer/campaign/rules/oOOO <init> (Ljava/lang/String;)V 
L160:   aconst_null 
L161:   aconst_null 
L162:   aload_1 
L163:   invokevirtual Method com/fs/starfarer/campaign/rules/oOOO isTrueFor (Ljava/lang/String;Lcom/fs/starfarer/api/campaign/InteractionDialogAPI;Ljava/util/Map;)Z 
L166:   invokevirtual Method java/io/PrintStream println (Z)V 
L169:   getstatic Field java/lang/System out Ljava/io/PrintStream; 
L172:   new com/fs/starfarer/campaign/rules/oOOO 
L175:   dup 
L176:   ldc_w '$supplies != 10' 
L179:   invokespecial Method com/fs/starfarer/campaign/rules/oOOO <init> (Ljava/lang/String;)V 
L182:   aconst_null 
L183:   aconst_null 
L184:   aload_1 
L185:   invokevirtual Method com/fs/starfarer/campaign/rules/oOOO isTrueFor (Ljava/lang/String;Lcom/fs/starfarer/api/campaign/InteractionDialogAPI;Ljava/util/Map;)Z 
L188:   invokevirtual Method java/io/PrintStream println (Z)V 
L191:   getstatic Field java/lang/System out Ljava/io/PrintStream; 
L194:   new com/fs/starfarer/campaign/rules/oOOO 
L197:   dup 
L198:   ldc_w '$crew<=310' 
L201:   invokespecial Method com/fs/starfarer/campaign/rules/oOOO <init> (Ljava/lang/String;)V 
L204:   aconst_null 
L205:   aconst_null 
L206:   aload_1 
L207:   invokevirtual Method com/fs/starfarer/campaign/rules/oOOO isTrueFor (Ljava/lang/String;Lcom/fs/starfarer/api/campaign/InteractionDialogAPI;Ljava/util/Map;)Z 
L210:   invokevirtual Method java/io/PrintStream println (Z)V 
L213:   getstatic Field java/lang/System out Ljava/io/PrintStream; 
L216:   new com/fs/starfarer/campaign/rules/oOOO 
L219:   dup 
L220:   ldc_w '$shipsInFleet = "310"' 
L223:   invokespecial Method com/fs/starfarer/campaign/rules/oOOO <init> (Ljava/lang/String;)V 
L226:   aconst_null 
L227:   aconst_null 
L228:   aload_1 
L229:   invokevirtual Method com/fs/starfarer/campaign/rules/oOOO isTrueFor (Ljava/lang/String;Lcom/fs/starfarer/api/campaign/InteractionDialogAPI;Ljava/util/Map;)Z 
L232:   invokevirtual Method java/io/PrintStream println (Z)V 
L235:   getstatic Field java/lang/System out Ljava/io/PrintStream; 
L238:   new com/fs/starfarer/campaign/rules/oOOO 
L241:   dup 
L242:   ldc_w '$shipsInFleet==310' 
L245:   invokespecial Method com/fs/starfarer/campaign/rules/oOOO <init> (Ljava/lang/String;)V 
L248:   aconst_null 
L249:   aconst_null 
L250:   aload_1 
L251:   invokevirtual Method com/fs/starfarer/campaign/rules/oOOO isTrueFor (Ljava/lang/String;Lcom/fs/starfarer/api/campaign/InteractionDialogAPI;Ljava/util/Map;)Z 
L254:   invokevirtual Method java/io/PrintStream println (Z)V 
L257:   getstatic Field java/lang/System out Ljava/io/PrintStream; 
L260:   new com/fs/starfarer/campaign/rules/oOOO 
L263:   dup 
L264:   ldc_w '$timesSeen=2' 
L267:   invokespecial Method com/fs/starfarer/campaign/rules/oOOO <init> (Ljava/lang/String;)V 
L270:   aconst_null 
L271:   aconst_null 
L272:   aload_1 
L273:   invokevirtual Method com/fs/starfarer/campaign/rules/oOOO isTrueFor [u358] 
L276:   invokevirtual Method java/io/PrintStream println (Z)V 
L279:   return 
L280:   
    .end code 
.end method 

.method public getString : ()Ljava/lang/String; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/starfarer/campaign/rules/oOOO 'õ00000' Ljava/lang/String; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method static synthetic $SWITCH_TABLE$com$fs$starfarer$campaign$rules$Operator : ()[I 
    .code stack 3 locals 1 
L0:     getstatic Field com/fs/starfarer/campaign/rules/oOOO oO0000 [I 
L3:     dup 
L4:     ifnull L8 
L7:     areturn 

        .stack stack_1 Object [I 
L8:     pop 
L9:     invokestatic Method [c280] values ()[Lcom/fs/starfarer/campaign/rules/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO; 
L12:    arraylength 
L13:    newarray int 
L15:    astore_0 
        .catch java/lang/NoSuchFieldError from L16 to L25 using L28 
L16:    aload_0 
L17:    getstatic Field [c280] 'Ô00000' [u100] 
L20:    invokevirtual Method [c280] ordinal ()I 
L23:    iconst_4 
L24:    iastore 
L25:    goto L29 

        .stack full 
            locals Object [I 
            stack Object java/lang/NoSuchFieldError 
        .end stack 
L28:    pop 
        .catch java/lang/NoSuchFieldError from L29 to L38 using L41 

        .stack same 
L29:    aload_0 
L30:    getstatic Field [c280] 'Ö00000' [u100] 
L33:    invokevirtual Method [c280] ordinal ()I 
L36:    iconst_3 
L37:    iastore 
L38:    goto L42 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L41:    pop 
        .catch java/lang/NoSuchFieldError from L42 to L52 using L55 

        .stack same 
L42:    aload_0 
L43:    getstatic Field [c280] 'õ00000' [u100] 
L46:    invokevirtual Method [c280] ordinal ()I 
L49:    bipush 7 
L51:    iastore 
L52:    goto L56 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L55:    pop 
        .catch java/lang/NoSuchFieldError from L56 to L66 using L69 

        .stack same 
L56:    aload_0 
L57:    getstatic Field [c280] float [u100] 
L60:    invokevirtual Method [c280] ordinal ()I 
L63:    bipush 11 
L65:    iastore 
L66:    goto L70 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L69:    pop 
        .catch java/lang/NoSuchFieldError from L70 to L80 using L83 

        .stack same 
L70:    aload_0 
L71:    getstatic Field [c280] class [u100] 
L74:    invokevirtual Method [c280] ordinal ()I 
L77:    bipush 8 
L79:    iastore 
L80:    goto L84 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L83:    pop 
        .catch java/lang/NoSuchFieldError from L84 to L93 using L96 

        .stack same 
L84:    aload_0 
L85:    getstatic Field [c280] new [u100] 
L88:    invokevirtual Method [c280] ordinal ()I 
L91:    iconst_2 
L92:    iastore 
L93:    goto L97 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L96:    pop 
        .catch java/lang/NoSuchFieldError from L97 to L106 using L109 

        .stack same 
L97:    aload_0 
L98:    getstatic Field [c280] oO0000 [u100] 
L101:   invokevirtual Method [c280] ordinal ()I 
L104:   iconst_1 
L105:   iastore 
L106:   goto L110 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L109:   pop 
        .catch java/lang/NoSuchFieldError from L110 to L120 using L123 

        .stack same 
L110:   aload_0 
L111:   getstatic Field [c280] 'Ø00000' [u100] 
L114:   invokevirtual Method [c280] ordinal ()I 
L117:   bipush 10 
L119:   iastore 
L120:   goto L124 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L123:   pop 
        .catch java/lang/NoSuchFieldError from L124 to L134 using L137 

        .stack same 
L124:   aload_0 
L125:   getstatic Field [c280] null [u100] 
L128:   invokevirtual Method [c280] ordinal ()I 
L131:   bipush 9 
L133:   iastore 
L134:   goto L138 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L137:   pop 
        .catch java/lang/NoSuchFieldError from L138 to L147 using L150 

        .stack same 
L138:   aload_0 
L139:   getstatic Field [c280] OO0000 [u100] 
L142:   invokevirtual Method [c280] ordinal ()I 
L145:   iconst_5 
L146:   iastore 
L147:   goto L151 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L150:   pop 
        .catch java/lang/NoSuchFieldError from L151 to L161 using L164 

        .stack same 
L151:   aload_0 
L152:   getstatic Field [c280] 'ö00000' [u100] 
L155:   invokevirtual Method [c280] ordinal ()I 
L158:   bipush 6 
L160:   iastore 
L161:   goto L165 

        .stack stack_1 Object java/lang/NoSuchFieldError 
L164:   pop 

        .stack same 
L165:   aload_0 
L166:   dup 
L167:   putstatic Field com/fs/starfarer/campaign/rules/oOOO oO0000 [I 
L170:   areturn 
L171:   
    .end code 
.end method 
.innerclasses 
    com/fs/starfarer/api/util/Misc$Token com/fs/starfarer/api/util/Misc Token public static 
    com/fs/starfarer/api/util/Misc$VarAndMemory com/fs/starfarer/api/util/Misc VarAndMemory public static 
.end innerclasses 
.const [u100] = Utf8 Lcom/fs/starfarer/campaign/rules/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO; 
.const [c280] = Class [u153] 
.const [u313] = Utf8 (Ljava/lang/String;)Lcom/fs/starfarer/campaign/rules/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO; 
.const [u358] = Utf8 (Ljava/lang/String;Lcom/fs/starfarer/api/campaign/InteractionDialogAPI;Ljava/util/Map;)Z 
.const [u153] = Utf8 com/fs/starfarer/campaign/rules/OoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 
.end class 
