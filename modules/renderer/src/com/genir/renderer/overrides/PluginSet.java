package com.genir.renderer.overrides;

import com.fs.starfarer.api.Global;
import com.fs.starfarer.loading.scripts.ScriptStore;
import org.apache.log4j.Logger;

public class PluginSet extends PluginSetBase {
    private static final Logger logger = Logger.getLogger(ScriptStore.class);
    private static boolean loaderInitialized = false;

    @Override
    public boolean add(Object o) {
        if (!(o instanceof String className)) {
            return false;
        }

        try {
            if (!loaderInitialized) {
                ScriptStore.runScriptLoadingThread();
                ScriptStore.joinScriptLoadingThread();
                loaderInitialized = true;
            }

            ClassLoader scriptLoader = Global.getSettings().getScriptClassLoader();
            Object plugin = scriptLoader.loadClass(className).newInstance();
            ScriptStore.addPlugin(plugin);

            logger.info("Class [" + className + "] preloaded.");
        } catch (Throwable t) {
            throw new RuntimeException("Problem loading class [" + className + "]", t);
        }

        return true;
    }
}
