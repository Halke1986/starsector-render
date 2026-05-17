package com.genir.renderer.overrides.loading;

import proxy.com.fs.util.FileLoader.ResourceLocation;
import proxy.com.fs.util.container.Pair;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import static proxy.com.fs.starfarer.loading.LoadingUtils.LoadingUtils_filesWithExtensionInDirectoryAbsolute_vanilla;

public class FileLoader {
    private static FileLoaderFast fastLoader = null;
    private static boolean isModLoading = false;

    public static InputStream loadInputStream(String path, boolean searchMods) throws IOException {
        if (fastLoader != null && !isModLoading) {
            return fastLoader.loadInputStream(path);
        }

        proxy.com.fs.util.FileLoader loaderInstance = proxy.com.fs.util.FileLoader.ResourceLoader_getInstance();

        if (fastLoader != null) {
            try {
                // String and boolean state are used only by mods,
                // after the multithreaded part of game loading.
                String locationFilter = loaderInstance.ResourceLoader_locationFilter;
                boolean skipMods = !searchMods || proxy.com.fs.util.FileLoader.ResourceLoader_withoutMods;

                return fastLoader.loadInputStream(path, locationFilter, skipMods);
            } finally {
                loaderInstance.ResourceLoader_locationFilter = null;
                proxy.com.fs.util.FileLoader.ResourceLoader_withoutMods = false;
            }

            // Fallback to vanilla method.
        }

        return loaderInstance.FileLoader_loadInputStream_vanilla(path, searchMods);
    }

    public static List<Pair<ResourceLocation, InputStream>> loadInputStreams(String path) throws IOException {
        if (fastLoader != null) {
            return fastLoader.loadInputStreams(path);
        }

        proxy.com.fs.util.FileLoader loaderInstance = proxy.com.fs.util.FileLoader.ResourceLoader_getInstance();
        return loaderInstance.FileLoader_loadInputStreams_vanilla(path);
    }

    public static List<String> filesWithExtensionInDirectory(String dir, String extension) {
        if (fastLoader != null) {
            return fastLoader.filesWithExtensionInDirectory(dir, extension, false);
        }

        List<String> files = proxy.com.fs.starfarer.loading.LoadingUtils.LoadingUtils_filesWithExtensionInDirectory_vanilla(dir, extension);
        return files;
    }

    public static List<String> filesWithExtensionInDirectoryAbsolute(String dir, String extension) {
        if (fastLoader != null) {
            return fastLoader.filesWithExtensionInDirectory(dir, extension, true);
        }

        List<String> files = LoadingUtils_filesWithExtensionInDirectoryAbsolute_vanilla(dir, extension);
        return files;
    }

    /**
     * Resource loading is the multi-threaded phase where game assets are loaded. It requires the most optimization.
     */
    public static void initResourceLoading() {
        proxy.com.fs.util.FileLoader loaderInstance = proxy.com.fs.util.FileLoader.ResourceLoader_getInstance();
        List<ResourceLocation> locations = loaderInstance.ResourceLoader_getResourceList();

        fastLoader = new FileLoaderFast(locations);
    }

    public static void initModLoading() {
        isModLoading = true;
    }

    /**
     * Gameplay requires no optimization. Drop the caches to free resources.
     */
    public static void initGameplay() {
        isModLoading = false;
        fastLoader = null;
    }
}
