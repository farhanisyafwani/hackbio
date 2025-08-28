#!/usr/bin/bash
#Project 2: Installing Bioinformatics Software on the Terminal
#N/B: You need to install and setup your conda environment with either Anaconda or Miniconda.

#1. Activate your base conda environment
conda activate hackbio

#2. Create a conda environment named funtools
conda create -n funtools 

# 3. Activate the funtools environment
conda activate funtools

# 4. Install Figlet using conda
conda install -c conda-forge figlet

# 5. Run figlet <your name>
figlet farhani

# 6. Install bwa through the bioconda channel
conda install -c bioconda bwa

# 7. Install blast through the bioconda channel
conda install -c bioconda blast

# 8. Install samtools through the bioconda channel
conda install -c bioconda samtools

# 9. Install bedtools through the bioconda channel
conda install -c bioconda bedtools 


#10. Install spades.py through the bioconda channel
conda install -c bioconda spades

# 11. Install bcftools through the bioconda channel
conda install -c bioconda bcftools

# 12. Install fastp through the bioconda channel
conda install -c bioconda bcftools

#13. Install multiqc through the bioconda channel
conda install -c bioconda multiqc