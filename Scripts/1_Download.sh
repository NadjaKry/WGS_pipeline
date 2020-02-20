echo "Downloading containers"
echo "Start time: "
date
echo -e "\n***"

mkdir Containers
cd Containers

singularity pull -U library://nadjakry/default/spades:3.14.0
singularity pull -U library://nadjakry/default/quast:5.0.2
singularity pull -U library://nadjakry/default/multiqc:1.6
singularity pull -U library://nadjakry/default/fastqc:0.11.8
singularity pull -U library://nadjakry/default/checkm:1.1.2

cd ..

echo -e "\n***"
echo "End time: "
date
echo "FINNISCHED Downloading"
