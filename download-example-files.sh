#!/bin/bash

OUTDIR=$1

wget --directory-prefix=${OUTDIR} ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR194/ERR194146/ERR194146_1.fastq.gz
wget --directory-prefix=${OUTDIR} ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR194/ERR194146/ERR194146_2.fastq.gz
wget --directory-prefix=${OUTDIR} ftp://ftp.ncbi.nlm.nih.gov/sra/reports/Assembly/GRCh37-HG19_Broad_variant/Homo_sapiens_assembly19.fasta
wget --directory-prefix=${OUTDIR} http://files.teamerlich.org/lobstr/v3/ref/lobSTR_v3.0.2_GRCh37_resource_bundle.tar.gz

cd ${OUTDIR}
tar -xzvf lobSTR_v3.0.2_GRCh37_resource_bundle.tar.gz
unzip ERR194146_1.fastq.gz
unzip ERR194146_2.fastq.gz
