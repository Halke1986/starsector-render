package com.genir.renderer.overrides.loading;

import proxy.com.fs.util.FileLoader.ResourceLocation;
import proxy.com.fs.util.container.Pair;

import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.List;

import static proxy.com.fs.starfarer.loading.LoadingUtils.LoadingUtils_filesWithExtensionInDirectoryAbsolute_vanilla;

public class FileLoader {
    private static FileLoaderFast fastLoader = null;
    private static boolean isModLoading = false;

    public static InputStream loadInputStream(String path, boolean searchMods) throws IOException {
        if (fastLoader != null && !isModLoading) {
            return fastLoader.loadInputStream(path);
        }

        var loaderInstance = proxy.com.fs.util.FileLoader.ResourceLoader_getInstance();

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
        }

        // Fallback to vanilla method.
        return loaderInstance.FileLoader_loadInputStream_vanilla(path, searchMods);
    }

    public static List<Pair<ResourceLocation, InputStream>> loadInputStreams(String path) throws IOException {
        if (fastLoader != null) {
            return fastLoader.loadInputStreams(path);
        }

        var loaderInstance = proxy.com.fs.util.FileLoader.ResourceLoader_getInstance();
        return loaderInstance.FileLoader_loadInputStreams_vanilla(path);
    }

    public static List<String> filesWithExtensionInDirectory(String dir, String extension) {
        if (fastLoader != null) {
            return fastLoader.filesWithExtensionInDirectory(dir, extension, false);
        }

        return proxy.com.fs.starfarer.loading.LoadingUtils.LoadingUtils_filesWithExtensionInDirectory_vanilla(dir, extension);
    }

    public static List<String> filesWithExtensionInDirectoryAbsolute(String dir, String extension) {
        if (fastLoader != null) {
            return fastLoader.filesWithExtensionInDirectory(dir, extension, true);
        }

        return LoadingUtils_filesWithExtensionInDirectoryAbsolute_vanilla(dir, extension);
    }

    public static String readPathAsString(String path) throws IOException {
        return readStreamAsString(loadInputStream(path, true));
    }

    public static String readStreamAsString(InputStream stream) throws IOException {
        if (stream instanceof CachedStringInputStream cachedString) {
            return cachedString.getString();
        }

        return readStringVanilla(stream);
    }

    /**
     * Vanilla implementation of string reading.
     * The implementation is lenient and will ignore invalid UTF-8 characters.
     */
    public static String readStringVanilla(InputStream var0) throws IOException {
        byte[] var1 = new byte[1048576];
        StringBuffer var2 = new StringBuffer();

        try {
            boolean var3 = false;

            int var9;
            while ((var9 = var0.read(var1)) != -1) {
                var2.append(new String(var1, 0, var9, "UTF-8"));
            }
        } catch (UnsupportedEncodingException var7) {
        } finally {
            var0.close();
        }

        String var10 = var2.toString().replaceAll("\\r", "");
        return var10;
    }

    /**
     * Resource loading is the multi-threaded phase where game assets are loaded. It requires the most optimization.
     */
    public static void initResourceLoading() {
        var loaderInstance = proxy.com.fs.util.FileLoader.ResourceLoader_getInstance();
        List<ResourceLocation> locations = loaderInstance.ResourceLoader_getResourceList();

        fastLoader = new FileLoaderFast(locations);
    }

    /**
     * Mod loading is the single-threaded phase where mods are initialized. It requires the IO optimization,
     * but uses more features than vanilla resource loading.
     */
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
