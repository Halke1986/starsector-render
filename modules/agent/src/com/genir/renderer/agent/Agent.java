package com.genir.renderer.agent;

import org.apache.log4j.Logger;

import java.io.IOException;
import java.lang.instrument.ClassFileTransformer;
import java.lang.instrument.Instrumentation;
import java.nio.file.Files;
import java.nio.file.Path;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HexFormat;

public final class Agent {
    public static void premain(String agentArgs, Instrumentation instrumentation) {
        Logger logger = Logger.getLogger(Agent.class);
        logger.info("Fast Rendering: v0.8.10rc3");

        // Expected Windows Starsector 0.98a-RC8 checksum: 5dd222b9e266d2ac2d63b3dad4983eb05caaf5a247d7dfb82aaeba47ea774cc8
        String checksum = getSha256(Path.of("starfarer_obf.jar"));
        logger.info("starfarer_obf.jar SHA-256 checksum: " + checksum);

        loadBytecodeTransformer();

        // Apply constant transforms before bytecode changes so that target and donor bytecode use compatible constants.
        // Donor bytecode is not loaded here, so its constants must be transformed by its respective loader.
        // Transforming constants after bytecode changes could also cause unintended replacement of OpenGL calls in donor bytecode.
        instrumentation.addTransformer(new com.genir.renderer.agent.constants.Transformer(), false);

        instrumentation.addTransformer(loadBytecodeTransformer(), false);
    }

    public static String getSha256(Path path) {
        try {
            byte[] bytes = Files.readAllBytes(path);

            MessageDigest digest = MessageDigest.getInstance("SHA-256");
            digest.update(bytes, 0, bytes.length);

            return HexFormat.of().formatHex(digest.digest());
        } catch (IOException | NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }

    private static ClassFileTransformer loadBytecodeTransformer() {
        try {
            ClassLoader embeddedLoader = new EmbeddedJarClassLoader(
                    Agent.class.getClassLoader(),
                    "asm-9.1.jar"
            );

            Class<?> transformerClass = embeddedLoader.loadClass("com.genir.renderer.agent.bytecode.Transformer");
            Object transformer = transformerClass.newInstance();

            return (ClassFileTransformer) transformer;
        } catch (Throwable t) {
            throw new RuntimeException(t);
        }
    }
}
