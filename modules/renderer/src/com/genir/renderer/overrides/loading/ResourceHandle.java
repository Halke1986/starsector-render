package com.genir.renderer.overrides.loading;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;

public class ResourceHandle {
    private final File file;
    private final Path filePath;
    private final FileLoader.ResourceLocation location;

    private String cachedString = null;

    public ResourceHandle(File file, FileLoader.ResourceLocation location, String extension) {
        this.file = file;
        this.filePath = file.toPath();
        this.location = location;

        try {
            if (preloadString(extension)) {
                getString();
            }
        } catch (IOException ignored) {
            // Preloading is optional. Leave failures to normal asset loading,
            // which will retry and report errors if the file is actually needed.
        }
    }

    public boolean isCoreFile() {
        return !location.ResourceLocation_isMod;
    }

    synchronized public String getString() throws IOException {
        if (cachedString == null) {
            try {
                cachedString = Files.readString(file.toPath(), StandardCharsets.UTF_8);
            } catch (Exception e) {
                // In case of incorrect character set exception, fall back to the lenient vanilla implementation.
                cachedString = LoadingUtils.readStreamAsString_vanilla(new FileInputStream(file));
            }

            cachedString = cachedString.replaceAll("\\r", "");
        }

        return cachedString;
    }

    public File getFile() {
        return file;
    }

    public Path getFilePath() {
        return filePath;
    }

    public FileLoader.ResourceLocation getLocation() {
        return location;
    }

    private boolean preloadString(String extension) {
        return switch (extension) {
            case "txt", "json", "csv", "skill", "faction", "variant", "skin", "system", "wpn", "ship", "proj" -> true;
            default -> false;
        };
    }
}
