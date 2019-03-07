#!/bin/bash

sudo apt update
sudo apt install openjdk-8-jdk
sudo update-alternatives --config java
sudo echo 'JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"' >> /etc/profile.d/env.sh
source /etc/profile.d/env.sh

