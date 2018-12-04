#!/bin/bash

# Download lastest Miniconda
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O Miniconda3-latest-Linux-x86_64.sh

# Install in Batch mode
sh Miniconda3-latest-Linux-x86_64.sh -b

# Export PATH
echo 'export PATH="/root/miniconda3/bin:$PATH"' >> .bashrc
source .bashrc
