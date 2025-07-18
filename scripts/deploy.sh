rm -r                              "$SS_PATH/starsector-core/starfarer.api.jar"
rm -r                              "$SS_PATH/starsector-core/fs.common_obf.jar"
rm -r                              "$SS_PATH/starsector-core/starfarer_obf.jar"
rm -r                              "$SS_PATH/starsector-core/lwjgl_util.jar"

cp ./jars/final/starfarer.api.jar  "$SS_PATH/starsector-core/starfarer.api.jar"
cp ./jars/final/fs.common_obf.jar  "$SS_PATH/starsector-core/fs.common_obf.jar"
cp ./jars/final/starfarer_obf.jar  "$SS_PATH/starsector-core/starfarer_obf.jar"
cp ./jars/final/lwjgl_util.jar     "$SS_PATH/starsector-core/lwjgl_util.jar"
