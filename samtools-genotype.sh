#!/bin/bash

REFFA=$1
BAMFILE=$2
OUTPREFIX=$3

samtools mpileup -g -o ${OUTPREFIX}.bcf -f ${REFFA} ${BAMFILE}
bcftools call -vmO z -o ${OUTPREFIX}.vcf.gz ${OUTPREFIX}.bcf 
tabix -p vcf ${OUTPREFIX}.vcf.gz
