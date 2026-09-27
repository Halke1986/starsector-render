package com.genir.renderer.overrides;

import java.util.List;

/**
 * Overrides com.fs.starfarer.api.impl.combat.threat.RoilingSwarmEffect
 */
public class RoilingSwarmEffect {
    /**
     * STUB
     */
    protected List<SwarmMember> members;

    /**
     * REPLACED METHOD
     */
    public int getNumActiveMembers() {
        return members.size();
    }

    /**
     * STUB
     */
    public static class SwarmMember {
    }
}
