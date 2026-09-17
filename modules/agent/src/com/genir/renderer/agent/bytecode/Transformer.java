package com.genir.renderer.agent.bytecode;

import com.genir.renderer.agent.ClassName;

import java.io.IOException;
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

        if (className.contains("LayeredRenderable")) {
            int x = 0;
        }

        // Do not transform bootstrap and platform classes.
        if (loader == null || loader == ClassLoader.getPlatformClassLoader()) {
            return null;
        }
        try {

            switch (className) {
                case "com/fs/graphics/LayeredRenderer":
                    return layeredRenderable(className, classfileBuffer);
            }


            return null;
        } catch (Throwable t) {
            // TODO do something useful with the exception
            throw t;
        }
    }

    private byte[] readClassBytes(String className) {
        try {
            ClassLoader loader = this.getClass().getClassLoader();
            return loader.getResourceAsStream(className).readAllBytes();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private static class BytecodeTransformer {
        byte[] targetBytes;
        private final byte[] donorBytes;

        BytecodeTransformer(byte[] targetBytes, byte[] donorBytes) {
            this.targetBytes = targetBytes;
            this.donorBytes = donorBytes;
        }

        void replaceMethod(String targetName, String donorName, String targetDescriptor, String donorDescriptor) {
            targetBytes = MethodReplacer.replaceMethodBody(targetBytes, donorBytes, targetName, donorName, targetDescriptor, donorDescriptor);
        }


        void addMethod(String donorName, String descriptor) {
            targetBytes = MethodAdder.addMethod(targetBytes, donorBytes, donorName, descriptor);
        }
    }

    private byte[] layeredRenderable(String targetName, byte[] targetBytes) {
        String donorName = "com/genir/renderer/overrides/LayeredRenderer";
        byte[] donorBytes = readClassBytes(ClassName.internal(donorName));

        BytecodeTransformer transformer = new BytecodeTransformer(targetBytes, donorBytes);

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
}
