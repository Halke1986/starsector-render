package com.genir.renderer.overrides.loading;

import com.fs.starfarer.api.Global;
import org.apache.log4j.Logger;
import proxy.com.fs.starfarer.loading.scripts.SecureClassLoader;
import proxy.com.fs.util.container.repo.ObjectRepository;

import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLClassLoader;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * OVERRIDES com.fs.starfarer.loading.scripts.ScriptStore
 * <p>
 * ScriptStore is responsible for pre-loading scripts and plugins.
 * Vanilla implementation suffers from race conditions that can cause
 * instability and random visual glitches. Fast Rendering replaces
 * ScriptStore with a simplified implementation to avoid these issues.
 */
public class ScriptStore {
    /**
     * STUBS
     */
    public static volatile ObjectRepository ScriptStore_objectRepository;
    public static volatile ClassLoader ScriptStore_javaSourceClassLoader;

    /**
     * ADDED FIELDS
     */
    private static boolean loaderInitialized;
    private static Set<String> scripts = new HashSet<>();
    private static Logger logger = Logger.getLogger(ScriptStore.class);

    /**
     * STUB
     */
    // $FF: renamed from: Õ00000 () java.util.List
    public static List<String> ScriptStore_getScriptList() {
        return null;
    }

    /**
     * STUB
     */
    // $FF: renamed from: Ò00000 () java.util.Set
    public static Set<String> ScriptStore_getPluginSet() {
        return null;
    }

    /**
     * REPLACED METHOD
     */
    public static void ScriptLoader_queueScript(String className) {
        if (className == null) {
            return;
        }

        initScriptClassLoader();

        // Script already added.
        if (scripts.contains(className)) {
            return;
        }

        scripts.add(className);

        ResourceLoader.scriptWorkers.execute(() -> {
            loadScript(className);
        });

        // Submit empty job to main thread to progress the loading bar.
        ResourceLoader.mainThreadWaitGroup.incrementAndGet();
        ResourceLoader.mainThreadQueue.add(ResourceLoader.mainThreadWaitGroup::decrementAndGet);
    }

    /**
     * ADDED METHOD
     */
    private static void loadScript(String className) {
        try {
            logger.info("Compiling script [" + className + "]");

            // Load classes asynchronously, to optimize away
            // the slow Janino bytecode compilation process.
            Global.getSettings().getScriptClassLoader().loadClass(className);
        } catch (Exception e) {
            // Vanilla throws a RuntimeException when a class fails to load.
            throw new RuntimeException("Error while loading script [" + className + "]", e);
        }
    }

    /**
     * ADDED METHOD
     */
    public static void loadModClasses() {
        Set<String> plugins = ScriptStore_getPluginSet();
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
                        ScriptStore_objectRepository.add(script);
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

    /**
     * ADDED METHOD
     */
    public static void initScriptClassLoader() {
        if (loaderInitialized) {
            return;
        }

        loaderInitialized = true;
        scripts = new HashSet<>();
        logger = Logger.getLogger(ScriptStore.class);

        // Initialize ClassLoader for loading scripts compiled to jar files.
        List<String> scripts = ScriptStore_getScriptList();
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

        ClassLoader secureLoader = new SecureClassLoader(ScriptStore.class.getClassLoader());
        ClassLoader jarLoader = new URLClassLoader(urls.toArray(new URL[0]), secureLoader);
        ClassLoader sourceLoader = new MultiThreadedJaninoClassLoader(jarLoader);

        ScriptStore_javaSourceClassLoader = sourceLoader;
    }
}
