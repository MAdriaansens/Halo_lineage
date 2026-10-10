#!/bin/bash -e
#SBATCH --job-name      BacB_hmmalign
#SBATCH --time          10:00:00
#SBATCH --mem           5GB
#SBATCH --cpus-per-task 1
#SBATCH --error         slurm_output/BacB_%A-%a.err
#SBATCH --output        slurm_output/BacB_%A-%a.out

module load Python/3.11.5-GCCcore-13.2.0 

#MIP 
HMMalign_dir=/home/mad149/Metagenome_grassmere/Halicovarius_salinus_genome/genome/HMMalign
for file in ${HMMalign_dir}/PF00230*sthk; do 
    base=$(basename "$file" .sthk); 
    echo "$file"; 
    python parse_stockholm_for_hmmscan.py ${file} /home/mad149/Metagenome_grassmere/Halicovarius_salinus_genome/genome/HMMalign/${base}_filter_for_hmmscan 155; 
done
  

#Rps2 

for file in ${HMMalign_dir}/PF00318*sthk; do 
    base=$(basename "$file" .sthk); 
    echo "$file"; 
    python parse_stockholm_for_hmmscan.py ${file} /home/mad149/Metagenome_grassmere/Halicovarius_salinus_genome/genome/HMMalign/${base}_filter_for_hmmscan 151; 
done 

  

#Rpl4 

for file in ${HMMalign_dir}/PF00573*sthk; do 
    base=$(basename "$file" .sthk); 
    echo "$file"; 
    python parse_stockholm_for_hmmscan.py ${file} /home/mad149/Metagenome_grassmere/Halicovarius_salinus_genome/genome/HMMalign/${base}_filter_for_hmmscan 133; 
done 

  

#ClcA 

for file in ${HMMalign_dir}/PF00654*sthk; do 
    base=$(basename "$file" .sthk); 
    echo "$file"; 
    python parse_stockholm_for_hmmscan.py ${file} /home/mad149/Metagenome_grassmere/Halicovarius_salinus_genome/genome/HMMalign/${base}_filter_for_hmmscan 242; 
done 

  

#MsC 

for file in ${HMMalign_dir}/PF00924*sthk; do 
    base=$(basename "$file" .sthk); 
    echo "$file"; 
    python parse_stockholm_for_hmmscan.py ${file} /home/mad149/Metagenome_grassmere/Halicovarius_salinus_genome/genome/HMMalign/${base}_filter_for_hmmscan 48; 
done 

  
#Na solute importer
  

for file in ${HMMalign_dir}/PF01235*sthk; do 
    base=$(basename "$file" .sthk); 
    echo "$file"; 
    python parse_stockholm_for_hmmscan.py ${file} /home/mad149/Metagenome_grassmere/Halicovarius_salinus_genome/genome/HMMalign/${base}_filter_for_hmmscan 315; 
done 

  

#CorA 

for file in ${HMMalign_dir}/PF01544*sthk; do 
    base=$(basename "$file" .sthk); 
    echo "$file"; 
    python parse_stockholm_for_hmmscan.py ${file} /home/mad149/Metagenome_grassmere/Halicovarius_salinus_genome/genome/HMMalign/${base}_filter_for_hmmscan 204; 
done 

  

#Na_Ca_exchanger 

for file in ${HMMalign_dir}/PF01699*sthk; do 
    base=$(basename "$file" .sthk); 
    echo "$file"; 
    python parse_stockholm_for_hmmscan.py ${file} /home/mad149/Metagenome_grassmere/Halicovarius_salinus_genome/genome/HMMalign/${base}_filter_for_hmmscan 106; 
done 

  

#MscL 

for file in ${HMMalign_dir}/PF01741*sthk; do 
    base=$(basename "$file" .sthk); 
    echo "$file"; 
    python parse_stockholm_for_hmmscan.py ${file} /home/mad149/Metagenome_grassmere/Halicovarius_salinus_genome/genome/HMMalign/${base}_filter_for_hmmscan 87; 
