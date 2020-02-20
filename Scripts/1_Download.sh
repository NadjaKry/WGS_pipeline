echo "Downloading containers"
echo "Start time: "
date
echo -e "\n***"

mkdir Containers
cd Containers

singularity pull library://nadjakry/default/spades




cd ..

echo -e "\n***"
echo "End time: "
date
echo "FINNISCHED Downloading"