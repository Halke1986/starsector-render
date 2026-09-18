package com.genir.renderer.agent.bytecode;

import java.lang.instrument.ClassFileTransformer;
import java.security.ProtectionDomain;

public class Transformer implements ClassFileTransformer {
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
        var transformer = new BytecodeTransformer(targetBytes, "com/genir/renderer/overrides/LayeredRenderer");

        transformer.replaceMethod(
                "renderOnly",
                "renderOnly",
                "(Ljava/lang/Object;Ljava/lang/Enum;)V",
                "(Ljava/lang/Object;Ljava/lang/Enum;)V"
        );
        transformer.replaceMethod(
                "renderExcluding",
                "renderExcluding",
                "(Ljava/lang/Object;[Ljava/lang/Enum;)V",
                "(Ljava/lang/Object;[Ljava/lang/Enum;)V"
        );
        transformer.addMethod(
                "renderOnly",
                "(Lproxy/com/fs/starfarer/combat/CombatViewport;Lcom/fs/starfarer/api/combat/CombatEngineLayers;Ljava/util/List;)V"
        );
        transformer.addMethod(
                "isSwarm",
                "(Lproxy/com/fs/graphics/LayeredRenderable;)Z"
        );

        return transformer.targetBytes;
    }

    private byte[] textureLoader(byte[] targetBytes) {
        var transformer = new BytecodeTransformer(targetBytes, "com/genir/renderer/overrides/TextureLoader");

        transformer.renameMethod(
                "o00000",
                "loadTexture_vanilla",
                "(Lcom/fs/graphics/Object;Ljava/lang/String;IIIIZ)Lcom/fs/graphics/Object"
        );

        return transformer.targetBytes;
    }
}
