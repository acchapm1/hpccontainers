#!/bin/bash

readonly simg=/Users/acchapm1/packages/simg
readonly local_path=$(PWD)

repo="https://github.com/hpcleuven/AlphaFold.git"

git clone "$repo"

cd AlphaFold
apptainer build $simg/alphafold.sif ../alphafold.def

cd ..
rm -rf AlphaFold
