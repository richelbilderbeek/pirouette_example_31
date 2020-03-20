#!/bin/bash
#
# Re-run the code locally, to re-create the data and figure.
#
# Usage:
#
#   ./scripts/rerun.sh
#
#
#SBATCH --partition=gelifes
#SBATCH --time=10:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=10G
#SBATCH --job-name=pirex31
#SBATCH --output=example_31.log
module load R

rm -rf example_31
rm errors.png
time Rscript example_31.R
zip -r pirouette_example_31.zip example_31 example_31.R scripts errors.png

