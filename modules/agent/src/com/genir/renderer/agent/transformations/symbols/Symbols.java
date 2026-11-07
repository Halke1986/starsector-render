package com.genir.renderer.agent.transformations.symbols;

import com.genir.renderer.agent.ClassName;
import org.objectweb.asm.ClassReader;
import org.objectweb.asm.Type;
import org.objectweb.asm.tree.*;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import static org.objectweb.asm.Type.getReturnType;

public class Symbols {
    // Classes
    public final ClassNode TextureHandler;
    public final ClassNode TextureRepository;
    public final ClassNode FileLoader;
    public final ClassNode FileLoader$ResourceLocation;
    public final ClassNode FileLoader$ResourceType;
    public final ClassNode HullSpecStore;
    public final ClassNode WeaponSpecStore;
    public final ClassNode SecureClassLoader;
    public final ClassNode JavaSourceFinder;
    public final ClassNode ShipHullSpec;
    public final ClassNode ShutdownException;
    public final ClassNode FloatingTextManager;
    public final ClassNode Fps;
    public final ClassNode FontRepository;
    public final ClassNode FontRenderer;
    public final ClassNode Font;
    public final ClassNode Glyph;
    public final ClassNode Kerning;
    public final ClassNode SoundStore;
    public final ClassNode SoundTrack;
    public final ClassNode OggLoader;
    public final ClassNode SoundBuffer;
    public final ClassNode AtmosphereRenderer;
    public final ClassNode ShipArrowRenderer;
    public final ClassNode ScreenshotUtil;
    public final ClassNode ImpactSound;
    public final ClassNode ResourceLoaderState$ResourceType;
    public final ClassNode Expression;
    public final ClassNode ProgressBar;
    public final ClassNode DeploymentManager;
    public final ClassNode DeploymentManager$ReinforcementType;
    public final ClassNode Bounds;
    public final ClassNode BoundsSegment;

    public final MethodNode TextureRepository_addTexture;
    public final MethodNode TextureRepository_getTextureLoader;
    public final MethodNode FontRepository_defineFont;
    public final MethodNode StarfarerSettings_getFloatValue;
    public final MethodNode ScriptStore_getSecureClassLoader;
    public final MethodNode ScriptStore_getScriptList;
    public final MethodNode ScriptStore_getPluginSet;
    public final MethodNode ScriptLoader_startScriptLoadingThread;
    public final MethodNode ScriptLoader_queueScript;
    public final MethodNode SpecStore_init;
    public final MethodNode SpecStore_loadingSoundSets;
    public final MethodNode ResourceLocation_type;
    public final MethodNode ResourceLocation_path;
    public final MethodNode ResourceLocation_isMod;
    public final MethodNode FileLoader_locationFilter;
    public final MethodNode FileLoader_withoutMods;
    public final MethodNode FileLoader_getInstance;
    public final MethodNode FileLoader_getResourceList;
    public final MethodNode FileLoader_loadInputStreams;
    public final MethodNode FileLoader_loadInputStream;
    public final MethodNode FileLoader_loadInputStreamWithMods;
    public final MethodNode FloatingTextManager_render;
    public final MethodNode ProgressBar_setDescription;
    public final MethodNode ProgressBar_render;
    public final MethodNode ProgressBar_renderWithDescription;
    public final MethodNode TextureHandler_getTextureID;
    public final MethodNode TextureHandler_getPath;
    public final MethodNode TextureHandler_setPath;
    public final MethodNode TextureHandler_setHeight;
    public final MethodNode TextureHandler_setWidth;
    public final MethodNode TextureHandler_setImageHeight;
    public final MethodNode TextureHandler_setImageWidth;
    public final MethodNode TextureHandler_setColor1;
    public final MethodNode TextureHandler_setColor0;
    public final MethodNode TextureHandler_setColor2;
    public final MethodNode TextureHandler_setStringID;
    public final MethodNode DeploymentManager_pickReinforcement;
    public final MethodNode TextureLoader_loadTextureSynchronous;
    public final MethodNode SoundStore_getInstance;
    public final MethodNode SoundStore_loadWav;
    public final MethodNode SoundStore_getIsInitialized;
    public final MethodNode OggLoader_load;
    public final MethodNode AtmosphereRenderer_init;
    public final MethodNode ScreenshotUtil_init;
    public final MethodNode ShipArrowRenderer_init;
    public final MethodNode StarfarerSettings_getBooleanValue;
    public final MethodNode ImpactSound_init;
    public final MethodNode LoadingUtils_filesWithExtensionInDirectory;
    public final MethodNode LoadingUtils_filesWithExtensionInDirectoryAbsolute;
    public final MethodNode LoadingUtils_readStreamAsString;
    public final MethodNode LoadingUtils_readPathAsString;
    public final MethodNode LoadingUtils_getMergedSpreadsheetDataForMod;
    public final MethodNode Expression_list;
    public final MethodNode Expression_map;
    public final MethodNode Tesselator_renderAsPolygon;
    public final MethodNode HullSpecStore_addHullSpec;
    public final MethodNode WeaponSpecStore_addWeaponSpec;
    public final MethodNode WeaponSpecStore_addProjectileSpec;
    public final MethodNode FontRenderer_renderGlyphs;
    public final MethodNode FontRenderer_refreshFontFlags;
    public final MethodNode Font_getSize;
    public final MethodNode Font_getGlyph;
    public final MethodNode Font_getLineHeight;
    public final MethodNode Font_getKerning;
    public final MethodNode Kerning_getAmount;
    public final MethodNode Glyph_getXOffset;
    public final MethodNode Glyph_getYOffset;
    public final MethodNode Glyph_getXAdvance;
    public final MethodNode Glyph_getWidth;
    public final MethodNode Glyph_getHeight;
    public final MethodNode Glyph_getTexX;
    public final MethodNode Glyph_getTexY;
    public final MethodNode Glyph_getTexHeight;
    public final MethodNode Glyph_getTexWidth;

