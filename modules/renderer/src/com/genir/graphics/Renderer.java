package com.genir.graphics;

import org.apache.log4j.Logger;

public class Renderer {
    public static void beginLayer() {
        logger().info("beginLayer");
    }

    public static void commitLayer() {
        logger().info("commitLayer");
    }

    private static Logger logger() {
        return Logger.getLogger(com.genir.graphics.Renderer.class);
    }
}
