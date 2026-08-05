package com.genir.renderer.overrides.loading;

import com.genir.renderer.overrides.PathUtil;
import org.apache.log4j.Logger;
import com.genir.renderer.overrides.loading.ResourceHandle.FileHandle;
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
            Pair<String, List<File>> locationFiles = enumerateLocation(location);
            if (locationFiles == null) {
                continue;
            }

            String locationPath = locationFiles.one;
            List<File> files = locationFiles.two;

            cachedFilesNumber += files.size();

            for (File file : files) {
                String fileName = file.getPath();

                // String location path, leaving only the file name.
                fileName = fileName.replace(locationPath, "");
                fileName = PathUtil.normalize(fileName);

                if (fileName.isEmpty()) {
                    continue;
                }

                List<FileHandle> knownFiles = cachedFiles.computeIfAbsent(
                        fileName, k -> new ArrayList<>()
                );

                knownFiles.add(new FileHandle(file));
            }
        }

        return cachedFilesNumber;
    }

    private Pair<String, List<File>> enumerateLocation(ResourceLocation location) {
        String locationPath = null;
        List<File> fileCollector = new ArrayList<>();

        switch (location.ResourceLocation_type.toString()) {
            case "CLASSPATH":
                return null;

            case "ABSOLUTE_AND_CWD":
                // Core files.
                locationPath = PathUtil.pwd;
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
        path = PathUtil.normalize(path);

        List<Pair<ResourceLocation, InputStream>> resources = new ArrayList<>();
        List<FileHandle> knownResources = cachedFiles.get(path);

        if (knownResources != null) {
            for (FileHandle knownResource : knownResources) {
                // Check if resource matches any of the locations.
                for (ResourceLocation location : locations) {
                    String locationType = location.ResourceLocation_type.toString();
                    if (locationType.equals("CLASSPATH")) {
                        continue;
                    }

                    File file = knownResource.file;
                    if (locationType.equals("ABSOLUTE_AND_CWD") || file.getPath().startsWith(location.ResourceLocation_path)) {
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

    public List<String> filesWithExtensionInDirectory(String dir, String extension, boolean absolutePath) {
        dir = PathUtil.normalize(dir);
        List<FileHandle> knownResources = cachedFiles.get(dir);
        if (knownResources == null) {
            return new ArrayList<>();
        }

        Set<String> knownFiles = new HashSet<>();
        List<String> foundFiles = new ArrayList<>();

        for (FileHandle knownResource : knownResources) {
            File[] files = knownResource.file.listFiles();
            if (files == null) {
                continue;
            }

            for (File file : files) {
                String fileName = file.getName();
                if (getFileExtension(fileName).equals(extension)) {
                    String filePath = absolutePath ? file.getAbsolutePath() : dir + "/" + fileName;

                    // Starsector resource loading depends on the entries
                    // being in same order as on the disk, but deduplicated.
                    if (knownFiles.add(filePath)) {
                        foundFiles.add(filePath);
                    }
                }
            }
        }

        return foundFiles;
    }
}
