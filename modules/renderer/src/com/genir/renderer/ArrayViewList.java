package com.genir.renderer;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;
import java.util.function.BiConsumer;

/**
 * Provides a mutable List view of array-backed storage.
 */
public class ArrayViewList<E> extends AbstractList<E> implements RandomAccess {
    private E[] arr;
    private int size;
    private final BiConsumer<E[], Integer> pushUpdate;

    public ArrayViewList(E[] arr, int size, BiConsumer<E[], Integer> pushUpdate) {
        this.arr = arr;
        this.size = size;
        this.pushUpdate = pushUpdate;
    }

    @Override
    public E get(int index) {
        if (index < 0 || index >= size) {
            throw new IndexOutOfBoundsException();
        }

        return arr[index];
    }

    @Override
    public int size() {
        return size;
    }

    @Override
    public E set(int index, E element) {
        if (index < 0 || index >= size) {
            throw new IndexOutOfBoundsException();
        }

        E prev = arr[index];
        arr[index] = element;
        return prev;
    }

    @Override
    public void add(int index, E element) {
        if (index < 0 || index > size) {
            throw new IndexOutOfBoundsException();
        }

        E[] newArr = null;
        if (size == arr.length) {
            newArr = Arrays.copyOf(arr, Math.max(1, arr.length * 2));
            arr = newArr;
        }

        System.arraycopy(arr, index, arr, index + 1, size - index);

        arr[index] = element;
        size++;
        modCount++;

        pushUpdate.accept(newArr, size);
    }

    @Override
    public E remove(int index) {
        if (index < 0 || index >= size) {
            throw new IndexOutOfBoundsException();
        }

        E prev = arr[index];
        System.arraycopy(arr, index + 1, arr, index, size - index - 1);

        size--;
        arr[size] = null;
        modCount++;

        pushUpdate.accept(null, size);

        return prev;
    }
}
