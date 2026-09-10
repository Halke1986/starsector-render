# Fine-tooth-comb audit - starsector-render (FR)

Reference clone: `C:\Decrypt\FR\starsector-render` (untouched).
Fixed copy: `C:\Decrypt\FR\starsector-render-fixed` (all fixes applied in-place).

Severity: **[CRASH]** crash/JVM-fatal, **[BUG]** wrong behaviour, **[RACE]** concurrency,
**[LEAK]** resource/memory leak, **[ROBUST]** missing error handling, **[CLEANUP]** dead code/style.

---

## Findings log

### A. agent module

**A1 [CRASH/ROBUST] `agent/Agent.java:19` — startup dies if CWD is not the game dir.**
`getSha256(Path.of("starfarer_obf.jar"))` throws `RuntimeException` when the file cannot be read (jar
launched with a different working directory, jar missing, AV/file lock). The whole game refuses to boot
for a purely informational checksum log. *Fix:* stream-hash, return `null` on failure, log a warning.

**A2 [ROBUST] `agent/Agent.java:15` — `premain` has no guard.** Any exception in the agent (log4j config
missing, transformer init) aborts JVM startup with a stack trace instead of falling back to vanilla rendering.

**A3 [CRASH] `agent/ClassTransformer.java:69` — transformer exceptions propagate.**
`ConstantTransformer.apply()` throws `RuntimeException` on any parse problem; thrown from a
`ClassFileTransformer` this becomes a failed class definition (crash far from the cause, "Error during
transforming ..." / `NoClassDefFoundError`). *Fix:* catch `Throwable`, log once, return `null` (= keep original bytes).

**A4 [CRASH] `agent/ConstantTransformer.java:152-153` — hard failure on unhandled constant-pool tags.**
Tags 2 (obsolete), 13 (`CONSTANT_Package`? no: 13 = obsolete `String[`] literal) and any future tag throw.
Old/oddly compiled mod classes then fail to load at runtime. *Fix:* stop transforming this class and return
the original bytes; never throw.

**A5 [CRASH] `agent/ConstantTransformer.java:73-79` — no bounds/magic validation.** A truncated or
non-class buffer (e.g. a class file produced by another agent with an unusual layout) triggers
`ArrayIndexOutOfBoundsException`; also no check of the CAFEBABE magic, so any non-class byte[] is parsed.

**A6 [BUG] `agent/ConstantTransformer.java:103-110` — every long UTF-8 constant is parsed as a descriptor.**
String literals that merely start with `(` are run through `DescriptorTransformer`; if an `L…;` slice inside
happens to match a key, the *string data* is rewritten (silent corruption of game text / resource paths).

**A7 [BUG] `agent/ConstantTransformer.java:247-253` — generic type parsing assumes `>;` follows.**
Nested generics (`Ljava/util/Map<Ljava/lang/String;…>;`, method refs in lambdas) are mis-parsed because the
code blindly returns `idx + 2`. Result: partially rewritten descriptors -> `VerifyError` / `NoSuchMethodError`
at runtime, only for mods that use generic method handles.

**A8 [PERF] `agent/ConstantTransformer.java:52,98` + `ClassTransformer.java:70` — allocation-heavy.**
`Arrays.copyOfRange` per UTF-8 constant plus `ByteArrayOutputStream.toByteArray()` and an `Arrays.equals`
over the full class for *every* class loaded (thousands). Cheap "changed" flag avoids both copies.

**A9 [CHECK] `agent/ClassTransformer.java:13-39` — core-game GL remap only covers GL11/GL14/Display/GLContext.**
Scripts get GL13..GL44 + GLSync + SharedDrawable, core classes do not; any `com.fs.*` use of GL20+ bypasses
the bridge and issues GL calls on the calling thread (driver-visible corruption/crash).

---

## B/C/E/F/S/T — renderer bridge + overrides (pass 2)

### BufferPool / Pool (`bridge/context/`)
**B1 [OK-after-fix] `BufferPool.release()` size-class consistency.** `poolIdx(capacity)` round-trips correctly
for powers of two, but nothing bounded the buckets: every released snapshot was kept forever (**[LEAK]**).
*Fixed:* `MAX_PER_BUCKET = 16` cap on all four pools (see P5 in Findings-perf.md).

