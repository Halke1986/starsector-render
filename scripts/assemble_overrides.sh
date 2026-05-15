rm -rf ./jars/assembly/
mkdir -p ./jars/assembly/

python ../../../Krakatau/assemble.py -out ./jars/assembly/overrides.jar -r ./assembly/
