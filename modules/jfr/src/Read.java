import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CodingErrorAction;
import java.nio.charset.StandardCharsets;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.List;

import static java.nio.file.Files.newInputStream;

public class Read {
    public static List<Integer> readFirstColumnAsIntegers(String path) throws IOException {
        CharsetDecoder dec = StandardCharsets.UTF_8.newDecoder()
                .onMalformedInput(CodingErrorAction.REPLACE)
                .onUnmappableCharacter(CodingErrorAction.REPLACE);

        List<Integer> result = new ArrayList<>();

        try (BufferedReader reader = new BufferedReader(new InputStreamReader(newInputStream(Path.of(path)), dec))) {
            String line;

            try {
                while ((line = reader.readLine()) != null) {
                    line = line.trim();
                    if (line.isEmpty()) {
                        continue;
                    }

                    int space = line.indexOf(' ');
                    String firstColumn = (space >= 0) ? line.substring(0, space) : line;

                    result.add(Integer.parseInt(firstColumn));
                }
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }

        return result;
    }
}
