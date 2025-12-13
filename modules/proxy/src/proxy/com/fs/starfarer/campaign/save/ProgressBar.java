package proxy.com.fs.starfarer.campaign.save;

// $FF: renamed from: com.fs.starfarer.campaign.save.B
public class ProgressBar {
    // $FF: renamed from: Ò00000 (java.lang.String) void
    public void ProgressBar_setDescription(String description) {
    }

    // $FF: renamed from: o00000 (float) void
    public void ProgressBar_render(float progress) {
    }

    // CHANGED METHODS -------------------------------------------------------

    // $FF: renamed from: o00000 (java.lang.String, float) void
    public void ProgressBar_renderWithDescription(String description, float progress) {
        com.genir.renderer.overrides.ProgressBar.renderBackground(this);

        ProgressBar_setDescription(description);
        ProgressBar_render(progress);
    }
    //.method public ProgressBar_renderWithDescription : (Ljava/lang/String;F)V
    //    .code stack 2 locals 3
    //L0:     aload_0
    //L1:     invokestatic Method com/genir/renderer/overrides/ProgressBar renderBackground (Lproxy/com/fs/starfarer/campaign/save/ProgressBar;)V
    //L4:     aload_0
    //L5:     aload_1
    //L6:     invokevirtual Method proxy/com/fs/starfarer/campaign/save/ProgressBar ProgressBar_setDescription (Ljava/lang/String;)V
    //L9:     aload_0
    //L10:    fload_2
    //L11:    invokevirtual Method proxy/com/fs/starfarer/campaign/save/ProgressBar ProgressBar_render (F)V
    //L14:    return
    //L15:
    //        .linenumbertable
    //            L0 17
    //            L4 19
    //            L9 20
    //            L14 21
    //        .end linenumbertable
    //        .localvariabletable
    //            0 is this Lproxy/com/fs/starfarer/campaign/save/ProgressBar; from L0 to L15
    //            1 is description Ljava/lang/String; from L0 to L15
    //            2 is progress F from L0 to L15
    //        .end localvariabletable
    //    .end code
    //.end method
}
