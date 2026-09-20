package com.genir.renderer.overrides.loading;

import proxy.com.fs.util.FileLoader.ResourceLocation;
import proxy.com.fs.util.container.Pair;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/**
 * OVERRIDES com.fs.util.FileLoader
 */
public class FileLoader {
    /**
     * STUBS
     */
    // $FF: renamed from: String java.lang.String
    public String FileLoader_locationFilter;
    // $FF: renamed from: super boolean
    public static boolean FileLoader_withoutMods;

    /**
     * ADDED FIELDS
     */
    private FileLoaderFast fastLoader;
    private boolean isModLoading;

    /**
     * STUB
     */
    public List<Pair<ResourceLocation, InputStream>> FileLoader_loadInputStreams_vanilla(String var1) throws IOException {
        return null;
    }

    /**
     * STUB
     */
    public InputStream FileLoader_loadInputStream_vanilla(String var1, boolean var2) throws IOException {
        return null;
    }

    /**
     * STUB
     */
    public static FileLoader FileLoader_getInstance() {
        return null;
    }

    /**
     * STUB
     */
    public synchronized List<ResourceLocation> FileLoader_getResourceList() {
        return null;
    }

    /**
     * REPLACED METHOD
     * <p>
     * Replaced to remove redundant synchronized section.
     */
    public InputStream FileLoader_loadInputStreamWithMods(String path) throws IOException {
        return FileLoader_loadInputStream(path, true);
    }

    /**
     * REPLACED METHOD
     */
    public InputStream FileLoader_loadInputStream(String path, boolean searchMods) throws IOException {
        if (fastLoader != null && !isModLoading) {
            return fastLoader.loadInputStream(path, null, false);
        }

        if (fastLoader != null) {
            try {
                // String and boolean state are used only by mods,
                // after the multithreaded part of game loading.
                boolean skipMods = !searchMods || FileLoader_withoutMods;

                return fastLoader.loadInputStream(path, FileLoader_locationFilter, skipMods);
            } finally {
                FileLoader_locationFilter = null;
                FileLoader_withoutMods = false;
            }
        }

        // Fallback to vanilla method.
        return FileLoader_loadInputStream_vanilla(path, searchMods);
    }

    /**
     * REPLACED METHOD
     */
    public List<Pair<ResourceLocation, InputStream>> FileLoader_loadInputStreams(String path) throws IOException {
        if (fastLoader != null) {
            return fastLoader.loadInputStreams(path);
        }

        return FileLoader_loadInputStreams_vanilla(path);
    }

    /**
     * ADDED METHOD
     */
    public FileLoaderFast getFastLoader() {
        return fastLoader;
    }

    /**
     * ADDED METHOD
     * <p>
     * Resource loading is the multi-threaded phase where game assets are loaded. It requires the most optimization.
     */
    public void initResourceLoading() {
        fastLoader = new FileLoaderFast(FileLoader_getResourceList());
    }

    /**
     * ADDED METHOD
     * <p>
     * Mod loading is the single-threaded phase where mods are initialized. It requires the IO optimization,
     * but uses more features than vanilla resource loading.
     */
    public void initModLoading() {
        isModLoading = true;
    }

    /**
     * ADDED METHOD
     * <p>
     * Gameplay requires no optimization. Drop the caches to free resources.
     */
    public void initGameplay() {
        isModLoading = false;
        fastLoader = null;
    }
}
