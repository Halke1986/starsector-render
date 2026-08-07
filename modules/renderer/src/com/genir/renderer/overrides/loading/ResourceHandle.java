package com.genir.renderer.overrides.loading;

import java.io.*;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;

import proxy.com.fs.util.FileLoader.ResourceLocation;

import static com.genir.renderer.overrides.loading.FileLoader.readStringVanilla;

public class ResourceHandle extends InputStream {
    private final FileHandle fileHandle;
    private FileInputStream fileStream = null;

    public ResourceHandle(FileHandle fileHandle) {
        this.fileHandle = fileHandle;
    }

    public String getString() throws IOException {
        if (fileHandle.cachedContents == null) {
            try {
                fileHandle.cachedContents = Files.readString(fileHandle.file.toPath(), StandardCharsets.UTF_8);
            } catch (Exception e) {
                // In case of incorrect character set exception, fall back to the lenient vanilla implementation.
                fileHandle.cachedContents = readStringVanilla(new FileInputStream(fileHandle.file));
            }

            fileHandle.cachedContents = fileHandle.cachedContents.replaceAll("\\r", "");
        }

        return fileHandle.cachedContents;
    }

    public Path getFilePath() {
        return fileHandle.file.toPath();
    }

    private FileInputStream getFileStream() throws IOException {
        if (fileStream == null) {
            fileStream = new FileInputStream(fileHandle.file);
        }
        return fileStream;
    }

    @Override
    public int read() throws IOException {
        return getFileStream().read();
    }

    @Override
    public int read(byte[] b) throws IOException {
        return getFileStream().read(b);
    }

    @Override
    public int read(byte[] b, int off, int len) throws IOException {
        return getFileStream().read(b, off, len);
    }

    @Override
    public byte[] readAllBytes() throws IOException {
        return getFileStream().readAllBytes();
    }

    @Override
    public byte[] readNBytes(int len) throws IOException {
        return getFileStream().readNBytes(len);
    }

    @Override
    public long transferTo(OutputStream out) throws IOException {
        return getFileStream().transferTo(out);
    }

    @Override
    public long skip(long n) throws IOException {
        return getFileStream().skip(n);
    }

    @Override
    public int available() throws IOException {
        return getFileStream().available();
    }

    @Override
    public void close() throws IOException {
        getFileStream().close();
    }

    public static class FileHandle {
        public final File file;
        public final ResourceLocation location;
        public String cachedContents = null;

        public FileHandle(File file, ResourceLocation location) {
            this.file = file;
            this.location = location;
        }

        public boolean isCoreFile() {
            return !location.ResourceLocation_isMod;
        }
    }
}
