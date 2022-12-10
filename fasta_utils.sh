# count the number of sequences/headers
grep -c "^>" file.fa

# add something to end all headers
sed 's/>.*/&WHATEVERYOUWANT/' file.fa > outfile.fa

# subset mitochondrial reads from fasta file
samtools faidx ref.fa chrM > subset.fa

