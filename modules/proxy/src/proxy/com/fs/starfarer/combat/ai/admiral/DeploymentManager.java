package proxy.com.fs.starfarer.combat.ai.admiral;

import proxy.com.fs.starfarer.campaign.fleet.FleetMember;

import java.util.List;

// $FF: renamed from: com.fs.starfarer.combat.ai.admiral.G
public class DeploymentManager {
    // $FF: renamed from: o00000 (com.fs.starfarer.combat.ai.admiral.G.o, float, java.util.List, java.util.List, boolean) com.fs.starfarer.campaign.fleet.FleetMember
    private FleetMember DeploymentManager_pickReinforcement(ReinforcementType reinforcementType, float deploymentPointLimit, List<FleetMember> reserves, List<FleetMember> reinforcements, boolean firstAttempt) {
        return com.genir.renderer.overrides.DeploymentManager.pickReinforcement(this, reinforcementType, deploymentPointLimit, reserves, reinforcements, firstAttempt);
    }

    public FleetMember DeploymentManager_pickReinforcement_vanilla(ReinforcementType reinforcementType, float deploymentPointLimit, List<FleetMember> reserves, List<FleetMember> reinforcements, boolean firstAttempt) {
        return null;
    }

    // $FF: renamed from: com.fs.starfarer.combat.ai.admiral.G.o
    public enum ReinforcementType {
    }
}
