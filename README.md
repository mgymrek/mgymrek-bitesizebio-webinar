# mgymrek-bitesizebio-webinar
This repository contains examples given in the BiteSizeBio webinar [Tools for analyzing genetic variants from sequencing data. Case study: short tandem repeats](http://bitesizebio.com/webinar/26705/tools-for-analyzing-genetic-variants-from-sequencing-data-case-study-short-tandem-repeats/).

These examples are meant for users with minimal to moderate prior experience analyzing sequencing data as an introduction to basic tools. They cover basic sequence alignment, genotyping SNPs and indels, STR profiling, visualization, and standard file formats. For more info, see specific tutorials for each of these tools.

TODO link to slides on figshare

# Prereqs
I assume you are using a Linux system, with at least ~5G RAM. To go through these examples, you will need the following tools installed:

* ```samtools``` and ```bcftools``` (see [http://www.htslib.org/](http://www.htslib.org/))
* ```bwa``` [https://github.com/lh3/bwa](https://github.com/lh3/bwa)
* ```lobSTR``` [lobstr.teamerlich.org](lobstr.teamerlich.org)
* ```vcftools``` Perl API [http://vcftools.sourceforge.net/perl_module.html](http://vcftools.sourceforge.net/perl_module.html)

# Contents
It contains the following scripts:

* ```download-example-files.sh```: download example data files for use with this webinar. Note these files are BIG (~500G total) since we go through a complete example of analyzing a high coverage human genome. To go through a smaller example, see ```download-small-example-files.sh```:
* ```download-small-example-files.sh```: similar as above but using much smaller example, around ~20G.  
* ```align-fastqs-bwamem.sh```: align raw reads to the human reference genome using BWA-MEM.
* ```samtools-genotype.sh```: call genotypes using samtools.
* ```lobstr-allelotype.sh```: genotype STRs using lobSTR.
* ```pybamview-vis.sh```: visualize an alignment using PyBamView.

These scripts are meant to provide small examples of using these tools, and the best way to learn from them is to look at the commands they run and output they produce, then modify for your own projects. Note they contain minimal error checking, etc. as they are mostly meant to demonstrate these commands.
