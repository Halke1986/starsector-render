package com.genir.renderer.overrides;

import com.fs.starfarer.api.fleet.FleetMemberAPI;
import com.fs.starfarer.campaign.fleet.FleetMember;

import java.util.List;

import static com.genir.renderer.Noop.breakpoint;

/**
 * Fixed a vanilla bug where enemy ships were deployed progressively from smallest to largest.
 * Enemy fleets now maintain a balanced composition throughout the entire battle.
 * <p>
 * TODO remove in next patch, where vanilla is supposed to fix the issue as well.
 */
public class DeploymentManager {
    /**
     * STUB
     */
    public FleetMember pickReinforcement_vanilla(
            ReinforcementType reinforcementType,
            float deploymentPointLimit,
            List<FleetMember> reserves,
            List<FleetMember> reinforcements,
            boolean firstAttempt
    ) {
        return null;
    }

    /**
     * REPLACED METHOD
     */
    public FleetMember DeploymentManager_pickReinforcement(
            ReinforcementType reinforcementType,
            float deploymentPointLimit,
            List<FleetMember> reserves,
            List<FleetMember> reinforcements,
            boolean firstAttempt
    ) {
        breakpoint();

        FleetMember vanillaPick = pickReinforcement_vanilla(
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

    /**
     * ADDED METHOD
     */
    private int intHash(int x) {
        // 32-bit integer -> 32-bit integer hash (good avalanche; deterministic)
        x ^= x >>> 16;
        x *= 0x7feb352d;
        x ^= x >>> 15;
        x *= 0x846ca68b;
        x ^= x >>> 16;
        return x;
    }

    /**
     * STUB
     */
    public enum ReinforcementType {
    }
}
