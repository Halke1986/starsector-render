package com.genir.renderer.overrides;

import proxy.com.fs.starfarer.campaign.fleet.FleetMember;

import java.util.List;

public class DeploymentManager {
    public static FleetMember pickReinforcement(
            proxy.com.fs.starfarer.combat.ai.admiral.DeploymentManager instance,
            proxy.com.fs.starfarer.combat.ai.admiral.DeploymentManager.ReinforcementType reinforcementType,
            float deploymentPointLimit,
            List<FleetMember> reserves,
            List<FleetMember> reinforcements,
            boolean firstAttempt
    ) {
        return instance.DeploymentManager_pickReinforcement_vanilla(reinforcementType, deploymentPointLimit, reserves, reinforcements, firstAttempt);
    }
}
