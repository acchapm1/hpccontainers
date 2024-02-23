#!/bin/bash

readonly simg=/Users/acchapm1/packages/simg

git clone https://github.com/hpcleuven/AlphaFold.git

cd AlphaFold
apptainer build $simg/alphafold.sif alphafold.def

cd ..
rm -rf AlphaFold
