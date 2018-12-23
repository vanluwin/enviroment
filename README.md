# Scripts for setting up my environment

## Install nvidia gpu drivers

This script installs the nvidia-390 drivers and freezes its version, for different behavior edit the last lines.

```bash
sudo sh install-gpu-driver.sh
```

## Install CuDNN

This script aims to install the CuDNN library, it needs the tgz file acquired from nvidia site to be places next to it.

```bash
sudo sh install-cudnn.sh
```

## Install OpenCV

This script aims to compile the OpenCV library with CUDA support. Go to the the directory where you want to keep the downloaded files and execute:

```bash
sudo sh <path-to-script>/install-opencv.sh
```
