package com.genir.renderer.overrides.loading;

import com.fs.starfarer.api.Global;
import com.fs.starfarer.loading.scripts.ScriptStore;
import com.genir.renderer.async.ExecutorFactory;
import com.genir.renderer.loaders.ScriptClassLoader;
import org.apache.log4j.Logger;

import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicReference;

/**
 * ScriptLoader is responsible for pre-loading scripts and plugins.
 * Vanilla implementation suffers from race conditions that can cause
 * instability and random visual glitches. Fast Rendering replaces
 * ScriptStore with a simplified implementation to avoid these issues.
 */
public class ScriptLoader { // com.fs.starfarer.loading.scripts.ScriptStore
    private static boolean loaderInitialized = false;
    private static final Set<String> scripts = new HashSet<>();

    private static final AtomicReference<RuntimeException> exception = new AtomicReference<>();
    private static final ExecutorService exec = ExecutorFactory.newMultiThreadedExecutor(1, "FR-Script-Loader");

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
                Logger.getLogger(ScriptLoader.class).info("Compiling script [" + className + "]");
                Global.getSettings().getScriptClassLoader().loadClass(className);
            } catch (Throwable t) {
                exception.set(new RuntimeException(t));
            }
        });
    }

    public static ExecutorService getExecutor() {
        return exec;
    }

    public static void runScriptLoadingThread() {
        initScriptClassLoader();
    }

    public static void joinScriptLoadingThread() {
        exec.shutdown();

        Set<String> plugins = ScriptStore.ScriptStore_getPluginSet();
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
                    ScriptStore.ScriptStore_objectRepository.add(script);
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

        // Initialize ClassLoader for loading scripts compiled to jar files.
        List<String> scripts = ScriptStore.ScriptStore_getScriptList();
        List<URL> urls = new ArrayList<>();
        Logger logger = Logger.getLogger(ScriptLoader.class);

        if (scripts != null) {
            for (String scriptPath : scripts) {
                try {
                    File scriptFile = new File(scriptPath);
                    urls.add(scriptFile.toURI().toURL());

                    logger.info("Getting ready to load jar file [" + scriptPath + "]");
                } catch (MalformedURLException e) {
                    logger.error(e.getMessage(), e);
                }
            }
        }

        ClassLoader secureLoader = ScriptStore.ScriptStore_getSecureClassLoader();
        ClassLoader scriptLoader = new ScriptClassLoader(urls.toArray(new URL[0]), secureLoader);
        ScriptStore.ScriptStore_initJavaSourceClassLoader(scriptLoader);
    }
}
