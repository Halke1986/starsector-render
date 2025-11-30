rm -rf ./disassembly/compile/
mkdir -p ./disassembly/compile/

python3 ../../../Krakatau/disassemble.py -out ./disassembly/compile/fr      ./jars/compile/fr.jar
python3 ../../../Krakatau/disassemble.py -out ./disassembly/compile/methods ./jars/compile/methods.jar
python3 ../../../Krakatau/disassemble.py -out ./disassembly/compile/proxy   ./jars/compile/proxy.jar
