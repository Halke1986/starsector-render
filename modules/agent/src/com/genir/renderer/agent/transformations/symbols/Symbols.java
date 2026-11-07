package com.genir.renderer.agent.transformations.symbols;

import com.genir.renderer.agent.ClassName;
import org.objectweb.asm.ClassReader;
import org.objectweb.asm.Type;
import org.objectweb.asm.tree.*;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import static java.util.Map.entry;
import static org.objectweb.asm.Type.getReturnType;

public class Symbols {
    // Classes
    public final String textureHandler;
    public final String textureRepository;
    public final String fileLoader;
    public final String fileLoader$resourceLocation;
    public final String fileLoader$resourceType;
    public final String hullSpecStore;
    public final String weaponSpecStore;
    public final String secureClassLoader;
    public final String javaSourceFinder;
    public final String shipHullSpec;
    public final String shutdownException;
    public final String floatingTextManager;
    public final String fps;
    public final String fontRepository;
    public final String fontRenderer;
    public final String font;
    public final String glyph;
    public final String kerning;
    public final String soundStore;
    public final String soundTrack;
    public final String oggLoader;
    public final String soundBuffer;
    public final String atmosphereRenderer;
    public final String shipArrowRenderer;
    public final String screenshotUtil;
    public final String impactSound;
    public final String resourceLoaderState$resourceType;
    public final String expression;
    public final String progressBar;
    public final String deploymentManager;
    public final String deploymentManager$ReinforcementType;
    public final String bounds;
    public final String boundsSegment;

    public final String TextureRepository_addTexture;
    public final String FontRepository_defineFont;
    public final String StarfarerSettings_getFloatValue;
    public final String ScriptStore_getSecureClassLoader;
    public final String ScriptStore_getScriptList;
    public final String ScriptStore_getPluginSet;
    public final String ScriptLoader_startScriptLoadingThread;
    public final String ScriptLoader_queueScript;
    public final String SpecStore_init;
    public final String SpecStore_loadingSoundSets;
    public final String ResourceLocation_type;
    public final String ResourceLocation_path;
    public final String ResourceLocation_isMod;
    public final String FileLoader_locationFilter;
    public final String FileLoader_withoutMods;
    public final String FileLoader_getInstance;
    public final String FileLoader_getResourceList;
    public final String FileLoader_loadInputStreams;
    public final String FileLoader_loadInputStream;
    public final String FileLoader_loadInputStreamWithMods;
    public final String FloatingTextManager_render;
    public final String ProgressBar_setDescription;
    public final String ProgressBar_render;
    public final String ProgressBar_renderWithDescription;
    public final String TextureHandler_getTextureID;
    public final String TextureHandler_getPath;
    public final String TextureHandler_setPath;
    public final String TextureHandler_setHeight;
    public final String TextureHandler_setWidth;
    public final String TextureHandler_setImageHeight;
    public final String TextureHandler_setImageWidth;
    public final String TextureHandler_setColor1;
    public final String TextureHandler_setColor0;
    public final String TextureHandler_setColor2;
    public final String TextureHandler_setStringID;
    public final String DeploymentManager_pickReinforcement;
    public final String TextureLoader_loadTextureSynchronous;
    public final String SoundStore_getInstance;
    public final String SoundStore_loadWav;
    public final String SoundStore_getIsInitialized;
    public final String OggLoader_load;
    public final String AtmosphereRenderer_init;
    public final String ScreenshotUtil_init;
    public final String ShipArrowRenderer_init;
    public final String StarfarerSettings_getBooleanValue;
    public final String ImpactSound_init;
    public final String LoadingUtils_filesWithExtensionInDirectory;
    public final String LoadingUtils_filesWithExtensionInDirectoryAbsolute;
    public final String LoadingUtils_readStreamAsString;
    public final String LoadingUtils_readPathAsString;
    public final String LoadingUtils_getMergedSpreadsheetDataForMod;
    public final String TextureRepository_getTextureLoader;
    public final String Expression_list;
    public final String Expression_map;
    public final String Tesselator_renderAsPolygon;
    public final String HullSpecStore_addHullSpec;
    public final String WeaponSpecStore_addWeaponSpec;
    public final String WeaponSpecStore_addProjectileSpec;
    public final String FontRenderer_renderGlyphs;
    public final String FontRenderer_refreshFontFlags;
    public final String Font_getSize;
    public final String Font_getGlyph;
    public final String Font_getLineHeight;
    public final String Font_getKerning;
    public final String Kerning_getAmount;
    public final String Glyph_getXOffset;
    public final String Glyph_getYOffset;
    public final String Glyph_getXAdvance;
    public final String Glyph_getWidth;
    public final String Glyph_getHeight;
    public final String Glyph_getTexX;
    public final String Glyph_getTexY;
    public final String Glyph_getTexHeight;
    public final String Glyph_getTexWidth;

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

