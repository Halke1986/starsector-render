package com.genir.renderer.overrides;

import com.genir.renderer.async.ExecutorFactory;
import org.apache.log4j.Logger;

import java.awt.image.BufferedImage;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

public class FileRepository {
    private static final Map<String, Future<BufferedImage>> images = new HashMap<>();
    private static final Map<String, Future<byte[]>> sounds = new HashMap<>();

    private static final ExecutorService exec = ExecutorFactory.newSingleThreadExecutor("FR-File-Repository");
    private static final Logger logger = Logger.getLogger(FileRepository.class);

    public static void queueImage(String path) {
        if (path != null && !images.containsKey(path)) {
            images.put(path, exec.submit(() -> loadImage(path)));
        }
    }

    public static void queueSound(String path) {
        if (path != null && !sounds.containsKey(path)) {
            sounds.put(path, exec.submit(() -> loadSound(path)));
        }
    }

    public static BufferedImage getImage(String path) {
        Future<BufferedImage> future = images.get(path);
        if (future == null) {
            return loadImage(path);
        }

        try {
            return future.get();
        } catch (Exception ignored) {
            return loadImage(path);
        }
    }

    public static byte[] getSound(String path) {
        Future<byte[]> future = sounds.get(path);
        if (future == null) {
            return loadSound(path);
        }

        try {
            return future.get();
        } catch (Exception ignored) {
            return loadSound(path);
        }
    }

    private static byte[] loadSound(String path) {
        try {
            return com.fs.graphics.FileRepository.loadSound(path);
        } catch (Exception e) {
            logger.error("Error while loading file [" + path + "]: " + e.getMessage());
            return null;
        }
    }

    private static BufferedImage loadImage(String path) {
        try {
            return com.fs.graphics.FileRepository.loadImage(path);
        } catch (Exception e) {
            logger.error("Error while loading file [" + path + "]: " + e.getMessage());
            return null;
        }
    }

    public static void startThread() {
    }

    public static void joinThread() {
        exec.shutdown();
    }
}
