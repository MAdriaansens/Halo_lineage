import glob
from Bio import SeqIO
with open('salt_resistance_proteins_hit.tsv', 'w') as output:
    header ='sequence_hit' + '\t' + 'query_protein' + '\t' + 'taxa_query_protein' + '\t' + 'protein_family' + '\n'
    output.write(header)
    for fasta in glob.glob('/home/mad149/Metagenome_grassmere/Halicovarius_salinus_genome/genome/HMMalign/*a'):
        for record in SeqIO.parse(fasta, 'fasta'):
            sequence_hit = record.id.split('_best_hit')[0]
            query_protein = record.id.split('best_hit:')[1]

            if 'Protein' in record.id:
                protein_family = record.id.split('_Protein:')[-1]
                taxa = record.id.split('_Protein:')[0].split('_hit:')[1]
                line = sequence_hit + '\t' + query_protein + '\t' + taxa + '\t' + protein_family + '\n' 
                output.write(line)
            else:
                taxa = record.id.split('tax:')[1].split('_protein:')[0]
                protein_family = record.id.split('_protein:')[-1]
                line = sequence_hit + '\t' + query_protein + '\t' + taxa + '\t' + protein_family + '\n' 
                output.write(line)
