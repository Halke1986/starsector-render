package com.genir.renderer.overrides;

public class ResourceLoadingState {
    public static void loadResource(String type, String path) {
        switch (type) {
            case "TEXTURE":
            case "TEXTURE_OPTIONAL":
            case "TEXTURE_ALPHA_ADDER":
                FileRepository.queueImage(path);
                break;
            case "SOUND":
                FileRepository.queueSound(path);
        }
    }
}
