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