done 

  

#MgtE 

  

for ${HMMalign_dir}/PF01769*sthk; do 
    base=$(basename "$file" .sthk); 
    echo "$file"; 
    python parse_stockholm_for_hmmscan.py ${file} /home/mad149/Metagenome_grassmere/Halicovarius_salinus_genome/genome/HMMalign/${base}_filter_for_hmmscan 87; 
done 

  

#MnhE 

for file in ${HMMalign_dir}/PF01899*sthk; do 
    base=$(basename "$file" .sthk); 
    echo "$file"; 
    python parse_stockholm_for_hmmscan.py ${file} /home/mad149/Metagenome_grassmere/Halicovarius_salinus_genome/genome/HMMalign/${base}_filter_for_hmmscan 101; 
done 

  

#BCCT 

for file in ${HMMalign_dir}/PF02028*sthk; do 
    base=$(basename "$file" .sthk); 
    echo "$file"; 
    python parse_stockholm_for_hmmscan.py ${file} /home/mad149/Metagenome_grassmere/Halicovarius_salinus_genome/genome/HMMalign/${base}_filter_for_hmmscan 342; 
done 

  

#Trehalose_PPase 

for file in ${HMMalign_dir}/PF02358*sthk; do 
    base=$(basename "$file" .sthk); 
    echo "$file"; 
    python parse_stockholm_for_hmmscan.py ${file} /home/mad149/Metagenome_grassmere/Halicovarius_salinus_genome/genome/HMMalign/${base}_filter_for_hmmscan 164; 
done 

  

#TrkH 

for file in ${HMMalign_dir}/PF02386*sthk; do 
    base=$(basename "$file" .sthk); 
    echo "$file"; 
    python parse_stockholm_for_hmmscan.py ${file} /home/mad149/Metagenome_grassmere/Halicovarius_salinus_genome/genome/HMMalign/${base}_filter_for_hmmscan 351; 
done 

  

#KUP 

for file in ${HMMalign_dir}/PF02705*sthk; do 
    base=$(basename "$file" .sthk); 
    echo "$file"; 
    python parse_stockholm_for_hmmscan.py ${file} /home/mad149/Metagenome_grassmere/Halicovarius_salinus_genome/genome/HMMalign/${base}_filter_for_hmmscan 305; 

done 

  

#HPPase 

for file in ${HMMalign_dir}/PF03030*sthk; do 
    base=$(basename "$file" .sthk); 
    echo "$file"; 
    python parse_stockholm_for_hmmscan.py ${file} /home/mad149/Metagenome_grassmere/Halicovarius_salinus_genome/genome/HMMalign/${base}_filter_for_hmmscan 453; 

done 

  

#KdP 

for file in ${HMMalign_dir}/PF03814*sthk; do 
base=$(basename "$file" .sthk);
    echo "$file"; 
    python parse_stockholm_for_hmmscan.py ${file} /home/mad149/Metagenome_grassmere/Halicovarius_salinus_genome/genome/HMMalign/${base}_filter_for_hmmscan 305; 
done 

  

#OpuAc 

for file in ${HMMalign_dir}/PF04069*sthk; do 
    base=$(basename "$file" .sthk); 
    echo "$file"; 
    python parse_stockholm_for_hmmscan.py ${file} /home/mad149/Metagenome_grassmere/Halicovarius_salinus_genome/genome/HMMalign/${base}_filter_for_hmmscan 180; 
done 

  

#MtrA 

for file in ${HMMalign_dir}/PF04208*sthk; do 
    base=$(basename "$file" .sthk); 
    echo "$file"; 
    python parse_stockholm_for_hmmscan.py ${file} /home/mad149/Metagenome_grassmere/Halicovarius_salinus_genome/genome/HMMalign/${base}_filter_for_hmmscan 120; 

done 

#BRCA1 

