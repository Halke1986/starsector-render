package com.genir.renderer.overrides;

import com.fs.starfarer.api.util.Pair;
import com.fs.util.C;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import static com.genir.renderer.state.AppState.state;

public class FileUtils {
    private static FileRepository fileRepo = new FileRepository();

    // High throughput replacement for File.exists.
    public static boolean exists(File file) {
        return fileRepo.exists(file);
    }

    // Deallocate the path cache when it's no longer needed.
    public static void closeFileRepository() {
        fileRepo = null;
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

    public static synchronized InputStream loadInputStream(C resourceLoader, String var1, boolean var2) throws IOException {
        // Vanilla uses resourceLoader object state to pass parameters to
        // loadInputStream method. This happens only on the main thread.
        // However, loadInputStream is called from multiple threads.
        // Calls on worker threads may observe state meant to configure the main
        // thread call, leading to a race condition.
        boolean isWorkerThread = state.mainThread != null && state.mainThread != Thread.currentThread();

        final String string0cache = resourceLoader.getString0();
        final boolean boolean0cache = resourceLoader.getBoolean0();

        String string0state = isWorkerThread ? null : string0cache;
        boolean boolean0state = isWorkerThread ? false : boolean0cache;

        try {
            // Default to vanilla File.exists after the game initializes.
            // The vanilla check is low throughput but guarantees no false positives.
            // The optimized File.exists may report a false positive if a mod
            // deletes a file during game initialization.
            if (state.gameInitialized) {
                setState(resourceLoader, string0state, boolean0state);
                return resourceLoader.loadInputStreamVanilla(var1, var2);
            }

            try {
                return resourceLoader.loadInputStreamOptimized(var1, var2);
            } catch (Throwable t) {
                // Fall back to vanilla File.exists to avoid false negatives.
                setState(resourceLoader, string0state, boolean0state);
                return resourceLoader.loadInputStreamVanilla(var1, var2);
            }
        } finally {
            if (isWorkerThread) {
                // Recreate main thread object state.
                setState(resourceLoader, string0cache, boolean0cache);
            }
        }
    }

    private static void setState(C resourceLoader, String string0, boolean boolean0) {
        resourceLoader.setString0(string0);
        resourceLoader.setBoolean0(boolean0);
    }
}
