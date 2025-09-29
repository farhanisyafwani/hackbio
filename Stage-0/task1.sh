#!/usr/bin/bash
#Project 1: Bash Basic

# 1. Print your name
name=farhani
echo $name

# 2. Create a folder titled your name
mkdir farhani

# 3. Create another new directory titled biocomputing and change to that directory with one line of command
mkdir -p farhani/biocomputing

# 4. Download these 3 files:
wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna \
     https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk \
     https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk

# 5. Move the .fna file to the folder titled your name
mv wildtype.fna farhani/ && mv wildtype.gbk farhani/ && mv wildtype.gbk.1 farhani/

# 6. Delete the duplicate gbk file
rm farhani/wildtype.gbk.1

# 7. Confirm if the .fna file is mutant or wild type (tatatata vs tata)
grep 'tatatata' farhani/wildtype.fna

# 8. If mutant, print all matching lines into a new file
grep 'tatatata' farhani/wildtype.fna > farhani/mutant_lines.fna

# 9. Count number of lines (excluding header) in the .gbk file
grep -A 10000 ORIGIN farhani/wildtype.gbk | tail -n +2 | wc -l


# 10. Print the sequence length of the .gbk file. (Use the LOCUS tag in the first line)
grep LOCUS farhani/wildtype.gbk | awk '{print $3}'


# 11. Print the source organism of the .gbk file. (Use the SOURCE tag in the first line)
grep SOURCE farhani/wildtype.gbk | head -n 1


# 12. List all the gene names of the .gbk file. Hint {grep '/gene='}
grep '/gene=' farhani/wildtype.gbk
