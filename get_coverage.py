

from Bio import SeqIO
interest_contig = []
for record in SeqIO.parse('bins/Isolate/MetaBat/MetaBat_Isolate_spades_2/metabat2_isolate_spades_2.11.fa.fna', 'fasta'):
    print(record.id)
    interest_contig.append(record.id)
sum_reads = 0
#module load SAMtools/1.21-GCC-13.3.0
#samtools coverage Step6_map_reads/Isolate_spades/2_Spades_isolate/2_vs_*/*bam -o output_file2.txt

with open('output_file2.txt', 'r') as coverage_file:
    for line in coverage_file:
        print(line.split('\t')[3])
        break
    for line in coverage_file:
        if line.split('\t')[0] in interest_contig:
            sum_reads = sum_reads +int(line.split('\t')[3])
coverage = (sum_reads*151)/2335587
print(coverage)
