package com.genir.renderer.loaders;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.CodeSigner;
import java.security.CodeSource;
import java.security.ProtectionDomain;
import java.util.List;

public class ClassTransformer {
    private final ClassTransformerClient client;

    public ClassTransformer(ClassTransformerClient client) {
        this.client = client;
    }

    public InputStream getResourceAsStream(String name, List<ClassConstantTransformer> transformers) {
        InputStream classStream = client.superGetResourceAsStream(name);
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
            byte[] transformedBytes = applyTransformers(originalBytes, transformers);

            return new ByteArrayInputStream(transformedBytes);
        } catch (IOException e) {
            throw new RuntimeException(name, e);
        }
    }

    public Class<?> findClass(String name, List<ClassConstantTransformer> transformers) throws ClassNotFoundException {
        String binaryName = name.replace('.', '/') + ".class";

        // Get class resource stream.
        InputStream classStream = client.superGetResourceAsStream(binaryName);
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
        URL url = client.superFindResource(binaryName);
        if (url != null) {
            String urlStr = url.toString();

            // Strip the jar file protocol. This is required for
            // the CodeSource object to have same value as in vanilla.
            urlStr = urlStr.replaceFirst("jar:", "");

            // Strip class path withing the jar file.
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
        ProtectionDomain pd = new ProtectionDomain(source, null, (ClassLoader) client, null);

        // Define transformed class.
        byte[] transformedBytes = applyTransformers(originalBytes, transformers);
        return client.superDefineClass(name, transformedBytes, 0, transformedBytes.length, pd);
    }

    private byte[] applyTransformers(byte[] inputBytes, List<ClassConstantTransformer> transformers) {
        if (transformers == null) {
            return inputBytes;
        }

        byte[] outputBytes = inputBytes;
        for (ClassConstantTransformer t : transformers) {
            outputBytes = t.apply(outputBytes);
        }

        return outputBytes;
    }
}
