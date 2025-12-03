package com.genir.renderer.overrides;

import com.fs.starfarer.api.util.Pair;
import com.fs.util.C;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import static com.genir.renderer.state.AppState.state;

public class FileUtils {
    private static PathCache pathCache = new PathCache();

    // High throughput replacement for File.exists.
    public static boolean exists(File file) {
        return pathCache.exists(file);
    }

    // Deallocate the path cache when it's no longer needed.
    public static void closeFileRepository() {
        pathCache = null;
    }

    public static List<Pair> loadInputStreams(C resourceLoader, String var1) throws IOException {
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
        // String and boolean state are used only by mods,
        // after the multithreaded part of game loading.
        final String string0state = resourceLoader.getString0();
        final boolean boolean0state = resourceLoader.getBoolean0();

        // Default to vanilla File.exists after the game initializes.
        // The vanilla check is low throughput but guarantees no false positives.
        // The optimized File.exists may report a false positive if a mod
        // deletes a file during game initialization.
        if (state.gameInitialized) {
            return resourceLoader.loadInputStreamVanilla(var1, var2);
        }

        try {
            return resourceLoader.loadInputStreamOptimized(var1, var2);
        } catch (Throwable t) {
            // Recreate main thread object state.
            resourceLoader.setString0(string0state);
            resourceLoader.setBoolean0(boolean0state);

            // Fall back to vanilla File.exists to avoid false negatives.
            return resourceLoader.loadInputStreamVanilla(var1, var2);
        }
    }
}
