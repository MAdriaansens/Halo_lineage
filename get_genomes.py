import subprocess
with open('/home/mad149/Metagenome_grassmere/Halo/bac120_metadata_r226.tsv', 'r') as meta:
    for line in meta:
        if 't' == (line.split('\t')[18]):
            if 'o__CAILMK01' in line.split('\t')[19]:
                print(line.split('\t')[19])
                text=(line.split('\t')[0]).split('GB_')[1].replace('_','')
                get_file=(line.split('\t')[0]).split('GB_')[1]
                chuncks=[text[i:i+3] for i in range(0, len(text), 3)]
                path=('{}{}/{}/{}/{}/{}_genomic.fna.gz'.format(Dir,chuncks[0], chuncks[1], chuncks[2], chuncks[3], get_file))
                print(path)
                subprocess.run(['cp', '{}'.format(path), '.'], check=True)
Dir='/scratch/projects/sbs/data/GTDB/release226/226.0/genomic_files_reps/gtdb_genomes_reps_r226/database/'
#GCA/001/113/365/GCA_001113365.1
end='_genomic.fna.gz'
Sphingo_list = ['GCF_000143765.1', 'GCF_003054045.1']

for Sphingo in Sphingo_list:
    text=(Sphingo.replace('_',''))
    chuncks=[text[i:i+3] for i in range(0, len(text), 3)]
    path=('{}{}/{}/{}/{}/{}_genomic.fna.gz'.format(Dir,chuncks[0], chuncks[1], chuncks[2], chuncks[3], Sphingo))
    print(path)
    subprocess.run(['cp', '{}'.format(path), '.'], check=True)
    print(path)
