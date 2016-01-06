#!/bin/bash

LOBREF=$1
FASTQPREFIX=$2
OUTPREFIX=$3

# Run lobSTR
#lobSTR \
#    --p1 ${FASTQPREFIX}_1.fastq \
#    --p2 ${FASTQPREFIX}_2.fastq \
#    --fastq \
#    --index-prefix ${LOBREF}/lobstr_v3.0.2_GRCh37_ref/lobSTR_ \
#    --rg-sample test \
#    --rg-lib test \
#    --out ${OUTPREFIX}

#samtools sort ${OUTPREFIX}.aligned.bam ${OUTPREFIX}.sorted
#samtools index ${OUTPREFIX}.sorted.bam

# Run allelotype
allelotype \
    --command classify \
    --bam ${OUTPREFIX}.sorted.bam \
    --noise_model ~/local/share/lobSTR/models/illumina_v3.pcrfree \
    --index-prefix ${LOBREF}/lobstr_v3.0.2_GRCh37_ref/lobSTR_ \
    --strinfo ${LOBREF}/lobstr_v3.0.2_GRCh37_strinfo.tab \
    --out ${OUTPREFIX}

# Sort and index VCF
vcf-sort ${OUTPREFIX}.vcf | bgzip -c > ${OUTPREFIX}.sorted.vcf.gz
tabix -p vcf ${OUTPREFIX}.sorted.vcf.gz
