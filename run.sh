#!/bin/bash
#
#SBATCH -w gpu-grad-01
#SBATCH --ntasks 8
#SBATCH --mem 32GB # memory pool for all cores
#SBATCH -t 0-2:00 # time (D-HH:MM)
#SBATCH -o slurm.%N.%j.out # STDOUT
#SBATCH -e slurm.%N.%j.err # STDERR
#SBATCH --mail-user=victoria.hason@mail.mcgill.ca
#SBATCH --mail-type=BEGIN,END,FAIL

module load miniconda/miniconda-fall2024 # Load necessary modules

jupyter nbconvert --execute --to notebook --inplace bert.ipynb
