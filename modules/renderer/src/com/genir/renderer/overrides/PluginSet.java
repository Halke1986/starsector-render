package com.genir.renderer.overrides;

import com.fs.starfarer.loading.scripts.ScriptStore;
import org.apache.log4j.Logger;

import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

public class PluginSet extends PluginSetBase {
    private static final Logger logger = Logger.getLogger(com.fs.starfarer.loading.scripts.ScriptStore.class);
    private static boolean loaderInitialized = false;

    @Override
    public boolean add(Object o) {
        if (!(o instanceof String className)) {
            return false;
        }

        if (!loaderInitialized) {
            initJavaSourceClassLoader();
            loaderInitialized = true;
        }

        try {
            Object plugin = ScriptStore.getPlugin(className);
            ScriptStore.addPlugin(plugin);

            logger.info("Class [" + className + "] preloaded.");
        } catch (Throwable t) {
            throw new RuntimeException(t);
        }

        return true;
    }

    private static void initJavaSourceClassLoader() {
        ClassLoader scriptLoader = (ClassLoader) ScriptStore.getScriptLoader();
        List<String> jarPaths = ScriptStore.getJarList();

        if (!jarPaths.isEmpty()) {
            List<URL> urls = new ArrayList<>();
            for (String jarPath : jarPaths) {
                File jar = new File(jarPath);

                try {
                    urls.add(jar.toURL());
                    logger.info("Getting ready to load jar file [" + jarPath + "]");
                } catch (MalformedURLException e) {
                    logger.error(e.getMessage(), e);
                }
            }

            logger.info("Loading jar files");
            scriptLoader = new com.genir.renderer.loaders.URLClassLoader(urls.toArray(new URL[0]), scriptLoader);
        }

        ScriptStore.setScriptLoader(scriptLoader);
    }
}
