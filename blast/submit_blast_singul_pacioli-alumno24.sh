#!/bin/bash
#
#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno24/lab7_p
#SBATCH -J lab7.2
#SBATCH --cpus-per-task=1
#SBATCH --mail-type=END
#SBATCH --mail-user=b.martinezgarcia@um.es

module load singularity/3.8.0

#Descomprimo la base de datos
gzip -d zebrafish.1.protein.faa.gz

#Preparo la base de datos zebrafish con makeblastdb
singularity exec blast_2.9.0--pl526h3066fca_4.sif makeblastdb -in zebrafish.1.protein.faa -dbtype prot

#Alineación usando blastp
singularity exec blast_2.9.0--pl526h3066fca_4.sif  blastp -query P04156.fasta -db zebrafish.1.protein.faa -out results-blast.txt


module unload singularity/3.8.0
