- Added support for Unnamed Fleet Presets mod. Incompatibility reported by Bûğäţţï Êçhëłøñ.

v0.4.2

- Fixed crashes and visual errors in BoxUtil test mission. Reported by Rrewin.

v0.4.1

- Added experimental support for BoxUtil. Tested with Loulan Industries and the default BoxUtil configuration.

v0.4.0

- Improved the installation method: vanilla JAR files no longer need to be replaced, and Fast Rendering is now enabled via a dedicated .bat file. Suggested by Lukas.
- Added support for Portrait Replacer by CombustibleLemon. Incompatibility reported by Versil.

v0.3.6

- Fixed visual errors when rendering the Combat Radar. Reported by Bûğäţţï Êçhëłøñ.

v0.3.5

- Fixed the "RuntimeException: Unknown constant tag 51" crash at game startup when loading Particle Engine classes. Reported by Bûğäţţï Êçhëłøñ.
- Fixed a race condition in Starsector’s texture loading code, which could cause an IllegalArgumentException at startup or intermittent visual errors. Issue reported by Seekers, Dakkadakka, float, and LujaCro.
- Added support for Transfer All Items. Incompatibility reported by Minh.

v0.3.4

- Fixed an "IllegalStateException: Unsupported buffer type: null" crash at game startup. Reported by LujaCro and Seekers.

v0.3.3

- Increased frame sync resolution from milliseconds to microseconds in campaign.
- Fixed a RuntimeException when using AI Tweaks shield assist. Reported by Minh.
- Fixed asynchronous pipeline stalls caused by GL11.glFinish calls. Reported by Minh.
- Fixed visual errors that would appear after opening the AoTD Vaults of Knowledge Special Projects tab. Reported by Dakkadakka.
- Improved logging when GL11.glTexImage2D throws an exception. This will make it easier to diagnose the IllegalArgumentException crash at startup reported by float and LujaCro.  

v0.3.2

- Fixed GL11.glColor3ub to no longer expect an alpha parameter. Reported by float.
- Fixed an EXCEPTION_ACCESS_VIOLATION when rendering LazyFont from LazyLib. Reported by float.
- Fixed an IllegalArgumentException when loading textures at startup. Reported by float.

v0.3.1

- Added support for Starhammer 40K: Persean Expedition. Incompatibility reported by SanityAdrift.
- Added support for Ship Mastery System. Incompatibility reported by Levidos and YukiM.
- Fixed an ArrayIndexOutOfBoundsException when many vertices were being displayed. Reported by Ubernoob.

v0.3.0

- Increased frame sync resolution from milliseconds to microseconds. This removes visible stutter in smooth motion as long as FPS matches (or divides evenly into) the monitor refresh rate. Change applies only in combat, not campaign.
- Reduced main/render thread synchronization overhead, improving performance by a few percent. 
- Added support for Combat Radar. Incompatibility reported by Bûğäţţï Êçhëłøñ.

v0.2.1

- Added support for Combat Chatter. Incompatibility reported by SanityAdrift.
- Added support for Nexerelin. Incompatibility reported by DreadfulDrifter.

v0.2.0

- Added support for Particle Engine.

v0.1.1

- Fixed visual glitches on damage decals in fleet view when the "forceNoVBO" option is disabled in the Starsector config.
- Fixed asynchronous pipeline stall when using Console Commands. Reported by Ubernoob.
- Fixed asynchronous pipeline stall when entering RAT Abyssal Depths. Reported by Lukas.
- Fixed a EmptyStackException when using QoL Pack Ship Direction Marker. Reported by Seekers.

v0.1.0

- Added support for GraphicsLib, including shaders. Note: GraphicsLib is still slow and may reduce FPS.
- Added support for Fast Engine Rendering. It’s not faster than vanilla.
- Added support for "forceNoVBO": false in Starsector config. May cause visual glitches with damage decals in fleet view.
- Added support for Unthemed Weapons Collection.
- Added support for various other mods.
- Improved performance.
- Significantly improved error reporting.
- Fixed errors in Officer Retrain tab rendering. Reported by Ubernoob.

v0.0.0

- Initial version.
