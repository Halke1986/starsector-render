package com.genir.renderer.overrides;

import com.fs.starfarer.api.Global;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * ScriptStore is responsible for pre-loading plugins and other modded classes.
 * In vanilla, this is done on a separate worker thread, but that approach
 * suffers from race conditions that can cause instability and random visual glitches.
 * Fast Rendering replaces ScriptStore with a simplified, synchronous implementation
 * to avoid these issues.
 */
public class ScriptStore {
    public static void runScriptLoadingThread() {
        try {
            // Run the vanilla script loading thread and join immediately.
            // This is required, because the thread code initializes the script class loader.
            com.fs.starfarer.loading.scripts.ScriptStore.stopVanillaScriptLoadingThread();
            com.fs.starfarer.loading.scripts.ScriptStore.runVanillaScriptLoadingThread();
            com.fs.starfarer.loading.scripts.ScriptStore.joinVanillaScriptLoadingThread();
        } catch (Throwable t) {
            throw new RuntimeException(t);
        }
    }

    public static void joinScriptLoadingThread() {
        ClassLoader scriptLoader = Global.getSettings().getScriptClassLoader();

        List<String> scriptsList = com.fs.starfarer.loading.scripts.ScriptStore.getScriptList();
        Set<String> scripts = new HashSet<>(scriptsList);
        Set<String> plugins = com.fs.starfarer.loading.scripts.ScriptStore.getPluginSet();

        scripts.addAll(plugins);

        for (String className : scripts) {
            Class<?> scriptClass;

            try {
                scriptClass = scriptLoader.loadClass(className);
            } catch (Throwable t) {
                throw new RuntimeException("Problem loading class [" + className + "]", t);
            }

            try {
                Object script = scriptClass.newInstance();

                // Plugins, as opposed to plain scripts, are stored.
                if (plugins.contains(className)) {
                    com.fs.starfarer.loading.scripts.ScriptStore.storePlugin(script);
                }
            } catch (Throwable ignored) {
            }
        }
    }
}
