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
     * REPLACED METHOD
     */
    public static List<String> LoadingUtils_filesWithExtensionInDirectory(String dir, String extension) {
        return FileLoader.filesWithExtensionInDirectory(dir, extension);
    }

    /**
     * REPLACED METHOD
     */
    public static List<String> LoadingUtils_filesWithExtensionInDirectoryAbsolute(String dir, String extension) {
        return FileLoader.filesWithExtensionInDirectoryAbsolute(dir, extension);
    }

    /**
     * REPLACED METHOD
     */
    public static String LoadingUtils_readPathAsString(String path) throws IOException {
        return FileLoader.readPathAsString(path);
    }

    /**
     * REPLACED METHOD
     */
    public static String LoadingUtils_readStreamAsString(InputStream stream) throws IOException {
        return FileLoader.readStreamAsString(stream);
    }
}
