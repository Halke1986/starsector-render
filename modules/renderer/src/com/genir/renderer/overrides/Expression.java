package com.genir.renderer.overrides;

import com.fs.starfarer.api.Global;
import com.genir.renderer.overrides.loading.ResourceLoader;

import java.util.List;
import java.util.Map;

public class Expression {
    public static String getCommandClass(String command, Map<String, String> commandClasses, List<String> rulesPackages) {
        if (commandClasses.containsKey(command)) {
            return commandClasses.get(command);
        }

        ClassLoader loader = Global.getSettings().getScriptClassLoader().getParent();

        StringBuilder searchedPackages = new StringBuilder();
        for (String pkg : rulesPackages) {
            searchedPackages.append(pkg).append("\n");

            String name = pkg + "." + command;

            try {
                Class<?> c = loader.loadClass(name);
                if (ResourceLoader.loadingCompleted) {
                    c.newInstance();
                } else {
                    // Postpone modded constructor call until
                    // multithreaded resource loading is complete.
                    // Otherwise, the call may cause race conditions.
                    ResourceLoader.commandsToInitialize.add(c);
                }
            } catch (Exception var6) {
                continue;
            }

            commandClasses.put(command, name);

            return name;
        }

        throw new RuntimeException("Command [" + command + "] not found in packages:\n" + searchedPackages);
    }
}
