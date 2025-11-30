package proxy.com.fs.starfarer.campaign.rules;

import java.util.List;
import java.util.Map;

// $FF: renamed from: com.fs.starfarer.campaign.rules.oOOO
public class Expression {
    // $FF: renamed from: ö00000 java.util.List
    private static final List<String> Expression_rulesPackages = null;

    // $FF: renamed from: float java.util.Map
    private static Map<String, String> Expression_commandClasses;

    // Implementation
    // **********************************************************************************************************

    // Replaced method
    public static String getCommandClass(String command) {
        return com.genir.renderer.overrides.Expression.getCommandClass(command, Expression_commandClasses, Expression_rulesPackages);
    }
}
