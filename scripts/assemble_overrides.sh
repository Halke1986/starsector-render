rm -rf ./jars/overrides/
mkdir -p ./jars/overrides/

python ../../../Krakatau/assemble.py -out ./jars/overrides/fs.common_obf.jar -r ./assembly/overrides/common/
python ../../../Krakatau/assemble.py -out ./jars/overrides/starfarer_obf.jar -r ./assembly/overrides/starfarer/