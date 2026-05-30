package proxy.com.fs.starfarer.api.impl.combat.threat;

import java.util.List;

public class RoilingSwarmEffect {
    protected List<SwarmMember> members;

    // CHANGED METHODS -------------------------------------------------------

    public int getNumActiveMembers() {
        return members.size();
    }
    //.method public getNumActiveMembers : ()I
    //    .code stack 1 locals 1
    //L0:     aload_0
    //L1:     getfield Field com/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect members Ljava/util/List;
    //L4:     invokeinterface InterfaceMethod java/util/List size ()I 1
    //L9:     ireturn
    //L10:
    //        .linenumbertable
    //            L0 11
    //        .end linenumbertable
    //        .localvariabletable
    //            0 is this Lcom/fs/starfarer/api/impl/combat/threat/RoilingSwarmEffect; from L0 to L10
    //        .end localvariabletable
    //    .end code
    //.end method

    public static class SwarmMember {
    }
}
