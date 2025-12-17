import jdk.jfr.consumer.RecordedEvent
import jdk.jfr.consumer.RecordedThread
import jdk.jfr.consumer.RecordingFile
import java.io.IOException
import java.nio.file.Path
import java.time.Instant
import kotlin.io.path.deleteIfExists

fun main() {
    // --- Hardcoded inputs (adjust as needed) ---
    val inputJfr = Path.of("profiles/profile-1765994848.jfr")
    val outputJfr = Path.of("profiles/filtered-1765994848.jfr")

    outputJfr.deleteIfExists()

    try {
        RecordingFile(inputJfr).use { rf: RecordingFile ->
            // Write filtered events to a new JFR file.
            rf.write(outputJfr, ::filter)
        }

        println("Done. Wrote filtered recording to: $outputJfr")
    } catch (e: IOException) {
        e.printStackTrace()
    }
}

fun filter(e: RecordedEvent): Boolean {
    return filterThread(e) && filterTime(e)
}

fun filterThread(e: RecordedEvent): Boolean {
    // Sampled thread.
    val selectedThreads: List<String> = listOf("Thread-4")
    if (e.hasField("sampledThread")) {
        val sampledThread: RecordedThread? = e.getValue("sampledThread") as? RecordedThread

        if (selectedThreads.contains(sampledThread?.javaName)) {
            return true
        }
    }

    // Event thread.
    if (selectedThreads.contains(e.thread?.javaName)) {
        return true
    }

    return false
}

fun filterTime(e: RecordedEvent): Boolean {
    val from: Instant = Instant.parse("2025-12-17T18:08:00.720Z");
    val to: Instant = Instant.parse("2025-12-17T18:08:53.521Z");

    val x = e.startTime
    return (x.isAfter(from) || x.equals(from)) && (x.isBefore(to) || x.equals(to))
}