for file in ${HMMalign_dir}/PF05525*sthk; do 
    base=$(basename "$file" .sthk); 
    echo "$file"; 
    python parse_stockholm_for_hmmscan.py ${file} /home/mad149/Metagenome_grassmere/Halicovarius_salinus_genome/genome/HMMalign/${base}_filter_for_hmmscan 300; 
done 

  

#EctC 

for file in ${HMMalign_dir}/PF06339*sthk; do 
    base=$(basename "$file" .sthk); 
    echo "$file"; 
    python parse_stockholm_for_hmmscan.py ${file} /home/mad149/Metagenome_grassmere/Halicovarius_salinus_genome/genome/HMMalign/${base}_filter_for_hmmscan 89; 
done 

  

#BRCA2 

for file in ${HMMalign_dir}/PF13520*sthk; do 
    base=$(basename "$file" .sthk); 
    echo "$file"; 
    python parse_stockholm_for_hmmscan.py ${file} /home/mad149/Metagenome_grassmere/Halicovarius_salinus_genome/genome/HMMalign/${base}_filter_for_hmmscan 299; 

done 

  

#TreT 

for file in ${HMMalign_dir}/PF21269*sthk; do 
    base=$(basename "$file" .sthk); 
    echo "$file"; 
    python parse_stockholm_for_hmmscan.py ${file} /home/mad149/Metagenome_grassmere/Halicovarius_salinus_genome/genome/HMMalign/${base}_filter_for_hmmscan 101; 
done 

  

#NqrA 

for file in ${HMMalign_dir}/PF24836*sthk; do 
    base=$(basename "$file" .sthk); 
    echo "$file"; 
    python parse_stockholm_for_hmmscan.py ${file} /home/mad149/Metagenome_grassmere/Halicovarius_salinus_genome/genome/HMMalign/${base}_filter_for_hmmscan 102; 

done 

  

#KimA 

for file in ${HMMalign_dir}/PTHR47704*sthk; do 
    base=$(basename "$file" .sthk); 
    echo "$file"; 
    python parse_stockholm_for_hmmscan.py ${file} /home/mad149/Metagenome_grassmere/Halicovarius_salinus_genome/genome/HMMalign/${base}_filter_for_hmmscan 433;# 
done 

  

#Betain 

for file in ${HMMalign_dir}/TIGR01804*sthk; do 
    base=$(basename "$file" .sthk); 
    echo "$file"; 
    python parse_stockholm_for_hmmscan.py ${file} /home/mad149/Metagenome_grassmere/Halicovarius_salinus_genome/genome/HMMalign/${base}_filter_for_hmmscan 327; 
done 

#CPA
for file in ${HMMalign_dir}/CPA*sthk; do 
    base=$(basename "$file" .sthk); 
    echo "$file"; 
    python parse_stockholm_for_hmmscan.py ${file} /home/mad149/Metagenome_grassmere/Halicovarius_salinus_genome/genome/HMMalign/${base}_filter_for_hmmscan 263; 
done 
#NhaB
for file in ${HMMalign_dir}/NhaB*sthk; do 
    base=$(basename "$file" .sthk); 
    echo "$file"; 
    python parse_stockholm_for_hmmscan.py ${file} /home/mad149/Metagenome_grassmere/Halicovarius_salinus_genome/genome/HMMalign/${base}_filter_for_hmmscan 361; 
done 

#NhaC
for file in ${HMMalign_dir}/NhaC*sthk; do 
    base=$(basename "$file" .sthk); 
    echo "$file"; 
    python parse_stockholm_for_hmmscan.py ${file} /home/mad149/Metagenome_grassmere/Halicovarius_salinus_genome/genome/HMMalign/${base}_filter_for_hmmscan 212; 
done 
#NhaD

for file in ${HMMalign_dir}/NhaD*sthk; do 
    base=$(basename "$file" .sthk); 
    echo "$file"; 
    python parse_stockholm_for_hmmscan.py ${file} /home/mad149/Metagenome_grassmere/Halicovarius_salinus_genome/genome/HMMalign/${base}_filter_for_hmmscan 282; 
done 
