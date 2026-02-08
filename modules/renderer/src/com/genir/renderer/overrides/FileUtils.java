package com.genir.renderer.overrides;

import proxy.com.fs.util.ResourceLoader;
import proxy.com.fs.util.container.Pair;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

public class FileUtils { // com.fs.util.C
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

    public static InputStream loadInputStream(String path, boolean searchMods) throws IOException {
        ResourceLoader loaderInstance = ResourceLoader.ResourceLoader_getInstance();

        // String and boolean state are used only by mods,
        // after the multithreaded part of game loading.
        String locationFilter = loaderInstance.ResourceLoader_locationFilter;
        boolean skipMods = !searchMods || ResourceLoader.ResourceLoader_withoutMods;
        List<ResourceLoader.ResourceLocation> locations = loaderInstance.ResourceLoader_getResourceList();

        try {
            // Default to vanilla File.exists after the game initializes.
            // The vanilla check is low throughput but guarantees no false positives.
            // The optimized File.exists may report a false positive if a mod
            // deletes a file during game initialization.
            boolean tryFastExists = !GameState.gameInitialized;

            return findResources(path, locationFilter, skipMods, locations, true, tryFastExists).get(0).two;
        } finally {
            loaderInstance.ResourceLoader_locationFilter = null;
            ResourceLoader.ResourceLoader_withoutMods = false;
        }
    }

    public static List<Pair<ResourceLoader.ResourceLocation, InputStream>> loadInputStreams(String path) throws IOException {
        ResourceLoader loaderInstance = ResourceLoader.ResourceLoader_getInstance();
        List<ResourceLoader.ResourceLocation> locations = loaderInstance.ResourceLoader_getResourceList();
        boolean tryFastExists = !GameState.gameInitialized;

        return findResources(path, null, false, locations, false, tryFastExists);
    }

    public static List<Pair<ResourceLoader.ResourceLocation, InputStream>> findResources(
            String path,
            String locationFilter,
            boolean skipMods,
            List<ResourceLoader.ResourceLocation> locations,
            boolean findFirst,
            boolean tryFastExists
    ) throws IOException {
        // Filter locations.
        if (locationFilter != null) {
            locations = locations.stream().filter(location ->
                    location.ResourceLocation_type.toString() == "DIRECTORY" && location.ResourceLocation_path.endsWith(locationFilter)
            ).toList();
        }

        if (skipMods) {
            locations = locations.stream().filter(location ->
                    !location.ResourceLocation_isMod
            ).toList();
        }

        List<Pair<ResourceLoader.ResourceLocation, InputStream>> resources;

        if (tryFastExists) {
            resources = findResourcesInLocations(path, locations, findFirst, true);
            if (!resources.isEmpty()) {
                return resources;
            }
        }

        // Fallback to slow resource check to avoid false negatives.
        resources = findResourcesInLocations(path, locations, findFirst, false);
        if (!resources.isEmpty()) {
            return resources;
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

    public static List<Pair<ResourceLoader.ResourceLocation, InputStream>> findResourcesInLocations(
            String path,
            List<ResourceLoader.ResourceLocation> locations,
            boolean findFirst,
            boolean useFastExists
    ) throws IOException {
        List<Pair<ResourceLoader.ResourceLocation, InputStream>> resources = new ArrayList<>();

        for (ResourceLoader.ResourceLocation location : locations) {
            InputStream resourceStream = openResource(path, location, useFastExists);
            if (resourceStream != null) {
                resources.add(new Pair<>(location, resourceStream));

                if (findFirst) {
                    return resources;
                }
            }
        }

        return resources;
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