package com.genir.renderer.overrides;

import com.fs.starfarer.api.util.Pair;
import com.fs.util.C;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.*;

import static com.genir.renderer.state.AppState.state;

public class Utils {
    private static final Map<String, Set<Path>> directories = new HashMap<>();

    // High throughput replacement for File.exists.
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

    public static List<Pair> loadInputStreams(C resourceLoader, String var1) throws IOException {
        // Default to vanilla File.exists after the game initializes.
        // The vanilla check is low throughput but guarantees no false positives.
        // NOTE: The optimized File.exists may report a false positive if a mod
        // deletes a file during game initialization.
        if (state.gameInitialized) {
            return resourceLoader.loadInputStreamsVanilla(var1);
        }

        try {
            return resourceLoader.loadInputStreamsOptimized(var1);
        } catch (Throwable t) {
            // Fall back to vanilla File.exists to avoid false negatives.
            return resourceLoader.loadInputStreamsVanilla(var1);
        }
    }

    public static InputStream loadInputStream(C resourceLoader, String var1, boolean var2) throws IOException {
        if (state.gameInitialized) {
            return resourceLoader.loadInputStreamVanilla(var1, var2);
        }

        // Resource loader call modifies the object state.
        String string0cache = resourceLoader.getString0();
        boolean boolean0cache = resourceLoader.getBoolean0();

        try {
            return resourceLoader.loadInputStreamOptimized(var1, var2);
        } catch (Throwable t) {
            // Recreate vanilla state before calling
            // resource loader for the second time.
            resourceLoader.setString0(string0cache);
            resourceLoader.setBoolean0(boolean0cache);

            // Fall back to vanilla File.exists to avoid false negatives.
            return resourceLoader.loadInputStreamVanilla(var1, var2);
        }
    }
}
