#!/bin/bash

REFFASTA=$1
FASTQPREFIX=$2
OUTFILE=$3

THREADS=5 # change to 1 if you don't want to use multiple threads

set -e

# Run BWA alignment
bwa mem \
    -t ${THREADS} \
    -R '@RG\tID:example\tSM:example' \
    ${REFFASTA} \
    ${FASTQPREFIX}_1.fastq \
    ${FASTQPREFIX}_2.fastq > ${OUTFILE}.sam

# Sort and index
samtools view -bS ${OUTFILE}.sam > ${OUTFILE}.bam
samtools sort ${OUTFILE}.bam ${OUTFILE}.sorted
samtools index ${OUTFILE}.sorted.bam

# Remove intermediate files
rm ${OUTFILE}.sam
rm ${OUTFILE}.bam
