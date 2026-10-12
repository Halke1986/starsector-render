package com.genir.renderer.debug;

import com.genir.renderer.overrides.loading.ClassName;

import java.io.IOException;
import java.io.InputStream;

public final class DebugLoader extends ClassLoader {
    public DebugLoader(ClassLoader parent) {
        super(parent);
    }

    @Override
    protected Class<?> loadClass(String name, boolean resolve) throws ClassNotFoundException {
        Class<?> type = findLoadedClass(name);

        // Load selected class without delegating to parent.
        if (type == null) {
            if (name.startsWith("com.genir.renderer.overrides.loading.Test")) {
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
            InputStream stream = getParent().getResourceAsStream(internalName);
            if (stream == null) {
                throw new ClassNotFoundException(name);
            }

            byte[] bytes = stream.readAllBytes();

            return defineClass(name, bytes, 0, bytes.length);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
