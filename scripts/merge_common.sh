rm -r ./jars/out/fs.common_obf.jar
cp ./jars/starfarer/fs.common_obf.jar ./jars/out/fs.common_obf.jar

zipmerge -s ./jars/out/fs.common_obf.jar ./jars/assembly/fs.common_obf.jar ./jars/build/renderer.jar
