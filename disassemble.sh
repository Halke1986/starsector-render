rm -rf ./disassembly
mkdir -p ./disassembly

python3 ../../../Krakatau/disassemble.py -out ./disassembly/starfarer ./starfarer/starfarer_obf.jar
python3 ../../../Krakatau/disassemble.py -out ./disassembly/api ./starfarer/starfarer.api.jar
python3 ../../../Krakatau/disassemble.py -out ./disassembly/common ./starfarer/fs.common_obf.jar
