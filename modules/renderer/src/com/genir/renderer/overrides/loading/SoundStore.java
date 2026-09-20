package com.genir.renderer.overrides.loading;

import proxy.sound.Track;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;

import static com.genir.renderer.Noop.breakpoint;

/**
 * OVERRIDES sound.SoundStore
 */
public class SoundStore {
    /**
     * STUB
     */
    private HashMap<String, Integer> SoundStore_trackMap;
    private boolean SoundStore_isOpenALInitialized2;

    /**
     * STUB
     */
    public static SoundStore SoundStore_getInstance() {
        return null;
    }

    /**
     * STUB
     */
    Track SoundStore_loadWav(String var1, InputStream var2) throws IOException {
        return null;
    }

    /**
     * STUB
     */
    boolean SoundStore_getIsInitialized() {
        return false;
    }

    /**
     * ADDED METHOD
     */
    public boolean getIsOpenALInitialized2() {
        return SoundStore_isOpenALInitialized2;
    }

    /**
     * ADDED METHOD
     */
    public HashMap<String, Integer> getTrackMap() {
        return SoundStore_trackMap;
    }
}
