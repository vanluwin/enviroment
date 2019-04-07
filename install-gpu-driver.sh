#!/bin/bash
echo "Deleting other version of nvidia drivers..."
sudo apt-get purge nvidia* 

echo "Getting PPA..."
sudo add-apt-repository ppa:graphics-drivers

echo "Updating..."
sudo apt-get update && sudo apt-get upgrade

echo "Getting the driver"
sudo apt-get install nvidia-390

echo "Freezing driver version..."
sudo apt-mark hold nvidia-390

echo "Done!"
