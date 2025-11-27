/*
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at https://mozilla.org/MPL/2.0/.
 */

package com.genir.renderer.loaders;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;

public class ClassConstantTransformer {
    @SuppressWarnings("unchecked")
    private static final Class<? extends List<?>> STATIC_ARRAY_LIST_TYPE =
            (Class<? extends List<?>>) Arrays.asList(true, false).getClass();

    private final List<Transform> transforms;

    public ClassConstantTransformer(List<Transform> transforms) {
        this.transforms = transforms.getClass() == STATIC_ARRAY_LIST_TYPE ? transforms : new ArrayList<>(transforms);
    }

    public byte[] apply(byte[] data) {
        try {
            ByteArrayOutputStream out = new ByteArrayOutputStream(data.length);
            int cpCount = readUnsignedShort(data, 8);
            int entrySize, currentOffset = 10;
            int lastIdx = 0;
            for (int i = 1; i < cpCount; i++) {
                // https://docs.oracle.com/javase/specs/jvms/se17/html/jvms-4.html#jvms-4.4
                switch (data[currentOffset]) {
                    case CONSTANT_Utf8:
                        int len = readUnsignedShort(data, currentOffset + 1);
                        entrySize = 3 + len;
                        int fromIdx = currentOffset + 3, toIdx = fromIdx + len;
                        for (Transform transform : transforms) {
                            int match = indexOf(data, transform.fromBytes, fromIdx, toIdx);
                            if (match != -1) {
                                byte[] newBytes;
                                if (match == 0 && len == transform.fromBytes.length) {
                                    newBytes = transform.toBytes;
                                } else {
                                    newBytes = new String(data, fromIdx, len, StandardCharsets.UTF_8)
                                            .replace(transform.from, transform.to).getBytes(StandardCharsets.UTF_8);
                                }

                                int newLen = newBytes.length;
                                out.write(data, lastIdx, currentOffset + 1 - lastIdx);
                                out.write((newLen >> 8) & 0xFF);
                                out.write(newLen & 0xFF);
                                out.write(newBytes);
                                lastIdx = toIdx;
                                break;
                            }
                        }
                        break;
                    case CONSTANT_Integer:
                    case CONSTANT_Float:
                    case CONSTANT_NameAndType:
                    case CONSTANT_Fieldref:
                    case CONSTANT_Methodref:
                    case CONSTANT_InterfaceMethodref:
                    case CONSTANT_Dynamic:
                    case CONSTANT_InvokeDynamic:
                        entrySize = 5;
                        break;
                    case CONSTANT_Long:
                    case CONSTANT_Double:
                        entrySize = 9;
                        i++;
                        break;
                    case CONSTANT_Class:
                    case CONSTANT_String:
                    case CONSTANT_MethodType:
                    case CONSTANT_Module:
                    case CONSTANT_Package:
                        entrySize = 3;
                        break;
                    case CONSTANT_MethodHandle:
                        entrySize = 4;
                        break;
                    default:
                        throw new RuntimeException("Unknown constant tag " + data[currentOffset]);
                }
                currentOffset += entrySize;
            }

            out.write(data, lastIdx, data.length - lastIdx);
            return out.toByteArray();
        } catch (IOException e) {
            throw new AssertionError("unreachable", e);
        }
    }

    public static Transform newTransform(String from, String to) {
        return new Transform(from, to);
    }

    public static class Transform {

        final String from;

        final byte[] fromBytes;

        final String to;

        final byte[] toBytes;

        Transform(String from, String to) {
            this.from = Objects.requireNonNull(from);
            this.fromBytes = from.getBytes(StandardCharsets.UTF_8);
            this.to = Objects.requireNonNull(to);
            this.toBytes = to.getBytes(StandardCharsets.UTF_8);
        }

        @Override
        public String toString() {
            return "Transform{" +
                    "from='" + from + '\'' +
                    ", to='" + to + '\'' +
                    '}';
        }

        @Override
        public boolean equals(Object o) {
            if (this == o) return true;
            if (o == null || getClass() != o.getClass()) return false;
            Transform transform = (Transform) o;
            return from.equals(transform.from) && to.equals(transform.to);
        }

        @Override
        public int hashCode() {
            return Objects.hash(from, to);
        }
    }

    private static int readUnsignedShort(byte[] buf, int offset) {
        return ((buf[offset] & 0xFF) << 8) | (buf[offset + 1] & 0xFF);
    }

    private static int indexOf(byte[] src, byte[] tgt, int fromIndex, int toIndex) {
        int srcCount = Math.min(src.length, toIndex);
        int tgtCount = tgt.length;
        byte first = tgt[0];
        int max = (srcCount - tgtCount);
        for (int i = fromIndex; i <= max; i++) {
            // Look for first byte.
            if (src[i] != first) {
                while (++i <= max && src[i] != first) /*continue*/ ;
            }
            // Found first byte, now look at the rest of the sequence
            if (i <= max) {
                int j = i + 1;
                int end = j + tgtCount - 1;
                for (int k = 1;
                     j < end && src[j] == tgt[k];
                     j++, k++) /*continue*/
                    ;
                if (j == end) {
                    // Found whole sequence.
                    return i;
                }
            }
        }
        return -1;
    }

    private static final int CONSTANT_Utf8 = 1;
    private static final int CONSTANT_Integer = 3;
    private static final int CONSTANT_Float = 4;
    private static final int CONSTANT_Long = 5;
    private static final int CONSTANT_Double = 6;
    private static final int CONSTANT_Class = 7;
    private static final int CONSTANT_String = 8;
    private static final int CONSTANT_Fieldref = 9;
    private static final int CONSTANT_Methodref = 10;
    private static final int CONSTANT_InterfaceMethodref = 11;
    private static final int CONSTANT_NameAndType = 12;
    private static final int CONSTANT_MethodHandle = 15;
    private static final int CONSTANT_MethodType = 16;
    private static final int CONSTANT_Dynamic = 17;
    private static final int CONSTANT_InvokeDynamic = 18;
    private static final int CONSTANT_Module = 19;
    private static final int CONSTANT_Package = 20;
}
