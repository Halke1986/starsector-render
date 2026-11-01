package com.genir.renderer.overrides.loading;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.file.Path;

public class ResourceHandleAdapter extends InputStream {
    private final ResourceHandle resourceHandle;
    private FileInputStream fileStream = null;

    public ResourceHandleAdapter(ResourceHandle resourceHandle) {
        this.resourceHandle = resourceHandle;
    }

    public String getString() throws IOException {
        return resourceHandle.getString();
    }

    public Path getFilePath() {
        return resourceHandle.getFilePath();
    }

    private FileInputStream getFileStream() throws IOException {
        if (fileStream == null) {
            fileStream = new FileInputStream(resourceHandle.getFile());
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
}
