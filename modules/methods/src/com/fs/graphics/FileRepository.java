package com.fs.graphics;

import java.awt.image.BufferedImage;
import java.io.IOException;

// $FF: renamed from: com.fs.graphics.L
public class FileRepository {
    // Modified vanilla methods
    // ---------------------------------------------------------------------------------

    // $FF: renamed from: return (java.lang.String) void
    public static void queueImage(String var0) {
        com.genir.renderer.overrides.FileRepository.queueImage(var0);
    }

    // $FF: renamed from: Object (java.lang.String) void
    public static void queueSound(String var0) {
        com.genir.renderer.overrides.FileRepository.queueSound(var0);
    }

    // $FF: renamed from: Ò00000 (java.lang.String) byte[]
    public static byte[] getSound(String var0) {
        return com.genir.renderer.overrides.FileRepository.getSound(var0);
    }

    // $FF: renamed from: Õ00000 (java.lang.String) java.awt.image.BufferedImage
    public static BufferedImage getImage(String var0) {
        return com.genir.renderer.overrides.FileRepository.getImage(var0);
    }

    // $FF: renamed from: o00000 () void
    public static void startThread() {
        com.genir.renderer.overrides.FileRepository.startThread();
    }

    // $FF: renamed from: Ò00000 () void
    public static void joinThread() {
        com.genir.renderer.overrides.FileRepository.joinThread();
    }

    // Stub vanilla methods
    // ---------------------------------------------------------------------------------

    // $FF: renamed from: o00000 (java.lang.String) java.awt.image.BufferedImage
    static BufferedImage loadImageStub(String var0) throws IOException { // private
        return null;
    }

    // $FF: renamed from: Ô00000 (java.lang.String) byte[]
    static byte[] loadSoundStub(String var0) throws IOException { // private
        return null;
    }

    // Added methods
    // ---------------------------------------------------------------------------------

    public static BufferedImage loadImage(String var0) throws IOException {
        return loadImageStub(var0);
    }

    public static byte[] loadSound(String var0) throws IOException {
        return loadSoundStub(var0);
    }
}
