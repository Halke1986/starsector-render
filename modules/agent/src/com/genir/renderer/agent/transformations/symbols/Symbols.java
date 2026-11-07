package com.genir.renderer.agent.transformations.symbols;

import com.genir.renderer.agent.ClassName;
import org.objectweb.asm.ClassReader;
import org.objectweb.asm.Type;
import org.objectweb.asm.tree.*;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

public class Symbols {
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
    public final MethodNode ScriptStore_getScriptList;
    public final MethodNode ScriptStore_getPluginSet;
    public final MethodNode ScriptStore_startScriptLoadingThread;
    public final MethodNode ScriptStore_queueScript;
    public final MethodNode SpecStore_init;
    public final MethodNode SpecStore_loadingSoundSets;
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
    public final String ResourceLocation_type;
    public final String ResourceLocation_path;
    public final String ResourceLocation_isMod;
    public final String Expression_list;
    public final String Expression_map;
    public final String FileLoader_locationFilter;
    public final String FileLoader_withoutMods;

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
        final ClassNode starfarerSettingsNode = readClassNode("com/fs/starfarer/settings/StarfarerSettings");
        final ClassNode specStoreNode = readClassNode("com/fs/starfarer/loading/SpecStore");
        final ClassNode loadingUtilsNode = readClassNode("com/fs/starfarer/loading/LoadingUtils");
        final ClassNode tesselatorNode = readClassNode("com/fs/starfarer/util/Tesselator");

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

