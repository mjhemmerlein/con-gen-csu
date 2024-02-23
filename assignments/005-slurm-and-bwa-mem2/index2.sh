#!/bin/bash

#SBATCH --cpus-per-task=1
#SBATCH --time=2:00:00
#SBATCH --mem=3G
#SBATCH --output=bwa_index-%j.out
#SBATCH --error=bwa_index-%j.err

# this is a little script to index the genome given
# by the first positional parameter ($1)

# source activate bwa-mem2

# make a directory for log output if it does not already exist
DIR=results/log/bwa_index
mkdir -p $DIR

# run bwa index on the input
bwa-mem2 index $1 > $DIR/log.txt 2>&1b
