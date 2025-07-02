rm -rf ./disassembly/compile/
mkdir -p ./disassembly/compile/

python3 ../../../Krakatau/disassemble.py -out ./disassembly/compile/renderer ./jars/compile/renderer.jar
python3 ../../../Krakatau/disassemble.py -out ./disassembly/compile/methods  ./jars/compile/methods.jar
