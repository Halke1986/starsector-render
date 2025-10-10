package com.genir.renderer.overrides;

import java.io.File;
import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashSet;
import java.util.Set;

public class Utils {
    private static final Set<String> directories = new HashSet<>();
    private static final Set<Path> files = new HashSet<>();

    public static boolean exists(File file) {
        try {
            if (file == null) {
                return false;
            }

            Path path = Paths.get(file.getPath());
            if (files.contains(path)) {
                return true;
            }

            Path directory = path.getParent();
            if (directory == null) {
                return Files.exists(path);
            }

            if (directories.contains(directory.toString())) {
                return false;
            }

            directories.add(directory.toString());
            try (DirectoryStream<Path> stream = Files.newDirectoryStream(directory)) {
                for (Path entry : stream) {
                    files.add(entry);
                }
            }

            return files.contains(path);
        } catch (Throwable t) {
            return false;
        }
    }
}
