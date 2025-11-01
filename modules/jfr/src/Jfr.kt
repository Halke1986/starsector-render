import jdk.jfr.consumer.RecordedEvent
import jdk.jfr.consumer.RecordedThread
import jdk.jfr.consumer.RecordingFile
import java.io.IOException
import java.nio.file.Path
import java.time.Duration
import java.time.Instant
import kotlin.io.path.deleteIfExists

fun main() {
    // --- Hardcoded inputs (adjust as needed) ---
    val inputJfr = Path.of("profiles/profile-1761770349.jfr")
    val outputJfr = Path.of("profiles/filtered-1761770349.jfr")

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
    val selectedThreads: List<String> = listOf("FR-Render-0", "Thread-3")
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
    val profStart: Instant = Instant.parse("2025-10-29T20:00:00Z");
    val from: Instant = profStart.plus(Duration.parse("PT39M54.216S"));
    val to: Instant = profStart.plus(Duration.parse("PT39M54.538S"));

    val x = e.startTime
    return (x.isAfter(from) || x.equals(from)) && (x.isBefore(to) || x.equals(to))
}
