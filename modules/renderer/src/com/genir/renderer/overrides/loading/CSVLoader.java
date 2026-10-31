package com.genir.renderer.overrides.loading;

import com.fs.util.container.Pair;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * Performance-optimized version of Starsector CSV loading and merging method.
 */
public class CSVLoader {
    public static JSONArray getMergedSpreadsheetDataForMod(String uniqueColumn, String path, String mod) throws IOException, JSONException {
        List<Pair<FileLoader.ResourceLocation, InputStream>> streamLocations = FileLoader.FileLoader_getInstance().FileLoader_loadInputStreams(path);

        List<Pair<FileLoader.ResourceLocation, InputStream>> modStreams = new ArrayList<>();
        List<Pair<FileLoader.ResourceLocation, InputStream>> otherStreams = new ArrayList<>();

        for (Pair<FileLoader.ResourceLocation, InputStream> streamLocation : streamLocations) {
            FileLoader.ResourceLocation location = streamLocation.one;

            if (location.ResourceLocation_path != null && location.ResourceLocation_path.contains(mod)) {
                modStreams.add(streamLocation);
            } else {
                otherStreams.add(streamLocation);
            }
        }

        Set<String> uniqueValues = new HashSet<>();
        List<JSONObject> jsonRows = new ArrayList<>();

        // In vanilla, selected mod directory has the lowest priority.
        mergeSpreadsheetInLocations(uniqueColumn, path, otherStreams, uniqueValues, jsonRows);
        mergeSpreadsheetInLocations(uniqueColumn, path, modStreams, uniqueValues, jsonRows);

        JSONArray jsonArray = new JSONArray();
        for (int i = jsonRows.size() - 1; i >= 0; i--) {
            jsonArray.put(jsonRows.get(i));
        }

        return jsonArray;
    }

    private static void mergeSpreadsheetInLocations(
            String uniqueColumn,
            String path,
            List<Pair<FileLoader.ResourceLocation, InputStream>> streamLocations,
            Set<String> uniqueValues,
            List<JSONObject> jsonRows
    ) throws IOException, JSONException {
        for (int i = streamLocations.size() - 1; i >= 0; i--) {
            Pair<FileLoader.ResourceLocation, InputStream> streamLocation = streamLocations.get(i);

            // Read CSV data.
            InputStream stream = streamLocation.two;
            String csvText = LoadingUtils.LoadingUtils_readStreamAsString(stream);
            CSVData csvData = parseCSV(csvText);
            if (csvData == null) {
                continue;
            }

            // Find index of unique column.
            int uniqueColumnIdx = -1;
            for (int j = 0; j < csvData.columnNames.size(); j++) {
                if (csvData.columnNames.get(j).equals(uniqueColumn)) {
                    uniqueColumnIdx = j;
                    break;
                }
            }

            FileLoader.ResourceLocation location = streamLocation.one;
            String rowSource = location.ResourceLocation_path + "/" + path;
            for (int j = csvData.rows.size() - 1; j >= 0; j--) {
                List<String> stringRow = csvData.rows.get(j);

                // Skip non-unique rows.
                if (uniqueColumnIdx != -1) {
                    String uniqueValue = stringRow.get(uniqueColumnIdx);
                    if (!uniqueValues.add(uniqueValue)) {
                        continue;
                    }
                }

                // Build JSONObject from the row data.
                JSONObject jsonRow = new JSONObject();
                for (int k = 0; k < stringRow.size(); k++) {
                    String columnName = csvData.columnNames.get(k);
                    String columnValue = stringRow.get(k);
                    jsonRow.put(columnName, columnValue);
                }

                jsonRow.put("fs_rowSource", rowSource);
                jsonRows.add(jsonRow);
            }
        }
    }

    private static CSVData parseCSV(String csvText) throws JSONException {
        csvText = csvText.replaceAll("\r\n", "\n");

        int headerLineEnd = csvText.indexOf("\n");
        if (headerLineEnd == -1 || csvText.length() <= headerLineEnd + 1) {
            return null;
        }

        List<String> columnNames = parseCSVHeader(csvText);

        String csvBody = csvText.substring(headerLineEnd + 1) + "\n";
        List<List<String>> rows = new ArrayList<>();
        List<String> currentRow = null;

        StringBuilder fieldBuffer = null;
        StringBuilder quoteContext = new StringBuilder();
        int columnIndex = 0;
        boolean insideQuotes = false;
        boolean atFirstCharacterOfRow;
        CSVState parseState = CSVState.ROW_START;
        boolean commentRow = false;

        for (int charIdx = 0; charIdx < csvBody.length(); charIdx++) {
            char currentCharacter = csvBody.charAt(charIdx);
            char nextCharacter = (charIdx + 1 < csvBody.length()) ? csvBody.charAt(charIdx + 1) : ' ';

            // Handle new row beginning.
            if (parseState == CSVState.ROW_START) {
                commentRow = currentCharacter == '#';
                currentRow = new ArrayList<>(columnNames.size());
                columnIndex = 0;
                atFirstCharacterOfRow = true;
                parseState = CSVState.COL_START;
            } else {
                atFirstCharacterOfRow = false;
            }

            if (parseState == CSVState.COL_START) {
                fieldBuffer = new StringBuilder();
                parseState = CSVState.IN_COLUMN;
            }

            if (parseState == CSVState.IN_COLUMN) {
                if (currentCharacter == '"') {
                    if (nextCharacter == '"') {
                        fieldBuffer.append(currentCharacter);
                        quoteContext.append(currentCharacter);
                        charIdx++;
                    } else {
                        insideQuotes = !insideQuotes;
                        if (insideQuotes) {
                            quoteContext = new StringBuilder();
                        }
                    }
                } else if ((currentCharacter == ',' || currentCharacter == '\n') && !insideQuotes) {
                    if (columnIndex < columnNames.size()) {
                        currentRow.add(fieldBuffer.toString());
                    }

                    if (currentCharacter == ',') {
                        columnIndex++;
                        parseState = CSVState.COL_START;
                    } else {
                        if (!atFirstCharacterOfRow && !commentRow) {
                            rows.add(currentRow);
                        }

                        parseState = CSVState.ROW_START;
                    }
                } else {
                    fieldBuffer.append(currentCharacter);
                    quoteContext.append(currentCharacter);
                }
            }
        }

        if (insideQuotes) {
            throw new JSONException("Mismatched quotes in the string; last quote: [" + quoteContext + "]");
        }

        return new CSVData(columnNames, rows);
    }

    private static List<String> parseCSVHeader(String csvText) {
        int headerLineEnd = csvText.indexOf("\n");

        List<String> columnNames = new ArrayList<>();
        String headerLine = csvText.substring(0, headerLineEnd);
        String[] rawColumnNames = headerLine.split(",");
        for (String rawColumnName : rawColumnNames) {
            String columnName = rawColumnName;
            columnName = columnName.trim();
            if (columnName.startsWith("\"")) {
                columnName = columnName.substring(1);
            }

            if (columnName.endsWith("\"")) {
                columnName = columnName.substring(0, columnName.length() - 1);
            }

            columnName = columnName.replaceAll("\"\"", "\"");
            columnNames.add(columnName);
        }

        return columnNames;
    }

    private record CSVData(List<String> columnNames, List<List<String>> rows) {
    }

    private enum CSVState {
        IN_COLUMN,
        ROW_START,
        COL_START;
    }
}
