package com.genir.renderer.loaders;

import java.util.Arrays;
import java.util.List;

import static com.genir.renderer.loaders.ClassConstantTransformer.newTransform;

public class Deobf {
    public static List<ClassConstantTransformer.Transform> transforms = Arrays.asList(
            // Classes
            newTransform("com/fs/graphics/FileRepository", "com/fs/graphics/L"),
            newTransform("com/fs/graphics/TextureRepository", "com/fs/graphics/oOoO"),
            newTransform("com/fs/graphics/ImageTransformer", "com/fs/graphics/I"),
            newTransform("com/fs/graphics/AlphaAdder", "com/fs/graphics/do"),
            newTransform("com/fs/graphics/font/FontRepository", "com/fs/graphics/A/D"),
            newTransform("com/fs/starfarer/loading/scripts/SecureClassLoader", "com/fs/starfarer/loading/scripts/B"),
            newTransform("com/fs/starfarer/loading/JavaSourceFinder", "com/fs/starfarer/loading/Objectsuper"),
            newTransform("com/fs/starfarer/loading/specs/ShipHullSpec", "com/fs/starfarer/loading/specs/g"),

            // Methods
            newTransform("FileRepository_loadImage", "o00000"),
            newTransform("FileRepository_loadSound", "Ô00000"),
            newTransform("TextureRepository_defineTexture", "super"),
            newTransform("TextureRepository_setImageTransformer", "super"),
            newTransform("FontRepository_defineFont", "super"),
            newTransform("StarfarerSettings_getFloatValue", "ö00000"),
            newTransform("ScriptStore_getSecureClassLoader", "Object"),
            newTransform("ScriptStore_getScriptList", "Õ00000"),
            newTransform("ScriptStore_getPluginSet", "Ò00000"),

            // Fields
            newTransform("ScriptStore_objectRepository", "Õ00000"),
            newTransform("ScriptStore_javaSourceClassLoader", "ø00000")
    );
}
