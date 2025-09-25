package com.genir.renderer.overrides;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

public class PluginSet implements Set {
    @Override
    public boolean add(Object o) {
        if (!(o instanceof String className)) {
            return false;
        }

        ScriptStore.addPlugin(className);
        return true;
    }

    @Override
    public int size() {
        throw new RuntimeException("Unimplemented");
    }

    @Override
    public boolean isEmpty() {
        throw new RuntimeException("Unimplemented");
    }

    @Override
    public boolean contains(Object o) {
        throw new RuntimeException("Unimplemented");
    }

    @Override
    public Iterator iterator() {
        throw new RuntimeException("Unimplemented");
    }

    @Override
    public Object[] toArray() {
        throw new RuntimeException("Unimplemented");
    }

    @Override
    public boolean remove(Object o) {
        throw new RuntimeException("Unimplemented");
    }

    @Override
    public boolean addAll(Collection c) {
        throw new RuntimeException("Unimplemented");
    }

    @Override
    public void clear() {
    }

    @Override
    public boolean removeAll(Collection c) {
        throw new RuntimeException("Unimplemented");
    }

    @Override
    public boolean retainAll(Collection c) {
        throw new RuntimeException("Unimplemented");
    }

    @Override
    public boolean containsAll(Collection c) {
        throw new RuntimeException("Unimplemented");
    }

    @Override
    public Object[] toArray(Object[] a) {
        throw new RuntimeException("Unimplemented");
    }
}
