rm -rf ./disassembly/final/
mkdir -p ./disassembly/final/

python3 ../../../Krakatau/disassemble.py -out ./disassembly/final/common ./jars/final/fs.common_obf.jar
python3 ../../../Krakatau/disassemble.py -out ./disassembly/final/starfarer ./jars/final/starfarer_obf.jar
