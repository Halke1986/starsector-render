# Fast Rendering v0.8.7 — external code audit

## 1. Mod compatibility — the bridge implements a subset of LWJGL

This is the section with the most immediate player impact, and it was produced
mechanically rather than by reading.

Every `.class` entry of 507 jars (4 vanilla + 503 mod jars from a real modpack install)
was parsed at the constant-pool level and every reference to `org/lwjgl/opengl/*` was
extracted — 10,271 references. Those were diffed against the bridge's actual surface,
taken from `javap` over the compiled bridge classes.

**8,360 of 8,448 mod references resolve. 88 do not.** They split into two categories that
behave completely differently.

### 1a. Owner is rewritten, member is absent → linkage error when the call executes

The agent rewrites `org/lwjgl/opengl/GL11` and 17 sibling classes to the bridge for every
mod class (`ScriptTransformations.java:8-27`). Where the bridge does not declare the exact
name and descriptor, the call site throws `NoSuchMethodError` or `NoSuchFieldError` the
first time it runs — not at class load, which is why this can hide for a long time and
then surface in one specific situation.

Confirmed, with the referencing mod identified and the call site checked for reachability:

| finding | member | reached from |
|---|---|---|
| WP-K-2 | `GL11.glPolygonMode(II)V` | 22 referencing classes; live `invokestatic` confirmed in enabled UAF `uaf_omniscan` |
| WP-K-3 | `GL20.glBindAttribLocation(IILjava/lang/CharSequence;)V` | Starsector Marines, `PlanetBillboardDrawable.buildProgram`, unconditional |
| WP-K-5 | `GL11.glColor4b(BBBB)V` | Halo Dynamics render objects, unconditional |
| WP-K-6 | `GL11.glGetFloat(I…FloatBuffer)`, `glLineStipple(IS)V` | Farsight Drive state-save and stipple paths |
| WP-K-7 | `GL11.glTexImage1D(…FloatBuffer)` | GraphicsLib `LensShader.drawRipples`, both branches |
| WP-K-9…12 | `GL42.glTexStorage1D/3D`, `glPrioritizeTextures`, six fixed-function overloads | BoxUtil LUT generation and legacy lighting |
| WP-K-13 | `GL20.glUniform1(I…IntBuffer)V` | CPG `ShaderUniformManager.setIntArray` |
| WP-K-14 | client colour-pointer descriptor | Combat Radar, non-VBO setting |

**WP-K-6 deserves separate attention.** Farsight wraps those paths in `catch (Exception)`.
`NoSuchMethodError` is an `Error`, not an `Exception`, so the mod's own defensive handling
cannot catch it. A mod that tried to be careful still dies.

One claim in this group was **rejected**: the vanilla `SpriteBatch` ARB VBO path is inert,
because the bridge's `glGetString(GL_EXTENSIONS)` never reports that extension, so vanilla
never enters the branch.

### 1b. Owner is not rewritten at all → the call bypasses the bridge

68 references name classes that appear in neither the core map
(`ClassTransformer.java:13-39`) nor the script map. These do not fail to link. They execute
immediately, on the calling thread, against the live context — while the bridge still holds
queued commands for that same context.

| references | owner |
|---|---|
| 47 | `ContextCapabilities` |
| 46 | `EXTFramebufferObject` |
| 46 | `ARBFramebufferObject` |
| 10 each | `NVBindlessTexture`, `ARBBindlessTexture` |
| 3 | `KHRDebugCallback` |
| 2 | **`GL12`** |

92 references across the two framebuffer extension classes means essentially every
GraphicsLib-style mod that renders to an offscreen target does so outside the bridge's
knowledge, while the bridge believes it owns GL state.

**The `GL12` omission looks accidental.** `ScriptTransformations` lists GL11, GL13, GL14,
GL15, GL20, GL30 … — it skips from GL11 straight to GL13, while rewriting the classes on
both sides of the gap. A mod mixing GL11 and GL12 calls in one drawing sequence gets half
its commands queued and half executed immediately. Compare the VOpt exemption
(`ClassTransformer.java:103-105`), which is deliberate and carries a comment explaining
why; this one carries nothing.

