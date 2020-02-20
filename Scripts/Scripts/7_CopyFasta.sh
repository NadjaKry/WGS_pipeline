###Parameters for run. Change only this section.

#Folder name for the output
OUT_FOLDER=Genomes

#Folder name with assembled genomes (Spades results)
IN_FOLDER=R_Spades
###
#####


echo "RUNNING copying scaffold files to one folder"
echo "Start time: "
date
echo -e "\n***"

mkdir $OUT_FOLDER

for i in $IN_FOLDER/*; do

iR=${i##*/}

echo -e "\nProcessing sample $iR"

cp $i/scaffolds.fasta $OUT_FOLDER/${iR}.fasta

done


echo -e "\n***"
echo "End time: "
date
echo "FINISHED copying contig files to one folder"
