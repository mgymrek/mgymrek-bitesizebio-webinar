#!/bin/bash

OUTDIR=$1

wget --directory-prefix=${OUTDIR} http://www.broadinstitute.org/~gymrek/example_1.fastq
wget --directory-prefix=${OUTDIR} http://www.broadinstitute.org/~gymrek/example_2.fastq
wget --directory-prefix=${OUTDIR} ftp://ftp.ncbi.nlm.nih.gov/sra/reports/Assembly/GRCh37-HG19_Broad_variant/Homo_sapiens_assembly19.fasta
wget --directory-prefix=${OUTDIR} http://files.teamerlich.org/lobstr/v3/ref/lobSTR_v3.0.2_GRCh37_resource_bundle.tar.gz

cd ${OUTDIR}
tar -xzvf lobSTR_v3.0.2_GRCh37_resource_bundle.tar.gz
