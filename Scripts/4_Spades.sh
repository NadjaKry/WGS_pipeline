###Requirements for server
#16 cores to use
#around 20 minutes per sample (e.g. Ecoli)

###Parameters for the run. Change only this section

#Folder name for the output
OUT_FOLDER=R_Spades

#Folder name where raw read files are stored
IN_FOLDER=fastq_files

#Files should have names as follow: e.g. ID_1.fq.gz or ID_R1.fastq
#Here, give the end of the name after ID. Only of the forward read.
FILE_NAME=_1.fq.gz
###
#####


echo "RUNNING assembly genome with SPAdes v3.14.0 on 16 cores"
echo "Start time: " 
date
echo -e "\n***"

mkdir $OUT_FOLDER

for i in $IN_FOLDER/*$FILE_NAME; do

temp=${i#*/}
iR=${temp%$FILE_NAME}

iR1=$i
FN_2=${FILE_NAME/1/2}
iR2=${iR1/$FILE_NAME/$FN_2}
echo -e "\nProcessing sample $iR"

singularity exec Containers/Spades3.14.0.sif \
spades.py -1 $iR1 -2 $iR2 -o $OUT_FOLDER/$iR -t 16

done

echo -e "\n***"
echo "End time: "
date
echo "FINNISHED SPAdes"
