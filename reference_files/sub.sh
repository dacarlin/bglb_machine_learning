#!/bin/bash
#
#SBATCH -t 0-1:30
#SBATCH --array=1-210

# for debug 
#export SLURM_TASK_ARRAY_ID="82"
#cd output_files/${SLURM_TASK_ARRAY_ID}
#/Users/alex/Applications/main/source/bin/rosetta_scripts.macosclangrelease @flags @mutant_flags 

# for run 
cd output_files/${SLURM_TASK_ARRAY_ID}
/share/work/rosetta/source/bin/rosetta_scripts.linuxgccrelease @flags @mutant_flags 

