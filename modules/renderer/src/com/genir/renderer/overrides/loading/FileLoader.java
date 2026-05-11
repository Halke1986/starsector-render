package com.genir.renderer.overrides.loading;

import proxy.com.fs.util.FileLoader.ResourceLocation;
import proxy.com.fs.util.container.Pair;

import java.io.*;
import java.nio.file.*;
import java.util.*;

public class FileLoader {
    private static final Set<ResourceLocation> cachedLocations = new HashSet<>();
    private static final Map<String, List<File>> cachedFiles = new HashMap<>();
    private static final String pwd = System.getProperty("user.dir");

    private static final Map<String, String> cachedReadFiles = new HashMap<>();
    private static final Set<String> cachedExtensions = new HashSet<>(Arrays.asList(
            "variant",
            "skin",
            "skill",
            "system",
            "proj",
            "wpn",
            "ship",
            "faction",

            "json",
            "java",
            "csv"
    ));

    public static InputStream loadInputStream(String path, boolean searchMods) throws IOException {
        proxy.com.fs.util.FileLoader loaderInstance = proxy.com.fs.util.FileLoader.ResourceLoader_getInstance();
        return loaderInstance.FileLoader_loadInputStream_vanilla(path, searchMods);

//        return findResources(path, getLocations(searchMods), true).get(0).two;
    }

    public static List<Pair<ResourceLocation, InputStream>> loadInputStreams(String path) throws IOException {
        proxy.com.fs.util.FileLoader loaderInstance = proxy.com.fs.util.FileLoader.ResourceLoader_getInstance();
        return loaderInstance.FileLoader_loadInputStreams_vanilla(path);

//        return findResources(path, getLocations(true), false);
    }

    private static List<ResourceLocation> getLocations(boolean searchMods) {
        proxy.com.fs.util.FileLoader loaderInstance = proxy.com.fs.util.FileLoader.ResourceLoader_getInstance();
        List<ResourceLocation> locations = loaderInstance.ResourceLoader_getResourceList();

        cacheLocations(locations);

        // String and boolean state are used only by mods,
        // after the multithreaded part of game loading.
        String locationFilter = loaderInstance.ResourceLoader_locationFilter;
        boolean skipMods = !searchMods || proxy.com.fs.util.FileLoader.ResourceLoader_withoutMods;

        loaderInstance.ResourceLoader_locationFilter = null;
        proxy.com.fs.util.FileLoader.ResourceLoader_withoutMods = false;

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

        return locations;
    }

    private static void cacheLocations(List<ResourceLocation> locations) {
        if (locations.size() > cachedLocations.size()) {
            for (proxy.com.fs.util.FileLoader.ResourceLocation location : locations) {
                if (!cachedLocations.contains(location)) {
                    cachedLocations.add(location);

                    Pair<String, List<File>> locationFiles = enumerateLocation(location);
                    if (locationFiles == null) {
                        continue;
                    }

                    String locationPath = locationFiles.one;
                    List<File> files = locationFiles.two;

                    for (File file : files) {
                        String fileName = file.getPath();

                        // String location path, leaving only the file name.
                        fileName = fileName.replace(locationPath, "");
                        fileName = normalizePath(fileName);

                        List<File> resources = cachedFiles.computeIfAbsent(
                                fileName, k -> new ArrayList<>()
                        );

                        resources.add(file);

                        String path = file.getPath();
//                        if (cachedExtensions.contains(getFileExtension(path))) {
//                            cachedReadFiles.put(normalizePath(path), loadFileAsString(file));
//                        }
                    }
                }
            }
        }
    }

