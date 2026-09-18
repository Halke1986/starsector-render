package com.genir.renderer.agent.bytecode;

import com.genir.renderer.agent.ClassName;
import com.genir.renderer.agent.constants.ConstantTransformer;
import com.genir.renderer.agent.constants.Rules;

import java.io.IOException;
import java.io.InputStream;
import java.lang.instrument.ClassFileTransformer;
import java.security.ProtectionDomain;

public class Transformer implements ClassFileTransformer {
    private final ConstantTransformer overrideTransformer = new ConstantTransformer(
            Rules.obfuscation, Rules.overrides);

    @Override
    public byte[] transform(
            ClassLoader loader,
            String className,
            Class<?> classBeingRedefined,
            ProtectionDomain protectionDomain,
            byte[] classfileBuffer
    ) {
        // No class to transform.
        if (className == null) {
            return null;
        }

        // Do not transform bootstrap and platform classes.
        if (loader == null || loader == ClassLoader.getPlatformClassLoader()) {
            return null;
        }
        try {
            switch (className) {
                case "com/fs/graphics/LayeredRenderer":
                    return layeredRenderable(classfileBuffer);
                case "com/fs/graphics/TextureLoader":
                    return textureLoader(classfileBuffer);
            }

            return null;
        } catch (Throwable t) {
            // TODO do something useful with the exception
            throw t;
        }
    }

    private byte[] layeredRenderable(byte[] targetBytes) {
        var transformer = new BytecodeTransformer(targetBytes);

        transformer.removeMethod("renderOnly", "(Ljava/lang/Object;Ljava/lang/Enum;)V");
        transformer.removeMethod("renderExcluding", "(Ljava/lang/Object;[Ljava/lang/Enum;)V");

        transformer.mergeClass(loadDonor("com/genir/renderer/overrides/LayeredRenderer"));

        return transformer.targetBytes;
    }

    private byte[] textureLoader(byte[] targetBytes) {
        var transformer = new BytecodeTransformer(targetBytes);

        transformer.renameMethod(
                "o00000",
                "loadTexture_vanilla",
                "(Lcom/fs/graphics/Object;Ljava/lang/String;IIIIZ)Lcom/fs/graphics/Object;"
        );

        transformer.mergeClass(loadDonor("com/genir/renderer/overrides/loading/textures/TextureLoader"));

        return transformer.targetBytes;
    }

    private byte[] loadDonor(String className) {
        try {
            ClassLoader loader = this.getClass().getClassLoader();
            InputStream stream = loader.getResourceAsStream(ClassName.internal(className));
            return overrideTransformer.apply(stream.readAllBytes());
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
