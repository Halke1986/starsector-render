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
        ResourceLoaderState.mainThreadWaitGroup.incrementAndGet();
        ResourceLoaderState.resourceWorker.execute(() -> {
            try {
                // Initiate sound loading at the very beginning of spec store
                // initialization, to maximize parallel thread work time.
                loadingSoundSets_vanilla(state);

                // Delegate the remaining work, except sound loading, to vanilla implementation.
                init_vanilla(state);

                // Most sprites were already optionally queued in
                // queueWeaponSprite, queueProjectileSprite and queueShipSprite.
                // But vanilla is the final judge on what should be loaded.
                state.queueShipAndWeaponSprites_public();
            } catch (Throwable e) {
                ResourceLoaderState.asyncException.set(e);
            } finally {
                ResourceLoaderState.mainThreadWaitGroup.decrementAndGet();
            }
        });

        // Skip a redundant section of vanilla resource loading.
        throw new RuntimeException("Skip vanilla epilogue");
    }

    /**
     * ADDED METHOD
     */
    public static void initActual(ResourceLoaderState state) throws JSONException, IOException {

    }

    /**
     * REPLACED METHOD
     */
    private static void SpecStore_loadingSoundSets(ResourceLoaderState state) throws IOException, JSONException {
        // This method is called by vanilla init method.
        // Assume the sound loading was called earlier by overriden SpecStore_init.
    }
}
