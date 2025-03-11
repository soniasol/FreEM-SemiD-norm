#!/bin/env bash

# Submission script SLURM

# Request a GPU resource for a specific job.

#SBATCH --partition=shared-gpu
#SBATCH --time=00:30:00
#SBATCH --gpus=1
#SBATCH --output=outputs/normalisation-test.out
#SBATCH --mem=12GB
#SBATCH --cpus-per-task=8
#SBATCH --gres=gpu:1,VramPerGpu:12GB

# Load necessary modules.

module load Miniconda3

# after running the following command in the `/home/users/s/solfrini/git/normalisation_training` directory
# this needs to be done once only (e.g., using the terminal)
#head -n 10 data/dev.trg > data/dev.10.trg

# run normalisation for the different models (python script with subprocess)
#python /home/users/s/solfrini/git/normalisation_training/scripts/test_models.py
conda run -n norm-env python3 /home/users/s/solfrini/git/normalisation_training/scripts/test_models.py

# The script can be executed with the following command:
# sbatch NAME.sh
# sbatch scripts/submission_script_test_models.sh
