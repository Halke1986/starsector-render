package com.genir.renderer.loaders;

import java.io.InputStream;
import java.net.URL;
import java.security.ProtectionDomain;

public interface ClassTransformerClient {
    InputStream superGetResourceAsStream(String internalName);

    URL superFindResource(String internalName);

    Class<?> superDefineClass(String name, byte[] b, int off, int len, ProtectionDomain protectionDomain);
}
