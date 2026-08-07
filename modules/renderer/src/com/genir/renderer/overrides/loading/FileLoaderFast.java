package com.genir.renderer.overrides.loading;

import com.genir.renderer.overrides.Paths;
import com.genir.renderer.overrides.loading.ResourceHandle.FileHandle;
import org.apache.log4j.Logger;
import proxy.com.fs.util.FileLoader.ResourceLocation;
import proxy.com.fs.util.container.Pair;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Path;
import java.util.*;

public class FileLoaderFast {
    private static final boolean CORE_FILE = true;
    private static final boolean MOD_FILE = false;

    private final List<ResourceLocation> allLocations;
    private final Map<String, FileHandle> cachedResources = new HashMap<>();

    public FileLoaderFast(List<ResourceLocation> locations) {
        // Assume location list does not change during resource loading.
        this.allLocations = locations;

        long start = System.nanoTime();
        int cachedFilesNumber = cacheLocations();
        long duration = System.nanoTime() - start;

        Logger.getLogger(FileLoaderFast.class).info("Cached " + cachedFilesNumber + " files in " + (int) (duration / 1000000) + "ms");
    }

    public InputStream loadInputStream(String path) throws IOException {
        return findResources(allLocations, path, true).get(0).two;
    }

    public InputStream loadInputStream(String path, String locationFilter, boolean skipMods) throws IOException {
        List<ResourceLocation> filteredLocations = allLocations;

        // Filter locations.
        if (locationFilter != null) {
            filteredLocations = filteredLocations.stream().filter(location ->
                    location.ResourceLocation_type.toString().equals("DIRECTORY") && location.ResourceLocation_path.endsWith(locationFilter)
            ).toList();
        }

        if (skipMods) {
            filteredLocations = filteredLocations.stream().filter(location ->
                    !location.ResourceLocation_isMod
            ).toList();
        }

        return findResources(filteredLocations, path, true).get(0).two;
    }

    public List<Pair<ResourceLocation, InputStream>> loadInputStreams(String path) throws IOException {
        return findResources(allLocations, path, false);
    }

    private int cacheLocations() {
        int cachedFilesNumber = 0;

        for (ResourceLocation location : allLocations) {
            // Handle the unused path ../starfarer.res/res
            if (location.ResourceLocation_path == "../starfarer.res/res") {
                continue;
            }

            List<FileHandle> files = enumerateLocation(location);
            if (files == null) {
                continue;
            }

            cachedFilesNumber += files.size();

            for (FileHandle fileHandle : files) {
                Path filePath = fileHandle.file.toPath();
                String fileKey = getResourceKey(filePath);
                cachedResources.put(fileKey, fileHandle);
            }
        }

        return cachedFilesNumber;
    }

    private List<FileHandle> enumerateLocation(ResourceLocation location) {
        Path locationPath = getLocationPath(location);
        List<FileHandle> fileCollector = new ArrayList<>();

        switch (location.ResourceLocation_type.toString()) {
            case "CLASSPATH":
                return null;

            case "ABSOLUTE_AND_CWD":
                enumeratePath(locationPath, fileCollector, CORE_FILE); // Game assets.
                enumeratePath(locationPath.resolve(Paths.saves), fileCollector, CORE_FILE); // Saved games.
                enumeratePath(locationPath.resolve(Paths.mods).resolve("enabled_mods.json"), fileCollector, CORE_FILE); // Enabled mods list.
                enumeratePath(locationPath.resolveSibling("mikohime"), fileCollector, MOD_FILE); // Mikohime Java mod.

                break;
            case "DIRECTORY":
                enumeratePath(locationPath, fileCollector, MOD_FILE); // Mod assets.

                break;
        }

        return fileCollector;
    }

    private void enumeratePath(Path path, List<FileHandle> fileCollector, boolean coreFile) {
        enumeratePath(path.normalize().toFile(), fileCollector, coreFile);
    }

    private void enumeratePath(File file, List<FileHandle> fileCollector, boolean coreFile) {
        fileCollector.add(new FileHandle(file, coreFile));

        File[] files = file.listFiles();
        if (files != null) {
            for (File child : files) {
                enumeratePath(child, fileCollector, coreFile);
            }
        }
    }

    private List<Pair<ResourceLocation, InputStream>> findResources(List<ResourceLocation> locations, String path, boolean findFirst) throws IOException {
        List<Pair<ResourceLocation, InputStream>> resources;
        resources = findResourcesInLocations(locations, path, findFirst);
        if (!resources.isEmpty()) {
            return resources;
        }

        // Build error message.
        StringBuilder searchedLocations = new StringBuilder();
        for (ResourceLocation location : locations) {
            switch (location.ResourceLocation_type.toString()) {
                case "DIRECTORY":
                    searchedLocations.append(location.ResourceLocation_path).append(",");
                    break;
                case "ABSOLUTE_AND_CWD":
                    break;
                case "CLASSPATH":
                    searchedLocations.append("CLASSPATH,");
                    break;
            }
        }

        throw new RuntimeException("Error loading [" + path + "] resource, not found in [" + searchedLocations + "]");
    }

