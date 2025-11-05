package com.genir.renderer.overrides;

import com.genir.renderer.async.ExecutorFactory;
import org.apache.log4j.Logger;

import java.io.File;
import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicReference;

public class FileRepository {
    private static final ExecutorService exec = ExecutorFactory.newSingleThreadExecutor("FR-Path-Loader");
    private final AtomicReference<Set<String>> filesReference = new AtomicReference<>(null);
    private final String pwd = System.getProperty("user.dir");

    public FileRepository() {
        exec.execute(() -> {
            String modDir = System.getProperty("com.fs.starfarer.settings.paths.mods");

            Path core = Path.of("");
            Path mods = Path.of(modDir);

            Set<String> fileCollector = new HashSet<>();

            enumeratePath(core, fileCollector);
            enumeratePath(mods, fileCollector);

            filesReference.set(fileCollector);

            Logger.getLogger(FileRepository.class).info("Enumerated " + fileCollector.size() + " files");
            exec.shutdown();
        });
    }

    public boolean exists(File file) {
        if (file == null) {
            return false;
        }

        Set<String> files = filesReference.get();
        if (files == null) {
            return file.exists();
        }

        String path = file.getPath();
        if (path.startsWith(pwd)) {
            path = path.substring(pwd.length());
        }

        if (path.startsWith("\\")) {
            path = path.substring("\\".length());
        }

        return files.contains(path);
    }

    private void enumeratePath(Path dir, Set<String> fileCollector) {
        try (DirectoryStream<Path> stream = Files.newDirectoryStream(dir)) {
            for (Path path : stream) {
                if (path.toFile().isDirectory()) {
                    enumeratePath(path, fileCollector);
                } else {
                    fileCollector.add(path.toString());
                }
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
