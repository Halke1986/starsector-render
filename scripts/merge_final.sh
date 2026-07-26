rm -rf ./jars/final/
mkdir ./jars/final/

# Copy rendered jar as the base
cp ./jars/compile/fr.jar ./jars/final/fr.jar

# Merge overriden methods
zipmerge -s ./jars/final/fr.jar ./jars/assembly/overrides.jar
