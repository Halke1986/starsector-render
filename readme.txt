STARSECTOR PERFORMANCE OVERHAUL

- Improved framerate and animation smoothness, especially on lower-end GPUs.
- Improved game loading speed.

BUGFIXES AND IMPROVEMENTS TO VANILLA GAME ENGINE

- Fixed texture edge artifacts, such as the bottom row of pixels appearing at the top of a portrait.
- Fixed the game window not being responsive during loading. It is possible to Alt+Tab in and out or close the window at any time.
- Fixed multiple race conditions that could cause random crashes at game startup. (The issue is fixed in Starsector since 0.98.5a)
- Fixed all instances of background flickering when saving and loading the game.
- Fixed an issue where engine contrails were rendered below planets.
- Fixed an XStream issue that could cause freezes during game saving.
- Fixed an issue where enemy ships were deployed progressively from smallest to largest.

REQUIREMENTS

- Starsector Windows.
- Quad-core CPU recommended. On single-core or dual-core CPUs, performance may decrease.

MOD INTEGRATION

- When used with VRAM Optimizer, Fast Rendering uploads textures only when needed, further reducing VRAM usage compared to using VRAM Optimizer alone.

INCOMPATIBLE MODS

- BoxUtil: Version 1.6.0 and later require a GPU that supports OpenGL 4.5 when used with Fast Rendering.
- Particle Engine: In very large battles, the game can crash on rare occasions. Typical gameplay is unlikely to be affected.
- 影之诗动态头像包 Shadowverse Dynamic Portraits: Portraits from this pack appear as static images.

BYTECODE MODIFICATION DISCLOSURE

- Fast Rendering modifies the bytecode of Starsector, the LWJGL and XStream libraries, and any script that calls OpenGL methods.
- These modifications are performed using a Java agent, the ObjectWeb ASM library, and custom bytecode transformation code.

INSTALLATION

- Copy the included files into the starsector-core directory.
- (Optional) Change the allocated memory by editing fr.vmparams file.
- Start the game by running fr.exe or fr.bat.
- Can be added and removed mid-save.