    // Fields
    public final String ScriptStore_objectRepository;
    public final String ScriptStore_javaSourceClassLoader;
    public final String SoundStore_isOpenALInitialized2;
    public final String SoundStore_trackMap;
    public final String SoundBuffer_buffer;
    public final String SoundBuffer_freq;
    public final String SoundBuffer_channels;
    public final String CombatEngine_hitParticlesGroup;
    public final String HullSpecStore_hulls;
    public final String WeaponSpecStore_weapons;
    public final String WeaponSpecStore_projectiles;
    public final String FontRenderer_multiPassFont;
    public final String FontRenderer_transformMatrix;
    public final String FontRenderer_highlightDisabled;
    public final String FontRenderer_textSize;
    public final String FontRenderer_font;
    public final String FontRenderer_text;
    public final String FontRenderer_color;
    public final String FontRenderer_colorAlpha;
    public final String FontRenderer_highlightColor;
    public final String FontRenderer_highlightColorAlpha;
    public final String FontRenderer_highlightColors;
    public final String FontRenderer_highlightByChar;
    public final String FontRenderer_underlineEnabled;
    public final String FontRenderer_outlineSize;
    public final String FontRenderer_outlineExpansion;
    public final String FontRenderer_highlightStart;
    public final String FontRenderer_highlightEnd;
    public final String FontRenderer_backgroundColor;

