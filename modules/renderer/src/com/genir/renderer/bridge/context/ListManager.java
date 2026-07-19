package com.genir.renderer.bridge.context;

import com.genir.renderer.bridge.interfaces.GLCommand;
import com.genir.renderer.bridge.interfaces.Releasable;

import java.util.HashMap;
import java.util.Map;

import static com.genir.renderer.debug.Debug.asert;

public class ListManager {
    private final Context context;

    private int mode = 0;
    private Frame newList;

    private final Map<Integer, Frame> lists = new HashMap<>();
    private boolean isReplay = false;

    public ListManager(Context context) {
        this.context = context;
    }

    // NOTE:
    // https://fractalsoftworks.com/forum/index.php?topic=34104.0
    //
    // Vanilla GLListManager allocates a block of 1024 display lists (ideally) in the Starsector Launcher
    // and then continues to use them throughout the game. However, the OpenGL context is destroyed and
    // recreated between the Launcher and the main game. After that, the new context no longer has those
    // lists allocated, yet GLListManager still assumes it does.
    private static int allocatedListsNumber = 0;

    public boolean isRecording() {
        return mode != 0;
    }

    public boolean isReplaying() {
        return isReplay;
    }

    public void record(GLCommand command, float[] args, int argsOffset) {
        newList.add(command);

        int argsSize = (int) args[argsOffset];
        for (int j = argsOffset; j < argsOffset + argsSize; j++) {
            newList.args[newList.argsOffset++] = args[j];
        }

        if (mode == org.lwjgl.opengl.GL11.GL_COMPILE_AND_EXECUTE) {
            mode = 0;
            isReplay = true;
            try {
                command.run(context, args, argsOffset);
            } finally {
                mode = org.lwjgl.opengl.GL11.GL_COMPILE_AND_EXECUTE;
                isReplay = false;
            }
        }
    }

    synchronized public int glGenLists(int range) {
        int idx = allocatedListsNumber + 1;
        allocatedListsNumber += range;
        return idx;
    }

    public void glNewList(int list, int mode) {
        asert(!isRecording());
        asert(mode == org.lwjgl.opengl.GL11.GL_COMPILE || mode == org.lwjgl.opengl.GL11.GL_COMPILE_AND_EXECUTE);

        this.mode = mode;

        newList = lists.computeIfAbsent(list, k -> new Frame());

        // Release any resources allocated by the old list.
        for (int i = 0; i < newList.commandsSize; i++) {
            if (newList.commands[i] instanceof Releasable releasable) {
                releasable.release();
            }
        }

        newList.clear();
    }

    public void glEndList() {
        mode = 0;
    }

    public void glCallList(int list) {
        asert(!isRecording());
        isReplay = true;

        try {
            Frame listToCall = lists.get(list);
            if (listToCall != null) {
                float[] args = listToCall.args;
                int argsOffset = 0;

                // for-each loop over a list is a performance bottleneck, according to a profiler.
                // Simple for loop over an array is much faster.
                for (int i = 0; i < listToCall.commandsSize; i++) {
                    int argsSize = (int) args[argsOffset];
                    listToCall.commands[i].run(context, args, argsOffset);
                    argsOffset += argsSize;
                }
            }
        } finally {
            isReplay = false;
        }
    }
}
