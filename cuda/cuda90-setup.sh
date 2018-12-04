#!/bin/bash
#Cuda setup script


#Download CUDA installation file
wget https://developer.nvidia.com/compute/cuda/9.0/Prod/local_installers/cuda-repo-ubuntu1604-9-0-local_9.0.176-1_amd64-deb -O cuda-repo-ubuntu1604-9-0-local_9.0.176-1_amd64-deb

#Depackaging
dpkg -i cuda-repo-ubuntu1604-9-0-local_9.0.176-1_amd64-deb

#Add key
apt-key add /var/cuda-repo-9-0-local/7fa2af80.pub
apt update

#Installation
apt install cuda -y
export PATH=$PATH:/usr/local/cuda-9.0/bin
export LD_LIBRARY_PATH=/usr/local/cuda-9.0/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

#Install & Config GCC-6 G++-6
apt install gcc-6 g++-6 -y
update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-6 60 --slave /usr/bin/g++ g++ /usr/bin/g++-6