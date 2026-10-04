package com.genir.renderer.bridge.interfaces;

import com.genir.renderer.bridge.context.Context;

public interface GLCommandClient extends GLCommand {
    // Execute the client side component of GL command.
    void runClient(Context context, float[] args, int argsOffset);
}
