###Requirements for server
#8 cores to use
#16GB memory needed
#around 2 minutes per sample. The time is growing with more samples
#Was not checked on more than 200 samples

###Parameters for run. Change only this section

#Folder name for the output
OUT_FOLDER=R_CheckM

#Folder name with assembled genomes in one folder. Not Spades output folder.
IN_FOLDER=Genomes
###
#####


echo "RUNNING quality control with CheckM on assembled genomes"
echo "Start time: "
date
echo -e "\n***"

mkdir $OUT_FOLDER
TEMP=TEMP_CheckM
mkdir $TEMP

singularity exec Containers/checkm_1.1.2.sif \
checkm lineage_wf --reduced_tree -t 8 -x fasta --tmpdir $TEMP -f $OUT_FOLDER/checkMout.txt "$IN_FOLDER" "$OUT_FOLDER"

date
echo "Start Quality summary"

singularity exec Containers/checkm_1.1.2.sif \
checkm qa $OUT_FOLDER/lineage.ms $OUT_FOLDER -f $OUT_FOLDER/CheckMoutput.tsv -o 2 -t 8 --tab_table

rm -r $TEMP


echo -e "\n***"
echo "End time: "
date
echo "FINISHED CheckM"
