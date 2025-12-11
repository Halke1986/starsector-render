- Fixed an issue where certain modded resources failed to load when the game was running on systems using the Turkish locale (and possibly other locales). Reported by Star☆Child.
- Fixed a visual error where Kinetic Fragment glow animation was replaced by a white square. Reported by niko the cool elongated, Slubernoob, Vanshilar and others.

v0.6.1

- Fixed asynchronous pipeline stall when calling Crabshack radiance plugin. Reported by Slubernoob.
- Fixed an issue where some missions would not load correctly. Reported by Crablobab.
- Fixed a race condition where the game would crash randomly during initialization and report a missing resource. Reported by several users. 

v0.6.0

- Removed unnecessary JVM arguments. This should result in performance and stability improvements.
- Fixed asynchronous pipeline stall that could occur when defining new OpenGL textures every frame. Reported by rolfosian.
- Optimized game startup time.
- Osiris Alliance, Diamond Legacy and other mods that call OpenGL from Janino-compiled Java source are now supported. 

v0.5.3

- Fixed a Ship hull spec not found crash that occurred when loading Machina Void Shipyards Armaa Expansion Patch. Reported by nghi.casual.

v0.5.2

- Fixed a race condition in vanilla code that could cause ClassNotFoundException at game startup.
- Optimized game startup time. The game now loads faster and uses less memory.
- Added profiler.
- Added support for Moci Ship Pack. Incompatibility reported by memebfgpgn.
- Added support for ruddygreat widely stolen PonderableOrb class. Orbs are now 100% more ponderable. Incompatibility reported by Chikanuk.

v0.5.1

- Fixed asynchronous pipeline stall when using Advanced Gunnery Control configuration UI. Reported by niko the cool elongated.
- Fixed a java.lang.reflect.InvocationTargetException when exporting AotD Seats of Power timeline. Reported by orange.
- Fixed several issues related to loading files during the game startup. Reported by Bûğäţţï Êçhëłøñ.

v0.5.0

- Reworked vanilla script loading code. This should improve stability and reduce random crashes during game startup.
- Optimized game startup time. The game now loads up to 25% faster.
- Added Fast Rendering version string to the displayed Starsector version.

v0.4.7

- Added support for Rigel Security. Incompatibility reported by Kujisawa Zimberman.
- Fixed a java.lang.NoSuchMethodError exception when using BoxUtil with OpenCL enabled. Reported by Acid.

v0.4.6

- Added support for Farsight Drive. Incompatibility reported by Kujisawa Zimberman.
- Added support for bootleg CMUtils. Official CMUtils are still incompatible.

v0.4.5

- Fixed visual errors affecting text display and other entities. Reported by Notice of Service Termination, Choptimist, Kujisawa Zimberman and Dwarden.
- Added Fast Renderer custom icon, designed by Bûğäţţï Êçhëłøñ. 

v0.4.4

- Added support for BoxUtil 1.4.8. Incompatibility reported by several users.
- Added support for UIUtil. Incompatibility reported Dwarden.

v0.4.3

- Added support for Unnamed Fleet Presets mod. Incompatibility reported by Bûğäţţï Êçhëłøñ.
- Fixed a race condition that could occasionally cause the game to crash during loading. Reported by Bûğäţţï Êçhëłøñ.
- Fixed an Asynchronous pipeline stall that could crash the game when using Console Commands on a GPU other than Intel. Reported by Rayden_Solo.

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
