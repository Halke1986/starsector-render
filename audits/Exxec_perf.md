# Performance / FPS findings - starsector-render (FR)

Second pass over the same tree, this time hunting CPU/GPUs work that can be removed.
Reference: `C:\Decrypt\FR\starsector-render`. Patches marked **[APPLIED]** are already in `starsector-render-fixed`.
Severity here = expected FPS/CPU impact.

Architecture recap (matters for every item below): every `org.lwjgl.opengl.*` call made by the game or a
mod is rewritten by the java agent to `com.genir.renderer.bridge.commands.GL*`, which **enqueues a command**
into a per-context `Frame` and a single render thread (`FR-Render`) replays it. So *per GL call* cost, not just
GL cost, decides FPS.

---

## P1 [HIGH] Per-GL-call context lookup: `HashMap<Thread, Context>` + non-volatile statics
`bridge/context/ContextManager.java:15-28` - `getThreadContext()` is the single hottest function in the
renderer (called by *every* bridged GL call, several million times/frame at 60 FPS). It does a volatile-less
static read of `mainContext`/`mainThread`, an `auxContext.isEmpty()` and then `HashMap.get(Thread.currentThread())`.

Replace with a `ThreadLocal` that is populated at context creation; the hot path becomes one array load:

```java
public class ContextManager {
    private static volatile Context mainContext = null;   // also fixes the data race (see FINDINGS.md C1)
    private static volatile Thread mainThread = null;
    private static final Map<Thread, Context> auxContext = new ConcurrentHashMap<>();

    // Hot path: one TLS probe, no hashing, no map.
    private static final ThreadLocal<Context> currentContext = new ThreadLocal<>();

    public static Context getThreadContext() {
        Context c = currentContext.get();
        if (c != null) {
            return c;
        }
        // Fallback: main thread, or a thread that never created a context.
        return mainContext;                      // caller still must null-check on first call
    }

    synchronized public static Context createMainContext() {
        mainContext = new Context(null);
        mainThread = Thread.currentThread();
        currentContext.set(mainContext);
        return mainContext;
    }
    // createAuxContext(): ... auxContext.put(t, context); currentContext.set(context);
    // destroyAuxContext()/destroyMainContext(): currentContext.remove();
}
```

Expected effect: removes a map probe + 2 non-volatile loads from millions of calls/frame. On the vertex-heavy
paths (glVertex2f / glTexCoord2f / glDrawArrays) this is measurable on its own (~1-3 % CPU in the game thread).

## P2 [HIGH] `Executor` serialises *all* contexts behind one static mutex and flushes every batch
`bridge/context/Executor.java:29,180-187`:

```java
private static final Object execMutex = new Object();     // static -> whole JVM
...
synchronized (execMutex) {          // aux contexts (texture loading threads) block the main frame
    executeCommands(frameToExecute);
    try { GL11.glFlush(); } catch (RuntimeException ignored) {}
}
```

Two costs: (a) with any auxiliary context alive (async texture loading, BoxUtil mods), the main render
submission is serialised against it - exactly the parallelism this renderer exists to provide; (b) an
unconditional `glFlush()` per submitted batch forces a driver submission on every batch boundary, which on
many drivers costs more than the batching saved.

Recommended change (keeps the low-end-GPU workaround available but off by default):

```java
// Per-context, not static: only serialises commands that share a GL context.
private final Object execMutex = new Object();
/** Set from StarfarerSettings ("fr.serialiseGL") for the GPUs that need it (BoxUtil 1.5.4 flicker). */
public static volatile boolean serialiseSubmission = false;

synchronized (execMutex) {
    executeCommands(frameToExecute);
}
if (serialiseSubmission || !frameToExecute.fences.isEmpty()) {
    GL11.glFlush();
}
```

## P3 [HIGH] Frame-pacing spin-wait burns a core every frame: `overrides/Sync.java:62-87`
```java
long waitMS = Math.max(0, waitNS / 1_000_000 - 2);
if (waitMS > 0) { Thread.sleep(waitMS); }
while (System.nanoTime() < deadline) {}          // busy spin, up to ~2 ms of a core, every frame
prevUpdateTimestamp = System.nanoTime();         // re-anchors on wake time -> drift/jitter
```
Costs: steals CPU from `FR-Render` and the sim thread, adds jitter (re-anchoring after overshoot), heats the
CPU (throttling on laptops). Also `fps` is read from settings every frame and a `fps` of 0 divides by zero.

Replacement (bounded spin, fixed-step deadline, cached fps):

