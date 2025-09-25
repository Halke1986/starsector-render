package com.genir.renderer.overrides;

import com.fs.starfarer.api.Global;
import org.apache.log4j.Logger;

/**
 * ScriptStore is responsible for pre-loading plugins and other modded classes.
 * In vanilla, this is done on a separate worker thread, but that approach
 * suffers from race conditions that can cause instability and random visual glitches.
 * Fast Rendering replaces ScriptStore with a simplified, synchronous implementation
 * to avoid these issues.
 */
public class ScriptStore {
    private static final Logger logger = Logger.getLogger(ScriptStore.class);
    private static boolean loaderInitialized = false;

    public static void addScript(String className) {
        if (className == null) {
            return;
        }

        try {
            Class<?> c = loadScriptClass(className);

            try {
                // Scripts are constructed, to (presumably) force resource pre-loading.
                c.newInstance();
            } catch (Throwable ignored) {
            }

        } catch (Throwable t) {
            throw new RuntimeException("Problem loading class [" + className + "]", t);
        }
    }

    public static void addPlugin(String className) {
        if (className == null) {
            return;
        }

        try {
            Class<?> c = loadScriptClass(className);

            try {
                // Plugins objects, as opposed to scripts, are stored.
                Object plugin = c.newInstance();
                com.fs.starfarer.loading.scripts.ScriptStore.addPlugin(plugin);
            } catch (Throwable ignored) {
            }

        } catch (Throwable t) {
            throw new RuntimeException("Problem loading class [" + className + "]", t);
        }
    }

    private static void initScriptClassLoader() {
        if (loaderInitialized) {
            return;
        }

        try {
            // Run the vanilla script loading thread and join immediately.
            // This is required, because the thread code initializes the script class loader.
            com.fs.starfarer.loading.scripts.ScriptStore.runScriptLoadingThread();
            com.fs.starfarer.loading.scripts.ScriptStore.joinScriptLoadingThread();
        } catch (Throwable t) {
            throw new RuntimeException(t);
        }

        loaderInitialized = true;
    }

    private static Class<?> loadScriptClass(String className) throws ClassNotFoundException {
        initScriptClassLoader();
        ClassLoader scriptLoader = Global.getSettings().getScriptClassLoader();
        return scriptLoader.loadClass(className);
    }
}
