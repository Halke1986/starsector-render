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