```java
private static long cachedFps = -1;
public static void sync(long ignored) {
    long fps = cachedFps;
    if (fps <= 0) {                                   // clamp: guards divide-by-zero AND re-reads cheaply
        fps = (long) StarfarerSettings.StarfarerSettings_getFloatValue("fps");
        if (fps <= 0 || fps > 1000) { fps = 60; }
        cachedFps = fps;
    }

    long frameNS = 1_000_000_000L / fps;
    long deadline = prevUpdateTimestamp + frameNS;
    long now = System.nanoTime();

    if (now < deadline) {
        long waitNS = deadline - now;
        // Sleep while there is real time to give back, then park in ~50us slices, spin only the last bit.
        if (waitNS > 2_000_000) {
            try { Thread.sleep((waitNS - 1_000_000) / 1_000_000); } catch (InterruptedException ignored) {}
        }
        while ((deadline - System.nanoTime()) > 60_000) {
            java.util.concurrent.locks.LockSupport.parkNanos(20_000);
        }
        while (System.nanoTime() < deadline) { /* final ~60us spin for precision */ }
    }

    // Fixed-step: advance by whole frames instead of re-anchoring on the wake-up time.
    prevUpdateTimestamp = Math.max(deadline, System.nanoTime());
}
```

## P4 [MEDIUM] `FR-Render` runs at default thread priority
`bridge/context/Executor.java:28` builds its executor through `ExecutorFactory.newSingleThreadExecutor("FR-Render", ...)`
with no priority. The render thread must not be scheduled behind sim/mod threads; combined with
`-XX:ThreadPriorityPolicy=1` in `fr.vmparams` (which makes priorities actually honoured) this is free FPS:

```java
// ExecutorFactory: pass a ThreadFactory that raises priority.
return Executors.newSingleThreadExecutor(r -> {
    Thread t = new Thread(r, name);
    t.setPriority(Thread.MAX_PRIORITY);   // FR-Render must never wait behind the sim
    t.setDaemon(true);                    // never block JVM shutdown on a stuck frame
    return t;
});
```

## P5 [MEDIUM] Buffer pools: unbounded retention + one global lock per buffer type
`bridge/context/BufferPool.java:16-24,42-49` - every size class keeps **every** released snapshot forever
(no cap, no trimming). A single huge `glBufferData` (sprite atlas, 8 MB) pins that block for the life of the
session, and pools for transient sizes accumulate. All four types lock a single array object, so all threads
contend on one lock per call.

```java
private static final int MAX_PER_BUCKET = 16;   // cap: stop retaining giant one-off snapshots forever
...
synchronized (parent.bytePool) {
    List<ByteBufferSnapshot> list = parent.bytePool[poolIdx(buffer.capacity())];
    if (list.size() < MAX_PER_BUCKET && !alreadyCleaned.get()) { list.add(this); }
    // else: drop it - the direct buffer is freed by Cleaner/GC.
}
```
For P1/P2-style contention, the bigger win is a `ThreadLocal<ArrayDeque<Snapshot>>` free-list (snapshots are
produced and released on the same thread in ~all bridge paths), with the shared list only as an overflow bank.

## P6 [MEDIUM] `Frame` starts at capacity 1 and grows by doubling - after every exception recovery
`bridge/context/Frame.java:13-23`: first frame (and *every* frame after an executor exception, because
`Executor.rethrowAndClearException()` allocates `new Frame()`) re-grows two arrays ~14 times to reach a
typical 15k-command frame. Seed a realistic capacity and reset the growth on reuse:

```java
public GLCommand[] commands = new GLCommand[4096];
public float[] args = new float[4096 * ARGS_NUM];
```
Also `clear()` leaves stale `commands[i]` references (memory retention, see FINDINGS.md F1).

## P7 [MEDIUM] `Pool.get()/put()` are coarse `synchronized` and untyped
`bridge/context/Pool.java:9-18` - used by `Executor.framePool`; two lock ops + a checked cast per frame swap.
Cheap to make contention-free with `ConcurrentLinkedDeque<Object>` (or a per-executor field, since an
`Executor` is single-producer/single-consumer):

```java
public class Pool {
    private final java.util.concurrent.ConcurrentLinkedDeque<Object> pool = new java.util.concurrent.ConcurrentLinkedDeque<>();
    public Object get() { return pool.pollLast(); }
    public void put(Object e) { pool.addLast(e); }
}
```

