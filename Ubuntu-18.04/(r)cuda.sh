#!/bin/bash
# Install Cuda 10.1, reboot needed

wget https://developer.nvidia.com/compute/cuda/10.1/Prod/local_installers/cuda-repo-ubuntu1804-10-1-local-10.1.105-418.39_1.0-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu1804-10-1-local-10.1.105-418.39_1.0-1_amd64.deb
sudo apt-key add /var/cuda-repo-10-1-local-10.1.105-418.39/7fa2af80.pub
sudo apt-get update
sudo apt-get install cuda
sudo echo "export PATH=$PATH:/usr/local/cuda-10.1/bin:/usr/local/cuda-10.1/NsightCompute-2019.1" >> /etc/environment
source /etc/environment
rm cuda-repo-ubuntu1804-10-1-local-10.1.105-418.39_1.0-1_amd64.deb
sudo reboot

