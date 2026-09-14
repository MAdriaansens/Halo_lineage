info_list=[]
info_dict={}
with open('/home/mad149/Metagenome_grassmere/Halicovarius_salinus_genome/Annotation_metabat-isolate_2dot11.tsv', 'r') as annot:
    for line in annot:
        
        info_list.append(line.split('\t')[0])
        
        info_dict[line.split('\t')[0]] = line.split('\t')
Bin_line = 'metabat2_isolate_spades_2.11.fa'+ '\t' + 'd__Bacteria;p__Bacteroidota;c__Bacteroidia;o__CAILMK01;f__CAYYUA01;g__CAYYUA01;s__CAYYUA01' + '\t' + 'Bacteroidia' + '\t' + 'CAILMK01' + '\t' + 'CAYYUA01' + '\t' +  '2.33' + '\n'

print(len(info_list))
with open('/home/mad149/Metagenome_grassmere/Halicovarius_salinus_genome/Genome_size_comparisson_gtdb226.tsv', 'w') as output:
    header = 'accession' + '\t' + 'gtdb_taxonomy' + '\t' + 'class' + '\t' + 'order'  + '\t' + 'family' + '\t' + 'genome_size_mbp' + '\n' 
    output.write(header)
    output.write(Bin_line)
    with open('/home/mad149/bac120_metadata_r226.tsv', 'r') as meta:
       # next(meta, None)
        for line in meta:
            
            accession=line.split('\t')[0]
            genome_size=line.split('\t')[16]
            gtdb_taxonomy= line.split('\t')[19]
            
            if accession in info_list:
                Class=gtdb_taxonomy.split(';c__')[-1].split(';o')[0]
                Order=gtdb_taxonomy.split(';o__')[-1].split(';f')[0]
                Family=gtdb_taxonomy.split(';f__')[-1].split(';g')[0]
                Genome_size_mbp=str(int(genome_size)/1000000)
                Line = accession + '\t' + gtdb_taxonomy + '\t' + Class + '\t' + Order  + '\t' + Family + '\t' +  Genome_size_mbp + '\n' 
                output.write(Line)
                print(Family)
            if 'o__Sphingobacteriales' in line:
                if 't' == line.split('\t')[18]:
                    Class=gtdb_taxonomy.split(';c__')[-1].split(';o')[0]
                    Order=gtdb_taxonomy.split(';o__')[-1].split(';f')[0]
                    Family=gtdb_taxonomy.split(';f__')[-1].split(';g')[0]
                    Genome_size_mbp=str(int(genome_size)/1000000)
                    Line = accession + '\t' + gtdb_taxonomy + '\t' + Class + '\t' + Order  + '\t' + Family + '\t' +  Genome_size_mbp + '\n' 
                    output.write(Line)
    for key in Genome_size_dict.keys():
        accession=key
        Genome_size_mbp=Genome_size_dict[key][-1]
        gtdb_taxonomy= Genome_size_dict[key][0]
            

        Class=gtdb_taxonomy.split(';c__')[-1].split(';o')[0]
        Order=gtdb_taxonomy.split(';o__')[-1].split(';f')[0]
        Family=gtdb_taxonomy.split(';f__')[-1].split(';g')[0]
        Line = accession + '\t' + gtdb_taxonomy + '\t' + Class + '\t' + Order  + '\t' + Family + '\t' +  str(Genome_size_mbp) + '\n' 
        output.write(Line)    


#turns out we miss some taxa

#check which ones those are:
with open('/home/mad149/Metagenome_grassmere/Halicovarius_salinus_genome/Genome_size_comparisson_gtdb226.tsv', 'r') as output:
    size_list=[]
    for line in output:
        size_list.append(line.split('\t')[0])
for info in info_list:
    if info not in size_list:
        print(info_dict[info])
Genome_size_dict={}
Genome_size_dict['GB_GCA_049115495.1'] = ['d__Bacteria;p__Bacteroidota;c__Bacteroidia;o__CAILMK01;f__JACPUW01;g__JACPUW01;s__JACPUW01_sp049115495', 4.715973]
Genome_size_dict['GB_GCA_049599535.1']=['d__Bacteria;p__Bacteroidota;c__Bacteroidia;o__CAILMK01;f__JACPUW01;g__JACPUW01;s__JACPUW01_sp049599535', 4.091130]
Genome_size_dict['GB_GCA_964395255.1']=['d__Bacteria;p__Bacteroidota;c__Bacteroidia;o__CAILMK01;f__JAAYUY01;g__CAYNBC01;s__CAYNBC01_sp964395255', 2.205040]
Genome_size_dict['GB_GCA_964474835.1']=['d__Bacteria;p__Bacteroidota;c__Bacteroidia;o__CAILMK01;f__CAYYUA01;g__CAYYUA01;s__CAYYUA01_sp964474835',2.373967]
Genome_size_dict['GB_GCA_964542585.1']=['d__Bacteria;p__Bacteroidota;c__Bacteroidia;o__CAILMK01;f__CAYYUA01;g__CAYYUA01;s__CAYYUA01_sp964542585',2.759272]
Genome_size_dict['GB_GCA_964549595.1']=['d__Bacteria;p__Bacteroidota;c__Bacteroidia;o__CAILMK01;f__CAYYUA01;g__CAZQQN01;s__CAZQQN01_sp964549595', 3.135057]
Genome_size_dict['GB_GCA_964561545.1']=['d__Bacteria;p__Bacteroidota;c__Bacteroidia;o__CAILMK01;f__CAYYUA01;g__CAZLQF01;s__CAZLQF01_sp964561545', 2.988210]
Genome_size_dict['GB_GCA_964595485.1']=['d__Bacteria;p__Bacteroidota;c__Bacteroidia;o__CAILMK01;f__CAYYUA01;g__CAZQQN01;s__CAZQQN01_sp964595485', 2.994689]

