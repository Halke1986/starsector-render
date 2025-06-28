rm -rf ./disassembly/build/
mkdir -p ./disassembly/build/

python3 ../../../Krakatau/disassemble.py -out ./disassembly/build/renderer ./jars/build/renderer.jar
python3 ../../../Krakatau/disassemble.py -out ./disassembly/build/toAssembly  ./jars/build/toAssembly.jar
