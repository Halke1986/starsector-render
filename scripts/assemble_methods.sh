rm -rf ./jars/methods/
mkdir -p ./jars/methods/

python ../../../Krakatau/assemble.py -out ./jars/methods/fs.common_obf.jar -r ./assembly/methods/common/
python ../../../Krakatau/assemble.py -out ./jars/methods/starfarer_obf.jar -r ./assembly/methods/starfarer/