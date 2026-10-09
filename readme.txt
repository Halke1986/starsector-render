STARSECTOR PERFORMANCE OVERHAUL

- Improved framerate and animation smoothness, especially on lower-end GPUs.
- Improved game loading speed.

BUGFIXES AND IMPROVEMENTS TO VANILLA GAME ENGINE

- Fixed multiple race conditions that could cause random crashes at game startup.
- Fixed an XStream issue that could cause freezes during game saving.
- Fixed all instances of background flickering when saving and loading the game.
- Fixed an issue where enemy ships were deployed progressively from smallest to largest.

REQUIREMENTS

- Starsector 0.98a-RC8 Windows.
- Quad-core CPU recommended. On single-core or dual-core CPUs, performance may decrease.

MOD INTEGRATION

- When used with VRAM Optimizer, Fast Rendering uploads textures only when needed, further reducing VRAM usage compared to using VRAM Optimizer alone.

INCOMPATIBLE MODS

- BoxUtil 1.6.0 and later.
- Particle Engine may rarely crash in very large battles. The issue is difficult to trigger and can be safely ignored for typical gameplay.

BYTECODE MODIFICATION DISCLOSURE

- Fast Rendering modifies the bytecode of Starsector, the LWJGL and XStream libraries, and any script that calls OpenGL methods.
- These modifications are performed using a Java agent, the ObjectWeb ASM library, and custom bytecode transformation code.

INSTALLATION

- Copy the included files into the starsector-core directory.
- (Optional) Change the allocated memory by editing fr.vmparams file.
- Start the game by running fr.bat instead of starsector.exe.
- (Optional) Create a shortcut to fr.bat, and set its icon to FR_SS.ico.
- Can be added and removed mid-save.
