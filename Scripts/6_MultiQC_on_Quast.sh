###Parameters for the run. Change only this section.

#Folder name for the output
OUT_FOLDER=R_MultiQC_Quast

#Folder name with Quast reports
IN_FOLDER=R_Quast
###
#####


echo "RUNNING summary of quality control of Quast results with MultiQC v1.6"
echo "Start time "
date
echo -e "\n***"

mkdir $OUT_FOLDER

singularity exec Containers/MultiQC1.6.sif \
multiqc $IN_FOLDER/report.tsv -o $OUT_FOLDER -f

echo -e "\n***"
echo "End time: "
date
echo "FINISHED MultiQC"
