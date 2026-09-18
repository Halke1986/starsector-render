package com.genir.renderer.overrides;

import com.fs.starfarer.api.Global;

import java.util.List;
import java.util.Map;

public class Expression {
    /**
     * STUB
     */
    private static final List<String> Expression_list = null;

    /**
     * STUB
     */
    private static Map<String, String> Expression_map;

    /**
     * REPLACED METHOD
     */
    public static String getCommandClass(String commandClass) {
        if (Expression_map.containsKey(commandClass)) {
            return Expression_map.get(commandClass);
        }

        for (String expression : Expression_list) {
            String name = expression + "." + commandClass;

            try {
                // Vanilla calls newInstance() for each loaded class.
                // This is not necessary and can lead to race conditions.
                // TODO Starsector fixes this in next patch.
                Global.getSettings().getScriptClassLoader().loadClass(name);
            } catch (Exception ignored) {
                continue;
            }

            Expression_map.put(commandClass, name);
            return name;
        }

        throw new RuntimeException("Command [" + commandClass + "] not found");
    }
}
