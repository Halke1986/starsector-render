package com.genir.renderer.bridge.context;

import com.genir.renderer.bridge.context.commands.GLCommand;

import java.util.HashMap;
import java.util.Map;

import static com.genir.renderer.debug.Debug.asert;

public class ListManager {
    private final Context context;

    private int mode = 0;
    private int newListID;
    private Frame newList;
    private final Pool framePool = new Pool();

    private final Map<Integer, Frame> lists = new HashMap<>();

    private final int[] commandArgs = new int[16];

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

    public void record(GLCommand command, int[] args, int argsSize) {
        newList.add(command);

        newList.ensureAuxDataCapacity(argsSize + 1);
        newList.args[newList.argsOffset++] = argsSize;
        for (int j = 0; j < argsSize; j++) {
            newList.args[newList.argsOffset++] = args[j];
        }

        if (mode == org.lwjgl.opengl.GL11.GL_COMPILE_AND_EXECUTE) {
            mode = 0;
            command.run(context, args);
            mode = org.lwjgl.opengl.GL11.GL_COMPILE_AND_EXECUTE;
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

        this.newListID = list;
        this.mode = mode;

        newList = (Frame) framePool.get();
        if (newList == null) {
            newList = new Frame();
        }
    }

    public void glEndList() {
        Frame oldList = lists.get(newListID);
        if (oldList != null) {
            oldList.clear();
            framePool.put(oldList);
        }

        lists.put(newListID, newList);

        mode = 0;
    }

    public void glCallList(int list) {
        asert(!isRecording());

        Frame listToCall = lists.get(list);
        if (listToCall != null) {
            int[] args = listToCall.args;
            int argsOffset = 0;

            // for-each loop over a list is a performance bottleneck, according to a profiler.
            // Simple for loop over an array is much faster.
            for (int i = 0; i < listToCall.size; i++) {

                // Copy command arguments.
                int argsSize = args[argsOffset++];
                for (int j = 0; j < argsSize; j++) {
                    commandArgs[j] = args[argsOffset++];
                }

                listToCall.commands[i].run(context, commandArgs);
            }
        }
    }
}
