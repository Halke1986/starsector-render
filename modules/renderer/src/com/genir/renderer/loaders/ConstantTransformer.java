package com.genir.renderer.loaders;

import java.io.ByteArrayOutputStream;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;

public class ConstantTransformer {
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

    private final Map<byte[], byte[]> transforms;
    private final int minTransformLen;
    private final int maxTransformLen;

    @SafeVarargs
    public ConstantTransformer(Map<String, String>... strTransforms) {
        this(mergeMaps(strTransforms));
    }

    @SafeVarargs
    private static Map<String, String> mergeMaps(Map<String, String>... strTransforms) {
        Map<String, String> mergedMap = new HashMap<String, String>();

        for (Map<String, String> map : strTransforms) {
            mergedMap.putAll(map);
        }

        return mergedMap;
    }

    public ConstantTransformer(Map<String, String> strTransforms) {
        int minTransformLen = Integer.MAX_VALUE;
        int maxTransformLen = 0;
        Map<byte[], byte[]> transforms = new TreeMap<>(Arrays::compareUnsigned);

        for (Map.Entry<String, String> entry : strTransforms.entrySet()) {
            byte[] from = entry.getKey().getBytes(StandardCharsets.UTF_8);
            byte[] to = entry.getValue().getBytes(StandardCharsets.UTF_8);

            transforms.put(from, to);

            minTransformLen = Math.min(minTransformLen, from.length);
            maxTransformLen = Math.max(maxTransformLen, from.length);
        }

        this.transforms = transforms;
        this.minTransformLen = minTransformLen;
        this.maxTransformLen = maxTransformLen;
    }

    private static int readUnsignedShort(byte[] buf, int offset) {
        return ((buf[offset] & 0xFF) << 8) | (buf[offset + 1] & 0xFF);
    }

    public byte[] apply(byte[] data) {
        try {
            ByteArrayOutputStream out = new ByteArrayOutputStream(data.length);

            int cpCount = readUnsignedShort(data, 8);
            int currentOffset = 10;
            int lastIdx = 0;

            for (int constIdx = 1; constIdx < cpCount; constIdx++) {
                int entrySize;

                // https://docs.oracle.com/javase/specs/jvms/se17/html/jvms-4.html#jvms-4.4
                switch (data[currentOffset]) {
                    case CONSTANT_Utf8:
                        int len = readUnsignedShort(data, currentOffset + 1);
                        int fromIdx = currentOffset + 3;
                        int toIdx = fromIdx + len;
                        entrySize = 3 + len;

                        // No match, based on length.
                        if (len < minTransformLen) {
                            break;
                        }

                        // Attempt to transform the entire constant.
                        byte[] oldBytes = Arrays.copyOfRange(data, fromIdx, toIdx);
                        byte[] newBytes = transforms.get(oldBytes);

                        // Fallback to interpreting the constant as a
                        // method signature and transforming it type by type.
                        if (newBytes == null) {
                            DescriptorTransformer dt = new DescriptorTransformer(data, fromIdx, toIdx);
                            ByteArrayOutputStream newBytesStream = dt.transformMethodSignature();

                            if (newBytesStream != null) {
                                newBytes = newBytesStream.toByteArray();
                            }
                        }

                        if (newBytes == null) {
                            break;
                        }

                        int newLen = newBytes.length;

                        out.write(data, lastIdx, currentOffset + 1 - lastIdx);
                        out.write((newLen >> 8) & 0xFF);
                        out.write(newLen & 0xFF);
                        out.write(newBytes);

                        lastIdx = toIdx;

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
                        constIdx++;
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
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    private class DescriptorTransformer {
        private final byte[] data;

        private final int dataStart;
        private final int dataEnd;

        private int entryStart;
        private ByteArrayOutputStream out = null;

        DescriptorTransformer(byte[] data, int dataStart, int dataEnd) {
            this.data = data;

            this.dataStart = dataStart;
            this.dataEnd = dataEnd;

            this.entryStart = dataStart;
        }

        ByteArrayOutputStream transformMethodSignature() {
            int idx = dataStart;

            if (idx >= dataEnd) {
                return null;
            }

            // Transform parameters.
            if (data[idx] == '(') {
                idx = transformTypeSignatures(idx + 1);
            }

            // Transform return type.
            transformTypeSignatures(idx);

            // Write remaining untransformed data.
            if (out != null) {
                out.write(data, this.entryStart, dataEnd - this.entryStart);
            }

            return out;
        }

        private int transformTypeSignatures(int idx) {
            while (idx < dataEnd) {
                switch (data[idx]) {
                    // Basic types.
                    case 'B', 'C', 'D', 'F', 'I', 'J', 'S', 'Z', 'V' -> {
                        idx++;
                    }

                    // Array.
                    case '[' -> {
                        idx++;
                    }

                    // Reference type.
                    case 'L' -> {
                        idx = transformTypeSignature(idx + 1);
                    }

                    // Empty method param list.
                    case ')' -> {
                        return idx + 1;
                    }

                    // Not a descriptor.
                    default -> {
                        return dataEnd;
                    }
                }
            }

            // End of descriptor.
            return dataEnd;
        }

        private int transformTypeSignature(int idx) {
            int start = idx;

            while (idx < dataEnd) {
                switch (data[idx]) {
                    // Generic type.
                    case '<' -> {
                        transformTypeName(start, idx);

                        idx = transformTypeSignatures(idx + 1);

                        // Assume skipping '>;'
                        return idx + 2;
                    }

                    // Name end.
                    case ';' -> {
                        transformTypeName(start, idx);
                        return idx + 1;
                    }

                    // Name continues.
                    default -> {
                        idx++;
                    }
                }
            }

            // Unexpected end of descriptor.
            return dataEnd;
        }

        void transformTypeName(int nameStart, int nameEnd) {
            int len = nameEnd - nameStart;
            if (len < minTransformLen || len > maxTransformLen) {
                return;
            }

            byte[] oldBytes = Arrays.copyOfRange(data, nameStart, nameEnd);
            byte[] newBytes = transforms.get(oldBytes);
            if (newBytes == null) {
                return;
            }

            // Allocate output buffer on first match.
            if (out == null) {
                out = new ByteArrayOutputStream((dataEnd - dataStart) * 2);
            }

            // Write unchanged bytes in front of the name.
            out.write(data, this.entryStart, nameStart - this.entryStart);
            this.entryStart = nameEnd;

            // Write the transformed name.
            out.write(newBytes, 0, newBytes.length);
        }
    }
}
