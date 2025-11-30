package com.genir.renderer.overrides;

import com.fs.starfarer.api.Global;

import java.util.List;
import java.util.Map;

public class Expression {
    public static String getCommandClass(String command, Map<String, String> commandClasses, List<String> rulesPackages) {
        if (commandClasses.containsKey(command)) {
            return commandClasses.get(command);
        }

        StringBuilder searchedPackages = new StringBuilder();
        for (String pkg : rulesPackages) {
            searchedPackages.append(pkg).append("\n");

            String name = pkg + "." + command;

            try {
                Class.forName(name, false, Global.getSettings().getScriptClassLoader().getParent()).newInstance();
            } catch (Exception var6) {
                continue;
            }

            commandClasses.put(command, name);

            return name;
        }

        throw new RuntimeException("Command [" + command + "] not found in packages:\n" + searchedPackages);
    }
}
