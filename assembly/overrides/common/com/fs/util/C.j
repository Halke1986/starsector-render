.version 61 0 
.class public super com/fs/util/C 
.super java/lang/Object 
.field private static 'Ó00000' Lcom/fs/util/C; 
.field private 'Ò00000' Ljava/util/List; .fieldattributes 
    .signature Ljava/util/List<Lcom/fs/util/C$Oo;>; 
.end fieldattributes 
.field private String Ljava/lang/String; 
.field public static 'super' Z 
.field private static volatile synthetic 'Õ00000' [I 

.method static <clinit> : ()V 
    .code stack 1 locals 0 
L0:     aconst_null 
L1:     putstatic Field com/fs/util/C 'Ó00000' Lcom/fs/util/C; 
L4:     iconst_0 
L5:     putstatic Field com/fs/util/C 'super' Z 
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
L12:    putfield Field com/fs/util/C 'Ò00000' Ljava/util/List; 
L15:    aload_0 
L16:    aconst_null 
L17:    putfield Field com/fs/util/C String Ljava/lang/String; 
L20:    return 
L21:    
    .end code 
.end method 

.method public static synchronized 'Ó00000' : ()Lcom/fs/util/C; 
    .code stack 2 locals 0 
L0:     getstatic Field com/fs/util/C 'Ó00000' Lcom/fs/util/C; 
L3:     ifnonnull L16 
L6:     new com/fs/util/C 
L9:     dup 
L10:    invokespecial Method com/fs/util/C <init> ()V 
L13:    putstatic Field com/fs/util/C 'Ó00000' Lcom/fs/util/C; 

        .stack same 
L16:    getstatic Field com/fs/util/C 'Ó00000' Lcom/fs/util/C; 
L19:    areturn 
L20:    
    .end code 
.end method 

.method public synchronized class : (Ljava/lang/String;)V 
    .code stack 5 locals 2 
L0:     aload_0 
L1:     getfield Field com/fs/util/C 'Ò00000' Ljava/util/List; 
L4:     new com/fs/util/C$Oo 
L7:     dup 
L8:     getstatic Field com/fs/util/C$o 'Ô00000' Lcom/fs/util/C$o; 
L11:    aload_1 
L12:    invokespecial Method com/fs/util/C$Oo <init> (Lcom/fs/util/C$o;Ljava/lang/String;)V 
L15:    invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L20:    pop 
L21:    return 
L22:    
    .end code 
.end method 

.method public synchronized o00000 : (Ljava/lang/String;ZLjava/lang/Object;)V 
    .code stack 8 locals 4 
L0:     aload_0 
L1:     getfield Field com/fs/util/C 'Ò00000' Ljava/util/List; 
L4:     iconst_0 
L5:     new com/fs/util/C$Oo 
L8:     dup 
L9:     getstatic Field com/fs/util/C$o 'Ô00000' Lcom/fs/util/C$o; 
L12:    aload_1 
L13:    iload_2 
L14:    aload_3 
L15:    invokespecial Method com/fs/util/C$Oo <init> (Lcom/fs/util/C$o;Ljava/lang/String;ZLjava/lang/Object;)V 
L18:    invokeinterface InterfaceMethod java/util/List add (ILjava/lang/Object;)V 3 
L23:    return 
L24:    
    .end code 
.end method 

.method public synchronized new : ()V 
    .code stack 5 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/util/C 'Ò00000' Ljava/util/List; 
L4:     new com/fs/util/C$Oo 
L7:     dup 
L8:     getstatic Field com/fs/util/C$o o00000 Lcom/fs/util/C$o; 
L11:    aconst_null 
L12:    invokespecial Method com/fs/util/C$Oo <init> (Lcom/fs/util/C$o;Ljava/lang/String;)V 
L15:    invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L20:    pop 
L21:    return 
L22:    
    .end code 
.end method 

.method public synchronized class : ()V 
    .code stack 5 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/util/C 'Ò00000' Ljava/util/List; 
L4:     new com/fs/util/C$Oo 
L7:     dup 
L8:     getstatic Field com/fs/util/C$o Object Lcom/fs/util/C$o; 
L11:    aconst_null 
L12:    invokespecial Method com/fs/util/C$Oo <init> (Lcom/fs/util/C$o;Ljava/lang/String;)V 
L15:    invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2 
L20:    pop 
L21:    return 
L22:    
    .end code 
.end method 

.method public synchronized 'Ô00000' : ()Ljava/util/List; 
    .signature ()Ljava/util/List<Lcom/fs/util/C$Oo;>; 
    .code stack 1 locals 1 
L0:     aload_0 
L1:     getfield Field com/fs/util/C 'Ò00000' Ljava/util/List; 
L4:     areturn 
L5:     
    .end code 
.end method 

.method public synchronized 'Ô00000' : (Ljava/lang/String;)Ljava/io/InputStream; 
    .exceptions java/io/IOException 
    .code stack 3 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     iconst_1 
L3:     invokevirtual Method com/fs/util/C 'Ó00000' (Ljava/lang/String;Z)Ljava/io/InputStream; 
L6:     areturn 
L7:     
    .end code 
.end method 

.method public synchronized 'Ö00000' : (Ljava/lang/String;)V 
    .code stack 2 locals 2 
L0:     aload_0 
L1:     aload_1 
L2:     putfield Field com/fs/util/C String Ljava/lang/String; 
L5:     return 
L6:     
    .end code 
.end method 

.method public synchronized 'Ó00000' : (Ljava/lang/String;Z)Ljava/io/InputStream; 
    .code stack 3 locals 3
L0:     aload_0
L1:     aload_1
L2:     iload_2
L3:     invokestatic Method com/genir/renderer/overrides/FileUtils loadInputStream (Lcom/fs/util/C;Ljava/lang/String;Z)Ljava/io/InputStream;
L6:     areturn
L7:
        .linenumbertable
            L0 18
        .end linenumbertable
        .localvariabletable
            0 is this Lcom/fs/util/C; from L0 to L7
            1 is var1 Ljava/lang/String; from L0 to L7
            2 is var2 Z from L0 to L7
        .end localvariabletable
    .end code
    .exceptions java/io/IOException
.end method

.method public synchronized new : (Ljava/lang/String;Z)J
    .exceptions java/io/IOException
    .code stack 4 locals 7
L0:     aload_0
L1:     getfield Field com/fs/util/C 'Ò00000' Ljava/util/List;
L4:     invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1
L9:     astore 4
L11:    goto L57

        .stack full
            locals Object com/fs/util/C Object java/lang/String Integer Top Object java/util/Iterator
            stack
        .end stack
L14:    aload 4
L16:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1
L21:    checkcast com/fs/util/C$Oo
L24:    astore_3
L25:    iload_2
L26:    ifne L39
L29:    aload_3
L30:    getfield Field com/fs/util/C$Oo String Z
L33:    ifeq L39
L36:    goto L57

        .stack full
            locals Object com/fs/util/C Object java/lang/String Integer Object com/fs/util/C$Oo Object java/util/Iterator
            stack
        .end stack
L39:    aload_0
L40:    aload_1
L41:    aload_3
L42:    invokevirtual Method com/fs/util/C new (Ljava/lang/String;Lcom/fs/util/C$Oo;)J
L45:    lstore 5
L47:    lload 5
L49:    lconst_0
L50:    lcmp
L51:    ifeq L57
L54:    lload 5
L56:    lreturn

        .stack full
            locals Object com/fs/util/C Object java/lang/String Integer Top Object java/util/Iterator
            stack
        .end stack
L57:    aload 4
L59:    invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1
L64:    ifne L14
L67:    lconst_0
L68:    lreturn
L69:
    .end code
.end method

.method public synchronized new : (Ljava/lang/String;Lcom/fs/util/C$Oo;)J
    .exceptions java/io/FileNotFoundException
    .code stack 5 locals 4
L0:     invokestatic Method com/fs/util/C o00000 ()[I
L3:     aload_2
L4:     getfield Field com/fs/util/C$Oo 'super' Lcom/fs/util/C$o;
L7:     invokevirtual Method com/fs/util/C$o ordinal ()I
L10:    iaload
L11:    tableswitch 1
            L59
            L36
            L57
            default : L105


        .stack same
L36:    new java/io/File
L39:    dup
L40:    aload_1
L41:    invokespecial Method java/io/File <init> (Ljava/lang/String;)V
L44:    astore_3
L45:    aload_3
L46:    invokevirtual Method java/io/File exists ()Z
L49:    ifeq L105
L52:    aload_3
L53:    invokevirtual Method java/io/File lastModified ()J
L56:    lreturn

        .stack same
L57:    lconst_0
L58:    lreturn

        .stack same
L59:    new java/io/File
L62:    dup
L63:    new java/lang/StringBuilder
L66:    dup
L67:    aload_2
L68:    getfield Field com/fs/util/C$Oo 'Ó00000' Ljava/lang/String;
L71:    invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String;
L74:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V
L77:    ldc '/'
L79:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L82:    aload_1
L83:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L86:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String;
L89:    invokespecial Method java/io/File <init> (Ljava/lang/String;)V
L92:    astore_3
L93:    aload_3
L94:    invokevirtual Method java/io/File exists ()Z
L97:    ifeq L105
L100:   aload_3
L101:   invokevirtual Method java/io/File lastModified ()J
L104:   lreturn

        .stack same
L105:   lconst_0
L106:   lreturn
L107:
    .end code
.end method

.method public synchronized new : (Ljava/lang/String;)Ljava/util/List;
    .code stack 2 locals 2
L0:     aload_0
L1:     aload_1
L2:     invokestatic Method com/genir/renderer/overrides/FileUtils loadInputStreams (Lcom/fs/util/C;Ljava/lang/String;)Ljava/util/List;
L5:     areturn
L6:
        .linenumbertable
            L0 13
        .end linenumbertable
        .localvariabletable
            0 is this Lcom/fs/util/C; from L0 to L6
            1 is var1 Ljava/lang/String; from L0 to L6
        .end localvariabletable
    .end code
    .exceptions java/io/IOException
    .signature (Ljava/lang/String;)Ljava/util/List<Lcom/fs/starfarer/api/util/Pair<Lcom/fs/util/C$Oo;Ljava/io/InputStream;>;>;
.end method

.method public synchronized o00000 : (Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .exceptions java/io/IOException
    .signature (Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List<Ljava/lang/String;>;
    .code stack 5 locals 13
L0:     iload_3
L1:     ifeq L11
L4:     aload_0
L5:     aload_1
L6:     aload_2
L7:     invokevirtual Method com/fs/util/C o00000 (Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
L10:    areturn

        .stack same
L11:    new java/util/ArrayList
L14:    dup
L15:    invokespecial Method java/util/ArrayList <init> ()V
L18:    astore 4
L20:    aload_0
L21:    getfield Field com/fs/util/C 'Ò00000' Ljava/util/List;
L24:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1
L29:    astore 6
L31:    goto L224

        .stack full
            locals Object com/fs/util/C Object java/lang/String Object java/lang/String Integer Object java/util/List Top Object java/util/Iterator
            stack
        .end stack
L34:    aload 6
L36:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1
L41:    checkcast com/fs/util/C$Oo
L44:    astore 5
L46:    aconst_null
L47:    astore 7
L49:    invokestatic Method com/fs/util/C o00000 ()[I
L52:    aload 5
L54:    getfield Field com/fs/util/C$Oo 'super' Lcom/fs/util/C$o;
L57:    invokevirtual Method com/fs/util/C$o ordinal ()I
L60:    iaload
L61:    tableswitch 1
            L104
            L88
            L101
            default : L140


        .stack full
            locals Object com/fs/util/C Object java/lang/String Object java/lang/String Integer Object java/util/List Object com/fs/util/C$Oo Object java/util/Iterator Object java/io/File
            stack
        .end stack
L88:    new java/io/File
L91:    dup
L92:    aload_1
L93:    invokespecial Method java/io/File <init> (Ljava/lang/String;)V
L96:    astore 7
L98:    goto L140

        .stack same
L101:   goto L140

        .stack same
L104:   new java/io/File
L107:   dup
L108:   new java/lang/StringBuilder
L111:   dup
L112:   aload 5
L114:   getfield Field com/fs/util/C$Oo 'Ó00000' Ljava/lang/String;
L117:   invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String;
L120:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V
L123:   ldc '/'
L125:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L128:   aload_1
L129:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L132:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String;
L135:   invokespecial Method java/io/File <init> (Ljava/lang/String;)V
L138:   astore 7

        .stack same
L140:   aload 7
L142:   ifnull L224
L145:   aload 7
L147:   invokevirtual Method java/io/File exists ()Z
L150:   ifeq L224
L153:   aload 7
L155:   invokevirtual Method java/io/File isDirectory ()Z
L158:   ifne L164
L161:   goto L224

        .stack same
L164:   aload 7
L166:   new com/fs/util/C$1
L169:   dup
L170:   aload_0
L171:   aload_2
L172:   invokespecial Method com/fs/util/C$1 <init> (Lcom/fs/util/C;Ljava/lang/String;)V
L175:   invokevirtual Method java/io/File listFiles (Ljava/io/FilenameFilter;)[Ljava/io/File;
L178:   astore 8
L180:   aload 8
L182:   dup
L183:   astore 12
L185:   arraylength
L186:   istore 11
L188:   iconst_0
L189:   istore 10
L191:   goto L217

        .stack full
            locals Object com/fs/util/C Object java/lang/String Object java/lang/String Integer Object java/util/List Object com/fs/util/C$Oo Object java/util/Iterator Object java/io/File Object [Ljava/io/File; Top Integer Integer Object [Ljava/io/File;
            stack
        .end stack
L194:   aload 12
L196:   iload 10
L198:   aaload
L199:   astore 9
L201:   aload 4
L203:   aload 9
L205:   invokevirtual Method java/io/File getAbsolutePath ()Ljava/lang/String;
L208:   invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2
L213:   pop
L214:   iinc 10 1

        .stack same
L217:   iload 10
L219:   iload 11
L221:   if_icmplt L194

        .stack full
            locals Object com/fs/util/C Object java/lang/String Object java/lang/String Integer Object java/util/List Top Object java/util/Iterator
            stack
        .end stack
L224:   aload 6
L226:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1
L231:   ifne L34
L234:   aload 4
L236:   areturn
L237:
    .end code
.end method

.method public synchronized o00000 : (Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .exceptions java/io/IOException
    .signature (Ljava/lang/String;Ljava/lang/String;)Ljava/util/List<Ljava/lang/String;>;
    .code stack 5 locals 17
L0:     new java/util/LinkedHashSet
L3:     dup
L4:     invokespecial Method java/util/LinkedHashSet <init> ()V
L7:     astore_3
L8:     new java/util/LinkedHashSet
L11:    dup
L12:    invokespecial Method java/util/LinkedHashSet <init> ()V
L15:    astore 4
L17:    aload_0
L18:    getfield Field com/fs/util/C 'Ò00000' Ljava/util/List;
L21:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1
L26:    astore 6
L28:    goto L377

        .stack full
            locals Object com/fs/util/C Object java/lang/String Object java/lang/String Object java/util/Set Object java/util/Set Top Object java/util/Iterator
            stack
        .end stack
L31:    aload 6
L33:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1
L38:    checkcast com/fs/util/C$Oo
L41:    astore 5
L43:    aconst_null
L44:    astore 7
L46:    aconst_null
L47:    astore 8
L49:    invokestatic Method com/fs/util/C o00000 ()[I
L52:    aload 5
L54:    getfield Field com/fs/util/C$Oo 'super' Lcom/fs/util/C$o;
L57:    invokevirtual Method com/fs/util/C$o ordinal ()I
L60:    iaload
L61:    tableswitch 1
            L104
            L88
            L101
            default : L147


        .stack full
            locals Object com/fs/util/C Object java/lang/String Object java/lang/String Object java/util/Set Object java/util/Set Object com/fs/util/C$Oo Object java/util/Iterator Object java/io/File Object java/lang/String
            stack
        .end stack
L88:    new java/io/File
L91:    dup
L92:    aload_1
L93:    invokespecial Method java/io/File <init> (Ljava/lang/String;)V
L96:    astore 7
L98:    goto L147

        .stack same
L101:   goto L147

        .stack same
L104:   new java/io/File
L107:   dup
L108:   new java/lang/StringBuilder
L111:   dup
L112:   aload 5
L114:   getfield Field com/fs/util/C$Oo 'Ó00000' Ljava/lang/String;
L117:   invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String;
L120:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V
L123:   ldc '/'
L125:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L128:   aload_1
L129:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L132:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String;
L135:   invokespecial Method java/io/File <init> (Ljava/lang/String;)V
L138:   astore 7
L140:   aload 5
L142:   getfield Field com/fs/util/C$Oo 'Ó00000' Ljava/lang/String;
L145:   astore 8

        .stack same
L147:   aload 7
L149:   ifnull L377
L152:   aload 7
L154:   invokevirtual Method java/io/File exists ()Z
L157:   ifeq L377
L160:   aload 7
L162:   invokevirtual Method java/io/File isDirectory ()Z
L165:   ifne L171
L168:   goto L377

        .stack same
L171:   aload 7
L173:   new com/fs/util/C$2
L176:   dup
L177:   aload_0
L178:   aload_2
L179:   invokespecial Method com/fs/util/C$2 <init> (Lcom/fs/util/C;Ljava/lang/String;)V
L182:   invokevirtual Method java/io/File listFiles (Ljava/io/FilenameFilter;)[Ljava/io/File;
L185:   astore 9
L187:   aconst_null
L188:   astore 10
L190:   aload 8
L192:   ifnull L209
L195:   new java/io/File
L198:   dup
L199:   aload 8
L201:   invokespecial Method java/io/File <init> (Ljava/lang/String;)V
L204:   invokevirtual Method java/io/File getAbsolutePath ()Ljava/lang/String;
L207:   astore 10

        .stack append Object [Ljava/io/File; Object java/lang/String
L209:   aload 9
L211:   dup
L212:   astore 14
L214:   arraylength
L215:   istore 13
L217:   iconst_0
L218:   istore 12
L220:   goto L370

        .stack full
            locals Object com/fs/util/C Object java/lang/String Object java/lang/String Object java/util/Set Object java/util/Set Object com/fs/util/C$Oo Object java/util/Iterator Object java/io/File Object java/lang/String Object [Ljava/io/File; Object java/lang/String Top Integer Integer Object [Ljava/io/File;
            stack
        .end stack
L223:   aload 14
L225:   iload 12
L227:   aaload
L228:   astore 11
L230:   new java/lang/StringBuilder
L233:   dup
L234:   aload_1
L235:   invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String;
L238:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V
L241:   ldc '/'
L243:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L246:   aload 11
L248:   invokevirtual Method java/io/File getName ()Ljava/lang/String;
L251:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L254:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String;
L257:   astore 15
L259:   aload 4
L261:   aload 15
L263:   invokeinterface InterfaceMethod java/util/Set contains (Ljava/lang/Object;)Z 2
L268:   ifeq L274
L271:   goto L367

        .stack full
            locals Object com/fs/util/C Object java/lang/String Object java/lang/String Object java/util/Set Object java/util/Set Object com/fs/util/C$Oo Object java/util/Iterator Object java/io/File Object java/lang/String Object [Ljava/io/File; Object java/lang/String Object java/io/File Integer Integer Object [Ljava/io/File; Object java/lang/String
            stack
        .end stack
L274:   aload 4
L276:   aload 15
L278:   invokeinterface InterfaceMethod java/util/Set add (Ljava/lang/Object;)Z 2
L283:   pop
L284:   aload 11
L286:   invokevirtual Method java/io/File getAbsolutePath ()Ljava/lang/String;
L289:   astore 16
L291:   aload 10
L293:   ifnull L358
L296:   aload 16
L298:   invokevirtual Method java/lang/String length ()I
L301:   aload 10
L303:   invokevirtual Method java/lang/String length ()I
L306:   if_icmple L358
L309:   aload 16
L311:   aload 10
L313:   invokevirtual Method java/lang/String length ()I
L316:   invokevirtual Method java/lang/String substring (I)Ljava/lang/String;
L319:   astore 16
L321:   aload 16
L323:   ldc_w '\\'
L326:   invokevirtual Method java/lang/String startsWith (Ljava/lang/String;)Z
L329:   ifeq L340
L332:   aload 16
L334:   iconst_1
L335:   invokevirtual Method java/lang/String substring (I)Ljava/lang/String;
L338:   astore 16

        .stack append Object java/lang/String
L340:   aload 16
L342:   ldc '/'
L344:   invokevirtual Method java/lang/String startsWith (Ljava/lang/String;)Z
L347:   ifeq L358
L350:   aload 16
L352:   iconst_1
L353:   invokevirtual Method java/lang/String substring (I)Ljava/lang/String;
L356:   astore 16

        .stack same
L358:   aload_3
L359:   aload 16
L361:   invokeinterface InterfaceMethod java/util/Set add (Ljava/lang/Object;)Z 2
L366:   pop

        .stack full
            locals Object com/fs/util/C Object java/lang/String Object java/lang/String Object java/util/Set Object java/util/Set Object com/fs/util/C$Oo Object java/util/Iterator Object java/io/File Object java/lang/String Object [Ljava/io/File; Object java/lang/String Top Integer Integer Object [Ljava/io/File;
            stack
        .end stack
L367:   iinc 12 1

        .stack same
L370:   iload 12
L372:   iload 13
L374:   if_icmplt L223

        .stack full
            locals Object com/fs/util/C Object java/lang/String Object java/lang/String Object java/util/Set Object java/util/Set Top Object java/util/Iterator
            stack
        .end stack
L377:   aload 6
L379:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1
L384:   ifne L31
L387:   new java/util/ArrayList
L390:   dup
L391:   aload_3
L392:   invokespecial Method java/util/ArrayList <init> (Ljava/util/Collection;)V
L395:   areturn
L396:
    .end code
.end method

.method public synchronized 'Ó00000' : (Ljava/lang/String;)Ljava/util/List;
    .signature (Ljava/lang/String;)Ljava/util/List<Ljava/lang/String;>;
    .code stack 5 locals 10
L0:     new java/util/LinkedHashSet
L3:     dup
L4:     invokespecial Method java/util/LinkedHashSet <init> ()V
L7:     astore_2
L8:     aload_0
L9:     getfield Field com/fs/util/C 'Ò00000' Ljava/util/List;
L12:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1
L17:    astore 4
L19:    goto L251

        .stack full
            locals Object com/fs/util/C Object java/lang/String Object java/util/Set Top Object java/util/Iterator
            stack
        .end stack
L22:    aload 4
L24:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1
L29:    checkcast com/fs/util/C$Oo
L32:    astore_3
L33:    aconst_null
L34:    astore 5
L36:    invokestatic Method com/fs/util/C o00000 ()[I
L39:    aload_3
L40:    getfield Field com/fs/util/C$Oo 'super' Lcom/fs/util/C$o;
L43:    invokevirtual Method com/fs/util/C$o ordinal ()I
L46:    iaload
L47:    tableswitch 1
            L88
            L72
            L85
            default : L123


        .stack full
            locals Object com/fs/util/C Object java/lang/String Object java/util/Set Object com/fs/util/C$Oo Object java/util/Iterator Object java/io/File
            stack
        .end stack
L72:    new java/io/File
L75:    dup
L76:    aload_1
L77:    invokespecial Method java/io/File <init> (Ljava/lang/String;)V
L80:    astore 5
L82:    goto L123

        .stack same
L85:    goto L123

        .stack same
L88:    new java/io/File
L91:    dup
L92:    new java/lang/StringBuilder
L95:    dup
L96:    aload_3
L97:    getfield Field com/fs/util/C$Oo 'Ó00000' Ljava/lang/String;
L100:   invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String;
L103:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V
L106:   ldc '/'
L108:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L111:   aload_1
L112:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L115:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String;
L118:   invokespecial Method java/io/File <init> (Ljava/lang/String;)V
L121:   astore 5

        .stack same
L123:   aload 5
L125:   ifnull L251
L128:   aload 5
L130:   invokevirtual Method java/io/File exists ()Z
L133:   ifeq L251
L136:   aload 5
L138:   invokevirtual Method java/io/File isDirectory ()Z
L141:   ifne L147
L144:   goto L251

        .stack same
L147:   aload 5
L149:   invokevirtual Method java/io/File listFiles ()[Ljava/io/File;
L152:   dup
L153:   astore 9
L155:   arraylength
L156:   istore 8
L158:   iconst_0
L159:   istore 7
L161:   goto L244

        .stack full
            locals Object com/fs/util/C Object java/lang/String Object java/util/Set Object com/fs/util/C$Oo Object java/util/Iterator Object java/io/File Top Integer Integer Object [Ljava/io/File;
            stack
        .end stack
L164:   aload 9
L166:   iload 7
L168:   aaload
L169:   astore 6
L171:   aload 6
L173:   invokevirtual Method java/io/File isDirectory ()Z
L176:   ifeq L241
L179:   aload 6
L181:   invokevirtual Method java/io/File isHidden ()Z
L184:   ifeq L190
L187:   goto L241

        .stack full
            locals Object com/fs/util/C Object java/lang/String Object java/util/Set Object com/fs/util/C$Oo Object java/util/Iterator Object java/io/File Object java/io/File Integer Integer Object [Ljava/io/File;
            stack
        .end stack
L190:   aload 6
L192:   invokevirtual Method java/io/File getName ()Ljava/lang/String;
L195:   ldc_w '.'
L198:   invokevirtual Method java/lang/String startsWith (Ljava/lang/String;)Z
L201:   ifeq L207
L204:   goto L241

        .stack same
L207:   aload_2
L208:   new java/lang/StringBuilder
L211:   dup
L212:   aload_1
L213:   invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String;
L216:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V
L219:   ldc '/'
L221:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L224:   aload 6
L226:   invokevirtual Method java/io/File getName ()Ljava/lang/String;
L229:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L232:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String;
L235:   invokeinterface InterfaceMethod java/util/Set add (Ljava/lang/Object;)Z 2
L240:   pop

        .stack full
            locals Object com/fs/util/C Object java/lang/String Object java/util/Set Object com/fs/util/C$Oo Object java/util/Iterator Object java/io/File Top Integer Integer Object [Ljava/io/File;
            stack
        .end stack
L241:   iinc 7 1

        .stack same
L244:   iload 7
L246:   iload 8
L248:   if_icmplt L164

        .stack full
            locals Object com/fs/util/C Object java/lang/String Object java/util/Set Top Object java/util/Iterator
            stack
        .end stack
L251:   aload 4
L253:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1
L258:   ifne L22
L261:   new java/util/ArrayList
L264:   dup
L265:   aload_2
L266:   invokespecial Method java/util/ArrayList <init> (Ljava/util/Collection;)V
L269:   areturn
L270:
    .end code
.end method

.method public synchronized 'Ô00000' : (Ljava/lang/String;Lcom/fs/util/C$Oo;)Ljava/io/InputStream;
    .exceptions java/io/FileNotFoundException
    .code stack 5 locals 5
L0:     aconst_null
L1:     astore_3
L2:     invokestatic Method com/fs/util/C o00000 ()[I
L5:     aload_2
L6:     getfield Field com/fs/util/C$Oo 'super' Lcom/fs/util/C$o;
L9:     invokevirtual Method com/fs/util/C$o ordinal ()I
L12:    iaload
L13:    tableswitch 1
            L98
            L40
            L75
            default : L158


        .stack append Object java/io/InputStream
L40:    new java/io/File
L43:    dup
L44:    aload_1
L45:    invokespecial Method java/io/File <init> (Ljava/lang/String;)V
L48:    astore 4
L50:    aload 4
L52:    invokevirtual Method java/io/File exists ()Z
L55:    ifeq L158
L58:    new java/io/BufferedInputStream
L61:    dup
L62:    new java/io/FileInputStream
L65:    dup
L66:    aload 4
L68:    invokespecial Method java/io/FileInputStream <init> (Ljava/io/File;)V
L71:    invokespecial Method java/io/BufferedInputStream <init> (Ljava/io/InputStream;)V
L74:    areturn

        .stack same
L75:    ldc Class com/fs/util/C
L77:    invokevirtual Method java/lang/Class getClassLoader ()Ljava/lang/ClassLoader;
L80:    aload_1
L81:    invokevirtual Method java/lang/ClassLoader getResourceAsStream (Ljava/lang/String;)Ljava/io/InputStream;
L84:    astore_3
L85:    aload_3
L86:    ifnull L158
L89:    new java/io/BufferedInputStream
L92:    dup
L93:    aload_3
L94:    invokespecial Method java/io/BufferedInputStream <init> (Ljava/io/InputStream;)V
L97:    areturn

        .stack same
L98:    new java/io/File
L101:   dup
L102:   new java/lang/StringBuilder
L105:   dup
L106:   aload_2
L107:   getfield Field com/fs/util/C$Oo 'Ó00000' Ljava/lang/String;
L110:   invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String;
L113:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V
L116:   ldc '/'
L118:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L121:   aload_1
L122:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L125:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String;
L128:   invokespecial Method java/io/File <init> (Ljava/lang/String;)V
L131:   astore 4
L133:   aload 4
L135:   invokevirtual Method java/io/File exists ()Z
L138:   ifeq L158
L141:   new java/io/BufferedInputStream
L144:   dup
L145:   new java/io/FileInputStream
L148:   dup
L149:   aload 4
L151:   invokespecial Method java/io/FileInputStream <init> (Ljava/io/File;)V
L154:   invokespecial Method java/io/BufferedInputStream <init> (Ljava/io/InputStream;)V
L157:   areturn

        .stack same
L158:   aconst_null
L159:   areturn
L160:
    .end code
.end method

.method public synchronized o00000 : (Ljava/lang/String;Z)Ljava/io/File;
    .exceptions java/io/IOException
    .code stack 5 locals 7
L0:     ldc ''
L2:     astore_3
L3:     aload_0
L4:     getfield Field com/fs/util/C 'Ò00000' Ljava/util/List;
L7:     invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1
L12:    astore 5
L14:    goto L142

        .stack full
            locals Object com/fs/util/C Object java/lang/String Integer Object java/lang/String Top Object java/util/Iterator
            stack
        .end stack
L17:    aload 5
L19:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1
L24:    checkcast com/fs/util/C$Oo
L27:    astore 4
L29:    iload_2
L30:    ifne L44
L33:    aload 4
L35:    getfield Field com/fs/util/C$Oo String Z
L38:    ifeq L44
L41:    goto L142

        .stack full
            locals Object com/fs/util/C Object java/lang/String Integer Object java/lang/String Object com/fs/util/C$Oo Object java/util/Iterator
            stack
        .end stack
L44:    invokestatic Method com/fs/util/C o00000 ()[I
L47:    aload 4
L49:    getfield Field com/fs/util/C$Oo 'super' Lcom/fs/util/C$o;
L52:    invokevirtual Method com/fs/util/C$o ordinal ()I
L55:    iaload
L56:    tableswitch 1
            L83
            L80
            default : L111


        .stack same
L80:    goto L111

        .stack same
L83:    new java/lang/StringBuilder
L86:    dup
L87:    aload_3
L88:    invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String;
L91:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V
L94:    aload 4
L96:    getfield Field com/fs/util/C$Oo 'Ó00000' Ljava/lang/String;
L99:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L102:   ldc ','
L104:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L107:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String;
L110:   astore_3

        .stack same
L111:   aload 4
L113:   getfield Field com/fs/util/C$Oo 'super' Lcom/fs/util/C$o;
L116:   getstatic Field com/fs/util/C$o o00000 Lcom/fs/util/C$o;
L119:   if_acmpne L125
L122:   goto L142

        .stack same
L125:   aload_0
L126:   aload_1
L127:   aload 4
L129:   invokevirtual Method com/fs/util/C 'Ó00000' (Ljava/lang/String;Lcom/fs/util/C$Oo;)Ljava/io/File;
L132:   astore 6
L134:   aload 6
L136:   ifnull L142
L139:   aload 6
L141:   areturn

        .stack full
            locals Object com/fs/util/C Object java/lang/String Integer Object java/lang/String Top Object java/util/Iterator
            stack
        .end stack
L142:   aload 5
L144:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1
L149:   ifne L17
L152:   aload_3
L153:   iconst_0
L154:   aload_3
L155:   invokevirtual Method java/lang/String length ()I
L158:   iconst_1
L159:   isub
L160:   invokevirtual Method java/lang/String substring (II)Ljava/lang/String;
L163:   astore_3
L164:   new java/lang/RuntimeException
L167:   dup
L168:   new java/lang/StringBuilder
L171:   dup
L172:   ldc 'Error loading ['
L174:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V
L177:   aload_1
L178:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L181:   ldc '] resource, not found in ['
L183:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L186:   aload_3
L187:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L190:   ldc ']'
L192:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L195:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String;
L198:   invokespecial Method java/lang/RuntimeException <init> (Ljava/lang/String;)V
L201:   athrow
L202:
    .end code
.end method

.method public synchronized 'Ó00000' : (Ljava/lang/String;Lcom/fs/util/C$Oo;)Ljava/io/File;
    .exceptions java/io/FileNotFoundException
    .code stack 5 locals 4
L0:     aconst_null
L1:     astore_3
L2:     invokestatic Method com/fs/util/C o00000 ()[I
L5:     aload_2
L6:     getfield Field com/fs/util/C$Oo 'super' Lcom/fs/util/C$o;
L9:     invokevirtual Method com/fs/util/C$o ordinal ()I
L12:    iaload
L13:    tableswitch 1
            L69
            L40
            L58
            default : L112


        .stack append Object java/io/File
L40:    new java/io/File
L43:    dup
L44:    aload_1
L45:    invokespecial Method java/io/File <init> (Ljava/lang/String;)V
L48:    astore_3
L49:    aload_3
L50:    invokevirtual Method java/io/File exists ()Z
L53:    ifeq L112
L56:    aload_3
L57:    areturn

        .stack same
L58:    new java/lang/RuntimeException
L61:    dup
L62:    ldc_w "Can't find a file on the classpath - use openResource() instead."
L65:    invokespecial Method java/lang/RuntimeException <init> (Ljava/lang/String;)V
L68:    athrow

        .stack same
L69:    new java/io/File
L72:    dup
L73:    new java/lang/StringBuilder
L76:    dup
L77:    aload_2
L78:    getfield Field com/fs/util/C$Oo 'Ó00000' Ljava/lang/String;
L81:    invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String;
L84:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V
L87:    ldc '/'
L89:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L92:    aload_1
L93:    invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L96:    invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String;
L99:    invokespecial Method java/io/File <init> (Ljava/lang/String;)V
L102:   astore_3
L103:   aload_3
L104:   invokevirtual Method java/io/File exists ()Z
L107:   ifeq L112
L110:   aload_3
L111:   areturn

        .stack same
L112:   aconst_null
L113:   areturn
L114:
    .end code
.end method

.method public synchronized o00000 : (Ljava/lang/String;)Ljava/lang/String;
    .exceptions java/io/IOException
    .code stack 3 locals 6
L0:     aload_0
L1:     getfield Field com/fs/util/C 'Ò00000' Ljava/util/List;
L4:     invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1
L9:     astore_3
L10:    goto L104

        .stack full
            locals Object com/fs/util/C Object java/lang/String Top Object java/util/Iterator
            stack
        .end stack
L13:    aload_3
L14:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1
L19:    checkcast com/fs/util/C$Oo
L22:    astore_2
L23:    aload_2
L24:    getfield Field com/fs/util/C$Oo 'super' Lcom/fs/util/C$o;
L27:    getstatic Field com/fs/util/C$o o00000 Lcom/fs/util/C$o;
L30:    if_acmpne L36
L33:    goto L104

        .stack full
            locals Object com/fs/util/C Object java/lang/String Object com/fs/util/C$Oo Object java/util/Iterator
            stack
        .end stack
L36:    aload_2
L37:    getfield Field com/fs/util/C$Oo 'super' Lcom/fs/util/C$o;
L40:    getstatic Field com/fs/util/C$o Object Lcom/fs/util/C$o;
L43:    if_acmpne L49
L46:    goto L104

        .stack same
L49:    aload_2
L50:    getfield Field com/fs/util/C$Oo 'Ó00000' Ljava/lang/String;
L53:    ifnull L72
L56:    aload_2
L57:    getfield Field com/fs/util/C$Oo 'Ó00000' Ljava/lang/String;
L60:    ldc_w '/res'
L63:    invokevirtual Method java/lang/String endsWith (Ljava/lang/String;)Z
L66:    ifeq L72
L69:    goto L104

        .stack same
L72:    aload_0
L73:    aload_1
L74:    aload_2
L75:    invokevirtual Method com/fs/util/C o00000 (Ljava/lang/String;Lcom/fs/util/C$Oo;)Z
L78:    istore 4
L80:    iload 4
L82:    ifeq L104
L85:    new java/io/File
L88:    dup
L89:    aload_2
L90:    getfield Field com/fs/util/C$Oo 'Ó00000' Ljava/lang/String;
L93:    invokespecial Method java/io/File <init> (Ljava/lang/String;)V
L96:    astore 5
L98:    aload 5
L100:   invokevirtual Method java/io/File getName ()Ljava/lang/String;
L103:   areturn

        .stack full
            locals Object com/fs/util/C Object java/lang/String Top Object java/util/Iterator
            stack
        .end stack
L104:   aload_3
L105:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1
L110:   ifne L13
L113:   aconst_null
L114:   areturn
L115:
    .end code
.end method

.method public synchronized o00000 : (Ljava/lang/String;Lcom/fs/util/C$Oo;)Z
    .exceptions java/io/FileNotFoundException
    .code stack 5 locals 6
L0:     aconst_null
L1:     astore_3
L2:     invokestatic Method com/fs/util/C o00000 ()[I
L5:     aload_2
L6:     getfield Field com/fs/util/C$Oo 'super' Lcom/fs/util/C$o;
L9:     invokevirtual Method com/fs/util/C$o ordinal ()I
L12:    iaload
L13:    tableswitch 1
            L91
            L40
            L56
            default : L132


        .stack append Object java/io/InputStream
L40:    new java/io/File
L43:    dup
L44:    aload_1
L45:    invokespecial Method java/io/File <init> (Ljava/lang/String;)V
L48:    astore 4
L50:    aload 4
L52:    invokevirtual Method java/io/File exists ()Z
L55:    ireturn

        .stack same
L56:    ldc Class com/fs/util/C
L58:    invokevirtual Method java/lang/Class getClassLoader ()Ljava/lang/ClassLoader;
L61:    aload_1
L62:    invokevirtual Method java/lang/ClassLoader getResourceAsStream (Ljava/lang/String;)Ljava/io/InputStream;
L65:    astore_3
L66:    aload_3
L67:    ifnull L132
        .catch java/io/IOException from L70 to L74 using L77
L70:    aload_3
L71:    invokevirtual Method java/io/InputStream close ()V
L74:    goto L89

        .stack stack_1 Object java/io/IOException
L77:    astore 5
L79:    new java/lang/RuntimeException
L82:    dup
L83:    aload 5
L85:    invokespecial Method java/lang/RuntimeException <init> (Ljava/lang/Throwable;)V
L88:    athrow

        .stack same
L89:    iconst_1
L90:    ireturn

        .stack same
L91:    new java/io/File
L94:    dup
L95:    new java/lang/StringBuilder
L98:    dup
L99:    aload_2
L100:   getfield Field com/fs/util/C$Oo 'Ó00000' Ljava/lang/String;
L103:   invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String;
L106:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V
L109:   ldc '/'
L111:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L114:   aload_1
L115:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L118:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String;
L121:   invokespecial Method java/io/File <init> (Ljava/lang/String;)V
L124:   astore 4
L126:   aload 4
L128:   invokevirtual Method java/io/File exists ()Z
L131:   ireturn

        .stack same
L132:   iconst_0
L133:   ireturn
L134:
    .end code
.end method

.method static synthetic o00000 : ()[I
    .code stack 3 locals 1
L0:     getstatic Field com/fs/util/C 'Õ00000' [I
L3:     dup
L4:     ifnull L8
L7:     areturn

        .stack stack_1 Object [I
L8:     pop
L9:     invokestatic Method com/fs/util/C$o values ()[Lcom/fs/util/C$o;
L12:    arraylength
L13:    newarray int
L15:    astore_0
        .catch java/lang/NoSuchFieldError from L16 to L25 using L28
L16:    aload_0
L17:    getstatic Field com/fs/util/C$o Object Lcom/fs/util/C$o;
L20:    invokevirtual Method com/fs/util/C$o ordinal ()I
L23:    iconst_2
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
L30:    getstatic Field com/fs/util/C$o o00000 Lcom/fs/util/C$o;
L33:    invokevirtual Method com/fs/util/C$o ordinal ()I
L36:    iconst_3
L37:    iastore
L38:    goto L42

        .stack stack_1 Object java/lang/NoSuchFieldError
L41:    pop
        .catch java/lang/NoSuchFieldError from L42 to L51 using L54

        .stack same
L42:    aload_0
L43:    getstatic Field com/fs/util/C$o 'Ô00000' Lcom/fs/util/C$o;
L46:    invokevirtual Method com/fs/util/C$o ordinal ()I
L49:    iconst_1
L50:    iastore
L51:    goto L55

        .stack stack_1 Object java/lang/NoSuchFieldError
L54:    pop

        .stack same
L55:    aload_0
L56:    dup
L57:    putstatic Field com/fs/util/C 'Õ00000' [I
L60:    areturn
L61:
    .end code
.end method

.method public loadInputStreamVanilla : (Ljava/lang/String;Z)Ljava/io/InputStream;
    .exceptions java/io/IOException
    .code stack 5 locals 8
L0:     aload_0
L1:     getfield Field com/fs/util/C String Ljava/lang/String;
L4:     astore_3
L5:     aload_0
L6:     aconst_null
L7:     putfield Field com/fs/util/C String Ljava/lang/String;
L10:    getstatic Field com/fs/util/C 'super' Z
L13:    ifeq L22
L16:    iconst_0
L17:    istore_2
L18:    iconst_0
L19:    putstatic Field com/fs/util/C 'super' Z

        .stack append Object java/lang/String
L22:    ldc ''
L24:    astore 4
L26:    aload_0
L27:    getfield Field com/fs/util/C 'Ò00000' Ljava/util/List;
L30:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1
L35:    astore 6
L37:    goto L209

        .stack full
            locals Object com/fs/util/C Object java/lang/String Integer Object java/lang/String Object java/lang/String Top Object java/util/Iterator
            stack
        .end stack
L40:    aload 6
L42:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1
L47:    checkcast com/fs/util/C$Oo
L50:    astore 5
L52:    iload_2
L53:    ifne L67
L56:    aload 5
L58:    getfield Field com/fs/util/C$Oo String Z
L61:    ifeq L67
L64:    goto L209

        .stack full
            locals Object com/fs/util/C Object java/lang/String Integer Object java/lang/String Object java/lang/String Object com/fs/util/C$Oo Object java/util/Iterator
            stack
        .end stack
L67:    invokestatic Method com/fs/util/C o00000 ()[I
L70:    aload 5
L72:    getfield Field com/fs/util/C$Oo 'super' Lcom/fs/util/C$o;
L75:    invokevirtual Method com/fs/util/C$o ordinal ()I
L78:    iaload
L79:    tableswitch 1
            L132
            L104
            L107
            default : L162


        .stack same
L104:   goto L162

        .stack same
L107:   new java/lang/StringBuilder
L110:   dup
L111:   aload 4
L113:   invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String;
L116:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V
L119:   ldc 'CLASSPATH,'
L121:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L124:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String;
L127:   astore 4
L129:   goto L162

        .stack same
L132:   new java/lang/StringBuilder
L135:   dup
L136:   aload 4
L138:   invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String;
L141:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V
L144:   aload 5
L146:   getfield Field com/fs/util/C$Oo 'Ó00000' Ljava/lang/String;
L149:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L152:   ldc ','
L154:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L157:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String;
L160:   astore 4

        .stack same
L162:   aload_3
L163:   ifnull L192
L166:   aload 5
L168:   getfield Field com/fs/util/C$Oo 'super' Lcom/fs/util/C$o;
L171:   getstatic Field com/fs/util/C$o 'Ô00000' Lcom/fs/util/C$o;
L174:   if_acmpne L209
L177:   aload 5
L179:   getfield Field com/fs/util/C$Oo 'Ó00000' Ljava/lang/String;
L182:   aload_3
L183:   invokevirtual Method java/lang/String endsWith (Ljava/lang/String;)Z
L186:   ifne L192
L189:   goto L209

        .stack same
L192:   aload_0
L193:   aload_1
L194:   aload 5
L196:   invokevirtual Method com/fs/util/C 'Ô00000' (Ljava/lang/String;Lcom/fs/util/C$Oo;)Ljava/io/InputStream;
L199:   astore 7
L201:   aload 7
L203:   ifnull L209
L206:   aload 7
L208:   areturn

        .stack full
            locals Object com/fs/util/C Object java/lang/String Integer Object java/lang/String Object java/lang/String Top Object java/util/Iterator
            stack
        .end stack
L209:   aload 6
L211:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1
L216:   ifne L40
L219:   aload 4
L221:   iconst_0
L222:   aload 4
L224:   invokevirtual Method java/lang/String length ()I
L227:   iconst_1
L228:   isub
L229:   invokevirtual Method java/lang/String substring (II)Ljava/lang/String;
L232:   astore 4
L234:   new java/lang/RuntimeException
L237:   dup
L238:   new java/lang/StringBuilder
L241:   dup
L242:   ldc 'Error loading ['
L244:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V
L247:   aload_1
L248:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L251:   ldc '] resource, not found in ['
L253:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L256:   aload 4
L258:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L261:   ldc ']'
L263:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L266:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String;
L269:   invokespecial Method java/lang/RuntimeException <init> (Ljava/lang/String;)V
L272:   athrow
L273:
    .end code
.end method

.method public loadInputStreamOptimized : (Ljava/lang/String;Z)Ljava/io/InputStream;
    .exceptions java/io/IOException
    .code stack 5 locals 8
L0:     aload_0
L1:     getfield Field com/fs/util/C String Ljava/lang/String;
L4:     astore_3
L5:     aload_0
L6:     aconst_null
L7:     putfield Field com/fs/util/C String Ljava/lang/String;
L10:    getstatic Field com/fs/util/C 'super' Z
L13:    ifeq L22
L16:    iconst_0
L17:    istore_2
L18:    iconst_0
L19:    putstatic Field com/fs/util/C 'super' Z

        .stack append Object java/lang/String
L22:    ldc ''
L24:    astore 4
L26:    aload_0
L27:    getfield Field com/fs/util/C 'Ò00000' Ljava/util/List;
L30:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1
L35:    astore 6
L37:    goto L209

        .stack full
            locals Object com/fs/util/C Object java/lang/String Integer Object java/lang/String Object java/lang/String Top Object java/util/Iterator
            stack
        .end stack
L40:    aload 6
L42:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1
L47:    checkcast com/fs/util/C$Oo
L50:    astore 5
L52:    iload_2
L53:    ifne L67
L56:    aload 5
L58:    getfield Field com/fs/util/C$Oo String Z
L61:    ifeq L67
L64:    goto L209

        .stack full
            locals Object com/fs/util/C Object java/lang/String Integer Object java/lang/String Object java/lang/String Object com/fs/util/C$Oo Object java/util/Iterator
            stack
        .end stack
L67:    invokestatic Method com/fs/util/C o00000 ()[I
L70:    aload 5
L72:    getfield Field com/fs/util/C$Oo 'super' Lcom/fs/util/C$o;
L75:    invokevirtual Method com/fs/util/C$o ordinal ()I
L78:    iaload
L79:    tableswitch 1
            L132
            L104
            L107
            default : L162


        .stack same
L104:   goto L162

        .stack same
L107:   new java/lang/StringBuilder
L110:   dup
L111:   aload 4
L113:   invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String;
L116:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V
L119:   ldc 'CLASSPATH,'
L121:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L124:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String;
L127:   astore 4
L129:   goto L162

        .stack same
L132:   new java/lang/StringBuilder
L135:   dup
L136:   aload 4
L138:   invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String;
L141:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V
L144:   aload 5
L146:   getfield Field com/fs/util/C$Oo 'Ó00000' Ljava/lang/String;
L149:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L152:   ldc ','
L154:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L157:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String;
L160:   astore 4

        .stack same
L162:   aload_3
L163:   ifnull L192
L166:   aload 5
L168:   getfield Field com/fs/util/C$Oo 'super' Lcom/fs/util/C$o;
L171:   getstatic Field com/fs/util/C$o 'Ô00000' Lcom/fs/util/C$o;
L174:   if_acmpne L209
L177:   aload 5
L179:   getfield Field com/fs/util/C$Oo 'Ó00000' Ljava/lang/String;
L182:   aload_3
L183:   invokevirtual Method java/lang/String endsWith (Ljava/lang/String;)Z
L186:   ifne L192
L189:   goto L209

        .stack same
L192:   aload_0
L193:   aload_1
L194:   aload 5
L196:   invokevirtual Method com/fs/util/C 'Ô00000_optimized' (Ljava/lang/String;Lcom/fs/util/C$Oo;)Ljava/io/InputStream;
L199:   astore 7
L201:   aload 7
L203:   ifnull L209
L206:   aload 7
L208:   areturn

        .stack full
            locals Object com/fs/util/C Object java/lang/String Integer Object java/lang/String Object java/lang/String Top Object java/util/Iterator
            stack
        .end stack
L209:   aload 6
L211:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1
L216:   ifne L40
L219:   aload 4
L221:   iconst_0
L222:   aload 4
L224:   invokevirtual Method java/lang/String length ()I
L227:   iconst_1
L228:   isub
L229:   invokevirtual Method java/lang/String substring (II)Ljava/lang/String;
L232:   astore 4
L234:   new java/lang/RuntimeException
L237:   dup
L238:   new java/lang/StringBuilder
L241:   dup
L242:   ldc 'Error loading ['
L244:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V
L247:   aload_1
L248:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L251:   ldc '] resource, not found in ['
L253:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L256:   aload 4
L258:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L261:   ldc ']'
L263:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L266:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String;
L269:   invokespecial Method java/lang/RuntimeException <init> (Ljava/lang/String;)V
L272:   athrow
L273:
    .end code
.end method

.method public loadInputStreamsVanilla : (Ljava/lang/String;)Ljava/util/List;
    .exceptions java/io/IOException
    .signature (Ljava/lang/String;)Ljava/util/List<Lcom/fs/util/container/Pair<Lcom/fs/util/C$Oo;Ljava/io/InputStream;>;>;
    .code stack 5 locals 10
L0:     new java/util/ArrayList
L3:     dup
L4:     invokespecial Method java/util/ArrayList <init> ()V
L7:     astore_2
L8:     ldc ''
L10:    astore_3
L11:    iconst_0
L12:    istore 4
L14:    aload_0
L15:    getfield Field com/fs/util/C 'Ò00000' Ljava/util/List;
L18:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1
L23:    astore 6
L25:    goto L235

        .stack full
            locals Object com/fs/util/C Object java/lang/String Object java/util/List Object java/lang/String Integer Top Object java/util/Iterator
            stack
        .end stack
L28:    aload 6
L30:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1
L35:    checkcast com/fs/util/C$Oo
L38:    astore 5
L40:    iconst_0
L41:    istore 7
L43:    invokestatic Method com/fs/util/C o00000 ()[I
L46:    aload 5
L48:    getfield Field com/fs/util/C$Oo 'super' Lcom/fs/util/C$o;
L51:    invokevirtual Method com/fs/util/C$o ordinal ()I
L54:    iaload
L55:    tableswitch 1
            L112
            L80
            L86
            default : L140


        .stack full
            locals Object com/fs/util/C Object java/lang/String Object java/util/List Object java/lang/String Integer Object com/fs/util/C$Oo Object java/util/Iterator Integer
            stack
        .end stack
L80:    iconst_1
L81:    istore 7
L83:    goto L140

        .stack same
L86:    iconst_1
L87:    istore 7
L89:    new java/lang/StringBuilder
L92:    dup
L93:    aload_3
L94:    invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String;
L97:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V
L100:   ldc 'CLASSPATH,'
L102:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L105:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String;
L108:   astore_3
L109:   goto L140

        .stack same
L112:   new java/lang/StringBuilder
L115:   dup
L116:   aload_3
L117:   invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String;
L120:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V
L123:   aload 5
L125:   getfield Field com/fs/util/C$Oo 'Ó00000' Ljava/lang/String;
L128:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L131:   ldc ','
L133:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L136:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String;
L139:   astore_3

        .stack same
L140:   aload_0
L141:   aload_1
L142:   aload 5
L144:   invokevirtual Method com/fs/util/C 'Ô00000' (Ljava/lang/String;Lcom/fs/util/C$Oo;)Ljava/io/InputStream;
L147:   astore 8
L149:   aload 8
L151:   ifnull L235
L154:   iload 7
L156:   ifeq L164
L159:   iload 4
L161:   ifne L235

        .stack append Object java/io/InputStream
L164:   iload 7
L166:   ifeq L172
L169:   iconst_1
L170:   istore 4

        .stack same
L172:   aload_1
L173:   astore 9
L175:   aload 5
L177:   getfield Field com/fs/util/C$Oo 'Ó00000' Ljava/lang/String;
L180:   ifnull L212
L183:   new java/lang/StringBuilder
L186:   dup
L187:   aload 5
L189:   getfield Field com/fs/util/C$Oo 'Ó00000' Ljava/lang/String;
L192:   invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String;
L195:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V
L198:   ldc '/'
L200:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L203:   aload_1
L204:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L207:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String;
L210:   astore 9

        .stack append Object java/lang/String
L212:   aload 8
L214:   ifnull L235
L217:   aload_2
L218:   new com/fs/util/container/Pair
L221:   dup
L222:   aload 5
L224:   aload 8
L226:   invokespecial Method com/fs/util/container/Pair <init> (Ljava/lang/Object;Ljava/lang/Object;)V
L229:   invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2
L234:   pop

        .stack full
            locals Object com/fs/util/C Object java/lang/String Object java/util/List Object java/lang/String Integer Top Object java/util/Iterator
            stack
        .end stack
L235:   aload 6
L237:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1
L242:   ifne L28
L245:   aload_2
L246:   invokeinterface InterfaceMethod java/util/List isEmpty ()Z 1
L251:   ifne L256
L254:   aload_2
L255:   areturn

        .stack full
            locals Object com/fs/util/C Object java/lang/String Object java/util/List Object java/lang/String Integer
            stack
        .end stack
L256:   aload_3
L257:   iconst_0
L258:   aload_3
L259:   invokevirtual Method java/lang/String length ()I
L262:   iconst_1
L263:   isub
L264:   invokevirtual Method java/lang/String substring (II)Ljava/lang/String;
L267:   astore_3
L268:   new java/lang/RuntimeException
L271:   dup
L272:   new java/lang/StringBuilder
L275:   dup
L276:   ldc 'Error loading ['
L278:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V
L281:   aload_1
L282:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L285:   ldc '] resource, not found in ['
L287:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L290:   aload_3
L291:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L294:   ldc ']'
L296:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L299:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String;
L302:   invokespecial Method java/lang/RuntimeException <init> (Ljava/lang/String;)V
L305:   athrow
L306:
    .end code
.end method

.method public loadInputStreamsOptimized : (Ljava/lang/String;)Ljava/util/List;
    .exceptions java/io/IOException
    .signature (Ljava/lang/String;)Ljava/util/List<Lcom/fs/util/container/Pair<Lcom/fs/util/C$Oo;Ljava/io/InputStream;>;>;
    .code stack 5 locals 10
L0:     new java/util/ArrayList
L3:     dup
L4:     invokespecial Method java/util/ArrayList <init> ()V
L7:     astore_2
L8:     ldc ''
L10:    astore_3
L11:    iconst_0
L12:    istore 4
L14:    aload_0
L15:    getfield Field com/fs/util/C 'Ò00000' Ljava/util/List;
L18:    invokeinterface InterfaceMethod java/util/List iterator ()Ljava/util/Iterator; 1
L23:    astore 6
L25:    goto L235

        .stack full
            locals Object com/fs/util/C Object java/lang/String Object java/util/List Object java/lang/String Integer Top Object java/util/Iterator
            stack
        .end stack
L28:    aload 6
L30:    invokeinterface InterfaceMethod java/util/Iterator next ()Ljava/lang/Object; 1
L35:    checkcast com/fs/util/C$Oo
L38:    astore 5
L40:    iconst_0
L41:    istore 7
L43:    invokestatic Method com/fs/util/C o00000 ()[I
L46:    aload 5
L48:    getfield Field com/fs/util/C$Oo 'super' Lcom/fs/util/C$o;
L51:    invokevirtual Method com/fs/util/C$o ordinal ()I
L54:    iaload
L55:    tableswitch 1
            L112
            L80
            L86
            default : L140


        .stack full
            locals Object com/fs/util/C Object java/lang/String Object java/util/List Object java/lang/String Integer Object com/fs/util/C$Oo Object java/util/Iterator Integer
            stack
        .end stack
L80:    iconst_1
L81:    istore 7
L83:    goto L140

        .stack same
L86:    iconst_1
L87:    istore 7
L89:    new java/lang/StringBuilder
L92:    dup
L93:    aload_3
L94:    invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String;
L97:    invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V
L100:   ldc 'CLASSPATH,'
L102:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L105:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String;
L108:   astore_3
L109:   goto L140

        .stack same
L112:   new java/lang/StringBuilder
L115:   dup
L116:   aload_3
L117:   invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String;
L120:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V
L123:   aload 5
L125:   getfield Field com/fs/util/C$Oo 'Ó00000' Ljava/lang/String;
L128:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L131:   ldc ','
L133:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L136:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String;
L139:   astore_3

        .stack same
L140:   aload_0
L141:   aload_1
L142:   aload 5
L144:   invokevirtual Method com/fs/util/C 'Ô00000_optimized' (Ljava/lang/String;Lcom/fs/util/C$Oo;)Ljava/io/InputStream;
L147:   astore 8
L149:   aload 8
L151:   ifnull L235
L154:   iload 7
L156:   ifeq L164
L159:   iload 4
L161:   ifne L235

        .stack append Object java/io/InputStream
L164:   iload 7
L166:   ifeq L172
L169:   iconst_1
L170:   istore 4

        .stack same
L172:   aload_1
L173:   astore 9
L175:   aload 5
L177:   getfield Field com/fs/util/C$Oo 'Ó00000' Ljava/lang/String;
L180:   ifnull L212
L183:   new java/lang/StringBuilder
L186:   dup
L187:   aload 5
L189:   getfield Field com/fs/util/C$Oo 'Ó00000' Ljava/lang/String;
L192:   invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String;
L195:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V
L198:   ldc '/'
L200:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L203:   aload_1
L204:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L207:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String;
L210:   astore 9

        .stack append Object java/lang/String
L212:   aload 8
L214:   ifnull L235
L217:   aload_2
L218:   new com/fs/util/container/Pair
L221:   dup
L222:   aload 5
L224:   aload 8
L226:   invokespecial Method com/fs/util/container/Pair <init> (Ljava/lang/Object;Ljava/lang/Object;)V
L229:   invokeinterface InterfaceMethod java/util/List add (Ljava/lang/Object;)Z 2
L234:   pop

        .stack full
            locals Object com/fs/util/C Object java/lang/String Object java/util/List Object java/lang/String Integer Top Object java/util/Iterator
            stack
        .end stack
L235:   aload 6
L237:   invokeinterface InterfaceMethod java/util/Iterator hasNext ()Z 1
L242:   ifne L28
L245:   aload_2
L246:   invokeinterface InterfaceMethod java/util/List isEmpty ()Z 1
L251:   ifne L256
L254:   aload_2
L255:   areturn

        .stack full
            locals Object com/fs/util/C Object java/lang/String Object java/util/List Object java/lang/String Integer
            stack
        .end stack
L256:   aload_3
L257:   iconst_0
L258:   aload_3
L259:   invokevirtual Method java/lang/String length ()I
L262:   iconst_1
L263:   isub
L264:   invokevirtual Method java/lang/String substring (II)Ljava/lang/String;
L267:   astore_3
L268:   new java/lang/RuntimeException
L271:   dup
L272:   new java/lang/StringBuilder
L275:   dup
L276:   ldc 'Error loading ['
L278:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V
L281:   aload_1
L282:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L285:   ldc '] resource, not found in ['
L287:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L290:   aload_3
L291:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L294:   ldc ']'
L296:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L299:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String;
L302:   invokespecial Method java/lang/RuntimeException <init> (Ljava/lang/String;)V
L305:   athrow
L306:
    .end code
.end method

.method public synchronized 'Ô00000_optimized' : (Ljava/lang/String;Lcom/fs/util/C$Oo;)Ljava/io/InputStream;
    .exceptions java/io/FileNotFoundException
    .code stack 5 locals 5
L0:     aconst_null
L1:     astore_3
L2:     invokestatic Method com/fs/util/C o00000 ()[I
L5:     aload_2
L6:     getfield Field com/fs/util/C$Oo 'super' Lcom/fs/util/C$o;
L9:     invokevirtual Method com/fs/util/C$o ordinal ()I
L12:    iaload
L13:    tableswitch 1
            L98
            L40
            L75
            default : L158


        .stack append Object java/io/InputStream
L40:    new java/io/File
L43:    dup
L44:    aload_1
L45:    invokespecial Method java/io/File <init> (Ljava/lang/String;)V
L48:    astore 4
L50:    aload 4
L52:    invokestatic Method com/genir/renderer/overrides/FileUtils exists (Ljava/io/File;)Z
L55:    ifeq L158
L58:    new java/io/BufferedInputStream
L61:    dup
L62:    new java/io/FileInputStream
L65:    dup
L66:    aload 4
L68:    invokespecial Method java/io/FileInputStream <init> (Ljava/io/File;)V
L71:    invokespecial Method java/io/BufferedInputStream <init> (Ljava/io/InputStream;)V
L74:    areturn

        .stack same
L75:    ldc Class com/fs/util/C
L77:    invokevirtual Method java/lang/Class getClassLoader ()Ljava/lang/ClassLoader;
L80:    aload_1
L81:    invokevirtual Method java/lang/ClassLoader getResourceAsStream (Ljava/lang/String;)Ljava/io/InputStream;
L84:    astore_3
L85:    aload_3
L86:    ifnull L158
L89:    new java/io/BufferedInputStream
L92:    dup
L93:    aload_3
L94:    invokespecial Method java/io/BufferedInputStream <init> (Ljava/io/InputStream;)V
L97:    areturn

        .stack same
L98:    new java/io/File
L101:   dup
L102:   new java/lang/StringBuilder
L105:   dup
L106:   aload_2
L107:   getfield Field com/fs/util/C$Oo 'Ó00000' Ljava/lang/String;
L110:   invokestatic Method java/lang/String valueOf (Ljava/lang/Object;)Ljava/lang/String;
L113:   invokespecial Method java/lang/StringBuilder <init> (Ljava/lang/String;)V
L116:   ldc '/'
L118:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L121:   aload_1
L122:   invokevirtual Method java/lang/StringBuilder append (Ljava/lang/String;)Ljava/lang/StringBuilder;
L125:   invokevirtual Method java/lang/StringBuilder toString ()Ljava/lang/String;
L128:   invokespecial Method java/io/File <init> (Ljava/lang/String;)V
L131:   astore 4
L133:   aload 4
L135:   invokestatic Method com/genir/renderer/overrides/FileUtils exists (Ljava/io/File;)Z
L138:   ifeq L158
L141:   new java/io/BufferedInputStream
L144:   dup
L145:   new java/io/FileInputStream
L148:   dup
L149:   aload 4
L151:   invokespecial Method java/io/FileInputStream <init> (Ljava/io/File;)V
L154:   invokespecial Method java/io/BufferedInputStream <init> (Ljava/io/InputStream;)V
L157:   areturn

        .stack same
L158:   aconst_null
L159:   areturn
L160:
    .end code
.end method

.method public getString0 : ()Ljava/lang/String;
    .code stack 1 locals 1
L0:     aload_0
L1:     getfield Field com/fs/util/C String Ljava/lang/String;
L4:     areturn
L5:
        .linenumbertable
            L0 18
        .end linenumbertable
        .localvariabletable
            0 is this Lcom/fs/util/C; from L0 to L5
        .end localvariabletable
    .end code
.end method

.method public getBoolean0 : ()Z
    .code stack 1 locals 1
L0:     getstatic Field com/fs/util/C 'super' Z
L3:     ireturn
L4:
        .linenumbertable
            L0 23
        .end linenumbertable
        .localvariabletable
            0 is this Lcom/fs/util/C; from L0 to L4
        .end localvariabletable
    .end code
.end method

.method public setString0 : (Ljava/lang/String;)V
    .code stack 2 locals 2
L0:     aload_0
L1:     aload_1
L2:     putfield Field com/fs/util/C String Ljava/lang/String;
L5:     return
L6:
        .linenumbertable
            L0 28
            L5 29
        .end linenumbertable
        .localvariabletable
            0 is this Lcom/fs/util/C; from L0 to L6
            1 is value Ljava/lang/String; from L0 to L6
        .end localvariabletable
    .end code
.end method

.method public setBoolean0 : (Z)V
    .code stack 1 locals 2
L0:     iload_1
L1:     putstatic Field com/fs/util/C 'super' Z
L4:     return
L5:
        .linenumbertable
            L0 33
            L4 34
        .end linenumbertable
        .localvariabletable
            0 is this Lcom/fs/util/C; from L0 to L5
            1 is value Z from L0 to L5
        .end localvariabletable
    .end code
.end method

.innerclasses
    com/fs/util/C$1 [0] [0]
    com/fs/util/C$2 [0] [0]
    com/fs/util/C$Oo com/fs/util/C Oo public static
    com/fs/util/C$o com/fs/util/C o public static final enum
.end innerclasses
.nestmembers com/fs/util/C$1 com/fs/util/C$2 com/fs/util/C$Oo com/fs/util/C$o
.end class
