#!/bin/bash

LOBREF=$1
FASTQPREFIX=$2
OUTPREFIX=$3

THREADS=5

# Run lobSTR
lobSTR \
    --p1 ${FASTQPREFIX}_1.fastq \
    --p2 ${FASTQPREFIX}_2.fastq \
    --fastq \
    --index-prefix ${LOBREF}/lobstr_v3.0.2_GRCh37_ref/lobSTR_ \
    --rg-sample test \
    --rg-lib test \
    -p ${THREADS} \
    --out ${OUTPREFIX}

