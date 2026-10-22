package com.genir.renderer.overrides.render.font;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

public class Cache {
    private final Map<TextParams, Entry> fullCache = new HashMap<>();

    private Entry[] lastUsedArray = new Entry[1];
    private int usedThisFrame = 0;
    private int usedArraySize = 0;

    public Entry findEntry(TextParams params) {
        Entry entry = findEntryInternal(params);
        markEntry(entry);

        return entry;
    }

    // Group entries used this frame at the beginning of lastUsedArray.
    private void markEntry(Entry entry) {
        // Entry was already used this frame.
        if (entry.lastUsedIdx < usedThisFrame) {
            return;
        }

        // Append a new entry at the last position.
        if (entry.lastUsedIdx == Integer.MAX_VALUE) {
            if (lastUsedArray.length <= usedArraySize) {
                lastUsedArray = Arrays.copyOf(lastUsedArray, lastUsedArray.length * 2);
            }

            lastUsedArray[usedArraySize] = entry;
            entry.lastUsedIdx = usedArraySize;

            usedArraySize++;
        }

        // Already correctly positioned.
        if (entry.lastUsedIdx == usedThisFrame) {
            usedThisFrame++;
            return;
        }

        // Put the used entry in the place of the first unused entry.
        Entry prevEntry = lastUsedArray[usedThisFrame];
        lastUsedArray[usedThisFrame] = entry;
        lastUsedArray[entry.lastUsedIdx] = prevEntry;

        prevEntry.lastUsedIdx = entry.lastUsedIdx;
        entry.lastUsedIdx = usedThisFrame;

        usedThisFrame++;
    }

    private Entry findEntryInternal(TextParams params) {
        Entry mapEntry = fullCache.get(params);
        if (mapEntry != null) {
            return mapEntry;
        }

        // Create a new entry.
        Entry newEntry = new Entry();
        newEntry.params = params.clone();
        fullCache.put(newEntry.params, newEntry);

        return newEntry;
    }

    // Drop entries not used this frame.
    public void update() {
        for (int i = usedThisFrame; i < usedArraySize; i++) {
            fullCache.remove(lastUsedArray[i].params);
            lastUsedArray[i] = null;
        }

        usedArraySize = usedThisFrame;
        usedThisFrame = 0;
    }

    public static class Entry {
        TextParams params = null;
        TextGeometry geometry = null;

        int lastUsedIdx = Integer.MAX_VALUE;
    }
}
