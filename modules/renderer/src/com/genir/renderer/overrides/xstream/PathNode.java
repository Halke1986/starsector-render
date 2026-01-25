package com.genir.renderer.overrides.xstream;

import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/**
 * Compact node-based representation of an XML path for XStream serialization.
 * <p>
 * Replaces XStream’s String[] path snapshots with a persistent linked structure
 * where each node represents one path segment and shares prefixes with other paths.
 * This avoids repeated allocation of large String[] arrays during deep traversal
 * while preserving ancestry semantics needed by reference marshalling.
 * <p>
 * Intended for internal use during a single de/serialization run.
 */
public class PathNode {
    private final String chunk;
    private final int depth;

    private final PathNode parent;
    private Map<String, PathNode> children = null;
    private final PathNode root; // Keep the trie referenced for the duration of de/serialization.

    private static WeakReference<PathNode> rootRef = new WeakReference<>(null);

    private PathNode(String chunk, int depth, PathNode parent, PathNode root) {
        this.chunk = chunk;
        this.depth = depth;
        this.parent = parent;
        this.root = root;
    }

    public String[] getChunks() {
        String[] chunks = new String[depth + 1];

        PathNode node = this;
        for (int i = depth; i >= 0; i--) {
            chunks[i] = node.chunk;
            node = node.parent;
        }

        return chunks;
    }

    public int getDepth() {
        return depth;
    }

    public static PathNode attachNode(String[] chunks) {
        final PathNode root = getRoot();
        PathNode prevNode = root;

        for (int i = 0; i < chunks.length; i++) {
            String chunk = chunks[i];

            Map<String, PathNode> nodes = prevNode.children;
            if (nodes == null) {
                nodes = new HashMap<>();
                prevNode.children = nodes;
            }

            PathNode node = nodes.get(chunk);
            if (node == null) {
                node = new PathNode(chunk, i, prevNode, root);
                nodes.put(chunk, node);
            }

            prevNode = node;
        }

        return prevNode;
    }

    private static PathNode getRoot() {
        PathNode root = rootRef.get();
        if (root == null) {
            root = new PathNode(null, -1, null, null);
            rootRef = new WeakReference<>(root);
        }

        return root;
    }
}
