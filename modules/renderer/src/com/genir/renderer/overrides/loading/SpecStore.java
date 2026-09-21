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
    public static void init_vanilla(proxy.com.fs.starfarer.loading.ResourceLoaderState state) throws IOException, JSONException {
    }

    /**
     * STUB
     */
    private static void loadingSoundSets_vanilla(proxy.com.fs.starfarer.loading.ResourceLoaderState state) throws IOException, JSONException {
    }

    /**
     * REPLACED METHOD
     */
    public static void SpecStore_init(proxy.com.fs.starfarer.loading.ResourceLoaderState state) throws IOException, JSONException {
        // Initiate sound loading at the very beginning of spec store
        // initialization, to maximize parallel thread work time.
        loadingSoundSets_vanilla(state);

        // Delegate the remaining work, except sound loading, to vanilla implementation.
        init_vanilla(state);
    }

    /**
     * REPLACED METHOD
     */
    private static void SpecStore_loadingSoundSets(proxy.com.fs.starfarer.loading.ResourceLoaderState state) throws IOException, JSONException {
        // This method is called by vanilla init method.
        // Assume the sound loading was called earlier by overriden init and do nothing.
    }
}
