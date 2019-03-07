#!/bin/bash
wget http://apache.mirror.gtcomm.net/maven/maven-3/3.6.0/binaries/apache-maven-3.6.0-bin.zip
sudo mkdir /opt/maven
sudo unzip -d /opt/maven apache-maven-3.6.0-bin.zip
ls /opt/maven/apache-maven-3.6.0
echo "export PATH=$PATH:/opt/maven/apache-maven-3.6.0/bin" >> ~/.bashrc
source ~/.bashrc
remove apache-maven-3.6.0-bin.zip
