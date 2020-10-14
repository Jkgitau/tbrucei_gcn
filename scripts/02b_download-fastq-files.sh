#!/bin/bash
#
#Script to download fastq files from European Nucleotide Archive
#
FILE=$1 #File containing fastq url links to EBI FTP site

OUT_DIR=../data/raw_data/ 

cat ${FILE} | xargs -n1 wget$2 -P ${OUT_DIR}


#decompress fastq.gz files
#
FASTQ_FILES=../data/raw_data/*.fastq.gz

for file in ${FASTQ_FILES}; do
    gunzip ${file}
done
