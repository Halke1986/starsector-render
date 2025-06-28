package com.genir.graphics;

import com.fs.graphics.Sprite;
import org.apache.log4j.Logger;

public class Renderer {
    public static void beginLayer() {
        logger().info("beginLayer");
    }

    public static void commitLayer() {
        logger().info("commitLayer");
    }

    public static void render(float var1, float var2, int ö00000, int ô00000, Sprite sprite) {

    }

    private static Logger logger() {
        return Logger.getLogger(com.genir.graphics.Renderer.class);
    }
}
