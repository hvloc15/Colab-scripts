#!/bin/bash

# Install Tensorflow Backend
conda create -yn keras pip python=3.6 setuptools=39.1.0
source activate keras
pip install --ignore-installed --upgrade https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow_gpu-1.10.1-cp36-cp36m-linux_x86_64.whl

# Install Keras
pip install keras