###Requirements for server
#2 cores to use
#around 2 minutes per sample

###Parameters for the run. Change only this section.

#Folder name for the output
OUT_FOLDER=R_FastQC

#Folder name where raw reads files are stored
FOLDER=fastq_files

#Files should have names as follow: e.g. ID_1.fq.gz or ID_R1.fastq
#Here, give the end of the name after ID
FILE_NAME=_1.fq.gz
###
#####


echo "RUNNING quality control with FastQC v0.11.8 on .fastq files"
echo "Start time: "
date
echo -e "\n***"

mkdir $OUT_FOLDER

for i in $FOLDER/*$FILE_NAME; do

temp=${i#*/}
iR=${temp%$FILE_NAME}

iR1=$i
FN_2=${FILE_NAME/1/2}
iR2=${iR1/$FILE_NAME/$FN_2}
echo -e "\nProcessing sample $iR"

singularity exec Containers/FastQC0.11.8.sif \
fastqc -o=R_FastQC -t=2 $iR1 $iR2

done

echo -e "\n***"
echo "End time: "
date
echo "FINISHED FastQC"
