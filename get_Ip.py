from Bio.SeqUtils.ProtParam import ProteinAnalysis as PA
iep_list=[]

for record in SeqIO.parse('/home/mad149/Metagenome_grassmere/Halicovarius_salinus_genome/genome/metabat2_isolate_spades_2.11.fa.faa', 'fasta'):
    protein=PA(record.seq)
    iep_list.append(protein.isoelectric_point())

import statistics
average = statistics.mean(iep_list)
print(average)
