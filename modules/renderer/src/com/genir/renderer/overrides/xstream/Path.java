package com.genir.renderer.overrides.xstream;

import com.thoughtworks.xstream.core.util.FastStack;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Path {
    private static Map<Integer, String> chunkValueMap = new HashMap<>();
    private static Map<String, Integer> chunkIDMap = new HashMap<>();

    private final int[] chunkIDs;

    private transient String pathAsString;
    private transient String pathExplicit;
    private static final Path DOT = new Path(new String[]{"."});

    public Path(String pathAsString) {
        // String.split() too slow. StringTokenizer too crappy.
        List result = new ArrayList();
        int currentIndex = 0;
        int nextSeparator;
        this.pathAsString = pathAsString;
        while ((nextSeparator = pathAsString.indexOf('/', currentIndex)) != -1) {
            // normalize explicit paths
            result.add(normalize(pathAsString, currentIndex, nextSeparator));
            currentIndex = nextSeparator + 1;
        }
        result.add(normalize(pathAsString, currentIndex, pathAsString.length()));
        String[] arr = new String[result.size()];
        result.toArray(arr);

        this.chunkIDs = packChunks(arr);
    }

    private String normalize(String s, int start, int end) {
        if (end - start > 3
                && s.charAt(end - 3) == '['
                && s.charAt(end - 2) == '1'
                && s.charAt(end - 1) == ']') {
            this.pathAsString = null;
            return s.substring(start, end - 3);
        } else {
            return s.substring(start, end);
        }
    }

    public Path(String[] chunks) {
        this.chunkIDs = packChunks(chunks);
    }

    public String toString() {
        if (pathAsString == null) {
            StringBuffer buffer = new StringBuffer();
            for (int i = 0; i < chunkIDs.length; i++) {
                if (i > 0) buffer.append('/');
                buffer.append(getChunk(i));
            }
            pathAsString = buffer.toString();
        }
        return pathAsString;
    }

    public String explicit() {
        if (pathExplicit == null) {
            StringBuffer buffer = new StringBuffer();
            for (int i = 0; i < chunkIDs.length; i++) {
                if (i > 0) buffer.append('/');
                String chunk = getChunk(i);
                buffer.append(chunk);
                int length = chunk.length();
                if (length > 0) {
                    char c = chunk.charAt(length - 1);
                    if (c != ']' && c != '.') {
                        buffer.append("[1]");
                    }
                }
            }
            pathExplicit = buffer.toString();
        }
        return pathExplicit;
    }

    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Path)) return false;

        final Path other = (Path) o;
        if (chunkIDs.length != other.chunkIDs.length) return false;
        for (int i = 0; i < chunkIDs.length; i++) {
            if (chunkIDs[i] != other.chunkIDs[i]) return false;
        }

        return true;
    }

    public int hashCode() {
        int result = 543645643;
        for (int i = 0; i < chunkIDs.length; i++) {
            result = 29 * result + new Integer(chunkIDs[i]).hashCode();
        }
        return result;
    }

    public Path relativeTo(Path that) {
        int depthOfPathDivergence = depthOfPathDivergence(unpackChunks(chunkIDs), unpackChunks(that.chunkIDs));
        String[] result = new String[chunkIDs.length + that.chunkIDs.length - 2 * depthOfPathDivergence];
        int count = 0;

        for (int i = depthOfPathDivergence; i < chunkIDs.length; i++) {
            result[count++] = "..";
        }
        for (int j = depthOfPathDivergence; j < that.chunkIDs.length; j++) {
            result[count++] = that.getChunk(j);
        }

        if (count == 0) {
            return DOT;
        } else {
            return new Path(result);
        }
    }

    private int depthOfPathDivergence(String[] path1, String[] path2) {
        int minLength = Math.min(path1.length, path2.length);
        for (int i = 0; i < minLength; i++) {
            if (!path1[i].equals(path2[i])) {
                return i;
            }
        }
        return minLength;
    }

    public Path apply(Path relativePath) {
        FastStack absoluteStack = new FastStack(16);

        for (int i = 0; i < chunkIDs.length; i++) {
            absoluteStack.push(getChunk(i));
        }

        for (int i = 0; i < relativePath.chunkIDs.length; i++) {
            String relativeChunk = relativePath.getChunk(i);
            if (relativeChunk.equals("..")) {
                absoluteStack.pop();
            } else if (!relativeChunk.equals(".")) {
                absoluteStack.push(relativeChunk);
            }
        }

        String[] result = new String[absoluteStack.size()];
        for (int i = 0; i < result.length; i++) {
            result[i] = (String) absoluteStack.get(i);
        }

        return new Path(result);
    }

    public boolean isAncestor(Path child) {
        if (child == null || child.chunkIDs.length < chunkIDs.length) {
            return false;
        }
        for (int i = 0; i < chunkIDs.length; i++) {
            if (chunkIDs[i] != child.chunkIDs[i]) {
                return false;
            }
        }
        return true;
    }

    private static int[] packChunks(String[] chunks) {
        int[] chunkIDs = new int[chunks.length];

        for (int i = 0; i < chunks.length; i++) {
            String chunk = chunks[i];

            chunkIDs[i] = chunkIDMap.computeIfAbsent(chunk, k -> {
                chunkValueMap.put(chunkIDMap.size(), k);
                return chunkIDMap.size();
            });
        }

        return chunkIDs;
    }

    private static String[] unpackChunks(int[] chunkIDs) {
        String[] chunks = new String[chunkIDs.length];

        for (int i = 0; i < chunks.length; i++) {
            chunks[i] = chunkValueMap.get(i);
        }

        return chunks;
    }

    private String getChunk(int i) {
        return chunkValueMap.get(i);
    }
}
