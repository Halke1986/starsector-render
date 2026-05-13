package com.genir.renderer.overrides.loading;

import proxy.com.fs.util.FileLoader.ResourceLocation;
import proxy.com.fs.util.container.Pair;

import java.io.*;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.*;

public class FileLoaderFast {
    private final List<ResourceLocation> locations;
    private final Map<String, List<File>> cachedFiles = new HashMap<>();
    private final String pwd = System.getProperty("user.dir");

//    private static final Map<String, String> cachedReadFiles = new HashMap<>();
//    private static final Set<String> cachedExtensions = new HashSet<>(Arrays.asList(
//            "variant",
//            "skin",
//            "skill",
//            "system",
//            "proj",
//            "wpn",
//            "ship",
//            "faction",
//
//            "json",
//            "java",
//            "csv"
//    ));

    public FileLoaderFast(List<ResourceLocation> locations) {
        // Assume location list does not change during resource loading.
        this.locations = locations;
        cacheLocations();
    }

    public InputStream loadInputStream(String path) throws IOException {
        return findResources(path, true).get(0).two;
    }

    public List<Pair<ResourceLocation, InputStream>> loadInputStreams(String path) throws IOException {
        return findResources(path, false);
    }

    private void cacheLocations() {
        for (ResourceLocation location : locations) {
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

                if (fileName.equals("")) {
                    continue;
                }

                List<File> knownFiles = cachedFiles.computeIfAbsent(
                        fileName, k -> new ArrayList<>()
                );

                knownFiles.add(file);

//                String path = file.getPath();
//                        if (cachedExtensions.contains(getFileExtension(path))) {
//                            cachedReadFiles.put(normalizePath(path), loadFileAsString(file));
//                        }
            }
        }
    }

    private Pair<String, List<File>> enumerateLocation(ResourceLocation location) {
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

                // Mikohime Java mod.
                enumeratePath(Paths.get(locationPath + "/../mikohime"), fileCollector);

                break;
            case "DIRECTORY":
                locationPath = location.ResourceLocation_path;
                enumeratePath(Paths.get(location.ResourceLocation_path), fileCollector);
                break;
        }

        return new Pair<>(locationPath, fileCollector);
    }

    private void enumeratePath(Path path, List<File> fileCollector) {
        enumeratePath(path.toFile(), fileCollector);
    }

    private void enumeratePath(File file, List<File> fileCollector) {
        fileCollector.add(file);

        File[] files = file.listFiles();
        if (files != null) {
            for (File child : files) {
                enumeratePath(child, fileCollector);
            }
        }
    }

    private String normalizePath(String path) {
        // Strip starsector-core path prefix,
        // in case the file path is absolute.
        if (path.startsWith(pwd)) {
            path = path.substring(pwd.length());
        }

        path = path.replace("\\", "/");
        if (path.startsWith("/")) {
            path = path.substring("/".length());
        }

        path = Paths.get(path).normalize().toString();

        // normalize() reintroduces \ on Windows.
        path = path.replace("\\", "/");

        // Lowercase file path, to avoid case sensitivity
        // issues. Not sure if this works on Linux or MacOS.
        return path.toLowerCase(Locale.ROOT);
    }

    private String getFileExtension(String path) {
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

    private List<Pair<ResourceLocation, InputStream>> findResources(String path, boolean findFirst) throws IOException {
        List<Pair<ResourceLocation, InputStream>> resources;
        resources = findResourcesInLocations(path, findFirst);
        if (!resources.isEmpty()) {
            return resources;
        }

        // Build error message.
        String searchedLocations = "";
        for (ResourceLocation location : locations) {
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

    private List<Pair<ResourceLocation, InputStream>> findResourcesInLocations(String path, boolean findFirst) throws IOException {
        path = normalizePath(path);

        List<Pair<ResourceLocation, InputStream>> resources = new ArrayList<>();
        List<File> knownResources = cachedFiles.get(path);

        if (knownResources != null) {
            for (File knownResource : knownResources) {
                // Check if resource matches any of the locations.
                for (ResourceLocation location : locations) {
                    String locationType = location.ResourceLocation_type.toString();
                    if (locationType.equals("CLASSPATH")) {
                        continue;
                    }

                    if (locationType.equals("ABSOLUTE_AND_CWD") || knownResource.getPath().startsWith(location.ResourceLocation_path)) {
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
            if (location.ResourceLocation_type.toString().equals("CLASSPATH")) {
                InputStream stream = proxy.com.fs.util.FileLoader.class.getClassLoader().getResourceAsStream(path);
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

    public List<String> filesWithExtensionInDirectory(String dir, String extension, boolean absoultePath) {
        dir = normalizePath(dir);
        List<File> knownResources = cachedFiles.get(dir);
        if (knownResources == null) {
            return new ArrayList<>();
        }

        Set<String> foundFiles = new HashSet<>();
        for (File location : knownResources) {
            File[] files = location.listFiles();

            for (File file : files) {
                String fileName = file.getName();
                if (getFileExtension(fileName).equals(extension)) {
                    if (absoultePath) {
                        foundFiles.add(file.getAbsolutePath());
                    } else {
                        foundFiles.add(dir + "/" + fileName);
                    }
                }
            }
        }

        return new ArrayList<>(foundFiles);
    }
}
