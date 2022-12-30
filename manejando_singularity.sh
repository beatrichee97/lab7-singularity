#!/bin/bash

echo
echo Hostname en ibsen:
hostname
echo Hostname en el contenedor:
singularity exec ./singularity/my-python.sif hostname

echo
echo

echo SO en ibsen:
cat /etc/os-release
echo SO en el contenedor:
singularity exec ./singularity/my-python.sif cat /etc/os-release

echo
echo

echo pwd en ibsen:
pwd
echo pwd en el contenedor:
singularity exec ./singularity/my-python.sif pwd

echo
echo

echo ls -l /home en ibsen:
ls -l /home
echo ls -l /home en el contenedor:
singularity exec ./singularity/my-python.sif ls -l /home

echo
echo

echo Versión python en ibsen:
python --version
echo Versión python en el contenedor:
singularity exec ./singularity/my-python.sif python --version

echo
echo

echo Ejecución kmer-solution14.ipynb del subdirectorio source:
module load anaconda/2020.11
ipython ./source/kmer-solution14.ipynb
module unload anaconda/2020.11
echo Ejecución kmer-solution14.ipynb que está en el contenedor my-python.sif:
singularity exec ./singularity/my-python.sif ipython /home/kmer-solution14.ipynb
