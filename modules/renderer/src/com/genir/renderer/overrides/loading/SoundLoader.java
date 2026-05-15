package com.genir.renderer.overrides.loading;

import com.genir.renderer.loaders.ClassName;
import com.genir.renderer.loaders.ClassTransformer;
import org.lwjgl.BufferUtils;
import org.lwjgl.openal.AL10;
import proxy.com.fs.graphics.FileRepository;
import proxy.sound.OggLoader;
import proxy.sound.SoundBuffer;
import proxy.sound.SoundStore;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.IntBuffer;
import java.security.ProtectionDomain;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;

import static com.genir.renderer.overrides.loading.ResourceLoader.mainThreadWaitGroup;

/**
 * The vanilla Ogg/Vorbis loader uses static/shared decoder state and cannot safely decode
 * multiple OGG streams in parallel. This class gives each worker thread its own copy of
 * the decoder classes by loading them through a dedicated ClassLoader.
 */
public class SoundLoader {
    private static final Set<String> knownSounds = new HashSet<>();
    private static SoundStore soundStore = null;

    private static final Object mapLock = new Object();

    private static final ThreadLocal<VorbisLoader> jorbisLoaders = ThreadLocal.withInitial(() ->
            new VorbisLoader(SoundLoader.class.getClassLoader())
    );

    public static void queueSound(String path) {
        if (path != null && knownSounds.add(path)) {
            ResourceLoader.workers.execute(() -> {
                try {
                    loadSound(path);
                } catch (Throwable e) {
                    ResourceLoader.setException(e);
                }
            });
        }
    }

    private static synchronized SoundStore getSoundStore() {
        if (soundStore == null) {
            soundStore = SoundStore.SoundStore_getInstance();
        }

        return soundStore;
    }

    private static void loadSound(String path) {
        // Check prerequisites.
        SoundStore soundStore = getSoundStore();
        if (!soundStore.getIsOpenALInitialized2()) {
            return;
        } else if (!soundStore.SoundStore_getIsInitialized()) {
            throw new RuntimeException("Can't load sounds until SoundStore is init(). Use the container init() method.");
        }

        // Sound already loaded.
        synchronized (mapLock) {
            if (soundStore.getTrackMap().get(path) != null) {
                return;
            }
        }

        // Load sound bytes.
        byte[] bytes;
        try {
            bytes = FileRepository.FileRepository_loadSound(path);
        } catch (Exception e) {
            // Vanilla throws a RuntimeException when sound fails to load.
            throw new RuntimeException("Sound with filename [" + path + "] not found or failed to load", e);
        }

        ByteArrayInputStream stream = new ByteArrayInputStream(bytes);
        String extension = path.substring(path.lastIndexOf(".") + 1).toLowerCase();

        boolean unsupported = false;
        try {
            if (extension.equals("ogg")) {
                loadOgg(path, stream, soundStore);
            } else if (extension.equals("wav")) {
                loadWav(path, stream, soundStore);
            } else {
                unsupported = true;
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

        if (unsupported) {
            throw new RuntimeException("Only wav and ogg are currently supported.");
        }

        // Submit empty job to main thread to progress the loading bar.
        mainThreadWaitGroup.incrementAndGet();
        ResourceLoader.mainThreadQueue.add(mainThreadWaitGroup::decrementAndGet);
    }

    private static void loadOgg(String path, InputStream stream, SoundStore soundStore) throws IOException {
        int bufferId;
        try {
            // Force parent loader to define SoundBuffer before the child loader can encounter it.
            new SoundBuffer();

            // Load thread-specific instance of OggLoader.
            VorbisLoader jorbisLoader = jorbisLoaders.get();
            Class<?> oggLoaderClass = jorbisLoader.loadClass("com.genir.renderer.overrides.loading.SoundLoader$OggLoaderWrapper");
            var oggLoader = (OggLoaderWrapperInterface) oggLoaderClass.newInstance();

            SoundBuffer soundBuffer = oggLoader.load(stream);

            // OpenAL buffer creation is done on worker threads intentionally.
            // This assumes the OpenAL context is current/usable on these threads.
            IntBuffer alData = BufferUtils.createIntBuffer(1);
            int format = soundBuffer.SoundBuffer_channels > 1 ? AL10.AL_FORMAT_STEREO16 : AL10.AL_FORMAT_MONO16;
            AL10.alGenBuffers(alData);
            AL10.alBufferData(alData.get(0), format, soundBuffer.SoundBuffer_buffer, soundBuffer.SoundBuffer_freq);

            bufferId = alData.get(0);
            HashMap<String, Integer> trackMap = soundStore.getTrackMap();
            synchronized (mapLock) {
                trackMap.put(path, bufferId);
            }
        } catch (Exception var7) {
            throw new IOException("Unable to load: " + path, var7);
        }

        if (bufferId == -1) {
            throw new IOException("Unable to load: " + path);
        }
    }

    /**
     * Almost no resources use vaw format. It's safe to delegate the wav loading to slow vanilla logic.
     */
    private static void loadWav(String path, InputStream stream, SoundStore soundStore) throws IOException {
        synchronized (mapLock) {
            soundStore.SoundStore_loadWav(path, stream);
        }
    }

    /**
     * OggLoaderWrapper interface allows to call OggLoaderWrapper without reflection.
     */
    public interface OggLoaderWrapperInterface {
        SoundBuffer load(InputStream var1) throws IOException;
    }

    /**
     * OggLoaderWrapper allows to load OggLoader without hard-coding its obfuscated name.
     */
    public static class OggLoaderWrapper implements OggLoaderWrapperInterface {
        private final OggLoader loader = new OggLoader();

        @Override
        public SoundBuffer load(InputStream stream) throws IOException {
            return loader.OggLoader_load(stream);
        }
    }

    private static class VorbisLoader extends ClassLoader {
        public VorbisLoader(ClassLoader parent) {
            super(parent);
        }

        @Override
        public Class<?> loadClass(String name, boolean resolve) throws ClassNotFoundException {
            if (!name.startsWith("sound.") && !name.startsWith("com.jcraft.") && !name.endsWith("OggLoaderWrapper")) {
                return super.loadClass(name, resolve);
            }

            Class<?> loaded = findLoadedClass(name);
            if (loaded != null) {
                return loaded;
            }

            try {
                return findClass(name);
            } catch (LinkageError e) {
                return super.loadClass(name, resolve);
            }
        }

        /**
         * Use the parent loader (app class loader) to read class bytecode without loading the class.
         */
        @Override
        public Class<?> findClass(String name) throws ClassNotFoundException {
            String internalName = ClassName.internal(name);

            // Use parent instead of super, to get deobfuscated bytecode.
            InputStream stream = getParent().getResourceAsStream(internalName);
            if (stream == null) {
                throw new ClassNotFoundException(ClassName.binary(internalName));
            }

            try {
                byte[] bytecode = stream.readAllBytes();
                ProtectionDomain pd = ClassTransformer.getResourceProtectionDomain(internalName, super.findResource(internalName), this);
                return super.defineClass(name, bytecode, 0, bytecode.length, pd);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }
}