    public Symbols() {
        final ClassNode baseGameStateNode = readClassNode("com/fs/starfarer/BaseGameState");
        final ClassNode combatEngineNode = readClassNode("com/fs/starfarer/combat/CombatEngine");
        final ClassNode versionNode = readClassNode("com/fs/starfarer/Version");
        final ClassNode spriteNode = readClassNode("com/fs/graphics/Sprite");
        final ClassNode soundNode = readClassNode("sound/Sound");
        final ClassNode resourceLoaderStateNode = readClassNode("com/fs/starfarer/loading/ResourceLoaderState");
        final ClassNode rulesNode = readClassNode("com/fs/starfarer/campaign/rules/Rules");
        final ClassNode campaignGameManagerNode = readClassNode("com/fs/starfarer/campaign/save/CampaignGameManager");
        final ClassNode shipNode = readClassNode("com/fs/starfarer/combat/entities/Ship");
        final ClassNode baseBattleStrategyNode = readClassNode("com/fs/starfarer/combat/ai/admiral/BaseBattleStrategy");
        final ClassNode glLauncherNode = readClassNode("com/fs/starfarer/launcher/opengl/GLLauncher");
        final ClassNode hullVariantSpecNode = readClassNode("com/fs/starfarer/loading/specs/HullVariantSpec");
        final ClassNode missileNode = readClassNode("com/fs/starfarer/combat/entities/Missile");
        final ClassNode scriptStoreNode = readClassNode("com/fs/starfarer/loading/scripts/ScriptStore");
        final ClassNode textureLoaderNode = readClassNode("com/fs/graphics/TextureLoader");

        TextureHandler = typeClass(fieldsByName(spriteNode, "texture").get(0));
        TextureRepository = onwerClass(methodInstructionsByOwner(methodsBy(spriteNode, "<init>", "(Ljava/lang/String;)", null, null).get(0), "com/fs/graphics").get(0));
        Fps = typeClass(fieldsByName(baseGameStateNode, "fps").get(0));
        FloatingTextManager = returnTypeClass(methodsByName(combatEngineNode, "getFloatingTextManager").get(0));
        FontRepository = onwerClass(methodInstructionsByOwner(methodsByName(versionNode, "<init>").get(0), null).get(1));
        FontRenderer = returnTypeClass(methodsBy(Fps, null, "()", Type.OBJECT, null).get(0));
        Font = getGenericParametersClass(fieldsByDescPrefix(FontRepository, "Ljava/util/HashMap;").get(0), 1);
        Glyph = returnTypeClass(methodsBy(Font, null, "(I)", Type.OBJECT, null).get(0));
        Kerning = returnTypeClass(methodsByDescPrefix(Font, "(II)").get(0));
        SoundStore = onwerClass(methodInstructionsByOwner(methodsBy(soundNode, "<init>", "(Ljava/lang/String;)", null, null).get(0), "sound").get(0));
        final MethodNode loadOggSoundtrack = methodsByDescPrefix(SoundStore, "(Ljava/lang/String;Ljava/io/InputStream;)").get(2);
        SoundTrack = returnTypeClass(loadOggSoundtrack);
        OggLoader = onwerClass(methodInstructionsByOwner(loadOggSoundtrack, "sound").get(1));
        SoundBuffer = returnTypeClass(methodsByDescPrefix(OggLoader, "(Ljava/io/InputStream;)").get(0));
        final MethodNode resourceLoaderStateInit = methodsByName(resourceLoaderStateNode, "init").get(0);
        final List<MethodInsnNode> rendereresList = methodInstructionsByOwner(resourceLoaderStateInit, "com/fs/starfarer/renderers");
        AtmosphereRenderer = onwerClass(rendereresList.get(0));
        ShipArrowRenderer = onwerClass(rendereresList.get(1));
        ScreenshotUtil = onwerClass(methodInstructionsByOwner(resourceLoaderStateInit, "com/fs/starfarer/util").get(0));
        ImpactSound = onwerClass(methodInstructionsByOwner(resourceLoaderStateInit, "com/fs/starfarer/combat/entities/ship").get(0));
        ResourceLoaderState$ResourceType = argumentTypeClass(methodsByName(resourceLoaderStateNode, "queueResource").get(0), 0);
        final ClassNode rules = returnTypeClass(methodsBy(rulesNode, null, null, Type.OBJECT, "Lcom/fs/starfarer/campaign/rules").get(0));
        Expression = getGenericParametersClass(Type.getReturnType(methodsByName(rules, "getConditions").get(0).signature), 0);
        final ClassNode saveStream = typeClass(fieldsByDescPrefix(campaignGameManagerNode, "Lcom/fs/starfarer/util").get(0));
        ProgressBar = typeClass(fieldsByDescPrefix(saveStream, "Lcom/fs/starfarer/campaign/save").get(0));
        DeploymentManager = typeClass(fieldsByDescPrefix(baseBattleStrategyNode, "Lcom/fs/starfarer/combat/ai/admiral").get(0));
        DeploymentManager$ReinforcementType = getGenericParametersClass(fieldsByDescPrefix(DeploymentManager, "Ljava/util/List<Lcom/fs/starfarer/combat/ai/admiral").get(0), 0);
        Bounds = typeClass(fieldsByName(shipNode, "visualBounds").get(0));
        BoundsSegment = getGenericParametersClass(fieldsByDescPrefix(Bounds, "Ljava/util/List<Lcom/fs/starfarer/combat").get(0), 0);
        FileLoader = onwerClass(methodInstructionsByOwner(methodsByName(glLauncherNode, "loadSound").get(0), "com/fs/util").get(0));
        FileLoader$ResourceLocation = getGenericParametersClass(fieldsByDescPrefix(FileLoader, "Ljava/util/List<Lcom/fs/util").get(0), 0);
        FileLoader$ResourceType = typeClass(fieldsByDescPrefix(FileLoader$ResourceLocation, "Lcom/fs/util").get(0));
        HullSpecStore = onwerClass(methodInstructionsByOwner(methodsByName(hullVariantSpecNode, "createEmptyVariant").get(0), "com/fs/starfarer/loading").get(0));
        WeaponSpecStore = onwerClass(methodInstructionsByOwner(methodsByName(missileNode, "setWeaponSpec").get(0), "com/fs/starfarer/loading").get(0));
        SecureClassLoader = typeClass(fieldsByDescPrefix(scriptStoreNode, "Lcom/fs/starfarer/loading/scripts").get(0));
        JavaSourceFinder = onwerClass(methodInstructionsByOwner(methodsByDescPrefix(scriptStoreNode, "(Ljava/lang/ClassLoader;)V").get(0), "com/fs/starfarer/loading").get(0));
        ShipHullSpec = returnTypeClass(methodsByName(shipNode, "getHullSpec").get(0));
        ShutdownException = onwerClass(methodInstructionsBy(methodsByName(baseGameStateNode, "traverse").get(0), "com/fs/starfarer", "<init>").get(0));

        TextureRepository_addTexture = methodsByDescPrefix(TextureRepository, "(Ljava/lang/String;L" + TextureHandler.name + ";)V").get(0);
        TextureRepository_getTextureLoader = methodsByDescPrefix(TextureRepository, "()L" + textureLoaderNode.name).get(0);
        FontRepository_defineFont = methodsByDescPrefix(FontRepository, "(Ljava/lang/String;Ljava/lang/String;)V").get(0);
        StarfarerSettings_getFloatValue = null;//ö00000";
        StarfarerSettings_getBooleanValue = null;//class";
        ScriptStore_getSecureClassLoader = null;//Object";
        ScriptStore_getScriptList = null;//Õ00000";
        ScriptStore_getPluginSet = null;//Ò00000";
        ScriptLoader_startScriptLoadingThread = null;//int";
        ScriptLoader_queueScript = null;//Object";
        SpecStore_init = null;//ÓO0000";
        SpecStore_loadingSoundSets = null;//ÖO0000";
        ResourceLocation_type = null;//super";
        ResourceLocation_path = null;//Ó00000";
        ResourceLocation_isMod = null;//String";
        FileLoader_locationFilter = null;//String";
        FileLoader_withoutMods = null;//super";
        FileLoader_getInstance = null;//Ó00000";
        FileLoader_getResourceList = null;//Ô00000";
        FileLoader_loadInputStreams = null;//new";
        FileLoader_loadInputStream = null;//Ó00000";
        FileLoader_loadInputStreamWithMods = null;//Ô00000";
        FloatingTextManager_render = null;//super";
        ProgressBar_setDescription = null;//Ò00000";
        ProgressBar_render = null;//o00000";
        ProgressBar_renderWithDescription = null;//o00000";
        TextureHandler_getTextureID = null;//ö00000";
        TextureHandler_getPath = null;//Õ00000";
        TextureHandler_setPath = null;//o00000";
        TextureHandler_setHeight = null;//Ô00000";
        TextureHandler_setWidth = null;//Object";
        TextureHandler_setImageHeight = null;//o00000";
        TextureHandler_setImageWidth = null;//Ò00000";
        TextureHandler_setColor1 = null;//o00000";
        TextureHandler_setColor0 = null;//Object";
        TextureHandler_setColor2 = null;//Ò00000";
        TextureHandler_setStringID = null;//Ò00000";
        DeploymentManager_pickReinforcement = null;//o00000";
        TextureLoader_loadTextureSynchronous = null;//o00000";
        SoundStore_getInstance = null;//ö00000";
        SoundStore_loadWav = null;//Ò00000";
        SoundStore_getIsInitialized = null;//o00000";
        OggLoader_load = null;//super";
        AtmosphereRenderer_init = null;//super";
        ScreenshotUtil_init = null;//Object";
        ShipArrowRenderer_init = null;//o00000";
        ImpactSound_init = null;//o00000";
        LoadingUtils_filesWithExtensionInDirectory = null;//super";
        LoadingUtils_filesWithExtensionInDirectoryAbsolute = null;//Õ00000";
        LoadingUtils_readStreamAsString = null;//super";
        LoadingUtils_readPathAsString = null;//super";
        LoadingUtils_getMergedSpreadsheetDataForMod = null;//Ò00000";
        Expression_list = null;//ö00000";
        Expression_map = null;//float";
        Tesselator_renderAsPolygon = null;//o00000";
        HullSpecStore_addHullSpec = null;//super";
        WeaponSpecStore_addWeaponSpec = null;//super";
        WeaponSpecStore_addProjectileSpec = null;//super";
        FontRenderer_renderGlyphs = null;//Õ00000";
        FontRenderer_refreshFontFlags = null;//int";
        Font_getSize = null;//Õ00000";
        Font_getGlyph = null;//oO0000";
        Font_getLineHeight = null;//ø00000";
        Font_getKerning = null;//o00000";
        Kerning_getAmount = null;//Ó00000";
        Glyph_getXOffset = null;//ö00000";
        Glyph_getYOffset = null;//Ò00000";
        Glyph_getXAdvance = null;//Ø00000";
        Glyph_getWidth = null;//ø00000";
        Glyph_getHeight = null;//ÒO0000";
        Glyph_getTexX = null;//int";
        Glyph_getTexY = null;//oO0000";
        Glyph_getTexHeight = null;//ô00000";
        Glyph_getTexWidth = null;//Ô00000";

        // Fields
        ScriptStore_objectRepository = "Õ00000";
        ScriptStore_javaSourceClassLoader = "ø00000";
        SoundStore_isOpenALInitialized2 = "Ö00000";
        SoundStore_trackMap = "OO0000";
        SoundBuffer_buffer = "Object";
        SoundBuffer_freq = "Ò00000";
        SoundBuffer_channels = "o00000";
        CombatEngine_hitParticlesGroup = "OÔ0000";
        HullSpecStore_hulls = "o00000";
        WeaponSpecStore_weapons = "new";
        WeaponSpecStore_projectiles = "o00000";
        FontRenderer_multiPassFont = "new_new";
        FontRenderer_transformMatrix = "oÒ0000";
        FontRenderer_highlightDisabled = "Ø00000";
        FontRenderer_textSize = "float";
        FontRenderer_font = "float_new";
        FontRenderer_text = "while_super";
        FontRenderer_color = "Øo0000";
        FontRenderer_colorAlpha = "Ö00000";
        FontRenderer_highlightColor = "Ô00000";
        FontRenderer_highlightColorAlpha = "öO0000";
        FontRenderer_highlightColors = "ØÓ0000";
        FontRenderer_highlightByChar = "Oo0000";
        FontRenderer_underlineEnabled = "õo0000";
        FontRenderer_outlineSize = "oo0000";
        FontRenderer_outlineExpansion = "oO0000";
        FontRenderer_highlightStart = "interface_new";
        FontRenderer_highlightEnd = "interface_super";
        FontRenderer_backgroundColor = "ÖÓ0000";
    }

