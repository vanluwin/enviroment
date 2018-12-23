#!/bin/sh

if [ -z "$1" ]; then
    echo "usage: sudo sh $0 version" 1>&2
    exit 1
fi

echo "Installing Packages ..."
sudo apt-get install gcc-$1 g++-$1

echo "Installing Alternatives ..."
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-$1 10
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-$1 10

sudo update-alternatives --install /usr/bin/cc cc /usr/bin/gcc 30
sudo update-alternatives --set cc /usr/bin/gcc

sudo update-alternatives --install /usr/bin/c++ c++ /usr/bin/g++ 30
sudo update-alternatives --set c++ /usr/bin/g++

echo "Configuring Alternatives ..."
sudo update-alternatives --config gcc
sudo update-alternatives --config g++

echo "Done"

