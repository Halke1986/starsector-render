package com.fs.starfarer.loading;

import com.fs.starfarer.api.combat.ShipwideAIFlags;

import java.util.Map;

import static com.genir.renderer.overrides.loading.ScriptLoader.joinScriptLoadingThread;
import static com.genir.renderer.overrides.loading.ScriptLoader.runScriptLoadingThread;

public class ResourceLoaderState {
    public void queueResource(ShipwideAIFlags.AIFlags flags, String path, int weight) {
        com.genir.renderer.overrides.ResourceLoaderState.loadResource(flags.name(), path);
    }

    public void init(Map var1) throws Exception {
        runScriptLoadingThread();
        joinScriptLoadingThread();
    }

    public void queueShipAndWeaponSprites() {
    }
}
