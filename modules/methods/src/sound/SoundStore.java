package sound;

import java.util.HashMap;

// $FF: renamed from: sound.C
public class SoundStore {
    // $FF: renamed from: Ö00000 boolean
    private boolean SoundStore_isOpenALInitialized2;

    // $FF: renamed from: OO0000 java.util.HashMap
    private HashMap<String, Integer> SoundStore_trackMap;

    // ADDED METHOD
    public boolean getIsOpenALInitialized2() {
        return SoundStore_isOpenALInitialized2;
    }
    //    .method public getIsOpenALInitialized2 : ()Z
    //        .code stack 1 locals 1
    //    L0:     aload_0
    //    L1:     getfield Field sound/SoundStore SoundStore_isOpenALInitialized2 Z
    //    L4:     ireturn
    //    L5:
    //            .linenumbertable
    //                L0 15
    //            .end linenumbertable
    //            .localvariabletable
    //                0 is this Lsound/SoundStore; from L0 to L5
    //            .end localvariabletable
    //        .end code
    //    .end method

    // ADDED METHOD
    public HashMap<String, Integer> getTrackMap() {
        return SoundStore_trackMap;
    }
    //.method public getTrackMap : ()Ljava/util/HashMap;
    //	.code stack 1 locals 1
    //L0:     aload_0
    //L1:     getfield Field sound/SoundStore SoundStore_trackMap Ljava/util/HashMap;
    //L4:     areturn
    //L5:
    //		.linenumbertable
    //			L0 20
    //		.end linenumbertable
    //		.localvariabletable
    //			0 is this Lsound/SoundStore; from L0 to L5
    //		.end localvariabletable
    //	.end code
    //	.signature ()Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;
    //.end method
}