*Reproduce:* `out/audit/tools/extract_gl_calls.py` and `diff_bridge_surface.py`, both with
commands in their headers. Raw data in `out/audit/inventory/T0.2-*`.

---

## 2. Concurrency in the async bridge

- **WP-A-1** — cross-context `glDeleteSync` can block on `sync.future().get()` while
  holding the process-wide `execMutex`. `Executor.java`, `GL32.java:37-51`.

THIS IS UNREACHABLE IN BOXUTIL, THE ONLY MOD THAT USES CONCURRENT GL CONTEXTS. BUT THE FIX 
IS EASY AND I WILL APPLY IT JUST IN CASE.
   
- **WP-A-2** — a failed or cancelled fence command leaves its future never completed;
  the future is only completed inside the command's own `run`, so waiters cannot escape.
  
- **WP-A-3** — reentrant `wait`/`get` from inside a command self-deadlocks that context's
  executor and, through the shared mutex, blocks the others. Graded *plausible*: the cycle
  is mechanically real, reachability is unproven.

**Races (crash).** Both confirmed at high confidence by both passes.

- **WP-A-4** — `ContextManager.auxContext` is a plain `HashMap` (`ContextManager.java:15`),
  mutated under the class monitor but **read without any lock on every GL call**.
- **WP-A-5** — `getThreadContext` hands `mainContext` to any unregistered non-main thread
  while `auxContext.isEmpty()`, which turns that thread into an unsynchronised co-producer
  of the main `Frame`.

**State corruption after an exception.**

- **WP-A-7** — `swapFramesAndSync` submits frame B and then waits on frame A; if A fails,
  B has already been submitted and can execute against invalid GL state.
  
PARTIALLY CORRECT. FRAME B DOES CHECK FOR FRAME A RESULT AND ABORTS EXECUTION IF FRAME A FAILED.
THE MECHANISM IS HOWEVER SUBJECT TO A RACE CONDITION.
 
- **WP-A-8** — recovery replaces `currentFrame` after the client-side mirrors have already
  advanced, and then suppresses all subsequent assertion failures. The pipeline keeps
  running in a state the mirrors no longer describe.

THIS ONE I DON'T UNDERSTAND.
  
- **WP-A-9** — `glShaderSource` stores the caller's `CharSequence` by reference and reads
  it later on the executor thread. A caller that reuses a `StringBuilder` compiles whatever
  the buffer holds at replay time, not at call time.

**WP-C-2** — `allocatedListsNumber` is a `static` field, but `glGenLists` is a
`synchronized` **instance** method, so it locks `this`. Each context holds two
`ListManager` instances, so different instances increment one static counter under
different monitors. A lost update hands two display lists the same id. *Verified by hand
for this report* (`ListManager.java:32`, `:71-75`) after the two automated passes
disagreed.

---

## 3. Divergence from vanilla behaviour

Fast Rendering replaces vanilla method bodies rather than wrapping them. A deobfuscated,
gameplay-equivalence-certified reconstruction of 0.98a-RC8 was available, so each
replacement was read side by side with its original. These are defects that cannot be seen
from the mod's source alone — the code looks correct until you notice what the original
also did.

**Silent loss of work the original performed:**

- **WP-V-core-2** — `forceMipmapsFor` is silently ignored for every FR-uploaded texture.
- **WP-V-core-3** — registered image processors are skipped on the gameplay texture path.

Neither crashes nor renders visibly wrong. The mod simply stops doing part of what the
engine did.

**Removed defensive checks and changed failure behaviour:**

- **WP-V-core-1** — the texture load path converts every failure into `RuntimeException`,
  defeating vanilla's `IOException` fallbacks (crash).
- **WP-V-core-4** — `renderExcluding` lost its null guard; NPE on a null exclusion array.
- **WP-V-core-5** — the replaced `renderOnly` hard-casts to combat types, breaking the
  generic renderer for any other caller.
- **WP-O-3** — an interrupt during combat pacing now escapes the handler vanilla used.

**Changed gameplay decisions:**

- **WP-O-4** — reinforcement reselection keeps only the civilian check and discards every
  other vanilla eligibility decision: deployment budget, `allowedToDeploy`, CR gates, role
  and carrier handling. Verified line by line against vanilla `DeploymentManager`.
