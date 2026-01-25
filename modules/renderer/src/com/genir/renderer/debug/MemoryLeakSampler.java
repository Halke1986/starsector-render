package com.genir.renderer.debug;

import com.sun.tools.attach.VirtualMachine;

import java.io.InputStream;
import java.lang.reflect.Method;
import java.util.Locale;

import static com.genir.renderer.debug.Debug.readAllBytesRobust;

public final class MemoryLeakSampler {
    private static String fileName = "";

    public static void startSampler(String samplePrefix) {
        try {
            final boolean enableOld = true;

            String pid = String.valueOf(ProcessHandle.current().pid());

            long unixTimestamp = System.currentTimeMillis() / 1000L;
            fileName = samplePrefix + "leak-" + unixTimestamp + ".jfr";

            // Start recording (profile preset is usually enough to get allocation stacks).
            jcmd(pid, String.format(Locale.ROOT,
                    "JFR.start name=%s settings=profile dumponexit=false",
                    fileName));

            // Try to ensure stack traces and old object sampling are enabled.
            // Not all JVMs expose these options; failures are tolerated.
            if (enableOld) {
                tryEnableOldObjectSampling(pid, fileName);
            }
            tryEnableAllocationStackTraces(pid, fileName);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static void stopSampler(String samplePrefix) {
        try {
            String pid = String.valueOf(ProcessHandle.current().pid());

            // Dump to file and stop.
            jcmd(pid, String.format(Locale.ROOT,
                    "JFR.dump name=%s filename=\"%s\"",
                    fileName, fileName));

            jcmd(pid, String.format(Locale.ROOT,
                    "JFR.stop name=%s",
                    fileName));
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * Execute a jcmd command against the target VM using Attach transport.
     * Equivalent to: jcmd <pid> <command...>
     */
    private static String jcmd(String pid, String command) throws Exception {
        VirtualMachine vm = VirtualMachine.attach(pid);
        try {
            try (InputStream in = invokeExecuteCommand(vm, "jcmd", command)) {
                byte[] out = readAllBytesRobust(in);
                return new String(out, java.nio.charset.StandardCharsets.UTF_8);
            }
        } finally {
            vm.detach();
        }
    }

    /**
     * Attempts to enable old object sampling. If the JVM doesn't support it or the syntax differs,
     * this will fail and be ignored by caller.
     * <p>
     * This relies on the presence of a JFR configuration command that accepts event settings.
     * On some builds, this is supported via JFR.configure; on others, you must supply a custom .jfc.
     */
    private static void tryEnableOldObjectSampling(String pid, String recordingName) {
        try {
            // Common jcmd syntax on newer JDKs:
            // JFR.configure name=<rec> add=true "jdk.OldObjectSample#enabled=true" "jdk.OldObjectSample#stackTrace=true"
            jcmd(pid, String.format(Locale.ROOT,
                    "JFR.configure name=%s add=true " +
                            "\"jdk.OldObjectSample#enabled=true\" " +
                            "\"jdk.OldObjectSample#stackTrace=true\"",
                    recordingName));
        } catch (Throwable ignored) {
            // If this fails on your JVM, the portable fallback is a custom .jfc settings file.
        }
    }

    /**
     * Ensures allocation events include stack traces (where supported).
     * Most "profile" configs already include allocation events; stack traces may be disabled depending on config.
     */
    private static void tryEnableAllocationStackTraces(String pid, String recordingName) {
        try {
            jcmd(pid, String.format(Locale.ROOT,
                    "JFR.configure name=%s add=true " +
                            "\"jdk.ObjectAllocationInNewTLAB#enabled=true\" " +
                            "\"jdk.ObjectAllocationInNewTLAB#stackTrace=true\" " +
                            "\"jdk.ObjectAllocationOutsideTLAB#enabled=true\" " +
                            "\"jdk.ObjectAllocationOutsideTLAB#stackTrace=true\"",
                    recordingName));
        } catch (Throwable ignored) {
            // Same note as above: if unsupported, use a custom .jfc settings file.
        }
    }

    /**
     * Reflectively invoke HotSpotVirtualMachine.executeCommand(String, Object...) to avoid JMX.
     */
    private static InputStream invokeExecuteCommand(VirtualMachine vm, String cmd, String arg0) throws Exception {
        Method m = findExecuteCommandMethod(vm.getClass());
        // executeCommand(String cmd, Object... args) -> InputStream
        // Reflection call format: invoke(target, cmd, new Object[]{arg0})
        return (InputStream) m.invoke(vm, cmd, new Object[]{arg0});
    }

    private static Method findExecuteCommandMethod(Class<?> implClass) throws Exception {
        Class<?> c = implClass;
        while (c != null) {
            for (Method m : c.getDeclaredMethods()) {
                if (!m.getName().equals("executeCommand")) continue;
                Class<?>[] p = m.getParameterTypes();
                if (p.length == 2 && p[0] == String.class && p[1].isArray() && p[1].getComponentType() == Object.class) {
                    m.setAccessible(true);
                    return m;
                }
            }
            c = c.getSuperclass();
        }
        throw new NoSuchMethodException("executeCommand(String, Object...) not found on attach implementation class hierarchy");
    }
}
