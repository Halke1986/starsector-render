package com.genir.renderer.agent;

import java.io.IOException;
import java.lang.instrument.Instrumentation;
import java.nio.file.Files;
import java.nio.file.Path;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HexFormat;

import org.apache.log4j.Logger;

public final class Agent {
    public static void premain(String agentArgs, Instrumentation instrumentation) {
        Logger logger = Logger.getLogger(Agent.class);
        logger.info("Fast Rendering: v0.8.4");

        // Expected Windows Starsector 0.98a-RC8 checksum: 5dd222b9e266d2ac2d63b3dad4983eb05caaf5a247d7dfb82aaeba47ea774cc8
        String checksum = getSha256(Path.of("starfarer_obf.jar"));
        logger.info("starfarer_obf.jar SHA-256 checksum: " + checksum);

        instrumentation.addTransformer(new ClassTransformer(), false);
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
}
