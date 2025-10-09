package com.fs.starfarer.loading;

import java.util.Map;

import static com.genir.renderer.overrides.ScriptStore.joinScriptLoadingThread;
import static com.genir.renderer.overrides.ScriptStore.runScriptLoadingThread;

public class ResourceLoaderState {
    public void init(Map var1) throws Exception {
        runScriptLoadingThread();
        joinScriptLoadingThread();
    }
}