    private List<Pair<ResourceLocation, InputStream>> findResourcesInLocations(List<ResourceLocation> locations, String pathStr, boolean findFirst) {
        // Sanitize path from leading slashes introduced by MissileShipOverhaul.
        Path path = Path.of(pathStr.replaceFirst("^[\\\\/]+", ""));

        boolean pathIsAbsolute = path.isAbsolute();
        Path resourcePathInLocation = pathIsAbsolute ? Paths.pwd.relativize(path) : path;
        List<Pair<ResourceLocation, InputStream>> resources = new ArrayList<>();

        for (ResourceLocation location : locations) {
            String locationType = location.ResourceLocation_type.toString();
            if (locationType.equals("CLASSPATH")) {
                continue;
            }

            if (location.ResourceLocation_path == "../starfarer.res/res") {
                continue;
            }

            // Avoid matching modded resource when looking for a core game resource.
            if (pathIsAbsolute && locationType.equals("DIRECTORY")) {
                continue;
            }

            Path locationPath = getLocationPath(location);
            Path expectedPath = locationPath.resolve(resourcePathInLocation).normalize();
            String resourceKey = getResourceKey(expectedPath);

            FileHandle resource = cachedResources.get(resourceKey);
            if (resource != null) {
                InputStream stream = new ResourceHandle(resource);
                resources.add(new Pair<>(location, stream));
                if (findFirst) {
                    return resources;
                }
            }
        }

        // Handle the rare case of a resource embedded in a jar file.
        for (ResourceLocation location : locations) {
            if (location.ResourceLocation_type.toString().equals("CLASSPATH")) {
                InputStream stream = proxy.com.fs.util.FileLoader.class.getClassLoader().getResourceAsStream(pathStr);
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

    public List<String> filesWithExtensionInDirectory(String dir, String extension, boolean useAbsolutePath) {
        Set<String> knownFiles = new HashSet<>();
        List<String> foundFiles = new ArrayList<>();

        for (ResourceLocation location : allLocations) {
            String locationType = location.ResourceLocation_type.toString();
            if (locationType.equals("CLASSPATH")) {
                continue;
            }

            if (location.ResourceLocation_path == "../starfarer.res/res") {
                continue;
            }

            Path locationPath = getLocationPath(location);
            Path expectedPath = locationPath.resolve(Path.of(dir)).normalize();
            String resourceKey = getResourceKey(expectedPath);

            FileHandle dirHandle = cachedResources.get(resourceKey);
            if (dirHandle == null) {
                continue;
            }

            File[] files = dirHandle.file.listFiles();
            if (files == null) {
                continue;
            }

            for (File file : files) {
                String fileName = file.getName();
                if (getFileExtension(fileName).equals(extension)) {
                    // Always return absolute paths for core resources, even when useAbsolutePath is false.
                    // This matches vanilla Starsector behavior and prevents a modded resource from being
                    // mistaken for a core game resource. Valhalla Starworks 2.0 is one mod that would
                    // otherwise trigger such a false-positive match.
                    Path filePath;
                    if (useAbsolutePath || dirHandle.isCoreFile) {
                        filePath = file.toPath().toAbsolutePath();
                    } else {
                        filePath = Path.of(dir, fileName);
                    }

                    // Starsector resource loading depends on the entries
                    // being in same order as on the disk, but deduplicated.
                    String fileKey = dir + "/" + fileName;
                    if (knownFiles.add(fileKey)) {
                        foundFiles.add(filePath.toString());
                    }
                }
            }
        }

        return foundFiles;
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

    private Path getLocationPath(ResourceLocation location) {
        Path path;
        switch (location.ResourceLocation_type.toString()) {
            case "DIRECTORY":
                path = Path.of(location.ResourceLocation_path);
                break;
            case "ABSOLUTE_AND_CWD":
                path = Paths.pwd;
                break;
            default:
                return null;
        }

        return path.normalize();
    }

    private String getResourceKey(Path resourcePath) {
        Path dirPathRelative = Paths.pwd.relativize(resourcePath);

        // Use lowercase keys to make resource lookup case-insensitive.
        // Without this, Machina Void Shipyards Armaa Expansion Patch
        // can produce a false-negative lookup result.
        return dirPathRelative.toString().toLowerCase(Locale.ROOT);
    }
}
