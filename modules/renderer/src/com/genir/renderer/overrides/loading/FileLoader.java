package com.genir.renderer.overrides.loading;

import proxy.com.fs.util.FileLoader.ResourceLocation;
import proxy.com.fs.util.container.Pair;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public class FileLoader {
    private static FileLoaderFast fastLoader = null;

    public static InputStream loadInputStream(String path, boolean searchMods) throws IOException {
        if (fastLoader != null) {
            // Assume boolean searchMods is unused during resource loading.
            // The flag is used only by mods, after the resource loading phase finishes.
            return fastLoader.loadInputStream(path);
        }

        proxy.com.fs.util.FileLoader loaderInstance = proxy.com.fs.util.FileLoader.ResourceLoader_getInstance();
        return loaderInstance.FileLoader_loadInputStream_vanilla(path, searchMods);
    }

    public static List<Pair<ResourceLocation, InputStream>> loadInputStreams(String path) throws IOException {
        if (fastLoader != null) {
            return fastLoader.loadInputStreams(path);
        }

        proxy.com.fs.util.FileLoader loaderInstance = proxy.com.fs.util.FileLoader.ResourceLoader_getInstance();
        return loaderInstance.FileLoader_loadInputStreams_vanilla(path);
    }

    public static void enterFastMode() {
        proxy.com.fs.util.FileLoader loaderInstance = proxy.com.fs.util.FileLoader.ResourceLoader_getInstance();
        List<ResourceLocation> locations = loaderInstance.ResourceLoader_getResourceList();

        fastLoader = new FileLoaderFast(locations);
    }

    public static void exitFastMode() {
        fastLoader = null;
    }
}