    private static Pair<String, List<File>> enumerateLocation(ResourceLocation location) {
        String locationPath = null;
        List<File> fileCollector = new ArrayList<>();

        switch (location.ResourceLocation_type.toString()) {
            case "CLASSPATH":
                return null;

            case "ABSOLUTE_AND_CWD":
                // Core files.
                locationPath = pwd;
                enumeratePath(Paths.get(locationPath), fileCollector);

                String savesPath = System.getProperty("com.fs.starfarer.settings.paths.saves");
                enumeratePath(Paths.get(locationPath + "/" + savesPath), fileCollector);

                // Enabled mods list.
                String modsPath = System.getProperty("com.fs.starfarer.settings.paths.mods");
                File enabledMods = new File(locationPath + "/" + modsPath + "/enabled_mods.json");
                fileCollector.add(enabledMods);

                enumeratePath(Paths.get(locationPath + "/../mikohime"), fileCollector);

                break;
            case "DIRECTORY":
                locationPath = location.ResourceLocation_path;

                // Some obsolete directory hardcoded in Starsector jar.
                if (locationPath == "../starfarer.res/res") {
                    return null;
                }

                enumeratePath(Paths.get(locationPath), fileCollector);
                break;
        }

        return new Pair<>(locationPath, fileCollector);
    }

    private static void enumeratePath(Path dir, List<File> fileCollector) {
        try (DirectoryStream<Path> stream = Files.newDirectoryStream(dir)) {
            for (Path path : stream) {
//                File file = new File(path.toFile());
                File file = path.toFile();
                if (file.isDirectory()) {
                    enumeratePath(path, fileCollector);
                } else {
                    fileCollector.add(file);
                }
            }
        } catch (NoSuchFileException ignored) {
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private static String normalizePath(String path) {
        // Strip starsector-core path prefix,
        // in case the file path is absolute.
        if (path.startsWith(pwd)) {
            path = path.substring(pwd.length());
        }

        path = path.replace("\\", "/");
        if (path.startsWith("/")) {
            path = path.substring("/".length());
        }

        boolean isBack = path.startsWith("../");
        path = Paths.get(path).normalize().toString();
        if (isBack) {
            path = "../" + path;
        }

        path = path.replace("\\", "/");

        // Lowercase file path, to avoid case sensitivity
        // issues. Not sure if this works on Linux or MacOS.
        return path.toLowerCase(Locale.ROOT);
    }

    private static String getFileExtension(String path) {
        if (path == null || path.isEmpty()) {
            return "";
        }

        int lastSeparator = Math.max(path.lastIndexOf('/'), path.lastIndexOf('\\'));
        int lastDot = path.lastIndexOf('.');

        if (lastDot <= lastSeparator || lastDot == path.length() - 1) {
            return "";
        }

        return path.substring(lastDot + 1);
    }

    private static List<Pair<ResourceLocation, InputStream>> findResources(
            String path,
            List<ResourceLocation> locations,
            boolean findFirst
    ) throws IOException {
        List<Pair<ResourceLocation, InputStream>> resources;
        resources = findResourcesInLocations(path, locations, findFirst);
        if (!resources.isEmpty()) {
            return resources;
        }

        // Build error message.
        String searchedLocations = "";
        for (proxy.com.fs.util.FileLoader.ResourceLocation location : locations) {
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

    private static List<Pair<ResourceLocation, InputStream>> findResourcesInLocations(
            String path, List<ResourceLocation> locations, boolean findFirst
    ) throws IOException {
        path = normalizePath(path);

        List<Pair<ResourceLocation, InputStream>> resources = new ArrayList<>();
        List<File> knownResources = cachedFiles.get(path);

        if (knownResources != null) {
            for (File knownResource : knownResources) {
                // Check if resource matches any of the locations.
                for (ResourceLocation location : locations) {
                    String locationType = location.ResourceLocation_type.toString();
                    if (locationType == "CLASSPATH") {
                        continue;
                    }

                    if ((locationType) == "ABSOLUTE_AND_CWD" || knownResource.getPath().startsWith(location.ResourceLocation_path)) {
                        BufferedInputStream stream = new BufferedInputStream(new FileInputStream(knownResource));
                        resources.add(new Pair<>(location, stream));
                        if (findFirst) {
                            return resources;
                        }

                        break;
                    }
                }
            }
        }

        for (ResourceLocation location : locations) {
            if (location.ResourceLocation_type.toString() == "CLASSPATH") {
                java.io.InputStream stream = proxy.com.fs.util.FileLoader.class.getClassLoader().getResourceAsStream(path);
                if (stream == null) {
                    continue;
                }

                resources.add(new Pair<>(location, stream));
                if (findFirst) {
                    return resources;
                }
            }
        }

        return resources;
    }
}