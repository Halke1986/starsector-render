package com.genir.renderer.loaders;

import java.io.InputStream;
import java.net.URL;
import java.security.ProtectionDomain;

public interface ClassLoaderBridge {
    InputStream superGetResourceAsStream(String name);

    URL superFindResource(String name);

    Class<?> superDefineClass(String name, byte[] b, int off, int len, ProtectionDomain protectionDomain);
}
