package com.genir.renderer.bridge.context;

import com.genir.renderer.bridge.interfaces.GLCommand;
import com.genir.renderer.bridge.interfaces.GLCommandClient;
import com.genir.renderer.bridge.interfaces.Releasable;
import org.lwjgl.opengl.GL11;

import java.util.HashMap;
import java.util.Map;

import static com.genir.renderer.bridge.context.Frame.ARGS_NUM;
import static com.genir.renderer.debug.Debug.asert;

public class ListManager {
    private final Context context;
    private final Side side;

    private int mode = 0;
    private Frame newList;

    private final Map<Integer, Frame> lists = new HashMap<>();
    private boolean isReplay = false;

    public ListManager(Context context, Side side) {
        this.context = context;
        this.side = side;
    }

    // NOTE:
    // https://fractalsoftworks.com/forum/index.php?topic=34104.0
    //
    // Vanilla GLListManager allocates a block of 1024 display lists (ideally) in the Starsector Launcher
    // and then continues to use them throughout the game. However, the OpenGL context is destroyed and
    // recreated between the Launcher and the main game. After that, the new context no longer has those
    // lists allocated, yet Starsector GLListManager still assumes it does.
    private static int allocatedListsNumber = 0;

    public boolean isRecording() {
        return mode != 0;
    }

    public boolean isReplaying() {
        return isReplay;
    }

    public boolean isRecording(GLCommand command, float[] args, int argsOffset) {
        if (isRecording()) {
            record(command, args, argsOffset);
            return true;
        }

        return false;
    }

    public void record(GLCommand command, float[] args, int argsOffset) {
        if (side == Side.CLIENT) {
            asert(command instanceof GLCommandClient);
        }

        int listArgsOffset = newList.add(command);

        if (args != null) {
            newList.args[listArgsOffset + 0] = args[argsOffset + 0];
            newList.args[listArgsOffset + 1] = args[argsOffset + 1];
            newList.args[listArgsOffset + 2] = args[argsOffset + 2];
            newList.args[listArgsOffset + 3] = args[argsOffset + 3];
        }

        if (mode == GL11.GL_COMPILE_AND_EXECUTE) {
            mode = 0;
            isReplay = true;
            try {
                runCommand(command, args, argsOffset);
            } finally {
                mode = GL11.GL_COMPILE_AND_EXECUTE;
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
        asert(mode == GL11.GL_COMPILE || mode == GL11.GL_COMPILE_AND_EXECUTE);

        this.mode = mode;

        newList = lists.computeIfAbsent(list, k -> new Frame());

        // Release any resources allocated by the old list. Perform the release
        // only on the server thread, as it runs last, after both client and
        // server side command execution.
        if (side == Side.SERVER) {
            for (int i = 0; i < newList.commandsSize; i++) {
                if (newList.commands[i] instanceof Releasable releasable) {
                    releasable.release();
                }
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

                // for-each loop over a list is a performance bottleneck, according to a profiler.
                // Simple for loop over an array is much faster.
                for (int i = 0; i < listToCall.commandsSize; i++) {
                    runCommand(listToCall.commands[i], args, i * ARGS_NUM);
                }
            }
        } finally {
            isReplay = false;
        }
    }

    private void runCommand(GLCommand command, float[] args, int argsOffset) {
        switch (side) {
            case SERVER:
                command.run(context, args, argsOffset);
                break;
            case CLIENT:
                ((GLCommandClient) command).runClient(context, args, argsOffset);
                break;
        }
    }

    public enum Side {
        SERVER,
        CLIENT
    }
}
