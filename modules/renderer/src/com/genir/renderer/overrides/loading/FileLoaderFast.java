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

import static com.genir.renderer.debug.Debug.asert;

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
            if (isExcludedLocation(location)) {
                continue;
            }

            List<FileHandle> files = enumerateLocation(location);
            if (files == null) {
                continue;
            }

            cachedFilesNumber += files.size();

            for (FileHandle fileHandle : files) {
                Path filePath = fileHandle.file.toPath();
                String fileKey = Paths.normalize(filePath.toString());
                asert(Paths.isAbsolute(fileKey));
                cachedResources.put(fileKey, fileHandle);
            }
        }

        return cachedFilesNumber;
    }

    private List<FileHandle> enumerateLocation(ResourceLocation location) {
        Path locationPath = Path.of(getLocationPath(location));
        List<FileHandle> fileCollector = new ArrayList<>();

        switch (location.ResourceLocation_type.toString()) {
            case "CLASSPATH":
                return null;

            case "ABSOLUTE_AND_CWD":
                enumeratePath(locationPath, fileCollector, CORE_FILE); // Game assets.
                enumeratePath(locationPath.resolve(Paths.saves), fileCollector, CORE_FILE); // Saved games.
                enumeratePath(locationPath.resolve(Paths.mods).resolve("enabled_mods.json"), fileCollector, CORE_FILE); // Enabled mods list.
                enumeratePath(locationPath.resolve("..").resolve("mikohime"), fileCollector, MOD_FILE); // Mikohime Java mod.

                break;
            case "DIRECTORY":
                enumeratePath(locationPath, fileCollector, MOD_FILE); // Mod assets.

                break;
        }

        return fileCollector;
    }

    private void enumeratePath(Path path, List<FileHandle> fileCollector, boolean coreFile) {
        enumeratePath(path.toFile(), fileCollector, coreFile);
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

    private List<Pair<ResourceLocation, InputStream>> findResourcesInLocations(List<ResourceLocation> locations, String pathRaw, boolean findFirst) {
        String path = Paths.normalize(pathRaw);
        boolean pathIsAbsolute = Paths.isAbsolute(path);

        List<Pair<ResourceLocation, InputStream>> resources = new ArrayList<>();

        for (ResourceLocation location : locations) {
            if (isExcludedLocation(location)) {
                continue;
            }

            // Avoid matching modded resource when looking for a core game resource.
            String locationType = location.ResourceLocation_type.toString();
            if (pathIsAbsolute && locationType.equals("DIRECTORY")) {
                continue;
            }

            String expectedPath;
            if (pathIsAbsolute) {
                expectedPath = path;
            } else {
                String locationPath = getLocationPath(location);
                expectedPath = locationPath + "/" + path;
            }

            String resourceKey = Paths.normalize(expectedPath);
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
                InputStream stream = proxy.com.fs.util.FileLoader.class.getClassLoader().getResourceAsStream(pathRaw);
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
            if (isExcludedLocation(location)) {
                continue;
            }

            String locationPath = getLocationPath(location);
            String expectedPath = locationPath + "/" + dir;
            String resourceKey = Paths.normalize(expectedPath);

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

    private String getLocationPath(ResourceLocation location) {
        switch (location.ResourceLocation_type.toString()) {
            case "DIRECTORY":
                return location.ResourceLocation_path;
            case "ABSOLUTE_AND_CWD":
                return Paths.pwd;
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
