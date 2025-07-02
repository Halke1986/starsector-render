rm -rf ./jars/bridged/
mkdir -p ./jars/bridged/

python ../../../Krakatau/assemble.py -out ./jars/bridged/starfarer.api.jar -r ./assembly/bridged/api/
python ../../../Krakatau/assemble.py -out ./jars/bridged/fs.common_obf.jar -r ./assembly/bridged/common/
python ../../../Krakatau/assemble.py -out ./jars/bridged/starfarer_obf.jar -r ./assembly/bridged/starfarer/