package com.genir.renderer.loaders;

import org.codehaus.janino.JavaSourceClassLoader;
import proxy.com.fs.starfarer.loading.JavaSourceFinder;

import java.io.ByteArrayInputStream;
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
        InputStream stream = getParent().getResourceAsStream(internalName);
        if (stream != null) {
            return stream;
        }

        // Return local transformed class.
        try {
            return new ByteArrayInputStream(findBytecode(internalName));
        } catch (ClassNotFoundException e) {
            return null;
        }
    }

    // Return local class bytecode.
    public byte[] findBytecode(String internalName) throws ClassNotFoundException {
        return compilers.get().getBytecode(ClassName.binary(internalName));
    }

    @Override
    public Class<?> findClass(String name) throws ClassNotFoundException {
        // All compiled classes are defined by MultiThreadedJaninoClassLoader,
        // not the individual Janino instances.
        byte[] bytecode = findBytecode(ClassName.internal(name));
        return defineClass(name, bytecode, 0, bytecode.length);
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
            if (bytecodes == null) {
                throw new ClassNotFoundException(name);
            }

            bytecodeCache.putAll(bytecodes);
            return bytecodes.get(name);
        }
    }
}
