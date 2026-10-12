package com.genir.renderer.bridge.context;

import org.lwjgl.opengl.GL13;

public class TextureUnit {
    public static int getIndex(int activeTexture) {
        return switch (activeTexture) {
            case GL13.GL_TEXTURE0 -> 0;
            case GL13.GL_TEXTURE1 -> 1;
            case GL13.GL_TEXTURE2 -> 2;
            case GL13.GL_TEXTURE3 -> 3;
            case GL13.GL_TEXTURE4 -> 4;
            case GL13.GL_TEXTURE5 -> 5;
            case GL13.GL_TEXTURE6 -> 6;
            case GL13.GL_TEXTURE7 -> 7;
            case GL13.GL_TEXTURE8 -> 8;
            case GL13.GL_TEXTURE9 -> 9;
            case GL13.GL_TEXTURE10 -> 10;
            case GL13.GL_TEXTURE11 -> 11;
            case GL13.GL_TEXTURE12 -> 12;
            case GL13.GL_TEXTURE13 -> 13;
            case GL13.GL_TEXTURE14 -> 14;
            case GL13.GL_TEXTURE15 -> 15;
            case GL13.GL_TEXTURE16 -> 16;
            case GL13.GL_TEXTURE17 -> 17;
            case GL13.GL_TEXTURE18 -> 18;
            case GL13.GL_TEXTURE19 -> 19;
            case GL13.GL_TEXTURE20 -> 20;
            case GL13.GL_TEXTURE21 -> 21;
            case GL13.GL_TEXTURE22 -> 22;
            case GL13.GL_TEXTURE23 -> 23;
            case GL13.GL_TEXTURE24 -> 24;
            case GL13.GL_TEXTURE25 -> 25;
            case GL13.GL_TEXTURE26 -> 26;
            case GL13.GL_TEXTURE27 -> 27;
            case GL13.GL_TEXTURE28 -> 28;
            case GL13.GL_TEXTURE29 -> 29;
            case GL13.GL_TEXTURE30 -> 30;
            case GL13.GL_TEXTURE31 -> 31;

            default -> -1;
        };
    }

    public static int getEnum(int unitKey) {
        return switch (unitKey) {
            case 0 -> GL13.GL_TEXTURE0;
            case 1 -> GL13.GL_TEXTURE1;
            case 2 -> GL13.GL_TEXTURE2;
            case 3 -> GL13.GL_TEXTURE3;
            case 4 -> GL13.GL_TEXTURE4;
            case 5 -> GL13.GL_TEXTURE5;
            case 6 -> GL13.GL_TEXTURE6;
            case 7 -> GL13.GL_TEXTURE7;
            case 8 -> GL13.GL_TEXTURE8;
            case 9 -> GL13.GL_TEXTURE9;
            case 10 -> GL13.GL_TEXTURE10;
            case 11 -> GL13.GL_TEXTURE11;
            case 12 -> GL13.GL_TEXTURE12;
            case 13 -> GL13.GL_TEXTURE13;
            case 14 -> GL13.GL_TEXTURE14;
            case 15 -> GL13.GL_TEXTURE15;
            case 16 -> GL13.GL_TEXTURE16;
            case 17 -> GL13.GL_TEXTURE17;
            case 18 -> GL13.GL_TEXTURE18;
            case 19 -> GL13.GL_TEXTURE19;
            case 20 -> GL13.GL_TEXTURE20;
            case 21 -> GL13.GL_TEXTURE21;
            case 22 -> GL13.GL_TEXTURE22;
            case 23 -> GL13.GL_TEXTURE23;
            case 24 -> GL13.GL_TEXTURE24;
            case 25 -> GL13.GL_TEXTURE25;
            case 26 -> GL13.GL_TEXTURE26;
            case 27 -> GL13.GL_TEXTURE27;
            case 28 -> GL13.GL_TEXTURE28;
            case 29 -> GL13.GL_TEXTURE29;
            case 30 -> GL13.GL_TEXTURE30;
            case 31 -> GL13.GL_TEXTURE31;

            default -> -1;
        };
    }
}