        textureHandler = typeString(fieldsByName(spriteNode, "texture").get(0));
        textureRepository = methodInstructionsByOwner(methodsBy(spriteNode, "<init>", "(Ljava/lang/String;)", null, null).get(0), "com/fs/graphics").get(0).owner;
        fps = typeString(fieldsByName(baseGameStateNode, "fps").get(0));
        final ClassNode fpsNode = readClassNode(fps);
        floatingTextManager = returnTypeString(methodsByName(combatEngineNode, "getFloatingTextManager").get(0));
        fontRepository = methodInstructionsByOwner(methodsByName(versionNode, "<init>").get(0), null).get(1).owner;
        fontRenderer = returnTypeString(methodsBy(fpsNode, null, "()", Type.OBJECT, null).get(0));
        final ClassNode fontRepositoryNode = readClassNode(fontRepository);
        font = getGenericParametersString(fieldsByDescPrefix(fontRepositoryNode, "Ljava/util/HashMap;").get(0), 1);
        final ClassNode fontNode = readClassNode(font);
        glyph = returnTypeString(methodsBy(fontNode, null, "(I)", Type.OBJECT, null).get(0));
        kerning = returnTypeString(methodsByDescPrefix(fontNode, "(II)").get(0));
        soundStore = methodInstructionsByOwner(methodsBy(soundNode, "<init>", "(Ljava/lang/String;)", null, null).get(0), "sound").get(0).owner;
        final ClassNode soundStoreNode = readClassNode(soundStore);
        final MethodNode loadOggSoundtrack = methodsByDescPrefix(soundStoreNode, "(Ljava/lang/String;Ljava/io/InputStream;)").get(2);
        soundTrack = returnTypeString(loadOggSoundtrack);
        oggLoader = methodInstructionsByOwner(loadOggSoundtrack, "sound").get(1).owner;
        final ClassNode oggLoaderNode = readClassNode(oggLoader);
        soundBuffer = returnTypeString(methodsByDescPrefix(oggLoaderNode, "(Ljava/io/InputStream;)").get(0));
        final MethodNode resourceLoaderStateInit = methodsByName(resourceLoaderStateNode, "init").get(0);
        final List<MethodInsnNode> rendereresList = methodInstructionsByOwner(resourceLoaderStateInit, "com/fs/starfarer/renderers");
        atmosphereRenderer = rendereresList.get(0).owner;
        shipArrowRenderer = rendereresList.get(1).owner;
        screenshotUtil = methodInstructionsByOwner(resourceLoaderStateInit, "com/fs/starfarer/util").get(0).owner;
        impactSound = methodInstructionsByOwner(resourceLoaderStateInit, "com/fs/starfarer/combat/entities/ship").get(0).owner;
        resourceLoaderState$resourceType = argumentTypeString(methodsByName(resourceLoaderStateNode, "queueResource").get(0), 0);
        final String rules = returnTypeString(methodsBy(rulesNode, null, null, Type.OBJECT, "Lcom/fs/starfarer/campaign/rules").get(0));
        final ClassNode ruleNode = readClassNode(rules);
        expression = getGenericParametersString(Type.getReturnType(methodsByName(ruleNode, "getConditions").get(0).signature), 0);
        final String saveStream = typeString(fieldsByDescPrefix(campaignGameManagerNode, "Lcom/fs/starfarer/util").get(0));
        final ClassNode saveStreamNode = readClassNode(saveStream);
        progressBar = typeString(fieldsByDescPrefix(saveStreamNode, "Lcom/fs/starfarer/campaign/save").get(0));
        deploymentManager = typeString(fieldsByDescPrefix(baseBattleStrategyNode, "Lcom/fs/starfarer/combat/ai/admiral").get(0));
        final ClassNode deploymentManagerNode = readClassNode(deploymentManager);
        deploymentManager$ReinforcementType = getGenericParametersString(fieldsByDescPrefix(deploymentManagerNode, "Ljava/util/List<Lcom/fs/starfarer/combat/ai/admiral").get(0), 0);
        bounds = typeString(fieldsByName(shipNode, "visualBounds").get(0));
        final ClassNode boundsNode = readClassNode(bounds);
        boundsSegment = getGenericParametersString(fieldsByDescPrefix(boundsNode, "Ljava/util/List<Lcom/fs/starfarer/combat").get(0), 0);
        fileLoader = methodInstructionsByOwner(methodsByName(glLauncherNode, "loadSound").get(0), "com/fs/util").get(0).owner;
        final ClassNode fileLoaderNode = readClassNode(fileLoader);
        fileLoader$resourceLocation = getGenericParametersString(fieldsByDescPrefix(fileLoaderNode, "Ljava/util/List<Lcom/fs/util").get(0), 0);
        final ClassNode fileLoader$resourceLocationNode = readClassNode(fileLoader$resourceLocation);
        fileLoader$resourceType = typeString(fieldsByDescPrefix(fileLoader$resourceLocationNode, "Lcom/fs/util").get(0));
        hullSpecStore = methodInstructionsByOwner(methodsByName(hullVariantSpecNode, "createEmptyVariant").get(0), "com/fs/starfarer/loading").get(0).owner;
        weaponSpecStore = methodInstructionsByOwner(methodsByName(missileNode, "setWeaponSpec").get(0), "com/fs/starfarer/loading").get(0).owner;
        secureClassLoader = typeString(fieldsByDescPrefix(scriptStoreNode, "Lcom/fs/starfarer/loading/scripts").get(0));
        javaSourceFinder = methodInstructionsByOwner(methodsByDescPrefix(scriptStoreNode, "(Ljava/lang/ClassLoader;)V").get(0), "com/fs/starfarer/loading").get(0).owner;
        shipHullSpec = returnTypeString(methodsByName(shipNode, "getHullSpec").get(0));
        shutdownException = methodInstructionsBy(methodsByName(baseGameStateNode, "traverse").get(0), "com/fs/starfarer", "<init>").get(0).owner;

