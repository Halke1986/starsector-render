package com.genir.renderer.overrides;

import java.awt.image.BufferedImage;

public class FileRepository {
    public static void queueImage(String path) {
    }

    public static void queueSound(String path) {
    }

    public static byte[] getSound(String path) {
        try {
            return com.fs.graphics.FileRepository.loadSound(path);
        } catch (Exception ignored) {
            return null;
        }
    }

    public static BufferedImage getImage(String path) {
        try {
            return com.fs.graphics.FileRepository.loadImage(path);
        } catch (Exception ignored) {
            return null;
        }
    }

    public static void startThread() {
    }

    public static void joinThread() {
    }
}
