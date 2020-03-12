###Requirements for server
#around 1 minute per sample

###Parameters for run. Change only this section

#Folder name for output
OUT_FOLDER=R_Quast

#Folder name with assembled genomes (Spades results)
IN_FOLDER=R_Spades

#Full name of the reference genome of your choice.
#Quast will compare all assemblies to this genome.
REFERENCE=Reference_of_your_genome.fna.gz
###
#####


echo "RUNNING quality control of assembled data with Quast v5.0.2"
echo "Start time: "
date
echo -e "\n***"

mkdir $OUT_FOLDER

singularity exec Containers/quast_5.0.2.sif \
quast.py $IN_FOLDER/*/scaffolds.fasta -o $OUT_FOLDER -r $REFERENCE

echo -e "\n***"
echo "End time: "
date
echo "FINISHED Quast"
