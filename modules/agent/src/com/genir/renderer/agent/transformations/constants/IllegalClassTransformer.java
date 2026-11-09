package com.genir.renderer.agent.transformations.constants;

import com.genir.renderer.agent.ClassName;
import com.genir.renderer.agent.transformations.symbols.Transformations;

import java.lang.instrument.ClassFileTransformer;
import java.security.ProtectionDomain;
import java.util.Arrays;

public class IllegalClassTransformer implements ClassFileTransformer {
    private final ConstantReplacer illegalTransformer;

    public IllegalClassTransformer(Transformations transformations) {
        this.illegalTransformer = new ConstantReplacer(transformations.illegalTransformations);
    }

    @Override
    public byte[] transform(
            ClassLoader loader,
            String className,
            Class<?> classBeingRedefined,
            ProtectionDomain protectionDomain,
            byte[] classfileBuffer
    ) {
        if (!shouldTransform(className)) {
            return null;
        }

        byte[] transformedClass = illegalTransformer.apply(classfileBuffer);
        if (Arrays.equals(transformedClass, classfileBuffer)) {
            return null;
        }

        return transformedClass;
    }

    private boolean shouldTransform(String binaryOrInternalName) {
        // No class to transform.
        if (binaryOrInternalName == null) {
            return false;
        }

        String name = ClassName.binary(binaryOrInternalName);

        // Sanitize Starsector.
        if (name.startsWith("com.fs.") || name.startsWith("sound.") || name.startsWith("zzz.com.fs.")) {
            return true;
        }

        // Sanitize Fast Rendering.
        if (name.startsWith("com.genir.renderer.") && !name.startsWith("com.genir.renderer.agent.")) {
            return true;
        }

        return false;
    }
}
