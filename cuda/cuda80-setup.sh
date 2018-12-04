#!/bin/bash
#Cuda setup script


#Download CUDA installation file
wget https://developer.nvidia.com/compute/cuda/8.0/Prod2/local_installers/cuda-repo-ubuntu1604-8-0-local-ga2_8.0.61-1_amd64-deb -O cuda-repo-ubuntu1604-8-0-local-ga2_8.0.61-1_amd64-deb

#Depackaging
dpkg -i cuda-repo-ubuntu1604-8-0-local-ga2_8.0.61-1_amd64-deb

#Add key
apt-key add /var/cuda-repo-8-0-local-ga2/7fa2af80.pub
apt update

#Installation
apt install cuda -y
export PATH=$PATH:/usr/local/cuda-8.0/bin
export LD_LIBRARY_PATH=/usr/local/cuda-8.0/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

#Install & Config GCC-5 G++-5
apt install gcc-5 g++-5 -y
update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-5 60 --slave /usr/bin/g++ g++ /usr/bin/g++-5