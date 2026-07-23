package com.genir.renderer.loaders;

import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.CodeSigner;
import java.security.CodeSource;
import java.security.ProtectionDomain;

public class ClassTransformer {
    public static byte[] transformBytes(String internalName, byte[] inputBytes, ConstantTransformer transformer) {
        // Do not transform files other than Java class.
        if (!internalName.endsWith(".class")) {
            return inputBytes;
        }

        return transformer.apply(inputBytes);
    }

    public static ProtectionDomain getResourceProtectionDomain(String internalName, URL url, ClassLoader loader) {
        // Read class code source.
        if (url != null) {
            String urlStr = url.toString();

            // Strip the jar file protocol. This is required for
            // the CodeSource object to have same value as in vanilla.
            urlStr = urlStr.replaceFirst("jar:", "");

            // Strip class path withing the jar file.
            int i = urlStr.lastIndexOf(internalName);
            if (i > 0) {
                try {
                    url = new URL(urlStr.substring(0, i));
                } catch (MalformedURLException e) {
                    throw new RuntimeException(e);
                }
            }
        }

        CodeSource source = new CodeSource(url, (CodeSigner[]) null);
        return new ProtectionDomain(source, null, loader, null);
    }

    public static byte[] getBytecode(String name, InputStream classStream) throws ClassNotFoundException {
        if (classStream == null) {
            throw new ClassNotFoundException(name);
        }

        try {
            return classStream.readAllBytes();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
