.version 61 0 
.class public super com/fs/starfarer/loading/SpecStore 
.super java/lang/Object 
.field private static class Ljava/util/List; .fieldattributes 
    .signature Ljava/util/List<Lcom/fs/starfarer/title/Object/Oo0O;>; 
.end fieldattributes 
.field private static float Ljava/util/List; .fieldattributes 
    .signature Ljava/util/List<Lcom/fs/starfarer/loading/specs/O00O;>; 
.end fieldattributes 
.field private static 'õ00000' Ljava/util/Map; .fieldattributes 
    .signature Ljava/util/Map<Ljava/lang/Class;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>; 
.end fieldattributes 
.field private static 'Ö00000' Lorg/apache/log4j/Logger; 
.field private static 'Ø00000' Ljava/util/List; .fieldattributes 
    .signature Ljava/util/List<Lcom/fs/starfarer/loading/specs/O00O;>; 
.end fieldattributes 
.field private static 'Ó00000' Ljava/util/List; .fieldattributes 
    .signature Ljava/util/List<Lcom/fs/starfarer/loading/specs/O00O;>; 
.end fieldattributes 
.field private static null Ljava/util/List; .fieldattributes 
    .signature Ljava/util/List<Ljava/lang/String;>; 
.end fieldattributes 
.field private static new Ljava/util/List; .fieldattributes 
    .signature Ljava/util/List<Ljava/lang/String;>; 
.end fieldattributes 
.field private static 'Ô00000' Ljava/util/List; .fieldattributes 
    .signature Ljava/util/List<Ljava/lang/String;>; 
.end fieldattributes 
.field private static 'ö00000' Ljava/util/List; .fieldattributes 
    .signature Ljava/util/List<Lcom/fs/starfarer/loading/o0OO;>; 
.end fieldattributes 
.field private static o00000 Ljava/util/Map; .fieldattributes 
    .signature Ljava/util/Map<Ljava/lang/String;Lcom/fs/starfarer/launcher/ModManager$ModSpec;>; 
.end fieldattributes 

.method static <clinit> : ()V 
    .code stack 2 locals 0 
L0:     new java/util/ArrayList 
L3:     dup 
L4:     invokespecial Method java/util/ArrayList <init> ()V 
L7:     putstatic Field com/fs/starfarer/loading/SpecStore class Ljava/util/List; 
L10:    new java/util/ArrayList 
L13:    dup 
L14:    invokespecial Method java/util/ArrayList <init> ()V 
L17:    putstatic Field com/fs/starfarer/loading/SpecStore float Ljava/util/List; 
L20:    new java/util/HashMap 
L23:    dup 
L24:    invokespecial Method java/util/HashMap <init> ()V 
L27:    putstatic Field com/fs/starfarer/loading/SpecStore 'õ00000' Ljava/util/Map; 
L30:    ldc Class com/fs/starfarer/loading/SpecStore 
L32:    invokestatic Method org/apache/log4j/Logger getLogger (Ljava/lang/Class;)Lorg/apache/log4j/Logger; 
L35:    putstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L38:    aconst_null 
L39:    putstatic Field com/fs/starfarer/loading/SpecStore 'Ø00000' Ljava/util/List; 
L42:    aconst_null 
L43:    putstatic Field com/fs/starfarer/loading/SpecStore 'Ó00000' Ljava/util/List; 
L46:    new java/util/ArrayList 
L49:    dup 
L50:    invokespecial Method java/util/ArrayList <init> ()V 
L53:    putstatic Field com/fs/starfarer/loading/SpecStore null Ljava/util/List; 
L56:    new java/util/ArrayList 
L59:    dup 
L60:    invokespecial Method java/util/ArrayList <init> ()V 
L63:    putstatic Field com/fs/starfarer/loading/SpecStore new Ljava/util/List; 
L66:    new java/util/ArrayList 
L69:    dup 
L70:    invokespecial Method java/util/ArrayList <init> ()V 
L73:    putstatic Field com/fs/starfarer/loading/SpecStore 'Ô00000' Ljava/util/List; 
L76:    aconst_null 
L77:    putstatic Field com/fs/starfarer/loading/SpecStore 'ö00000' Ljava/util/List; 
L80:    new java/util/HashMap 
L83:    dup 
L84:    invokespecial Method java/util/HashMap <init> ()V 
L87:    putstatic Field com/fs/starfarer/loading/SpecStore o00000 Ljava/util/Map; 
L90:    return 
L91:    
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

.method public static 'ÓO0000' : (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
    .exceptions java/io/IOException org/json/JSONException 
    .code stack 3 locals 5 
L0:     invokestatic Method com/fs/starfarer/settings/StarfarerSettings 'OÖ0000' ()Lorg/json/JSONObject; 
L3:     ldc 'plugins' 
L5:     invokevirtual Method org/json/JSONObject getJSONObject (Ljava/lang/String;)Lorg/json/JSONObject; 
L8:     astore_1 
L9:     aload_1 
L10:    invokevirtual Method org/json/JSONObject names ()Lorg/json/JSONArray; 
L13:    astore_2 
L14:    iconst_0 
L15:    istore_3 
L16:    goto L49 

        .stack append Object org/json/JSONObject Object org/json/JSONArray Integer 
L19:    aload_1 
L20:    aload_2 
L21:    iload_3 
L22:    invokevirtual Method org/json/JSONArray getString (I)Ljava/lang/String; 
L25:    invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L28:    astore 4 
L30:    invokestatic Method com/fs/starfarer/loading/scripts/ScriptStore 'Ò00000' ()Ljava/util/Set; 
L33:    aload 4 
L35:    invokeinterface InterfaceMethod java/util/Set add (Ljava/lang/Object;)Z 2 
L40:    pop 
L41:    aload 4 
L43:    invokestatic Method com/fs/starfarer/loading/scripts/ScriptStore Object (Ljava/lang/String;)V 
L46:    iinc 3 1 

        .stack same 
L49:    iload_3 
L50:    aload_2 
L51:    invokevirtual Method org/json/JSONArray length ()I 
L54:    if_icmplt L19 
L57:    aload_0 
L58:    invokestatic Method com/fs/starfarer/loading/SpecStore new (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
L61:    aload_0 
L62:    invokestatic Method com/fs/starfarer/loading/SpecStore class (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
L65:    aload_0 
L66:    invokestatic Method com/fs/starfarer/loading/SpecStore null (Lcom/fs/starfarer/loading/ResourceLoaderState;)V
        aload_0
        invokestatic Method com/fs/starfarer/loading/SpecStore 'ÖO0000' (Lcom/fs/starfarer/loading/ResourceLoaderState;)V
L69:    invokestatic Method com/fs/starfarer/loading/WeaponSpecLoader o00000 ()V 
L72:    invokestatic Method com/fs/starfarer/loading/WeaponSpecLoader 'Ò00000' ()V 
L75:    invokestatic Method com/fs/starfarer/loading/WeaponSpreadsheetLoader 'Ò00000' ()V 
L78:    invokestatic Method com/fs/starfarer/loading/ShipHullSpecLoader 'Ò00000' ()V 
L81:    invokestatic Method com/fs/starfarer/loading/ShipHullSpreadsheetLoader o00000 ()V 
L84:    invokestatic Method com/fs/starfarer/loading/ShipHullSpecLoader Object ()V 
L87:    invokestatic Method com/fs/starfarer/loading/FighterWingSpreadsheetLoader o00000 ()V 
L90:    aload_0 
L91:    invokestatic Method com/fs/starfarer/loading/SpecStore 'new.super' (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
L94:    aload_0 
L95:    invokestatic Method com/fs/starfarer/loading/SpecStore OO0000 (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
L98:    aload_0 
L99:    invokestatic Method com/fs/starfarer/loading/SpecStore 'Ø00000' (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
L102:   aload_0 
L103:   invokestatic Method com/fs/starfarer/loading/SpecStore 'null.super' (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
L106:   aload_0 
L107:   invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
L110:   aload_0 
L111:   invokestatic Method com/fs/starfarer/loading/SpecStore 'Ó00000' (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
L114:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings new ()Z 
L117:   ifne L123 
L120:   invokestatic Method com/fs/starfarer/loading/specs/oo0o 'ÔÓ0000' ()V 

        .stack chop 1 
L123:   invokestatic Method com/fs/starfarer/loading/SpecStore oO0000 ()V 
L126:   aload_0 
L127:   invokestatic Method com/fs/starfarer/loading/SpecStore oO0000 (Lcom/fs/starfarer/loading/ResourceLoaderState;)V
L134:   invokestatic Method com/fs/starfarer/loading/SpecStore 'Ó00000' ()V 
L137:   invokestatic Method com/fs/starfarer/loading/PersonNameStore o00000 ()V 
L140:   aload_0 
L141:   invokestatic Method com/fs/starfarer/loading/SpecStore 'Ö00000' (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
L144:   aload_0 
L145:   invokestatic Method com/fs/starfarer/loading/SpecStore 'Ô00000' (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
L148:   aload_0 
L149:   invokestatic Method com/fs/starfarer/loading/SpecStore oo0000 (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
L152:   invokestatic Method com/fs/starfarer/loading/SpecStore float ()V 
L155:   aload_0 
L156:   invokestatic Method com/fs/starfarer/loading/SpecStore Oo0000 (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
L159:   invokestatic Method com/fs/starfarer/loading/SpecStore 'õ00000' ()V 
L162:   invokestatic Method com/fs/starfarer/loading/SpecStore class ()V 
L165:   aload_0 
L166:   invokestatic Method com/fs/starfarer/loading/SpecStore 'õ00000' (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
L169:   aload_0 
L170:   invokestatic Method com/fs/starfarer/loading/SpecStore 'class.super' (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
L173:   aload_0 
L174:   invokestatic Method com/fs/starfarer/loading/SpecStore 'õO0000' (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
L177:   aload_0 
L178:   invokestatic Method com/fs/starfarer/loading/SpecStore 'Óo0000' (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
L181:   aload_0 
L182:   invokestatic Method com/fs/starfarer/loading/SpecStore 'ÔO0000' (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
L185:   aload_0 
L186:   invokestatic Method com/fs/starfarer/loading/SpecStore 'interface' (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
L189:   aload_0 
L190:   invokestatic Method com/fs/starfarer/loading/SpecStore 'öO0000' (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
L193:   aload_0 
L194:   invokestatic Method com/fs/starfarer/loading/SpecStore float (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
L197:   aload_0 
L198:   invokestatic Method com/fs/starfarer/loading/SpecStore 'ö00000' (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
L201:   aload_0 
L202:   invokestatic Method com/fs/starfarer/loading/SpecStore 'ØO0000' (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
L205:   ldc 'data/campaign/starmap.json' 
L207:   invokestatic Method com/fs/starfarer/loading/S o00000 (Ljava/lang/String;)V 
L210:   aload_0 
L211:   invokestatic Method com/fs/starfarer/campaign/rules/Rules o00000 (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
L214:   return 
L215:   
    .end code 
.end method 

.method public static 'interface' : (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
    .exceptions java/io/IOException org/json/JSONException 
    .code stack 4 locals 5 
L0:     ldc_w 'id' 
L3:     ldc_w 'data/campaign/submarkets.csv' 
L6:     iconst_1 
L7:     invokestatic Method com/fs/starfarer/loading/LoadingUtils 'Ò00000' (Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONArray; 
L10:    astore_1 
L11:    getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L14:    ldc_w 'Loading submarkets' 
L17:    invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L20:    iconst_0 
L21:    istore_2 
L22:    goto L137 

        .stack append Object org/json/JSONArray Integer 
L25:    aload_1 
L26:    iload_2 
L27:    invokevirtual Method org/json/JSONArray getJSONObject (I)Lorg/json/JSONObject; 
L30:    astore_3 
L31:    getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L34:    new java/lang/StringBuilder 
L37:    dup 
L38:    ldc_w 'Loading submarket: ' 
L41:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L44:    aload_3 
L45:    ldc_w 'id' 
L48:    invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L51:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L54:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L57:    iconst_0 
L58:    anewarray java/lang/Object 
L61:    invokestatic Method java/lang/String format (Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String; 
L64:    invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L67:    new com/fs/starfarer/loading/L 
L70:    dup 
L71:    aload_3 
L72:    invokespecial Method com/fs/starfarer/loading/L <init> (Lorg/json/JSONObject;)V 
L75:    astore 4 
L77:    aload 4 
L79:    invokevirtual Method com/fs/starfarer/loading/L getScriptClass ()Ljava/lang/String; 
L82:    invokestatic Method com/fs/starfarer/loading/scripts/ScriptStore Object (Ljava/lang/String;)V 
L85:    aload_0 
L86:    ifnull L121 
L89:    aload 4 
L91:    invokevirtual Method com/fs/starfarer/loading/L getIcon ()Ljava/lang/String; 
L94:    ifnull L121 
L97:    aload 4 
L99:    invokevirtual Method com/fs/starfarer/loading/L getIcon ()Ljava/lang/String; 
L102:   invokevirtual Method java/lang/String isEmpty ()Z 
L105:   ifne L121 
L108:   aload_0 
L109:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L112:   aload 4 
L114:   invokevirtual Method com/fs/starfarer/loading/L getIcon ()Ljava/lang/String; 
L117:   iconst_1 
L118:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource (Lcom/fs/starfarer/loading/ResourceLoaderState$o;Ljava/lang/String;I)V 

        .stack append Object org/json/JSONObject Object com/fs/starfarer/loading/L 
L121:   ldc_w Class com/fs/starfarer/loading/L 
L124:   aload 4 
L126:   invokevirtual Method com/fs/starfarer/loading/L getId ()Ljava/lang/String; 
L129:   aload 4 
L131:   invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V 
L134:   iinc 2 1 

        .stack chop 2 
L137:   iload_2 
L138:   aload_1 
L139:   invokevirtual Method org/json/JSONArray length ()I 
L142:   if_icmplt L25 
L145:   return 
L146:   
    .end code 
.end method 

.method public static 'ÔO0000' : (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
    .exceptions java/io/IOException org/json/JSONException 
    .code stack 4 locals 5 
L0:     ldc_w 'id' 
L3:     ldc_w 'data/campaign/market_conditions.csv' 
L6:     iconst_1 
L7:     invokestatic Method com/fs/starfarer/loading/LoadingUtils 'Ò00000' (Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONArray; 
L10:    astore_1 
L11:    getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L14:    ldc_w 'Loading market conditions' 
L17:    invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L20:    iconst_0 
L21:    istore_2 
L22:    goto L221 

        .stack append Object org/json/JSONArray Integer 
L25:    aload_1 
L26:    iload_2 
L27:    invokevirtual Method org/json/JSONArray getJSONObject (I)Lorg/json/JSONObject; 
L30:    astore_3 
L31:    getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L34:    new java/lang/StringBuilder 
L37:    dup 
L38:    ldc_w 'Loading condition: ' 
L41:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L44:    aload_3 
L45:    ldc_w 'id' 
L48:    invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L51:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L54:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L57:    iconst_0 
L58:    anewarray java/lang/Object 
L61:    invokestatic Method java/lang/String format (Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String; 
L64:    invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L67:    new com/fs/starfarer/loading/T 
L70:    dup 
L71:    aload_3 
L72:    invokespecial Method com/fs/starfarer/loading/T <init> (Lorg/json/JSONObject;)V 
L75:    astore 4 
L77:    aload 4 
L79:    aload_3 
L80:    invokevirtual Method com/fs/starfarer/loading/T setSourceMod (Lorg/json/JSONObject;)V 
L83:    aload 4 
L85:    invokevirtual Method com/fs/starfarer/loading/T getScriptClass ()Ljava/lang/String; 
L88:    invokestatic Method com/fs/starfarer/loading/scripts/ScriptStore Object (Ljava/lang/String;)V 
L91:    getstatic Field java/lang/System out Ljava/io/PrintStream; 
L94:    new java/lang/StringBuilder 
L97:    dup 
L98:    ldc_w 'public static final String ' 
L101:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L104:   aload 4 
L106:   invokevirtual Method com/fs/starfarer/loading/T getId ()Ljava/lang/String; 
L109:   invokevirtual Method java/lang/String toUpperCase ()Ljava/lang/String; 
L112:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L115:   ldc_w ' = "' 
L118:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L121:   aload 4 
L123:   invokevirtual Method com/fs/starfarer/loading/T getId ()Ljava/lang/String; 
L126:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L129:   ldc_w '"' 
L132:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L135:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L138:   invokevirtual Method java/io/PrintStream println (Ljava/lang/String;)V 
L141:   aload_0 
L142:   ifnull L180 
L145:   aload 4 
L147:   invokevirtual Method com/fs/starfarer/loading/T getIcon ()Ljava/lang/String; 
L150:   ifnull L180 
L153:   aload 4 
L155:   invokevirtual Method com/fs/starfarer/loading/T getIcon ()Ljava/lang/String; 
L158:   invokevirtual Method java/lang/String isEmpty ()Z 
L161:   ifne L180 
L164:   aload_0 
L165:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L168:   aload 4 
L170:   invokevirtual Method com/fs/starfarer/loading/T getIcon ()Ljava/lang/String; 
L173:   iconst_1 
L174:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource (Lcom/fs/starfarer/loading/ResourceLoaderState$o;Ljava/lang/String;I)V 
L177:   goto L205 

        .stack append Object org/json/JSONObject Object com/fs/starfarer/loading/T 
L180:   aload_0 
L181:   ifnull L205 
L184:   aload 4 
L186:   ldc_w 'graphics/hullmods/generic_mod.png' 
L189:   invokevirtual Method com/fs/starfarer/loading/T setIcon (Ljava/lang/String;)V 
L192:   aload_0 
L193:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L196:   aload 4 
L198:   invokevirtual Method com/fs/starfarer/loading/T getIcon ()Ljava/lang/String; 
L201:   iconst_0 
L202:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource (Lcom/fs/starfarer/loading/ResourceLoaderState$o;Ljava/lang/String;I)V 

        .stack same 
L205:   ldc_w Class com/fs/starfarer/loading/T 
L208:   aload 4 
L210:   invokevirtual Method com/fs/starfarer/loading/T getId ()Ljava/lang/String; 
L213:   aload 4 
L215:   invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V 
L218:   iinc 2 1 

        .stack chop 2 
L221:   iload_2 
L222:   aload_1 
L223:   invokevirtual Method org/json/JSONArray length ()I 
L226:   if_icmplt L25 
L229:   return 
L230:   
    .end code 
.end method 

.method public static o00000 : (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
    .exceptions java/io/IOException org/json/JSONException 
    .code stack 5 locals 9 
L0:     getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L3:     ldc_w 'Loading pings' 
L6:     invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L9:     ldc_w 'data/campaign/pings.json' 
L12:    invokestatic Method com/fs/starfarer/loading/LoadingUtils 'Ó00000' (Ljava/lang/String;)Lorg/json/JSONObject; 
L15:    astore_1 
L16:    aload_1 
L17:    invokestatic Method org/json/JSONObject getNames (Lorg/json/JSONObject;)[Ljava/lang/String; 
L20:    dup 
L21:    astore 5 
L23:    arraylength 
L24:    istore 4 
L26:    iconst_0 
L27:    istore_3 
L28:    goto L151 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Top Integer Integer Object [Ljava/lang/String; 
            stack 
        .end stack 
L31:    aload 5 
L33:    iload_3 
L34:    aaload 
L35:    astore_2 
L36:    getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L39:    new java/lang/StringBuilder 
L42:    dup 
L43:    ldc_w 'Loading ping with id ' 
L46:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L49:    aload_2 
L50:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L53:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L56:    invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L59:    aload_1 
L60:    aload_2 
L61:    invokevirtual Method org/json/JSONObject optJSONObject (Ljava/lang/String;)Lorg/json/JSONObject; 
L64:    astore 6 
L66:    aload 6 
L68:    ifnonnull L74 
L71:    goto L148 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Object java/lang/String Integer Integer Object [Ljava/lang/String; Object org/json/JSONObject 
            stack 
        .end stack 
L74:    aconst_null 
L75:    astore 7 
L77:    aload 6 
L79:    ldc_w 'color' 
L82:    invokevirtual Method org/json/JSONObject optJSONArray (Ljava/lang/String;)Lorg/json/JSONArray; 
L85:    ifnull L101 
L88:    aload 6 
L90:    ldc_w 'color' 
L93:    invokestatic Method com/fs/starfarer/loading/String return (Lorg/json/JSONObject;Ljava/lang/String;)Ljava/awt/Color; 
L96:    astore 7 
L98:    goto L125 

        .stack append Object java/awt/Color 
L101:   aload 6 
L103:   ldc_w 'color' 
L106:   invokevirtual Method org/json/JSONObject has (Ljava/lang/String;)Z 
L109:   ifeq L125 
L112:   aload 6 
L114:   ldc_w 'color' 
L117:   invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L120:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings OO0000 (Ljava/lang/String;)Ljava/awt/Color; 
L123:   astore 7 

        .stack same 
L125:   new com/fs/starfarer/api/loading/CampaignPingSpec 
L128:   dup 
L129:   aload_2 
L130:   aload 7 
L132:   aload 6 
L134:   invokespecial Method com/fs/starfarer/api/loading/CampaignPingSpec <init> (Ljava/lang/String;Ljava/awt/Color;Lorg/json/JSONObject;)V 
L137:   astore 8 
L139:   ldc_w Class com/fs/starfarer/api/loading/CampaignPingSpec 
L142:   aload_2 
L143:   aload 8 
L145:   invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Top Integer Integer Object [Ljava/lang/String; 
            stack 
        .end stack 
L148:   iinc 3 1 

        .stack same 
L151:   iload_3 
L152:   iload 4 
L154:   if_icmplt L31 
L157:   return 
L158:   
    .end code 
.end method 

.method public static 'Ó00000' : (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
    .exceptions java/io/IOException org/json/JSONException 
    .code stack 5 locals 9 
L0:     getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L3:     ldc_w 'Loading intel tags' 
L6:     invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L9:     ldc_w 'data/config/tag_data.json' 
L12:    invokestatic Method com/fs/starfarer/loading/LoadingUtils 'Ó00000' (Ljava/lang/String;)Lorg/json/JSONObject; 
L15:    astore_1 
L16:    aload_1 
L17:    invokestatic Method org/json/JSONObject getNames (Lorg/json/JSONObject;)[Ljava/lang/String; 
L20:    dup 
L21:    astore 5 
L23:    arraylength 
L24:    istore 4 
L26:    iconst_0 
L27:    istore_3 
L28:    goto L143 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Top Integer Integer Object [Ljava/lang/String; 
            stack 
        .end stack 
L31:    aload 5 
L33:    iload_3 
L34:    aaload 
L35:    astore_2 
L36:    getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L39:    new java/lang/StringBuilder 
L42:    dup 
L43:    ldc_w 'Loading intel tag with id ' 
L46:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L49:    aload_2 
L50:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L53:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L56:    invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L59:    aload_1 
L60:    aload_2 
L61:    invokevirtual Method org/json/JSONObject getJSONObject (Ljava/lang/String;)Lorg/json/JSONObject; 
L64:    astore 6 
L66:    aconst_null 
L67:    astore 7 
L69:    aload 6 
L71:    ldc_w 'color' 
L74:    invokevirtual Method org/json/JSONObject optJSONArray (Ljava/lang/String;)Lorg/json/JSONArray; 
L77:    ifnull L93 
L80:    aload 6 
L82:    ldc_w 'color' 
L85:    invokestatic Method com/fs/starfarer/loading/String return (Lorg/json/JSONObject;Ljava/lang/String;)Ljava/awt/Color; 
L88:    astore 7 
L90:    goto L117 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Object java/lang/String Integer Integer Object [Ljava/lang/String; Object org/json/JSONObject Object java/awt/Color 
            stack 
        .end stack 
L93:    aload 6 
L95:    ldc_w 'color' 
L98:    invokevirtual Method org/json/JSONObject has (Ljava/lang/String;)Z 
L101:   ifeq L117 
L104:   aload 6 
L106:   ldc_w 'color' 
L109:   invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L112:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings OO0000 (Ljava/lang/String;)Ljava/awt/Color; 
L115:   astore 7 

        .stack same 
L117:   new com/fs/starfarer/loading/C 
L120:   dup 
L121:   aload_2 
L122:   aload 7 
L124:   aload 6 
L126:   invokespecial Method com/fs/starfarer/loading/C <init> (Ljava/lang/String;Ljava/awt/Color;Lorg/json/JSONObject;)V 
L129:   astore 8 
L131:   ldc_w Class com/fs/starfarer/loading/C 
L134:   aload_2 
L135:   aload 8 
L137:   invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V 
L140:   iinc 3 1 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Top Integer Integer Object [Ljava/lang/String; 
            stack 
        .end stack 
L143:   iload_3 
L144:   iload 4 
L146:   if_icmplt L31 
L149:   getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L152:   ldc_w 'Loading contact tags' 
L155:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L158:   ldc_w 'data/config/contact_tag_data.json' 
L161:   invokestatic Method com/fs/starfarer/loading/LoadingUtils 'Ó00000' (Ljava/lang/String;)Lorg/json/JSONObject; 
L164:   astore_1 
L165:   aload_1 
L166:   invokestatic Method org/json/JSONObject getNames (Lorg/json/JSONObject;)[Ljava/lang/String; 
L169:   dup 
L170:   astore 5 
L172:   arraylength 
L173:   istore 4 
L175:   iconst_0 
L176:   istore_3 
L177:   goto L292 

        .stack same 
L180:   aload 5 
L182:   iload_3 
L183:   aaload 
L184:   astore_2 
L185:   getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L188:   new java/lang/StringBuilder 
L191:   dup 
L192:   ldc_w 'Loading contact tag with id ' 
L195:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L198:   aload_2 
L199:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L202:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L205:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L208:   aload_1 
L209:   aload_2 
L210:   invokevirtual Method org/json/JSONObject getJSONObject (Ljava/lang/String;)Lorg/json/JSONObject; 
L213:   astore 6 
L215:   aconst_null 
L216:   astore 7 
L218:   aload 6 
L220:   ldc_w 'color' 
L223:   invokevirtual Method org/json/JSONObject optJSONArray (Ljava/lang/String;)Lorg/json/JSONArray; 
L226:   ifnull L242 
L229:   aload 6 
L231:   ldc_w 'color' 
L234:   invokestatic Method com/fs/starfarer/loading/String return (Lorg/json/JSONObject;Ljava/lang/String;)Ljava/awt/Color; 
L237:   astore 7 
L239:   goto L266 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Object java/lang/String Integer Integer Object [Ljava/lang/String; Object org/json/JSONObject Object java/awt/Color 
            stack 
        .end stack 
L242:   aload 6 
L244:   ldc_w 'color' 
L247:   invokevirtual Method org/json/JSONObject has (Ljava/lang/String;)Z 
L250:   ifeq L266 
L253:   aload 6 
L255:   ldc_w 'color' 
L258:   invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L261:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings OO0000 (Ljava/lang/String;)Ljava/awt/Color; 
L264:   astore 7 

        .stack same 
L266:   new com/fs/starfarer/api/loading/ContactTagSpec 
L269:   dup 
L270:   aload_2 
L271:   aload 7 
L273:   aload 6 
L275:   invokespecial Method com/fs/starfarer/api/loading/ContactTagSpec <init> (Ljava/lang/String;Ljava/awt/Color;Lorg/json/JSONObject;)V 
L278:   astore 8 
L280:   ldc_w Class com/fs/starfarer/api/loading/ContactTagSpec 
L283:   aload_2 
L284:   aload 8 
L286:   invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V 
L289:   iinc 3 1 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Top Integer Integer Object [Ljava/lang/String; 
            stack 
        .end stack 
L292:   iload_3 
L293:   iload 4 
L295:   if_icmplt L180 
L298:   return 
L299:   
    .end code 
.end method 

.method private static OO0000 : (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
    .exceptions java/io/IOException org/json/JSONException 
    .code stack 4 locals 9 
L0:     getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L3:     ldc_w 'Loading events' 
L6:     invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L9:     ldc_w 'data/campaign/events.json' 
L12:    invokestatic Method com/fs/starfarer/loading/LoadingUtils 'Ó00000' (Ljava/lang/String;)Lorg/json/JSONObject; 
L15:    astore_1 
L16:    aload_1 
L17:    invokestatic Method org/json/JSONObject getNames (Lorg/json/JSONObject;)[Ljava/lang/String; 
L20:    dup 
L21:    astore 5 
L23:    arraylength 
L24:    istore 4 
L26:    iconst_0 
L27:    istore_3 
L28:    goto L123 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Top Integer Integer Object [Ljava/lang/String; 
            stack 
        .end stack 
L31:    aload 5 
L33:    iload_3 
L34:    aaload 
L35:    astore_2 
L36:    getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L39:    new java/lang/StringBuilder 
L42:    dup 
L43:    ldc_w 'Loading event with id ' 
L46:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L49:    aload_2 
L50:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L53:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L56:    invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L59:    aload_1 
L60:    aload_2 
L61:    invokevirtual Method org/json/JSONObject getJSONObject (Ljava/lang/String;)Lorg/json/JSONObject; 
L64:    astore 6 
L66:    new com/fs/starfarer/loading/specs/forsuper 
L69:    dup 
L70:    aload_2 
L71:    aload 6 
L73:    invokespecial Method com/fs/starfarer/loading/specs/forsuper <init> (Ljava/lang/String;Lorg/json/JSONObject;)V 
L76:    astore 7 
L78:    aload 7 
L80:    invokevirtual Method com/fs/starfarer/loading/specs/forsuper getPluginClass ()Ljava/lang/String; 
L83:    astore 8 
L85:    aload 8 
L87:    invokestatic Method com/fs/starfarer/loading/scripts/ScriptStore Object (Ljava/lang/String;)V 
L90:    aload 7 
L92:    invokevirtual Method com/fs/starfarer/loading/specs/forsuper getImage ()Ljava/lang/String; 
L95:    ifnull L111 
L98:    aload_0 
L99:    getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L102:   aload 7 
L104:   invokevirtual Method com/fs/starfarer/loading/specs/forsuper getImage ()Ljava/lang/String; 
L107:   iconst_0 
L108:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource (Lcom/fs/starfarer/loading/ResourceLoaderState$o;Ljava/lang/String;I)V 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Object java/lang/String Integer Integer Object [Ljava/lang/String; Object org/json/JSONObject Object com/fs/starfarer/loading/specs/forsuper Object java/lang/String 
            stack 
        .end stack 
L111:   ldc_w Class com/fs/starfarer/loading/specs/forsuper 
L114:   aload_2 
L115:   aload 7 
L117:   invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V 
L120:   iinc 3 1 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Top Integer Integer Object [Ljava/lang/String; 
            stack 
        .end stack 
L123:   iload_3 
L124:   iload 4 
L126:   if_icmplt L31 
L129:   return 
L130:   
    .end code 
.end method 

.method private static 'Ø00000' : (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
    .exceptions java/io/IOException org/json/JSONException 
    .code stack 6 locals 1 
L0:     getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L3:     ldc_w 'Loading abilities' 
L6:     invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L9:     ldc_w 'id' 
L12:    ldc_w 'data/campaign/abilities.csv' 
L15:    ldc_w Class com/fs/starfarer/loading/specs/oOOO 
L18:    aload_0 
L19:    new com/fs/starfarer/loading/SpecStore$1 
L22:    dup 
L23:    invokespecial Method com/fs/starfarer/loading/SpecStore$1 <init> ()V 
L26:    invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/fs/starfarer/loading/ResourceLoaderState;Lcom/fs/starfarer/loading/SpecStore$o;)V 
L29:    return 
L30:    
    .end code 
.end method 

.method public static 'öO0000' : (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
    .exceptions java/io/IOException org/json/JSONException 
    .code stack 6 locals 1 
L0:     getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L3:     ldc_w 'Loading industries' 
L6:     invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L9:     ldc_w 'id' 
L12:    ldc_w 'data/campaign/industries.csv' 
L15:    ldc_w Class com/fs/starfarer/loading/specs/H 
L18:    aload_0 
L19:    new com/fs/starfarer/loading/SpecStore$2 
L22:    dup 
L23:    invokespecial Method com/fs/starfarer/loading/SpecStore$2 <init> ()V 
L26:    invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/fs/starfarer/loading/ResourceLoaderState;Lcom/fs/starfarer/loading/SpecStore$o;)V 
L29:    return 
L30:    
    .end code 
.end method 

.method private static 'null.super' : (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
    .exceptions java/io/IOException org/json/JSONException 
    .code stack 4 locals 9 
L0:     getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L3:     ldc_w 'Loading terrain' 
L6:     invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L9:     ldc_w 'data/campaign/terrain.json' 
L12:    invokestatic Method com/fs/starfarer/loading/LoadingUtils 'Ó00000' (Ljava/lang/String;)Lorg/json/JSONObject; 
L15:    astore_1 
L16:    aload_1 
L17:    invokestatic Method org/json/JSONObject getNames (Lorg/json/JSONObject;)[Ljava/lang/String; 
L20:    dup 
L21:    astore 5 
L23:    arraylength 
L24:    istore 4 
L26:    iconst_0 
L27:    istore_3 
L28:    goto L110 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Top Integer Integer Object [Ljava/lang/String; 
            stack 
        .end stack 
L31:    aload 5 
L33:    iload_3 
L34:    aaload 
L35:    astore_2 
L36:    getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L39:    new java/lang/StringBuilder 
L42:    dup 
L43:    ldc_w 'Loading terrain with id ' 
L46:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L49:    aload_2 
L50:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L53:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L56:    invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L59:    aload_1 
L60:    aload_2 
L61:    invokevirtual Method org/json/JSONObject optJSONObject (Ljava/lang/String;)Lorg/json/JSONObject; 
L64:    astore 6 
L66:    aload 6 
L68:    ifnonnull L74 
L71:    goto L107 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Object java/lang/String Integer Integer Object [Ljava/lang/String; Object org/json/JSONObject 
            stack 
        .end stack 
L74:    new com/fs/starfarer/loading/specs/Stringsuper 
L77:    dup 
L78:    aload_2 
L79:    aload 6 
L81:    invokespecial Method com/fs/starfarer/loading/specs/Stringsuper <init> (Ljava/lang/String;Lorg/json/JSONObject;)V 
L84:    astore 7 
L86:    aload 7 
L88:    invokevirtual Method com/fs/starfarer/loading/specs/Stringsuper getPluginClass ()Ljava/lang/String; 
L91:    astore 8 
L93:    aload 8 
L95:    invokestatic Method com/fs/starfarer/loading/scripts/ScriptStore Object (Ljava/lang/String;)V 
L98:    ldc_w Class com/fs/starfarer/loading/specs/Stringsuper 
L101:   aload_2 
L102:   aload 7 
L104:   invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Top Integer Integer Object [Ljava/lang/String; 
            stack 
        .end stack 
L107:   iinc 3 1 

        .stack same 
L110:   iload_3 
L111:   iload 4 
L113:   if_icmplt L31 
L116:   return 
L117:   
    .end code 
.end method 

.method public static while : (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
    .exceptions java/io/IOException org/json/JSONException 
    .code stack 4 locals 10 
L0:     getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L3:     ldc_w 'Loading channels' 
L6:     invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L9:     ldc_w 'data/campaign/channels.json' 
L12:    invokestatic Method com/fs/starfarer/loading/LoadingUtils 'Ó00000' (Ljava/lang/String;)Lorg/json/JSONObject; 
L15:    astore_1 
L16:    aload_1 
L17:    ldc_w 'defaultChannels' 
L20:    invokevirtual Method org/json/JSONObject getJSONArray (Ljava/lang/String;)Lorg/json/JSONArray; 
L23:    astore_2 
L24:    aload_1 
L25:    ldc_w 'defaultChannels' 
L28:    invokevirtual Method org/json/JSONObject remove (Ljava/lang/String;)Ljava/lang/Object; 
L31:    pop 
L32:    iconst_0 
L33:    istore_3 
L34:    goto L54 

        .stack append Object org/json/JSONObject Object org/json/JSONArray Integer 
L37:    getstatic Field com/fs/starfarer/loading/specs/X 'ø00000' Ljava/util/List; 
L40:    aload_2 
L41:    iload_3 
L42:    invokevirtual Method org/json/JSONArray getString (I)Ljava/lang/String; 
L45:    invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L50:    pop 
L51:    iinc 3 1 

        .stack same 
L54:    iload_3 
L55:    aload_2 
L56:    invokevirtual Method org/json/JSONArray length ()I 
L59:    if_icmplt L37 
L62:    aload_1 
L63:    ldc_w 'playerIntelChannels' 
L66:    invokevirtual Method org/json/JSONObject getJSONArray (Ljava/lang/String;)Lorg/json/JSONArray; 
L69:    astore_3 
L70:    aload_1 
L71:    ldc_w 'playerIntelChannels' 
L74:    invokevirtual Method org/json/JSONObject remove (Ljava/lang/String;)Ljava/lang/Object; 
L77:    pop 
L78:    iconst_0 
L79:    istore 4 
L81:    goto L102 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Object org/json/JSONArray Object org/json/JSONArray Integer 
            stack 
        .end stack 
L84:    getstatic Field com/fs/starfarer/loading/specs/X void Ljava/util/List; 
L87:    aload_3 
L88:    iload 4 
L90:    invokevirtual Method org/json/JSONArray getString (I)Ljava/lang/String; 
L93:    invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L98:    pop 
L99:    iinc 4 1 

        .stack same 
L102:   iload 4 
L104:   aload_3 
L105:   invokevirtual Method org/json/JSONArray length ()I 
L108:   if_icmplt L84 
L111:   aload_1 
L112:   invokestatic Method org/json/JSONObject getNames (Lorg/json/JSONObject;)[Ljava/lang/String; 
L115:   dup 
L116:   astore 7 
L118:   arraylength 
L119:   istore 6 
L121:   iconst_0 
L122:   istore 5 
L124:   goto L259 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Object org/json/JSONArray Object org/json/JSONArray Top Integer Integer Object [Ljava/lang/String; 
            stack 
        .end stack 
L127:   aload 7 
L129:   iload 5 
L131:   aaload 
L132:   astore 4 
L134:   getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L137:   new java/lang/StringBuilder 
L140:   dup 
L141:   ldc_w 'Loading channel with id ' 
L144:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L147:   aload 4 
L149:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L152:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L155:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L158:   aload_1 
L159:   aload 4 
L161:   invokevirtual Method org/json/JSONObject getJSONObject (Ljava/lang/String;)Lorg/json/JSONObject; 
L164:   astore 8 
L166:   new com/fs/starfarer/loading/specs/X 
L169:   dup 
L170:   aload 4 
L172:   aload 8 
L174:   invokespecial Method com/fs/starfarer/loading/specs/X <init> (Ljava/lang/String;Lorg/json/JSONObject;)V 
L177:   astore 9 
L179:   ldc_w Class com/fs/starfarer/loading/specs/X 
L182:   aload 4 
L184:   aload 9 
L186:   invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V 
L189:   aload_0 
L190:   ifnull L256 
L193:   aload 9 
L195:   invokevirtual Method com/fs/starfarer/loading/specs/X class ()Ljava/lang/String; 
L198:   ifnull L214 
L201:   aload_0 
L202:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L205:   aload 9 
L207:   invokevirtual Method com/fs/starfarer/loading/specs/X class ()Ljava/lang/String; 
L210:   iconst_1 
L211:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource (Lcom/fs/starfarer/loading/ResourceLoaderState$o;Ljava/lang/String;I)V 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Object org/json/JSONArray Object org/json/JSONArray Object java/lang/String Integer Integer Object [Ljava/lang/String; Object org/json/JSONObject Object com/fs/starfarer/loading/specs/X 
            stack 
        .end stack 
L214:   aload 9 
L216:   invokevirtual Method com/fs/starfarer/loading/specs/X 'Ô00000' ()Ljava/lang/String; 
L219:   ifnull L235 
L222:   aload_0 
L223:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L226:   aload 9 
L228:   invokevirtual Method com/fs/starfarer/loading/specs/X 'Ô00000' ()Ljava/lang/String; 
L231:   iconst_1 
L232:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource (Lcom/fs/starfarer/loading/ResourceLoaderState$o;Ljava/lang/String;I)V 

        .stack same 
L235:   aload 9 
L237:   invokevirtual Method com/fs/starfarer/loading/specs/X 'õ00000' ()Ljava/lang/String; 
L240:   ifnull L256 
L243:   aload_0 
L244:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L247:   aload 9 
L249:   invokevirtual Method com/fs/starfarer/loading/specs/X 'õ00000' ()Ljava/lang/String; 
L252:   iconst_1 
L253:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource (Lcom/fs/starfarer/loading/ResourceLoaderState$o;Ljava/lang/String;I)V 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Object org/json/JSONArray Object org/json/JSONArray Top Integer Integer Object [Ljava/lang/String; 
            stack 
        .end stack 
L256:   iinc 5 1 

        .stack same 
L259:   iload 5 
L261:   iload 6 
L263:   if_icmplt L127 
L266:   return 
L267:   
    .end code 
.end method 

.method public static 'Óo0000' : (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
    .exceptions java/io/IOException org/json/JSONException 
    .code stack 4 locals 12 
L0:     getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L3:     ldc_w 'Loading custom campaign entity data' 
L6:     invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L9:     ldc_w 'data/config/custom_entities.json' 
L12:    invokestatic Method com/fs/starfarer/loading/LoadingUtils 'Ó00000' (Ljava/lang/String;)Lorg/json/JSONObject; 
L15:    astore_1 
L16:    new java/util/ArrayList 
L19:    dup 
L20:    invokespecial Method java/util/ArrayList <init> ()V 
L23:    astore_2 
L24:    aload_1 
L25:    invokestatic Method org/json/JSONObject getNames (Lorg/json/JSONObject;)[Ljava/lang/String; 
L28:    dup 
L29:    astore 6 
L31:    arraylength 
L32:    istore 5 
L34:    iconst_0 
L35:    istore 4 
L37:    goto L109 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Object java/util/List Top Integer Integer Object [Ljava/lang/String; 
            stack 
        .end stack 
L40:    aload 6 
L42:    iload 4 
L44:    aaload 
L45:    astore_3 
L46:    getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L49:    new java/lang/StringBuilder 
L52:    dup 
L53:    ldc_w 'Loading custom campaign entity with id ' 
L56:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L59:    aload_3 
L60:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L63:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L66:    invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L69:    aload_1 
L70:    aload_3 
L71:    invokevirtual Method org/json/JSONObject getJSONObject (Ljava/lang/String;)Lorg/json/JSONObject; 
L74:    astore 7 
L76:    aload 7 
L78:    ldc_w 'baseId' 
L81:    invokevirtual Method org/json/JSONObject has (Ljava/lang/String;)Z 
L84:    ifeq L98 
L87:    aload_2 
L88:    aload_3 
L89:    invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L94:    pop 
L95:    goto L106 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Object java/util/List Object java/lang/String Integer Integer Object [Ljava/lang/String; Object org/json/JSONObject 
            stack 
        .end stack 
L98:    aload_3 
L99:    aload 7 
L101:   aconst_null 
L102:   aload_0 
L103:   invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/lang/String;Lorg/json/JSONObject;Lcom/fs/starfarer/loading/specs/int;Lcom/fs/starfarer/loading/ResourceLoaderState;)V 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Object java/util/List Top Integer Integer Object [Ljava/lang/String; 
            stack 
        .end stack 
L106:   iinc 4 1 

        .stack same 
L109:   iload 4 
L111:   iload 5 
L113:   if_icmplt L40 
L116:   bipush 10 
L118:   istore_3 
L119:   new java/util/HashSet 
L122:   dup 
L123:   invokespecial Method java/util/HashSet <init> ()V 
L126:   astore 4 
L128:   iconst_0 
L129:   istore 5 
L131:   goto L284 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Object java/util/List Integer Object java/util/Set Integer 
            stack 
        .end stack 
L134:   aload_2 
L135:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L140:   astore 7 
L142:   goto L252 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Object java/util/List Integer Object java/util/Set Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L145:   aload 7 
L147:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L152:   checkcast java/lang/String 
L155:   astore 6 
L157:   aload 4 
L159:   aload 6 
L161:   invokeinterface InterfaceMethod java/util/Set contains (Ljava/lang/Object;)Z 2 
L166:   ifeq L172 
L169:   goto L252 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Object java/util/List Integer Object java/util/Set Integer Object java/lang/String Object java/util/Iterator 
            stack 
        .end stack 
L172:   aload_1 
L173:   aload 6 
L175:   invokevirtual Method org/json/JSONObject getJSONObject (Ljava/lang/String;)Lorg/json/JSONObject; 
L178:   astore 8 
L180:   aload 8 
L182:   ldc_w 'baseId' 
L185:   invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L188:   astore 9 
L190:   ldc_w Class com/fs/starfarer/loading/specs/int 
L193:   aload 9 
L195:   invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object; 
L198:   checkcast com/fs/starfarer/loading/specs/int 
L201:   astore 10 
L203:   aload 10 
L205:   ifnonnull L211 
L208:   goto L252 

        .stack append Object org/json/JSONObject Object java/lang/String Object com/fs/starfarer/loading/specs/int 
L211:   aload 10 
L213:   invokevirtual Method com/fs/starfarer/loading/specs/int clone ()Lcom/fs/starfarer/loading/specs/int; 
L216:   astore 11 
L218:   aload 11 
L220:   aload 6 
L222:   invokevirtual Method com/fs/starfarer/loading/specs/int setId (Ljava/lang/String;)V 
L225:   aload 11 
L227:   aload 8 
L229:   invokevirtual Method com/fs/starfarer/loading/specs/int load (Lorg/json/JSONObject;)V 
L232:   aload 6 
L234:   aload 8 
L236:   aload 11 
L238:   aload_0 
L239:   invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/lang/String;Lorg/json/JSONObject;Lcom/fs/starfarer/loading/specs/int;Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
L242:   aload 4 
L244:   aload 6 
L246:   invokeinterface InterfaceMethod java/util/Set add (Ljava/lang/Object;)Z 2 
L251:   pop 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Object java/util/List Integer Object java/util/Set Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L252:   aload 7 
L254:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L259:   ifne L145 
L262:   aload 4 
L264:   invokeinterface InterfaceMethod java/util/Set size ()I 1 
L269:   aload_2 
L270:   invokeinterface InterfaceMethod java/util/List size ()I 1 
L275:   if_icmpne L281 
L278:   goto L290 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Object java/util/List Integer Object java/util/Set Integer 
            stack 
        .end stack 
L281:   iinc 5 1 

        .stack same 
L284:   iload 5 
L286:   iload_3 
L287:   if_icmplt L134 

        .stack chop 1 
L290:   return 
L291:   
    .end code 
.end method 

.method public static o00000 : (Ljava/lang/String;Lorg/json/JSONObject;Lcom/fs/starfarer/loading/specs/int;Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
    .exceptions org/json/JSONException 
    .code stack 4 locals 5 
L0:     aload_2 
L1:     ifnonnull L14 
L4:     new com/fs/starfarer/loading/specs/int 
L7:     dup 
L8:     aload_0 
L9:     aload_1 
L10:    invokespecial Method com/fs/starfarer/loading/specs/int <init> (Ljava/lang/String;Lorg/json/JSONObject;)V 
L13:    astore_2 

        .stack same 
L14:    ldc_w Class com/fs/starfarer/loading/specs/int 
L17:    aload_0 
L18:    aload_2 
L19:    invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V 
L22:    aload_3 
L23:    ifnull L74 
L26:    aload_3 
L27:    getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L30:    aload_2 
L31:    invokevirtual Method com/fs/starfarer/loading/specs/int getIconName ()Ljava/lang/String; 
L34:    iconst_1 
L35:    invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource (Lcom/fs/starfarer/loading/ResourceLoaderState$o;Ljava/lang/String;I)V 
L38:    aload_3 
L39:    getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L42:    aload_2 
L43:    invokevirtual Method com/fs/starfarer/loading/specs/int getSpriteName ()Ljava/lang/String; 
L46:    iconst_1 
L47:    invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource (Lcom/fs/starfarer/loading/ResourceLoaderState$o;Ljava/lang/String;I)V 
L50:    aload_3 
L51:    getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L54:    aload_2 
L55:    invokevirtual Method com/fs/starfarer/loading/specs/int getInteractionImage ()Ljava/lang/String; 
L58:    iconst_1 
L59:    invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource (Lcom/fs/starfarer/loading/ResourceLoaderState$o;Ljava/lang/String;I)V 
L62:    aload_3 
L63:    getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L66:    aload_2 
L67:    invokevirtual Method com/fs/starfarer/loading/specs/int getSheetName ()Ljava/lang/String; 
L70:    iconst_1 
L71:    invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u22] 

        .stack same 
L74:    aload_2 
L75:    invokevirtual Method com/fs/starfarer/loading/specs/int getPluginClassName ()Ljava/lang/String; 
L78:    astore 4 
L80:    aload 4 
L82:    ifnull L108 
L85:    aload 4 
L87:    invokevirtual Method java/lang/String trim ()Ljava/lang/String; 
L90:    invokevirtual Method java/lang/String isEmpty ()Z 
L93:    ifne L108 
L96:    aload_3 
L97:    ifnull L108 
L100:   aload 4 
L102:   invokestatic Method com/fs/starfarer/loading/scripts/ScriptStore Object (Ljava/lang/String;)V 
L105:   goto L113 

        .stack append Object java/lang/String 
L108:   aload_2 
L109:   aconst_null 
L110:   invokevirtual Method com/fs/starfarer/loading/specs/int setPluginClassName (Ljava/lang/String;)V 

        .stack same 
L113:   return 
L114:   
    .end code 
.end method 

.method public static 'õO0000' : (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
    .exceptions java/io/IOException org/json/JSONException 
    .code stack 4 locals 9 
L0:     getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L3:     ldc_w 'Loading battle objective data' 
L6:     invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L9:     ldc_w 'data/config/battle_objectives.json' 
L12:    invokestatic Method com/fs/starfarer/loading/LoadingUtils 'Ó00000' (Ljava/lang/String;)Lorg/json/JSONObject; 
L15:    astore_1 
L16:    aload_1 
L17:    invokestatic Method org/json/JSONObject getNames (Lorg/json/JSONObject;)[Ljava/lang/String; 
L20:    dup 
L21:    astore 5 
L23:    arraylength 
L24:    istore 4 
L26:    iconst_0 
L27:    istore_3 
L28:    goto L161 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Top Integer Integer Object [Ljava/lang/String; 
            stack 
        .end stack 
L31:    aload 5 
L33:    iload_3 
L34:    aaload 
L35:    astore_2 
L36:    getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L39:    new java/lang/StringBuilder 
L42:    dup 
L43:    ldc_w 'Loading objective with id ' 
L46:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L49:    aload_2 
L50:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L53:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L56:    invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L59:    aload_1 
L60:    aload_2 
L61:    invokevirtual Method org/json/JSONObject getJSONObject (Ljava/lang/String;)Lorg/json/JSONObject; 
L64:    astore 6 
L66:    new com/fs/starfarer/loading/specs/oOOo 
L69:    dup 
L70:    aload_2 
L71:    aload 6 
L73:    invokespecial Method com/fs/starfarer/loading/specs/oOOo <init> (Ljava/lang/String;Lorg/json/JSONObject;)V 
L76:    astore 7 
L78:    ldc_w Class com/fs/starfarer/loading/specs/oOOo 
L81:    aload_2 
L82:    aload 7 
L84:    invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V 
L87:    aload_0 
L88:    ifnull L117 
L91:    aload_0 
L92:    getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L95:    aload 7 
L97:    invokevirtual Method com/fs/starfarer/loading/specs/oOOo 'Ò00000' ()Ljava/lang/String; 
L100:   iconst_1 
L101:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u22] 
L104:   aload_0 
L105:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L108:   aload 7 
L110:   invokevirtual Method com/fs/starfarer/loading/specs/oOOo 'Õ00000' ()Ljava/lang/String; 
L113:   iconst_1 
L114:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u22] 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Object java/lang/String Integer Integer Object [Ljava/lang/String; Object org/json/JSONObject Object com/fs/starfarer/loading/specs/oOOo 
            stack 
        .end stack 
L117:   aload 7 
L119:   invokevirtual Method com/fs/starfarer/loading/specs/oOOo 'super' ()Ljava/lang/String; 
L122:   astore 8 
L124:   aload 8 
L126:   ifnull L152 
L129:   aload 8 
L131:   invokevirtual Method java/lang/String trim ()Ljava/lang/String; 
L134:   invokevirtual Method java/lang/String isEmpty ()Z 
L137:   ifne L152 
L140:   aload_0 
L141:   ifnull L152 
L144:   aload 8 
L146:   invokestatic Method com/fs/starfarer/loading/scripts/ScriptStore Object (Ljava/lang/String;)V 
L149:   goto L158 

        .stack append Object java/lang/String 
L152:   aload 7 
L154:   aconst_null 
L155:   invokevirtual Method com/fs/starfarer/loading/specs/oOOo 'Ó00000' (Ljava/lang/String;)V 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Top Integer Integer Object [Ljava/lang/String; 
            stack 
        .end stack 
L158:   iinc 3 1 

        .stack same 
L161:   iload_3 
L162:   iload 4 
L164:   if_icmplt L31 
L167:   return 
L168:   
    .end code 
.end method 

.method public static 'class.super' : (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
    .exceptions java/io/IOException org/json/JSONException 
    .code stack 4 locals 16 
L0:     ldc_w Class com/fs/starfarer/loading/SkillSpec 
L3:     invokestatic Method com/fs/starfarer/loading/SpecStore new (Ljava/lang/Class;)Ljava/util/Map; 
L6:     astore_1 
L7:     aload_1 
L8:     invokeinterface InterfaceMethod java/util/Map clear ()V 1 
L13:    getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L16:    ldc_w 'Loading skill_data.csv' 
L19:    invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L22:    ldc_w 'id' 
L25:    ldc_w 'data/characters/skills/skill_data.csv' 
L28:    iconst_1 
L29:    invokestatic Method com/fs/starfarer/loading/LoadingUtils 'Ò00000' (Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONArray; 
L32:    astore_2 
L33:    new java/util/ArrayList 
L36:    dup 
L37:    invokespecial Method java/util/ArrayList <init> ()V 
L40:    astore_3 
L41:    iconst_0 
L42:    istore 4 
L44:    goto L77 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/Map Object org/json/JSONArray Object java/util/List Integer 
            stack 
        .end stack 
L47:    aload_2 
L48:    iload 4 
L50:    invokevirtual Method org/json/JSONArray getJSONObject (I)Lorg/json/JSONObject; 
L53:    astore 5 
L55:    aload 5 
L57:    ldc_w 'id' 
L60:    invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L63:    astore 6 
L65:    aload_3 
L66:    aload 6 
L68:    invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L73:    pop 
L74:    iinc 4 1 

        .stack same 
L77:    iload 4 
L79:    aload_2 
L80:    invokevirtual Method org/json/JSONArray length ()I 
L83:    if_icmplt L47 
L86:    invokestatic Method com/fs/starfarer/loading/SpecStore OO0000 ()Ljava/util/List; 
L89:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L94:    astore 5 
L96:    goto L123 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/Map Object org/json/JSONArray Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L99:    aload 5 
L101:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L106:   checkcast com/fs/starfarer/loading/o0OO 
L109:   astore 4 
L111:   aload_3 
L112:   aload 4 
L114:   invokevirtual Method com/fs/starfarer/loading/o0OO 'public' ()Ljava/lang/String; 
L117:   invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L122:   pop 

        .stack same 
L123:   aload 5 
L125:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L130:   ifne L99 
L133:   getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L136:   ldc_w 'Loading skills' 
L139:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L142:   ldc_w 'data/characters/skills/' 
L145:   ldc_w 'skill' 
L148:   invokestatic Method com/fs/starfarer/loading/LoadingUtils 'super' (Ljava/lang/String;Ljava/lang/String;)Ljava/util/List; 
L151:   astore 4 
L153:   new java/util/HashSet 
L156:   dup 
L157:   invokespecial Method java/util/HashSet <init> ()V 
L160:   astore 5 
L162:   aload 4 
L164:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L169:   astore 7 
L171:   goto L218 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/Map Object org/json/JSONArray Object java/util/List Object java/util/List Object java/util/Set Top Object java/util/Iterator 
            stack 
        .end stack 
L174:   aload 7 
L176:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L181:   checkcast java/lang/String 
L184:   astore 6 
L186:   new java/io/File 
L189:   dup 
L190:   aload 6 
L192:   invokespecial Method java/io/File <init> (Ljava/lang/String;)V 
L195:   invokevirtual Method java/io/File getName ()Ljava/lang/String; 
L198:   astore 8 
L200:   aload 8 
L202:   invokevirtual Method java/lang/String isEmpty ()Z 
L205:   ifne L218 
L208:   aload 5 
L210:   aload 8 
L212:   invokeinterface InterfaceMethod java/util/Set add (Ljava/lang/Object;)Z 2 
L217:   pop 

        .stack same 
L218:   aload 7 
L220:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L225:   ifne L174 
L228:   aload 5 
L230:   invokeinterface InterfaceMethod java/util/Set iterator ()Ljava/util/Iterator; 1 
L235:   astore 7 
L237:   goto L553 

        .stack same 
L240:   aload 7 
L242:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L247:   checkcast java/lang/String 
L250:   astore 6 
L252:   new java/lang/StringBuilder 
L255:   dup 
L256:   ldc_w 'data/characters/skills/' 
L259:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L262:   aload 6 
L264:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L267:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L270:   astore 8 
L272:   getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L275:   new java/lang/StringBuilder 
L278:   dup 
L279:   ldc_w 'Loading skill [' 
L282:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L285:   aload 8 
L287:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L290:   ldc_w ']' 
L293:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L296:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L299:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L302:   new com/fs/starfarer/loading/SkillSpec 
L305:   dup 
L306:   aload 8 
L308:   invokestatic Method com/fs/starfarer/loading/LoadingUtils 'Ó00000' (Ljava/lang/String;)Lorg/json/JSONObject; 
L311:   invokespecial Method com/fs/starfarer/loading/SkillSpec <init> (Lorg/json/JSONObject;)V 
L314:   astore 9 
L316:   ldc_w Class com/fs/starfarer/loading/SkillSpec 
L319:   aload 9 
L321:   invokevirtual Method com/fs/starfarer/loading/SkillSpec getId ()Ljava/lang/String; 
L324:   invokestatic Method com/fs/starfarer/loading/SpecStore new (Ljava/lang/Class;Ljava/lang/String;)Z 
L327:   ifeq L366 
L330:   getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L333:   new java/lang/StringBuilder 
L336:   dup 
L337:   ldc_w 'Skipping skill [' 
L340:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L343:   aload 9 
L345:   invokevirtual Method com/fs/starfarer/loading/SkillSpec getId ()Ljava/lang/String; 
L348:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L351:   ldc_w '], was already loaded' 
L354:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L357:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L360:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L363:   goto L553 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/Map Object org/json/JSONArray Object java/util/List Object java/util/List Object java/util/Set Object java/lang/String Object java/util/Iterator Object java/lang/String Object com/fs/starfarer/loading/SkillSpec 
            stack 
        .end stack 
L366:   aload_3 
L367:   aload 9 
L369:   invokevirtual Method com/fs/starfarer/loading/SkillSpec getId ()Ljava/lang/String; 
L372:   invokeinterface InterfaceMethod java/util/List contains (Ljava/lang/Object;)Z 2 
L377:   ifne L416 
L380:   getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L383:   new java/lang/StringBuilder 
L386:   dup 
L387:   ldc_w 'Skipping loading skill [' 
L390:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L393:   aload 9 
L395:   invokevirtual Method com/fs/starfarer/loading/SkillSpec getId ()Ljava/lang/String; 
L398:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L401:   ldc_w "], it's not listed in skill_data.csv." 
L404:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L407:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L410:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L413:   goto L553 

        .stack same 
L416:   aload 9 
L418:   invokevirtual Method com/fs/starfarer/loading/SkillSpec getGoverningAptitude ()Lcom/fs/starfarer/loading/o0OO; 
L421:   astore 10 
L423:   aload 10 
L425:   invokevirtual Method com/fs/starfarer/loading/o0OO 'public' ()Ljava/lang/String; 
L428:   ifnull L476 
L431:   aload 10 
L433:   invokevirtual Method com/fs/starfarer/loading/o0OO 'public' ()Ljava/lang/String; 
L436:   aload 9 
L438:   invokevirtual Method com/fs/starfarer/loading/SkillSpec getId ()Ljava/lang/String; 
L441:   invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L444:   ifeq L476 
L447:   aload 9 
L449:   iconst_1 
L450:   invokevirtual Method com/fs/starfarer/loading/SkillSpec setAptitudeEffect (Z)V 
L453:   aload 9 
L455:   aload 10 
L457:   invokevirtual Method com/fs/starfarer/loading/o0OO 'ÒO0000' ()Ljava/lang/String; 
L460:   invokevirtual Method com/fs/starfarer/loading/SkillSpec setDescription (Ljava/lang/String;)V 
L463:   aload 9 
L465:   aload 10 
L467:   invokevirtual Method com/fs/starfarer/loading/o0OO 'ö00000' ()Ljava/lang/String; 
L470:   invokevirtual Method com/fs/starfarer/loading/SkillSpec setName (Ljava/lang/String;)V 
L473:   goto L482 

        .stack append Object com/fs/starfarer/loading/o0OO 
L476:   aload 9 
L478:   iconst_0 
L479:   invokevirtual Method com/fs/starfarer/loading/SkillSpec setAptitudeEffect (Z)V 

        .stack same 
L482:   aload 9 
L484:   invokevirtual Method com/fs/starfarer/loading/SkillSpec getEffects ()Ljava/util/List; 
L487:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L492:   astore 12 
L494:   goto L530 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/Map Object org/json/JSONArray Object java/util/List Object java/util/List Object java/util/Set Object java/lang/String Object java/util/Iterator Object java/lang/String Object com/fs/starfarer/loading/SkillSpec Object com/fs/starfarer/loading/o0OO Top Object java/util/Iterator 
            stack 
        .end stack 
L497:   aload 12 
L499:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L504:   checkcast com/fs/starfarer/loading/SkillSpec$SkillEffectSpec 
L507:   astore 11 
L509:   aload 11 
L511:   invokevirtual Method com/fs/starfarer/loading/SkillSpec$SkillEffectSpec getEffectClass ()Ljava/lang/String; 
L514:   astore 13 
L516:   aload 13 
L518:   ifnull L530 
L521:   aload_0 
L522:   ifnull L530 
L525:   aload 13 
L527:   invokestatic Method com/fs/starfarer/loading/scripts/ScriptStore Object (Ljava/lang/String;)V 

        .stack same 
L530:   aload 12 
L532:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L537:   ifne L497 
L540:   ldc_w Class com/fs/starfarer/loading/SkillSpec 
L543:   aload 9 
L545:   invokevirtual Method com/fs/starfarer/loading/SkillSpec getId ()Ljava/lang/String; 
L548:   aload 9 
L550:   invokestatic Method com/fs/starfarer/loading/SpecStore o00000 [u346] 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/Map Object org/json/JSONArray Object java/util/List Object java/util/List Object java/util/Set Top Object java/util/Iterator 
            stack 
        .end stack 
L553:   aload 7 
L555:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L560:   ifne L240 
L563:   iconst_0 
L564:   istore 6 
L566:   goto L950 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/Map Object org/json/JSONArray Object java/util/List Object java/util/List Object java/util/Set Integer 
            stack 
        .end stack 
L569:   aload_2 
L570:   iload 6 
L572:   invokevirtual Method org/json/JSONArray getJSONObject (I)Lorg/json/JSONObject; 
L575:   astore 7 
L577:   aload 7 
L579:   ldc_w 'id' 
L582:   invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L585:   astore 8 
L587:   aload 8 
L589:   ldc_w '' 
L592:   invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L595:   ifne L947 
L598:   aload 8 
L600:   ldc_w '#' 
L603:   invokevirtual Method java/lang/String startsWith (Ljava/lang/String;)Z 
L606:   ifeq L612 
L609:   goto L947 

        .stack append Object org/json/JSONObject Object java/lang/String 
L612:   ldc_w Class com/fs/starfarer/loading/SkillSpec 
L615:   aload 8 
L617:   invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object; 
L620:   checkcast com/fs/starfarer/loading/SkillSpec 
L623:   astore 9 
L625:   aload 9 
L627:   aload 7 
L629:   invokevirtual Method com/fs/starfarer/loading/SkillSpec setSourceMod (Lorg/json/JSONObject;)V 
L632:   aload 9 
L634:   aload 7 
L636:   ldc_w 'order' 
L639:   invokevirtual Method org/json/JSONObject getDouble (Ljava/lang/String;)D 
L642:   d2f 
L643:   invokevirtual Method com/fs/starfarer/loading/SkillSpec setOrder (F)V 
L646:   aload 7 
L648:   ldc_w 'combat officer' 
L651:   invokevirtual Method org/json/JSONObject has (Ljava/lang/String;)Z 
L654:   ifeq L671 
L657:   aload 9 
L659:   aload 7 
L661:   ldc_w 'combat officer' 
L664:   iconst_0 
L665:   invokevirtual Method org/json/JSONObject optBoolean (Ljava/lang/String;Z)Z 
L668:   invokevirtual Method com/fs/starfarer/loading/SkillSpec setCombatOfficerSkill (Z)V 

        .stack append Object com/fs/starfarer/loading/SkillSpec 
L671:   aload 7 
L673:   ldc_w 'admiral' 
L676:   invokevirtual Method org/json/JSONObject has (Ljava/lang/String;)Z 
L679:   ifeq L696 
L682:   aload 9 
L684:   aload 7 
L686:   ldc_w 'admiral' 
L689:   iconst_0 
L690:   invokevirtual Method org/json/JSONObject optBoolean (Ljava/lang/String;Z)Z 
L693:   invokevirtual Method com/fs/starfarer/loading/SkillSpec setAdmiralSkill (Z)V 

        .stack same 
L696:   aload 7 
L698:   ldc_w 'admin' 
L701:   invokevirtual Method org/json/JSONObject has (Ljava/lang/String;)Z 
L704:   ifeq L721 
L707:   aload 9 
L709:   aload 7 
L711:   ldc_w 'admin' 
L714:   iconst_0 
L715:   invokevirtual Method org/json/JSONObject optBoolean (Ljava/lang/String;Z)Z 
L718:   invokevirtual Method com/fs/starfarer/loading/SkillSpec setAdminSkill (Z)V 

        .stack same 
L721:   aload 9 
L723:   aload 7 
L725:   ldc_w 'icon' 
L728:   invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L731:   invokevirtual Method com/fs/starfarer/loading/SkillSpec setSpriteName (Ljava/lang/String;)V 
L734:   aload 9 
L736:   invokevirtual Method com/fs/starfarer/loading/SkillSpec isAptitudeEffect ()Z 
L739:   ifne L852 
L742:   aload 9 
L744:   aload 7 
L746:   ldc_w 'name' 
L749:   invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L752:   invokevirtual Method com/fs/starfarer/loading/SkillSpec setName (Ljava/lang/String;)V 
L755:   aload 9 
L757:   aload 7 
L759:   ldc_w 'description' 
L762:   invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L765:   invokestatic Method com/fs/starfarer/loading/SpecStore 'Ó00000' (Ljava/lang/String;)Ljava/lang/String; 
L768:   invokevirtual Method com/fs/starfarer/loading/SkillSpec setDescription (Ljava/lang/String;)V 
L771:   aload 9 
L773:   aload 7 
L775:   ldc_w 'author' 
L778:   aconst_null 
L779:   invokevirtual Method org/json/JSONObject optString (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 
L782:   invokevirtual Method com/fs/starfarer/loading/SkillSpec setAuthor (Ljava/lang/String;)V 
L785:   aload 9 
L787:   invokevirtual Method com/fs/starfarer/loading/SkillSpec getAuthor ()Ljava/lang/String; 
L790:   ifnull L810 
L793:   aload 9 
L795:   invokevirtual Method com/fs/starfarer/loading/SkillSpec getAuthor ()Ljava/lang/String; 
L798:   invokevirtual Method java/lang/String isEmpty ()Z 
L801:   ifeq L810 
L804:   aload 9 
L806:   aconst_null 
L807:   invokevirtual Method com/fs/starfarer/loading/SkillSpec setAuthor (Ljava/lang/String;)V 

        .stack same_extended 
L810:   aload 9 
L812:   aload 7 
L814:   ldc_w 'tier' 
L817:   iconst_1 
L818:   invokevirtual Method org/json/JSONObject optInt (Ljava/lang/String;I)I 
L821:   invokevirtual Method com/fs/starfarer/loading/SkillSpec setTier (I)V 
L824:   aload 9 
L826:   aload 7 
L828:   ldc_w 'reqPoints' 
L831:   iconst_0 
L832:   invokevirtual Method org/json/JSONObject optInt (Ljava/lang/String;I)I 
L835:   invokevirtual Method com/fs/starfarer/loading/SkillSpec setReqPoints (I)V 
L838:   aload 9 
L840:   aload 7 
L842:   ldc_w 'reqPointsPerExtraSkill' 
L845:   iconst_0 
L846:   invokevirtual Method org/json/JSONObject optInt (Ljava/lang/String;I)I 
L849:   invokevirtual Method com/fs/starfarer/loading/SkillSpec setReqPointsPer (I)V 

        .stack same 
L852:   aload 7 
L854:   ldc_w 'tags' 
L857:   aconst_null 
L858:   invokevirtual Method org/json/JSONObject optString (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 
L861:   astore 10 
L863:   aload 10 
L865:   ifnull L934 
L868:   aload 10 
L870:   ldc_w ',' 
L873:   invokevirtual Method java/lang/String split (Ljava/lang/String;)[Ljava/lang/String; 
L876:   astore 11 
L878:   aload 11 
L880:   dup 
L881:   astore 15 
L883:   arraylength 
L884:   istore 14 
L886:   iconst_0 
L887:   istore 13 
L889:   goto L927 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/Map Object org/json/JSONArray Object java/util/List Object java/util/List Object java/util/Set Integer Object org/json/JSONObject Object java/lang/String Object com/fs/starfarer/loading/SkillSpec Object java/lang/String Object [Ljava/lang/String; Top Integer Integer Object [Ljava/lang/String; 
            stack 
        .end stack 
L892:   aload 15 
L894:   iload 13 
L896:   aaload 
L897:   astore 12 
L899:   aload 12 
L901:   invokevirtual Method java/lang/String trim ()Ljava/lang/String; 
L904:   astore 12 
L906:   aload 12 
L908:   invokevirtual Method java/lang/String isEmpty ()Z 
L911:   ifeq L917 
L914:   goto L924 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/Map Object org/json/JSONArray Object java/util/List Object java/util/List Object java/util/Set Integer Object org/json/JSONObject Object java/lang/String Object com/fs/starfarer/loading/SkillSpec Object java/lang/String Object [Ljava/lang/String; Object java/lang/String Integer Integer Object [Ljava/lang/String; 
            stack 
        .end stack 
L917:   aload 9 
L919:   aload 12 
L921:   invokevirtual Method com/fs/starfarer/loading/SkillSpec addTag (Ljava/lang/String;)V 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/Map Object org/json/JSONArray Object java/util/List Object java/util/List Object java/util/Set Integer Object org/json/JSONObject Object java/lang/String Object com/fs/starfarer/loading/SkillSpec Object java/lang/String Object [Ljava/lang/String; Top Integer Integer Object [Ljava/lang/String; 
            stack 
        .end stack 
L924:   iinc 13 1 

        .stack same 
L927:   iload 13 
L929:   iload 14 
L931:   if_icmplt L892 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/Map Object org/json/JSONArray Object java/util/List Object java/util/List Object java/util/Set Integer Object org/json/JSONObject Object java/lang/String Object com/fs/starfarer/loading/SkillSpec Object java/lang/String 
            stack 
        .end stack 
L934:   aload_0 
L935:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L938:   aload 9 
L940:   invokevirtual Method com/fs/starfarer/loading/SkillSpec getSpriteName ()Ljava/lang/String; 
L943:   iconst_1 
L944:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u22] 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/Map Object org/json/JSONArray Object java/util/List Object java/util/List Object java/util/Set Integer 
            stack 
        .end stack 
L947:   iinc 6 1 

        .stack same 
L950:   iload 6 
L952:   aload_2 
L953:   invokevirtual Method org/json/JSONArray length ()I 
L956:   if_icmplt L569 
L959:   return 
L960:   
    .end code 
.end method 

.method public static 'õ00000' : (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
    .exceptions java/io/IOException org/json/JSONException 
    .code stack 8 locals 7 
L0:     getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L3:     ldc_w 'Loading aptitude_data.csv' 
L6:     invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L9:     ldc_w 'id' 
L12:    ldc_w 'data/characters/skills/aptitude_data.csv' 
L15:    iconst_1 
L16:    invokestatic Method com/fs/starfarer/loading/LoadingUtils 'Ò00000' (Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONArray; 
L19:    astore_1 
L20:    iconst_0 
L21:    istore_2 
L22:    goto L363 

        .stack append Object org/json/JSONArray Integer 
L25:    aload_1 
L26:    iload_2 
L27:    invokevirtual Method org/json/JSONArray getJSONObject (I)Lorg/json/JSONObject; 
L30:    astore_3 
L31:    new com/fs/starfarer/loading/o0OO 
L34:    dup 
L35:    invokespecial Method com/fs/starfarer/loading/o0OO <init> ()V 
L38:    astore 4 
L40:    aload 4 
L42:    aload_3 
L43:    ldc_w 'id' 
L46:    invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L49:    invokevirtual Method com/fs/starfarer/loading/o0OO 'Ò00000' (Ljava/lang/String;)V 
L52:    aload 4 
L54:    aload_3 
L55:    ldc_w 'name' 
L58:    invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L61:    invokevirtual Method com/fs/starfarer/loading/o0OO 'Ø00000' (Ljava/lang/String;)V 
L64:    aload 4 
L66:    aload_3 
L67:    ldc_w 'description' 
L70:    invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L73:    invokevirtual Method com/fs/starfarer/loading/o0OO int (Ljava/lang/String;)V 
L76:    aload 4 
L78:    aload_3 
L79:    ldc_w 'order' 
L82:    invokevirtual Method org/json/JSONObject getInt (Ljava/lang/String;)I 
L85:    invokevirtual Method com/fs/starfarer/loading/o0OO o00000 (I)V 
L88:    aload 4 
L90:    aload_3 
L91:    ldc_w 'effect_skill_id' 
L94:    invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L97:    invokevirtual Method com/fs/starfarer/loading/o0OO for (Ljava/lang/String;)V 
L100:   aload_3 
L101:   ldc_w 'color' 
L104:   invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L107:   astore 5 
L109:   aload 4 
L111:   aload_3 
L112:   ldc_w 'sound1' 
L115:   ldc_w 'combat1' 
L118:   invokevirtual Method org/json/JSONObject optString (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 
L121:   invokevirtual Method com/fs/starfarer/loading/o0OO oO0000 (Ljava/lang/String;)V 
L124:   aload 4 
L126:   aload_3 
L127:   ldc_w 'sound2' 
L130:   ldc_w 'combat2' 
L133:   invokevirtual Method org/json/JSONObject optString (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 
L136:   invokevirtual Method com/fs/starfarer/loading/o0OO 'Õ00000' (Ljava/lang/String;)V 
L139:   aload 4 
L141:   aload_3 
L142:   ldc_w 'sound3' 
L145:   ldc_w 'combat3' 
L148:   invokevirtual Method org/json/JSONObject optString (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 
L151:   invokevirtual Method com/fs/starfarer/loading/o0OO 'ô00000' (Ljava/lang/String;)V 
L154:   aload 4 
L156:   aload_3 
L157:   ldc_w 'sound4' 
L160:   ldc_w 'combat4' 
L163:   invokevirtual Method org/json/JSONObject optString (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 
L166:   invokevirtual Method com/fs/starfarer/loading/o0OO 'ø00000' (Ljava/lang/String;)V 
L169:   aload 4 
L171:   aload_3 
L172:   ldc_w 'sound5' 
L175:   ldc_w 'combat5' 
L178:   invokevirtual Method org/json/JSONObject optString (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 
L181:   invokevirtual Method com/fs/starfarer/loading/o0OO 'Ô00000' (Ljava/lang/String;)V 
L184:   aload 4 
L186:   aload_3 
L187:   ldc_w 'elite_overlay' 
L190:   aconst_null 
L191:   invokevirtual Method org/json/JSONObject optString (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 
L194:   invokevirtual Method com/fs/starfarer/loading/o0OO o00000 (Ljava/lang/String;)V 
L197:   aload 4 
L199:   aload_3 
L200:   ldc_w 'elite_overlay_medium' 
L203:   aload 4 
L205:   invokevirtual Method com/fs/starfarer/loading/o0OO 'ÔO0000' ()Ljava/lang/String; 
L208:   invokevirtual Method org/json/JSONObject optString (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 
L211:   invokevirtual Method com/fs/starfarer/loading/o0OO 'ö00000' (Ljava/lang/String;)V 
L214:   aload 4 
L216:   aload_3 
L217:   ldc_w 'elite_overlay_small' 
L220:   aload 4 
L222:   invokevirtual Method com/fs/starfarer/loading/o0OO for ()Ljava/lang/String; 
L225:   invokevirtual Method org/json/JSONObject optString (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 
L228:   invokevirtual Method com/fs/starfarer/loading/o0OO Object (Ljava/lang/String;)V 
L231:   aload 4 
L233:   aload_3 
L234:   ldc_w 'sound_story' 
L237:   ldc_w 'ui_char_spent_story_point' 
L240:   invokevirtual Method org/json/JSONObject optString [u798] 
L243:   invokevirtual Method com/fs/starfarer/loading/o0OO return (Ljava/lang/String;)V 
L246:   aload_0 
L247:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L250:   aload 4 
L252:   invokevirtual Method com/fs/starfarer/loading/o0OO 'ÔO0000' ()Ljava/lang/String; 
L255:   iconst_1 
L256:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u22] 
L259:   aload_0 
L260:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L263:   aload 4 
L265:   invokevirtual Method com/fs/starfarer/loading/o0OO for ()Ljava/lang/String; 
L268:   iconst_1 
L269:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u22] 
L272:   aload_0 
L273:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L276:   aload 4 
L278:   invokevirtual Method com/fs/starfarer/loading/o0OO 'Ò00000' ()Ljava/lang/String; 
L281:   iconst_1 
L282:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u22] 
L285:   aload 5 
L287:   ldc_w ',' 
L290:   invokevirtual Method java/lang/String split (Ljava/lang/String;)[Ljava/lang/String; 
L293:   astore 6 
L295:   aload 4 
L297:   new java/awt/Color 
L300:   dup 
L301:   aload 6 
L303:   iconst_0 
L304:   aaload 
L305:   invokestatic Method java/lang/Integer valueOf (Ljava/lang/String;)Ljava/lang/Integer; 
L308:   invokevirtual Method java/lang/Integer intValue ()I 
L311:   aload 6 
L313:   iconst_1 
L314:   aaload 
L315:   invokestatic Method java/lang/Integer valueOf (Ljava/lang/String;)Ljava/lang/Integer; 
L318:   invokevirtual Method java/lang/Integer intValue ()I 
L321:   aload 6 
L323:   iconst_2 
L324:   aaload 
L325:   invokestatic Method java/lang/Integer valueOf (Ljava/lang/String;)Ljava/lang/Integer; 
L328:   invokevirtual Method java/lang/Integer intValue ()I 
L331:   aload 6 
L333:   iconst_3 
L334:   aaload 
L335:   invokestatic Method java/lang/Integer valueOf (Ljava/lang/String;)Ljava/lang/Integer; 
L338:   invokevirtual Method java/lang/Integer intValue ()I 
L341:   invokespecial Method java/awt/Color <init> (IIII)V 
L344:   invokevirtual Method com/fs/starfarer/loading/o0OO o00000 (Ljava/awt/Color;)V 
L347:   ldc_w Class com/fs/starfarer/loading/o0OO 
L350:   aload 4 
L352:   invokevirtual Method com/fs/starfarer/loading/o0OO 'ø00000' ()Ljava/lang/String; 
L355:   aload 4 
L357:   invokestatic Method com/fs/starfarer/loading/SpecStore o00000 [u346] 
L360:   iinc 2 1 

        .stack same_extended 
L363:   iload_2 
L364:   aload_1 
L365:   invokevirtual Method org/json/JSONArray length ()I 
L368:   if_icmplt L25 
L371:   return 
L372:   
    .end code 
.end method 

.method public static new : (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
    .exceptions java/io/IOException org/json/JSONException 
    .code stack 4 locals 9 
L0:     getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L3:     ldc_w 'Loading engine style data' 
L6:     invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L9:     ldc_w 'data/config/engine_styles.json' 
L12:    invokestatic Method com/fs/starfarer/loading/LoadingUtils 'Ó00000' (Ljava/lang/String;)Lorg/json/JSONObject; 
L15:    astore_1 
L16:    aload_1 
L17:    invokestatic Method org/json/JSONObject getNames (Lorg/json/JSONObject;)[Ljava/lang/String; 
L20:    dup 
L21:    astore 5 
L23:    arraylength 
L24:    istore 4 
L26:    iconst_0 
L27:    istore_3 
L28:    goto L105 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Top Integer Integer Object [Ljava/lang/String; 
            stack 
        .end stack 
L31:    aload 5 
L33:    iload_3 
L34:    aaload 
L35:    astore_2 
L36:    aload_1 
L37:    aload_2 
L38:    invokevirtual Method org/json/JSONObject optJSONObject (Ljava/lang/String;)Lorg/json/JSONObject; 
L41:    astore 6 
L43:    aload 6 
L45:    ifnonnull L51 
L48:    goto L102 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Object java/lang/String Integer Integer Object [Ljava/lang/String; Object org/json/JSONObject 
            stack 
        .end stack 
L51:    new com/fs/starfarer/loading/specs/O0OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$Oo 
L54:    dup 
L55:    aload 6 
L57:    aload_2 
L58:    invokespecial Method com/fs/starfarer/loading/specs/O0OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$Oo <init> (Lorg/json/JSONObject;Ljava/lang/String;)V 
L61:    astore 7 
L63:    aload_0 
L64:    ifnull L93 
L67:    aload_0 
L68:    getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L71:    aload 7 
L73:    invokevirtual Method com/fs/starfarer/loading/specs/O0OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$Oo 'Ó00000' ()Ljava/lang/String; 
L76:    iconst_1 
L77:    invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u22] 
L80:    aload_0 
L81:    getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L84:    aload 7 
L86:    invokevirtual Method com/fs/starfarer/loading/specs/O0OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$Oo 'Ò00000' ()Ljava/lang/String; 
L89:    iconst_1 
L90:    invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u22] 

        .stack append Object com/fs/starfarer/loading/specs/O0OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$Oo 
L93:    ldc_w Class com/fs/starfarer/loading/specs/O0OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$Oo 
L96:    aload_2 
L97:    aload 7 
L99:    invokestatic Method com/fs/starfarer/loading/SpecStore o00000 [u346] 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Top Integer Integer Object [Ljava/lang/String; 
            stack 
        .end stack 
L102:   iinc 3 1 

        .stack same 
L105:   iload_3 
L106:   iload 4 
L108:   if_icmplt L31 
L111:   getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L114:   ldc_w 'Loading hull style data' 
L117:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L120:   ldc_w 'data/config/hull_styles.json' 
L123:   invokestatic Method com/fs/starfarer/loading/LoadingUtils 'Ó00000' (Ljava/lang/String;)Lorg/json/JSONObject; 
L126:   astore_2 
L127:   aload_2 
L128:   invokestatic Method org/json/JSONObject getNames (Lorg/json/JSONObject;)[Ljava/lang/String; 
L131:   dup 
L132:   astore 6 
L134:   arraylength 
L135:   istore 5 
L137:   iconst_0 
L138:   istore 4 
L140:   goto L361 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Object org/json/JSONObject Top Integer Integer Object [Ljava/lang/String; 
            stack 
        .end stack 
L143:   aload 6 
L145:   iload 4 
L147:   aaload 
L148:   astore_3 
L149:   aload_2 
L150:   aload_3 
L151:   invokevirtual Method org/json/JSONObject optJSONObject (Ljava/lang/String;)Lorg/json/JSONObject; 
L154:   astore 7 
L156:   aload 7 
L158:   ifnonnull L164 
L161:   goto L358 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Object org/json/JSONObject Object java/lang/String Integer Integer Object [Ljava/lang/String; Object org/json/JSONObject 
            stack 
        .end stack 
L164:   new com/fs/starfarer/loading/specs/OoOO 
L167:   dup 
L168:   aload_3 
L169:   aload 7 
L171:   invokespecial Method com/fs/starfarer/loading/specs/OoOO <init> (Ljava/lang/String;Lorg/json/JSONObject;)V 
L174:   astore 8 
L176:   ldc_w Class com/fs/starfarer/loading/specs/OoOO 
L179:   aload_3 
L180:   aload 8 
L182:   invokestatic Method com/fs/starfarer/loading/SpecStore o00000 [u346] 
L185:   aload_0 
L186:   ifnull L358 
L189:   aload_0 
L190:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L193:   aload 8 
L195:   invokevirtual Method com/fs/starfarer/loading/specs/OoOO for ()Ljava/lang/String; 
L198:   iconst_1 
L199:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u22] 
L202:   aload_0 
L203:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L206:   aload 8 
L208:   invokevirtual Method com/fs/starfarer/loading/specs/OoOO 'Object.new' ()Ljava/lang/String; 
L211:   iconst_1 
L212:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u22] 
L215:   aload_0 
L216:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L219:   aload 8 
L221:   invokevirtual Method com/fs/starfarer/loading/specs/OoOO 'ÒÒ0000' ()Ljava/lang/String; 
L224:   iconst_1 
L225:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u22] 
L228:   aload_0 
L229:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L232:   aload 8 
L234:   invokevirtual Method com/fs/starfarer/loading/specs/OoOO 'Òo0000' ()Ljava/lang/String; 
L237:   iconst_1 
L238:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u22] 
L241:   aload_0 
L242:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L245:   aload 8 
L247:   invokevirtual Method com/fs/starfarer/loading/specs/OoOO 'ø00000' ()Ljava/lang/String; 
L250:   iconst_1 
L251:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u22] 
L254:   aload_0 
L255:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L258:   aload 8 
L260:   invokevirtual Method com/fs/starfarer/loading/specs/OoOO 'Õ00000' ()Ljava/lang/String; 
L263:   iconst_1 
L264:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u22] 
L267:   aload_0 
L268:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L271:   aload 8 
L273:   invokevirtual Method com/fs/starfarer/loading/specs/OoOO 'ô00000' ()Ljava/lang/String; 
L276:   iconst_1 
L277:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u22] 
L280:   aload_0 
L281:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L284:   aload 8 
L286:   invokevirtual Method com/fs/starfarer/loading/specs/OoOO 'for.super' ()Ljava/lang/String; 
L289:   iconst_1 
L290:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u22] 
L293:   aload_0 
L294:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L297:   aload 8 
L299:   invokevirtual Method com/fs/starfarer/loading/specs/OoOO oO0000 ()Ljava/lang/String; 
L302:   iconst_1 
L303:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u22] 
L306:   aload_0 
L307:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L310:   aload 8 
L312:   invokevirtual Method com/fs/starfarer/loading/specs/OoOO 'öO0000' ()Ljava/lang/String; 
L315:   iconst_1 
L316:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u22] 
L319:   aload_0 
L320:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L323:   aload 8 
L325:   invokevirtual Method com/fs/starfarer/loading/specs/OoOO 'Ô00000' ()Ljava/lang/String; 
L328:   iconst_1 
L329:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u22] 
L332:   aload_0 
L333:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L336:   aload 8 
L338:   invokevirtual Method com/fs/starfarer/loading/specs/OoOO 'Object.super' ()Ljava/lang/String; 
L341:   iconst_1 
L342:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u22] 
L345:   aload_0 
L346:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L349:   aload 8 
L351:   invokevirtual Method com/fs/starfarer/loading/specs/OoOO 'Õo0000' ()Ljava/lang/String; 
L354:   iconst_1 
L355:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u22] 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Object org/json/JSONObject Top Integer Integer Object [Ljava/lang/String; 
            stack 
        .end stack 
L358:   iinc 4 1 

        .stack same 
L361:   iload 4 
L363:   iload 5 
L365:   if_icmplt L143 
L368:   return 
L369:   
    .end code 
.end method 

.method public static 'new.super' : (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
    .exceptions org/json/JSONException java/io/IOException 
    .code stack 6 locals 15 
L0:     ldc_w Class com/fs/starfarer/loading/specs/do 
L3:     invokestatic Method com/fs/starfarer/loading/SpecStore new (Ljava/lang/Class;)Ljava/util/Map; 
L6:     astore_1 
L7:     aload_1 
L8:     invokeinterface InterfaceMethod java/util/Map clear ()V 1 
L13:    ldc_w 'data/shipsystems' 
L16:    ldc_w 'system' 
L19:    invokestatic Method com/fs/starfarer/loading/LoadingUtils 'super' (Ljava/lang/String;Ljava/lang/String;)Ljava/util/List; 
L22:    astore_2 
L23:    aload_2 
L24:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L29:    astore 4 
L31:    goto L364 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/Map Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L34:    aload 4 
L36:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L41:    checkcast java/lang/String 
L44:    astore_3 
L45:    getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L48:    new java/lang/StringBuilder 
L51:    dup 
L52:    ldc_w 'Loading ship system [' 
L55:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L58:    aload_3 
L59:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L62:    ldc_w ']' 
L65:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L68:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L71:    invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L74:    new com/fs/starfarer/loading/specs/do 
L77:    dup 
L78:    aload_3 
L79:    invokestatic Method com/fs/starfarer/loading/LoadingUtils 'Ó00000' (Ljava/lang/String;)Lorg/json/JSONObject; 
L82:    invokespecial Method com/fs/starfarer/loading/specs/do <init> (Lorg/json/JSONObject;)V 
L85:    astore 5 
L87:    ldc_w Class com/fs/starfarer/loading/specs/do 
L90:    aload 5 
L92:    invokevirtual Method com/fs/starfarer/loading/specs/do getId ()Ljava/lang/String; 
L95:    invokestatic Method com/fs/starfarer/loading/SpecStore new (Ljava/lang/Class;Ljava/lang/String;)Z 
L98:    ifeq L104 
L101:   goto L364 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/Map Object java/util/List Object java/lang/String Object java/util/Iterator Object com/fs/starfarer/loading/specs/do 
            stack 
        .end stack 
L104:   aload 5 
L106:   invokevirtual Method com/fs/starfarer/loading/specs/do getStatsScriptClassName ()Ljava/lang/String; 
L109:   astore 6 
L111:   aload 6 
L113:   ifnull L125 
L116:   aload_0 
L117:   ifnull L125 
L120:   aload 6 
L122:   invokestatic Method com/fs/starfarer/loading/scripts/ScriptStore Object (Ljava/lang/String;)V 

        .stack append Object java/lang/String 
L125:   aload 5 
L127:   invokevirtual Method com/fs/starfarer/loading/specs/do getAIScriptClassName ()Ljava/lang/String; 
L130:   astore 7 
L132:   aload 7 
L134:   ifnull L146 
L137:   aload_0 
L138:   ifnull L146 
L141:   aload 7 
L143:   invokestatic Method com/fs/starfarer/loading/scripts/ScriptStore Object (Ljava/lang/String;)V 

        .stack append Object java/lang/String 
L146:   ldc_w Class com/fs/starfarer/loading/specs/do 
L149:   aload 5 
L151:   invokevirtual Method com/fs/starfarer/loading/specs/do getId ()Ljava/lang/String; 
L154:   aload 5 
L156:   invokestatic Method com/fs/starfarer/loading/SpecStore o00000 [u346] 
L159:   aload 5 
L161:   invokevirtual Method com/fs/starfarer/loading/specs/do getPhaseHighlight ()Ljava/lang/String; 
L164:   astore 8 
L166:   aload 5 
L168:   invokevirtual Method com/fs/starfarer/loading/specs/do getPhaseDiffuse ()Ljava/lang/String; 
L171:   astore 9 
L173:   aload 8 
L175:   ifnull L364 
L178:   aload 9 
L180:   ifnull L364 
L183:   aload_0 
L184:   ifnull L364 
L187:   invokestatic Method com/fs/starfarer/loading/oO0O 'Ò00000' ()Ljava/util/Collection; 
L190:   invokeinterface InterfaceMethod java/util/Collection iterator ()Ljava/util/Iterator; 1 
L195:   astore 11 
L197:   goto L354 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/Map Object java/util/List Object java/lang/String Object java/util/Iterator Object com/fs/starfarer/loading/specs/do Object java/lang/String Object java/lang/String Object java/lang/String Object java/lang/String Top Object java/util/Iterator 
            stack 
        .end stack 
L200:   aload 11 
L202:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L207:   checkcast java/lang/String 
L210:   astore 10 
L212:   aload 10 
L214:   invokestatic Method com/fs/starfarer/loading/oO0O 'super' (Ljava/lang/String;)Lcom/fs/starfarer/loading/specs/g; 
L217:   astore 12 
L219:   aload 12 
L221:   ifnonnull L227 
L224:   goto L354 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/Map Object java/util/List Object java/lang/String Object java/util/Iterator Object com/fs/starfarer/loading/specs/do Object java/lang/String Object java/lang/String Object java/lang/String Object java/lang/String Object java/lang/String Object java/util/Iterator Object com/fs/starfarer/loading/specs/g 
            stack 
        .end stack 
L227:   aload 12 
L229:   invokevirtual Method com/fs/starfarer/loading/specs/g isPhase ()Z 
L232:   ifne L238 
L235:   goto L354 

        .stack same 
L238:   aload 12 
L240:   invokevirtual Method com/fs/starfarer/loading/specs/g getShipSystemId ()Ljava/lang/String; 
L243:   ifnull L262 
L246:   aload 12 
L248:   invokevirtual Method com/fs/starfarer/loading/specs/g getShipSystemId ()Ljava/lang/String; 
L251:   aload 5 
L253:   invokevirtual Method com/fs/starfarer/loading/specs/do getId ()Ljava/lang/String; 
L256:   invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L259:   ifne L276 

        .stack same 
L262:   aload 12 
L264:   invokevirtual Method com/fs/starfarer/loading/specs/g getShieldSpec ()Lcom/fs/starfarer/loading/specs/OOOo; 
L267:   invokevirtual Method com/fs/starfarer/loading/specs/OOOo getType ()Lcom/fs/starfarer/api/combat/ShieldAPI$ShieldType; 
L270:   getstatic Field com/fs/starfarer/api/combat/ShieldAPI$ShieldType PHASE Lcom/fs/starfarer/api/combat/ShieldAPI$ShieldType; 
L273:   if_acmpne L354 

        .stack same 
L276:   aload 5 
L278:   aload 12 
L280:   invokevirtual Method com/fs/starfarer/loading/specs/do getPhaseHighlightSpriteName (Lcom/fs/starfarer/loading/specs/g;)Ljava/lang/String; 
L283:   astore 13 
L285:   aload 5 
L287:   aload 12 
L289:   invokevirtual Method com/fs/starfarer/loading/specs/do getPhaseDiffuseSpriteName (Lcom/fs/starfarer/loading/specs/g;)Ljava/lang/String; 
L292:   astore 14 
L294:   aload_0 
L295:   ifnull L324 
L298:   aload 13 
L300:   ifnull L324 
L303:   aload 13 
L305:   ldc_w '' 
L308:   invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L311:   ifne L324 
L314:   aload_0 
L315:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L318:   aload 13 
L320:   iconst_1 
L321:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u22] 

        .stack append Object java/lang/String Object java/lang/String 
L324:   aload_0 
L325:   ifnull L354 
L328:   aload 14 
L330:   ifnull L354 
L333:   aload 14 
L335:   ldc_w '' 
L338:   invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L341:   ifne L354 
L344:   aload_0 
L345:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L348:   aload 14 
L350:   iconst_1 
L351:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u22] 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/Map Object java/util/List Object java/lang/String Object java/util/Iterator Object com/fs/starfarer/loading/specs/do Object java/lang/String Object java/lang/String Object java/lang/String Object java/lang/String Top Object java/util/Iterator 
            stack 
        .end stack 
L354:   aload 11 
L356:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L361:   ifne L200 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/Map Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L364:   aload 4 
L366:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L371:   ifne L34 
L374:   new java/util/ArrayList 
L377:   dup 
L378:   ldc_w Class com/fs/starfarer/loading/specs/do 
L381:   invokestatic Method com/fs/starfarer/loading/SpecStore 'Ô00000' (Ljava/lang/Class;)Ljava/util/Collection; 
L384:   invokespecial Method java/util/ArrayList <init> (Ljava/util/Collection;)V 
L387:   astore_3 
L388:   ldc_w 'id' 
L391:   ldc_w 'data/shipsystems/ship_systems.csv' 
L394:   invokestatic Method com/fs/starfarer/loading/LoadingUtils 'Ó00000' (Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray; 
L397:   astore 4 
L399:   iconst_0 
L400:   istore 5 
L402:   goto L1068 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/Map Object java/util/List Object java/util/List Object org/json/JSONArray Integer 
            stack 
        .end stack 
L405:   aload 4 
L407:   iload 5 
L409:   invokevirtual Method org/json/JSONArray getJSONObject (I)Lorg/json/JSONObject; 
L412:   astore 6 
L414:   aload 6 
L416:   ldc_w 'id' 
L419:   invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L422:   astore 7 
L424:   aload 7 
L426:   ldc_w '' 
L429:   invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L432:   ifeq L438 
L435:   goto L1065 

        .stack append Object org/json/JSONObject Object java/lang/String 
L438:   ldc_w Class com/fs/starfarer/loading/specs/do 
L441:   aload 7 
L443:   invokestatic Method com/fs/starfarer/loading/SpecStore new (Ljava/lang/Class;Ljava/lang/String;)Z 
L446:   ifne L473 
L449:   getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L452:   ldc_w 'Ship system [%s] from ship_systems.csv not found in store' 
L455:   iconst_1 
L456:   anewarray java/lang/Object 
L459:   dup 
L460:   iconst_0 
L461:   aload 7 
L463:   aastore 
L464:   invokestatic Method java/lang/String format (Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String; 
L467:   invokevirtual Method org/apache/log4j/Logger warn (Ljava/lang/Object;)V 
L470:   goto L1065 

        .stack same 
L473:   ldc_w Class com/fs/starfarer/loading/specs/do 
L476:   aload 7 
L478:   invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object; 
L481:   checkcast com/fs/starfarer/loading/specs/do 
L484:   astore 8 
L486:   aload 8 
L488:   aload 6 
L490:   invokevirtual Method com/fs/starfarer/loading/specs/do setSourceMod (Lorg/json/JSONObject;)V 
L493:   getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L496:   ldc_w 'Applying data from ship_systems.csv to [%s]' 
L499:   iconst_1 
L500:   anewarray java/lang/Object 
L503:   dup 
L504:   iconst_0 
L505:   aload 7 
L507:   aastore 
L508:   invokestatic Method java/lang/String format (Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String; 
L511:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L514:   aload 6 
L516:   ldc_w 'tags' 
L519:   aconst_null 
L520:   invokevirtual Method org/json/JSONObject optString [u798] 
L523:   astore 9 
L525:   aload 9 
L527:   ifnull L596 
L530:   aload 9 
L532:   ldc_w ',' 
L535:   invokevirtual Method java/lang/String split (Ljava/lang/String;)[Ljava/lang/String; 
L538:   astore 10 
L540:   aload 10 
L542:   dup 
L543:   astore 14 
L545:   arraylength 
L546:   istore 13 
L548:   iconst_0 
L549:   istore 12 
L551:   goto L589 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/Map Object java/util/List Object java/util/List Object org/json/JSONArray Integer Object org/json/JSONObject Object java/lang/String Object com/fs/starfarer/loading/specs/do Object java/lang/String Object [Ljava/lang/String; Top Integer Integer Object [Ljava/lang/String; 
            stack 
        .end stack 
L554:   aload 14 
L556:   iload 12 
L558:   aaload 
L559:   astore 11 
L561:   aload 11 
L563:   invokevirtual Method java/lang/String trim ()Ljava/lang/String; 
L566:   astore 11 
L568:   aload 11 
L570:   invokevirtual Method java/lang/String isEmpty ()Z 
L573:   ifeq L579 
L576:   goto L586 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/Map Object java/util/List Object java/util/List Object org/json/JSONArray Integer Object org/json/JSONObject Object java/lang/String Object com/fs/starfarer/loading/specs/do Object java/lang/String Object [Ljava/lang/String; Object java/lang/String Integer Integer Object [Ljava/lang/String; 
            stack 
        .end stack 
L579:   aload 8 
L581:   aload 11 
L583:   invokevirtual Method com/fs/starfarer/loading/specs/do addTag (Ljava/lang/String;)V 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/Map Object java/util/List Object java/util/List Object org/json/JSONArray Integer Object org/json/JSONObject Object java/lang/String Object com/fs/starfarer/loading/specs/do Object java/lang/String Object [Ljava/lang/String; Top Integer Integer Object [Ljava/lang/String; 
            stack 
        .end stack 
L586:   iinc 12 1 

        .stack same 
L589:   iload 12 
L591:   iload 13 
L593:   if_icmplt L554 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/Map Object java/util/List Object java/util/List Object org/json/JSONArray Integer Object org/json/JSONObject Object java/lang/String Object com/fs/starfarer/loading/specs/do Object java/lang/String 
            stack 
        .end stack 
L596:   aload 8 
L598:   aload 6 
L600:   ldc_w 'name' 
L603:   invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L606:   invokevirtual Method com/fs/starfarer/loading/specs/do setName (Ljava/lang/String;)V 
L609:   aload 8 
L611:   aload 6 
L613:   ldc_w 'flux/second' 
L616:   dconst_0 
L617:   invokevirtual Method org/json/JSONObject optDouble (Ljava/lang/String;D)D 
L620:   d2f 
L621:   invokevirtual Method com/fs/starfarer/loading/specs/do setFluxPerSecond (F)V 
L624:   aload 8 
L626:   aload 6 
L628:   ldc_w 'f/s (base rate)' 
L631:   dconst_0 
L632:   invokevirtual Method org/json/JSONObject optDouble (Ljava/lang/String;D)D 
L635:   d2f 
L636:   invokevirtual Method com/fs/starfarer/loading/specs/do setFluxPerSecondBaseRate (F)V 
L639:   aload 8 
L641:   aload 6 
L643:   ldc_w 'f/s (base cap)' 
L646:   dconst_0 
L647:   invokevirtual Method org/json/JSONObject optDouble (Ljava/lang/String;D)D 
L650:   d2f 
L651:   invokevirtual Method com/fs/starfarer/loading/specs/do setFluxPerSecondBaseCap (F)V 
L654:   aload 8 
L656:   aload 6 
L658:   ldc_w 'flux/use' 
L661:   dconst_0 
L662:   invokevirtual Method org/json/JSONObject optDouble (Ljava/lang/String;D)D 
L665:   d2f 
L666:   invokevirtual Method com/fs/starfarer/loading/specs/do setFluxPerUse (F)V 
L669:   aload 8 
L671:   aload 6 
L673:   ldc_w 'f/u (base rate)' 
L676:   dconst_0 
L677:   invokevirtual Method org/json/JSONObject optDouble (Ljava/lang/String;D)D 
L680:   d2f 
L681:   invokevirtual Method com/fs/starfarer/loading/specs/do setFluxPerUseBaseRate (F)V 
L684:   aload 8 
L686:   aload 6 
L688:   ldc_w 'f/u (base cap)' 
L691:   dconst_0 
L692:   invokevirtual Method org/json/JSONObject optDouble (Ljava/lang/String;D)D 
L695:   d2f 
L696:   invokevirtual Method com/fs/starfarer/loading/specs/do setFluxPerUseBaseCap (F)V 
L699:   aload 8 
L701:   aload 6 
L703:   ldc_w 'cr/u' 
L706:   dconst_0 
L707:   invokevirtual Method org/json/JSONObject optDouble (Ljava/lang/String;D)D 
L710:   d2f 
L711:   invokevirtual Method com/fs/starfarer/loading/specs/do setCrPerUse (F)V 
L714:   aload 8 
L716:   aload 6 
L718:   ldc_w 'max uses' 
L721:   ldc_w 2147483647 
L724:   invokevirtual Method org/json/JSONObject optInt (Ljava/lang/String;I)I 
L727:   invokevirtual Method com/fs/starfarer/loading/specs/do setMaxUses (I)V 
L730:   aload 8 
L732:   aload 6 
L734:   ldc_w 'charge up' 
L737:   dconst_0 
L738:   invokevirtual Method org/json/JSONObject optDouble (Ljava/lang/String;D)D 
L741:   d2f 
L742:   invokevirtual Method com/fs/starfarer/loading/specs/do setIn (F)V 
L745:   aload 8 
L747:   aload 6 
L749:   ldc_w 'active' 
L752:   dconst_0 
L753:   invokevirtual Method org/json/JSONObject optDouble (Ljava/lang/String;D)D 
L756:   d2f 
L757:   invokevirtual Method com/fs/starfarer/loading/specs/do setActive (F)V 
L760:   aload 8 
L762:   aload 6 
L764:   ldc_w 'down' 
L767:   dconst_0 
L768:   invokevirtual Method org/json/JSONObject optDouble (Ljava/lang/String;D)D 
L771:   d2f 
L772:   invokevirtual Method com/fs/starfarer/loading/specs/do setOut (F)V 
L775:   aload 8 
L777:   aload 6 
L779:   ldc_w 'cooldown' 
L782:   dconst_0 
L783:   invokevirtual Method org/json/JSONObject optDouble (Ljava/lang/String;D)D 
L786:   d2f 
L787:   invokevirtual Method com/fs/starfarer/loading/specs/do setCooldown (F)V 
L790:   aload 8 
L792:   aload 6 
L794:   ldc_w 'regen' 
L797:   dconst_0 
L798:   invokevirtual Method org/json/JSONObject optDouble (Ljava/lang/String;D)D 
L801:   d2f 
L802:   invokevirtual Method com/fs/starfarer/loading/specs/do setRegen (F)V 
L805:   aload 8 
L807:   aload 6 
L809:   ldc_w 'toggle' 
L812:   iconst_0 
L813:   invokevirtual Method org/json/JSONObject optBoolean (Ljava/lang/String;Z)Z 
L816:   invokevirtual Method com/fs/starfarer/loading/specs/do setToggle (Z)V 
L819:   aload 8 
L821:   aload 6 
L823:   ldc_w 'noDissipation' 
L826:   iconst_0 
L827:   invokevirtual Method org/json/JSONObject optBoolean (Ljava/lang/String;Z)Z 
L830:   ifeq L837 
L833:   iconst_0 
L834:   goto L838 

        .stack stack_1_extended Object com/fs/starfarer/loading/specs/do 
L837:   iconst_1 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/Map Object java/util/List Object java/util/List Object org/json/JSONArray Integer Object org/json/JSONObject Object java/lang/String Object com/fs/starfarer/loading/specs/do Object java/lang/String 
            stack Object com/fs/starfarer/loading/specs/do Integer 
        .end stack 
L838:   invokevirtual Method com/fs/starfarer/loading/specs/do setDissipationAllowed (Z)V 
L841:   aload 8 
L843:   aload 6 
L845:   ldc_w 'noHardDissipation' 
L848:   iconst_0 
L849:   invokevirtual Method org/json/JSONObject optBoolean (Ljava/lang/String;Z)Z 
L852:   ifeq L859 
L855:   iconst_0 
L856:   goto L860 

        .stack stack_1 Object com/fs/starfarer/loading/specs/do 
L859:   iconst_1 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/Map Object java/util/List Object java/util/List Object org/json/JSONArray Integer Object org/json/JSONObject Object java/lang/String Object com/fs/starfarer/loading/specs/do Object java/lang/String 
            stack Object com/fs/starfarer/loading/specs/do Integer 
        .end stack 
L860:   invokevirtual Method com/fs/starfarer/loading/specs/do setHardDissipationAllowed (Z)V 
L863:   aload 8 
L865:   aload 6 
L867:   ldc_w 'noVent' 
L870:   iconst_0 
L871:   invokevirtual Method org/json/JSONObject optBoolean (Ljava/lang/String;Z)Z 
L874:   ifeq L881 
L877:   iconst_0 
L878:   goto L882 

        .stack stack_1 Object com/fs/starfarer/loading/specs/do 
L881:   iconst_1 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/Map Object java/util/List Object java/util/List Object org/json/JSONArray Integer Object org/json/JSONObject Object java/lang/String Object com/fs/starfarer/loading/specs/do Object java/lang/String 
            stack Object com/fs/starfarer/loading/specs/do Integer 
        .end stack 
L882:   invokevirtual Method com/fs/starfarer/loading/specs/do setVentingAllowed (Z)V 
L885:   aload 8 
L887:   aload 6 
L889:   ldc_w 'hardFlux' 
L892:   iconst_0 
L893:   invokevirtual Method org/json/JSONObject optBoolean (Ljava/lang/String;Z)Z 
L896:   invokevirtual Method com/fs/starfarer/loading/specs/do setGeneratesHardFlux (Z)V 
L899:   aload 8 
L901:   aload 6 
L903:   ldc_w 'noFiring' 
L906:   iconst_0 
L907:   invokevirtual Method org/json/JSONObject optBoolean (Ljava/lang/String;Z)Z 
L910:   ifeq L917 
L913:   iconst_0 
L914:   goto L918 

        .stack stack_1 Object com/fs/starfarer/loading/specs/do 
L917:   iconst_1 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/Map Object java/util/List Object java/util/List Object org/json/JSONArray Integer Object org/json/JSONObject Object java/lang/String Object com/fs/starfarer/loading/specs/do Object java/lang/String 
            stack Object com/fs/starfarer/loading/specs/do Integer 
        .end stack 
L918:   invokevirtual Method com/fs/starfarer/loading/specs/do setFiringAllowed (Z)V 
L921:   aload 8 
L923:   aload 6 
L925:   ldc_w 'noTurning' 
L928:   iconst_0 
L929:   invokevirtual Method org/json/JSONObject optBoolean (Ljava/lang/String;Z)Z 
L932:   ifeq L939 
L935:   iconst_0 
L936:   goto L940 

        .stack stack_1 Object com/fs/starfarer/loading/specs/do 
L939:   iconst_1 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/Map Object java/util/List Object java/util/List Object org/json/JSONArray Integer Object org/json/JSONObject Object java/lang/String Object com/fs/starfarer/loading/specs/do Object java/lang/String 
            stack Object com/fs/starfarer/loading/specs/do Integer 
        .end stack 
L940:   invokevirtual Method com/fs/starfarer/loading/specs/do setTurningAllowed (Z)V 
L943:   aload 8 
L945:   aload 6 
L947:   ldc_w 'noStrafing' 
L950:   iconst_0 
L951:   invokevirtual Method org/json/JSONObject optBoolean (Ljava/lang/String;Z)Z 
L954:   ifeq L961 
L957:   iconst_0 
L958:   goto L962 

        .stack stack_1 Object com/fs/starfarer/loading/specs/do 
L961:   iconst_1 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/Map Object java/util/List Object java/util/List Object org/json/JSONArray Integer Object org/json/JSONObject Object java/lang/String Object com/fs/starfarer/loading/specs/do Object java/lang/String 
            stack Object com/fs/starfarer/loading/specs/do Integer 
        .end stack 
L962:   invokevirtual Method com/fs/starfarer/loading/specs/do setStrafeAllowed (Z)V 
L965:   aload 8 
L967:   aload 6 
L969:   ldc_w 'noAccel' 
L972:   iconst_0 
L973:   invokevirtual Method org/json/JSONObject optBoolean (Ljava/lang/String;Z)Z 
L976:   ifeq L983 
L979:   iconst_0 
L980:   goto L984 

        .stack stack_1 Object com/fs/starfarer/loading/specs/do 
L983:   iconst_1 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/Map Object java/util/List Object java/util/List Object org/json/JSONArray Integer Object org/json/JSONObject Object java/lang/String Object com/fs/starfarer/loading/specs/do Object java/lang/String 
            stack Object com/fs/starfarer/loading/specs/do Integer 
        .end stack 
L984:   invokevirtual Method com/fs/starfarer/loading/specs/do setAccelerateAllowed (Z)V 
L987:   aload 8 
L989:   aload 6 
L991:   ldc_w 'noShield' 
L994:   iconst_0 
L995:   invokevirtual Method org/json/JSONObject optBoolean (Ljava/lang/String;Z)Z 
L998:   ifeq L1005 
L1001:  iconst_0 
L1002:  goto L1006 

        .stack stack_1 Object com/fs/starfarer/loading/specs/do 
L1005:  iconst_1 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/Map Object java/util/List Object java/util/List Object org/json/JSONArray Integer Object org/json/JSONObject Object java/lang/String Object com/fs/starfarer/loading/specs/do Object java/lang/String 
            stack Object com/fs/starfarer/loading/specs/do Integer 
        .end stack 
L1006:  invokevirtual Method com/fs/starfarer/loading/specs/do setShieldAllowed (Z)V 
L1009:  aload 8 
L1011:  aload 6 
L1013:  ldc_w 'isPhaseCloak' 
L1016:  iconst_0 
L1017:  invokevirtual Method org/json/JSONObject optBoolean (Ljava/lang/String;Z)Z 
L1020:  invokevirtual Method com/fs/starfarer/loading/specs/do setPhaseCloak (Z)V 
L1023:  aload 8 
L1025:  aload 6 
L1027:  ldc_w 'icon' 
L1030:  ldc_w 'graphics/ui/icons/damagetype_other.png' 
L1033:  invokevirtual Method org/json/JSONObject optString [u798] 
L1036:  invokevirtual Method com/fs/starfarer/loading/specs/do setIconSpriteName (Ljava/lang/String;)V 
L1039:  aload_0 
L1040:  ifnull L1056 
L1043:  aload_0 
L1044:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L1047:  aload 8 
L1049:  invokevirtual Method com/fs/starfarer/loading/specs/do getIconSpriteName ()Ljava/lang/String; 
L1052:  iconst_1 
L1053:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u22] 

        .stack same 
L1056:  aload_3 
L1057:  aload 7 
L1059:  invokeinterface InterfaceMethod java/util/List remove (Ljava/lang/Object;)Z 2 
L1064:  pop 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/Map Object java/util/List Object java/util/List Object org/json/JSONArray Integer 
            stack 
        .end stack 
L1065:  iinc 5 1 

        .stack same 
L1068:  iload 5 
L1070:  aload 4 
L1072:  invokevirtual Method org/json/JSONArray length ()I 
L1075:  if_icmplt L405 
L1078:  aload_3 
L1079:  invokeinterface InterfaceMethod java/util/List isEmpty ()Z 1 
L1084:  ifne L1157 
L1087:  aload_3 
L1088:  invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L1093:  astore 6 
L1095:  goto L1136 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/Map Object java/util/List Object java/util/List Object org/json/JSONArray Top Object java/util/Iterator 
            stack 
        .end stack 
L1098:  aload 6 
L1100:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L1105:  checkcast java/lang/String 
L1108:  astore 5 
L1110:  getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L1113:  ldc_w 'Ship system [%s] not found in ship_systems.csv' 
L1116:  iconst_1 
L1117:  anewarray java/lang/Object 
L1120:  dup 
L1121:  iconst_0 
L1122:  aload 5 
L1124:  aastore 
L1125:  invokestatic Method java/lang/String format (Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String; 
L1128:  invokevirtual Method org/apache/log4j/Logger error (Ljava/lang/Object;)V 
L1131:  aload 5 
L1133:  invokestatic Method com/fs/starfarer/loading/oO0O 'Ò00000' (Ljava/lang/String;)V 

        .stack same 
L1136:  aload 6 
L1138:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L1143:  ifne L1098 
L1146:  new java/lang/RuntimeException 
L1149:  dup 
L1150:  ldc_w 'Fatal: ship_systems.csv is missing systems' 
L1153:  invokespecial Method java/lang/RuntimeException <init> (Ljava/lang/String;)V 
L1156:  athrow 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/util/Map Object java/util/List Object java/util/List Object org/json/JSONArray 
            stack 
        .end stack 
L1157:  return 
L1158:  
    .end code 
.end method 

.method private static Oo0000 : (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
    .exceptions java/io/IOException org/json/JSONException 
    .code stack 3 locals 6 
L0:     getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L3:     ldc_w 'Loading sector configuration' 
L6:     invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L9:     new com/fs/starfarer/loading/P 
L12:    dup 
L13:    invokespecial Method com/fs/starfarer/loading/P <init> ()V 
L16:    astore_1 
L17:    ldc_w 'className' 
L20:    ldc_w 'data/world/generators.csv' 
L23:    iconst_1 
L24:    invokestatic Method com/fs/starfarer/loading/LoadingUtils 'Ò00000' (Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONArray; 
L27:    astore_2 
L28:    iconst_0 
L29:    istore_3 
L30:    goto L64 

        .stack append Object com/fs/starfarer/loading/P Object org/json/JSONArray Integer 
L33:    aload_2 
L34:    iload_3 
L35:    invokevirtual Method org/json/JSONArray getJSONObject (I)Lorg/json/JSONObject; 
L38:    astore 4 
L40:    aload 4 
L42:    ldc_w 'className' 
L45:    invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L48:    astore 5 
L50:    aload 5 
L52:    invokestatic Method com/fs/starfarer/loading/scripts/ScriptStore Object (Ljava/lang/String;)V 
L55:    aload_1 
L56:    aload 5 
L58:    invokevirtual Method com/fs/starfarer/loading/P 'super' (Ljava/lang/String;)V 
L61:    iinc 3 1 

        .stack same 
L64:    iload_3 
L65:    aload_2 
L66:    invokevirtual Method org/json/JSONArray length ()I 
L69:    if_icmplt L33 
L72:    ldc_w Class com/fs/starfarer/loading/P 
L75:    ldc_w 'sectorConfig' 
L78:    aload_1 
L79:    invokestatic Method com/fs/starfarer/loading/SpecStore o00000 [u346] 
L82:    return 
L83:    
    .end code 
.end method 

.method public static 'ö00000' : (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
    .exceptions java/io/IOException org/json/JSONException 
    .code stack 6 locals 1 
L0:     ldc_w 'mission id' 
L3:     ldc_w 'data/campaign/person_missions.csv' 
L6:     ldc_w Class com/fs/starfarer/api/loading/PersonMissionSpec 
L9:     aload_0 
L10:    new com/fs/starfarer/loading/SpecStore$3 
L13:    dup 
L14:    invokespecial Method com/fs/starfarer/loading/SpecStore$3 <init> ()V 
L17:    invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/fs/starfarer/loading/ResourceLoaderState;Lcom/fs/starfarer/loading/SpecStore$o;)V 
L20:    return 
L21:    
    .end code 
.end method 

.method public static 'ØO0000' : (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
    .exceptions java/io/IOException org/json/JSONException 
    .code stack 6 locals 1 
L0:     ldc_w 'bar event id' 
L3:     ldc_w 'data/campaign/bar_events.csv' 
L6:     ldc_w Class com/fs/starfarer/api/loading/BarEventSpec 
L9:     aload_0 
L10:    new com/fs/starfarer/loading/SpecStore$4 
L13:    dup 
L14:    invokespecial Method com/fs/starfarer/loading/SpecStore$4 <init> ()V 
L17:    invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/fs/starfarer/loading/ResourceLoaderState;Lcom/fs/starfarer/loading/SpecStore$o;)V 
L20:    return 
L21:    
    .end code 
.end method 

.method public static float : (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
    .exceptions java/io/IOException org/json/JSONException 
    .code stack 7 locals 2 
L0:     ldc_w 'id' 
L3:     ldc_w 'data/campaign/procgen/star_gen_data.csv' 
L6:     ldc_w Class com/fs/starfarer/api/impl/campaign/procgen/StarGenDataSpec 
L9:     aload_0 
L10:    new com/fs/starfarer/loading/SpecStore$5 
L13:    dup 
L14:    invokespecial Method com/fs/starfarer/loading/SpecStore$5 <init> ()V 
L17:    invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/fs/starfarer/loading/ResourceLoaderState;Lcom/fs/starfarer/loading/SpecStore$o;)V 
L20:    ldc_w 'id' 
L23:    ldc_w 'data/campaign/procgen/age_gen_data.csv' 
L26:    ldc_w Class com/fs/starfarer/api/impl/campaign/procgen/AgeGenDataSpec 
L29:    aload_0 
L30:    new com/fs/starfarer/loading/SpecStore$6 
L33:    dup 
L34:    invokespecial Method com/fs/starfarer/loading/SpecStore$6 <init> ()V 
L37:    invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/fs/starfarer/loading/ResourceLoaderState;Lcom/fs/starfarer/loading/SpecStore$o;)V 
L40:    ldc_w 'id' 
L43:    ldc_w 'data/campaign/procgen/objective_gen_data.csv' 
L46:    ldc_w Class com/fs/starfarer/api/impl/campaign/procgen/ObjectiveGenDataSpec 
L49:    aload_0 
L50:    new com/fs/starfarer/loading/SpecStore$7 
L53:    dup 
L54:    invokespecial Method com/fs/starfarer/loading/SpecStore$7 <init> ()V 
L57:    invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/fs/starfarer/loading/ResourceLoaderState;Lcom/fs/starfarer/loading/SpecStore$o;)V 
L60:    ldc_w 'id' 
L63:    ldc_w 'data/campaign/procgen/location_gen_data.csv' 
L66:    ldc_w Class com/fs/starfarer/api/impl/campaign/procgen/LocationGenDataSpec 
L69:    aload_0 
L70:    new com/fs/starfarer/loading/SpecStore$8 
L73:    dup 
L74:    invokespecial Method com/fs/starfarer/loading/SpecStore$8 <init> ()V 
L77:    invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/fs/starfarer/loading/ResourceLoaderState;Lcom/fs/starfarer/loading/SpecStore$o;)V 
L80:    new java/util/ArrayList 
L83:    dup 
L84:    invokespecial Method java/util/ArrayList <init> ()V 
L87:    astore_1 
L88:    aload_1 
L89:    ldc_w 'name' 
L92:    invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L97:    pop 
L98:    aload_1 
L99:    ldc_w 'tags' 
L102:   invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L107:   pop 
L108:   aload_1 
L109:   ldc_w 'data/campaign/procgen/name_gen_data.csv' 
L112:   ldc_w Class com/fs/starfarer/api/impl/campaign/procgen/NameGenData 
L115:   aload_0 
L116:   new com/fs/starfarer/loading/SpecStore$9 
L119:   dup 
L120:   invokespecial Method com/fs/starfarer/loading/SpecStore$9 <init> ()V 
L123:   invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/util/List;Ljava/lang/String;Ljava/lang/Class;Lcom/fs/starfarer/loading/ResourceLoaderState;Lcom/fs/starfarer/loading/SpecStore$o;)V 
L126:   aload_1 
L127:   invokeinterface InterfaceMethod java/util/List clear ()V 1 
L132:   aload_1 
L133:   ldc_w 'id' 
L136:   invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L141:   pop 
L142:   aload_1 
L143:   ldc_w 'type' 
L146:   invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L151:   pop 
L152:   aload_1 
L153:   ldc_w 'category' 
L156:   invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L161:   pop 
L162:   ldc_w 'id' 
L165:   aload_1 
L166:   ldc_w 'data/campaign/procgen/planet_gen_data.csv' 
L169:   ldc_w Class com/fs/starfarer/api/impl/campaign/procgen/PlanetGenDataSpec 
L172:   aload_0 
L173:   new com/fs/starfarer/loading/SpecStore$10 
L176:   dup 
L177:   invokespecial Method com/fs/starfarer/loading/SpecStore$10 <init> ()V 
L180:   invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Class;Lcom/fs/starfarer/loading/ResourceLoaderState;Lcom/fs/starfarer/loading/SpecStore$o;)V 
L183:   ldc_w 'category' 
L186:   aload_1 
L187:   ldc_w 'data/campaign/procgen/planet_gen_data.csv' 
L190:   ldc_w Class com/fs/starfarer/api/impl/campaign/procgen/CategoryGenDataSpec 
L193:   aload_0 
L194:   new com/fs/starfarer/loading/SpecStore$11 
L197:   dup 
L198:   invokespecial Method com/fs/starfarer/loading/SpecStore$11 <init> ()V 
L201:   invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Class;Lcom/fs/starfarer/loading/ResourceLoaderState;Lcom/fs/starfarer/loading/SpecStore$o;)V 
L204:   aload_1 
L205:   invokeinterface InterfaceMethod java/util/List clear ()V 1 
L210:   aload_1 
L211:   ldc_w 'id' 
L214:   invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L219:   pop 
L220:   ldc_w 'id' 
L223:   aload_1 
L224:   ldc_w 'data/campaign/procgen/planet_gen_data.csv' 
L227:   ldc_w Class com/fs/starfarer/api/impl/campaign/procgen/TerrainGenDataSpec 
L230:   aload_0 
L231:   new com/fs/starfarer/loading/SpecStore$12 
L234:   dup 
L235:   invokespecial Method com/fs/starfarer/loading/SpecStore$12 <init> ()V 
L238:   invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Class;Lcom/fs/starfarer/loading/ResourceLoaderState;Lcom/fs/starfarer/loading/SpecStore$o;)V 
L241:   ldc_w 'id' 
L244:   aload_1 
L245:   ldc_w 'data/campaign/procgen/condition_gen_data.csv' 
L248:   ldc_w Class com/fs/starfarer/api/impl/campaign/procgen/ConditionGenDataSpec 
L251:   aload_0 
L252:   new com/fs/starfarer/loading/SpecStore$13 
L255:   dup 
L256:   invokespecial Method com/fs/starfarer/loading/SpecStore$13 <init> ()V 
L259:   invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Class;Lcom/fs/starfarer/loading/ResourceLoaderState;Lcom/fs/starfarer/loading/SpecStore$o;)V 
L262:   aload_1 
L263:   invokeinterface InterfaceMethod java/util/List clear ()V 1 
L268:   aload_1 
L269:   ldc_w 'commodity' 
L272:   invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L277:   pop 
L278:   aload_1 
L279:   ldc_w 'group' 
L282:   invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L287:   pop 
L288:   aload_1 
L289:   ldc_w 'data/campaign/procgen/drop_groups.csv' 
L292:   ldc_w Class com/fs/starfarer/api/impl/campaign/procgen/DropGroupRow 
L295:   aload_0 
L296:   new com/fs/starfarer/loading/SpecStore$14 
L299:   dup 
L300:   invokespecial Method com/fs/starfarer/loading/SpecStore$14 <init> ()V 
L303:   invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/util/List;Ljava/lang/String;Ljava/lang/Class;Lcom/fs/starfarer/loading/ResourceLoaderState;Lcom/fs/starfarer/loading/SpecStore$o;)V 
L306:   ldc_w 'id' 
L309:   ldc_w 'data/campaign/procgen/salvage_entity_gen_data.csv' 
L312:   ldc_w Class com/fs/starfarer/api/impl/campaign/procgen/SalvageEntityGenDataSpec 
L315:   aload_0 
L316:   new com/fs/starfarer/loading/SpecStore$15 
L319:   dup 
L320:   invokespecial Method com/fs/starfarer/loading/SpecStore$15 <init> ()V 
L323:   invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/fs/starfarer/loading/ResourceLoaderState;Lcom/fs/starfarer/loading/SpecStore$o;)V 
L326:   return 
L327:   
    .end code 
.end method 

.method public static 'Ö00000' : (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
    .exceptions java/io/IOException org/json/JSONException 
    .code stack 6 locals 5 
L0:     ldc_w 'id' 
L3:     ldc_w 'data/campaign/commodities.csv' 
L6:     ldc_w Class com/fs/starfarer/loading/OOoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 
L9:     aload_0 
L10:    new com/fs/starfarer/loading/SpecStore$16 
L13:    dup 
L14:    invokespecial Method com/fs/starfarer/loading/SpecStore$16 <init> ()V 
L17:    invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/fs/starfarer/loading/ResourceLoaderState;Lcom/fs/starfarer/loading/SpecStore$o;)V 
L20:    ldc_w Class com/fs/starfarer/loading/OOoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 
L23:    invokestatic Method com/fs/starfarer/loading/SpecStore 'Ô00000' (Ljava/lang/Class;)Ljava/util/Collection; 
L26:    invokeinterface InterfaceMethod java/util/Collection iterator ()Ljava/util/Iterator; 1 
L31:    astore_2 
L32:    goto L106 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Top Object java/util/Iterator 
            stack 
        .end stack 
L35:    aload_2 
L36:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L41:    checkcast java/lang/String 
L44:    astore_1 
L45:    ldc_w Class com/fs/starfarer/loading/OOoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 
L48:    aload_1 
L49:    invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object; 
L52:    checkcast com/fs/starfarer/loading/OOoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 
L55:    astore_3 
L56:    aload_3 
L57:    invokevirtual Method com/fs/starfarer/loading/OOoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO isPrimary ()Z 
L60:    ifne L106 
L63:    ldc_w Class com/fs/starfarer/loading/OOoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 
L66:    aload_3 
L67:    invokevirtual Method com/fs/starfarer/loading/OOoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO getDemandClass ()Ljava/lang/String; 
L70:    invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object; 
L73:    checkcast com/fs/starfarer/loading/OOoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 
L76:    astore 4 
L78:    aload 4 
L80:    ifnonnull L86 
L83:    goto L106 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object java/lang/String Object java/util/Iterator Object com/fs/starfarer/loading/OOoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO Object com/fs/starfarer/loading/OOoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 
            stack 
        .end stack 
L86:    aload_3 
L87:    aload 4 
L89:    invokevirtual Method [c1394] getBasePrice ()F 
L92:    aload_3 
L93:    invokevirtual Method [c1394] getUtility ()F 
L96:    fmul 
L97:    aload 4 
L99:    invokevirtual Method [c1394] getUtility ()F 
L102:   fdiv 
L103:   invokevirtual Method [c1394] setBasePrice (F)V 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Top Object java/util/Iterator 
            stack 
        .end stack 
L106:   aload_2 
L107:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L112:   ifne L35 
L115:   return 
L116:   
    .end code 
.end method 

.method public static 'Ô00000' : (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
    .exceptions java/io/IOException org/json/JSONException 
    .code stack 6 locals 1 
L0:     ldc_w 'id' 
L3:     ldc_w 'data/campaign/special_items.csv' 
L6:     ldc_w Class com/fs/starfarer/loading/X 
L9:     aload_0 
L10:    new com/fs/starfarer/loading/SpecStore$17 
L13:    dup 
L14:    invokespecial Method com/fs/starfarer/loading/SpecStore$17 <init> ()V 
L17:    invokestatic Method com/fs/starfarer/loading/SpecStore o00000 [u607] 
L20:    return 
L21:    
    .end code 
.end method 

.method private static o00000 : [u607] 
    .exceptions java/io/IOException org/json/JSONException 
    .signature '<T:Ljava/lang/Object;>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class<TT;>;Lcom/fs/starfarer/loading/ResourceLoaderState;Lcom/fs/starfarer/loading/SpecStore$o<TT;>;)V' 
    .code stack 4 locals 10 
L0:     getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L3:     new java/lang/StringBuilder 
L6:     dup 
L7:     ldc_w 'Loading ' 
L10:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L13:    aload_1 
L14:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L17:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L20:    invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L23:    aload_0 
L24:    aload_1 
L25:    iconst_1 
L26:    invokestatic Method com/fs/starfarer/loading/LoadingUtils 'Ò00000' (Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONArray; 
L29:    astore 5 
L31:    iconst_0 
L32:    istore 6 
L34:    goto L115 

        .stack append Object org/json/JSONArray Integer 
L37:    aload 5 
L39:    iload 6 
L41:    invokevirtual Method org/json/JSONArray getJSONObject (I)Lorg/json/JSONObject; 
L44:    astore 7 
L46:    aload 7 
L48:    aload_0 
L49:    invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L52:    astore 8 
L54:    aload 4 
L56:    aload 7 
L58:    aload_3 
L59:    invokeinterface InterfaceMethod com/fs/starfarer/loading/SpecStore$o 'super' (Lorg/json/JSONObject;Lcom/fs/starfarer/loading/ResourceLoaderState;)Ljava/lang/Object; 3 
L64:    astore 9 
L66:    aload 9 
L68:    ifnonnull L74 
L71:    goto L112 

        .stack append Object org/json/JSONObject Object java/lang/String Object java/lang/Object 
L74:    getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L77:    new java/lang/StringBuilder 
L80:    dup 
L81:    ldc_w 'Loaded spec with id [' 
L84:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L87:    aload 8 
L89:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L92:    ldc_w ']' 
L95:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L98:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L101:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L104:   aload_2 
L105:   aload 8 
L107:   aload 9 
L109:   invokestatic Method com/fs/starfarer/loading/SpecStore o00000 [u346] 

        .stack chop 3 
L112:   iinc 6 1 

        .stack same 
L115:   iload 6 
L117:   aload 5 
L119:   invokevirtual Method org/json/JSONArray length ()I 
L122:   if_icmplt L37 
L125:   return 
L126:   
    .end code 
.end method 

.method private static o00000 : (Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Class;Lcom/fs/starfarer/loading/ResourceLoaderState;Lcom/fs/starfarer/loading/SpecStore$o;)V 
    .exceptions java/io/IOException org/json/JSONException 
    .signature '<T:Ljava/lang/Object;>(Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;Ljava/lang/String;Ljava/lang/Class<TT;>;Lcom/fs/starfarer/loading/ResourceLoaderState;Lcom/fs/starfarer/loading/SpecStore$o<TT;>;)V' 
    .code stack 4 locals 11 
L0:     getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L3:     new java/lang/StringBuilder 
L6:     dup 
L7:     ldc_w 'Loading ' 
L10:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L13:    aload_2 
L14:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L17:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L20:    invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L23:    aload_1 
L24:    aload_2 
L25:    iconst_1 
L26:    invokestatic Method com/fs/starfarer/loading/LoadingUtils 'super' (Ljava/util/List;Ljava/lang/String;Z)Lorg/json/JSONArray; 
L29:    astore 6 
L31:    iconst_0 
L32:    istore 7 
L34:    goto L116 

        .stack append Object org/json/JSONArray Integer 
L37:    aload 6 
L39:    iload 7 
L41:    invokevirtual Method org/json/JSONArray getJSONObject (I)Lorg/json/JSONObject; 
L44:    astore 8 
L46:    aload 8 
L48:    aload_0 
L49:    invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L52:    astore 9 
L54:    aload 5 
L56:    aload 8 
L58:    aload 4 
L60:    invokeinterface InterfaceMethod com/fs/starfarer/loading/SpecStore$o 'super' (Lorg/json/JSONObject;Lcom/fs/starfarer/loading/ResourceLoaderState;)Ljava/lang/Object; 3 
L65:    astore 10 
L67:    aload 10 
L69:    ifnonnull L75 
L72:    goto L113 

        .stack append Object org/json/JSONObject Object java/lang/String Object java/lang/Object 
L75:    getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L78:    new java/lang/StringBuilder 
L81:    dup 
L82:    ldc_w 'Loaded spec with id [' 
L85:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L88:    aload 9 
L90:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L93:    ldc_w ']' 
L96:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L99:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L102:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L105:   aload_3 
L106:   aload 9 
L108:   aload 10 
L110:   invokestatic Method com/fs/starfarer/loading/SpecStore o00000 [u346] 

        .stack chop 3 
L113:   iinc 7 1 

        .stack same 
L116:   iload 7 
L118:   aload 6 
L120:   invokevirtual Method org/json/JSONArray length ()I 
L123:   if_icmplt L37 
L126:   return 
L127:   
    .end code 
.end method 

.method private static o00000 : (Ljava/util/List;Ljava/lang/String;Ljava/lang/Class;Lcom/fs/starfarer/loading/ResourceLoaderState;Lcom/fs/starfarer/loading/SpecStore$o;)V 
    .exceptions java/io/IOException org/json/JSONException 
    .signature '<T:Ljava/lang/Object;>(Ljava/util/List<Ljava/lang/String;>;Ljava/lang/String;Ljava/lang/Class<TT;>;Lcom/fs/starfarer/loading/ResourceLoaderState;Lcom/fs/starfarer/loading/SpecStore$o<TT;>;)V' 
    .code stack 4 locals 12 
L0:     getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L3:     new java/lang/StringBuilder 
L6:     dup 
L7:     ldc_w 'Loading ' 
L10:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L13:    aload_1 
L14:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L17:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L20:    invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L23:    aload_0 
L24:    aload_1 
L25:    iconst_1 
L26:    invokestatic Method com/fs/starfarer/loading/LoadingUtils 'super' (Ljava/util/List;Ljava/lang/String;Z)Lorg/json/JSONArray; 
L29:    astore 5 
L31:    iconst_0 
L32:    istore 6 
L34:    goto L211 

        .stack append Object org/json/JSONArray Integer 
L37:    aload 5 
L39:    iload 6 
L41:    invokevirtual Method org/json/JSONArray getJSONObject (I)Lorg/json/JSONObject; 
L44:    astore 7 
L46:    ldc_w '' 
L49:    astore 8 
L51:    aload_0 
L52:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L57:    astore 10 
L59:    goto L126 

        .stack full 
            locals Object java/util/List Object java/lang/String Object java/lang/Class Object com/fs/starfarer/loading/ResourceLoaderState Object com/fs/starfarer/loading/SpecStore$o Object org/json/JSONArray Integer Object org/json/JSONObject Object java/lang/String Top Object java/util/Iterator 
            stack 
        .end stack 
L62:    aload 10 
L64:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L69:    checkcast java/lang/String 
L72:    astore 9 
L74:    aload 7 
L76:    aload 9 
L78:    invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L81:    astore 11 
L83:    aload 8 
L85:    invokevirtual Method java/lang/String isEmpty ()Z 
L88:    ifeq L98 
L91:    aload 11 
L93:    astore 8 
L95:    goto L126 

        .stack full 
            locals Object java/util/List Object java/lang/String Object java/lang/Class Object com/fs/starfarer/loading/ResourceLoaderState Object com/fs/starfarer/loading/SpecStore$o Object org/json/JSONArray Integer Object org/json/JSONObject Object java/lang/String Object java/lang/String Object java/util/Iterator Object java/lang/String 
            stack 
        .end stack 
L98:    new java/lang/StringBuilder 
L101:   dup 
L102:   aload 8 
L104:   invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L107:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L110:   ldc_w '_|_' 
L113:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L116:   aload 11 
L118:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L121:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L124:   astore 8 

        .stack full 
            locals Object java/util/List Object java/lang/String Object java/lang/Class Object com/fs/starfarer/loading/ResourceLoaderState Object com/fs/starfarer/loading/SpecStore$o Object org/json/JSONArray Integer Object org/json/JSONObject Object java/lang/String Top Object java/util/Iterator 
            stack 
        .end stack 
L126:   aload 10 
L128:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L133:   ifne L62 
L136:   aload 8 
L138:   ldc_w '#' 
L141:   invokevirtual Method java/lang/String startsWith (Ljava/lang/String;)Z 
L144:   ifeq L150 
L147:   goto L208 

        .stack full 
            locals Object java/util/List Object java/lang/String Object java/lang/Class Object com/fs/starfarer/loading/ResourceLoaderState Object com/fs/starfarer/loading/SpecStore$o Object org/json/JSONArray Integer Object org/json/JSONObject Object java/lang/String 
            stack 
        .end stack 
L150:   aload 4 
L152:   aload 7 
L154:   aload_3 
L155:   invokeinterface InterfaceMethod com/fs/starfarer/loading/SpecStore$o 'super' (Lorg/json/JSONObject;Lcom/fs/starfarer/loading/ResourceLoaderState;)Ljava/lang/Object; 3 
L160:   astore 9 
L162:   aload 9 
L164:   ifnonnull L170 
L167:   goto L208 

        .stack append Object java/lang/Object 
L170:   getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L173:   new java/lang/StringBuilder 
L176:   dup 
L177:   ldc_w 'Loaded spec with id [' 
L180:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L183:   aload 8 
L185:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L188:   ldc_w ']' 
L191:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L194:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L197:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L200:   aload_2 
L201:   aload 8 
L203:   aload 9 
L205:   invokestatic Method com/fs/starfarer/loading/SpecStore o00000 [u346] 

        .stack chop 3 
L208:   iinc 6 1 

        .stack same 
L211:   iload 6 
L213:   aload 5 
L215:   invokevirtual Method org/json/JSONArray length ()I 
L218:   if_icmplt L37 
L221:   return 
L222:   
    .end code 
.end method 

.method public static oo0000 : (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
    .exceptions java/io/IOException org/json/JSONException 
    .code stack 7 locals 31 
L0:     getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L3:     ldc_w 'Loading factions' 
L6:     invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L9:     ldc_w 'data/campaign/econ/economy.json' 
L12:    invokestatic Method com/fs/starfarer/loading/LoadingUtils 'Ó00000' (Ljava/lang/String;)Lorg/json/JSONObject; 
L15:    astore_1 
L16:    aload_1 
L17:    ldc_w 'defaultTariff' 
L20:    dconst_0 
L21:    invokevirtual Method org/json/JSONObject optDouble (Ljava/lang/String;D)D 
L24:    d2f 
L25:    fstore_2 
L26:    ldc_w 'faction' 
L29:    ldc_w 'data/world/factions/factions.csv' 
L32:    iconst_1 
L33:    invokestatic Method com/fs/starfarer/loading/LoadingUtils 'Ò00000' (Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONArray; 
L36:    astore_3 
L37:    getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L40:    ldc_w 'Loading default_ship_roles.json' 
L43:    invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L46:    ldc_w 'data/world/factions/default_ship_roles.json' 
L49:    invokestatic Method com/fs/starfarer/loading/LoadingUtils 'Ó00000' (Ljava/lang/String;)Lorg/json/JSONObject; 
L52:    astore 4 
L54:    new com/fs/starfarer/loading/O0Oo 
L57:    dup 
L58:    aload 4 
L60:    invokespecial Method com/fs/starfarer/loading/O0Oo <init> (Lorg/json/JSONObject;)V 
L63:    astore 5 
L65:    aload 5 
L67:    invokestatic Method com/fs/starfarer/loading/O0oO setDefaultShipRoles (Lcom/fs/starfarer/loading/O0Oo;)V 
L70:    ldc_w 'data/world/factions/default_fleet_type_names.json' 
L73:    invokestatic Method com/fs/starfarer/loading/LoadingUtils 'Ó00000' (Ljava/lang/String;)Lorg/json/JSONObject; 
L76:    astore 6 
L78:    new com/fs/starfarer/loading/R 
L81:    dup 
L82:    aload 6 
L84:    invokespecial Method com/fs/starfarer/loading/R <init> (Lorg/json/JSONObject;)V 
L87:    astore 7 
L89:    aload 7 
L91:    invokestatic Method com/fs/starfarer/loading/O0oO setDefaultFleetNames (Lcom/fs/starfarer/loading/R;)V 
L94:    ldc_w 'data/world/factions/default_ranks.json' 
L97:    invokestatic Method com/fs/starfarer/loading/LoadingUtils 'Ó00000' (Ljava/lang/String;)Lorg/json/JSONObject; 
L100:   astore 8 
L102:   new com/fs/starfarer/loading/oo0O 
L105:   dup 
L106:   aload 8 
L108:   invokespecial Method com/fs/starfarer/loading/oo0O <init> (Lorg/json/JSONObject;)V 
L111:   astore 9 
L113:   aload 9 
L115:   invokestatic Method com/fs/starfarer/loading/O0oO setDefaultRanks (Lcom/fs/starfarer/loading/oo0O;)V 
L118:   iconst_0 
L119:   istore 10 
L121:   goto L2954 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Float Object org/json/JSONArray Object org/json/JSONObject Object com/fs/starfarer/loading/O0Oo Object org/json/JSONObject Object com/fs/starfarer/loading/R Object org/json/JSONObject Object com/fs/starfarer/loading/oo0O Integer 
            stack 
        .end stack 
L124:   aload_3 
L125:   iload 10 
L127:   invokevirtual Method org/json/JSONArray getJSONObject (I)Lorg/json/JSONObject; 
L130:   astore 11 
L132:   aload 11 
L134:   ldc_w 'faction' 
L137:   invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L140:   astore 12 
L142:   aload 12 
L144:   invokestatic Method com/fs/starfarer/loading/LoadingUtils 'Ó00000' (Ljava/lang/String;)Lorg/json/JSONObject; 
L147:   astore 13 
L149:   aload 13 
L151:   ldc_w 'id' 
L154:   invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L157:   astore 14 
L159:   getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L162:   new java/lang/StringBuilder 
L165:   dup 
L166:   ldc_w 'Loading ' 
L169:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L172:   aload 14 
L174:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L177:   ldc_w ' faction' 
L180:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L183:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L186:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L189:   new com/fs/starfarer/loading/O0oO 
L192:   dup 
L193:   invokespecial Method com/fs/starfarer/loading/O0oO <init> ()V 
L196:   astore 15 
L198:   aload 15 
L200:   aload 14 
L202:   invokevirtual Method com/fs/starfarer/loading/O0oO setId (Ljava/lang/String;)V 
L205:   aload 13 
L207:   ldc_w 'shipRoles' 
L210:   invokevirtual Method org/json/JSONObject has (Ljava/lang/String;)Z 
L213:   ifeq L272 
L216:   aload 13 
L218:   ldc_w 'shipRoles' 
L221:   invokevirtual Method org/json/JSONObject getJSONObject (Ljava/lang/String;)Lorg/json/JSONObject; 
L224:   astore 16 
L226:   aload 13 
L228:   ldc_w 'doctrine' 
L231:   invokevirtual Method org/json/JSONObject has (Ljava/lang/String;)Z 
L234:   ifeq L254 
L237:   aload 16 
L239:   ldc_w 'doctrine' 
L242:   aload 13 
L244:   ldc_w 'doctrine' 
L247:   invokevirtual Method org/json/JSONObject getJSONObject (Ljava/lang/String;)Lorg/json/JSONObject; 
L250:   invokevirtual Method org/json/JSONObject put (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject; 
L253:   pop 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Float Object org/json/JSONArray Object org/json/JSONObject Object com/fs/starfarer/loading/O0Oo Object org/json/JSONObject Object com/fs/starfarer/loading/R Object org/json/JSONObject Object com/fs/starfarer/loading/oo0O Integer Object org/json/JSONObject Object java/lang/String Object org/json/JSONObject Object java/lang/String Object com/fs/starfarer/loading/O0oO Object org/json/JSONObject 
            stack 
        .end stack 
L254:   new com/fs/starfarer/loading/O0Oo 
L257:   dup 
L258:   aload 16 
L260:   invokespecial Method com/fs/starfarer/loading/O0Oo <init> (Lorg/json/JSONObject;)V 
L263:   astore 17 
L265:   aload 15 
L267:   aload 17 
L269:   invokevirtual Method com/fs/starfarer/loading/O0oO setShipRoles (Lcom/fs/starfarer/loading/O0Oo;)V 

        .stack chop 1 
L272:   aload 13 
L274:   ldc_w 'fleetTypeNames' 
L277:   invokevirtual Method org/json/JSONObject has (Ljava/lang/String;)Z 
L280:   ifeq L311 
L283:   aload 13 
L285:   ldc_w 'fleetTypeNames' 
L288:   invokevirtual Method org/json/JSONObject getJSONObject (Ljava/lang/String;)Lorg/json/JSONObject; 
L291:   astore 16 
L293:   new com/fs/starfarer/loading/R 
L296:   dup 
L297:   aload 16 
L299:   invokespecial Method com/fs/starfarer/loading/R <init> (Lorg/json/JSONObject;)V 
L302:   astore 17 
L304:   aload 15 
L306:   aload 17 
L308:   invokevirtual Method com/fs/starfarer/loading/O0oO setFleetNames (Lcom/fs/starfarer/loading/R;)V 

        .stack same 
L311:   aload 13 
L313:   ldc_w 'ranks' 
L316:   invokevirtual Method org/json/JSONObject has (Ljava/lang/String;)Z 
L319:   ifeq L350 
L322:   aload 13 
L324:   ldc_w 'ranks' 
L327:   invokevirtual Method org/json/JSONObject getJSONObject (Ljava/lang/String;)Lorg/json/JSONObject; 
L330:   astore 16 
L332:   new com/fs/starfarer/loading/oo0O 
L335:   dup 
L336:   aload 16 
L338:   invokespecial Method com/fs/starfarer/loading/oo0O <init> (Lorg/json/JSONObject;)V 
L341:   astore 17 
L343:   aload 15 
L345:   aload 17 
L347:   invokevirtual Method com/fs/starfarer/loading/O0oO setRanksAndPosts (Lcom/fs/starfarer/loading/oo0O;)V 

        .stack same 
L350:   aload 15 
L352:   aload 13 
L354:   ldc_w 'shipNamePrefix' 
L357:   ldc_w 'ISS' 
L360:   invokevirtual Method org/json/JSONObject optString [u798] 
L363:   invokevirtual Method com/fs/starfarer/loading/O0oO setShipNamePrefix (Ljava/lang/String;)V 
L366:   aload 13 
L368:   ldc_w 'shipNameSources' 
L371:   invokevirtual Method org/json/JSONObject optJSONObject (Ljava/lang/String;)Lorg/json/JSONObject; 
L374:   astore 16 
L376:   aload 16 
L378:   ifnull L440 
L381:   aload 16 
L383:   invokevirtual Method org/json/JSONObject names ()Lorg/json/JSONArray; 
L386:   ifnull L440 
L389:   iconst_0 
L390:   istore 17 
L392:   goto L426 

        .stack append Object org/json/JSONObject Integer 
L395:   aload 16 
L397:   invokestatic Method org/json/JSONObject getNames (Lorg/json/JSONObject;)[Ljava/lang/String; 
L400:   iload 17 
L402:   aaload 
L403:   astore 18 
L405:   aload 15 
L407:   invokevirtual Method com/fs/starfarer/loading/O0oO getShipNameSources ()Lcom/fs/starfarer/api/util/WeightedRandomPicker; 
L410:   aload 18 
L412:   aload 16 
L414:   aload 18 
L416:   invokevirtual Method org/json/JSONObject getDouble (Ljava/lang/String;)D 
L419:   d2f 
L420:   invokevirtual Method com/fs/starfarer/api/util/WeightedRandomPicker add (Ljava/lang/Object;F)V 
L423:   iinc 17 1 

        .stack same 
L426:   iload 17 
L428:   aload 16 
L430:   invokestatic Method org/json/JSONObject getNames (Lorg/json/JSONObject;)[Ljava/lang/String; 
L433:   arraylength 
L434:   if_icmplt L395 
L437:   goto L452 

        .stack chop 1 
L440:   aload 15 
L442:   invokevirtual Method com/fs/starfarer/loading/O0oO getShipNameSources ()Lcom/fs/starfarer/api/util/WeightedRandomPicker; 
L445:   ldc_w 'ALL' 
L448:   fconst_1 
L449:   invokevirtual Method com/fs/starfarer/api/util/WeightedRandomPicker add (Ljava/lang/Object;F)V 

        .stack same 
L452:   aload 15 
L454:   aload 13 
L456:   ldc_w 'logo' 
L459:   invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L462:   invokevirtual Method com/fs/starfarer/loading/O0oO setLogo (Ljava/lang/String;)V 
L465:   aload_0 
L466:   ifnull L482 
L469:   aload_0 
L470:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L473:   aload 15 
L475:   invokevirtual Method com/fs/starfarer/loading/O0oO getLogo ()Ljava/lang/String; 
L478:   iconst_1 
L479:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u22] 

        .stack same 
L482:   aload 15 
L484:   aload 13 
L486:   ldc_w 'crest' 
L489:   aconst_null 
L490:   invokevirtual Method org/json/JSONObject optString [u798] 
L493:   invokevirtual Method com/fs/starfarer/loading/O0oO setCrest (Ljava/lang/String;)V 
L496:   aload_0 
L497:   ifnull L521 
L500:   aload 15 
L502:   invokevirtual Method com/fs/starfarer/loading/O0oO getCrest ()Ljava/lang/String; 
L505:   ifnull L521 
L508:   aload_0 
L509:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L512:   aload 15 
L514:   invokevirtual Method com/fs/starfarer/loading/O0oO getCrest ()Ljava/lang/String; 
L517:   iconst_1 
L518:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u22] 

        .stack same 
L521:   aload 15 
L523:   aload 13 
L525:   ldc_w 'displayName' 
L528:   invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L531:   invokevirtual Method com/fs/starfarer/loading/O0oO setDisplayName (Ljava/lang/String;)V 
L534:   aload 15 
L536:   aload 13 
L538:   ldc_w 'displayNameWithArticle' 
L541:   invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L544:   invokevirtual Method com/fs/starfarer/loading/O0oO setDisplayNameWithArticle (Ljava/lang/String;)V 
L547:   aload 15 
L549:   aload 13 
L551:   ldc_w 'displayNameLong' 
L554:   aload 15 
L556:   invokevirtual Method com/fs/starfarer/loading/O0oO getDisplayName ()Ljava/lang/String; 
L559:   invokevirtual Method org/json/JSONObject optString [u798] 
L562:   invokevirtual Method com/fs/starfarer/loading/O0oO setDisplayNameLong (Ljava/lang/String;)V 
L565:   aload 15 
L567:   aload 13 
L569:   ldc_w 'displayNameLongWithArticle' 
L572:   aload 15 
L574:   invokevirtual Method com/fs/starfarer/loading/O0oO getDisplayNameWithArticle ()Ljava/lang/String; 
L577:   invokevirtual Method org/json/JSONObject optString [u798] 
L580:   invokevirtual Method com/fs/starfarer/loading/O0oO setDisplayNameLongWithArticle (Ljava/lang/String;)V 
L583:   aload 15 
L585:   aload 13 
L587:   ldc_w 'showInIntelTab' 
L590:   iconst_1 
L591:   invokevirtual Method org/json/JSONObject optBoolean (Ljava/lang/String;Z)Z 
L594:   invokevirtual Method com/fs/starfarer/loading/O0oO setShowInIntelTab (Z)V 
L597:   aload 15 
L599:   aload 13 
L601:   ldc_w 'entityNamePrefix' 
L604:   aload 15 
L606:   invokevirtual Method com/fs/starfarer/loading/O0oO getDisplayName ()Ljava/lang/String; 
L609:   invokevirtual Method org/json/JSONObject optString [u798] 
L612:   invokevirtual Method com/fs/starfarer/loading/O0oO setEntityNamePrefix (Ljava/lang/String;)V 
L615:   aload 15 
L617:   aload 13 
L619:   ldc_w 'personNamePrefix' 
L622:   aload 15 
L624:   invokevirtual Method com/fs/starfarer/loading/O0oO getEntityNamePrefix ()Ljava/lang/String; 
L627:   invokevirtual Method org/json/JSONObject optString [u798] 
L630:   invokevirtual Method com/fs/starfarer/loading/O0oO setPersonNamePrefix (Ljava/lang/String;)V 
L633:   aload 15 
L635:   aload 13 
L637:   ldc_w 'personNamePrefixAOrAn' 
L640:   ldc_w 'a' 
L643:   invokevirtual Method org/json/JSONObject optString [u798] 
L646:   invokevirtual Method com/fs/starfarer/loading/O0oO setPersonNamePrefixAOrAn (Ljava/lang/String;)V 
L649:   aload 15 
L651:   aload 13 
L653:   ldc_w 'displayNameIsOrAre' 
L656:   ldc_w 'is' 
L659:   invokevirtual Method org/json/JSONObject optString [u798] 
L662:   invokevirtual Method com/fs/starfarer/loading/O0oO setDisplayNameIsOrAre (Ljava/lang/String;)V 
L665:   aload 15 
L667:   aload 13 
L669:   ldc_w 'barSound' 
L672:   ldc_w 'bar_ambience' 
L675:   invokevirtual Method org/json/JSONObject optString [u798] 
L678:   invokevirtual Method com/fs/starfarer/loading/O0oO setBarSound (Ljava/lang/String;)V 
L681:   aload 15 
L683:   aload 13 
L685:   ldc_w 'internalComms' 
L688:   aconst_null 
L689:   invokevirtual Method org/json/JSONObject optString [u798] 
L692:   invokevirtual Method com/fs/starfarer/loading/O0oO setInternalCommsChannel (Ljava/lang/String;)V 
L695:   aload 15 
L697:   aload 13 
L699:   ldc_w 'tariffFraction' 
L702:   fload_2 
L703:   f2d 
L704:   invokevirtual Method org/json/JSONObject optDouble (Ljava/lang/String;D)D 
L707:   d2f 
L708:   invokevirtual Method com/fs/starfarer/loading/O0oO setTariffFraction (F)V 
L711:   aload 15 
L713:   aload 13 
L715:   ldc_w 'tollFraction' 
L718:   ldc2_w +0.10000000149011612 
L721:   invokevirtual Method org/json/JSONObject optDouble (Ljava/lang/String;D)D 
L724:   d2f 
L725:   invokevirtual Method com/fs/starfarer/loading/O0oO setTollFraction (F)V 
L728:   aload 15 
L730:   aload 13 
L732:   ldc_w 'fineFraction' 
L735:   ldc2_w +0.25 
L738:   invokevirtual Method org/json/JSONObject optDouble (Ljava/lang/String;D)D 
L741:   d2f 
L742:   invokevirtual Method com/fs/starfarer/loading/O0oO setFineFraction (F)V 
L745:   aload 15 
L747:   aload 13 
L749:   ldc_w 'color' 
L752:   invokestatic Method com/fs/starfarer/loading/String return (Lorg/json/JSONObject;Ljava/lang/String;)Ljava/awt/Color; 
L755:   invokevirtual Method com/fs/starfarer/loading/O0oO setColor (Ljava/awt/Color;)V 
L758:   aload 13 
L760:   ldc_w 'custom' 
L763:   invokevirtual Method org/json/JSONObject has (Ljava/lang/String;)Z 
L766:   ifeq L782 
L769:   aload 15 
L771:   aload 13 
L773:   ldc_w 'custom' 
L776:   invokevirtual Method org/json/JSONObject getJSONObject (Ljava/lang/String;)Lorg/json/JSONObject; 
L779:   invokevirtual Method com/fs/starfarer/loading/O0oO setCustom (Lorg/json/JSONObject;)V 

        .stack same_extended 
L782:   aload 15 
L784:   invokevirtual Method com/fs/starfarer/loading/O0oO getColor ()Ljava/awt/Color; 
L787:   astore 17 
L789:   aload 15 
L791:   aload 13 
L793:   ldc_w 'baseUIColor' 
L796:   aload 17 
L798:   invokestatic Method com/fs/starfarer/loading/String o00000 (Lorg/json/JSONObject;Ljava/lang/String;Ljava/awt/Color;)Ljava/awt/Color; 
L801:   invokevirtual Method com/fs/starfarer/loading/O0oO setBaseUIColor (Ljava/awt/Color;)V 
L804:   aload 15 
L806:   aload 13 
L808:   ldc_w 'secondaryUIColor' 
L811:   aconst_null 
L812:   invokestatic Method com/fs/starfarer/loading/String o00000 (Lorg/json/JSONObject;Ljava/lang/String;Ljava/awt/Color;)Ljava/awt/Color; 
L815:   invokevirtual Method com/fs/starfarer/loading/O0oO setSecondaryUIColor (Ljava/awt/Color;)V 
L818:   aload 15 
L820:   aload 13 
L822:   ldc_w 'secondarySegments' 
L825:   bipush 8 
L827:   invokevirtual Method org/json/JSONObject optInt (Ljava/lang/String;I)I 
L830:   invokevirtual Method com/fs/starfarer/loading/O0oO setSecondarySegments (I)V 
L833:   aload 15 
L835:   aload 13 
L837:   ldc_w 'darkUIColor' 
L840:   aload 17 
L842:   ldc_w +0.4000000059604645f 
L845:   invokestatic Method com/fs/graphics/util/B 'Õ00000' (Ljava/awt/Color;F)Ljava/awt/Color; 
L848:   sipush 175 
L851:   invokestatic Method com/fs/graphics/util/B 'Ò00000' (Ljava/awt/Color;I)Ljava/awt/Color; 
L854:   invokestatic Method com/fs/starfarer/loading/String o00000 (Lorg/json/JSONObject;Ljava/lang/String;Ljava/awt/Color;)Ljava/awt/Color; 
L857:   invokevirtual Method com/fs/starfarer/loading/O0oO setDarkUIColor (Ljava/awt/Color;)V 
L860:   aload 15 
L862:   aload 13 
L864:   ldc_w 'gridUIColor' 
L867:   aload 15 
L869:   invokevirtual Method com/fs/starfarer/loading/O0oO getColor ()Ljava/awt/Color; 
L872:   bipush 75 
L874:   invokestatic Method com/fs/graphics/util/B 'Ò00000' (Ljava/awt/Color;I)Ljava/awt/Color; 
L877:   invokestatic Method com/fs/starfarer/loading/String o00000 (Lorg/json/JSONObject;Ljava/lang/String;Ljava/awt/Color;)Ljava/awt/Color; 
L880:   invokevirtual Method com/fs/starfarer/loading/O0oO setGridUIColor (Ljava/awt/Color;)V 
L883:   aload 15 
L885:   aload 13 
L887:   ldc_w 'brightUIColor' 
L890:   aload 15 
L892:   invokevirtual Method com/fs/starfarer/loading/O0oO getBrightUIColor ()Ljava/awt/Color; 
L895:   invokestatic Method com/fs/starfarer/loading/String o00000 (Lorg/json/JSONObject;Ljava/lang/String;Ljava/awt/Color;)Ljava/awt/Color; 
L898:   invokevirtual Method com/fs/starfarer/loading/O0oO setBrightUIColor (Ljava/awt/Color;)V 
L901:   aload 13 
L903:   ldc_w 'names' 
L906:   invokevirtual Method org/json/JSONObject getJSONObject (Ljava/lang/String;)Lorg/json/JSONObject; 
L909:   astore 16 
L911:   aload 16 
L913:   invokevirtual Method org/json/JSONObject names ()Lorg/json/JSONArray; 
L916:   ifnull L967 
L919:   iconst_0 
L920:   istore 18 
L922:   goto L956 

        .stack append Object java/awt/Color Integer 
L925:   aload 16 
L927:   invokestatic Method org/json/JSONObject getNames (Lorg/json/JSONObject;)[Ljava/lang/String; 
L930:   iload 18 
L932:   aaload 
L933:   astore 19 
L935:   aload 15 
L937:   invokevirtual Method com/fs/starfarer/loading/O0oO getNameCategories ()Lcom/fs/starfarer/api/util/WeightedRandomPicker; 
L940:   aload 19 
L942:   aload 16 
L944:   aload 19 
L946:   invokevirtual Method org/json/JSONObject getDouble (Ljava/lang/String;)D 
L949:   d2f 
L950:   invokevirtual Method com/fs/starfarer/api/util/WeightedRandomPicker add (Ljava/lang/Object;F)V 
L953:   iinc 18 1 

        .stack same 
L956:   iload 18 
L958:   aload 16 
L960:   invokestatic Method org/json/JSONObject getNames (Lorg/json/JSONObject;)[Ljava/lang/String; 
L963:   arraylength 
L964:   if_icmplt L925 

        .stack chop 1 
L967:   aload 13 
L969:   ldc_w 'music' 
L972:   invokevirtual Method org/json/JSONObject has (Ljava/lang/String;)Z 
L975:   ifeq L1046 
L978:   aload 13 
L980:   ldc_w 'music' 
L983:   invokevirtual Method org/json/JSONObject getJSONObject (Ljava/lang/String;)Lorg/json/JSONObject; 
L986:   astore 18 
L988:   aload 18 
L990:   invokevirtual Method org/json/JSONObject names ()Lorg/json/JSONArray; 
L993:   ifnull L1046 
L996:   iconst_0 
L997:   istore 19 
L999:   goto L1035 

        .stack append Object org/json/JSONObject Integer 
L1002:  aload 18 
L1004:  invokestatic Method org/json/JSONObject getNames (Lorg/json/JSONObject;)[Ljava/lang/String; 
L1007:  iload 19 
L1009:  aaload 
L1010:  astore 20 
L1012:  aload 15 
L1014:  invokevirtual Method com/fs/starfarer/loading/O0oO getMusicMap ()Ljava/util/Map; 
L1017:  aload 20 
L1019:  aload 18 
L1021:  aload 20 
L1023:  invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L1026:  invokeinterface InterfaceMethod java/util/Map put (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 3 
L1031:  pop 
L1032:  iinc 19 1 

        .stack same 
L1035:  iload 19 
L1037:  aload 18 
L1039:  invokestatic Method org/json/JSONObject getNames (Lorg/json/JSONObject;)[Ljava/lang/String; 
L1042:  arraylength 
L1043:  if_icmplt L1002 

        .stack chop 2 
L1046:  aload 13 
L1048:  ldc_w 'factionDoctrine' 
L1051:  invokevirtual Method org/json/JSONObject has (Ljava/lang/String;)Z 
L1054:  ifeq L1084 
L1057:  new com/fs/starfarer/loading/specs/FactionDoctrine 
L1060:  dup 
L1061:  aload 13 
L1063:  ldc_w 'factionDoctrine' 
L1066:  invokevirtual Method org/json/JSONObject getJSONObject (Ljava/lang/String;)Lorg/json/JSONObject; 
L1069:  invokespecial Method com/fs/starfarer/loading/specs/FactionDoctrine <init> (Lorg/json/JSONObject;)V 
L1072:  astore 18 
L1074:  aload 18 
L1076:  aload 15 
L1078:  invokevirtual Method com/fs/starfarer/loading/O0oO getDoctrine ()Lcom/fs/starfarer/loading/specs/FactionDoctrine; 
L1081:  invokevirtual Method com/fs/starfarer/loading/specs/FactionDoctrine copyTo (Lcom/fs/starfarer/loading/specs/FactionDoctrine;)V 

        .stack same 
L1084:  aload 13 
L1086:  ldc_w 'variantOverrides' 
L1089:  invokevirtual Method org/json/JSONObject has (Ljava/lang/String;)Z 
L1092:  ifeq L1214 
L1095:  aload 13 
L1097:  ldc_w 'variantOverrides' 
L1100:  invokevirtual Method org/json/JSONObject getJSONObject (Ljava/lang/String;)Lorg/json/JSONObject; 
L1103:  astore 18 
L1105:  aload 18 
L1107:  invokestatic Method org/json/JSONObject getNames (Lorg/json/JSONObject;)[Ljava/lang/String; 
L1110:  astore 19 
L1112:  aload 19 
L1114:  ifnull L1214 
L1117:  aload 19 
L1119:  dup 
L1120:  astore 23 
L1122:  arraylength 
L1123:  istore 22 
L1125:  iconst_0 
L1126:  istore 21 
L1128:  goto L1207 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Float Object org/json/JSONArray Object org/json/JSONObject Object com/fs/starfarer/loading/O0Oo Object org/json/JSONObject Object com/fs/starfarer/loading/R Object org/json/JSONObject Object com/fs/starfarer/loading/oo0O Integer Object org/json/JSONObject Object java/lang/String Object org/json/JSONObject Object java/lang/String Object com/fs/starfarer/loading/O0oO Object org/json/JSONObject Object java/awt/Color Object org/json/JSONObject Object [Ljava/lang/String; Top Integer Integer Object [Ljava/lang/String; 
            stack 
        .end stack 
L1131:  aload 23 
L1133:  iload 21 
L1135:  aaload 
L1136:  astore 20 
L1138:  aload 18 
L1140:  aload 20 
L1142:  invokevirtual Method org/json/JSONObject getDouble (Ljava/lang/String;)D 
L1145:  d2f 
L1146:  fstore 24 
L1148:  aload 15 
L1150:  invokevirtual Method com/fs/starfarer/loading/O0oO getVariantOverrides ()Ljava/util/Map; 
L1153:  aload 20 
L1155:  fload 24 
L1157:  invokestatic Method java/lang/Float valueOf (F)Ljava/lang/Float; 
L1160:  invokeinterface InterfaceMethod java/util/Map put (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 3 
L1165:  pop 
L1166:  ldc_w Class com/fs/starfarer/loading/specs/HullVariantSpec 
L1169:  aload 20 
L1171:  invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object; 
L1174:  checkcast com/fs/starfarer/api/combat/ShipVariantAPI 
L1177:  astore 25 
L1179:  aload 25 
L1181:  invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ShipVariantAPI getHullSpec ()Lcom/fs/starfarer/api/combat/ShipHullSpecAPI; 1 
L1186:  invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ShipHullSpecAPI getHullId ()Ljava/lang/String; 1 
L1191:  astore 26 
L1193:  aload 15 
L1195:  invokevirtual Method com/fs/starfarer/loading/O0oO getOverriddenHulls ()Ljava/util/LinkedHashSet; 
L1198:  aload 26 
L1200:  invokevirtual Method java/util/LinkedHashSet add (Ljava/lang/Object;)Z 
L1203:  pop 
L1204:  iinc 21 1 

        .stack same_extended 
L1207:  iload 21 
L1209:  iload 22 
L1211:  if_icmplt L1131 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Float Object org/json/JSONArray Object org/json/JSONObject Object com/fs/starfarer/loading/O0Oo Object org/json/JSONObject Object com/fs/starfarer/loading/R Object org/json/JSONObject Object com/fs/starfarer/loading/oo0O Integer Object org/json/JSONObject Object java/lang/String Object org/json/JSONObject Object java/lang/String Object com/fs/starfarer/loading/O0oO Object org/json/JSONObject Object java/awt/Color 
            stack 
        .end stack 
L1214:  aload 13 
L1216:  ldc_w 'voices' 
L1219:  invokevirtual Method org/json/JSONObject has (Ljava/lang/String;)Z 
L1222:  ifeq L1460 
L1225:  aload 13 
L1227:  ldc_w 'voices' 
L1230:  invokevirtual Method org/json/JSONObject getJSONObject (Ljava/lang/String;)Lorg/json/JSONObject; 
L1233:  astore 18 
L1235:  aload 18 
L1237:  ldc_w 'LOW' 
L1240:  invokevirtual Method org/json/JSONObject getJSONObject (Ljava/lang/String;)Lorg/json/JSONObject; 
L1243:  astore 19 
L1245:  aload 19 
L1247:  invokestatic Method org/json/JSONObject getNames (Lorg/json/JSONObject;)[Ljava/lang/String; 
L1250:  astore 20 
L1252:  aload 20 
L1254:  ifnull L1310 
L1257:  aload 20 
L1259:  dup 
L1260:  astore 24 
L1262:  arraylength 
L1263:  istore 23 
L1265:  iconst_0 
L1266:  istore 22 
L1268:  goto L1303 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Float Object org/json/JSONArray Object org/json/JSONObject Object com/fs/starfarer/loading/O0Oo Object org/json/JSONObject Object com/fs/starfarer/loading/R Object org/json/JSONObject Object com/fs/starfarer/loading/oo0O Integer Object org/json/JSONObject Object java/lang/String Object org/json/JSONObject Object java/lang/String Object com/fs/starfarer/loading/O0oO Object org/json/JSONObject Object java/awt/Color Object org/json/JSONObject Object org/json/JSONObject Object [Ljava/lang/String; Top Integer Integer Object [Ljava/lang/String; 
            stack 
        .end stack 
L1271:  aload 24 
L1273:  iload 22 
L1275:  aaload 
L1276:  astore 21 
L1278:  aload 19 
L1280:  aload 21 
L1282:  invokevirtual Method org/json/JSONObject getDouble (Ljava/lang/String;)D 
L1285:  d2f 
L1286:  fstore 25 
L1288:  aload 15 
L1290:  invokevirtual Method com/fs/starfarer/loading/O0oO getVoicePickerLow ()Lcom/fs/starfarer/api/util/WeightedRandomPicker; 
L1293:  aload 21 
L1295:  fload 25 
L1297:  invokevirtual Method com/fs/starfarer/api/util/WeightedRandomPicker add (Ljava/lang/Object;F)V 
L1300:  iinc 22 1 

        .stack same 
L1303:  iload 22 
L1305:  iload 23 
L1307:  if_icmplt L1271 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Float Object org/json/JSONArray Object org/json/JSONObject Object com/fs/starfarer/loading/O0Oo Object org/json/JSONObject Object com/fs/starfarer/loading/R Object org/json/JSONObject Object com/fs/starfarer/loading/oo0O Integer Object org/json/JSONObject Object java/lang/String Object org/json/JSONObject Object java/lang/String Object com/fs/starfarer/loading/O0oO Object org/json/JSONObject Object java/awt/Color Object org/json/JSONObject Object org/json/JSONObject Object [Ljava/lang/String; 
            stack 
        .end stack 
L1310:  aload 18 
L1312:  ldc_w 'MEDIUM' 
L1315:  invokevirtual Method org/json/JSONObject getJSONObject (Ljava/lang/String;)Lorg/json/JSONObject; 
L1318:  astore 21 
L1320:  aload 21 
L1322:  invokestatic Method org/json/JSONObject getNames (Lorg/json/JSONObject;)[Ljava/lang/String; 
L1325:  astore 20 
L1327:  aload 20 
L1329:  ifnull L1385 
L1332:  aload 20 
L1334:  dup 
L1335:  astore 25 
L1337:  arraylength 
L1338:  istore 24 
L1340:  iconst_0 
L1341:  istore 23 
L1343:  goto L1378 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Float Object org/json/JSONArray Object org/json/JSONObject Object com/fs/starfarer/loading/O0Oo Object org/json/JSONObject Object com/fs/starfarer/loading/R Object org/json/JSONObject Object com/fs/starfarer/loading/oo0O Integer Object org/json/JSONObject Object java/lang/String Object org/json/JSONObject Object java/lang/String Object com/fs/starfarer/loading/O0oO Object org/json/JSONObject Object java/awt/Color Object org/json/JSONObject Object org/json/JSONObject Object [Ljava/lang/String; Object org/json/JSONObject Top Integer Integer Object [Ljava/lang/String; 
            stack 
        .end stack 
L1346:  aload 25 
L1348:  iload 23 
L1350:  aaload 
L1351:  astore 22 
L1353:  aload 21 
L1355:  aload 22 
L1357:  invokevirtual Method org/json/JSONObject getDouble (Ljava/lang/String;)D 
L1360:  d2f 
L1361:  fstore 26 
L1363:  aload 15 
L1365:  invokevirtual Method com/fs/starfarer/loading/O0oO getVoicePickerMedium ()Lcom/fs/starfarer/api/util/WeightedRandomPicker; 
L1368:  aload 22 
L1370:  fload 26 
L1372:  invokevirtual Method com/fs/starfarer/api/util/WeightedRandomPicker add (Ljava/lang/Object;F)V 
L1375:  iinc 23 1 

        .stack same 
L1378:  iload 23 
L1380:  iload 24 
L1382:  if_icmplt L1346 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Float Object org/json/JSONArray Object org/json/JSONObject Object com/fs/starfarer/loading/O0Oo Object org/json/JSONObject Object com/fs/starfarer/loading/R Object org/json/JSONObject Object com/fs/starfarer/loading/oo0O Integer Object org/json/JSONObject Object java/lang/String Object org/json/JSONObject Object java/lang/String Object com/fs/starfarer/loading/O0oO Object org/json/JSONObject Object java/awt/Color Object org/json/JSONObject Object org/json/JSONObject Object [Ljava/lang/String; Object org/json/JSONObject 
            stack 
        .end stack 
L1385:  aload 18 
L1387:  ldc_w 'HIGH' 
L1390:  invokevirtual Method org/json/JSONObject getJSONObject (Ljava/lang/String;)Lorg/json/JSONObject; 
L1393:  astore 22 
L1395:  aload 22 
L1397:  invokestatic Method org/json/JSONObject getNames (Lorg/json/JSONObject;)[Ljava/lang/String; 
L1400:  astore 20 
L1402:  aload 20 
L1404:  ifnull L1460 
L1407:  aload 20 
L1409:  dup 
L1410:  astore 26 
L1412:  arraylength 
L1413:  istore 25 
L1415:  iconst_0 
L1416:  istore 24 
L1418:  goto L1453 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Float Object org/json/JSONArray Object org/json/JSONObject Object com/fs/starfarer/loading/O0Oo Object org/json/JSONObject Object com/fs/starfarer/loading/R Object org/json/JSONObject Object com/fs/starfarer/loading/oo0O Integer Object org/json/JSONObject Object java/lang/String Object org/json/JSONObject Object java/lang/String Object com/fs/starfarer/loading/O0oO Object org/json/JSONObject Object java/awt/Color Object org/json/JSONObject Object org/json/JSONObject Object [Ljava/lang/String; Object org/json/JSONObject Object org/json/JSONObject Top Integer Integer Object [Ljava/lang/String; 
            stack 
        .end stack 
L1421:  aload 26 
L1423:  iload 24 
L1425:  aaload 
L1426:  astore 23 
L1428:  aload 22 
L1430:  aload 23 
L1432:  invokevirtual Method org/json/JSONObject getDouble (Ljava/lang/String;)D 
L1435:  d2f 
L1436:  fstore 27 
L1438:  aload 15 
L1440:  invokevirtual Method com/fs/starfarer/loading/O0oO getVoicePickerHigh ()Lcom/fs/starfarer/api/util/WeightedRandomPicker; 
L1443:  aload 23 
L1445:  fload 27 
L1447:  invokevirtual Method com/fs/starfarer/api/util/WeightedRandomPicker add (Ljava/lang/Object;F)V 
L1450:  iinc 24 1 

        .stack same 
L1453:  iload 24 
L1455:  iload 25 
L1457:  if_icmplt L1421 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Float Object org/json/JSONArray Object org/json/JSONObject Object com/fs/starfarer/loading/O0Oo Object org/json/JSONObject Object com/fs/starfarer/loading/R Object org/json/JSONObject Object com/fs/starfarer/loading/oo0O Integer Object org/json/JSONObject Object java/lang/String Object org/json/JSONObject Object java/lang/String Object com/fs/starfarer/loading/O0oO Object org/json/JSONObject Object java/awt/Color 
            stack 
        .end stack 
L1460:  aload 13 
L1462:  ldc_w 'weaponSellFrequency' 
L1465:  invokevirtual Method org/json/JSONObject has (Ljava/lang/String;)Z 
L1468:  ifeq L1552 
L1471:  aload 13 
L1473:  ldc_w 'weaponSellFrequency' 
L1476:  invokevirtual Method org/json/JSONObject getJSONObject (Ljava/lang/String;)Lorg/json/JSONObject; 
L1479:  astore 18 
L1481:  aload 18 
L1483:  invokestatic Method org/json/JSONObject getNames (Lorg/json/JSONObject;)[Ljava/lang/String; 
L1486:  astore 19 
L1488:  aload 19 
L1490:  ifnull L1552 
L1493:  aload 19 
L1495:  dup 
L1496:  astore 23 
L1498:  arraylength 
L1499:  istore 22 
L1501:  iconst_0 
L1502:  istore 21 
L1504:  goto L1545 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Float Object org/json/JSONArray Object org/json/JSONObject Object com/fs/starfarer/loading/O0Oo Object org/json/JSONObject Object com/fs/starfarer/loading/R Object org/json/JSONObject Object com/fs/starfarer/loading/oo0O Integer Object org/json/JSONObject Object java/lang/String Object org/json/JSONObject Object java/lang/String Object com/fs/starfarer/loading/O0oO Object org/json/JSONObject Object java/awt/Color Object org/json/JSONObject Object [Ljava/lang/String; Top Integer Integer Object [Ljava/lang/String; 
            stack 
        .end stack 
L1507:  aload 23 
L1509:  iload 21 
L1511:  aaload 
L1512:  astore 20 
L1514:  aload 18 
L1516:  aload 20 
L1518:  invokevirtual Method org/json/JSONObject getDouble (Ljava/lang/String;)D 
L1521:  d2f 
L1522:  fstore 24 
L1524:  aload 15 
L1526:  invokevirtual Method com/fs/starfarer/loading/O0oO getWeaponSellFrequency ()Ljava/util/Map; 
L1529:  aload 20 
L1531:  fload 24 
L1533:  invokestatic Method java/lang/Float valueOf (F)Ljava/lang/Float; 
L1536:  invokeinterface InterfaceMethod java/util/Map put (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 3 
L1541:  pop 
L1542:  iinc 21 1 

        .stack same 
L1545:  iload 21 
L1547:  iload 22 
L1549:  if_icmplt L1507 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Float Object org/json/JSONArray Object org/json/JSONObject Object com/fs/starfarer/loading/O0Oo Object org/json/JSONObject Object com/fs/starfarer/loading/R Object org/json/JSONObject Object com/fs/starfarer/loading/oo0O Integer Object org/json/JSONObject Object java/lang/String Object org/json/JSONObject Object java/lang/String Object com/fs/starfarer/loading/O0oO Object org/json/JSONObject Object java/awt/Color 
            stack 
        .end stack 
L1552:  aload 13 
L1554:  ldc_w 'fighterSellFrequency' 
L1557:  invokevirtual Method org/json/JSONObject has (Ljava/lang/String;)Z 
L1560:  ifeq L1644 
L1563:  aload 13 
L1565:  ldc_w 'fighterSellFrequency' 
L1568:  invokevirtual Method org/json/JSONObject getJSONObject (Ljava/lang/String;)Lorg/json/JSONObject; 
L1571:  astore 18 
L1573:  aload 18 
L1575:  invokestatic Method org/json/JSONObject getNames (Lorg/json/JSONObject;)[Ljava/lang/String; 
L1578:  astore 19 
L1580:  aload 19 
L1582:  ifnull L1644 
L1585:  aload 19 
L1587:  dup 
L1588:  astore 23 
L1590:  arraylength 
L1591:  istore 22 
L1593:  iconst_0 
L1594:  istore 21 
L1596:  goto L1637 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Float Object org/json/JSONArray Object org/json/JSONObject Object com/fs/starfarer/loading/O0Oo Object org/json/JSONObject Object com/fs/starfarer/loading/R Object org/json/JSONObject Object com/fs/starfarer/loading/oo0O Integer Object org/json/JSONObject Object java/lang/String Object org/json/JSONObject Object java/lang/String Object com/fs/starfarer/loading/O0oO Object org/json/JSONObject Object java/awt/Color Object org/json/JSONObject Object [Ljava/lang/String; Top Integer Integer Object [Ljava/lang/String; 
            stack 
        .end stack 
L1599:  aload 23 
L1601:  iload 21 
L1603:  aaload 
L1604:  astore 20 
L1606:  aload 18 
L1608:  aload 20 
L1610:  invokevirtual Method org/json/JSONObject getDouble (Ljava/lang/String;)D 
L1613:  d2f 
L1614:  fstore 24 
L1616:  aload 15 
L1618:  invokevirtual Method com/fs/starfarer/loading/O0oO getFighterSellFrequency ()Ljava/util/Map; 
L1621:  aload 20 
L1623:  fload 24 
L1625:  invokestatic Method java/lang/Float valueOf (F)Ljava/lang/Float; 
L1628:  invokeinterface InterfaceMethod java/util/Map put (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 3 
L1633:  pop 
L1634:  iinc 21 1 

        .stack same 
L1637:  iload 21 
L1639:  iload 22 
L1641:  if_icmplt L1599 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Float Object org/json/JSONArray Object org/json/JSONObject Object com/fs/starfarer/loading/O0Oo Object org/json/JSONObject Object com/fs/starfarer/loading/R Object org/json/JSONObject Object com/fs/starfarer/loading/oo0O Integer Object org/json/JSONObject Object java/lang/String Object org/json/JSONObject Object java/lang/String Object com/fs/starfarer/loading/O0oO Object org/json/JSONObject Object java/awt/Color 
            stack 
        .end stack 
L1644:  aload 13 
L1646:  ldc_w 'hullmodSellFrequency' 
L1649:  invokevirtual Method org/json/JSONObject has (Ljava/lang/String;)Z 
L1652:  ifeq L1736 
L1655:  aload 13 
L1657:  ldc_w 'hullmodSellFrequency' 
L1660:  invokevirtual Method org/json/JSONObject getJSONObject (Ljava/lang/String;)Lorg/json/JSONObject; 
L1663:  astore 18 
L1665:  aload 18 
L1667:  invokestatic Method org/json/JSONObject getNames (Lorg/json/JSONObject;)[Ljava/lang/String; 
L1670:  astore 19 
L1672:  aload 19 
L1674:  ifnull L1736 
L1677:  aload 19 
L1679:  dup 
L1680:  astore 23 
L1682:  arraylength 
L1683:  istore 22 
L1685:  iconst_0 
L1686:  istore 21 
L1688:  goto L1729 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Float Object org/json/JSONArray Object org/json/JSONObject Object com/fs/starfarer/loading/O0Oo Object org/json/JSONObject Object com/fs/starfarer/loading/R Object org/json/JSONObject Object com/fs/starfarer/loading/oo0O Integer Object org/json/JSONObject Object java/lang/String Object org/json/JSONObject Object java/lang/String Object com/fs/starfarer/loading/O0oO Object org/json/JSONObject Object java/awt/Color Object org/json/JSONObject Object [Ljava/lang/String; Top Integer Integer Object [Ljava/lang/String; 
            stack 
        .end stack 
L1691:  aload 23 
L1693:  iload 21 
L1695:  aaload 
L1696:  astore 20 
L1698:  aload 18 
L1700:  aload 20 
L1702:  invokevirtual Method org/json/JSONObject getDouble (Ljava/lang/String;)D 
L1705:  d2f 
L1706:  fstore 24 
L1708:  aload 15 
L1710:  invokevirtual Method com/fs/starfarer/loading/O0oO getHullmodSellFrequency ()Ljava/util/Map; 
L1713:  aload 20 
L1715:  fload 24 
L1717:  invokestatic Method java/lang/Float valueOf (F)Ljava/lang/Float; 
L1720:  invokeinterface InterfaceMethod java/util/Map put (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 3 
L1725:  pop 
L1726:  iinc 21 1 

        .stack same 
L1729:  iload 21 
L1731:  iload 22 
L1733:  if_icmplt L1691 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Float Object org/json/JSONArray Object org/json/JSONObject Object com/fs/starfarer/loading/O0Oo Object org/json/JSONObject Object com/fs/starfarer/loading/R Object org/json/JSONObject Object com/fs/starfarer/loading/oo0O Integer Object org/json/JSONObject Object java/lang/String Object org/json/JSONObject Object java/lang/String Object com/fs/starfarer/loading/O0oO Object org/json/JSONObject Object java/awt/Color 
            stack 
        .end stack 
L1736:  aload 13 
L1738:  ldc_w 'shipSellFrequency' 
L1741:  invokevirtual Method org/json/JSONObject has (Ljava/lang/String;)Z 
L1744:  ifeq L1828 
L1747:  aload 13 
L1749:  ldc_w 'shipSellFrequency' 
L1752:  invokevirtual Method org/json/JSONObject getJSONObject (Ljava/lang/String;)Lorg/json/JSONObject; 
L1755:  astore 18 
L1757:  aload 18 
L1759:  invokestatic Method org/json/JSONObject getNames (Lorg/json/JSONObject;)[Ljava/lang/String; 
L1762:  astore 19 
L1764:  aload 19 
L1766:  ifnull L1828 
L1769:  aload 19 
L1771:  dup 
L1772:  astore 23 
L1774:  arraylength 
L1775:  istore 22 
L1777:  iconst_0 
L1778:  istore 21 
L1780:  goto L1821 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Float Object org/json/JSONArray Object org/json/JSONObject Object com/fs/starfarer/loading/O0Oo Object org/json/JSONObject Object com/fs/starfarer/loading/R Object org/json/JSONObject Object com/fs/starfarer/loading/oo0O Integer Object org/json/JSONObject Object java/lang/String Object org/json/JSONObject Object java/lang/String Object com/fs/starfarer/loading/O0oO Object org/json/JSONObject Object java/awt/Color Object org/json/JSONObject Object [Ljava/lang/String; Top Integer Integer Object [Ljava/lang/String; 
            stack 
        .end stack 
L1783:  aload 23 
L1785:  iload 21 
L1787:  aaload 
L1788:  astore 20 
L1790:  aload 18 
L1792:  aload 20 
L1794:  invokevirtual Method org/json/JSONObject getDouble (Ljava/lang/String;)D 
L1797:  d2f 
L1798:  fstore 24 
L1800:  aload 15 
L1802:  invokevirtual Method com/fs/starfarer/loading/O0oO getShipSellFrequency ()Ljava/util/Map; 
L1805:  aload 20 
L1807:  fload 24 
L1809:  invokestatic Method java/lang/Float valueOf (F)Ljava/lang/Float; 
L1812:  invokeinterface InterfaceMethod java/util/Map put (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 3 
L1817:  pop 
L1818:  iinc 21 1 

        .stack same 
L1821:  iload 21 
L1823:  iload 22 
L1825:  if_icmplt L1783 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Float Object org/json/JSONArray Object org/json/JSONObject Object com/fs/starfarer/loading/O0Oo Object org/json/JSONObject Object com/fs/starfarer/loading/R Object org/json/JSONObject Object com/fs/starfarer/loading/oo0O Integer Object org/json/JSONObject Object java/lang/String Object org/json/JSONObject Object java/lang/String Object com/fs/starfarer/loading/O0oO Object org/json/JSONObject Object java/awt/Color 
            stack 
        .end stack 
L1828:  aload 13 
L1830:  ldc_w 'hullFrequency' 
L1833:  invokevirtual Method org/json/JSONObject has (Ljava/lang/String;)Z 
L1836:  ifeq L2157 
L1839:  aload 13 
L1841:  ldc_w 'hullFrequency' 
L1844:  invokevirtual Method org/json/JSONObject getJSONObject (Ljava/lang/String;)Lorg/json/JSONObject; 
L1847:  astore 18 
L1849:  aload 18 
L1851:  ldc_w 'hulls' 
L1854:  invokevirtual Method org/json/JSONObject has (Ljava/lang/String;)Z 
L1857:  ifeq L1941 
L1860:  aload 18 
L1862:  ldc_w 'hulls' 
L1865:  invokevirtual Method org/json/JSONObject getJSONObject (Ljava/lang/String;)Lorg/json/JSONObject; 
L1868:  astore 19 
L1870:  aload 19 
L1872:  invokestatic Method org/json/JSONObject getNames (Lorg/json/JSONObject;)[Ljava/lang/String; 
L1875:  astore 20 
L1877:  aload 20 
L1879:  ifnull L1941 
L1882:  aload 20 
L1884:  dup 
L1885:  astore 24 
L1887:  arraylength 
L1888:  istore 23 
L1890:  iconst_0 
L1891:  istore 22 
L1893:  goto L1934 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Float Object org/json/JSONArray Object org/json/JSONObject Object com/fs/starfarer/loading/O0Oo Object org/json/JSONObject Object com/fs/starfarer/loading/R Object org/json/JSONObject Object com/fs/starfarer/loading/oo0O Integer Object org/json/JSONObject Object java/lang/String Object org/json/JSONObject Object java/lang/String Object com/fs/starfarer/loading/O0oO Object org/json/JSONObject Object java/awt/Color Object org/json/JSONObject Object org/json/JSONObject Object [Ljava/lang/String; Top Integer Integer Object [Ljava/lang/String; 
            stack 
        .end stack 
L1896:  aload 24 
L1898:  iload 22 
L1900:  aaload 
L1901:  astore 21 
L1903:  aload 19 
L1905:  aload 21 
L1907:  invokevirtual Method org/json/JSONObject getDouble (Ljava/lang/String;)D 
L1910:  d2f 
L1911:  fstore 25 
L1913:  aload 15 
L1915:  invokevirtual Method com/fs/starfarer/loading/O0oO getHullFrequency ()Ljava/util/Map; 
L1918:  aload 21 
L1920:  fload 25 
L1922:  invokestatic Method java/lang/Float valueOf (F)Ljava/lang/Float; 
L1925:  invokeinterface InterfaceMethod java/util/Map put (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 3 
L1930:  pop 
L1931:  iinc 22 1 

        .stack same 
L1934:  iload 22 
L1936:  iload 23 
L1938:  if_icmplt L1896 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Float Object org/json/JSONArray Object org/json/JSONObject Object com/fs/starfarer/loading/O0Oo Object org/json/JSONObject Object com/fs/starfarer/loading/R Object org/json/JSONObject Object com/fs/starfarer/loading/oo0O Integer Object org/json/JSONObject Object java/lang/String Object org/json/JSONObject Object java/lang/String Object com/fs/starfarer/loading/O0oO Object org/json/JSONObject Object java/awt/Color Object org/json/JSONObject 
            stack 
        .end stack 
L1941:  aload 18 
L1943:  ldc_w 'tags' 
L1946:  invokevirtual Method org/json/JSONObject has (Ljava/lang/String;)Z 
L1949:  ifeq L2157 
L1952:  aload 18 
L1954:  ldc_w 'tags' 
L1957:  invokevirtual Method org/json/JSONObject getJSONObject (Ljava/lang/String;)Lorg/json/JSONObject; 
L1960:  astore 19 
L1962:  aload 19 
L1964:  invokestatic Method org/json/JSONObject getNames (Lorg/json/JSONObject;)[Ljava/lang/String; 
L1967:  astore 20 
L1969:  aload 20 
L1971:  ifnull L2157 
L1974:  aload 20 
L1976:  dup 
L1977:  astore 24 
L1979:  arraylength 
L1980:  istore 23 
L1982:  iconst_0 
L1983:  istore 22 
L1985:  goto L2150 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Float Object org/json/JSONArray Object org/json/JSONObject Object com/fs/starfarer/loading/O0Oo Object org/json/JSONObject Object com/fs/starfarer/loading/R Object org/json/JSONObject Object com/fs/starfarer/loading/oo0O Integer Object org/json/JSONObject Object java/lang/String Object org/json/JSONObject Object java/lang/String Object com/fs/starfarer/loading/O0oO Object org/json/JSONObject Object java/awt/Color Object org/json/JSONObject Object org/json/JSONObject Object [Ljava/lang/String; Top Integer Integer Object [Ljava/lang/String; 
            stack 
        .end stack 
L1988:  aload 24 
L1990:  iload 22 
L1992:  aaload 
L1993:  astore 21 
L1995:  aload 19 
L1997:  aload 21 
L1999:  invokevirtual Method org/json/JSONObject getDouble (Ljava/lang/String;)D 
L2002:  d2f 
L2003:  fstore 25 
L2005:  aload 15 
L2007:  invokevirtual Method com/fs/starfarer/loading/O0oO getTagFrequency ()Ljava/util/Map; 
L2010:  aload 21 
L2012:  fload 25 
L2014:  invokestatic Method java/lang/Float valueOf (F)Ljava/lang/Float; 
L2017:  invokeinterface InterfaceMethod java/util/Map put (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 3 
L2022:  pop 
L2023:  invokestatic Method com/fs/starfarer/loading/oO0O 'Ò00000' ()Ljava/util/Collection; 
L2026:  invokeinterface InterfaceMethod java/util/Collection iterator ()Ljava/util/Iterator; 1 
L2031:  astore 27 
L2033:  goto L2137 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Float Object org/json/JSONArray Object org/json/JSONObject Object com/fs/starfarer/loading/O0Oo Object org/json/JSONObject Object com/fs/starfarer/loading/R Object org/json/JSONObject Object com/fs/starfarer/loading/oo0O Integer Object org/json/JSONObject Object java/lang/String Object org/json/JSONObject Object java/lang/String Object com/fs/starfarer/loading/O0oO Object org/json/JSONObject Object java/awt/Color Object org/json/JSONObject Object org/json/JSONObject Object [Ljava/lang/String; Object java/lang/String Integer Integer Object [Ljava/lang/String; Float Top Object java/util/Iterator 
            stack 
        .end stack 
L2036:  aload 27 
L2038:  invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L2043:  checkcast java/lang/String 
L2046:  astore 26 
L2048:  ldc_w Class com/fs/starfarer/loading/specs/g 
L2051:  aload 26 
L2053:  invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object; 
L2056:  checkcast com/fs/starfarer/loading/specs/g 
L2059:  astore 28 
L2061:  aload 28 
L2063:  aload 21 
L2065:  invokevirtual Method com/fs/starfarer/loading/specs/g hasTag (Ljava/lang/String;)Z 
L2068:  ifeq L2137 
L2071:  aload 15 
L2073:  invokevirtual Method com/fs/starfarer/loading/O0oO getHullFrequency ()Ljava/util/Map; 
L2076:  aload 26 
L2078:  invokeinterface InterfaceMethod java/util/Map get (Ljava/lang/Object;)Ljava/lang/Object; 2 
L2083:  checkcast java/lang/Float 
L2086:  astore 29 
L2088:  aload 29 
L2090:  ifnonnull L2099 
L2093:  fconst_1 
L2094:  invokestatic Method java/lang/Float valueOf (F)Ljava/lang/Float; 
L2097:  astore 29 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Float Object org/json/JSONArray Object org/json/JSONObject Object com/fs/starfarer/loading/O0Oo Object org/json/JSONObject Object com/fs/starfarer/loading/R Object org/json/JSONObject Object com/fs/starfarer/loading/oo0O Integer Object org/json/JSONObject Object java/lang/String Object org/json/JSONObject Object java/lang/String Object com/fs/starfarer/loading/O0oO Object org/json/JSONObject Object java/awt/Color Object org/json/JSONObject Object org/json/JSONObject Object [Ljava/lang/String; Object java/lang/String Integer Integer Object [Ljava/lang/String; Float Object java/lang/String Object java/util/Iterator Object com/fs/starfarer/loading/specs/g Object java/lang/Float 
            stack 
        .end stack 
L2099:  aload 29 
L2101:  invokevirtual Method java/lang/Float floatValue ()F 
L2104:  fload 25 
L2106:  fmul 
L2107:  invokestatic Method java/lang/Float valueOf (F)Ljava/lang/Float; 
L2110:  astore 30 
L2112:  aload 30 
L2114:  invokevirtual Method java/lang/Float floatValue ()F 
L2117:  fconst_1 
L2118:  fcmpl 
L2119:  ifeq L2137 
L2122:  aload 15 
L2124:  invokevirtual Method com/fs/starfarer/loading/O0oO getHullFrequency ()Ljava/util/Map; 
L2127:  aload 26 
L2129:  aload 30 
L2131:  invokeinterface InterfaceMethod java/util/Map put (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 3 
L2136:  pop 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Float Object org/json/JSONArray Object org/json/JSONObject Object com/fs/starfarer/loading/O0Oo Object org/json/JSONObject Object com/fs/starfarer/loading/R Object org/json/JSONObject Object com/fs/starfarer/loading/oo0O Integer Object org/json/JSONObject Object java/lang/String Object org/json/JSONObject Object java/lang/String Object com/fs/starfarer/loading/O0oO Object org/json/JSONObject Object java/awt/Color Object org/json/JSONObject Object org/json/JSONObject Object [Ljava/lang/String; Object java/lang/String Integer Integer Object [Ljava/lang/String; Float Top Object java/util/Iterator 
            stack 
        .end stack 
L2137:  aload 27 
L2139:  invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L2144:  ifne L2036 
L2147:  iinc 22 1 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Float Object org/json/JSONArray Object org/json/JSONObject Object com/fs/starfarer/loading/O0Oo Object org/json/JSONObject Object com/fs/starfarer/loading/R Object org/json/JSONObject Object com/fs/starfarer/loading/oo0O Integer Object org/json/JSONObject Object java/lang/String Object org/json/JSONObject Object java/lang/String Object com/fs/starfarer/loading/O0oO Object org/json/JSONObject Object java/awt/Color Object org/json/JSONObject Object org/json/JSONObject Object [Ljava/lang/String; Top Integer Integer Object [Ljava/lang/String; 
            stack 
        .end stack 
L2150:  iload 22 
L2152:  iload 23 
L2154:  if_icmplt L1988 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Float Object org/json/JSONArray Object org/json/JSONObject Object com/fs/starfarer/loading/O0Oo Object org/json/JSONObject Object com/fs/starfarer/loading/R Object org/json/JSONObject Object com/fs/starfarer/loading/oo0O Integer Object org/json/JSONObject Object java/lang/String Object org/json/JSONObject Object java/lang/String Object com/fs/starfarer/loading/O0oO Object org/json/JSONObject Object java/awt/Color 
            stack 
        .end stack 
L2157:  aload 13 
L2159:  ldc_w 'shipsWhenImporting' 
L2162:  ldc_w 'hulls' 
L2165:  iconst_0 
L2166:  new com/fs/starfarer/loading/SpecStore$18 
L2169:  dup 
L2170:  aload 15 
L2172:  invokespecial Method com/fs/starfarer/loading/SpecStore$18 <init> (Lcom/fs/starfarer/loading/O0oO;)V 
L2175:  invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLcom/fs/starfarer/loading/SpecStore$Oo;)V 
L2178:  aload 13 
L2180:  ldc_w 'knownShips' 
L2183:  ldc_w 'hulls' 
L2186:  iconst_0 
L2187:  new com/fs/starfarer/loading/SpecStore$19 
L2190:  dup 
L2191:  aload 15 
L2193:  invokespecial Method com/fs/starfarer/loading/SpecStore$19 <init> (Lcom/fs/starfarer/loading/O0oO;)V 
L2196:  invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLcom/fs/starfarer/loading/SpecStore$Oo;)V 
L2199:  aload 15 
L2201:  invokevirtual Method com/fs/starfarer/loading/O0oO getShipsWhenImporting ()Ljava/util/Set; 
L2204:  invokeinterface InterfaceMethod java/util/Set isEmpty ()Z 1 
L2209:  ifeq L2228 
L2212:  aload 15 
L2214:  invokevirtual Method com/fs/starfarer/loading/O0oO getShipsWhenImporting ()Ljava/util/Set; 
L2217:  aload 15 
L2219:  invokevirtual Method com/fs/starfarer/loading/O0oO getKnownShips ()Ljava/util/Set; 
L2222:  invokeinterface InterfaceMethod java/util/Set addAll (Ljava/util/Collection;)Z 2 
L2227:  pop 

        .stack same_extended 
L2228:  aload 13 
L2230:  ldc_w 'priorityShips' 
L2233:  ldc_w 'hulls' 
L2236:  iconst_0 
L2237:  new com/fs/starfarer/loading/SpecStore$20 
L2240:  dup 
L2241:  aload 15 
L2243:  invokespecial Method com/fs/starfarer/loading/SpecStore$20 <init> (Lcom/fs/starfarer/loading/O0oO;)V 
L2246:  invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLcom/fs/starfarer/loading/SpecStore$Oo;)V 
L2249:  aload 13 
L2251:  ldc_w 'knownFighters' 
L2254:  ldc_w 'fighters' 
L2257:  iconst_0 
L2258:  new com/fs/starfarer/loading/SpecStore$21 
L2261:  dup 
L2262:  aload 15 
L2264:  invokespecial Method com/fs/starfarer/loading/SpecStore$21 <init> (Lcom/fs/starfarer/loading/O0oO;)V 
L2267:  invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLcom/fs/starfarer/loading/SpecStore$Oo;)V 
L2270:  aload 13 
L2272:  ldc_w 'priorityFighters' 
L2275:  ldc_w 'fighters' 
L2278:  iconst_0 
L2279:  new com/fs/starfarer/loading/SpecStore$22 
L2282:  dup 
L2283:  aload 15 
L2285:  invokespecial Method com/fs/starfarer/loading/SpecStore$22 <init> (Lcom/fs/starfarer/loading/O0oO;)V 
L2288:  invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLcom/fs/starfarer/loading/SpecStore$Oo;)V 
L2291:  aload 13 
L2293:  ldc_w 'knownWeapons' 
L2296:  ldc_w 'weapons' 
L2299:  iconst_0 
L2300:  new com/fs/starfarer/loading/SpecStore$23 
L2303:  dup 
L2304:  aload 15 
L2306:  invokespecial Method com/fs/starfarer/loading/SpecStore$23 <init> (Lcom/fs/starfarer/loading/O0oO;)V 
L2309:  invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLcom/fs/starfarer/loading/SpecStore$Oo;)V 
L2312:  aload 13 
L2314:  ldc_w 'priorityWeapons' 
L2317:  ldc_w 'weapons' 
L2320:  iconst_0 
L2321:  new com/fs/starfarer/loading/SpecStore$24 
L2324:  dup 
L2325:  aload 15 
L2327:  invokespecial Method com/fs/starfarer/loading/SpecStore$24 <init> (Lcom/fs/starfarer/loading/O0oO;)V 
L2330:  invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLcom/fs/starfarer/loading/SpecStore$Oo;)V 
L2333:  aload 13 
L2335:  ldc_w 'knownHullMods' 
L2338:  ldc_w 'hullMods' 
L2341:  iconst_0 
L2342:  new com/fs/starfarer/loading/SpecStore$25 
L2345:  dup 
L2346:  aload 15 
L2348:  invokespecial Method com/fs/starfarer/loading/SpecStore$25 <init> (Lcom/fs/starfarer/loading/O0oO;)V 
L2351:  invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLcom/fs/starfarer/loading/SpecStore$Oo;)V 
L2354:  aload 13 
L2356:  ldc_w 'portraits' 
L2359:  invokevirtual Method org/json/JSONObject getJSONObject (Ljava/lang/String;)Lorg/json/JSONObject; 
L2362:  astore 18 
L2364:  aload 13 
L2366:  ldc_w 'fleetCompositions' 
L2369:  invokevirtual Method org/json/JSONObject has (Ljava/lang/String;)Z 
L2372:  ifeq L2441 
L2375:  aload_0 
L2376:  ifnull L2441 
L2379:  aload 13 
L2381:  ldc_w 'fleetCompositions' 
L2384:  invokevirtual Method org/json/JSONObject optJSONObject (Ljava/lang/String;)Lorg/json/JSONObject; 
L2387:  astore 19 
L2389:  aload 19 
L2391:  invokestatic Method org/json/JSONObject getNames (Lorg/json/JSONObject;)[Ljava/lang/String; 
L2394:  astore 20 
L2396:  iconst_0 
L2397:  istore 21 
L2399:  goto L2433 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Float Object org/json/JSONArray Object org/json/JSONObject Object com/fs/starfarer/loading/O0Oo Object org/json/JSONObject Object com/fs/starfarer/loading/R Object org/json/JSONObject Object com/fs/starfarer/loading/oo0O Integer Object org/json/JSONObject Object java/lang/String Object org/json/JSONObject Object java/lang/String Object com/fs/starfarer/loading/O0oO Object org/json/JSONObject Object java/awt/Color Object org/json/JSONObject Object org/json/JSONObject Object [Ljava/lang/String; Integer 
            stack 
        .end stack 
L2402:  aload 20 
L2404:  iload 21 
L2406:  aaload 
L2407:  astore 22 
L2409:  aload 22 
L2411:  aload 19 
L2413:  aload 22 
L2415:  invokevirtual Method org/json/JSONObject getJSONObject (Ljava/lang/String;)Lorg/json/JSONObject; 
L2418:  invokestatic Method com/fs/starfarer/loading/FleetCreationSpec createFromJSON (Ljava/lang/String;Lorg/json/JSONObject;)Lcom/fs/starfarer/loading/FleetCreationSpec; 
L2421:  astore 23 
L2423:  aload 15 
L2425:  aload 23 
L2427:  invokevirtual Method com/fs/starfarer/loading/O0oO addStockFleet (Lcom/fs/starfarer/loading/FleetCreationSpec;)V 
L2430:  iinc 21 1 

        .stack same 
L2433:  iload 21 
L2435:  aload 20 
L2437:  arraylength 
L2438:  if_icmplt L2402 

        .stack chop 3 
L2441:  aload 18 
L2443:  ldc_w 'standard_male' 
L2446:  invokevirtual Method org/json/JSONObject has (Ljava/lang/String;)Z 
L2449:  ifeq L2521 
L2452:  aload 18 
L2454:  ldc_w 'standard_male' 
L2457:  invokevirtual Method org/json/JSONObject getJSONArray (Ljava/lang/String;)Lorg/json/JSONArray; 
L2460:  astore 19 
L2462:  iconst_0 
L2463:  istore 20 
L2465:  goto L2511 

        .stack append Object org/json/JSONArray Integer 
L2468:  aload 19 
L2470:  iload 20 
L2472:  invokevirtual Method org/json/JSONArray getString (I)Ljava/lang/String; 
L2475:  astore 21 
L2477:  aload_0 
L2478:  ifnull L2491 
L2481:  aload_0 
L2482:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L2485:  aload 21 
L2487:  iconst_1 
L2488:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u22] 

        .stack append Object java/lang/String 
L2491:  aload 15 
L2493:  getstatic Field com/fs/starfarer/loading/O0oO$o new Lcom/fs/starfarer/loading/O0oO$o; 
L2496:  getstatic Field com/fs/starfarer/api/characters/FullName$Gender MALE Lcom/fs/starfarer/api/characters/FullName$Gender; 
L2499:  invokevirtual Method com/fs/starfarer/loading/O0oO getPortraits (Lcom/fs/starfarer/loading/O0oO$o;Lcom/fs/starfarer/api/characters/FullName$Gender;)Lcom/fs/starfarer/api/util/WeightedRandomPicker; 
L2502:  aload 21 
L2504:  fconst_1 
L2505:  invokevirtual Method com/fs/starfarer/api/util/WeightedRandomPicker add (Ljava/lang/Object;F)V 
L2508:  iinc 20 1 

        .stack chop 1 
L2511:  iload 20 
L2513:  aload 19 
L2515:  invokevirtual Method org/json/JSONArray length ()I 
L2518:  if_icmplt L2468 

        .stack chop 2 
L2521:  aload 18 
L2523:  ldc_w 'standard_female' 
L2526:  invokevirtual Method org/json/JSONObject has (Ljava/lang/String;)Z 
L2529:  ifeq L2601 
L2532:  aload 18 
L2534:  ldc_w 'standard_female' 
L2537:  invokevirtual Method org/json/JSONObject getJSONArray (Ljava/lang/String;)Lorg/json/JSONArray; 
L2540:  astore 19 
L2542:  iconst_0 
L2543:  istore 20 
L2545:  goto L2591 

        .stack append Object org/json/JSONArray Integer 
L2548:  aload 19 
L2550:  iload 20 
L2552:  invokevirtual Method org/json/JSONArray getString (I)Ljava/lang/String; 
L2555:  astore 21 
L2557:  aload_0 
L2558:  ifnull L2571 
L2561:  aload_0 
L2562:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L2565:  aload 21 
L2567:  iconst_1 
L2568:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u22] 

        .stack append Object java/lang/String 
L2571:  aload 15 
L2573:  getstatic Field com/fs/starfarer/loading/O0oO$o new Lcom/fs/starfarer/loading/O0oO$o; 
L2576:  getstatic Field com/fs/starfarer/api/characters/FullName$Gender FEMALE Lcom/fs/starfarer/api/characters/FullName$Gender; 
L2579:  invokevirtual Method com/fs/starfarer/loading/O0oO getPortraits (Lcom/fs/starfarer/loading/O0oO$o;Lcom/fs/starfarer/api/characters/FullName$Gender;)Lcom/fs/starfarer/api/util/WeightedRandomPicker; 
L2582:  aload 21 
L2584:  fconst_1 
L2585:  invokevirtual Method com/fs/starfarer/api/util/WeightedRandomPicker add (Ljava/lang/Object;F)V 
L2588:  iinc 20 1 

        .stack chop 1 
L2591:  iload 20 
L2593:  aload 19 
L2595:  invokevirtual Method org/json/JSONArray length ()I 
L2598:  if_icmplt L2548 

        .stack chop 2 
L2601:  aload 13 
L2603:  ldc_w 'flags' 
L2606:  invokevirtual Method org/json/JSONObject has (Ljava/lang/String;)Z 
L2609:  ifeq L2720 
L2612:  aload 13 
L2614:  ldc_w 'flags' 
L2617:  invokevirtual Method org/json/JSONObject getJSONArray (Ljava/lang/String;)Lorg/json/JSONArray; 
L2620:  astore 19 
L2622:  iconst_0 
L2623:  istore 20 
L2625:  goto L2710 

        .stack append Object org/json/JSONArray Integer 
L2628:  aload 19 
L2630:  iload 20 
L2632:  invokevirtual Method org/json/JSONArray getJSONObject (I)Lorg/json/JSONObject; 
L2635:  astore 21 
L2637:  aload 21 
L2639:  ldc_w 'logo' 
L2642:  invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L2645:  astore 22 
L2647:  aload 21 
L2649:  ldc_w 'crest' 
L2652:  invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L2655:  astore 23 
L2657:  aload 15 
L2659:  invokevirtual Method com/fs/starfarer/loading/O0oO getFlags ()Ljava/util/List; 
L2662:  aload 22 
L2664:  invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L2669:  pop 
L2670:  aload 15 
L2672:  invokevirtual Method com/fs/starfarer/loading/O0oO getCrests ()Ljava/util/List; 
L2675:  aload 23 
L2677:  invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L2682:  pop 
L2683:  aload_0 
L2684:  ifnull L2707 
L2687:  aload_0 
L2688:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L2691:  aload 22 
L2693:  iconst_1 
L2694:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u22] 
L2697:  aload_0 
L2698:  getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L2701:  aload 23 
L2703:  iconst_1 
L2704:  invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u22] 

        .stack same_extended 
L2707:  iinc 20 1 

        .stack same 
L2710:  iload 20 
L2712:  aload 19 
L2714:  invokevirtual Method org/json/JSONArray length ()I 
L2717:  if_icmplt L2628 

        .stack chop 2 
L2720:  aload 13 
L2722:  ldc_w 'illegalCommodities' 
L2725:  invokevirtual Method org/json/JSONObject has (Ljava/lang/String;)Z 
L2728:  ifeq L2825 
L2731:  aload 13 
L2733:  ldc_w 'illegalCommodities' 
L2736:  invokevirtual Method org/json/JSONObject getJSONArray (Ljava/lang/String;)Lorg/json/JSONArray; 
L2739:  astore 19 
L2741:  iconst_0 
L2742:  istore 20 
L2744:  goto L2815 

        .stack append Object org/json/JSONArray Integer 
L2747:  aload 19 
L2749:  iload 20 
L2751:  invokevirtual Method org/json/JSONArray getString (I)Ljava/lang/String; 
L2754:  astore 21 
L2756:  ldc_w Class [u938] 
L2759:  aload 21 
L2761:  invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object; 
L2764:  ifnonnull L2799 
L2767:  new java/lang/RuntimeException 
L2770:  dup 
L2771:  new java/lang/StringBuilder 
L2774:  dup 
L2775:  ldc_w 'Invalid illegal commodity id: [' 
L2778:  invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L2781:  aload 21 
L2783:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L2786:  ldc_w ']' 
L2789:  invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L2792:  invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L2795:  invokespecial Method java/lang/RuntimeException <init> (Ljava/lang/String;)V 
L2798:  athrow 

        .stack append Object java/lang/String 
L2799:  aload 15 
L2801:  invokevirtual Method com/fs/starfarer/loading/O0oO getIllegalCommodities ()Ljava/util/Set; 
L2804:  aload 21 
L2806:  invokeinterface InterfaceMethod java/util/Set add (Ljava/lang/Object;)Z 2 
L2811:  pop 
L2812:  iinc 20 1 

        .stack chop 1 
L2815:  iload 20 
L2817:  aload 19 
L2819:  invokevirtual Method org/json/JSONArray length ()I 
L2822:  if_icmplt L2747 

        .stack chop 2 
L2825:  aload 13 
L2827:  ldc_w 'traits' 
L2830:  invokevirtual Method org/json/JSONObject has (Ljava/lang/String;)Z 
L2833:  ifeq L2919 
L2836:  aload 13 
L2838:  ldc_w 'traits' 
L2841:  invokevirtual Method org/json/JSONObject getJSONObject (Ljava/lang/String;)Lorg/json/JSONObject; 
L2844:  ldc_w 'captain' 
L2847:  invokevirtual Method org/json/JSONObject has (Ljava/lang/String;)Z 
L2850:  ifeq L2919 
L2853:  aload 13 
L2855:  ldc_w 'traits' 
L2858:  invokevirtual Method org/json/JSONObject getJSONObject (Ljava/lang/String;)Lorg/json/JSONObject; 
L2861:  ldc_w 'captain' 
L2864:  invokevirtual Method org/json/JSONObject getJSONObject (Ljava/lang/String;)Lorg/json/JSONObject; 
L2867:  astore 19 
L2869:  aload 19 
L2871:  invokestatic Method org/json/JSONObject getNames (Lorg/json/JSONObject;)[Ljava/lang/String; 
L2874:  astore 20 
L2876:  iconst_0 
L2877:  istore 21 
L2879:  goto L2911 

        .stack append Object org/json/JSONObject Object [Ljava/lang/String; Integer 
L2882:  aload 20 
L2884:  iload 21 
L2886:  aaload 
L2887:  astore 22 
L2889:  aload 19 
L2891:  aload 22 
L2893:  invokevirtual Method org/json/JSONObject getInt (Ljava/lang/String;)I 
L2896:  istore 23 
L2898:  aload 15 
L2900:  aload 22 
L2902:  iload 23 
L2904:  i2f 
L2905:  invokevirtual Method com/fs/starfarer/loading/O0oO addCaptainPersonality (Ljava/lang/String;F)V 
L2908:  iinc 21 1 

        .stack same 
L2911:  iload 21 
L2913:  aload 20 
L2915:  arraylength 
L2916:  if_icmplt L2882 

        .stack chop 3 
L2919:  aload_0 
L2920:  ifnonnull L2941 
L2923:  ldc_w Class com/fs/starfarer/loading/O0oO 
L2926:  invokestatic Method com/fs/starfarer/loading/SpecStore new (Ljava/lang/Class;)Ljava/util/Map; 
L2929:  astore 19 
L2931:  aload 19 
L2933:  aload 14 
L2935:  invokeinterface InterfaceMethod java/util/Map remove (Ljava/lang/Object;)Ljava/lang/Object; 2 
L2940:  pop 

        .stack same 
L2941:  ldc_w Class com/fs/starfarer/loading/O0oO 
L2944:  aload 14 
L2946:  aload 15 
L2948:  invokestatic Method com/fs/starfarer/loading/SpecStore o00000 [u346] 
L2951:  iinc 10 1 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Float Object org/json/JSONArray Object org/json/JSONObject Object com/fs/starfarer/loading/O0Oo Object org/json/JSONObject Object com/fs/starfarer/loading/R Object org/json/JSONObject Object com/fs/starfarer/loading/oo0O Integer 
            stack 
        .end stack 
L2954:  iload 10 
L2956:  aload_3 
L2957:  invokevirtual Method org/json/JSONArray length ()I 
L2960:  if_icmplt L124 
L2963:  return 
L2964:  
    .end code 
.end method 

.method public static o00000 : (Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;ZLcom/fs/starfarer/loading/SpecStore$Oo;)V 
    .exceptions org/json/JSONException 
    .code stack 3 locals 13 
L0:     iconst_0 
L1:     istore 5 
L3:     aload_0 
L4:     aload_1 
L5:     invokevirtual Method org/json/JSONObject has (Ljava/lang/String;)Z 
L8:     ifeq L237 
L11:    aload_0 
L12:    aload_1 
L13:    invokevirtual Method org/json/JSONObject getJSONObject (Ljava/lang/String;)Lorg/json/JSONObject; 
L16:    astore 6 
L18:    aload 6 
L20:    ldc_w 'tags' 
L23:    invokevirtual Method org/json/JSONObject has (Ljava/lang/String;)Z 
L26:    ifeq L184 
L29:    aload 6 
L31:    ldc_w 'tags' 
L34:    invokevirtual Method org/json/JSONObject getJSONArray (Ljava/lang/String;)Lorg/json/JSONArray; 
L37:    astore 7 
L39:    new java/util/ArrayList 
L42:    dup 
L43:    invokespecial Method java/util/ArrayList <init> ()V 
L46:    astore 8 
L48:    iconst_0 
L49:    istore 9 
L51:    goto L72 

        .stack full 
            locals Object org/json/JSONObject Object java/lang/String Object java/lang/String Integer Object com/fs/starfarer/loading/SpecStore$Oo Integer Object org/json/JSONObject Object org/json/JSONArray Object java/util/List Integer 
            stack 
        .end stack 
L54:    aload 8 
L56:    aload 7 
L58:    iload 9 
L60:    invokevirtual Method org/json/JSONArray getString (I)Ljava/lang/String; 
L63:    invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L68:    pop 
L69:    iinc 9 1 

        .stack same 
L72:    iload 9 
L74:    aload 7 
L76:    invokevirtual Method org/json/JSONArray length ()I 
L79:    if_icmplt L54 
L82:    aload 4 
L84:    invokeinterface InterfaceMethod com/fs/starfarer/loading/SpecStore$Oo o00000 ()Ljava/util/List; 1 
L89:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L94:    astore 10 
L96:    goto L174 

        .stack full 
            locals Object org/json/JSONObject Object java/lang/String Object java/lang/String Integer Object com/fs/starfarer/loading/SpecStore$Oo Integer Object org/json/JSONObject Object org/json/JSONArray Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L99:    aload 10 
L101:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L106:   checkcast java/lang/String 
L109:   astore 9 
L111:   aload 8 
L113:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L118:   astore 12 
L120:   goto L164 

        .stack full 
            locals Object org/json/JSONObject Object java/lang/String Object java/lang/String Integer Object com/fs/starfarer/loading/SpecStore$Oo Integer Object org/json/JSONObject Object org/json/JSONArray Object java/util/List Object java/lang/String Object java/util/Iterator Top Object java/util/Iterator 
            stack 
        .end stack 
L123:   aload 12 
L125:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L130:   checkcast java/lang/String 
L133:   astore 11 
L135:   aload 4 
L137:   aload 9 
L139:   aload 11 
L141:   invokeinterface InterfaceMethod com/fs/starfarer/loading/SpecStore$Oo o00000 (Ljava/lang/String;Ljava/lang/String;)Z 3 
L146:   ifeq L164 
L149:   aload 4 
L151:   aload 9 
L153:   invokeinterface InterfaceMethod com/fs/starfarer/loading/SpecStore$Oo o00000 (Ljava/lang/String;)V 2 
L158:   iconst_1 
L159:   istore 5 
L161:   goto L174 

        .stack same 
L164:   aload 12 
L166:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L171:   ifne L123 

        .stack full 
            locals Object org/json/JSONObject Object java/lang/String Object java/lang/String Integer Object com/fs/starfarer/loading/SpecStore$Oo Integer Object org/json/JSONObject Object org/json/JSONArray Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L174:   aload 10 
L176:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L181:   ifne L99 

        .stack full 
            locals Object org/json/JSONObject Object java/lang/String Object java/lang/String Integer Object com/fs/starfarer/loading/SpecStore$Oo Integer Object org/json/JSONObject 
            stack 
        .end stack 
L184:   aload 6 
L186:   aload_2 
L187:   invokevirtual Method org/json/JSONObject has (Ljava/lang/String;)Z 
L190:   ifeq L237 
L193:   aload 6 
L195:   aload_2 
L196:   invokevirtual Method org/json/JSONObject getJSONArray (Ljava/lang/String;)Lorg/json/JSONArray; 
L199:   astore 7 
L201:   iconst_0 
L202:   istore 8 
L204:   goto L227 

        .stack append Object org/json/JSONArray Integer 
L207:   aload 4 
L209:   aload 7 
L211:   iload 8 
L213:   invokevirtual Method org/json/JSONArray getString (I)Ljava/lang/String; 
L216:   invokeinterface InterfaceMethod com/fs/starfarer/loading/SpecStore$Oo o00000 (Ljava/lang/String;)V 2 
L221:   iconst_1 
L222:   istore 5 
L224:   iinc 8 1 

        .stack same 
L227:   iload 8 
L229:   aload 7 
L231:   invokevirtual Method org/json/JSONArray length ()I 
L234:   if_icmplt L207 

        .stack chop 3 
L237:   iload 5 
L239:   ifne L309 
L242:   iload_3 
L243:   ifeq L309 
L246:   aload 4 
L248:   invokeinterface InterfaceMethod com/fs/starfarer/loading/SpecStore$Oo o00000 ()Ljava/util/List; 1 
L253:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L258:   astore 7 
L260:   goto L299 

        .stack full 
            locals Object org/json/JSONObject Object java/lang/String Object java/lang/String Integer Object com/fs/starfarer/loading/SpecStore$Oo Integer Top Object java/util/Iterator 
            stack 
        .end stack 
L263:   aload 7 
L265:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L270:   checkcast java/lang/String 
L273:   astore 6 
L275:   aload 4 
L277:   aload 6 
L279:   ldc_w 'base_bp' 
L282:   invokeinterface InterfaceMethod com/fs/starfarer/loading/SpecStore$Oo o00000 (Ljava/lang/String;Ljava/lang/String;)Z 3 
L287:   ifeq L299 
L290:   aload 4 
L292:   aload 6 
L294:   invokeinterface InterfaceMethod com/fs/starfarer/loading/SpecStore$Oo o00000 (Ljava/lang/String;)V 2 

        .stack same 
L299:   aload 7 
L301:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L306:   ifne L263 

        .stack full 
            locals Object org/json/JSONObject Object java/lang/String Object java/lang/String Integer Object com/fs/starfarer/loading/SpecStore$Oo Integer 
            stack 
        .end stack 
L309:   return 
L310:   
    .end code 
.end method 

.method private static float : ()V 
    .exceptions java/io/IOException org/json/JSONException 
    .code stack 5 locals 8 
L0:     getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L3:     ldc_w 'Loading descriptions' 
L6:     invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L9:     new java/util/ArrayList 
L12:    dup 
L13:    invokespecial Method java/util/ArrayList <init> ()V 
L16:    astore_0 
L17:    aload_0 
L18:    ldc_w 'id' 
L21:    invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L26:    pop 
L27:    aload_0 
L28:    ldc_w 'type' 
L31:    invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L36:    pop 
L37:    aload_0 
L38:    ldc_w 'data/strings/descriptions.csv' 
L41:    iconst_1 
L42:    invokestatic Method com/fs/starfarer/loading/LoadingUtils 'super' (Ljava/util/List;Ljava/lang/String;Z)Lorg/json/JSONArray; 
L45:    astore_1 
L46:    iconst_0 
L47:    istore_2 
L48:    goto L297 

        .stack append Object java/util/List Object org/json/JSONArray Integer 
L51:    aload_1 
L52:    iload_2 
L53:    invokevirtual Method org/json/JSONArray getJSONObject (I)Lorg/json/JSONObject; 
L56:    astore_3 
L57:    aload_3 
L58:    ldc_w 'id' 
L61:    invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L64:    astore 4 
L66:    aload_3 
L67:    ldc_w 'type' 
L70:    invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L73:    astore 5 
L75:    aload 5 
L77:    ifnull L294 
L80:    aload 5 
L82:    ldc_w '' 
L85:    invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L88:    ifne L294 
L91:    aload 4 
L93:    ifnull L294 
L96:    aload 4 
L98:    ldc_w '' 
L101:   invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L104:   ifeq L110 
L107:   goto L294 

        .stack append Object org/json/JSONObject Object java/lang/String Object java/lang/String 
L110:   aload_3 
L111:   ldc_w 'type' 
L114:   ldc_w Class com/fs/starfarer/api/loading/Description$Type 
L117:   aconst_null 
L118:   invokestatic Method com/fs/starfarer/loading/String o00000 (Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum; 
L121:   checkcast com/fs/starfarer/api/loading/Description$Type 
L124:   astore 6 
L126:   aload 6 
L128:   ifnonnull L163 
L131:   new java/lang/RuntimeException 
L134:   dup 
L135:   new java/lang/StringBuilder 
L138:   dup 
L139:   ldc_w 'Invalid type of description: [' 
L142:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L145:   aload 6 
L147:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/Object;)Ljava/lang/StringBuilder; 
L150:   ldc_w ']' 
L153:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L156:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L159:   invokespecial Method java/lang/RuntimeException <init> (Ljava/lang/String;)V 
L162:   athrow 

        .stack append Object com/fs/starfarer/api/loading/Description$Type 
L163:   new com/fs/starfarer/api/loading/Description 
L166:   dup 
L167:   aload 4 
L169:   aload 6 
L171:   invokespecial Method com/fs/starfarer/api/loading/Description <init> (Ljava/lang/String;Lcom/fs/starfarer/api/loading/Description$Type;)V 
L174:   astore 7 
L176:   aload 7 
L178:   aload_3 
L179:   getstatic Field com/fs/starfarer/loading/LoadingUtils 'super' Ljava/lang/String; 
L182:   invokevirtual Method org/json/JSONObject optString (Ljava/lang/String;)Ljava/lang/String; 
L185:   invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/lang/String;)Lcom/fs/starfarer/launcher/ModManager$ModSpec; 
L188:   invokevirtual Method com/fs/starfarer/api/loading/Description setSourceMod (Lcom/fs/starfarer/api/ModSpecAPI;)V 
L191:   aload 7 
L193:   aload_3 
L194:   ldc_w 'text1' 
L197:   ldc_w 'No description... yet' 
L200:   invokevirtual Method org/json/JSONObject optString [u798] 
L203:   invokestatic Method com/fs/starfarer/loading/SpecStore 'Ó00000' (Ljava/lang/String;)Ljava/lang/String; 
L206:   invokevirtual Method com/fs/starfarer/api/loading/Description setText1 (Ljava/lang/String;)V 
L209:   aload 7 
L211:   aload_3 
L212:   ldc_w 'text2' 
L215:   ldc_w 'No description... yet' 
L218:   invokevirtual Method org/json/JSONObject optString [u798] 
L221:   invokestatic Method com/fs/starfarer/loading/SpecStore 'Ó00000' (Ljava/lang/String;)Ljava/lang/String; 
L224:   invokevirtual Method com/fs/starfarer/api/loading/Description setText2 (Ljava/lang/String;)V 
L227:   aload 7 
L229:   aload_3 
L230:   ldc_w 'text3' 
L233:   ldc_w 'No description... yet' 
L236:   invokevirtual Method org/json/JSONObject optString [u798] 
L239:   invokestatic Method com/fs/starfarer/loading/SpecStore 'Ó00000' (Ljava/lang/String;)Ljava/lang/String; 
L242:   invokevirtual Method com/fs/starfarer/api/loading/Description setText3 (Ljava/lang/String;)V 
L245:   aload 7 
L247:   aload_3 
L248:   ldc_w 'text4' 
L251:   ldc_w '' 
L254:   invokevirtual Method org/json/JSONObject optString [u798] 
L257:   invokestatic Method com/fs/starfarer/loading/SpecStore 'Ó00000' (Ljava/lang/String;)Ljava/lang/String; 
L260:   invokevirtual Method com/fs/starfarer/api/loading/Description setText4 (Ljava/lang/String;)V 
L263:   aload 7 
L265:   aload_3 
L266:   ldc_w 'text5' 
L269:   ldc_w '' 
L272:   invokevirtual Method org/json/JSONObject optString [u798] 
L275:   invokestatic Method com/fs/starfarer/loading/SpecStore 'Ó00000' (Ljava/lang/String;)Ljava/lang/String; 
L278:   invokevirtual Method com/fs/starfarer/api/loading/Description setText5 (Ljava/lang/String;)V 
L281:   ldc_w Class com/fs/starfarer/api/loading/Description 
L284:   aload 7 
L286:   invokevirtual Method com/fs/starfarer/api/loading/Description getUID ()Ljava/lang/String; 
L289:   aload 7 
L291:   invokestatic Method com/fs/starfarer/loading/SpecStore o00000 [u346] 

        .stack full 
            locals Object java/util/List Object org/json/JSONArray Integer 
            stack 
        .end stack 
L294:   iinc 2 1 

        .stack same 
L297:   iload_2 
L298:   aload_1 
L299:   invokevirtual Method org/json/JSONArray length ()I 
L302:   if_icmplt L51 
L305:   return 
L306:   
    .end code 
.end method 

.method public static new : (Ljava/lang/String;)V 
    .code stack 4 locals 3 
L0:     iconst_0 
L1:     istore_1 
L2:     goto L58 

        .stack append Integer 
L5:     aload_0 
L6:     iload_1 
L7:     invokevirtual Method java/lang/String charAt (I)C 
L10:    istore_2 
L11:    getstatic Field java/lang/System out Ljava/io/PrintStream; 
L14:    new java/lang/StringBuilder 
L17:    dup 
L18:    ldc_w '\\u' 
L21:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L24:    iload_2 
L25:    ldc_w 65536 
L28:    ior 
L29:    invokestatic Method java/lang/Integer toHexString (I)Ljava/lang/String; 
L32:    iconst_1 
L33:    invokevirtual Method java/lang/String substring (I)Ljava/lang/String; 
L36:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L39:    ldc_w ' : ' 
L42:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L45:    iload_2 
L46:    invokevirtual Method java/lang/StringBuilder append (C)Ljava/lang/StringBuilder; 
L49:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L52:    invokevirtual Method java/io/PrintStream println (Ljava/lang/String;)V 
L55:    iinc 1 1 

        .stack same 
L58:    iload_1 
L59:    aload_0 
L60:    invokevirtual Method java/lang/String length ()I 
L63:    if_icmplt L5 
L66:    return 
L67:    
    .end code 
.end method 

.method public static o00000 : ([Ljava/lang/String;)V 
    .code stack 3 locals 2 
L0:     ldc_w 'wefwefwef | fwefwef | fewefwefw' 
L3:     astore_1 
L4:     new java/lang/StringBuilder 
L7:     dup 
L8:     aload_1 
L9:     invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L12:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L15:    ldc_w ' “ + fwewjefwefe' 
L18:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L21:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L24:    astore_1 
L25:    getstatic Field java/lang/System out Ljava/io/PrintStream; 
L28:    aload_1 
L29:    invokevirtual Method java/io/PrintStream println (Ljava/lang/String;)V 
L32:    getstatic Field java/lang/System out Ljava/io/PrintStream; 
L35:    aload_1 
L36:    invokestatic Method com/fs/starfarer/loading/SpecStore 'Ó00000' (Ljava/lang/String;)Ljava/lang/String; 
L39:    invokevirtual Method java/io/PrintStream println (Ljava/lang/String;)V 
L42:    return 
L43:    
    .end code 
.end method 

.method public static 'Ó00000' : (Ljava/lang/String;)Ljava/lang/String; 
    .code stack 3 locals 1 
L0:     aload_0 
L1:     ldc_w '[\\u201c\\u201d]+' 
L4:     ldc_w '"' 
L7:     invokevirtual Method java/lang/String replaceAll [u798] 
L10:    astore_0 
L11:    aload_0 
L12:    ldc_w '[\\u2018\\u2019\\ufffd]+' 
L15:    ldc_w "'" 
L18:    invokevirtual Method java/lang/String replaceAll [u798] 
L21:    astore_0 
L22:    aload_0 
L23:    areturn 
L24:    
    .end code 
.end method 

.method public static o00000 : (Ljava/lang/String;Lcom/fs/starfarer/api/loading/Description$Type;)Lcom/fs/starfarer/api/loading/Description; 
    .code stack 3 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     iconst_0 
L3:     invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/lang/String;Lcom/fs/starfarer/api/loading/Description$Type;Z)Lcom/fs/starfarer/api/loading/Description; 
L6:     areturn 
L7:     
    .end code 
.end method 

.method public static o00000 : (Ljava/lang/String;Lcom/fs/starfarer/api/loading/Description$Type;Z)Lcom/fs/starfarer/api/loading/Description; 
    .code stack 4 locals 5 
L0:     aload_0 
L1:     ifnonnull L20 
L4:     iload_2 
L5:     ifeq L10 
L8:     aconst_null 
L9:     areturn 

        .stack same 
L10:    new com/fs/starfarer/api/loading/Description 
L13:    dup 
L14:    aload_0 
L15:    aload_1 
L16:    invokespecial Method com/fs/starfarer/api/loading/Description <init> (Ljava/lang/String;Lcom/fs/starfarer/api/loading/Description$Type;)V 
L19:    areturn 

        .stack same 
L20:    new java/lang/StringBuilder 
L23:    dup 
L24:    aload_0 
L25:    invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L28:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L31:    ldc_w '_' 
L34:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L37:    aload_1 
L38:    invokevirtual Method com/fs/starfarer/api/loading/Description$Type name ()Ljava/lang/String; 
L41:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L44:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L47:    astore_3 
        .catch java/lang/Exception from L48 to L78 using L82 
L48:    ldc_w Class com/fs/starfarer/api/loading/Description 
L51:    aload_3 
L52:    invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object; 
L55:    checkcast com/fs/starfarer/api/loading/Description 
L58:    astore 4 
L60:    aload 4 
L62:    ifnonnull L79 
L65:    iload_2 
L66:    ifne L79 
L69:    new com/fs/starfarer/api/loading/Description 
L72:    dup 
L73:    aload_0 
L74:    aload_1 
L75:    invokespecial Method com/fs/starfarer/api/loading/Description <init> (Ljava/lang/String;Lcom/fs/starfarer/api/loading/Description$Type;)V 
L78:    areturn 
        .catch java/lang/Exception from L79 to L81 using L82 

        .stack append Object java/lang/String Object com/fs/starfarer/api/loading/Description 
L79:    aload 4 
L81:    areturn 

        .stack full 
            locals Object java/lang/String Object com/fs/starfarer/api/loading/Description$Type Integer Object java/lang/String 
            stack Object java/lang/Exception 
        .end stack 
L82:    astore 4 
L84:    getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L87:    new java/lang/StringBuilder 
L90:    dup 
L91:    ldc_w 'Description with id ' 
L94:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L97:    aload_3 
L98:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L101:   ldc_w ' not found' 
L104:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L107:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L110:   aconst_null 
L111:   invokevirtual Method org/apache/log4j/Logger warn (Ljava/lang/Object;Ljava/lang/Throwable;)V 
L114:   iload_2 
L115:   ifeq L120 
L118:   aconst_null 
L119:   areturn 

        .stack append Object java/lang/Exception 
L120:   new com/fs/starfarer/api/loading/Description 
L123:   dup 
L124:   aload_0 
L125:   aload_1 
L126:   invokespecial Method com/fs/starfarer/api/loading/Description <init> (Ljava/lang/String;Lcom/fs/starfarer/api/loading/Description$Type;)V 
L129:   areturn 
L130:   
    .end code 
.end method 

.method public static 'Ó00000' : ()V 
    .exceptions java/io/IOException org/json/JSONException 
    .code stack 3 locals 9 
L0:     getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L3:     ldc_w 'Loading captain personalities' 
L6:     invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L9:     ldc_w 'id' 
L12:    ldc_w 'data/characters/personalities.csv' 
L15:    iconst_1 
L16:    invokestatic Method com/fs/starfarer/loading/LoadingUtils 'Ò00000' (Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONArray; 
L19:    astore_0 
L20:    iconst_0 
L21:    istore_1 
L22:    goto L168 

        .stack append Object org/json/JSONArray Integer 
L25:    aload_0 
L26:    iload_1 
L27:    invokevirtual Method org/json/JSONArray getJSONObject (I)Lorg/json/JSONObject; 
L30:    astore_2 
L31:    aload_2 
L32:    ldc_w 'id' 
L35:    invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L38:    astore_3 
L39:    new com/fs/starfarer/rpg/oOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 
L42:    dup 
L43:    aload_3 
L44:    invokespecial Method com/fs/starfarer/rpg/oOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO <init> (Ljava/lang/String;)V 
L47:    astore 4 
L49:    aload 4 
L51:    aload_2 
L52:    ldc_w 'bravery' 
L55:    invokevirtual Method org/json/JSONObject getDouble (Ljava/lang/String;)D 
L58:    d2f 
L59:    invokevirtual Method com/fs/starfarer/rpg/oOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO setBravery (F)V 
L62:    aload 4 
L64:    aload_2 
L65:    ldc_w 'name' 
L68:    invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L71:    invokevirtual Method com/fs/starfarer/rpg/oOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO setDisplayName (Ljava/lang/String;)V 
L74:    aload 4 
L76:    aload_2 
L77:    ldc_w 'desc' 
L80:    invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L83:    invokevirtual Method com/fs/starfarer/rpg/oOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO setDescription (Ljava/lang/String;)V 
L86:    ldc_w Class com/fs/starfarer/combat/tasks/CombatTask$CombatTaskType 
L89:    invokestatic Method java/util/EnumSet allOf (Ljava/lang/Class;)Ljava/util/EnumSet; 
L92:    invokevirtual Method java/util/EnumSet iterator ()Ljava/util/Iterator; 
L95:    astore 6 
L97:    goto L146 

        .stack full 
            locals Object org/json/JSONArray Integer Object org/json/JSONObject Object java/lang/String Object com/fs/starfarer/rpg/oOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO Top Object java/util/Iterator 
            stack 
        .end stack 
L100:   aload 6 
L102:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L107:   checkcast com/fs/starfarer/combat/tasks/CombatTask$CombatTaskType 
L110:   astore 5 
L112:   aload 5 
L114:   invokevirtual Method com/fs/starfarer/combat/tasks/CombatTask$CombatTaskType name ()Ljava/lang/String; 
L117:   astore 7 
L119:   aload_2 
L120:   aload 7 
L122:   invokevirtual Method org/json/JSONObject has (Ljava/lang/String;)Z 
L125:   ifeq L146 
L128:   aload_2 
L129:   aload 7 
L131:   invokevirtual Method org/json/JSONObject getDouble (Ljava/lang/String;)D 
L134:   d2f 
L135:   fstore 8 
L137:   aload 4 
L139:   aload 5 
L141:   fload 8 
L143:   invokevirtual Method com/fs/starfarer/rpg/oOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO setAffinity (Lcom/fs/starfarer/combat/tasks/CombatTask$CombatTaskType;F)V 

        .stack same 
L146:   aload 6 
L148:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L153:   ifne L100 
L156:   ldc_w Class com/fs/starfarer/rpg/oOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 
L159:   aload_3 
L160:   aload 4 
L162:   invokestatic Method com/fs/starfarer/loading/SpecStore o00000 [u346] 
L165:   iinc 1 1 

        .stack full 
            locals Object org/json/JSONArray Integer 
            stack 
        .end stack 
L168:   iload_1 
L169:   aload_0 
L170:   invokevirtual Method org/json/JSONArray length ()I 
L173:   if_icmplt L25 
L176:   return 
L177:   
    .end code 
.end method 

.method public static oO0000 : ()V 
    .exceptions java/io/IOException org/json/JSONException 
    .code stack 4 locals 11 
L0:     ldc_w 'data/variants' 
L3:     ldc_w 'variant' 
L6:     invokestatic Method com/fs/starfarer/loading/LoadingUtils 'super' (Ljava/lang/String;Ljava/lang/String;)Ljava/util/List; 
L9:     astore_0 
L10:    ldc_w 'data/variants' 
L13:    invokestatic Method com/fs/starfarer/loading/LoadingUtils 'Ö00000' (Ljava/lang/String;)Ljava/util/List; 
L16:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L21:    astore_2 
L22:    goto L49 

        .stack full 
            locals Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L25:    aload_2 
L26:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L31:    checkcast java/lang/String 
L34:    astore_1 
L35:    aload_0 
L36:    aload_1 
L37:    ldc_w 'variant' 
L40:    invokestatic Method com/fs/starfarer/loading/LoadingUtils 'super' (Ljava/lang/String;Ljava/lang/String;)Ljava/util/List; 
L43:    invokeinterface InterfaceMethod java/util/List addAll (Ljava/util/Collection;)Z 2 
L48:    pop 

        .stack same 
L49:    aload_2 
L50:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L55:    ifne L25 
L58:    getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L61:    ldc_w 'Loading ship & fighter variants' 
L64:    invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L67:    aload_0 
L68:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L73:    astore_2 
L74:    goto L226 

        .stack same 
L77:    aload_2 
L78:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L83:    checkcast java/lang/String 
L86:    astore_1 
L87:    getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L90:    new java/lang/StringBuilder 
L93:    dup 
L94:    ldc_w 'Loading variant [' 
L97:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L100:   aload_1 
L101:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L104:   ldc_w ']' 
L107:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L110:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L113:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L116:   aload_1 
L117:   invokestatic Method com/fs/starfarer/loading/LoadingUtils 'Ó00000' (Ljava/lang/String;)Lorg/json/JSONObject; 
L120:   astore_3 
L121:   aload_3 
L122:   ldc_w 'variantId' 
L125:   invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L128:   astore 4 
L130:   aload 4 
L132:   invokestatic Method com/fs/starfarer/loading/B 'Ô00000' (Ljava/lang/String;)Z 
L135:   ifeq L141 
L138:   goto L226 

        .stack full 
            locals Object java/util/List Object java/lang/String Object java/util/Iterator Object org/json/JSONObject Object java/lang/String 
            stack 
        .end stack 
L141:   invokestatic Method com/fs/starfarer/settings/StarfarerSettings new ()Z 
L144:   ifeq L196 
L147:   aload_3 
L148:   ldc_w 'hullId' 
L151:   invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L154:   astore 5 
L156:   aload 5 
L158:   invokestatic Method com/fs/starfarer/loading/oO0O String (Ljava/lang/String;)Z 
L161:   ifne L196 
L164:   getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L167:   new java/lang/StringBuilder 
L170:   dup 
L171:   ldc_w 'Skipping variant [' 
L174:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L177:   aload_1 
L178:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L181:   ldc_w "], assuming it's a core variant not used in total conversion." 
L184:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L187:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L190:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L193:   goto L226 

        .stack same 
L196:   new com/fs/starfarer/loading/specs/HullVariantSpec 
L199:   dup 
L200:   aload_3 
L201:   invokespecial Method com/fs/starfarer/loading/specs/HullVariantSpec <init> (Lorg/json/JSONObject;)V 
L204:   astore 5 
L206:   aload 5 
L208:   getstatic Field com/fs/starfarer/api/loading/VariantSource STOCK Lcom/fs/starfarer/api/loading/VariantSource; 
L211:   invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec setSource (Lcom/fs/starfarer/api/loading/VariantSource;)V 
L214:   aload 5 
L216:   aload_1 
L217:   invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec setSourcePath (Ljava/lang/String;)V 
L220:   aload 5 
L222:   iconst_0 
L223:   invokestatic Method com/fs/starfarer/loading/B o00000 (Lcom/fs/starfarer/loading/specs/HullVariantSpec;Z)V 

        .stack full 
            locals Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L226:   aload_2 
L227:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L232:   ifne L77 
L235:   invokestatic Method com/fs/starfarer/loading/B o00000 ()Ljava/util/List; 
L238:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L243:   astore_2 
L244:   goto L498 

        .stack same 
L247:   aload_2 
L248:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L253:   checkcast java/lang/String 
L256:   astore_1 
L257:   ldc_w Class com/fs/starfarer/loading/specs/HullVariantSpec 
L260:   aload_1 
L261:   invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object; 
L264:   checkcast com/fs/starfarer/loading/specs/HullVariantSpec 
L267:   astore_3 
L268:   aload_3 
L269:   invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec isEmptyHullVariant ()Z 
L272:   ifeq L278 
L275:   goto L498 

        .stack full 
            locals Object java/util/List Object java/lang/String Object java/util/Iterator Object com/fs/starfarer/loading/specs/HullVariantSpec 
            stack 
        .end stack 
L278:   aload_3 
L279:   ldc_w 'skip_for_default_hull_modules' 
L282:   invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec hasTag (Ljava/lang/String;)Z 
L285:   ifeq L291 
L288:   goto L498 

        .stack same 
L291:   ldc_w Class com/fs/starfarer/loading/specs/HullVariantSpec 
L294:   new java/lang/StringBuilder 
L297:   dup 
L298:   aload_3 
L299:   invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L302:   invokevirtual Method com/fs/starfarer/loading/specs/g getHullId ()Ljava/lang/String; 
L305:   invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L308:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L311:   ldc_w '_Hull' 
L314:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L317:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L320:   invokestatic Method com/fs/starfarer/loading/SpecStore o00000 [u585] 
L323:   checkcast com/fs/starfarer/loading/specs/HullVariantSpec 
L326:   astore 4 
L328:   aload 4 
L330:   ifnull L498 
L333:   aload 4 
L335:   invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getStationModules ()Ljava/util/Map; 
L338:   invokeinterface InterfaceMethod java/util/Map isEmpty ()Z 1 
L343:   ifeq L498 
L346:   aload_3 
L347:   invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getStationModules ()Ljava/util/Map; 
L350:   invokeinterface InterfaceMethod java/util/Map isEmpty ()Z 1 
L355:   ifne L498 
L358:   aload_3 
L359:   invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getStationModules ()Ljava/util/Map; 
L362:   invokeinterface InterfaceMethod java/util/Map keySet ()Ljava/util/Set; 1 
L367:   invokeinterface InterfaceMethod java/util/Set iterator ()Ljava/util/Iterator; 1 
L372:   astore 6 
L374:   goto L488 

        .stack full 
            locals Object java/util/List Object java/lang/String Object java/util/Iterator Object com/fs/starfarer/loading/specs/HullVariantSpec Object com/fs/starfarer/loading/specs/HullVariantSpec Top Object java/util/Iterator 
            stack 
        .end stack 
L377:   aload 6 
L379:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L384:   checkcast java/lang/String 
L387:   astore 5 
L389:   aload_3 
L390:   invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getStationModules ()Ljava/util/Map; 
L393:   aload 5 
L395:   invokeinterface InterfaceMethod java/util/Map get (Ljava/lang/Object;)Ljava/lang/Object; 2 
L400:   checkcast java/lang/String 
L403:   astore 7 
L405:   ldc_w Class com/fs/starfarer/loading/specs/HullVariantSpec 
L408:   aload 7 
L410:   invokestatic Method com/fs/starfarer/loading/SpecStore o00000 [u585] 
L413:   checkcast com/fs/starfarer/loading/specs/HullVariantSpec 
L416:   astore 8 
L418:   new java/lang/StringBuilder 
L421:   dup 
L422:   aload 8 
L424:   invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getHullSpec ()Lcom/fs/starfarer/loading/specs/g; 
L427:   invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Lcom/fs/starfarer/api/combat/ShipHullSpecAPI;)Ljava/lang/String; 
L430:   invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String; 
L433:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L436:   ldc_w '_Hull' 
L439:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L442:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L445:   astore 9 
L447:   ldc_w Class com/fs/starfarer/loading/specs/HullVariantSpec 
L450:   aload 9 
L452:   invokestatic Method com/fs/starfarer/loading/SpecStore o00000 [u585] 
L455:   checkcast com/fs/starfarer/loading/specs/HullVariantSpec 
L458:   astore 10 
L460:   aload 10 
L462:   ifnull L488 
L465:   aload 10 
L467:   ldc_w 'Standard' 
L470:   invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec setVariantDisplayName (Ljava/lang/String;)V 
L473:   aload 4 
L475:   invokevirtual Method com/fs/starfarer/loading/specs/HullVariantSpec getStationModules ()Ljava/util/Map; 
L478:   aload 5 
L480:   aload 9 
L482:   invokeinterface InterfaceMethod java/util/Map put (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 3 
L487:   pop 

        .stack same_extended 
L488:   aload 6 
L490:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L495:   ifne L377 

        .stack full 
            locals Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L498:   aload_2 
L499:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L504:   ifne L247 
L507:   invokestatic Method com/fs/starfarer/loading/B new ()V 
L510:   return 
L511:   
    .end code 
.end method 

.method public static o00000 : (Lcom/fs/starfarer/api/combat/ShipHullSpecAPI;)Ljava/lang/String; 
    .code stack 1 locals 2 
L0:     aload_0 
L1:     invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ShipHullSpecAPI getDParentHull ()Lcom/fs/starfarer/api/combat/ShipHullSpecAPI; 1 
L6:     astore_1 
L7:     aload_0 
L8:     invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ShipHullSpecAPI isDefaultDHull ()Z 1 
L13:    ifne L27 
L16:    aload_0 
L17:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ShipHullSpecAPI isRestoreToBase ()Z 1 
L22:    ifne L27 
L25:    aload_0 
L26:    astore_1 

        .stack append Object com/fs/starfarer/api/combat/ShipHullSpecAPI 
L27:    aload_1 
L28:    ifnonnull L47 
L31:    aload_0 
L32:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ShipHullSpecAPI isRestoreToBase ()Z 1 
L37:    ifeq L47 
L40:    aload_0 
L41:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ShipHullSpecAPI getBaseHull ()Lcom/fs/starfarer/api/combat/ShipHullSpecAPI; 1 
L46:    astore_1 

        .stack same 
L47:    aload_1 
L48:    ifnonnull L53 
L51:    aload_0 
L52:    astore_1 

        .stack same 
L53:    aload_1 
L54:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/ShipHullSpecAPI getHullId ()Ljava/lang/String; 1 
L59:    areturn 
L60:    
    .end code 
.end method 

.method private static class : (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
    .exceptions java/io/IOException org/json/JSONException 
    .code stack 7 locals 11 
L0:     ldc_w 'mission' 
L3:     ldc_w 'data/missions/mission_list.csv' 
L6:     iconst_1 
L7:     invokestatic Method com/fs/starfarer/loading/LoadingUtils 'Ò00000' (Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONArray; 
L10:    astore_1 
L11:    getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L14:    ldc_w 'Loading missions' 
L17:    invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L20:    iconst_0 
L21:    istore_2 
L22:    goto L316 

        .stack append Object org/json/JSONArray Integer 
L25:    aload_1 
L26:    iload_2 
L27:    invokevirtual Method org/json/JSONArray getJSONObject (I)Lorg/json/JSONObject; 
L30:    astore_3 
L31:    aload_3 
L32:    ldc_w 'mission' 
L35:    invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L38:    astore 4 
L40:    aload 4 
L42:    ldc_w '#' 
L45:    invokevirtual Method java/lang/String startsWith (Ljava/lang/String;)Z 
L48:    ifeq L54 
L51:    goto L313 

        .stack append Object org/json/JSONObject Object java/lang/String 
L54:    new java/lang/StringBuilder 
L57:    dup 
L58:    ldc_w 'data/missions/' 
L61:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L64:    aload 4 
L66:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L69:    ldc_w '/descriptor.json' 
L72:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L75:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L78:    astore 5 
L80:    new java/lang/StringBuilder 
L83:    dup 
L84:    ldc_w 'data/missions/' 
L87:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L90:    aload 4 
L92:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L95:    ldc_w '/mission_text.txt' 
L98:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L101:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L104:   astore 6 
L106:   new java/lang/StringBuilder 
L109:   dup 
L110:   ldc_w 'data.missions.' 
L113:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L116:   aload 4 
L118:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L121:   ldc_w '.MissionDefinition' 
L124:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L127:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L130:   astore 7 
L132:   getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L135:   ldc_w 'Loading mission [%s] from [%s] (source: [%s])' 
L138:   iconst_3 
L139:   anewarray java/lang/Object 
L142:   dup 
L143:   iconst_0 
L144:   aload 4 
L146:   aastore 
L147:   dup 
L148:   iconst_1 
L149:   aload 5 
L151:   aastore 
L152:   dup 
L153:   iconst_2 
L154:   aload_3 
L155:   getstatic Field com/fs/starfarer/loading/LoadingUtils 'super' Ljava/lang/String; 
L158:   invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L161:   aastore 
L162:   invokestatic Method java/lang/String format (Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String; 
L165:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L168:   aload 5 
L170:   invokestatic Method com/fs/starfarer/loading/LoadingUtils 'ô00000' (Ljava/lang/String;)Lorg/json/JSONObject; 
L173:   astore 8 
L175:   new com/fs/starfarer/title/Object/Oo0O 
L178:   dup 
L179:   aload 4 
L181:   invokespecial Method com/fs/starfarer/title/Object/Oo0O <init> (Ljava/lang/String;)V 
L184:   astore 9 
L186:   aload 9 
L188:   aload 8 
L190:   ldc_w 'title' 
L193:   invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L196:   invokevirtual Method com/fs/starfarer/title/Object/Oo0O 'Ò00000' (Ljava/lang/String;)V 
L199:   aload 9 
L201:   aload 6 
L203:   invokestatic Method com/fs/starfarer/loading/LoadingUtils 'super' (Ljava/lang/String;)Ljava/lang/String; 
L206:   invokevirtual Method com/fs/starfarer/title/Object/Oo0O return (Ljava/lang/String;)V 
L209:   aload 9 
L211:   aload 8 
L213:   ldc_w 'difficulty' 
L216:   invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L219:   invokevirtual Method com/fs/starfarer/title/Object/Oo0O o00000 (Ljava/lang/String;)V 
L222:   aload 9 
L224:   aload 8 
L226:   ldc_w 'background' 
L229:   aconst_null 
L230:   invokevirtual Method org/json/JSONObject optString [u798] 
L233:   invokevirtual Method com/fs/starfarer/title/Object/Oo0O 'ô00000' (Ljava/lang/String;)V 
L236:   aload 7 
L238:   invokestatic Method com/fs/starfarer/loading/scripts/ScriptStore Object (Ljava/lang/String;)V 
L241:   aload 9 
L243:   aload 7 
L245:   invokevirtual Method com/fs/starfarer/title/Object/Oo0O 'Ô00000' (Ljava/lang/String;)V 
L248:   new java/lang/StringBuilder 
L251:   dup 
L252:   ldc_w 'data/missions/' 
L255:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L258:   aload 4 
L260:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L263:   ldc_w '/' 
L266:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L269:   aload 8 
L271:   ldc_w 'icon' 
L274:   invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L277:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L280:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L283:   astore 10 
L285:   aload 9 
L287:   aload 10 
L289:   invokevirtual Method com/fs/starfarer/title/Object/Oo0O 'Õ00000' (Ljava/lang/String;)V 
L292:   aload_0 
L293:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L296:   aload 10 
L298:   iconst_1 
L299:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u22] 
L302:   getstatic Field com/fs/starfarer/loading/SpecStore class Ljava/util/List; 
L305:   aload 9 
L307:   invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L312:   pop 

        .stack chop 2 
L313:   iinc 2 1 

        .stack same 
L316:   iload_2 
L317:   aload_1 
L318:   invokevirtual Method org/json/JSONArray length ()I 
L321:   if_icmplt L25 
L324:   return 
L325:   
    .end code 
.end method 

.method public static null : (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
    .exceptions java/io/IOException org/json/JSONException 
    .code stack 7 locals 22 
L0:     ldc_w 'id' 
L3:     ldc_w 'data/hullmods/hull_mods.csv' 
L6:     iconst_1 
L7:     invokestatic Method com/fs/starfarer/loading/LoadingUtils 'Ò00000' (Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONArray; 
L10:    astore_1 
L11:    getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L14:    ldc_w 'Loading hull mods' 
L17:    invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L20:    iconst_0 
L21:    istore_2 
L22:    goto L658 

        .stack append Object org/json/JSONArray Integer 
L25:    aload_1 
L26:    iload_2 
L27:    invokevirtual Method org/json/JSONArray getJSONObject (I)Lorg/json/JSONObject; 
L30:    astore_3 
L31:    new com/fs/starfarer/loading/specs/O00O 
L34:    dup 
L35:    invokespecial Method com/fs/starfarer/loading/specs/O00O <init> ()V 
L38:    astore 4 
L40:    aload 4 
L42:    aload_3 
L43:    invokevirtual Method com/fs/starfarer/loading/specs/O00O setSourceMod (Lorg/json/JSONObject;)V 
L46:    aload_3 
L47:    ldc_w 'name' 
L50:    invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L53:    astore 5 
L55:    aload_3 
L56:    ldc_w 'id' 
L59:    invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L62:    astore 6 
L64:    aload_3 
L65:    ldc_w 'cost_frigate' 
L68:    invokevirtual Method org/json/JSONObject getInt (Ljava/lang/String;)I 
L71:    istore 7 
L73:    aload_3 
L74:    ldc_w 'cost_dest' 
L77:    invokevirtual Method org/json/JSONObject getInt (Ljava/lang/String;)I 
L80:    istore 8 
L82:    aload_3 
L83:    ldc_w 'cost_cruiser' 
L86:    invokevirtual Method org/json/JSONObject getInt (Ljava/lang/String;)I 
L89:    istore 9 
L91:    aload_3 
L92:    ldc_w 'cost_capital' 
L95:    invokevirtual Method org/json/JSONObject getInt (Ljava/lang/String;)I 
L98:    istore 10 
L100:   aload_3 
L101:   ldc_w 'tier' 
L104:   iconst_0 
L105:   invokevirtual Method org/json/JSONObject optInt (Ljava/lang/String;I)I 
L108:   istore 11 
L110:   aload_3 
L111:   ldc_w 'desc' 
L114:   ldc_w 'No description... yet.' 
L117:   invokevirtual Method org/json/JSONObject optString [u798] 
L120:   astore 12 
L122:   aload_3 
L123:   ldc_w 'sModDesc' 
L126:   ldc_w '' 
L129:   invokevirtual Method org/json/JSONObject optString [u798] 
L132:   astore 13 
L134:   aload_3 
L135:   ldc_w 'short' 
L138:   ldc_w 'No description... yet.' 
L141:   invokevirtual Method org/json/JSONObject optString [u798] 
L144:   astore 14 
L146:   aload_3 
L147:   ldc_w 'script' 
L150:   invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L153:   astore 15 
L155:   getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L158:   ldc_w 'Loading hullmod [%s] (source: [%s])' 
L161:   iconst_2 
L162:   anewarray java/lang/Object 
L165:   dup 
L166:   iconst_0 
L167:   aload 5 
L169:   aastore 
L170:   dup 
L171:   iconst_1 
L172:   aload_3 
L173:   getstatic Field com/fs/starfarer/loading/LoadingUtils 'super' Ljava/lang/String; 
L176:   invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L179:   aastore 
L180:   invokestatic Method java/lang/String format (Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String; 
L183:   invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L186:   aload 15 
L188:   invokestatic Method com/fs/starfarer/loading/scripts/ScriptStore Object (Ljava/lang/String;)V 
L191:   aload 4 
L193:   aload_3 
L194:   ldc_w 'rarity' 
L197:   dconst_1 
L198:   invokevirtual Method org/json/JSONObject optDouble (Ljava/lang/String;D)D 
L201:   d2f 
L202:   invokevirtual Method com/fs/starfarer/loading/specs/O00O setRarity (F)V 
L205:   aload_3 
L206:   ldc_w 'unlocked' 
L209:   invokevirtual Method org/json/JSONObject has (Ljava/lang/String;)Z 
L212:   ifeq L228 
L215:   aload 4 
L217:   aload_3 
L218:   ldc_w 'unlocked' 
L221:   iconst_0 
L222:   invokevirtual Method org/json/JSONObject optBoolean (Ljava/lang/String;Z)Z 
L225:   invokevirtual Method com/fs/starfarer/loading/specs/O00O setAlwaysUnlocked (Z)V 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONArray Integer Object org/json/JSONObject Object com/fs/starfarer/loading/specs/O00O Object java/lang/String Object java/lang/String Integer Integer Integer Integer Integer Object java/lang/String Object java/lang/String Object java/lang/String Object java/lang/String 
            stack 
        .end stack 
L228:   aload_3 
L229:   ldc_w 'hidden' 
L232:   invokevirtual Method org/json/JSONObject has (Ljava/lang/String;)Z 
L235:   ifeq L251 
L238:   aload 4 
L240:   aload_3 
L241:   ldc_w 'hidden' 
L244:   iconst_0 
L245:   invokevirtual Method org/json/JSONObject optBoolean (Ljava/lang/String;Z)Z 
L248:   invokevirtual Method com/fs/starfarer/loading/specs/O00O setHidden (Z)V 

        .stack same 
L251:   aload_3 
L252:   ldc_w 'hiddenEverywhere' 
L255:   invokevirtual Method org/json/JSONObject has (Ljava/lang/String;)Z 
L258:   ifeq L274 
L261:   aload 4 
L263:   aload_3 
L264:   ldc_w 'hiddenEverywhere' 
L267:   iconst_0 
L268:   invokevirtual Method org/json/JSONObject optBoolean (Ljava/lang/String;Z)Z 
L271:   invokevirtual Method com/fs/starfarer/loading/specs/O00O setHiddenEverywhere (Z)V 

        .stack same 
L274:   aload_3 
L275:   ldc_w 'tags' 
L278:   aconst_null 
L279:   invokevirtual Method org/json/JSONObject optString [u798] 
L282:   astore 16 
L284:   aload 16 
L286:   ifnull L355 
L289:   aload 16 
L291:   ldc_w ',' 
L294:   invokevirtual Method java/lang/String split (Ljava/lang/String;)[Ljava/lang/String; 
L297:   astore 17 
L299:   aload 17 
L301:   dup 
L302:   astore 21 
L304:   arraylength 
L305:   istore 20 
L307:   iconst_0 
L308:   istore 19 
L310:   goto L348 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONArray Integer Object org/json/JSONObject Object com/fs/starfarer/loading/specs/O00O Object java/lang/String Object java/lang/String Integer Integer Integer Integer Integer Object java/lang/String Object java/lang/String Object java/lang/String Object java/lang/String Object java/lang/String Object [Ljava/lang/String; Top Integer Integer Object [Ljava/lang/String; 
            stack 
        .end stack 
L313:   aload 21 
L315:   iload 19 
L317:   aaload 
L318:   astore 18 
L320:   aload 18 
L322:   invokevirtual Method java/lang/String trim ()Ljava/lang/String; 
L325:   astore 18 
L327:   aload 18 
L329:   invokevirtual Method java/lang/String isEmpty ()Z 
L332:   ifeq L338 
L335:   goto L345 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONArray Integer Object org/json/JSONObject Object com/fs/starfarer/loading/specs/O00O Object java/lang/String Object java/lang/String Integer Integer Integer Integer Integer Object java/lang/String Object java/lang/String Object java/lang/String Object java/lang/String Object java/lang/String Object [Ljava/lang/String; Object java/lang/String Integer Integer Object [Ljava/lang/String; 
            stack 
        .end stack 
L338:   aload 4 
L340:   aload 18 
L342:   invokevirtual Method com/fs/starfarer/loading/specs/O00O addTag (Ljava/lang/String;)V 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONArray Integer Object org/json/JSONObject Object com/fs/starfarer/loading/specs/O00O Object java/lang/String Object java/lang/String Integer Integer Integer Integer Integer Object java/lang/String Object java/lang/String Object java/lang/String Object java/lang/String Object java/lang/String Object [Ljava/lang/String; Top Integer Integer Object [Ljava/lang/String; 
            stack 
        .end stack 
L345:   iinc 19 1 

        .stack same 
L348:   iload 19 
L350:   iload 20 
L352:   if_icmplt L313 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONArray Integer Object org/json/JSONObject Object com/fs/starfarer/loading/specs/O00O Object java/lang/String Object java/lang/String Integer Integer Integer Integer Integer Object java/lang/String Object java/lang/String Object java/lang/String Object java/lang/String Object java/lang/String 
            stack 
        .end stack 
L355:   aload_3 
L356:   ldc_w 'uiTags' 
L359:   aconst_null 
L360:   invokevirtual Method org/json/JSONObject optString [u798] 
L363:   astore 16 
L365:   aload 16 
L367:   ifnull L436 
L370:   aload 16 
L372:   ldc_w ',' 
L375:   invokevirtual Method java/lang/String split (Ljava/lang/String;)[Ljava/lang/String; 
L378:   astore 17 
L380:   aload 17 
L382:   dup 
L383:   astore 21 
L385:   arraylength 
L386:   istore 20 
L388:   iconst_0 
L389:   istore 19 
L391:   goto L429 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONArray Integer Object org/json/JSONObject Object com/fs/starfarer/loading/specs/O00O Object java/lang/String Object java/lang/String Integer Integer Integer Integer Integer Object java/lang/String Object java/lang/String Object java/lang/String Object java/lang/String Object java/lang/String Object [Ljava/lang/String; Top Integer Integer Object [Ljava/lang/String; 
            stack 
        .end stack 
L394:   aload 21 
L396:   iload 19 
L398:   aaload 
L399:   astore 18 
L401:   aload 18 
L403:   invokevirtual Method java/lang/String trim ()Ljava/lang/String; 
L406:   astore 18 
L408:   aload 18 
L410:   invokevirtual Method java/lang/String isEmpty ()Z 
L413:   ifeq L419 
L416:   goto L426 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONArray Integer Object org/json/JSONObject Object com/fs/starfarer/loading/specs/O00O Object java/lang/String Object java/lang/String Integer Integer Integer Integer Integer Object java/lang/String Object java/lang/String Object java/lang/String Object java/lang/String Object java/lang/String Object [Ljava/lang/String; Object java/lang/String Integer Integer Object [Ljava/lang/String; 
            stack 
        .end stack 
L419:   aload 4 
L421:   aload 18 
L423:   invokevirtual Method com/fs/starfarer/loading/specs/O00O addUITag (Ljava/lang/String;)V 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONArray Integer Object org/json/JSONObject Object com/fs/starfarer/loading/specs/O00O Object java/lang/String Object java/lang/String Integer Integer Integer Integer Integer Object java/lang/String Object java/lang/String Object java/lang/String Object java/lang/String Object java/lang/String Object [Ljava/lang/String; Top Integer Integer Object [Ljava/lang/String; 
            stack 
        .end stack 
L426:   iinc 19 1 

        .stack same 
L429:   iload 19 
L431:   iload 20 
L433:   if_icmplt L394 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONArray Integer Object org/json/JSONObject Object com/fs/starfarer/loading/specs/O00O Object java/lang/String Object java/lang/String Integer Integer Integer Integer Integer Object java/lang/String Object java/lang/String Object java/lang/String Object java/lang/String Object java/lang/String 
            stack 
        .end stack 
L436:   aload 4 
L438:   aload_3 
L439:   ldc_w 'base value' 
L442:   ldc2_w +1000.0 
L445:   invokevirtual Method org/json/JSONObject optDouble (Ljava/lang/String;D)D 
L448:   d2f 
L449:   invokevirtual Method com/fs/starfarer/loading/specs/O00O setBaseValue (F)V 
L452:   aload_3 
L453:   ldc_w 'tech/manufacturer' 
L456:   ldc_w 'Common' 
L459:   invokevirtual Method org/json/JSONObject optString [u798] 
L462:   astore 17 
L464:   aload 17 
L466:   invokevirtual Method java/lang/String isEmpty ()Z 
L469:   ifeq L477 
L472:   ldc_w 'Common' 
L475:   astore 17 

        .stack append Object java/lang/String 
L477:   aload 4 
L479:   aload 17 
L481:   invokevirtual Method com/fs/starfarer/loading/specs/O00O setManufacturer (Ljava/lang/String;)V 
L484:   aload 4 
L486:   aload 6 
L488:   invokevirtual Method com/fs/starfarer/loading/specs/O00O setId (Ljava/lang/String;)V 
L491:   aload 4 
L493:   aload 5 
L495:   invokevirtual Method com/fs/starfarer/loading/specs/O00O setDisplayName (Ljava/lang/String;)V 
L498:   aload 4 
L500:   iload 7 
L502:   invokevirtual Method com/fs/starfarer/loading/specs/O00O setFrigateCost (I)V 
L505:   aload 4 
L507:   iload 8 
L509:   invokevirtual Method com/fs/starfarer/loading/specs/O00O setDestroyerCost (I)V 
L512:   aload 4 
L514:   iload 9 
L516:   invokevirtual Method com/fs/starfarer/loading/specs/O00O setCruiserCost (I)V 
L519:   aload 4 
L521:   iload 10 
L523:   invokevirtual Method com/fs/starfarer/loading/specs/O00O setCapitalCost (I)V 
L526:   aload 4 
L528:   aload 12 
L530:   invokevirtual Method com/fs/starfarer/loading/specs/O00O setDescriptionFormat (Ljava/lang/String;)V 
L533:   aload 4 
L535:   aload 13 
L537:   invokevirtual Method com/fs/starfarer/loading/specs/O00O setSModEffectFormat (Ljava/lang/String;)V 
L540:   aload 4 
L542:   aload 14 
L544:   invokevirtual Method com/fs/starfarer/loading/specs/O00O setShortDesc (Ljava/lang/String;)V 
L547:   aload 4 
L549:   iload 11 
L551:   invokevirtual Method com/fs/starfarer/loading/specs/O00O setTier (I)V 
L554:   aload 4 
L556:   aload 15 
L558:   invokevirtual Method com/fs/starfarer/loading/specs/O00O setEffectClass (Ljava/lang/String;)V 
L561:   aload 4 
L563:   aload_3 
L564:   ldc_w 'sprite' 
L567:   aconst_null 
L568:   invokevirtual Method org/json/JSONObject optString [u798] 
L571:   invokevirtual Method com/fs/starfarer/loading/specs/O00O setSpriteName (Ljava/lang/String;)V 
L574:   aload_0 
L575:   ifnull L634 
L578:   aload 4 
L580:   invokevirtual Method com/fs/starfarer/loading/specs/O00O getSpriteName ()Ljava/lang/String; 
L583:   ifnull L613 
L586:   aload 4 
L588:   invokevirtual Method com/fs/starfarer/loading/specs/O00O getSpriteName ()Ljava/lang/String; 
L591:   invokevirtual Method java/lang/String isEmpty ()Z 
L594:   ifne L613 
L597:   aload_0 
L598:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L601:   aload 4 
L603:   invokevirtual Method com/fs/starfarer/loading/specs/O00O getSpriteName ()Ljava/lang/String; 
L606:   iconst_1 
L607:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u22] 
L610:   goto L634 

        .stack same_extended 
L613:   aload 4 
L615:   ldc_w 'graphics/hullmods/generic_mod.png' 
L618:   invokevirtual Method com/fs/starfarer/loading/specs/O00O setSpriteName (Ljava/lang/String;)V 
L621:   aload_0 
L622:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L625:   aload 4 
L627:   invokevirtual Method com/fs/starfarer/loading/specs/O00O getSpriteName ()Ljava/lang/String; 
L630:   iconst_0 
L631:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u22] 

        .stack same 
L634:   getstatic Field com/fs/starfarer/loading/SpecStore float Ljava/util/List; 
L637:   aload 4 
L639:   invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L644:   pop 
L645:   ldc_w Class com/fs/starfarer/loading/specs/O00O 
L648:   aload 6 
L650:   aload 4 
L652:   invokestatic Method com/fs/starfarer/loading/SpecStore o00000 [u346] 
L655:   iinc 2 1 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONArray Integer 
            stack 
        .end stack 
L658:   iload_2 
L659:   aload_1 
L660:   invokevirtual Method org/json/JSONArray length ()I 
L663:   if_icmplt L25 
L666:   return 
L667:   
    .end code 
.end method 

.method public static 'ö00000' : ()Ljava/util/List; 
    .signature ()Ljava/util/List<Lcom/fs/starfarer/loading/specs/O00O;>; 
    .code stack 1 locals 0 
L0:     getstatic Field com/fs/starfarer/loading/SpecStore float Ljava/util/List; 
L3:     areturn 
L4:     
    .end code 
.end method 

.method private static 'ÖO0000' : (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
    .exceptions java/io/IOException org/json/JSONException 
    .code stack 4 locals 10 
L0:     getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L3:     ldc_w 'Loading sound sets' 
L6:     invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L9:     ldc_w 'data/config/sounds.json' 
L12:    invokestatic Method com/fs/starfarer/loading/LoadingUtils 'Ó00000' (Ljava/lang/String;)Lorg/json/JSONObject; 
L15:    astore_1 
L16:    aload_1 
L17:    invokestatic Method org/json/JSONObject getNames (Lorg/json/JSONObject;)[Ljava/lang/String; 
L20:    dup 
L21:    astore 5 
L23:    arraylength 
L24:    istore 4 
L26:    iconst_0 
L27:    istore_3 
L28:    goto L174 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Top Integer Integer Object [Ljava/lang/String; 
            stack 
        .end stack 
L31:    aload 5 
L33:    iload_3 
L34:    aaload 
L35:    astore_2 
L36:    aload_2 
L37:    ldc_w 'music' 
L40:    invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z 
L43:    ifeq L59 
L46:    aload_1 
L47:    ldc_w 'music' 
L50:    invokevirtual Method org/json/JSONObject getJSONObject (Ljava/lang/String;)Lorg/json/JSONObject; 
L53:    invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Lorg/json/JSONObject;)V 
L56:    goto L171 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Object java/lang/String Integer Integer Object [Ljava/lang/String; 
            stack 
        .end stack 
L59:    iconst_0 
L60:    istore 6 
        .catch org/json/JSONException from L62 to L68 using L71 
L62:    aload_1 
L63:    aload_2 
L64:    invokevirtual Method org/json/JSONObject getJSONArray (Ljava/lang/String;)Lorg/json/JSONArray; 
L67:    pop 
L68:    goto L76 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Object java/lang/String Integer Integer Object [Ljava/lang/String; Integer 
            stack Object org/json/JSONException 
        .end stack 
L71:    astore 7 
L73:    iconst_1 
L74:    istore 6 

        .stack same 
L76:    iload 6 
L78:    ifeq L98 
L81:    new com/fs/starfarer/loading/specs/K 
L84:    dup 
L85:    aload_1 
L86:    aload_2 
L87:    invokevirtual Method org/json/JSONObject getJSONObject (Ljava/lang/String;)Lorg/json/JSONObject; 
L90:    invokespecial Method com/fs/starfarer/loading/specs/K <init> (Lorg/json/JSONObject;)V 
L93:    astore 7 
L95:    goto L112 

        .stack same 
L98:    new com/fs/starfarer/loading/specs/K 
L101:   dup 
L102:   aload_1 
L103:   aload_2 
L104:   invokevirtual Method org/json/JSONObject getJSONArray (Ljava/lang/String;)Lorg/json/JSONArray; 
L107:   invokespecial Method com/fs/starfarer/loading/specs/K <init> (Lorg/json/JSONArray;)V 
L110:   astore 7 

        .stack append Object com/fs/starfarer/loading/specs/K 
L112:   ldc_w Class com/fs/starfarer/loading/specs/K 
L115:   aload_2 
L116:   aload 7 
L118:   invokestatic Method com/fs/starfarer/loading/SpecStore o00000 [u346] 
L121:   aload 7 
L123:   invokevirtual Method com/fs/starfarer/loading/specs/K o00000 ()Ljava/util/List; 
L126:   invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L131:   astore 9 
L133:   goto L161 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Object java/lang/String Integer Integer Object [Ljava/lang/String; Integer Object com/fs/starfarer/loading/specs/K Top Object java/util/Iterator 
            stack 
        .end stack 
L136:   aload 9 
L138:   invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L143:   checkcast com/fs/starfarer/loading/specs/e 
L146:   astore 8 
L148:   aload_0 
L149:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ö00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L152:   aload 8 
L154:   invokevirtual Method com/fs/starfarer/loading/specs/e 'super' ()Ljava/lang/String; 
L157:   iconst_1 
L158:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u22] 

        .stack same 
L161:   aload 9 
L163:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L168:   ifne L136 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Top Integer Integer Object [Ljava/lang/String; 
            stack 
        .end stack 
L171:   iinc 3 1 

        .stack same 
L174:   iload_3 
L175:   iload 4 
L177:   if_icmplt L31 
L180:   return 
L181:   
    .end code 
.end method 

.method private static o00000 : (Lorg/json/JSONObject;)V 
    .exceptions org/json/JSONException java/io/IOException 
    .code stack 3 locals 9 
L0:     aload_0 
L1:     invokevirtual Method org/json/JSONObject names ()Lorg/json/JSONArray; 
L4:     astore_1 
L5:     iconst_0 
L6:     istore_2 
L7:     goto L96 

        .stack append Object org/json/JSONArray Integer 
L10:    aload_1 
L11:    iload_2 
L12:    invokevirtual Method org/json/JSONArray getString (I)Ljava/lang/String; 
L15:    astore_3 
L16:    new com/fs/starfarer/loading/specs/b 
L19:    dup 
L20:    aload_3 
L21:    invokespecial Method com/fs/starfarer/loading/specs/b <init> (Ljava/lang/String;)V 
L24:    astore 4 
L26:    aload_0 
L27:    aload_3 
L28:    invokevirtual Method org/json/JSONObject getJSONArray (Ljava/lang/String;)Lorg/json/JSONArray; 
L31:    astore 5 
L33:    iconst_0 
L34:    istore 6 
L36:    goto L74 

        .stack full 
            locals Object org/json/JSONObject Object org/json/JSONArray Integer Object java/lang/String Object com/fs/starfarer/loading/specs/b Object org/json/JSONArray Integer 
            stack 
        .end stack 
L39:    aload 5 
L41:    iload 6 
L43:    invokevirtual Method org/json/JSONArray getJSONObject (I)Lorg/json/JSONObject; 
L46:    astore 7 
L48:    new com/fs/starfarer/loading/int 
L51:    dup 
L52:    aload 7 
L54:    invokespecial Method com/fs/starfarer/loading/int <init> (Lorg/json/JSONObject;)V 
L57:    astore 8 
L59:    aload 8 
L61:    invokevirtual Method com/fs/starfarer/loading/int o00000 ()V 
L64:    aload 4 
L66:    aload 8 
L68:    invokevirtual Method com/fs/starfarer/loading/specs/b new (Lcom/fs/starfarer/loading/int;)V 
L71:    iinc 6 1 

        .stack same 
L74:    iload 6 
L76:    aload 5 
L78:    invokevirtual Method org/json/JSONArray length ()I 
L81:    if_icmplt L39 
L84:    ldc_w Class com/fs/starfarer/loading/specs/b 
L87:    aload_3 
L88:    aload 4 
L90:    invokestatic Method com/fs/starfarer/loading/SpecStore o00000 [u346] 
L93:    iinc 2 1 

        .stack full 
            locals Object org/json/JSONObject Object org/json/JSONArray Integer 
            stack 
        .end stack 
L96:    iload_2 
L97:    aload_1 
L98:    invokevirtual Method org/json/JSONArray length ()I 
L101:   if_icmplt L10 
L104:   return 
L105:   
    .end code 
.end method 

.method public static oO0000 : (Lcom/fs/starfarer/loading/ResourceLoaderState;)V 
    .exceptions java/io/IOException org/json/JSONException 
    .code stack 4 locals 8 
L0:     getstatic Field com/fs/starfarer/loading/SpecStore 'Ö00000' Lorg/apache/log4j/Logger; 
L3:     ldc_w 'Loading planet data' 
L6:     invokevirtual Method org/apache/log4j/Logger info (Ljava/lang/Object;)V 
L9:     ldc_w 'data/config/planets.json' 
L12:    invokestatic Method com/fs/starfarer/loading/LoadingUtils 'Ó00000' (Ljava/lang/String;)Lorg/json/JSONObject; 
L15:    astore_1 
L16:    aload_1 
L17:    invokestatic Method org/json/JSONObject getNames (Lorg/json/JSONObject;)[Ljava/lang/String; 
L20:    dup 
L21:    astore 5 
L23:    arraylength 
L24:    istore 4 
L26:    iconst_0 
L27:    istore_3 
L28:    goto L157 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Top Integer Integer Object [Ljava/lang/String; 
            stack 
        .end stack 
L31:    aload 5 
L33:    iload_3 
L34:    aaload 
L35:    astore_2 
L36:    aload_1 
L37:    aload_2 
L38:    invokevirtual Method org/json/JSONObject optJSONObject (Ljava/lang/String;)Lorg/json/JSONObject; 
L41:    astore 6 
L43:    aload 6 
L45:    ifnonnull L51 
L48:    goto L154 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Object java/lang/String Integer Integer Object [Ljava/lang/String; Object org/json/JSONObject 
            stack 
        .end stack 
L51:    new com/fs/starfarer/loading/specs/PlanetSpec 
L54:    dup 
L55:    aload_2 
L56:    aload 6 
L58:    invokespecial Method com/fs/starfarer/loading/specs/PlanetSpec <init> (Ljava/lang/String;Lorg/json/JSONObject;)V 
L61:    astore 7 
L63:    ldc_w Class com/fs/starfarer/loading/specs/PlanetSpec 
L66:    aload_2 
L67:    aload 7 
L69:    invokestatic Method com/fs/starfarer/loading/SpecStore o00000 [u346] 
L72:    aload_0 
L73:    ifnull L154 
L76:    aload_0 
L77:    getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L80:    aload 7 
L82:    invokevirtual Method com/fs/starfarer/loading/specs/PlanetSpec getTexture ()Ljava/lang/String; 
L85:    iconst_2 
L86:    invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u22] 
L89:    aload_0 
L90:    getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L93:    aload 7 
L95:    invokevirtual Method com/fs/starfarer/loading/specs/PlanetSpec getCloudTexture ()Ljava/lang/String; 
L98:    iconst_2 
L99:    invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u22] 
L102:   aload_0 
L103:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L106:   aload 7 
L108:   invokevirtual Method com/fs/starfarer/loading/specs/PlanetSpec getGlowTexture ()Ljava/lang/String; 
L111:   iconst_2 
L112:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u22] 
L115:   aload_0 
L116:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L119:   aload 7 
L121:   invokevirtual Method com/fs/starfarer/loading/specs/PlanetSpec getIconTexture ()Ljava/lang/String; 
L124:   iconst_1 
L125:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u22] 
L128:   aload_0 
L129:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L132:   aload 7 
L134:   invokevirtual Method com/fs/starfarer/loading/specs/PlanetSpec getCoronaTexture ()Ljava/lang/String; 
L137:   iconst_2 
L138:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u22] 
L141:   aload_0 
L142:   getstatic Field com/fs/starfarer/loading/ResourceLoaderState$o 'Ò00000' Lcom/fs/starfarer/loading/ResourceLoaderState$o; 
L145:   aload 7 
L147:   invokevirtual Method com/fs/starfarer/loading/specs/PlanetSpec getStarscapeIcon ()Ljava/lang/String; 
L150:   iconst_2 
L151:   invokevirtual Method com/fs/starfarer/loading/ResourceLoaderState queueResource [u22] 

        .stack full 
            locals Object com/fs/starfarer/loading/ResourceLoaderState Object org/json/JSONObject Top Integer Integer Object [Ljava/lang/String; 
            stack 
        .end stack 
L154:   iinc 3 1 

        .stack same 
L157:   iload_3 
L158:   iload 4 
L160:   if_icmplt L31 
L163:   return 
L164:   
    .end code 
.end method 

.method public static new : ()Ljava/util/List; 
    .signature ()Ljava/util/List<Lcom/fs/starfarer/title/Object/Oo0O;>; 
    .code stack 1 locals 0 
L0:     getstatic Field com/fs/starfarer/loading/SpecStore class Ljava/util/List; 
L3:     areturn 
L4:     
    .end code 
.end method 

.method public static 'Ô00000' : (Ljava/lang/Class;)Ljava/util/Collection; 
    .signature (Ljava/lang/Class;)Ljava/util/Collection<Ljava/lang/String;>; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokestatic Method com/fs/starfarer/loading/SpecStore new (Ljava/lang/Class;)Ljava/util/Map; 
L4:     invokeinterface InterfaceMethod java/util/Map keySet ()Ljava/util/Set; 1 
L9:     areturn 
L10:    
    .end code 
.end method 

.method public static o00000 : (Ljava/lang/Class;)Ljava/util/Collection; 
    .signature (Ljava/lang/Class;)Ljava/util/Collection<Ljava/lang/Object;>; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokestatic Method com/fs/starfarer/loading/SpecStore new (Ljava/lang/Class;)Ljava/util/Map; 
L4:     invokeinterface InterfaceMethod java/util/Map values ()Ljava/util/Collection; 1 
L9:     areturn 
L10:    
    .end code 
.end method 

.method public static null : ()Ljava/util/List; 
    .signature ()Ljava/util/List<Lcom/fs/starfarer/loading/specs/O00O;>; 
    .code stack 2 locals 2 
L0:     getstatic Field com/fs/starfarer/loading/SpecStore 'Ø00000' Ljava/util/List; 
L3:     ifnonnull L92 
L6:     new java/util/ArrayList 
L9:     dup 
L10:    invokespecial Method java/util/ArrayList <init> ()V 
L13:    putstatic Field com/fs/starfarer/loading/SpecStore 'Ø00000' Ljava/util/List; 
L16:    ldc_w Class com/fs/starfarer/loading/specs/O00O 
L19:    invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/lang/Class;)Ljava/util/Collection; 
L22:    invokeinterface InterfaceMethod java/util/Collection iterator ()Ljava/util/Iterator; 1 
L27:    astore_1 
L28:    goto L83 

        .stack full 
            locals Top Object java/util/Iterator 
            stack 
        .end stack 
L31:    aload_1 
L32:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L37:    astore_0 
L38:    aload_0 
L39:    instanceof com/fs/starfarer/loading/specs/O00O 
L42:    ifeq L83 
L45:    aload_0 
L46:    checkcast com/fs/starfarer/loading/specs/O00O 
L49:    invokevirtual Method com/fs/starfarer/loading/specs/O00O getFleetEffect ()Lcom/fs/starfarer/api/combat/HullModFleetEffect; 
L52:    ifnull L83 
L55:    aload_0 
L56:    checkcast com/fs/starfarer/loading/specs/O00O 
L59:    invokevirtual Method com/fs/starfarer/loading/specs/O00O getFleetEffect ()Lcom/fs/starfarer/api/combat/HullModFleetEffect; 
L62:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/HullModFleetEffect withAdvanceInCampaign ()Z 1 
L67:    ifeq L83 
L70:    getstatic Field com/fs/starfarer/loading/SpecStore 'Ø00000' Ljava/util/List; 
L73:    aload_0 
L74:    checkcast com/fs/starfarer/loading/specs/O00O 
L77:    invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L82:    pop 

        .stack same 
L83:    aload_1 
L84:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L89:    ifne L31 

        .stack full 
            locals 
            stack 
        .end stack 
L92:    getstatic Field com/fs/starfarer/loading/SpecStore 'Ø00000' Ljava/util/List; 
L95:    areturn 
L96:    
    .end code 
.end method 

.method public static 'Ô00000' : ()Ljava/util/List; 
    .signature ()Ljava/util/List<Lcom/fs/starfarer/loading/specs/O00O;>; 
    .code stack 2 locals 2 
L0:     getstatic Field com/fs/starfarer/loading/SpecStore 'Ó00000' Ljava/util/List; 
L3:     ifnonnull L92 
L6:     new java/util/ArrayList 
L9:     dup 
L10:    invokespecial Method java/util/ArrayList <init> ()V 
L13:    putstatic Field com/fs/starfarer/loading/SpecStore 'Ó00000' Ljava/util/List; 
L16:    ldc_w Class com/fs/starfarer/loading/specs/O00O 
L19:    invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/lang/Class;)Ljava/util/Collection; 
L22:    invokeinterface InterfaceMethod java/util/Collection iterator ()Ljava/util/Iterator; 1 
L27:    astore_1 
L28:    goto L83 

        .stack full 
            locals Top Object java/util/Iterator 
            stack 
        .end stack 
L31:    aload_1 
L32:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L37:    astore_0 
L38:    aload_0 
L39:    instanceof com/fs/starfarer/loading/specs/O00O 
L42:    ifeq L83 
L45:    aload_0 
L46:    checkcast com/fs/starfarer/loading/specs/O00O 
L49:    invokevirtual Method com/fs/starfarer/loading/specs/O00O getFleetEffect ()Lcom/fs/starfarer/api/combat/HullModFleetEffect; 
L52:    ifnull L83 
L55:    aload_0 
L56:    checkcast com/fs/starfarer/loading/specs/O00O 
L59:    invokevirtual Method com/fs/starfarer/loading/specs/O00O getFleetEffect ()Lcom/fs/starfarer/api/combat/HullModFleetEffect; 
L62:    invokeinterface InterfaceMethod com/fs/starfarer/api/combat/HullModFleetEffect withOnFleetSync ()Z 1 
L67:    ifeq L83 
L70:    getstatic Field com/fs/starfarer/loading/SpecStore 'Ó00000' Ljava/util/List; 
L73:    aload_0 
L74:    checkcast com/fs/starfarer/loading/specs/O00O 
L77:    invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L82:    pop 

        .stack same 
L83:    aload_1 
L84:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L89:    ifne L31 

        .stack full 
            locals 
            stack 
        .end stack 
L92:    getstatic Field com/fs/starfarer/loading/SpecStore 'Ó00000' Ljava/util/List; 
L95:    areturn 
L96:    
    .end code 
.end method 

.method public static 'Ó00000' : (Ljava/lang/Class;)V 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     invokestatic Method com/fs/starfarer/loading/SpecStore new (Ljava/lang/Class;)Ljava/util/Map; 
L4:     invokeinterface InterfaceMethod java/util/Map clear ()V 1 
L9:     return 
L10:    
    .end code 
.end method 

.method public static new : (Ljava/lang/Class;)Ljava/util/Map; 
    .signature (Ljava/lang/Class;)Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>; 
    .code stack 3 locals 2 
L0:     getstatic Field com/fs/starfarer/loading/SpecStore 'õ00000' Ljava/util/Map; 
L3:     aload_0 
L4:     invokeinterface InterfaceMethod java/util/Map get (Ljava/lang/Object;)Ljava/lang/Object; 2 
L9:     checkcast java/util/Map 
L12:    astore_1 
L13:    aload_1 
L14:    ifnonnull L36 
L17:    new java/util/LinkedHashMap 
L20:    dup 
L21:    invokespecial Method java/util/LinkedHashMap <init> ()V 
L24:    astore_1 
L25:    getstatic Field com/fs/starfarer/loading/SpecStore 'õ00000' Ljava/util/Map; 
L28:    aload_0 
L29:    aload_1 
L30:    invokeinterface InterfaceMethod java/util/Map put [u1718] 3 
L35:    pop 

        .stack append Object java/util/Map 
L36:    aload_1 
L37:    areturn 
L38:    
    .end code 
.end method 

.method public static o00000 : [u346] 
    .code stack 7 locals 4 
L0:     aload_1 
L1:     ifnull L11 
L4:     aload_1 
L5:     invokevirtual Method java/lang/String isEmpty ()Z 
L8:     ifeq L39 

        .stack same 
L11:    new java/lang/RuntimeException 
L14:    dup 
L15:    new java/lang/StringBuilder 
L18:    dup 
L19:    ldc_w 'Trying to map empty id to spec of class ' 
L22:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L25:    aload_0 
L26:    invokevirtual Method java/lang/Class getName ()Ljava/lang/String; 
L29:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L32:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L35:    invokespecial Method java/lang/RuntimeException <init> (Ljava/lang/String;)V 
L38:    athrow 

        .stack same 
L39:    aload_0 
L40:    invokestatic Method com/fs/starfarer/loading/SpecStore new (Ljava/lang/Class;)Ljava/util/Map; 
L43:    astore_3 
L44:    aload_3 
L45:    aload_1 
L46:    invokeinterface InterfaceMethod java/util/Map containsKey (Ljava/lang/Object;)Z 2 
L51:    ifeq L83 
L54:    new java/lang/RuntimeException 
L57:    dup 
L58:    ldc_w 'Spec of class [%s] with id [%s] already exists' 
L61:    iconst_2 
L62:    anewarray java/lang/Object 
L65:    dup 
L66:    iconst_0 
L67:    aload_0 
L68:    invokevirtual Method java/lang/Class getName ()Ljava/lang/String; 
L71:    aastore 
L72:    dup 
L73:    iconst_1 
L74:    aload_1 
L75:    aastore 
L76:    invokestatic Method java/lang/String format (Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String; 
L79:    invokespecial Method java/lang/RuntimeException <init> (Ljava/lang/String;)V 
L82:    athrow 

        .stack append Object java/util/Map 
L83:    aload_3 
L84:    aload_1 
L85:    aload_2 
L86:    invokeinterface InterfaceMethod java/util/Map put [u1718] 3 
L91:    pop 
L92:    return 
L93:    
    .end code 
.end method 

.method public static o00000 : [u585] 
    .signature '<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Ljava/lang/String;)TT;' 
    .code stack 3 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     iconst_1 
L3:     invokestatic Method com/fs/starfarer/loading/SpecStore o00000 (Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object; 
L6:     areturn 
L7:     
    .end code 
.end method 

.method public static o00000 : (Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object; 
    .signature '<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Ljava/lang/String;Z)TT;' 
    .code stack 7 locals 4 
L0:     aload_1 
L1:     ifnonnull L6 
L4:     aconst_null 
L5:     areturn 

        .stack same 
L6:     aload_0 
L7:     ldc_w Class com/fs/starfarer/loading/specs/g 
L10:    if_acmpne L18 
L13:    aload_1 
L14:    invokestatic Method com/fs/starfarer/loading/oO0O 'super' (Ljava/lang/String;)Lcom/fs/starfarer/loading/specs/g; 
L17:    areturn 

        .stack same 
L18:    aload_0 
L19:    ldc_w Class com/fs/starfarer/loading/specs/HullVariantSpec 
L22:    if_acmpne L31 
L25:    aload_1 
L26:    iload_2 
L27:    invokestatic Method com/fs/starfarer/loading/B o00000 (Ljava/lang/String;Z)Lcom/fs/starfarer/loading/specs/HullVariantSpec; 
L30:    areturn 

        .stack same 
L31:    aload_0 
L32:    ldc_w Class com/fs/starfarer/loading/specs/BaseWeaponSpec 
L35:    if_acmpne L43 
L38:    aload_1 
L39:    invokestatic Method com/fs/starfarer/loading/Q String (Ljava/lang/String;)Lcom/fs/starfarer/loading/specs/BaseWeaponSpec; 
L42:    areturn 

        .stack same 
L43:    aload_0 
L44:    ldc_w Class com/fs/starfarer/loading/specs/FighterWingSpec 
L47:    if_acmpne L56 
L50:    aload_1 
L51:    iload_2 
L52:    invokestatic Method com/fs/starfarer/loading/K o00000 (Ljava/lang/String;Z)Lcom/fs/starfarer/loading/specs/FighterWingSpec; 
L55:    areturn 

        .stack same 
L56:    aload_0 
L57:    invokestatic Method com/fs/starfarer/loading/SpecStore new (Ljava/lang/Class;)Ljava/util/Map; 
L60:    astore_3 
L61:    iload_2 
L62:    ifne L111 
L65:    aload_3 
L66:    aload_1 
L67:    invokeinterface InterfaceMethod java/util/Map containsKey (Ljava/lang/Object;)Z 2 
L72:    ifne L111 
L75:    aload_0 
L76:    ldc_w Class [u938] 
L79:    if_acmpeq L111 
L82:    new java/lang/RuntimeException 
L85:    dup 
L86:    ldc_w 'Spec of class [%s] with id [%s] not found' 
L89:    iconst_2 
L90:    anewarray java/lang/Object 
L93:    dup 
L94:    iconst_0 
L95:    aload_0 
L96:    invokevirtual Method java/lang/Class getName ()Ljava/lang/String; 
L99:    aastore 
L100:   dup 
L101:   iconst_1 
L102:   aload_1 
L103:   aastore 
L104:   invokestatic Method java/lang/String format (Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String; 
L107:   invokespecial Method java/lang/RuntimeException <init> (Ljava/lang/String;)V 
L110:   athrow 

        .stack append Object java/util/Map 
L111:   aload_3 
L112:   aload_1 
L113:   invokeinterface InterfaceMethod java/util/Map get (Ljava/lang/Object;)Ljava/lang/Object; 2 
L118:   areturn 
L119:   
    .end code 
.end method 

.method public static new : (Ljava/lang/Class;Ljava/lang/String;)Z 
    .signature '<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;Ljava/lang/String;)Z' 
    .code stack 2 locals 3 
L0:     aload_1 
L1:     ifnonnull L6 
L4:     iconst_0 
L5:     ireturn 

        .stack same 
L6:     aload_0 
L7:     ldc_w Class com/fs/starfarer/loading/specs/g 
L10:    if_acmpne L18 
L13:    aload_1 
L14:    invokestatic Method com/fs/starfarer/loading/oO0O String (Ljava/lang/String;)Z 
L17:    ireturn 

        .stack same 
L18:    aload_0 
L19:    ldc_w Class com/fs/starfarer/loading/specs/HullVariantSpec 
L22:    if_acmpne L30 
L25:    aload_1 
L26:    invokestatic Method com/fs/starfarer/loading/B 'Ô00000' (Ljava/lang/String;)Z 
L29:    ireturn 

        .stack same 
L30:    aload_0 
L31:    ldc_w Class com/fs/starfarer/loading/specs/BaseWeaponSpec 
L34:    if_acmpne L42 
L37:    aload_1 
L38:    invokestatic Method com/fs/starfarer/loading/Q 'Ó00000' (Ljava/lang/String;)Z 
L41:    ireturn 

        .stack same 
L42:    aload_0 
L43:    ldc_w Class com/fs/starfarer/loading/specs/FighterWingSpec 
L46:    if_acmpne L54 
L49:    aload_1 
L50:    invokestatic Method com/fs/starfarer/loading/K 'Ò00000' (Ljava/lang/String;)Z 
L53:    ireturn 

        .stack same 
L54:    aload_0 
L55:    invokestatic Method com/fs/starfarer/loading/SpecStore new (Ljava/lang/Class;)Ljava/util/Map; 
L58:    astore_2 
L59:    aload_2 
L60:    aload_1 
L61:    invokeinterface InterfaceMethod java/util/Map containsKey (Ljava/lang/Object;)Z 2 
L66:    ireturn 
L67:    
    .end code 
.end method 

.method public static 'õ00000' : ()V 
    .exceptions java/io/IOException org/json/JSONException 
    .code stack 4 locals 3 
L0:     ldc_w 'sim_opponents.csv' 
L3:     astore_0 
L4:     aconst_null 
L5:     new java/lang/StringBuilder 
L8:     dup 
L9:     ldc_w 'data/campaign/' 
L12:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L15:    aload_0 
L16:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L19:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L22:    invokestatic Method com/fs/starfarer/loading/LoadingUtils 'Ó00000' (Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray; 
L25:    astore_1 
L26:    iconst_0 
L27:    istore_2 
L28:    goto L54 

        .stack append Object java/lang/String Object org/json/JSONArray Integer 
L31:    getstatic Field com/fs/starfarer/loading/SpecStore null Ljava/util/List; 
L34:    aload_1 
L35:    iload_2 
L36:    invokevirtual Method org/json/JSONArray getJSONObject (I)Lorg/json/JSONObject; 
L39:    ldc_w 'variant id' 
L42:    invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L45:    invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L50:    pop 
L51:    iinc 2 1 

        .stack same 
L54:    iload_2 
L55:    aload_1 
L56:    invokevirtual Method org/json/JSONArray length ()I 
L59:    if_icmplt L31 
L62:    ldc_w 'sim_opponents_dev.csv' 
L65:    astore_0 
L66:    aconst_null 
L67:    new java/lang/StringBuilder 
L70:    dup 
L71:    ldc_w 'data/campaign/' 
L74:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L77:    aload_0 
L78:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L81:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L84:    invokestatic Method com/fs/starfarer/loading/LoadingUtils 'Ó00000' (Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray; 
L87:    astore_1 
L88:    iconst_0 
L89:    istore_2 
L90:    goto L116 

        .stack same 
L93:    getstatic Field com/fs/starfarer/loading/SpecStore new Ljava/util/List; 
L96:    aload_1 
L97:    iload_2 
L98:    invokevirtual Method org/json/JSONArray getJSONObject (I)Lorg/json/JSONObject; 
L101:   ldc_w 'variant id' 
L104:   invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L107:   invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L112:   pop 
L113:   iinc 2 1 

        .stack same 
L116:   iload_2 
L117:   aload_1 
L118:   invokevirtual Method org/json/JSONArray length ()I 
L121:   if_icmplt L93 
L124:   return 
L125:   
    .end code 
.end method 

.method public static class : ()V 
    .exceptions java/io/IOException org/json/JSONException 
    .code stack 3 locals 2 
L0:     aconst_null 
L1:     ldc_w 'data/config/title_screen_variants.csv' 
L4:     invokestatic Method com/fs/starfarer/loading/LoadingUtils 'Ó00000' (Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray; 
L7:     astore_0 
L8:     iconst_0 
L9:     istore_1 
L10:    goto L36 

        .stack append Object org/json/JSONArray Integer 
L13:    getstatic Field com/fs/starfarer/loading/SpecStore 'Ô00000' Ljava/util/List; 
L16:    aload_0 
L17:    iload_1 
L18:    invokevirtual Method org/json/JSONArray getJSONObject (I)Lorg/json/JSONObject; 
L21:    ldc_w 'variant id' 
L24:    invokevirtual Method org/json/JSONObject getString (Ljava/lang/String;)Ljava/lang/String; 
L27:    invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L32:    pop 
L33:    iinc 1 1 

        .stack same 
L36:    iload_1 
L37:    aload_0 
L38:    invokevirtual Method org/json/JSONArray length ()I 
L41:    if_icmplt L13 
L44:    return 
L45:    
    .end code 
.end method 

.method public static o00000 : ()Ljava/util/List; 
    .signature ()Ljava/util/List<Ljava/lang/String;>; 
    .code stack 1 locals 0 
L0:     getstatic Field com/fs/starfarer/loading/SpecStore null Ljava/util/List; 
L3:     areturn 
L4:     
    .end code 
.end method 

.method public static 'Ö00000' : ()Ljava/util/List; 
    .signature ()Ljava/util/List<Ljava/lang/String;>; 
    .code stack 1 locals 0 
L0:     getstatic Field com/fs/starfarer/loading/SpecStore new Ljava/util/List; 
L3:     areturn 
L4:     
    .end code 
.end method 

.method public static 'Ø00000' : ()Ljava/util/List; 
    .signature ()Ljava/util/List<Ljava/lang/String;>; 
    .code stack 1 locals 0 
L0:     getstatic Field com/fs/starfarer/loading/SpecStore 'Ô00000' Ljava/util/List; 
L3:     areturn 
L4:     
    .end code 
.end method 

.method public static OO0000 : ()Ljava/util/List; 
    .signature ()Ljava/util/List<Lcom/fs/starfarer/loading/o0OO;>; 
    .code stack 3 locals 5 
L0:     getstatic Field com/fs/starfarer/loading/SpecStore 'ö00000' Ljava/util/List; 
L3:     ifnull L10 
L6:     getstatic Field com/fs/starfarer/loading/SpecStore 'ö00000' Ljava/util/List; 
L9:     areturn 

        .stack same 
L10:    new java/util/ArrayList 
L13:    dup 
L14:    ldc_w Class com/fs/starfarer/loading/o0OO 
L17:    invokestatic Method com/fs/starfarer/loading/SpecStore 'Ô00000' (Ljava/lang/Class;)Ljava/util/Collection; 
L20:    invokespecial Method java/util/ArrayList <init> (Ljava/util/Collection;)V 
L23:    astore_0 
L24:    aload_0 
L25:    new com/fs/starfarer/loading/SpecStore$26 
L28:    dup 
L29:    invokespecial Method com/fs/starfarer/loading/SpecStore$26 <init> ()V 
L32:    invokestatic Method java/util/Collections sort (Ljava/util/List;Ljava/util/Comparator;)V 
L35:    new java/util/ArrayList 
L38:    dup 
L39:    invokespecial Method java/util/ArrayList <init> ()V 
L42:    astore_1 
L43:    aload_0 
L44:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L49:    astore_3 
L50:    goto L84 

        .stack full 
            locals Object java/util/List Object java/util/List Top Object java/util/Iterator 
            stack 
        .end stack 
L53:    aload_3 
L54:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L59:    checkcast java/lang/String 
L62:    astore_2 
L63:    ldc_w Class com/fs/starfarer/loading/o0OO 
L66:    aload_2 
L67:    invokestatic Method com/fs/starfarer/loading/SpecStore o00000 [u585] 
L70:    checkcast com/fs/starfarer/loading/o0OO 
L73:    astore 4 
L75:    aload_1 
L76:    aload 4 
L78:    invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L83:    pop 

        .stack same 
L84:    aload_3 
L85:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L90:    ifne L53 
L93:    aload_1 
L94:    putstatic Field com/fs/starfarer/loading/SpecStore 'ö00000' Ljava/util/List; 
L97:    aload_1 
L98:    areturn 
L99:    
    .end code 
.end method 

.method public static o00000 : (Ljava/lang/String;)Lcom/fs/starfarer/launcher/ModManager$ModSpec; 
    .code stack 4 locals 3 
L0:     aload_0 
L1:     ifnonnull L6 
L4:     aconst_null 
L5:     areturn 

        .stack same 
L6:     getstatic Field com/fs/starfarer/loading/SpecStore o00000 Ljava/util/Map; 
L9:     aload_0 
L10:    invokeinterface InterfaceMethod java/util/Map containsKey (Ljava/lang/Object;)Z 2 
L15:    ifeq L31 
L18:    getstatic Field com/fs/starfarer/loading/SpecStore o00000 Ljava/util/Map; 
L21:    aload_0 
L22:    invokeinterface InterfaceMethod java/util/Map get (Ljava/lang/Object;)Ljava/lang/Object; 2 
L27:    checkcast com/fs/starfarer/launcher/ModManager$ModSpec 
L30:    areturn 

        .stack same 
L31:    invokestatic Method com/fs/starfarer/launcher/ModManager getInstance ()Lcom/fs/starfarer/launcher/ModManager; 
L34:    invokevirtual Method com/fs/starfarer/launcher/ModManager getEnabledMods ()Ljava/util/List; 
L37:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1 
L42:    astore_2 
L43:    goto L105 

        .stack full 
            locals Object java/lang/String Top Object java/util/Iterator 
            stack 
        .end stack 
L46:    aload_2 
L47:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1 
L52:    checkcast com/fs/starfarer/launcher/ModManager$ModSpec 
L55:    astore_1 
L56:    aload_0 
L57:    new java/lang/StringBuilder 
L60:    dup 
L61:    ldc_w '.*mods.' 
L64:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V 
L67:    aload_1 
L68:    invokevirtual Method com/fs/starfarer/launcher/ModManager$ModSpec getDirName ()Ljava/lang/String; 
L71:    invokestatic Method java/util/regex/Pattern quote (Ljava/lang/String;)Ljava/lang/String; 
L74:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L77:    ldc_w '.*' 
L80:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder; 
L83:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String; 
L86:    invokevirtual Method java/lang/String matches (Ljava/lang/String;)Z 
L89:    ifeq L105 
L92:    getstatic Field com/fs/starfarer/loading/SpecStore o00000 Ljava/util/Map; 
L95:    aload_0 
L96:    aload_1 
L97:    invokeinterface InterfaceMethod java/util/Map put [u1718] 3 
L102:   pop 
L103:   aload_1 
L104:   areturn 

        .stack same 
L105:   aload_2 
L106:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1 
L111:   ifne L46 
L114:   getstatic Field com/fs/starfarer/loading/SpecStore o00000 Ljava/util/Map; 
L117:   aload_0 
L118:   aconst_null 
L119:   invokeinterface InterfaceMethod java/util/Map put [u1718] 3 
L124:   pop 
L125:   aconst_null 
L126:   areturn 
L127:   
    .end code 
.end method

.method public static init : (Lcom/fs/starfarer/loading/ResourceLoaderState;)V
    .code stack 1 locals 1
L0:     aload_0
L1:     invokestatic Method com/fs/starfarer/loading/SpecStore 'ÓO0000' (Lcom/fs/starfarer/loading/ResourceLoaderState;)V
L4:     return
L5:
        .linenumbertable
            L0 17
            L4 18
        .end linenumbertable
        .localvariabletable
            0 is var0 Lcom/fs/starfarer/loading/ResourceLoaderState; from L0 to L5
        .end localvariabletable
    .end code
    .exceptions java/io/IOException org/json/JSONException
.end method

.innerclasses 
    com/fs/starfarer/api/characters/FullName$Gender com/fs/starfarer/api/characters/FullName Gender public static final enum 
    com/fs/starfarer/api/combat/ShieldAPI$ShieldType com/fs/starfarer/api/combat/ShieldAPI ShieldType public static final enum 
    com/fs/starfarer/api/loading/Description$Type com/fs/starfarer/api/loading/Description Type public static final enum 
    com/fs/starfarer/combat/tasks/CombatTask$CombatTaskType com/fs/starfarer/combat/tasks/CombatTask CombatTaskType public static final enum 
    com/fs/starfarer/launcher/ModManager$ModSpec com/fs/starfarer/launcher/ModManager ModSpec public static 
    com/fs/starfarer/loading/O0oO$o com/fs/starfarer/loading/O0oO o public static final enum 
    com/fs/starfarer/loading/ResourceLoaderState$o com/fs/starfarer/loading/ResourceLoaderState o public static final enum 
    com/fs/starfarer/loading/SkillSpec$SkillEffectSpec com/fs/starfarer/loading/SkillSpec SkillEffectSpec public static 
    com/fs/starfarer/loading/SpecStore$1 [0] [0] 
    com/fs/starfarer/loading/SpecStore$10 [0] [0] 
    com/fs/starfarer/loading/SpecStore$11 [0] [0] 
    com/fs/starfarer/loading/SpecStore$12 [0] [0] 
    com/fs/starfarer/loading/SpecStore$13 [0] [0] 
    com/fs/starfarer/loading/SpecStore$14 [0] [0] 
    com/fs/starfarer/loading/SpecStore$15 [0] [0] 
    com/fs/starfarer/loading/SpecStore$16 [0] [0] 
    com/fs/starfarer/loading/SpecStore$17 [0] [0] 
    com/fs/starfarer/loading/SpecStore$18 [0] [0] 
    com/fs/starfarer/loading/SpecStore$19 [0] [0] 
    com/fs/starfarer/loading/SpecStore$2 [0] [0] 
    com/fs/starfarer/loading/SpecStore$20 [0] [0] 
    com/fs/starfarer/loading/SpecStore$21 [0] [0] 
    com/fs/starfarer/loading/SpecStore$22 [0] [0] 
    com/fs/starfarer/loading/SpecStore$23 [0] [0] 
    com/fs/starfarer/loading/SpecStore$24 [0] [0] 
    com/fs/starfarer/loading/SpecStore$25 [0] [0] 
    com/fs/starfarer/loading/SpecStore$26 [0] [0] 
    com/fs/starfarer/loading/SpecStore$3 [0] [0] 
    com/fs/starfarer/loading/SpecStore$4 [0] [0] 
    com/fs/starfarer/loading/SpecStore$5 [0] [0] 
    com/fs/starfarer/loading/SpecStore$6 [0] [0] 
    com/fs/starfarer/loading/SpecStore$7 [0] [0] 
    com/fs/starfarer/loading/SpecStore$8 [0] [0] 
    com/fs/starfarer/loading/SpecStore$9 [0] [0] 
    com/fs/starfarer/loading/SpecStore$Oo com/fs/starfarer/loading/SpecStore Oo public static interface abstract 
    com/fs/starfarer/loading/SpecStore$o com/fs/starfarer/loading/SpecStore o private static interface abstract 
    com/fs/starfarer/loading/specs/O0OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO$Oo com/fs/starfarer/loading/specs/O0OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO Oo public static 
.end innerclasses 
.nestmembers com/fs/starfarer/loading/SpecStore$1 com/fs/starfarer/loading/SpecStore$10 com/fs/starfarer/loading/SpecStore$11 com/fs/starfarer/loading/SpecStore$12 com/fs/starfarer/loading/SpecStore$13 com/fs/starfarer/loading/SpecStore$14 com/fs/starfarer/loading/SpecStore$15 com/fs/starfarer/loading/SpecStore$16 com/fs/starfarer/loading/SpecStore$17 com/fs/starfarer/loading/SpecStore$18 com/fs/starfarer/loading/SpecStore$19 com/fs/starfarer/loading/SpecStore$2 com/fs/starfarer/loading/SpecStore$20 com/fs/starfarer/loading/SpecStore$21 com/fs/starfarer/loading/SpecStore$22 com/fs/starfarer/loading/SpecStore$23 com/fs/starfarer/loading/SpecStore$24 com/fs/starfarer/loading/SpecStore$25 com/fs/starfarer/loading/SpecStore$26 com/fs/starfarer/loading/SpecStore$3 com/fs/starfarer/loading/SpecStore$4 com/fs/starfarer/loading/SpecStore$5 com/fs/starfarer/loading/SpecStore$6 com/fs/starfarer/loading/SpecStore$7 com/fs/starfarer/loading/SpecStore$8 com/fs/starfarer/loading/SpecStore$9 com/fs/starfarer/loading/SpecStore$Oo com/fs/starfarer/loading/SpecStore$o 
.const [u22] = Utf8 (Lcom/fs/starfarer/loading/ResourceLoaderState$o;Ljava/lang/String;I)V 
.const [u346] = Utf8 (Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V 
.const [u585] = Utf8 (Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object; 
.const [u607] = Utf8 (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lcom/fs/starfarer/loading/ResourceLoaderState;Lcom/fs/starfarer/loading/SpecStore$o;)V 
.const [u798] = Utf8 (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String; 
.const [u938] = Utf8 com/fs/starfarer/loading/OOoOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO 
.const [c1394] = Class [u938] 
.const [u1718] = Utf8 (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object; 
.end class 
