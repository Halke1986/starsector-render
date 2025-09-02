package com.genir.renderer.loaders;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.CodeSigner;
import java.security.CodeSource;
import java.security.ProtectionDomain;

public class ClassTransformer {
    private final ClassLoaderBridge bridge;

    public ClassTransformer(ClassLoaderBridge bridge) {
        this.bridge = bridge;
    }

    public InputStream getResourceAsStream(String name, ClassConstantTransformer transformer) {
        InputStream classStream = bridge.superGetResourceAsStream(name);
        if (classStream == null) {
            return null;
        }

        // Do not transform files other than Java class.
        if (!name.endsWith(".class")) {
            return classStream;
        }

        // Transform the class.
        try {
            byte[] originalBytes = classStream.readAllBytes();
            byte[] transformedBytes = (transformer != null) ? transformer.apply(originalBytes) : originalBytes;

            return new ByteArrayInputStream(transformedBytes);
        } catch (IOException e) {
            throw new RuntimeException(name, e);
        }
    }

    public Class<?> findClass(String name, ClassConstantTransformer transformer) throws ClassNotFoundException {
        String binaryName = name.replace('.', '/') + ".class";

        // Get class resource stream.
        InputStream classStream = bridge.superGetResourceAsStream(binaryName);
        if (classStream == null) {
            throw new ClassNotFoundException(name);
        }

        // Read class bytes.
        byte[] originalBytes;
        try {
            originalBytes = classStream.readAllBytes();
        } catch (IOException e) {
            throw new RuntimeException(name, e);
        }

        // Read class code source.
        URL url = bridge.superFindResource(binaryName);
        if (url != null) {
            String urlStr = url.toString();
            int i = urlStr.lastIndexOf(binaryName);
            if (i > 0) {
                try {
                    url = new URL(urlStr.substring(0, i));
                } catch (MalformedURLException e) {
                    throw new RuntimeException(e);
                }
            }
        }

        CodeSource source = new CodeSource(url, (CodeSigner[]) null);
        ProtectionDomain pd = new ProtectionDomain(source, null, (ClassLoader) bridge, null);

        // Define transformed class.
        byte[] transformedBytes = (transformer != null) ? transformer.apply(originalBytes) : originalBytes;
        return bridge.superDefineClass(name, transformedBytes, 0, transformedBytes.length, pd);
    }
}
