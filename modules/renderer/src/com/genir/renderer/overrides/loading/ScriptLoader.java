package com.genir.renderer.overrides.loading;

import com.fs.starfarer.api.Global;
import com.genir.renderer.loaders.ScriptClassLoader;
import com.genir.renderer.loaders.SourceClassLoader;
import org.apache.log4j.Logger;
import proxy.com.fs.starfarer.loading.scripts.ScriptStore;

import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * ScriptLoader is responsible for pre-loading scripts and plugins.
 * Vanilla implementation suffers from race conditions that can cause
 * instability and random visual glitches. Fast Rendering replaces
 * ScriptStore with a simplified implementation to avoid these issues.
 */
public class ScriptLoader { // com.fs.starfarer.loading.scripts.ScriptStore
    private static boolean loaderInitialized = false;
    private static final Set<String> scripts = new HashSet<>();

    private static final Logger logger = Logger.getLogger(ScriptLoader.class);

    public static void addScript(String className) {
        if (className == null) {
            return;
        }

        initScriptClassLoader();

        // Script already added.
        if (scripts.contains(className)) {
            return;
        }

        scripts.add(className);

        ResourceLoader.workers.execute(() -> {
            try {
                loadClass(className);
            } catch (Throwable e) {
                ResourceLoader.setException(e);
            }
        });
    }

    private static void loadClass(String className) {
        try {
            Logger.getLogger(ScriptLoader.class).info("Compiling script [" + className + "]");

            // Load classes asynchronously, to optimize away
            // the slow Janino bytecode compilation process.
            Global.getSettings().getScriptClassLoader().loadClass(className);
        } catch (Exception e) {
            // Vanilla throws a RuntimeException when a class fails to load.
            throw new RuntimeException("Error while loading script [" + className + "]", e);
        }
    }

    public static void runScriptLoadingThread() {
        initScriptClassLoader();
    }

    public static void joinScriptLoadingThread() {
        Set<String> plugins = ScriptStore.ScriptStore_getPluginSet();
        scripts.addAll(plugins);

        ClassLoader scriptLoader = Global.getSettings().getScriptClassLoader();

        for (String className : scripts) {
            Class<?> scriptClass;

            try {
                scriptClass = scriptLoader.loadClass(className);

                try {
                    // Initialize scripts on the main thread. In vanilla, the constructor is called
                    // on the script loading thread, which can cause race conditions when scripts
                    // invoke API methods from within their constructors.
                    Object script = scriptClass.newInstance();

                    // Plugins, as opposed to plain scripts, are stored.
                    if (plugins.contains(className)) {
                        ScriptStore.ScriptStore_objectRepository.add(script);
                    }
                } catch (Exception e) {
                    // Vanilla ignores exception while initializing plugins.
                    logger.error("Error while initializing plugin [" + className + "]: " + e.getMessage());
                }
            } catch (Exception e) {
                // This exception should have already occurred when loading the class for the first time.
                throw new RuntimeException("Error while loading script [" + className + "]", e);
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


        if (scripts != null) {
            for (String scriptPath : scripts) {
                try {
                    File scriptFile = new File(scriptPath);

                    // Vanilla uses URL.toURL() rather than URI.toURL(). The two produce
                    // different string representations, so FR follows the same approach.
                    urls.add(scriptFile.toURL());

                    logger.info("Getting ready to load jar file [" + scriptPath + "]");
                } catch (MalformedURLException e) {
                    logger.error(e.getMessage(), e);
                }
            }
        }

        ClassLoader secureLoader = ScriptStore.ScriptStore_getSecureClassLoader();
        ClassLoader jarLoader = new ScriptClassLoader(urls.toArray(new URL[0]), secureLoader);
        ClassLoader sourceLoader = new SourceClassLoader(jarLoader);

        ScriptStore.ScriptStore_javaSourceClassLoader = sourceLoader;
    }
}
