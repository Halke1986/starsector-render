package com.genir.renderer.bridge;

import com.genir.renderer.bridge.context.Context;

import java.util.concurrent.Future;

public record GLSync(Future<org.lwjgl.opengl.GLSync> future, Context context) {
}
