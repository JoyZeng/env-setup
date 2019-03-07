#!/bin/bash
wget http://apache.mirror.globo.tech//jmeter/binaries/apache-jmeter-5.1.zip
sudo mkdir /opt/jmeter
sudo unzip -d /opt/jmeter apache-jmeter-5.1.zip
echo "export PATH=$PATH:/opt/jmeter/apache-jmeter-5.1/bin" >> ~/.bashrc
source ~/.bashrc
rm apache-jmeter-5.1.zip

