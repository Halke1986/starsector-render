rm -rf ./jars/final/

# Copy original Starfarer jars as the base
cp -R ./jars/starfarer/ ./jars/final/

# Merge bridged classes
zipmerge -s ./jars/final/fs.common_obf.jar ./jars/bridged/fs.common_obf.jar
zipmerge -s ./jars/final/starfarer_obf.jar ./jars/bridged/starfarer_obf.jar

# Merge overriden methods
zipmerge -s ./jars/final/fs.common_obf.jar ./jars/methods/fs.common_obf.jar
zipmerge -s ./jars/final/starfarer_obf.jar ./jars/methods/starfarer_obf.jar

# Merge renderer
zipmerge -s ./jars/final/starfarer_obf.jar ./jars/compile/renderer.jar
