package com.genir.renderer.overrides;

import com.genir.renderer.overrides.loading.ResourceLoaderState;

/**
 * OVERRIDES com.fs.starfarer.title.TitleScreenState
 */
public class TitleScreenState {
    /**
     * STUB
     */
    private void checkNewHighScore_vanilla() {
    }

    /**
     * REPLACED METHOD
     * <p>
     * checkNewHighScore is called by Starsector
     * after all the game loading code finishes.
     */
    private void checkNewHighScore() {
        ResourceLoaderState.initFastRendering();

        checkNewHighScore_vanilla();
    }
}
