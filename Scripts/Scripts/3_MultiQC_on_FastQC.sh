###Parameters for run. Change only this section

#Folder name for the output
OUT_FOLDER=R_MultiQC

#Folder name with FastQC reports
IN_FOLDER=R_FastQC
###
#####


echo "RUNNING summary of quality control of FastQC reports with MultiQC v1.6"
echo "Start time: "
date
echo -e "\n***"

mkdir $OUT_FOLDER

singularity exec Containers/multiqc_1.6.sif \
multiqc $IN_FOLDER -o $OUT_FOLDER

echo -e "\n***"
echo "End time: "
date
echo "FINISHED MultiQC"
