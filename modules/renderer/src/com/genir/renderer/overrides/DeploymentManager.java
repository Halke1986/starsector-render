package com.genir.renderer.overrides;

import com.fs.starfarer.api.fleet.FleetMemberAPI;
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
        FleetMember vanillaPick = instance.DeploymentManager_pickReinforcement_vanilla(
                reinforcementType, deploymentPointLimit, reserves, reinforcements, firstAttempt);

        if (vanillaPick == null) {
            return null;
        }

        boolean pickCivilian = ((FleetMemberAPI) vanillaPick).isCivilian();

        FleetMember pick = null;
        int pickHash = 0;

        for (FleetMember fm : reserves) {
            FleetMemberAPI fmAPI = (FleetMemberAPI) fm;

            if (fmAPI.isCivilian() != pickCivilian) {
                continue;
            }

            int hash = intHash(fm.hashCode());
            if (pick == null || hash > pickHash) {
                pick = fm;
                pickHash = hash;
            }
        }

        return pick;
    }

    // 32-bit integer -> 32-bit integer hash (good avalanche; deterministic)
    private static int intHash(int x) {
        x ^= x >>> 16;
        x *= 0x7feb352d;
        x ^= x >>> 15;
        x *= 0x846ca68b;
        x ^= x >>> 16;
        return x;
    }
}
