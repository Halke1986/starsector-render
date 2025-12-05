package com.fs.util;

import proxy.com.fs.util.ResourceLoader;
import proxy.com.fs.util.container.Pair;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public class FileUtils {
    // MODIFIED
    // $FF: renamed from: new (java.lang.String) java.util.List
    public List<Pair<ResourceLoader.ResourceLocation, InputStream>> FileUtils_loadInputStreams(String var1) throws IOException {
        return com.genir.renderer.overrides.FileUtils.loadInputStreams(var1);
    }
    // .method public FileUtils_loadInputStreams : (Ljava/lang/String;)Ljava/util/List;
    //    .code stack 1 locals 2
    //L0:     aload_1
    //L1:     invokestatic Method com/genir/renderer/overrides/FileUtils loadInputStreams (Ljava/lang/String;)Ljava/util/List;
    //L4:     areturn
    //L5:
    //        .linenumbertable
    //            L0 15
    //        .end linenumbertable
    //        .localvariabletable
    //            0 is this Lcom/fs/util/C; from L0 to L5
    //            1 is var1 Ljava/lang/String; from L0 to L5
    //        .end localvariabletable
    //    .end code
    //    .exceptions java/io/IOException
    //    .signature (Ljava/lang/String;)Ljava/util/List<Lcom/fs/util/container/Pair<Lproxy/com/fs/util/ResourceLoader$ResourceLocation;Ljava/io/InputStream;>;>;
    //.end method

    // MODIFIED
    // $FF: renamed from: Ó00000 (java.lang.String, boolean) java.io.InputStream
    public InputStream FileUtils_loadInputStream(String var1, boolean var2) throws IOException {
        return com.genir.renderer.overrides.FileUtils.loadInputStream(var1, var2);
    }
    //.method public FileUtils_loadInputStream : (Ljava/lang/String;Z)Ljava/io/InputStream;
    //    .code stack 2 locals 3
    //L0:     aload_1
    //L1:     iload_2
    //L2:     invokestatic Method com/genir/renderer/overrides/FileUtils loadInputStream (Ljava/lang/String;Z)Ljava/io/InputStream;
    //L5:     areturn
    //L6:
    //        .linenumbertable
    //            L0 21
    //        .end linenumbertable
    //        .localvariabletable
    //            0 is this Lcom/fs/util/C; from L0 to L6
    //            1 is var1 Ljava/lang/String; from L0 to L6
    //            2 is var2 Z from L0 to L6
    //        .end localvariabletable
    //    .end code
    //    .exceptions java/io/IOException
    //.end method
}
