package com.genir.renderer.overrides;

import com.fs.starfarer.api.Global;
import org.apache.log4j.Logger;

import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/**
 * ScriptStore is responsible for pre-loading scripts and plugins.
 * Vanilla implementation suffers from race conditions that can cause
 * instability and random visual glitches. Fast Rendering replaces
 * ScriptStore with a simplified implementation to avoid these issues.
 */
public class ScriptStore {
    private static boolean loaderInitialized = false;
    private static final Set<String> scripts = new HashSet<>();

    private static final AtomicReference<RuntimeException> exception = new AtomicReference<>();
    private static final AtomicInteger threadCounter = new AtomicInteger(0);
    private static final ExecutorService exec = Executors.newSingleThreadExecutor(runnable -> {
        Thread t = new Thread(runnable);
        t.setDaemon(true);
        t.setName("FR-Script-Loader-" + threadCounter.getAndIncrement());

        return t;
    });

    public static void addScript(String className) {
        // Rethrow exception captured in script loading thread.
        RuntimeException e = exception.getAndSet(null);
        if (e != null) {
            throw e;
        }

        if (className == null) {
            return;
        }

        initScriptClassLoader();

        // Script already added.
        if (scripts.contains(className)) {
            return;
        }

        scripts.add(className);

        exec.execute(() -> {
            try {
                // Load classes asynchronously, to optimize away
                // the slow Janino bytecode compilation process.
                Logger.getLogger(ScriptStore.class).info("Compiling script [" + className + "]");
                Global.getSettings().getScriptClassLoader().loadClass(className);
            } catch (Throwable t) {
                exception.set(new RuntimeException(t));
            }
        });
    }

    public static void runScriptLoadingThread() {
        initScriptClassLoader();
    }

    public static void joinScriptLoadingThread() {
        exec.shutdown();

        Set<String> plugins = com.fs.starfarer.loading.scripts.ScriptStore.getPluginSet();
        scripts.addAll(plugins);

        ClassLoader scriptLoader = Global.getSettings().getScriptClassLoader();

        for (String className : scripts) {
            Class<?> scriptClass;

            try {
                scriptClass = scriptLoader.loadClass(className);
            } catch (Throwable t) {
                throw new RuntimeException("Problem loading class [" + className + "]", t);
            }

            try {
                // Initialize scripts on the main thread. In vanilla, the constructor is called
                // on the script loading thread, which can cause race conditions when scripts
                // invoke API methods from within their constructors.
                Object script = scriptClass.newInstance();

                // Plugins, as opposed to plain scripts, are stored.
                if (plugins.contains(className)) {
                    com.fs.starfarer.loading.scripts.ScriptStore.storePlugin(script);
                }
            } catch (Throwable ignored) {
            }
        }
    }

    private static void initScriptClassLoader() {
        if (loaderInitialized) {
            return;
        }

        loaderInitialized = true;

        try {
            // Run the vanilla script loading thread and join immediately.
            // This is required, because the thread code initializes the script class loader.
            // Additionally, waiting for the thread to join eliminates the risk of race conditions
            // caused by using not yet initialized class loader.
            com.fs.starfarer.loading.scripts.ScriptStore.stopVanillaScriptLoadingThread();
            com.fs.starfarer.loading.scripts.ScriptStore.runVanillaScriptLoadingThread();
            com.fs.starfarer.loading.scripts.ScriptStore.joinVanillaScriptLoadingThread();
        } catch (Throwable t) {
            throw new RuntimeException(t);
        }
    }
}