## P8 [MEDIUM] Startup: one full pipeline stall + `glFinish()` per mod plugin
`overrides/loading/ResourceLoader.java:168-173` - inside the loop over enabled mods:
```java
for (ModPlugin mod : ...getEnabledModPlugins()) {
    mod.onApplicationLoad();
    context.exec.wait((ctx, args, offset) -> { Display.processMessages(); GL11.glFinish(); });
}
```
`glFinish()` is a full GPU drain; with 40+ mods this is 40+ serialised drains plus a queue flush each. Move the
`wait(...)` out of the loop (once, after all plugins loaded) - saves a visible chunk of load time and avoids
the driver's cold-state re-validation between plugins.

## P9 [LOW/MEDIUM] JVM flags in `fr.vmparams` that cost more than they give
| Flag | Issue | Suggestion |
|---|---|---|
| `-XX:-BytecodeVerificationLocal` `-XX:-BytecodeVerificationRemote` | **Disables class-file verification while a java agent rewrites the constant pool of every game class.** A bad rewrite becomes an access-violation crash instead of a `VerifyError`, and HotSpot skips safety checks that C2 relies on for unverifiable code. This is also why some of the crashes in FINDINGS.md are hard to diagnose. | Remove both (keep verification on) and fix the rewriter instead. |
| `-XX:+UseStringDeduplication` | Only implemented for G1/ZGC; silently ignored with Shenandoah on most builds. | Drop it, or switch GC if dedup is wanted. |
| `--enable-preview` | Pins the exact JRE build (game dies on any JRE update) and prints a warning; preview bytecode can also disable some JIT inlining. | Remove unless a source feature truly needs it. |
| `-XX:+ShowMessageBoxOnError` | On a genuine JVM crash players get a modal dialog that hangs forever instead of returning to the launcher. | Remove for release builds. |
| `-Xms4g -XX:+AlwaysPreTouch` | Touches 4 GB at startup (slower boot, larger working set). Fine on desktop; hurts on 8 GB machines. | Keep `-Xmx4g`, lower `-Xms` to e.g. 1g, keep pre-touch off for small-RAM users. |
| `-XX:+UseFastStosb`, `-XX:+EnableVectorSupport*` (non-modular vector flags) | Removed/renamed in modern JDKs; accepted only because diagnostic+experimental flags are unlocked. No-op noise at best. | Delete the ones HotSpot reports as obsolete (`-XX:+PrintFlagsFinal` diff). |
| *(missing)* `-XX:ShenandoahGCHeuristics=static` / `-XX:SoftMaxHeapSize` | Default concurrent heuristics let GC threads run alongside the render thread; a static/compact heuristic gives steadier frame pacing for a game with a fixed heap. | Try `-XX:ShenandoahGCHeuristics=static -XX:SoftMaxHeapSize=3g`. |
| *(missing)* `-XX:+UseLargePages` / `-XX:+UseTransparentSuperLargePages` | Render loop + vertex staging are TLB-sensitive. | Worth A/B'ing; on Windows needs `Lock Pages in Memory` for the real thing, TPSLP works without. |

## P10 [LOW] Loading: fixed 10 ms redraw loop while the progress bar fills
`overrides/loading/ResourceLoader.java:150-155` - `while (barIsNotFull()) { renderProgress(0); Display.update(); Thread.sleep(10); }`
Each iteration is a full swap+sync (`Display.update()` -> `swapFramesAndSync()`), so this caps the bar at
100 Hz and adds a hard 10 ms to every load step boundary. Sleep only when idle work is done, or drive it from
the actual progress callback; also `Thread.sleep` here is inside an uncaught-InterruptedException-free block? (see FINDINGS.md).

## P11 [LOW] `glColor4ub` -> 4 divisions + a float command per call
`bridge/commands/GL11.java:186-193` converts bytes with `/255f`. Trivial, but this is called per-sprite by
many mods; a precomputed `static final float[] BYTE_TO_FLOAT = new float[256]` lookup removes 4 divides from
one of the hottest state calls.

## P12 [MEASURE FIRST] Instrument before tuning further
The tree already ships a profiler (`debug/Profiler.java`, `SamplerRunner`, `StallDetector`) and per-frame
buckets (`addRenderTime`, `addNSwapTime`, `addStallTime`). Before applying P2/P5/P7, capture a profile with
`fr.debug` on and look at: stall time per frame (P3), render-thread busy time vs. game-thread submit time
(P1/P2), and snapshot counts per frame (P5). Everything above is ranked by call frequency x work removed, not
by measurement - re-measure after each change.

---

## Applied in this pass
- P3 (Sync.sync): **[APPLIED]**
- P6 (Frame capacity + clear): **[APPLIED]**
- P5 (buffer pool cap): **[APPLIED]**
- P1 (ContextManager ThreadLocal + race fixes): **[APPLIED]**
- P2, P4, P7-P12: recommendations only (behavioural/driver-visible or need measurement first).
