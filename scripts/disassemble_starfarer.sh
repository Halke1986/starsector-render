rm -rf ./disassembly/starfarer/
mkdir -p ./disassembly/starfarer/

python3 ../../../Krakatau/disassemble.py -out ./disassembly/starfarer/starfarer  ./jars/starfarer/starfarer_obf.jar
python3 ../../../Krakatau/disassemble.py -out ./disassembly/starfarer/api        ./jars/starfarer/starfarer.api.jar
python3 ../../../Krakatau/disassemble.py -out ./disassembly/starfarer/common     ./jars/starfarer/fs.common_obf.jar
python3 ../../../Krakatau/disassemble.py -out ./disassembly/starfarer/lwjgl_util ./jars/starfarer/lwjgl_util.jar
