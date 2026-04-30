import jdk.jfr.consumer.RecordedEvent
import jdk.jfr.consumer.RecordedThread
import jdk.jfr.consumer.RecordingFile
import java.io.IOException
import java.nio.file.Path
import java.time.Instant
import kotlin.io.path.deleteIfExists

fun main() {
    // --- Hardcoded inputs (adjust as needed) ---
    val inputJfr = Path.of("profiles/profile-1777497003.jfr")
    val outputJfr = Path.of("profiles/filtered-1777497003.jfr")

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
    return filterThread(e) //&& filterTime(e)
}

fun filterThread(e: RecordedEvent): Boolean {
    val threadBlacklist: List<String> = listOf(
        "AWT-Windows",
        "RMI TCP",
        "Thread-13",
    )

    if (e.hasField("sampledThread")) {
        val sampledThread: RecordedThread? = e.getValue("sampledThread") as? RecordedThread

        if (threadBlacklist.any { sampledThread?.javaName?.startsWith(it) == true }) {
            return false
        }
    }

    // Event thread.
    if (threadBlacklist.any { e.thread?.javaName?.startsWith(it) == true }) {
        return false
    }

    return true
}

fun filterTime(e: RecordedEvent): Boolean {
    val from: Instant = Instant.parse("2025-12-17T18:08:00.720Z");
    val to: Instant = Instant.parse("2025-12-17T18:08:53.521Z");

    val x = e.startTime
    return (x.isAfter(from) || x.equals(from)) && (x.isBefore(to) || x.equals(to))
}
