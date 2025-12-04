package com.genir.renderer.overrides;

import com.fs.starfarer.api.util.Pair;
import com.fs.util.C;
import proxy.com.fs.util.ResourceLoader;

import java.io.*;
import java.util.List;

import static com.genir.renderer.state.AppState.state;

public class FileUtils {
    private static PathCache pathCache = new PathCache();

    // High throughput replacement for File.exists.
    public static boolean exists(File file) {
        return pathCache.exists(file);
    }

    public static boolean exists(File file, boolean fastExists) {
        return fastExists ? pathCache.exists(file) : file.exists();
    }

    // Deallocate the path cache when it's no longer needed.
    public static void closeFileRepository() {
        pathCache = null;
    }

    public static List<Pair> loadInputStreams(C resourceLoader, String var1) throws IOException {
        if (state.gameInitialized) {
            return resourceLoader.loadInputStreamsVanilla(var1);
        }

        try {
            return resourceLoader.loadInputStreamsOptimized(var1);
        } catch (Throwable t) {
            // Fall back to vanilla File.exists to avoid false negatives.
            return resourceLoader.loadInputStreamsVanilla(var1);
        }
    }

    public static synchronized InputStream loadInputStream(C resourceLoader, String path, boolean searchMods) throws IOException {
        ResourceLoader loaderInstance = ResourceLoader.ResourceLoader_getInstance();

        String locationFilter = loaderInstance.ResourceLoader_locationFilter;
        boolean skipMods = !searchMods || ResourceLoader.ResourceLoader_withoutMods;
        List<ResourceLoader.ResourceLocation> locations = loaderInstance.ResourceLoader_getResourceList();

        try {
            // Default to vanilla File.exists after the game initializes.
            // The vanilla check is low throughput but guarantees no false positives.
            // The optimized File.exists may report a false positive if a mod
            // deletes a file during game initialization.
            boolean tryFastExists = !state.gameInitialized;

            return findResource(path, locationFilter, skipMods, locations, tryFastExists);
        } finally {
            loaderInstance.ResourceLoader_locationFilter = null;
            ResourceLoader.ResourceLoader_withoutMods = false;
        }
    }

    public static InputStream findResource(
            String path,
            String locationFilter,
            boolean skipMods,
            List<ResourceLoader.ResourceLocation> locations,
            boolean tryFastExists
    ) throws IOException {
        // Filter locations.
        if (locationFilter != null) {
            locations = locations.stream().filter(location -> {
                return location.ResourceLocation_type.toString() == "DIRECTORY" && location.ResourceLocation_path.endsWith(locationFilter);
            }).toList();
        }

        if (skipMods) {
            locations = locations.stream().filter(location -> {
                return !location.ResourceLocation_isMod;
            }).toList();
        }

        // Find resource.
        if (tryFastExists) {
            for (ResourceLoader.ResourceLocation location : locations) {
                InputStream resourceStream = openResource(path, location, true);
                if (resourceStream != null) {
                    return resourceStream;
                }
            }
        }

        // Fallback to slow resource check to avoid false negatives.
        for (ResourceLoader.ResourceLocation location : locations) {
            InputStream resourceStream = openResource(path, location, false);
            if (resourceStream != null) {
                return resourceStream;
            }
        }

        // Build error message.
        String searchedLocations = "";
        for (ResourceLoader.ResourceLocation location : locations) {
            switch (location.ResourceLocation_type.toString()) {
                case "DIRECTORY":
                    searchedLocations = searchedLocations + location.ResourceLocation_path + ",";
                    break;
                case "ABSOLUTE_AND_CWD":
                    break;
                case "CLASSPATH":
                    searchedLocations = searchedLocations + "CLASSPATH,";
                    break;
            }
        }

        throw new RuntimeException("Error loading [" + path + "] resource, not found in [" + searchedLocations + "]");
    }

    public static InputStream openResource(String path, ResourceLoader.ResourceLocation location, boolean fastExists) throws FileNotFoundException {
        File file;

        switch (location.ResourceLocation_type.toString()) {
            case "DIRECTORY":
                file = new File(location.ResourceLocation_path + "/" + path);
                if (exists(file, fastExists)) {
                    return new BufferedInputStream(new FileInputStream(file));
                }
                break;
            case "ABSOLUTE_AND_CWD":
                file = new File(path);
                if (exists(file, fastExists)) {
                    return new BufferedInputStream(new FileInputStream(file));
                }
                break;
            case "CLASSPATH":
                InputStream stream = ResourceLoader.class.getClassLoader().getResourceAsStream(path);
                if (stream != null) {
                    return new BufferedInputStream(stream);
                }
        }

        return null;
    }
}