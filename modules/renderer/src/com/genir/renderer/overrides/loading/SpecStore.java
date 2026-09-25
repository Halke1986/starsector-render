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
     * REPLACED METHOD
     */
    public static void SpecStore_init(ResourceLoaderState state) throws Exception {
        // This method is called by ResourceLoaderState.init_vanilla.
        // Return control to ResourceLoaderState immediately.
        state.initMiddle();
    }

    /**
     * ADDED METHOD
     */
    public static void initActual(ResourceLoaderState state) throws JSONException, IOException {
        // Initiate sound loading at the very beginning of spec store
        // initialization, to maximize parallel thread work time.
        loadingSoundSets_vanilla(state);

        // Delegate the remaining work, except sound loading, to vanilla implementation.
        init_vanilla(state);
    }

    /**
     * REPLACED METHOD
     */
    private static void SpecStore_loadingSoundSets(ResourceLoaderState state) throws IOException, JSONException {
        // This method is called by vanilla init method.
        // Assume the sound loading was called earlier by overriden SpecStore_init.
    }
}
