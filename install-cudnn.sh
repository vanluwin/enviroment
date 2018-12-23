# Unzip the cuDNN package
echo "Extracting ..."
tar -xzf cudnn-9.1.tgz || echo "Download cudnn tgz file first"

# Copy files into the CUDA Toolkit directory
echo "Copying files ..."
sudo cp cuda/include/cudnn.h /usr/local/cuda/include
sudo cp cuda/lib64/libcudnn* /usr/local/cuda/lib64
sudo chmod a+r /usr/local/cuda/include/cudnn.h /usr/local/cuda/lib64/libcudnn*

# Clear stuff
echo "Cleaning ..."
rm  -rf cuda/

echo "Done"
