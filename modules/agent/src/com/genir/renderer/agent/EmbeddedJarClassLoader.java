package com.genir.renderer.agent;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/**
 * Loads classes and resources from embedded JARs into memory.
 */
public final class EmbeddedJarClassLoader extends ClassLoader {
    private final Map<String, byte[]> embeddedClasses = new HashMap<>();

    public EmbeddedJarClassLoader(ClassLoader parent, String... jarResources) throws IOException {
        super(parent);
        for (String jarResource : jarResources) {
            InputStream input = parent.getResourceAsStream(jarResource);
            if (input == null) {
                throw new FileNotFoundException(jarResource);
            }

            try (ZipInputStream jar = new ZipInputStream(input)) {
                ZipEntry entry;
                while ((entry = jar.getNextEntry()) != null) {
                    if (entry.isDirectory()) {
                        continue;
                    }
                    String name = entry.getName();
                    byte[] bytes = jar.readAllBytes();
                    if (name.endsWith(".class")) {
                        embeddedClasses.putIfAbsent(name, bytes);
                    }
                }
            }
        }
    }

    @Override
    protected Class<?> loadClass(String name, boolean resolve) throws ClassNotFoundException {
        Class<?> type = findLoadedClass(name);

        // Load embedded jar and its callers.
        if (type == null) {
            if (name.startsWith("com.genir.renderer.agent.bytecode") || embeddedClasses.containsKey(ClassName.internal(name))) {
                type = findClass(name);
            }
        }

        // Delegate remaining classes to parent.
        if (type == null) {
            type = super.loadClass(name, false);
        }

        if (resolve) {
            resolveClass(type);
        }

        return type;
    }

    @Override
    protected Class<?> findClass(String name) throws ClassNotFoundException {
        String internalName = ClassName.internal(name);

        try {
            // Load bytecode from embedded jar.
            byte[] bytes = embeddedClasses.get(internalName);

            // Load bytecode from parent loader.
            if (bytes == null) {
                InputStream stream = super.getResourceAsStream(internalName);
                if (stream == null) {
                    throw new ClassNotFoundException(name);
                }

                bytes = stream.readAllBytes();
            }

            return defineClass(name, bytes, 0, bytes.length);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
