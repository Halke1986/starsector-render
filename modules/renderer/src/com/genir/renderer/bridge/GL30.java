package com.genir.renderer.bridge;


import java.nio.IntBuffer;

import static com.genir.renderer.bridge.impl.Bridge.exec;

public class GL30 {
    public static void glGenerateMipmap(int target) {
        exec.execute(() -> org.lwjgl.opengl.GL30.glGenerateMipmap(target));
    }

    public static void glGenRenderbuffers(IntBuffer renderbuffers) {
        exec.wait(() -> org.lwjgl.opengl.GL30.glGenRenderbuffers(renderbuffers));
    }

    public static int glGenRenderbuffers() {
        return exec.get(() -> org.lwjgl.opengl.GL30.glGenRenderbuffers());
    }

    public static void glBindRenderbuffer(int target, int renderbuffer) {
        exec.execute(() -> org.lwjgl.opengl.GL30.glBindRenderbuffer(target, renderbuffer));
    }

    public static void glRenderbufferStorage(int target, int internalformat, int width, int height) {
        exec.execute(() -> org.lwjgl.opengl.GL30.glRenderbufferStorage(target, internalformat, width, height));
    }

    public static int glGenFramebuffers() {
        return exec.get(() -> org.lwjgl.opengl.GL30.glGenFramebuffers());
    }

    public static void glBindFramebuffer(int target, int framebuffer) {
        exec.execute(() -> org.lwjgl.opengl.GL30.glBindFramebuffer(target, framebuffer));
    }

    public static void glDeleteFramebuffers(int framebuffer) {
        exec.execute(() -> org.lwjgl.opengl.GL30.glDeleteFramebuffers(framebuffer));
    }

    public static void glFramebufferTexture2D(int target, int attachment, int textarget, int texture, int level) {
        exec.execute(() -> org.lwjgl.opengl.GL30.glFramebufferTexture2D(target, attachment, textarget, texture, level));
    }

    public static void glFramebufferRenderbuffer(int target, int attachment, int renderbuffertarget, int renderbuffer) {
        exec.execute(() -> org.lwjgl.opengl.GL30.glFramebufferRenderbuffer(target, attachment, renderbuffertarget, renderbuffer));
    }

    public static int glCheckFramebufferStatus(int target) {
        return exec.get(() -> org.lwjgl.opengl.GL30.glCheckFramebufferStatus(target));
    }
}
