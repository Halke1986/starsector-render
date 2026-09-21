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
            var transformer = new BytecodeTransformer(classfileBuffer);
            applyTransform(className, transformer);

            if (transformer.transformApplied) {
                return transformer.targetBytes;
            } else {
                return null;
            }
        } catch (Throwable t) {
            // TODO do something useful with the exception
            throw t;
        }
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

    private void applyTransform(String className, BytecodeTransformer transformer) {
        switch (className) {
            case "com/fs/graphics/LayeredRenderer":
                transformer.removeMethod("renderOnly", "(Ljava/lang/Object;Ljava/lang/Enum;)V");
                transformer.removeMethod("renderExcluding", "(Ljava/lang/Object;[Ljava/lang/Enum;)V");
                transformer.mergeClass(loadDonor("com/genir/renderer/overrides/LayeredRenderer"));
                break;
            case "com/fs/graphics/TextureLoader":
                transformer.renameMethod("o00000", "loadTexture_vanilla",
                        "(Lcom/fs/graphics/Object;Ljava/lang/String;IIIIZ)Lcom/fs/graphics/Object;");
                transformer.mergeClass(loadDonor("com/genir/renderer/overrides/loading/textures/TextureLoader"));
                break;
            case "com/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect":
                transformer.removeMethod("getNumActiveMembers", "()I");
                transformer.mergeClass(loadDonor("com/genir/renderer/overrides/RoilingSwarmEffect"));
                break;
            case "com/fs/starfarer/campaign/rules/oOOO":
                transformer.removeMethod("getCommandClass", "(Ljava/lang/String;)Ljava/lang/String;");
                transformer.mergeClass(loadDonor("com/genir/renderer/overrides/Expression"));
                break;
            case "com/fs/starfarer/campaign/save/B":
                transformer.removeMethod("o00000", "(Ljava/lang/String;F)V");
                transformer.mergeClass(loadDonor("com/genir/renderer/overrides/ProgressBar"));
                break;
            case "com/fs/starfarer/combat/ai/admiral/G":
                transformer.renameMethod("o00000", "pickReinforcement_vanilla",
                        "(Lcom/fs/starfarer/combat/ai/admiral/G$o;FLjava/util/List;Ljava/util/List;Z)Lcom/fs/starfarer/campaign/fleet/FleetMember;");
                transformer.mergeClass(loadDonor("com/genir/renderer/overrides/DeploymentManager"));
                break;
            case "com/fs/starfarer/combat/E/o0OO":
                transformer.mergeClass(loadDonor("com/genir/renderer/overrides/Bounds"));
                break;
            case "com/fs/starfarer/util/Tesselator":
                transformer.removeMethod("o00000", "(Lcom/fs/starfarer/combat/E/o0OO;FFF)V");
                transformer.mergeClass(loadDonor("com/genir/renderer/overrides/Tesselator"));
                break;
            case "sound/C":
                transformer.mergeClass(loadDonor("com/genir/renderer/overrides/loading/SoundStore"));
                break;
            case "com/fs/starfarer/loading/LoadingUtils":
                transformer.renameMethod("Õ00000", "filesWithExtensionInDirectoryAbsolute_vanilla",
                        "(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;");
                transformer.renameMethod("super", "filesWithExtensionInDirectory_vanilla",
                        "(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;");
                transformer.renameMethod("super", "readStreamAsString_vanilla",
                        "(Ljava/io/InputStream;)Ljava/lang/String;");
                transformer.mergeClass(loadDonor("com/genir/renderer/overrides/loading/LoadingUtils"));
                break;
            case "com/fs/util/C":
                transformer.removeMethod("Ô00000", "(Ljava/lang/String;)Ljava/io/InputStream;");
                transformer.renameMethod("Ó00000", "FileLoader_loadInputStream_vanilla",
                        "(Ljava/lang/String;Z)Ljava/io/InputStream;");
                transformer.renameMethod("new", "FileLoader_loadInputStreams_vanilla",
                        "(Ljava/lang/String;)Ljava/util/List;");
                transformer.mergeClass(loadDonor("com/genir/renderer/overrides/loading/FileLoader"));
                break;
            case "com/fs/starfarer/loading/scripts/ScriptStore":
                transformer.removeMethod("Object", "(Ljava/lang/String;)V"); // ScriptLoader_queueScript
                transformer.mergeClass(loadDonor("com/genir/renderer/overrides/loading/ScriptStore"));
                break;
            case "com/fs/starfarer/combat/CombatEngine":
                transformer.removeMethod("render", "(Z)V");
                transformer.mergeClass(loadDonor("com/genir/renderer/overrides/CombatEngine"));
                break;
            case "com/fs/starfarer/loading/oO0O":
                transformer.removeMethod("super", "(Ljava/lang/String;Lcom/fs/starfarer/loading/specs/g;)V");
                transformer.mergeClass(loadDonor("com/genir/renderer/overrides/loading/HullSpecStore"));
                break;
            case "com/fs/starfarer/loading/Q":
                transformer.removeMethod("super", "(Ljava/lang/String;Lcom/fs/starfarer/loading/specs/BaseWeaponSpec;)V"); // WeaponSpecStore_addWeaponSpec
                transformer.removeMethod("super", "(Ljava/lang/String;Ljava/lang/Object;)V"); // WeaponSpecStore_addProjectileSpec
                transformer.mergeClass(loadDonor("com/genir/renderer/overrides/loading/WeaponSpecStore"));
                break;
            case "com/fs/starfarer/loading/SpecStore":
                transformer.renameMethod("ÓO0000", "init_vanilla", "(Lcom/fs/starfarer/loading/ResourceLoaderState;)V");
                transformer.renameMethod("ÖO0000", "loadingSoundSets_vanilla", "(Lcom/fs/starfarer/loading/ResourceLoaderState;)V");
                transformer.mergeClass(loadDonor("com/genir/renderer/overrides/loading/SpecStore"));
                break;
        }
    }
}
