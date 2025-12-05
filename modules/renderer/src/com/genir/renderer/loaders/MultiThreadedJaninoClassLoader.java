package com.genir.renderer.loaders;

import org.codehaus.janino.JavaSourceClassLoader;
import proxy.com.fs.starfarer.loading.JavaSourceFinder;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

/**
 * MultiThreadedJaninoClassLoader is a parallel capable wrapper around Janino ClassLoader.
 */
public class MultiThreadedJaninoClassLoader extends ClassLoader {
    static {
        // Marks this class loader type as parallel-capable
        registerAsParallelCapable();
    }

    private final ThreadLocal<JavaSourceCompiler> compilers = ThreadLocal.withInitial(() -> {
        return new JavaSourceCompiler(getParent());
    });

    public MultiThreadedJaninoClassLoader(ClassLoader parent) {
        super(parent);
    }

    @Override
    public InputStream getResourceAsStream(String internalName) {
        String name = internalName.replace('/', '.');
        name = name.endsWith(".class")
                ? name.substring(0, name.length() - 6)
                : name;

        try {
            return new ByteArrayInputStream(compilers.get().getBytecode(name));
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public Class<?> findClass(String name) throws ClassNotFoundException {
        String internalName = name.replace('.', '/') + ".class";

        InputStream resource = getResourceAsStream(internalName);
        if (resource == null) {
            throw new ClassNotFoundException();
        }

        try {
            // All compiled classes are defined by MultiThreadedJaninoClassLoader,
            // not the individual Janino instances.
            byte[] bytecode = resource.readAllBytes();
            return defineClass(name, bytecode, 0, bytecode.length);
        } catch (IOException e) {
            throw new ClassNotFoundException();
        }
    }

    // A wrapper around Janino ClassLoader that makes bytecode generation accessible.
    private static class JavaSourceCompiler extends JavaSourceClassLoader {
        private final Map<String, byte[]> bytecodeCache = new HashMap<>();

        JavaSourceCompiler(ClassLoader parent) {
            super(parent, new JavaSourceFinder(), "UTF-8");
            super.setDebuggingInfo(true, true, true);
        }

        protected byte[] getBytecode(String name) throws ClassNotFoundException {
            byte[] cached = bytecodeCache.get(name);
            if (cached != null) {
                return cached;
            }

            Map<String, byte[]> bytecodes = generateBytecodes(name);
            bytecodeCache.putAll(bytecodes);

            return bytecodes.get(name);
        }
    }
}
