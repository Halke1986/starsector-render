package com.genir.renderer.overrides.loading;

import org.json.JSONException;

import java.io.IOException;

/**
 * OVERRIDES com.fs.starfarer.loading.SpecStore
 */
public class SpecStore {
    /**
     * STUB
     */
    public static void init_vanilla(ResourceLoaderState state) throws IOException, JSONException {
    }

    /**
     * STUB
     */
    private static void loadingSoundSets_vanilla(ResourceLoaderState state) throws IOException, JSONException {
    }

    /**
     * ADDED METHOD
     * <p>
     * Public wrapper around loadingSoundSets_vanilla.
     */
    public static void loadingSoundSets(ResourceLoaderState state) throws JSONException, IOException {
        loadingSoundSets_vanilla(state);
    }

    /**
     * REPLACED METHOD
     */
    public static void SpecStore_init(ResourceLoaderState state) throws Exception {
        // Skip a redundant section of ResourceLoaderState.init_vanilla()
        // and yield control to overriden ResourceLoaderState.initRun().
        throw new RuntimeException("Skip vanilla epilogue");
    }

    /**
     * REPLACED METHOD
     */
    private static void SpecStore_loadingSoundSets(ResourceLoaderState state) throws IOException, JSONException {
        // This method is called by vanilla init method.
        // Assume the sound loading was called earlier by overriden SpecStore_init.
    }
}
