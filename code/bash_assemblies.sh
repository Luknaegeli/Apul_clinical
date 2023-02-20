for file1 in /home/bioinf/bioinf_archive/10_BUA_storage/01_Illumina_Data/200915_Apul_frfl/*_1.fq.gz
do
file2=${file1/_1/_2}
out=${file1%%.fastq}_output
/home/bioinf/SPAdes-3.14.1-Linux/bin/spades.py --pe1-1 $file1 --pe1-2 $file2 --threads 8 -o $out
done