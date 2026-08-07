package com.genir.renderer.overrides.loading;

import com.genir.renderer.overrides.PathUtil;
import org.apache.log4j.Logger;
import com.genir.renderer.overrides.loading.ResourceHandle.FileHandle;
import org.apache.log4j.Logger;
import proxy.com.fs.util.FileLoader.ResourceLocation;
import proxy.com.fs.util.container.Pair;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.*;

public class FileLoaderFast {
    private final List<ResourceLocation> allLocations;
    private final Map<String, List<FileHandle>> cachedFiles = new HashMap<>();

    public FileLoaderFast(List<ResourceLocation> locations) {
        // Assume location list does not change during resource loading.
        this.allLocations = locations;

        long start = System.nanoTime();
        int cachedFilesNumber = cacheLocations();
        long duration = System.nanoTime() - start;

        Logger.getLogger(FileLoaderFast.class).info("Cached " + cachedFilesNumber + " files in " + (int) (duration / 1000000) + "ms");
    }

    private int cacheLocations() {
        int cachedFilesNumber = 0;

        for (ResourceLocation location : allLocations) {
            if (isExcludedLocation(location)) {
                continue;
            }

            Pair<String, List<FileHandle>> locationFiles = enumerateLocation(location);
            if (locationFiles == null) {
                continue;
            }

            String locationPath = locationFiles.one;
            List<FileHandle> fileHandles = locationFiles.two;

            cachedFilesNumber += fileHandles.size();

            for (FileHandle fileHandle : fileHandles) {
                String fileName = fileHandle.file.getPath();

                // String location path, leaving only the file name.
                String resourceKey = PathUtil.normalize(fileName.replace(locationPath, ""));
                if (resourceKey.isEmpty()) {
                    continue;
                }

                List<FileHandle> knownFiles = cachedFiles.computeIfAbsent(
                        resourceKey, k -> new ArrayList<>()
                );

                knownFiles.add(fileHandle);
            }
        }

        return cachedFilesNumber;
    }

    private Pair<String, List<FileHandle>> enumerateLocation(ResourceLocation location) {
        Path locationPath = Path.of(getLocationPath(location)).toAbsolutePath();
        List<FileHandle> fileCollector = new ArrayList<>();

        switch (location.ResourceLocation_type.toString()) {
            case "CLASSPATH":
                return null;

            case "ABSOLUTE_AND_CWD":
                enumeratePath(locationPath, fileCollector, location); // Game assets.
                enumeratePath(locationPath.resolve(PathUtil.saves), fileCollector, location); // Saved games.
                enumeratePath(locationPath.resolve(PathUtil.mods).resolve("enabled_mods.json"), fileCollector, location); // Enabled mods list.
                enumeratePath(locationPath.resolve("..").resolve("mikohime"), fileCollector, location); // Mikohime Java mod.

                break;
            case "DIRECTORY":
                enumeratePath(locationPath, fileCollector, location); // Mod assets.

                break;
        }

        return new Pair<>(locationPath.toString(), fileCollector);
    }

    private void enumeratePath(Path path, List<FileHandle> fileCollector, ResourceLocation location) {
        enumeratePath(path.toFile(), fileCollector, location);
    }

    private void enumeratePath(File file, List<FileHandle> fileCollector, ResourceLocation location) {
        fileCollector.add(new FileHandle(file, location));

        File[] files = file.listFiles();
        if (files != null) {
            for (File child : files) {
                enumeratePath(child, fileCollector, location);
            }
        }
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

    private List<Pair<ResourceLocation, InputStream>> findResourcesInLocations(List<ResourceLocation> locations, String path, boolean findFirst) {
        String resourceKey = PathUtil.normalize(path);

        List<Pair<ResourceLocation, InputStream>> resources = new ArrayList<>();
        List<FileHandle> knownResources = cachedFiles.get(resourceKey);

        if (knownResources != null) {
            for (FileHandle knownResource : knownResources) {
                // Check if resource exists in any of the locations.
                for (ResourceLocation location : locations) {
                    String locationType = location.ResourceLocation_type.toString();
                    if (locationType.equals("CLASSPATH")) {
                        continue;
                    }

                    boolean cwdMatch = locationType.equals("ABSOLUTE_AND_CWD"); // Core game resource.

                    boolean directoryMatch = locationType.equals("DIRECTORY") // Modded resource.
                            && knownResource.file.getPath().startsWith(location.ResourceLocation_path) // Ensure the resource is located in the appropriate mod directory.
                            && !path.startsWith(PathUtil.pwd); // Avoid matching modded resource when looking for a core game resource.

                    if (cwdMatch || directoryMatch) {
                        InputStream stream = new ResourceHandle(knownResource);
                        resources.add(new Pair<>(location, stream));
                        if (findFirst) {
                            return resources;
                        }

                        break;
                    }
                }
            }
        }

        // Handle the rare case of a resource embedded in a jar file.
        for (ResourceLocation location : locations) {
            if (location.ResourceLocation_type.toString().equals("CLASSPATH")) {
                InputStream stream = proxy.com.fs.util.FileLoader.class.getClassLoader().getResourceAsStream(resourceKey);
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
        dir = PathUtil.normalize(dir);
        List<FileHandle> knownDirectories = cachedFiles.get(dir);
        if (knownDirectories == null) {
            return new ArrayList<>();
        }

        Set<String> knownFiles = new HashSet<>();
        List<String> foundFiles = new ArrayList<>();

        for (FileHandle directoryHandle : knownDirectories) {
            File[] files = directoryHandle.file.listFiles();
            if (files == null) {
                continue;
            }

            for (File file : files) {
                String fileName = file.getName();
                if (getFileExtension(fileName).equals(extension)) {
                    String fileKey = dir + "/" + fileName;

                    // Always return absolute paths for core resources, even when useAbsolutePath is false.
                    // This matches vanilla Starsector behavior and prevents a modded resource from being
                    // mistaken for a core game resource. Valhalla Starworks 2.0 is one mod that would
                    // otherwise trigger such a false-positive match.
                    String filePath;
                    if (useAbsolutePath || directoryHandle.isCoreFile()) {
                        filePath = file.getAbsolutePath();
                    } else {
                        filePath = dir + "/" + fileName;
                    }

                    // Starsector resource loading depends on the entries
                    // being in same order as on the disk, but deduplicated.
                    if (knownFiles.add(fileKey)) {
                        foundFiles.add(filePath);
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

    private String getLocationPath(ResourceLocation location) {
        switch (location.ResourceLocation_type.toString()) {
            case "DIRECTORY":
                return location.ResourceLocation_path;
            case "ABSOLUTE_AND_CWD":
                return PathUtil.pwd;
            default:
                return null;
        }
    }

    private boolean isExcludedLocation(ResourceLocation location) {
        if (location.ResourceLocation_type.toString().equals("CLASSPATH")) {
            return true;
        }

        if (location.ResourceLocation_path == "../starfarer.res/res") {
            return true;
        }

        return false;
    }
}