**B2 [RACE] `Pool` (`Pool.java:7-19`) is a plain `ArrayList` behind two `synchronized` methods used by the
frame recycler.** Not unsafe today, but `get()`/`put()` are separate calls — a Frame can be dropped if a future
caller forgets one. Untyped `Object` also means an unchecked cast at every call site.

**B3 [BUG] `snapshot(...)` for `null` input returns a snapshot whose `buffer == null` and whose
`alreadyCleaned` is never consulted by the caller.** Any code path that later calls `release()` silently no-ops,
but code paths that dereference `snapshot.buffer` NPE. Callers must null-check `snapshot.buffer`, not the snapshot.

### ContextManager (`bridge/context/ContextManager.java`) — **[FIXED]**
**C1 [RACE/CRASH] unsynchronised reads of non-volatile statics + a plain `HashMap`.** `getThreadContext()` read
`mainContext`, `mainThread` and `auxContext` with no synchronisation while `createMainContext()`,
`createAuxContext()`, `destroyMainContext()` mutated them under a monitor. Consequences: another thread can see
`mainContext == null` after creation (NPE inside a GL call) or observe a partially-published `HashMap`
(lost entries / infinite loop in pre-JDK8 trees). *Fixed:* `volatile` statics + `ConcurrentHashMap`.

**C2 [CRASH] `destroyAuxContext()`/`destroyMainContext()` dereferenced a possibly-null context** (double destroy,
or a script thread that never created one) → NPE during shutdown, which can leave the render thread alive and
hang the JVM. *Fixed:* null-guarded.

**C3 [LEAK] contexts keyed strongly by `Thread` in a static map.** A mod that creates threads with aux contexts
and dies without calling `destroyAuxContext()` leaks the Context (its Executor, single-thread pool, frame,
pools) **and the Thread itself**, forever. *Recommendation:* keep a `Map<WeakReference<Thread>, Context>`-style
registry or destroy contexts of dead threads on `Context.update()`.

**C4 [PERF] see P1 in Findings-perf.md — hot-path map lookup, replaced with a `ThreadLocal` probe.** *Fixed.*

### Executor (`bridge/context/Executor.java`)
**E1 [CRASH-IMPORTANT] one recorded exception permanently disables all rendering.** In the submitted task:
`if (exception.get() != null) return;`. After the first GL command throws, every later batch is discarded
silently — the game keeps running with a frozen/black render while continuing to simulate. *Recommendation:*
count consecutive failures, log them, and surface one user-visible error (or rethrow on the game thread) rather
than entering an unrecoverable silent state.

**E2 [LEAK] **[FIXED]** abandoned frames were never cleared/recycled on the broken-executor path or when the
task threw (`frameToExecute` held commands + buffer snapshots). *Fixed* with a `recycled` guard so a frame can
never be pooled twice (double-put would hand one Frame to two producers → command corruption).

**E3 [BUG] **[FIXED]** `waitForFrame()` swallowed `InterruptedException` without restoring the interrupt flag**,
so Ctrl+C / window-close could hang waiting on a future that nothing interrupts anymore. *Fixed.*

**E4 [CRASH/HANG] fence wait has no timeout:** `for (GLSync sync : frameToExecute.fences) sync.future().get();`
If the fence-creating task never runs (its context died), the render thread blocks forever with the game thread
blocked behind it. *Recommendation:* `future.get(5, SECONDS)` + log + skip, and never hold `execMutex` while waiting.

**E5 [BUG] `GL11.glFlush()` inside `synchronized (execMutex)` swallows every RuntimeException**, including an
"no current context" error that indicates the ordering bug the whole block exists to work around — so real
context-ownership regressions are invisible. *Recommendation:* log once per session at WARN.

