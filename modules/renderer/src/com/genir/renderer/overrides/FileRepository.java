package com.genir.renderer.overrides;

import java.io.File;
import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.HashSet;
import java.util.Set;

public class FileRepository {
    private final Set<String> files = new HashSet<>();

    public FileRepository() {
        String pwd = System.getProperty("user.dir");
        String modDir = System.getProperty("com.fs.starfarer.settings.paths.mods");

        Path core = Path.of(pwd).normalize();
        Path mods = Path.of(pwd, modDir).normalize();

        enumerate(core);
        enumerate(mods);
    }

    public boolean exists(File file) {
        if (file == null) {
            return false;
        }

        Path relativePath = Path.of(file.getPath());
        Path path = relativePath.toAbsolutePath().normalize();

        return files.contains(path.toString());
    }

    private void enumerate(Path dir) {
        try (DirectoryStream<Path> stream = Files.newDirectoryStream(dir)) {
            for (Path path : stream) {
                if (path.toFile().isDirectory()) {
                    enumerate(path);
                } else {
                    files.add(path.normalize().toString());
                }
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
