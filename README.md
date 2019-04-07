# Scripts for setting up a development environment

Beware that these scripts were made and tested for Ubuntu 16.04 and 18.04.

## Install nvidia gpu drivers

This script installs the nvidia-390 drivers and freezes its version, for different behavior edit the last lines.

```bash
sudo sh install-gpu-driver.sh
```

## Install CUDA

This script aims to install the CUDA library.

```bash
sudo sh install-cuda.sh
```

## Install CuDNN

This script aims to install the CuDNN library, it needs the tgz file acquired from nvidia site to be places next to it.

```bash
sudo sh install-cudnn.sh
```

## Change GCC/G++ Version

This script aims to change the version of gcc/g++ to the one provided.

```bash
sudo sh switchGccVersion.sh <version>
```

## Install OpenCV

This script aims to compile the OpenCV library with CUDA support. Go to the the directory where you want to keep the downloaded files and execute:

```bash
sudo sh <path-to-script>/install-opencv.sh
```
