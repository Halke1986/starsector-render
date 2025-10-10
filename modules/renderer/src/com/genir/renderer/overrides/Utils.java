package com.genir.renderer.overrides;

import java.io.File;
import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class Utils {
    private static final Map<String, Set<Path>> directories = new HashMap<>();

    public static boolean exists(File file) {
        if (file == null) {
            return false;
        }

        try {
            Path path = Paths.get(file.getPath());
            Path directory = path.getParent();

            Set<Path> files = directories.get(directory.toString());
            if (files == null) {
                files = new HashSet<>();

                try (DirectoryStream<Path> stream = Files.newDirectoryStream(directory)) {
                    for (Path entry : stream) {
                        files.add(entry);
                    }
                } catch (Throwable ignored) {
                    // Not a valid directory.
                }

                directories.put(directory.toString(), files);
            }

            return files.contains(path);
        } catch (Throwable t) {
            return false;
        }
    }
}