        TextureRepository_addTexture = methodList(TextureRepository).byDesc("(Ljava/lang/String;L" + TextureHandler.name + ";)V").get();
        TextureRepository_getTextureLoader = methodList(TextureRepository).byDesc("()L" + textureLoaderNode.name).get();
        FontRepository_defineFont = methodList(FontRepository).byDesc("(Ljava/lang/String;Ljava/lang/String;)V").get();
        StarfarerSettings_getFloatValue = methodList(starfarerSettingsNode).byDesc("(Ljava/lang/String;)F").byInstructionOwner("java/util/Map").get();
        StarfarerSettings_getBooleanValue = methodList(starfarerSettingsNode).byDesc("(Ljava/lang/String;)Z").byInstructionOwner("java/util/Map").get();
        ScriptStore_getScriptList = methodList(scriptStoreNode).bySignature("()Ljava/util/List<Ljava/lang/String;>;").get();
        ScriptStore_getPluginSet = methodList(scriptStoreNode).bySignature("()Ljava/util/Set<Ljava/lang/String;>;").get();
        ScriptStore_startScriptLoadingThread = methodList(scriptStoreNode).byDesc("()V").byInstructionOwner("java/lang/Thread").byInstructionOwner("com/fs/starfarer/loading/scripts").get();
        ScriptStore_queueScript = methodList(scriptStoreNode).byDesc("(Ljava/lang/String;)V").get();
        SpecStore_init = methodList(specStoreNode).byDesc("(Lcom/fs/starfarer/loading/ResourceLoaderState;)V").byInstructionOwner("com/fs/starfarer/campaign/rules/Rules").get();
        final ClassNode soundSpecNode = fieldList(missileNode).byName("explosionSound").getTypeClass();
        SpecStore_loadingSoundSets = methodList(specStoreNode).byInstructionOwner(soundSpecNode.name).get();
        FileLoader_getInstance = methodList(FileLoader).byDesc("()Lcom/fs/util").get();
        FileLoader_getResourceList = methodList(FileLoader).bySignature("()Ljava/util/List<Lcom/fs/util").get();
        FileLoader_loadInputStreams = methodList(FileLoader).bySignature("(Ljava/lang/String;)Ljava/util/List<Lcom/fs/util/container/Pair<Lcom/fs/util").get();
        FileLoader_loadInputStream = methodList(FileLoader).byDesc("(Ljava/lang/String;Z)Ljava/io/InputStream;").get();
        FileLoader_loadInputStreamWithMods = methodList(FileLoader).byDesc("(Ljava/lang/String;)Ljava/io/InputStream;").get();
        FloatingTextManager_render = methodList(FloatingTextManager).byDesc("(F)V").byNotInstructionName("remove").get();
        ProgressBar_setDescription = methodList(ProgressBar).byDesc("(Ljava/lang/String;)V").byNotName("<init>").get(1);
        ProgressBar_render = methodList(ProgressBar).byDesc("(F)V").get();
        ProgressBar_renderWithDescription = methodList(ProgressBar).byDesc("(Ljava/lang/String;F)V").get();
        TextureHandler_getTextureID = methodList(TextureHandler).byDesc("()I").get(2);
        TextureHandler_getPath = methodList(TextureHandler).byDesc("()Ljava/lang/String;").get(1);
        TextureHandler_setStringID = methodList(TextureHandler).byDesc("(Ljava/lang/String;)V").get(0);
        TextureHandler_setPath = methodList(TextureHandler).byDesc("(Ljava/lang/String;)V").get(1);
        TextureHandler_setImageHeight = methodList(TextureHandler).byDesc("(I)V").get(0);
        TextureHandler_setImageWidth = methodList(TextureHandler).byDesc("(I)V").get(1);
        TextureHandler_setHeight = methodList(TextureHandler).byDesc("(I)V").get(2);
        TextureHandler_setWidth = methodList(TextureHandler).byDesc("(I)V").get(3);
        TextureHandler_setColor1 = methodList(TextureHandler).byDesc("(Ljava/awt/Color;)V").get(0);
        TextureHandler_setColor0 = methodList(TextureHandler).byDesc("(Ljava/awt/Color;)V").get(1);
        TextureHandler_setColor2 = methodList(TextureHandler).byDesc("(Ljava/awt/Color;)V").get(2);
        DeploymentManager_pickReinforcement = methodList(DeploymentManager).byDesc("(L" + DeploymentManager$ReinforcementType.name + ";FLjava/util/List;Ljava/util/List;Z)Lcom/fs/starfarer/campaign/fleet/FleetMember;").get();
        TextureLoader_loadTextureSynchronous = methodList(textureLoaderNode).byDesc("(L" + TextureHandler.name + ";Ljava/lang/String;IIIIZ)L" + TextureHandler.name + ";").get();
        SoundStore_getInstance = methodList(SoundStore).byDesc("()Lsound").get();
        SoundStore_loadWav = methodList(SoundStore).byDesc("(Ljava/lang/String;Ljava/io/InputStream;)Lsound").get(1);
        SoundStore_getIsInitialized = methodList(SoundStore).byDesc("()Z").get(2);
        OggLoader_load = methodList(OggLoader).byDesc("(Ljava/io/InputStream;)Lsound").get();
        AtmosphereRenderer_init = methodList(AtmosphereRenderer).byDesc("()V").byNotName("<init>").get();
        ScreenshotUtil_init = methodList(ScreenshotUtil).byDesc("()V").byInstructionOwner("com/fs/starfarer/settings/StarfarerSettings").byNotInstructionOwner("org/lwjgl/opengl/GL11").get();
        ShipArrowRenderer_init = methodList(ShipArrowRenderer).byDesc("()V").byNotName("<init>", "<clinit>").get();
        ImpactSound_init = methodList(ImpactSound).byDesc("()V").byNotName("<init>", "<clinit>").get();
        LoadingUtils_readStreamAsString = methodList(loadingUtilsNode).byDesc("(Ljava/io/InputStream;)Ljava/lang/String;").byInstructionOwner("java/lang/StringBuffer").get();
        LoadingUtils_filesWithExtensionInDirectory = methodList(loadingUtilsNode).bySignature("(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List<Ljava/lang/String;>;").byIsCalled(specStoreNode).get();
        LoadingUtils_filesWithExtensionInDirectoryAbsolute = methodList(loadingUtilsNode).bySignature("(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List<Ljava/lang/String;>;").byIsCalled(scriptStoreNode).get();
        LoadingUtils_readPathAsString = methodList(loadingUtilsNode).byDesc("(Ljava/lang/String;)Ljava/lang/String;").byNotInstructionOwner("java/lang/String").get();
        LoadingUtils_getMergedSpreadsheetDataForMod = methodList(loadingUtilsNode).byDesc("(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;").get();//Ò00000";
        Tesselator_renderAsPolygon = methodList(tesselatorNode).byDesc("(L" + Bounds.name + ";FFF)V").get();//o00000";
        HullSpecStore_addHullSpec = methodList(HullSpecStore).byDesc("(Ljava/lang/String;L" + ShipHullSpec.name + ";)V").get();//super";
        WeaponSpecStore_addWeaponSpec = methodList(WeaponSpecStore).byDesc("(Ljava/lang/String;Lcom/fs/starfarer/loading/specs/BaseWeaponSpec;)V").get();//super";
        WeaponSpecStore_addProjectileSpec = methodList(WeaponSpecStore).byDesc("(Ljava/lang/String;Ljava/lang/Object;)V").get();//super";
        final MethodNode FontRenderer_renderGlyphsOuter = methodList(FontRenderer).byDesc("(FFZ)V").get();
        final MethodNode FontRenderer_setFontSize = methodList(FontRenderer).byDesc("(L" + Font.name + ";)V").byNotName("<init>").get();
        final MethodNode FontRenderer_renderGlyphWithOutline = methodList(FontRenderer).byDesc("(FFL" + Glyph.name + ";FZ)V").get();
        FontRenderer_renderGlyphs = methodList(FontRenderer).byDesc("(Z)V").byIsCalled(FontRenderer_renderGlyphsOuter).get();//Õ00000";
        FontRenderer_refreshFontFlags = methodList(FontRenderer).byDesc("()V").byIsCalled(FontRenderer_renderGlyphs).get();//int";
        final MethodNode createActivationCodeUI = methodList(glLauncherNode).byName("createActivationCodeUI").get();
        Font_getSize = methodList(Font).byDesc("()I").byIsCalled(FontRenderer_setFontSize).get();//Õ00000";
        Font_getGlyph = methodList(Font).byDesc("(I)L" + Glyph.name + ";").get();//oO0000";
        Font_getLineHeight = methodList(Font).byDesc("()I").byIsCalled(createActivationCodeUI).get();//ø00000";
        Font_getKerning = methodList(Font).byDesc("(II)L" + Kerning.name + ";").get();//o00000";
        Kerning_getAmount = methodList(Kerning).byDesc("()I").byIsCalled(FontRenderer_renderGlyphs).get();//Ó00000";
        Glyph_getXOffset = methodList(Glyph).byDesc("()I").byIsCalled(FontRenderer_renderGlyphs).get(1);//ö00000";
        Glyph_getYOffset = methodList(Glyph).byDesc("()I").byIsCalled(FontRenderer_renderGlyphWithOutline).get(2);//Ò00000";
        Glyph_getWidth = methodList(Glyph).byDesc("()I").byIsCalled(FontRenderer_renderGlyphWithOutline).get(1);//ø00000";
        Glyph_getHeight = methodList(Glyph).byDesc("()I").byIsCalled(FontRenderer_renderGlyphWithOutline).get(0);//ÒO0000";
        Glyph_getXAdvance = methodList(Glyph).byDesc("()I").byIsCalled(FontRenderer_renderGlyphs).get(0);//Ø00000";
        Glyph_getTexX = methodList(Glyph).byDesc("()F").byIsCalled(FontRenderer_renderGlyphWithOutline).get(2);//int";
        Glyph_getTexY = methodList(Glyph).byDesc("()F").byIsCalled(FontRenderer_renderGlyphWithOutline).get(3);//oO0000";
        Glyph_getTexHeight = methodList(Glyph).byDesc("()F").byIsCalled(FontRenderer_renderGlyphWithOutline).get(0);//ô00000";
        Glyph_getTexWidth = methodList(Glyph).byDesc("()F").byIsCalled(FontRenderer_renderGlyphWithOutline).get(1);//Ô00000";

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
        ResourceLocation_type = "super";
        ResourceLocation_path = "Ó00000";
        ResourceLocation_isMod = "String";
        FileLoader_locationFilter = "String"; // field
        FileLoader_withoutMods = "super"; // field
        Expression_list = "ö00000";
        Expression_map = "float";
    }

    private static ClassNode readClassNode(String className) {
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

    private FieldList fieldList(ClassNode classNode) {
        return new FieldList(classNode);
    }

    private static class FieldList {
        final ClassNode classNode;
        List<FieldNode> fields;

        FieldList(ClassNode classNode) {
            this.classNode = classNode;
            this.fields = classNode.fields;
        }

        FieldList byName(String name) {
            List<FieldNode> filtered = new ArrayList<>();
            for (FieldNode field : fields) {
                if (field.name.equals(name)) {
                    filtered.add(field);
                }
            }

            fields = filtered;
            return this;
        }

        FieldNode get() {
            if (fields.isEmpty()) {
                throw new RuntimeException("Field not found");
            }

            if (fields.size() > 1) {
                throw new RuntimeException("Ambiguous fields found");
            }

            return fields.get(0);
        }

        ClassNode getTypeClass() {
            return readClassNode(Type.getType(get().desc).getInternalName());
        }
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

            Type returnType = Type.getReturnType(method.desc);
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

    private MethodList methodList(ClassNode classNode) {
        return new MethodList(classNode);
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
