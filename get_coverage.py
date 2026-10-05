import glob
from Bio import SeqIO
genome_size_dict={}

with open('coverage_per_bin.tsv', 'w') as cov_file:
    header = 'Bin' + '\t' + 'coverage' + '\t' + 'genome_size' + '\n'
    cov_file.write(header)
    for HQMQ_bin in glob.glob('/home/mad149/Metagenome_grassmere/HQ_MG_mags/*'):
        sample_id = HQMQ_bin.split('_')[-1].split('.')[0]
        interest_contig=[]
        genome_size =0
        for record in SeqIO.parse('{}'.format(HQMQ_bin), 'fasta'):
            interest_contig.append(record.id)
            genome_size = genome_size + len(record.seq)
        genome_size_dict[HQMQ_bin] =  genome_size
        sum_reads = 0
        with open('/home/mad149/Metagenome_grassmere/output_file{}_coverage.txt'.format(sample_id), 'r') as coverage_file:
    
            for line in coverage_file:
                if line.split('\t')[0] in interest_contig:
                    sum_reads = sum_reads +int(line.split('\t')[3])
        coverage = (sum_reads*151)/genome_size_dict[HQMQ_bin]
        Bin = HQMQ_bin.split('/')[-1]
        Line = Bin + '\t' + str(coverage) + '\t' + str(genome_size_dict[HQMQ_bin]) + '\n'
        cov_file.write(Line)
