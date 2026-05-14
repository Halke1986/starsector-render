package proxy.sound;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;

// $FF: renamed from: sound.C
public class SoundStore {
    // $FF: renamed from: ö00000 () sound.C
    public static SoundStore SoundStore_getInstance() {
        return null;
    }

    // $FF: renamed from: Ò00000 (java.lang.String, java.io.InputStream) sound.O0OO
    public Track SoundStore_loadWav(String var1, InputStream var2) throws IOException {
        return null;
    }

    // $FF: renamed from: o00000 () boolean
    public boolean SoundStore_getIsInitialized() {
        return false;
    }

    // ADDED METHOD
    public boolean getIsOpenALInitialized2() {
        return false;
    }

    // ADDED METHOD
    public HashMap<String, Integer> getTrackMap() {
        return null;
    }
}
