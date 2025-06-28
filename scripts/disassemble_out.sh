rm -rf ./disassembly/out/
mkdir -p ./disassembly/out/

python3 ../../../Krakatau/disassemble.py -out ./disassembly/out/common ./jars/out/fs.common_obf.jar
