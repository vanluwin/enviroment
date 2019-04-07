#!/bin/sh

wget https://developer.nvidia.com/compute/cuda/9.1/Prod/local_installers/cuda_9.1.85_387.26_linux -O cudaInstaler.run
# if the previous fails download manually from https://developer.nvidia.com/compute/cuda/9.1/Prod/local_installers/cuda_9.1.85_387.26_linux

chmod +x cudaInstaler.run 
./cudaInstaler.run --extract=$HOME

cd $HOME
sudo ./cudaInstaler.run 
sudo bash -c "echo /usr/local/cuda/lib64/ > /etc/ld.so.conf.d/cuda.conf"
sudo ldconfig

echo "Done!"
