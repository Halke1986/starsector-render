package com.genir.renderer.overrides.loading;

import proxy.sound.Track;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;

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
    Track SoundStore_loadWav(String name, InputStream stream) throws IOException {
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
    public Track loadWav(String name, InputStream stream) throws IOException {
        // public wrapper around the method.
        return SoundStore_loadWav(name, stream);
    }

    /**
     * ADDED METHOD
     */
    public boolean getIsInitialized() {
        // public wrapper around the method.
        return SoundStore_getIsInitialized();
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
