# Bacterial whole genome sequencing (WGS) analysis

This pipeline is meant to help beginners, starting to analyze their own genomes and who don't know where to start.

This pipeline is for bacterial whole genome sequencing (WGS) analysis. It starts from raw Illumina paired-end sequencing reads and finish with quality controlled assembled genomes.

The pipeline consists of separate scripts, so it is easier to adapt and change.
The shell scripts are intended as examples and should be edited to provide the right values.

![plan](https://github.com/NadjaKry/WGS_pipeline/raw/master/WGS_Workflow.png)

## Requirements
You need to know how to run scripts on Linux server before. On your server of choice Singularity should be installed. You can check it by typing ``` singularity -h ```. No other dependencies are required. You don't need to install anything else. Just download and run the scripts. Don't forget to change the scripts with your file names.


## How to run
To run this pipeline, you must have:
* Singularity installed on your server
* A local folder with Illumina reads on which you want to run the assembly (*.fastq)
* A reference genome file of your bacteria (*.fna.gz) (optional)

## Tools used in this analysis
* [FastQC](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/)
* [MultiQC](https://multiqc.info/)
* [SPAdes](http://cab.spbu.ru/software/spades/)
* [QUAST](http://quast.sourceforge.net/quast)
* [CheckM](https://ecogenomics.github.io/CheckM/)

## Additional information
For additional information and for citations, please see the following papers:
* [MultiQC](https://academic.oup.com/bioinformatics/article/32/19/3047/2196507)
* [SPAdes](https://www.liebertpub.com/doi/full/10.1089/cmb.2012.0021)
* [Quast](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3624806/)
* [CheckM](https://genome.cshlp.org/content/25/7/1043)

## Additional notes
No guaranties for completes. All the feedback is very welcome.