**E6 [RACE] `execute()`/`swapFrames()` assume a single producer thread per Context** (`currentFrame` is a plain
field, `Frame.add()` unsynchronised) but nothing enforces it: two threads that both resolve to the same context
(e.g. mods calling GL from a worker that never created an aux context — see C1's null path) race on
`commands[]`/`commandsSize`, producing torn command lists → wrong GL calls, `ArrayIndexOutOfBoundsException`,
or driver crashes. *Recommendation:* assert single-producer (`asert(frame.owner == Thread.currentThread())`) in
debug builds and log a warning + fall back to `executeSync` in release.

### Frame (`bridge/context/Frame.java`) — **[FIXED]**
**F1 [LEAK] `clear()` kept stale `commands[i]` references** (and through them the pooled buffer snapshots of the
largest frame ever rendered). *Fixed:* null out used slots.
**F2 [PERF] capacity started at 1** → ~14 array doublings per recovered frame. *Fixed:* seeded at 4096.

### Sync (`overrides/Sync.java`) — **[FIXED]**
**S1 [CRASH] divide-by-zero when the `fps` setting is 0/missing:** `1_000_000_000 / fps` threw
`ArithmeticException` once per frame. *Fixed:* clamped to 60 (also >1000 sanity bound).
**S2 [BUG] deadline re-anchored on wake-up time** (`prevUpdateTimestamp = System.nanoTime()`), so every overshoot
shifted the whole animation timeline — visible as periodic hitching. *Fixed:* `Math.max(deadline, now)` keeps a
fixed step.
**S3 [PERF] up to ~1.5 ms of pure busy-spin per frame** starved the render thread (P3 in Findings-perf.md).
*Fixed:* sleep → park(20 µs) → 60 µs spin.
**S4 [CRASH] `asert(context.isMain)`** NPEs if `getThreadContext()` returns null (C1's unknown-thread path).
*Recommendation:* null-check with a clear message rather than relying on `-ea`.

### StallDetector (`bridge/context/stall/StallDetector.java`)
**T1 [CRASH] a *usage pattern* throws:** `detectStall()` raises `RuntimeException("Asynchronous pipeline stall")`
on the game thread when >30 of 60 frames contained a synchronising call. Plenty of legitimate mods (and vanilla
paths: `glGetError`, texture readback, `Display.sync`) sync often — this converts a perf hint into a hard crash
after ~1 second of that workload. *Recommendation:* log once and self-disable (`stallDetectionEnabled = false`).

**T2 [RACE] all five fields are written by both the game thread (`detectStall`) and the render thread (`update`)**
with no synchronisation → missed/phantom stalls. *Recommendation:* make them `volatile` (writes are already
idempotent) or move detection entirely to the render thread.

### ResourceLoader / Display
**R1 [BUG] `Thread.sleep(10)` in the progress-bar loop (`ResourceLoader.java:154`) sits inside a method that
declares `throws Exception`; an interrupt during window-close exits the loop silently and then *throws*
`SkipVanillaInitEpilogue`, masking the real shutdown reason.** Break out explicitly on interrupt.
**R2 [PERF] see P8 — per-mod `glFinish()` at load time.**

---

## Fixed vs. outstanding

| ID | Status |
|---|---|
| A1, A2 (Agent startup) | **fixed** |
| A3-A7 (constant-pool transformer) | **fixed** (A8 perf fixed too; A9 = needs verification against `assembly/*.j`) |
| B1 pool cap | **fixed** |
| C1-C4 ContextManager races + hot path | **fixed** (C3 leak = recommendation) |
| E2, E3 Executor frame recycling / interrupt | **fixed** |
| E1, E4, E5, E6 Executor | recommendation (behavioural) |
| F1, F2 Frame | **fixed** |
| S1-S3 Sync.sync | **fixed** (S4 = recommendation) |
| T1, T2 StallDetector | recommendation (changes a diagnostic feature's contract) |
| R1 ResourceLoader interrupt | recommendation |

Not yet audited in this session: `modules/methods` (9 files), `modules/proxy` (42), most of
`modules/renderer/overrides/loading/textures` (`TextureBuilder`, `DDSIntegration`), `GL11/GL20/GL30` bodies,
and `modules/jfr`. Those are the next loop iterations.
