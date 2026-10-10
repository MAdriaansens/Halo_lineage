#!/bin/bash -e
#SBATCH --job-name      BacB_hmmalign
#SBATCH --time          10:00:00
#SBATCH --mem           5GB
#SBATCH --cpus-per-task 1
#SBATCH --error         slurm_output/BacB_%A-%a.err
#SBATCH --output        slurm_output/BacB_%A-%a.out

HMMalign=/home/mad149/Metagenome_grassmere/Halicovarius_salinus_genome/genome/HMMalign
Infile=/home/mad149/Metagenome_grassmere/Halicovarius_salinus_genome/genome/metabat2_isolate_spades_2.11_vs_protein_Database_all_fl_seq.fasta
HMMdir=/home/mad149/HMM_databases/individual_hmms
module load HMMER/3.4-gompi-2023a

hmmalign  --amino --trim -o ${HMMalign}/PF00230hmm_MIPvs_Halicovarius_salinus_hmmaligned.sthk ${HMMdir}/PF00230_MIP.hmm ${Infile}

hmmalign  --amino --trim -o ${HMMalign}/PF00318_Rps2hmmvs_Halicovarius_salinus_hmmaligned.sthk ${HMMdir}/PF00318_Rps2.hmm ${Infile}

hmmalign  --amino --trim -o ${HMMalign}/PF00573_Rpl4hmmvs_Halicovarius_salinus_hmmaligned.sthk ${HMMdir}/PF00573_Rpl4.hmm ${Infile}
																					
hmmalign  --amino --trim -o ${HMMalign}/PF00654_ClcAhmmvs_Halicovarius_salinus_hmmaligned.sthk ${HMMdir}/PF00654_ClcA.hmm ${Infile}

hmmalign  --amino --trim -o ${HMMalign}/PF00924_MscShmmvs_Halicovarius_salinus_hmmaligned.sthk ${HMMdir}/PF00924_MscS.hmm ${Infile}

hmmalign  --amino --trim -o ${HMMalign}/PF01235_Na_Ala_symhmmvs_Halicovarius_salinus_hmmaligned.sthk ${HMMdir}/PF01235_Na_Ala_sym.hmm ${Infile}

hmmalign  --amino --trim -o ${HMMalign}/PF01544_CorA.hmmvs_Halicovarius_salinus_hmmaligned.sthk ${HMMdir}/PF01544_CorA.hmm ${Infile}

hmmalign  --amino --trim -o ${HMMalign}/PF01699_Na_Ca_exhmmvs_Halicovarius_salinus_hmmaligned.sthk ${HMMdir}/PF01699_Na_Ca_ex.hmm ${Infile}

hmmalign  --amino --trim -o ${HMMalign}/PF01741_MscLhmmvs_Halicovarius_salinus_hmmaligned.sthk ${HMMdir}/PF01741_MscL.hmm ${Infile}

hmmalign  --amino --trim -o ${HMMalign}/PF01769_MgtEhmmvs_Halicovarius_salinus_hmmaligned.sthk ${HMMdir}/PF01769_MgtE.hmm ${Infile}

hmmalign  --amino --trim -o ${HMMalign}/PF01899_MnhE_ClcAhmmvs_Halicovarius_salinus_hmmaligned.sthk ${HMMdir}/PF01899_MnhE.hmm ${Infile}

hmmalign  --amino --trim -o ${HMMalign}/PF02028_BCCT_ClcAhmmvs_Halicovarius_salinus_hmmaligned.sthk ${HMMdir}/PF02028_BCCT.hmm ${Infile}

hmmalign  --amino --trim -o ${HMMalign}/PF02358_Trehalose_HPPashemmvs_Halicovarius_salinus_hmmaligned.sthk ${HMMdir}/PF02358_Trehalose_PPase.hmm ${Infile}

hmmalign  --amino --trim -o ${HMMalign}/PF02386_TrkHhmmvs_Halicovarius_salinus_hmmaligned.sthk ${HMMdir}/PF02386_TrkH.hmm ${Infile}

hmmalign  --amino --trim -o ${HMMalign}/PF02705_KUPhmmvs_Halicovarius_salinus_hmmaligned.sthk ${HMMdir}/PF02705_KUP.hmm ${Infile}

hmmalign  --amino --trim -o ${HMMalign}/PF03030_HPPAsehmmvs_Halicovarius_salinus_hmmaligned.sthk ${HMMdir}/PF03030_HPPAse.hmm ${Infile}

hmmalign  --amino --trim -o ${HMMalign}/PF03814_kdphmmvs_Halicovarius_salinus_hmmaligned.sthk ${HMMdir}/PF03814_kdp.hmm ${Infile}

hmmalign  --amino --trim -o ${HMMalign}/PF04069_OpuAChmmvs_Halicovarius_salinus_hmmaligned.sthk ${HMMdir}/PF04069_OpuAC.hmm ${Infile}

hmmalign  --amino --trim -o ${HMMalign}/PF04208_MtrAhmmvs_Halicovarius_salinus_hmmaligned.sthk ${HMMdir}/PF04208_MtrA.hmm ${Infile}

hmmalign  --amino --trim -o ${HMMalign}/PF06339_EctChmmvs_Halicovarius_salinus_hmmaligned.sthk ${HMMdir}/PF06339_EctC.hmm ${Infile}

hmmalign  --amino --trim -o ${HMMalign}/PF21269_TreThmmvs_Halicovarius_salinus_hmmaligned.sthk ${HMMdir}/PF21269_TreT.hmm ${Infile}

hmmalign  --amino --trim -o ${HMMalign}/PF24836_NQRAhmmvs_Halicovarius_salinus_hmmaligned.sthk ${HMMdir}/PF24836_NQRA.hmm ${Infile}

hmmalign  --amino --trim -o ${HMMalign}/PTHR47704_KimAhmmvs_Halicovarius_salinus_hmmaligned.sthk ${HMMdir}/PTHR47704_KimA.hmm ${Infile}

hmmalign  --amino --trim -o ${HMMalign}/TIGR01804.1_Betain-aldehyde-dehydrogenasehmmvs_Halicovarius_salinus_hmmaligned.sthk ${HMMdir}/TIGR01804.1_Betain-aldehyde-dehydrogenase.hmm ${Infile}

hmmalign  --amino --trim -o ${HMMalign}/PF13520_BRCAtranspoter2mmvs_Halicovarius_salinus_hmmaligned.sthk ${HMMdir}/PF13520_BRCAtranspoter2.hmm ${Infile}

hmmalign  --amino --trim -o ${HMMalign}/PF05525_BRCAtranspoter1mmvs_Halicovarius_salinus_hmmaligned.sthk ${HMMdir}/PF05525_BRCAtranspoter1.hmm ${Infile}

hmmalign  --amino --trim -o ${HMMalign}/CPA_PF00999_vs_Halicovarius_salinus_hmmaligned.sthk ${HMMdir}/PF00999.hmm ${Infile}

hmmalign  --amino --trim -o ${HMMalign}/NhaB_PF06450_vs_Halicovarius_salinus_hmmaligned.sthk /home/mad149/HMM_databases/individual_hmms/PF06450_NhaB.hmm ${Infile}

hmmalign  --amino --trim -o ${HMMalign}/NhaC_PF03553_vs_Halicovarius_salinus_hmmaligned.sthk ${HMMdir}/PF03553_NhaC.hmm ${Infile}

hmmalign  --amino --trim -o ${HMMalign}/NhaD_PF03600_vs_Halicovarius_salinus_hmmaligned.sthk ${HMMdir}/PF03600_NhaD.hmm ${Infile}