- **WP-O-8** — open or discontinuous mod-supplied bounds lose terminal vertices relative to
  vanilla (`Tesselation.java:22-…`).

**Frame pacing and limits (`overrides/`):**

- **WP-O-2** — `Sync.sync` computes `1_000_000_000 / fps` from a settings value. `(long)fps`
  is 0 for any value in  and for NaN, and integer division by zero follows.
- **WP-O-10** — the replacement frame limiter **busy-spins** on the game thread for the
  remainder of every under-budget frame (`Sync.java:62-86`), where vanilla slept.
- **WP-O-1** — thirteen combat particle caps are set to `Integer.MAX_VALUE`
  (`CombatEngine.java:95-114`), removing vanilla's 500–5000 bounds. `readme.txt` already
  notes Particle Engine can crash in very large battles.

**Exception-unsafe state restoration:**

- **WP-O-9** — reorder mode is enabled, arbitrary mod code is called, and it is disabled
  afterwards **without `finally`** (`LayeredRenderer.java:22-34`; same shape around particle
  renderers in `CombatEngine.java:69-92`).
- **WP-O-5 / WP-O-6** — the save/load background renderer swallows every exception (because
  the game would otherwise treat a throw as save corruption) and its manual GL save/restore
  is neither exhaustive nor exception-safe. Vanilla's `glPushAttrib(24832)` runs *after*
  FR's prelude, so it snapshots state FR has already changed.

---

## 4. Launch and install integrity

- **WP-L-1 / WP-P-2** — `Agent.premain` reads `starfarer_obf.jar` through a **working-directory
  relative** path (`Agent.java:17-19`) and lets the I/O failure escape `premain`, which aborts
  JVM startup before the transformer is ever registered. Two packages found this
  independently.
- **WP-P-1** — the same method computes the vanilla jar's SHA-256, logs it, and never
  compares it to anything. The documented expected value matches neither of the two
  0.98a-RC8 installs available here, so the version guard is decorative while the symbolic
  rewrites it would protect are version-sensitive.
- **WP-L-2** — `scripts/deploy.sh:1-11` deletes every installed launch artifact before
  validating sources or copying replacements. A failed deploy leaves the install unlaunchable.
- **WP-L-8** — `fr.jar` wins class loading over fifteen vanilla classes with no build-identity
  or compatibility check.

---

## 5. Performance

All findings *unmeasured*, by design. Ranked by expected effect:

- **WP-F-1** — the `static execMutex` serialises frame execution across **all** contexts,
  which removes the parallelism the architecture exists to provide. It implements a
  workaround for BoxUtil flicker; scoping it more narrowly than process-wide is the
  question worth answering.
- **WP-F-2** — `glGetInteger` consults `StateCache` only for pnames inside its `switch`;
  anything else stalls the pipeline on every call.
- **WP-F-5** — `glFlush()` runs once per **submitted batch**, and every stall submits a
  batch, so a stall-heavy frame flushes many times rather than once.
- **WP-F-4** — `getThreadContext` performs `auxContext.isEmpty()` plus a
  `Thread.currentThread()` comparison on every GL call once any auxiliary context exists.
- **WP-F-3** — `GLCommand.run` is dispatched from a single site over 196+ record types
  (megamorphic).
- **WP-F-7** — `glGetError` has no cache and stalls the game thread on every call.
- **WP-F-8** — `glNormal3f` allocates a record per call while the other vertex-hot commands
  use shared static instances.

**Retention (WP-G).** The systemic statement is more useful than the individual leaks:
**no pool or cache in the bridge has an eviction path anywhere in the design.** Deleting a
GL object does not purge its client-side mirror — `TextureTracker.glDeleteTextures` leaves
`parameterCache`, `GL20.glDeleteProgram` leaves `ShaderTracker`. `ContextManager.auxContext`
is keyed by `Thread` and entries are removed only by an explicit `destroyAuxContext`, so a
dead worker thread retains its context, its executor and everything they reference
(WP-A-11). Note that native direct buffers, ordinary heap and GPU objects are three
separate budgets and should not be summed.