        TextureRepository_addTexture = "super";
        FontRepository_defineFont = "super";
        StarfarerSettings_getFloatValue = "ö00000";
        ScriptStore_getSecureClassLoader = "Object";
        ScriptStore_getScriptList = "Õ00000";
        ScriptStore_getPluginSet = "Ò00000";
        ScriptLoader_startScriptLoadingThread = "int";
        ScriptLoader_queueScript = "Object";
        SpecStore_init = "ÓO0000";
        SpecStore_loadingSoundSets = "ÖO0000";
        ResourceLocation_type = "super";
        ResourceLocation_path = "Ó00000";
        ResourceLocation_isMod = "String";
        FileLoader_locationFilter = "String";
        FileLoader_withoutMods = "super";
        FileLoader_getInstance = "Ó00000";
        FileLoader_getResourceList = "Ô00000";
        FileLoader_loadInputStreams = "new";
        FileLoader_loadInputStream = "Ó00000";
        FileLoader_loadInputStreamWithMods = "Ô00000";
        FloatingTextManager_render = "super";
        ProgressBar_setDescription = "Ò00000";
        ProgressBar_render = "o00000";
        ProgressBar_renderWithDescription = "o00000";
        TextureHandler_getTextureID = "ö00000";
        TextureHandler_getPath = "Õ00000";
        TextureHandler_setPath = "o00000";
        TextureHandler_setHeight = "Ô00000";
        TextureHandler_setWidth = "Object";
        TextureHandler_setImageHeight = "o00000";
        TextureHandler_setImageWidth = "Ò00000";
        TextureHandler_setColor1 = "o00000";
        TextureHandler_setColor0 = "Object";
        TextureHandler_setColor2 = "Ò00000";
        TextureHandler_setStringID = "Ò00000";
        DeploymentManager_pickReinforcement = "o00000";
        TextureLoader_loadTextureSynchronous = "o00000";
        SoundStore_getInstance = "ö00000";
        SoundStore_loadWav = "Ò00000";
        SoundStore_getIsInitialized = "o00000";
        OggLoader_load = "super";
        AtmosphereRenderer_init = "super";
        ScreenshotUtil_init = "Object";
        ShipArrowRenderer_init = "o00000";
        StarfarerSettings_getBooleanValue = "class";
        ImpactSound_init = "o00000";
        LoadingUtils_filesWithExtensionInDirectory = "super";
        LoadingUtils_filesWithExtensionInDirectoryAbsolute = "Õ00000";
        LoadingUtils_readStreamAsString = "super";
        LoadingUtils_readPathAsString = "super";
        LoadingUtils_getMergedSpreadsheetDataForMod = "Ò00000";
        TextureRepository_getTextureLoader = "String";
        Expression_list = "ö00000";
        Expression_map = "float";
        Tesselator_renderAsPolygon = "o00000";
        HullSpecStore_addHullSpec = "super";
        WeaponSpecStore_addWeaponSpec = "super";
        WeaponSpecStore_addProjectileSpec = "super";
        FontRenderer_renderGlyphs = "Õ00000";
        FontRenderer_refreshFontFlags = "int";
        Font_getSize = "Õ00000";
        Font_getGlyph = "oO0000";
        Font_getLineHeight = "ø00000";
        Font_getKerning = "o00000";
        Kerning_getAmount = "Ó00000";
        Glyph_getXOffset = "ö00000";
        Glyph_getYOffset = "Ò00000";
        Glyph_getXAdvance = "Ø00000";
        Glyph_getWidth = "ø00000";
        Glyph_getHeight = "ÒO0000";
        Glyph_getTexX = "int";
        Glyph_getTexY = "oO0000";
        Glyph_getTexHeight = "ô00000";
        Glyph_getTexWidth = "Ô00000";

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

    private String typeString(FieldNode field) {
        return Type.getType(field.desc).getInternalName();
    }

    private String returnTypeString(MethodNode method) {
        return Type.getReturnType(method.desc).getInternalName();
    }

    private String argumentTypeString(MethodNode method, int idx) {
        return Type.getArgumentTypes(method.desc)[idx].getInternalName();
    }

    private Type[] getGenericParameters(String signature) {
        String generic = signature.substring(signature.indexOf('<') + 1);
        generic = generic.substring(0, generic.indexOf('>'));

        // Disgiuse generic parameters as method descriptor to use existing Type functionality.
        return Type.getMethodType("(" + generic + ")V").getArgumentTypes();
    }

    private String getGenericParametersString(FieldNode field, int idx) {
        return getGenericParameters(field.signature)[idx].getInternalName();
    }

    private String getGenericParametersString(Type type, int idx) {
        return getGenericParameters(type.getDescriptor())[idx].getInternalName();
    }
}
