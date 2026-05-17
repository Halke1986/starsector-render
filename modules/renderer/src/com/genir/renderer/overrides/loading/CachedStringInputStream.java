package com.genir.renderer.overrides.loading;

import java.io.*;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;

import static com.genir.renderer.overrides.loading.FileLoader.readStringVanilla;

public class CachedStringInputStream extends InputStream {
    private final CacheableFile cacheableFile;
    private FileInputStream fileStream = null;

    public CachedStringInputStream(CacheableFile cacheableFile) {
        this.cacheableFile = cacheableFile;
    }

    public String getString() throws IOException {
        if (cacheableFile.contents == null) {
            try {
                cacheableFile.contents = Files.readString(cacheableFile.file.toPath(), StandardCharsets.UTF_8);
            } catch (Exception e) {
                // In case of incorrect character set exception, fall back to the lenient vanilla implementation.
                cacheableFile.contents = readStringVanilla(new FileInputStream(cacheableFile.file));
            }

            cacheableFile.contents = cacheableFile.contents.replaceAll("\\r", "");
        }

        return cacheableFile.contents;
    }

    private FileInputStream getFileStream() throws IOException {
        if (fileStream == null) {
            fileStream = new FileInputStream(cacheableFile.file);
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

    public static class CacheableFile {
        public File file;
        public String contents = null;

        public CacheableFile(File file) {
            this.file = file;
        }
    }
}
