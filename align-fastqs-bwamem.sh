#!/bin/bash

REFFASTA=$1
FASTQPREFIX=$2
OUTFILE=$3

THREADS=5 # change to 1 if you don't want to use multiple threads

bwa mem \
    -t ${THREADS} \
    -R '@RG\tID:example\tSM:example' \
    ${REFFASTA} \
    ${FASTQPREFIX}_1.fastq \
    ${FASTQPREFIX}_2.fastq > ${OUTFILE}.sam
