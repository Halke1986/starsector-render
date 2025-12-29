package com.genir.renderer.debug;

import com.sun.tools.attach.VirtualMachine;

import java.io.InputStream;
import java.lang.reflect.Method;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;

import static com.genir.renderer.debug.Debug.readAllBytesRobust;

public final class ClassHistogramSampler {
    public static void takeHistogram(String histogramPrefix) {
        try {
            String pid = String.valueOf(ProcessHandle.current().pid());
            boolean liveOnly = false;

            long unixTimestamp = System.currentTimeMillis() / 1000L;
            String fileName = histogramPrefix + "histogram-" + unixTimestamp + ".txt";
            Path out = Path.of(fileName);

            String text = gatherHistogram(pid, liveOnly);

            Files.writeString(out, text, StandardCharsets.UTF_8, StandardOpenOption.CREATE_NEW);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * Returns the same text format as jmap -histo / jcmd GC.class_histogram.
     * <p>
     * liveOnly=false -> "-all" (includes unreachable)
     * liveOnly=true  -> "-live" (reachable/liveness-biased; may require/trigger extra work)
     */
    private static String gatherHistogram(String pid, boolean liveOnly) throws Exception {
        VirtualMachine vm = VirtualMachine.attach(pid);
        try {
            try (InputStream in = invokeHeapHisto(vm, liveOnly)) {
                byte[] bytes = readAllBytesRobust(in);
                return new String(bytes, StandardCharsets.UTF_8);
            }
        } finally {
            vm.detach();
        }
    }

    private static InputStream invokeHeapHisto(VirtualMachine vm, boolean liveOnly) throws Exception {
        Method heapHisto = findHeapHistoMethod(vm.getClass());

        if (liveOnly) {
            // Try common spellings; keep this minimal.
            try {
                return (InputStream) heapHisto.invoke(vm, (Object) new Object[]{"-live"});
            } catch (ReflectiveOperationException ignored) {
                return (InputStream) heapHisto.invoke(vm, (Object) new Object[]{"live=true"});
            }
        } else {
            try {
                return (InputStream) heapHisto.invoke(vm, (Object) new Object[]{"-all"});
            } catch (ReflectiveOperationException ignored) {
                return (InputStream) heapHisto.invoke(vm, (Object) new Object[0]);
            }
        }
    }

    private static Method findHeapHistoMethod(Class<?> implClass) throws Exception {
        Class<?> c = implClass;
        while (c != null) {
            for (Method m : c.getDeclaredMethods()) {
                if (m.getName().equals("heapHisto")
                        && m.getParameterCount() == 1
                        && m.getParameterTypes()[0].isArray()
                        && m.getParameterTypes()[0].getComponentType() == Object.class) {
                    m.setAccessible(true);
                    return m;
                }
            }
            c = c.getSuperclass();
        }
        throw new NoSuchMethodException("heapHisto(Object...) not found on attach implementation class hierarchy");
    }
}