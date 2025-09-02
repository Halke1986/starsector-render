rm -rf ./jars/final/

# Copy original Starfarer jars as the base
cp -R ./jars/starfarer/ ./jars/final/

# Merge overriden methods
zipmerge -s ./jars/final/fs.common_obf.jar ./jars/methods/fs.common_obf.jar
zipmerge -s ./jars/final/starfarer_obf.jar ./jars/methods/starfarer_obf.jar
