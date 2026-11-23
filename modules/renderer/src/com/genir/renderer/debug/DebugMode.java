package com.genir.renderer.debug;

import java.util.ArrayList;
import java.util.List;

public class DebugMode {
    // Force rendering calls onto client thread.
    public static final boolean singleThread = false;

    public static final List<Runnable> deferredAsyncTasks = new ArrayList<>();
}
