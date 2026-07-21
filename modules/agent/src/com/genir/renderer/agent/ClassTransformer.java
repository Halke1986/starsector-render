package com.genir.renderer.agent;

import java.lang.instrument.ClassFileTransformer;
import java.lang.instrument.IllegalClassFormatException;
import java.security.ProtectionDomain;

public class ClassTransformer implements ClassFileTransformer {
    @Override
    public byte[] transform(
            ClassLoader loader,
            String className,
            Class<?> classBeingRedefined,
            ProtectionDomain protectionDomain,
            byte[] classfileBuffer
    ) throws IllegalClassFormatException {
        if (className == null) {
            return null;
        }

//        try {
//            return manipulateBytecode(className, classfileBuffer);
//        } catch (RuntimeException exception) {
//            System.err.println(
//                    "Failed to transform class " + className
//            );
//            exception.printStackTrace(System.err);

        // Returning null leaves the original class bytes unchanged.
        return null;
//        }
    }

    private byte[] manipulateBytecode(
            String internalClassName,
            byte[] originalBytecode
    ) {
        /*
         * Manipulate the class here using ASM, Byte Buddy, Javassist,
         * or another bytecode library.
         *
         * className uses JVM internal notation:
         *     com/example/TargetClass
         *
         * Return:
         * - modified bytecode to replace the class;
         * - null to leave the class unchanged.
         */

        return originalBytecode;
    }
}