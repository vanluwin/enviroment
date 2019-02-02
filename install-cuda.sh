#!/bin/sh

wget https://developer.nvidia.com/compute/cuda/9.1/Prod/local_installers/cuda_9.1.85_387.26_linux.run
# if the previous fails download manually from https://developer.nvidia.com/compute/cuda/9.1/Prod/local_installers/cuda_9.1.85_387.26_linux

chmod +x cuda_9.1.85_387.26_linux.run 
./cuda_9.1.85_387.26_linux.run --extract=$HOME

cd ~
sudo ./cuda-linux.9.1.85-23083092.run 
sudo bash -c "echo /usr/local/cuda/lib64/ > /etc/ld.so.conf.d/cuda.conf"
sudo ldconfig
