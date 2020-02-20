echo "Downloading containers"
echo "Start time: "
date
echo -e "\n***"

mkdir Containers
cd Containers

singularity pull library://nadjakry/default/spades
singularity pull library://nadjakry/default/quast
singularity pull library://nadjakry/default/multiqc
singularity pull library://nadjakry/default/fastqc
singularity pull library://nadjakry/default/checkm

cd ..

echo -e "\n***"
echo "End time: "
date
echo "FINNISCHED Downloading"
