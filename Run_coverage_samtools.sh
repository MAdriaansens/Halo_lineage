#!/bin/bash -e
#SBATCH --job-name      Coverage
#SBATCH --time          10:00:00
#SBATCH --mem           80GB
#SBATCH --cpus-per-task 5
#SBATCH --exclude=n[13-15]
#SBATCH --error         slurm_output_coverage/Meta_bin_%A-%a.err
#SBATCH --output        slurm_output_coverage/Meta_bin_%A-%a.out
#SBATCH --array         0-16
declare -a array=($(seq 0 16))

module load SAMtools/1.21-GCC-13.3.0
samtools coverage Step6_map_reads/Isolate_spades/${array[$SLURM_ARRAY_TASK_ID]}_Spades_isolate/${array[$SLURM_ARRAY_TASK_ID]}_vs_${array[$SLURM_ARRAY_TASK_ID]}/*bam -o output_file${array[$SLURM_ARRAY_TASK_ID]}_coverage.txt