Genome_size_dict['GB_GCA_964625265.1']=['d__Bacteria;p__Bacteroidota;c__Bacteroidia;o__CAILMK01;f__JAAYUY01;g__CAYNBC01;s__CAYNBC01_sp964625265', 2.537110]

Genome_size_dict['GB_GCA_965363965.1']=['d__Bacteria;p__Bacteroidota;c__Bacteroidia;o__CAILMK01;f__CAILMK01;g__CBDTVD01;s__CBDTVD01_sp965363965', 2.055922]
#rework code

print(len(info_list))
with open('/home/mad149/Metagenome_grassmere/Halicovarius_salinus_genome/Genome_size_comparisson_gtdb226.tsv', 'w') as output:
    header = 'accession' + '\t' + 'gtdb_taxonomy' + '\t' + 'class' + '\t' + 'order'  + '\t' + 'family' + '\t' + 'genome_size_mbp' + '\n' 
    output.write(header)
    output.write(Bin_line)
    with open('/home/mad149/bac120_metadata_r226.tsv', 'r') as meta:
       # next(meta, None)
        for line in meta:
            
            accession=line.split('\t')[0]
            genome_size=line.split('\t')[16]
            gtdb_taxonomy= line.split('\t')[19]
            
            if accession in info_list:
                Class=gtdb_taxonomy.split(';c__')[-1].split(';o')[0]
                Order=gtdb_taxonomy.split(';o__')[-1].split(';f')[0]
                Family=gtdb_taxonomy.split(';f__')[-1].split(';g')[0]
                Genome_size_mbp=str(int(genome_size)/1000000)
                Line = accession + '\t' + gtdb_taxonomy + '\t' + Class + '\t' + Order  + '\t' + Family + '\t' +  Genome_size_mbp + '\n' 
                output.write(Line)
                print(Family)
            if 'd__Bacteria;p__Bacteroidota;c__Bacteroidia;o__Sphingobacteriales;' in gtdb_taxonomy:
                if 't' == line.split('\t')[18]:
                    Class=gtdb_taxonomy.split(';c__')[-1].split(';o')[0]
                    Order=gtdb_taxonomy.split(';o__')[-1].split(';f')[0]
                    Family=gtdb_taxonomy.split(';f__')[-1].split(';g')[0]
                    Genome_size_mbp=str(int(genome_size)/1000000)
                    Line = accession + '\t' + gtdb_taxonomy + '\t' + Class + '\t' + Order  + '\t' + Family + '\t' +  Genome_size_mbp + '\n' 
                    output.write(Line)
                    print(Line)
            elif 'f__Salinibacteraceae' in gtdb_taxonomy:
                if 't' == line.split('\t')[18]:
                    Class=gtdb_taxonomy.split(';c__')[-1].split(';o')[0]
                    Order=gtdb_taxonomy.split(';o__')[-1].split(';f')[0]
                    Family=gtdb_taxonomy.split(';f__')[-1].split(';g')[0]
                    Genome_size_mbp=str(int(genome_size)/1000000)
                    Line = accession + '\t' + gtdb_taxonomy + '\t' + Class + '\t' + Order  + '\t' + Family + '\t' +  Genome_size_mbp + '\n' 
                    output.write(Line)
                    print(Line)
    for key in Genome_size_dict.keys():
        accession=key
        Genome_size_mbp=Genome_size_dict[key][-1]
        gtdb_taxonomy= Genome_size_dict[key][0]
            

        Class=gtdb_taxonomy.split(';c__')[-1].split(';o')[0]
        Order=gtdb_taxonomy.split(';o__')[-1].split(';f')[0]
        Family=gtdb_taxonomy.split(';f__')[-1].split(';g')[0]
        Line = accession + '\t' + gtdb_taxonomy + '\t' + Class + '\t' + Order  + '\t' + Family + '\t' +  str(Genome_size_mbp) + '\n' 
        output.write(Line)    
