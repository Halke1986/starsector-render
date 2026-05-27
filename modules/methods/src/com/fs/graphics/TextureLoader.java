package com.fs.graphics;

import proxy.com.fs.graphics.TextureHandler;

import java.io.IOException;

public class TextureLoader {
    public TextureHandler TextureLoader_loadTexture(TextureHandler target, String path, int var3, int var4, int var5, int var6, boolean generateSubImage) throws IOException {
        return com.genir.renderer.overrides.loading.TextureLoader.loadTexture(this, target, path, var3, var4, var5, var6, generateSubImage);
    }
    //.method public TextureLoader_loadTexture : (Lproxy/com/fs/graphics/TextureHandler;Ljava/lang/String;IIIIZ)Lproxy/com/fs/graphics/TextureHandler;
    //    .code stack 8 locals 8
    //L0:     aload_0
    //L1:     aload_1
    //L2:     aload_2
    //L3:     iload_3
    //L4:     iload 4
    //L6:     iload 5
    //L8:     iload 6
    //L10:    iload 7
    //L12:    invokestatic Method com/genir/renderer/overrides/loading/TextureLoader loadTexture (Ljava/lang/Object;Lproxy/com/fs/graphics/TextureHandler;Ljava/lang/String;IIIIZ)Lproxy/com/fs/graphics/TextureHandler;
    //L15:    areturn
    //L16:
    //        .linenumbertable
    //            L0 9
    //        .end linenumbertable
    //        .localvariabletable
    //            0 is this Lcom/fs/graphics/TextureLoader; from L0 to L16
    //            1 is target Lproxy/com/fs/graphics/TextureHandler; from L0 to L16
    //            2 is path Ljava/lang/String; from L0 to L16
    //            3 is var3 I from L0 to L16
    //            4 is var4 I from L0 to L16
    //            5 is var5 I from L0 to L16
    //            6 is var6 I from L0 to L16
    //            7 is generateSubImage Z from L0 to L16
    //        .end localvariabletable
    //    .end code
    //    .exceptions java/io/IOException
    //.end method
}
