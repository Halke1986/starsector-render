package com.genir.renderer.overrides.loading;

import com.genir.renderer.overrides.PathUtil;
import com.genir.renderer.overrides.loading.ResourceHandle.FileHandle;
import org.apache.log4j.Logger;
import proxy.com.fs.util.FileLoader.ResourceLocation;
import proxy.com.fs.util.container.Pair;

import java.io.File;
import java.io.InputStream;
import java.nio.file.Path;
import java.util.*;

public class FileLoaderFast {
    private final static String DIRECTORY = "DIRECTORY";
    private final static String CLASSPATH = "CLASSPATH";
    private final static String ABSOLUTE_AND_CWD = "ABSOLUTE_AND_CWD";

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
            case CLASSPATH:
                return null;

            case ABSOLUTE_AND_CWD:
                enumeratePath(locationPath, fileCollector, location); // Game assets.
                enumeratePath(locationPath.resolve(PathUtil.saves), fileCollector, location); // Saved games.
                enumeratePath(locationPath.resolve(PathUtil.mods).resolve("enabled_mods.json"), fileCollector, location); // Enabled mods list.
                enumeratePath(locationPath.resolve("..").resolve("mikohime"), fileCollector, location); // Mikohime Java mod.

                break;
            case DIRECTORY:
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

    public InputStream loadInputStream(String path, String locationFilter, boolean skipMods) {
        List<Pair<ResourceLocation, InputStream>> resources = loadInputStreams(path);

        for (Pair<ResourceLocation, InputStream> resource : resources) {
            ResourceLocation location = resource.one;

            if (skipMods && location.ResourceLocation_isMod) {
                continue;
            }

            if (locationFilter != null && location.ResourceLocation_type.toString().equals(DIRECTORY) && !location.ResourceLocation_path.endsWith(locationFilter)) {
                continue;
            }

            return resource.two;
        }

        throw new RuntimeException("Resource [" + path + "] not found in game and mod resources.");
    }

    public List<Pair<ResourceLocation, InputStream>> loadInputStreams(String path) {
        String resourceKey = PathUtil.normalize(path);

        // Vanilla may pass absolute path when it loads core game resource.
        boolean isAbsolute = resourceKey.startsWith(PathUtil.pwd);
        if (isAbsolute) {
            resourceKey = PathUtil.normalize(resourceKey.substring(PathUtil.pwd.length()));
        }

        List<Pair<ResourceLocation, InputStream>> resources = new ArrayList<>();
        List<FileHandle> knownResources = cachedFiles.get(resourceKey);

        // Convert resources to output format.
        if (knownResources != null) {
            for (FileHandle resource : knownResources) {
                // Avoid matching modded resource when looking for a core game resource.
                if (isAbsolute && Objects.equals(resource.location.ResourceLocation_type.toString(), DIRECTORY)) {
                    continue;
                }

                resources.add(new Pair<>(resource.location, new ResourceHandle(resource)));
            }
        }

        // Assume resource will not be present in files
        // and embedded in jars at the same time.
        if (!resources.isEmpty()) {
            return resources;
        }

        // Handle the rare case of a resource embedded in a jar file.
        InputStream stream = proxy.com.fs.util.FileLoader.class.getClassLoader().getResourceAsStream(path);
        if (stream != null) {
            // Find the classpath location.
            ResourceLocation classpath = null;
            for (ResourceLocation location : allLocations) {
                if (Objects.equals(location.ResourceLocation_type.toString(), CLASSPATH)) {
                    classpath = location;
                    break;
                }
            }

            resources.add(new Pair<>(classpath, stream));
        }

        if (resources.isEmpty()) {
            throw new RuntimeException("Resource [" + path + "] not found in game and mod resources.");
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
        return switch (location.ResourceLocation_type.toString()) {
            case "DIRECTORY" -> location.ResourceLocation_path;
            case "ABSOLUTE_AND_CWD" -> PathUtil.pwd;
            default -> null;
        };
    }

    private boolean isExcludedLocation(ResourceLocation location) {
        if (location.ResourceLocation_type.toString().equals(CLASSPATH)) {
            return true;
        }

        return Objects.equals(location.ResourceLocation_path, "../starfarer.res/res");
    }
}
