package com.fs.starfarer.loading;

import com.genir.renderer.overrides.loading.FileLoader;

import java.io.IOException;
import java.io.InputStream;

public class LoadingUtils {
    // $FF: renamed from: super (java.lang.String) java.lang.String
    public static String LoadingUtils_readPathAsString(String var0) throws IOException {
        return FileLoader.readPathAsString(var0);
    }
    //.method public static LoadingUtils_readPathAsString : (Ljava/lang/String;)Ljava/lang/String;
    //    .code stack 1 locals 1
    //L0:     aload_0
    //L1:     invokestatic Method com/genir/renderer/overrides/loading/FileLoader readPathAsString (Ljava/lang/String;)Ljava/lang/String;
    //L4:     areturn
    //L5:
    //        .linenumbertable
    //            L0 11
    //        .end linenumbertable
    //        .localvariabletable
    //            0 is var0 Ljava/lang/String; from L0 to L5
    //        .end localvariabletable
    //    .end code
    //    .exceptions java/io/IOException
    //.end method

    // $FF: renamed from: super (java.io.InputStream) java.lang.String
    public static String LoadingUtils_readStreamAsString(InputStream var0) throws IOException {
        return FileLoader.readStreamAsString(var0);
    }
    //.method public static LoadingUtils_readStreamAsString : (Ljava/io/InputStream;)Ljava/lang/String;
    //    .code stack 1 locals 1
    //L0:     aload_0
    //L1:     invokestatic Method com/genir/renderer/overrides/loading/FileLoader readStreamAsString (Ljava/io/InputStream;)Ljava/lang/String;
    //L4:     areturn
    //L5:
    //        .linenumbertable
    //            L0 16
    //        .end linenumbertable
    //        .localvariabletable
    //            0 is var0 Ljava/io/InputStream; from L0 to L5
    //        .end localvariabletable
    //    .end code
    //    .exceptions java/io/IOException
    //.end method
}
