package com.genir.renderer.overrides.loading;

import com.fs.util.container.Pair;
import com.genir.renderer.async.AsyncException;
import com.genir.renderer.async.ExecutorFactory;
import org.apache.log4j.Logger;

import java.io.File;
import java.io.InputStream;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.*;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public class FileLoaderFast {
    private final static String DIRECTORY = "DIRECTORY";
    private final static String CLASSPATH = "CLASSPATH";
    private final static String ABSOLUTE_AND_CWD = "ABSOLUTE_AND_CWD";

    private final String PWD = System.getProperty("user.dir");
    private final String MODS = System.getProperty("com.fs.starfarer.settings.paths.mods");
    private final String SAVES = System.getProperty("com.fs.starfarer.settings.paths.saves");

    private final List<FileLoader.ResourceLocation> allLocations;
    private final Map<String, List<ResourceHandle>> cachedFiles = new HashMap<>();

    public FileLoaderFast(List<FileLoader.ResourceLocation> locations) {
        // Assume location list does not change during resource loading.
        this.allLocations = locations;

        long start = System.nanoTime();
        int cachedFilesNumber = new DirectoryCrawler().cacheLocations();
        long duration = System.nanoTime() - start;

        Logger.getLogger(FileLoaderFast.class).info("Cached " + cachedFilesNumber + " files in " + (int) (duration / 1000000) + "ms");
    }

    public InputStream loadInputStream(String path, String locationFilter, boolean skipMods) {
        List<Pair<FileLoader.ResourceLocation, InputStream>> resources = loadInputStreams(path);

        for (Pair<FileLoader.ResourceLocation, InputStream> resource : resources) {
            FileLoader.ResourceLocation location = resource.one;

            if (skipMods && location.ResourceLocation_isMod) {
                continue;
            }

            // Match only selected directory.
            if (locationFilter != null) {
                if (!location.ResourceLocation_type.toString().equals(DIRECTORY) || !location.ResourceLocation_path.endsWith(locationFilter)) {
                    continue;
                }
            }

            return resource.two;
        }

        throw new RuntimeException("Resource [" + path + "] not found in game and mod resources.");
    }

    public List<Pair<FileLoader.ResourceLocation, InputStream>> loadInputStreams(String path) {
        // Vanilla may pass absolute path when it loads core game resource.
        String pathRelative = path;
        boolean isAbsolute = pathRelative.startsWith(PWD);
        if (isAbsolute) {
            pathRelative = pathRelative.substring(PWD.length());
        }

        String resourceKey = normalize(pathRelative);
        List<ResourceHandle> knownResources = cachedFiles.get(resourceKey);
        List<Pair<FileLoader.ResourceLocation, InputStream>> resources = new ArrayList<>();

        // Convert resources to output format.
        if (knownResources != null) {
            for (ResourceHandle resource : knownResources) {
                // Avoid matching modded resource when looking for a core game resource.
                if (isAbsolute && Objects.equals(resource.getLocation().ResourceLocation_type.toString(), DIRECTORY)) {
                    continue;
                }

                resources.add(new Pair<>(resource.getLocation(), new ResourceHandleAdapter(resource)));
            }
        }

        // Assume resource will not be present in files
        // and embedded in jars at the same time.
        if (!resources.isEmpty()) {
            return resources;
        }

        // Handle the rare case of a resource embedded in a jar file.
        InputStream stream = FileLoaderFast.class.getClassLoader().getResourceAsStream(path);
        if (stream != null) {
            // Find the classpath location.
            FileLoader.ResourceLocation classpath = null;
            for (FileLoader.ResourceLocation location : allLocations) {
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
        dir = normalize(dir);
        List<ResourceHandle> knownDirectories = cachedFiles.get(dir);
        if (knownDirectories == null) {
            return new ArrayList<>();
        }

        Set<String> knownFiles = new HashSet<>();
        List<String> foundFiles = new ArrayList<>();

        for (ResourceHandle directoryHandle : knownDirectories) {
            File[] files = directoryHandle.getFile().listFiles();
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

    private String getLocationPath(FileLoader.ResourceLocation location) {
        return switch (location.ResourceLocation_type.toString()) {
            case "DIRECTORY" -> location.ResourceLocation_path;
            case "ABSOLUTE_AND_CWD" -> PWD;
            default -> null;
        };
    }

    private boolean isExcludedLocation(FileLoader.ResourceLocation location) {
        if (location.ResourceLocation_type.toString().equals(CLASSPATH)) {
            return true;
        }

        return Objects.equals(location.ResourceLocation_path, "../starfarer.res/res");
    }

    private String normalize(String path) {
        // Remove leading slash.
        if (path.startsWith("/")) {
            path = path.substring("/".length());
        }

        if (path.startsWith("\\")) {
            path = path.substring("\\".length());
        }

        // Trim whitespace to prevent Paths.normalize() from throwing on
        // trailing spaces introduced by Persean Separatist 0.9.0.
        path = path.trim();

        // Normalize path.
        path = Paths.get(path).normalize().toString();

        // Convert path format.
        path = path.replace("\\", "/");

        // Remove trailing slash.
        if (path.endsWith("/")) {
            path = path.substring(0, path.length() - "/".length());
        }

        // Remove trailing dot. It is required because of paths like
        // "graphics/portraits/dwergr.png." introduced by
        // Reborn as a Space Mercenary v0.0.4
        if (path.endsWith(".")) {
            path = path.substring(0, path.length() - ".".length());
        }

        // Lowercase file path, to avoid case sensitivity
        // issues. Not sure if this works on Linux or MacOS.
        // Machina Void Shipyards Armaa Expansion Patch is one
        // mod that would otherwise trigger a false-negative
        // file search result
        return path.toLowerCase(Locale.ROOT);
    }

    /**
     * DirectoryCrawler caches all files in selected locations using a multi-threaded
     * algorithm, for approximately 50% performance improvement.
     */
    private class DirectoryCrawler {
        private final List<Object> collector = new ArrayList<>();
        private final List<Runnable> tasks = new ArrayList<>();
        private final Map<String, AtomicInteger> fileCount = new HashMap<>();

        private static final AsyncException asyncException = new AsyncException();

        private int cacheLocations() {
            planEnumeration();
            runEnumeration();

            int fileNumber = 0;

            for (Object obj : collector) {
                if (obj instanceof List) {
                    for (ResourceHandle ResourceHandle : (List<ResourceHandle>) obj) {
                        saveFile(ResourceHandle);
                        fileNumber++;
                    }
                } else {
                    saveFile((ResourceHandle) obj);
                    fileNumber++;
                }
            }

            return fileNumber;
        }

        private void saveFile(ResourceHandle ResourceHandle) {
            String fileName = ResourceHandle.getFile().getPath();

            // String location path, leaving only the file name.
            Path locationPath = Path.of(getLocationPath(ResourceHandle.getLocation())).toAbsolutePath();
            String resourceKey = normalize(fileName.replace(locationPath.toString(), ""));
            if (resourceKey.isEmpty()) {
                return;
            }

            List<ResourceHandle> knownFiles = cachedFiles.computeIfAbsent(
                    resourceKey, k -> new ArrayList<>()
            );

            knownFiles.add(ResourceHandle);
        }

        private void planEnumeration() {
            for (FileLoader.ResourceLocation location : allLocations) {
                if (isExcludedLocation(location)) {
                    continue;
                }

                Path locationPath = Path.of(getLocationPath(location)).toAbsolutePath();

                switch (location.ResourceLocation_type.toString()) {
                    case ABSOLUTE_AND_CWD:
                        enumeratePath(locationPath, location); // Game assets.
                        enumeratePath(locationPath.resolve(SAVES), location); // Saved games.
                        enumeratePath(locationPath.resolve(MODS).resolve("enabled_mods.json"), location); // Enabled mods list.
                        enumeratePath(locationPath.resolve("..").resolve("mikohime"), location); // Mikohime Java mod.

                        break;
                    case DIRECTORY:
                        enumeratePath(locationPath, location); // Mod assets.

                        break;
                }
            }
        }

        private void runEnumeration() {
            ExecutorService fileWorkers = ExecutorFactory.newExecutor(4, "FR-Directory-Crawler", asyncException);

            for (Runnable task : tasks) {
                fileWorkers.execute(task);
            }

            fileWorkers.shutdown();

            try {
                while (!fileWorkers.awaitTermination(700, TimeUnit.MILLISECONDS)) {
                    logFileCount();
                }
            } catch (InterruptedException e) {
                throw new RuntimeException(e);
            }

            logFileCount();

            asyncException.rethrowIfSet();
        }

        private void enumeratePath(Path path, FileLoader.ResourceLocation location) {
            enumeratePath(path.toFile(), location, 0);
        }

        private void enumeratePath(File file, FileLoader.ResourceLocation location, int depth) {
            if (depth == 2) {
                List<ResourceHandle> asyncCollector = new ArrayList<>();
                collector.add(asyncCollector);
                tasks.add(() -> {
                    if (asyncException.get() == null) {
                        asyncEnumeratePath(file, location, asyncCollector);
                    }
                });

                return;
            }

            collector.add(makeNewRosurceHandle(file, location));

            File[] files = file.listFiles();
            if (files != null) {
                for (File child : files) {
                    enumeratePath(child, location, depth + 1);
                }
            }
        }

        private void asyncEnumeratePath(File file, FileLoader.ResourceLocation location, List<ResourceHandle> collector) {
            collector.add(makeNewRosurceHandle(file, location));

            File[] files = file.listFiles();
            if (files != null) {
                for (File child : files) {
                    asyncEnumeratePath(child, location, collector);
                }
            }
        }

        private ResourceHandle makeNewRosurceHandle(File file, FileLoader.ResourceLocation location) {
            String extension = getFileExtension(file.getPath());

            synchronized (fileCount) {
                fileCount.computeIfAbsent(extension, k ->
                        new AtomicInteger()
                ).incrementAndGet();
            }

            return new ResourceHandle(file, location, extension);
        }

        private void logFileCount() {
            List<Map.Entry<String, Integer>> list = new ArrayList<>(fileCount.size());

            synchronized (fileCount) {
                fileCount.forEach((ext, count) -> list.add(Map.entry(ext, count.get())));
            }

            list.sort(Map.Entry.comparingByValue());

            StringBuilder builder = new StringBuilder();
            int other = 0;
            int lines = 0;

            builder.append("CACHED FILES:");

            for (int i = list.size() - 1; i >= 0; i--) {
                Map.Entry<String, Integer> entry = list.get(i);

                String extension = entry.getKey();
                int count = entry.getValue();

                if (extension.isEmpty() || lines >= 30) {
                    other += count;
                } else {
                    appendLogFile(builder, extension, count);
                    lines++;
                }
            }

            appendLogFile(builder, "other", other);

            Logger.getLogger(DirectoryCrawler.class).info(builder.toString());
        }

        private void appendLogFile(StringBuilder builder, String extension, int count) {
            builder.append(System.lineSeparator());
            builder.append("\t");
            builder.append(extension);
            builder.append(":");

            for (int j = extension.length(); j <= 7; j++) {
                builder.append(" ");
            }

            builder.append(count);
        }
    }
}
