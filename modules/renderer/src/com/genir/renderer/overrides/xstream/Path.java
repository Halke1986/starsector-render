package com.genir.renderer.overrides.xstream;

import com.thoughtworks.xstream.core.util.FastStack;

import java.util.ArrayList;
import java.util.List;

public class Path {
    private transient String pathAsString;
    private transient String pathExplicit;
    private static final Path DOT = new Path(new String[]{"."});

    private final PathNode node;

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

        this.node = PathNode.attachNode(arr);
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
        this.node = PathNode.attachNode(chunks);
    }

    public String toString() {
        if (pathAsString == null) {
            StringBuffer buffer = new StringBuffer();
            String[] chunks = node.getChunks();
            for (int i = 0; i < chunks.length; i++) {
                if (i > 0) buffer.append('/');
                buffer.append(chunks[i]);
            }
            pathAsString = buffer.toString();
        }
        return pathAsString;
    }

    public String explicit() {
        if (pathExplicit == null) {
            StringBuffer buffer = new StringBuffer();
            String[] chunks = node.getChunks();
            for (int i = 0; i < chunks.length; i++) {
                if (i > 0) buffer.append('/');
                String chunk = chunks[i];
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
        if (node.getDepth() != other.node.getDepth()) return false;

        String[] chunks = node.getChunks();
        String[] otherChunks = other.node.getChunks();

        for (int i = 0; i < chunks.length; i++) {
            if (!chunks[i].equals(otherChunks[i])) return false;
        }

        return true;
    }

    public int hashCode() {
        int result = 543645643;
        String[] chunks = node.getChunks();
        for (int i = 0; i < chunks.length; i++) {
            result = 29 * result + new Integer(chunks[i]).hashCode();
        }
        return result;
    }

    public Path relativeTo(Path that) {
        String[] chunks = node.getChunks();
        String[] thatChunks = that.node.getChunks();

        int depthOfPathDivergence = depthOfPathDivergence(chunks, thatChunks);
        String[] result = new String[chunks.length + thatChunks.length - 2 * depthOfPathDivergence];
        int count = 0;

        for (int i = depthOfPathDivergence; i < chunks.length; i++) {
            result[count++] = "..";
        }
        for (int j = depthOfPathDivergence; j < thatChunks.length; j++) {
            result[count++] = thatChunks[j];
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

        String[] chunks = node.getChunks();
        String[] relativeChunks = relativePath.node.getChunks();

        for (int i = 0; i < chunks.length; i++) {
            absoluteStack.push(chunks[i]);
        }

        for (int i = 0; i < relativeChunks.length; i++) {
            String relativeChunk = relativeChunks[i];
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
        if (child == null || child.node.getDepth() < node.getDepth()) {
            return false;
        }

        String[] chunks = node.getChunks();
        String[] childChunks = child.node.getChunks();

        for (int i = 0; i < chunks.length; i++) {
            if (!chunks[i].equals(childChunks[i])) {
                return false;
            }
        }
        return true;
    }
}