    private ClassNode readClassNode(String className) {
        try {
            ClassLoader loader = ClassLoader.getSystemClassLoader();
            InputStream stream = loader.getResourceAsStream(ClassName.resource(className));
            ClassReader reader = new ClassReader(stream.readAllBytes());
            ClassNode classNode = new ClassNode();
            reader.accept(classNode, 0);

            return classNode;
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * FIELDS
     */

    private List<FieldNode> fieldsByName(ClassNode classNode, String name) {
        return fieldsBy(classNode, name, null);
    }

    private List<FieldNode> fieldsByDescPrefix(ClassNode classNode, String descPrefix) {
        return fieldsBy(classNode, null, descPrefix);
    }

    private List<FieldNode> fieldsBy(ClassNode classNode, String name, String descPrefix) {
        List<FieldNode> filtered = new ArrayList<>();
        for (FieldNode field : classNode.fields) {
            if (name != null && !field.name.equals(name)) {
                continue;
            }

            if (descPrefix != null && !field.desc.startsWith(descPrefix) && (field.signature == null || (field.signature != null && !field.signature.startsWith(descPrefix)))) {
                continue;
            }

            filtered.add(field);
        }

        return filtered;
    }

    /**
     * METHODS
     */

    private List<MethodNode> methodsByName(ClassNode classNode, String name) {
        return methodsBy(classNode, name, null, null, null);
    }

    private List<MethodNode> methodsByDescPrefix(ClassNode classNode, String descPrefix) {
        return methodsBy(classNode, null, descPrefix, null, null);
    }

    private List<MethodNode> methodsBy(ClassNode classNode, String name, String descPrefix, Integer returnSort, String returnDescPrefix) {
        List<MethodNode> filtered = new ArrayList<>();
        for (MethodNode method : classNode.methods) {
            if (name != null && !method.name.equals(name)) {
                continue;
            }

            if (descPrefix != null && !method.desc.startsWith(descPrefix)) {
                continue;
            }

            Type returnType = getReturnType(method.desc);
            if (returnSort != null && returnType.getSort() != returnSort) {
                continue;
            }

            if (returnDescPrefix != null && !returnType.getDescriptor().startsWith(returnDescPrefix)) {
                continue;
            }

            filtered.add(method);
        }

        return filtered;
    }

    private List<MethodInsnNode> methodInstructionsByOwner(MethodNode methodNode, String ownerPrefix) {
        return methodInstructionsBy(methodNode, ownerPrefix, null);
    }

    private List<MethodInsnNode> methodInstructionsBy(MethodNode methodNode, String ownerPrefix, String name) {
        List<MethodInsnNode> inst = new ArrayList<>();
        for (AbstractInsnNode ins : methodNode.instructions) {
            if (!(ins instanceof MethodInsnNode methodIns)) {
                continue;
            }

            if (ownerPrefix != null && !methodIns.owner.startsWith(ownerPrefix)) {
                continue;
            }

            if (name != null && !methodIns.name.equals(name)) {
                continue;
            }

            inst.add(methodIns);
        }

        return inst;
    }

    /**
     * DESCRIPTION
     */

    private ClassNode typeClass(FieldNode field) {
        return readClassNode(Type.getType(field.desc).getInternalName());
    }

    private ClassNode onwerClass(MethodInsnNode inst) {
        return readClassNode(inst.owner);
    }

    private ClassNode returnTypeClass(MethodNode method) {
        return readClassNode(Type.getReturnType(method.desc).getInternalName());
    }

    private ClassNode argumentTypeClass(MethodNode method, int idx) {
        return readClassNode(Type.getArgumentTypes(method.desc)[idx].getInternalName());
    }

    private ClassNode getGenericParametersClass(FieldNode field, int idx) {
        return readClassNode(getGenericParameters(field.signature)[idx].getInternalName());
    }

    private ClassNode getGenericParametersClass(Type type, int idx) {
        return readClassNode(getGenericParameters(type.getDescriptor())[idx].getInternalName());
    }

    private Type[] getGenericParameters(String signature) {
        String generic = signature.substring(signature.indexOf('<') + 1);
        generic = generic.substring(0, generic.indexOf('>'));

        // Disgiuse generic parameters as method descriptor to use existing Type functionality.
        return Type.getMethodType("(" + generic + ")V").getArgumentTypes();
    }


}
