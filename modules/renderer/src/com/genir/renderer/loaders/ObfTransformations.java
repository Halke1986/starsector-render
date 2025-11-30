package com.genir.renderer.loaders;

import java.util.Arrays;
import java.util.List;

import static com.genir.renderer.loaders.ClassConstantTransformer.newTransform;

public class ObfTransformations {
    public static List<ClassConstantTransformer.Transform> transformations = Arrays.asList(
            // Classes
            newTransform("proxy/com/fs/graphics/particle/DynamicParticleGroup", "com/fs/graphics/particle/DynamicParticleGroup"),
            newTransform("proxy/com/fs/graphics/LayeredRenderable", "com/fs/graphics/LayeredRenderable"),
            newTransform("proxy/com/fs/graphics/Sprite", "com/fs/graphics/Sprite"),
            newTransform("proxy/com/fs/starfarer/combat/entities/CustomCombatEntity", "com/fs/starfarer/combat/entities/CustomCombatEntity"),
            newTransform("proxy/com/fs/starfarer/combat/CombatViewport", "com/fs/starfarer/combat/CombatViewport"),
            newTransform("proxy/com/fs/starfarer/loading/scripts/ScriptStore", "com/fs/starfarer/loading/scripts/ScriptStore"),
            newTransform("proxy/com/fs/starfarer/loading/specs/BaseWeaponSpec", "com/fs/starfarer/loading/specs/BaseWeaponSpec"),
            newTransform("proxy/com/fs/starfarer/renderers/damage/DebrisParticleSystem", "com/fs/starfarer/renderers/damage/DebrisParticleSystem"),
            newTransform("proxy/com/fs/starfarer/renderers/damage/ExplosionParticleSystem", "com/fs/starfarer/renderers/damage/ExplosionParticleSystem"),
            newTransform("proxy/com/fs/starfarer/settings/StarfarerSettings", "com/fs/starfarer/settings/StarfarerSettings"),
            newTransform("proxy/com/fs/util/container/repo/ObjectRepository", "com/fs/util/container/repo/ObjectRepository"),
            newTransform("proxy/sound/Sound", "sound/Sound"),

            // Obfuscated classes
            newTransform("proxy/com/fs/graphics/FileRepository", "com/fs/graphics/L"),
            newTransform("proxy/com/fs/graphics/TextureRepository", "com/fs/graphics/oOoO"),
            newTransform("proxy/com/fs/graphics/ImageTransformer", "com/fs/graphics/I"),
            newTransform("proxy/com/fs/graphics/AlphaAdder", "com/fs/graphics/do"),
            newTransform("proxy/com/fs/graphics/font/FontRepository", "com/fs/graphics/A/D"),
            newTransform("proxy/com/fs/starfarer/loading/scripts/SecureClassLoader", "com/fs/starfarer/loading/scripts/B"),
            newTransform("proxy/com/fs/starfarer/loading/JavaSourceFinder", "com/fs/starfarer/loading/Objectsuper"),
            newTransform("proxy/com/fs/starfarer/loading/specs/ShipHullSpec", "com/fs/starfarer/loading/specs/g"),
            newTransform("proxy/com/fs/starfarer/campaign/rules/Expression", "com/fs/starfarer/campaign/rules/oOOO"),

            // Obfuscated methods
            newTransform("FileRepository_loadImage", "o00000"),
            newTransform("FileRepository_loadSound", "Ô00000"),
            newTransform("TextureRepository_defineTexture", "super"),
            newTransform("TextureRepository_setImageTransformer", "super"),
            newTransform("FontRepository_defineFont", "super"),
            newTransform("StarfarerSettings_getFloatValue", "ö00000"),
            newTransform("ScriptStore_getSecureClassLoader", "Object"),
            newTransform("ScriptStore_getScriptList", "Õ00000"),
            newTransform("ScriptStore_getPluginSet", "Ò00000"),

            // Obfuscated fields
            newTransform("ScriptStore_objectRepository", "Õ00000"),
            newTransform("ScriptStore_javaSourceClassLoader", "ø00000"),
            newTransform("Expression_rulesPackages", "ö00000"),
            newTransform("Expression_commandClasses", "float")
    );
}
