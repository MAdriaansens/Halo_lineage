#!/bin/bash -e
#SBATCH --job-name      Diamond
#SBATCH --time          8:00:00
#SBATCH --mem           4GB
#SBATCH --cpus-per-task 10
#SBATCH --exclude=n[13-15]
#SBATCH --error         slurm_output_diamond/TrimmFastQC_%A-%a.err
#SBATCH --output        slurm_output_diamond/TrimmFastQC_%A-%a.out

module load DIAMOND/2.2.4-GCC-14.3.0

DB=/home/mad149/chapter_meta_analysis/Protein/salt_resistance_database.dmnd

diamond blastp --query Halicovarius_salinus_genome/genome/metabat2_isolate_spades_2.11.fa.faa --db ${DB} --max-target-seqs 1 --evalue 0.00001 --threads $SLURM_CPUS_PER_TASK --outfmt 6 qseqid sseqid slen evalue bitscore qseq --out Halicovarius_salinus_genome/genome/metabat2_isolate_spades_2.11_vs_protein_Database.tsv 
