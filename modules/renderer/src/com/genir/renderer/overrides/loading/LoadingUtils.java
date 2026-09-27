package com.genir.renderer.overrides.loading;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/**
 * OVERRIDES com.fs.starfarer.loading.LoadingUtils
 */
public class LoadingUtils {
    /**
     * STUB
     */
    public static List<String> filesWithExtensionInDirectory_vanilla(String dir, String extension) {
        return null;
    }

    /**
     * STUB
     */
    public static List<String> filesWithExtensionInDirectoryAbsolute_vanilla(String dir, String extension) {
        return null;
    }

    /**
     * STUB
     */
    // $FF: renamed from: super (java.io.InputStream) java.lang.String
    public static String readStreamAsString_vanilla(InputStream stream) throws IOException {
        return null;
    }

    /**
     * REPLACED METHOD
     */
    public static List<String> LoadingUtils_filesWithExtensionInDirectory(String dir, String extension) {
        FileLoaderFast fastLoader = FileLoader.FileLoader_getInstance().getFastLoader();
        if (fastLoader != null) {
            return fastLoader.filesWithExtensionInDirectory(dir, extension, false);
        }

        return filesWithExtensionInDirectory_vanilla(dir, extension);
    }

    /**
     * REPLACED METHOD
     */
    public static List<String> LoadingUtils_filesWithExtensionInDirectoryAbsolute(String dir, String extension) {
        FileLoaderFast fastLoader = FileLoader.FileLoader_getInstance().getFastLoader();
        if (fastLoader != null) {
            return fastLoader.filesWithExtensionInDirectory(dir, extension, true);
        }

        return filesWithExtensionInDirectoryAbsolute_vanilla(dir, extension);
    }

    /**
     * REPLACED METHOD
     */
    public static String LoadingUtils_readStreamAsString(InputStream stream) throws IOException {
        // Read cached string.
        if (stream instanceof ResourceHandle resourceHandle) {
            return resourceHandle.getString();
        }

        return readStreamAsString_vanilla(stream);
    }

    /**
     * REPLACED METHOD
     */
    public static String LoadingUtils_readPathAsString(String path) throws IOException {
        FileLoader fileLoader = FileLoader.FileLoader_getInstance();
        InputStream stream = fileLoader.FileLoader_loadInputStream(path, true);
        return LoadingUtils_readStreamAsString(stream);
    }
}
