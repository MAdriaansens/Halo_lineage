#!/bin/bash -e
#SBATCH --job-name      tree
#SBATCH --time          6:00:00
#SBATCH --mem           20GB
#SBATCH --cpus-per-task 20
#SBATCH --exclude=n[13-15]
#SBATCH --error         slurm_output_barrnap/TrimmFastQC_%A-%a.err
#SBATCH --output        slurm_output_barrnap/TrimmFastQC_%A-%a.out

module load IQ-TREE/2.3.6-gompi-2023a

#iqtree2 -T $SLURM_CPUS_PER_TASK -s /home/mad149/Metagenome_grassmere/Halicovarius_salinus_genome/cleaned/GTDBTK_output/align/gtdbtk.bac120.user_msa_1copy.fasta -m MF

iqtree2 -T $SLURM_CPUS_PER_TASK -s /home/mad149/Metagenome_grassmere/Halicovarius_salinus_genome/cleaned/GTDBTK_output/align/gtdbtk.bac120.user_msa_1copy.fasta -m Q.yeast+F+R5 -B 1000
