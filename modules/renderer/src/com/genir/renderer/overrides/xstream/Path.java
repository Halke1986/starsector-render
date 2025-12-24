package com.genir.renderer.overrides.xstream;

import com.thoughtworks.xstream.core.util.FastStack;

import java.util.ArrayList;
import java.util.List;

public class Path {

    private final String[] chunks;
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
        chunks = arr;
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
        this.chunks = chunks;
    }

    public String toString() {
        if (pathAsString == null) {
            StringBuffer buffer = new StringBuffer();
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
        if (chunks.length != other.chunks.length) return false;
        for (int i = 0; i < chunks.length; i++) {
            if (!chunks[i].equals(other.chunks[i])) return false;
        }

        return true;
    }

    public int hashCode() {
        int result = 543645643;
        for (int i = 0; i < chunks.length; i++) {
            result = 29 * result + chunks[i].hashCode();
        }
        return result;
    }

    public Path relativeTo(Path that) {
        int depthOfPathDivergence = depthOfPathDivergence(chunks, that.chunks);
        String[] result = new String[chunks.length + that.chunks.length - 2 * depthOfPathDivergence];
        int count = 0;

        for (int i = depthOfPathDivergence; i < chunks.length; i++) {
            result[count++] = "..";
        }
        for (int j = depthOfPathDivergence; j < that.chunks.length; j++) {
            result[count++] = that.chunks[j];
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

        for (int i = 0; i < chunks.length; i++) {
            absoluteStack.push(chunks[i]);
        }

        for (int i = 0; i < relativePath.chunks.length; i++) {
            String relativeChunk = relativePath.chunks[i];
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
        if (child == null || child.chunks.length < chunks.length) {
            return false;
        }
        for (int i = 0; i < chunks.length; i++) {
            if (!chunks[i].equals(child.chunks[i])) {
                return false;
            }
        }
        return true;
    }
}
