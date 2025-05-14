#!/bin/env bash

# Submission script SLURM

# Request a GPU resource for a specific job.

#SBATCH --partition=shared-gpu
#SBATCH --time=02:59:00
#SBATCH --gpus=1
#SBATCH --output=outputs/normalisation-training-%j.out
#SBATCH --mem=12GB
#SBATCH --cpus-per-task=8
#SBATCH --gres=gpu:1,VramPerGpu:12GB

# Load necessary modules.

module load Miniconda3

# Activate a Conda environment named [...]

# this might not work
#conda activate norm-test

# this should work
source activate /home/users/s/solfrini/.conda/envs/norm-test

# after running the following command in the `/home/users/s/solfrini/git/normalisation_training` directory
# this needs to be done once only (e.g., using the terminal)
#cat $data/* > data/vocabulary.src-trg

# prepare the data
#python /home/users/s/solfrini/git/normalisation_training/scripts/prep_data.py
#conda run -n norm-test python3 /home/users/s/solfrini/git/normalisation_training/scripts/prep_data.py

# preprocess using fairseq (bash script)
#bash /home/users/s/solfrini/git/normalisation_training/scripts/preprocess_fairseq.sh

# train the models using fairseq (bash script)
bash /home/users/s/solfrini/git/normalisation_training/scripts/train_models_fairseq_S.sh

# The script can be executed with the following command:
# sbatch NAME.sh
# sbatch scripts/submission_script_training.sh
